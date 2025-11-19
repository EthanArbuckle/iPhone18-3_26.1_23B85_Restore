@interface AMDClientRequestEvent
+ (void)setObserver:(id)a3;
- (AMDClientRequestEvent)initWithFeatureName:(id)a3 withAccountDSID:(id)a4 andAccountStoreFrontId:(id)a5 inDomain:(id)a6 withCustomDescriptor:(id)a7 andSchemaVersion:(id)a8;
- (id)getAMSRequest;
- (id)getAMSRequestForCipherML;
- (id)initAppSegmentQueryForAccountDSID:(id)a3;
- (id)initClearUserDataFor:(id)a3 inDomain:(id)a4;
- (id)initModelPathRequestForUsecaseId:(id)a3 andModelId:(id)a4 withTreatmentId:(id)a5 inDomain:(id)a6;
- (id)initPECResponseForSimilarityScores:(id)a3 requestError:(id)a4 andCallHandle:(id)a5;
- (id)initPIRResponseForKeywordArray:(id)a3 withDataArray:(id)a4 withMissingKeywords:(id)a5 requestError:(id)a6 andCallHandle:(id)a7;
- (void)internalInitializer:(id)a3 WithFeatureName:(id)a4 withAccountDSID:(id)a5 andAccountStoreFrontId:(id)a6 inDomain:(id)a7 withCustomDescriptor:(id)a8 withModelId:(id)a9 withTreatmentId:(id)a10 withUseCaseId:(id)a11 andSchemaVersion:(id)a12;
@end

@implementation AMDClientRequestEvent

+ (void)setObserver:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&_notificationObserver, location[0]);
  objc_storeStrong(location, 0);
}

- (void)internalInitializer:(id)a3 WithFeatureName:(id)a4 withAccountDSID:(id)a5 andAccountStoreFrontId:(id)a6 inDomain:(id)a7 withCustomDescriptor:(id)a8 withModelId:(id)a9 withTreatmentId:(id)a10 withUseCaseId:(id)a11 andSchemaVersion:(id)a12
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = 0;
  objc_storeStrong(&v24, a5);
  v23 = 0;
  objc_storeStrong(&v23, a6);
  v22 = 0;
  objc_storeStrong(&v22, a7);
  v21 = 0;
  objc_storeStrong(&v21, a8);
  v20 = 0;
  objc_storeStrong(&v20, a9);
  v19 = 0;
  objc_storeStrong(&v19, a10);
  v18 = 0;
  objc_storeStrong(&v18, a11);
  v17 = 0;
  objc_storeStrong(&v17, a12);
  [(AMDClientRequestEvent *)v27 setRequest:location[0]];
  [(AMDClientRequestEvent *)v27 setDomain:v22];
  [(AMDClientRequestEvent *)v27 setAccountDSID:v24];
  [(AMDClientRequestEvent *)v27 setStorefrontId:v23];
  [(AMDClientRequestEvent *)v27 setFeatureName:v25];
  [(AMDClientRequestEvent *)v27 setCustomDescriptor:v21];
  [(AMDClientRequestEvent *)v27 setSchemaVersion:v17];
  [(AMDClientRequestEvent *)v27 setModelId:v20];
  [(AMDClientRequestEvent *)v27 setTreatmentId:v19];
  [(AMDClientRequestEvent *)v27 setUseCaseId:v18];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (id)initClearUserDataFor:(id)a3 inDomain:(id)a4
{
  obj = a4;
  v9 = &v15;
  v15 = self;
  location[1] = a2;
  v8 = location;
  v10 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = &v13;
  v13 = 0;
  objc_storeStrong(&v13, obj);
  v4 = v15;
  v15 = 0;
  v12.receiver = v4;
  v12.super_class = AMDClientRequestEvent;
  v15 = [(AMDClientRequestEvent *)&v12 init];
  objc_storeStrong(&v15, v15);
  [(AMDClientRequestEvent *)v15 internalInitializer:@"clearUserData" WithFeatureName:0 withAccountDSID:location[0] andAccountStoreFrontId:0 inDomain:v13 withCustomDescriptor:0 withModelId:0 withTreatmentId:0 withUseCaseId:0 andSchemaVersion:?];
  v11 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(v7, v10);
  objc_storeStrong(v8, v10);
  objc_storeStrong(v9, v10);
  return v11;
}

