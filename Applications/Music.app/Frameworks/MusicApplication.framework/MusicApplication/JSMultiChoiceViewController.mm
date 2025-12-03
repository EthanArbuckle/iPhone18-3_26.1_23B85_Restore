@interface JSMultiChoiceViewController
- (BOOL)collectionView:(id)view tableLayout:(id)layout shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (_TtC16MusicApplication27JSMultiChoiceViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC16MusicApplication27JSMultiChoiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)collectionView:(id)view heightForFooterViewInTableLayout:(id)layout;
- (double)collectionView:(id)view tableLayout:(id)layout heightForRowAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)collectionView:(id)view tableLayout:(id)layout editingStyleForRowAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)music_viewInheritedLayoutInsetsDidChange;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation JSMultiChoiceViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_498420();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for JSMultiChoiceViewController();
  swift_unknownObjectRetain();
  v4 = v5.receiver;
  [(JSMultiChoiceViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:container];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_49A890();
  }

  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_498890(change);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_498A68(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)music_viewInheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for JSMultiChoiceViewController();
  v2 = v3.receiver;
  [(JSMultiChoiceViewController *)&v3 music_viewInheritedLayoutInsetsDidChange];
  sub_49A890();
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_49B310();

  return v7;
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
  v14 = sub_498CFC(viewCopy);

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
  v20 = sub_499608(viewCopy, v13, v15);

  (*(v10 + 8))(v12, v9);

  return v20;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  selfCopy = self;
  sub_49B414(cellCopy);

  (*(v10 + 8))(v12, v9);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  pathCopy = path;
  selfCopy = self;
  sub_499A70(viewCopy, v10);

  (*(v8 + 8))(v10, v7);
}

- (double)collectionView:(id)view tableLayout:(id)layout heightForRowAtIndexPath:(id)path
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  viewCopy = view;
  layoutCopy = layout;
  pathCopy = path;
  selfCopy = self;
  v17 = sub_49B730(viewCopy);

  (*(v10 + 8))(v12, v9);
  return v17;
}

- (double)collectionView:(id)view heightForFooterViewInTableLayout:(id)layout
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  v9 = sub_49BEA4(viewCopy);

  return v9;
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

- (_TtC16MusicApplication27JSMultiChoiceViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16MusicApplication27JSMultiChoiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end