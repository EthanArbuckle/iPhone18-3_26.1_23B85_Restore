@interface SearchHintCollectionViewCell
- (BOOL)isHighlighted;
- (_TtC20ProductPageExtension28SearchHintCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SearchHintCollectionViewCell

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchHintCollectionViewCell();
  return [(SearchHintCollectionViewCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SearchHintCollectionViewCell();
  v4 = v5.receiver;
  [(SearchHintCollectionViewCell *)&v5 setHighlighted:highlightedCopy];
  sub_1003BE3E0();
}

- (_TtC20ProductPageExtension28SearchHintCollectionViewCell)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView;
  *(&self->super.super.super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for SearchHintView()) init];
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for SearchHintCollectionViewCell();
  v2 = v13.receiver;
  [(SearchHintCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension28SearchHintCollectionViewCell_hintView];
  contentView = [v2 contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1003BE748();
}

@end