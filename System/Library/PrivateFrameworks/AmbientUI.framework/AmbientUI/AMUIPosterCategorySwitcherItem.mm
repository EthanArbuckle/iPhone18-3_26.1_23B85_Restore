@interface AMUIPosterCategorySwitcherItem
+ (id)itemWithConfiguration:(void *)configuration delegate:;
- (AMUIPosterCategorySwitcherItem)initWithConfiguration:(id)configuration delegate:(id)delegate;
- (BOOL)posterViewControllerHasInlineAuthenticated:(id)authenticated;
- (BOOL)posterViewControllerIsAuthenticated:(id)authenticated;
- (NSObject)identifier;
- (UIView)itemView;
- (id)delegate;
- (id)posterView;
- (id)posterViewControllerRequestExtensionInstanceIdentifier:(id)identifier;
- (id)titleLabelView;
- (uint64_t)configuration;
- (uint64_t)setConfiguration:(uint64_t)configuration;
- (void)_noteWindowWillRotate:(id)rotate;
- (void)_updateClipping;
- (void)_updateLabelConstraintsForInterfaceOrientation:(int64_t)orientation;
- (void)_updateTitleLabelVisibility;
- (void)dealloc;
- (void)invalidate;
- (void)noteTransitionDidBegin;
- (void)posterViewController;
- (void)posterViewController:(id)controller didRequestInlineAuthenticationWithUnlockDestination:(id)destination;
- (void)posterViewController:(id)controller relinquishExtensionInstanceIdentifier:(id)identifier;
- (void)setTitleLabelVisible:(char)visible onTopEdge:;
- (void)switcher:(id)switcher didMoveToWindow:(id)window;
- (void)switcher:(id)switcher updateItemForPresentationProgress:(double)progress;
- (void)switcher:(id)switcher willMoveToWindow:(id)window;
- (void)switcherItemDidAppear:(id)appear;
- (void)switcherItemDidDisappear:(id)disappear;
- (void)switcherItemWillAppear:(id)appear;
- (void)switcherItemWillDisappear:(id)disappear;
@end

@implementation AMUIPosterCategorySwitcherItem

+ (id)itemWithConfiguration:(void *)configuration delegate:
{
  configurationCopy = configuration;
  v5 = a2;
  v6 = [objc_alloc(objc_opt_self()) initWithConfiguration:v5 delegate:configurationCopy];

  return v6;
}

