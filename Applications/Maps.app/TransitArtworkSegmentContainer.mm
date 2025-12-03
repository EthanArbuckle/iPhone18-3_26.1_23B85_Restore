@interface TransitArtworkSegmentContainer
- (UIEdgeInsets)alignmentRectInsets;
- (void)layoutSubviews;
- (void)setShowBackground:(BOOL)background;
@end

@implementation TransitArtworkSegmentContainer

- (UIEdgeInsets)alignmentRectInsets
{
  if ([(TransitArtworkSegmentContainer *)self showBackground])
  {
    top = 0.0;
    left = 8.0;
    bottom = 0.0;
    right = 8.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = TransitArtworkSegmentContainer;
  [(TransitArtworkSegmentContainer *)&v6 layoutSubviews];
  superview = [(UIView *)self->_backgroundView superview];

  if (superview == self)
  {
    [(TransitArtworkSegmentContainer *)self sendSubviewToBack:self->_backgroundView];
    [(TransitArtworkSegmentContainer *)self bounds];
    [(UIView *)self->_backgroundView setFrame:?];
    [(TransitArtworkSegmentContainer *)self bounds];
    v4 = CGRectGetHeight(v7) * 0.5;
    layer = [(UIView *)self->_backgroundView layer];
    [layer setCornerRadius:v4];
  }
}

- (void)setShowBackground:(BOOL)background
{
  if (self->_showBackground != background)
  {
    self->_showBackground = background;
    if (background)
    {
      v4 = [UIView alloc];
      [(TransitArtworkSegmentContainer *)self bounds];
      v5 = [v4 initWithFrame:?];
      backgroundView = self->_backgroundView;
      self->_backgroundView = v5;

      [(UIView *)self->_backgroundView setAutoresizingMask:18];
      v7 = +[UIColor tertiarySystemFillColor];
      [(UIView *)self->_backgroundView setBackgroundColor:v7];

      v8 = self->_backgroundView;

      [(TransitArtworkSegmentContainer *)self addSubview:v8];
    }

    else
    {
      [(UIView *)self->_backgroundView removeFromSuperview];
      v9 = self->_backgroundView;
      self->_backgroundView = 0;
    }
  }
}

@end