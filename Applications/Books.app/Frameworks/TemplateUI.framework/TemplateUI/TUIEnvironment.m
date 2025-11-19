@interface TUIEnvironment
- (BOOL)_setValue:(ResolvedValue *)a3 forName:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEnvironment:(id)a3;
- (BOOL)isSanitizedTraitCollectionEqualTo:(id)a3;
- (BOOL)setFloat:(double)a3 forName:(id)a4;
- (BOOL)setSymbol:(id)a3 forName:(id)a4;
- (CGSize)viewSize;
- (CGSize)viewSizeWithinSafeArea;
- (CGSize)windowSize;
- (ResolvedValue)lookupName:(SEL)a3 symtab:(Entry)a4;
- (TUIEnvironment)initWithOther:(id)a3;
- (TUIEnvironment)initWithTraitCollection:(id)a3 viewController:(id)a4 viewSize:(CGSize)a5 viewSafeAreaInsets:(UIEdgeInsets)a6;
- (TUIEnvironment)initWithTraitCollection:(id)a3 viewController:(id)a4 viewSize:(CGSize)a5 viewSafeAreaInsets:(UIEdgeInsets)a6 windowSize:(CGSize)a7;
- (TUIEnvironment)initWithViewController:(id)a3 viewSize:(CGSize)a4 viewSafeAreaInsets:(UIEdgeInsets)a5;
- (TUIEnvironment)initWithViewController:(id)a3 viewSize:(CGSize)a4 viewSafeAreaInsets:(UIEdgeInsets)a5 windowSize:(CGSize)a6;
- (TUIEnvironment)initWithViewSize:(CGSize)a3 viewSafeAreaInsets:(UIEdgeInsets)a4 traitCollection:(id)a5;
- (UIEdgeInsets)viewSafeAreaInsets;
- (id).cxx_construct;
- (id)_printDiffFromSelfToEnvironment:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)differenceMaskWithEnvironment:(id)a3;
- (void)_updateValues;
- (void)setActiveAppearance:(unint64_t)a3;
- (void)setContentSizeCategory:(unint64_t)a3;
- (void)setContentsScale:(double)a3;
- (void)setDemoMode:(BOOL)a3;
- (void)setDeviceClass:(unint64_t)a3;
- (void)setDisplayClass:(unint64_t)a3;
- (void)setHeightClass:(unint64_t)a3;
- (void)setLanguage:(id)a3;
- (void)setLayoutDirection:(unint64_t)a3;
- (void)setOrientation:(unint64_t)a3;
- (void)setSplit:(unint64_t)a3;
- (void)setStyle:(unint64_t)a3;
- (void)setTintColor:(id)a3;
- (void)setViewSafeAreaInsets:(UIEdgeInsets)a3;
- (void)setViewSize:(CGSize)a3;
- (void)setWidthClass:(unint64_t)a3;
- (void)setWindowSize:(CGSize)a3;
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

- (TUIEnvironment)initWithViewSize:(CGSize)a3 viewSafeAreaInsets:(UIEdgeInsets)a4 traitCollection:(id)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  height = a3.height;
  width = a3.width;
  v13 = a5;
  v27.receiver = self;
  v27.super_class = TUIEnvironment;
  v14 = [(TUIEnvironment *)&v27 init];
  if (v14)
  {
    v15 = [(UITraitCollection *)v13 traitCollectionByModifyingTraits:&stru_2620A0];
    sanitizedTraitCollection = v14->_sanitizedTraitCollection;
    v14->_sanitizedTraitCollection = v15;

    objc_storeStrong(&v14->_traitCollection, a5);
    v14->_activeAppearance = _determineActiveAppearance(v13);
    v14->_viewSize.width = width;
    v14->_viewSize.height = height;
    v14->_viewSafeAreaInsets.top = top;
    v14->_viewSafeAreaInsets.left = left;
    v14->_viewSafeAreaInsets.bottom = bottom;
    v14->_viewSafeAreaInsets.right = right;
    v17 = +[UIWindow _applicationKeyWindow];
    v18 = [v17 windowScene];
    v19 = [v18 statusBarManager];
    [v19 statusBarHeight];
    v14->_statusBarHeight = v20;

    v14->_contentSizeCategory = 4;
    v14->_contentsScale = 2.0;
    v14->_demoMode = +[UIApplication isRunningInStoreDemoMode];
    v14->_layoutDirection = 1;
    v21 = +[UIColor blueColor];
    tintColor = v14->_tintColor;
    v14->_tintColor = v21;

    objc_storeStrong(&v14->_traitCollection, a5);
    v23 = +[NSBundle mainBundle];
    v24 = [v23 preferredLocalizations];
    v25 = [v24 firstObject];
    [(TUIEnvironment *)v14 setLanguage:v25];

    [(TUIEnvironment *)v14 _updateValues];
  }

  return v14;
}

