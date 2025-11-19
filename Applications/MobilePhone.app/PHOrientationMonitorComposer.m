@interface PHOrientationMonitorComposer
- (PHOrientationMonitorComposer)init;
- (id)compose;
@end

@implementation PHOrientationMonitorComposer

- (id)compose
{
  v2 = *((swift_isaMask & self->super.isa) + 0x50);
  v3 = self;
  v4 = v2();
  v5 = type metadata accessor for PHOrientationMonitor_OBJC();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC11MobilePhone25PHOrientationMonitor_OBJC_wrapped] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = [(PHOrientationMonitorComposer *)&v9 init];

  return v7;
}

- (PHOrientationMonitorComposer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for OrientationMonitorComposer();
  return [(PHOrientationMonitorComposer *)&v3 init];
}

@end