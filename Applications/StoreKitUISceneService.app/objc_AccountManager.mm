@interface objc_AccountManager
+ (void)accountWithClient:(_TtC22StoreKitUISceneService6Client *)client completionHandler:(id)handler;
+ (void)accountWithType:(int64_t)type completionHandler:(id)handler;
+ (void)authenticateWithClient:(_TtC22StoreKitUISceneService6Client *)client reason:(NSString *)reason dialogContext:(_TtP22StoreKitUISceneService14DialogProtocol_ *)context logKey:(NSString *)key completionHandler:(id)handler;
+ (void)authenticateWithRequest:(AMSAuthenticateRequest *)request dialogContext:(_TtP22StoreKitUISceneService14DialogProtocol_ *)context logKey:(NSString *)key completionHandler:(id)handler;
+ (void)primeTestFlightAccountWithClient:(_TtC22StoreKitUISceneService6Client *)client logKey:(NSString *)key completionHandler:(id)handler;
@end

@implementation objc_AccountManager

+ (void)accountWithClient:(_TtC22StoreKitUISceneService6Client *)client completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = client;
  v7[3] = v6;
  v7[4] = self;
  clientCopy = client;

  sub_10003A608(&unk_100096C70, v7);
}

+ (void)accountWithType:(int64_t)type completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = type;
  v7[3] = v6;
  v7[4] = self;

  sub_10003A608(&unk_100096C58, v7);
}

+ (void)authenticateWithClient:(_TtC22StoreKitUISceneService6Client *)client reason:(NSString *)reason dialogContext:(_TtP22StoreKitUISceneService14DialogProtocol_ *)context logKey:(NSString *)key completionHandler:(id)handler
{
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = client;
  v13[3] = reason;
  v13[4] = context;
  v13[5] = key;
  v13[6] = v12;
  v13[7] = self;
  clientCopy = client;
  reasonCopy = reason;
  swift_unknownObjectRetain();
  keyCopy = key;

  sub_10003A608(&unk_100096C00, v13);
}

+ (void)authenticateWithRequest:(AMSAuthenticateRequest *)request dialogContext:(_TtP22StoreKitUISceneService14DialogProtocol_ *)context logKey:(NSString *)key completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = context;
  v11[4] = key;
  v11[5] = v10;
  v11[6] = self;
  requestCopy = request;
  swift_unknownObjectRetain();
  keyCopy = key;

  sub_10003A608(&unk_100096BD8, v11);
}

+ (void)primeTestFlightAccountWithClient:(_TtC22StoreKitUISceneService6Client *)client logKey:(NSString *)key completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = client;
  v9[3] = key;
  v9[4] = v8;
  v9[5] = self;
  clientCopy = client;
  keyCopy = key;

  sub_10003A608(&unk_100096B38, v9);
}

@end