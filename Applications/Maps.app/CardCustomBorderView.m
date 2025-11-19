@interface CardCustomBorderView
- (CardCustomBorderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCardCustomBorder:(unint64_t)a3;
@end

@implementation CardCustomBorderView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CardCustomBorderView;
  [(CardCustomBorderView *)&v3 layoutSubviews];
  [(CardCustomBorderView *)self bounds];
  [(CardShadowView *)self->_cardShadowView setFrame:?];
}

- (void)setCardCustomBorder:(unint64_t)a3
{
  if (self->_cardCustomBorder != a3)
  {
    self->_cardCustomBorder = a3;
    [(CardShadowView *)self->_cardShadowView setShouldCropBottomEdge:a3 == 3];
    v4 = 1.0;
    if (!self->_cardCustomBorder)
    {
      v4 = 0.0;
    }

    [(CardShadowView *)self->_cardShadowView setAlpha:v4];

    [(CardCustomBorderView *)self setNeedsLayout];
  }
}

- (CardCustomBorderView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CardCustomBorderView;
  v3 = [(CardCustomBorderView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CardCustomBorderView *)v3 setUserInteractionEnabled:0];
    v4->_cardCustomBorder = 0;
    v5 = [[CardShadowView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(CardShadowView *)v5 setAlpha:0.0];
    [(CardCustomBorderView *)v4 addSubview:v5];
    cardShadowView = v4->_cardShadowView;
    v4->_cardShadowView = v5;
  }

  return v4;
}

@end