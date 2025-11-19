@interface CalendarLogOverlayView
- (void)applyLayoutAttributes:(id)a3;
- (void)toggleFlow;
- (void)toggleSpotting;
@end

@implementation CalendarLogOverlayView

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29DF6D884(v4);
}

- (void)toggleFlow
{
  v2 = self;
  sub_29DF6DA5C(&OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_flowToggle, &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_spottingToggle, sub_29DEA4790, sub_29DEA4BA0);
}

- (void)toggleSpotting
{
  v2 = self;
  sub_29DF6DA5C(&OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_spottingToggle, &OBJC_IVAR____TtC24MenstrualCyclesAppPlugin22CalendarLogOverlayView_flowToggle, sub_29DEA4BA0, sub_29DEA4790);
}

@end