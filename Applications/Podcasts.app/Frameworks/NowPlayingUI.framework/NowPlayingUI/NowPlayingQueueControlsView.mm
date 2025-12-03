@interface NowPlayingQueueControlsView
- (_TtC12NowPlayingUI27NowPlayingQueueControlsView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)category;
@end

@implementation NowPlayingQueueControlsView

- (_TtC12NowPlayingUI27NowPlayingQueueControlsView)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_shareHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_sleepButton;
  *(&self->super.super.super.isa + v5) = [objc_opt_self() buttonWithType:0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_isShowingSleepTimer) = 0;
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_layoutInvalidationHandler);
  *v6 = 0;
  v6[1] = 0;
  result = sub_1452FC();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_AC1C4();
}

- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)category
{
  selfCopy = self;
  sub_ABFB4();
  [(NowPlayingQueueControlsView *)selfCopy setNeedsLayout];
  v3 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_layoutInvalidationHandler);
  if (v3)
  {

    v3(selfCopy);

    sub_2173C(v3);
  }

  else
  {
  }
}

@end