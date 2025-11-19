@interface NotifyMeButtonPresenter
- (void)appEnteredWhileAppeared;
- (void)appExitedWhileAppeared;
- (void)displayTimeReached;
- (void)userNotificationsDidChangeNotification:(id)a3;
@end

@implementation NotifyMeButtonPresenter

- (void)userNotificationsDidChangeNotification:(id)a3
{
  v3 = sub_100740EA4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100740E84();

  sub_1001D22E4();

  (*(v4 + 8))(v6, v3);
}

- (void)appEnteredWhileAppeared
{

  sub_1001D1314();
}

- (void)appExitedWhileAppeared
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
  v4 = *&self->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer];

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
  v2 = &self->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_view];
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