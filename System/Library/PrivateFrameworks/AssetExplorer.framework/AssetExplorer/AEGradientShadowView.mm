@interface AEGradientShadowView
- (AEGradientShadowView)initWithFrame:(CGRect)frame;
- (void)_configureGradientLayer;
@end

@implementation AEGradientShadowView

- (void)_configureGradientLayer
{
  v26[2] = *MEMORY[0x277D85DE8];
  layer = [(AEGradientShadowView *)self layer];
  gradientLayer = self->_gradientLayer;
  self->_gradientLayer = layer;

  [(AEGradientShadowView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  gradientLayer = [(AEGradientShadowView *)self gradientLayer];
  [gradientLayer setFrame:{v6, v8, v10, v12}];

  v14 = *MEMORY[0x277CDA138];
  gradientLayer2 = [(AEGradientShadowView *)self gradientLayer];
  [gradientLayer2 setCornerCurve:v14];

  gradientLayer3 = [(AEGradientShadowView *)self gradientLayer];
  [gradientLayer3 setMaskedCorners:15];

  gradientLayer4 = [(AEGradientShadowView *)self gradientLayer];
  [gradientLayer4 setAllowsGroupOpacity:0];

  blackColor = [MEMORY[0x277D75348] blackColor];
  v19 = [blackColor colorWithAlphaComponent:0.2];

  v26[0] = [v19 CGColor];
  clearColor = [MEMORY[0x277D75348] clearColor];
  v26[1] = [clearColor CGColor];
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  gradientLayer5 = [(AEGradientShadowView *)self gradientLayer];
  [gradientLayer5 setColors:v21];

  gradientLayer6 = [(AEGradientShadowView *)self gradientLayer];
  [gradientLayer6 setStartPoint:{0.0, 0.0}];

  gradientLayer7 = [(AEGradientShadowView *)self gradientLayer];
  [gradientLayer7 setEndPoint:{1.0, 1.0}];

  v25 = *MEMORY[0x277D85DE8];
}

- (AEGradientShadowView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = AEGradientShadowView;
  v3 = [(AEGradientShadowView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AEGradientShadowView *)v3 _configureGradientLayer];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(AEGradientShadowView *)v4 setBackgroundColor:clearColor];

    [(AEGradientShadowView *)v4 setClipsToBounds:1];
  }

  return v4;
}

@end