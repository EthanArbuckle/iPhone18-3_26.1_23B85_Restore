@interface UIImage
+ (id)tui_imageWithCGImage:(CGImage *)a3;
- (BOOL)tui_isDeepColor;
- (BOOL)tui_isMulticolorSymbolWithSymbolRenderingMode:(unint64_t)a3;
- (BOOL)tui_isWideGamut;
- (CGImage)tui_CGImage;
- (id)tui_imageMaskWithColor:(id)a3;
- (id)tui_initWithCGImage:(CGImage *)a3 scale:(double)a4;
@end

@implementation UIImage

- (id)tui_imageMaskWithColor:(id)a3
{
  v4 = a3;
  [(UIImage *)self size];
  v6 = v5;
  v8 = v7;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_182560;
  v18[3] = &unk_2638B0;
  v20 = v5;
  v21 = v7;
  v22 = 0;
  v23 = 0;
  v24 = v5;
  v25 = v7;
  v18[4] = self;
  v19 = v4;
  v9 = v4;
  v10 = objc_retainBlock(v18);
  v11 = +[UIGraphicsImageRendererFormat defaultFormat];
  v12 = [[UIGraphicsImageRenderer alloc] initWithSize:v11 format:{v6, v8}];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_182618;
  v16[3] = &unk_2638D8;
  v17 = v10;
  v13 = v10;
  v14 = [v12 imageWithActions:v16];

  return v14;
}

- (BOOL)tui_isWideGamut
{
  if (![(UIImage *)self CGImage])
  {
    return 0;
  }

  ColorSpace = CGImageGetColorSpace([(UIImage *)self CGImage]);
  if (!ColorSpace)
  {
    return 0;
  }

  return CGColorSpaceIsWideGamutRGB(ColorSpace);
}

- (BOOL)tui_isDeepColor
{
  v3 = [(UIImage *)self CGImage];
  if (v3)
  {
    LOBYTE(v3) = CGImageGetBitsPerPixel([(UIImage *)self CGImage]) == 64;
  }

  return v3;
}

- (BOOL)tui_isMulticolorSymbolWithSymbolRenderingMode:(unint64_t)a3
{
  if (a3 - 1 < 2)
  {
    return [(UIImage *)self _isHierarchicalColorSymbolImage];
  }

  if (a3 == 3)
  {
    return [(UIImage *)self _isMultiColorSymbolImage];
  }

  return 0;
}

+ (id)tui_imageWithCGImage:(CGImage *)a3
{
  v3 = [[UIImage alloc] initWithCGImage:a3];

  return v3;
}

- (CGImage)tui_CGImage
{
  v2 = self;

  return [(UIImage *)v2 CGImage];
}

- (id)tui_initWithCGImage:(CGImage *)a3 scale:(double)a4
{
  v4 = [[UIImage alloc] initWithCGImage:a3 scale:0 orientation:a4];

  return v4;
}

@end