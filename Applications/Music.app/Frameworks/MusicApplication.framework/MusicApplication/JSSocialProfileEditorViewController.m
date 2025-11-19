@interface JSSocialProfileEditorViewController
- (BOOL)collectionView:(id)a3 tableLayout:(id)a4 shouldIndentWhileEditingRowAtIndexPath:(id)a5;
- (_TtC16MusicApplication35JSSocialProfileEditorViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC16MusicApplication35JSSocialProfileEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)collectionView:(id)a3 heightForHeaderViewInTableLayout:(id)a4;
- (double)collectionView:(id)a3 tableLayout:(id)a4 heightForRowAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 tableLayout:(id)a4 editingStyleForRowAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
- (void)viewDidLoad;
@end

@implementation JSSocialProfileEditorViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_4E243C();
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = a4;
    v14 = a5;
    v15 = [v12 tableViewCell];
    if (v15)
    {
      v16 = v15;
      [v15 setSeparatorStyle:0];
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v8 + 8))(v10, v7);
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = self;
  v14 = sub_4E3B34();

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = self;
  v20 = sub_4E44E4(v16, v13, v15, v12);

  (*(v10 + 8))(v12, v9);

  return v20;
}

- (double)collectionView:(id)a3 heightForHeaderViewInTableLayout:(id)a4
{
  [a3 bounds];
  v5 = 128.0;
  if (v4 <= 128.0)
  {
    v5 = v4;
  }

  return v5 + 32.0;
}

- (double)collectionView:(id)a3 tableLayout:(id)a4 heightForRowAtIndexPath:(id)a5
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  type metadata accessor for SocialProfileEditorCell();
  v11 = a5;
  v12 = self;
  v13 = [(JSSocialProfileEditorViewController *)v12 traitCollection];
  v14 = sub_722BC(v13, 0.0);
  v16 = v15;
  (*(v8 + 8))(v10, v7, v14);

  return v16;
}

- (int64_t)collectionView:(id)a3 tableLayout:(id)a4 editingStyleForRowAtIndexPath:(id)a5
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v6 + 8))(v8, v5);
  return 0;
}

- (BOOL)collectionView:(id)a3 tableLayout:(id)a4 shouldIndentWhileEditingRowAtIndexPath:(id)a5
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v6 + 8))(v8, v5);
  return 0;
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_4E9BAC(&unk_E05380, 255, type metadata accessor for InfoKey);
  v7 = sub_AB8FF0();
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_4E5770(v8, v7);
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_4E5BCC(v4);
}

- (_TtC16MusicApplication35JSSocialProfileEditorViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16MusicApplication35JSSocialProfileEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end