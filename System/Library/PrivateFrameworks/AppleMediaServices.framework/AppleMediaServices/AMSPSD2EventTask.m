@interface AMSPSD2EventTask
+ (BOOL)sendInitialPSD2EventWithAction:(id)a3 bag:(id)a4 originalResponse:(id)a5;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
+ (void)sendCUIBootstrapEventWithURL:(id)a3 error:(id)a4;
+ (void)sendCUIBootstrapInitiatedEventWithURL:(id)a3;
+ (void)sendCUICallbackEventWithResolveData:(id)a3;
+ (void)sendRetryResultPSD2EventWithAction:(id)a3 result:(id)a4 error:(id)a5 bag:(id)a6;
@end

@implementation AMSPSD2EventTask

+ (void)sendCUIBootstrapEventWithURL:(id)a3 error:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - v8;
  if (a3)
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
  v12 = a4;
  sub_192C40170();

  sub_1928FC07C(v9, &unk_1EAE144B0);
}

+ (void)sendCUIBootstrapInitiatedEventWithURL:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAE144B0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  if (a3)
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

+ (void)sendCUICallbackEventWithResolveData:(id)a3
{
  if (a3)
  {
    sub_192F9669C();
  }

  swift_getObjCClassMetadata();
  sub_192C41DE4();
}

+ (BOOL)sendInitialPSD2EventWithAction:(id)a3 bag:(id)a4 originalResponse:(id)a5
{
  swift_getObjCClassMetadata();
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  static AMSPSD2EventTask.sendInitialPSD2Event(action:bag:originalResponse:)();
  LOBYTE(a5) = v9;

  swift_unknownObjectRelease();
  return a5 & 1;
}

+ (void)sendRetryResultPSD2EventWithAction:(id)a3 result:(id)a4 error:(id)a5 bag:(id)a6
{
  swift_getObjCClassMetadata();
  v9 = a3;
  v10 = a4;
  v11 = a5;
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