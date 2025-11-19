@interface NestedHorizontalShelfCollectionViewFlowLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (_TtC18ASMessagesProvider45NestedHorizontalShelfCollectionViewFlowLayout)init;
- (_TtC18ASMessagesProvider45NestedHorizontalShelfCollectionViewFlowLayout)initWithCoder:(id)a3;
@end

@implementation NestedHorizontalShelfCollectionViewFlowLayout

- (_TtC18ASMessagesProvider45NestedHorizontalShelfCollectionViewFlowLayout)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  v2 = [(NestedHorizontalShelfCollectionViewFlowLayout *)&v4 init];
  [(NestedHorizontalShelfCollectionViewFlowLayout *)v2 setScrollDirection:1];
  return v2;
}

- (_TtC18ASMessagesProvider45NestedHorizontalShelfCollectionViewFlowLayout)initWithCoder:(id)a3
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v8 = self;
  sub_61080C(v7, v6, x, y);
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

@end