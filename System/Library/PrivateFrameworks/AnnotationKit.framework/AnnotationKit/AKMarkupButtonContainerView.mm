@interface AKMarkupButtonContainerView
- (AKMarkupButtonContainerView)initWithFrame:(CGRect)a3;
- (CGSize)_buttonSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
- (void)updateForMiniBarState:(BOOL)a3;
@end

@implementation AKMarkupButtonContainerView

- (AKMarkupButtonContainerView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = AKMarkupButtonContainerView;
  v3 = [(AKMarkupButtonContainerView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    button = v3->_button;
    v3->_button = v4;

    [(UIButton *)v3->_button setClipsToBounds:1];
    v6 = v3->_button;
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"pencil.tip.crop.circle"];
    [(UIButton *)v6 setImage:v7 forState:0];

    [(AKMarkupButtonContainerView *)v3 addSubview:v3->_button];
  }

  return v3;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = AKMarkupButtonContainerView;
  [(AKMarkupButtonContainerView *)&v15 layoutSubviews];
  [(AKMarkupButtonContainerView *)self intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = [(AKMarkupButtonContainerView *)self button];
  [v7 setFrame:{0.0, 0.0, v4, v6}];

  [(AKMarkupButtonContainerView *)self bounds];
  v8 = CGRectGetWidth(v16) * 0.5;
  [(AKMarkupButtonContainerView *)self bounds];
  v9 = CGRectGetHeight(v17) * 0.5;
  v10 = [(AKMarkupButtonContainerView *)self button];
  [v10 setCenter:{v8, v9}];

  v11 = [(AKMarkupButtonContainerView *)self button];
  [v11 bounds];
  v12 = CGRectGetWidth(v18) * 0.5;
  v13 = [(AKMarkupButtonContainerView *)self button];
  v14 = [v13 layer];
  [v14 setCornerRadius:v12];
}

- (void)updateForMiniBarState:(BOOL)a3
{
  [(AKMarkupButtonContainerView *)self setNeedsLayout];

  [(AKMarkupButtonContainerView *)self layoutIfNeeded];
}

- (CGSize)intrinsicContentSize
{
  MEMORY[0x2821F9670](self, sel__buttonSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  MEMORY[0x2821F9670](self, sel__buttonSize);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  self->_selected = a3;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v5 = [(AKMarkupButtonContainerView *)self button];
  [v5 setSelected:v3];

  v6 = MEMORY[0x277CD9FF0];

  [v6 commit];
}

- (CGSize)_buttonSize
{
  v2 = [(AKMarkupButtonContainerView *)self traitCollection];
  v3 = [v2 verticalSizeClass];

  v4 = 28.0;
  if (v3 == 1)
  {
    v4 = 27.0;
  }

  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

@end