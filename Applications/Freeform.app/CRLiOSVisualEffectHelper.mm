@interface CRLiOSVisualEffectHelper
+ (CRLiOSVisualEffectHelper)sharedHelper;
+ (id)blurEffectProvidedByHierarchyOfView:(id)view;
- (CATransform3D)p_touchDownTransformForView:(SEL)view;
- (CGAffineTransform)p_touchDownAffineTransformForView:(SEL)view;
- (CGSize)p_imageSizeForRadius:(double)radius corners:(int64_t)corners capInsets:(UIEdgeInsets *)insets;
- (CRLiOSVisualEffectHelper)init;
- (double)p_lastTouchEventTimestampForView:(id)view;
- (double)p_touchUpSpringSettlingTime;
- (id)applicationKeyColorDarkenedIfNecessary;
- (id)colorForPreset:(int64_t)preset;
- (id)p_applicationKeyColor;
- (id)p_makeTouchDownAnimatorForViews:(id)views;
- (id)p_makeTouchUpAnimatorForViews:(id)views;
- (id)p_touchDownTimingParameters;
- (id)p_touchUpTimingParameters;
- (id)resizableCornerImageWithRadius:(double)radius corners:(int64_t)corners colorPreset:(int64_t)preset forTraitCollection:(id)collection;
- (int64_t)backdropCornersForIndex:(unint64_t)index ofCount:(unint64_t)count axis:(int64_t)axis;
- (unint64_t)p_layerCornerMaskForCorners:(int64_t)corners;
- (void)applyTouchDownAnimationToViews:(id)views;
- (void)applyTouchUpAnimationToViews:(id)views;
- (void)configureBackdropLayer:(id)layer radius:(double)radius corners:(int64_t)corners color:(id)color forTraitCollection:(id)collection;
- (void)configureBackdropLayer:(id)layer radius:(double)radius corners:(int64_t)corners colorPreset:(int64_t)preset forTraitCollection:(id)collection;
- (void)p_applyDragEnterEffectToScrimLayersInViews:(id)views;
- (void)p_applyDragExitEffectToScrimLayersInViews:(id)views;
- (void)p_controlDragEnter:(id)enter event:(id)event;
- (void)p_controlDragExit:(id)exit event:(id)event;
- (void)p_controlTouchCancel:(id)cancel event:(id)event;
- (void)p_controlTouchDown:(id)down event:(id)event;
- (void)p_controlTouchUpInside:(id)inside event:(id)event;
- (void)p_setLastTouchEventTimestamp:(double)timestamp forView:(id)view;
- (void)startHandlingTouchUpDownAnimationsForControl:(id)control withViews:(id)views;
- (void)stopHandlingTouchUpDownAnimationsForControl:(id)control;
@end

@implementation CRLiOSVisualEffectHelper

+ (id)blurEffectProvidedByHierarchyOfView:(id)view
{
  viewCopy = view;
  v10 = viewCopy;
  v11 = 0;
  if (viewCopy)
  {
    v12 = viewCopy;
    do
    {
      v13 = sub_1003035DC(v12, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLiOSVisualEffectProviding);

      v11 = v13;
      if (!v13)
      {
        nextResponder = [v12 nextResponder];
        v11 = sub_1003035DC(nextResponder, 1, v15, v16, v17, v18, v19, v20, &OBJC_PROTOCOL___CRLiOSVisualEffectProviding);
        if (!v11)
        {
          v21 = objc_opt_class();
          v22 = sub_100014370(v21, nextResponder);
          presentationController = [v22 presentationController];
          v11 = sub_1003035DC(presentationController, 1, v24, v25, v26, v27, v28, v29, &OBJC_PROTOCOL___CRLiOSVisualEffectProviding);
        }
      }

      blurEffect = [v11 blurEffect];
      superview = [v12 superview];

      if (blurEffect)
      {
        break;
      }

      v12 = superview;
    }

    while (superview);
  }

  else
  {
    superview = 0;
    blurEffect = 0;
  }

  v32 = blurEffect;

  return blurEffect;
}

+ (CRLiOSVisualEffectHelper)sharedHelper
{
  if (qword_101A35478 != -1)
  {
    sub_10138D104();
  }

  v3 = qword_101A35470;

  return v3;
}

