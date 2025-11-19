@interface FolderCollectionView
- (CGPoint)contentOffset;
- (_TtC21DockFolderViewService20FolderCollectionView)initWithCoder:(id)a3;
- (void)setContentOffset:(CGPoint)a3;
@end

@implementation FolderCollectionView

- (_TtC21DockFolderViewService20FolderCollectionView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService20FolderCollectionView_itemsPinnedToBottomCount) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGPoint)contentOffset
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(FolderCollectionView *)&v4 contentOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  ObjectType = swift_getObjectType();
  v15.receiver = self;
  v15.super_class = ObjectType;
  v7 = self;
  [(FolderCollectionView *)&v15 setContentOffset:x, y];
  v8 = [(FolderCollectionView *)v7 collectionViewLayout];
  type metadata accessor for DOCSBFolderCollectionViewLayout();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v14.receiver = v7;
    v14.super_class = ObjectType;
    v11 = [(FolderCollectionView *)&v14 contentOffset];
    (*((swift_isaMask & *v10) + 0x80))(v11, v12);
    v13 = v8;
  }

  else
  {
    v13 = v7;
    v7 = v8;
  }
}

@end