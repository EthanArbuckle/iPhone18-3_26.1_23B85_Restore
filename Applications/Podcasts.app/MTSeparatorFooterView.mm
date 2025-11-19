@interface MTSeparatorFooterView
+ (double)heightForSeparatorInsets:(UIEdgeInsets)a3;
- (CGRect)floatingRect;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MTSeparatorFooterView)initWithReuseIdentifier:(id)a3;
- (UIEdgeInsets)separatorInsets;
- (UIView)dividerView;
- (void)layoutSubviews;
- (void)setSeparatorInsets:(UIEdgeInsets)a3;
@end

@implementation MTSeparatorFooterView

+ (double)heightForSeparatorInsets:(UIEdgeInsets)a3
{
  bottom = a3.bottom;
  top = a3.top;
  v5 = [UIScreen mainScreen:a3.top];
  [v5 scale];
  v7 = v6;

  return bottom + top + 1.0 / v7;
}

- (MTSeparatorFooterView)initWithReuseIdentifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = MTSeparatorFooterView;
  v3 = [(MTSeparatorFooterView *)&v8 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc_init(UIView);
    [(MTSeparatorFooterView *)v3 setBackgroundView:v4];

    [(MTSeparatorFooterView *)v3 setPreservesSuperviewLayoutMargins:1];
    v5 = [(MTSeparatorFooterView *)v3 contentView];
    v6 = [(MTSeparatorFooterView *)v3 dividerView];
    [v5 addSubview:v6];
  }

  return v3;
}

- (void)setSeparatorInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_separatorInsets.top, v3), vceqq_f64(*&self->_separatorInsets.bottom, v4)))) & 1) == 0)
  {
    self->_separatorInsets = a3;
    [(MTSeparatorFooterView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = MTSeparatorFooterView;
  [(MTSeparatorFooterView *)&v14 layoutSubviews];
  [(MTSeparatorFooterView *)self separatorInsets];
  v4 = v3;
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = 1.0 / v7;
  v9 = [(MTSeparatorFooterView *)self contentView];
  [v9 bounds];
  v10 = CGRectGetWidth(v15) - v4;

  if ([(MTSeparatorFooterView *)self mt_isRTL])
  {
    v4 = 0.0;
  }

  [(MTSeparatorFooterView *)self separatorInsets];
  v12 = v11;
  v13 = [(MTSeparatorFooterView *)self dividerView];
  [v13 setFrame:{v4, v12, v10, v8}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = objc_opt_class();
  [(MTSeparatorFooterView *)self separatorInsets];
  [v5 heightForSeparatorInsets:?];
  v7 = v6;
  v8 = width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (UIView)dividerView
{
  dividerView = self->_dividerView;
  if (!dividerView)
  {
    v4 = objc_alloc_init(UIView);
    v5 = self->_dividerView;
    self->_dividerView = v4;

    v6 = +[UIColor dividerColor];
    [(UIView *)self->_dividerView setBackgroundColor:v6];

    dividerView = self->_dividerView;
  }

  return dividerView;
}

- (UIEdgeInsets)separatorInsets
{
  top = self->_separatorInsets.top;
  left = self->_separatorInsets.left;
  bottom = self->_separatorInsets.bottom;
  right = self->_separatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)floatingRect
{
  x = self->_floatingRect.origin.x;
  y = self->_floatingRect.origin.y;
  width = self->_floatingRect.size.width;
  height = self->_floatingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end