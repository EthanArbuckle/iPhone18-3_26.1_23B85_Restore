@interface InAppPurchaseSearchResultContentView
- (_TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation InAppPurchaseSearchResultContentView

- (_TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_metrics;
  if (qword_100921778 != -1)
  {
    swift_once();
  }

  v5 = sub_100742014();
  v6 = sub_10000D0FC(v5, qword_100982190);
  (*(*(v5 - 8) + 16))(self + v4, v6, v5);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension36InAppPurchaseSearchResultContentView_bodyBackgroundColor;
  sub_100016C60(0, &qword_100923500);
  *(&self->super.super.super.isa + v7) = sub_100753E74();
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10039F048();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10039F4A4(change);
}

@end