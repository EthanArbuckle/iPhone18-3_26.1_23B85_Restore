@interface ClockPosterExtensionRenderingController
- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)renderer:(id)a3 didReceiveTapAtPoint:(CGPoint)a4;
- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)rendererDidInvalidate:(id)a3;
@end

@implementation ClockPosterExtensionRenderingController

- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1000037A4(v6, a4);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {
    swift_unknownObjectRetain();
    v7 = self;

    sub_1000041FC();
    sub_100008978();

    swift_getObjectType();
    sub_100007700(a4, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)rendererDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000080A0(&OBJC_IVAR____TtC20ClockPosterExtension39ClockPosterExtensionRenderingController_renderer);
}

- (void)renderer:(id)a3 didReceiveTapAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = sub_100001C28(&qword_100016460, &qword_100009CE8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = sub_100008D58();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008D38();
  v13 = self;

  v14 = sub_100008D28();
  v15 = swift_allocObject();
  *(v15 + 2) = v14;
  *(v15 + 3) = &protocol witness table for MainActor;
  *(v15 + 4) = v12;
  v15[5] = x;
  v15[6] = y;

  sub_100003D8C(0, 0, v10, &unk_100009CF8, v15);
}

@end