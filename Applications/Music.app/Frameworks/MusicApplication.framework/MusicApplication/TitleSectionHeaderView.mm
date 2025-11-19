@interface TitleSectionHeaderView
- (UIColor)backgroundColor;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)setBackgroundColor:(id)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TitleSectionHeaderView

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_18B220(v4);

  return v6;
}

- (void)setTitle:(id)a3
{
  v5 = sub_AB92A0();
  v7 = v6;
  v8 = (self + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title);
  swift_beginAccess();
  *v8 = v5;
  v8[1] = v7;
  v9 = a3;
  v10 = self;

  v11 = *(v10 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8);

  v12 = String.trim()();

  swift_beginAccess();
  v11[7] = v12;

  sub_2EB704();
  [(TitleSectionHeaderView *)v10 setNeedsLayout];
}

- (void)layoutSubviews
{
  v2 = self;
  TitleSectionHeaderView.layoutSubviews()();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  TitleSectionHeaderView.traitCollectionDidChange(_:)(v9);
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TitleSectionHeaderView();
  v2 = v3.receiver;
  [(TitleSectionHeaderView *)&v3 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  TitleSectionHeaderView.apply(_:)(v4);
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
  v6 = *&v5[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_externalBackgroundColor];
  *&v5[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_externalBackgroundColor] = a3;
}

@end