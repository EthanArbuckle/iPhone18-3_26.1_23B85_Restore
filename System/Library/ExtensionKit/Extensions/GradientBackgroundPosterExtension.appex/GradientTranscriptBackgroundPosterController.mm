@interface GradientTranscriptBackgroundPosterController
- (BOOL)looksShareBaseAppearanceForEditor:(id)editor;
- (BOOL)renderer:(id)renderer shouldAttemptSnapshotForHandle:(id)handle;
- (_TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController)init;
- (double)editor:(id)editor luminanceForLook:(id)look inRect:(CGRect)rect;
- (id)initialLookIdentifierForEditor:(id)editor;
- (void)editor:(id)editor didFinishTransitionToLook:(id)look;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress;
- (void)editor:(id)editor didUpdateColors:(id)colors;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidFinishInitialLayout:(id)layout;
- (void)editorDidInvalidate:(id)invalidate;
- (void)renderer:(id)renderer completedSnapshotForHandle:(id)handle;
- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment;
- (void)renderer:(id)renderer didReceiveEvent:(id)event;
- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)renderer:(id)renderer failedToSnapshotWithError:(id)error handle:(id)handle;
- (void)rendererDidInvalidate:(id)invalidate;
- (void)rendererDidInvalidate:(id)invalidate completion:(id)completion;
@end

@implementation GradientTranscriptBackgroundPosterController

- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  sub_100033F08(lookCopy, progress);
}

- (void)editor:(id)editor didFinishTransitionToLook:(id)look
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  sub_1000340D8(lookCopy);
}

- (void)editorDidInvalidate:(id)invalidate
{
  selfCopy = self;
  sub_10002BACC();
  v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor) = 0;
}

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor);
  *(&self->super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_editor) = editor;
  editorCopy = editor;
  swift_unknownObjectRetain();
  selfCopy = self;

  v9 = *(&selfCopy->super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController_viewsManager);
  sub_10000BB8C([environment deviceOrientation], 0.0);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor finalizeWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  editorCopy = editor;
  selfCopy = self;
  sub_10003426C(editorCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidFinishInitialLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_1000347D8();
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_1000348E4(environment, transition);

  swift_unknownObjectRelease();
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_100028B18(editorCopy);

  v6 = sub_1000417CC();

  return v6;
}

- (double)editor:(id)editor luminanceForLook:(id)look inRect:(CGRect)rect
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  v10 = sub_100035234(lookCopy);

  return v10;
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_1000353C8(views, lookCopy);

  swift_unknownObjectRelease();
}

- (BOOL)looksShareBaseAppearanceForEditor:(id)editor
{
  if (qword_10005CD70 != -1)
  {
    swift_once();
  }

  return [qword_1000611A0 posterKitEditor] ^ 1;
}

- (void)editor:(id)editor didUpdateColors:(id)colors
{
  sub_10000BB04(0, &qword_10005F2F8, UIColor_ptr);
  v6 = sub_10004198C();
  editorCopy = editor;
  selfCopy = self;
  sub_100035D38(v6);
}

- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100029F74(rendererCopy, environment);

  swift_unknownObjectRelease();
}

- (BOOL)renderer:(id)renderer shouldAttemptSnapshotForHandle:(id)handle
{
  v6 = sub_10004157C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004156C();
  rendererCopy = renderer;
  selfCopy = self;
  LOBYTE(self) = sub_1000361D0();

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (void)renderer:(id)renderer completedSnapshotForHandle:(id)handle
{
  v6 = sub_10004157C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004156C();
  rendererCopy = renderer;
  selfCopy = self;
  sub_1000362A0();

  (*(v7 + 8))(v10, v6);
}

- (void)renderer:(id)renderer failedToSnapshotWithError:(id)error handle:(id)handle
{
  v8 = sub_10004157C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004156C();
  rendererCopy = renderer;
  errorCopy = error;
  selfCopy = self;
  sub_100036680();

  (*(v9 + 8))(v12, v8);
}

- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_10002AB6C(rendererCopy, environment, transition);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)renderer didReceiveEvent:(id)event
{
  rendererCopy = renderer;
  eventCopy = event;
  selfCopy = self;
  sub_10003683C(eventCopy);
}

- (void)rendererDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_100036AFC();
}

- (void)rendererDidInvalidate:(id)invalidate completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_100036C2C(sub_1000331E4, v7);
}

- (_TtC33GradientBackgroundPosterExtension44GradientTranscriptBackgroundPosterController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end