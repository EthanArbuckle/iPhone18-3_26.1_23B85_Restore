@interface GradientTranscriptBackgroundPosterController
- (BOOL)looksShareBaseAppearanceForEditor:(id)a3;
- (BOOL)renderer:(id)a3 shouldAttemptSnapshotForHandle:(id)a4;
- (_TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController)init;
- (double)editor:(id)a3 luminanceForLook:(id)a4 inRect:(CGRect)a5;
- (id)initialLookIdentifierForEditor:(id)a3;
- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4;
- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5;
- (void)editor:(id)a3 didUpdateColors:(id)a4;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidFinishInitialLayout:(id)a3;
- (void)editorDidInvalidate:(id)a3;
- (void)renderer:(id)a3 completedSnapshotForHandle:(id)a4;
- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)renderer:(id)a3 didReceiveEvent:(id)a4;
- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)renderer:(id)a3 failedToSnapshotWithError:(id)a4 handle:(id)a5;
- (void)rendererDidInvalidate:(id)a3;
- (void)rendererDidInvalidate:(id)a3 completion:(id)a4;
@end

@implementation GradientTranscriptBackgroundPosterController

- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_100033F08(v9, a5);
}

- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000340D8(v7);
}

- (void)editorDidInvalidate:(id)a3
{
  v3 = self;
  sub_10002BACC();
  v4 = *(&v3->super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor);
  *(&v3->super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor) = 0;
}

- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor);
  *(&self->super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor) = a3;
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = self;

  v9 = *(&v8->super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  sub_10000BB8C([a4 deviceOrientation], 0.0);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 finalizeWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10003426C(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidFinishInitialLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000347D8();
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_1000348E4(a4, a5);

  swift_unknownObjectRelease();
}

- (id)initialLookIdentifierForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100028B18(v4);

  v6 = sub_1000417CC();

  return v6;
}

- (double)editor:(id)a3 luminanceForLook:(id)a4 inRect:(CGRect)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_100035234(v8);

  return v10;
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_1000353C8(a4, v9);

  swift_unknownObjectRelease();
}

- (BOOL)looksShareBaseAppearanceForEditor:(id)a3
{
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  return [qword_1000611A0 posterKitEditor] ^ 1;
}

- (void)editor:(id)a3 didUpdateColors:(id)a4
{
  sub_10000BB04(0, &qword_10005F2F8, UIColor_ptr);
  v6 = sub_10004198C();
  v7 = a3;
  v8 = self;
  sub_100035D38(v6);
}

- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_100029F74(v6, a4);

  swift_unknownObjectRelease();
}

- (BOOL)renderer:(id)a3 shouldAttemptSnapshotForHandle:(id)a4
{
  v6 = sub_10004157C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004156C();
  v11 = a3;
  v12 = self;
  LOBYTE(self) = sub_1000361D0();

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (void)renderer:(id)a3 completedSnapshotForHandle:(id)a4
{
  v6 = sub_10004157C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004156C();
  v11 = a3;
  v12 = self;
  sub_1000362A0();

  (*(v7 + 8))(v10, v6);
}

- (void)renderer:(id)a3 failedToSnapshotWithError:(id)a4 handle:(id)a5
{
  v8 = sub_10004157C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004156C();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_100036680();

  (*(v9 + 8))(v12, v8);
}

- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10002AB6C(v8, a4, a5);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)a3 didReceiveEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003683C(v7);
}

- (void)rendererDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100036AFC();
}

- (void)rendererDidInvalidate:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_100036C2C(sub_1000331E4, v7);
}

- (_TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end