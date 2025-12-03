@interface PurchaseArcadeBatchTask
- (_TtC9appstored23PurchaseArcadeBatchTask)init;
- (_TtC9appstored23PurchaseArcadeBatchTask)initWithItemIDs:(id)ds additionalBuyParams:(id)params requestToken:(id)token logKey:(id)key bag:(id)bag;
- (_TtC9appstored23PurchaseArcadeBatchTask)initWithItemMetadata:(id)metadata additionalBuyParams:(id)params requestToken:(id)token logKey:(id)key bag:(id)bag;
- (_TtC9appstored23PurchaseArcadeBatchTask)initWithLogKey:(id)key;
- (_TtC9appstored23PurchaseArcadeBatchTask)initWithoutKeepAlive;
- (void)handleAuthenticateRequest:(AMSAuthenticateRequest *)request purchase:(AMSPurchase *)purchase purchaseQueue:(AMSPurchaseQueue *)queue completion:(id)completion;
- (void)mainWithCompletionHandler:(id)handler;
- (void)setPurchaseResponse:(id)response;
@end

@implementation PurchaseArcadeBatchTask

- (void)setPurchaseResponse:(id)response
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_purchaseResponse);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_purchaseResponse) = response;
  responseCopy = response;
}

- (_TtC9appstored23PurchaseArcadeBatchTask)initWithItemIDs:(id)ds additionalBuyParams:(id)params requestToken:(id)token logKey:(id)key bag:(id)bag
{
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (params)
  {
    params = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  tokenCopy = token;
  keyCopy = key;
  bagCopy = bag;
  v15 = sub_100160CCC(v11, params, tokenCopy, keyCopy, bagCopy);

  return v15;
}

- (_TtC9appstored23PurchaseArcadeBatchTask)initWithItemMetadata:(id)metadata additionalBuyParams:(id)params requestToken:(id)token logKey:(id)key bag:(id)bag
{
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (params)
  {
    params = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  tokenCopy = token;
  keyCopy = key;
  bagCopy = bag;
  v15 = sub_100160DF0(v11, params, tokenCopy, keyCopy, bagCopy);

  return v15;
}

- (void)mainWithCompletionHandler:(id)handler
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100437AD8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100435650;
  v12[5] = v11;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v7, &unk_100439270, v12);
}

- (void)handleAuthenticateRequest:(AMSAuthenticateRequest *)request purchase:(AMSPurchase *)purchase purchaseQueue:(AMSPurchaseQueue *)queue completion:(id)completion
{
  v11 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = request;
  v15[3] = purchase;
  v15[4] = queue;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100437AB8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1004366D0;
  v18[5] = v17;
  requestCopy = request;
  purchaseCopy = purchase;
  queueCopy = queue;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v13, &unk_1004344E0, v18);
}

- (_TtC9appstored23PurchaseArcadeBatchTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored23PurchaseArcadeBatchTask)initWithLogKey:(id)key
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored23PurchaseArcadeBatchTask)initWithoutKeepAlive
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end