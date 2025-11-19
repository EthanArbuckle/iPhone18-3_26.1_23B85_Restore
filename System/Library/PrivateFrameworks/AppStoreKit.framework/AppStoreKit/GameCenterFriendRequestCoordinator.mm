@interface GameCenterFriendRequestCoordinator
- (_TtC11AppStoreKit34GameCenterFriendRequestCoordinator)init;
- (void)accountsDidChangeWithNotification:(id)a3;
- (void)dealloc;
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4;
@end

@implementation GameCenterFriendRequestCoordinator

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for GameCenterFriendRequestCoordinator();
  [(GameCenterFriendRequestCoordinator *)&v6 dealloc];
}

- (void)accountsDidChangeWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E15B9AD8(v4);
}

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4
{
  v4 = *&a3;
  v5 = self;
  sub_1E15BB10C(v4);
}

- (_TtC11AppStoreKit34GameCenterFriendRequestCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end