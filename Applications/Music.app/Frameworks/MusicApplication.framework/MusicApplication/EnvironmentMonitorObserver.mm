@interface EnvironmentMonitorObserver
- (void)dealloc;
@end

@implementation EnvironmentMonitorObserver

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16MusicApplication26EnvironmentMonitorObserver_environmentMonitor);
  selfCopy = self;
  [v4 unregisterObserver:selfCopy];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(EnvironmentMonitorObserver *)&v6 dealloc];
}

@end