- (CRLiOSVisualEffectHelper)init
{
  v6.receiver = self;
  v6.super_class = CRLiOSVisualEffectHelper;
  v2 = [(CRLiOSVisualEffectHelper *)&v6 init];
  if (v2)
  {
    v3 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    controlsToMonitorForAnimations = v2->_controlsToMonitorForAnimations;
    v2->_controlsToMonitorForAnimations = v3;
  }

  return v2;
}

- (void)configureBackdropLayer:(id)layer radius:(double)radius corners:(int64_t)corners colorPreset:(int64_t)preset forTraitCollection:(id)collection
{
  collectionCopy = collection;
  layerCopy = layer;
  v14 = [(CRLiOSVisualEffectHelper *)self colorForPreset:preset];
  [(CRLiOSVisualEffectHelper *)self configureBackdropLayer:layerCopy radius:corners corners:v14 color:collectionCopy forTraitCollection:radius];
}

- (void)configureBackdropLayer:(id)layer radius:(double)radius corners:(int64_t)corners color:(id)color forTraitCollection:(id)collection
{
  layerCopy = layer;
  colorCopy = color;
  collectionCopy = collection;
  [layerCopy setCornerRadius:radius];
  [layerCopy setCornerCurve:kCACornerCurveContinuous];
  [layerCopy setMaskedCorners:{-[CRLiOSVisualEffectHelper p_layerCornerMaskForCorners:](self, "p_layerCornerMaskForCorners:", corners)}];
  v14 = colorCopy;
  v15 = v14;
  v16 = v14;
  if (collectionCopy)
  {
    v16 = [v14 resolvedColorWithTraitCollection:collectionCopy];
  }

  [layerCopy setBackgroundColor:{objc_msgSend(v16, "CGColor")}];
}

- (id)resizableCornerImageWithRadius:(double)radius corners:(int64_t)corners colorPreset:(int64_t)preset forTraitCollection:(id)collection
{
  v10 = *&UIEdgeInsetsZero.bottom;
  v26 = *&UIEdgeInsetsZero.top;
  v27 = v10;
  collectionCopy = collection;
  [(CRLiOSVisualEffectHelper *)self p_imageSizeForRadius:corners corners:&v26 capInsets:radius];
  v13 = v12;
  v15 = v14;
  v16 = [[UIGraphicsImageRenderer alloc] initWithSize:{v12, v14}];
  v17 = objc_alloc_init(CALayer);
  [v17 setFrame:{0.0, 0.0, v13, v15}];
  [(CRLiOSVisualEffectHelper *)self configureBackdropLayer:v17 radius:corners corners:preset colorPreset:collectionCopy forTraitCollection:radius];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1005262D4;
  v24[3] = &unk_10186C888;
  v25 = v17;
  v18 = v17;
  v19 = [v16 imageWithActions:v24];
  v20 = v19;
  if ((preset - 1) <= 1)
  {
    v21 = [v19 imageWithRenderingMode:2];

    v20 = v21;
  }

  v22 = [v20 resizableImageWithCapInsets:1 resizingMode:{v26, v27}];

  return v22;
}

- (int64_t)backdropCornersForIndex:(unint64_t)index ofCount:(unint64_t)count axis:(int64_t)axis
{
  v8 = sub_1004A48FC();
  v9 = 3;
  if (v8)
  {
    v10 = 4;
  }

  else
  {
    v10 = 3;
  }

  if (!v8)
  {
    v9 = 4;
  }

  if (axis == 1)
  {
    v9 = 2;
  }

  if (count - 1 != index)
  {
    v9 = 0;
  }

  if (axis == 1)
  {
    v10 = 1;
  }

  if (!index)
  {
    v9 = v10;
  }

  if (count >= 2)
  {
    return v9;
  }

  else
  {
    return 5;
  }
}

