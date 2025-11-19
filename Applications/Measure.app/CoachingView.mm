@interface CoachingView
- (void)coachingOverlayViewDidDeactivate:(id)a3;
- (void)coachingOverlayViewDidRequestSessionReset:(id)a3;
- (void)coachingOverlayViewWillActivate:(id)a3;
@end

@implementation CoachingView

- (void)coachingOverlayViewWillActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000441DC();
}

- (void)coachingOverlayViewDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000443A0();
}

- (void)coachingOverlayViewDidRequestSessionReset:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004452C();
}

@end