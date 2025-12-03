@interface AMDClient
- (id)appSegmentData:(id)data completion:(id)completion;
- (id)callDebugEvent:(id)event withPayload:(id)payload;
- (id)getFeature:(id)feature;
- (id)getFeatureStub:(id)stub;
- (id)getModelPath:(id)path error:(id *)error;
- (id)getModelPathForUsecase:(id)usecase withTreatmentId:(id)id inDomain:(id)domain error:(id *)error;
- (id)getMusicModelPathForUsecase:(id)usecase withTreatmentId:(id)id error:(id *)error;
- (id)sendBatchedPECSimilarityScores:(id)scores withCallHandle:(id)handle andRequestError:(id)error error:(id *)a6;
- (id)sendBatchedPIRData:(id)data forKeywords:(id)keywords withCallHandle:(id)handle andRequestError:(id)error error:(id *)a7;
- (id)sendPECSimilarityScores:(id)scores withCallHandle:(id)handle andRequestError:(id)error error:(id *)a6;
- (id)sendPIRData:(id)data forKeyword:(id)keyword withCallHandle:(id)handle andRequestError:(id)error error:(id *)a7;
- (id)sendPIRData:(id)data forKeyword:(id)keyword withCallHandle:(id)handle error:(id *)error;
- (void)callIAESegmentNotificationHandler;
- (void)clearDataForDSID:(id)d completion:(id)completion;
- (void)fetchAppSegments:(id)segments completion:(id)completion;
- (void)getAppSegmentDataWithRequest:(id)request completion:(id)completion;
- (void)iaeSegmentNotificationHandler:(id)handler;
- (void)subscribeToSegmentNotificationWithCallback:(id)callback forAccountDSID:(id)d;
- (void)unsubscribeFromSegmentNotification;
@end

@implementation AMDClient