- (id)colorForPreset:(int64_t)preset
{
  v5 = +[UIColor clearColor];
  switch(preset)
  {
    case 1:
      applicationKeyColorDarkenedIfNecessary = +[UIColor clearColor];
      goto LABEL_32;
    case 2:
      applicationKeyColorDarkenedIfNecessary = +[UIColor blackColor];
      goto LABEL_32;
    case 3:
      applicationKeyColorDarkenedIfNecessary = +[UIColor whiteColor];
      goto LABEL_32;
    case 4:
      applicationKeyColorDarkenedIfNecessary = [UIColor colorWithRed:0.97 green:0.97 blue:0.99 alpha:1.0];
      goto LABEL_32;
    case 5:
      v10 = 0.04;
      goto LABEL_26;
    case 6:
      v10 = 0.06;
      goto LABEL_26;
    case 7:
      v10 = 0.15;
LABEL_26:
      v11 = 0.0;
      goto LABEL_31;
    case 8:
      v11 = 0.0;
      v10 = 0.5;
      goto LABEL_31;
    case 9:
      v10 = 0.05;
      goto LABEL_30;
    case 10:
      v10 = 0.2;
LABEL_30:
      v11 = 1.0;
      goto LABEL_31;
    case 11:
      v11 = 1.0;
      v10 = 0.25;
LABEL_31:
      applicationKeyColorDarkenedIfNecessary = [UIColor colorWithWhite:v11 alpha:v10];
      goto LABEL_32;
    case 12:
      applicationKeyColorDarkenedIfNecessary = [(CRLiOSVisualEffectHelper *)self applicationKeyColorDarkenedIfNecessary];
      goto LABEL_32;
    case 13:
      applicationKeyColorDarkenedIfNecessary2 = [(CRLiOSVisualEffectHelper *)self applicationKeyColorDarkenedIfNecessary];
      applicationKeyColorDarkenedIfNecessary3 = applicationKeyColorDarkenedIfNecessary2;
      v9 = 0.0625;
      goto LABEL_23;
    case 14:
      applicationKeyColorDarkenedIfNecessary2 = [(CRLiOSVisualEffectHelper *)self applicationKeyColorDarkenedIfNecessary];
      applicationKeyColorDarkenedIfNecessary3 = applicationKeyColorDarkenedIfNecessary2;
      v9 = 0.2;
      goto LABEL_23;
    case 15:
      applicationKeyColorDarkenedIfNecessary2 = [(CRLiOSVisualEffectHelper *)self applicationKeyColorDarkenedIfNecessary];
      applicationKeyColorDarkenedIfNecessary3 = applicationKeyColorDarkenedIfNecessary2;
      v9 = 0.25;
      goto LABEL_23;
    case 16:
      applicationKeyColorDarkenedIfNecessary2 = [(CRLiOSVisualEffectHelper *)self applicationKeyColorDarkenedIfNecessary];
      applicationKeyColorDarkenedIfNecessary3 = applicationKeyColorDarkenedIfNecessary2;
      v9 = 0.9;
LABEL_23:
      v12 = [applicationKeyColorDarkenedIfNecessary2 colorWithAlphaComponent:v9];
      goto LABEL_24;
    case 17:
      applicationKeyColorDarkenedIfNecessary = +[UIColor systemBackgroundColor];
      goto LABEL_32;
    case 18:
      applicationKeyColorDarkenedIfNecessary = +[UIColor secondarySystemBackgroundColor];
      goto LABEL_32;
    case 19:
      applicationKeyColorDarkenedIfNecessary = +[UIColor tertiarySystemBackgroundColor];
      goto LABEL_32;
    case 20:
      applicationKeyColorDarkenedIfNecessary = +[UIColor systemGroupedBackgroundColor];
      goto LABEL_32;
    case 21:
      applicationKeyColorDarkenedIfNecessary = +[UIColor secondarySystemGroupedBackgroundColor];
      goto LABEL_32;
    case 22:
      applicationKeyColorDarkenedIfNecessary = +[UIColor tertiarySystemGroupedBackgroundColor];
      goto LABEL_32;
    case 23:
      applicationKeyColorDarkenedIfNecessary = +[UIColor systemGray2Color];
      goto LABEL_32;
    case 24:
      applicationKeyColorDarkenedIfNecessary = +[UIColor systemGray3Color];
      goto LABEL_32;
    case 25:
      applicationKeyColorDarkenedIfNecessary = +[UIColor systemGray4Color];
      goto LABEL_32;
    case 26:
      applicationKeyColorDarkenedIfNecessary = +[UIColor systemGray5Color];
      goto LABEL_32;
    case 27:
      applicationKeyColorDarkenedIfNecessary = +[UIColor systemGray6Color];
      goto LABEL_32;
    case 28:
      applicationKeyColorDarkenedIfNecessary = +[UIColor labelColor];
      goto LABEL_32;
    case 29:
      applicationKeyColorDarkenedIfNecessary = +[UIColor secondaryLabelColor];
      goto LABEL_32;
    case 30:
      applicationKeyColorDarkenedIfNecessary = [UIColor colorNamed:@"tsk_higherContrastGroupBackgroundColor"];
      goto LABEL_32;
    case 31:
      applicationKeyColorDarkenedIfNecessary3 = [(CRLiOSVisualEffectHelper *)self applicationKeyColorDarkenedIfNecessary];
      v17 = 0.0;
      v18 = 0.0;
      v16 = 0.0;
      [applicationKeyColorDarkenedIfNecessary3 getRed:&v18 green:&v17 blue:&v16 alpha:0];
      v12 = [UIColor colorWithRed:v18 * 0.2 + 0.138039196 green:v17 * 0.2 + 0.138039196 blue:v16 * 0.2 + 0.144313598 alpha:1.0];
LABEL_24:
      v13 = v12;

      v5 = v13;
      break;
    case 32:
      applicationKeyColorDarkenedIfNecessary = +[UIColor tertiarySystemFillColor];
      goto LABEL_32;
    case 33:
      applicationKeyColorDarkenedIfNecessary = +[UIColor quaternarySystemFillColor];
LABEL_32:
      v14 = applicationKeyColorDarkenedIfNecessary;

      v5 = v14;
      break;
    default:
      break;
  }

  return v5;
}

