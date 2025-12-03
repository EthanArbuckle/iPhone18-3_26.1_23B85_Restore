@interface DynamicTranscriptBackgroundPosterController
- (BOOL)looksShareBaseAppearanceForEditor:(id)editor;
- (BOOL)renderer:(id)renderer shouldAttemptSnapshotForHandle:(id)handle;
- (_TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController)init;
- (double)editor:(id)editor luminanceForLook:(id)look inRect:(CGRect)rect;
- (id)initialColorsForEditor:(id)editor;
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)leadingMenuElementsForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (id)renderer:(id)renderer suitableSnapshotContextForSnapshotHandle:(id)handle;
- (void)editor:(id)editor didFinishTransitionToLook:(id)look;
- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress;
- (void)editor:(id)editor didUpdateColors:(id)colors;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidFinishInitialLayout:(id)layout;
- (void)editorDidInvalidate:(id)invalidate;
- (void)renderer:(id)renderer completedSnapshotForHandle:(id)handle;
- (void)renderer:(id)renderer didReceiveEvent:(id)event;
- (void)renderer:(id)renderer didReceiveTransitionState:(id)state;
- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)renderer:(id)renderer failedToSnapshotWithError:(id)error handle:(id)handle;
- (void)rendererDidInvalidate:(id)invalidate;
- (void)rendererDidInvalidate:(id)invalidate completion:(id)completion;
@end

@implementation DynamicTranscriptBackgroundPosterController

- (id)leadingMenuElementsForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  v6 = sub_10001AC34(editorCopy);

  if (v6)
  {
    sub_10000D024(0, &qword_10006F9D8, UIMenuElement_ptr);
    v7.super.isa = sub_10004D22C().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (void)editor:(id)editor didUpdateColors:(id)colors
{
  sub_10000D024(0, &qword_10006F9D0, UIColor_ptr);
  v6 = sub_10004D23C();
  editorCopy = editor;
  selfCopy = self;
  sub_10001BD5C(editorCopy, v6);
}

- (id)initialColorsForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10001D0A0();

  sub_10000D024(0, &qword_10006F9D0, UIColor_ptr);
  v6.super.isa = sub_10004D22C().super.isa;

  return v6.super.isa;
}

- (void)editor:(id)editor didTransitionToLook:(id)look progress:(double)progress
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  sub_10003A964(lookCopy, progress);
}

- (void)editor:(id)editor didFinishTransitionToLook:(id)look
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  sub_10003AC0C(lookCopy);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_10003B010();
}

- (void)editor:(id)editor finalizeWithCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  editorCopy = editor;
  selfCopy = self;
  sub_10003B16C(editorCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidFinishInitialLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  sub_10003B8B8();
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_10003B9C4(environment, transition);

  swift_unknownObjectRelease();
}

- (id)looksForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10003BC3C();

  sub_10000D024(0, &unk_100070AE8, PREditingLook_ptr);
  v6.super.isa = sub_10004D22C().super.isa;

  return v6.super.isa;
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10003C3DC();

  v6 = sub_10004D05C();

  return v6;
}

- (double)editor:(id)editor luminanceForLook:(id)look inRect:(CGRect)rect
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  v10 = sub_10003C5E4(lookCopy);

  return v10;
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_10003C8F4(views, lookCopy);

  swift_unknownObjectRelease();
}

- (BOOL)looksShareBaseAppearanceForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  LOBYTE(self) = sub_1000308B4(editorCopy);

  return self & 1;
}

- (BOOL)renderer:(id)renderer shouldAttemptSnapshotForHandle:(id)handle
{
  v6 = sub_10004CDFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004CDEC();
  rendererCopy = renderer;
  selfCopy = self;
  LOBYTE(self) = sub_10003CDD0();

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (void)renderer:(id)renderer completedSnapshotForHandle:(id)handle
{
  v6 = sub_10004CDFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004CDEC();
  rendererCopy = renderer;
  selfCopy = self;
  sub_10003CEA0();

  (*(v7 + 8))(v10, v6);
}

- (void)renderer:(id)renderer failedToSnapshotWithError:(id)error handle:(id)handle
{
  v8 = sub_10004CDFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004CDEC();
  rendererCopy = renderer;
  errorCopy = error;
  selfCopy = self;
  sub_10003CFFC();

  (*(v9 + 8))(v12, v8);
}

- (void)renderer:(id)renderer didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  rendererCopy = renderer;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_10003159C(rendererCopy, environment, transition);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)renderer didReceiveTransitionState:(id)state
{
  rendererCopy = renderer;
  stateCopy = state;
  selfCopy = self;
  sub_10003D1B8(stateCopy);
}

- (void)renderer:(id)renderer didReceiveEvent:(id)event
{
  rendererCopy = renderer;
  eventCopy = event;
  selfCopy = self;
  sub_10003D37C(eventCopy);
}

- (void)rendererDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_10003D56C();
}

- (void)rendererDidInvalidate:(id)invalidate completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_10003D69C(sub_10003DFE8, v7);
}

- (id)renderer:(id)renderer suitableSnapshotContextForSnapshotHandle:(id)handle
{
  rendererCopy = renderer;
  handleCopy = handle;
  selfCopy = self;
  sub_10003DB70(handleCopy);
  v10 = v9;

  return v10;
}

- (_TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end