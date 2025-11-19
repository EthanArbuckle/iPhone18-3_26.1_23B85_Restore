@interface InAppPurchaseSearchResultContentView
- (_TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation InAppPurchaseSearchResultContentView

- (_TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_metrics;
  if (qword_93D428 != -1)
  {
    swift_once();
  }

  v5 = sub_757E60();
  v6 = sub_BE38(v5, qword_99E450);
  (*(*(v5 - 8) + 16))(self + v4, v6, v5);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider36InAppPurchaseSearchResultContentView_bodyBackgroundColor;
  sub_BE70(0, &qword_93E540);
  *(&self->super.super.super.isa + v7) = sub_76A070();
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_350D68();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_3511C4(a3);
}

@end