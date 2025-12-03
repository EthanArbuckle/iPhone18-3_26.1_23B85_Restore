@interface CNMeCardSharingAvatarViewController
- (BOOL)isPosterAnimationPaused;
- (BOOL)showsPosterAnimation;
- (CGRect)frameForContainerView;
- (CGSize)portraitScreenSize;
- (CNMeCardSharingAvatarViewController)initWithAvatarProvider:(id)provider mode:(int64_t)mode;
- (CNMeCardSharingAvatarViewControllerDelegate)delegate;
- (void)addPosterAnimationController:(id)controller;
- (void)addPosterAnimationLoadingSpinner;
- (void)configureSubviews;
- (void)didTapAvatarView:(id)view;
- (void)loadView;
- (void)reload;
- (void)reloadAvatarImage;
- (void)reloadPosterImage;
- (void)removePosterAnimationController;
- (void)removePosterAnimationLoadingSpinner;
- (void)togglePosterAnimation;
- (void)updateImageAnimated:(BOOL)animated newImage:(id)image placeHolder:(BOOL)holder additionalAnimatedChanges:(id)changes;
- (void)updateViewsToUseGeneratedImage:(id)image forSize:(CGSize)size usingFallback:(BOOL)fallback;
- (void)updateWithAvatarProvider:(id)provider;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
@end

@implementation CNMeCardSharingAvatarViewController

- (CNMeCardSharingAvatarViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)togglePosterAnimation
{
  posterAnimationController = [(CNMeCardSharingAvatarViewController *)self posterAnimationController];
  [posterAnimationController toggleAnimation];
}

- (BOOL)isPosterAnimationPaused
{
  posterAnimationController = [(CNMeCardSharingAvatarViewController *)self posterAnimationController];

  if (posterAnimationController)
  {
    posterAnimationController2 = [(CNMeCardSharingAvatarViewController *)self posterAnimationController];
    isAnimationPaused = [posterAnimationController2 isAnimationPaused];

    return isAnimationPaused;
  }

  else
  {

    return +[_TtC10ContactsUI49CNPosterOnboardingSettingsAnimationViewController pausableAnimationStartingValue];
  }
}

- (BOOL)showsPosterAnimation
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 0;
  }

  else
  {
    return ![(CNMeCardSharingAvatarViewController *)self posterPreviewsGenerationTimedOut];
  }
}

- (void)didTapAvatarView:(id)view
{
  delegate = [(CNMeCardSharingAvatarViewController *)self delegate];
  [delegate avatarViewControllerWasTapped:self];
}

- (void)updateImageAnimated:(BOOL)animated newImage:(id)image placeHolder:(BOOL)holder additionalAnimatedChanges:(id)changes
{
  holderCopy = holder;
  animatedCopy = animated;
  imageCopy = image;
  changesCopy = changes;
  if (holderCopy)
  {
    v12 = 0;
  }

  else
  {
    v12 = imageCopy;
  }

  v13 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __106__CNMeCardSharingAvatarViewController_updateImageAnimated_newImage_placeHolder_additionalAnimatedChanges___block_invoke;
  aBlock[3] = &unk_1E74E5608;
  v14 = v13;
  v26 = animatedCopy;
  v23 = v14;
  selfCopy = self;
  v15 = changesCopy;
  v25 = v15;
  v16 = _Block_copy(aBlock);
  v17 = v16;
  if (animatedCopy)
  {
    v18 = MEMORY[0x1E69DD250];
    imageView = self->_imageView;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __106__CNMeCardSharingAvatarViewController_updateImageAnimated_newImage_placeHolder_additionalAnimatedChanges___block_invoke_2;
    v20[3] = &unk_1E74E6F88;
    v21 = v16;
    [v18 transitionWithView:imageView duration:5243012 options:v20 animations:0 completion:0.5];
  }

  else
  {
    v16[2](v16);
  }
}

