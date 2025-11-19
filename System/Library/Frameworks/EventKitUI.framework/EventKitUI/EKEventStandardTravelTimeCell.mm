@interface EKEventStandardTravelTimeCell
- (EKEventStandardTravelTimeCell)init;
@end

@implementation EKEventStandardTravelTimeCell

- (EKEventStandardTravelTimeCell)init
{
  v5.receiver = self;
  v5.super_class = EKEventStandardTravelTimeCell;
  v2 = [(EKEventStandardTravelTimeCell *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(EKCalendarChooserCell *)v2 setShowCheckmarksOnLeft:1];
    [(EKCalendarChooserCell *)v3 setChecked:0];
  }

  return v3;
}

@end