@interface CNAvatarPosterPairCollectionViewLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGSize)collectionViewContentSize;
- (_TtC10ContactsUI38CNAvatarPosterPairCollectionViewLayout)init;
- (id)indexPathsToDeleteForSupplementaryViewOfKind:(id)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (void)finalizeCollectionViewUpdates;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)prepareLayout;
@end

@implementation CNAvatarPosterPairCollectionViewLayout

- (void)prepareForCollectionViewUpdates:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CNAvatarPosterPairCollectionViewLayout();
  [(CNAvatarPosterPairCollectionViewLayout *)&v4 prepareForCollectionViewUpdates:a3];
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
  v2 = self;
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

- (id)indexPathsToDeleteForSupplementaryViewOfKind:(id)a3
{
  sub_199DF738C();
  sub_199DF81AC();
  v3 = sub_199DFA0BC();

  return v3;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
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

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  x = a3.x;
  v4 = self;
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