uint64_t __106__CNMeCardSharingAvatarViewController_updateImageAnimated_newImage_placeHolder_additionalAnimatedChanges___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  if (*(a1 + 56) != 1 || v2 != 0)
  {
    v5 = [*(*(a1 + 40) + 1024) image];
    v6 = *(a1 + 32);

    if (v5 != v6)
    {
      [*(*(a1 + 40) + 1024) setImage:*(a1 + 32)];
    }
  }

  [*(*(a1 + 40) + 1024) alpha];
  if (v7 != v3)
  {
    [*(*(a1 + 40) + 1024) setAlpha:v3];
  }

  result = *(a1 + 48);
  if (result)
  {
    v9 = *(result + 16);

    return v9();
  }

  return result;
}

- (void)updateViewsToUseGeneratedImage:(id)image forSize:(CGSize)size usingFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  height = size.height;
  width = size.width;
  imageCopy = image;
  v18 = imageCopy;
  if (imageCopy)
  {
    self->_hasImage = 1;
    v10 = imageCopy;
    showsPosterAnimation = [(CNMeCardSharingAvatarViewController *)self showsPosterAnimation];
  }

  else
  {
    self->_hasImage = 0;
    if (fallbackCopy)
    {
      fallbackImageProvider = self->_fallbackImageProvider;
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v10 = [(CNAvatarImageProvider *)fallbackImageProvider imageForSize:width scale:height, v14];
    }

    else
    {
      v10 = 0;
    }

    showsPosterAnimation = 0;
  }

  viewIfLoaded = [(CNMeCardSharingAvatarViewController *)self viewIfLoaded];
  superview = [viewIfLoaded superview];
  [(CNMeCardSharingAvatarViewController *)self updateImageAnimated:superview != 0 newImage:v10 placeHolder:showsPosterAnimation additionalAnimatedChanges:&__block_literal_global_28_49302];

  delegate = [(CNMeCardSharingAvatarViewController *)self delegate];
  [delegate avatarViewControllerDidUpdateImage:self needsLayout:{-[CNMeCardSharingAvatarViewController posterPreviewsGenerationTimedOut](self, "posterPreviewsGenerationTimedOut")}];
}

- (void)removePosterAnimationController
{
  childViewControllers = [(CNMeCardSharingAvatarViewController *)self childViewControllers];
  [childViewControllers _cn_each:&__block_literal_global_49304];

  [(CNMeCardSharingAvatarViewController *)self setPosterAnimationController:0];
}

void __70__CNMeCardSharingAvatarViewController_removePosterAnimationController__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 willMoveToParentViewController:0];
  v2 = [v3 view];
  [v2 removeFromSuperview];

  [v3 removeFromParentViewController];
  [v3 didMoveToParentViewController:0];
}

