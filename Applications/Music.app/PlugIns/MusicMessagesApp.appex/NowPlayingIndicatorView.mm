@interface NowPlayingIndicatorView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NowPlayingIndicatorView

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_10000523C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000053AC();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelWidth);
  v4 = qword_100631E60;
  selfCopy = self;
  if (v4 != -1)
  {
    v10 = selfCopy;
    swift_once();
    selfCopy = v10;
  }

  v6 = v3 * 5.0 + *&qword_1006320C0 * 4.0;
  v7 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_maximumLevelHeight);

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100005704(change);
}

@end