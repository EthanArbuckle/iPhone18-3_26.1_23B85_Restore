@interface WFContentCoercionNodeView
- (CAShapeLayer)outlineLayer;
- (UILabel)nameLabel;
- (WFContentCoercionNodeView)initWithFrame:(CGRect)a3 isRootNode:(BOOL)a4;
- (void)layoutSubviews;
- (void)setNode:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)setNode:(id)a3
{
  objc_storeStrong(&self->_node, a3);
  v5 = a3;
  v8 = [v5 itemOrItemClass];

  v6 = [objc_opt_class() localizedTypeDescription];
  WeakRetained = objc_loadWeakRetained(&self->_nameLabel);
  [WeakRetained setText:v6];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFContentCoercionNodeView;
  v4 = a3;
  [(WFContentCoercionNodeView *)&v8 traitCollectionDidChange:v4];
  v5 = [(WFContentCoercionNodeView *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(WFContentCoercionNodeView *)self updateColors];
  }
}

- (void)updateColors
{
  v6 = [MEMORY[0x277D75348] systemBlueColor];
  v3 = v6;
  v4 = [v6 CGColor];
  v5 = [(WFContentCoercionNodeView *)self outlineLayer];
  [v5 setStrokeColor:v4];
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
  v8 = [(WFContentCoercionNodeView *)self layer];
  v9 = [v8 mask];
  [v9 setPath:Mutable];

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

- (WFContentCoercionNodeView)initWithFrame:(CGRect)a3 isRootNode:(BOOL)a4
{
  height = a3.size.height;
  v20.receiver = self;
  v20.super_class = WFContentCoercionNodeView;
  v6 = [(WFContentCoercionNodeView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width];
  if (v6)
  {
    v7 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(WFContentCoercionNodeView *)v6 setBackgroundColor:v7];

    v8 = [MEMORY[0x277CD9F90] layer];
    v9 = [(WFContentCoercionNodeView *)v6 layer];
    [v9 setMask:v8];

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v10 setNumberOfLines:2];
    [v10 setLineBreakMode:0];
    v11 = [MEMORY[0x277D75348] clearColor];
    [v10 setBackgroundColor:v11];

    v12 = 12.0;
    if (height >= 100.0)
    {
      v12 = 17.0;
    }

    v13 = [MEMORY[0x277D74300] boldSystemFontOfSize:v12];
    [v10 setFont:v13];

    [v10 setTextAlignment:1];
    [v10 setAdjustsFontSizeToFitWidth:1];
    if (a4)
    {
      v14 = [MEMORY[0x277D75348] whiteColor];
      [v10 setTextColor:v14];

      [(WFContentCoercionNodeView *)v6 addSubview:v10];
      objc_storeWeak(&v6->_nameLabel, v10);
      v15 = [MEMORY[0x277D75348] systemBlueColor];
      [(WFContentCoercionNodeView *)v6 setBackgroundColor:v15];
    }

    else
    {
      v16 = [MEMORY[0x277D75348] systemBlueColor];
      [v10 setTextColor:v16];

      [(WFContentCoercionNodeView *)v6 addSubview:v10];
      objc_storeWeak(&v6->_nameLabel, v10);
      v15 = [MEMORY[0x277CD9F90] layer];
      v17 = [MEMORY[0x277D75348] clearColor];
      [v15 setFillColor:{objc_msgSend(v17, "CGColor")}];

      [v15 setLineWidth:3.0];
      v18 = [(WFContentCoercionNodeView *)v6 layer];
      [v18 addSublayer:v15];

      objc_storeWeak(&v6->_outlineLayer, v15);
    }

    [(WFContentCoercionNodeView *)v6 updateColors];
  }

  return v6;
}

@end