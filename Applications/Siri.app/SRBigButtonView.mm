@interface SRBigButtonView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SRBigButtonView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)edgeInsets;
- (void)layoutSubviews;
@end

@implementation SRBigButtonView

- (SRBigButtonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SRBigButtonView;
  v3 = [(SRBigButtonView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[SiriUIContentButton buttonWithMediumWeightFont];
    button = v3->_button;
    v3->_button = v4;

    *&v3->_edgeInsets.top = 0u;
    *&v3->_edgeInsets.bottom = 0u;
    [(SRBigButtonView *)v3 addSubview:v3->_button];
  }

  return v3;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SRBigButtonView;
  [(SRBigButtonView *)&v13 layoutSubviews];
  [(SRBigButtonView *)self bounds];
  top = self->_edgeInsets.top;
  if (top == 0.0)
  {
    *&v9 = CGRectInset(*&v3, 16.0, 16.0);
  }

  else
  {
    left = self->_edgeInsets.left;
    v9 = v3 + left;
    v10 = v4 + top;
    v11 = v5 - (left + self->_edgeInsets.right);
    v12 = v6 - (top + self->_edgeInsets.bottom);
  }

  [(SiriUIContentButton *)self->_button setFrame:v9, v10, v11, v12];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(SRBigButtonView *)self traitCollection:fits.width];
  if ([v5 isAmbientPresented])
  {
    v6 = 64.0;
  }

  else
  {
    v6 = 79.0;
  }

  top = self->_edgeInsets.top;
  if (top != 0.0)
  {
    v6 = v6 - (top + self->_edgeInsets.bottom);
  }

  v8 = width;
  v9 = v6;
  result.height = v9;
  result.width = v8;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end