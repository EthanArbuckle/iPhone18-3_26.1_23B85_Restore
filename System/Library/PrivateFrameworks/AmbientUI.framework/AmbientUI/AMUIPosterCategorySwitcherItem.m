@interface AMUIPosterCategorySwitcherItem
+ (id)itemWithConfiguration:(void *)a3 delegate:;
- (AMUIPosterCategorySwitcherItem)initWithConfiguration:(id)a3 delegate:(id)a4;
- (BOOL)posterViewControllerHasInlineAuthenticated:(id)a3;
- (BOOL)posterViewControllerIsAuthenticated:(id)a3;
- (NSObject)identifier;
- (UIView)itemView;
- (id)delegate;
- (id)posterView;
- (id)posterViewControllerRequestExtensionInstanceIdentifier:(id)a3;
- (id)titleLabelView;
- (uint64_t)configuration;
- (uint64_t)setConfiguration:(uint64_t)a1;
- (void)_noteWindowWillRotate:(id)a3;
- (void)_updateClipping;
- (void)_updateLabelConstraintsForInterfaceOrientation:(int64_t)a3;
- (void)_updateTitleLabelVisibility;
- (void)dealloc;
- (void)invalidate;
- (void)noteTransitionDidBegin;
- (void)posterViewController;
- (void)posterViewController:(id)a3 didRequestInlineAuthenticationWithUnlockDestination:(id)a4;
- (void)posterViewController:(id)a3 relinquishExtensionInstanceIdentifier:(id)a4;
- (void)setTitleLabelVisible:(char)a3 onTopEdge:;
- (void)switcher:(id)a3 didMoveToWindow:(id)a4;
- (void)switcher:(id)a3 updateItemForPresentationProgress:(double)a4;
- (void)switcher:(id)a3 willMoveToWindow:(id)a4;
- (void)switcherItemDidAppear:(id)a3;
- (void)switcherItemDidDisappear:(id)a3;
- (void)switcherItemWillAppear:(id)a3;
- (void)switcherItemWillDisappear:(id)a3;
@end

@implementation AMUIPosterCategorySwitcherItem

+ (id)itemWithConfiguration:(void *)a3 delegate:
{
  v4 = a3;
  v5 = a2;
  v6 = [objc_alloc(objc_opt_self()) initWithConfiguration:v5 delegate:v4];

  return v6;
}

