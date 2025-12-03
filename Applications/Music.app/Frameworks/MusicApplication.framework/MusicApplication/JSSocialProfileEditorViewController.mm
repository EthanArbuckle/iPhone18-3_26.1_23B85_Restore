@interface JSSocialProfileEditorViewController
- (BOOL)collectionView:(id)view tableLayout:(id)layout shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (_TtC16MusicApplication35JSSocialProfileEditorViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC16MusicApplication35JSSocialProfileEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)collectionView:(id)view heightForHeaderViewInTableLayout:(id)layout;
- (double)collectionView:(id)view tableLayout:(id)layout heightForRowAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view tableLayout:(id)layout editingStyleForRowAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)viewDidLoad;
@end

@implementation JSSocialProfileEditorViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_4E243C();
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
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
    cellCopy = cell;
    pathCopy = path;
    tableViewCell = [v12 tableViewCell];
    if (tableViewCell)
    {
      v16 = tableViewCell;
      [tableViewCell setSeparatorStyle:0];
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  pathCopy = path;
  selfCopy = self;
  v14 = sub_4E3B34();

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB92A0();
  v15 = v14;
  sub_AB3790();
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  selfCopy = self;
  v20 = sub_4E44E4(viewCopy, v13, v15, v12);

  (*(v10 + 8))(v12, v9);

  return v20;
}

- (double)collectionView:(id)view heightForHeaderViewInTableLayout:(id)layout
{
  [view bounds];
  v5 = 128.0;
  if (v4 <= 128.0)
  {
    v5 = v4;
  }

  return v5 + 32.0;
}

- (double)collectionView:(id)view tableLayout:(id)layout heightForRowAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  type metadata accessor for SocialProfileEditorCell();
  pathCopy = path;
  selfCopy = self;
  traitCollection = [(JSSocialProfileEditorViewController *)selfCopy traitCollection];
  v14 = sub_722BC(traitCollection, 0.0);
  v16 = v15;
  (*(v8 + 8))(v10, v7, v14);

  return v16;
}

- (int64_t)collectionView:(id)view tableLayout:(id)layout editingStyleForRowAtIndexPath:(id)path
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v6 + 8))(v8, v5);
  return 0;
}

- (BOOL)collectionView:(id)view tableLayout:(id)layout shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v6 + 8))(v8, v5);
  return 0;
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_4E9BAC(&unk_E05380, 255, type metadata accessor for InfoKey);
  v7 = sub_AB8FF0();
  controllerCopy = controller;
  infoCopy = info;
  selfCopy = self;
  sub_4E5770(controllerCopy, v7);
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_4E5BCC(cancelCopy);
}

- (_TtC16MusicApplication35JSSocialProfileEditorViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16MusicApplication35JSSocialProfileEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end