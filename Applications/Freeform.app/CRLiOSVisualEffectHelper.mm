@interface CRLiOSVisualEffectHelper
+ (CRLiOSVisualEffectHelper)sharedHelper;
+ (id)blurEffectProvidedByHierarchyOfView:(id)a3;
- (CATransform3D)p_touchDownTransformForView:(SEL)a3;
- (CGAffineTransform)p_touchDownAffineTransformForView:(SEL)a3;
- (CGSize)p_imageSizeForRadius:(double)a3 corners:(int64_t)a4 capInsets:(UIEdgeInsets *)a5;
- (CRLiOSVisualEffectHelper)init;
- (double)p_lastTouchEventTimestampForView:(id)a3;
- (double)p_touchUpSpringSettlingTime;
- (id)applicationKeyColorDarkenedIfNecessary;
- (id)colorForPreset:(int64_t)a3;
- (id)p_applicationKeyColor;
- (id)p_makeTouchDownAnimatorForViews:(id)a3;
- (id)p_makeTouchUpAnimatorForViews:(id)a3;
- (id)p_touchDownTimingParameters;
- (id)p_touchUpTimingParameters;
- (id)resizableCornerImageWithRadius:(double)a3 corners:(int64_t)a4 colorPreset:(int64_t)a5 forTraitCollection:(id)a6;
- (int64_t)backdropCornersForIndex:(unint64_t)a3 ofCount:(unint64_t)a4 axis:(int64_t)a5;
- (unint64_t)p_layerCornerMaskForCorners:(int64_t)a3;
- (void)applyTouchDownAnimationToViews:(id)a3;
- (void)applyTouchUpAnimationToViews:(id)a3;
- (void)configureBackdropLayer:(id)a3 radius:(double)a4 corners:(int64_t)a5 color:(id)a6 forTraitCollection:(id)a7;
- (void)configureBackdropLayer:(id)a3 radius:(double)a4 corners:(int64_t)a5 colorPreset:(int64_t)a6 forTraitCollection:(id)a7;
- (void)p_applyDragEnterEffectToScrimLayersInViews:(id)a3;
- (void)p_applyDragExitEffectToScrimLayersInViews:(id)a3;
- (void)p_controlDragEnter:(id)a3 event:(id)a4;
- (void)p_controlDragExit:(id)a3 event:(id)a4;
- (void)p_controlTouchCancel:(id)a3 event:(id)a4;
- (void)p_controlTouchDown:(id)a3 event:(id)a4;
- (void)p_controlTouchUpInside:(id)a3 event:(id)a4;
- (void)p_setLastTouchEventTimestamp:(double)a3 forView:(id)a4;
- (void)startHandlingTouchUpDownAnimationsForControl:(id)a3 withViews:(id)a4;
- (void)stopHandlingTouchUpDownAnimationsForControl:(id)a3;
@end

@implementation CRLiOSVisualEffectHelper

