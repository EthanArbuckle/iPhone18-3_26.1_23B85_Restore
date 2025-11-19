@interface SCATStyleProvider
+ (id)sharedStyleProvider;
- (BOOL)_useVibrantBlendMode;
- (CGImage)bezelItemBackgroundImage;
- (CGImage)bezelItemSelectedBackgroundImage;
- (CGPath)gridCenterPointPathWithAvailableFrame:(CGRect)a3;
- (CGRect)bezelItemBackgroundImageContentsCenter;
- (CGRect)gridCenterPointFrameWithAvailableFrame:(CGRect)a3;
- (CGSize)gridShadowOffset;
- (CGSize)previewShadowOffset;
- (double)controlArrowHeadLargeSideLength;
- (double)controlArrowHeadSmallSideLength;
- (double)controlArrowOutlineThickness;
- (double)controlArrowThickness;
- (double)cursorRoundedRectCornerRadiusForSize:(CGSize)a3;
- (double)grayFingerInnerCircleInnerRadius;
- (double)grayFingerInnerCircleOuterRadius;
- (double)grayFingerInnerRadius;
- (double)grayFingerOuterRadius;
- (double)pointPickerPromptCornerRadiusForSize:(CGSize)a3;
- (double)rotation90ControlNearestRadius;
- (double)rotationControlCurveRadius;
- (double)scannerCursorOutlineThickness;
- (double)scannerCursorThickness;
- (id)gridCenterPointImageWithAvailableSize:(CGSize)a3;
- (int64_t)menuKnockoutBorderOverlayBlendMode;
- (void)_drawCrosshairWithSize:(CGSize)a3 lineThickness:(double)a4;
- (void)dealloc;
- (void)unloadResources;
@end

@implementation SCATStyleProvider

+ (id)sharedStyleProvider
{
  if (qword_100218BC0 != -1)
  {
    sub_10012ADC0();
  }

  v3 = qword_100218BB8;

  return v3;
}

- (void)dealloc
{
  [(SCATStyleProvider *)self unloadResources];
  v3.receiver = self;
  v3.super_class = SCATStyleProvider;
  [(SCATStyleProvider *)&v3 dealloc];
}

- (BOOL)_useVibrantBlendMode
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _graphicsQuality] != 10;

  return v3 & !UIAccessibilityIsReduceTransparencyEnabled();
}

- (int64_t)menuKnockoutBorderOverlayBlendMode
{
  if ([(SCATStyleProvider *)self _useVibrantBlendMode])
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (double)scannerCursorThickness
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchScannerCursorHighVisibilityEnabled];

  result = 3.0;
  if (v3)
  {
    return 12.0;
  }

  return result;
}

- (double)scannerCursorOutlineThickness
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchScannerCursorHighVisibilityEnabled];

  result = 6.0;
  if (v3)
  {
    return 15.0;
  }

  return result;
}

- (double)cursorRoundedRectCornerRadiusForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (_UISolariumEnabled())
  {

    [(SCATStyleProvider *)self cornerRadiusForSize:width, height];
  }

  else
  {
    v7 = +[AXSettings sharedInstance];
    v8 = [v7 assistiveTouchScannerCursorHighVisibilityEnabled];

    result = 8.0;
    if (v8)
    {
      [(SCATStyleProvider *)self cursorHighVisibilityMultiplier];
      return v9 * 0.5 * 8.0;
    }
  }

  return result;
}

- (double)pointPickerPromptCornerRadiusForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (!_UISolariumEnabled())
  {
    return 10.0;
  }

  [(SCATStyleProvider *)self cornerRadiusForSize:width, height];
  return result;
}

- (CGSize)gridShadowOffset
{
  v2 = 2.0;
  v3 = 2.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_drawCrosshairWithSize:(CGSize)a3 lineThickness:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = (a3.width - a4) * 0.5;
  v8 = 0;
  v9 = height;
  UIRectFill(*(&a4 - 2));
  v11 = 0;
  v12 = width;
  v13 = a4;

  v10 = (height - a4) * 0.5;
  UIRectFill(*&v11);
}

- (CGRect)gridCenterPointFrameWithAvailableFrame:(CGRect)a3
{
  if (a3.size.width >= a3.size.height)
  {
    height = a3.size.height;
  }

  else
  {
    height = a3.size.width;
  }

  v4 = fmin(height * 0.6, 100.0);
  v5.origin.x = a3.origin.x + (a3.size.width - v4) * 0.5;
  v5.origin.y = a3.origin.y + (a3.size.height - v4) * 0.5;
  v5.size.width = v4;
  v5.size.height = v4;
  return CGRectIntegral(v5);
}

