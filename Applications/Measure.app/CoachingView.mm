@interface CoachingView
- (void)coachingOverlayViewDidDeactivate:(id)deactivate;
- (void)coachingOverlayViewDidRequestSessionReset:(id)reset;
- (void)coachingOverlayViewWillActivate:(id)activate;
@end

@implementation CoachingView

- (void)coachingOverlayViewWillActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  sub_1000441DC();
}

- (void)coachingOverlayViewDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  sub_1000443A0();
}

- (void)coachingOverlayViewDidRequestSessionReset:(id)reset
{
  resetCopy = reset;
  selfCopy = self;
  sub_10004452C();
}

@end