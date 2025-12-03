@interface SearchHomeCityCell
+ (NSString)reuseIdentifier;
- (CGSize)coverPhotoSize;
- (NSArray)guideLocationViewModels;
- (SearchHomeCityCellDelegate)delegate;
- (_TtC4Maps18SearchHomeCityCell)initWithCoder:(id)coder;
- (_TtC4Maps18SearchHomeCityCell)initWithFrame:(CGRect)frame;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)layoutSubviews;
- (void)setGuideLocationViewModels:(id)models;
@end

@implementation SearchHomeCityCell

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSArray)guideLocationViewModels
{
  sub_1002F8744();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setGuideLocationViewModels:(id)models
{
  sub_1002F8744();
  *(self + OBJC_IVAR____TtC4Maps18SearchHomeCityCell_guideLocationViewModels) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (SearchHomeCityCellDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (CGSize)coverPhotoSize
{
  [(SearchHomeCityCell *)self bounds];
  v3 = v2 * 0.5;
  v4 = v2 * 0.5 * 1.33333333;
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC4Maps18SearchHomeCityCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(self + OBJC_IVAR____TtC4Maps18SearchHomeCityCell_guideLocationViewModels) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v8 = self + OBJC_IVAR____TtC4Maps18SearchHomeCityCell_scrollIndex;
  *v8 = 0;
  v8[8] = 1;
  v9 = OBJC_IVAR____TtC4Maps18SearchHomeCityCell_currentContainerSize;
  v10 = enum case for MapsDesignConstants.ColumnViews.ContainerSize.regular(_:);
  v11 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v11 - 8) + 104))(self + v9, v10, v11);
  v13.receiver = self;
  v13.super_class = type metadata accessor for SearchHomeCityCell();
  return [(SearchHomeCityCell *)&v13 initWithFrame:x, y, width, height];
}

- (_TtC4Maps18SearchHomeCityCell)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR____TtC4Maps18SearchHomeCityCell_guideLocationViewModels) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v4 = self + OBJC_IVAR____TtC4Maps18SearchHomeCityCell_scrollIndex;
  *v4 = 0;
  v4[8] = 1;
  v5 = OBJC_IVAR____TtC4Maps18SearchHomeCityCell_currentContainerSize;
  v6 = enum case for MapsDesignConstants.ColumnViews.ContainerSize.regular(_:);
  v7 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v7 - 8) + 104))(self + v5, v6, v7);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002F7388();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002F7630();

  (*(v5 + 8))(v7, v4);
}

@end