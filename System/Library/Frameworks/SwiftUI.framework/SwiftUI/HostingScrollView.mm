@interface HostingScrollView
- (BOOL)_shouldScrollToContentBeginningInRightToLeft;
- (CGRect)bounds;
- (CGRect)frame;
- (_TtC7SwiftUI17HostingScrollView)initWithFrame:(CGRect)frame;
- (id)_focusScrollBoundaryMetricsForItem:(id)item;
- (void)_setContentOffset:(CGPoint)offset animation:(id)animation;
- (void)adjustedContentInsetDidChange;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAccessoryView:(id)view atEdge:(int64_t)edge;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
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
  selfCopy = self;
  HostingScrollView.layoutSubviews()();
}

- (void)didMoveToWindow
{
  selfCopy = self;
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

- (void)setAccessoryView:(id)view atEdge:(int64_t)edge
{
  viewCopy = view;
  selfCopy = self;
  HostingScrollView.setAccessory(_:at:)(viewCopy, edge);
}

- (BOOL)_shouldScrollToContentBeginningInRightToLeft
{
  if ((*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI17HostingScrollView_helper))[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes])
  {
    selfCopy = self;
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

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  y = offset.y;
  x = offset.x;
  selfCopy = self;
  HostingScrollView.setContentOffset(_:animated:)(__PAIR128__(*&y, *&x), animated);
}

- (void)_setContentOffset:(CGPoint)offset animation:(id)animation
{
  y = offset.y;
  x = offset.x;
  animationCopy = animation;
  v11.value.super.super._attr = self;
  attr = v11.value.super.super._attr;
  v11.value.super.super.super.isa = animation;
  HostingScrollView._setContentOffset(_:animation:)(__PAIR128__(*&y, *&x), v11);
}

- (id)_focusScrollBoundaryMetricsForItem:(id)item
{
  v5 = objc_allocWithZone(MEMORY[0x1E69DD4E8]);
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = [v5 initWithFocusItem:item scrollView:selfCopy];
  if ([v7 hasDisprovedAllRelevantAssumptions])
  {
    swift_unknownObjectRelease();
  }

  else
  {
    HostingScrollView.PlatformGroupContainer.updateFocusScrollBoundaryMetrics(_:for:)(v7, item);

    swift_unknownObjectRelease();
  }

  return v7;
}

- (_TtC7SwiftUI17HostingScrollView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end