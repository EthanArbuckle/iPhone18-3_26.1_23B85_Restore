@interface LibraryMenuViewController
- (_TtC16MusicApplication25LibraryMenuViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC16MusicApplication25LibraryMenuViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation LibraryMenuViewController

- (_TtC16MusicApplication25LibraryMenuViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1EC7D4(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1ECA00();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LibraryMenuViewController();
  v4 = v5.receiver;
  [(LibraryMenuViewController *)&v5 viewWillAppear:appearCopy];
  [v4 loadViewIfNeeded];
  *(v4 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier) = 13;
  sub_1EF7F8();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LibraryMenuViewController();
  v4 = v5.receiver;
  [(LibraryMenuViewController *)&v5 viewDidAppear:appearCopy];
  sub_1EF7F8();
  v4[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_allowsAnimatedChanges] = 1;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LibraryMenuViewController();
  v4 = v5.receiver;
  [(LibraryMenuViewController *)&v5 viewWillDisappear:disappearCopy];
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
  v4[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_allowsAnimatedChanges] = 0;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_1EE208(editing, animated);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1EEF68(change);
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  sub_AB3790();
  viewCopy = view;
  pathCopy = path;
  selfCopy = self;
  sub_1EF278(v10, v13);

  v17 = *(v8 + 8);
  v17(v10, v7);

  v18 = (*(v8 + 48))(v13, 1, v7);
  v19 = 0;
  if (v18 != 1)
  {
    isa = sub_AB3770().super.isa;
    v17(v13, v7);
    v19 = isa;
  }

  return v19;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  type metadata accessor for LibraryMenuViewController.Cell();
  v11 = swift_dynamicCastClass();
  cellCopy = cell;
  pathCopy = path;
  if (v11)
  {
    [v11 _setDrawsSeparatorAtTopOfSection:0];
    [v11 _setDrawsSeparatorAtBottomOfSection:1];
    [v11 _setShouldHaveFullLengthTopSeparator:0];
  }

  (*(v8 + 8))(v10, v7);
}

- (_TtC16MusicApplication25LibraryMenuViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end