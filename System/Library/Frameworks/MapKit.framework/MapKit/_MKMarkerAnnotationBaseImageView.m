@interface _MKMarkerAnnotationBaseImageView
+ (CGPath)_pathForBaseImageType:(int64_t)a3 radius:(double)a4 tailLength:(double)a5;
+ (id)_gradientImageName:(int64_t)a3;
- (BOOL)_isFillColorClear;
- (_MKMarkerAnnotationBaseImageView)initWithBalloonRadius:(double)a3 tailLength:(double)a4;
- (_MKMarkerAnnotationBaseImageView)initWithFrame:(CGRect)a3;
- (_MKMarkerAnnotationBaseImageView)initWithOvalInSize:(CGSize)a3;
- (id)_renderBaseImage:(CGContext *)a3 inRect:(CGRect)a4 scale:(double)a5;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_fillPath:(CGPath *)a3 inContext:(CGContext *)a4 inRect:(CGRect)a5 scale:(double)a6;
- (void)_renderBaseContent;
- (void)_renderContentUsingGraphicsPath:(CGPath *)a3;
- (void)_renderGradientForRectaloon;
- (void)_setBaseImageContent:(id)a3;
- (void)_strokePath:(CGPath *)a3 inContext:(CGContext *)a4 scale:(double)a5;
@end

@implementation _MKMarkerAnnotationBaseImageView

- (BOOL)_isFillColorClear
{
  v2 = [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent fillColor];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = v2 == v3;

  return v4;
}

- (void)_renderGradientForRectaloon
{
  [(UIView *)self _mapkit_currentScreenScale];
  v4 = v3;
  v5 = [(_MKMarkerAnnotationBaseImageView *)self image];
  v6 = [v5 CGImage];

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  [(_MKMarkerAnnotationBaseImageView *)self bounds];
  v9 = v4 * v8;
  [(_MKMarkerAnnotationBaseImageView *)self bounds];
  v11 = v4 * v10;
  v12 = CGBitmapContextCreate(0, v9, (v4 * v10), 8uLL, 0, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  CGContextResetCTM();
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v9;
  v22.size.height = v11;
  CGContextDrawImage(v12, v22, v6);
  v13 = [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent fillColor];

  if (v13)
  {
    CGContextSaveGState(v12);
    CGContextSetBlendMode(v12, kCGBlendModeSourceIn);
    v14 = [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent fillColor];
    CGContextSetFillColorWithColor(v12, [v14 CGColor]);

    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v9;
    v23.size.height = v11;
    CGContextFillRect(v12, v23);
    CGContextRestoreGState(v12);
  }

  Image = CGBitmapContextCreateImage(v12);
  v16 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:v4];
  [(_MKMarkerAnnotationBaseImageView *)self setImage:v16];
  v17 = [objc_opt_class() _gradientImageName:{-[_MKMarkerAnnotationBaseImageContent baseImageType](self->_baseImageContent, "baseImageType")}];
  if (v17)
  {
    v18 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:v17];
    v19 = [v18 CGImage];
    CGContextSetBlendMode(v12, [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent blendMode]);
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = v9;
    v24.size.height = v11;
    CGContextDrawImage(v12, v24, v19);
    Image = CGBitmapContextCreateImage(v12);
  }

  v20 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:v4];

  CGContextRelease(v12);
  CGImageRelease(Image);
  [(_MKMarkerAnnotationBaseImageView *)self setImage:v20];
}

- (id)_renderBaseImage:(CGContext *)a3 inRect:(CGRect)a4 scale:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = [objc_opt_class() _gradientImageName:{-[_MKMarkerAnnotationBaseImageContent baseImageType](self->_baseImageContent, "baseImageType")}];
  if (_MKLinkedOnOrAfterReleaseSet(3338) && v11 && ![(_MKMarkerAnnotationBaseImageView *)self _isFillColorClear])
  {
    v14 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:v11];
    v15 = [v14 CGImage];
    CGContextSetBlendMode(a3, [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent blendMode]);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    CGContextDrawImage(a3, v21, v15);
  }

  else if (![(_MKMarkerAnnotationBaseImageView *)self _isFillColorClear])
  {
    v12 = [(_MKMarkerAnnotationBaseImageView *)self image];
    v13 = [v12 CGImage];

    CGContextSetBlendMode(a3, kCGBlendModeDestinationAtop);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    CGContextDrawImage(a3, v20, v13);
  }

  Image = CGBitmapContextCreateImage(a3);
  v17 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image];
  CGImageRelease(Image);

  return v17;
}

