@interface NotifyMeButtonPresenter
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
- (void)displayTimeReached;
- (void)userNotificationsDidChangeNotification:(id)notification;
@end

@implementation NotifyMeButtonPresenter

- (void)userNotificationsDidChangeNotification:(id)notification
{
  v3 = sub_10075D7BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D79C();

  sub_100750860();

  (*(v4 + 8))(v6, v3);
}

- (void)appEnteredWhileAppeared
{

  sub_10074F8C8();
}

- (void)appExitedWhileAppeared
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
  v4 = *&self->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer];

  if (v4)
  {
    [v4 invalidate];
    v5 = *&self->_TtCs12_SwiftObject_opaque[v3];
  }

  else
  {
    v5 = 0;
  }

  *&self->_TtCs12_SwiftObject_opaque[v3] = 0;
}

- (void)displayTimeReached
{
  v2 = &self->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC20ProductPageExtension23NotifyMeButtonPresenter_view];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 40);

    v5(1, 1, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

@end