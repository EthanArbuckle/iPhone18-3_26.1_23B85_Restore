@interface CarAutohidingLabel
- (CarAutohidingLabel)initWithCoder:(id)coder;
- (CarAutohidingLabel)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setAutohide:(BOOL)autohide forAxis:(int64_t)axis;
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

  font = [(CarAutohidingLabel *)self font];
  [font lineHeight];
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

- (void)setAutohide:(BOOL)autohide forAxis:(int64_t)axis
{
  if (axis == 1)
  {
    v4 = &OBJC_IVAR___CarAutohidingLabel__autohideForVerticalSquishing;
  }

  else
  {
    if (axis)
    {
      return;
    }

    v4 = &OBJC_IVAR___CarAutohidingLabel__autohideForHorizontalSquishing;
  }

  *(&self->super.super.super.super.isa + *v4) = autohide;
}

- (CarAutohidingLabel)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CarAutohidingLabel;
  result = [(CarAutohidingLabel *)&v4 initWithCoder:coder];
  if (result)
  {
    result->_autohideForVerticalSquishing = 1;
  }

  return result;
}

- (CarAutohidingLabel)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CarAutohidingLabel;
  result = [(CarAutohidingLabel *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_autohideForVerticalSquishing = 1;
  }

  return result;
}

@end