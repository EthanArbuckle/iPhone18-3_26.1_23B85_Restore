@interface NowPlayingQueueViewController.PlayingHeaderView
- (_TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView)initWithCoder:(id)coder;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation NowPlayingQueueViewController.PlayingHeaderView

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = _s17PlayingHeaderViewCMa();
  attributesCopy = attributes;
  v5 = v7.receiver;
  [(NowPlayingQueueViewController.PlayingHeaderView *)&v7 applyLayoutAttributes:attributesCopy];
  v6 = *&v5[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_didUpdateAttributes];
  if (v6)
  {

    v6(attributesCopy);

    sub_100020438(v6);
  }

  else
  {
  }
}

- (_TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_didUpdateAttributes);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end