- (void)addPosterAnimationController:(id)controller
{
  v38[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  [(CNMeCardSharingAvatarViewController *)self setPosterAnimationController:controllerCopy];
  view = [controllerCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [controllerCopy view];
  [view2 setAlpha:0.0];

  avatarContainerView = [(CNMeCardSharingAvatarViewController *)self avatarContainerView];
  view3 = [controllerCopy view];
  [avatarContainerView addSubview:view3];

  view4 = [controllerCopy view];
  leadingAnchor = [view4 leadingAnchor];
  avatarContainerView2 = [(CNMeCardSharingAvatarViewController *)self avatarContainerView];
  leadingAnchor2 = [avatarContainerView2 leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[0] = v31;
  view5 = [controllerCopy view];
  trailingAnchor = [view5 trailingAnchor];
  avatarContainerView3 = [(CNMeCardSharingAvatarViewController *)self avatarContainerView];
  trailingAnchor2 = [avatarContainerView3 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[1] = v26;
  view6 = [controllerCopy view];
  topAnchor = [view6 topAnchor];
  avatarContainerView4 = [(CNMeCardSharingAvatarViewController *)self avatarContainerView];
  topAnchor2 = [avatarContainerView4 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[2] = v11;
  view7 = [controllerCopy view];
  bottomAnchor = [view7 bottomAnchor];
  avatarContainerView5 = [(CNMeCardSharingAvatarViewController *)self avatarContainerView];
  bottomAnchor2 = [avatarContainerView5 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[3] = v16;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v24];
  [(CNMeCardSharingAvatarViewController *)self addChildViewController:controllerCopy];
  self->_hasImage = 1;
  viewIfLoaded = [(CNMeCardSharingAvatarViewController *)self viewIfLoaded];
  superview = [viewIfLoaded superview];
  mode = self->_mode;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __68__CNMeCardSharingAvatarViewController_addPosterAnimationController___block_invoke;
  v36[3] = &unk_1E74E77C0;
  v20 = mode == 1;
  v36[4] = self;
  v37 = controllerCopy;
  v21 = controllerCopy;
  [(CNMeCardSharingAvatarViewController *)self updateImageAnimated:superview != 0 newImage:0 placeHolder:v20 additionalAnimatedChanges:v36];

  delegate = [(CNMeCardSharingAvatarViewController *)self delegate];
  [delegate avatarViewControllerDidUpdateImage:self needsLayout:0];
}

void __68__CNMeCardSharingAvatarViewController_addPosterAnimationController___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] clearColor];
  [*(*(a1 + 32) + 1024) setBackgroundColor:v2];

  v3 = [*(a1 + 40) view];
  [v3 setAlpha:1.0];
}

- (CGSize)portraitScreenSize
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 bounds];
  v7 = v6;

  if (v4 <= v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (v4 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)removePosterAnimationLoadingSpinner
{
  activityIndicator = [(CNMeCardSharingAvatarViewController *)self activityIndicator];

  if (activityIndicator)
  {
    activityIndicator2 = [(CNMeCardSharingAvatarViewController *)self activityIndicator];
    [activityIndicator2 stopAnimating];

    activityIndicator3 = [(CNMeCardSharingAvatarViewController *)self activityIndicator];
    [activityIndicator3 removeFromSuperview];

    [(CNMeCardSharingAvatarViewController *)self setActivityIndicator:0];
  }
}

- (void)addPosterAnimationLoadingSpinner
{
  v30[4] = *MEMORY[0x1E69E9840];
  activityIndicator = [(CNMeCardSharingAvatarViewController *)self activityIndicator];

  if (!activityIndicator)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    [(CNMeCardSharingAvatarViewController *)self setActivityIndicator:v4];

    activityIndicator2 = [(CNMeCardSharingAvatarViewController *)self activityIndicator];
    [activityIndicator2 setTranslatesAutoresizingMaskIntoConstraints:0];

    avatarContainerView = [(CNMeCardSharingAvatarViewController *)self avatarContainerView];
    activityIndicator3 = [(CNMeCardSharingAvatarViewController *)self activityIndicator];
    [avatarContainerView addSubview:activityIndicator3];

    activityIndicator4 = [(CNMeCardSharingAvatarViewController *)self activityIndicator];
    centerXAnchor = [activityIndicator4 centerXAnchor];
    avatarContainerView2 = [(CNMeCardSharingAvatarViewController *)self avatarContainerView];
    centerXAnchor2 = [avatarContainerView2 centerXAnchor];
    v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v30[0] = v25;
    activityIndicator5 = [(CNMeCardSharingAvatarViewController *)self activityIndicator];
    centerYAnchor = [activityIndicator5 centerYAnchor];
    avatarContainerView3 = [(CNMeCardSharingAvatarViewController *)self avatarContainerView];
    centerYAnchor2 = [avatarContainerView3 centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v30[1] = v20;
    activityIndicator6 = [(CNMeCardSharingAvatarViewController *)self activityIndicator];
    widthAnchor = [activityIndicator6 widthAnchor];
    avatarContainerView4 = [(CNMeCardSharingAvatarViewController *)self avatarContainerView];
    widthAnchor2 = [avatarContainerView4 widthAnchor];
    v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v30[2] = v10;
    activityIndicator7 = [(CNMeCardSharingAvatarViewController *)self activityIndicator];
    heightAnchor = [activityIndicator7 heightAnchor];
    avatarContainerView5 = [(CNMeCardSharingAvatarViewController *)self avatarContainerView];
    heightAnchor2 = [avatarContainerView5 heightAnchor];
    v15 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v30[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v16];
  }

  activityIndicator8 = [(CNMeCardSharingAvatarViewController *)self activityIndicator];
  [activityIndicator8 startAnimating];
}

- (void)reloadPosterImage
{
  [(UIImageView *)self->_imageView bounds];
  v5 = v4;
  v6 = v3;
  v7 = *(MEMORY[0x1E695F060] + 8);
  if (*MEMORY[0x1E695F060] == v4 && v7 == v3)
  {
    [(CNMeCardSharingAvatarViewController *)self portraitScreenSize:*MEMORY[0x1E695F060]];
    v5 = v9;
    v6 = v10;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke;
  aBlock[3] = &unk_1E74E6A88;
  aBlock[4] = self;
  v11 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_4;
  v23[3] = &unk_1E74E5548;
  v23[4] = self;
  v12 = v11;
  v24 = v12;
  v25 = v5;
  v26 = v6;
  v13 = _Block_copy(v23);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_7;
  v18[3] = &unk_1E74E55C0;
  v18[4] = self;
  v14 = v12;
  v19 = v14;
  v15 = v13;
  v20 = v15;
  v21 = v5;
  v22 = v6;
  v16 = _Block_copy(v18);
  [(CNMeCardSharingAvatarViewController *)self addPosterAnimationLoadingSpinner];
  if (objc_opt_respondsToSelector())
  {
    v16[2](v16);
  }

  else if (objc_opt_respondsToSelector())
  {
    v15[2](v15);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_10;
    block[3] = &unk_1E74E5EA8;
    block[4] = self;
    *&block[5] = v5;
    *&block[6] = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_2;
  block[3] = &unk_1E74E6A88;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

void __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setIsWaitingForPosterPreviews:1];
  (*(*(a1 + 40) + 16))();
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) avatarProvider];
  v3 = [*(a1 + 32) view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_5;
  v6[3] = &unk_1E74E5520;
  objc_copyWeak(&v7, &location);
  v8 = *(a1 + 48);
  [v2 generatePosterImageWithWindowScene:v5 imageHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) removePosterAnimationController];
  [*(a1 + 32) setIsWaitingForPosterPreviews:1];
  (*(*(a1 + 40) + 16))();
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) avatarProvider];
  v3 = [*(a1 + 32) view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_8;
  v6[3] = &unk_1E74E5598;
  objc_copyWeak(&v8, &location);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v2 generatePosterAnimationControllerWithWindowScene:v5 imageHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_9;
  block[3] = &unk_1E74E5570;
  block[4] = WeakRetained;
  v7 = v3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) removePosterAnimationLoadingSpinner];
  [*(a1 + 32) setIsWaitingForPosterPreviews:0];
  result = [*(a1 + 32) posterPreviewsGenerationTimedOut];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    if (*(a1 + 40))
    {

      return [v3 addPosterAnimationController:?];
    }

    else
    {
      v4 = [v3 avatarProvider];
      v5 = objc_opt_respondsToSelector();

      if (v5)
      {
        v6 = *(*(a1 + 48) + 16);

        return v6();
      }

      else
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 56);
        v9 = *(a1 + 64);

        return [v7 updateViewsToUseGeneratedPosterImage:0 forSize:{v8, v9}];
      }
    }
  }

  return result;
}