- (void)_strokePath:(CGPath *)a3 inContext:(CGContext *)a4 scale:(double)a5
{
  v9 = [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent strokeColor];
  if (v9)
  {
    v10 = v9;
    [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent strokeWidth];
    v12 = v11;

    if (v12 > 0.0)
    {
      CGContextSaveGState(a4);
      [(_MKMarkerAnnotationBaseImageView *)self bounds];
      CGContextTranslateCTM(a4, 0.0, v13 * a5);
      CGContextScaleCTM(a4, a5, -a5);
      [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent strokeWidth];
      CGContextSetLineWidth(a4, v14);
      memset(&v33, 0, sizeof(v33));
      [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent strokeWidth];
      v16 = v15 * 0.5;
      [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent strokeWidth];
      CGAffineTransformMakeTranslation(&v33, v16, v17 * 0.5);
      [(_MKMarkerAnnotationBaseImageView *)self bounds];
      v19 = v18;
      [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent strokeWidth];
      v21 = v19 - v20;
      [(_MKMarkerAnnotationBaseImageView *)self bounds];
      v23 = v21 / v22;
      [(_MKMarkerAnnotationBaseImageView *)self bounds];
      v25 = v24;
      [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent strokeWidth];
      v27 = v25 - v26;
      [(_MKMarkerAnnotationBaseImageView *)self bounds];
      v31 = v33;
      CGAffineTransformScale(&v32, &v31, v23, v27 / v28);
      v33 = v32;
      v29 = MEMORY[0x1A58E8C70](a3, &v33);
      CGContextAddPath(a4, v29);
      v30 = [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent strokeColor];
      CGContextSetStrokeColorWithColor(a4, [v30 CGColor]);

      CGContextStrokePath(a4);
      CGPathRelease(v29);
      CGContextRestoreGState(a4);
    }
  }
}

- (void)_fillPath:(CGPath *)a3 inContext:(CGContext *)a4 inRect:(CGRect)a5 scale:(double)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  CGContextSaveGState(a4);
  [(_MKMarkerAnnotationBaseImageView *)self bounds];
  CGContextTranslateCTM(a4, 0.0, v14 * a6);
  CGContextScaleCTM(a4, a6, -a6);
  CGContextAddPath(a4, a3);
  CGContextClip(a4);
  v15 = [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent fillColor];
  CGContextSetFillColorWithColor(a4, [v15 CGColor]);

  CGContextFillPath(a4);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CGContextFillRect(a4, v17);

  CGContextRestoreGState(a4);
}

