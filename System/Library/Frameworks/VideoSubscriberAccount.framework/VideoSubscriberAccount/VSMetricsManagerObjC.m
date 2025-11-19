@interface VSMetricsManagerObjC
+ (void)recordAccountUpdateWithAccount:(id)a3 source:(id)a4 updateType:(id)a5 completion:(id)a6;
+ (void)recordClickEventWithPage:(id)a3 pageType:(id)a4 target:(id)a5;
+ (void)recordFederatedPunchoutEventWithError:(id)a3 metadata:(id)a4;
+ (void)recordMetadataRequestWithProviderIdentifier:(id)a3 channelAdamID:(id)a4 fulfilledByProvider:(BOOL)a5 error:(id)a6;
+ (void)recordNowPlayingBrokenEventWithBundleID:(id)a3;
+ (void)recordSTBOptOutEventWithError:(id)a3;
+ (void)recordSignInEventWithProviderIdentifier:(id)a3 supportedProvider:(BOOL)a4 channelAdamID:(id)a5 signInType:(id)a6 error:(id)a7;
- (VSMetricsManagerObjC)init;
@end

@implementation VSMetricsManagerObjC

+ (void)recordClickEventWithPage:(id)a3 pageType:(id)a4 target:(id)a5
{
  v5 = sub_23AC66364();
  v7 = v6;
  v8 = sub_23AC66364();
  v10 = v9;
  v11 = sub_23AC66364();
  sub_23AC540F0(v5, v7, v8, v10, v11, v12);
}

+ (void)recordSignInEventWithProviderIdentifier:(id)a3 supportedProvider:(BOOL)a4 channelAdamID:(id)a5 signInType:(id)a6 error:(id)a7
{
  v9 = sub_23AC66364();
  v11 = v10;
  if (a5)
  {
    v12 = sub_23AC66364();
    a5 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = sub_23AC66364();
  v16 = v15;
  v17 = a7;
  sub_23AC54654(v9, v11, v12, a5, v14, v16, a7);
}

+ (void)recordSTBOptOutEventWithError:(id)a3
{
  v4 = a3;
  sub_23AC54C38(a3);
}

+ (void)recordMetadataRequestWithProviderIdentifier:(id)a3 channelAdamID:(id)a4 fulfilledByProvider:(BOOL)a5 error:(id)a6
{
  v8 = sub_23AC66364();
  v10 = v9;
  v11 = sub_23AC66364();
  v13 = v12;
  v14 = a6;
  sub_23AC54F24(v8, v10, v11, v13, a5, a6);
}

+ (void)recordNowPlayingBrokenEventWithBundleID:(id)a3
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

+ (void)recordFederatedPunchoutEventWithError:(id)a3 metadata:(id)a4
{
  v5 = sub_23AC66304();
  v6 = a3;
  sub_23AC55598(a3, v5);
}

+ (void)recordAccountUpdateWithAccount:(id)a3 source:(id)a4 updateType:(id)a5 completion:(id)a6
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC8758);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_23AC66364();
  v12 = v11;
  v13 = sub_23AC66364();
  v15 = v14;
  v16 = a3;
  VSUserAccount.init(_:)(&v22, v16);
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