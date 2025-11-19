@interface DynamicTranscriptBackgroundPosterController
- (BOOL)looksShareBaseAppearanceForEditor:(id)a3;
- (BOOL)renderer:(id)a3 shouldAttemptSnapshotForHandle:(id)a4;
- (_TtC32DynamicBackgroundPosterExtension43DynamicTranscriptBackgroundPosterController)init;
- (double)editor:(id)a3 luminanceForLook:(id)a4 inRect:(CGRect)a5;
- (id)initialColorsForEditor:(id)a3;
- (id)initialLookIdentifierForEditor:(id)a3;
- (id)leadingMenuElementsForEditor:(id)a3;
- (id)looksForEditor:(id)a3;
- (id)renderer:(id)a3 suitableSnapshotContextForSnapshotHandle:(id)a4;
- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4;
- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5;
- (void)editor:(id)a3 didUpdateColors:(id)a4;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidFinishInitialLayout:(id)a3;
- (void)editorDidInvalidate:(id)a3;
- (void)renderer:(id)a3 completedSnapshotForHandle:(id)a4;
- (void)renderer:(id)a3 didReceiveEvent:(id)a4;
- (void)renderer:(id)a3 didReceiveTransitionState:(id)a4;
- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)renderer:(id)a3 failedToSnapshotWithError:(id)a4 handle:(id)a5;
- (void)rendererDidInvalidate:(id)a3;
- (void)rendererDidInvalidate:(id)a3 completion:(id)a4;
@end

@implementation DynamicTranscriptBackgroundPosterController

- (id)leadingMenuElementsForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10001AC34(v4);

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

- (void)editor:(id)a3 didUpdateColors:(id)a4
{
  sub_10000D024(0, &qword_10006F9D0, UIColor_ptr);
  v6 = sub_10004D23C();
  v7 = a3;
  v8 = self;
  sub_10001BD5C(v7, v6);
}

- (id)initialColorsForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001D0A0();

  sub_10000D024(0, &qword_10006F9D0, UIColor_ptr);
  v6.super.isa = sub_10004D22C().super.isa;

  return v6.super.isa;
}

- (void)editor:(id)a3 didTransitionToLook:(id)a4 progress:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_10003A964(v9, a5);
}

- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003AC0C(v7);
}

- (void)editorDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003B010();
}

- (void)editor:(id)a3 finalizeWithCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10003B16C(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)editorDidFinishInitialLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003B8B8();
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10003B9C4(a4, a5);

  swift_unknownObjectRelease();
}

- (id)looksForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003BC3C();

  sub_10000D024(0, &unk_100070AE8, PREditingLook_ptr);
  v6.super.isa = sub_10004D22C().super.isa;

  return v6.super.isa;
}

- (id)initialLookIdentifierForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003C3DC();

  v6 = sub_10004D05C();

  return v6;
}

- (double)editor:(id)a3 luminanceForLook:(id)a4 inRect:(CGRect)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_10003C5E4(v8);

  return v10;
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10003C8F4(a4, v9);

  swift_unknownObjectRelease();
}

- (BOOL)looksShareBaseAppearanceForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1000308B4(v4);

  return self & 1;
}

- (BOOL)renderer:(id)a3 shouldAttemptSnapshotForHandle:(id)a4
{
  v6 = sub_10004CDFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004CDEC();
  v11 = a3;
  v12 = self;
  LOBYTE(self) = sub_10003CDD0();

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (void)renderer:(id)a3 completedSnapshotForHandle:(id)a4
{
  v6 = sub_10004CDFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004CDEC();
  v11 = a3;
  v12 = self;
  sub_10003CEA0();

  (*(v7 + 8))(v10, v6);
}

- (void)renderer:(id)a3 failedToSnapshotWithError:(id)a4 handle:(id)a5
{
  v8 = sub_10004CDFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004CDEC();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_10003CFFC();

  (*(v9 + 8))(v12, v8);
}

- (void)renderer:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10003159C(v8, a4, a5);

  swift_unknownObjectRelease();
}

- (void)renderer:(id)a3 didReceiveTransitionState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003D1B8(v7);
}

- (void)renderer:(id)a3 didReceiveEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003D37C(v7);
}

- (void)rendererDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10003D56C();
}

- (void)rendererDidInvalidate:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_10003D69C(sub_10003DFE8, v7);
}

- (id)renderer:(id)a3 suitableSnapshotContextForSnapshotHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10003DB70(v7);
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