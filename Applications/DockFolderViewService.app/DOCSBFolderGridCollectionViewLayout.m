@interface DOCSBFolderGridCollectionViewLayout
- (_TtC21DockFolderViewService35DOCSBFolderGridCollectionViewLayout)init;
- (_TtC21DockFolderViewService35DOCSBFolderGridCollectionViewLayout)initWithCoder:(id)a3;
@end

@implementation DOCSBFolderGridCollectionViewLayout

- (_TtC21DockFolderViewService35DOCSBFolderGridCollectionViewLayout)init
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(DOCSBFolderCollectionViewLayout *)&v4 init];
  [(DOCSBFolderGridCollectionViewLayout *)v2 setMinimumLineSpacing:9.0];
  [(DOCSBFolderGridCollectionViewLayout *)v2 setMinimumInteritemSpacing:39.0];
  [(DOCSBFolderGridCollectionViewLayout *)v2 setSectionInset:0.0, 25.0, 39.0, 25.0];
  [(DOCSBFolderGridCollectionViewLayout *)v2 setSectionHeadersPinToVisibleBounds:1];

  return v2;
}

- (_TtC21DockFolderViewService35DOCSBFolderGridCollectionViewLayout)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end