- (unint64_t)p_layerCornerMaskForCorners:(int64_t)corners
{
  if ((corners - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_101466610[corners - 1];
  }
}

- (CGSize)p_imageSizeForRadius:(double)radius corners:(int64_t)corners capInsets:(UIEdgeInsets *)insets
{
  radiusCopy4 = radius + radius;
  if (corners == 5)
  {
    radiusCopy5 = radius;
  }

  else
  {
    radiusCopy4 = 1.0;
    radiusCopy5 = 0.0;
  }

  if (corners == 4)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = radiusCopy4;
  }

  if (corners == 4)
  {
    radiusCopy4 = radius;
    radiusCopy6 = radius;
  }

  else
  {
    radiusCopy6 = radiusCopy5;
  }

  if (corners == 4)
  {
    radiusCopy5 = 0.0;
  }

  if (corners == 3)
  {
    v7 = 1.0;
    radiusCopy4 = radius;
    v9 = 0.0;
  }

  else
  {
    v9 = radiusCopy6;
  }

  if (corners == 3)
  {
    radiusCopy5 = radius;
    radiusCopy6 = radius;
  }

  if (corners == 2)
  {
    radiusCopy9 = radius;
  }

  else
  {
    radiusCopy9 = 1.0;
  }

  if (corners == 2)
  {
    radiusCopy8 = radius;
  }

  else
  {
    radiusCopy8 = 0.0;
  }

  if (corners == 1)
  {
    radiusCopy9 = radius;
    radiusCopy10 = radius;
  }

  else
  {
    radiusCopy10 = 0.0;
  }

  if (corners == 1)
  {
    radiusCopy11 = radius;
  }

  else
  {
    radiusCopy11 = radiusCopy8;
  }

  if (corners == 1)
  {
    radiusCopy8 = 0.0;
  }

  if (corners <= 2)
  {
    v14 = radiusCopy9;
  }

  else
  {
    v14 = v7;
  }

  if (corners <= 2)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = radiusCopy4;
  }

  if (corners <= 2)
  {
    v16 = radiusCopy10;
  }

  else
  {
    v16 = v9;
  }

  if (corners <= 2)
  {
    v17 = radiusCopy11;
  }

  else
  {
    v17 = radiusCopy5;
  }

  if (corners <= 2)
  {
    v18 = radiusCopy8;
  }

  else
  {
    v18 = radiusCopy6;
  }

  if (corners <= 2)
  {
    v19 = radiusCopy11;
  }

  else
  {
    v19 = v9;
  }

  insets->top = v16;
  insets->left = v17;
  insets->bottom = v18;
  insets->right = v19;
  result.height = v14;
  result.width = v15;
  return result;
}

