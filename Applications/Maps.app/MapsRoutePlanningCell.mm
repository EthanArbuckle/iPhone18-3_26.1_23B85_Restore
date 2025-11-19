@interface MapsRoutePlanningCell
+ (NSString)reuseIdentifier;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (MapsRoutePlanningCellDelegate)delegate;
- (NSArray)autoSharingContacts;
- (void)draw;
- (void)setActionButtonType:(unint64_t)a3;
- (void)setAutoSharingContacts:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setRoute:(id)a3;
- (void)setShouldHighlight:(BOOL)a3;
- (void)setShowPreviewRouteButton:(BOOL)a3;
@end

@implementation MapsRoutePlanningCell

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setRoute:(id)a3
{
  v6 = *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_route);
  *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_route) = a3;
  v4 = a3;
  v5 = self;
  sub_10035C1A8(v6);
}

- (MapsRoutePlanningCellDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  v5 = self;
  sub_10035C7F8(Strong);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)setShouldHighlight:(BOOL)a3
{
  v3 = *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_shouldHighlight);
  *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_shouldHighlight) = a3;
  if (v3 != a3)
  {
    *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty) = 1;
  }
}

- (void)setShowPreviewRouteButton:(BOOL)a3
{
  v3 = *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_showPreviewRouteButton);
  *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_showPreviewRouteButton) = a3;
  if (v3 != a3)
  {
    *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty) = 1;
  }
}

- (NSArray)autoSharingContacts
{
  sub_100014C84(0, &unk_101911D50);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setAutoSharingContacts:(id)a3
{
  sub_100014C84(0, &unk_101911D50);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_autoSharingContacts);
  *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_autoSharingContacts) = v4;
  v6 = self;

  LOBYTE(self) = sub_1001F11F8(v5, v4);

  if ((self & 1) == 0)
  {
    *(v6 + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty) = 1;
  }
}

- (void)setActionButtonType:(unint64_t)a3
{
  v3 = *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_actionButtonType);
  *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_actionButtonType) = a3;
  if (v3 != a3)
  {
    *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty) = 1;
  }
}

- (void)draw
{
  v2 = self;
  sub_10035CDA8();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v16.receiver = self;
  v16.super_class = type metadata accessor for MapsRoutePlanningCell();
  *&v9 = a4;
  *&v10 = a5;
  [(MapsRoutePlanningCell *)&v16 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v9, v10];
  v13 = floor(v12);
  v14 = ceil(v12);
  if (v12 >= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  result.height = v15;
  result.width = v11;
  return result;
}

@end