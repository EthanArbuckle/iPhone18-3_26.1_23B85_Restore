@interface CNAvatarPosterPairCollectionViewLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGSize)collectionViewContentSize;
- (_TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout)init;
- (id)indexPathsToDeleteForSupplementaryViewOfKind:(id)kind;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (void)finalizeCollectionViewUpdates;
- (void)prepareForCollectionViewUpdates:(id)updates;
- (void)prepareLayout;
@end

@implementation CNAvatarPosterPairCollectionViewLayout

- (void)prepareForCollectionViewUpdates:(id)updates
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewLayout();
  [(CNAvatarPosterPairCollectionViewLayout *)&v4 prepareForCollectionViewUpdates:updates];
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewLayout();
  v2 = v3.receiver;
  [(CNAvatarPosterPairCollectionViewLayout *)&v3 finalizeCollectionViewUpdates];
  *&v2[OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_itemIndexPathsToDelete] = MEMORY[0x1E69E7CC0];
}

- (void)prepareLayout
{
  selfCopy = self;
  sub_199B5B0D0();
}

- (CGSize)collectionViewContentSize
{
  v2 = *(&self->super._collectionViewBoundsSize.width + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds);
  v3 = *(&self->super._collectionViewBoundsSize.height + OBJC_IVAR____TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout_contentBounds);
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)indexPathsToDeleteForSupplementaryViewOfKind:(id)kind
{
  sub_199DF738C();
  sub_199DF81AC();
  v3 = sub_199DFA0BC();

  return v3;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v8 = sub_199B5D860(x, y, width, height);

  if (v8)
  {
    sub_199B5EB58();
    v9 = sub_199DFA0BC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  x = offset.x;
  selfCopy = self;
  sub_199B5E274(x);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (_TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end