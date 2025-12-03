@interface InAppPurchaseSearchResultContentView
- (_TtC8AppStore36InAppPurchaseSearchResultContentView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation InAppPurchaseSearchResultContentView

- (_TtC8AppStore36InAppPurchaseSearchResultContentView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_metrics;
  if (qword_10096E730 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v6 = sub_1000056A8(v5, qword_1009D25F0);
  (*(*(v5 - 8) + 16))(self + v4, v6, v5);
  v7 = OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_bodyBackgroundColor;
  sub_100005744(0, &qword_100970180);
  *(&self->super.super.super.isa + v7) = static UIColor.componentBackgroundStandout.getter();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005C162C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1005C1A88(change);
}

@end