- (id)callDebugEvent:(id)event withPayload:(id)payload
{
  v23[5] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v17 = 0;
  objc_storeStrong(&v17, payload);
  v16 = objc_alloc_init(AMDAMSEngagementEvent);
  v22[0] = @"action";
  v23[0] = @"amd.debug";
  v22[1] = @"dsid";
  v23[1] = @"1";
  v22[2] = @"storefrontId";
  v23[2] = @"2";
  v22[3] = @"event";
  v23[3] = location[0];
  v22[4] = @"testPayload";
  v23[4] = v17;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
  [v16 setEngagementData:?];
  MEMORY[0x277D82BD8](v9);
  v15 = objc_alloc_init(MEMORY[0x277CEE498]);
  v14 = [v15 enqueueEvent:v16];
  v13 = 0;
  v11 = 0;
  v10 = [v14 resultWithError:&v11];
  objc_storeStrong(&v13, v11);
  v12 = v10;
  if (v13)
  {
    v20 = @"error";
    localizedDescription = [v13 localizedDescription];
    v21 = localizedDescription;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    MEMORY[0x277D82BD8](localizedDescription);
  }

  else if (v12)
  {
    data = [v12 data];
    v19 = [data objectForKey:@"response"];
    MEMORY[0x277D82BD8](data);
  }

  else
  {
    v19 = MEMORY[0x277D82BE0](&unk_2852BB4E8);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v19;

  return v4;
}

- (id)getFeatureStub:(id)stub
{
  v64[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, stub);
  featureName = [location[0] featureName];
  v27 = [featureName isEqual:@"testFeatureList"];
  MEMORY[0x277D82BD8](featureName);
  if (v27)
  {
    v63[0] = @"status";
    v64[0] = @"OK";
    v63[1] = @"data";
    v64[1] = &unk_2852BC2B8;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
    v36 = 1;
  }

  else
  {
    featureName2 = [location[0] featureName];
    v25 = [featureName2 isEqual:@"testFeatureDict"];
    MEMORY[0x277D82BD8](featureName2);
    if (v25)
    {
      v61[0] = @"status";
      v62[0] = @"OK";
      v61[1] = @"data";
      v62[1] = &unk_2852BB510;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
      v36 = 1;
    }

    else
    {
      featureName3 = [location[0] featureName];
      v23 = [featureName3 isEqual:@"testFeatureDictLongKey"];
      MEMORY[0x277D82BD8](featureName3);
      if (v23)
      {
        v59[0] = @"status";
        v60[0] = @"OK";
        v59[1] = @"data";
        v57[0] = &unk_2852BA6C8;
        v58[0] = &unk_2852BC640;
        v57[1] = &unk_2852BA6E0;
        v58[1] = &unk_2852BC650;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:?];
        v60[1] = v21;
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
        MEMORY[0x277D82BD8](v21);
        v36 = 1;
      }

      else
      {
        featureName4 = [location[0] featureName];
        v20 = [featureName4 isEqual:@"testFeatureDictFloatKey"];
        MEMORY[0x277D82BD8](featureName4);
        if (v20)
        {
          v55[0] = @"status";
          v56[0] = @"OK";
          v55[1] = @"data";
          v53[0] = &unk_2852BC640;
          v54[0] = &unk_2852BC640;
          v53[1] = &unk_2852BC650;
          v54[1] = &unk_2852BC650;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:?];
          v56[1] = v18;
          v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
          MEMORY[0x277D82BD8](v18);
          v36 = 1;
        }

        else
        {
          featureName5 = [location[0] featureName];
          v17 = [featureName5 isEqual:@"dictOfArrays"];
          MEMORY[0x277D82BD8](featureName5);
          if (v17)
          {
            v51[0] = @"status";
            v52[0] = @"OK";
            v51[1] = @"data";
            v52[1] = &unk_2852BB538;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
            v36 = 1;
          }

          else
          {
            featureName6 = [location[0] featureName];
            v15 = [featureName6 isEqual:@"dictOfDicts"];
            MEMORY[0x277D82BD8](featureName6);
            if (v15)
            {
              v49[0] = @"status";
              v50[0] = @"OK";
              v49[1] = @"data";
              v50[1] = &unk_2852BB5B0;
              v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
              v36 = 1;
            }

            else
            {
              featureName7 = [location[0] featureName];
              v13 = [featureName7 isEqual:@"dictOfDictsWithString"];
              MEMORY[0x277D82BD8](featureName7);
              if (v13)
              {
                v47[0] = @"status";
                v48[0] = @"OK";
                v47[1] = @"data";
                v48[1] = &unk_2852BB628;
                v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
                v36 = 1;
              }

              else
              {
                featureName8 = [location[0] featureName];
                v11 = [featureName8 isEqual:@"98apps"];
                MEMORY[0x277D82BD8](featureName8);
                if (v11)
                {
                  array = [MEMORY[0x277CBEB18] array];
                  for (i = 0; i < 50; ++i)
                  {
                    v9 = [MEMORY[0x277CCABB0] numberWithInt:(10 * i)];
                    [array addObject:?];
                    MEMORY[0x277D82BD8](v9);
                  }

                  v45[0] = @"status";
                  v46[0] = @"OK";
                  v45[1] = @"data";
                  v46[1] = array;
                  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
                  v36 = 1;
                  objc_storeStrong(&array, 0);
                }

                else
                {
                  featureName9 = [location[0] featureName];
                  v8 = [featureName9 hasPrefix:@"purchase_id"];
                  MEMORY[0x277D82BD8](featureName9);
                  if (v8)
                  {
                    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    for (j = 0; j < 500; ++j)
                    {
                      0x9C40 = [MEMORY[0x277CCABB0] numberWithInt:arc4random() % 0x9C40];
                      [v33 addObject:0x9C40];
                      objc_storeStrong(&0x9C40, 0);
                    }

                    v43[0] = @"status";
                    v44[0] = @"OK";
                    v43[1] = @"data";
                    v44[1] = v33;
                    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
                    v36 = 1;
                    objc_storeStrong(&v33, 0);
                  }

                  else
                  {
                    featureName10 = [location[0] featureName];
                    v6 = [featureName10 hasPrefix:@"label"];
                    MEMORY[0x277D82BD8](featureName10);
                    if (v6)
                    {
                      v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      for (k = 0; k < 500; ++k)
                      {
                        0x78 = [MEMORY[0x277CCABB0] numberWithInt:arc4random() % 0x78];
                        [v30 addObject:0x78];
                        objc_storeStrong(&0x78, 0);
                      }

                      v41[0] = @"status";
                      v42[0] = @"OK";
                      v41[1] = @"data";
                      v42[1] = v30;
                      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
                      v36 = 1;
                      objc_storeStrong(&v30, 0);
                    }

                    else
                    {
                      v39[0] = @"status";
                      v40[0] = @"executionError";
                      v39[1] = @"error";
                      v40[1] = @"Execution error";
                      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
                      v36 = 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v38;

  return v3;
}

- (id)getFeature:(id)feature
{
  v24[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, feature);
  v16 = objc_alloc_init(MEMORY[0x277CEE498]);
  getAMSRequest = [location[0] getAMSRequest];
  v15 = [v16 enqueueEvent:?];
  MEMORY[0x277D82BD8](getAMSRequest);
  v14 = 0;
  obj = 0;
  v9 = [v15 resultWithError:&obj];
  objc_storeStrong(&v14, obj);
  v13 = v9;
  if (v14)
  {
    v23[0] = @"status";
    v24[0] = @"executionError";
    v23[1] = @"error";
    localizedDescription = [v14 localizedDescription];
    v24[1] = localizedDescription;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    MEMORY[0x277D82BD8](localizedDescription);
    v11 = 1;
  }

  else
  {
    data = [v13 data];
    v5 = [data objectForKey:@"response"];
    v10 = [v5 objectForKey:@"featureData"];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](data);
    if (v10)
    {
      v19[0] = @"status";
      v20[0] = @"OK";
      v19[1] = @"data";
      v20[1] = v10;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    }

    else
    {
      v21[0] = @"status";
      v22[0] = @"executionError";
      v21[1] = @"error";
      v22[1] = @"Null feature response";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    }

    v11 = 1;
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v18;

  return v3;
}

- (void)clearDataForDSID:(id)d completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  v23 = objc_alloc_init(MEMORY[0x277CEE498]);
  v4 = [AMDClientRequestEvent alloc];
  v22 = [(AMDClientRequestEvent *)v4 initClearUserDataFor:location[0] inDomain:@"apps"];
  getAMSRequest = [v22 getAMSRequest];
  v21 = [v23 enqueueEvent:?];
  MEMORY[0x277D82BD8](getAMSRequest);
  v20 = 0;
  v18 = 0;
  v11 = [v21 resultWithError:&v18];
  objc_storeStrong(&v20, v18);
  v19 = v11;
  if (v20)
  {
    v17 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v20 localizedDescription];
      __os_log_helper_16_2_1_8_64(v27, localizedDescription);
      _os_log_error_impl(&dword_240CB9000, v17, v16, "Error clearing user data: %@", v27, 0xCu);
      MEMORY[0x277D82BD8](localizedDescription);
    }

    objc_storeStrong(&v17, 0);
    (*(v24 + 2))(v24, 0, v20);
    v15 = 1;
  }

  else
  {
    data = [v19 data];
    v14 = [data objectForKey:@"response"];
    MEMORY[0x277D82BD8](data);
    if (v14)
    {
      NSLog(&cfstr_ClearUserDataS.isa, v14);
      (*(v24 + 2))(v24, 1, 0);
      v15 = 0;
    }

    else
    {
      v13 = MEMORY[0x277D82BE0](@"Nil clear user data response");
      v12 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v26, v13);
        _os_log_error_impl(&dword_240CB9000, v12, OS_LOG_TYPE_ERROR, "%@", v26, 0xCu);
      }

      objc_storeStrong(&v12, 0);
      v5 = v24;
      v6 = [AMDError allocError:16 withMessage:v13];
      v5[2](v5, 0);
      MEMORY[0x277D82BD8](v6);
      v15 = 1;
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)getAppSegmentDataWithRequest:(id)request completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)appSegmentData:(id)data completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (void)fetchAppSegments:(id)segments completion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, segments);
  v47 = 0;
  objc_storeStrong(&v47, completion);
  v46 = objc_alloc_init(MEMORY[0x277CEE498]);
  getAMSRequest = [location[0] getAMSRequest];
  v45 = [v46 enqueueEvent:?];
  MEMORY[0x277D82BD8](getAMSRequest);
  v44 = 0;
  v42 = 0;
  v28 = [v45 resultWithError:&v42];
  objc_storeStrong(&v44, v42);
  v43 = v28;
  if (v44)
  {
    v41 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      log = v41;
      v24 = type;
      localizedDescription = [v44 localizedDescription];
      v39 = MEMORY[0x277D82BE0](localizedDescription);
      __os_log_helper_16_2_1_8_64(v50, v39);
      _os_log_error_impl(&dword_240CB9000, log, v24, "error retrieving segment data: %@", v50, 0xCu);
      MEMORY[0x277D82BD8](localizedDescription);
      objc_storeStrong(&v39, 0);
    }

    objc_storeStrong(&v41, 0);
    (*(v47 + 2))(v47, 0, v44);
    v38 = 1;
  }

  else
  {
    data = [v43 data];
    v37 = [data objectForKey:@"response"];
    MEMORY[0x277D82BD8](data);
    if (v37)
    {
      v36 = [v37 objectForKey:@"segmentDataType"];
      if (v36 && ![v36 unsignedIntValue])
      {
        v35 = [v37 objectForKey:@"segmentData"];
        if (v35)
        {
          v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v35, "count")}];
          memset(__b, 0, sizeof(__b));
          v14 = MEMORY[0x277D82BE0](v35);
          v15 = [v14 countByEnumeratingWithState:__b objects:v49 count:16];
          if (v15)
          {
            v11 = *__b[2];
            v12 = 0;
            v13 = v15;
            while (1)
            {
              v10 = v12;
              if (*__b[2] != v11)
              {
                objc_enumerationMutation(v14);
              }

              v33 = *(__b[1] + 8 * v12);
              v6 = MEMORY[0x277CBEB98];
              v7 = [v35 objectForKey:v33];
              v31 = [v6 setWithArray:?];
              MEMORY[0x277D82BD8](v7);
              v8 = v34;
              v4 = [AMDAppSegmentInfo alloc];
              v9 = [(AMDAppSegmentInfo *)v4 initWithAppIdentifier:v33 andSegments:v31];
              [v8 addObject:?];
              MEMORY[0x277D82BD8](v9);
              objc_storeStrong(&v31, 0);
              ++v12;
              if (v10 + 1 >= v13)
              {
                v12 = 0;
                v13 = [v14 countByEnumeratingWithState:__b objects:v49 count:16];
                if (!v13)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x277D82BD8](v14);
          v30 = [v37 objectForKey:@"metadata"];
          v5 = [AMDFetchAppSegmentsResponse alloc];
          v29 = [(AMDFetchAppSegmentsResponse *)v5 initWithSegmentInfo:v34 ofType:v36 andMetaData:v30];
          (*(v47 + 2))(v47, v29);
          objc_storeStrong(&v29, 0);
          objc_storeStrong(&v30, 0);
          objc_storeStrong(&v34, 0);
          v38 = 0;
        }

        else
        {
          v16 = v47;
          v17 = [AMDError allocError:16 withMessage:@"Null response data"];
          v16[2](v16, 0);
          MEMORY[0x277D82BD8](v17);
          v38 = 1;
        }

        objc_storeStrong(&v35, 0);
      }

      else
      {
        v18 = v47;
        v19 = [AMDError allocError:16 withMessage:@"Unexpected response type"];
        v18[2](v18, 0);
        MEMORY[0x277D82BD8](v19);
        v38 = 1;
      }

      objc_storeStrong(&v36, 0);
    }

    else
    {
      v20 = v47;
      v21 = [AMDError allocError:16 withMessage:@"Null segment response"];
      v20[2](v20, 0);
      MEMORY[0x277D82BD8](v21);
      v38 = 1;
    }

    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)iaeSegmentNotificationHandler:(id)handler
{
  v64 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  name = [location[0] name];
  userInfo = [location[0] userInfo];
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v63, name, userInfo);
    _os_log_debug_impl(&dword_240CB9000, oslog, type, "IAE segment notification: name: %@ userInfo: %@", v63, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  dsId = [(AMDClient *)selfCopy dsId];
  MEMORY[0x277D82BD8](dsId);
  if (!dsId)
  {
    v51 = MEMORY[0x277D82BE0](@"Programmer error: no dsId, dropping IAE segments notification");
    v50 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v49 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v62, v51);
      _os_log_debug_impl(&dword_240CB9000, v50, v49, "%@", v62, 0xCu);
    }

    objc_storeStrong(&v50, 0);
    callback = [(AMDClient *)selfCopy callback];
    v26 = [AMDError allocError:28 withMessage:v51];
    callback[2](callback, 0);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](callback);
    objc_storeStrong(&v51, 0);
  }

  callback2 = [(AMDClient *)selfCopy callback];
  MEMORY[0x277D82BD8](callback2);
  if (!callback2)
  {
    v48 = MEMORY[0x277D82BE0](@"Programmer error: no callback, dropping IAE segments notification");
    v47 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v46 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v61, v48);
      _os_log_debug_impl(&dword_240CB9000, v47, v46, "%@", v61, 0xCu);
    }

    objc_storeStrong(&v47, 0);
    callback3 = [(AMDClient *)selfCopy callback];
    v23 = [AMDError allocError:28 withMessage:v48];
    callback3[2](callback3, 0);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](callback3);
    objc_storeStrong(&v48, 0);
  }

  v45 = [userInfo objectForKey:@"dsId"];
  v43 = 0;
  LOBYTE(v22) = 1;
  if (v45)
  {
    dsId2 = [(AMDClient *)selfCopy dsId];
    v43 = 1;
    v22 = [v45 isEqualToString:?] ^ 1;
  }

  if (v43)
  {
    MEMORY[0x277D82BD8](dsId2);
  }

  if (v22)
  {
    v20 = MEMORY[0x277CCACA8];
    dsId3 = [(AMDClient *)selfCopy dsId];
    v42 = [v20 stringWithFormat:@"Programmer error: dsId mismatch: payload: %@, expected: %@", v45, dsId3];
    MEMORY[0x277D82BD8](dsId3);
    v41 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v40 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v60, v42);
      _os_log_debug_impl(&dword_240CB9000, v41, v40, "%@", v60, 0xCu);
    }

    objc_storeStrong(&v41, 0);
    callback4 = [(AMDClient *)selfCopy callback];
    v18 = [AMDError allocError:28 withMessage:v42];
    callback4[2](callback4, 0);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](callback4);
    objc_storeStrong(&v42, 0);
  }

  v39 = [userInfo objectForKey:@"segmentDataType"];
  if (!v39 || [v39 unsignedIntValue])
  {
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Programmer error: Unexpected response type in IAE segments notification: %@", v39];
    v37 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v36 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v59, v38);
      _os_log_debug_impl(&dword_240CB9000, v37, v36, "%@", v59, 0xCu);
    }

    objc_storeStrong(&v37, 0);
    callback5 = [(AMDClient *)selfCopy callback];
    v16 = [AMDError allocError:28 withMessage:v38];
    callback5[2](callback5, 0);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](callback5);
    objc_storeStrong(&v38, 0);
  }

  v35 = [userInfo objectForKey:@"segmentData"];
  v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v35, "count")}];
  memset(__b, 0, sizeof(__b));
  v14 = MEMORY[0x277D82BE0](v35);
  v15 = [v14 countByEnumeratingWithState:__b objects:v58 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(v14);
      }

      v33 = *(__b[1] + 8 * v12);
      v6 = MEMORY[0x277CBEB98];
      v7 = [v35 objectForKey:v33];
      v31 = [v6 setWithArray:?];
      MEMORY[0x277D82BD8](v7);
      v8 = v34;
      v3 = [AMDAppSegmentInfo alloc];
      v9 = [(AMDAppSegmentInfo *)v3 initWithAppIdentifier:v33 andSegments:v31];
      [v8 addObject:?];
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v31, 0);
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [v14 countByEnumeratingWithState:__b objects:v58 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v14);
  v30 = [userInfo objectForKey:@"metadata"];
  v4 = [AMDFetchAppSegmentsResponse alloc];
  v29 = [(AMDFetchAppSegmentsResponse *)v4 initWithSegmentInfo:v34 ofType:v39 andMetaData:v30];
  callback6 = [(AMDClient *)selfCopy callback];
  callback6[2](callback6, v29);
  MEMORY[0x277D82BD8](callback6);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&userInfo, 0);
  objc_storeStrong(&name, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)subscribeToSegmentNotificationWithCallback:(id)callback forAccountDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, callback);
  v15 = 0;
  objc_storeStrong(&v15, d);
  [(AMDClient *)selfCopy setDsId:v15];
  [(AMDClient *)selfCopy setCallback:location[0]];
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  v6 = defaultCenter;
  currentQueue = [MEMORY[0x277CCABD8] currentQueue];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __71__AMDClient_subscribeToSegmentNotificationWithCallback_forAccountDSID___block_invoke;
  v12 = &unk_278CB5EE0;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v4 = [v6 addObserverForName:@"com.apple.AppleMediaDiscovery.IAESegmentNotification" object:0 queue:currentQueue usingBlock:?];
  MEMORY[0x277D82BD8](currentQueue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&defaultCenter, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __71__AMDClient_subscribeToSegmentNotificationWithCallback_forAccountDSID___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] iaeSegmentNotificationHandler:location[0]];
  objc_storeStrong(location, 0);
}

