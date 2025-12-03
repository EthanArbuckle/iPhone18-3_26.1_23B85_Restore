@interface NTKSquallTimeBezelView
- (NTKSquallTimeBezelView)initWithDevice:(id)device progressProvider:(id)provider;
- (id)_logoDimmedColor;
- (id)_logoHighlightedColor;
- (id)_logoTritiumColor;
- (void)_compositeBezelImagesA:(id)a andB:(id)b clippingPath:(id)path context:(CGContext *)context;
- (void)_renderBezelTemplateForSize:(CGSize)size highlighted:(BOOL)highlighted tritium:(BOOL)tritium rendererContext:(id)context;
@end

@implementation NTKSquallTimeBezelView

- (NTKSquallTimeBezelView)initWithDevice:(id)device progressProvider:(id)provider
{
  v9.receiver = self;
  v9.super_class = NTKSquallTimeBezelView;
  v4 = [(NTKSquallBezelView *)&v9 initWithDevice:device progressProvider:provider];
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
  colorPalette = [(NTKSquallBezelView *)self colorPalette];

  if (colorPalette)
  {
    colorPalette2 = [(NTKSquallBezelView *)self colorPalette];
    logoHighlighted = [colorPalette2 logoHighlighted];
  }

  else
  {
    logoHighlighted = +[UIColor blackColor];
  }

  return logoHighlighted;
}

- (id)_logoDimmedColor
{
  colorPalette = [(NTKSquallBezelView *)self colorPalette];

  if (colorPalette)
  {
    colorPalette2 = [(NTKSquallBezelView *)self colorPalette];
    logoDimmed = [colorPalette2 logoDimmed];
  }

  else
  {
    logoDimmed = +[UIColor whiteColor];
  }

  return logoDimmed;
}

- (id)_logoTritiumColor
{
  colorPalette = [(NTKSquallBezelView *)self colorPalette];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    colorPalette2 = [(NTKSquallBezelView *)self colorPalette];
    tritiumPalette = [colorPalette2 tritiumPalette];
    logoDimmed = [tritiumPalette logoDimmed];
  }

  else
  {
    logoDimmed = +[UIColor whiteColor];
  }

  return logoDimmed;
}

- (void)_renderBezelTemplateForSize:(CGSize)size highlighted:(BOOL)highlighted tritium:(BOOL)tritium rendererContext:(id)context
{
  tritiumCopy = tritium;
  highlightedCopy = highlighted;
  height = size.height;
  width = size.width;
  v25.receiver = self;
  v25.super_class = NTKSquallTimeBezelView;
  contextCopy = context;
  [(NTKSquallBezelView *)&v25 _renderBezelTemplateForSize:highlightedCopy highlighted:tritiumCopy tritium:contextCopy rendererContext:width, height];
  device = [(NTKSquallBezelView *)self device];
  v13 = sub_3758(device, device);
  v15 = v14;

  cGContext = [contextCopy CGContext];
  if (tritiumCopy)
  {
    _logoTritiumColor = [(NTKSquallTimeBezelView *)self _logoTritiumColor];
  }

  else
  {
    if (highlightedCopy)
    {
      [(NTKSquallTimeBezelView *)self _logoHighlightedColor];
    }

    else
    {
      [(NTKSquallTimeBezelView *)self _logoDimmedColor];
    }
    _logoTritiumColor = ;
  }

  v18 = _logoTritiumColor;
  CGContextSaveGState(cGContext);
  transform.b = 0.0;
  transform.c = 0.0;
  transform.a = 1.0;
  *&transform.d = xmmword_9A50;
  transform.ty = height;
  CGContextConcatCTM(cGContext, &transform);
  [(UIImage *)self->_logoImage size];
  v20 = v19;
  [(UIImage *)self->_logoImage size];
  v22 = v21;
  v26.origin.x = v13;
  v26.origin.y = v15;
  v26.size.width = v20;
  v26.size.height = v22;
  CGContextBeginTransparencyLayerWithRect(cGContext, v26, 0);
  CGContextSetFillColorWithColor(cGContext, [v18 CGColor]);
  cGImage = [(UIImage *)self->_logoImage CGImage];
  v27.origin.x = v13;
  v27.origin.y = v15;
  v27.size.width = v20;
  v27.size.height = v22;
  CGContextDrawImage(cGContext, v27, cGImage);
  CGContextSetBlendMode(cGContext, kCGBlendModeSourceIn);
  v28.origin.x = v13;
  v28.origin.y = v15;
  v28.size.width = v20;
  v28.size.height = v22;
  CGContextFillRect(cGContext, v28);
  CGContextEndTransparencyLayer(cGContext);
  transform.b = 0.0;
  transform.c = 0.0;
  transform.a = 1.0;
  *&transform.d = xmmword_9A50;
  transform.ty = height;
  CGContextConcatCTM(cGContext, &transform);
  CGContextRestoreGState(cGContext);
}

- (void)_compositeBezelImagesA:(id)a andB:(id)b clippingPath:(id)path context:(CGContext *)context
{
  aCopy = a;
  bCopy = b;
  pathCopy = path;
  device = [(NTKSquallBezelView *)self device];
  sub_3758(device, device);
  v15 = v14;

  v26.receiver = self;
  v26.super_class = NTKSquallTimeBezelView;
  [(NTKSquallBezelView *)&v26 _compositeBezelImageA:aCopy clippingPath:pathCopy context:context];
  [(NTKSquallBezelView *)self progress];
  if (v16 < v15)
  {
    [(NTKSquallBezelView *)self tritiumFraction];
    if (v17 == 0.0)
    {
      [aCopy size];
      v19 = v18;
      v21 = v20;
      [(NTKSquallBezelView *)self progress];
      CGContextSetAlpha(context, 1.0 - v22 / v15);
      CGContextSaveGState(context);
      transform.b = 0.0;
      transform.c = 0.0;
      transform.a = 1.0;
      *&transform.d = xmmword_9A50;
      transform.ty = v21;
      CGContextConcatCTM(context, &transform);
      cGImage = [bCopy CGImage];
      v27.origin.x = 0.0;
      v27.origin.y = 0.0;
      v27.size.width = v19;
      v27.size.height = v21;
      CGContextDrawImage(context, v27, cGImage);
      CGContextRestoreGState(context);
      CGContextSetAlpha(context, 1.0);
    }
  }

  v24.receiver = self;
  v24.super_class = NTKSquallTimeBezelView;
  [(NTKSquallBezelView *)&v24 _compositeBezelImageB:bCopy clippingPath:pathCopy context:context];
}

@end