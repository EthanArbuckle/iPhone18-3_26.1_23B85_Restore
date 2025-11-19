@interface IOSRecenterButtonOverlay
+ (UIEdgeInsets)NavIndicatorsTouchInsets;
- (ChromeOverlayHosting)host;
- (_TtP4Maps32IOSRecenterButtonOverlayDelegate_)delegate;
- (void)setHidden:(BOOL)a3;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setHost:(id)a3;
- (void)setRecenterButton:(id)a3;
@end

@implementation IOSRecenterButtonOverlay

- (void)setHost:(id)a3
{
  *(self + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_host) = a3;
  swift_unknownObjectRetain_n();
  v4 = self;
  sub_10001BFB4();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v5 = *(self + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_isHidden);
  *(self + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_isHidden) = a3;
  v8 = self;
  sub_10004DCE4(v5);
  v6 = *(v8 + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_recenterButton);
  if (v6)
  {
    v7 = v6;
    [v7 setHidden:v4];
  }

  else
  {
    __break(1u);
  }
}

+ (UIEdgeInsets)NavIndicatorsTouchInsets
{
  v2 = -8.0;
  v3 = -8.0;
  v4 = -8.0;
  v5 = -8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (_TtP4Maps32IOSRecenterButtonOverlayDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setRecenterButton:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_recenterButton);
  *(self + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_recenterButton) = a3;
  v3 = a3;
}

- (ChromeOverlayHosting)host
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setHidden:(BOOL)a3
{
  v3 = *(self + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_isHidden);
  *(self + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_isHidden) = a3;
  v4 = self;
  sub_10004DCE4(v3);
}

@end