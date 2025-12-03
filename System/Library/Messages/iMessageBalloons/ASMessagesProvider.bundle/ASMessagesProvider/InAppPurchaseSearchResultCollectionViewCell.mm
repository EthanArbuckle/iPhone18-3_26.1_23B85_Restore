@interface InAppPurchaseSearchResultCollectionViewCell
- (_TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation InAppPurchaseSearchResultCollectionViewCell

- (_TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_metrics;
  if (qword_93D428 != -1)
  {
    swift_once();
  }

  v5 = sub_757E60();
  v6 = sub_BE38(v5, qword_99E450);
  (*(*(v5 - 8) + 16))(self + v4, v6, v5);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor;
  sub_BE70(0, &qword_93E540);
  *(&self->super.super.super.super.super.isa + v7) = sub_76A070();
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_5524C8();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_55296C(change);
}

@end