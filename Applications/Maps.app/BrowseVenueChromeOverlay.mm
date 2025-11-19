@interface BrowseVenueChromeOverlay
- (ChromeOverlayHosting)host;
- (_TtP4Maps32BrowseVenueChromeOverlayDelegate_)delegate;
- (void)buttonTapped;
- (void)didChangeFocusedVenue:(id)a3 focusedBuilding:(id)a4 displayedFloorOrdinal:(signed __int16)a5;
- (void)setDisplayedMapType:(unint64_t)a3;
- (void)setHidden:(BOOL)a3;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setHost:(id)a3;
@end

@implementation BrowseVenueChromeOverlay

- (void)setDisplayedMapType:(unint64_t)a3
{
  v3 = *(self + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_displayedMapType);
  *(self + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_displayedMapType) = a3;
  v4 = self;
  sub_10003C5F4(v3);
}

- (void)setHost:(id)a3
{
  *(self + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_host) = a3;
  swift_unknownObjectRetain_n();
  v4 = self;
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
  v2 = self;
  sub_100376F5C();
}

- (ChromeOverlayHosting)host
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setHidden:(BOOL)a3
{
  v3 = *(self + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_isHidden);
  *(self + OBJC_IVAR____TtC4Maps24BrowseVenueChromeOverlay_isHidden) = a3;
  v4 = self;
  sub_1003770C4(v3);
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  v5 = self;
  sub_100377C54(a3);
}

- (void)didChangeFocusedVenue:(id)a3 focusedBuilding:(id)a4 displayedFloorOrdinal:(signed __int16)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_100377D04(a3);
}

@end