@interface MapScaleChromeOverlay
- (ChromeOverlayHosting)host;
- (MapViewProviding)mapViewProvider;
- (void)setHost:(id)host;
- (void)setMapViewProvider:(id)provider;
@end

@implementation MapScaleChromeOverlay

- (void)setMapViewProvider:(id)provider
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10002DE9C();

  swift_unknownObjectRelease();
}

- (void)setHost:(id)host
{
  *(self + OBJC_IVAR____TtC4Maps21MapScaleChromeOverlay_host) = host;
  swift_unknownObjectRetain_n();
  selfCopy = self;
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