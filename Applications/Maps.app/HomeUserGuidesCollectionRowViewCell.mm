@interface HomeUserGuidesCollectionRowViewCell
- (_TtC4Maps35HomeUserGuidesCollectionRowViewCell)initWithCoder:(id)coder;
- (_TtC4Maps35HomeUserGuidesCollectionRowViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation HomeUserGuidesCollectionRowViewCell

- (_TtC4Maps35HomeUserGuidesCollectionRowViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC4Maps35HomeUserGuidesCollectionRowViewCell_currentContainerSize;
  v5 = enum case for MapsDesignConstants.ColumnViews.ContainerSize.regular(_:);
  v6 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps35HomeUserGuidesCollectionRowViewCell_viewModel) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC4Maps35HomeUserGuidesCollectionRowViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC4Maps35HomeUserGuidesCollectionRowViewCell_currentContainerSize;
  v9 = enum case for MapsDesignConstants.ColumnViews.ContainerSize.regular(_:);
  v10 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v10 - 8) + 104))(self + v8, v9, v10);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps35HomeUserGuidesCollectionRowViewCell_viewModel) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for HomeUserGuidesCollectionRowViewCell(0);
  return [(HomeUserGuidesCollectionRowViewCell *)&v12 initWithFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100545998();
}

@end