@interface CAActivityIndicatorLayer
- (BOOL)isAnimating;
- (CAActivityIndicatorLayer)initWithColor:(id)a3;
- (double)_alphaValueForStep:(int64_t)a3;
- (double)_spokeLengthForGearWidth:(double)a3;
- (double)_spokeWidthForGearWidth:(double)a3;
- (double)_widthForGearWidth:(double)result;
- (id)imageForStep:(int64_t)a3 withColor:(CGColor *)a4;
- (id)spinnerImages;
- (void)startAnimating;
- (void)stopAnimating;
@end

@implementation CAActivityIndicatorLayer

- (CAActivityIndicatorLayer)initWithColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CAActivityIndicatorLayer;
  v6 = [(CAActivityIndicatorLayer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_spokeFrameRatio = 2;
    v6->_spokeCount = 8;
    objc_storeStrong(&v6->_uiColor, a3);
    v7->_color = [(UIColor *)v7->_uiColor CGColor];
  }

  return v7;
}

- (id)spinnerImages
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__CAActivityIndicatorLayer_spinnerImages__block_invoke;
  v3[3] = &unk_278CCAAA8;
  v3[4] = self;
  v3[5] = a2;
  if (spinnerImages_onceToken != -1)
  {
    dispatch_once(&spinnerImages_onceToken, v3);
  }

  return spinnerImages__spinnerImages;
}

void __41__CAActivityIndicatorLayer_spinnerImages__block_invoke(uint64_t a1)
{
  v2 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging();
    v2 = _asvLogHandle;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_241215000, v2, OS_LOG_TYPE_INFO, "#Inline: Creating spinner images", v9, 2u);
  }

  v3 = objc_opt_new();
  for (i = 0; i != 16; ++i)
  {
    v5 = [*(a1 + 32) imageForStep:i withColor:*(*(a1 + 32) + 64)];
    v6 = [v5 CGImage];

    if (!v6)
    {
      __41__CAActivityIndicatorLayer_spinnerImages__block_invoke_cold_1((a1 + 40), (a1 + 32));
    }

    [v3 addObject:v6];
  }

  v7 = [v3 copy];
  v8 = spinnerImages__spinnerImages;
  spinnerImages__spinnerImages = v7;
}

- (void)startAnimating
{
  v5 = [(CAActivityIndicatorLayer *)self spinnerImages];
  v3 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"contents"];
  [v3 setCalculationMode:*MEMORY[0x277CDA068]];
  [v3 setDuration:0.800000012];
  LODWORD(v4) = 2139095040;
  [v3 setRepeatCount:v4];
  [v3 setValues:v5];
  [(CAActivityIndicatorLayer *)self addAnimation:v3 forKey:@"contents"];
}

- (void)stopAnimating
{
  [(CAActivityIndicatorLayer *)self removeAllAnimations];

  [(CAActivityIndicatorLayer *)self setContents:0];
}

- (BOOL)isAnimating
{
  v2 = [(CAActivityIndicatorLayer *)self animationKeys];
  v3 = [v2 containsObject:@"contents"];

  return v3;
}

- (double)_spokeWidthForGearWidth:(double)a3
{
  v3 = 1.0;
  if (a3 == 14.0)
  {
    return v3;
  }

  if (a3 == 20.0)
  {
    v4 = self->_spokeCount == 12;
    v5 = 1.25;
    v3 = 1.0;
    goto LABEL_4;
  }

  v3 = 1.75;
  if (a3 == 30.0)
  {
    return v3;
  }

  v3 = 2.0;
  if (a3 == 32.0)
  {
    return v3;
  }

  if (a3 == 37.0)
  {
    v4 = self->_spokeCount == 12;
    v5 = 2.5;
    v3 = 1.5;
LABEL_4:
    if (!v4)
    {
      return v5;
    }

    return v3;
  }

  v3 = 3.5;
  if (a3 != 60.0)
  {
    v7 = nearbyint(a3 / 7.5) * 0.5;
    v3 = 1.0;
    if (v7 >= 1.0)
    {
      return v7;
    }
  }

  return v3;
}