- (void)_renderContentUsingGraphicsPath:(CGPath *)a3
{
  [(UIView *)self _mapkit_currentScreenScale];
  v6 = v5;
  [(_MKMarkerAnnotationBaseImageView *)self bounds];
  v8 = v6 * v7;
  [(_MKMarkerAnnotationBaseImageView *)self bounds];
  v10 = v6 * v9;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v12 = CGBitmapContextCreate(0, v8, v10, 8uLL, 0, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  [(_MKMarkerAnnotationBaseImageView *)self _fillPath:a3 inContext:v12 inRect:0.0 scale:0.0, v8, v10, v6];
  [(_MKMarkerAnnotationBaseImageView *)self _strokePath:a3 inContext:v12 scale:v6];
  v13 = [(_MKMarkerAnnotationBaseImageView *)self _renderBaseImage:v12 inRect:0.0 scale:0.0, v8, v10, v6];
  CGContextRelease(v12);
  [(_MKMarkerAnnotationBaseImageView *)self setImage:v13];
}

- (void)_renderBaseContent
{
  baseImageContent = self->_baseImageContent;
  if (baseImageContent)
  {
    if ([(_MKMarkerAnnotationBaseImageContent *)baseImageContent baseImageType]== 6)
    {

      [(_MKMarkerAnnotationBaseImageView *)self _renderGradientForRectaloon];
    }

    else
    {
      [(_MKMarkerAnnotationBaseImageView *)self bounds];
      v5 = v4;
      if ([(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent baseImageType]&& [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent baseImageType]!= 1)
      {
        v5 = v5 * 0.5;
      }

      v6 = [objc_opt_class() _pathForBaseImageType:-[_MKMarkerAnnotationBaseImageContent baseImageType](self->_baseImageContent radius:"baseImageType") tailLength:{v5, self->_tailLength}];
      [(_MKMarkerAnnotationBaseImageView *)self _renderContentUsingGraphicsPath:v6];

      CGPathRelease(v6);
    }
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  [(_MKMarkerAnnotationBaseImageView *)self _renderBaseContent];
  v3.receiver = self;
  v3.super_class = _MKMarkerAnnotationBaseImageView;
  [(_MKMarkerAnnotationBaseImageView *)&v3 _dynamicUserInterfaceTraitDidChange];
}

- (void)_setBaseImageContent:(id)a3
{
  objc_storeStrong(&self->_baseImageContent, a3);
  v5 = a3;
  v8 = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  v6 = MEMORY[0x1E69DD1B8];
  v7 = [(_MKMarkerAnnotationBaseImageView *)self traitCollection];
  [v6 _setCurrentTraitCollection:v7];

  [(_MKMarkerAnnotationBaseImageView *)self _renderBaseContent];
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v8];
}

- (_MKMarkerAnnotationBaseImageView)initWithOvalInSize:(CGSize)a3
{
  result = [(_MKMarkerAnnotationBaseImageView *)self initWithFrame:0.0, 0.0, a3.width, a3.height];
  if (result)
  {
    result->_tailLength = 0.0;
  }

  return result;
}

- (_MKMarkerAnnotationBaseImageView)initWithBalloonRadius:(double)a3 tailLength:(double)a4
{
  result = [(_MKMarkerAnnotationBaseImageView *)self initWithFrame:0.0, 0.0, a3 + a3, a4 + a3 * 2.0];
  if (result)
  {
    result->_tailLength = a4;
  }

  return result;
}

- (_MKMarkerAnnotationBaseImageView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _MKMarkerAnnotationBaseImageView;
  v3 = [(_MKMarkerAnnotationBaseImageView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

+ (id)_gradientImageName:(int64_t)a3
{
  if ((a3 - 1) > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E76CD9E8 + a3 - 1);
  }
}

+ (CGPath)_pathForBaseImageType:(int64_t)a3 radius:(double)a4 tailLength:(double)a5
{
  v6 = a4;
  v16[2] = *MEMORY[0x1E69E9840];
  if (_pathForBaseImageType_radius_tailLength__onceToken != -1)
  {
    dispatch_once(&_pathForBaseImageType_radius_tailLength__onceToken, &__block_literal_global_46635);
  }

  *&a4 = v6;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:a4];
  v16[0] = v8;
  *&v9 = a5;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

  v12 = [_pathForBaseImageType_radius_tailLength__sharedGraphicsPathDictionary objectForKeyedSubscript:v11];

  if (!v12)
  {
    if (a3 > 5)
    {
      v12 = 0;
    }

    else
    {
      if (((1 << a3) & 3) != 0)
      {
        v17.origin.x = 0.0;
        v17.origin.y = 0.0;
        v17.size.width = v6;
        v17.size.height = v6;
        v13 = CGPathCreateWithEllipseInRect(v17, 0);
      }

      else if (((1 << a3) & 0xC) != 0)
      {
        v13 = [_MKBezierPathView _createPathForBalloonRadius:v6 tailLength:a5];
      }

      else
      {
        v13 = [_MKBezierPathView _createSmoothTransitionPathForBalloonRadius:v6 tailLength:a5];
      }

      v12 = v13;
    }

    [_pathForBaseImageType_radius_tailLength__sharedGraphicsPathDictionary setObject:v12 forKey:v11];
    CGPathRelease(v12);
  }

  v14 = MEMORY[0x1A58E8C40](v12);

  return v14;
}

@end