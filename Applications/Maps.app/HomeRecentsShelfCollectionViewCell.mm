@interface HomeRecentsShelfCollectionViewCell
- (_TtC4Maps34HomeRecentsShelfCollectionViewCell)initWithCoder:(id)coder;
- (_TtC4Maps34HomeRecentsShelfCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation HomeRecentsShelfCollectionViewCell

- (_TtC4Maps34HomeRecentsShelfCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34HomeRecentsShelfCollectionViewCell_viewModel) = 0;
  v4 = OBJC_IVAR____TtC4Maps34HomeRecentsShelfCollectionViewCell_currentContainerSize;
  v5 = enum case for MapsDesignConstants.ColumnViews.ContainerSize.regular(_:);
  v6 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC4Maps34HomeRecentsShelfCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps34HomeRecentsShelfCollectionViewCell_viewModel) = 0;
  v8 = OBJC_IVAR____TtC4Maps34HomeRecentsShelfCollectionViewCell_currentContainerSize;
  v9 = enum case for MapsDesignConstants.ColumnViews.ContainerSize.regular(_:);
  v10 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v10 - 8) + 104))(self + v8, v9, v10);
  v12.receiver = self;
  v12.super_class = type metadata accessor for HomeRecentsShelfCollectionViewCell(0);
  return [(HomeRecentsShelfCollectionViewCell *)&v12 initWithFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004D7CCC();
}

@end