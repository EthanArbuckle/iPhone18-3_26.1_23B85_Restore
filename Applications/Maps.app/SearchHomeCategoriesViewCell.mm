@interface SearchHomeCategoriesViewCell
+ (NSString)reuseIdentifier;
- (_TtC4Maps28SearchHomeCategoriesViewCell)init;
- (_TtC4Maps28SearchHomeCategoriesViewCell)initWithCoder:(id)coder;
- (_TtC4Maps28SearchHomeCategoriesViewCell)initWithFrame:(CGRect)frame;
- (void)configureWithCategories:(id)categories delegate:(id)delegate singleColumnLayout:(BOOL)layout searchAlongRoute:(BOOL)route;
- (void)layoutSubviews;
@end

@implementation SearchHomeCategoriesViewCell

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)configureWithCategories:(id)categories delegate:(id)delegate singleColumnLayout:(BOOL)layout searchAlongRoute:(BOOL)route
{
  sub_1004A37CC();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1004D0FF8(v10, delegate, layout, route);
  swift_unknownObjectRelease();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1004D1128();
}

- (_TtC4Maps28SearchHomeCategoriesViewCell)init
{
  v3 = self + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_scrollIndex;
  *v3 = 0;
  v3[8] = 1;
  v4 = OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_currentContainerSize;
  v5 = enum case for MapsDesignConstants.ColumnViews.ContainerSize.regular(_:);
  v6 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_singleColumnLayout) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_searchAlongRoute) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_categories) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for SearchHomeCategoriesViewCell();
  return [(SearchHomeCategoriesViewCell *)&v8 initWithFrame:0.0, 0.0, 0.0, 0.0];
}

- (_TtC4Maps28SearchHomeCategoriesViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_scrollIndex;
  *v8 = 0;
  v8[8] = 1;
  v9 = OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_currentContainerSize;
  v10 = enum case for MapsDesignConstants.ColumnViews.ContainerSize.regular(_:);
  v11 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v11 - 8) + 104))(self + v9, v10, v11);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_singleColumnLayout) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_searchAlongRoute) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_categories) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v13.receiver = self;
  v13.super_class = type metadata accessor for SearchHomeCategoriesViewCell();
  return [(SearchHomeCategoriesViewCell *)&v13 initWithFrame:x, y, width, height];
}

- (_TtC4Maps28SearchHomeCategoriesViewCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_scrollIndex;
  *v4 = 0;
  v4[8] = 1;
  v5 = OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_currentContainerSize;
  v6 = enum case for MapsDesignConstants.ColumnViews.ContainerSize.regular(_:);
  v7 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v7 - 8) + 104))(self + v5, v6, v7);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_singleColumnLayout) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_searchAlongRoute) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps28SearchHomeCategoriesViewCell_categories) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end