void __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_6;
  v6[3] = &unk_1E74E54F8;
  v6[4] = WeakRetained;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setIsWaitingForPosterPreviews:0];
  result = [*(a1 + 32) posterPreviewsGenerationTimedOut];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) removePosterAnimationLoadingSpinner];
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    return [v3 updateViewsToUseGeneratedPosterImage:v4 forSize:{v5, v6}];
  }

  return result;
}

void __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isWaitingForPosterPreviews])
  {
    [*(a1 + 32) setPosterPreviewsGenerationTimedOut:1];
    [*(a1 + 32) removePosterAnimationLoadingSpinner];
    [*(a1 + 32) configureSubviews];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__CNMeCardSharingAvatarViewController_reloadPosterImage__block_invoke_3;
    block[3] = &unk_1E74E6A88;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)reloadAvatarImage
{
  [(UIImageView *)self->_imageView bounds];
  if (*MEMORY[0x1E695F060] == v3 && *(MEMORY[0x1E695F060] + 8) == v4)
  {
    v7 = 200.0;
LABEL_10:
    v6 = v7;
    goto LABEL_11;
  }

  v6 = v3;
  v7 = v4;
  if (v3 != v4)
  {
    if (v3 >= v4)
    {
      v7 = v3;
    }

    goto LABEL_10;
  }

LABEL_11:
  objc_initWeak(&location, self);
  avatarProvider = self->_avatarProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__CNMeCardSharingAvatarViewController_reloadAvatarImage__block_invoke;
  v9[3] = &unk_1E74E5520;
  objc_copyWeak(v10, &location);
  v10[1] = *&v6;
  v10[2] = *&v7;
  [(CNMeCardSharingAvatarProvider *)avatarProvider generateAvatarImageOfSize:v9 imageHandler:v6, v7];
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __56__CNMeCardSharingAvatarViewController_reloadAvatarImage__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CNMeCardSharingAvatarViewController_reloadAvatarImage__block_invoke_2;
  v6[3] = &unk_1E74E54F8;
  v6[4] = WeakRetained;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)reload
{
  if (![(CNMeCardSharingAvatarViewController *)self showsPosterAnimation])
  {
    [(CNMeCardSharingAvatarViewController *)self reloadAvatarImage];
    goto LABEL_5;
  }

  view = [(CNMeCardSharingAvatarViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    [(CNMeCardSharingAvatarViewController *)self reloadPosterImage];
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:

  [(CNMeCardSharingAvatarViewController *)self setNeedsReload:v6];
}

- (void)updateWithAvatarProvider:(id)provider
{
  providerCopy = provider;
  if (self->_avatarProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_avatarProvider, provider);
    [(CNMeCardSharingAvatarViewController *)self reload];
    providerCopy = v6;
  }
}

- (CGRect)frameForContainerView
{
  showsPosterAnimation = [(CNMeCardSharingAvatarViewController *)self showsPosterAnimation];
  view = [(CNMeCardSharingAvatarViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (showsPosterAnimation)
  {
  }

  else
  {

    v20.origin.x = v6;
    v20.origin.y = v8;
    v20.size.width = v10;
    v20.size.height = v12;
    Width = CGRectGetWidth(v20);
    v21.origin.x = v6;
    v21.origin.y = v8;
    v21.size.width = v10;
    v21.size.height = v12;
    Height = CGRectGetHeight(v21);
    if (Width >= Height)
    {
      Width = Height;
    }

    v22.origin.x = v6;
    v22.origin.y = v8;
    v22.size.width = v10;
    v22.size.height = v12;
    v15 = floor((CGRectGetHeight(v22) - Width) * 0.5);
    v23.origin.x = v6;
    v23.origin.y = v8;
    v23.size.width = v10;
    v23.size.height = v12;
    v6 = floor((CGRectGetWidth(v23) - Width) * 0.5);
    v8 = v15;
    v10 = Width;
    v12 = Width;
  }

  v16 = v6;
  v17 = v8;
  v18 = v10;
  v19 = v12;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CNMeCardSharingAvatarViewController;
  [(CNMeCardSharingAvatarViewController *)&v5 viewWillLayoutSubviews];
  [(CNMeCardSharingAvatarViewController *)self frameForContainerView];
  [(UIView *)self->_avatarContainerView setFrame:?];
  v3 = MEMORY[0x1E69DC728];
  [(UIView *)self->_avatarContainerView bounds];
  v4 = [v3 bezierPathWithOvalInRect:?];
  -[CAShapeLayer setPath:](self->_circularLayer, "setPath:", [v4 CGPath]);
  [(UIView *)self->_avatarContainerView bounds];
  [(UIImageView *)self->_imageView setFrame:?];
  [(UIView *)self->_avatarContainerView bounds];
  v7 = CGRectInset(v6, 12.0, 0.0);
  [(UILabel *)self->_addPhotoLabel setFrame:v7.origin.x, v7.origin.y, v7.size.width, v7.size.height];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = CNMeCardSharingAvatarViewController;
  [(CNMeCardSharingAvatarViewController *)&v4 viewIsAppearing:appearing];
  if ([(CNMeCardSharingAvatarViewController *)self needsReload])
  {
    [(CNMeCardSharingAvatarViewController *)self reload];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CNMeCardSharingAvatarViewController;
  [(CNMeCardSharingAvatarViewController *)&v5 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapAvatarView_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v3;

  [(UIView *)self->_avatarContainerView addGestureRecognizer:self->_tapGestureRecognizer];
}

- (void)configureSubviews
{
  if ([(CNMeCardSharingAvatarViewController *)self showsPosterAnimation])
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)self->_avatarContainerView setBackgroundColor:clearColor];

    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)self->_imageView setBackgroundColor:clearColor2];

    self->_isWaitingForPosterPreviews = [(CNMeCardSharingAvatarViewController *)self showsPosterAnimation];
  }

  else
  {
    layer = [MEMORY[0x1E69794A0] layer];
    circularLayer = self->_circularLayer;
    self->_circularLayer = layer;

    v7 = self->_circularLayer;
    layer2 = [(UIView *)self->_avatarContainerView layer];
    [layer2 setMask:v7];

    [(UIView *)self->_avatarContainerView setClipsToBounds:1];
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(UIView *)self->_avatarContainerView setBackgroundColor:secondarySystemBackgroundColor];
  }
}

