@interface DeprecatedChapterCell
- (void)layoutSubviews;
- (void)setTitle:(id)title;
- (void)setWantsNowPlayingIndicator:(BOOL)indicator;
@end

@implementation DeprecatedChapterCell

- (void)setTitle:(id)title
{
  v4 = sub_1448DC();
  v5 = (self + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_title);
  *v5 = v4;
  v5[1] = v6;
  selfCopy = self;

  sub_13EE40();
}

- (void)setWantsNowPlayingIndicator:(BOOL)indicator
{
  v3 = *(self + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_wantsNowPlayingIndicator);
  *(self + OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_wantsNowPlayingIndicator) = indicator;
  if (v3 != indicator)
  {
    [(DeprecatedChapterCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_13F140();
}

@end