- (CGPath)gridCenterPointPathWithAvailableFrame:(CGRect)a3
{
  [(SCATStyleProvider *)self gridCenterPointFrameWithAvailableFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3 * 0.5;
  *&v3 = v3 * 0.5;
  v6 = [UIBezierPath bezierPathWithArcCenter:1 radius:v4 startAngle:v5 * 0.5 endAngle:roundf(*&v3) clockwise:0.0, 6.28318531];
  v7 = [v6 CGPath];

  return v7;
}

- (id)gridCenterPointImageWithAvailableSize:(CGSize)a3
{
  if (a3.width >= a3.height)
  {
    a3.width = a3.height;
  }

  v4 = a3.width * 0.6;
  v5 = a3.width * 0.6;
  if (a3.width * 0.6 >= 100.0)
  {
    cachedGridCenterPointImage = self->_cachedGridCenterPointImage;
    if (cachedGridCenterPointImage)
    {
      v7 = cachedGridCenterPointImage;
      goto LABEL_10;
    }

    v5 = 100.0;
  }

  v8 = +[SCATStyleProvider sharedStyleProvider];
  v9 = +[UIScreen mainScreen];
  [v9 scale];
  v11 = v10;
  v18.width = v5;
  v18.height = v5;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v11);

  v12 = +[UIColor whiteColor];
  [v12 set];

  [v8 scannerCursorOutlineThickness];
  [(SCATStyleProvider *)self _drawCrosshairWithSize:v5 lineThickness:v5, v13];
  v14 = [v8 scannerBlueColor];
  [v14 set];

  [v8 scannerCursorThickness];
  [(SCATStyleProvider *)self _drawCrosshairWithSize:v5 lineThickness:v5, v15];
  v7 = UIGraphicsGetImageFromCurrentImageContext();
  if (v4 >= 100.0)
  {
    objc_storeStrong(&self->_cachedGridCenterPointImage, v7);
  }

  UIGraphicsEndImageContext();

LABEL_10:

  return v7;
}

- (CGSize)previewShadowOffset
{
  v2 = 1.0;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)controlArrowThickness
{
  IsPad = AXDeviceIsPad();
  result = 2.0;
  if (IsPad)
  {
    return 3.0;
  }

  return result;
}

- (double)controlArrowOutlineThickness
{
  IsPad = AXDeviceIsPad();
  result = 2.0;
  if (IsPad)
  {
    return 3.0;
  }

  return result;
}

- (double)controlArrowHeadLargeSideLength
{
  IsPad = AXDeviceIsPad();
  result = 12.0;
  if (IsPad)
  {
    return 18.0;
  }

  return result;
}

- (double)controlArrowHeadSmallSideLength
{
  IsPad = AXDeviceIsPad();
  result = 7.0;
  if (IsPad)
  {
    return 10.5;
  }

  return result;
}

- (double)grayFingerInnerRadius
{
  IsPad = AXDeviceIsPad();
  result = 25.5;
  if (!IsPad)
  {
    return 17.0;
  }

  return result;
}

- (double)grayFingerOuterRadius
{
  [(SCATStyleProvider *)self grayFingerInnerRadius];
  v4 = v3;
  [(SCATStyleProvider *)self controlArrowThickness];
  return v4 + v5;
}

- (double)grayFingerInnerCircleOuterRadius
{
  [(SCATStyleProvider *)self grayFingerInnerCircleInnerRadius];
  v4 = v3;
  [(SCATStyleProvider *)self controlArrowThickness];
  return v4 + v5;
}

- (double)grayFingerInnerCircleInnerRadius
{
  IsPad = AXDeviceIsPad();
  result = 2.0;
  if (IsPad)
  {
    return 3.0;
  }

  return result;
}

- (double)rotationControlCurveRadius
{
  IsPad = AXDeviceIsPad();
  result = 43.5;
  if (!IsPad)
  {
    return 29.0;
  }

  return result;
}

- (double)rotation90ControlNearestRadius
{
  IsPad = AXDeviceIsPad();
  result = 34.0;
  if (IsPad)
  {
    return 51.0;
  }

  return result;
}

- (CGImage)bezelItemBackgroundImage
{
  result = self->_bezelItemBackgroundImage;
  if (!result)
  {
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v7 = [UIColor colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:1.0];
    v8 = [v7 CGColor];
    v9 = [UIColor colorWithRed:0.117647059 green:0.117647059 blue:0.117647059 alpha:1.0];
    self->_bezelItemBackgroundImage = sub_1000C5640(v8, [v9 CGColor], 0.0, 0.0, 200.0, 200.0, CGRectZero.origin.x, y, width, height, 1.0, 5.0, 3.5);

    return self->_bezelItemBackgroundImage;
  }

  return result;
}

- (CGImage)bezelItemSelectedBackgroundImage
{
  result = self->_bezelItemSelectedBackgroundImage;
  if (!result)
  {
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v7 = [UIColor colorWithRed:0.352941185 green:0.352941176 blue:0.352941176 alpha:1.0];
    v8 = [v7 CGColor];
    v9 = [UIColor colorWithRed:0.352941185 green:0.352941176 blue:0.352941176 alpha:1.0];
    self->_bezelItemSelectedBackgroundImage = sub_1000C5640(v8, [v9 CGColor], 0.0, 0.0, 200.0, 200.0, CGRectZero.origin.x, y, width, height, 1.0, 5.0, 3.5);

    return self->_bezelItemSelectedBackgroundImage;
  }

  return result;
}

- (CGRect)bezelItemBackgroundImageContentsCenter
{
  v2 = 0.03;
  v3 = 0.94;
  v4 = 0.03;
  v5 = 0.94;
  result.size.height = v5;
  result.size.width = v3;
  result.origin.y = v4;
  result.origin.x = v2;
  return result;
}

- (void)unloadResources
{
  bezelItemBackgroundImage = self->_bezelItemBackgroundImage;
  if (bezelItemBackgroundImage)
  {
    CGImageRelease(bezelItemBackgroundImage);
    self->_bezelItemBackgroundImage = 0;
  }

  bezelItemSelectedBackgroundImage = self->_bezelItemSelectedBackgroundImage;
  if (bezelItemSelectedBackgroundImage)
  {
    CGImageRelease(bezelItemSelectedBackgroundImage);
    self->_bezelItemSelectedBackgroundImage = 0;
  }

  cachedGridCenterPointImage = self->_cachedGridCenterPointImage;
  self->_cachedGridCenterPointImage = 0;
}

@end