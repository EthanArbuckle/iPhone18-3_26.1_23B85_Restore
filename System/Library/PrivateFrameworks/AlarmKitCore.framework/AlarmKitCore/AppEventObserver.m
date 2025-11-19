@interface AppEventObserver
- (void)dealloc;
@end

@implementation AppEventObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12AlarmKitCore16AppEventObserver_applicationWorkspace);
  v3 = self;
  [v2 removeObserver_];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for AppEventObserver();
  [(AppEventObserver *)&v4 dealloc];
}

@end