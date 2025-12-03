@interface MTSeparatorFooterView
+ (double)heightForSeparatorInsets:(UIEdgeInsets)insets;
- (CGRect)floatingRect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTSeparatorFooterView)initWithReuseIdentifier:(id)identifier;
- (UIEdgeInsets)separatorInsets;
- (UIView)dividerView;
- (void)layoutSubviews;
- (void)setSeparatorInsets:(UIEdgeInsets)insets;
@end

@implementation MTSeparatorFooterView

+ (double)heightForSeparatorInsets:(UIEdgeInsets)insets
{
  bottom = insets.bottom;
  top = insets.top;
  v5 = [UIScreen mainScreen:insets.top];
  [v5 scale];
  v7 = v6;

  return bottom + top + 1.0 / v7;
}

- (MTSeparatorFooterView)initWithReuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = MTSeparatorFooterView;
  v3 = [(MTSeparatorFooterView *)&v8 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc_init(UIView);
    [(MTSeparatorFooterView *)v3 setBackgroundView:v4];

    [(MTSeparatorFooterView *)v3 setPreservesSuperviewLayoutMargins:1];
    contentView = [(MTSeparatorFooterView *)v3 contentView];
    dividerView = [(MTSeparatorFooterView *)v3 dividerView];
    [contentView addSubview:dividerView];
  }

  return v3;
}

- (void)setSeparatorInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_separatorInsets.top, v3), vceqq_f64(*&self->_separatorInsets.bottom, v4)))) & 1) == 0)
  {
    self->_separatorInsets = insets;
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
  contentView = [(MTSeparatorFooterView *)self contentView];
  [contentView bounds];
  v10 = CGRectGetWidth(v15) - v4;

  if ([(MTSeparatorFooterView *)self mt_isRTL])
  {
    v4 = 0.0;
  }

  [(MTSeparatorFooterView *)self separatorInsets];
  v12 = v11;
  dividerView = [(MTSeparatorFooterView *)self dividerView];
  [dividerView setFrame:{v4, v12, v10, v8}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
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