@interface ScrollViewHelper
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (_TtC7SwiftUI16ScrollViewHelper)init;
- (id)accessibilityAttributedScrollStatusForScrollView:(id)a3;
- (id)accessibilityScrollStatusForScrollView:(id)a3;
- (void)_updateCycleIdleUntil:(unint64_t)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation ScrollViewHelper

- (_TtC7SwiftUI16ScrollViewHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = self;
  ScrollViewHelper.willStartPanning()();
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  targetOffset = *a5;
  v8 = self;
  ScrollViewHelper.mayEndPanning(velocity:targetOffset:)(__PAIR128__(*&y, *&x), &targetOffset);
  *a5 = targetOffset;
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v5 = self;
  ScrollViewHelper.didEndPanning(willDecelerate:)(a4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase) = 0;
  v3 = self + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  v3[66] = 0;
  *(v3 + 32) = 512;
  v5 = self;
  ScrollViewHelper.updateGraphState(isPreferred:)(0);
  v4 = (&v5->super.isa + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias);
  *v4 = 0;
  v4[1] = 0;
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
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
  v4 = self;
  ScrollViewHelper.updateGraphState(isPreferred:)(0);
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = self + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_delegate;
  result = 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    v8 = self;
    LOBYTE(v5) = v7(ObjectType, v5);
    swift_unknownObjectRelease();

    if (v5)
    {
      return 0;
    }
  }

  return result;
}

- (void)_updateCycleIdleUntil:(unint64_t)a3
{
  v3 = self;
  ScrollViewHelper.prefetch(until:)();
}

- (id)accessibilityScrollStatusForScrollView:(id)a3
{
  v3 = a3;
  v4 = [v3 swiftUI_accessibilityScrollStatus];
  if (v4)
  {
    v5 = v4;
    v6 = (*(v4 + 2))();
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

- (id)accessibilityAttributedScrollStatusForScrollView:(id)a3
{
  v3 = a3;
  v4 = [v3 swiftUI_accessibilityAttributedScrollStatus];
  if (v4)
  {
    v5 = v4;
    v6 = (*(v4 + 2))();

    _Block_release(v5);
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end