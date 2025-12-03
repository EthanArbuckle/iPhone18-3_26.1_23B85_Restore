@interface LocationAuthorizationMonitor
- (_TtC17GeneralMapsWidget28LocationAuthorizationMonitor)init;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation LocationAuthorizationMonitor

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_10005628C(authorizationCopy);
}

- (_TtC17GeneralMapsWidget28LocationAuthorizationMonitor)init
{
  v3 = sub_100015240(&qword_1000E0CD8, qword_100084C20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  *(&self->super.isa + OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor_locationManager) = 0;
  v8 = OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor__accuracyAuthorization;
  v13 = 0;
  v14 = 1;
  sub_100015240(&qword_1000E0CD0, &qword_100084448);
  sub_10007D5E8();
  (*(v4 + 32))(self + v8, v7, v3);
  v9 = self + OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor_bundleIdentifier;
  strcpy(self + OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor_bundleIdentifier, "com.apple.Maps");
  v9[15] = -18;
  v10 = type metadata accessor for LocationAuthorizationMonitor();
  v12.receiver = self;
  v12.super_class = v10;
  return [(LocationAuthorizationMonitor *)&v12 init];
}

@end