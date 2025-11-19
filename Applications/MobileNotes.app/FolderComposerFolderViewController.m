@interface FolderComposerFolderViewController
- (_TtC11MobileNotes34FolderComposerFolderViewController)initWithCoder:(id)a3;
- (_TtC11MobileNotes34FolderComposerFolderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation FolderComposerFolderViewController

- (_TtC11MobileNotes34FolderComposerFolderViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11MobileNotes34FolderComposerFolderViewController____lazy_storage___folderSelectionDataSource) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10035BE58();
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10035C44C();

  (*(v7 + 8))(v9, v6);
}

- (_TtC11MobileNotes34FolderComposerFolderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end