- (AMUIPosterCategorySwitcherItem)initWithConfiguration:(id)configuration delegate:(id)delegate
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = AMUIPosterCategorySwitcherItem;
  v9 = [(AMUIPosterCategorySwitcherItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    v10->_appearState = 0;
    objc_storeWeak(&v10->_delegate, delegateCopy);
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

- (void)switcherItemWillAppear:(id)appear
{
  self->_appearState = 1;
  appearCopy = appear;
  itemView = [(AMUIPosterCategorySwitcherItem *)self itemView];
  traitCollection = [appearCopy traitCollection];

  [traitCollection displayCornerRadius];
  [itemView _setContinuousCornerRadius:?];

  window = [itemView window];
  -[AMUIPosterCategorySwitcherItem _updateLabelConstraintsForInterfaceOrientation:](self, "_updateLabelConstraintsForInterfaceOrientation:", [window _windowInterfaceOrientation]);
  [(AMUIPosterCategorySwitcherItem *)self _updateClipping];
  [(AMUIPosterCategorySwitcherItem *)self _updateContentMode];
}

- (void)switcherItemWillDisappear:(id)disappear
{
  self->_appearState = 3;
  [(AMUIPosterCategorySwitcherItem *)self _updateClipping];

  [(AMUIPosterCategorySwitcherItem *)self _updateContentMode];
}

- (void)switcherItemDidDisappear:(id)disappear
{
  self->_appearState = 0;
  [(AMUIPosterCategorySwitcherItem *)self _updateClipping];

  [(AMUIPosterCategorySwitcherItem *)self _updateContentMode];
}

- (void)switcher:(id)switcher willMoveToWindow:(id)window
{
  _windowInterfaceOrientation = [window _windowInterfaceOrientation];

  [(AMUIPosterCategorySwitcherItem *)self _updateLabelConstraintsForInterfaceOrientation:_windowInterfaceOrientation];
}

- (void)switcher:(id)switcher didMoveToWindow:(id)window
{
  _windowInterfaceOrientation = [window _windowInterfaceOrientation];

  [(AMUIPosterCategorySwitcherItem *)self _updateLabelConstraintsForInterfaceOrientation:_windowInterfaceOrientation];
}

- (void)posterViewController:(id)controller relinquishExtensionInstanceIdentifier:(id)identifier
{
  objc_storeStrong(&self->_lastInstanceIdentifier, identifier);
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained posterCategorySwitcherItem:self relinquishInstanceIdentifier:identifierCopy];
}

- (void)_updateClipping
{
  v2 = (self->_appearState & 0xFFFFFFFD) == 1;
  itemView = [(AMUIPosterCategorySwitcherItem *)self itemView];
  [itemView setClipsToBounds:v2];
}

- (void)_updateLabelConstraintsForInterfaceOrientation:(int64_t)orientation
{
  v4 = orientation == 3;
  [(NSLayoutConstraint *)self->_labelLeftConstraint setActive:orientation != 3];
  labelRightConstraint = self->_labelRightConstraint;

  [(NSLayoutConstraint *)labelRightConstraint setActive:v4];
}

- (void)_noteWindowWillRotate:(id)rotate
{
  rotateCopy = rotate;
  object = [rotateCopy object];
  window = [(UIView *)self->_itemView window];

  if (object == window)
  {
    userInfo = [rotateCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D772C0]];
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

    integerValue = [v11 integerValue];
    [(AMUIPosterCategorySwitcherItem *)self _updateLabelConstraintsForInterfaceOrientation:integerValue];
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

- (uint64_t)setConfiguration:(uint64_t)configuration
{
  v4 = a2;
  v5 = v4;
  if (configuration)
  {
    v6 = *(configuration + 88);
    v8 = v5;
    v4 = BSEqualObjects();
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      objc_storeStrong((configuration + 88), a2);
      v4 = [*(configuration + 96) updatePosterConfiguration:*(configuration + 88) withAnimationSettings:0];
      v5 = v8;
    }
  }

  return MEMORY[0x2821F96F8](v4, v5);
}

- (void)posterViewController
{
  if (self)
  {
    selfCopy = self;
    v3 = self[12];
    if (!v3)
    {
      v4 = objc_alloc_init(AMUIPosterViewController);
      v5 = selfCopy[12];
      selfCopy[12] = v4;

      [selfCopy[12] setDelegate:selfCopy];
      [selfCopy[12] setChromeOrientationPolicy:2];
      [selfCopy[12] updatePosterConfiguration:selfCopy[11] withAnimationSettings:0];
      [selfCopy _updateContentMode];
      v3 = selfCopy[12];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)noteTransitionDidBegin
{
  if (self)
  {
    window = [self[1] window];
    [self _updateLabelConstraintsForInterfaceOrientation:{objc_msgSend(window, "_windowInterfaceOrientation")}];
  }
}

- (void)setTitleLabelVisible:(char)visible onTopEdge:
{
  if (self)
  {
    *(self + 80) = a2;
    *(self + 81) = visible;
    return [self _updateTitleLabelVisibility];
  }

  return self;
}

- (id)titleLabelView
{
  if (self)
  {
    selfCopy = self;
    itemView = [self itemView];
    self = selfCopy[13];
    v1 = vars8;
  }

  return self;
}

- (id)posterView
{
  if (self)
  {
    posterViewController = [(AMUIPosterCategorySwitcherItem *)self posterViewController];
    view = [posterViewController view];
  }

  else
  {
    view = 0;
  }

  return view;
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
  posterViewController = [(AMUIPosterCategorySwitcherItem *)self posterViewController];
  view = [posterViewController view];

  if (!self->_itemView)
  {
    goto LABEL_5;
  }

  superview = [view superview];
  itemView = self->_itemView;

  if (superview != itemView)
  {
    [(UIView *)self->_itemView bounds];
    [view setFrame:?];
    [view setAutoresizingMask:18];
    [(UIView *)self->_itemView addSubview:view];
  }

  v7 = self->_itemView;
  if (!v7)
  {
LABEL_5:
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    [view bounds];
    v9 = [v8 initWithFrame:?];
    [view setAutoresizingMask:18];
    [(UIView *)v9 addSubview:view];
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

      useFallbackTitleAndSymbol = [v15 useFallbackTitleAndSymbol];
      v17 = self->_loadingQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__AMUIPosterCategorySwitcherItem_itemView__block_invoke;
      block[3] = &unk_278C767E8;
      v25 = v13;
      v28 = useFallbackTitleAndSymbol;
      v26 = v9;
      selfCopy = self;
      v18 = v13;
      dispatch_async(v17, block);
    }

    layer = [view layer];
    [layer setAllowsGroupOpacity:1];

    layer2 = [(UIView *)v9 layer];
    [layer2 setAllowsGroupOpacity:1];

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

- (void)switcherItemDidAppear:(id)appear
{
  self->_appearState = 2;
  posterViewController = [(AMUIPosterCategorySwitcherItem *)self posterViewController];
  [posterViewController setAppearanceTransitionProgress:1.0];

  [(AMUIPosterCategorySwitcherItem *)self _updateClipping];

  [(AMUIPosterCategorySwitcherItem *)self _updateContentMode];
}

- (void)switcher:(id)switcher updateItemForPresentationProgress:(double)progress
{
  self->_presentationProgress = progress;
  posterViewController = [(AMUIPosterCategorySwitcherItem *)self posterViewController];
  [posterViewController setAppearanceTransitionProgress:progress];

  [(AMUIPosterCategorySwitcherItem *)self _updateContentMode];
}

- (id)posterViewControllerRequestExtensionInstanceIdentifier:(id)identifier
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

- (BOOL)posterViewControllerIsAuthenticated:(id)authenticated
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

- (void)posterViewController:(id)controller didRequestInlineAuthenticationWithUnlockDestination:(id)destination
{
  destinationCopy = destination;
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

- (BOOL)posterViewControllerHasInlineAuthenticated:(id)authenticated
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
  titleLabelView = [(AMUIPosterCategorySwitcherItem *)&self->super.isa titleLabelView];
  [titleLabelView setHidden:!self->_titleLabelVisible];
  [(NSLayoutConstraint *)self->_labelTopConstraint setActive:self->_titleLabelOnTopEdge];
  [(NSLayoutConstraint *)self->_labelBottomConstraint setActive:!self->_titleLabelOnTopEdge];
}

@end