- (id)p_applicationKeyColor
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [v2 delegate];
    defaultApplicationKeyColor = [delegate2 defaultApplicationKeyColor];
  }

  else
  {
    defaultApplicationKeyColor = 0;
  }

  return defaultApplicationKeyColor;
}

- (id)applicationKeyColorDarkenedIfNecessary
{
  p_applicationKeyColor = [(CRLiOSVisualEffectHelper *)self p_applicationKeyColor];
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v12 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    if ([p_applicationKeyColor getRed:&v12 green:&v11 blue:&v10 alpha:&v9])
    {
      v3 = [UIColor colorWithRed:v12 green:v11 blue:v10 alpha:v9];

      p_applicationKeyColor = v3;
    }

    v7 = 0.0;
    v8 = 0.0;
    v6 = 0.0;
    if ([p_applicationKeyColor getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v9])
    {
      v4 = [UIColor colorWithHue:v8 saturation:v7 brightness:v6 * 0.8 alpha:v9];

      p_applicationKeyColor = v4;
    }
  }

  return p_applicationKeyColor;
}

- (void)applyTouchDownAnimationToViews:(id)views
{
  viewsCopy = views;
  firstObject = [viewsCopy firstObject];
  if (firstObject)
  {
    v6 = [(CRLiOSVisualEffectHelper *)self p_activeTouchDownAnimatorForView:firstObject];
    v7 = [(CRLiOSVisualEffectHelper *)self p_activeTouchUpAnimatorForView:firstObject];
    if (v6 | v7)
    {
      if (v6 && [v6 state] == 1)
      {
        p_touchDownTimingParameters = [(CRLiOSVisualEffectHelper *)self p_touchDownTimingParameters];
        [v6 continueAnimationWithTimingParameters:p_touchDownTimingParameters durationFactor:0.5];
      }

      else
      {
        if (!v7 || [v7 state] != 1)
        {
          goto LABEL_8;
        }

        [(CRLiOSVisualEffectHelper *)self p_makeTouchDownAnimatorForViews:viewsCopy];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100526AF0;
        v10 = v9[3] = &unk_10186C8B0;
        p_touchDownTimingParameters = v10;
        [v7 addCompletion:v9];
        [v7 stopAnimation:0];
        [v7 finishAnimationAtPosition:2];
      }
    }

    else
    {
      p_touchDownTimingParameters = [(CRLiOSVisualEffectHelper *)self p_makeTouchDownAnimatorForViews:viewsCopy];
      [p_touchDownTimingParameters startAnimation];
    }

LABEL_8:
  }
}

- (void)applyTouchUpAnimationToViews:(id)views
{
  viewsCopy = views;
  firstObject = [viewsCopy firstObject];
  if (firstObject)
  {
    v6 = [(CRLiOSVisualEffectHelper *)self p_activeTouchUpAnimatorForView:firstObject];
    v7 = [(CRLiOSVisualEffectHelper *)self p_activeTouchDownAnimatorForView:firstObject];
    if (!v6)
    {
      v8 = [(CRLiOSVisualEffectHelper *)self p_makeTouchUpAnimatorForViews:viewsCopy];
      v9 = v8;
      if (v7)
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100526C0C;
        v10[3] = &unk_10186C8B0;
        v11 = v8;
        [v7 addCompletion:v10];
      }

      else
      {
        [v8 startAnimation];
      }
    }
  }
}

- (void)startHandlingTouchUpDownAnimationsForControl:(id)control withViews:(id)views
{
  viewsCopy = views;
  controlsToMonitorForAnimations = self->_controlsToMonitorForAnimations;
  controlCopy = control;
  v9 = [(NSMapTable *)controlsToMonitorForAnimations objectForKeyedSubscript:controlCopy];

  if (v9)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138D118();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138D12C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138D1B4();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLiOSVisualEffectHelper startHandlingTouchUpDownAnimationsForControl:withViews:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSVisualEffectProviding.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:539 isFatal:0 description:"Should not start monitoring a control for animations that is already being monitored."];
  }

  [(NSMapTable *)self->_controlsToMonitorForAnimations setObject:viewsCopy forKeyedSubscript:controlCopy];
  [controlCopy addTarget:self action:"p_controlTouchDown:event:" forControlEvents:1];
  [controlCopy addTarget:self action:"p_controlDragEnter:event:" forControlEvents:16];
  [controlCopy addTarget:self action:"p_controlDragExit:event:" forControlEvents:32];
  [controlCopy addTarget:self action:"p_controlTouchCancel:event:" forControlEvents:256];
  [controlCopy addTarget:self action:"p_controlTouchCancel:event:" forControlEvents:128];
  [controlCopy addTarget:self action:"p_controlTouchUpInside:event:" forControlEvents:64];
}

