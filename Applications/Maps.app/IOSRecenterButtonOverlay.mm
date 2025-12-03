@interface IOSRecenterButtonOverlay
+ (UIEdgeInsets)NavIndicatorsTouchInsets;
- (ChromeOverlayHosting)host;
- (_TtP4Maps32IOSRecenterButtonOverlayDelegate_)delegate;
- (void)setHidden:(BOOL)hidden;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setHost:(id)host;
- (void)setRecenterButton:(id)button;
@end

@implementation IOSRecenterButtonOverlay

- (void)setHost:(id)host
{
  *(self + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_host) = host;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_10001BFB4();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated
{
  hiddenCopy = hidden;
  v5 = *(self + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_isHidden);
  *(self + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_isHidden) = hidden;
  selfCopy = self;
  sub_10004DCE4(v5);
  v6 = *(selfCopy + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_recenterButton);
  if (v6)
  {
    v7 = v6;
    [v7 setHidden:hiddenCopy];
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

- (void)setRecenterButton:(id)button
{
  v4 = *(self + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_recenterButton);
  *(self + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_recenterButton) = button;
  buttonCopy = button;
}

- (ChromeOverlayHosting)host
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setHidden:(BOOL)hidden
{
  v3 = *(self + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_isHidden);
  *(self + OBJC_IVAR____TtC4Maps24IOSRecenterButtonOverlay_isHidden) = hidden;
  selfCopy = self;
  sub_10004DCE4(v3);
}

@end