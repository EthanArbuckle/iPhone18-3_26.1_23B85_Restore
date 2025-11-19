@interface LibraryMenuViewController
- (_TtC16MusicApplication25LibraryMenuViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC16MusicApplication25LibraryMenuViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation LibraryMenuViewController

- (_TtC16MusicApplication25LibraryMenuViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1EC7D4(v5, v7, a4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1ECA00();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LibraryMenuViewController();
  v4 = v5.receiver;
  [(LibraryMenuViewController *)&v5 viewWillAppear:v3];
  [v4 loadViewIfNeeded];
  *(v4 + OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_pendingSelectedIdentifier) = 13;
  sub_1EF7F8();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LibraryMenuViewController();
  v4 = v5.receiver;
  [(LibraryMenuViewController *)&v5 viewDidAppear:v3];
  sub_1EF7F8();
  v4[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_allowsAnimatedChanges] = 1;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LibraryMenuViewController();
  v4 = v5.receiver;
  [(LibraryMenuViewController *)&v5 viewWillDisappear:v3];
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(0);
  v4[OBJC_IVAR____TtC16MusicApplication25LibraryMenuViewController_allowsAnimatedChanges] = 0;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1EE208(a3, a4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1EEF68(a3);
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  sub_AB3790();
  v14 = a3;
  v15 = a4;
  v16 = self;
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

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  type metadata accessor for LibraryMenuViewController.Cell();
  v11 = swift_dynamicCastClass();
  v12 = a4;
  v13 = a5;
  if (v11)
  {
    [v11 _setDrawsSeparatorAtTopOfSection:0];
    [v11 _setDrawsSeparatorAtBottomOfSection:1];
    [v11 _setShouldHaveFullLengthTopSeparator:0];
  }

  (*(v8 + 8))(v10, v7);
}

- (_TtC16MusicApplication25LibraryMenuViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end