- (AMDClientRequestEvent)initWithFeatureName:(id)a3 withAccountDSID:(id)a4 andAccountStoreFrontId:(id)a5 inDomain:(id)a6 withCustomDescriptor:(id)a7 andSchemaVersion:(id)a8
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v24 = 0;
  objc_storeStrong(&v24, a6);
  v23 = 0;
  objc_storeStrong(&v23, a7);
  v22 = 0;
  objc_storeStrong(&v22, a8);
  if (v24 && location[0])
  {
    v20 = [v23 objectForKey:AMD_CUSTOM_AGG_VERSION];
    if (v20)
    {
      objc_storeStrong(&v20, v20);
    }

    else
    {
      objc_storeStrong(&v20, AMD_CUSTOM_AGG_VERSION_1);
    }

    if (!v23 || ([v20 isEqualToString:AMD_CUSTOM_AGG_VERSION_SQLITE_0] & 1) != 0)
    {
      goto LABEL_14;
    }

    v8 = [AMDFeatureDescriptor alloc];
    v19 = [AMDFeatureDescriptor initWithDictionary:v8 withUserId:"initWithDictionary:withUserId:featureName:" featureName:v23];
    v9 = [AMDFeatureDescriptor alloc];
    v18 = [(AMDFeatureDescriptor *)v9 initWithDictionaryV2:v23 withUserId:@"111111111" featureName:location[0] withDomain:v24];
    if (v19 || v18)
    {
      v21 = 0;
    }

    else
    {
      v29 = 0;
      v21 = 1;
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    if (!v21)
    {
LABEL_14:
      v10 = v28;
      v28 = 0;
      v17.receiver = v10;
      v17.super_class = AMDClientRequestEvent;
      v28 = [(AMDClientRequestEvent *)&v17 init];
      objc_storeStrong(&v28, v28);
      [v28 internalInitializer:@"customAgg" WithFeatureName:location[0] withAccountDSID:v26 andAccountStoreFrontId:v25 inDomain:v24 withCustomDescriptor:v23 withModelId:0 withTreatmentId:0 withUseCaseId:0 andSchemaVersion:v22];
      v29 = MEMORY[0x277D82BE0](v28);
      v21 = 1;
    }

    objc_storeStrong(&v20, 0);
  }

  else
  {
    v29 = 0;
    v21 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v28, 0);
  return v29;
}

- (id)initAppSegmentQueryForAccountDSID:(id)a3
{
  v6 = &v11;
  v11 = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = AMDClientRequestEvent;
  v11 = [(AMDClientRequestEvent *)&v9 init];
  objc_storeStrong(&v11, v11);
  [(AMDClientRequestEvent *)v11 internalInitializer:@"fetchInapp" WithFeatureName:@"inAppSegments" withAccountDSID:location[0] andAccountStoreFrontId:0 inDomain:@"apps" withCustomDescriptor:0 withModelId:0 withTreatmentId:0 withUseCaseId:0 andSchemaVersion:?];
  v8 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(v5, obj);
  objc_storeStrong(v6, obj);
  return v8;
}

- (id)initModelPathRequestForUsecaseId:(id)a3 andModelId:(id)a4 withTreatmentId:(id)a5 inDomain:(id)a6
{
  obj = a4;
  v9 = a5;
  v10 = a6;
  v15 = &v23;
  v23 = self;
  location[1] = a2;
  v14 = location;
  v16 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = &v21;
  v21 = 0;
  objc_storeStrong(&v21, obj);
  v12 = &v20;
  v20 = 0;
  objc_storeStrong(&v20, v9);
  v11 = &v19;
  v19 = 0;
  objc_storeStrong(&v19, v10);
  v6 = v23;
  v23 = 0;
  v18.receiver = v6;
  v18.super_class = AMDClientRequestEvent;
  v23 = [(AMDClientRequestEvent *)&v18 init];
  objc_storeStrong(&v23, v23);
  [(AMDClientRequestEvent *)v23 internalInitializer:@"fetchModelPath" WithFeatureName:0 withAccountDSID:0 andAccountStoreFrontId:0 inDomain:v19 withCustomDescriptor:v21 withModelId:v20 withTreatmentId:location[0] withUseCaseId:0 andSchemaVersion:?];
  v17 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(v11, v16);
  objc_storeStrong(v12, v16);
  objc_storeStrong(v13, v16);
  objc_storeStrong(v14, v16);
  objc_storeStrong(v15, v16);
  return v17;
}

