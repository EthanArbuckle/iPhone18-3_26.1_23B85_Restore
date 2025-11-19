@interface ReviewSummaryCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ReviewSummaryCollectionViewCell

- (_TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView;
  *(&self->super.super.super.super.super.isa + v6) = [objc_allocWithZone(type metadata accessor for ReviewSummaryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for ReviewSummaryCollectionViewCell();
  v2 = v12.receiver;
  [(ReviewSummaryCollectionViewCell *)&v12 layoutSubviews];
  v3 = [v2 contentView];
  sub_100009D34();
  sub_1007477B4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView] setFrame:{v5, v7, v9, v11}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = [(ReviewSummaryCollectionViewCell *)v3 traitCollection];
  v5 = sub_1002AE008();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end