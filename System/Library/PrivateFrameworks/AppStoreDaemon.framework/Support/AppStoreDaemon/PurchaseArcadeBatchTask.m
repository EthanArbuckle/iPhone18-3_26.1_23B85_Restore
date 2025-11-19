@interface PurchaseArcadeBatchTask
- (_TtC9appstored23PurchaseArcadeBatchTask)init;
- (_TtC9appstored23PurchaseArcadeBatchTask)initWithItemIDs:(id)a3 additionalBuyParams:(id)a4 requestToken:(id)a5 logKey:(id)a6 bag:(id)a7;
- (_TtC9appstored23PurchaseArcadeBatchTask)initWithItemMetadata:(id)a3 additionalBuyParams:(id)a4 requestToken:(id)a5 logKey:(id)a6 bag:(id)a7;
- (_TtC9appstored23PurchaseArcadeBatchTask)initWithLogKey:(id)a3;
- (_TtC9appstored23PurchaseArcadeBatchTask)initWithoutKeepAlive;
- (void)handleAuthenticateRequest:(AMSAuthenticateRequest *)a3 purchase:(AMSPurchase *)a4 purchaseQueue:(AMSPurchaseQueue *)a5 completion:(id)a6;
- (void)mainWithCompletionHandler:(id)a3;
- (void)setPurchaseResponse:(id)a3;
@end

@implementation PurchaseArcadeBatchTask

- (void)setPurchaseResponse:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_purchaseResponse);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9appstored23PurchaseArcadeBatchTask_purchaseResponse) = a3;
  v3 = a3;
}

- (_TtC9appstored23PurchaseArcadeBatchTask)initWithItemIDs:(id)a3 additionalBuyParams:(id)a4 requestToken:(id)a5 logKey:(id)a6 bag:(id)a7
{
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = sub_100160CCC(v11, a4, v12, v13, v14);

  return v15;
}

- (_TtC9appstored23PurchaseArcadeBatchTask)initWithItemMetadata:(id)a3 additionalBuyParams:(id)a4 requestToken:(id)a5 logKey:(id)a6 bag:(id)a7
{
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = sub_100160DF0(v11, a4, v12, v13, v14);

  return v15;
}

- (void)mainWithCompletionHandler:(id)a3
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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
  v13 = self;
  sub_1001BD9B4(0, 0, v7, &unk_100439270, v12);
}

- (void)handleAuthenticateRequest:(AMSAuthenticateRequest *)a3 purchase:(AMSPurchase *)a4 purchaseQueue:(AMSPurchaseQueue *)a5 completion:(id)a6
{
  v11 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
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
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = self;
  sub_1001BD9B4(0, 0, v13, &unk_1004344E0, v18);
}

- (_TtC9appstored23PurchaseArcadeBatchTask)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9appstored23PurchaseArcadeBatchTask)initWithLogKey:(id)a3
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