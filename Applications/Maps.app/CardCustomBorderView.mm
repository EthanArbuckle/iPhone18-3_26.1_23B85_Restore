@interface CardCustomBorderView
- (CardCustomBorderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCardCustomBorder:(unint64_t)border;
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

- (void)setCardCustomBorder:(unint64_t)border
{
  if (self->_cardCustomBorder != border)
  {
    self->_cardCustomBorder = border;
    [(CardShadowView *)self->_cardShadowView setShouldCropBottomEdge:border == 3];
    v4 = 1.0;
    if (!self->_cardCustomBorder)
    {
      v4 = 0.0;
    }

    [(CardShadowView *)self->_cardShadowView setAlpha:v4];

    [(CardCustomBorderView *)self setNeedsLayout];
  }
}

- (CardCustomBorderView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CardCustomBorderView;
  v3 = [(CardCustomBorderView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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