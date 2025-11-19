@interface UIView
+ (BOOL)_maps_shouldAdoptImplicitAnimationParameters;
+ (void)_maps_animateForAndromeda:(BOOL)a3 animations:(id)a4 completion:(id)a5;
- (BOOL)_car_usingLargeTextSizes;
- (BOOL)_maps_isVisible;
- (CGAffineTransform)_maps_transformScaledToLeadingAtScale:(SEL)a3;
- (CGAffineTransform)_maps_transformScaledToTopAndLeadingAtScale:(SEL)a3;
- (CGAffineTransform)_maps_transformScaledToTopAndTrailingAtScale:(SEL)a3;
- (CGAffineTransform)_maps_transformScaledToTopAtScale:(SEL)a3;
- (CGRect)_maps_centeringFrameForView:(id)a3 fit:(BOOL)a4 constrain:(BOOL)a5 inRect:(CGRect)a6;
- (CGRect)_maps_centeringFrameForView:(id)a3 inRect:(CGRect)a4 options:(int64_t)a5;
- (CGRect)_maps_centeringFrameForView:(id)a3 size:(CGSize)a4 inRect:(CGRect)a5;
- (CGSize)_maps_compressedSizeForWidth:(double)a3 withBlock:(id)a4;
- (CarCardView)_cardView;
- (MapsTheme)theme;
- (NSLayoutXAxisAnchor)_maps_leftRHDAnchor;
- (NSLayoutXAxisAnchor)_maps_rightRHDAnchor;
- (NSString)sceneIdentifierForLogging;
- (double)_car_dynamicPixelScaleValue;
- (double)_car_dynamicPointScaleValue;
- (double)_maps_maxConstraintConstantForAxis:(int64_t)a3;
- (id)_addHairlineAtBottom:(BOOL)a3 leadingMargin:(double)a4 trailingMargin:(double)a5;
- (id)_addHairlineAtTrailing:(BOOL)a3 topMargin:(double)a4 bottomMargin:(double)a5;
- (id)_mapsCar_injectBlurView:(int64_t)a3;
- (id)_mapsCar_insertFocusContainerGuide;
- (id)_mapsCar_insertFocusGuideWithOriginView:(id)a3 toDestinationFocusEnvironments:(id)a4 forDirection:(unint64_t)a5;
- (id)_mapsCar_recursiveSubviewsWithClass:(Class)a3;
- (id)_maps_carSceneDelegate;
- (id)_maps_constraintsEqualToEdges:(unint64_t)a3 ofLayoutGuide:(id)a4 insets:(UIEdgeInsets)a5 priority:(float)a6;
- (id)_maps_constraintsEqualToEdges:(unint64_t)a3 ofView:(id)a4 insets:(UIEdgeInsets)a5 priority:(float)a6;
- (id)_maps_constraintsForCenteringInView:(id)a3;
- (id)_maps_constraintsForCenteringInView:(id)a3 edgeInsets:(UIEdgeInsets)a4;
- (id)_maps_constraintsForCenteringInView:(id)a3 edgeInsets:(UIEdgeInsets)a4 priorities:(id)a5;
- (id)_maps_constraintsForCenteringInView:(id)a3 priorities:(id)a4;
- (id)_maps_flexibleConstraintsForLayoutGuide:(id)a3 insideEdges:(unint64_t)a4 withFillingPriority:(float)a5;
- (id)_maps_flexibleLayoutGuideInsideEdges:(unint64_t)a3 withFillingPriority:(float)a4;
- (id)_maps_mapsSceneDelegate;
- (id)_maps_sceneIdentifierString;
- (void)_mapsCar_clearShadow;
- (void)_mapsCar_setBlurViewDisabled:(BOOL)a3;
- (void)_mapsCar_updateShadow;
- (void)_mapsCar_updateShadowWithCornerRadius:(double)a3;
- (void)_mapsCar_updateShadowWithSettings:(id *)a3;
- (void)_maps_alignTopToView:(id)a3;
- (void)_maps_annotateViewWithCarPlaceCardCardViewController:(id)a3;
- (void)_maps_annotateViewWithPlaceCardViewController:(id)a3;
- (void)_maps_applyGlassBackground;
- (void)_maps_applyGlassBackgroundForButton:(BOOL)a3 buttonBackgroundType:(unint64_t)a4 allowAdaptive:(BOOL)a5 isCarPlay:(BOOL)a6;
- (void)_maps_applyGlassBackgroundForButton:(BOOL)a3 withColor:(id)a4 allowAdaptive:(BOOL)a5 isCarPlay:(BOOL)a6;
- (void)_maps_applyGlassGroup;
- (void)_maps_initializeWithAutolayoutCompressedSize;
- (void)_maps_recursivelySetAllowsGroupOpacity:(BOOL)a3;
- (void)_maps_removeBackground;
- (void)_maps_setAllContentHuggingAndCompressionResistancePriorities:(float)a3;
@end

