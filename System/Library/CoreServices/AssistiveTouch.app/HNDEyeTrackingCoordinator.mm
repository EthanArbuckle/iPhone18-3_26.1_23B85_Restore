@interface HNDEyeTrackingCoordinator
- (BOOL)shouldShowFaceGuidance;
- (HNDEyeTrackingCoordinator)init;
- (void)dismissCalibrationUI;
- (void)setShouldShowFaceGuidance:(BOOL)guidance;
- (void)showCalibrationUI;
@end

@implementation HNDEyeTrackingCoordinator

- (BOOL)shouldShowFaceGuidance
{
  v3 = OBJC_IVAR___HNDEyeTrackingCoordinator_shouldShowFaceGuidance;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setShouldShowFaceGuidance:(BOOL)guidance
{
  v5 = OBJC_IVAR___HNDEyeTrackingCoordinator_shouldShowFaceGuidance;
  swift_beginAccess();
  *(&self->super.isa + v5) = guidance;
}

- (void)showCalibrationUI
{
  selfCopy = self;
  sub_10012570C();
}

- (void)dismissCalibrationUI
{
  selfCopy = self;
  sub_1001258E8();
}

- (HNDEyeTrackingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end