- (void)unsubscribeFromSegmentNotification
{
  selfCopy = self;
  v2[1] = a2;
  v2[0] = [MEMORY[0x277CCA9A0] defaultCenter];
  [v2[0] removeObserver:selfCopy name:@"com.apple.AppleMediaDiscovery.IAESegmentNotification" object:?];
  objc_storeStrong(v2, 0);
}

- (void)callIAESegmentNotificationHandler
{
  selfCopy = self;
  v2[1] = a2;
  v2[0] = [objc_alloc(MEMORY[0x277CCAB88]) initWithName:@"com.apple.AppleMediaDiscovery.IAESegmentNotification" object:? userInfo:?];
  [(AMDClient *)selfCopy iaeSegmentNotificationHandler:v2[0]];
  objc_storeStrong(v2, 0);
}

- (id)getModelPath:(id)path error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  errorCopy = error;
  if (location[0])
  {
    v15 = objc_alloc_init(MEMORY[0x277CEE498]);
    v5 = [AMDClientRequestEvent alloc];
    v14 = [(AMDClientRequestEvent *)v5 initModelPathRequestForUsecaseId:0 andModelId:location[0] withTreatmentId:0 inDomain:?];
    getAMSRequest = [v14 getAMSRequest];
    v13 = [v15 enqueueEvent:?];
    MEMORY[0x277D82BD8](getAMSRequest);
    v12 = [v13 resultWithError:errorCopy];
    if (!*errorCopy && v12)
    {
      data = [v12 data];
      v19 = [data objectForKey:@"response"];
      MEMORY[0x277D82BD8](data);
      v16 = 1;
    }

    else
    {
      v19 = 0;
      v16 = 1;
    }

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v10 = [AMDError allocError:14 withMessage:@"Nil modelId passed"];
    v4 = v10;
    *errorCopy = v10;
    v19 = 0;
    v16 = 1;
  }

  objc_storeStrong(location, 0);
  v6 = v19;

  return v6;
}