- (void)stopHandlingTouchUpDownAnimationsForControl:(id)control
{
  controlsToMonitorForAnimations = self->_controlsToMonitorForAnimations;
  controlCopy = control;
  v6 = [(NSMapTable *)controlsToMonitorForAnimations objectForKeyedSubscript:controlCopy];

  if (!v6)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138D1DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138D1F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138D278();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLiOSVisualEffectHelper stopHandlingTouchUpDownAnimationsForControl:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSVisualEffectProviding.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:552 isFatal:0 description:"Should not stop monitoring a control for animations that is not already being monitored."];
  }

  [(NSMapTable *)self->_controlsToMonitorForAnimations removeObjectForKey:controlCopy];
  [controlCopy removeTarget:self action:"p_controlTouchDown:event:" forControlEvents:1];
  [controlCopy removeTarget:self action:"p_controlDragEnter:event:" forControlEvents:16];
  [controlCopy removeTarget:self action:"p_controlDragExit:event:" forControlEvents:32];
  [controlCopy removeTarget:self action:"p_controlTouchCancel:event:" forControlEvents:256];
  [controlCopy removeTarget:self action:"p_controlTouchCancel:event:" forControlEvents:128];
  [controlCopy removeTarget:self action:"p_controlTouchUpInside:event:" forControlEvents:64];
}

- (double)p_lastTouchEventTimestampForView:(id)view
{
  v3 = objc_getAssociatedObject(view, off_1019F0EA0);
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)p_setLastTouchEventTimestamp:(double)timestamp forView:(id)view
{
  v5 = off_1019F0EA0;
  viewCopy = view;
  v7 = [NSNumber numberWithDouble:timestamp];
  objc_setAssociatedObject(viewCopy, v5, v7, 0x301);
}

