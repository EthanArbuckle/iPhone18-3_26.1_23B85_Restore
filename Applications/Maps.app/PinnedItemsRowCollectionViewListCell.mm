@interface PinnedItemsRowCollectionViewListCell
- (_TtC4Maps36PinnedItemsRowCollectionViewListCell)initWithCoder:(id)coder;
- (_TtC4Maps36PinnedItemsRowCollectionViewListCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PinnedItemsRowCollectionViewListCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100385A5C();
}

- (_TtC4Maps36PinnedItemsRowCollectionViewListCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC4Maps36PinnedItemsRowCollectionViewListCell_currentContainerSize;
  v10 = enum case for MapsDesignConstants.ColumnViews.ContainerSize.regular(_:);
  v11 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v11 - 8) + 104))(self + v9, v10, v11);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps36PinnedItemsRowCollectionViewListCell_viewModel) = 0;
  v13.receiver = self;
  v13.super_class = ObjectType;
  return [(PinnedItemsRowCollectionViewListCell *)&v13 initWithFrame:x, y, width, height];
}

- (_TtC4Maps36PinnedItemsRowCollectionViewListCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC4Maps36PinnedItemsRowCollectionViewListCell_currentContainerSize;
  v7 = enum case for MapsDesignConstants.ColumnViews.ContainerSize.regular(_:);
  v8 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v8 - 8) + 104))(self + v6, v7, v8);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps36PinnedItemsRowCollectionViewListCell_viewModel) = 0;
  v12.receiver = self;
  v12.super_class = ObjectType;
  coderCopy = coder;
  v10 = [(PinnedItemsRowCollectionViewListCell *)&v12 initWithCoder:coderCopy];

  if (v10)
  {
  }

  return v10;
}

@end