- (id)getModelPathForUsecase:(id)usecase withTreatmentId:(id)id inDomain:(id)domain error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, usecase);
  v23 = 0;
  objc_storeStrong(&v23, id);
  v22 = 0;
  objc_storeStrong(&v22, domain);
  errorCopy = error;
  if (location[0])
  {
    v19 = objc_alloc_init(MEMORY[0x277CEE498]);
    v7 = [AMDClientRequestEvent alloc];
    v18 = [(AMDClientRequestEvent *)v7 initModelPathRequestForUsecaseId:location[0] andModelId:0 withTreatmentId:v23 inDomain:v22];
    getAMSRequest = [v18 getAMSRequest];
    v17 = [v19 enqueueEvent:?];
    MEMORY[0x277D82BD8](getAMSRequest);
    v16 = [v17 resultWithError:errorCopy];
    if (!*errorCopy && v16)
    {
      data = [v16 data];
      v25 = [data objectForKey:@"response"];
      MEMORY[0x277D82BD8](data);
      v20 = 1;
    }

    else
    {
      v25 = 0;
      v20 = 1;
    }

    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v12 = [AMDError allocError:14 withMessage:@"Nil usecaseId passed"];
    v6 = v12;
    *errorCopy = v12;
    v25 = 0;
    v20 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  v8 = v25;

  return v8;
}

