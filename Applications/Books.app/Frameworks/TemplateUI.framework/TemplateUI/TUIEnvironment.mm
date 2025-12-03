@interface TUIEnvironment
- (BOOL)_setValue:(ResolvedValue *)value forName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEnvironment:(id)environment;
- (BOOL)isSanitizedTraitCollectionEqualTo:(id)to;
- (BOOL)setFloat:(double)float forName:(id)name;
- (BOOL)setSymbol:(id)symbol forName:(id)name;
- (CGSize)viewSize;
- (CGSize)viewSizeWithinSafeArea;
- (CGSize)windowSize;
- (ResolvedValue)lookupName:(SEL)name symtab:(Entry)symtab;
- (TUIEnvironment)initWithOther:(id)other;
- (TUIEnvironment)initWithTraitCollection:(id)collection viewController:(id)controller viewSize:(CGSize)size viewSafeAreaInsets:(UIEdgeInsets)insets;
- (TUIEnvironment)initWithTraitCollection:(id)collection viewController:(id)controller viewSize:(CGSize)size viewSafeAreaInsets:(UIEdgeInsets)insets windowSize:(CGSize)windowSize;
- (TUIEnvironment)initWithViewController:(id)controller viewSize:(CGSize)size viewSafeAreaInsets:(UIEdgeInsets)insets;
- (TUIEnvironment)initWithViewController:(id)controller viewSize:(CGSize)size viewSafeAreaInsets:(UIEdgeInsets)insets windowSize:(CGSize)windowSize;
- (TUIEnvironment)initWithViewSize:(CGSize)size viewSafeAreaInsets:(UIEdgeInsets)insets traitCollection:(id)collection;
- (UIEdgeInsets)viewSafeAreaInsets;
- (id).cxx_construct;
- (id)_printDiffFromSelfToEnvironment:(id)environment;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)differenceMaskWithEnvironment:(id)environment;
- (void)_updateValues;
- (void)setActiveAppearance:(unint64_t)appearance;
- (void)setContentSizeCategory:(unint64_t)category;
- (void)setContentsScale:(double)scale;
- (void)setDemoMode:(BOOL)mode;
- (void)setDeviceClass:(unint64_t)class;
- (void)setDisplayClass:(unint64_t)class;
- (void)setHeightClass:(unint64_t)class;
- (void)setLanguage:(id)language;
- (void)setLayoutDirection:(unint64_t)direction;
- (void)setOrientation:(unint64_t)orientation;
- (void)setSplit:(unint64_t)split;
- (void)setStyle:(unint64_t)style;
- (void)setTintColor:(id)color;
- (void)setViewSafeAreaInsets:(UIEdgeInsets)insets;
- (void)setViewSize:(CGSize)size;
- (void)setWidthClass:(unint64_t)class;
- (void)setWindowSize:(CGSize)size;
@end

@implementation TUIEnvironment

- (void)_updateValues
{
  deviceClass = self->_deviceClass;
  if (deviceClass > 6)
  {
    v6 = 0;
  }

  else
  {
    v2 = qword_24D358[deviceClass];
    v6 = 7;
  }

  self->_deviceClassValue._kind = v6;
  object = self->_deviceClassValue._object;
  self->_deviceClassValue._object = 0;

  self->_deviceClassValue.var0._integer = v2;
  widthClass = self->_widthClass;
  v9 = qword_24D390;
  if (widthClass > 3)
  {
    v10 = 0;
  }

  else
  {
    v3 = qword_24D390[widthClass];
    v10 = 7;
  }

  self->_widthClassValue._kind = v10;
  v11 = self->_widthClassValue._object;
  self->_widthClassValue._object = 0;

  self->_widthClassValue.var0._integer = v3;
  heightClass = self->_heightClass;
  if (heightClass > 3)
  {
    v13 = 0;
  }

  else
  {
    v9 = qword_24D390[heightClass];
    v13 = 7;
  }

  self->_heightClassValue._kind = v13;
  v14 = self->_heightClassValue._object;
  self->_heightClassValue._object = 0;

  self->_heightClassValue.var0._integer = v9;
  displayClass = self->_displayClass;
  if (displayClass > 2)
  {
    v16 = 0;
  }

  else
  {
    v9 = qword_24D3B0[displayClass];
    v16 = 7;
  }

  self->_displayClassValue._kind = v16;
  v17 = self->_displayClassValue._object;
  self->_displayClassValue._object = 0;

  self->_displayClassValue.var0._integer = v9;
  v18 = [NSValue valueWithCGSize:self->_windowSize.width, self->_windowSize.height];
  self->_windowSizeValue._kind = 3;
  v19 = self->_windowSizeValue._object;
  self->_windowSizeValue._object = v18;
  v20 = v18;

  v21 = [NSValue valueWithCGSize:self->_viewSize.width, self->_viewSize.height];
  self->_viewSizeValue._kind = 3;
  v22 = self->_viewSizeValue._object;
  self->_viewSizeValue._object = v21;
  v23 = v21;

  v24 = *&self->_viewSafeAreaInsets.bottom;
  v59 = *&self->_viewSafeAreaInsets.top;
  v60 = v24;
  v25 = [[NSData alloc] initWithBytes:&v59 length:32];
  self->_viewSafeAreaInsetsValue._kind = 4;
  v26 = self->_viewSafeAreaInsetsValue._object;
  self->_viewSafeAreaInsetsValue._object = v25;
  v27 = v25;

  [(TUIEnvironment *)self viewSizeWithinSafeArea:v59];
  v28 = [NSValue valueWithCGSize:?];
  self->_viewSizeWithinSafeAreaValue._kind = 3;
  v29 = self->_viewSizeWithinSafeAreaValue._object;
  self->_viewSizeWithinSafeAreaValue._object = v28;
  v30 = v28;

  v31 = *&self->_statusBarHeight;
  self->_statusBarHeightValue._kind = 1;
  v32 = self->_statusBarHeightValue._object;
  self->_statusBarHeightValue._object = 0;

  self->_statusBarHeightValue.var0._integer = v31;
  split = self->_split;
  if (split > 4)
  {
    v34 = 0;
  }

  else
  {
    v31 = qword_24D3C8[split];
    v34 = 7;
  }

  self->_splitValue._kind = v34;
  v35 = self->_splitValue._object;
  self->_splitValue._object = 0;

  self->_splitValue.var0._integer = v31;
  orientation = self->_orientation;
  if (orientation > 2)
  {
    v37 = 0;
  }

  else
  {
    v31 = qword_24D3F0[orientation];
    v37 = 7;
  }

  self->_orientationValue._kind = v37;
  v38 = self->_orientationValue._object;
  self->_orientationValue._object = 0;

  self->_orientationValue.var0._integer = v31;
  style = self->_style;
  if (style > 2)
  {
    v40 = 0;
  }

  else
  {
    v31 = qword_24D408[style];
    v40 = 7;
  }

  self->_styleValue._kind = v40;
  v41 = self->_styleValue._object;
  self->_styleValue._object = 0;

  self->_styleValue.var0._integer = v31;
  demoMode = self->_demoMode;
  self->_demoModeValue._kind = 12;
  v43 = self->_demoModeValue._object;
  self->_demoModeValue._object = 0;

  self->_demoModeValue.var0._integer = demoMode;
  contentSizeCategory = self->_contentSizeCategory;
  v45 = (&unk_24D420 + 8 * contentSizeCategory);
  if (contentSizeCategory >= 0xD)
  {
    v45 = &unk_24D488;
  }

  v46 = *v45;
  self->_contentSizeCategorySymbol.value = *v45;
  self->_contentSizeCategoryValue._kind = 7;
  v47 = self->_contentSizeCategoryValue._object;
  self->_contentSizeCategoryValue._object = 0;

  self->_contentSizeCategoryValue.var0._integer = v46;
  v48 = *&self->_contentsScale;
  self->_contentsScaleValue._kind = 1;
  v49 = self->_contentsScaleValue._object;
  self->_contentsScaleValue._object = 0;

  self->_contentsScaleValue.var0._integer = v48;
  v50 = self->_tintColor;
  self->_tintColorValue._kind = 11;
  v51 = self->_tintColorValue._object;
  self->_tintColorValue._object = v50;
  v52 = v50;

  layoutDirection = self->_layoutDirection;
  if (layoutDirection > 2)
  {
    v54 = 0;
  }

  else
  {
    v52 = qword_24D490[layoutDirection];
    v54 = 7;
  }

  self->_layoutDirectionValue._kind = v54;
  v55 = self->_layoutDirectionValue._object;
  self->_layoutDirectionValue._object = 0;

  self->_layoutDirectionValue.var0._integer = v52;
  activeAppearance = self->_activeAppearance;
  if (activeAppearance > 2)
  {
    v57 = 0;
  }

  else
  {
    v52 = qword_24D4A8[activeAppearance];
    v57 = 7;
  }

  self->_activeAppearanceValue._kind = v57;
  v58 = self->_activeAppearanceValue._object;
  self->_activeAppearanceValue._object = 0;

  self->_activeAppearanceValue.var0._integer = v52;
}

