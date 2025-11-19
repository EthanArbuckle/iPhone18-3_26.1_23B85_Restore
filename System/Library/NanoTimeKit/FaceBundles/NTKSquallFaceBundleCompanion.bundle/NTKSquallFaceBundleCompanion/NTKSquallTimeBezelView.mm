@interface NTKSquallTimeBezelView
- (NTKSquallTimeBezelView)initWithDevice:(id)a3 progressProvider:(id)a4;
- (id)_logoDimmedColor;
- (id)_logoHighlightedColor;
- (id)_logoTritiumColor;
- (void)_compositeBezelImagesA:(id)a3 andB:(id)a4 clippingPath:(id)a5 context:(CGContext *)a6;
- (void)_renderBezelTemplateForSize:(CGSize)a3 highlighted:(BOOL)a4 tritium:(BOOL)a5 rendererContext:(id)a6;
@end

@implementation NTKSquallTimeBezelView

- (NTKSquallTimeBezelView)initWithDevice:(id)a3 progressProvider:(id)a4
{
  v9.receiver = self;
  v9.super_class = NTKSquallTimeBezelView;
  v4 = [(NTKSquallBezelView *)&v9 initWithDevice:a3 progressProvider:a4];
  if (v4)
  {
    v5 = [NTKSquallFaceBundle imageWithName:@"hermes-logo"];
    v6 = [v5 imageWithRenderingMode:2];
    logoImage = v4->_logoImage;
    v4->_logoImage = v6;
  }

  return v4;
}

- (id)_logoHighlightedColor
{
  v3 = [(NTKSquallBezelView *)self colorPalette];

  if (v3)
  {
    v4 = [(NTKSquallBezelView *)self colorPalette];
    v5 = [v4 logoHighlighted];
  }

  else
  {
    v5 = +[UIColor blackColor];
  }

  return v5;
}

- (id)_logoDimmedColor
{
  v3 = [(NTKSquallBezelView *)self colorPalette];

  if (v3)
  {
    v4 = [(NTKSquallBezelView *)self colorPalette];
    v5 = [v4 logoDimmed];
  }

  else
  {
    v5 = +[UIColor whiteColor];
  }

  return v5;
}

- (id)_logoTritiumColor
{
  v3 = [(NTKSquallBezelView *)self colorPalette];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(NTKSquallBezelView *)self colorPalette];
    v6 = [v5 tritiumPalette];
    v7 = [v6 logoDimmed];
  }

  else
  {
    v7 = +[UIColor whiteColor];
  }

  return v7;
}

- (void)_renderBezelTemplateForSize:(CGSize)a3 highlighted:(BOOL)a4 tritium:(BOOL)a5 rendererContext:(id)a6
{
  v6 = a5;
  v7 = a4;
  height = a3.height;
  width = a3.width;
  v25.receiver = self;
  v25.super_class = NTKSquallTimeBezelView;
  v11 = a6;
  [(NTKSquallBezelView *)&v25 _renderBezelTemplateForSize:v7 highlighted:v6 tritium:v11 rendererContext:width, height];
  v12 = [(NTKSquallBezelView *)self device];
  v13 = sub_3758(v12, v12);
  v15 = v14;

  v16 = [v11 CGContext];
  if (v6)
  {
    v17 = [(NTKSquallTimeBezelView *)self _logoTritiumColor];
  }

  else
  {
    if (v7)
    {
      [(NTKSquallTimeBezelView *)self _logoHighlightedColor];
    }

    else
    {
      [(NTKSquallTimeBezelView *)self _logoDimmedColor];
    }
    v17 = ;
  }

  v18 = v17;
  CGContextSaveGState(v16);
  transform.b = 0.0;
  transform.c = 0.0;
  transform.a = 1.0;
  *&transform.d = xmmword_9A50;
  transform.ty = height;
  CGContextConcatCTM(v16, &transform);
  [(UIImage *)self->_logoImage size];
  v20 = v19;
  [(UIImage *)self->_logoImage size];
  v22 = v21;
  v26.origin.x = v13;
  v26.origin.y = v15;
  v26.size.width = v20;
  v26.size.height = v22;
  CGContextBeginTransparencyLayerWithRect(v16, v26, 0);
  CGContextSetFillColorWithColor(v16, [v18 CGColor]);
  v23 = [(UIImage *)self->_logoImage CGImage];
  v27.origin.x = v13;
  v27.origin.y = v15;
  v27.size.width = v20;
  v27.size.height = v22;
  CGContextDrawImage(v16, v27, v23);
  CGContextSetBlendMode(v16, kCGBlendModeSourceIn);
  v28.origin.x = v13;
  v28.origin.y = v15;
  v28.size.width = v20;
  v28.size.height = v22;
  CGContextFillRect(v16, v28);
  CGContextEndTransparencyLayer(v16);
  transform.b = 0.0;
  transform.c = 0.0;
  transform.a = 1.0;
  *&transform.d = xmmword_9A50;
  transform.ty = height;
  CGContextConcatCTM(v16, &transform);
  CGContextRestoreGState(v16);
}

- (void)_compositeBezelImagesA:(id)a3 andB:(id)a4 clippingPath:(id)a5 context:(CGContext *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(NTKSquallBezelView *)self device];
  sub_3758(v13, v13);
  v15 = v14;

  v26.receiver = self;
  v26.super_class = NTKSquallTimeBezelView;
  [(NTKSquallBezelView *)&v26 _compositeBezelImageA:v10 clippingPath:v12 context:a6];
  [(NTKSquallBezelView *)self progress];
  if (v16 < v15)
  {
    [(NTKSquallBezelView *)self tritiumFraction];
    if (v17 == 0.0)
    {
      [v10 size];
      v19 = v18;
      v21 = v20;
      [(NTKSquallBezelView *)self progress];
      CGContextSetAlpha(a6, 1.0 - v22 / v15);
      CGContextSaveGState(a6);
      transform.b = 0.0;
      transform.c = 0.0;
      transform.a = 1.0;
      *&transform.d = xmmword_9A50;
      transform.ty = v21;
      CGContextConcatCTM(a6, &transform);
      v23 = [v11 CGImage];
      v27.origin.x = 0.0;
      v27.origin.y = 0.0;
      v27.size.width = v19;
      v27.size.height = v21;
      CGContextDrawImage(a6, v27, v23);
      CGContextRestoreGState(a6);
      CGContextSetAlpha(a6, 1.0);
    }
  }

  v24.receiver = self;
  v24.super_class = NTKSquallTimeBezelView;
  [(NTKSquallBezelView *)&v24 _compositeBezelImageB:v11 clippingPath:v12 context:a6];
}

@end