- (id)getMusicModelPathForUsecase:(id)usecase withTreatmentId:(id)id error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, usecase);
  v9 = 0;
  objc_storeStrong(&v9, id);
  v8 = [(AMDClient *)selfCopy getModelPathForUsecase:location[0] withTreatmentId:v9 inDomain:@"music" error:error];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)sendPIRData:(id)data forKeyword:(id)keyword withCallHandle:(id)handle andRequestError:(id)error error:(id *)a7
{
  v56[1] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v51 = 0;
  objc_storeStrong(&v51, keyword);
  v50 = 0;
  objc_storeStrong(&v50, handle);
  v49 = 0;
  objc_storeStrong(&v49, error);
  v48 = a7;
  if (!location[0] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (v51)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v50)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!v49 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v46 = objc_alloc_init(MEMORY[0x277CEE498]);
              v45 = 0;
              if (location[0])
              {
                v28 = [AMDClientRequestEvent alloc];
                v56[0] = v51;
                v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:?];
                v55 = location[0];
                v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
                v13 = [AMDClientRequestEvent initPIRResponseForKeywordArray:v28 withDataArray:"initPIRResponseForKeywordArray:withDataArray:withMissingKeywords:requestError:andCallHandle:" withMissingKeywords:v30 requestError:? andCallHandle:?];
                v14 = v45;
                v45 = v13;
                MEMORY[0x277D82BD8](v14);
                MEMORY[0x277D82BD8](v29);
                MEMORY[0x277D82BD8](v30);
              }

              else
              {
                v26 = [AMDClientRequestEvent alloc];
                v54 = v51;
                v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
                v15 = [AMDClientRequestEvent initPIRResponseForKeywordArray:v26 withDataArray:"initPIRResponseForKeywordArray:withDataArray:withMissingKeywords:requestError:andCallHandle:" withMissingKeywords:0 requestError:? andCallHandle:?];
                v16 = v45;
                v45 = v15;
                MEMORY[0x277D82BD8](v16);
                MEMORY[0x277D82BD8](v27);
              }

              getAMSRequestForCipherML = [v45 getAMSRequestForCipherML];
              v44 = [v46 enqueueEvent:?];
              MEMORY[0x277D82BD8](getAMSRequestForCipherML);
              v43 = [v44 resultWithError:v48];
              if (*v48)
              {
                v53 = 0;
                v47 = 1;
              }

              else if (v43)
              {
                data = [v43 data];
                v42 = [data objectForKey:@"response"];
                MEMORY[0x277D82BD8](data);
                v23 = [v42 objectForKey:@"frameworkError"];
                MEMORY[0x277D82BD8](v23);
                if (v23)
                {
                  v41 = [v42 objectForKey:@"frameworkError"];
                  v21 = [AMDError allocError:14 withMessage:v41];
                  v18 = v21;
                  *v48 = v21;
                  v53 = 0;
                  v47 = 1;
                  objc_storeStrong(&v41, 0);
                }

                else
                {
                  v53 = MEMORY[0x277D82BE0](v42);
                  v47 = 1;
                }

                objc_storeStrong(&v42, 0);
              }

              else
              {
                v24 = [AMDError allocError:14 withMessage:@"Nil result obtained from PIR call to AMD"];
                v17 = v24;
                *v48 = v24;
                v53 = 0;
                v47 = 1;
              }

              objc_storeStrong(&v43, 0);
              objc_storeStrong(&v44, 0);
              objc_storeStrong(&v45, 0);
              objc_storeStrong(&v46, 0);
            }

            else
            {
              v31 = [AMDError allocError:14 withMessage:@"requestError not an instance of NSError"];
              v12 = v31;
              *v48 = v31;
              v53 = 0;
              v47 = 1;
            }
          }

          else
          {
            v32 = [AMDError allocError:14 withMessage:@"callHandle not an instance of NSString"];
            v11 = v32;
            *v48 = v32;
            v53 = 0;
            v47 = 1;
          }
        }

        else
        {
          v33 = [AMDError allocError:14 withMessage:@"callHandle cannot be nil"];
          v10 = v33;
          *v48 = v33;
          v53 = 0;
          v47 = 1;
        }
      }

      else
      {
        v34 = [AMDError allocError:14 withMessage:@"keyword not an instance of NSData"];
        v9 = v34;
        *v48 = v34;
        v53 = 0;
        v47 = 1;
      }
    }

    else
    {
      v35 = [AMDError allocError:14 withMessage:@"keyword cannot be nil"];
      v8 = v35;
      *v48 = v35;
      v53 = 0;
      v47 = 1;
    }
  }

  else
  {
    v36 = [AMDError allocError:14 withMessage:@"PIRData not an instance of NSData"];
    v7 = v36;
    *v48 = v36;
    v53 = 0;
    v47 = 1;
  }

  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v19 = v53;

  return v19;
}

