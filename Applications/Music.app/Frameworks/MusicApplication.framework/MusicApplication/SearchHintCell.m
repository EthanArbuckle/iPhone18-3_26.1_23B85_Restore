@interface SearchHintCell
- (_TtC16MusicApplication14SearchHintCell)initWithCoder:(id)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SearchHintCell

- (_TtC16MusicApplication14SearchHintCell)initWithCoder:(id)a3
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
  v2 = self;
  sub_2283C4();
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  [(SearchHintCell *)v5 music_inheritedLayoutInsets];
  v7 = v6;
  v9 = v8;
  v10 = [(SearchHintCell *)v5 contentView];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  UIEdgeInsetsInsetRect(v12, v14, v16, v18, v7, v9);
  v20 = v19;
  v22 = v21;
  v23 = sub_228DA4();
  [v23 sizeThatFits:{v20, v22}];

  [v4 frame];
  [v4 setFrame:?];

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2287B8(a3);
}

@end