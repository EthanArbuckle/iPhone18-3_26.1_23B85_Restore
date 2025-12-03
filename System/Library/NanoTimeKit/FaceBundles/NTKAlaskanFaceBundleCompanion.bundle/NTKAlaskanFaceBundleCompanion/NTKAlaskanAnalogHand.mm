@interface NTKAlaskanAnalogHand
- (NTKAlaskanAnalogHand)initWithFrame:(CGRect)frame defaultTipLayer:(BOOL)layer defaultTailLayer:(BOOL)tailLayer;
- (void)layoutSubviews;
- (void)setTailLayer:(id)layer;
- (void)setTipLayer:(id)layer;
@end

@implementation NTKAlaskanAnalogHand

- (NTKAlaskanAnalogHand)initWithFrame:(CGRect)frame defaultTipLayer:(BOOL)layer defaultTailLayer:(BOOL)tailLayer
{
  tailLayerCopy = tailLayer;
  layerCopy = layer;
  v24.receiver = self;
  v24.super_class = NTKAlaskanAnalogHand;
  v7 = [(NTKAlaskanAnalogHand *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v7)
  {
    v8 = +[NTKFaceViewRenderingContext sharedRenderingContext];
    device = [v8 device];

    v11 = sub_17380(v10, device);
    v13 = v12;
    if (layerCopy)
    {
      v14 = v11;
      v15 = objc_alloc_init(CALayer);
      tipLayer = v7->_tipLayer;
      v7->_tipLayer = v15;

      [(CALayer *)v7->_tipLayer setFrame:0.0, 0.0, v14, v14];
      [(CALayer *)v7->_tipLayer frame];
      CLKRoundForDevice();
      [(CALayer *)v7->_tipLayer setCornerRadius:?];
      v17 = +[UIColor whiteColor];
      -[CALayer setBackgroundColor:](v7->_tipLayer, "setBackgroundColor:", [v17 CGColor]);

      layer = [(NTKAlaskanAnalogHand *)v7 layer];
      [layer addSublayer:v7->_tipLayer];
    }

    if (tailLayerCopy)
    {
      v19 = objc_alloc_init(CALayer);
      tailLayer = v7->_tailLayer;
      v7->_tailLayer = v19;

      [(CALayer *)v7->_tailLayer setFrame:0.0, 0.0, v13, v13];
      [(CALayer *)v7->_tailLayer frame];
      CLKRoundForDevice();
      [(CALayer *)v7->_tailLayer setCornerRadius:?];
      v21 = +[UIColor whiteColor];
      -[CALayer setBackgroundColor:](v7->_tailLayer, "setBackgroundColor:", [v21 CGColor]);

      layer2 = [(NTKAlaskanAnalogHand *)v7 layer];
      [layer2 addSublayer:v7->_tailLayer];
    }
  }

  return v7;
}

- (void)setTipLayer:(id)layer
{
  layerCopy = layer;
  tipLayer = self->_tipLayer;
  if (tipLayer != layerCopy)
  {
    [(CALayer *)tipLayer removeFromSuperlayer];
    objc_storeStrong(&self->_tipLayer, layer);
    layer = [(NTKAlaskanAnalogHand *)self layer];
    [layer addSublayer:self->_tipLayer];

    tipLayer = [(NTKAlaskanAnalogHand *)self setNeedsLayout];
  }

  _objc_release_x1(tipLayer);
}

- (void)setTailLayer:(id)layer
{
  layerCopy = layer;
  tailLayer = self->_tailLayer;
  if (tailLayer != layerCopy)
  {
    [(CALayer *)tailLayer removeFromSuperlayer];
    objc_storeStrong(&self->_tailLayer, layer);
    layer = [(NTKAlaskanAnalogHand *)self layer];
    [layer addSublayer:self->_tailLayer];

    tailLayer = [(NTKAlaskanAnalogHand *)self setNeedsLayout];
  }

  _objc_release_x1(tailLayer);
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = NTKAlaskanAnalogHand;
  [(NTKAlaskanAnalogHand *)&v21 layoutSubviews];
  v3 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [v3 device];

  [(CALayer *)self->_tipLayer frame];
  v6 = v5;
  v8 = v7;
  [(NTKAlaskanAnalogHand *)self bounds];
  [(CALayer *)self->_tipLayer bounds];
  CLKRoundForDevice();
  v10 = v9;
  [(NTKAlaskanAnalogHand *)self bounds];
  [(CALayer *)self->_tipLayer bounds];
  CLKRoundForDevice();
  [(CALayer *)self->_tipLayer setFrame:v10, v11, v6, v8];
  [(CALayer *)self->_tailLayer frame];
  v13 = v12;
  v15 = v14;
  [(NTKAlaskanAnalogHand *)self bounds];
  v17 = v16 * 0.5;
  [(CALayer *)self->_tailLayer bounds];
  v19 = v17 - v18 * 0.5;
  [(NTKAlaskanAnalogHand *)self bounds];
  [(CALayer *)self->_tailLayer bounds];
  CLKRoundForDevice();
  [(CALayer *)self->_tailLayer setFrame:v19, v20, v13, v15];
}

@end