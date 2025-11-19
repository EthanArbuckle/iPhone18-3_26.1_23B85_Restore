@interface DirectionsTableViewCellBackgroundView
- (void)setHighlightedColor:(BOOL)a3;
@end

@implementation DirectionsTableViewCellBackgroundView

- (void)setHighlightedColor:(BOOL)a3
{
  if (self->_highlightedColor != a3)
  {
    self->_highlightedColor = a3;
    if (a3)
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