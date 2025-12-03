@interface CHActivityPausedRingsObserver
- (CHActivityPausedRingsObserver)init;
- (void)beginObserving;
@end

@implementation CHActivityPausedRingsObserver

- (CHActivityPausedRingsObserver)init
{
  v2 = [objc_allocWithZone(type metadata accessor for ActivityPausedRingsObserver()) init];
  v3 = type metadata accessor for ActivityPausedRingsObserverBridge();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___CHActivityPausedRingsObserver_bridgedValue] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = [(CHActivityPausedRingsObserver *)&v7 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (void)beginObserving
{
  selfCopy = self;
  dispatch thunk of ActivityPausedRingsObserver.beginObserving()();
}

@end