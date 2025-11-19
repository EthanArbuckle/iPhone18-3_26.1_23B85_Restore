@interface SearchHintCollectionViewCell
- (BOOL)isHighlighted;
- (_TtC8AppStore28SearchHintCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation SearchHintCollectionViewCell

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchHintCollectionViewCell();
  return [(SearchHintCollectionViewCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SearchHintCollectionViewCell();
  v4 = v5.receiver;
  [(SearchHintCollectionViewCell *)&v5 setHighlighted:v3];
  sub_100723180();
}

- (_TtC8AppStore28SearchHintCollectionViewCell)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8AppStore28SearchHintCollectionViewCell_hintView;
  *(&self->super.super.super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for SearchHintView()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = type metadata accessor for SearchHintCollectionViewCell();
  v2 = v13.receiver;
  [(SearchHintCollectionViewCell *)&v13 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore28SearchHintCollectionViewCell_hintView];
  v4 = [v2 contentView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1007234E8();
}

@end