@interface AMDClientRequestEvent
+ (void)setObserver:(id)observer;
- (AMDClientRequestEvent)initWithFeatureName:(id)name withAccountDSID:(id)d andAccountStoreFrontId:(id)id inDomain:(id)domain withCustomDescriptor:(id)descriptor andSchemaVersion:(id)version;
- (id)getAMSRequest;
- (id)getAMSRequestForCipherML;
- (id)initAppSegmentQueryForAccountDSID:(id)d;
- (id)initClearUserDataFor:(id)for inDomain:(id)domain;
- (id)initModelPathRequestForUsecaseId:(id)id andModelId:(id)modelId withTreatmentId:(id)treatmentId inDomain:(id)domain;
- (id)initPECResponseForSimilarityScores:(id)scores requestError:(id)error andCallHandle:(id)handle;
- (id)initPIRResponseForKeywordArray:(id)array withDataArray:(id)dataArray withMissingKeywords:(id)keywords requestError:(id)error andCallHandle:(id)handle;
- (void)internalInitializer:(id)initializer WithFeatureName:(id)name withAccountDSID:(id)d andAccountStoreFrontId:(id)id inDomain:(id)domain withCustomDescriptor:(id)descriptor withModelId:(id)modelId withTreatmentId:(id)self0 withUseCaseId:(id)self1 andSchemaVersion:(id)self2;
@end

@implementation AMDClientRequestEvent

+ (void)setObserver:(id)observer
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  objc_storeStrong(&_notificationObserver, location[0]);
  objc_storeStrong(location, 0);
}

- (void)internalInitializer:(id)initializer WithFeatureName:(id)name withAccountDSID:(id)d andAccountStoreFrontId:(id)id inDomain:(id)domain withCustomDescriptor:(id)descriptor withModelId:(id)modelId withTreatmentId:(id)self0 withUseCaseId:(id)self1 andSchemaVersion:(id)self2
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, initializer);
  v25 = 0;
  objc_storeStrong(&v25, name);
  v24 = 0;
  objc_storeStrong(&v24, d);
  v23 = 0;
  objc_storeStrong(&v23, id);
  v22 = 0;
  objc_storeStrong(&v22, domain);
  v21 = 0;
  objc_storeStrong(&v21, descriptor);
  v20 = 0;
  objc_storeStrong(&v20, modelId);
  v19 = 0;
  objc_storeStrong(&v19, treatmentId);
  v18 = 0;
  objc_storeStrong(&v18, caseId);
  v17 = 0;
  objc_storeStrong(&v17, version);
  [(AMDClientRequestEvent *)selfCopy setRequest:location[0]];
  [(AMDClientRequestEvent *)selfCopy setDomain:v22];
  [(AMDClientRequestEvent *)selfCopy setAccountDSID:v24];
  [(AMDClientRequestEvent *)selfCopy setStorefrontId:v23];
  [(AMDClientRequestEvent *)selfCopy setFeatureName:v25];
  [(AMDClientRequestEvent *)selfCopy setCustomDescriptor:v21];
  [(AMDClientRequestEvent *)selfCopy setSchemaVersion:v17];
  [(AMDClientRequestEvent *)selfCopy setModelId:v20];
  [(AMDClientRequestEvent *)selfCopy setTreatmentId:v19];
  [(AMDClientRequestEvent *)selfCopy setUseCaseId:v18];
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

