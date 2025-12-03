@interface StocksTodayAgent
- (_TtC9StocksApp16StocksTodayAgent)init;
- (void)bundleSubscriptionDidChange:(id)change previousBundleSubscription:(id)subscription;
- (void)dealloc;
- (void)markPurchaseDirty;
- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion;
@end

@implementation StocksTodayAgent

- (void)operationThrottler:(id)throttler performAsyncOperationWithCompletion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100010F80(sub_100037E5C, v6);
  swift_unknownObjectRelease();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(StocksTodayAgent *)&v7 dealloc];
}

- (_TtC9StocksApp16StocksTodayAgent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)bundleSubscriptionDidChange:(id)change previousBundleSubscription:(id)subscription
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