+ (id)blurEffectProvidedByHierarchyOfView:(id)a3
{
  v3 = a3;
  v10 = v3;
  v11 = 0;
  if (v3)
  {
    v12 = v3;
    do
    {
      v13 = sub_1003035DC(v12, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLiOSVisualEffectProviding);

      v11 = v13;
      if (!v13)
      {
        v14 = [v12 nextResponder];
        v11 = sub_1003035DC(v14, 1, v15, v16, v17, v18, v19, v20, &OBJC_PROTOCOL___CRLiOSVisualEffectProviding);
        if (!v11)
        {
          v21 = objc_opt_class();
          v22 = sub_100014370(v21, v14);
          v23 = [v22 presentationController];
          v11 = sub_1003035DC(v23, 1, v24, v25, v26, v27, v28, v29, &OBJC_PROTOCOL___CRLiOSVisualEffectProviding);
        }
      }

      v30 = [v11 blurEffect];
      v31 = [v12 superview];

      if (v30)
      {
        break;
      }

      v12 = v31;
    }

    while (v31);
  }

  else
  {
    v31 = 0;
    v30 = 0;
  }

  v32 = v30;

  return v30;
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

- (void)configureBackdropLayer:(id)a3 radius:(double)a4 corners:(int64_t)a5 colorPreset:(int64_t)a6 forTraitCollection:(id)a7
{
  v12 = a7;
  v13 = a3;
  v14 = [(CRLiOSVisualEffectHelper *)self colorForPreset:a6];
  [(CRLiOSVisualEffectHelper *)self configureBackdropLayer:v13 radius:a5 corners:v14 color:v12 forTraitCollection:a4];
}

- (void)configureBackdropLayer:(id)a3 radius:(double)a4 corners:(int64_t)a5 color:(id)a6 forTraitCollection:(id)a7
{
  v17 = a3;
  v12 = a6;
  v13 = a7;
  [v17 setCornerRadius:a4];
  [v17 setCornerCurve:kCACornerCurveContinuous];
  [v17 setMaskedCorners:{-[CRLiOSVisualEffectHelper p_layerCornerMaskForCorners:](self, "p_layerCornerMaskForCorners:", a5)}];
  v14 = v12;
  v15 = v14;
  v16 = v14;
  if (v13)
  {
    v16 = [v14 resolvedColorWithTraitCollection:v13];
  }

  [v17 setBackgroundColor:{objc_msgSend(v16, "CGColor")}];
}

- (id)resizableCornerImageWithRadius:(double)a3 corners:(int64_t)a4 colorPreset:(int64_t)a5 forTraitCollection:(id)a6
{
  v10 = *&UIEdgeInsetsZero.bottom;
  v26 = *&UIEdgeInsetsZero.top;
  v27 = v10;
  v11 = a6;
  [(CRLiOSVisualEffectHelper *)self p_imageSizeForRadius:a4 corners:&v26 capInsets:a3];
  v13 = v12;
  v15 = v14;
  v16 = [[UIGraphicsImageRenderer alloc] initWithSize:{v12, v14}];
  v17 = objc_alloc_init(CALayer);
  [v17 setFrame:{0.0, 0.0, v13, v15}];
  [(CRLiOSVisualEffectHelper *)self configureBackdropLayer:v17 radius:a4 corners:a5 colorPreset:v11 forTraitCollection:a3];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1005262D4;
  v24[3] = &unk_10186C888;
  v25 = v17;
  v18 = v17;
  v19 = [v16 imageWithActions:v24];
  v20 = v19;
  if ((a5 - 1) <= 1)
  {
    v21 = [v19 imageWithRenderingMode:2];

    v20 = v21;
  }

  v22 = [v20 resizableImageWithCapInsets:1 resizingMode:{v26, v27}];

  return v22;
}

- (int64_t)backdropCornersForIndex:(unint64_t)a3 ofCount:(unint64_t)a4 axis:(int64_t)a5
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

  if (a5 == 1)
  {
    v9 = 2;
  }

  if (a4 - 1 != a3)
  {
    v9 = 0;
  }

  if (a5 == 1)
  {
    v10 = 1;
  }

  if (!a3)
  {
    v9 = v10;
  }

  if (a4 >= 2)
  {
    return v9;
  }

  else
  {
    return 5;
  }
}

