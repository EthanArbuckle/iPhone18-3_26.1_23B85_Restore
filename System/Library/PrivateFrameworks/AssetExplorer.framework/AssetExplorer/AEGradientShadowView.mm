@interface AEGradientShadowView
- (AEGradientShadowView)initWithFrame:(CGRect)a3;
- (void)_configureGradientLayer;
@end

@implementation AEGradientShadowView

- (void)_configureGradientLayer
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = [(AEGradientShadowView *)self layer];
  gradientLayer = self->_gradientLayer;
  self->_gradientLayer = v3;

  [(AEGradientShadowView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(AEGradientShadowView *)self gradientLayer];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = *MEMORY[0x277CDA138];
  v15 = [(AEGradientShadowView *)self gradientLayer];
  [v15 setCornerCurve:v14];

  v16 = [(AEGradientShadowView *)self gradientLayer];
  [v16 setMaskedCorners:15];

  v17 = [(AEGradientShadowView *)self gradientLayer];
  [v17 setAllowsGroupOpacity:0];

  v18 = [MEMORY[0x277D75348] blackColor];
  v19 = [v18 colorWithAlphaComponent:0.2];

  v26[0] = [v19 CGColor];
  v20 = [MEMORY[0x277D75348] clearColor];
  v26[1] = [v20 CGColor];
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v22 = [(AEGradientShadowView *)self gradientLayer];
  [v22 setColors:v21];

  v23 = [(AEGradientShadowView *)self gradientLayer];
  [v23 setStartPoint:{0.0, 0.0}];

  v24 = [(AEGradientShadowView *)self gradientLayer];
  [v24 setEndPoint:{1.0, 1.0}];

  v25 = *MEMORY[0x277D85DE8];
}

- (AEGradientShadowView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = AEGradientShadowView;
  v3 = [(AEGradientShadowView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AEGradientShadowView *)v3 _configureGradientLayer];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(AEGradientShadowView *)v4 setBackgroundColor:v5];

    [(AEGradientShadowView *)v4 setClipsToBounds:1];
  }

  return v4;
}

@end