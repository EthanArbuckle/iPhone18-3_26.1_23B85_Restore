@interface PagingLayout
- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF012PagingLayout)init;
- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF012PagingLayout)initWithCoder:(id)coder;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
@end

@implementation PagingLayout

- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF012PagingLayout)init
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(UICollectionViewFlowLayout *)&v4 init];
  [(UICollectionViewFlowLayout *)v2 setMinimumLineSpacing:0.0];
  [(UICollectionViewFlowLayout *)v2 setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)v2 setSectionInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  [(UICollectionViewFlowLayout *)v2 setScrollDirection:1];

  return v2;
}

- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF012PagingLayout)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v7 = v13.receiver;
  height = [(UICollectionViewFlowLayout *)&v13 invalidationContextForBoundsChange:x, y, width, height];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = height;
    [v10 setInvalidateFlowLayoutDelegateMetrics_];
  }

  return height;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13.receiver = selfCopy;
  v13.super_class = ObjectType;
  v11 = [(UICollectionViewFlowLayout *)&v13 layoutAttributesForItemAtIndexPath:isa];

  (*(v6 + 8))(v8, v5);

  return v11;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  PagingLayout.layoutAttributesForElements(in:)(x, y, width, height);
  v9 = v8;

  if (v9)
  {
    type metadata accessor for UICollectionViewLayoutAttributes();
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  return v10.super.isa;
}

@end