- (id)sendBatchedPIRData:(id)data forKeywords:(id)keywords withCallHandle:(id)handle andRequestError:(id)error error:(id *)a7
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v62 = 0;
  objc_storeStrong(&v62, keywords);
  v61 = 0;
  objc_storeStrong(&v61, handle);
  v60 = 0;
  objc_storeStrong(&v60, error);
  v59 = a7;
  if (location[0])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v40 = [AMDError allocError:14 withMessage:@"PIRDataArray not an instance of NSArray"];
      v7 = v40;
      *v59 = v40;
      v64 = 0;
      v58 = 1;
      goto LABEL_38;
    }
  }

  if (!v62)
  {
    v39 = [AMDError allocError:14 withMessage:@"keywordArray cannot be nil"];
    v8 = v39;
    *v59 = v39;
    v64 = 0;
    v58 = 1;
    goto LABEL_38;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v38 = [AMDError allocError:14 withMessage:@"keywordArray not an instance of NSArray"];
    v9 = v38;
    *v59 = v38;
    v64 = 0;
    v58 = 1;
    goto LABEL_38;
  }

  if (!v61)
  {
    v37 = [AMDError allocError:14 withMessage:@"callHandle cannot be nil"];
    v10 = v37;
    *v59 = v37;
    v64 = 0;
    v58 = 1;
    goto LABEL_38;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v36 = [AMDError allocError:14 withMessage:@"callHandle not an instance of NSString"];
    v11 = v36;
    *v59 = v36;
    v64 = 0;
    v58 = 1;
    goto LABEL_38;
  }

  if (v60)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v35 = [AMDError allocError:14 withMessage:@"requestError not an instance of NSError"];
      v12 = v35;
      *v59 = v35;
      v64 = 0;
      v58 = 1;
      goto LABEL_38;
    }
  }

  v57 = 0;
  v56 = 0;
  v55 = 0;
  if (!location[0])
  {
    goto LABEL_28;
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = v57;
  v57 = v13;
  MEMORY[0x277D82BD8](v14);
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = v56;
  v56 = v15;
  MEMORY[0x277D82BD8](v16);
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = v55;
  v55 = v17;
  MEMORY[0x277D82BD8](v18);
  v34 = [location[0] count];
  if (v34 == [v62 count])
  {
    for (i = 0; ; ++i)
    {
      v32 = i;
      if (v32 >= [location[0] count])
      {
        break;
      }

      v53 = [location[0] objectAtIndex:i];
      v52 = [v62 objectAtIndex:i];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v57 addObject:v52];
        v58 = 4;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v51 = MEMORY[0x277D82BE0](v53);
          [v56 addObject:v52];
          [v55 addObject:v51];
          objc_storeStrong(&v51, 0);
          v58 = 0;
        }

        else
        {
          v31 = [AMDError allocError:14 withMessage:@"NSObject enqueued to AMDClient needs to be of type NSNull or NSData"];
          v20 = v31;
          *v59 = v31;
          v64 = 0;
          v58 = 1;
        }
      }

      objc_storeStrong(&v52, 0);
      objc_storeStrong(&v53, 0);
      if (v58 && v58 != 4)
      {
        goto LABEL_37;
      }
    }

