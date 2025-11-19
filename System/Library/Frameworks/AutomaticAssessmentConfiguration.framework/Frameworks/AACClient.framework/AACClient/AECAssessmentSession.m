@interface AECAssessmentSession
+ (BOOL)supportsMultiAppConfiguration;
- (_TtC9AACClient26AECAssessmentConfiguration)configuration;
- (_TtP9AACClient28AECAssessmentSessionDelegate_)delegate;
- (void)setConfiguration:(id)a3;
- (void)updateWithConfiguration:(id)a3;
@end

@implementation AECAssessmentSession

+ (BOOL)supportsMultiAppConfiguration
{
  v2 = [objc_allocWithZone(MEMORY[0x277CE4720]) init];
  v3 = [v2 makePrimitives];

  [v3 deviceType];
  swift_unknownObjectRelease();

  return AEIsMultiAppAvailableForDeviceType();
}

- (_TtC9AACClient26AECAssessmentConfiguration)configuration
{
  v3 = OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setConfiguration:(id)a3
{
  v5 = OBJC_IVAR____TtC9AACClient20AECAssessmentSession_configuration;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (_TtP9AACClient28AECAssessmentSessionDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)updateWithConfiguration:(id)a3
{
  v5 = *(self + OBJC_IVAR____TtC9AACClient20AECAssessmentSession_taskQueue);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a3;
  v10 = a3;
  v11 = self;
  sub_236E0BF88(sub_236E11034, v7, sub_236E11088, v9);
}

@end