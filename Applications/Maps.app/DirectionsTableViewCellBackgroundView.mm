@interface DirectionsTableViewCellBackgroundView
- (void)setHighlightedColor:(BOOL)color;
@end

@implementation DirectionsTableViewCellBackgroundView

- (void)setHighlightedColor:(BOOL)color
{
  if (self->_highlightedColor != color)
  {
    self->_highlightedColor = color;
    if (color)
    {
      v4 = [UIColor colorNamed:@"DirectionsTableViewCellBackgroundView"];
      [(DirectionsTableViewCellBackgroundView *)self setBackgroundColor:v4];
    }

    else
    {

      [(DirectionsTableViewCellBackgroundView *)self setBackgroundColor:0];
    }
  }
}

@end