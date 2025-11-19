@interface MapScaleChromeOverlay
- (ChromeOverlayHosting)host;
- (MapViewProviding)mapViewProvider;
- (void)setHost:(id)a3;
- (void)setMapViewProvider:(id)a3;
@end

@implementation MapScaleChromeOverlay

- (void)setMapViewProvider:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_10002DE9C();

  swift_unknownObjectRelease();
}

- (void)setHost:(id)a3
{
  *(self + OBJC_IVAR____TtC4Maps21MapScaleChromeOverlay_host) = a3;
  swift_unknownObjectRetain_n();
  v4 = self;
  swift_unknownObjectRelease();
  sub_10002DFCC();
  swift_unknownObjectRelease();
}

- (MapViewProviding)mapViewProvider
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ChromeOverlayHosting)host
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

@end