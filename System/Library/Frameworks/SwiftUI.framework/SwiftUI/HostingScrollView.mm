@interface HostingScrollView
- (BOOL)_shouldScrollToContentBeginningInRightToLeft;
- (CGRect)bounds;
- (CGRect)frame;
- (_TtC7SwiftUI17HostingScrollView)initWithFrame:(CGRect)a3;
- (id)_focusScrollBoundaryMetricsForItem:(id)a3;
- (void)_setContentOffset:(CGPoint)a3 animation:(id)a4;
- (void)adjustedContentInsetDidChange;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAccessoryView:(id)a3 atEdge:(int64_t)a4;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
@end

@implementation HostingScrollView

- (CGRect)frame
{
  @objc HostingScrollView.PlatformContainer.frame.getter(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)bounds
{
  @objc HostingScrollView.PlatformContainer.frame.getter(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  HostingScrollView.layoutSubviews()();
}

- (void)didMoveToWindow
{
  v2 = self;
  HostingScrollView.didMoveToWindow()();
}

- (void)adjustedContentInsetDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(HostingScrollView *)&v3 adjustedContentInsetDidChange];
  ScrollViewHelper.updateScrollBehaviorState(canRetarget:)(1);
}

- (void)setAccessoryView:(id)a3 atEdge:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  HostingScrollView.setAccessory(_:at:)(v6, a4);
}

- (BOOL)_shouldScrollToContentBeginningInRightToLeft
{
  if ((*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_helper))[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes])
  {
    v3 = self;
    static Semantics.v6.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      v2 = 0;
    }

    else
    {
      static Semantics.v4_4.getter();
      v2 = isLinkedOnOrAfter(_:)();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  v7 = self;
  HostingScrollView.setContentOffset(_:animated:)(__PAIR128__(*&y, *&x), a4);
}

- (void)_setContentOffset:(CGPoint)a3 animation:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v11.value.super.super._attr = self;
  attr = v11.value.super.super._attr;
  v11.value.super.super.super.isa = a4;
  HostingScrollView._setContentOffset(_:animation:)(__PAIR128__(*&y, *&x), v11);
}

- (id)_focusScrollBoundaryMetricsForItem:(id)a3
{
  v5 = objc_allocWithZone(MEMORY[0x1E69DD4E8]);
  swift_unknownObjectRetain();
  v6 = self;
  v7 = [v5 initWithFocusItem:a3 scrollView:v6];
  if ([v7 hasDisprovedAllRelevantAssumptions])
  {
    swift_unknownObjectRelease();
  }

  else
  {
    HostingScrollView.PlatformGroupContainer.updateFocusScrollBoundaryMetrics(_:for:)(v7, a3);

    swift_unknownObjectRelease();
  }

  return v7;
}

- (_TtC7SwiftUI17HostingScrollView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end