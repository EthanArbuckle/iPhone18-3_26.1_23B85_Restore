@interface FolderComposerCollectionView
- (_TtC11MobileNotes28FolderComposerCollectionView)init;
- (_TtC11MobileNotes28FolderComposerCollectionView)initWithCoder:(id)a3;
- (_TtC11MobileNotes28FolderComposerCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
@end

@implementation FolderComposerCollectionView

- (_TtC11MobileNotes28FolderComposerCollectionView)init
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  v5 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1003E3FD4;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B39FC;
  aBlock[3] = &unk_10065C500;
  v6 = _Block_copy(aBlock);
  v7 = [v5 initWithSectionProvider:v6 configuration:v4];

  _Block_release(v6);

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(FolderComposerCollectionView *)&v10 initWithFrame:v7 collectionViewLayout:0.0, 0.0, 0.0, 0.0];

  return v8;
}

- (_TtC11MobileNotes28FolderComposerCollectionView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC11MobileNotes28FolderComposerCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end