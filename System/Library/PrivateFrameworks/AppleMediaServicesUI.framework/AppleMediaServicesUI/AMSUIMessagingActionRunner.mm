@interface AMSUIMessagingActionRunner
+ (BOOL)canRespondToDeeplink:(id)deeplink;
+ (BOOL)canRespondToIdentifier:(id)identifier;
+ (id)performWithDeeplink:(id)deeplink context:(id)context parameters:(id)parameters;
+ (id)performWithIdentifier:(id)identifier context:(id)context parameters:(id)parameters;
@end

@implementation AMSUIMessagingActionRunner

+ (BOOL)canRespondToDeeplink:(id)deeplink
{
  v3 = sub_1BB1DB398();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB1DB348();
  swift_getObjCClassMetadata();
  v8 = static ActionRunner.canRespondTo(deeplink:)(v7);
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

+ (BOOL)canRespondToIdentifier:(id)identifier
{
  v3 = sub_1BB1DD378();
  v5 = static ActionRunner.canRespondTo(identifier:)(v3, v4);

  return v5 & 1;
}

+ (id)performWithDeeplink:(id)deeplink context:(id)context parameters:(id)parameters
{
  v6 = sub_1BB1DB398();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB1DB348();
  v11 = sub_1BB1DD2D8();
  swift_getObjCClassMetadata();
  contextCopy = context;
  v13 = static ActionRunner.perform(deeplink:context:parameters:)(v10, contextCopy, v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

+ (id)performWithIdentifier:(id)identifier context:(id)context parameters:(id)parameters
{
  v6 = sub_1BB1DD378();
  v8 = v7;
  v9 = sub_1BB1DD2D8();
  swift_getObjCClassMetadata();
  contextCopy = context;
  v11 = static ActionRunner.perform(identifier:context:parameters:)(v6, v8, contextCopy, v9);

  return v11;
}

@end