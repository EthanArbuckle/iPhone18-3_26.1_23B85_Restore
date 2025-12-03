@interface AMDOnDeviceTester
+ (BOOL)initEnv:(id)env withDomain:(id)domain userId:(id)id andStoreFrontId:(id)frontId;
+ (void)initPersistentContainer;
+ (void)refreshOnDeviceTasteProfile:(id)profile withUserId:(id)id andStoreFrontId:(unsigned int)frontId error:(id *)error;
+ (void)saveDescriptors:(id)descriptors forDomain:(int64_t)domain error:(id *)error;
+ (void)saveEvent:(id)event error:(id *)error;
- (AMDOnDeviceTester)init;
- (void)testAddEvent:(id *)event;
- (void)testAggregation:(id *)aggregation;
- (void)testClient:(id *)client;
- (void)testFeatureDescriptor:(id *)descriptor;
- (void)testOnDeviceTasteProfile:(id)profile error:(id *)error;
- (void)testRunInference:(id *)inference;
- (void)testSaveConfigAndDownloadModel:(id *)model;
@end

@implementation AMDOnDeviceTester

- (AMDOnDeviceTester)init
{
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = AMDOnDeviceTester;
  v7 = [(AMDOnDeviceTester *)&v5 init];
  objc_storeStrong(&v7, v7);
  v3 = +[AMDCoreDataPersistentContainer sharedContainer];
  [(AMDOnDeviceTester *)v7 setContainer:?];
  MEMORY[0x277D82BD8](v3);
  v4 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v4;
}

+ (BOOL)initEnv:(id)env withDomain:(id)domain userId:(id)id andStoreFrontId:(id)frontId
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, env);
  v13 = 0;
  objc_storeStrong(&v13, domain);
  v12 = 0;
  objc_storeStrong(&v12, id);
  v11 = 0;
  objc_storeStrong(&v11, frontId);
  NSLog(&cfstr_Amddemosupport.isa);
  v6 = +[AMDCoreDataPersistentContainer sharedContainer];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return 1;
}

+ (void)initPersistentContainer
{
  v2 = [AMDCoreDataPersistentContainer sharedContainer:a2];

  v3 = v2;
}

- (void)testAddEvent:(id *)event
{
  NSLog(&cfstr_RunningAddEven.isa);
  v3 = +[AMDTestDataCommon getSampleEvent];
  [AMDAppEvent saveEvent:"saveEvent:error:" error:?];
  MEMORY[0x277D82BD8](v3);
  if (*event)
  {
    __assert_rtn("[AMDOnDeviceTester testAddEvent:]", "AMDOnDeviceTester.m", 81, "!*error");
  }
}

- (void)testFeatureDescriptor:(id *)descriptor
{
  selfCopy = self;
  v8 = a2;
  descriptorCopy = descriptor;
  NSLog(&cfstr_RunningNonAggF.isa);
  v3 = objc_alloc_init(AMDFeatureDescriptor);
  v4 = +[AMDTestDataCommon getNonAggregationDescriptor];
  v6 = [AMDFeatureDescriptor initWithDictionary:v3 withUserId:"initWithDictionary:withUserId:featureName:" featureName:?];
  MEMORY[0x277D82BD8](v4);
  location = [v6 getFeature:descriptorCopy];
  if (*descriptorCopy)
  {
    __assert_rtn("[AMDOnDeviceTester testFeatureDescriptor:]", "AMDOnDeviceTester.m", 91, "!*error");
  }

  if (!location)
  {
    __assert_rtn("[AMDOnDeviceTester testFeatureDescriptor:]", "AMDOnDeviceTester.m", 92, "f");
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v6, 0);
}

- (void)testAggregation:(id *)aggregation
{
  selfCopy = self;
  v9 = a2;
  aggregationCopy = aggregation;
  NSLog(&cfstr_RunningAggrega.isa);
  v7 = objc_alloc_init(AMDFeatureDescriptor);
  v3 = MEMORY[0x277D82BE0](v7);
  v4 = +[AMDTestDataCommon getAggregationDescriptorDict];
  v5 = [v3 initWithDictionary:? withUserId:? featureName:?];
  if (!v5)
  {
    __assert_rtn("[AMDOnDeviceTester testAggregation:]", "AMDOnDeviceTester.m", 100, "[fd initWithDictionary:[AMDTestDataCommon getAggregationDescriptorDict] withUserId:@111111111 featureName:@foo]");
  }

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v4);
  location = [v7 getFeature:aggregationCopy];
  if (*aggregationCopy)
  {
    __assert_rtn("[AMDOnDeviceTester testAggregation:]", "AMDOnDeviceTester.m", 103, "!*error");
  }

  if (!location)
  {
    __assert_rtn("[AMDOnDeviceTester testAggregation:]", "AMDOnDeviceTester.m", 104, "f");
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v7, 0);
}

