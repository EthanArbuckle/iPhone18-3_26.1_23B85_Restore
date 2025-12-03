@interface _MKMarkerAnnotationBaseImageView
+ (CGPath)_pathForBaseImageType:(int64_t)type radius:(double)radius tailLength:(double)length;
+ (id)_gradientImageName:(int64_t)name;
- (BOOL)_isFillColorClear;
- (_MKMarkerAnnotationBaseImageView)initWithBalloonRadius:(double)radius tailLength:(double)length;
- (_MKMarkerAnnotationBaseImageView)initWithFrame:(CGRect)frame;
- (_MKMarkerAnnotationBaseImageView)initWithOvalInSize:(CGSize)size;
- (id)_renderBaseImage:(CGContext *)image inRect:(CGRect)rect scale:(double)scale;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_fillPath:(CGPath *)path inContext:(CGContext *)context inRect:(CGRect)rect scale:(double)scale;
- (void)_renderBaseContent;
- (void)_renderContentUsingGraphicsPath:(CGPath *)path;
- (void)_renderGradientForRectaloon;
- (void)_setBaseImageContent:(id)content;
- (void)_strokePath:(CGPath *)path inContext:(CGContext *)context scale:(double)scale;
@end

@implementation _MKMarkerAnnotationBaseImageView

- (BOOL)_isFillColorClear
{
  fillColor = [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent fillColor];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v4 = fillColor == clearColor;

  return v4;
}

- (void)_renderGradientForRectaloon
{
  [(UIView *)self _mapkit_currentScreenScale];
  v4 = v3;
  image = [(_MKMarkerAnnotationBaseImageView *)self image];
  cGImage = [image CGImage];

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
  CGContextDrawImage(v12, v22, cGImage);
  fillColor = [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent fillColor];

  if (fillColor)
  {
    CGContextSaveGState(v12);
    CGContextSetBlendMode(v12, kCGBlendModeSourceIn);
    fillColor2 = [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent fillColor];
    CGContextSetFillColorWithColor(v12, [fillColor2 CGColor]);

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
    cGImage2 = [v18 CGImage];
    CGContextSetBlendMode(v12, [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent blendMode]);
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = v9;
    v24.size.height = v11;
    CGContextDrawImage(v12, v24, cGImage2);
    Image = CGBitmapContextCreateImage(v12);
  }

  v20 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:v4];

  CGContextRelease(v12);
  CGImageRelease(Image);
  [(_MKMarkerAnnotationBaseImageView *)self setImage:v20];
}

- (id)_renderBaseImage:(CGContext *)image inRect:(CGRect)rect scale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = [objc_opt_class() _gradientImageName:{-[_MKMarkerAnnotationBaseImageContent baseImageType](self->_baseImageContent, "baseImageType")}];
  if (_MKLinkedOnOrAfterReleaseSet(3338) && v11 && ![(_MKMarkerAnnotationBaseImageView *)self _isFillColorClear])
  {
    v14 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:v11];
    cGImage = [v14 CGImage];
    CGContextSetBlendMode(image, [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent blendMode]);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    CGContextDrawImage(image, v21, cGImage);
  }

  else if (![(_MKMarkerAnnotationBaseImageView *)self _isFillColorClear])
  {
    image = [(_MKMarkerAnnotationBaseImageView *)self image];
    cGImage2 = [image CGImage];

    CGContextSetBlendMode(image, kCGBlendModeDestinationAtop);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    CGContextDrawImage(image, v20, cGImage2);
  }

  Image = CGBitmapContextCreateImage(image);
  v17 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image];
  CGImageRelease(Image);

  return v17;
}

- (void)_strokePath:(CGPath *)path inContext:(CGContext *)context scale:(double)scale
{
  strokeColor = [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent strokeColor];
  if (strokeColor)
  {
    v10 = strokeColor;
    [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent strokeWidth];
    v12 = v11;

    if (v12 > 0.0)
    {
      CGContextSaveGState(context);
      [(_MKMarkerAnnotationBaseImageView *)self bounds];
      CGContextTranslateCTM(context, 0.0, v13 * scale);
      CGContextScaleCTM(context, scale, -scale);
      [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent strokeWidth];
      CGContextSetLineWidth(context, v14);
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
      v29 = MEMORY[0x1A58E8C70](path, &v33);
      CGContextAddPath(context, v29);
      strokeColor2 = [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent strokeColor];
      CGContextSetStrokeColorWithColor(context, [strokeColor2 CGColor]);

      CGContextStrokePath(context);
      CGPathRelease(v29);
      CGContextRestoreGState(context);
    }
  }
}