- (id)initClearUserDataFor:(id)for inDomain:(id)domain
{
  obj = domain;
  v9 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  v8 = location;
  v10 = 0;
  location[0] = 0;
  objc_storeStrong(location, for);
  v7 = &v13;
  v13 = 0;
  objc_storeStrong(&v13, obj);
  v4 = selfCopy;
  selfCopy = 0;
  v12.receiver = v4;
  v12.super_class = AMDClientRequestEvent;
  selfCopy = [(AMDClientRequestEvent *)&v12 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [(AMDClientRequestEvent *)selfCopy internalInitializer:@"clearUserData" WithFeatureName:0 withAccountDSID:location[0] andAccountStoreFrontId:0 inDomain:v13 withCustomDescriptor:0 withModelId:0 withTreatmentId:0 withUseCaseId:0 andSchemaVersion:?];
  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(v7, v10);
  objc_storeStrong(v8, v10);
  objc_storeStrong(v9, v10);
  return v11;
}

- (AMDClientRequestEvent)initWithFeatureName:(id)name withAccountDSID:(id)d andAccountStoreFrontId:(id)id inDomain:(id)domain withCustomDescriptor:(id)descriptor andSchemaVersion:(id)version
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v26 = 0;
  objc_storeStrong(&v26, d);
  v25 = 0;
  objc_storeStrong(&v25, id);
  v24 = 0;
  objc_storeStrong(&v24, domain);
  v23 = 0;
  objc_storeStrong(&v23, descriptor);
  v22 = 0;
  objc_storeStrong(&v22, version);
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
      v10 = selfCopy;
      selfCopy = 0;
      v17.receiver = v10;
      v17.super_class = AMDClientRequestEvent;
      selfCopy = [(AMDClientRequestEvent *)&v17 init];
      objc_storeStrong(&selfCopy, selfCopy);
      [selfCopy internalInitializer:@"customAgg" WithFeatureName:location[0] withAccountDSID:v26 andAccountStoreFrontId:v25 inDomain:v24 withCustomDescriptor:v23 withModelId:0 withTreatmentId:0 withUseCaseId:0 andSchemaVersion:v22];
      v29 = MEMORY[0x277D82BE0](selfCopy);
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
  objc_storeStrong(&selfCopy, 0);
  return v29;
}