- (double)_spokeLengthForGearWidth:(double)a3
{
  if (a3 != 20.0)
  {
    return nearbyint(a3 * 0.25);
  }

  [(CAActivityIndicatorLayer *)self contentsScale:v3];
  return round(v5 * 6.5 / v5);
}

- (double)_widthForGearWidth:(double)result
{
  if (result == 37.0)
  {
    return 35.0;
  }

  return result;
}

- (double)_alphaValueForStep:(int64_t)a3
{
  v5 = [(CAActivityIndicatorLayer *)self _spokeCount];
  v6 = [(CAActivityIndicatorLayer *)self _spokeFrameRatio];
  result = 1.0;
  if ((v6 * v5 - 2) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    result = a3 * (-0.68 / (v6 * v5 / 2)) + 1.0;
    if (result < 0.32)
    {
      return 0.32;
    }
  }

  return result;
}

- (id)imageForStep:(int64_t)a3 withColor:(CGColor *)a4
{
  [(CAActivityIndicatorLayer *)self _spokeWidthForGearWidth:20.0];
  v8 = v7;
  [(CAActivityIndicatorLayer *)self _spokeLengthForGearWidth:20.0];
  v10 = v9;
  spokeCount = self->_spokeCount;
  [(CAActivityIndicatorLayer *)self _widthForGearWidth:20.0];
  v13 = v12 * 0.5;
  v14 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{v12 * 0.5 - v8, v10, v8 + v8, v8}];
  [(CAActivityIndicatorLayer *)self _widthForGearWidth:20.0];
  v16 = v15;
  v33.width = 20.0;
  v33.height = 20.0;
  UIGraphicsBeginImageContextWithOptions(v33, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  NumberOfComponents = CGColorGetNumberOfComponents(a4);
  Components = CGColorGetComponents(a4);
  if (NumberOfComponents)
  {
    v20 = Components[NumberOfComponents - 1];
  }

  else
  {
    v20 = 1.0;
  }

  CGContextSaveGState(CurrentContext);
  CGContextTranslateCTM(CurrentContext, 0.0, 0.0);
  v21 = [(CAActivityIndicatorLayer *)self _spokeFrameRatio];
  v22 = [(CAActivityIndicatorLayer *)self _spokeFrameRatio];
  if (spokeCount >= 1)
  {
    v23 = 0;
    v24 = a3 % v21;
    v25 = a3 / v22;
    do
    {
      v26 = v24 + [(CAActivityIndicatorLayer *)self _spokeFrameRatio]* v25;
      v27 = v26 % ([(CAActivityIndicatorLayer *)self _spokeFrameRatio]* spokeCount);
      CGContextSaveGState(CurrentContext);
      CGContextTranslateCTM(CurrentContext, v13, v13);
      CGContextRotateCTM(CurrentContext, -6.28318531 / spokeCount * v23);
      CGContextTranslateCTM(CurrentContext, -v13, -v13);
      [(CAActivityIndicatorLayer *)self _alphaValueForStep:v27];
      CopyWithAlpha = CGColorCreateCopyWithAlpha(a4, v20 * v28);
      CGContextSetFillColorWithColor(CurrentContext, CopyWithAlpha);
      CGContextSetStrokeColorWithColor(CurrentContext, CopyWithAlpha);
      [v14 fillWithBlendMode:17 alpha:0.85];
      CGContextRestoreGState(CurrentContext);
      ++v23;
      ++v25;
    }

    while (spokeCount != v23);
  }

  CGContextTranslateCTM(CurrentContext, (20.0 - v16) * -0.5, (20.0 - v16) * -0.5);
  CGContextRestoreGState(CurrentContext);
  v30 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v30;
}

void __41__CAActivityIndicatorLayer_spinnerImages__block_invoke_cold_1(void *a1, void *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*a1 object:*a2 file:@"CAActivityIndicatorLayer.m" lineNumber:74 description:@"Expect image to be generated"];
}

@end