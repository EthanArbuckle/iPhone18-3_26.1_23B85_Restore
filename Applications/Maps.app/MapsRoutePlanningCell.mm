@interface MapsRoutePlanningCell
+ (NSString)reuseIdentifier;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (MapsRoutePlanningCellDelegate)delegate;
- (NSArray)autoSharingContacts;
- (void)draw;
- (void)setActionButtonType:(unint64_t)type;
- (void)setAutoSharingContacts:(id)contacts;
- (void)setDelegate:(id)delegate;
- (void)setRoute:(id)route;
- (void)setShouldHighlight:(BOOL)highlight;
- (void)setShowPreviewRouteButton:(BOOL)button;
@end

@implementation MapsRoutePlanningCell

+ (NSString)reuseIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setRoute:(id)route
{
  v6 = *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_route);
  *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_route) = route;
  routeCopy = route;
  selfCopy = self;
  sub_10035C1A8(v6);
}

- (MapsRoutePlanningCellDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10035C7F8(Strong);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)setShouldHighlight:(BOOL)highlight
{
  v3 = *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_shouldHighlight);
  *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_shouldHighlight) = highlight;
  if (v3 != highlight)
  {
    *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty) = 1;
  }
}

- (void)setShowPreviewRouteButton:(BOOL)button
{
  v3 = *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_showPreviewRouteButton);
  *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_showPreviewRouteButton) = button;
  if (v3 != button)
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

- (void)setAutoSharingContacts:(id)contacts
{
  sub_100014C84(0, &unk_101911D50);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_autoSharingContacts);
  *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_autoSharingContacts) = v4;
  selfCopy = self;

  LOBYTE(self) = sub_1001F11F8(v5, v4);

  if ((self & 1) == 0)
  {
    *(selfCopy + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty) = 1;
  }
}

- (void)setActionButtonType:(unint64_t)type
{
  v3 = *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_actionButtonType);
  *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell_actionButtonType) = type;
  if (v3 != type)
  {
    *(self + OBJC_IVAR____TtC4Maps21MapsRoutePlanningCell__dirty) = 1;
  }
}

- (void)draw
{
  selfCopy = self;
  sub_10035CDA8();
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  v16.receiver = self;
  v16.super_class = type metadata accessor for MapsRoutePlanningCell();
  *&v9 = priority;
  *&v10 = fittingPriority;
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