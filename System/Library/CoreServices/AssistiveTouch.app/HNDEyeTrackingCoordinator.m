@interface HNDEyeTrackingCoordinator
- (BOOL)shouldShowFaceGuidance;
- (HNDEyeTrackingCoordinator)init;
- (void)dismissCalibrationUI;
- (void)setShouldShowFaceGuidance:(BOOL)a3;
- (void)showCalibrationUI;
@end

@implementation HNDEyeTrackingCoordinator

- (BOOL)shouldShowFaceGuidance
{
  v3 = OBJC_IVAR___HNDEyeTrackingCoordinator_shouldShowFaceGuidance;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setShouldShowFaceGuidance:(BOOL)a3
{
  v5 = OBJC_IVAR___HNDEyeTrackingCoordinator_shouldShowFaceGuidance;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)showCalibrationUI
{
  v2 = self;
  sub_10012570C();
}

- (void)dismissCalibrationUI
{
  v2 = self;
  sub_1001258E8();
}

- (HNDEyeTrackingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end