@implementation UIView

- (MapsTheme)theme
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4)
  {
    v5 = [(UIView *)self traitCollection];
    v6 = [v5 userInterfaceStyle] != 1;

    v7 = +[MapsTheme sharedTheme];
    [v7 setMapsThemeStyle:v6];
  }

  return +[MapsTheme sharedTheme];
}

- (void)_maps_applyGlassGroup
{
  v4[3] = type metadata accessor for _GlassGroup();
  v4[4] = &protocol witness table for _GlassGroup;
  sub_10001A848(v4);
  v3 = self;
  _GlassGroup.init(foreground:)();
  UIView._background.setter();
}

- (void)_maps_applyGlassBackground
{
  v3 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v3 - 8);
  v4 = self;
  static _Glass._GlassVariant.regular.getter();
  v5[3] = type metadata accessor for _Glass();
  v5[4] = &protocol witness table for _Glass;
  sub_10001A848(v5);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

- (id)_maps_mapsSceneDelegate
{
  v2 = [(UIView *)self window];
  v3 = [v2 windowScene];
  v4 = [v3 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (double)_car_dynamicPointScaleValue
{
  v3 = [(UIView *)self window];
  v4 = [v3 screen];
  if (!v4)
  {
    v9 = 1.0;
LABEL_8:

    return v9;
  }

  v5 = v4;
  v6 = [(UIView *)self window];
  if (([v6 _car_isHybridInstrumentCluster] & 1) == 0)
  {

    v9 = 1.0;
    goto LABEL_7;
  }

  v7 = [(UIView *)self window];
  v8 = [v7 _car_hybridInstrumentClusterPresentationType];

  v9 = 1.0;
  if (!v8)
  {
    v3 = [(UIView *)self window];
    v5 = [v3 screen];
    [v5 _car_dynamicPointScaleValue];
    v9 = v10;
LABEL_7:

    goto LABEL_8;
  }

  return v9;
}

- (void)_mapsCar_updateShadow
{
  v3 = [(UIView *)self traitCollection];
  v10 = 0;
  if ([v3 userInterfaceStyle] == 1)
  {
    v4 = &xmmword_1012162A8;
  }

  else
  {
    v4 = &xmmword_1012162D0;
  }

  v5 = v4[1];
  v8 = *v4;
  v9 = v5;

  v6[0] = v8;
  v6[1] = v9;
  v7 = v10;
  [(UIView *)self _mapsCar_updateShadowWithSettings:v6];
}

- (id)_mapsCar_insertFocusContainerGuide
{
  v3 = [CarFocusContainerGuide focusContainerGuideInstalledInView:self];
  [(UIView *)self addLayoutGuide:v3];
  v4 = [v3 debugView];

  if (v4)
  {
    v5 = [v3 debugView];
    [(UIView *)self insertSubview:v5 atIndex:0];
  }

  v6 = [v3 activationConstraints];
  [NSLayoutConstraint activateConstraints:v6];

  v7 = sub_10008AA10();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_12;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(UIView *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_10;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_10:

LABEL_12:
    v14 = [v3 description];
    *buf = 138543618;
    v17 = v13;
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%{public}@] Adding focus guide: %@", buf, 0x16u);
  }

  return v3;
}

- (NSString)sceneIdentifierForLogging
{
  v2 = [(UIView *)self window];
  v3 = [v2 windowScene];
  v4 = [v3 delegate];

  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___SceneIdentifierProviding])
  {
    v5 = [v4 sceneIdentifier];
  }

  else if (v4)
  {
    v5 = @"iOS";
  }

  else
  {
    v5 = @"Unknown";
  }

  return v5;
}

- (NSLayoutXAxisAnchor)_maps_leftRHDAnchor
{
  v3 = [(UIView *)self window];
  if ([v3 _car_isHybridInstrumentCluster])
  {
    v4 = [(UIView *)self window];
    v5 = [v4 _car_hybridInstrumentClusterAlignment] == 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = +[MapsExternalDevice sharedInstance];
  v7 = [v6 rightHandDrive];

  if ((v7 & 1) != 0 || v5)
  {
    v8 = [(UIView *)self rightAnchor];
  }

  else
  {
    v8 = [(UIView *)self leftAnchor];
  }

  return v8;
}

+ (BOOL)_maps_shouldAdoptImplicitAnimationParameters
{
  v2 = +[UIView _isInAnimationBlock];
  if (v2)
  {

    LOBYTE(v2) = +[UIView areAnimationsEnabled];
  }

  return v2;
}

- (CarCardView)_cardView
{
  v2 = [(UIView *)self superview];
  if (v2)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v2 = v2;
  }

LABEL_6:

  return v2;
}

