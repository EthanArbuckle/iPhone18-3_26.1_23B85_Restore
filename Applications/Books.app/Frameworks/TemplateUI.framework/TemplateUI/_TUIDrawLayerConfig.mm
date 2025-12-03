@interface _TUIDrawLayerConfig
- (BOOL)clipContainerForCrossfade;
- (BOOL)isEqualToConfig:(id)config;
- (Class)layerClassForSize:(CGSize)size;
- (_TUIDrawLayerConfig)initWithDraw:(id)draw contentsScale:(double)scale renderMode:(unint64_t)mode;
- (void)configureLayer:(id)layer;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
@end

@implementation _TUIDrawLayerConfig

- (_TUIDrawLayerConfig)initWithDraw:(id)draw contentsScale:(double)scale renderMode:(unint64_t)mode
{
  drawCopy = draw;
  v13.receiver = self;
  v13.super_class = _TUIDrawLayerConfig;
  v10 = [(_TUIDrawLayerConfig *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_draw, draw);
    v11->_contentsScale = scale;
    v11->_renderMode = mode;
  }

  return v11;
}

- (void)configureLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy setContentsScale:self->_contentsScale];
  [layerCopy setRasterizationScale:self->_contentsScale];
  if (self->_renderMode == 1)
  {
    [layerCopy setGeometryFlipped:1];
  }

  compositingFilter = [layerCopy compositingFilter];
  compositingFilter2 = [(TUIRenderModelDraw *)self->_draw compositingFilter];
  type = [compositingFilter2 type];
  v7 = type;
  if (compositingFilter == type)
  {
  }

  else
  {
    compositingFilter3 = [layerCopy compositingFilter];
    compositingFilter4 = [(TUIRenderModelDraw *)self->_draw compositingFilter];
    type2 = [compositingFilter4 type];
    v11 = [compositingFilter3 isEqual:type2];

    if (v11)
    {
      goto LABEL_8;
    }

    compositingFilter = [(TUIRenderModelDraw *)self->_draw compositingFilter];
    compositingFilter2 = [compositingFilter type];
    [layerCopy setCompositingFilter:compositingFilter2];
  }

LABEL_8:
  if (objc_opt_respondsToSelector())
  {
    enableContext = [(TUIRenderModelDraw *)self->_draw enableContext];
  }

  else
  {
    enableContext = 0;
  }

  v13 = [NSNumber numberWithBool:enableContext];
  [layerCopy setValue:v13 forKeyPath:@"separatedOptions.enableContext"];

  shadingColor = [(TUIRenderModelDraw *)self->_draw shadingColor];
  v15 = [shadingColor colorWithAlphaComponent:1.0];

  v16 = &kCAContentsFormatA8;
  if (!v15)
  {
    v16 = &kCAContentsFormatRGBA8Uint;
  }

  [layerCopy setContentsFormat:*v16];
  [layerCopy setContentsMultiplyColor:{objc_msgSend(v15, "CGColor")}];
  [layerCopy setNeedsDisplay];
}

- (BOOL)isEqualToConfig:(id)config
{
  configCopy = config;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = configCopy;
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

- (Class)layerClassForSize:(CGSize)size
{
  if (size.width <= 8192.0 && size.height <= 8192.0)
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

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  [layer bounds];
  CGContextTranslateCTM(context, v6, v7);
  draw = self->_draw;

  [(TUIRenderModelDraw *)draw drawInContext:context];
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