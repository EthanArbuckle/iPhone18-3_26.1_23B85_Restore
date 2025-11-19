@interface BKToolbarButton
- (CGRect)popoverPresentationRect;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)popoverPresentationEdgeInsets;
- (void)setTitle:(id)a3 forState:(unint64_t)a4 allowAnimation:(BOOL)a5;
@end

@implementation BKToolbarButton

- (CGSize)sizeThatFits:(CGSize)a3
{
  v11.receiver = self;
  v11.super_class = BKToolbarButton;
  [(BKToolbarButton *)&v11 sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  if (self->_inMiniBar)
  {
    [(BKToolbarButton *)self miniHeight];
  }

  else
  {
    [(BKToolbarButton *)self height];
  }

  if (v7 >= v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)setTitle:(id)a3 forState:(unint64_t)a4 allowAnimation:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = +[UIView areAnimationsEnabled];
  [UIView setAnimationsEnabled:v5];
  [(BKToolbarButton *)self setTitle:v8 forState:a4];

  [(BKToolbarButton *)self layoutIfNeeded];

  [UIView setAnimationsEnabled:v9];
}

- (CGRect)popoverPresentationRect
{
  v3 = [(BKToolbarButton *)self imageView];
  [v3 frame];
  top = self->_popoverPresentationEdgeInsets.top;
  left = self->_popoverPresentationEdgeInsets.left;
  v7 = v6 + left;
  v9 = v8 + top;
  v11 = v10 - (left + self->_popoverPresentationEdgeInsets.right);
  v13 = v12 - (top + self->_popoverPresentationEdgeInsets.bottom);

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (UIEdgeInsets)popoverPresentationEdgeInsets
{
  top = self->_popoverPresentationEdgeInsets.top;
  left = self->_popoverPresentationEdgeInsets.left;
  bottom = self->_popoverPresentationEdgeInsets.bottom;
  right = self->_popoverPresentationEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end