- (id)colorForPreset:(int64_t)a3
{
  v5 = +[UIColor clearColor];
  switch(a3)
  {
    case 1:
      v6 = +[UIColor clearColor];
      goto LABEL_32;
    case 2:
      v6 = +[UIColor blackColor];
      goto LABEL_32;
    case 3:
      v6 = +[UIColor whiteColor];
      goto LABEL_32;
    case 4:
      v6 = [UIColor colorWithRed:0.97 green:0.97 blue:0.99 alpha:1.0];
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
      v6 = [UIColor colorWithWhite:v11 alpha:v10];
      goto LABEL_32;
    case 12:
      v6 = [(CRLiOSVisualEffectHelper *)self applicationKeyColorDarkenedIfNecessary];
      goto LABEL_32;
    case 13:
      v7 = [(CRLiOSVisualEffectHelper *)self applicationKeyColorDarkenedIfNecessary];
      v8 = v7;
      v9 = 0.0625;
      goto LABEL_23;
    case 14:
      v7 = [(CRLiOSVisualEffectHelper *)self applicationKeyColorDarkenedIfNecessary];
      v8 = v7;
      v9 = 0.2;
      goto LABEL_23;
    case 15:
      v7 = [(CRLiOSVisualEffectHelper *)self applicationKeyColorDarkenedIfNecessary];
      v8 = v7;
      v9 = 0.25;
      goto LABEL_23;
    case 16:
      v7 = [(CRLiOSVisualEffectHelper *)self applicationKeyColorDarkenedIfNecessary];
      v8 = v7;
      v9 = 0.9;
LABEL_23:
      v12 = [v7 colorWithAlphaComponent:v9];
      goto LABEL_24;
    case 17:
      v6 = +[UIColor systemBackgroundColor];
      goto LABEL_32;
    case 18:
      v6 = +[UIColor secondarySystemBackgroundColor];
      goto LABEL_32;
    case 19:
      v6 = +[UIColor tertiarySystemBackgroundColor];
      goto LABEL_32;
    case 20:
      v6 = +[UIColor systemGroupedBackgroundColor];
      goto LABEL_32;
    case 21:
      v6 = +[UIColor secondarySystemGroupedBackgroundColor];
      goto LABEL_32;
    case 22:
      v6 = +[UIColor tertiarySystemGroupedBackgroundColor];
      goto LABEL_32;
    case 23:
      v6 = +[UIColor systemGray2Color];
      goto LABEL_32;
    case 24:
      v6 = +[UIColor systemGray3Color];
      goto LABEL_32;
    case 25:
      v6 = +[UIColor systemGray4Color];
      goto LABEL_32;
    case 26:
      v6 = +[UIColor systemGray5Color];
      goto LABEL_32;
    case 27:
      v6 = +[UIColor systemGray6Color];
      goto LABEL_32;
    case 28:
      v6 = +[UIColor labelColor];
      goto LABEL_32;
    case 29:
      v6 = +[UIColor secondaryLabelColor];
      goto LABEL_32;
    case 30:
      v6 = [UIColor colorNamed:@"tsk_higherContrastGroupBackgroundColor"];
      goto LABEL_32;
    case 31:
      v8 = [(CRLiOSVisualEffectHelper *)self applicationKeyColorDarkenedIfNecessary];
      v17 = 0.0;
      v18 = 0.0;
      v16 = 0.0;
      [v8 getRed:&v18 green:&v17 blue:&v16 alpha:0];
      v12 = [UIColor colorWithRed:v18 * 0.2 + 0.138039196 green:v17 * 0.2 + 0.138039196 blue:v16 * 0.2 + 0.144313598 alpha:1.0];
LABEL_24:
      v13 = v12;

      v5 = v13;
      break;
    case 32:
      v6 = +[UIColor tertiarySystemFillColor];
      goto LABEL_32;
    case 33:
      v6 = +[UIColor quaternarySystemFillColor];
LABEL_32:
      v14 = v6;

      v5 = v14;
      break;
    default:
      break;
  }

  return v5;
}

- (unint64_t)p_layerCornerMaskForCorners:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_101466610[a3 - 1];
  }
}

- (CGSize)p_imageSizeForRadius:(double)a3 corners:(int64_t)a4 capInsets:(UIEdgeInsets *)a5
{
  v5 = a3 + a3;
  if (a4 == 5)
  {
    v6 = a3;
  }

  else
  {
    v5 = 1.0;
    v6 = 0.0;
  }

  if (a4 == 4)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = v5;
  }

  if (a4 == 4)
  {
    v5 = a3;
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  if (a4 == 4)
  {
    v6 = 0.0;
  }

  if (a4 == 3)
  {
    v7 = 1.0;
    v5 = a3;
    v9 = 0.0;
  }

  else
  {
    v9 = v8;
  }

  if (a4 == 3)
  {
    v6 = a3;
    v8 = a3;
  }

  if (a4 == 2)
  {
    v10 = a3;
  }

  else
  {
    v10 = 1.0;
  }

  if (a4 == 2)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0.0;
  }

  if (a4 == 1)
  {
    v10 = a3;
    v12 = a3;
  }

  else
  {
    v12 = 0.0;
  }

  if (a4 == 1)
  {
    v13 = a3;
  }

  else
  {
    v13 = v11;
  }

  if (a4 == 1)
  {
    v11 = 0.0;
  }

  if (a4 <= 2)
  {
    v14 = v10;
  }

  else
  {
    v14 = v7;
  }

  if (a4 <= 2)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = v5;
  }

  if (a4 <= 2)
  {
    v16 = v12;
  }

  else
  {
    v16 = v9;
  }

  if (a4 <= 2)
  {
    v17 = v13;
  }

  else
  {
    v17 = v6;
  }

  if (a4 <= 2)
  {
    v18 = v11;
  }

  else
  {
    v18 = v8;
  }

  if (a4 <= 2)
  {
    v19 = v13;
  }

  else
  {
    v19 = v9;
  }

  a5->top = v16;
  a5->left = v17;
  a5->bottom = v18;
  a5->right = v19;
  result.height = v14;
  result.width = v15;
  return result;
}