- (id)getAMSRequest
{
  v32 = self;
  v31[1] = a2;
  v31[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = [(AMDClientRequestEvent *)v32 domain];
  [v31[0] setValue:? forKey:?];
  MEMORY[0x277D82BD8](v27);
  v28 = [(AMDClientRequestEvent *)v32 accountDSID];
  MEMORY[0x277D82BD8](v28);
  if (v28)
  {
    v26 = [(AMDClientRequestEvent *)v32 accountDSID];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v26);
  }

  v25 = [(AMDClientRequestEvent *)v32 customDescriptor];
  MEMORY[0x277D82BD8](v25);
  if (v25)
  {
    v24 = [(AMDClientRequestEvent *)v32 customDescriptor];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v24);
  }

  v23 = [(AMDClientRequestEvent *)v32 featureName];
  MEMORY[0x277D82BD8](v23);
  if (v23)
  {
    v22 = [(AMDClientRequestEvent *)v32 featureName];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v22);
  }

  v21 = [(AMDClientRequestEvent *)v32 schemaVersion];
  MEMORY[0x277D82BD8](v21);
  if (v21)
  {
    v20 = [(AMDClientRequestEvent *)v32 schemaVersion];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v20);
  }

  v19 = [(AMDClientRequestEvent *)v32 storefrontId];
  MEMORY[0x277D82BD8](v19);
  if (v19)
  {
    v18 = [(AMDClientRequestEvent *)v32 storefrontId];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v18);
  }

  v17 = [(AMDClientRequestEvent *)v32 useCaseId];
  MEMORY[0x277D82BD8](v17);
  if (v17)
  {
    v16 = [(AMDClientRequestEvent *)v32 useCaseId];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v16);
  }

  v15 = [(AMDClientRequestEvent *)v32 modelId];
  MEMORY[0x277D82BD8](v15);
  if (v15)
  {
    v14 = [(AMDClientRequestEvent *)v32 modelId];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v14);
  }

  v13 = [(AMDClientRequestEvent *)v32 treatmentId];
  MEMORY[0x277D82BD8](v13);
  if (v13)
  {
    v12 = [(AMDClientRequestEvent *)v32 treatmentId];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v12);
  }

  location = 0;
  v10 = [(AMDClientRequestEvent *)v32 request];
  v11 = [(NSString *)v10 isEqualToString:@"clearUserData"];
  MEMORY[0x277D82BD8](v10);
  if (v11)
  {
    objc_storeStrong(&location, @"amd.clearUserData");
  }

  else
  {
    v8 = [(AMDClientRequestEvent *)v32 request];
    v9 = [(NSString *)v8 isEqualToString:@"customAgg"];
    MEMORY[0x277D82BD8](v8);
    if (v9)
    {
      objc_storeStrong(&location, @"amd.fetchAggregatedData");
    }

    else
    {
      v6 = [(AMDClientRequestEvent *)v32 request];
      v7 = [(NSString *)v6 isEqualToString:@"fetchInapp"];
      MEMORY[0x277D82BD8](v6);
      if (v7)
      {
        objc_storeStrong(&location, @"amd.getSegment");
      }

      else
      {
        v4 = [(AMDClientRequestEvent *)v32 request];
        v5 = [(NSString *)v4 isEqualToString:@"fetchModelPath"];
        MEMORY[0x277D82BD8](v4);
        if (v5)
        {
          objc_storeStrong(&location, @"amd.getModelPath");
        }
      }
    }
  }

  [v31[0] setValue:location forKey:@"action"];
  v29 = objc_alloc_init(AMDAMSEngagementEvent);
  [(AMDAMSEngagementEvent *)v29 setEngagementData:v31[0]];
  v3 = MEMORY[0x277D82BE0](v29);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v31, 0);

  return v3;
}

