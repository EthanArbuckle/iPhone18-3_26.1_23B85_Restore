@interface EditorialQuoteCollectionViewCell
- (_TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation EditorialQuoteCollectionViewCell

- (_TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialQuoteCollectionViewCell_itemLayoutContext;
  v5 = sub_1007469A4();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10030C05C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10030C3C0(change);
}

@end