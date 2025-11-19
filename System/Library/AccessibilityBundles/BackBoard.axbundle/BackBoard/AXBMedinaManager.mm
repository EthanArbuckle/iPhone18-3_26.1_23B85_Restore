@interface AXBMedinaManager
+ (_TtC9BackBoard16AXBMedinaManager)shared;
+ (void)setShared:(id)a3;
- (BOOL)isMonitoring;
- (void)setIsMonitoring:(BOOL)a3;
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

+ (void)setShared:(id)a3
{
  v3 = qword_2A19896A8;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_2A19896B0;
  qword_2A19896B0 = v4;
}

- (BOOL)isMonitoring
{
  v3 = OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_isMonitoring;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsMonitoring:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9BackBoard16AXBMedinaManager_isMonitoring;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

@end