- (TUIEnvironment)initWithViewSize:(CGSize)size viewSafeAreaInsets:(UIEdgeInsets)insets traitCollection:(id)collection
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  v27.receiver = self;
  v27.super_class = TUIEnvironment;
  v14 = [(TUIEnvironment *)&v27 init];
  if (v14)
  {
    v15 = [(UITraitCollection *)collectionCopy traitCollectionByModifyingTraits:&stru_2620A0];
    sanitizedTraitCollection = v14->_sanitizedTraitCollection;
    v14->_sanitizedTraitCollection = v15;

    objc_storeStrong(&v14->_traitCollection, collection);
    v14->_activeAppearance = _determineActiveAppearance(collectionCopy);
    v14->_viewSize.width = width;
    v14->_viewSize.height = height;
    v14->_viewSafeAreaInsets.top = top;
    v14->_viewSafeAreaInsets.left = left;
    v14->_viewSafeAreaInsets.bottom = bottom;
    v14->_viewSafeAreaInsets.right = right;
    v17 = +[UIWindow _applicationKeyWindow];
    windowScene = [v17 windowScene];
    statusBarManager = [windowScene statusBarManager];
    [statusBarManager statusBarHeight];
    v14->_statusBarHeight = v20;

    v14->_contentSizeCategory = 4;
    v14->_contentsScale = 2.0;
    v14->_demoMode = +[UIApplication isRunningInStoreDemoMode];
    v14->_layoutDirection = 1;
    v21 = +[UIColor blueColor];
    tintColor = v14->_tintColor;
    v14->_tintColor = v21;

    objc_storeStrong(&v14->_traitCollection, collection);
    v23 = +[NSBundle mainBundle];
    preferredLocalizations = [v23 preferredLocalizations];
    firstObject = [preferredLocalizations firstObject];
    [(TUIEnvironment *)v14 setLanguage:firstObject];

    [(TUIEnvironment *)v14 _updateValues];
  }

  return v14;
}

- (TUIEnvironment)initWithViewController:(id)controller viewSize:(CGSize)size viewSafeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  viewIfLoaded = [controllerCopy viewIfLoaded];
  window = [viewIfLoaded window];
  v15 = window;
  if (window)
  {
    v16 = window;
  }

  else
  {
    v16 = +[UIWindow _applicationKeyWindow];
  }

  v17 = v16;

  [v17 bounds];
  v20 = [(TUIEnvironment *)self initWithViewController:controllerCopy viewSize:width viewSafeAreaInsets:height windowSize:top, left, bottom, right, v18, v19];

  return v20;
}

- (TUIEnvironment)initWithViewController:(id)controller viewSize:(CGSize)size viewSafeAreaInsets:(UIEdgeInsets)insets windowSize:(CGSize)windowSize
{
  height = windowSize.height;
  width = windowSize.width;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v12 = size.height;
  v13 = size.width;
  controllerCopy = controller;
  traitCollection = [controllerCopy traitCollection];
  height = [(TUIEnvironment *)self initWithTraitCollection:traitCollection viewController:controllerCopy viewSize:v13 viewSafeAreaInsets:v12 windowSize:top, left, bottom, right, width, height];

  return height;
}

