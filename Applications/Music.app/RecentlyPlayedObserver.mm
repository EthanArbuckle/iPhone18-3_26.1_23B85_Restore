@interface RecentlyPlayedObserver
- (_TtC5Music22RecentlyPlayedObserver)init;
- (void)registerHandler:(id)handler;
@end

@implementation RecentlyPlayedObserver

- (void)registerHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10072A018(sub_10072B348, v5);
}

- (_TtC5Music22RecentlyPlayedObserver)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC5Music22RecentlyPlayedObserver_pushObserver;
  *(&self->super.isa + v4) = *PushNotificationObserver.shared.unsafeMutableAddressor();
  v6.receiver = self;
  v6.super_class = ObjectType;

  return [(RecentlyPlayedObserver *)&v6 init];
}

@end