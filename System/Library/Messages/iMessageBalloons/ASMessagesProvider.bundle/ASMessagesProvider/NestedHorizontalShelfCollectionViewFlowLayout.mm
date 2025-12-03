@interface NestedHorizontalShelfCollectionViewFlowLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (_TtC18ASMessagesProvider45NestedHorizontalShelfCollectionViewFlowLayout)init;
- (_TtC18ASMessagesProvider45NestedHorizontalShelfCollectionViewFlowLayout)initWithCoder:(id)coder;
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

- (_TtC18ASMessagesProvider45NestedHorizontalShelfCollectionViewFlowLayout)initWithCoder:(id)coder
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = offset.y;
  v7 = offset.x;
  selfCopy = self;
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