- (void)_maps_applyGlassBackgroundForButton:(BOOL)a3 buttonBackgroundType:(unint64_t)a4 allowAdaptive:(BOOL)a5 isCarPlay:(BOOL)a6
{
  v7 = a5;
  v10 = self;
  UIView._maps_applyGlassBackground(forButton:buttonBackgroundType:allowAdaptive:isCarPlay:)(a3, a4, v7, a6);
}

- (void)_maps_applyGlassBackgroundForButton:(BOOL)a3 withColor:(id)a4 allowAdaptive:(BOOL)a5 isCarPlay:(BOOL)a6
{
  v10 = a4;
  v11 = self;
  UIView._maps_applyGlassBackground(forButton:withColor:allowAdaptive:isCarPlay:)(a3, v10, a5, a6);
}

- (void)_maps_removeBackground
{
  v2 = self;
  UIView._background.setter();
}

- (void)_maps_annotateViewWithPlaceCardViewController:(id)a3
{
  v4 = a3;
  v9 = self;
  v5 = [(UIView *)v4 placeCardItem];
  if (v5 && (v6 = v5, v7 = [v5 mapItem], v6, v7))
  {

    v8 = v9;
    v9 = v4;
  }

  else
  {
    UIView.removeAnnotation()();
    v8 = v4;
  }
}

- (void)_maps_annotateViewWithCarPlaceCardCardViewController:(id)a3
{
  v4 = a3;
  v3 = [v4 searchResult];
}

- (void)_maps_setAllContentHuggingAndCompressionResistancePriorities:(float)a3
{
  [(UIView *)self setContentHuggingPriority:0 forAxis:?];
  *&v5 = a3;
  [(UIView *)self setContentHuggingPriority:1 forAxis:v5];
  *&v6 = a3;
  [(UIView *)self setContentCompressionResistancePriority:0 forAxis:v6];
  *&v7 = a3;

  [(UIView *)self setContentCompressionResistancePriority:1 forAxis:v7];
}

- (double)_maps_maxConstraintConstantForAxis:(int64_t)a3
{
  v5 = [(UIView *)self window];
  if (v5)
  {
    [(UIView *)self window];
  }

  else
  {
    +[UIScreen mainScreen];
  }
  v6 = ;
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  if (a3 == 1)
  {
    return v10;
  }

  else
  {
    return v8;
  }
}

- (CGAffineTransform)_maps_transformScaledToTopAndTrailingAtScale:(SEL)a3
{
  if (a4 == 1.0 || a4 == 0.0)
  {
    v13 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v13;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    [(CGAffineTransform *)self bounds];
    v7 = v6;
    v9 = v8;
    v10 = +[UIApplication sharedApplication];
    v11 = [v10 userInterfaceLayoutDirection];

    CGAffineTransformMakeScale(&v14, a4, a4);
    if (v11 == 1)
    {
      v12 = (v7 - v7 * a4) * -0.5 / a4;
    }

    else
    {
      v12 = (v7 - v7 * a4) * 0.5 / a4;
    }

    return CGAffineTransformTranslate(retstr, &v14, v12, (v9 - v9 * a4) * -0.5 / a4);
  }

  return self;
}

- (CGAffineTransform)_maps_transformScaledToTopAndLeadingAtScale:(SEL)a3
{
  if (a4 == 1.0 || a4 == 0.0)
  {
    v13 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v13;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    [(CGAffineTransform *)self bounds];
    v7 = v6;
    v9 = v8;
    v10 = +[UIApplication sharedApplication];
    v11 = [v10 userInterfaceLayoutDirection];

    CGAffineTransformMakeScale(&v14, a4, a4);
    if (v11 == 1)
    {
      v12 = (v7 - v7 * a4) * 0.5 / a4;
    }

    else
    {
      v12 = (v7 - v7 * a4) * -0.5 / a4;
    }

    return CGAffineTransformTranslate(retstr, &v14, v12, (v9 - v9 * a4) * -0.5 / a4);
  }

  return self;
}

- (CGAffineTransform)_maps_transformScaledToTopAtScale:(SEL)a3
{
  if (a4 == 1.0 || a4 == 0.0)
  {
    v8 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v8;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    [(CGAffineTransform *)self bounds];
    v7 = v6;
    CGAffineTransformMakeScale(&v9, a4, a4);
    return CGAffineTransformTranslate(retstr, &v9, 0.0, (v7 - v7 * a4) * -0.5 / a4);
  }

  return self;
}

