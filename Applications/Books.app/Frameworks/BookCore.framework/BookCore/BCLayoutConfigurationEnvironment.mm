@interface BCLayoutConfigurationEnvironment
- (BCLayoutConfigurationEnvironment)initWithViewController:(id)controller;
- (BOOL)isCompactHeight;
- (BOOL)isCompactWidth;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLayoutConfigurationEnvironment:(id)environment;
- (BOOL)isScrubberDisabled;
- (CGRect)scrubberContainerBounds;
- (CGRect)scrubberInscribedRect:(CGRect)rect;
- (CGSize)screenSize;
- (CGSize)size;
- (IMEnvironmentOverrideProvider)overrideProvider;
- (UIEdgeInsets)safeAreaInsets;
- (UIEdgeInsets)safeAreaInsetsAdjustingForNotch:(BOOL)notch;
- (UITraitCollection)traitCollection;
- (UIView)view;
- (double)backgroundExtension;
- (double)defaultStatusBarHeight;
- (double)statusBarHeight;
- (id)_targetViewTraitEnvironment;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)targetView;
- (int64_t)scrubberLayoutDirection;
- (void)freeze;
- (void)unfreeze;
@end

@implementation BCLayoutConfigurationEnvironment

- (BOOL)isScrubberDisabled
{
  overrideProvider = [(BCLayoutConfigurationEnvironment *)self overrideProvider];
  isScrubberDisabled = [overrideProvider isScrubberDisabled];

  return isScrubberDisabled;
}