- (TUIEnvironment)initWithViewController:(id)a3 viewSize:(CGSize)a4 viewSafeAreaInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  height = a4.height;
  width = a4.width;
  v12 = a3;
  v13 = [v12 viewIfLoaded];
  v14 = [v13 window];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = +[UIWindow _applicationKeyWindow];
  }

  v17 = v16;

  [v17 bounds];
  v20 = [(TUIEnvironment *)self initWithViewController:v12 viewSize:width viewSafeAreaInsets:height windowSize:top, left, bottom, right, v18, v19];

  return v20;
}

- (TUIEnvironment)initWithViewController:(id)a3 viewSize:(CGSize)a4 viewSafeAreaInsets:(UIEdgeInsets)a5 windowSize:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v12 = a4.height;
  v13 = a4.width;
  v15 = a3;
  v16 = [v15 traitCollection];
  v17 = [(TUIEnvironment *)self initWithTraitCollection:v16 viewController:v15 viewSize:v13 viewSafeAreaInsets:v12 windowSize:top, left, bottom, right, width, height];

  return v17;
}

- (TUIEnvironment)initWithTraitCollection:(id)a3 viewController:(id)a4 viewSize:(CGSize)a5 viewSafeAreaInsets:(UIEdgeInsets)a6
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  height = a5.height;
  width = a5.width;
  v14 = a3;
  v15 = a4;
  v16 = [v15 viewIfLoaded];
  v17 = [v16 window];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = +[UIWindow _applicationKeyWindow];
  }

  v20 = v19;

  [v20 bounds];
  v23 = [(TUIEnvironment *)self initWithTraitCollection:v14 viewController:v15 viewSize:width viewSafeAreaInsets:height windowSize:top, left, bottom, right, v21, v22];

  return v23;
}

