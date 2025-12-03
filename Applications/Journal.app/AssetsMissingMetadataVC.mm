@interface AssetsMissingMetadataVC
- (_TtC7Journal23AssetsMissingMetadataVC)initWithNibName:(id)name bundle:(id)bundle;
- (void)controller:(id)controller didChangeContentWithSnapshot:(id)snapshot;
- (void)viewDidLoad;
@end

@implementation AssetsMissingMetadataVC

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10068B0A8();
}

- (void)controller:(id)controller didChangeContentWithSnapshot:(id)snapshot
{
  v6 = sub_1000F24EC(&unk_100AEC3B8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  sub_1000065A8(0, &qword_100AD43F0);
  sub_10068CCF0();
  sub_1001E4B10();
  static NSDiffableDataSourceSnapshot._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal23AssetsMissingMetadataVC_dataSource);
  if (v10)
  {
    snapshotCopy = snapshot;
    selfCopy = self;
    v13 = v10;
    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    sub_10068C55C();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC7Journal23AssetsMissingMetadataVC)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10068C938(v5, v7, bundle);
}

@end