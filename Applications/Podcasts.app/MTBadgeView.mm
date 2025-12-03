@interface MTBadgeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTBadgeView)init;
- (UILabel)badgeLabel;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setBadgeValue:(id)value;
- (void)setDark:(BOOL)dark;
@end

@implementation MTBadgeView

- (MTBadgeView)init
{
  v6.receiver = self;
  v6.super_class = MTBadgeView;
  v2 = [(MTBadgeView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MTBadgeView *)v2 setDark:0];
    badgeLabel = [(MTBadgeView *)v3 badgeLabel];
    [(MTBadgeView *)v3 addSubview:badgeLabel];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  badgeLabel = [(MTBadgeView *)self badgeLabel];
  [badgeLabel sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7 + 6.0;
  if (v7 + 6.0 < v9)
  {
    v10 = v9;
  }

  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = MTBadgeView;
  [(MTBadgeView *)&v23 layoutSubviews];
  [(MTBadgeView *)self bounds];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v7 = CGRectGetWidth(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v8 = CGRectGetHeight(v25);
  if (v7 < v8)
  {
    v8 = v7;
  }

  v9 = v8 * 0.5;
  layer = [(MTBadgeView *)self layer];
  [layer setCornerRadius:v9];

  [(MTBadgeView *)self bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  badgeLabel = [(MTBadgeView *)self badgeLabel];
  text = [badgeLabel text];
  v21 = [text length];

  if (v21 == 1)
  {
    v12 = v12 + 0.3;
  }

  badgeLabel2 = [(MTBadgeView *)self badgeLabel];
  [badgeLabel2 setFrame:{v12, v14, v16, v18}];
}

- (UILabel)badgeLabel
{
  badgeLabel = self->_badgeLabel;
  if (!badgeLabel)
  {
    v4 = objc_alloc_init(UILabel);
    v5 = self->_badgeLabel;
    self->_badgeLabel = v4;

    v6 = [UIFont boldSystemFontOfSize:10.0];
    [(UILabel *)self->_badgeLabel setFont:v6];

    [(UILabel *)self->_badgeLabel setNumberOfLines:1];
    v7 = +[UIColor whiteColor];
    [(UILabel *)self->_badgeLabel setTextColor:v7];

    [(UILabel *)self->_badgeLabel setTextAlignment:1];
    v8 = +[UIColor clearColor];
    [(UILabel *)self->_badgeLabel setBackgroundColor:v8];

    badgeLabel = self->_badgeLabel;
  }

  return badgeLabel;
}

- (void)setBadgeValue:(id)value
{
  valueCopy = value;
  badgeLabel = [(MTBadgeView *)self badgeLabel];
  [badgeLabel setText:valueCopy];

  [(MTBadgeView *)self setNeedsLayout];
}

- (void)setDark:(BOOL)dark
{
  if (self->_dark != dark)
  {
    self->_dark = dark;
  }

  [(MTBadgeView *)self setBackgroundColor:0];
}

- (void)setBackgroundColor:(id)color
{
  if (self->_dark)
  {
    +[UIColor goneDarkColor];
  }

  else
  {
    +[UIColor redColor];
  }
  v4 = ;
  v5.receiver = self;
  v5.super_class = MTBadgeView;
  [(MTBadgeView *)&v5 setBackgroundColor:v4];
}

@end