@interface AEDConcreteUIPrimitives
- (id)keyWindow;
- (id)sceneForActivationState:(uint64_t)state;
- (id)suitableViewControllerForViewController:(uint64_t)controller;
- (void)presentBannerWithTitle:(id)title duration:(double)duration completion:(id)completion;
@end

@implementation AEDConcreteUIPrimitives

- (void)presentBannerWithTitle:(id)title duration:(double)duration completion:(id)completion
{
  v52[1] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  completionCopy = completion;
  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v51 = *MEMORY[0x277D764E8];
  v11 = *MEMORY[0x277D76438];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277D76438]];
  v52[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v14 = [v10 initWithString:titleCopy attributes:v13];

  UIAccessibilityPostNotification(v11, v14);
  keyWindow = [(AEDConcreteUIPrimitives *)self keyWindow];
  v16 = keyWindow;
  if (keyWindow)
  {
    rootViewController = [keyWindow rootViewController];
    v19 = [(AEDConcreteUIPrimitives *)self suitableViewControllerForViewController:rootViewController];

    if (v19)
    {
      view = [v19 view];
      v21 = [[AEDBannerView alloc] initWithTitle:titleCopy];
      [(AEDBannerView *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(AEDBannerView *)v21 setAlpha:0.0];
      [(AEDBannerView *)v21 layer];
      v22 = v44 = v19;
      [v22 setZPosition:10000002.0];

      [view addSubview:v21];
      v38 = MEMORY[0x277CCAAD0];
      leadingAnchor = [(AEDBannerView *)v21 leadingAnchor];
      leadingAnchor2 = [view leadingAnchor];
      v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v50[0] = v41;
      trailingAnchor = [(AEDBannerView *)v21 trailingAnchor];
      trailingAnchor2 = [view trailingAnchor];
      v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v50[1] = v37;
      topAnchor = [(AEDBannerView *)v21 topAnchor];
      v36 = view;
      v23 = view;
      topAnchor2 = [view topAnchor];
      v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v50[2] = v24;
      bottomAnchor = [(AEDBannerView *)v21 bottomAnchor];
      bottomAnchor2 = [v23 bottomAnchor];
      v27 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
      v50[3] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
      [v38 activateConstraints:v28];

      [v36 setNeedsLayout];
      v29 = MEMORY[0x277D75D18];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __70__AEDConcreteUIPrimitives_presentBannerWithTitle_duration_completion___block_invoke;
      v48[3] = &unk_278A0C4B8;
      v30 = v21;
      v49 = v30;
      [v29 animateWithDuration:v48 animations:0.8];
      v31 = dispatch_time(0, ((duration + 0.8) * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__AEDConcreteUIPrimitives_presentBannerWithTitle_duration_completion___block_invoke_2;
      block[3] = &unk_278A0C508;
      v46 = v30;
      v47 = completionCopy;
      v32 = v30;
      v33 = v31;
      v19 = v44;
      dispatch_after(v33, MEMORY[0x277D85CD0], block);
    }

    else
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    completionCopy[2](completionCopy);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __70__AEDConcreteUIPrimitives_presentBannerWithTitle_duration_completion___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__AEDConcreteUIPrimitives_presentBannerWithTitle_duration_completion___block_invoke_3;
  v6[3] = &unk_278A0C4B8;
  v7 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__AEDConcreteUIPrimitives_presentBannerWithTitle_duration_completion___block_invoke_4;
  v3[3] = &unk_278A0C4E0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 animateWithDuration:v6 animations:v3 completion:0.8];
}

uint64_t __70__AEDConcreteUIPrimitives_presentBannerWithTitle_duration_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

BOOL __51__AEDConcreteUIPrimitives_sceneForActivationState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 session];
  v5 = [v4 role];
  if ([v5 isEqualToString:*MEMORY[0x277D772C8]])
  {
    v6 = [v3 activationState] == *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)keyWindow
{
  selfCopy = self;
  if (self)
  {
    v2 = [(AEDConcreteUIPrimitives *)self sceneForActivationState:?];
    if (!v2)
    {
      v2 = [(AEDConcreteUIPrimitives *)selfCopy sceneForActivationState:?];
    }

    selfCopy = [v2 keyWindow];
  }

  return selfCopy;
}

- (id)suitableViewControllerForViewController:(uint64_t)controller
{
  v3 = a2;
  if (controller)
  {
    v4 = objc_opt_new();
    presentedViewController = [v3 presentedViewController];
    if (presentedViewController)
    {
      v8PresentedViewController = presentedViewController;
      while (1)
      {
        v7 = [v4 containsObject:v3];

        if (v7)
        {
          break;
        }

        [v4 addObject:v3];
        presentedViewController2 = [v3 presentedViewController];

        v8PresentedViewController = [presentedViewController2 presentedViewController];
        v3 = presentedViewController2;
        if (!v8PresentedViewController)
        {
          goto LABEL_8;
        }
      }
    }

    presentedViewController2 = v3;
LABEL_8:
    view = [presentedViewController2 view];
    window = [view window];
    if (window)
    {
      v11 = presentedViewController2;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v3 = presentedViewController2;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)sceneForActivationState:(uint64_t)state
{
  if (state)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    connectedScenes = [mEMORY[0x277D75128] connectedScenes];
    allObjects = [connectedScenes allObjects];
    OUTLINED_FUNCTION_0();
    v10 = 3221225472;
    v11 = __51__AEDConcreteUIPrimitives_sceneForActivationState___block_invoke;
    v12 = &__block_descriptor_40_e17_B16__0__UIScene_8l;
    v13 = a2;
    v7 = [v6 ae_firstMatching:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end