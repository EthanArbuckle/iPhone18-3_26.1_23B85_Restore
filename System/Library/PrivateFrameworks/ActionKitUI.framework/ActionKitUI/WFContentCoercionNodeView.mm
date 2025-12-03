@interface WFContentCoercionNodeView
- (CAShapeLayer)outlineLayer;
- (UILabel)nameLabel;
- (WFContentCoercionNodeView)initWithFrame:(CGRect)frame isRootNode:(BOOL)node;
- (void)layoutSubviews;
- (void)setNode:(id)node;
- (void)traitCollectionDidChange:(id)change;
- (void)updateColors;
@end

@implementation WFContentCoercionNodeView

- (UILabel)nameLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_nameLabel);

  return WeakRetained;
}

- (CAShapeLayer)outlineLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_outlineLayer);

  return WeakRetained;
}

- (void)setNode:(id)node
{
  objc_storeStrong(&self->_node, node);
  nodeCopy = node;
  itemOrItemClass = [nodeCopy itemOrItemClass];

  localizedTypeDescription = [objc_opt_class() localizedTypeDescription];
  WeakRetained = objc_loadWeakRetained(&self->_nameLabel);
  [WeakRetained setText:localizedTypeDescription];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = WFContentCoercionNodeView;
  changeCopy = change;
  [(WFContentCoercionNodeView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(WFContentCoercionNodeView *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(WFContentCoercionNodeView *)self updateColors];
  }
}

- (void)updateColors
{
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v3 = systemBlueColor;
  cGColor = [systemBlueColor CGColor];
  outlineLayer = [(WFContentCoercionNodeView *)self outlineLayer];
  [outlineLayer setStrokeColor:cGColor];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = WFContentCoercionNodeView;
  [(WFContentCoercionNodeView *)&v20 layoutSubviews];
  Mutable = CGPathCreateMutable();
  [(WFContentCoercionNodeView *)self bounds];
  MidX = CGRectGetMidX(v21);
  [(WFContentCoercionNodeView *)self bounds];
  MidY = CGRectGetMidY(v22);
  [(WFContentCoercionNodeView *)self bounds];
  Width = CGRectGetWidth(v23);
  [(WFContentCoercionNodeView *)self bounds];
  Height = CGRectGetHeight(v24);
  if (Width < Height)
  {
    Height = Width;
  }

  CGPathAddArc(Mutable, 0, MidX, MidY, Height * 0.5, 0.0, 6.28318531, 1);
  layer = [(WFContentCoercionNodeView *)self layer];
  mask = [layer mask];
  [mask setPath:Mutable];

  WeakRetained = objc_loadWeakRetained(&self->_outlineLayer);
  [WeakRetained setPath:Mutable];

  CGPathRelease(Mutable);
  [(WFContentCoercionNodeView *)self bounds];
  v12 = v11 + 5.0;
  v14 = v13 + 5.0;
  v16 = v15 + -10.0;
  v18 = v17 + -10.0;
  v19 = objc_loadWeakRetained(&self->_nameLabel);
  [v19 setFrame:{v12, v14, v16, v18}];
}

- (WFContentCoercionNodeView)initWithFrame:(CGRect)frame isRootNode:(BOOL)node
{
  height = frame.size.height;
  v20.receiver = self;
  v20.super_class = WFContentCoercionNodeView;
  v6 = [(WFContentCoercionNodeView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width];
  if (v6)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WFContentCoercionNodeView *)v6 setBackgroundColor:systemBackgroundColor];

    layer = [MEMORY[0x277CD9F90] layer];
    layer2 = [(WFContentCoercionNodeView *)v6 layer];
    [layer2 setMask:layer];

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v10 setNumberOfLines:2];
    [v10 setLineBreakMode:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v10 setBackgroundColor:clearColor];

    v12 = 12.0;
    if (height >= 100.0)
    {
      v12 = 17.0;
    }

    v13 = [MEMORY[0x277D74300] boldSystemFontOfSize:v12];
    [v10 setFont:v13];

    [v10 setTextAlignment:1];
    [v10 setAdjustsFontSizeToFitWidth:1];
    if (node)
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [v10 setTextColor:whiteColor];

      [(WFContentCoercionNodeView *)v6 addSubview:v10];
      objc_storeWeak(&v6->_nameLabel, v10);
      systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
      [(WFContentCoercionNodeView *)v6 setBackgroundColor:systemBlueColor];
    }

    else
    {
      systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
      [v10 setTextColor:systemBlueColor2];

      [(WFContentCoercionNodeView *)v6 addSubview:v10];
      objc_storeWeak(&v6->_nameLabel, v10);
      systemBlueColor = [MEMORY[0x277CD9F90] layer];
      clearColor2 = [MEMORY[0x277D75348] clearColor];
      [systemBlueColor setFillColor:{objc_msgSend(clearColor2, "CGColor")}];

      [systemBlueColor setLineWidth:3.0];
      layer3 = [(WFContentCoercionNodeView *)v6 layer];
      [layer3 addSublayer:systemBlueColor];

      objc_storeWeak(&v6->_outlineLayer, systemBlueColor);
    }

    [(WFContentCoercionNodeView *)v6 updateColors];
  }

  return v6;
}

@end