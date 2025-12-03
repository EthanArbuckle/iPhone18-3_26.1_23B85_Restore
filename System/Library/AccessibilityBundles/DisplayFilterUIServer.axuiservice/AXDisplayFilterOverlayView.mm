@interface AXDisplayFilterOverlayView
- (AXDisplayFilterOverlayView)initWithFrame:(CGRect)frame;
- (void)_setupLayers;
- (void)_updateLensEffect;
- (void)layoutSubviews;
- (void)setFilters:(id)filters;
@end

@implementation AXDisplayFilterOverlayView

- (AXDisplayFilterOverlayView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = AXDisplayFilterOverlayView;
  v3 = [(AXDisplayFilterOverlayView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AXDisplayFilterOverlayView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = +[UIColor clearColor];
    [(AXDisplayFilterOverlayView *)v4 setBackgroundColor:v5];

    [(AXDisplayFilterOverlayView *)v4 setClipsToBounds:1];
    v6 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(AXDisplayFilterOverlayView *)v4 setEffectView:v6];
    [(AXDisplayFilterOverlayView *)v4 addSubview:v6];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v6 ax_pinConstraintsInAllDimensionsToView:v4];
    v8 = objc_alloc_init(CAReplicatorLayer);
    [v8 setAllowsHitTesting:0];
    [v8 setInstanceCount:2];
    [(AXDisplayFilterOverlayView *)v4 setEffectReplicatorLayer:v8];
    layer = [v6 layer];
    [layer addSublayer:v8];

    layer2 = [v6 layer];
    [layer2 setAllowsHitTesting:0];

    v11 = objc_alloc_init(CABackdropLayer);
    [v11 setEnabled:1];
    [v11 setAllowsHitTesting:0];
    [(AXDisplayFilterOverlayView *)v4 setEffectBackdropLayer:v11];
    [v8 addSublayer:v11];
    effectView = [(AXDisplayFilterOverlayView *)v4 effectView];
    [(AXDisplayFilterOverlayView *)v4 sendSubviewToBack:effectView];

    [(AXDisplayFilterOverlayView *)v4 layoutSubviews];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AXDisplayFilterOverlayView;
  [(AXDisplayFilterOverlayView *)&v3 layoutSubviews];
  [(AXDisplayFilterOverlayView *)self _setupLayers];
}

- (void)_setupLayers
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(AXDisplayFilterOverlayView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  effectReplicatorLayer = [(AXDisplayFilterOverlayView *)self effectReplicatorLayer];
  effectBackdropLayer = [(AXDisplayFilterOverlayView *)self effectBackdropLayer];
  [effectReplicatorLayer setBounds:{v4, v6, v8, v10}];
  [effectReplicatorLayer setPosition:{v8, v10}];
  [effectBackdropLayer setBounds:{v4, v6, v8, v10}];
  [effectBackdropLayer setPosition:{CGPointZero.x, CGPointZero.y}];
  +[CATransaction commit];
}

- (void)setFilters:(id)filters
{
  objc_storeStrong(&self->_filters, filters);

  [(AXDisplayFilterOverlayView *)self _updateLensEffect];
}

- (void)_updateLensEffect
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  filters = [(AXDisplayFilterOverlayView *)self filters];
  effectBackdropLayer = [(AXDisplayFilterOverlayView *)self effectBackdropLayer];
  v4 = [filters count];
  v5 = v4 == 0;
  effectReplicatorLayer = [(AXDisplayFilterOverlayView *)self effectReplicatorLayer];
  effectView = effectReplicatorLayer;
  if (v4)
  {
    superlayer = [effectReplicatorLayer superlayer];

    if (superlayer)
    {
      v5 = 0;
      v9 = 1;
      goto LABEL_7;
    }

    effectView = [(AXDisplayFilterOverlayView *)self effectView];
    layer = [effectView layer];
    effectReplicatorLayer2 = [(AXDisplayFilterOverlayView *)self effectReplicatorLayer];
    [layer addSublayer:effectReplicatorLayer2];
  }

  else
  {
    [effectReplicatorLayer removeFromSuperlayer];
  }

  v9 = v4 != 0;

LABEL_7:
  [effectBackdropLayer setHidden:v5];
  [effectBackdropLayer setEnabled:v9];
  [effectBackdropLayer setFilters:filters];
  +[CATransaction commit];
}

@end