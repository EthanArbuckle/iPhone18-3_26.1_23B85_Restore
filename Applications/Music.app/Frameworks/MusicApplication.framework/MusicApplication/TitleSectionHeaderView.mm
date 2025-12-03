@interface TitleSectionHeaderView
- (UIColor)backgroundColor;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)setBackgroundColor:(id)color;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TitleSectionHeaderView

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  v6 = sub_18B220(attributesCopy);

  return v6;
}

- (void)setTitle:(id)title
{
  v5 = sub_AB92A0();
  v7 = v6;
  v8 = (self + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title);
  swift_beginAccess();
  *v8 = v5;
  v8[1] = v7;
  titleCopy = title;
  selfCopy = self;

  v11 = *(selfCopy + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8);

  v12 = String.trim()();

  swift_beginAccess();
  v11[7] = v12;

  sub_2EB704();
  [(TitleSectionHeaderView *)selfCopy setNeedsLayout];
}

- (void)layoutSubviews
{
  selfCopy = self;
  TitleSectionHeaderView.layoutSubviews()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
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

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  TitleSectionHeaderView.apply(_:)(attributesCopy);
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
  v6 = *&v5[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_externalBackgroundColor];
  *&v5[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_externalBackgroundColor] = color;
}

@end