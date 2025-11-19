@interface BCLayoutConfigurationEnvironment
- (BCLayoutConfigurationEnvironment)initWithViewController:(id)a3;
- (BOOL)isCompactHeight;
- (BOOL)isCompactWidth;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLayoutConfigurationEnvironment:(id)a3;
- (BOOL)isScrubberDisabled;
- (CGRect)scrubberContainerBounds;
- (CGRect)scrubberInscribedRect:(CGRect)a3;
- (CGSize)screenSize;
- (CGSize)size;
- (IMEnvironmentOverrideProvider)overrideProvider;
- (UIEdgeInsets)safeAreaInsets;
- (UIEdgeInsets)safeAreaInsetsAdjustingForNotch:(BOOL)a3;
- (UITraitCollection)traitCollection;
- (UIView)view;
- (double)backgroundExtension;
- (double)defaultStatusBarHeight;
- (double)statusBarHeight;
- (id)_targetViewTraitEnvironment;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)targetView;
- (int64_t)scrubberLayoutDirection;
- (void)freeze;
- (void)unfreeze;
@end

@implementation BCLayoutConfigurationEnvironment

- (BOOL)isScrubberDisabled
{
  v2 = [(BCLayoutConfigurationEnvironment *)self overrideProvider];
  v3 = [v2 isScrubberDisabled];

  return v3;
}

- (CGRect)scrubberInscribedRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(BCLayoutConfigurationEnvironment *)self view];
  [v7 _inscribedRectInBoundingPathByInsettingRect:10 onEdges:1 withOptions:{x, y, width, height}];
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
  v2 = [(BCLayoutConfigurationEnvironment *)self view];
  v3 = [v2 effectiveUserInterfaceLayoutDirection];

  return v3;
}

- (CGRect)scrubberContainerBounds
{
  v2 = [(BCLayoutConfigurationEnvironment *)self view];
  [v2 bounds];
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

- (BCLayoutConfigurationEnvironment)initWithViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BCLayoutConfigurationEnvironment;
  v5 = [(BCLayoutConfigurationEnvironment *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewController, v4);
  }

  return v6;
}

- (double)statusBarHeight
{
  v3 = [(BCLayoutConfigurationEnvironment *)self targetView];
  objc_opt_class();
  v4 = BUDynamicCast();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 window];
  }

  v7 = v6;

  v8 = [v7 windowScene];
  v9 = [v8 statusBarManager];

  v10 = 0.0;
  if (![(BCLayoutConfigurationEnvironment *)self isCompactHeight])
  {
    [v9 statusBarHeight];
    v10 = v11;
  }

  return v10;
}

- (double)defaultStatusBarHeight
{
  v3 = [(BCLayoutConfigurationEnvironment *)self targetView];
  objc_opt_class();
  v4 = BUDynamicCast();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 window];
  }

  v7 = v6;

  v8 = [v7 windowScene];
  v9 = [v8 statusBarManager];

  v10 = 0.0;
  if (![(BCLayoutConfigurationEnvironment *)self isCompactHeight])
  {
    [v9 defaultStatusBarHeight];
    v10 = v11;
  }

  return v10;
}