- (TUIEnvironment)initWithTraitCollection:(id)a3 viewController:(id)a4 viewSize:(CGSize)a5 viewSafeAreaInsets:(UIEdgeInsets)a6 windowSize:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  v13 = a5.height;
  v14 = a5.width;
  v17 = a3;
  v18 = a4;
  v19 = [(TUIEnvironment *)self initWithViewSize:v17 viewSafeAreaInsets:v14 traitCollection:v13, top, left, bottom, right];
  v20 = v19;
  if (v19)
  {
    [(TUIEnvironment *)v19 setWindowSize:width, height];
    v21 = v17;
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
    v38 = v18;
    v39 = [(UIViewController *)v38 _rotatingToInterfaceOrientation];
    if (!v39)
    {
      v39 = [(UIViewController *)v38 interfaceOrientation];
      if (!v39)
      {
        v40 = +[UIWindow _applicationKeyWindow];
        v41 = [v40 windowScene];
        v39 = [v41 interfaceOrientation];
      }
    }

    if ((v39 - 1) < 2)
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
    v46 = [(UITraitCollection *)v45 preferredContentSizeCategory];

    if (v46 == UIContentSizeCategoryAccessibilityExtraExtraExtraLarge)
    {
      v58 = 12;
    }

    else
    {
      v47 = [(UITraitCollection *)v45 preferredContentSizeCategory];

      if (v47 == UIContentSizeCategoryAccessibilityExtraExtraLarge)
      {
        v58 = 11;
      }

      else
      {
        v48 = [(UITraitCollection *)v45 preferredContentSizeCategory];

        if (v48 == UIContentSizeCategoryAccessibilityExtraLarge)
        {
          v58 = 10;
        }

        else
        {
          v49 = [(UITraitCollection *)v45 preferredContentSizeCategory];

          if (v49 == UIContentSizeCategoryAccessibilityLarge)
          {
            v58 = 9;
          }

          else
          {
            v50 = [(UITraitCollection *)v45 preferredContentSizeCategory];

            if (v50 == UIContentSizeCategoryAccessibilityMedium)
            {
              v58 = 8;
            }

            else
            {
              v51 = [(UITraitCollection *)v45 preferredContentSizeCategory];

              if (v51 == UIContentSizeCategoryExtraExtraExtraLarge)
              {
                v58 = 7;
              }

              else
              {
                v52 = [(UITraitCollection *)v45 preferredContentSizeCategory];

                if (v52 == UIContentSizeCategoryExtraExtraLarge)
                {
                  v58 = 6;
                }

                else
                {
                  v53 = [(UITraitCollection *)v45 preferredContentSizeCategory];

                  if (v53 == UIContentSizeCategoryExtraLarge)
                  {
                    v58 = 5;
                  }

                  else
                  {
                    v54 = [(UITraitCollection *)v45 preferredContentSizeCategory];

                    if (v54 == UIContentSizeCategoryLarge)
                    {
                      v58 = 4;
                    }

                    else
                    {
                      v55 = [(UITraitCollection *)v45 preferredContentSizeCategory];

                      if (v55 == UIContentSizeCategoryMedium)
                      {
                        v58 = 3;
                      }

                      else
                      {
                        v56 = [(UITraitCollection *)v45 preferredContentSizeCategory];

                        if (v56 == UIContentSizeCategorySmall)
                        {
                          v58 = 2;
                        }

                        else
                        {
                          v57 = [(UITraitCollection *)v45 preferredContentSizeCategory];
                          v58 = v57 == UIContentSizeCategoryExtraSmall;
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
    v59 = [(UIViewController *)v38 viewIfLoaded];
    v60 = [v59 tintColor];
    [(TUIEnvironment *)v20 setTintColor:v60];

    [(TUIEnvironment *)v20 setLayoutDirection:_determineLayoutDirection(v45, v38)];
    [(TUIEnvironment *)v20 setAccessibilityElementsNeeded:_AXSApplicationAccessibilityEnabled() != 0];
  }

  return v20;
}

- (TUIEnvironment)initWithOther:(id)a3
{
  v4 = a3;
  [v4 viewSize];
  v6 = v5;
  v8 = v7;
  [v4 viewSafeAreaInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v4 traitCollection];
  v18 = [(TUIEnvironment *)self initWithViewSize:v17 viewSafeAreaInsets:v6 traitCollection:v8, v10, v12, v14, v16];

  if (v18)
  {
    v18->_deviceClass = [v4 deviceClass];
    v18->_widthClass = [v4 widthClass];
    v18->_heightClass = [v4 heightClass];
    v18->_displayClass = [v4 displayClass];
    v18->_split = [v4 split];
    [v4 windowSize];
    v18->_windowSize.width = v19;
    v18->_windowSize.height = v20;
    v18->_orientation = [v4 orientation];
    v18->_style = [v4 style];
    v18->_contentSizeCategory = [v4 contentSizeCategory];
    v18->_layoutDirection = [v4 layoutDirection];
    v18->_accessibilityElementsNeeded = [v4 accessibilityElementsNeeded];
    v21 = [v4 language];
    language = v18->_language;
    v18->_language = v21;

    v18->_useFontFallback = [v4 useFontFallback];
    [(TUIEnvironment *)v18 _updateValues];
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithOther:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [(TUIEnvironment *)self isEqualToEnvironment:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToEnvironment:(id)a3
{
  v4 = a3;
  v5 = [(TUIEnvironment *)self deviceClass];
  if (v5 != [v4 deviceClass])
  {
    goto LABEL_28;
  }

  v6 = [(TUIEnvironment *)self widthClass];
  if (v6 != [v4 widthClass])
  {
    goto LABEL_28;
  }

  v7 = [(TUIEnvironment *)self heightClass];
  if (v7 != [v4 heightClass])
  {
    goto LABEL_28;
  }

  v8 = [(TUIEnvironment *)self displayClass];
  if (v8 != [v4 displayClass])
  {
    goto LABEL_28;
  }

  v9 = [(TUIEnvironment *)self split];
  if (v9 != [v4 split])
  {
    goto LABEL_28;
  }

  [(TUIEnvironment *)self windowSize];
  v11 = v10;
  v13 = v12;
  [v4 windowSize];
  v15 = 0;
  if (v11 == v16 && v13 == v14)
  {
    [(TUIEnvironment *)self viewSize];
    v18 = v17;
    v20 = v19;
    [v4 viewSize];
    v15 = 0;
    if (v18 == v22 && v20 == v21)
    {
      [(TUIEnvironment *)self viewSafeAreaInsets];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [v4 viewSafeAreaInsets];
      v15 = 0;
      if (v26 == v34 && v24 == v31 && v30 == v33 && v28 == v32)
      {
        [(TUIEnvironment *)self statusBarHeight];
        v36 = v35;
        [v4 statusBarHeight];
        if (v36 != v37)
        {
          goto LABEL_28;
        }

        v38 = [(TUIEnvironment *)self style];
        if (v38 != [v4 style])
        {
          goto LABEL_28;
        }

        v39 = [(TUIEnvironment *)self demoMode];
        if (v39 != [v4 demoMode])
        {
          goto LABEL_28;
        }

        v40 = [(TUIEnvironment *)self orientation];
        if (v40 != [v4 orientation])
        {
          goto LABEL_28;
        }

        v41 = [(TUIEnvironment *)self contentSizeCategory];
        if (v41 != [v4 contentSizeCategory])
        {
          goto LABEL_28;
        }

        [(TUIEnvironment *)self contentsScale];
        v43 = v42;
        [v4 contentsScale];
        if (v43 != v44)
        {
          goto LABEL_28;
        }

        v45 = [(TUIEnvironment *)self layoutDirection];
        if (v45 != [v4 layoutDirection])
        {
          goto LABEL_28;
        }

        v46 = [(TUIEnvironment *)self activeAppearance];
        if (v46 != [v4 activeAppearance])
        {
          goto LABEL_28;
        }

        v47 = [(TUIEnvironment *)self accessibilityElementsNeeded];
        if (v47 != [v4 accessibilityElementsNeeded])
        {
          goto LABEL_28;
        }

        v48 = [(TUIEnvironment *)self language];
        v49 = [v4 language];
        v50 = v49;
        if (v48 == v49)
        {
        }

        else
        {
          v51 = [(TUIEnvironment *)self language];
          v52 = [v4 language];
          v53 = [v51 isEqualToString:v52];

          if (!v53)
          {
LABEL_28:
            v15 = 0;
            goto LABEL_29;
          }
        }

        v54 = [(TUIEnvironment *)self useFontFallback];
        if (v54 == [v4 useFontFallback])
        {
          v15 = [(TUIEnvironment *)self isSanitizedTraitCollectionEqualTo:v4];
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }
  }

LABEL_29:

  return v15;
}

- (unint64_t)differenceMaskWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v37 = 61;
    goto LABEL_48;
  }

  if (self == v4)
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

  v34 = [(TUIEnvironment *)self widthClass];
  if (v34 == [(TUIEnvironment *)v5 widthClass])
  {
    v35 = [(TUIEnvironment *)self heightClass];
    v36 = v35 == [(TUIEnvironment *)v5 heightClass];
  }

  else
  {
    v36 = 0;
  }

  v38 = [(TUIEnvironment *)self split];
  if (v38 == [(TUIEnvironment *)v5 split])
  {
    v39 = [(TUIEnvironment *)self orientation];
    v40 = v39 == [(TUIEnvironment *)v5 orientation];
  }

  else
  {
    v40 = 0;
  }

  v41 = [(TUIEnvironment *)self style];
  if (v41 != [(TUIEnvironment *)v5 style])
  {
    goto LABEL_23;
  }

  v42 = [(TUIEnvironment *)self tintColor];
  v43 = [(TUIEnvironment *)v5 tintColor];
  v44 = v43;
  if (v42 == v43)
  {

    goto LABEL_25;
  }

  v45 = [(TUIEnvironment *)self tintColor];
  v46 = [(TUIEnvironment *)v5 tintColor];
  v47 = [v45 isEqual:v46];

  if (v47)
  {
LABEL_25:
    v49 = [(TUIEnvironment *)self activeAppearance];
    v48 = v49 == [(TUIEnvironment *)v5 activeAppearance];
    goto LABEL_26;
  }

LABEL_23:
  v48 = 0;
LABEL_26:
  v50 = [(TUIEnvironment *)self deviceClass];
  if (v50 != [(TUIEnvironment *)v5 deviceClass])
  {
    goto LABEL_38;
  }

  v51 = [(TUIEnvironment *)self displayClass];
  if (v51 != [(TUIEnvironment *)v5 displayClass])
  {
    goto LABEL_38;
  }

  v52 = [(TUIEnvironment *)self demoMode];
  if (v52 != [(TUIEnvironment *)v5 demoMode])
  {
    goto LABEL_38;
  }

  v53 = [(TUIEnvironment *)self contentSizeCategory];
  if (v53 != [(TUIEnvironment *)v5 contentSizeCategory])
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

  v57 = [(TUIEnvironment *)self layoutDirection];
  if (v57 != [(TUIEnvironment *)v5 layoutDirection])
  {
    goto LABEL_38;
  }

  v58 = [(TUIEnvironment *)self accessibilityElementsNeeded];
  if (v58 != [(TUIEnvironment *)v5 accessibilityElementsNeeded])
  {
    goto LABEL_38;
  }

  v68 = [(TUIEnvironment *)self language];
  v59 = [(TUIEnvironment *)v5 language];
  v60 = v59;
  if (v68 == v59)
  {
  }

  else
  {
    v61 = [(TUIEnvironment *)self language];
    v62 = [(TUIEnvironment *)v5 language];
    v63 = [v61 isEqualToString:v62];

    if (!v63)
    {
      goto LABEL_38;
    }
  }

  v64 = [(TUIEnvironment *)self useFontFallback];
  if (v64 == [(TUIEnvironment *)v5 useFontFallback])
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

- (void)setLanguage:(id)a3
{
  objc_storeStrong(&self->_language, a3);
  v5 = a3;
  v6 = [TUIFontSpec determineUseFontFallbackFromLanguage:v5];

  self->_useFontFallback = v6;
}

- (void)setDeviceClass:(unint64_t)a3
{
  self->_deviceClass = a3;
  if (a3 > 6)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D358[a3];
    v5 = 7;
  }

  self->_deviceClassValue._kind = v5;
  object = self->_deviceClassValue._object;
  self->_deviceClassValue._object = 0;

  self->_deviceClassValue.var0._integer = v3;
}

- (void)setWidthClass:(unint64_t)a3
{
  self->_widthClass = a3;
  if (a3 > 3)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D390[a3];
    v5 = 7;
  }

  self->_widthClassValue._kind = v5;
  object = self->_widthClassValue._object;
  self->_widthClassValue._object = 0;

  self->_widthClassValue.var0._integer = v3;
}

- (void)setHeightClass:(unint64_t)a3
{
  self->_heightClass = a3;
  if (a3 > 3)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D390[a3];
    v5 = 7;
  }

  self->_heightClassValue._kind = v5;
  object = self->_heightClassValue._object;
  self->_heightClassValue._object = 0;

  self->_heightClassValue.var0._integer = v3;
}

- (void)setDisplayClass:(unint64_t)a3
{
  self->_displayClass = a3;
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D3B0[a3];
    v5 = 7;
  }

  self->_displayClassValue._kind = v5;
  object = self->_displayClassValue._object;
  self->_displayClassValue._object = 0;

  self->_displayClassValue.var0._integer = v3;
}

- (void)setSplit:(unint64_t)a3
{
  self->_split = a3;
  if (a3 > 4)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D3C8[a3];
    v5 = 7;
  }

  self->_splitValue._kind = v5;
  object = self->_splitValue._object;
  self->_splitValue._object = 0;

  self->_splitValue.var0._integer = v3;
}

- (void)setOrientation:(unint64_t)a3
{
  self->_orientation = a3;
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D3F0[a3];
    v5 = 7;
  }

  self->_orientationValue._kind = v5;
  object = self->_orientationValue._object;
  self->_orientationValue._object = 0;

  self->_orientationValue.var0._integer = v3;
}

- (void)setWindowSize:(CGSize)a3
{
  self->_windowSize = a3;
  v4 = [NSValue valueWithCGSize:?];
  self->_windowSizeValue._kind = 3;
  object = self->_windowSizeValue._object;
  self->_windowSizeValue._object = v4;
  v6 = v4;
}

- (void)setViewSize:(CGSize)a3
{
  self->_viewSize = a3;
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

- (void)setViewSafeAreaInsets:(UIEdgeInsets)a3
{
  self->_viewSafeAreaInsets = a3;
  v10 = a3;
  v4 = [[NSData alloc] initWithBytes:&v10 length:32];
  self->_viewSafeAreaInsetsValue._kind = 4;
  object = self->_viewSafeAreaInsetsValue._object;
  self->_viewSafeAreaInsetsValue._object = v4;
  v6 = v4;

  [(TUIEnvironment *)self viewSizeWithinSafeArea:*&v10.top];
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

- (void)setStyle:(unint64_t)a3
{
  self->_style = a3;
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D408[a3];
    v5 = 7;
  }

  self->_styleValue._kind = v5;
  object = self->_styleValue._object;
  self->_styleValue._object = 0;

  self->_styleValue.var0._integer = v3;
}

- (void)setActiveAppearance:(unint64_t)a3
{
  self->_activeAppearance = a3;
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D4A8[a3];
    v5 = 7;
  }

  self->_activeAppearanceValue._kind = v5;
  object = self->_activeAppearanceValue._object;
  self->_activeAppearanceValue._object = 0;

  self->_activeAppearanceValue.var0._integer = v3;
}

- (void)setDemoMode:(BOOL)a3
{
  self->_demoMode = a3;
  v4 = a3;
  self->_demoModeValue._kind = 12;
  object = self->_demoModeValue._object;
  self->_demoModeValue._object = 0;

  self->_demoModeValue.var0._integer = v4;
}

- (void)setContentSizeCategory:(unint64_t)a3
{
  self->_contentSizeCategory = a3;
  v4 = (&unk_24D420 + 8 * a3);
  if (a3 >= 0xD)
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

- (void)setContentsScale:(double)a3
{
  if (a3 <= 0.0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = a3;
  }

  self->_contentsScale = v4;
  self->_contentsScaleValue._kind = 1;
  object = self->_contentsScaleValue._object;
  self->_contentsScaleValue._object = 0;

  self->_contentsScaleValue.var0._float = v4;
}

- (void)setTintColor:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_tintColor, a3);
  self->_tintColorValue._kind = 11;
  object = self->_tintColorValue._object;
  self->_tintColorValue._object = v5;
}

- (void)setLayoutDirection:(unint64_t)a3
{
  self->_layoutDirection = a3;
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = qword_24D490[a3];
    v5 = 7;
  }

  self->_layoutDirectionValue._kind = v5;
  object = self->_layoutDirectionValue._object;
  self->_layoutDirectionValue._object = 0;

  self->_layoutDirectionValue.var0._integer = v3;
}

- (ResolvedValue)lookupName:(SEL)a3 symtab:(Entry)a4
{
  v5 = self;
  v29 = a4;
  if (a4.var0 == 1)
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

    if (v9 == a4.var1)
    {
      retstr->_kind = self->_object;
      self = self->var0._integer;
      integer = *&v5[1]._kind;
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

    if (v12 == a4.var1)
    {
      retstr->_kind = self[1]._object;
      self = self[1].var0._integer;
      integer = *&v5[2]._kind;
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

    if (v13 == a4.var1)
    {
      retstr->_kind = self[2]._object;
      self = self[2].var0._integer;
      integer = *&v5[3]._kind;
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

    if (v14 == a4.var1)
    {
      retstr->_kind = self[9]._object;
      self = self[9].var0._integer;
      integer = *&v5[10]._kind;
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

    if (v15 == a4.var1)
    {
      retstr->_kind = self[4]._object;
      self = self[4].var0._integer;
      integer = *&v5[5]._kind;
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

    if (v16 == a4.var1)
    {
      retstr->_kind = self[5]._object;
      self = self[5].var0._integer;
      integer = *&v5[6]._kind;
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

    if (v17 == a4.var1)
    {
      retstr->_kind = self[6]._object;
      self = self[6].var0._integer;
      integer = *&v5[7]._kind;
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

    if (v18 == a4.var1)
    {
      retstr->_kind = self[7]._object;
      self = self[7].var0._integer;
      integer = *&v5[8]._kind;
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

    if (v19 == a4.var1)
    {
      retstr->_kind = self[8]._object;
      self = self[8].var0._integer;
      integer = *&v5[9]._kind;
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

    if (v20 == a4.var1)
    {
      retstr->_kind = self[10]._object;
      self = self[10].var0._integer;
      integer = *&v5[11]._kind;
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

    if (v21 == a4.var1)
    {
      retstr->_kind = self[11]._object;
      self = self[11].var0._integer;
      integer = *&v5[12]._kind;
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

    if (v22 == a4.var1)
    {
      retstr->_kind = self[12]._object;
      self = self[12].var0._integer;
      integer = *&v5[13]._kind;
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

    if (v23 == a4.var1)
    {
      retstr->_kind = self[13]._object;
      self = self[13].var0._integer;
      integer = *&v5[14]._kind;
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

    if (v24 == a4.var1)
    {
      retstr->_kind = self[14]._object;
      self = self[14].var0._integer;
      integer = *&v5[15]._kind;
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

    if (v25 == a4.var1)
    {
      retstr->_kind = self[15]._object;
      self = self[15].var0._integer;
      integer = *&v5[16]._kind;
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

    if (v26 == a4.var1)
    {
      retstr->_kind = self[16]._object;
      self = self[16].var0._integer;
      integer = *&v5[17]._kind;
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

    if (v27 == a4.var1)
    {
      retstr->_kind = self[3]._object;
      self = self[3].var0._integer;
      integer = *&v5[4]._kind;
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

    if (v28 == a4.var1)
    {
      retstr->_kind = self[17]._object;
      self = self[17].var0._integer;
      integer = *&v5[18]._kind;
      goto LABEL_94;
    }

LABEL_96:
    retstr->_kind = 0;
    retstr->_object = 0;
    return self;
  }

  self = sub_26874(&self[20]._kind, &v29.var0);
  if (!self)
  {
    goto LABEL_96;
  }

  v10 = self;
  retstr->_kind = self[1]._kind;
  self = self[1]._object;
  integer = v10[1].var0._integer;
LABEL_94:
  retstr->_object = self;
  retstr->var0._integer = integer;
  return self;
}

- (BOOL)setFloat:(double)a3 forName:(id)a4
{
  v6 = 1;
  v7 = 0;
  v8 = a3;
  v4 = [(TUIEnvironment *)self _setValue:&v6 forName:*&a4];

  return v4;
}

- (BOOL)setSymbol:(id)a3 forName:(id)a4
{
  v6 = 6;
  v7 = 0;
  var0 = a3.var0;
  v4 = [(TUIEnvironment *)self _setValue:&v6 forName:*&a4];

  return v4;
}

- (BOOL)_setValue:(ResolvedValue *)a3 forName:(id)a4
{
  IsValid = TUINameIsValid(*&a4);
  result = 0;
  if (IsValid && (a4.var0 & 0xFFFE) != 0)
  {
    if (a3->_kind)
    {
      v10 = a4;
      LOWORD(v11) = a4.var0;
      if (!sub_11F88(&self->_extendedNameSpaces.__table_.__bucket_list_.__ptr_, &v11))
      {
        LOWORD(v11) = a4.var0;
        sub_1241E0(&self->_extendedNameSpaces.__table_.__bucket_list_.__ptr_, &v11);
      }

      v11 = &v10;
      v9 = sub_124414(&self->_extendedValues.__table_.__bucket_list_.__ptr_, &v10.var0);
      *(v9 + 6) = a3->_kind;
      objc_storeStrong(v9 + 4, a3->_object);
      v9[5] = a3->var0._integer;
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

- (BOOL)isSanitizedTraitCollectionEqualTo:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = TUIEnvironment.isSanitizedTraitCollectionEqual(to:)(v3);

  return v3 & 1;
}

- (id)_printDiffFromSelfToEnvironment:(id)a3
{
  v5 = a3;
  v6 = self;
  TUIEnvironment._printDiffFromSelf(toEnvironment:)(a3);

  v7 = sub_19C518();

  return v7;
}

@end