- (CGAffineTransform)_maps_transformScaledToLeadingAtScale:(SEL)a3
{
  if (a4 == 1.0 || a4 == 0.0)
  {
    v11 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v11;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    [(CGAffineTransform *)self bounds];
    v7 = v6;
    v8 = +[UIApplication sharedApplication];
    v9 = [v8 userInterfaceLayoutDirection];

    CGAffineTransformMakeScale(&v12, a4, a4);
    if (v9 == 1)
    {
      v10 = 0.5;
    }

    else
    {
      v10 = -0.5;
    }

    return CGAffineTransformTranslate(retstr, &v12, (v7 - v7 * a4) * v10 / a4, 0.0);
  }

  return self;
}

- (id)_maps_flexibleConstraintsForLayoutGuide:(id)a3 insideEdges:(unint64_t)a4 withFillingPriority:(float)a5
{
  v8 = a3;
  v9 = objc_alloc_init(NSMutableArray);
  *&v10 = fminf(a5, 999.0);
  v11 = [v8 _maps_constraintsEqualToEdges:a4 ofView:self priority:v10];
  v12 = [v11 allConstraints];
  [v9 addObjectsFromArray:v12];

  if (a4)
  {
    v18 = [v8 topAnchor];
    v19 = [(UIView *)self topAnchor];
    v20 = [v18 constraintGreaterThanOrEqualToAnchor:v19];
    [v9 addObject:v20];

    if ((a4 & 2) == 0)
    {
LABEL_3:
      if ((a4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v21 = [v8 leadingAnchor];
  v22 = [(UIView *)self leadingAnchor];
  v23 = [v21 constraintGreaterThanOrEqualToAnchor:v22];
  [v9 addObject:v23];

  if ((a4 & 4) == 0)
  {
LABEL_4:
    if ((a4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v24 = [(UIView *)self bottomAnchor];
  v25 = [v8 bottomAnchor];
  v26 = [v24 constraintGreaterThanOrEqualToAnchor:v25];
  [v9 addObject:v26];

  if ((a4 & 8) != 0)
  {
LABEL_5:
    v13 = [(UIView *)self trailingAnchor];
    v14 = [v8 trailingAnchor];
    v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];
    [v9 addObject:v15];
  }

LABEL_6:
  v16 = [v9 copy];

  return v16;
}

- (id)_maps_flexibleLayoutGuideInsideEdges:(unint64_t)a3 withFillingPriority:(float)a4
{
  v7 = objc_alloc_init(UILayoutGuide);
  [(UIView *)self addLayoutGuide:v7];
  *&v8 = a4;
  v9 = [(UIView *)self _maps_flexibleConstraintsForLayoutGuide:v7 insideEdges:a3 withFillingPriority:v8];
  [NSLayoutConstraint activateConstraints:v9];

  return v7;
}

- (id)_maps_constraintsEqualToEdges:(unint64_t)a3 ofLayoutGuide:(id)a4 insets:(UIEdgeInsets)a5 priority:(float)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v12 = a3;
  v14 = a4;
  if (!v14)
  {
    v27 = 0;
    goto LABEL_17;
  }

  if (v12)
  {
    v28 = [(UIView *)self topAnchor];
    v34 = [v14 topAnchor];
    v35 = v28;
    *&v29 = a6;
    v15 = [v28 constraintEqualToAnchor:top constant:v29 priority:?];
    if ((v12 & 2) != 0)
    {
LABEL_4:
      v16 = [(UIView *)self leadingAnchor];
      v32 = [v14 leadingAnchor];
      v33 = v16;
      *&v17 = a6;
      v18 = [v16 constraintEqualToAnchor:left constant:v17 priority:?];
      if ((v12 & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  v18 = 0;
  if ((v12 & 4) != 0)
  {
LABEL_5:
    v19 = [v14 bottomAnchor];
    v6 = [(UIView *)self bottomAnchor];
    v31 = v19;
    *&v20 = a6;
    v21 = [v19 constraintEqualToAnchor:v6 constant:bottom priority:v20];
    if ((v12 & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v27 = [MapsEdgeConstraints edgeConstraintsWithTop:v15 leading:v18 bottom:v21 trailing:0];
    if ((v12 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  v21 = 0;
  if ((v12 & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v22 = [v14 trailingAnchor];
  v23 = [(UIView *)self trailingAnchor];
  *&v24 = a6;
  [v22 constraintEqualToAnchor:v23 constant:right priority:v24];
  v26 = v25 = v15;
  v27 = [MapsEdgeConstraints edgeConstraintsWithTop:v25 leading:v18 bottom:v21 trailing:v26];

  v15 = v25;
  if ((v12 & 4) != 0)
  {
LABEL_13:
  }

LABEL_14:
  if ((v12 & 2) == 0)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v12)
  {
LABEL_16:
  }

LABEL_17:

  return v27;
}

- (id)_maps_constraintsEqualToEdges:(unint64_t)a3 ofView:(id)a4 insets:(UIEdgeInsets)a5 priority:(float)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v12 = a3;
  v14 = a4;
  if (!v14)
  {
    v27 = 0;
    goto LABEL_17;
  }

  if (v12)
  {
    v28 = [(UIView *)self topAnchor];
    v34 = [v14 topAnchor];
    v35 = v28;
    *&v29 = a6;
    v15 = [v28 constraintEqualToAnchor:top constant:v29 priority:?];
    if ((v12 & 2) != 0)
    {
LABEL_4:
      v16 = [(UIView *)self leadingAnchor];
      v32 = [v14 leadingAnchor];
      v33 = v16;
      *&v17 = a6;
      v18 = [v16 constraintEqualToAnchor:left constant:v17 priority:?];
      if ((v12 & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  v18 = 0;
  if ((v12 & 4) != 0)
  {
LABEL_5:
    v19 = [v14 bottomAnchor];
    v6 = [(UIView *)self bottomAnchor];
    v31 = v19;
    *&v20 = a6;
    v21 = [v19 constraintEqualToAnchor:v6 constant:bottom priority:v20];
    if ((v12 & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v27 = [MapsEdgeConstraints edgeConstraintsWithTop:v15 leading:v18 bottom:v21 trailing:0];
    if ((v12 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  v21 = 0;
  if ((v12 & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v22 = [v14 trailingAnchor];
  v23 = [(UIView *)self trailingAnchor];
  *&v24 = a6;
  [v22 constraintEqualToAnchor:v23 constant:right priority:v24];
  v26 = v25 = v15;
  v27 = [MapsEdgeConstraints edgeConstraintsWithTop:v25 leading:v18 bottom:v21 trailing:v26];

  v15 = v25;
  if ((v12 & 4) != 0)
  {
LABEL_13:
  }

LABEL_14:
  if ((v12 & 2) == 0)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v12)
  {
LABEL_16:
  }

LABEL_17:

  return v27;
}

- (id)_maps_constraintsForCenteringInView:(id)a3 edgeInsets:(UIEdgeInsets)a4 priorities:(id)a5
{
  var3 = a5.var3;
  var2 = a5.var2;
  var1 = a5.var1;
  var0 = a5.var0;
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v14 = a3;
  v32 = [(UIView *)self topAnchor];
  v31 = [v14 topAnchor];
  *&v15 = var0;
  v30 = [v32 constraintEqualToAnchor:v31 constant:top priority:v15];
  v33[0] = v30;
  v16 = [(UIView *)self leftAnchor];
  v17 = [v14 leftAnchor];
  *&v18 = var2;
  v19 = [v16 constraintEqualToAnchor:v17 constant:left priority:v18];
  v33[1] = v19;
  v20 = [v14 bottomAnchor];
  v21 = [(UIView *)self bottomAnchor];
  *&v22 = var1;
  v23 = [v20 constraintEqualToAnchor:v21 constant:bottom priority:v22];
  v33[2] = v23;
  v24 = [v14 rightAnchor];

  v25 = [(UIView *)self rightAnchor];
  *&v26 = var3;
  v27 = [v24 constraintEqualToAnchor:v25 constant:right priority:v26];
  v33[3] = v27;
  v28 = [NSArray arrayWithObjects:v33 count:4];

  return v28;
}

- (id)_maps_constraintsForCenteringInView:(id)a3 priorities:(id)a4
{
  *&v7 = a4.var3;
  *&v6 = a4.var2;
  *&v5 = a4.var1;
  *&v4 = a4.var0;
  return [(UIView *)self _maps_constraintsForCenteringInView:a3 edgeInsets:0.0 priorities:0.0, 0.0, 0.0, v4, v5, v6, v7];
}

- (id)_maps_constraintsForCenteringInView:(id)a3 edgeInsets:(UIEdgeInsets)a4
{
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1148846080;
  LODWORD(v6) = 1148846080;
  LODWORD(v7) = 1148846080;
  return [(UIView *)self _maps_constraintsForCenteringInView:a3 edgeInsets:a4.top priorities:a4.left, a4.bottom, a4.right, v4, v5, v6, v7];
}

- (id)_maps_constraintsForCenteringInView:(id)a3
{
  LODWORD(v3) = 1148846080;
  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1148846080;
  LODWORD(v6) = 1148846080;
  return [(UIView *)self _maps_constraintsForCenteringInView:a3 edgeInsets:0.0 priorities:0.0, 0.0, 0.0, v3, v4, v5, v6];
}

- (void)_maps_alignTopToView:(id)a3
{
  v4 = a3;
  [(UIView *)self frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v4 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v21.origin.x = v12;
  v21.origin.y = v14;
  v21.size.width = v16;
  v21.size.height = v18;
  MinY = CGRectGetMinY(v21);

  [(UIView *)self setFrame:v6, MinY, v8, v10];
}

- (BOOL)_maps_isVisible
{
  if ([(UIView *)self isHidden])
  {
    return 0;
  }

  v4 = [(UIView *)self window];
  v3 = v4 != 0;

  return v3;
}

- (CGSize)_maps_compressedSizeForWidth:(double)a3 withBlock:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, a2);
  }

  LODWORD(v4) = 1148846080;
  LODWORD(v5) = 1112014848;
  [(UIView *)self systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:0.0 verticalFittingPriority:v4, v5];
  v9 = a3;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGRect)_maps_centeringFrameForView:(id)a3 size:(CGSize)a4 inRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.height;
  v10 = a4.width;
  v11 = CGRectGetMinX(a5) + (a5.size.width - a4.width) * 0.5;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v12 = CGRectGetMinY(v17) + (height - v9) * 0.5;
  v13 = v11;
  v14 = v10;
  v15 = v9;

  return CGRectIntegral(*&v13);
}

- (CGRect)_maps_centeringFrameForView:(id)a3 inRect:(CGRect)a4 options:(int64_t)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = v11;
  if ((v5 & 8) != 0)
  {
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 layoutMargins];
    v46.origin.x = v21 + v14;
    v46.origin.y = v22 + v16;
    v46.size.width = v18 - (v21 + v23);
    v46.size.height = v20 - (v22 + v24);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v44 = CGRectIntersection(v43, v46);
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
  }

  if ((v5 & 2) != 0)
  {
    [v12 systemLayoutSizeFittingSize:{width, height}];
  }

  else if (v5)
  {
    [v12 sizeThatFits:{width, height}];
  }

  else
  {
    [v12 frame];
    v26 = v25;
    v28 = v27;
  }

  v29 = fmin(v26, width);
  v30 = fmin(v28, height);
  if ((v5 & 4) != 0)
  {
    v26 = v29;
    v28 = v30;
  }

  [(UIView *)self _maps_centeringFrameForView:v12 size:v26 inRect:v28, x, y, width, height];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = v32;
  v40 = v34;
  v41 = v36;
  v42 = v38;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (CGRect)_maps_centeringFrameForView:(id)a3 fit:(BOOL)a4 constrain:(BOOL)a5 inRect:(CGRect)a6
{
  if (a5)
  {
    [(UIView *)self _maps_centeringFrameForView:a3 inRect:a4 | 4 options:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
  }

  else
  {
    [(UIView *)self _maps_centeringFrameForView:a3 inRect:a4 options:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (void)_maps_initializeWithAutolayoutCompressedSize
{
  y = CGRectZero.origin.y;
  [(UIView *)self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  [(UIView *)self setBounds:CGRectZero.origin.x, y, v4, v5];

  [(UIView *)self layoutIfNeeded];
}

- (void)_maps_recursivelySetAllowsGroupOpacity:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIView *)self layer];
  [v5 setAllowsGroupOpacity:v3];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(UIView *)self subviews];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) _maps_recursivelySetAllowsGroupOpacity:v3];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

+ (void)_maps_animateForAndromeda:(BOOL)a3 animations:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!a3 && !+[UIView areAnimationsEnabled])
  {
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"BacklightLuminanceDidChangeNotification" object:a1];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1005FEBE4;
  v12[3] = &unk_101623B98;
  v15 = a3;
  v13 = v9;
  v14 = a1;
  v11 = v9;
  [UIView animateWithDuration:0x10000 delay:v8 options:v12 animations:0.25 completion:0.0];
}

- (void)_mapsCar_clearShadow
{
  v3 = +[UIColor clearColor];
  v4 = [v3 CGColor];
  v5 = [(UIView *)self layer];
  [v5 setShadowColor:v4];

  height = CGSizeZero.height;
  v7 = [(UIView *)self layer];
  [v7 setShadowOffset:{CGSizeZero.width, height}];

  v8 = [(UIView *)self layer];
  [v8 setShadowRadius:0.0];

  v9 = [(UIView *)self layer];
  [v9 setShadowOpacity:0.0];

  v10 = [(UIView *)self layer];
  [v10 setShadowPathIsBounds:0];
}

- (void)_mapsCar_updateShadowWithSettings:(id *)a3
{
  v5 = [UIColor colorWithWhite:a3->var3 alpha:1.0];
  v6 = [v5 CGColor];
  v7 = [(UIView *)self layer];
  [v7 setShadowColor:v6];

  width = a3->var2.width;
  height = a3->var2.height;
  v10 = [(UIView *)self layer];
  [v10 setShadowOffset:{width, height}];

  var1 = a3->var1;
  v12 = [(UIView *)self layer];
  [v12 setShadowRadius:var1];

  *&var1 = a3->var0;
  v13 = [(UIView *)self layer];
  LODWORD(v14) = LODWORD(var1);
  [v13 setShadowOpacity:v14];

  v15 = [(UIView *)self layer];
  [v15 setShadowPathIsBounds:1];
}

- (void)_mapsCar_updateShadowWithCornerRadius:(double)a3
{
  v5 = 1045220557;
  v6 = [(UIView *)self traitCollection];
  v11 = 0;
  if ([v6 userInterfaceStyle] == 1)
  {
    v10 = xmmword_1012162B8;
  }

  else
  {
    v10 = xmmword_1012162E0;
    v5 = 1053609165;
  }

  v7[0] = v5;
  *&v7[1] = a3;
  v8 = v10;
  v9 = v11;
  [(UIView *)self _mapsCar_updateShadowWithSettings:v7];
}

- (NSLayoutXAxisAnchor)_maps_rightRHDAnchor
{
  v3 = [(UIView *)self window];
  if ([v3 _car_isHybridInstrumentCluster])
  {
    v4 = [(UIView *)self window];
    v5 = [v4 _car_hybridInstrumentClusterAlignment] == 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = +[MapsExternalDevice sharedInstance];
  v7 = [v6 rightHandDrive];

  if ((v7 & 1) != 0 || v5)
  {
    v8 = [(UIView *)self leftAnchor];
  }

  else
  {
    v8 = [(UIView *)self rightAnchor];
  }

  return v8;
}

- (void)_mapsCar_setBlurViewDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIView *)self viewWithTag:9999];
  [v4 setDisabled:v3];
}

- (id)_mapsCar_injectBlurView:(int64_t)a3
{
  v5 = [CarDynamicBlurView alloc];
  v6 = self;
  if ([(UIView *)v6 conformsToProtocol:&OBJC_PROTOCOL___CarDynamicBlurViewDelegate])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [(CarDynamicBlurView *)v5 initWithBlurViewContext:a3 delegate:v8];
  [(CarDynamicBlurView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v6 addSubview:v9];
  [(UIView *)v6 sendSubviewToBack:v9];
  v10 = [(CarDynamicBlurView *)v9 _maps_constraintsForCenteringInView:v6];
  [(UIView *)v6 addConstraints:v10];

  v11 = [(CarDynamicBlurView *)v9 layer];
  [v11 setShadowPathIsBounds:1];

  return v9;
}

- (id)_addHairlineAtTrailing:(BOOL)a3 topMargin:(double)a4 bottomMargin:(double)a5
{
  v7 = a3;
  v9 = objc_alloc_init(HairlineView);
  [(HairlineView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HairlineView *)v9 setVertical:1];
  [(UIView *)self addSubview:v9];
  v10 = [[NSMutableArray alloc] initWithCapacity:3];
  v11 = [(HairlineView *)v9 topAnchor];
  v12 = [(UIView *)self topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:a4];
  [(HairlineView *)v9 setLeadingMarginConstraint:v13];

  v14 = [(HairlineView *)v9 leadingMarginConstraint];
  [v10 addObject:v14];

  v15 = [(UIView *)self bottomAnchor];
  v16 = [(HairlineView *)v9 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:a5];
  [(HairlineView *)v9 setTrailingMarginConstraint:v17];

  v18 = [(HairlineView *)v9 trailingMarginConstraint];
  [v10 addObject:v18];

  if (v7)
  {
    v19 = [(HairlineView *)v9 trailingAnchor];
    [(UIView *)self trailingAnchor];
  }

  else
  {
    v19 = [(HairlineView *)v9 leadingAnchor];
    [(UIView *)self leadingAnchor];
  }
  v20 = ;
  v21 = [v19 constraintEqualToAnchor:v20];
  [v10 addObject:v21];

  [NSLayoutConstraint activateConstraints:v10];

  return v9;
}

- (id)_addHairlineAtBottom:(BOOL)a3 leadingMargin:(double)a4 trailingMargin:(double)a5
{
  v7 = a3;
  v9 = objc_alloc_init(HairlineView);
  [(HairlineView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self addSubview:v9];
  v10 = [[NSMutableArray alloc] initWithCapacity:3];
  v11 = [(HairlineView *)v9 leadingAnchor];
  v12 = [(UIView *)self leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:a4];
  [(HairlineView *)v9 setLeadingMarginConstraint:v13];

  v14 = [(HairlineView *)v9 leadingMarginConstraint];
  [v10 addObject:v14];

  v15 = [(UIView *)self trailingAnchor];
  v16 = [(HairlineView *)v9 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:a5];
  [(HairlineView *)v9 setTrailingMarginConstraint:v17];

  v18 = [(HairlineView *)v9 trailingMarginConstraint];
  [v10 addObject:v18];

  if (v7)
  {
    v19 = [(HairlineView *)v9 bottomAnchor];
    [(UIView *)self bottomAnchor];
  }

  else
  {
    v19 = [(HairlineView *)v9 topAnchor];
    [(UIView *)self topAnchor];
  }
  v20 = ;
  v21 = [v19 constraintEqualToAnchor:v20];
  [v10 addObject:v21];

  [NSLayoutConstraint activateConstraints:v10];

  return v9;
}

- (id)_mapsCar_insertFocusGuideWithOriginView:(id)a3 toDestinationFocusEnvironments:(id)a4 forDirection:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (([v8 isDescendantOfView:self] & 1) == 0)
  {
    v14 = sub_10008AA10();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_24:
      v10 = 0;
      goto LABEL_25;
    }

    v21 = self;
    if (!v21)
    {
      v26 = @"<nil>";
      goto LABEL_23;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(UIView *)v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_19;
      }
    }

    v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_19:

LABEL_23:
    *buf = 138543362;
    v30 = v26;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Tried to insert focus guide along a originView, but originView and focusGuide don't share a common superview", buf, 0xCu);

    goto LABEL_24;
  }

  v10 = [[CarFocusGuide alloc] initWithOriginView:v8 toDestinationFocusEnvironments:v9 forDirection:a5];
  [(UIView *)self addLayoutGuide:v10];
  v11 = [(CarFocusGuide *)v10 debugView];

  if (v11)
  {
    v12 = [(CarFocusGuide *)v10 debugView];
    [(UIView *)self addSubview:v12];
  }

  v13 = [(CarFocusGuide *)v10 activationConstraints];
  [NSLayoutConstraint activateConstraints:v13];

  v14 = sub_10008AA10();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = self;
    if (!v15)
    {
      v20 = @"<nil>";
      goto LABEL_21;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    if (objc_opt_respondsToSelector())
    {
      v18 = [(UIView *)v15 performSelector:"accessibilityIdentifier"];
      v19 = v18;
      if (v18 && ![v18 isEqualToString:v17])
      {
        v20 = [NSString stringWithFormat:@"%@<%p, %@>", v17, v15, v19];

        goto LABEL_11;
      }
    }

    v20 = [NSString stringWithFormat:@"%@<%p>", v17, v15];
LABEL_11:

LABEL_21:
    v27 = [(CarFocusGuide *)v10 description];
    *buf = 138543618;
    v30 = v20;
    v31 = 2112;
    v32 = v27;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "[%{public}@] Adding focus guide: %@", buf, 0x16u);
  }

LABEL_25:

  return v10;
}

- (id)_maps_carSceneDelegate
{
  v2 = [(UIView *)self window];
  v3 = [v2 windowScene];
  v4 = [v3 delegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_maps_sceneIdentifierString
{
  v2 = [(UIView *)self window];
  v3 = [v2 windowScene];
  v4 = [v3 _sceneIdentifier];

  return v4;
}

- (BOOL)_car_usingLargeTextSizes
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  if (_os_feature_enabled_impl())
  {
    if ([v3 isEqualToString:UIContentSizeCategoryExtraExtraLarge])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isEqualToString:UIContentSizeCategoryExtraExtraExtraLarge];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)_car_dynamicPixelScaleValue
{
  v3 = [(UIView *)self window];
  v4 = [v3 screen];
  if (!v4)
  {
    v9 = 1.0;
LABEL_8:

    return v9;
  }

  v5 = v4;
  v6 = [(UIView *)self window];
  if (([v6 _car_isHybridInstrumentCluster] & 1) == 0)
  {

    v9 = 1.0;
    goto LABEL_7;
  }

  v7 = [(UIView *)self window];
  v8 = [v7 _car_hybridInstrumentClusterPresentationType];

  v9 = 1.0;
  if (!v8)
  {
    v3 = [(UIView *)self window];
    v5 = [v3 screen];
    [v5 _car_dynamicPixelScaleValue];
    v9 = v10;
LABEL_7:

    goto LABEL_8;
  }

  return v9;
}

- (id)_mapsCar_recursiveSubviewsWithClass:(Class)a3
{
  v5 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(UIView *)self subviews];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 _mapsCar_recursiveSubviewsWithClass:a3];
        [v5 addObjectsFromArray:v12];

        if (objc_opt_isKindOfClass())
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

@end