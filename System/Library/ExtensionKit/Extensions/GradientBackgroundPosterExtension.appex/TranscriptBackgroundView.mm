@interface TranscriptBackgroundView
- (void)_renderer:(id)_renderer didPresentWorld:(id)world atTime:(double)time;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)renderer:(id)renderer didRenderWorld:(id)world atTime:(double)time;
@end

@implementation TranscriptBackgroundView

- (void)_renderer:(id)_renderer didPresentWorld:(id)world atTime:(double)time
{
  swift_unknownObjectRetain();
  worldCopy = world;
  selfCopy = self;
  sub_1000404E8();
  swift_unknownObjectRelease();
}

- (void)renderer:(id)renderer didRenderWorld:(id)world atTime:(double)time
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_lock);
  selfCopy = self;
  os_unfair_lock_lock(v5);
  if ((*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_firstFramePresented) & 1) == 0 && *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated) != 1)
  {
    *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension24TranscriptBackgroundView_worldUpdated) = 1;
  }

  os_unfair_lock_unlock(v5);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_10003B6E0();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10003B870();
}

@end