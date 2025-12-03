@interface PrefetchMarkerCollectionViewCell
- (_TtC8AppStore32PrefetchMarkerCollectionViewCell)initWithCoder:(id)coder;
- (_TtC8AppStore32PrefetchMarkerCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation PrefetchMarkerCollectionViewCell

- (_TtC8AppStore32PrefetchMarkerCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8AppStore32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(self + v9, 1, 1, v10);
  v14.receiver = self;
  v14.super_class = ObjectType;
  height = [(PrefetchMarkerCollectionViewCell *)&v14 initWithFrame:x, y, width, height];
  contentView = [(PrefetchMarkerCollectionViewCell *)height contentView];
  [contentView setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return height;
}

- (_TtC8AppStore32PrefetchMarkerCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  v5 = type metadata accessor for ItemLayoutContext();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end