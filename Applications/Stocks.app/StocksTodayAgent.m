@interface StocksTodayAgent
- (_TtC9StocksApp16StocksTodayAgent)init;
- (void)bundleSubscriptionDidChange:(id)a3 previousBundleSubscription:(id)a4;
- (void)dealloc;
- (void)markPurchaseDirty;
- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4;
@end

@implementation StocksTodayAgent

- (void)operationThrottler:(id)a3 performAsyncOperationWithCompletion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_unknownObjectRetain();
  v7 = self;
  sub_100010F80(sub_100037E5C, v6);
  swift_unknownObjectRelease();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:v5];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(StocksTodayAgent *)&v7 dealloc];
}

- (_TtC9StocksApp16StocksTodayAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidChange:(id)a3 previousBundleSubscription:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler);
  if (v4)
  {
    [v4 tickleWithQualityOfService:9 data:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

- (void)markPurchaseDirty
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler);
  if (v2)
  {
    [v2 tickleWithQualityOfService:9 data:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

@end