- (void)_fillPath:(CGPath *)path inContext:(CGContext *)context inRect:(CGRect)rect scale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(context);
  [(_MKMarkerAnnotationBaseImageView *)self bounds];
  CGContextTranslateCTM(context, 0.0, v14 * scale);
  CGContextScaleCTM(context, scale, -scale);
  CGContextAddPath(context, path);
  CGContextClip(context);
  fillColor = [(_MKMarkerAnnotationBaseImageContent *)self->_baseImageContent fillColor];
  CGContextSetFillColorWithColor(context, [fillColor CGColor]);

  CGContextFillPath(context);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CGContextFillRect(context, v17);

  CGContextRestoreGState(context);
}

- (void)_renderContentUsingGraphicsPath:(CGPath *)path
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
  [(_MKMarkerAnnotationBaseImageView *)self _fillPath:path inContext:v12 inRect:0.0 scale:0.0, v8, v10, v6];
  [(_MKMarkerAnnotationBaseImageView *)self _strokePath:path inContext:v12 scale:v6];
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

- (void)_setBaseImageContent:(id)content
{
  objc_storeStrong(&self->_baseImageContent, content);
  contentCopy = content;
  _currentTraitCollection = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  v6 = MEMORY[0x1E69DD1B8];
  traitCollection = [(_MKMarkerAnnotationBaseImageView *)self traitCollection];
  [v6 _setCurrentTraitCollection:traitCollection];

  [(_MKMarkerAnnotationBaseImageView *)self _renderBaseContent];
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:_currentTraitCollection];
}

- (_MKMarkerAnnotationBaseImageView)initWithOvalInSize:(CGSize)size
{
  result = [(_MKMarkerAnnotationBaseImageView *)self initWithFrame:0.0, 0.0, size.width, size.height];
  if (result)
  {
    result->_tailLength = 0.0;
  }

  return result;
}

- (_MKMarkerAnnotationBaseImageView)initWithBalloonRadius:(double)radius tailLength:(double)length
{
  result = [(_MKMarkerAnnotationBaseImageView *)self initWithFrame:0.0, 0.0, radius + radius, length + radius * 2.0];
  if (result)
  {
    result->_tailLength = length;
  }

  return result;
}

- (_MKMarkerAnnotationBaseImageView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _MKMarkerAnnotationBaseImageView;
  v3 = [(_MKMarkerAnnotationBaseImageView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

+ (id)_gradientImageName:(int64_t)name
{
  if ((name - 1) > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E76CD9E8 + name - 1);
  }
}

+ (CGPath)_pathForBaseImageType:(int64_t)type radius:(double)radius tailLength:(double)length
{
  radiusCopy = radius;
  v16[2] = *MEMORY[0x1E69E9840];
  if (_pathForBaseImageType_radius_tailLength__onceToken != -1)
  {
    dispatch_once(&_pathForBaseImageType_radius_tailLength__onceToken, &__block_literal_global_46635);
  }

  *&radius = radiusCopy;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:radius];
  v16[0] = v8;
  *&v9 = length;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

  v12 = [_pathForBaseImageType_radius_tailLength__sharedGraphicsPathDictionary objectForKeyedSubscript:v11];

  if (!v12)
  {
    if (type > 5)
    {
      v12 = 0;
    }

    else
    {
      if (((1 << type) & 3) != 0)
      {
        v17.origin.x = 0.0;
        v17.origin.y = 0.0;
        v17.size.width = radiusCopy;
        v17.size.height = radiusCopy;
        v13 = CGPathCreateWithEllipseInRect(v17, 0);
      }

      else if (((1 << type) & 0xC) != 0)
      {
        v13 = [_MKBezierPathView _createPathForBalloonRadius:radiusCopy tailLength:length];
      }

      else
      {
        v13 = [_MKBezierPathView _createSmoothTransitionPathForBalloonRadius:radiusCopy tailLength:length];
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