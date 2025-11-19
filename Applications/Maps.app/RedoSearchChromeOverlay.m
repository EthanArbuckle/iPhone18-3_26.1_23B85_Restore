@interface RedoSearchChromeOverlay
- (ChromeOverlayHosting)host;
- (_TtP4Maps31RedoSearchChromeOverlayDelegate_)delegate;
- (void)layoutSearchHereFloatingControlWithHeight:(double)a3;
- (void)setAlpha:(double)a3;
- (void)setHidden:(char)a3 animated:(char)a4;
- (void)setHost:(id)a3;
- (void)updateContainerStyle:(unint64_t)a3;
- (void)updateSearchOverlayWithState:(unsigned __int8)a3;
@end

@implementation RedoSearchChromeOverlay

- (void)setHost:(id)a3
{
  *(self + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_host) = a3;
  swift_unknownObjectRetain_n();
  v4 = self;
  swift_unknownObjectRelease();
  sub_100036CC4();
  swift_unknownObjectRelease();
}

- (void)setHidden:(char)a3 animated:(char)a4
{
  v6 = a1;
  sub_100036824(a3, a4);
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

- (void)updateContainerStyle:(unint64_t)a3
{
  v4 = self;
  sub_1001737D8(a3);
}

- (void)layoutSearchHereFloatingControlWithHeight:(double)a3
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = a3;
  v9[4] = sub_1001740FC;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100039C64;
  v9[3] = &unk_101606EB8;
  v7 = _Block_copy(v9);
  v8 = self;

  [v5 animateWithDuration:v7 animations:0.1];

  _Block_release(v7);
}

- (void)setAlpha:(double)a3
{
  v4 = self;
  sub_100173C9C(a3);
}

- (void)updateSearchOverlayWithState:(unsigned __int8)a3
{
  v3 = *(self + OBJC_IVAR____TtC4Maps23RedoSearchChromeOverlay_redoSearchController);
  if (v3)
  {
    v6 = self;
    v5 = v3;
    sub_100540BF4(a3);
  }
}

@end