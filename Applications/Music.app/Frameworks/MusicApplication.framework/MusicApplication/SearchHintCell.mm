@interface SearchHintCell
- (_TtC16MusicApplication14SearchHintCell)initWithCoder:(id)coder;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SearchHintCell

- (_TtC16MusicApplication14SearchHintCell)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication14SearchHintCell__highlightedText);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication14SearchHintCell____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16MusicApplication14SearchHintCell____lazy_storage___magnifierImageView) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2283C4();
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  [(SearchHintCell *)selfCopy music_inheritedLayoutInsets];
  v7 = v6;
  v9 = v8;
  contentView = [(SearchHintCell *)selfCopy contentView];
  [contentView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  UIEdgeInsetsInsetRect(v12, v14, v16, v18, v7, v9);
  v20 = v19;
  v22 = v21;
  v23 = sub_228DA4();
  [v23 sizeThatFits:{v20, v22}];

  [attributesCopy frame];
  [attributesCopy setFrame:?];

  return attributesCopy;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2287B8(change);
}

@end