LABEL_28:
    v50 = objc_alloc_init(MEMORY[0x277CEE498]);
    v21 = [AMDClientRequestEvent alloc];
    v49 = [(AMDClientRequestEvent *)v21 initPIRResponseForKeywordArray:v56 withDataArray:v55 withMissingKeywords:v57 requestError:v60 andCallHandle:v61];
    getAMSRequestForCipherML = [v49 getAMSRequestForCipherML];
    v48 = [v50 enqueueEvent:?];
    MEMORY[0x277D82BD8](getAMSRequestForCipherML);
    v47 = [v48 resultWithError:v59];
    if (*v59)
    {
      v64 = 0;
      v58 = 1;
    }

    else if (v47)
    {
      data = [v47 data];
      v46 = [data objectForKey:@"response"];
      MEMORY[0x277D82BD8](data);
      v28 = [v46 objectForKey:@"frameworkError"];
      MEMORY[0x277D82BD8](v28);
      if (v28)
      {
        v45 = [v46 objectForKey:@"frameworkError"];
        v26 = [AMDError allocError:14 withMessage:v45];
        v23 = v26;
        *v59 = v26;
        v64 = 0;
        v58 = 1;
        objc_storeStrong(&v45, 0);
      }

      else
      {
        v64 = MEMORY[0x277D82BE0](v46);
        v58 = 1;
      }

      objc_storeStrong(&v46, 0);
    }

    else
    {
      v29 = [AMDError allocError:14 withMessage:@"Nil result obtained from PIR call to AMD"];
      v22 = v29;
      *v59 = v29;
      v64 = 0;
      v58 = 1;
    }

    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v49, 0);
    objc_storeStrong(&v50, 0);
    goto LABEL_37;
  }

  v33 = [AMDError allocError:14 withMessage:@"Unequal number of keywords and PIR responses"];
  v19 = v33;
  *v59 = v33;
  v64 = 0;
  v58 = 1;
LABEL_37:
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v57, 0);
LABEL_38:
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(location, 0);
  v24 = v64;

  return v24;
}

- (id)sendPECSimilarityScores:(id)scores withCallHandle:(id)handle andRequestError:(id)error error:(id *)a6
{
  v41[1] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scores);
  v38 = 0;
  objc_storeStrong(&v38, handle);
  v37 = 0;
  objc_storeStrong(&v37, error);
  v36 = a6;
  if (v38)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v37 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v34 = [AMDMiscHelpers extractPECSimilarityScores:location[0] error:v36];
        if (*v36)
        {
          v40 = 0;
          v35 = 1;
        }

        else
        {
          v33 = objc_alloc_init(MEMORY[0x277CEE498]);
          v32 = [AMDClientRequestEvent alloc];
          v19 = MEMORY[0x277D82BE0](v32);
          v41[0] = v34;
          v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
          v9 = [v19 initPECResponseForSimilarityScores:? requestError:? andCallHandle:?];
          v10 = v32;
          v32 = v9;
          MEMORY[0x277D82BD8](v10);
          MEMORY[0x277D82BD8](v20);
          getAMSRequestForCipherML = [v32 getAMSRequestForCipherML];
          v31 = [v33 enqueueEvent:?];
          MEMORY[0x277D82BD8](getAMSRequestForCipherML);
          v30 = [v31 resultWithError:v36];
          if (*v36)
          {
            v40 = 0;
            v35 = 1;
          }

          else if (v30)
          {
            data = [v30 data];
            v29 = [data objectForKey:@"response"];
            MEMORY[0x277D82BD8](data);
            v17 = [v29 objectForKey:@"frameworkError"];
            MEMORY[0x277D82BD8](v17);
            if (v17)
            {
              v28 = [v29 objectForKey:@"frameworkError"];
              v15 = [AMDError allocError:14 withMessage:v28];
              v12 = v15;
              *v36 = v15;
              v40 = 0;
              v35 = 1;
              objc_storeStrong(&v28, 0);
            }

            else
            {
              v40 = MEMORY[0x277D82BE0](v29);
              v35 = 1;
            }

            objc_storeStrong(&v29, 0);
          }

          else
          {
            v18 = [AMDError allocError:14 withMessage:@"Nil result obtained from PIR call to AMD"];
            v11 = v18;
            *v36 = v18;
            v40 = 0;
            v35 = 1;
          }

          objc_storeStrong(&v30, 0);
          objc_storeStrong(&v31, 0);
          objc_storeStrong(&v32, 0);
          objc_storeStrong(&v33, 0);
        }

        objc_storeStrong(&v34, 0);
      }

      else
      {
        v22 = [AMDError allocError:14 withMessage:@"requestError not an instance of NSError"];
        v8 = v22;
        *v36 = v22;
        v40 = 0;
        v35 = 1;
      }
    }

    else
    {
      v23 = [AMDError allocError:14 withMessage:@"callHandle not an instance of NSString"];
      v7 = v23;
      *v36 = v23;
      v40 = 0;
      v35 = 1;
    }
  }

  else
  {
    v24 = [AMDError allocError:14 withMessage:@"callHandle cannot be nil"];
    v6 = v24;
    *v36 = v24;
    v40 = 0;
    v35 = 1;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v13 = v40;

  return v13;
}