- (id)initAppSegmentQueryForAccountDSID:(id)d
{
  v6 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = AMDClientRequestEvent;
  selfCopy = [(AMDClientRequestEvent *)&v9 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [(AMDClientRequestEvent *)selfCopy internalInitializer:@"fetchInapp" WithFeatureName:@"inAppSegments" withAccountDSID:location[0] andAccountStoreFrontId:0 inDomain:@"apps" withCustomDescriptor:0 withModelId:0 withTreatmentId:0 withUseCaseId:0 andSchemaVersion:?];
  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(v5, obj);
  objc_storeStrong(v6, obj);
  return v8;
}

- (id)initModelPathRequestForUsecaseId:(id)id andModelId:(id)modelId withTreatmentId:(id)treatmentId inDomain:(id)domain
{
  obj = modelId;
  treatmentIdCopy = treatmentId;
  domainCopy = domain;
  v15 = &selfCopy;
  selfCopy = self;
  location[1] = a2;
  v14 = location;
  v16 = 0;
  location[0] = 0;
  objc_storeStrong(location, id);
  v13 = &v21;
  v21 = 0;
  objc_storeStrong(&v21, obj);
  v12 = &v20;
  v20 = 0;
  objc_storeStrong(&v20, treatmentIdCopy);
  v11 = &v19;
  v19 = 0;
  objc_storeStrong(&v19, domainCopy);
  v6 = selfCopy;
  selfCopy = 0;
  v18.receiver = v6;
  v18.super_class = AMDClientRequestEvent;
  selfCopy = [(AMDClientRequestEvent *)&v18 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [(AMDClientRequestEvent *)selfCopy internalInitializer:@"fetchModelPath" WithFeatureName:0 withAccountDSID:0 andAccountStoreFrontId:0 inDomain:v19 withCustomDescriptor:v21 withModelId:v20 withTreatmentId:location[0] withUseCaseId:0 andSchemaVersion:?];
  v17 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(v11, v16);
  objc_storeStrong(v12, v16);
  objc_storeStrong(v13, v16);
  objc_storeStrong(v14, v16);
  objc_storeStrong(v15, v16);
  return v17;
}

- (id)getAMSRequest
{
  selfCopy = self;
  v31[1] = a2;
  v31[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  domain = [(AMDClientRequestEvent *)selfCopy domain];
  [v31[0] setValue:? forKey:?];
  MEMORY[0x277D82BD8](domain);
  accountDSID = [(AMDClientRequestEvent *)selfCopy accountDSID];
  MEMORY[0x277D82BD8](accountDSID);
  if (accountDSID)
  {
    accountDSID2 = [(AMDClientRequestEvent *)selfCopy accountDSID];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](accountDSID2);
  }

  customDescriptor = [(AMDClientRequestEvent *)selfCopy customDescriptor];
  MEMORY[0x277D82BD8](customDescriptor);
  if (customDescriptor)
  {
    customDescriptor2 = [(AMDClientRequestEvent *)selfCopy customDescriptor];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](customDescriptor2);
  }

  featureName = [(AMDClientRequestEvent *)selfCopy featureName];
  MEMORY[0x277D82BD8](featureName);
  if (featureName)
  {
    featureName2 = [(AMDClientRequestEvent *)selfCopy featureName];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](featureName2);
  }

  schemaVersion = [(AMDClientRequestEvent *)selfCopy schemaVersion];
  MEMORY[0x277D82BD8](schemaVersion);
  if (schemaVersion)
  {
    schemaVersion2 = [(AMDClientRequestEvent *)selfCopy schemaVersion];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](schemaVersion2);
  }

  storefrontId = [(AMDClientRequestEvent *)selfCopy storefrontId];
  MEMORY[0x277D82BD8](storefrontId);
  if (storefrontId)
  {
    storefrontId2 = [(AMDClientRequestEvent *)selfCopy storefrontId];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](storefrontId2);
  }

  useCaseId = [(AMDClientRequestEvent *)selfCopy useCaseId];
  MEMORY[0x277D82BD8](useCaseId);
  if (useCaseId)
  {
    useCaseId2 = [(AMDClientRequestEvent *)selfCopy useCaseId];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](useCaseId2);
  }

  modelId = [(AMDClientRequestEvent *)selfCopy modelId];
  MEMORY[0x277D82BD8](modelId);
  if (modelId)
  {
    modelId2 = [(AMDClientRequestEvent *)selfCopy modelId];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](modelId2);
  }

  treatmentId = [(AMDClientRequestEvent *)selfCopy treatmentId];
  MEMORY[0x277D82BD8](treatmentId);
  if (treatmentId)
  {
    treatmentId2 = [(AMDClientRequestEvent *)selfCopy treatmentId];
    [v31[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](treatmentId2);
  }

  location = 0;
  request = [(AMDClientRequestEvent *)selfCopy request];
  v11 = [(NSString *)request isEqualToString:@"clearUserData"];
  MEMORY[0x277D82BD8](request);
  if (v11)
  {
    objc_storeStrong(&location, @"amd.clearUserData");
  }

  else
  {
    request2 = [(AMDClientRequestEvent *)selfCopy request];
    v9 = [(NSString *)request2 isEqualToString:@"customAgg"];
    MEMORY[0x277D82BD8](request2);
    if (v9)
    {
      objc_storeStrong(&location, @"amd.fetchAggregatedData");
    }

    else
    {
      request3 = [(AMDClientRequestEvent *)selfCopy request];
      v7 = [(NSString *)request3 isEqualToString:@"fetchInapp"];
      MEMORY[0x277D82BD8](request3);
      if (v7)
      {
        objc_storeStrong(&location, @"amd.getSegment");
      }

      else
      {
        request4 = [(AMDClientRequestEvent *)selfCopy request];
        v5 = [(NSString *)request4 isEqualToString:@"fetchModelPath"];
        MEMORY[0x277D82BD8](request4);
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

- (id)initPIRResponseForKeywordArray:(id)array withDataArray:(id)dataArray withMissingKeywords:(id)keywords requestError:(id)error andCallHandle:(id)handle
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, array);
  v22 = 0;
  objc_storeStrong(&v22, dataArray);
  v21 = 0;
  objc_storeStrong(&v21, keywords);
  v20 = 0;
  objc_storeStrong(&v20, error);
  v19 = 0;
  objc_storeStrong(&v19, handle);
  v7 = selfCopy;
  selfCopy = 0;
  v18.receiver = v7;
  v18.super_class = AMDClientRequestEvent;
  selfCopy = [(AMDClientRequestEvent *)&v18 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [(AMDClientRequestEvent *)selfCopy setRequest:0x2852A79C8];
  v15 = [AMDMiscHelpers convertDataArrayToBase64StringArray:location[0]];
  [(AMDClientRequestEvent *)selfCopy setPIRKeywordArray:?];
  MEMORY[0x277D82BD8](v15);
  v16 = [AMDMiscHelpers convertDataArrayToBase64StringArray:v21];
  [(AMDClientRequestEvent *)selfCopy setPIRMissingKeywordArray:?];
  MEMORY[0x277D82BD8](v16);
  v17 = [AMDMiscHelpers convertDataArrayToBase64StringArray:v22];
  [(AMDClientRequestEvent *)selfCopy setPIRDataArray:?];
  MEMORY[0x277D82BD8](v17);
  [(AMDClientRequestEvent *)selfCopy setCipherMLCallHandle:v19];
  if (v20)
  {
    localizedDescription = [v20 localizedDescription];
    [(AMDClientRequestEvent *)selfCopy setCipherMLRequestError:?];
    MEMORY[0x277D82BD8](localizedDescription);
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (id)initPECResponseForSimilarityScores:(id)scores requestError:(id)error andCallHandle:(id)handle
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scores);
  v13 = 0;
  objc_storeStrong(&v13, error);
  v12 = 0;
  objc_storeStrong(&v12, handle);
  v5 = selfCopy;
  selfCopy = 0;
  v11.receiver = v5;
  v11.super_class = AMDClientRequestEvent;
  selfCopy = [(AMDClientRequestEvent *)&v11 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [(AMDClientRequestEvent *)selfCopy setRequest:0x2852A79A8];
  [(AMDClientRequestEvent *)selfCopy setPECSimilarityScoresArray:location[0]];
  [(AMDClientRequestEvent *)selfCopy setCipherMLCallHandle:v12];
  if (v13)
  {
    localizedDescription = [v13 localizedDescription];
    [(AMDClientRequestEvent *)selfCopy setCipherMLRequestError:?];
    MEMORY[0x277D82BD8](localizedDescription);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)getAMSRequestForCipherML
{
  selfCopy = self;
  v21[1] = a2;
  v21[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  accountDSID = [(AMDClientRequestEvent *)selfCopy accountDSID];
  MEMORY[0x277D82BD8](accountDSID);
  if (accountDSID)
  {
    accountDSID2 = [(AMDClientRequestEvent *)selfCopy accountDSID];
    [v21[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](accountDSID2);
  }

  pIRDataArray = [(AMDClientRequestEvent *)selfCopy PIRDataArray];
  MEMORY[0x277D82BD8](pIRDataArray);
  if (pIRDataArray)
  {
    pIRDataArray2 = [(AMDClientRequestEvent *)selfCopy PIRDataArray];
    [v21[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](pIRDataArray2);
  }

  pIRKeywordArray = [(AMDClientRequestEvent *)selfCopy PIRKeywordArray];
  MEMORY[0x277D82BD8](pIRKeywordArray);
  if (pIRKeywordArray)
  {
    pIRKeywordArray2 = [(AMDClientRequestEvent *)selfCopy PIRKeywordArray];
    [v21[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](pIRKeywordArray2);
  }

  pIRMissingKeywordArray = [(AMDClientRequestEvent *)selfCopy PIRMissingKeywordArray];
  MEMORY[0x277D82BD8](pIRMissingKeywordArray);
  if (pIRMissingKeywordArray)
  {
    pIRMissingKeywordArray2 = [(AMDClientRequestEvent *)selfCopy PIRMissingKeywordArray];
    [v21[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](pIRMissingKeywordArray2);
  }

  pECSimilarityScoresArray = [(AMDClientRequestEvent *)selfCopy PECSimilarityScoresArray];
  MEMORY[0x277D82BD8](pECSimilarityScoresArray);
  if (pECSimilarityScoresArray)
  {
    pECSimilarityScoresArray2 = [(AMDClientRequestEvent *)selfCopy PECSimilarityScoresArray];
    [v21[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](pECSimilarityScoresArray2);
  }

  cipherMLCallHandle = [(AMDClientRequestEvent *)selfCopy CipherMLCallHandle];
  MEMORY[0x277D82BD8](cipherMLCallHandle);
  if (cipherMLCallHandle)
  {
    cipherMLCallHandle2 = [(AMDClientRequestEvent *)selfCopy CipherMLCallHandle];
    [v21[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](cipherMLCallHandle2);
  }

  cipherMLRequestError = [(AMDClientRequestEvent *)selfCopy CipherMLRequestError];
  MEMORY[0x277D82BD8](cipherMLRequestError);
  if (cipherMLRequestError)
  {
    cipherMLCallHandle3 = [(AMDClientRequestEvent *)selfCopy CipherMLCallHandle];
    [v21[0] setValue:? forKey:?];
    MEMORY[0x277D82BD8](cipherMLCallHandle3);
  }

  request = [(AMDClientRequestEvent *)selfCopy request];
  [v3 setValue:? forKey:?];
  MEMORY[0x277D82BD8](request);
  [v21[0] setValue:@"amd.enqueueCipherMLEvent" forKey:@"action"];
  v20 = objc_alloc_init(AMDAMSEngagementEvent);
  [(AMDAMSEngagementEvent *)v20 setEngagementData:v21[0]];
  v5 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);

  return v5;
}

@end