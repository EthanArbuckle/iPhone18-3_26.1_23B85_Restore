@interface AMSPSD2EventTask
+ (BOOL)sendInitialPSD2EventWithAction:(id)action bag:(id)bag originalResponse:(id)response;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
+ (void)sendCUIBootstrapEventWithURL:(id)l error:(id)error;
+ (void)sendCUIBootstrapInitiatedEventWithURL:(id)l;
+ (void)sendCUICallbackEventWithResolveData:(id)data;
+ (void)sendRetryResultPSD2EventWithAction:(id)action result:(id)result error:(id)error bag:(id)bag;
@end

@implementation AMSPSD2EventTask

+ (void)sendCUIBootstrapEventWithURL:(id)l error:(id)error
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - v8;
  if (l)
  {
    sub_192F959AC();
    v10 = sub_192F95A8C();
    v11 = 0;
  }

  else
  {
    v10 = sub_192F95A8C();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v11, 1, v10);
  swift_getObjCClassMetadata();
  errorCopy = error;
  sub_192C40170();

  sub_1928FC07C(v9, &unk_1EAE144B0);
}

+ (void)sendCUIBootstrapInitiatedEventWithURL:(id)l
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  if (l)
  {
    sub_192F959AC();
    v8 = sub_192F95A8C();
    v9 = 0;
  }

  else
  {
    v8 = sub_192F95A8C();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v9, 1, v8);
  swift_getObjCClassMetadata();
  sub_192C41498();
  sub_1928FC07C(v7, &unk_1EAE144B0);
}

+ (void)sendCUICallbackEventWithResolveData:(id)data
{
  if (data)
  {
    sub_192F9669C();
  }

  swift_getObjCClassMetadata();
  sub_192C41DE4();
}

+ (BOOL)sendInitialPSD2EventWithAction:(id)action bag:(id)bag originalResponse:(id)response
{
  swift_getObjCClassMetadata();
  actionCopy = action;
  swift_unknownObjectRetain();
  responseCopy = response;
  static AMSPSD2EventTask.sendInitialPSD2Event(action:bag:originalResponse:)();
  LOBYTE(response) = v9;

  swift_unknownObjectRelease();
  return response & 1;
}

+ (void)sendRetryResultPSD2EventWithAction:(id)action result:(id)result error:(id)error bag:(id)bag
{
  swift_getObjCClassMetadata();
  actionCopy = action;
  resultCopy = result;
  errorCopy = error;
  swift_unknownObjectRetain();
  static AMSPSD2EventTask.sendRetryResultPSD2Event(action:result:error:bag:)();

  swift_unknownObjectRelease();
}

+ (NSString)bagSubProfile
{
  v2 = sub_192F9679C();

  return v2;
}

+ (NSString)bagSubProfileVersion
{
  v2 = sub_192F9679C();

  return v2;
}

+ (id)createBagForSubProfile
{
  v2 = static AMSPSD2EventTask.createBagForSubProfile()();

  return v2;
}

@end