- (void)loadView
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v7, v9, v11}];
  v12 = objc_alloc(MEMORY[0x1E69DD250]);
  v13 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *(MEMORY[0x1E695F058] + 24);
  v17 = [v12 initWithFrame:{*MEMORY[0x1E695F058], v14, v15, v16}];
  avatarContainerView = self->_avatarContainerView;
  self->_avatarContainerView = v17;

  v19 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v13, v14, v15, v16}];
  imageView = self->_imageView;
  self->_imageView = v19;

  [(UIImageView *)self->_imageView setAlpha:0.0];
  [(CNMeCardSharingAvatarViewController *)self configureSubviews];
  [v21 addSubview:self->_avatarContainerView];
  [(UIView *)self->_avatarContainerView addSubview:self->_imageView];
  [(CNMeCardSharingAvatarViewController *)self setView:v21];
}

- (CNMeCardSharingAvatarViewController)initWithAvatarProvider:(id)provider mode:(int64_t)mode
{
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = CNMeCardSharingAvatarViewController;
  v8 = [(CNMeCardSharingAvatarViewController *)&v16 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_avatarProvider, provider);
    v10 = +[CNAvatarImageRendererSettings defaultSettings];
    v11 = [[CNAvatarImageRenderer alloc] initWithSettings:v10];
    placeholderImageProvider = [(CNAvatarImageRenderer *)v11 placeholderImageProvider];
    fallbackImageProvider = v9->_fallbackImageProvider;
    v9->_fallbackImageProvider = placeholderImageProvider;

    v9->_mode = mode;
    v9->_needsReload = 1;
    v14 = v9;
  }

  return v9;
}

@end