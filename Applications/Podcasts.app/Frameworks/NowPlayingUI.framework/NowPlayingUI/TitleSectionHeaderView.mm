@interface TitleSectionHeaderView
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)category;
- (void)setBackgroundColor:(id)color;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TitleSectionHeaderView

- (void)setTitle:(id)title
{
  v4 = sub_1448DC();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_title);
  *v7 = v4;
  v7[1] = v5;
  selfCopy = self;

  v8 = *(selfCopy + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textComponents);
  *(v8 + 128) = v4;
  *(v8 + 136) = v6;

  sub_54980();
  [(TitleSectionHeaderView *)selfCopy setNeedsLayout];
}

- (void)setSubtitle:(id)subtitle
{
  v4 = sub_1448DC();
  v5 = (self + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_subtitle);
  *v5 = v4;
  v5[1] = v6;
  selfCopy = self;

  sub_963D8();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_96A34();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_9830C(change);
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TitleSectionHeaderView();
  v2 = v3.receiver;
  [(TitleSectionHeaderView *)&v3 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
}

- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)category
{
  categoryCopy = category;
  selfCopy = self;
  sub_99DB4();
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TitleSectionHeaderView();
  backgroundColor = [(TitleSectionHeaderView *)&v4 backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TitleSectionHeaderView();
  colorCopy = color;
  v5 = v7.receiver;
  [(TitleSectionHeaderView *)&v7 setBackgroundColor:colorCopy];
  v6 = *&v5[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_externalBackgroundColor];
  *&v5[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_externalBackgroundColor] = color;
}

@end