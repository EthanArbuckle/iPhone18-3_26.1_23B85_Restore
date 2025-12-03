@interface BrowseVenueChromeOverlay
- (ChromeOverlayHosting)host;
- (_TtP4Maps32BrowseVenueChromeOverlayDelegate_)delegate;
- (void)buttonTapped;
- (void)didChangeFocusedVenue:(id)venue focusedBuilding:(id)building displayedFloorOrdinal:(signed __int16)ordinal;
- (void)setDisplayedMapType:(unint64_t)type;
- (void)setHidden:(BOOL)hidden;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setHost:(id)host;
@end

@implementation BrowseVenueChromeOverlay

- (void)setDisplayedMapType:(unint64_t)type
{
  v3 = *(self + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_displayedMapType);
  *(self + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_displayedMapType) = type;
  selfCopy = self;
  sub_10003C5F4(v3);
}

- (void)setHost:(id)host
{
  *(self + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_host) = host;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_10003C910();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

- (_TtP4Maps32BrowseVenueChromeOverlayDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)buttonTapped
{
  selfCopy = self;
  sub_100376F5C();
}

- (ChromeOverlayHosting)host
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setHidden:(BOOL)hidden
{
  v3 = *(self + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_isHidden);
  *(self + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_isHidden) = hidden;
  selfCopy = self;
  sub_1003770C4(v3);
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated
{
  selfCopy = self;
  sub_100377C54(hidden);
}

- (void)didChangeFocusedVenue:(id)venue focusedBuilding:(id)building displayedFloorOrdinal:(signed __int16)ordinal
{
  venueCopy = venue;
  buildingCopy = building;
  selfCopy = self;
  sub_100377D04(venue);
}

@end