@interface RedoSearchChromeOverlay
- (ChromeOverlayHosting)host;
- (_TtP4Maps31RedoSearchChromeOverlayDelegate_)delegate;
- (void)layoutSearchHereFloatingControlWithHeight:(double)height;
- (void)setAlpha:(double)alpha;
- (void)setHidden:(char)hidden animated:(char)animated;
- (void)setHost:(id)host;
- (void)updateContainerStyle:(unint64_t)style;
- (void)updateSearchOverlayWithState:(unsigned __int8)state;
@end

@implementation RedoSearchChromeOverlay

- (void)setHost:(id)host
{
  *(self + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_host) = host;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  swift_unknownObjectRelease();
  sub_100036CC4();
  swift_unknownObjectRelease();
}

- (void)setHidden:(char)hidden animated:(char)animated
{
  selfCopy = self;
  sub_100036824(hidden, animated);
}

- (_TtP4Maps31RedoSearchChromeOverlayDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ChromeOverlayHosting)host
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)updateContainerStyle:(unint64_t)style
{
  selfCopy = self;
  sub_1001737D8(style);
}

- (void)layoutSearchHereFloatingControlWithHeight:(double)height
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = height;
  v9[4] = sub_1001740FC;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100039C64;
  v9[3] = &unk_101606EB8;
  v7 = _Block_copy(v9);
  selfCopy = self;

  [v5 animateWithDuration:v7 animations:0.1];

  _Block_release(v7);
}

- (void)setAlpha:(double)alpha
{
  selfCopy = self;
  sub_100173C9C(alpha);
}

- (void)updateSearchOverlayWithState:(unsigned __int8)state
{
  v3 = *(self + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController);
  if (v3)
  {
    selfCopy = self;
    v5 = v3;
    sub_100540BF4(state);
  }
}

@end