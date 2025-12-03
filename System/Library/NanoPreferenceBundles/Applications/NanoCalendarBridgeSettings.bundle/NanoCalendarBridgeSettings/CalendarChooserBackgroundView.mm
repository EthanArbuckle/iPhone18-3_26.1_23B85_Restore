@interface CalendarChooserBackgroundView
- (CalendarChooserBackgroundView)initWithFrame:(CGRect)frame;
@end

@implementation CalendarChooserBackgroundView

- (CalendarChooserBackgroundView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CalendarChooserBackgroundView;
  v3 = [(CalendarChooserBackgroundView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = BPSCellHightlightColor();
    [(CalendarChooserBackgroundView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

@end