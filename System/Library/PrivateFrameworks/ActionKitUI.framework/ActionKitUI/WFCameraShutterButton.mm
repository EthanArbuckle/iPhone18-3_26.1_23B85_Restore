@interface WFCameraShutterButton
- (CAShapeLayer)buttonLayer;
- (CAShapeLayer)outlineLayer;
- (CGSize)intrinsicContentSize;
- (WFCameraShutterButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
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

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = WFCameraShutterButton;
  [(WFCameraShutterButton *)&v8 setHighlighted:?];
  if (highlightedCopy)
  {
    [MEMORY[0x277D75348] colorWithWhite:0.600000024 alpha:1.0];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v5 = ;
  cGColor = [v5 CGColor];
  buttonLayer = [(WFCameraShutterButton *)self buttonLayer];
  [buttonLayer setFillColor:cGColor];
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

  cGPath = [v12 CGPath];
  outlineLayer = [(WFCameraShutterButton *)self outlineLayer];
  [outlineLayer setPath:cGPath];

  v16 = [MEMORY[0x277D75208] bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v9 + -6.0 + -2.0 clockwise:{0.0, 6.28318531}];
  cGPath2 = [v16 CGPath];
  buttonLayer = [(WFCameraShutterButton *)self buttonLayer];
  [buttonLayer setPath:cGPath2];
}

- (WFCameraShutterButton)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = WFCameraShutterButton;
  v3 = [(WFCameraShutterButton *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    layer = [MEMORY[0x277CD9F90] layer];
    [layer setFillRule:*MEMORY[0x277CDA248]];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [layer setFillColor:{objc_msgSend(whiteColor, "CGColor")}];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [layer setStrokeColor:{objc_msgSend(clearColor, "CGColor")}];

    layer2 = [(WFCameraShutterButton *)v3 layer];
    [layer2 addSublayer:layer];

    [(WFCameraShutterButton *)v3 setOutlineLayer:layer];
    layer3 = [MEMORY[0x277CD9F90] layer];
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [layer3 setFillColor:{objc_msgSend(whiteColor2, "CGColor")}];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [layer3 setStrokeColor:{objc_msgSend(clearColor2, "CGColor")}];

    layer4 = [(WFCameraShutterButton *)v3 layer];
    [layer4 addSublayer:layer3];

    [(WFCameraShutterButton *)v3 setButtonLayer:layer3];
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