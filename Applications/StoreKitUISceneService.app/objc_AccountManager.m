@interface objc_AccountManager
+ (void)accountWithClient:(_TtC22StoreKitUISceneService6Client *)a3 completionHandler:(id)a4;
+ (void)accountWithType:(int64_t)a3 completionHandler:(id)a4;
+ (void)authenticateWithClient:(_TtC22StoreKitUISceneService6Client *)a3 reason:(NSString *)a4 dialogContext:(_TtP22StoreKitUISceneService14DialogProtocol_ *)a5 logKey:(NSString *)a6 completionHandler:(id)a7;
+ (void)authenticateWithRequest:(AMSAuthenticateRequest *)a3 dialogContext:(_TtP22StoreKitUISceneService14DialogProtocol_ *)a4 logKey:(NSString *)a5 completionHandler:(id)a6;
+ (void)primeTestFlightAccountWithClient:(_TtC22StoreKitUISceneService6Client *)a3 logKey:(NSString *)a4 completionHandler:(id)a5;
@end

@implementation objc_AccountManager

+ (void)accountWithClient:(_TtC22StoreKitUISceneService6Client *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  sub_10003A608(&unk_100096C70, v7);
}

+ (void)accountWithType:(int64_t)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;

  sub_10003A608(&unk_100096C58, v7);
}

+ (void)authenticateWithClient:(_TtC22StoreKitUISceneService6Client *)a3 reason:(NSString *)a4 dialogContext:(_TtP22StoreKitUISceneService14DialogProtocol_ *)a5 logKey:(NSString *)a6 completionHandler:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = v12;
  v13[7] = a1;
  v14 = a3;
  v15 = a4;
  swift_unknownObjectRetain();
  v16 = a6;

  sub_10003A608(&unk_100096C00, v13);
}

+ (void)authenticateWithRequest:(AMSAuthenticateRequest *)a3 dialogContext:(_TtP22StoreKitUISceneService14DialogProtocol_ *)a4 logKey:(NSString *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = a1;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = a5;

  sub_10003A608(&unk_100096BD8, v11);
}

+ (void)primeTestFlightAccountWithClient:(_TtC22StoreKitUISceneService6Client *)a3 logKey:(NSString *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;

  sub_10003A608(&unk_100096B38, v9);
}

@end