- (id)p_applicationKeyColor
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [v2 delegate];
    v6 = [v5 defaultApplicationKeyColor];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)applicationKeyColorDarkenedIfNecessary
{
  v2 = [(CRLiOSVisualEffectHelper *)self p_applicationKeyColor];
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v12 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    if ([v2 getRed:&v12 green:&v11 blue:&v10 alpha:&v9])
    {
      v3 = [UIColor colorWithRed:v12 green:v11 blue:v10 alpha:v9];

      v2 = v3;
    }

    v7 = 0.0;
    v8 = 0.0;
    v6 = 0.0;
    if ([v2 getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v9])
    {
      v4 = [UIColor colorWithHue:v8 saturation:v7 brightness:v6 * 0.8 alpha:v9];

      v2 = v4;
    }
  }

  return v2;
}

- (void)applyTouchDownAnimationToViews:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  if (v5)
  {
    v6 = [(CRLiOSVisualEffectHelper *)self p_activeTouchDownAnimatorForView:v5];
    v7 = [(CRLiOSVisualEffectHelper *)self p_activeTouchUpAnimatorForView:v5];
    if (v6 | v7)
    {
      if (v6 && [v6 state] == 1)
      {
        v8 = [(CRLiOSVisualEffectHelper *)self p_touchDownTimingParameters];
        [v6 continueAnimationWithTimingParameters:v8 durationFactor:0.5];
      }

      else
      {
        if (!v7 || [v7 state] != 1)
        {
          goto LABEL_8;
        }

        [(CRLiOSVisualEffectHelper *)self p_makeTouchDownAnimatorForViews:v4];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100526AF0;
        v10 = v9[3] = &unk_10186C8B0;
        v8 = v10;
        [v7 addCompletion:v9];
        [v7 stopAnimation:0];
        [v7 finishAnimationAtPosition:2];
      }
    }

    else
    {
      v8 = [(CRLiOSVisualEffectHelper *)self p_makeTouchDownAnimatorForViews:v4];
      [v8 startAnimation];
    }

LABEL_8:
  }
}