- (id)sendBatchedPECSimilarityScores:(id)scores withCallHandle:(id)handle andRequestError:(id)error error:(id *)a6
{
  v52 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scores);
  v48 = 0;
  objc_storeStrong(&v48, handle);
  v47 = 0;
  objc_storeStrong(&v47, error);
  v46 = a6;
  if (!v48)
  {
    v31 = [AMDError allocError:14 withMessage:@"callHandle cannot be nil"];
    v6 = v31;
    *v46 = v31;
    v50 = 0;
    v45 = 1;
    goto LABEL_33;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = [AMDError allocError:14 withMessage:@"callHandle not an instance of NSString"];
    v7 = v30;
    *v46 = v30;
    v50 = 0;
    v45 = 1;
    goto LABEL_33;
  }

  if (v47)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = [AMDError allocError:14 withMessage:@"requestError not an instance of NSError"];
      v8 = v29;
      *v46 = v29;
      v50 = 0;
      v45 = 1;
      goto LABEL_33;
    }
  }

  v44 = 0;
  if (!location[0])
  {
LABEL_23:
    v40 = objc_alloc_init(MEMORY[0x277CEE498]);
    v12 = [AMDClientRequestEvent alloc];
    v39 = [(AMDClientRequestEvent *)v12 initPECResponseForSimilarityScores:v44 requestError:v47 andCallHandle:v48];
    getAMSRequestForCipherML = [v39 getAMSRequestForCipherML];
    v38 = [v40 enqueueEvent:?];
    MEMORY[0x277D82BD8](getAMSRequestForCipherML);
    v37 = [v38 resultWithError:v46];
    if (*v46)
    {
      v50 = 0;
      v45 = 1;
    }

    else if (v37)
    {
      data = [v37 data];
      v36 = [data objectForKey:@"response"];
      MEMORY[0x277D82BD8](data);
      v19 = [v36 objectForKey:@"frameworkError"];
      MEMORY[0x277D82BD8](v19);
      if (v19)
      {
        v35 = [v36 objectForKey:@"frameworkError"];
        v17 = [AMDError allocError:14 withMessage:v35];
        v14 = v17;
        *v46 = v17;
        v50 = 0;
        v45 = 1;
        objc_storeStrong(&v35, 0);
      }

      else
      {
        v50 = MEMORY[0x277D82BE0](v36);
        v45 = 1;
      }

      objc_storeStrong(&v36, 0);
    }

    else
    {
      v20 = [AMDError allocError:14 withMessage:@"Nil result obtained from PIR call to AMD"];
      v13 = v20;
      *v46 = v20;
      v50 = 0;
      v45 = 1;
    }

    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = v44;
    v44 = v10;
    MEMORY[0x277D82BD8](v11);
    memset(__b, 0, sizeof(__b));
    v26 = MEMORY[0x277D82BE0](location[0]);
    v27 = [v26 countByEnumeratingWithState:__b objects:v51 count:16];
    if (v27)
    {
      v23 = *__b[2];
      v24 = 0;
      v25 = v27;
      while (1)
      {
        v22 = v24;
        if (*__b[2] != v23)
        {
          objc_enumerationMutation(v26);
        }

        v43 = *(__b[1] + 8 * v24);
        v41 = [AMDMiscHelpers extractPECSimilarityScores:v43 error:v46];
        if (*v46)
        {
          v50 = 0;
          v45 = 1;
        }

        else
        {
          [v44 addObject:v41];
          v45 = 0;
        }

        objc_storeStrong(&v41, 0);
        if (v45)
        {
          break;
        }

        ++v24;
        if (v22 + 1 >= v25)
        {
          v24 = 0;
          v25 = [v26 countByEnumeratingWithState:__b objects:v51 count:16];
          if (!v25)
          {
            goto LABEL_21;
          }
        }
      }
    }

    else
    {
LABEL_21:
      v45 = 0;
    }

    MEMORY[0x277D82BD8](v26);
    if (v45)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v28 = [AMDError allocError:14 withMessage:@"batchedSimilarityScoresArray not an instance of NSArray"];
  v9 = v28;
  *v46 = v28;
  v50 = 0;
  v45 = 1;
LABEL_32:
  objc_storeStrong(&v44, 0);
LABEL_33:
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v15 = v50;

  return v15;
}

- (id)sendPIRData:(id)data forKeyword:(id)keyword withCallHandle:(id)handle error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v13 = 0;
  objc_storeStrong(&v13, keyword);
  v12 = 0;
  objc_storeStrong(&v12, handle);
  v11 = [AMDError allocError:18 withMessage:@"Deprecated method"];
  v6 = v11;
  *error = v11;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return 0;
}

@end