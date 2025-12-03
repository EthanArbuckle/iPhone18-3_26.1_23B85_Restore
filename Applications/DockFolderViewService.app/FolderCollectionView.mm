@interface FolderCollectionView
- (CGPoint)contentOffset;
- (_TtC21DockFolderViewService20FolderCollectionView)initWithCoder:(id)coder;
- (void)setContentOffset:(CGPoint)offset;
@end

@implementation FolderCollectionView

- (_TtC21DockFolderViewService20FolderCollectionView)initWithCoder:(id)coder
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

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  ObjectType = swift_getObjectType();
  v15.receiver = self;
  v15.super_class = ObjectType;
  selfCopy = self;
  [(FolderCollectionView *)&v15 setContentOffset:x, y];
  collectionViewLayout = [(FolderCollectionView *)selfCopy collectionViewLayout];
  type metadata accessor for DOCSBFolderCollectionViewLayout();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v14.receiver = selfCopy;
    v14.super_class = ObjectType;
    contentOffset = [(FolderCollectionView *)&v14 contentOffset];
    (*((swift_isaMask & *v10) + 0x80))(contentOffset, v12);
    v13 = collectionViewLayout;
  }

  else
  {
    v13 = selfCopy;
    selfCopy = collectionViewLayout;
  }
}

@end