- (id)initPIRResponseForKeywordArray:(id)a3 withDataArray:(id)a4 withMissingKeywords:(id)a5 requestError:(id)a6 andCallHandle:(id)a7
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v19 = 0;
  objc_storeStrong(&v19, a7);
  v7 = v24;
  v24 = 0;
  v18.receiver = v7;
  v18.super_class = AMDClientRequestEvent;
  v24 = [(AMDClientRequestEvent *)&v18 init];
  objc_storeStrong(&v24, v24);
  [(AMDClientRequestEvent *)v24 setRequest:0x2852A79C8];
  v15 = [AMDMiscHelpers convertDataArrayToBase64StringArray:location[0]];
  [(AMDClientRequestEvent *)v24 setPIRKeywordArray:?];
  MEMORY[0x277D82BD8](v15);
  v16 = [AMDMiscHelpers convertDataArrayToBase64StringArray:v21];
  [(AMDClientRequestEvent *)v24 setPIRMissingKeywordArray:?];
  MEMORY[0x277D82BD8](v16);
  v17 = [AMDMiscHelpers convertDataArrayToBase64StringArray:v22];
  [(AMDClientRequestEvent *)v24 setPIRDataArray:?];
  MEMORY[0x277D82BD8](v17);
  [(AMDClientRequestEvent *)v24 setCipherMLCallHandle:v19];
  if (v20)
  {
    v10 = [v20 localizedDescription];
    [(AMDClientRequestEvent *)v24 setCipherMLRequestError:?];
    MEMORY[0x277D82BD8](v10);
  }

  v9 = MEMORY[0x277D82BE0](v24);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v24, 0);
  return v9;
}

- (id)initPECResponseForSimilarityScores:(id)a3 requestError:(id)a4 andCallHandle:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v5 = v15;
  v15 = 0;
  v11.receiver = v5;
  v11.super_class = AMDClientRequestEvent;
  v15 = [(AMDClientRequestEvent *)&v11 init];
  objc_storeStrong(&v15, v15);
  [(AMDClientRequestEvent *)v15 setRequest:0x2852A79A8];
  [(AMDClientRequestEvent *)v15 setPECSimilarityScoresArray:location[0]];
  [(AMDClientRequestEvent *)v15 setCipherMLCallHandle:v12];
  if (v13)
  {
    v8 = [v13 localizedDescription];
    [(AMDClientRequestEvent *)v15 setCipherMLRequestError:?];
    MEMORY[0x277D82BD8](v8);
  }

  v7 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v7;
}

- (id)getAMSRequestForCipherML
{
  v22 = self;
  v21[1] = a2;
  v21[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = [(AMDClientRequestEvent *)v22 accountDSID];
  MEMORY[0x277D82BD8](v19);
  if (v19)
  {
    v18 = [(AMDClientRequestEvent *)v22 accountDSID];
    [v21[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v18);
  }

  v17 = [(AMDClientRequestEvent *)v22 PIRDataArray];
  MEMORY[0x277D82BD8](v17);
  if (v17)
  {
    v16 = [(AMDClientRequestEvent *)v22 PIRDataArray];
    [v21[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v16);
  }

  v15 = [(AMDClientRequestEvent *)v22 PIRKeywordArray];
  MEMORY[0x277D82BD8](v15);
  if (v15)
  {
    v14 = [(AMDClientRequestEvent *)v22 PIRKeywordArray];
    [v21[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v14);
  }

  v13 = [(AMDClientRequestEvent *)v22 PIRMissingKeywordArray];
  MEMORY[0x277D82BD8](v13);
  if (v13)
  {
    v12 = [(AMDClientRequestEvent *)v22 PIRMissingKeywordArray];
    [v21[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v12);
  }

  v11 = [(AMDClientRequestEvent *)v22 PECSimilarityScoresArray];
  MEMORY[0x277D82BD8](v11);
  if (v11)
  {
    v10 = [(AMDClientRequestEvent *)v22 PECSimilarityScoresArray];
    [v21[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v10);
  }

  v9 = [(AMDClientRequestEvent *)v22 CipherMLCallHandle];
  MEMORY[0x277D82BD8](v9);
  if (v9)
  {
    v8 = [(AMDClientRequestEvent *)v22 CipherMLCallHandle];
    [v21[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v8);
  }

  v7 = [(AMDClientRequestEvent *)v22 CipherMLRequestError];
  MEMORY[0x277D82BD8](v7);
  if (v7)
  {
    v6 = [(AMDClientRequestEvent *)v22 CipherMLCallHandle];
    [v21[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](v6);
  }

  v4 = [(AMDClientRequestEvent *)v22 request];
  [v3 setValue:? forKey:?];
  MEMORY[0x277D82BD8](v4);
  [v21[0] setValue:@"amd.enqueueCipherMLEvent" forKey:@"action"];
  v20 = objc_alloc_init(AMDAMSEngagementEvent);
  [(AMDAMSEngagementEvent *)v20 setEngagementData:v21[0]];
  v5 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);

  return v5;
}

@end