- (TUIEnvironment)initWithTraitCollection:(id)collection viewController:(id)controller viewSize:(CGSize)size viewSafeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  controllerCopy = controller;
  viewIfLoaded = [controllerCopy viewIfLoaded];
  window = [viewIfLoaded window];
  v18 = window;
  if (window)
  {
    v19 = window;
  }

  else
  {
    v19 = +[UIWindow _applicationKeyWindow];
  }

  v20 = v19;

  [v20 bounds];
  v23 = [(TUIEnvironment *)self initWithTraitCollection:collectionCopy viewController:controllerCopy viewSize:width viewSafeAreaInsets:height windowSize:top, left, bottom, right, v21, v22];

  return v23;
}

- (TUIEnvironment)initWithTraitCollection:(id)collection viewController:(id)controller viewSize:(CGSize)size viewSafeAreaInsets:(UIEdgeInsets)insets windowSize:(CGSize)windowSize
{
  height = windowSize.height;
  width = windowSize.width;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v13 = size.height;
  v14 = size.width;
  collectionCopy = collection;
  controllerCopy = controller;
  right = [(TUIEnvironment *)self initWithViewSize:collectionCopy viewSafeAreaInsets:v14 traitCollection:v13, top, left, bottom, right];
  v20 = right;
  if (right)
  {
    [(TUIEnvironment *)right setWindowSize:width, height];
    v21 = collectionCopy;
    if (qword_2E6558 != -1)
    {
      sub_19BAD8();
    }

    if ([v21 userInterfaceIdiom] == &dword_0 + 1)
    {
      if (qword_2E6540 != -1)
      {
        sub_19BAC4();
      }

      if (dword_2E6538)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }
    }

    else if ([v21 userInterfaceIdiom])
    {
      if ([v21 userInterfaceIdiom] == &dword_4 + 1)
      {
        v22 = 6;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 5;
      if (*&qword_2E6548 <= 667.0 && *&qword_2E6550 <= 667.0)
      {
        if (fmax(*&qword_2E6548, *&qword_2E6550) <= 568.0)
        {
          v22 = 3;
        }

        else
        {
          v22 = 4;
        }
      }
    }

    [(TUIEnvironment *)v20 setDeviceClass:v22];
    v23 = v21;
    if ([v23 horizontalSizeClass] == &dword_0 + 1)
    {
      v24 = 1;
    }

    else if ([v23 horizontalSizeClass] == &dword_0 + 2)
    {
      if (qword_2E6540 != -1)
      {
        sub_19BAC4();
      }

      if (width <= 1024.0 || dword_2E6538 == 0)
      {
        v24 = 2;
      }

      else
      {
        v24 = 3;
      }
    }

    else
    {
      v24 = 0;
    }

    [(TUIEnvironment *)v20 setWidthClass:v24];
    v26 = v23;
    if ([v26 verticalSizeClass] == &dword_0 + 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2 * ([v26 verticalSizeClass] == &dword_0 + 2);
    }

    [(TUIEnvironment *)v20 setHeightClass:v27];
    if (_TUIDeviceHasOLEDDisplay())
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    [(TUIEnvironment *)v20 setDisplayClass:v28];
    v29 = +[UIScreen mainScreen];
    [v29 bounds];
    v31 = v30;
    v33 = v32;

    if (width == v31 && height == v33)
    {
      v34 = 1;
    }

    else
    {
      v35 = width + v31 * -0.5;
      v36 = fabs(v35);
      v37 = 2;
      if (v35 < 0.0)
      {
        v37 = 4;
      }

      if (v36 >= 10.0)
      {
        v34 = v37;
      }

      else
      {
        v34 = 3;
      }
    }

    [(TUIEnvironment *)v20 setSplit:v34];
    v38 = controllerCopy;
    _rotatingToInterfaceOrientation = [(UIViewController *)v38 _rotatingToInterfaceOrientation];
    if (!_rotatingToInterfaceOrientation)
    {
      _rotatingToInterfaceOrientation = [(UIViewController *)v38 interfaceOrientation];
      if (!_rotatingToInterfaceOrientation)
      {
        v40 = +[UIWindow _applicationKeyWindow];
        windowScene = [v40 windowScene];
        _rotatingToInterfaceOrientation = [windowScene interfaceOrientation];
      }
    }

    if ((_rotatingToInterfaceOrientation - 1) < 2)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2;
    }

    [(TUIEnvironment *)v20 setOrientation:v42];
    v43 = v26;
    if ([v43 userInterfaceStyle] == &dword_0 + 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = 2 * ([v43 userInterfaceStyle] == &dword_0 + 2);
    }

    [(TUIEnvironment *)v20 setStyle:v44];
    v45 = v43;
    preferredContentSizeCategory = [(UITraitCollection *)v45 preferredContentSizeCategory];

    if (preferredContentSizeCategory == UIContentSizeCategoryAccessibilityExtraExtraExtraLarge)
    {
      v58 = 12;
    }

    else
    {
      preferredContentSizeCategory2 = [(UITraitCollection *)v45 preferredContentSizeCategory];

      if (preferredContentSizeCategory2 == UIContentSizeCategoryAccessibilityExtraExtraLarge)
      {
        v58 = 11;
      }

      else
      {
        preferredContentSizeCategory3 = [(UITraitCollection *)v45 preferredContentSizeCategory];

        if (preferredContentSizeCategory3 == UIContentSizeCategoryAccessibilityExtraLarge)
        {
          v58 = 10;
        }

        else
        {
          preferredContentSizeCategory4 = [(UITraitCollection *)v45 preferredContentSizeCategory];

          if (preferredContentSizeCategory4 == UIContentSizeCategoryAccessibilityLarge)
          {
            v58 = 9;
          }

          else
          {
            preferredContentSizeCategory5 = [(UITraitCollection *)v45 preferredContentSizeCategory];

            if (preferredContentSizeCategory5 == UIContentSizeCategoryAccessibilityMedium)
            {
              v58 = 8;
            }

            else
            {
              preferredContentSizeCategory6 = [(UITraitCollection *)v45 preferredContentSizeCategory];

              if (preferredContentSizeCategory6 == UIContentSizeCategoryExtraExtraExtraLarge)
              {
                v58 = 7;
              }

              else
              {
                preferredContentSizeCategory7 = [(UITraitCollection *)v45 preferredContentSizeCategory];

                if (preferredContentSizeCategory7 == UIContentSizeCategoryExtraExtraLarge)
                {
                  v58 = 6;
                }

                else
                {
                  preferredContentSizeCategory8 = [(UITraitCollection *)v45 preferredContentSizeCategory];

                  if (preferredContentSizeCategory8 == UIContentSizeCategoryExtraLarge)
                  {
                    v58 = 5;
                  }

                  else
                  {
                    preferredContentSizeCategory9 = [(UITraitCollection *)v45 preferredContentSizeCategory];

                    if (preferredContentSizeCategory9 == UIContentSizeCategoryLarge)
                    {
                      v58 = 4;
                    }

                    else
                    {
                      preferredContentSizeCategory10 = [(UITraitCollection *)v45 preferredContentSizeCategory];

                      if (preferredContentSizeCategory10 == UIContentSizeCategoryMedium)
                      {
                        v58 = 3;
                      }

                      else
                      {
                        preferredContentSizeCategory11 = [(UITraitCollection *)v45 preferredContentSizeCategory];

                        if (preferredContentSizeCategory11 == UIContentSizeCategorySmall)
                        {
                          v58 = 2;
                        }

                        else
                        {
                          preferredContentSizeCategory12 = [(UITraitCollection *)v45 preferredContentSizeCategory];
                          v58 = preferredContentSizeCategory12 == UIContentSizeCategoryExtraSmall;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    [(TUIEnvironment *)v20 setContentSizeCategory:v58];
    [(UITraitCollection *)v45 displayScale];
    [(TUIEnvironment *)v20 setContentsScale:?];
    viewIfLoaded = [(UIViewController *)v38 viewIfLoaded];
    tintColor = [viewIfLoaded tintColor];
    [(TUIEnvironment *)v20 setTintColor:tintColor];

    [(TUIEnvironment *)v20 setLayoutDirection:_determineLayoutDirection(v45, v38)];
    [(TUIEnvironment *)v20 setAccessibilityElementsNeeded:_AXSApplicationAccessibilityEnabled() != 0];
  }

  return v20;
}

- (TUIEnvironment)initWithOther:(id)other
{
  otherCopy = other;
  [otherCopy viewSize];
  v6 = v5;
  v8 = v7;
  [otherCopy viewSafeAreaInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  traitCollection = [otherCopy traitCollection];
  v18 = [(TUIEnvironment *)self initWithViewSize:traitCollection viewSafeAreaInsets:v6 traitCollection:v8, v10, v12, v14, v16];

  if (v18)
  {
    v18->_deviceClass = [otherCopy deviceClass];
    v18->_widthClass = [otherCopy widthClass];
    v18->_heightClass = [otherCopy heightClass];
    v18->_displayClass = [otherCopy displayClass];
    v18->_split = [otherCopy split];
    [otherCopy windowSize];
    v18->_windowSize.width = v19;
    v18->_windowSize.height = v20;
    v18->_orientation = [otherCopy orientation];
    v18->_style = [otherCopy style];
    v18->_contentSizeCategory = [otherCopy contentSizeCategory];
    v18->_layoutDirection = [otherCopy layoutDirection];
    v18->_accessibilityElementsNeeded = [otherCopy accessibilityElementsNeeded];
    language = [otherCopy language];
    language = v18->_language;
    v18->_language = language;

    v18->_useFontFallback = [otherCopy useFontFallback];
    [(TUIEnvironment *)v18 _updateValues];
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithOther:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [(TUIEnvironment *)self isEqualToEnvironment:equalCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToEnvironment:(id)environment
{
  environmentCopy = environment;
  deviceClass = [(TUIEnvironment *)self deviceClass];
  if (deviceClass != [environmentCopy deviceClass])
  {
    goto LABEL_28;
  }

  widthClass = [(TUIEnvironment *)self widthClass];
  if (widthClass != [environmentCopy widthClass])
  {
    goto LABEL_28;
  }

  heightClass = [(TUIEnvironment *)self heightClass];
  if (heightClass != [environmentCopy heightClass])
  {
    goto LABEL_28;
  }

  displayClass = [(TUIEnvironment *)self displayClass];
  if (displayClass != [environmentCopy displayClass])
  {
    goto LABEL_28;
  }

  split = [(TUIEnvironment *)self split];
  if (split != [environmentCopy split])
  {
    goto LABEL_28;
  }

  [(TUIEnvironment *)self windowSize];
  v11 = v10;
  v13 = v12;
  [environmentCopy windowSize];
  v15 = 0;
  if (v11 == v16 && v13 == v14)
  {
    [(TUIEnvironment *)self viewSize];
    v18 = v17;
    v20 = v19;
    [environmentCopy viewSize];
    v15 = 0;
    if (v18 == v22 && v20 == v21)
    {
      [(TUIEnvironment *)self viewSafeAreaInsets];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [environmentCopy viewSafeAreaInsets];
      v15 = 0;
      if (v26 == v34 && v24 == v31 && v30 == v33 && v28 == v32)
      {
        [(TUIEnvironment *)self statusBarHeight];
        v36 = v35;
        [environmentCopy statusBarHeight];
        if (v36 != v37)
        {
          goto LABEL_28;
        }

        style = [(TUIEnvironment *)self style];
        if (style != [environmentCopy style])
        {
          goto LABEL_28;
        }

        demoMode = [(TUIEnvironment *)self demoMode];
        if (demoMode != [environmentCopy demoMode])
        {
          goto LABEL_28;
        }

        orientation = [(TUIEnvironment *)self orientation];
        if (orientation != [environmentCopy orientation])
        {
          goto LABEL_28;
        }

        contentSizeCategory = [(TUIEnvironment *)self contentSizeCategory];
        if (contentSizeCategory != [environmentCopy contentSizeCategory])
        {
          goto LABEL_28;
        }

        [(TUIEnvironment *)self contentsScale];
        v43 = v42;
        [environmentCopy contentsScale];
        if (v43 != v44)
        {
          goto LABEL_28;
        }

        layoutDirection = [(TUIEnvironment *)self layoutDirection];
        if (layoutDirection != [environmentCopy layoutDirection])
        {
          goto LABEL_28;
        }

        activeAppearance = [(TUIEnvironment *)self activeAppearance];
        if (activeAppearance != [environmentCopy activeAppearance])
        {
          goto LABEL_28;
        }

        accessibilityElementsNeeded = [(TUIEnvironment *)self accessibilityElementsNeeded];
        if (accessibilityElementsNeeded != [environmentCopy accessibilityElementsNeeded])
        {
          goto LABEL_28;
        }

        language = [(TUIEnvironment *)self language];
        language2 = [environmentCopy language];
        v50 = language2;
        if (language == language2)
        {
        }

        else
        {
          language3 = [(TUIEnvironment *)self language];
          language4 = [environmentCopy language];
          v53 = [language3 isEqualToString:language4];

          if (!v53)
          {
LABEL_28:
            v15 = 0;
            goto LABEL_29;
          }
        }

        useFontFallback = [(TUIEnvironment *)self useFontFallback];
        if (useFontFallback == [environmentCopy useFontFallback])
        {
          v15 = [(TUIEnvironment *)self isSanitizedTraitCollectionEqualTo:environmentCopy];
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }
  }

LABEL_29:

  return v15;
}

- (unint64_t)differenceMaskWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = environmentCopy;
  if (!environmentCopy)
  {
    v37 = 61;
    goto LABEL_48;
  }

  if (self == environmentCopy)
  {
    v37 = 0;
    goto LABEL_48;
  }

  [(TUIEnvironment *)self windowSize];
  v7 = v6;
  v9 = v8;
  [(TUIEnvironment *)v5 windowSize];
  v11 = 1;
  if (v7 == v12 && v9 == v10)
  {
    [(TUIEnvironment *)self viewSize];
    v14 = v13;
    v16 = v15;
    [(TUIEnvironment *)v5 viewSize];
    v11 = 1;
    if (v14 == v18 && v16 == v17)
    {
      [(TUIEnvironment *)self viewSafeAreaInsets];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [(TUIEnvironment *)v5 viewSafeAreaInsets];
      v11 = 1;
      if (v22 == v30 && v20 == v27 && v26 == v29 && v24 == v28)
      {
        [(TUIEnvironment *)self statusBarHeight];
        v32 = v31;
        [(TUIEnvironment *)v5 statusBarHeight];
        v11 = v32 != v33;
      }
    }
  }

  widthClass = [(TUIEnvironment *)self widthClass];
  if (widthClass == [(TUIEnvironment *)v5 widthClass])
  {
    heightClass = [(TUIEnvironment *)self heightClass];
    v36 = heightClass == [(TUIEnvironment *)v5 heightClass];
  }

  else
  {
    v36 = 0;
  }

  split = [(TUIEnvironment *)self split];
  if (split == [(TUIEnvironment *)v5 split])
  {
    orientation = [(TUIEnvironment *)self orientation];
    v40 = orientation == [(TUIEnvironment *)v5 orientation];
  }

  else
  {
    v40 = 0;
  }

  style = [(TUIEnvironment *)self style];
  if (style != [(TUIEnvironment *)v5 style])
  {
    goto LABEL_23;
  }

  tintColor = [(TUIEnvironment *)self tintColor];
  tintColor2 = [(TUIEnvironment *)v5 tintColor];
  v44 = tintColor2;
  if (tintColor == tintColor2)
  {

    goto LABEL_25;
  }

  tintColor3 = [(TUIEnvironment *)self tintColor];
  tintColor4 = [(TUIEnvironment *)v5 tintColor];
  v47 = [tintColor3 isEqual:tintColor4];

  if (v47)
  {
LABEL_25:
    activeAppearance = [(TUIEnvironment *)self activeAppearance];
    v48 = activeAppearance == [(TUIEnvironment *)v5 activeAppearance];
    goto LABEL_26;
  }

LABEL_23:
  v48 = 0;
LABEL_26:
  deviceClass = [(TUIEnvironment *)self deviceClass];
  if (deviceClass != [(TUIEnvironment *)v5 deviceClass])
  {
    goto LABEL_38;
  }

  displayClass = [(TUIEnvironment *)self displayClass];
  if (displayClass != [(TUIEnvironment *)v5 displayClass])
  {
    goto LABEL_38;
  }

  demoMode = [(TUIEnvironment *)self demoMode];
  if (demoMode != [(TUIEnvironment *)v5 demoMode])
  {
    goto LABEL_38;
  }

  contentSizeCategory = [(TUIEnvironment *)self contentSizeCategory];
  if (contentSizeCategory != [(TUIEnvironment *)v5 contentSizeCategory])
  {
    goto LABEL_38;
  }

  [(TUIEnvironment *)self contentsScale];
  v55 = v54;
  [(TUIEnvironment *)v5 contentsScale];
  if (v55 != v56)
  {
    goto LABEL_38;
  }

  layoutDirection = [(TUIEnvironment *)self layoutDirection];
  if (layoutDirection != [(TUIEnvironment *)v5 layoutDirection])
  {
    goto LABEL_38;
  }

  accessibilityElementsNeeded = [(TUIEnvironment *)self accessibilityElementsNeeded];
  if (accessibilityElementsNeeded != [(TUIEnvironment *)v5 accessibilityElementsNeeded])
  {
    goto LABEL_38;
  }

  language = [(TUIEnvironment *)self language];
  language2 = [(TUIEnvironment *)v5 language];
  v60 = language2;
  if (language == language2)
  {
  }

  else
  {
    language3 = [(TUIEnvironment *)self language];
    language4 = [(TUIEnvironment *)v5 language];
    v63 = [language3 isEqualToString:language4];

    if (!v63)
    {
      goto LABEL_38;
    }
  }

  useFontFallback = [(TUIEnvironment *)self useFontFallback];
  if (useFontFallback == [(TUIEnvironment *)v5 useFontFallback])
  {
    v65 = [(TUIEnvironment *)self isSanitizedTraitCollectionEqualTo:v5];
    goto LABEL_39;
  }

LABEL_38:
  v65 = 0;
LABEL_39:
  v66 = v11 | 4;
  if (v36)
  {
    v66 = v11;
  }

  if (!v40)
  {
    v66 |= 8uLL;
  }

  if (!v48)
  {
    v66 |= 0x10uLL;
  }

  if (v65)
  {
    v37 = v66;
  }

  else
  {
    v37 = v66 | 0x20;
  }

LABEL_48:

  return v37;
}

- (void)setLanguage:(id)language
{
  objc_storeStrong(&self->_language, language);
  languageCopy = language;
  v6 = [TUIFontSpec determineUseFontFallbackFromLanguage:languageCopy];

  self->_useFontFallback = v6;
}

- (void)setDeviceClass:(unint64_t)class
{
  self->_deviceClass = class;
  if (class > 6)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D358[class];
    v5 = 7;
  }

  self->_deviceClassValue._kind = v5;
  object = self->_deviceClassValue._object;
  self->_deviceClassValue._object = 0;

  self->_deviceClassValue.var0._integer = v3;
}

- (void)setWidthClass:(unint64_t)class
{
  self->_widthClass = class;
  if (class > 3)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D390[class];
    v5 = 7;
  }

  self->_widthClassValue._kind = v5;
  object = self->_widthClassValue._object;
  self->_widthClassValue._object = 0;

  self->_widthClassValue.var0._integer = v3;
}

- (void)setHeightClass:(unint64_t)class
{
  self->_heightClass = class;
  if (class > 3)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D390[class];
    v5 = 7;
  }

  self->_heightClassValue._kind = v5;
  object = self->_heightClassValue._object;
  self->_heightClassValue._object = 0;

  self->_heightClassValue.var0._integer = v3;
}

- (void)setDisplayClass:(unint64_t)class
{
  self->_displayClass = class;
  if (class > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D3B0[class];
    v5 = 7;
  }

  self->_displayClassValue._kind = v5;
  object = self->_displayClassValue._object;
  self->_displayClassValue._object = 0;

  self->_displayClassValue.var0._integer = v3;
}

- (void)setSplit:(unint64_t)split
{
  self->_split = split;
  if (split > 4)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D3C8[split];
    v5 = 7;
  }

  self->_splitValue._kind = v5;
  object = self->_splitValue._object;
  self->_splitValue._object = 0;

  self->_splitValue.var0._integer = v3;
}

- (void)setOrientation:(unint64_t)orientation
{
  self->_orientation = orientation;
  if (orientation > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D3F0[orientation];
    v5 = 7;
  }

  self->_orientationValue._kind = v5;
  object = self->_orientationValue._object;
  self->_orientationValue._object = 0;

  self->_orientationValue.var0._integer = v3;
}

- (void)setWindowSize:(CGSize)size
{
  self->_windowSize = size;
  v4 = [NSValue valueWithCGSize:?];
  self->_windowSizeValue._kind = 3;
  object = self->_windowSizeValue._object;
  self->_windowSizeValue._object = v4;
  v6 = v4;
}

- (void)setViewSize:(CGSize)size
{
  self->_viewSize = size;
  v4 = [NSValue valueWithCGSize:?];
  self->_viewSizeValue._kind = 3;
  object = self->_viewSizeValue._object;
  self->_viewSizeValue._object = v4;
  v6 = v4;

  [(TUIEnvironment *)self viewSizeWithinSafeArea];
  v7 = [NSValue valueWithCGSize:?];
  self->_viewSizeWithinSafeAreaValue._kind = 3;
  v8 = self->_viewSizeWithinSafeAreaValue._object;
  self->_viewSizeWithinSafeAreaValue._object = v7;
  v9 = v7;
}

- (void)setViewSafeAreaInsets:(UIEdgeInsets)insets
{
  self->_viewSafeAreaInsets = insets;
  insetsCopy = insets;
  v4 = [[NSData alloc] initWithBytes:&insetsCopy length:32];
  self->_viewSafeAreaInsetsValue._kind = 4;
  object = self->_viewSafeAreaInsetsValue._object;
  self->_viewSafeAreaInsetsValue._object = v4;
  v6 = v4;

  [(TUIEnvironment *)self viewSizeWithinSafeArea:*&insetsCopy.top];
  v7 = [NSValue valueWithCGSize:?];
  self->_viewSizeWithinSafeAreaValue._kind = 3;
  v8 = self->_viewSizeWithinSafeAreaValue._object;
  self->_viewSizeWithinSafeAreaValue._object = v7;
  v9 = v7;
}

- (CGSize)viewSizeWithinSafeArea
{
  v2 = self->_viewSize.width - (self->_viewSafeAreaInsets.left + self->_viewSafeAreaInsets.right);
  v3 = self->_viewSize.height - (self->_viewSafeAreaInsets.top + self->_viewSafeAreaInsets.bottom);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setStyle:(unint64_t)style
{
  self->_style = style;
  if (style > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D408[style];
    v5 = 7;
  }

  self->_styleValue._kind = v5;
  object = self->_styleValue._object;
  self->_styleValue._object = 0;

  self->_styleValue.var0._integer = v3;
}

- (void)setActiveAppearance:(unint64_t)appearance
{
  self->_activeAppearance = appearance;
  if (appearance > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D4A8[appearance];
    v5 = 7;
  }

  self->_activeAppearanceValue._kind = v5;
  object = self->_activeAppearanceValue._object;
  self->_activeAppearanceValue._object = 0;

  self->_activeAppearanceValue.var0._integer = v3;
}

- (void)setDemoMode:(BOOL)mode
{
  self->_demoMode = mode;
  modeCopy = mode;
  self->_demoModeValue._kind = 12;
  object = self->_demoModeValue._object;
  self->_demoModeValue._object = 0;

  self->_demoModeValue.var0._integer = modeCopy;
}

- (void)setContentSizeCategory:(unint64_t)category
{
  self->_contentSizeCategory = category;
  v4 = (&unk_24D420 + 8 * category);
  if (category >= 0xD)
  {
    v4 = &unk_24D488;
  }

  v5 = *v4;
  self->_contentSizeCategorySymbol.value = *v4;
  self->_contentSizeCategoryValue._kind = 7;
  object = self->_contentSizeCategoryValue._object;
  self->_contentSizeCategoryValue._object = 0;

  self->_contentSizeCategoryValue.var0._integer = v5;
}

- (void)setContentsScale:(double)scale
{
  if (scale <= 0.0)
  {
    scaleCopy = 1.0;
  }

  else
  {
    scaleCopy = scale;
  }

  self->_contentsScale = scaleCopy;
  self->_contentsScaleValue._kind = 1;
  object = self->_contentsScaleValue._object;
  self->_contentsScaleValue._object = 0;

  self->_contentsScaleValue.var0._float = scaleCopy;
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_tintColor, color);
  self->_tintColorValue._kind = 11;
  object = self->_tintColorValue._object;
  self->_tintColorValue._object = colorCopy;
}

- (void)setLayoutDirection:(unint64_t)direction
{
  self->_layoutDirection = direction;
  if (direction > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D490[direction];
    v5 = 7;
  }

  self->_layoutDirectionValue._kind = v5;
  object = self->_layoutDirectionValue._object;
  self->_layoutDirectionValue._object = 0;

  self->_layoutDirectionValue.var0._integer = v3;
}

- (ResolvedValue)lookupName:(SEL)name symtab:(Entry)symtab
{
  selfCopy = self;
  symtabCopy = symtab;
  if (symtab.var0 == 1)
  {
    v7 = *(a5 + 5);
    v8 = (*(a5 + 6) - v7) >> 1;
    if (v8 < 0xA)
    {
      v9 = 0xFFFF;
    }

    else
    {
      v9 = v7[9];
    }

    if (v9 == symtab.var1)
    {
      retstr->_kind = self->_object;
      self = self->var0._integer;
      integer = *&selfCopy[1]._kind;
      goto LABEL_94;
    }

    if (v8 < 0xB)
    {
      v12 = 0xFFFF;
    }

    else
    {
      v12 = v7[10];
    }

    if (v12 == symtab.var1)
    {
      retstr->_kind = self[1]._object;
      self = self[1].var0._integer;
      integer = *&selfCopy[2]._kind;
      goto LABEL_94;
    }

    if (v8 < 0xC)
    {
      v13 = 0xFFFF;
    }

    else
    {
      v13 = v7[11];
    }

    if (v13 == symtab.var1)
    {
      retstr->_kind = self[2]._object;
      self = self[2].var0._integer;
      integer = *&selfCopy[3]._kind;
      goto LABEL_94;
    }

    if (v8 < 0xE)
    {
      v14 = 0xFFFF;
    }

    else
    {
      v14 = v7[13];
    }

    if (v14 == symtab.var1)
    {
      retstr->_kind = self[9]._object;
      self = self[9].var0._integer;
      integer = *&selfCopy[10]._kind;
      goto LABEL_94;
    }

    if (v8 < 0xD)
    {
      v15 = 0xFFFF;
    }

    else
    {
      v15 = v7[12];
    }

    if (v15 == symtab.var1)
    {
      retstr->_kind = self[4]._object;
      self = self[4].var0._integer;
      integer = *&selfCopy[5]._kind;
      goto LABEL_94;
    }

    if (v8 < 0x5A)
    {
      v16 = 0xFFFF;
    }

    else
    {
      v16 = v7[89];
    }

    if (v16 == symtab.var1)
    {
      retstr->_kind = self[5]._object;
      self = self[5].var0._integer;
      integer = *&selfCopy[6]._kind;
      goto LABEL_94;
    }

    if (v8 < 0x72)
    {
      v17 = 0xFFFF;
    }

    else
    {
      v17 = v7[113];
    }

    if (v17 == symtab.var1)
    {
      retstr->_kind = self[6]._object;
      self = self[6].var0._integer;
      integer = *&selfCopy[7]._kind;
      goto LABEL_94;
    }

    if (v8 < 0x73)
    {
      v18 = 0xFFFF;
    }

    else
    {
      v18 = v7[114];
    }

    if (v18 == symtab.var1)
    {
      retstr->_kind = self[7]._object;
      self = self[7].var0._integer;
      integer = *&selfCopy[8]._kind;
      goto LABEL_94;
    }

    if (v8 < 0x74)
    {
      v19 = 0xFFFF;
    }

    else
    {
      v19 = v7[115];
    }

    if (v19 == symtab.var1)
    {
      retstr->_kind = self[8]._object;
      self = self[8].var0._integer;
      integer = *&selfCopy[9]._kind;
      goto LABEL_94;
    }

    if (v8 < 0xF)
    {
      v20 = 0xFFFF;
    }

    else
    {
      v20 = v7[14];
    }

    if (v20 == symtab.var1)
    {
      retstr->_kind = self[10]._object;
      self = self[10].var0._integer;
      integer = *&selfCopy[11]._kind;
      goto LABEL_94;
    }

    if (v8 < 0x1E)
    {
      v21 = 0xFFFF;
    }

    else
    {
      v21 = v7[29];
    }

    if (v21 == symtab.var1)
    {
      retstr->_kind = self[11]._object;
      self = self[11].var0._integer;
      integer = *&selfCopy[12]._kind;
      goto LABEL_94;
    }

    if (v8 < 0x60)
    {
      v22 = 0xFFFF;
    }

    else
    {
      v22 = v7[95];
    }

    if (v22 == symtab.var1)
    {
      retstr->_kind = self[12]._object;
      self = self[12].var0._integer;
      integer = *&selfCopy[13]._kind;
      goto LABEL_94;
    }

    if (v8 < 0x2B)
    {
      v23 = 0xFFFF;
    }

    else
    {
      v23 = v7[42];
    }

    if (v23 == symtab.var1)
    {
      retstr->_kind = self[13]._object;
      self = self[13].var0._integer;
      integer = *&selfCopy[14]._kind;
      goto LABEL_94;
    }

    if (v8 < 0x32)
    {
      v24 = 0xFFFF;
    }

    else
    {
      v24 = v7[49];
    }

    if (v24 == symtab.var1)
    {
      retstr->_kind = self[14]._object;
      self = self[14].var0._integer;
      integer = *&selfCopy[15]._kind;
      goto LABEL_94;
    }

    if (v8 < 0x33)
    {
      v25 = 0xFFFF;
    }

    else
    {
      v25 = v7[50];
    }

    if (v25 == symtab.var1)
    {
      retstr->_kind = self[15]._object;
      self = self[15].var0._integer;
      integer = *&selfCopy[16]._kind;
      goto LABEL_94;
    }

    if (v8 < 0x3B)
    {
      v26 = 0xFFFF;
    }

    else
    {
      v26 = v7[58];
    }

    if (v26 == symtab.var1)
    {
      retstr->_kind = self[16]._object;
      self = self[16].var0._integer;
      integer = *&selfCopy[17]._kind;
      goto LABEL_94;
    }

    if (v8 < 0x57)
    {
      v27 = 0xFFFF;
    }

    else
    {
      v27 = v7[86];
    }

    if (v27 == symtab.var1)
    {
      retstr->_kind = self[3]._object;
      self = self[3].var0._integer;
      integer = *&selfCopy[4]._kind;
      goto LABEL_94;
    }

    if (v8 < 0x6F)
    {
      v28 = 0xFFFF;
    }

    else
    {
      v28 = v7[110];
    }

    if (v28 == symtab.var1)
    {
      retstr->_kind = self[17]._object;
      self = self[17].var0._integer;
      integer = *&selfCopy[18]._kind;
      goto LABEL_94;
    }

LABEL_96:
    retstr->_kind = 0;
    retstr->_object = 0;
    return self;
  }

  self = sub_26874(&self[20]._kind, &symtabCopy.var0);
  if (!self)
  {
    goto LABEL_96;
  }

  selfCopy2 = self;
  retstr->_kind = self[1]._kind;
  self = self[1]._object;
  integer = selfCopy2[1].var0._integer;
LABEL_94:
  retstr->_object = self;
  retstr->var0._integer = integer;
  return self;
}

- (BOOL)setFloat:(double)float forName:(id)name
{
  v6 = 1;
  v7 = 0;
  floatCopy = float;
  v4 = [(TUIEnvironment *)self _setValue:&v6 forName:*&name];

  return v4;
}

- (BOOL)setSymbol:(id)symbol forName:(id)name
{
  v6 = 6;
  v7 = 0;
  var0 = symbol.var0;
  v4 = [(TUIEnvironment *)self _setValue:&v6 forName:*&name];

  return v4;
}

- (BOOL)_setValue:(ResolvedValue *)value forName:(id)name
{
  IsValid = TUINameIsValid(*&name);
  result = 0;
  if (IsValid && (name.var0 & 0xFFFE) != 0)
  {
    if (value->_kind)
    {
      nameCopy = name;
      LOWORD(v11) = name.var0;
      if (!sub_11F88(&self->_extendedNameSpaces.__table_.__bucket_list_.__ptr_, &v11))
      {
        LOWORD(v11) = name.var0;
        sub_1241E0(&self->_extendedNameSpaces.__table_.__bucket_list_.__ptr_, &v11);
      }

      v11 = &nameCopy;
      v9 = sub_124414(&self->_extendedValues.__table_.__bucket_list_.__ptr_, &nameCopy.var0);
      *(v9 + 6) = value->_kind;
      objc_storeStrong(v9 + 4, value->_object);
      v9[5] = value->var0._integer;
      result = 1;
      self->_hasExtendedValues = 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)viewSafeAreaInsets
{
  top = self->_viewSafeAreaInsets.top;
  left = self->_viewSafeAreaInsets.left;
  bottom = self->_viewSafeAreaInsets.bottom;
  right = self->_viewSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)windowSize
{
  width = self->_windowSize.width;
  height = self->_windowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 2) = 0;
  *(self + 8) = 0;
  *(self + 5) = 0;
  *(self + 14) = 0;
  *(self + 8) = 0;
  *(self + 20) = 0;
  *(self + 11) = 0;
  *(self + 26) = 0;
  *(self + 14) = 0;
  *(self + 32) = 0;
  *(self + 17) = 0;
  *(self + 38) = 0;
  *(self + 20) = 0;
  *(self + 44) = 0;
  *(self + 23) = 0;
  *(self + 50) = 0;
  *(self + 26) = 0;
  *(self + 56) = 0;
  *(self + 29) = 0;
  *(self + 62) = 0;
  *(self + 32) = 0;
  *(self + 68) = 0;
  *(self + 35) = 0;
  *(self + 74) = 0;
  *(self + 38) = 0;
  *(self + 80) = 0;
  *(self + 41) = 0;
  *(self + 86) = 0;
  *(self + 44) = 0;
  *(self + 92) = 0;
  *(self + 47) = 0;
  *(self + 98) = 0;
  *(self + 50) = 0;
  *(self + 104) = 0;
  *(self + 53) = 0;
  *(self + 440) = 0u;
  *(self + 456) = 0u;
  *(self + 118) = 1065353216;
  *(self + 30) = 0u;
  *(self + 31) = 0u;
  *(self + 128) = 1065353216;
  return self;
}

- (BOOL)isSanitizedTraitCollectionEqualTo:(id)to
{
  toCopy = to;
  toCopy2 = to;
  selfCopy = self;
  LOBYTE(toCopy) = TUIEnvironment.isSanitizedTraitCollectionEqual(to:)(toCopy);

  return toCopy & 1;
}

- (id)_printDiffFromSelfToEnvironment:(id)environment
{
  environmentCopy = environment;
  selfCopy = self;
  TUIEnvironment._printDiffFromSelf(toEnvironment:)(environment);

  v7 = sub_19C518();

  return v7;
}

@end