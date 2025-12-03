@interface VSMetricsManagerObjC
+ (void)recordAccountUpdateWithAccount:(id)account source:(id)source updateType:(id)type completion:(id)completion;
+ (void)recordClickEventWithPage:(id)page pageType:(id)type target:(id)target;
+ (void)recordFederatedPunchoutEventWithError:(id)error metadata:(id)metadata;
+ (void)recordMetadataRequestWithProviderIdentifier:(id)identifier channelAdamID:(id)d fulfilledByProvider:(BOOL)provider error:(id)error;
+ (void)recordNowPlayingBrokenEventWithBundleID:(id)d;
+ (void)recordSTBOptOutEventWithError:(id)error;
+ (void)recordSignInEventWithProviderIdentifier:(id)identifier supportedProvider:(BOOL)provider channelAdamID:(id)d signInType:(id)type error:(id)error;
- (VSMetricsManagerObjC)init;
@end

@implementation VSMetricsManagerObjC

+ (void)recordClickEventWithPage:(id)page pageType:(id)type target:(id)target
{
  v5 = sub_23AC66364();
  v7 = v6;
  v8 = sub_23AC66364();
  v10 = v9;
  v11 = sub_23AC66364();
  sub_23AC540F0(v5, v7, v8, v10, v11, v12);
}

+ (void)recordSignInEventWithProviderIdentifier:(id)identifier supportedProvider:(BOOL)provider channelAdamID:(id)d signInType:(id)type error:(id)error
{
  v9 = sub_23AC66364();
  v11 = v10;
  if (d)
  {
    v12 = sub_23AC66364();
    d = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = sub_23AC66364();
  v16 = v15;
  errorCopy = error;
  sub_23AC54654(v9, v11, v12, d, v14, v16, error);
}

+ (void)recordSTBOptOutEventWithError:(id)error
{
  errorCopy = error;
  sub_23AC54C38(error);
}

+ (void)recordMetadataRequestWithProviderIdentifier:(id)identifier channelAdamID:(id)d fulfilledByProvider:(BOOL)provider error:(id)error
{
  v8 = sub_23AC66364();
  v10 = v9;
  v11 = sub_23AC66364();
  v13 = v12;
  errorCopy = error;
  sub_23AC54F24(v8, v10, v11, v13, provider, error);
}

+ (void)recordNowPlayingBrokenEventWithBundleID:(id)d
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8758);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_23AC66364();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AC70E10;
  *(inited + 32) = 0;
  *(inited + 40) = v6;
  *(inited + 48) = v8;

  sub_23AC53C00(inited);
  swift_setDeallocating();
  sub_23AC4CC70(inited + 32, &qword_27DFC8768);

  v10 = sub_23AC66444();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v6;
  v11[5] = v8;
  sub_23AC50B20(0, 0, v5, &unk_23AC70F68, v11);
}

+ (void)recordFederatedPunchoutEventWithError:(id)error metadata:(id)metadata
{
  v5 = sub_23AC66304();
  errorCopy = error;
  sub_23AC55598(error, v5);
}

+ (void)recordAccountUpdateWithAccount:(id)account source:(id)source updateType:(id)type completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8758);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_23AC66364();
  v12 = v11;
  v13 = sub_23AC66364();
  v15 = v14;
  accountCopy = account;
  VSUserAccount.init(_:)(&v22, accountCopy);
  v17 = v22;
  v18 = sub_23AC66444();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  v19[5] = v10;
  v19[6] = v12;
  v19[7] = v13;
  v19[8] = v15;
  v20 = v17;
  sub_23AC50B20(0, 0, v9, &unk_23AC70F60, v19);
}

- (VSMetricsManagerObjC)init
{
  v3.receiver = self;
  v3.super_class = VSMetricsManagerObjC;
  return [(VSMetricsManagerObjC *)&v3 init];
}

@end