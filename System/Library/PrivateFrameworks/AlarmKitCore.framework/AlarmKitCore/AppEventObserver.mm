@interface AppEventObserver
- (void)dealloc;
@end

@implementation AppEventObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_applicationWorkspace);
  selfCopy = self;
  [v2 removeObserver_];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for AppEventObserver();
  [(AppEventObserver *)&v4 dealloc];
}

@end