- (AMUIPosterCategorySwitcherItem)initWithConfiguration:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMUIPosterCategorySwitcherItem;
  v9 = [(AMUIPosterCategorySwitcherItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    v10->_appearState = 0;
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

- (void)dealloc
{
  [(AMUIPosterCategorySwitcherItem *)self invalidate];
  v3.receiver = self;
  v3.super_class = AMUIPosterCategorySwitcherItem;
  [(AMUIPosterCategorySwitcherItem *)&v3 dealloc];
}

void __42__AMUIPosterCategorySwitcherItem_itemView__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v15 = 0;
  v3 = [v2 amui_getConfiguredDisplayNameWithError:&v15];
  v4 = *(a1 + 32);
  v14 = 0;
  v5 = v15;
  v6 = [v4 pr_loadAmbientConfigurationWithError:&v14];
  v7 = v14;

  v8 = [v6 displayNameSystemSymbolName];
  if (v8)
  {
    if (v3)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  if (*(a1 + 56))
  {
    v8 = @"questionmark.circle.fill";
  }

  else
  {
    v8 = 0;
  }

  if (!v3)
  {
LABEL_8:
    if (*(a1 + 56))
    {
      v3 = @"Unknown";
    }

    else
    {
      v3 = 0;
    }
  }

LABEL_3:
  v11 = v3;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v9 = v3;
  v10 = v8;
  BSDispatchMain();
}

void __42__AMUIPosterCategorySwitcherItem_itemView__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 40))
  {
    v2 = [[AMUIPhotosLabelView alloc] initWithSymbolName:*(a1 + 32) title:*(a1 + 40)];
    [(AMUIPhotosLabelView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = [(AMUIPhotosLabelView *)v2 layer];
    [v3 setAllowsGroupOpacity:1];

    [*(a1 + 48) addSubview:v2];
    [(AMUIPhotosLabelView *)v2 setHidden:1];
    v4 = *(a1 + 56);
    v5 = *(v4 + 104);
    *(v4 + 104) = v2;
    v6 = v2;

    v7 = [*(*(a1 + 56) + 104) topAnchor];
    v8 = [*(a1 + 48) topAnchor];
    [*(*(a1 + 56) + 104) preferredTopMargin];
    v9 = [v7 constraintEqualToAnchor:v8 constant:?];
    v10 = *(a1 + 56);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [*(*(a1 + 56) + 104) bottomAnchor];
    v13 = [*(a1 + 48) bottomAnchor];
    [*(*(a1 + 56) + 104) preferredBottomMargin];
    v15 = [v12 constraintEqualToAnchor:v13 constant:-v14];
    v16 = *(a1 + 56);
    v17 = *(v16 + 48);
    *(v16 + 48) = v15;

    v18 = [*(*(a1 + 56) + 104) leftAnchor];
    v19 = [*(a1 + 48) leftAnchor];
    [*(*(a1 + 56) + 104) preferredLeadingMargin];
    v20 = [v18 constraintEqualToAnchor:v19 constant:?];
    v21 = *(a1 + 56);
    v22 = *(v21 + 56);
    *(v21 + 56) = v20;

    v23 = [*(*(a1 + 56) + 104) rightAnchor];
    v24 = [*(a1 + 48) rightAnchor];
    [*(*(a1 + 56) + 104) preferredLeadingMargin];
    v26 = [v23 constraintEqualToAnchor:v24 constant:-v25];
    v27 = *(a1 + 56);
    v28 = *(v27 + 64);
    *(v27 + 64) = v26;

    [*(a1 + 56) _updateTitleLabelVisibility];
    v29 = *(a1 + 56);
    v30 = [v29[13] window];
    [v29 _updateLabelConstraintsForInterfaceOrientation:{objc_msgSend(v30, "_windowInterfaceOrientation")}];

    v31 = [MEMORY[0x277CCAB98] defaultCenter];
    [v31 addObserver:*(a1 + 56) selector:sel__noteWindowWillRotate_ name:*MEMORY[0x277D772D8] object:0];
  }
}

- (void)invalidate
{
  [(AMUIPosterViewController *)self->_posterViewController invalidate];
  posterViewController = self->_posterViewController;
  self->_posterViewController = 0;
}

- (void)switcherItemWillAppear:(id)a3
{
  self->_appearState = 1;
  v4 = a3;
  v7 = [(AMUIPosterCategorySwitcherItem *)self itemView];
  v5 = [v4 traitCollection];

  [v5 displayCornerRadius];
  [v7 _setContinuousCornerRadius:?];

  v6 = [v7 window];
  -[AMUIPosterCategorySwitcherItem _updateLabelConstraintsForInterfaceOrientation:](self, "_updateLabelConstraintsForInterfaceOrientation:", [v6 _windowInterfaceOrientation]);
  [(AMUIPosterCategorySwitcherItem *)self _updateClipping];
  [(AMUIPosterCategorySwitcherItem *)self _updateContentMode];
}

- (void)switcherItemWillDisappear:(id)a3
{
  self->_appearState = 3;
  [(AMUIPosterCategorySwitcherItem *)self _updateClipping];

  [(AMUIPosterCategorySwitcherItem *)self _updateContentMode];
}

- (void)switcherItemDidDisappear:(id)a3
{
  self->_appearState = 0;
  [(AMUIPosterCategorySwitcherItem *)self _updateClipping];

  [(AMUIPosterCategorySwitcherItem *)self _updateContentMode];
}

- (void)switcher:(id)a3 willMoveToWindow:(id)a4
{
  v5 = [a4 _windowInterfaceOrientation];

  [(AMUIPosterCategorySwitcherItem *)self _updateLabelConstraintsForInterfaceOrientation:v5];
}

- (void)switcher:(id)a3 didMoveToWindow:(id)a4
{
  v5 = [a4 _windowInterfaceOrientation];

  [(AMUIPosterCategorySwitcherItem *)self _updateLabelConstraintsForInterfaceOrientation:v5];
}

- (void)posterViewController:(id)a3 relinquishExtensionInstanceIdentifier:(id)a4
{
  objc_storeStrong(&self->_lastInstanceIdentifier, a4);
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained posterCategorySwitcherItem:self relinquishInstanceIdentifier:v6];
}

