@interface AXBMedinaManager
+ (_TtC9BackBoard16AXBMedinaManager)shared;
+ (void)setShared:(id)shared;
- (BOOL)isMonitoring;
- (void)setIsMonitoring:(BOOL)monitoring;
@end

@implementation AXBMedinaManager

+ (_TtC9BackBoard16AXBMedinaManager)shared
{
  if (qword_2A19896A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_2A19896B0;
}

+ (void)setShared:(id)shared
{
  v3 = qword_2A19896A8;
  sharedCopy = shared;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_2A19896B0;
  qword_2A19896B0 = sharedCopy;
}

- (BOOL)isMonitoring
{
  v3 = OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_isMonitoring;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsMonitoring:(BOOL)monitoring
{
  v5 = OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_isMonitoring;
  swift_beginAccess();
  *(&self->super.isa + v5) = monitoring;
}

@end