@interface CLBNotificationsManager
+ (CLBNotificationsManager)shared;
- (CLBNotificationsManager)init;
- (CLBNotificationsManagerDelegate)bulletinDelegate;
- (void)addBulletinNotificationItem:(id)a3 dndBehavior:(unint64_t)a4 window:(id)a5;
- (void)removeBulletinNotificationItem:(id)a3;
@end

@implementation CLBNotificationsManager

+ (CLBNotificationsManager)shared
{
  if (qword_10032B4C0 != -1)
  {
    swift_once();
  }

  v3 = qword_100336878;

  return v3;
}

- (CLBNotificationsManagerDelegate)bulletinDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CLBNotificationsManager)init
{
  v3 = sub_10002B6CC(&qword_10032BD40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR___CLBNotificationsManager__notifications;
  v12 = &_swiftEmptyArrayStorage;
  sub_10002B6CC(&qword_10032BD20);
  Published.init(initialValue:)();
  (*(v4 + 32))(self + v7, v6, v3);
  *(self + OBJC_IVAR___CLBNotificationsManager_viewController) = 0;
  *(self + OBJC_IVAR___CLBNotificationsManager_soundsByBulletinID) = &_swiftEmptyDictionarySingleton;
  v8 = type metadata accessor for CLBNotificationsManager();
  v11.receiver = self;
  v11.super_class = v8;
  return [(CLBNotificationsManager *)&v11 init];
}

- (void)addBulletinNotificationItem:(id)a3 dndBehavior:(unint64_t)a4 window:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  sub_100031808(v8, a4, v9);
}

- (void)removeBulletinNotificationItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100032008(v4);
}

@end