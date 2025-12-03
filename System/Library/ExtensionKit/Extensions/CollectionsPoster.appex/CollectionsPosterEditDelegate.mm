@interface CollectionsPosterEditDelegate
- (id)initialLookIdentifierForEditor:(id)editor;
- (id)looksForEditor:(id)editor;
- (int64_t)activeAppearanceMenuSelectionForEditor:(id)editor;
- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion;
- (void)editor:(id)editor appearanceMenuDidChangeSelectedStyle:(int64_t)style;
- (void)editor:(id)editor didFinishTransitionToLook:(id)look;
- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment;
- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition;
- (void)editor:(id)editor populateViews:(id)views forLook:(id)look;
- (void)editorDidInvalidate:(id)invalidate;
@end

@implementation CollectionsPosterEditDelegate

- (void)editor:(id)editor didInitializeWithEnvironment:(id)environment
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10000B5F4(editorCopy, environment);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didUpdateEnvironment:(id)environment withTransition:(id)transition
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  transitionCopy = transition;
  selfCopy = self;
  sub_10000BBBC(editorCopy, environment, transition);

  swift_unknownObjectRelease();
}

- (id)looksForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000C158();

  sub_10000ACE8(0, &qword_1000206F8, PREditingLook_ptr);
  v6.super.isa = sub_1000109DC().super.isa;

  return v6.super.isa;
}

- (id)initialLookIdentifierForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000C69C();

  v6 = sub_10001096C();

  return v6;
}

- (int64_t)activeAppearanceMenuSelectionForEditor:(id)editor
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000CB24(editorCopy, "CollectionsPosterEditDelegate.ActiveAppearanceSelection", &WKWallpaperPosterEditorController.activeAppearanceMenuSelection(for:));
  v7 = v6;

  return v7;
}

- (void)editor:(id)editor appearanceMenuDidChangeSelectedStyle:(int64_t)style
{
  editorCopy = editor;
  selfCopy = self;
  sub_10000D2B0(editorCopy, style, "CollectionsPosterEditDelegate.ActiveAppearanceChanged", &WKWallpaperPosterEditorController.editor(_:appearanceMenuDidChangeSelectedStyle:));
}

- (void)editor:(id)editor populateViews:(id)views forLook:(id)look
{
  editorCopy = editor;
  swift_unknownObjectRetain();
  lookCopy = look;
  selfCopy = self;
  sub_10000CEF8(editorCopy, views, lookCopy);

  swift_unknownObjectRelease();
}

- (void)editor:(id)editor didFinishTransitionToLook:(id)look
{
  editorCopy = editor;
  lookCopy = look;
  selfCopy = self;
  sub_10000D2B0(editorCopy, lookCopy, "CollectionsPosterEditDelegate.LookTransitionFinished", &WKWallpaperPosterEditorController.editor(_:didFinishTransitionTo:));
}

- (void)editor:(PREditor *)editor finalizeWithCompletion:(id)completion
{
  v7 = sub_100001FDC(&qword_1000205D0, &qword_1000122F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = editor;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_100010A2C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000123E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000123F0;
  v15[5] = v14;
  editorCopy = editor;
  selfCopy = self;
  sub_10000E794(0, 0, v10, &unk_100012310, v15);
}

- (void)editorDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  sub_10000E020();
}

@end