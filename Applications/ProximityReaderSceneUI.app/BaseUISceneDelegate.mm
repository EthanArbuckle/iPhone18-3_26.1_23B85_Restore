@interface BaseUISceneDelegate
- (UIWindow)window;
- (_TtC22ProximityReaderSceneUI19BaseUISceneDelegate)init;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
@end

@implementation BaseUISceneDelegate

- (UIWindow)window
{
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI19BaseUISceneDelegate_window;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setWindow:(id)window
{
  v5 = OBJC_IVAR____TtC22ProximityReaderSceneUI19BaseUISceneDelegate_window;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000101DC(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  selfCopy = self;
  v9 = sub_100008C08();
  sub_1000023F4(v9, v7);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {

    sub_100002FAC(v7, &qword_100021930, &unk_100013460);
  }

  else
  {
    v12 = sub_100008DA0();
    v13 = sub_100008DA8();
    sub_100008DB4(v12 & 1, selfCopy, 0xD000000000000016, 0x80000001000151E0, v13, v14);

    (*(v11 + 8))(v7, v10);
  }
}

- (void)sceneDidBecomeActive:(id)active
{
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  selfCopy = self;
  v9 = sub_100008C08();
  sub_1000023F4(v9, v7);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {

    sub_100002FAC(v7, &qword_100021930, &unk_100013460);
  }

  else
  {
    v12 = sub_100008DA0();
    v13 = sub_100008DA8();
    sub_100008DB4(v12 & 1, selfCopy, 0xD000000000000018, 0x8000000100015350, v13, v14);

    (*(v11 + 8))(v7, v10);
  }
}

- (void)sceneWillResignActive:(id)active
{
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  selfCopy = self;
  v9 = sub_100008C08();
  sub_1000023F4(v9, v7);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {

    sub_100002FAC(v7, &qword_100021930, &unk_100013460);
  }

  else
  {
    v12 = sub_100008DA0();
    v13 = sub_100008DA8();
    sub_100008DB4(v12 & 1, selfCopy, 0xD000000000000019, 0x8000000100015370, v13, v14);

    (*(v11 + 8))(v7, v10);
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  selfCopy = self;
  v9 = sub_100008C08();
  sub_1000023F4(v9, v7);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {

    sub_100002FAC(v7, &qword_100021930, &unk_100013460);
  }

  else
  {
    v12 = sub_100008DA0();
    v13 = sub_100008DA8();
    sub_100008DB4(v12 & 1, selfCopy, 0xD00000000000001CLL, 0x8000000100015390, v13, v14);

    (*(v11 + 8))(v7, v10);
  }
}

- (void)sceneDidEnterBackground:(id)background
{
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  selfCopy = self;
  v9 = sub_100008C08();
  sub_1000023F4(v9, v7);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {

    sub_100002FAC(v7, &qword_100021930, &unk_100013460);
  }

  else
  {
    v12 = sub_100008DA0();
    v13 = sub_100008DA8();
    sub_100008DB4(v12 & 1, selfCopy, 0xD00000000000001BLL, 0x80000001000153B0, v13, v14);

    (*(v11 + 8))(v7, v10);
  }
}

- (_TtC22ProximityReaderSceneUI19BaseUISceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC22ProximityReaderSceneUI19BaseUISceneDelegate_window) = 0;
  v3 = OBJC_IVAR____TtC22ProximityReaderSceneUI19BaseUISceneDelegate_actionHandler;
  type metadata accessor for UISceneActionHandler();
  *(&self->super.super.isa + v3) = sub_10000BDF8();
  v5.receiver = self;
  v5.super_class = type metadata accessor for BaseUISceneDelegate();
  return [(BaseUISceneDelegate *)&v5 init];
}

@end