- (void)_updateClipping
{
  v2 = (self->_appearState & 0xFFFFFFFD) == 1;
  v3 = [(AMUIPosterCategorySwitcherItem *)self itemView];
  [v3 setClipsToBounds:v2];
}

- (void)_updateLabelConstraintsForInterfaceOrientation:(int64_t)a3
{
  v4 = a3 == 3;
  [(NSLayoutConstraint *)self->_labelLeftConstraint setActive:a3 != 3];
  labelRightConstraint = self->_labelRightConstraint;

  [(NSLayoutConstraint *)labelRightConstraint setActive:v4];
}

- (void)_noteWindowWillRotate:(id)a3
{
  v13 = a3;
  v4 = [v13 object];
  v5 = [(UIView *)self->_itemView window];

  if (v4 == v5)
  {
    v6 = [v13 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D772C0]];
    v8 = objc_opt_class();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 integerValue];
    [(AMUIPosterCategorySwitcherItem *)self _updateLabelConstraintsForInterfaceOrientation:v12];
  }
}

- (uint64_t)configuration
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)setConfiguration:(uint64_t)a1
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v6 = *(a1 + 88);
    v8 = v5;
    v4 = BSEqualObjects();
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      objc_storeStrong((a1 + 88), a2);
      v4 = [*(a1 + 96) updatePosterConfiguration:*(a1 + 88) withAnimationSettings:0];
      v5 = v8;
    }
  }

  return MEMORY[0x2821F96F8](v4, v5);
}

- (void)posterViewController
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[12];
    if (!v3)
    {
      v4 = objc_alloc_init(AMUIPosterViewController);
      v5 = v2[12];
      v2[12] = v4;

      [v2[12] setDelegate:v2];
      [v2[12] setChromeOrientationPolicy:2];
      [v2[12] updatePosterConfiguration:v2[11] withAnimationSettings:0];
      [v2 _updateContentMode];
      v3 = v2[12];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)noteTransitionDidBegin
{
  if (a1)
  {
    v2 = [a1[1] window];
    [a1 _updateLabelConstraintsForInterfaceOrientation:{objc_msgSend(v2, "_windowInterfaceOrientation")}];
  }
}

- (void)setTitleLabelVisible:(char)a3 onTopEdge:
{
  if (a1)
  {
    *(a1 + 80) = a2;
    *(a1 + 81) = a3;
    return [a1 _updateTitleLabelVisibility];
  }

  return a1;
}

- (id)titleLabelView
{
  if (a1)
  {
    v2 = a1;
    v3 = [a1 itemView];
    a1 = v2[13];
    v1 = vars8;
  }

  return a1;
}

