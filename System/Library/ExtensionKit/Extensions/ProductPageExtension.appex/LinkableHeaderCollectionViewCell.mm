@interface LinkableHeaderCollectionViewCell
- (_TtC20ProductPageExtension32LinkableHeaderCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation LinkableHeaderCollectionViewCell

- (_TtC20ProductPageExtension32LinkableHeaderCollectionViewCell)initWithCoder:(id)a3
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  v2 = v12.receiver;
  [(LinkableHeaderCollectionViewCell *)&v12 layoutSubviews];
  v3 = [v2 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [*&v2[OBJC_IVAR____TtC20ProductPageExtension32LinkableHeaderCollectionViewCell_headerView] setFrame:{v5, v7, v9, v11}];
}

@end