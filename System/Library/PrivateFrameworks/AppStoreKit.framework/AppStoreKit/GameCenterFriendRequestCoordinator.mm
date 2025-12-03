@interface GameCenterFriendRequestCoordinator
- (_TtC11AppStoreKit34GameCenterFriendRequestCoordinator)init;
- (void)accountsDidChangeWithNotification:(id)notification;
- (void)dealloc;
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
@end

@implementation GameCenterFriendRequestCoordinator

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for GameCenterFriendRequestCoordinator();
  [(GameCenterFriendRequestCoordinator *)&v6 dealloc];
}

- (void)accountsDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1E15B9AD8(notificationCopy);
}

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v4 = *&type;
  selfCopy = self;
  sub_1E15BB10C(v4);
}

- (_TtC11AppStoreKit34GameCenterFriendRequestCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end