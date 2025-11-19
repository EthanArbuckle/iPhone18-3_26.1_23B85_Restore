@interface CollectionsPosterEditDelegate
- (id)initialLookIdentifierForEditor:(id)a3;
- (id)looksForEditor:(id)a3;
- (int64_t)activeAppearanceMenuSelectionForEditor:(id)a3;
- (void)editor:(PREditor *)a3 finalizeWithCompletion:(id)a4;
- (void)editor:(id)a3 appearanceMenuDidChangeSelectedStyle:(int64_t)a4;
- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4;
- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5;
- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5;
- (void)editorDidInvalidate:(id)a3;
@end

@implementation CollectionsPosterEditDelegate

- (void)editor:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10000B5F4(v6, a4);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 didUpdateEnvironment:(id)a4 withTransition:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10000BBBC(v8, a4, a5);

  swift_unknownObjectRelease();
}

- (id)looksForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000C158();

  sub_10000ACE8(0, &qword_1000206F8, PREditingLook_ptr);
  v6.super.isa = sub_1000109DC().super.isa;

  return v6.super.isa;
}

- (id)initialLookIdentifierForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000C69C();

  v6 = sub_10001096C();

  return v6;
}

- (int64_t)activeAppearanceMenuSelectionForEditor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000CB24(v4, "CollectionsPosterEditDelegate.ActiveAppearanceSelection", &WKWallpaperPosterEditorController.activeAppearanceMenuSelection(for:));
  v7 = v6;

  return v7;
}

- (void)editor:(id)a3 appearanceMenuDidChangeSelectedStyle:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_10000D2B0(v6, a4, "CollectionsPosterEditDelegate.ActiveAppearanceChanged", &WKWallpaperPosterEditorController.editor(_:appearanceMenuDidChangeSelectedStyle:));
}

- (void)editor:(id)a3 populateViews:(id)a4 forLook:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  sub_10000CEF8(v8, a4, v9);

  swift_unknownObjectRelease();
}

- (void)editor:(id)a3 didFinishTransitionToLook:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10000D2B0(v6, v7, "CollectionsPosterEditDelegate.LookTransitionFinished", &WKWallpaperPosterEditorController.editor(_:didFinishTransitionTo:));
}

- (void)editor:(PREditor *)a3 finalizeWithCompletion:(id)a4
{
  v7 = sub_100001FDC(&qword_1000205D0, &qword_1000122F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_10000E794(0, 0, v10, &unk_100012310, v15);
}

- (void)editorDidInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000E020();
}

@end