@interface NowPlayingQueueControlsView
- (int64_t)accessibilityRepeatType;
- (int64_t)accessibilityShuffleType;
- (void)layoutSubviews;
@end

@implementation NowPlayingQueueControlsView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100292B88();
}

- (int64_t)accessibilityShuffleType
{
  if (self->contentView[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType])
  {
    return 0;
  }

  else
  {
    return *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType);
  }
}

- (int64_t)accessibilityRepeatType
{
  if (self->contentView[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType])
  {
    return 0;
  }

  else
  {
    return *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType);
  }
}

@end