- (id)p_makeTouchDownAnimatorForViews:(id)views
{
  viewsCopy = views;
  v5 = [UIViewPropertyAnimator alloc];
  p_touchDownTimingParameters = [(CRLiOSVisualEffectHelper *)self p_touchDownTimingParameters];
  v7 = [v5 initWithDuration:p_touchDownTimingParameters timingParameters:0.1];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100527408;
  v20[3] = &unk_10183AE28;
  v8 = viewsCopy;
  v21 = v8;
  selfCopy = self;
  [v7 addAnimations:v20];
  firstObject = [v8 firstObject];
  [(CRLiOSVisualEffectHelper *)self p_setActiveTouchDownAnimator:v7 forView:firstObject];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100527580;
  v16[3] = &unk_10186C958;
  v16[4] = self;
  v17 = firstObject;
  v10 = v7;
  v18 = v10;
  v19 = v8;
  v11 = v8;
  v12 = firstObject;
  [v10 addCompletion:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

- (CGAffineTransform)p_touchDownAffineTransformForView:(SEL)view
{
  v4 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v4;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  return self;
}

- (CATransform3D)p_touchDownTransformForView:(SEL)view
{
  v4 = *&CATransform3DIdentity.m33;
  *&retstr->m31 = *&CATransform3DIdentity.m31;
  *&retstr->m33 = v4;
  v5 = *&CATransform3DIdentity.m43;
  *&retstr->m41 = *&CATransform3DIdentity.m41;
  *&retstr->m43 = v5;
  v6 = *&CATransform3DIdentity.m13;
  *&retstr->m11 = *&CATransform3DIdentity.m11;
  *&retstr->m13 = v6;
  v7 = *&CATransform3DIdentity.m23;
  *&retstr->m21 = *&CATransform3DIdentity.m21;
  *&retstr->m23 = v7;
  return self;
}

- (id)p_makeTouchUpAnimatorForViews:(id)views
{
  viewsCopy = views;
  v5 = [UIViewPropertyAnimator alloc];
  [(CRLiOSVisualEffectHelper *)self p_touchUpSpringSettlingTime];
  v7 = v6;
  p_touchUpTimingParameters = [(CRLiOSVisualEffectHelper *)self p_touchUpTimingParameters];
  v9 = [v5 initWithDuration:p_touchUpTimingParameters timingParameters:v7];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1005278A4;
  v22[3] = &unk_10183AE28;
  v10 = viewsCopy;
  v23 = v10;
  selfCopy = self;
  [v9 addAnimations:v22];
  firstObject = [v10 firstObject];
  [(CRLiOSVisualEffectHelper *)self p_setActiveTouchUpAnimator:v9 forView:firstObject];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100527A10;
  v18[3] = &unk_10186C958;
  v18[4] = self;
  v19 = firstObject;
  v12 = v9;
  v20 = v12;
  v21 = v10;
  v13 = v10;
  v14 = firstObject;
  [v12 addCompletion:v18];
  v15 = v21;
  v16 = v12;

  return v12;
}

- (id)p_touchDownTimingParameters
{
  if (qword_101A35488 != -1)
  {
    sub_10138D2A0();
  }

  v3 = qword_101A35480;

  return v3;
}

- (id)p_touchUpTimingParameters
{
  if (qword_101A35498 != -1)
  {
    sub_10138D2B4();
  }

  v3 = qword_101A35490;

  return v3;
}

- (double)p_touchUpSpringSettlingTime
{
  if (qword_101A354A8 != -1)
  {
    sub_10138D2C8();
  }

  return *&qword_101A354A0;
}

- (void)p_applyDragEnterEffectToScrimLayersInViews:(id)views
{
  viewsCopy = views;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [viewsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(viewsCopy);
        }

        v9 = [(CRLiOSVisualEffectHelper *)self p_scrimOwnerForView:*(*(&v11 + 1) + 8 * v8)];
        viewForScrimOpacityAnimation = [v9 viewForScrimOpacityAnimation];
        [viewForScrimOpacityAnimation setHidden:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [viewsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)p_applyDragExitEffectToScrimLayersInViews:(id)views
{
  viewsCopy = views;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [viewsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(viewsCopy);
        }

        v9 = [(CRLiOSVisualEffectHelper *)self p_scrimOwnerForView:*(*(&v11 + 1) + 8 * v8)];
        viewForScrimOpacityAnimation = [v9 viewForScrimOpacityAnimation];
        [viewForScrimOpacityAnimation setHidden:1];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [viewsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)p_controlTouchDown:(id)down event:(id)event
{
  eventCopy = event;
  v7 = [(NSMapTable *)self->_controlsToMonitorForAnimations objectForKeyedSubscript:down];
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138D2DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138D2F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138D378();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSVisualEffectHelper p_controlTouchDown:event:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSVisualEffectProviding.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:722 isFatal:0 description:"Trying to apply animations to a control that's not being monitored."];
  }

  [eventCopy timestamp];
  v12 = v11;
  firstObject = [v7 firstObject];
  [(CRLiOSVisualEffectHelper *)self p_lastTouchEventTimestampForView:firstObject];
  v15 = v14;

  if (v12 <= v15)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138D3A0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138D3C8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138D450();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v19);
    }

    firstObject2 = [NSString stringWithUTF8String:"[CRLiOSVisualEffectHelper p_controlTouchDown:event:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSVisualEffectProviding.m"];
    [CRLAssertionHandler handleFailureInFunction:firstObject2 file:v20 lineNumber:729 isFatal:0 description:"Button animation received out-of-order touch events. This may be due to calling [self refresh] or [tableView reloadData] directly instead of calling [self.refreshingDelegate refreshableInspectorPaneWantsToRefresh:self]."];
  }

  else
  {
    [(CRLiOSVisualEffectHelper *)self applyTouchDownAnimationToViews:v7];
    [eventCopy timestamp];
    v17 = v16;
    firstObject2 = [v7 firstObject];
    [(CRLiOSVisualEffectHelper *)self p_setLastTouchEventTimestamp:firstObject2 forView:v17];
  }
}

