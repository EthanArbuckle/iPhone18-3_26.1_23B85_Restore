@interface BKBadgedButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)badgeWidth;
- (void)layoutSubviews;
- (void)setValue:(unint64_t)a3;
@end

@implementation BKBadgedButton

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(BKBadgedButton *)self badgeWidth:a3.width];
  v4 = 18.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)badgeWidth
{
  if (![(BKBadgedButton *)self value])
  {
    return 0.0;
  }

  [(UILabel *)self->_badgeLabel frame];
  return fmax(v3 + 10.0, 18.0);
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = BKBadgedButton;
  [(BKBadgedButton *)&v33 layoutSubviews];
  v3 = [(BKBadgedButton *)self value];
  badgeBackground = self->_badgeBackground;
  if (v3)
  {
    if (!badgeBackground)
    {
      v5 = [UIImageView alloc];
      [(BKBadgedButton *)self bounds];
      v6 = [v5 initWithFrame:?];
      v7 = self->_badgeBackground;
      self->_badgeBackground = v6;
    }

    if (!self->_badgeLabel)
    {
      v8 = objc_alloc_init(UILabel);
      badgeLabel = self->_badgeLabel;
      self->_badgeLabel = v8;

      v10 = +[UIColor clearColor];
      [(UILabel *)self->_badgeLabel setBackgroundColor:v10];
    }

    v11 = [UIFont systemFontOfSize:12.0];
    [(UILabel *)self->_badgeLabel setFont:v11];

    [(UILabel *)self->_badgeLabel setTextAlignment:1];
    v12 = [NSString stringWithFormat:@"%lu", [(BKBadgedButton *)self value]];
    [(UILabel *)self->_badgeLabel setText:v12];

    v13 = +[UIColor whiteColor];
    [(UILabel *)self->_badgeLabel setTextColor:v13];

    [(UILabel *)self->_badgeLabel sizeToFit];
    [(BKBadgedButton *)self addSubview:self->_badgeBackground];
    [(BKBadgedButton *)self addSubview:self->_badgeLabel];
    [(BKBadgedButton *)self badgeWidth];
    v15 = v14;
    v16 = [(BKBadgedButton *)self window];
    v17 = [v16 windowScene];
    if ([v17 interfaceOrientation] - 3 >= 2)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = -1.0;
    }

    if (v15 < 18.0)
    {
      v15 = 18.0;
    }

    [(UIImageView *)self->_badgeBackground setFrame:-5.0, v18, v15, 18.0];
    [(UIImageView *)self->_badgeBackground bounds];
    v34.width = v19;
    v34.height = v20;
    UIGraphicsBeginImageContextWithOptions(v34, 0, 0.0);
    v21 = +[UIColor redColor];
    [v21 setFill];

    [(UIImageView *)self->_badgeBackground bounds];
    v22 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
    [v22 fill];

    v23 = UIGraphicsGetImageFromCurrentImageContext();
    [(UIImageView *)self->_badgeBackground setImage:v23];

    UIGraphicsEndImageContext();
    [(UILabel *)self->_badgeLabel frame];
    CGRectCenterRectInRect();
    v36 = CGRectIntegral(v35);
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
    v27 = v36.origin.x + 0.0;
    v28 = +[UIScreen mainScreen];
    [v28 scale];
    v30 = y + -1.0 / v29;

    [(UILabel *)self->_badgeLabel setFrame:v27, v30, width, height];
  }

  else
  {
    [(UIImageView *)badgeBackground removeFromSuperview];
    v31 = self->_badgeBackground;
    self->_badgeBackground = 0;

    [(UILabel *)self->_badgeLabel removeFromSuperview];
    v32 = self->_badgeLabel;
    self->_badgeLabel = 0;
  }
}

- (void)setValue:(unint64_t)a3
{
  if (self->_value != a3)
  {
    self->_value = a3;
    [(BKBadgedButton *)self setNeedsLayout];
  }
}

@end