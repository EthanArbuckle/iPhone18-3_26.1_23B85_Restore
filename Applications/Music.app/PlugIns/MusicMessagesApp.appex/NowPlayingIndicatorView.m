@interface NowPlayingIndicatorView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NowPlayingIndicatorView

- (void)tintColorDidChange
{
  v2 = self;
  sub_10000523C();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000053AC();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_levelWidth);
  v4 = qword_100631E60;
  v5 = self;
  if (v4 != -1)
  {
    v10 = v5;
    swift_once();
    v5 = v10;
  }

  v6 = v3 * 5.0 + *&qword_1006320C0 * 4.0;
  v7 = *(&v5->super.super.super.isa + OBJC_IVAR____TtC16MusicMessagesApp23NowPlayingIndicatorView_maximumLevelHeight);

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100005704(a3);
}

@end