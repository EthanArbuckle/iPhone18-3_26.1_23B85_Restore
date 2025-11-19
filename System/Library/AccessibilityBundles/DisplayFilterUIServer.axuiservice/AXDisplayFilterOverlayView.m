@interface AXDisplayFilterOverlayView
- (AXDisplayFilterOverlayView)initWithFrame:(CGRect)a3;
- (void)_setupLayers;
- (void)_updateLensEffect;
- (void)layoutSubviews;
- (void)setFilters:(id)a3;
@end

@implementation AXDisplayFilterOverlayView

- (AXDisplayFilterOverlayView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = AXDisplayFilterOverlayView;
  v3 = [(AXDisplayFilterOverlayView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v9 = [v6 layer];
    [v9 addSublayer:v8];

    v10 = [v6 layer];
    [v10 setAllowsHitTesting:0];

    v11 = objc_alloc_init(CABackdropLayer);
    [v11 setEnabled:1];
    [v11 setAllowsHitTesting:0];
    [(AXDisplayFilterOverlayView *)v4 setEffectBackdropLayer:v11];
    [v8 addSublayer:v11];
    v12 = [(AXDisplayFilterOverlayView *)v4 effectView];
    [(AXDisplayFilterOverlayView *)v4 sendSubviewToBack:v12];

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
  v12 = [(AXDisplayFilterOverlayView *)self effectReplicatorLayer];
  v11 = [(AXDisplayFilterOverlayView *)self effectBackdropLayer];
  [v12 setBounds:{v4, v6, v8, v10}];
  [v12 setPosition:{v8, v10}];
  [v11 setBounds:{v4, v6, v8, v10}];
  [v11 setPosition:{CGPointZero.x, CGPointZero.y}];
  +[CATransaction commit];
}

- (void)setFilters:(id)a3
{
  objc_storeStrong(&self->_filters, a3);

  [(AXDisplayFilterOverlayView *)self _updateLensEffect];
}

- (void)_updateLensEffect
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v12 = [(AXDisplayFilterOverlayView *)self filters];
  v3 = [(AXDisplayFilterOverlayView *)self effectBackdropLayer];
  v4 = [v12 count];
  v5 = v4 == 0;
  v6 = [(AXDisplayFilterOverlayView *)self effectReplicatorLayer];
  v7 = v6;
  if (v4)
  {
    v8 = [v6 superlayer];

    if (v8)
    {
      v5 = 0;
      v9 = 1;
      goto LABEL_7;
    }

    v7 = [(AXDisplayFilterOverlayView *)self effectView];
    v10 = [v7 layer];
    v11 = [(AXDisplayFilterOverlayView *)self effectReplicatorLayer];
    [v10 addSublayer:v11];
  }

  else
  {
    [v6 removeFromSuperlayer];
  }

  v9 = v4 != 0;

LABEL_7:
  [v3 setHidden:v5];
  [v3 setEnabled:v9];
  [v3 setFilters:v12];
  +[CATransaction commit];
}

@end