- (double)backgroundExtension
{
  v3 = [(BCLayoutConfigurationEnvironment *)self isCompactHeight];
  result = 0.0;
  if ((v3 & 1) == 0)
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
      v21 = self;
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

- (UIEdgeInsets)safeAreaInsetsAdjustingForNotch:(BOOL)a3
{
  v3 = a3;
  v5 = +[UIApplication jsa_sharedApplicationIfNotExtension];
  v6 = [(BCLayoutConfigurationEnvironment *)self view];
  v7 = [v6 window];

  if (!v7)
  {
    v8 = [v5 delegate];
    v7 = [v8 window];
  }

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  if (WeakRetained)
  {
    v10 = WeakRetained;
  }

  else
  {
    v10 = [v7 rootViewController];
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  v11 = [v10 _appearState];
  v12 = [v10 presentedViewController];
  v13 = v12;
  if (v12 && (v11 == 3 || !v11))
  {
    v14 = [v12 presentedViewController];

    if (v14)
    {
      do
      {
        v15 = [v13 presentedViewController];

        v16 = [v15 presentedViewController];

        v13 = v15;
      }

      while (v16);
    }

    else
    {
      v15 = v13;
    }

    v13 = v15;

    v10 = v13;
  }

LABEL_15:
  if ([(BCLayoutConfigurationEnvironment *)self opening])
  {
    v17 = [v7 rootViewController];
    v18 = [v17 view];
    [v18 safeAreaInsets];
    top = v19;
    left = v21;
    bottom = v23;
    right = v25;
  }

  else
  {
    v27 = [v10 viewIfLoaded];
    v17 = v27;
    if (v27)
    {
      [v27 safeAreaInsets];
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

  v34 = [(BCLayoutConfigurationEnvironment *)self isCompactHeight];
  v35 = v34;
  if (v32 >= 2.22044605e-16 || (v34 & 1) != 0 || ([(BCLayoutConfigurationEnvironment *)self statusBarHeight], fabs(v36) >= 2.22044605e-16))
  {
    if ((v35 & (top != 0.0)) != 0)
    {
      top = 0.0;
    }
  }

  else
  {
    v37 = [v7 windowScene];
    v38 = [v37 statusBarManager];
    [v38 bc_defaultPortraitStatusBarHeight];
    top = v39;
  }

  if ((v3 & v35) == 1 && [(BCLayoutConfigurationEnvironment *)self isLandscape]&& left == 44.0)
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
    v4 = [(BCLayoutConfigurationEnvironment *)self targetView];
    [v4 frame];
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
    v4 = [(UITraitCollection *)trait horizontalSizeClass];
  }

  else
  {
    v5 = [(BCLayoutConfigurationEnvironment *)self _targetViewTraitEnvironment];
    v6 = [v5 traitCollection];
    v4 = [v6 horizontalSizeClass];
  }

  return v4 == &dword_0 + 1;
}

- (BOOL)isCompactHeight
{
  trait = self->_trait;
  if (trait)
  {
    v4 = [(UITraitCollection *)trait verticalSizeClass];
  }

  else
  {
    v5 = [(BCLayoutConfigurationEnvironment *)self _targetViewTraitEnvironment];
    v6 = [v5 traitCollection];
    v4 = [v6 verticalSizeClass];
  }

  return v4 == &dword_0 + 1;
}

- (void)freeze
{
  v3 = [(BCLayoutConfigurationEnvironment *)self targetView];
  [v3 frame];
  self->_viewSize.width = v4;
  self->_viewSize.height = v5;

  v6 = +[UIWindow _applicationKeyWindow];
  v7 = [v6 windowScene];
  self->_interfaceOrientation = [v7 interfaceOrientation];

  v8 = [(BCLayoutConfigurationEnvironment *)self _targetViewTraitEnvironment];
  v9 = [v8 traitCollection];
  trait = self->_trait;
  self->_trait = v9;

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
    v3 = trait;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v3 = [WeakRetained traitCollection];
  }

  return v3;
}

- (id)targetView
{
  v2 = [(BCLayoutConfigurationEnvironment *)self view];
  if (!v2)
  {
    v2 = +[UIWindow _applicationKeyWindow];
  }

  return v2;
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
  v20 = [(BCLayoutConfigurationEnvironment *)self traitCollection];
  v21 = [NSString stringWithFormat:@"<%@:%p, frozen:%@, size:%@, screenSize:%@, safeAreaInsets:%@, interfaceOrientation:%@, traitCollection:%@>", v4, self, v7, v10, v13, v18, v19, v20];

  return v21;
}

- (id)_targetViewTraitEnvironment
{
  v2 = [(BCLayoutConfigurationEnvironment *)self targetView];
  v3 = v2;
  if (objc_opt_respondsToSelector())
  {
    objc_opt_class();
    v4 = [v2 _viewDelegate];
    v5 = BUDynamicCast();

    v3 = v2;
    if (v5)
    {
      v3 = v5;
    }
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v7 = [v5 initWithViewController:WeakRetained];

  v8 = [(BCLayoutConfigurationEnvironment *)self view];
  [v7 setView:v8];

  *(v7 + 8) = self->_viewSize;
  *(v7 + 5) = self->_interfaceOrientation;
  v9 = [(UITraitCollection *)self->_trait copyWithZone:a3];
  v10 = *(v7 + 6);
  *(v7 + 6) = v9;

  *(v7 + 24) = self->_screenSize;
  v11 = objc_loadWeakRetained(&self->_overrideProvider);
  objc_storeWeak(v7 + 10, v11);

  return v7;
}

- (BOOL)isEqualToLayoutConfigurationEnvironment:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v7 = objc_loadWeakRetained(v5 + 7);
  if (WeakRetained == v7)
  {
    v9 = objc_loadWeakRetained(&self->_view);
    v10 = objc_loadWeakRetained(v5 + 9);
    if (v9 != v10)
    {
      goto LABEL_8;
    }

    if (self->_viewSize.width != *(v5 + 1) || self->_viewSize.height != *(v5 + 2))
    {
      goto LABEL_8;
    }

    [(BCLayoutConfigurationEnvironment *)self size];
    v14 = v13;
    v16 = v15;
    [v5 size];
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
    if (self->_screenSize.width != *(v5 + 3))
    {
      goto LABEL_9;
    }

    if (self->_screenSize.height != *(v5 + 4))
    {
      goto LABEL_9;
    }

    [(BCLayoutConfigurationEnvironment *)self screenSize];
    v20 = v19;
    v22 = v21;
    [v5 screenSize];
    v8 = 0;
    if (v20 != v24 || v22 != v23)
    {
      goto LABEL_9;
    }

    if (self->_interfaceOrientation != v5[5] || (trait = self->_trait, trait != v5[6]) && ![(UITraitCollection *)trait isEqual:?])
    {
LABEL_8:
      v8 = 0;
LABEL_9:

      goto LABEL_10;
    }

    v26 = [(BCLayoutConfigurationEnvironment *)self traitCollection];
    v27 = [v5 traitCollection];
    if (v26 == v27 || (-[BCLayoutConfigurationEnvironment traitCollection](self, "traitCollection"), v28 = objc_claimAutoreleasedReturnValue(), [v5 traitCollection], v3 = objc_claimAutoreleasedReturnValue(), v31 = v28, objc_msgSend(v28, "isEqual:", v3)))
    {
      v29 = objc_loadWeakRetained(&self->_overrideProvider);
      v30 = objc_loadWeakRetained(v5 + 10);
      v8 = v29 == v30;

      if (v26 == v27)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BCLayoutConfigurationEnvironment *)self isEqualToLayoutConfigurationEnvironment:v4];
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