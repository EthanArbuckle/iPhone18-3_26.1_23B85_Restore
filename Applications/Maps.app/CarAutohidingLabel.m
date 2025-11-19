@interface CarAutohidingLabel
- (CarAutohidingLabel)initWithCoder:(id)a3;
- (CarAutohidingLabel)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAutohide:(BOOL)a3 forAxis:(int64_t)a4;
@end

@implementation CarAutohidingLabel

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = CarAutohidingLabel;
  [(CarAutohidingLabel *)&v11 layoutSubviews];
  v3 = 1.0;
  if ([(CarAutohidingLabel *)self adjustsFontSizeToFitWidth])
  {
    [(CarAutohidingLabel *)self minimumScaleFactor];
    v3 = v4;
  }

  v5 = [(CarAutohidingLabel *)self font];
  [v5 lineHeight];
  v7 = v6 * v3;

  if (self->_autohideForVerticalSquishing)
  {
    [(CarAutohidingLabel *)self bounds];
    v8 = CGRectGetHeight(v12) < v7;
  }

  else
  {
    v8 = 0;
  }

  if (self->_autohideForHorizontalSquishing)
  {
    [(CarAutohidingLabel *)self sizeThatFits:1.79769313e308, v7 * [(CarAutohidingLabel *)self numberOfLines]];
    v10 = v9;
    [(CarAutohidingLabel *)self bounds];
    if (CGRectGetWidth(v13) < v10)
    {
      v8 = 1;
    }

    else
    {
      v8 = v8;
    }
  }

  [(CarAutohidingLabel *)self setHidden:v8];
}

- (void)setAutohide:(BOOL)a3 forAxis:(int64_t)a4
{
  if (a4 == 1)
  {
    v4 = &OBJC_IVAR___CarAutohidingLabel__autohideForVerticalSquishing;
  }

  else
  {
    if (a4)
    {
      return;
    }

    v4 = &OBJC_IVAR___CarAutohidingLabel__autohideForHorizontalSquishing;
  }

  *(&self->super.super.super.super.isa + *v4) = a3;
}

- (CarAutohidingLabel)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CarAutohidingLabel;
  result = [(CarAutohidingLabel *)&v4 initWithCoder:a3];
  if (result)
  {
    result->_autohideForVerticalSquishing = 1;
  }

  return result;
}

- (CarAutohidingLabel)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CarAutohidingLabel;
  result = [(CarAutohidingLabel *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_autohideForVerticalSquishing = 1;
  }

  return result;
}

@end