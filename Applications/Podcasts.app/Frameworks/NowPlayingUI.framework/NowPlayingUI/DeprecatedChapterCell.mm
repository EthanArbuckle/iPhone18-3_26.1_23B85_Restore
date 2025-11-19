@interface DeprecatedChapterCell
- (void)layoutSubviews;
- (void)setTitle:(id)a3;
- (void)setWantsNowPlayingIndicator:(BOOL)a3;
@end

@implementation DeprecatedChapterCell

- (void)setTitle:(id)a3
{
  v4 = sub_1448DC();
  v5 = (self + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_title);
  *v5 = v4;
  v5[1] = v6;
  v7 = self;

  sub_13EE40();
}

- (void)setWantsNowPlayingIndicator:(BOOL)a3
{
  v3 = *(self + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_wantsNowPlayingIndicator);
  *(self + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_wantsNowPlayingIndicator) = a3;
  if (v3 != a3)
  {
    [(DeprecatedChapterCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_13F140();
}

@end