- (void)applyTouchUpAnimationToViews:(id)a3
{
  v4 = a3;
  v5 = [v4 firstObject];
  if (v5)
  {
    v6 = [(CRLiOSVisualEffectHelper *)self p_activeTouchUpAnimatorForView:v5];
    v7 = [(CRLiOSVisualEffectHelper *)self p_activeTouchDownAnimatorForView:v5];
    if (!v6)
    {
      v8 = [(CRLiOSVisualEffectHelper *)self p_makeTouchUpAnimatorForViews:v4];
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

- (void)startHandlingTouchUpDownAnimationsForControl:(id)a3 withViews:(id)a4
{
  v6 = a4;
  controlsToMonitorForAnimations = self->_controlsToMonitorForAnimations;
  v8 = a3;
  v9 = [(NSMapTable *)controlsToMonitorForAnimations objectForKeyedSubscript:v8];

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

  [(NSMapTable *)self->_controlsToMonitorForAnimations setObject:v6 forKeyedSubscript:v8];
  [v8 addTarget:self action:"p_controlTouchDown:event:" forControlEvents:1];
  [v8 addTarget:self action:"p_controlDragEnter:event:" forControlEvents:16];
  [v8 addTarget:self action:"p_controlDragExit:event:" forControlEvents:32];
  [v8 addTarget:self action:"p_controlTouchCancel:event:" forControlEvents:256];
  [v8 addTarget:self action:"p_controlTouchCancel:event:" forControlEvents:128];
  [v8 addTarget:self action:"p_controlTouchUpInside:event:" forControlEvents:64];
}

- (void)stopHandlingTouchUpDownAnimationsForControl:(id)a3
{
  controlsToMonitorForAnimations = self->_controlsToMonitorForAnimations;
  v5 = a3;
  v6 = [(NSMapTable *)controlsToMonitorForAnimations objectForKeyedSubscript:v5];

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

  [(NSMapTable *)self->_controlsToMonitorForAnimations removeObjectForKey:v5];
  [v5 removeTarget:self action:"p_controlTouchDown:event:" forControlEvents:1];
  [v5 removeTarget:self action:"p_controlDragEnter:event:" forControlEvents:16];
  [v5 removeTarget:self action:"p_controlDragExit:event:" forControlEvents:32];
  [v5 removeTarget:self action:"p_controlTouchCancel:event:" forControlEvents:256];
  [v5 removeTarget:self action:"p_controlTouchCancel:event:" forControlEvents:128];
  [v5 removeTarget:self action:"p_controlTouchUpInside:event:" forControlEvents:64];
}

- (double)p_lastTouchEventTimestampForView:(id)a3
{
  v3 = objc_getAssociatedObject(a3, off_1019F0EA0);
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)p_setLastTouchEventTimestamp:(double)a3 forView:(id)a4
{
  v5 = off_1019F0EA0;
  v6 = a4;
  v7 = [NSNumber numberWithDouble:a3];
  objc_setAssociatedObject(v6, v5, v7, 0x301);
}

- (id)p_makeTouchDownAnimatorForViews:(id)a3
{
  v4 = a3;
  v5 = [UIViewPropertyAnimator alloc];
  v6 = [(CRLiOSVisualEffectHelper *)self p_touchDownTimingParameters];
  v7 = [v5 initWithDuration:v6 timingParameters:0.1];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100527408;
  v20[3] = &unk_10183AE28;
  v8 = v4;
  v21 = v8;
  v22 = self;
  [v7 addAnimations:v20];
  v9 = [v8 firstObject];
  [(CRLiOSVisualEffectHelper *)self p_setActiveTouchDownAnimator:v7 forView:v9];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100527580;
  v16[3] = &unk_10186C958;
  v16[4] = self;
  v17 = v9;
  v10 = v7;
  v18 = v10;
  v19 = v8;
  v11 = v8;
  v12 = v9;
  [v10 addCompletion:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

- (CGAffineTransform)p_touchDownAffineTransformForView:(SEL)a3
{
  v4 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v4;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  return self;
}

- (CATransform3D)p_touchDownTransformForView:(SEL)a3
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

- (id)p_makeTouchUpAnimatorForViews:(id)a3
{
  v4 = a3;
  v5 = [UIViewPropertyAnimator alloc];
  [(CRLiOSVisualEffectHelper *)self p_touchUpSpringSettlingTime];
  v7 = v6;
  v8 = [(CRLiOSVisualEffectHelper *)self p_touchUpTimingParameters];
  v9 = [v5 initWithDuration:v8 timingParameters:v7];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1005278A4;
  v22[3] = &unk_10183AE28;
  v10 = v4;
  v23 = v10;
  v24 = self;
  [v9 addAnimations:v22];
  v11 = [v10 firstObject];
  [(CRLiOSVisualEffectHelper *)self p_setActiveTouchUpAnimator:v9 forView:v11];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100527A10;
  v18[3] = &unk_10186C958;
  v18[4] = self;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v21 = v10;
  v13 = v10;
  v14 = v11;
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

- (void)p_applyDragEnterEffectToScrimLayersInViews:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [(CRLiOSVisualEffectHelper *)self p_scrimOwnerForView:*(*(&v11 + 1) + 8 * v8)];
        v10 = [v9 viewForScrimOpacityAnimation];
        [v10 setHidden:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)p_applyDragExitEffectToScrimLayersInViews:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [(CRLiOSVisualEffectHelper *)self p_scrimOwnerForView:*(*(&v11 + 1) + 8 * v8)];
        v10 = [v9 viewForScrimOpacityAnimation];
        [v10 setHidden:1];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)p_controlTouchDown:(id)a3 event:(id)a4
{
  v6 = a4;
  v7 = [(NSMapTable *)self->_controlsToMonitorForAnimations objectForKeyedSubscript:a3];
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

  [v6 timestamp];
  v12 = v11;
  v13 = [v7 firstObject];
  [(CRLiOSVisualEffectHelper *)self p_lastTouchEventTimestampForView:v13];
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

    v18 = [NSString stringWithUTF8String:"[CRLiOSVisualEffectHelper p_controlTouchDown:event:]"];
    v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSVisualEffectProviding.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v20 lineNumber:729 isFatal:0 description:"Button animation received out-of-order touch events. This may be due to calling [self refresh] or [tableView reloadData] directly instead of calling [self.refreshingDelegate refreshableInspectorPaneWantsToRefresh:self]."];
  }

  else
  {
    [(CRLiOSVisualEffectHelper *)self applyTouchDownAnimationToViews:v7];
    [v6 timestamp];
    v17 = v16;
    v18 = [v7 firstObject];
    [(CRLiOSVisualEffectHelper *)self p_setLastTouchEventTimestamp:v18 forView:v17];
  }
}

- (void)p_controlDragEnter:(id)a3 event:(id)a4
{
  v6 = a4;
  v7 = [(NSMapTable *)self->_controlsToMonitorForAnimations objectForKeyedSubscript:a3];
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

  [v6 timestamp];
  v12 = v11;
  v13 = [v7 firstObject];
  [(CRLiOSVisualEffectHelper *)self p_lastTouchEventTimestampForView:v13];
  v15 = v14;

  if (v12 > v15)
  {
    [(CRLiOSVisualEffectHelper *)self p_applyDragEnterEffectToScrimLayersInViews:v7];
    [v6 timestamp];
    v17 = v16;
    v18 = [v7 firstObject];
    [(CRLiOSVisualEffectHelper *)self p_setLastTouchEventTimestamp:v18 forView:v17];
  }
}

- (void)p_controlDragExit:(id)a3 event:(id)a4
{
  v6 = a4;
  v7 = [(NSMapTable *)self->_controlsToMonitorForAnimations objectForKeyedSubscript:a3];
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

  [v6 timestamp];
  v12 = v11;
  v13 = [v7 firstObject];
  [(CRLiOSVisualEffectHelper *)self p_lastTouchEventTimestampForView:v13];
  v15 = v14;

  if (v12 > v15)
  {
    [(CRLiOSVisualEffectHelper *)self p_applyDragExitEffectToScrimLayersInViews:v7];
    [v6 timestamp];
    v17 = v16;
    v18 = [v7 firstObject];
    [(CRLiOSVisualEffectHelper *)self p_setLastTouchEventTimestamp:v18 forView:v17];
  }
}

- (void)p_controlTouchCancel:(id)a3 event:(id)a4
{
  v6 = a4;
  v7 = [(NSMapTable *)self->_controlsToMonitorForAnimations objectForKeyedSubscript:a3];
  if (v7)
  {
    if (v6)
    {
LABEL_3:
      [v6 timestamp];
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

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v13 = +[NSProcessInfo processInfo];
  [v13 systemUptime];
  v9 = v14;

LABEL_14:
  v15 = [v7 firstObject];
  [(CRLiOSVisualEffectHelper *)self p_lastTouchEventTimestampForView:v15];
  v17 = v16;

  if (v9 > v17)
  {
    [(CRLiOSVisualEffectHelper *)self applyTouchUpAnimationToViews:v7];
    v18 = [v7 firstObject];
    [(CRLiOSVisualEffectHelper *)self p_setLastTouchEventTimestamp:v18 forView:v9];
  }
}

- (void)p_controlTouchUpInside:(id)a3 event:(id)a4
{
  controlsToMonitorForAnimations = self->_controlsToMonitorForAnimations;
  v7 = a4;
  v8 = [(NSMapTable *)controlsToMonitorForAnimations objectForKeyedSubscript:a3];
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
  [v7 timestamp];
  v13 = v12;

  v14 = [v8 firstObject];
  [(CRLiOSVisualEffectHelper *)self p_setLastTouchEventTimestamp:v14 forView:v13];
}

@end