@interface WFCameraShutterButton
- (CAShapeLayer)buttonLayer;
- (CAShapeLayer)outlineLayer;
- (CGSize)intrinsicContentSize;
- (WFCameraShutterButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation WFCameraShutterButton

- (CAShapeLayer)buttonLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonLayer);

  return WeakRetained;
}

- (CAShapeLayer)outlineLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_outlineLayer);

  return WeakRetained;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = WFCameraShutterButton;
  [(WFCameraShutterButton *)&v8 setHighlighted:?];
  if (v3)
  {
    [MEMORY[0x277D75348] colorWithWhite:0.600000024 alpha:1.0];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v5 = ;
  v6 = [v5 CGColor];
  v7 = [(WFCameraShutterButton *)self buttonLayer];
  [v7 setFillColor:v6];
}

- (CGSize)intrinsicContentSize
{
  v2 = 66.0;
  v3 = 66.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = WFCameraShutterButton;
  [(WFCameraShutterButton *)&v19 layoutSubviews];
  [(WFCameraShutterButton *)self bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v7 = CGRectGetHeight(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v8 = CGRectGetWidth(v21);
  if (v7 < v8)
  {
    v8 = v7;
  }

  v9 = v8 * 0.5;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MidY = CGRectGetMidY(v23);
  v12 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v9 clockwise:{0.0, 6.28318531}];
  v13 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v9 + -6.0 clockwise:{0.0, 6.28318531}];
  [v12 appendPath:v13];

  v14 = [v12 CGPath];
  v15 = [(WFCameraShutterButton *)self outlineLayer];
  [v15 setPath:v14];

  v16 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v9 + -6.0 + -2.0 clockwise:{0.0, 6.28318531}];
  v17 = [v16 CGPath];
  v18 = [(WFCameraShutterButton *)self buttonLayer];
  [v18 setPath:v17];
}

- (WFCameraShutterButton)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = WFCameraShutterButton;
  v3 = [(WFCameraShutterButton *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CD9F90] layer];
    [v4 setFillRule:*MEMORY[0x277CDA248]];
    v5 = [MEMORY[0x277D75348] whiteColor];
    [v4 setFillColor:{objc_msgSend(v5, "CGColor")}];

    v6 = [MEMORY[0x277D75348] clearColor];
    [v4 setStrokeColor:{objc_msgSend(v6, "CGColor")}];

    v7 = [(WFCameraShutterButton *)v3 layer];
    [v7 addSublayer:v4];

    [(WFCameraShutterButton *)v3 setOutlineLayer:v4];
    v8 = [MEMORY[0x277CD9F90] layer];
    v9 = [MEMORY[0x277D75348] whiteColor];
    [v8 setFillColor:{objc_msgSend(v9, "CGColor")}];

    v10 = [MEMORY[0x277D75348] clearColor];
    [v8 setStrokeColor:{objc_msgSend(v10, "CGColor")}];

    v11 = [(WFCameraShutterButton *)v3 layer];
    [v11 addSublayer:v8];

    [(WFCameraShutterButton *)v3 setButtonLayer:v8];
    LODWORD(v12) = 1144750080;
    [(WFCameraShutterButton *)v3 setContentCompressionResistancePriority:0 forAxis:v12];
    LODWORD(v13) = 1144750080;
    [(WFCameraShutterButton *)v3 setContentCompressionResistancePriority:1 forAxis:v13];
    LODWORD(v14) = 1144750080;
    [(WFCameraShutterButton *)v3 setContentHuggingPriority:0 forAxis:v14];
    LODWORD(v15) = 1144750080;
    [(WFCameraShutterButton *)v3 setContentHuggingPriority:1 forAxis:v15];
  }

  return v3;
}

@end