- (void)p_controlDragEnter:(id)enter event:(id)event
{
  eventCopy = event;
  v7 = [(NSMapTable *)self->_controlsToMonitorForAnimations objectForKeyedSubscript:enter];
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138D478();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138D48C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138D514();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSVisualEffectHelper p_controlDragEnter:event:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSVisualEffectProviding.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:735 isFatal:0 description:"Trying to apply animations to a control that's not being monitored."];
  }

  [eventCopy timestamp];
  v12 = v11;
  firstObject = [v7 firstObject];
  [(CRLiOSVisualEffectHelper *)self p_lastTouchEventTimestampForView:firstObject];
  v15 = v14;

  if (v12 > v15)
  {
    [(CRLiOSVisualEffectHelper *)self p_applyDragEnterEffectToScrimLayersInViews:v7];
    [eventCopy timestamp];
    v17 = v16;
    firstObject2 = [v7 firstObject];
    [(CRLiOSVisualEffectHelper *)self p_setLastTouchEventTimestamp:firstObject2 forView:v17];
  }
}

- (void)p_controlDragExit:(id)exit event:(id)event
{
  eventCopy = event;
  v7 = [(NSMapTable *)self->_controlsToMonitorForAnimations objectForKeyedSubscript:exit];
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138D53C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138D550();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138D5D8();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSVisualEffectHelper p_controlDragExit:event:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSVisualEffectProviding.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:746 isFatal:0 description:"Trying to apply animations to a control that's not being monitored."];
  }

  [eventCopy timestamp];
  v12 = v11;
  firstObject = [v7 firstObject];
  [(CRLiOSVisualEffectHelper *)self p_lastTouchEventTimestampForView:firstObject];
  v15 = v14;

  if (v12 > v15)
  {
    [(CRLiOSVisualEffectHelper *)self p_applyDragExitEffectToScrimLayersInViews:v7];
    [eventCopy timestamp];
    v17 = v16;
    firstObject2 = [v7 firstObject];
    [(CRLiOSVisualEffectHelper *)self p_setLastTouchEventTimestamp:firstObject2 forView:v17];
  }
}

- (void)p_controlTouchCancel:(id)cancel event:(id)event
{
  eventCopy = event;
  v7 = [(NSMapTable *)self->_controlsToMonitorForAnimations objectForKeyedSubscript:cancel];
  if (v7)
  {
    if (eventCopy)
    {
LABEL_3:
      [eventCopy timestamp];
      v9 = v8;
      goto LABEL_14;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138D600();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138D614();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138D69C();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLiOSVisualEffectHelper p_controlTouchCancel:event:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSVisualEffectProviding.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:757 isFatal:0 description:"Trying to apply animations to a control that's not being monitored."];

    if (eventCopy)
    {
      goto LABEL_3;
    }
  }

  v13 = +[NSProcessInfo processInfo];
  [v13 systemUptime];
  v9 = v14;

LABEL_14:
  firstObject = [v7 firstObject];
  [(CRLiOSVisualEffectHelper *)self p_lastTouchEventTimestampForView:firstObject];
  v17 = v16;

  if (v9 > v17)
  {
    [(CRLiOSVisualEffectHelper *)self applyTouchUpAnimationToViews:v7];
    firstObject2 = [v7 firstObject];
    [(CRLiOSVisualEffectHelper *)self p_setLastTouchEventTimestamp:firstObject2 forView:v9];
  }
}

- (void)p_controlTouchUpInside:(id)inside event:(id)event
{
  controlsToMonitorForAnimations = self->_controlsToMonitorForAnimations;
  eventCopy = event;
  v8 = [(NSMapTable *)controlsToMonitorForAnimations objectForKeyedSubscript:inside];
  if (!v8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138D6C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138D6D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138D760();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLiOSVisualEffectHelper p_controlTouchUpInside:event:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSVisualEffectProviding.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:770 isFatal:0 description:"Trying to apply animations to a control that's not being monitored."];
  }

  [(CRLiOSVisualEffectHelper *)self applyTouchUpAnimationToViews:v8];
  [eventCopy timestamp];
  v13 = v12;

  firstObject = [v8 firstObject];
  [(CRLiOSVisualEffectHelper *)self p_setLastTouchEventTimestamp:firstObject forView:v13];
}

@end