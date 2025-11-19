@interface SearchHomeGuideCell
+ (NSString)reuseIdentifier;
- (NSArray)guideViewModels;
- (SearchHomeGuideCellDelegate)delegate;
- (_TtC4Maps19SearchHomeGuideCell)initWithCoder:(id)a3;
- (_TtC4Maps19SearchHomeGuideCell)initWithFrame:(CGRect)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)configureWithGuideViewModels:(id)a3 delegate:(id)a4 sectionIndex:(int64_t)a5;
- (void)layoutSubviews;
- (void)setGuideViewModels:(id)a3;
@end

@implementation SearchHomeGuideCell

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSArray)guideViewModels
{
  sub_1001FD3D8();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setGuideViewModels:(id)a3
{
  sub_1001FD3D8();
  *(self + OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_guideViewModels) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
}

- (SearchHomeGuideCellDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps19SearchHomeGuideCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(self + OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_guideViewModels) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_sectionIndex;
  *(self + v8) = NSNotFound.getter();
  v9 = self + OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_scrollIndex;
  *v9 = 0;
  v9[8] = 1;
  v10 = OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_currentContainerSize;
  v11 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v11 - 8) + 56))(self + v10, 1, 1, v11);
  v13.receiver = self;
  v13.super_class = type metadata accessor for SearchHomeGuideCell();
  return [(SearchHomeGuideCell *)&v13 initWithFrame:x, y, width, height];
}

- (_TtC4Maps19SearchHomeGuideCell)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_guideViewModels) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_sectionIndex;
  *(self + v4) = NSNotFound.getter();
  v5 = self + OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_scrollIndex;
  *v5 = 0;
  v5[8] = 1;
  v6 = OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_currentContainerSize;
  v7 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v7 - 8) + 56))(self + v6, 1, 1, v7);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)configureWithGuideViewModels:(id)a3 delegate:(id)a4 sectionIndex:(int64_t)a5
{
  sub_1001FD3D8();
  *(self + OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_guideViewModels) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v7 = self;

  swift_unknownObjectWeakAssign();
  *(v7 + OBJC_IVAR____TtC4Maps19SearchHomeGuideCell_sectionIndex) = a5;
  [(SearchHomeGuideCell *)v7 setNeedsUpdateConfiguration];
  swift_unknownObjectRelease();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1001FA7E8();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1001FAD54();

  (*(v5 + 8))(v7, v4);
}

@end