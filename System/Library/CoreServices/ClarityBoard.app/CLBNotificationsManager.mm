@interface CLBNotificationsManager
+ (CLBNotificationsManager)shared;
- (CLBNotificationsManager)init;
- (CLBNotificationsManagerDelegate)bulletinDelegate;
- (void)addBulletinNotificationItem:(id)item dndBehavior:(unint64_t)behavior window:(id)window;
- (void)removeBulletinNotificationItem:(id)item;
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

- (void)addBulletinNotificationItem:(id)item dndBehavior:(unint64_t)behavior window:(id)window
{
  itemCopy = item;
  windowCopy = window;
  selfCopy = self;
  sub_100031808(itemCopy, behavior, windowCopy);
}

- (void)removeBulletinNotificationItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_100032008(itemCopy);
}

@end