+ (void)saveDescriptors:(id)descriptors forDomain:(int64_t)domain error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptors);
  v5 = [AMDDescriptor refreshDescriptors:location[0] forDomain:domain error:error];
  objc_storeStrong(location, 0);
}

+ (void)refreshOnDeviceTasteProfile:(id)profile withUserId:(id)id andStoreFrontId:(unsigned int)frontId error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, profile);
  v10 = 0;
  objc_storeStrong(&v10, id);
  v6 = [AMDTasteProfile refreshAggregationTasteProfileForDomain:location[0] forUser:v10 andStoreFrontId:frontId error:error];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

+ (void)saveEvent:(id)event error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  [AMDAppEvent saveEvent:location[0] error:error];
  objc_storeStrong(location, 0);
}

- (void)testOnDeviceTasteProfile:(id)profile error:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, profile);
  NSLog(&cfstr_RunningOnDevic.isa);
  v8 = 0x2852B2AC8;
  v6 = +[AMDTestDataCommon getAggregationDescriptorDict];
  v9[0] = v6;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:?];
  [AMDOnDeviceTester saveDescriptors:"saveDescriptors:forDomain:error:" forDomain:? error:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  if (*error)
  {
    __assert_rtn("[AMDOnDeviceTester testOnDeviceTasteProfile:error:]", "AMDOnDeviceTester.m", 159, "!*error");
  }

  [AMDOnDeviceTester refreshOnDeviceTasteProfile:@"apps" withUserId:location[0] andStoreFrontId:143441 error:error];
  if (*error)
  {
    __assert_rtn("[AMDOnDeviceTester testOnDeviceTasteProfile:error:]", "AMDOnDeviceTester.m", 166, "!*error");
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)testClient:(id *)client
{
  v16[3] = self;
  v16[2] = a2;
  v16[1] = client;
  NSLog(&cfstr_RunningClientA.isa);
  v16[0] = [[AMDClientRequestEvent alloc] initWithFeatureName:@"testFeatureList" withAccountDSID:0 andAccountStoreFrontId:0 inDomain:@"apps" withCustomDescriptor:0 andSchemaVersion:?];
  if (!v16[0])
  {
    __assert_rtn("[AMDOnDeviceTester testClient:]", "AMDOnDeviceTester.m", 177, "requestEvent");
  }

  v12 = [AMDClient alloc];
  v15 = [(AMDClient *)v12 getFeatureStub:v16[0]];
  MEMORY[0x277D82BD8](v12);
  if (!v15)
  {
    __assert_rtn("[AMDOnDeviceTester testClient:]", "AMDOnDeviceTester.m", 179, "response");
  }

  v14 = [v15 objectForKey:@"status"];
  if (!v14)
  {
    __assert_rtn("[AMDOnDeviceTester testClient:]", "AMDOnDeviceTester.m", 182, "status");
  }

  if (([v14 isEqual:@"OK"] & 1) == 0)
  {
    __assert_rtn("[AMDOnDeviceTester testClient:]", "AMDOnDeviceTester.m", 183, "[status isEqual:AMD_CLIENT_STATUS_OK]");
  }

  location = [v15 objectForKey:@"data"];
  if (!location)
  {
    __assert_rtn("[AMDOnDeviceTester testClient:]", "AMDOnDeviceTester.m", 186, "data");
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[AMDOnDeviceTester testClient:]", "AMDOnDeviceTester.m", 187, "[data isKindOfClass:NSArray.class]");
  }

  v3 = [[AMDClientRequestEvent alloc] initWithFeatureName:@"testFeatureDict" withAccountDSID:0 andAccountStoreFrontId:0 inDomain:@"apps" withCustomDescriptor:0 andSchemaVersion:?];
  v4 = v16[0];
  v16[0] = v3;
  MEMORY[0x277D82BD8](v4);
  if (!v16[0])
  {
    __assert_rtn("[AMDOnDeviceTester testClient:]", "AMDOnDeviceTester.m", 195, "requestEvent");
  }

  v11 = [AMDClient alloc];
  v5 = [(AMDClient *)v11 getFeatureStub:v16[0]];
  v6 = v15;
  v15 = v5;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v11);
  if (!v15)
  {
    __assert_rtn("[AMDOnDeviceTester testClient:]", "AMDOnDeviceTester.m", 197, "response");
  }

  v7 = [v15 objectForKey:@"status"];
  v8 = v14;
  v14 = v7;
  MEMORY[0x277D82BD8](v8);
  if (!v14)
  {
    __assert_rtn("[AMDOnDeviceTester testClient:]", "AMDOnDeviceTester.m", 200, "status");
  }

  if (([v14 isEqual:@"OK"] & 1) == 0)
  {
    __assert_rtn("[AMDOnDeviceTester testClient:]", "AMDOnDeviceTester.m", 201, "[status isEqual:AMD_CLIENT_STATUS_OK]");
  }

  v9 = [v15 objectForKey:@"data"];
  v10 = location;
  location = v9;
  MEMORY[0x277D82BD8](v10);
  if (!location)
  {
    __assert_rtn("[AMDOnDeviceTester testClient:]", "AMDOnDeviceTester.m", 204, "data");
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[AMDOnDeviceTester testClient:]", "AMDOnDeviceTester.m", 205, "[data isKindOfClass:NSDictionary.class]");
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
}

- (void)testSaveConfigAndDownloadModel:(id *)model
{
  selfCopy = self;
  v6 = a2;
  modelCopy = model;
  NSLog(&cfstr_RunningSaveCon.isa);
  location = +[AMDTestDataCommon getSaveConfigDownloadModelPayload];
  if (!location)
  {
    __assert_rtn("[AMDOnDeviceTester testSaveConfigAndDownloadModel:]", "AMDOnDeviceTester.m", 211, "payload");
  }

  v3 = [AMDJSRequestHandler handlePayload:location error:modelCopy];
  if (*modelCopy)
  {
    __assert_rtn("[AMDOnDeviceTester testSaveConfigAndDownloadModel:]", "AMDOnDeviceTester.m", 213, "!*error");
  }

  objc_storeStrong(&location, 0);
}

- (void)testRunInference:(id *)inference
{
  selfCopy = self;
  v15 = a2;
  inferenceCopy = inference;
  NSLog(&cfstr_RunningInferen.isa);
  NSLog(&cfstr_InferenceGetCo.isa);
  v11 = +[AMDTestDataCommon getSaveConfigDownloadModelPayload];
  v3 = [AMDJSRequestHandler handlePayload:"handlePayload:error:" error:?];
  MEMORY[0x277D82BD8](v11);
  if (*inferenceCopy)
  {
    __assert_rtn("[AMDOnDeviceTester testRunInference:]", "AMDOnDeviceTester.m", 220, "!*error");
  }

  NSLog(&cfstr_InferenceRefre.isa);
  v10 = +[AMDTestDataCommon getRefreshServerTasteProfilePayload];
  v4 = [AMDJSRequestHandler handlePayload:"handlePayload:error:" error:?];
  MEMORY[0x277D82BD8](v10);
  if (*inferenceCopy)
  {
    __assert_rtn("[AMDOnDeviceTester testRunInference:]", "AMDOnDeviceTester.m", 224, "!*error");
  }

  NSLog(&cfstr_InferenceCompu.isa);
  v9 = +[AMDTestDataCommon getInferencePayload];
  v13 = [AMDJSRequestHandler handlePayload:"handlePayload:error:" error:?];
  MEMORY[0x277D82BD8](v9);
  if (*inferenceCopy)
  {
    __assert_rtn("[AMDOnDeviceTester testRunInference:]", "AMDOnDeviceTester.m", 228, "!*error");
  }

  NSLog(&cfstr_InferenceVerif.isa);
  if (!v13)
  {
    __assert_rtn("[AMDOnDeviceTester testRunInference:]", "AMDOnDeviceTester.m", 231, "inferenceResults");
  }

  v7 = [v13 objectForKey:@"response"];
  location = [v7 objectForKey:@"mgyml"];
  MEMORY[0x277D82BD8](v7);
  v8 = [location objectForKey:@"contentIds"];
  if ([v8 count] != 64)
  {
    __assert_rtn("[AMDOnDeviceTester testRunInference:]", "AMDOnDeviceTester.m", 233, "[[inferenceResponse objectForKey:@contentIds] count] == 64");
  }

  MEMORY[0x277D82BD8](v8);
  v6 = [location objectForKey:@"scores"];
  if ([v6 count] != 64)
  {
    __assert_rtn("[AMDOnDeviceTester testRunInference:]", "AMDOnDeviceTester.m", 234, "[[inferenceResponse objectForKey:@scores] count] == 64");
  }

  MEMORY[0x277D82BD8](v6);
  v5 = [location objectForKey:@"metrics"];
  if ([v5 count] != 3)
  {
    __assert_rtn("[AMDOnDeviceTester testRunInference:]", "AMDOnDeviceTester.m", 235, "[[inferenceResponse objectForKey:@metrics] count] == 3");
  }

  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v13, 0);
}

@end