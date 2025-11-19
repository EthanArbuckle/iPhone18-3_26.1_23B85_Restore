@interface ClockPosterExtensionEditingController
- (id)looksForEditor:(id)a3;
- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidInvalidate:(id)a3;
@end

@implementation ClockPosterExtensionEditingController

- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4
{
  swift_getObjectType();
  v7 = a3;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1000072E0(a4, v10);
  v8 = *(&v10->super.super.isa + OBJC_IVAR____TtC20ClockPosterExtension37ClockPosterExtensionEditingController_editor);
  *(&v10->super.super.isa + OBJC_IVAR____TtC20ClockPosterExtension37ClockPosterExtensionEditingController_editor) = v7;
  v9 = v7;

  sub_100004C6C();
  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = self;
  sub_100007700(a4, v7);
  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 finalizeWithCompletion:(id)a4
{
  v7 = sub_100008B68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a4);
  if (*(&self->super.super.isa + OBJC_IVAR____TtC20ClockPosterExtension30ClockPosterExtensionController_clockFaceController))
  {
    v13 = a3;
    v14 = self;

    sub_100008968();

    sub_100007CE0(v11, [v13 environment]);
    swift_unknownObjectRelease();
    (*(v8 + 8))(v11, v7);
    v12[2](v12);

    _Block_release(v12);
  }

  else
  {
    v15 = a3;
    v16 = self;
    _Block_release(v12);
    __break(1u);
  }
}

- (void)editorDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000080A0(&OBJC_IVAR____TtC20ClockPosterExtension37ClockPosterExtensionEditingController_editor);
}

- (id)looksForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000813C();

  sub_100008448(0, &qword_100016450, PREditingLook_ptr);
  v6.super.isa = sub_100008CE8().super.isa;

  return v6.super.isa;
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_100008358(a4);

  swift_unknownObjectRelease();
}

@end