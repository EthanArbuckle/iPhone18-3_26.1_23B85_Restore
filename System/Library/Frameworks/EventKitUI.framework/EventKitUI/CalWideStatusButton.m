@interface CalWideStatusButton
- (CGRect)_selectedIndicatorBounds;
@end

@implementation CalWideStatusButton

- (CGRect)_selectedIndicatorBounds
{
  v2.receiver = self;
  v2.super_class = CalWideStatusButton;
  [(CalWideStatusButton *)&v2 _selectedIndicatorBounds];
  return CGRectInset(v3, -5.0, 0.0);
}

@end