- (CGRect)scrubberInscribedRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  view = [(BCLayoutConfigurationEnvironment *)self view];
  [view _inscribedRectInBoundingPathByInsettingRect:10 onEdges:1 withOptions:{x, y, width, height}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (int64_t)scrubberLayoutDirection
{
  view = [(BCLayoutConfigurationEnvironment *)self view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  return effectiveUserInterfaceLayoutDirection;
}

- (CGRect)scrubberContainerBounds
{
  view = [(BCLayoutConfigurationEnvironment *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BCLayoutConfigurationEnvironment)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = BCLayoutConfigurationEnvironment;
  v5 = [(BCLayoutConfigurationEnvironment *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewController, controllerCopy);
  }

  return v6;
}

- (double)statusBarHeight
{
  targetView = [(BCLayoutConfigurationEnvironment *)self targetView];
  objc_opt_class();
  v4 = BUDynamicCast();
  v5 = v4;
  if (v4)
  {
    window = v4;
  }

  else
  {
    window = [targetView window];
  }

  v7 = window;

  windowScene = [v7 windowScene];
  statusBarManager = [windowScene statusBarManager];

  v10 = 0.0;
  if (![(BCLayoutConfigurationEnvironment *)self isCompactHeight])
  {
    [statusBarManager statusBarHeight];
    v10 = v11;
  }

  return v10;
}

- (double)defaultStatusBarHeight
{
  targetView = [(BCLayoutConfigurationEnvironment *)self targetView];
  objc_opt_class();
  v4 = BUDynamicCast();
  v5 = v4;
  if (v4)
  {
    window = v4;
  }

  else
  {
    window = [targetView window];
  }

  v7 = window;

  windowScene = [v7 windowScene];
  statusBarManager = [windowScene statusBarManager];

  v10 = 0.0;
  if (![(BCLayoutConfigurationEnvironment *)self isCompactHeight])
  {
    [statusBarManager defaultStatusBarHeight];
    v10 = v11;
  }

  return v10;
}

- (double)backgroundExtension
{
  isCompactHeight = [(BCLayoutConfigurationEnvironment *)self isCompactHeight];
  result = 0.0;
  if ((isCompactHeight & 1) == 0)
  {
    [(BCLayoutConfigurationEnvironment *)self safeAreaInsets];
    if (fabs(result) < 2.22044605e-16)
    {

      [(BCLayoutConfigurationEnvironment *)self statusBarHeight];
    }
  }

  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  [(BCLayoutConfigurationEnvironment *)self safeAreaInsetsAdjustingForNotch:1];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if (*&qword_346198 != v4 || *&qword_346190 != v3 || *&qword_3461A8 != v6 || *&qword_3461A0 != v5)
  {
    qword_346190 = *&v3;
    qword_346198 = *&v4;
    qword_3461A0 = *&v5;
    qword_3461A8 = *&v6;
    v14 = BKSemanticLayoutInternalLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v24.top = v7;
      v24.left = v8;
      v24.bottom = v9;
      v24.right = v10;
      v15 = NSStringFromUIEdgeInsets(v24);
      v20 = 134218242;
      selfCopy = self;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Environment %p safe insets %@", &v20, 0x16u);
    }
  }

  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (UIEdgeInsets)safeAreaInsetsAdjustingForNotch:(BOOL)notch
{
  notchCopy = notch;
  v5 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  view = [(BCLayoutConfigurationEnvironment *)self view];
  window = [view window];

  if (!window)
  {
    delegate = [v5 delegate];
    window = [delegate window];
  }

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  if (WeakRetained)
  {
    rootViewController = WeakRetained;
  }

  else
  {
    rootViewController = [window rootViewController];
    if (!rootViewController)
    {
      goto LABEL_15;
    }
  }

  _appearState = [rootViewController _appearState];
  presentedViewController = [rootViewController presentedViewController];
  v13 = presentedViewController;
  if (presentedViewController && (_appearState == 3 || !_appearState))
  {
    v12PresentedViewController = [presentedViewController presentedViewController];

    if (v12PresentedViewController)
    {
      do
      {
        presentedViewController2 = [v13 presentedViewController];

        v15PresentedViewController = [presentedViewController2 presentedViewController];

        v13 = presentedViewController2;
      }

      while (v15PresentedViewController);
    }

    else
    {
      presentedViewController2 = v13;
    }

    v13 = presentedViewController2;

    rootViewController = v13;
  }

LABEL_15:
  if ([(BCLayoutConfigurationEnvironment *)self opening])
  {
    rootViewController2 = [window rootViewController];
    view2 = [rootViewController2 view];
    [view2 safeAreaInsets];
    top = v19;
    left = v21;
    bottom = v23;
    right = v25;
  }

  else
  {
    viewIfLoaded = [rootViewController viewIfLoaded];
    rootViewController2 = viewIfLoaded;
    if (viewIfLoaded)
    {
      [viewIfLoaded safeAreaInsets];
      top = v28;
      left = v29;
      bottom = v30;
      right = v31;
    }

    else
    {
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
    }
  }

  v32 = fabs(top);
  if ([v5 isStatusBarHidden] && v32 < 2.22044605e-16)
  {
    [(BCLayoutConfigurationEnvironment *)self statusBarHeight];
    top = top + v33;
    v32 = fabs(top);
  }

  isCompactHeight = [(BCLayoutConfigurationEnvironment *)self isCompactHeight];
  v35 = isCompactHeight;
  if (v32 >= 2.22044605e-16 || (isCompactHeight & 1) != 0 || ([(BCLayoutConfigurationEnvironment *)self statusBarHeight], fabs(v36) >= 2.22044605e-16))
  {
    if ((v35 & (top != 0.0)) != 0)
    {
      top = 0.0;
    }
  }

  else
  {
    windowScene = [window windowScene];
    statusBarManager = [windowScene statusBarManager];
    [statusBarManager bc_defaultPortraitStatusBarHeight];
    top = v39;
  }

  if ((notchCopy & v35) == 1 && [(BCLayoutConfigurationEnvironment *)self isLandscape]&& left == 44.0)
  {
    right = right + -13.0;
    left = 31.0;
  }

  v40 = top;
  v41 = left;
  v42 = bottom;
  v43 = right;
  result.right = v43;
  result.bottom = v42;
  result.left = v41;
  result.top = v40;
  return result;
}

- (CGSize)size
{
  width = self->_viewSize.width;
  if (width == 0.0 || (height = self->_viewSize.height, height == 0.0))
  {
    targetView = [(BCLayoutConfigurationEnvironment *)self targetView];
    [targetView frame];
    width = v5;
    height = v6;
  }

  v7 = width;
  v8 = height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)screenSize
{
  width = self->_screenSize.width;
  if (width == 0.0 || (height = self->_screenSize.height, height == 0.0))
  {
    v4 = +[UIScreen mainScreen];
    [v4 bounds];
    width = v5;
    height = v6;
  }

  v7 = width;
  v8 = height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)isCompactWidth
{
  trait = self->_trait;
  if (trait)
  {
    horizontalSizeClass = [(UITraitCollection *)trait horizontalSizeClass];
  }

  else
  {
    _targetViewTraitEnvironment = [(BCLayoutConfigurationEnvironment *)self _targetViewTraitEnvironment];
    traitCollection = [_targetViewTraitEnvironment traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];
  }

  return horizontalSizeClass == &dword_0 + 1;
}

- (BOOL)isCompactHeight
{
  trait = self->_trait;
  if (trait)
  {
    verticalSizeClass = [(UITraitCollection *)trait verticalSizeClass];
  }

  else
  {
    _targetViewTraitEnvironment = [(BCLayoutConfigurationEnvironment *)self _targetViewTraitEnvironment];
    traitCollection = [_targetViewTraitEnvironment traitCollection];
    verticalSizeClass = [traitCollection verticalSizeClass];
  }

  return verticalSizeClass == &dword_0 + 1;
}

- (void)freeze
{
  targetView = [(BCLayoutConfigurationEnvironment *)self targetView];
  [targetView frame];
  self->_viewSize.width = v4;
  self->_viewSize.height = v5;

  v6 = +[UIWindow _applicationKeyWindow];
  windowScene = [v6 windowScene];
  self->_interfaceOrientation = [windowScene interfaceOrientation];

  _targetViewTraitEnvironment = [(BCLayoutConfigurationEnvironment *)self _targetViewTraitEnvironment];
  traitCollection = [_targetViewTraitEnvironment traitCollection];
  trait = self->_trait;
  self->_trait = traitCollection;

  v13 = +[UIScreen mainScreen];
  [v13 bounds];
  self->_screenSize.width = v11;
  self->_screenSize.height = v12;
}

- (void)unfreeze
{
  v4 = CGSizeZero;
  self->_viewSize = CGSizeZero;
  trait = self->_trait;
  self->_interfaceOrientation = 0;
  self->_trait = 0;

  self->_screenSize = v4;
}

- (UITraitCollection)traitCollection
{
  trait = self->_trait;
  if (trait)
  {
    traitCollection = trait;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    traitCollection = [WeakRetained traitCollection];
  }

  return traitCollection;
}

- (id)targetView
{
  view = [(BCLayoutConfigurationEnvironment *)self view];
  if (!view)
  {
    view = +[UIWindow _applicationKeyWindow];
  }

  return view;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  width = self->_viewSize.width;
  if (self->_viewSize.height == CGSizeZero.height && width == CGSizeZero.width)
  {
    v7 = @"NO";
  }

  else
  {
    v7 = @"YES";
  }

  [(BCLayoutConfigurationEnvironment *)self size];
  v25[0] = v8;
  v25[1] = v9;
  v10 = [NSValue valueWithBytes:v25 objCType:"{CGSize=dd}"];
  [(BCLayoutConfigurationEnvironment *)self screenSize];
  v24[0] = v11;
  v24[1] = v12;
  v13 = [NSValue valueWithBytes:v24 objCType:"{CGSize=dd}"];
  [(BCLayoutConfigurationEnvironment *)self safeAreaInsets];
  v23[0] = v14;
  v23[1] = v15;
  v23[2] = v16;
  v23[3] = v17;
  v18 = [NSValue valueWithBytes:v23 objCType:"{UIEdgeInsets=dddd}"];
  v19 = [NSNumber numberWithInteger:self->_interfaceOrientation];
  traitCollection = [(BCLayoutConfigurationEnvironment *)self traitCollection];
  v21 = [NSString stringWithFormat:@"<%@:%p, frozen:%@, size:%@, screenSize:%@, safeAreaInsets:%@, interfaceOrientation:%@, traitCollection:%@>", v4, self, v7, v10, v13, v18, v19, traitCollection];

  return v21;
}

- (id)_targetViewTraitEnvironment
{
  targetView = [(BCLayoutConfigurationEnvironment *)self targetView];
  v3 = targetView;
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    _viewDelegate = [targetView _viewDelegate];
    v5 = BUDynamicCast();

    v3 = targetView;
    if (v5)
    {
      v3 = v5;
    }
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v7 = [v5 initWithViewController:WeakRetained];

  view = [(BCLayoutConfigurationEnvironment *)self view];
  [v7 setView:view];

  *(v7 + 8) = self->_viewSize;
  *(v7 + 5) = self->_interfaceOrientation;
  v9 = [(UITraitCollection *)self->_trait copyWithZone:zone];
  v10 = *(v7 + 6);
  *(v7 + 6) = v9;

  *(v7 + 24) = self->_screenSize;
  v11 = objc_loadWeakRetained(&self->_overrideProvider);
  objc_storeWeak(v7 + 10, v11);

  return v7;
}

- (BOOL)isEqualToLayoutConfigurationEnvironment:(id)environment
{
  environmentCopy = environment;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v7 = objc_loadWeakRetained(environmentCopy + 7);
  if (WeakRetained == v7)
  {
    v9 = objc_loadWeakRetained(&self->_view);
    v10 = objc_loadWeakRetained(environmentCopy + 9);
    if (v9 != v10)
    {
      goto LABEL_8;
    }

    if (self->_viewSize.width != *(environmentCopy + 1) || self->_viewSize.height != *(environmentCopy + 2))
    {
      goto LABEL_8;
    }

    [(BCLayoutConfigurationEnvironment *)self size];
    v14 = v13;
    v16 = v15;
    [environmentCopy size];
    v8 = 0;
    if (v14 != v18)
    {
      goto LABEL_9;
    }

    if (v16 != v17)
    {
      goto LABEL_9;
    }

    v8 = 0;
    if (self->_screenSize.width != *(environmentCopy + 3))
    {
      goto LABEL_9;
    }

    if (self->_screenSize.height != *(environmentCopy + 4))
    {
      goto LABEL_9;
    }

    [(BCLayoutConfigurationEnvironment *)self screenSize];
    v20 = v19;
    v22 = v21;
    [environmentCopy screenSize];
    v8 = 0;
    if (v20 != v24 || v22 != v23)
    {
      goto LABEL_9;
    }

    if (self->_interfaceOrientation != environmentCopy[5] || (trait = self->_trait, trait != environmentCopy[6]) && ![(UITraitCollection *)trait isEqual:?])
    {
LABEL_8:
      v8 = 0;
LABEL_9:

      goto LABEL_10;
    }

    traitCollection = [(BCLayoutConfigurationEnvironment *)self traitCollection];
    traitCollection2 = [environmentCopy traitCollection];
    if (traitCollection == traitCollection2 || (-[BCLayoutConfigurationEnvironment traitCollection](self, "traitCollection"), v28 = objc_claimAutoreleasedReturnValue(), [environmentCopy traitCollection], v3 = objc_claimAutoreleasedReturnValue(), v31 = v28, objc_msgSend(v28, "isEqual:", v3)))
    {
      v29 = objc_loadWeakRetained(&self->_overrideProvider);
      v30 = objc_loadWeakRetained(environmentCopy + 10);
      v8 = v29 == v30;

      if (traitCollection == traitCollection2)
      {
LABEL_25:

        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_25;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BCLayoutConfigurationEnvironment *)self isEqualToLayoutConfigurationEnvironment:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (IMEnvironmentOverrideProvider)overrideProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_overrideProvider);

  return WeakRetained;
}

@end