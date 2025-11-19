@interface PrefetchMarkerCollectionViewCell
- (_TtC8AppStore32PrefetchMarkerCollectionViewCell)initWithCoder:(id)a3;
- (_TtC8AppStore32PrefetchMarkerCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation PrefetchMarkerCollectionViewCell

- (_TtC8AppStore32PrefetchMarkerCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8AppStore32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v14.receiver = self;
  v14.super_class = ObjectType;
  v11 = [(PrefetchMarkerCollectionViewCell *)&v14 initWithFrame:x, y, width, height];
  v12 = [(PrefetchMarkerCollectionViewCell *)v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v11;
}

- (_TtC8AppStore32PrefetchMarkerCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC8AppStore32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end