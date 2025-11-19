@interface VoiceOverExternalIntelligenceController
- (VoiceOverExternalIntelligenceController)init;
- (id)makeOnboardingViewController;
@end

@implementation VoiceOverExternalIntelligenceController

- (id)makeOnboardingViewController
{
  v2 = self;
  v3 = sub_1664FC();

  return v3;
}

- (VoiceOverExternalIntelligenceController)init
{
  v3 = OBJC_IVAR___VoiceOverExternalIntelligenceController_onboardingView;
  v4 = sub_19B3B4();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  *(&self->super.isa + OBJC_IVAR___VoiceOverExternalIntelligenceController_hostingController) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for VoiceOverExternalIntelligenceController();
  return [(VoiceOverExternalIntelligenceController *)&v6 init];
}

@end