@interface TranscriptBackgroundView
- (void)_renderer:(id)a3 didPresentWorld:(id)a4 atTime:(double)a5;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)renderer:(id)a3 didRenderWorld:(id)a4 atTime:(double)a5;
@end

@implementation TranscriptBackgroundView

- (void)_renderer:(id)a3 didPresentWorld:(id)a4 atTime:(double)a5
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_10002EAC0();
  swift_unknownObjectRelease();
}

- (void)renderer:(id)a3 didRenderWorld:(id)a4 atTime:(double)a5
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_lock);
  v6 = self;
  os_unfair_lock_lock(v5);
  if ((*(&v6->super.super.super.isa + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented) & 1) == 0 && *(&v6->super.super.super.isa + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated) != 1)
  {
    *(&v6->super.super.super.isa + OBJC_IVAR____TtC32DynamicBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated) = 1;
  }

  os_unfair_lock_unlock(v5);
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_100029C88();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100029E18();
}

@end