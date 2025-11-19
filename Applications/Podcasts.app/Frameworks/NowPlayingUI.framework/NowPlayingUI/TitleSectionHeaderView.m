@interface TitleSectionHeaderView
- (UIColor)backgroundColor;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TitleSectionHeaderView

- (void)setTitle:(id)a3
{
  v4 = sub_1448DC();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_title);
  *v7 = v4;
  v7[1] = v5;
  v9 = self;

  v8 = *(v9 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textComponents);
  *(v8 + 128) = v4;
  *(v8 + 136) = v6;

  sub_54980();
  [(TitleSectionHeaderView *)v9 setNeedsLayout];
}

- (void)setSubtitle:(id)a3
{
  v4 = sub_1448DC();
  v5 = (self + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_subtitle);
  *v5 = v4;
  v5[1] = v6;
  v7 = self;

  sub_963D8();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_96A34();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_9830C(a3);
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TitleSectionHeaderView();
  v2 = v3.receiver;
  [(TitleSectionHeaderView *)&v3 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
}

- (void)preferredContentSizeDidChangeWithNewContentSizeCategory:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_99DB4();
}

- (UIColor)backgroundColor
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TitleSectionHeaderView();
  v2 = [(TitleSectionHeaderView *)&v4 backgroundColor];

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TitleSectionHeaderView();
  v4 = a3;
  v5 = v7.receiver;
  [(TitleSectionHeaderView *)&v7 setBackgroundColor:v4];
  v6 = *&v5[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_externalBackgroundColor];
  *&v5[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_externalBackgroundColor] = a3;
}

@end