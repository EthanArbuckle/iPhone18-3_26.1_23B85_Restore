@interface _TUIDrawLayerConfig
- (BOOL)clipContainerForCrossfade;
- (BOOL)isEqualToConfig:(id)a3;
- (Class)layerClassForSize:(CGSize)a3;
- (_TUIDrawLayerConfig)initWithDraw:(id)a3 contentsScale:(double)a4 renderMode:(unint64_t)a5;
- (void)configureLayer:(id)a3;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
@end

@implementation _TUIDrawLayerConfig

- (_TUIDrawLayerConfig)initWithDraw:(id)a3 contentsScale:(double)a4 renderMode:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _TUIDrawLayerConfig;
  v10 = [(_TUIDrawLayerConfig *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_draw, a3);
    v11->_contentsScale = a4;
    v11->_renderMode = a5;
  }

  return v11;
}

- (void)configureLayer:(id)a3
{
  v17 = a3;
  [v17 setContentsScale:self->_contentsScale];
  [v17 setRasterizationScale:self->_contentsScale];
  if (self->_renderMode == 1)
  {
    [v17 setGeometryFlipped:1];
  }

  v4 = [v17 compositingFilter];
  v5 = [(TUIRenderModelDraw *)self->_draw compositingFilter];
  v6 = [v5 type];
  v7 = v6;
  if (v4 == v6)
  {
  }

  else
  {
    v8 = [v17 compositingFilter];
    v9 = [(TUIRenderModelDraw *)self->_draw compositingFilter];
    v10 = [v9 type];
    v11 = [v8 isEqual:v10];

    if (v11)
    {
      goto LABEL_8;
    }

    v4 = [(TUIRenderModelDraw *)self->_draw compositingFilter];
    v5 = [v4 type];
    [v17 setCompositingFilter:v5];
  }

LABEL_8:
  if (objc_opt_respondsToSelector())
  {
    v12 = [(TUIRenderModelDraw *)self->_draw enableContext];
  }

  else
  {
    v12 = 0;
  }

  v13 = [NSNumber numberWithBool:v12];
  [v17 setValue:v13 forKeyPath:@"separatedOptions.enableContext"];

  v14 = [(TUIRenderModelDraw *)self->_draw shadingColor];
  v15 = [v14 colorWithAlphaComponent:1.0];

  v16 = &kCAContentsFormatA8;
  if (!v15)
  {
    v16 = &kCAContentsFormatRGBA8Uint;
  }

  [v17 setContentsFormat:*v16];
  [v17 setContentsMultiplyColor:{objc_msgSend(v15, "CGColor")}];
  [v17 setNeedsDisplay];
}

- (BOOL)isEqualToConfig:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7 == self)
  {
    v9 = 1;
  }

  else if (v7)
  {
    v9 = [(TUIRenderModelDraw *)self->_draw isEqualToDraw:v7->_draw];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (Class)layerClassForSize:(CGSize)a3
{
  if (a3.width <= 8192.0 && a3.height <= 8192.0)
  {
    [(_TUIDrawLayerConfig *)self layerClass:8192.0];
  }

  else
  {
    objc_opt_class();
  }
  v4 = ;

  return v4;
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  [a3 bounds];
  CGContextTranslateCTM(a4, v6, v7);
  draw = self->_draw;

  [(TUIRenderModelDraw *)draw drawInContext:a4];
}

- (BOOL)clipContainerForCrossfade
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  draw = self->_draw;

  return [(TUIRenderModelDraw *)draw clipContainerForCrossfade];
}

@end