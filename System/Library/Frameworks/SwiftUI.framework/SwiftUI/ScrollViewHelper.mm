@interface ScrollViewHelper
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (_TtC7SwiftUI16ScrollViewHelper)init;
- (id)accessibilityAttributedScrollStatusForScrollView:(id)view;
- (id)accessibilityScrollStatusForScrollView:(id)view;
- (void)_updateCycleIdleUntil:(unint64_t)until;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
@end

@implementation ScrollViewHelper

- (_TtC7SwiftUI16ScrollViewHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  selfCopy = self;
  ScrollViewHelper.willStartPanning()();
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  targetOffset = *offset;
  selfCopy = self;
  ScrollViewHelper.mayEndPanning(velocity:targetOffset:)(__PAIR128__(*&y, *&x), &targetOffset);
  *offset = targetOffset;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  selfCopy = self;
  ScrollViewHelper.didEndPanning(willDecelerate:)(decelerate);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) = 0;
  v3 = self + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  v3[66] = 0;
  *(v3 + 32) = 512;
  selfCopy = self;
  ScrollViewHelper.updateGraphState(isPreferred:)(0);
  v4 = (&selfCopy->super.isa + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias);
  *v4 = 0;
  v4[1] = 0;
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) = 0;
  v3 = self + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  v3[66] = 0;
  *(v3 + 32) = 512;
  selfCopy = self;
  ScrollViewHelper.updateGraphState(isPreferred:)(0);
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  v4 = self + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_delegate;
  result = 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    selfCopy = self;
    LOBYTE(v5) = v7(ObjectType, v5);
    swift_unknownObjectRelease();

    if (v5)
    {
      return 0;
    }
  }

  return result;
}

- (void)_updateCycleIdleUntil:(unint64_t)until
{
  selfCopy = self;
  ScrollViewHelper.prefetch(until:)();
}

- (id)accessibilityScrollStatusForScrollView:(id)view
{
  viewCopy = view;
  swiftUI_accessibilityScrollStatus = [viewCopy swiftUI_accessibilityScrollStatus];
  if (swiftUI_accessibilityScrollStatus)
  {
    v5 = swiftUI_accessibilityScrollStatus;
    v6 = (*(swiftUI_accessibilityScrollStatus + 2))();
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      _Block_release(v5);
      v11 = MEMORY[0x18D00C850](v8, v10);

      v12 = v11;
      goto LABEL_6;
    }

    _Block_release(v5);
  }

  v12 = 0;
LABEL_6:

  return v12;
}

- (id)accessibilityAttributedScrollStatusForScrollView:(id)view
{
  viewCopy = view;
  swiftUI_accessibilityAttributedScrollStatus = [viewCopy swiftUI_accessibilityAttributedScrollStatus];
  if (swiftUI_accessibilityAttributedScrollStatus)
  {
    v5 = swiftUI_accessibilityAttributedScrollStatus;
    v6 = (*(swiftUI_accessibilityAttributedScrollStatus + 2))();

    _Block_release(v5);
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end