- (id)posterView
{
  if (a1)
  {
    v1 = [(AMUIPosterCategorySwitcherItem *)a1 posterViewController];
    v2 = [v1 view];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSObject)identifier
{
  if (self)
  {
    self = self->_configuration;
  }

  return [(AMUIPosterCategorySwitcherItem *)self serverUUID];
}

- (UIView)itemView
{
  v3 = [(AMUIPosterCategorySwitcherItem *)self posterViewController];
  v4 = [v3 view];

  if (!self->_itemView)
  {
    goto LABEL_5;
  }

  v5 = [v4 superview];
  itemView = self->_itemView;

  if (v5 != itemView)
  {
    [(UIView *)self->_itemView bounds];
    [v4 setFrame:?];
    [v4 setAutoresizingMask:18];
    [(UIView *)self->_itemView addSubview:v4];
  }

  v7 = self->_itemView;
  if (!v7)
  {
LABEL_5:
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    [v4 bounds];
    v9 = [v8 initWithFrame:?];
    [v4 setAutoresizingMask:18];
    [(UIView *)v9 addSubview:v4];
    if ([AMUIDataLayerViewController dataLayoutForConfiguration:self->_configuration]== 1)
    {
      if (!self->_loadingQueue)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"AMUIPosterCategoryItem-%p", self];
        Serial = BSDispatchQueueCreateSerial();
        loadingQueue = self->_loadingQueue;
        self->_loadingQueue = Serial;
      }

      v13 = self->_configuration;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v15 = [WeakRetained posterCategorySwitcherItemPrototypeSettings:self];

      v16 = [v15 useFallbackTitleAndSymbol];
      v17 = self->_loadingQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__AMUIPosterCategorySwitcherItem_itemView__block_invoke;
      block[3] = &unk_278C767E8;
      v25 = v13;
      v28 = v16;
      v26 = v9;
      v27 = self;
      v18 = v13;
      dispatch_async(v17, block);
    }

    v19 = [v4 layer];
    [v19 setAllowsGroupOpacity:1];

    v20 = [(UIView *)v9 layer];
    [v20 setAllowsGroupOpacity:1];

    v21 = self->_itemView;
    self->_itemView = v9;

    v7 = self->_itemView;
  }

  v22 = v7;

  return v7;
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 14);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)switcherItemDidAppear:(id)a3
{
  self->_appearState = 2;
  v4 = [(AMUIPosterCategorySwitcherItem *)self posterViewController];
  [v4 setAppearanceTransitionProgress:1.0];

  [(AMUIPosterCategorySwitcherItem *)self _updateClipping];

  [(AMUIPosterCategorySwitcherItem *)self _updateContentMode];
}

- (void)switcher:(id)a3 updateItemForPresentationProgress:(double)a4
{
  self->_presentationProgress = a4;
  v6 = [(AMUIPosterCategorySwitcherItem *)self posterViewController];
  [v6 setAppearanceTransitionProgress:a4];

  [(AMUIPosterCategorySwitcherItem *)self _updateContentMode];
}

- (id)posterViewControllerRequestExtensionInstanceIdentifier:(id)a3
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  lastInstanceIdentifier = self->_lastInstanceIdentifier;
  v6 = [OUTLINED_FUNCTION_0_4() posterCategorySwitcherItemRequestInstanceIdentifier:? preferring:?];

  v7 = self->_lastInstanceIdentifier;
  self->_lastInstanceIdentifier = 0;

  return v6;
}

- (BOOL)posterViewControllerIsAuthenticated:(id)a3
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [OUTLINED_FUNCTION_0_4() posterCategorySwitcherItemIsAuthenticated:?];

  return v4;
}

- (void)posterViewController:(id)a3 didRequestInlineAuthenticationWithUnlockDestination:(id)a4
{
  v6 = a4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  [OUTLINED_FUNCTION_0_4() posterCategorySwitcherItem:? didRequestInlineAuthenticationWithUnlockDestination:?];
}

- (BOOL)posterViewControllerHasInlineAuthenticated:(id)a3
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [OUTLINED_FUNCTION_0_4() posterCategorySwitcherItemHasInlineAuthenticated:?];

  return v4;
}

- (void)_updateTitleLabelVisibility
{
  v3 = [(AMUIPosterCategorySwitcherItem *)&self->super.isa titleLabelView];
  [v3 setHidden:!self->_titleLabelVisible];
  [(NSLayoutConstraint *)self->_labelTopConstraint setActive:self->_titleLabelOnTopEdge];
  [(NSLayoutConstraint *)self->_labelBottomConstraint setActive:!self->_titleLabelOnTopEdge];
}

@end