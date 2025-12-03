@interface AMDJSDebugDataSync
+ (id)testEventDeltaAlgorithm:(id *)algorithm;
+ (id)testNewDevicePayloadCreation:(id *)creation;
+ (id)testfullSyncDataIngestion:(id *)ingestion;
+ (id)testfullSyncInitiation:(id *)initiation;
+ (id)testfullSyncRequestCompletion:(id *)completion;
@end

@implementation AMDJSDebugDataSync

+ (id)testNewDevicePayloadCreation:(id *)creation
{
  selfCopy = self;
  v10 = a2;
  creationCopy = creation;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = MEMORY[0x277D82BE0](&unk_2852BBEE8);
  location = [AMDDataSync processDataReplicationPayload:v7 error:creationCopy];
  if (*creationCopy)
  {
    localizedDescription = [*creationCopy localizedDescription];
    [v8 setObject:? forKey:?];
    MEMORY[0x277D82BD8](localizedDescription);
    v12 = MEMORY[0x277D82BE0](v8);
  }

  else
  {
    if (location)
    {
      [v8 setObject:location forKey:@"ckConfigSetup"];
    }

    else
    {
      [v8 setObject:@"nil response" forKey:@"ckResponseError"];
    }

    v12 = MEMORY[0x277D82BE0](v8);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  v3 = v12;

  return v3;
}

+ (id)testEventDeltaAlgorithm:(id *)algorithm
{
  v52[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v32 = a2;
  algorithmCopy = algorithm;
  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v51[0] = @"drConfig";
  v52[0] = &unk_2852BBF10;
  v51[1] = @"deviceRegistry";
  v52[1] = &unk_2852BBF38;
  v51[2] = @"drData";
  v49[0] = @"__DR__0A8DCF13-CFEA-459C-B314-8582D55AF885_1655329257";
  v50[0] = &unk_2852BBF60;
  v49[1] = @"dev3";
  v47[0] = @"checkpoints";
  v3 = MEMORY[0x277CBEC10];
  v48[0] = MEMORY[0x277CBEC10];
  v47[1] = @"bookmarks";
  v48[1] = MEMORY[0x277CBEC10];
  v47[2] = @"eventsDict";
  v45 = @"AppUsageDataCoreData";
  v42[0] = @"adamId";
  v43[0] = &unk_2852BB088;
  v42[1] = @"appVersion";
  v43[1] = @"11.21.0";
  v42[2] = @"batteryUsage";
  v43[2] = &unk_2852BB070;
  v42[3] = @"deviceId";
  v43[3] = @"dev3";
  v42[4] = @"eventSubType";
  v43[4] = &unk_2852BB070;
  v42[5] = @"foregroundDuration";
  v43[5] = &unk_2852BB0A0;
  v42[6] = @"latitude";
  v43[6] = &unk_2852BB070;
  v42[7] = @"locationAccuracy";
  v43[7] = &unk_2852BB070;
  v42[8] = @"longitude";
  v43[8] = &unk_2852BB070;
  v42[9] = @"networkType";
  v43[9] = &unk_2852BB070;
  v42[10] = @"platform";
  v43[10] = &unk_2852BB0B8;
  v42[11] = @"storageUsed";
  v43[11] = &unk_2852BB070;
  v42[12] = @"time";
  v7 = MEMORY[0x277CCABB0];
  v27 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v26 = [v7 numberWithLongLong:{1000 * objc_msgSend(v27, "longLongValue")}];
  v43[12] = v26;
  v42[13] = @"timeZoneOffset";
  v43[13] = &unk_2852BB070;
  v42[14] = @"type";
  v43[14] = &unk_2852BB0D0;
  v42[15] = @"userId";
  v43[15] = @"20160157686";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:?];
  v44 = v25;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:?];
  v46 = v24;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
  v48[2] = v23;
  v47[3] = @"lastUpdateTimeMilliSeconds";
  v8 = MEMORY[0x277CCABB0];
  v22 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v21 = [v8 numberWithLongLong:{1000 * objc_msgSend(v22, "longLongValue")}];
  v48[3] = v21;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:?];
  v50[1] = v20;
  v49[2] = @"dev4";
  v40[0] = @"checkpoints";
  v41[0] = v3;
  v40[1] = @"bookmarks";
  v41[1] = v3;
  v40[2] = @"eventsDict";
  v38 = @"AppUsageDataCoreData";
  v35[0] = @"adamId";
  v36[0] = &unk_2852BB0E8;
  v35[1] = @"appVersion";
  v36[1] = @"11.21.0";
  v35[2] = @"batteryUsage";
  v36[2] = &unk_2852BB070;
  v35[3] = @"deviceId";
  v36[3] = @"dev4";
  v35[4] = @"eventSubType";
  v36[4] = &unk_2852BB070;
  v35[5] = @"foregroundDuration";
  v36[5] = &unk_2852BB0A0;
  v35[6] = @"latitude";
  v36[6] = &unk_2852BB070;
  v35[7] = @"locationAccuracy";
  v36[7] = &unk_2852BB070;
  v35[8] = @"longitude";
  v36[8] = &unk_2852BB070;
  v35[9] = @"networkType";
  v36[9] = &unk_2852BB070;
  v35[10] = @"platform";
  v36[10] = &unk_2852BB0B8;
  v35[11] = @"storageUsed";
  v36[11] = &unk_2852BB070;
  v35[12] = @"time";
  v9 = MEMORY[0x277CCABB0];
  v19 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v18 = [v9 numberWithLongLong:{1000 * objc_msgSend(v19, "longLongValue")}];
  v36[12] = v18;
  v35[13] = @"timeZoneOffset";
  v36[13] = &unk_2852BB070;
  v35[14] = @"type";
  v36[14] = &unk_2852BB0D0;
  v35[15] = @"userId";
  v36[15] = @"20160157686";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:16];
  v37 = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  v39 = v16;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v41[2] = v15;
  v40[3] = @"lastUpdateTimeMilliSeconds";
  v10 = MEMORY[0x277CCABB0];
  v14 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v13 = [v10 numberWithLongLong:{1000 * objc_msgSend(v14, "longLongValue")}];
  v41[3] = v13;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];
  v50[2] = v12;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:?];
  v52[2] = v11;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  location = [AMDDataSync processDataReplicationPayload:v29 error:algorithmCopy];
  if (*algorithmCopy)
  {
    localizedDescription = [*algorithmCopy localizedDescription];
    [v30 setObject:? forKey:?];
    MEMORY[0x277D82BD8](localizedDescription);
    v34 = MEMORY[0x277D82BE0](v30);
  }

  else
  {
    if (location)
    {
      [v30 setObject:location forKey:@"fsDataConsumption"];
    }

    else
    {
      [v30 setObject:@"nil response" forKey:@"drResponseError"];
    }

    v34 = MEMORY[0x277D82BE0](v30);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  *MEMORY[0x277D85DE8];
  v4 = v34;

  return v4;
}

+ (id)testfullSyncInitiation:(id *)initiation
{
  v23[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  initiationCopy = initiation;
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22[0] = @"drConfig";
  v23[0] = &unk_2852BBF88;
  v22[1] = @"deviceRegistry";
  v23[1] = &unk_2852BBFB0;
  v22[2] = @"drData";
  v20 = @"dev2";
  v18[0] = @"checkpoints";
  v19[0] = MEMORY[0x277CBEC10];
  v18[1] = @"bookmarks";
  v19[1] = MEMORY[0x277CBEC10];
  v18[2] = @"eventsDict";
  v19[2] = &unk_2852BC028;
  v18[3] = @"lastUpdateTimeMilliSeconds";
  v6 = MEMORY[0x277CCABB0];
  v10 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v9 = [v6 numberWithLongLong:{1000 * objc_msgSend(v10, "longLongValue")}];
  v19[3] = v9;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v21 = v8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23[2] = v7;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  location = [AMDDataSync processDataReplicationPayload:v12 error:initiationCopy];
  if (*initiationCopy)
  {
    localizedDescription = [*initiationCopy localizedDescription];
    [v13 setObject:? forKey:?];
    MEMORY[0x277D82BD8](localizedDescription);
    v17 = MEMORY[0x277D82BE0](v13);
  }

  else
  {
    if (location)
    {
      [v13 setObject:location forKey:@"fsInitiation"];
    }

    else
    {
      [v13 setObject:@"nil response" forKey:@"drResponseError"];
    }

    v17 = MEMORY[0x277D82BE0](v13);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  *MEMORY[0x277D85DE8];
  v3 = v17;

  return v3;
}

+ (id)testfullSyncDataIngestion:(id *)ingestion
{
  v67[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v41 = a2;
  ingestionCopy = ingestion;
  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v66[0] = @"drConfig";
  v67[0] = &unk_2852BC050;
  v66[1] = @"deviceRegistry";
  v67[1] = &unk_2852BC078;
  v66[2] = @"drData";
  v64[0] = @"dev2";
  v62[0] = @"checkpoints";
  v11 = MEMORY[0x277CBEC10];
  v63[0] = MEMORY[0x277CBEC10];
  v62[1] = @"bookmarks";
  v63[1] = MEMORY[0x277CBEC10];
  v62[2] = @"eventsDict";
  v60 = @"AppUsageDataCoreData";
  v57[0] = @"adamId";
  v58[0] = &unk_2852BB100;
  v57[1] = @"appVersion";
  v58[1] = @"11.21.0";
  v57[2] = @"batteryUsage";
  v58[2] = &unk_2852BB070;
  v57[3] = @"deviceId";
  v58[3] = @"undefined";
  v57[4] = @"eventSubType";
  v58[4] = &unk_2852BB070;
  v57[5] = @"foregroundDuration";
  v58[5] = &unk_2852BB118;
  v57[6] = @"latitude";
  v58[6] = &unk_2852BB070;
  v57[7] = @"locationAccuracy";
  v58[7] = &unk_2852BB070;
  v57[8] = @"longitude";
  v58[8] = &unk_2852BB070;
  v57[9] = @"networkType";
  v58[9] = &unk_2852BB070;
  v57[10] = @"platform";
  v58[10] = &unk_2852BB0B8;
  v57[11] = @"storageUsed";
  v58[11] = &unk_2852BB070;
  v57[12] = @"time";
  v6 = MEMORY[0x277CCABB0];
  v36 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v35 = [v6 numberWithLongLong:{1000 * objc_msgSend(v36, "longLongValue")}];
  v58[12] = v35;
  v57[13] = @"timeZoneOffset";
  v58[13] = &unk_2852BB070;
  v57[14] = @"type";
  v58[14] = &unk_2852BB0D0;
  v57[15] = @"userId";
  v58[15] = @"20160157686";
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:?];
  v59 = v34;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:?];
  v61 = v33;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v63[2] = v32;
  v62[3] = @"lastUpdateTimeMilliSeconds";
  v7 = MEMORY[0x277CCABB0];
  v31 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v30 = [v7 numberWithLongLong:{1000 * objc_msgSend(v31, "longLongValue")}];
  v63[3] = v30;
  v62[4] = @"fullSyncResponse";
  v55[0] = @"targetUUID";
  v56[0] = @"__DR__0A8DCF13-CFEA-459C-B314-8582D55AF885_1655329257";
  v55[1] = @"events";
  v53 = @"AppUsageDataCoreData";
  v50[0] = @"adamId";
  v51[0] = &unk_2852BB178;
  v50[1] = @"appVersion";
  v51[1] = @"11.21.0";
  v50[2] = @"batteryUsage";
  v51[2] = &unk_2852BB070;
  v50[3] = @"deviceId";
  v51[3] = @"dev2";
  v50[4] = @"eventSubType";
  v51[4] = &unk_2852BB070;
  v50[5] = @"foregroundDuration";
  v51[5] = &unk_2852BB0A0;
  v50[6] = @"latitude";
  v51[6] = &unk_2852BB070;
  v50[7] = @"locationAccuracy";
  v51[7] = &unk_2852BB070;
  v50[8] = @"longitude";
  v51[8] = &unk_2852BB070;
  v50[9] = @"networkType";
  v51[9] = &unk_2852BB070;
  v50[10] = @"platform";
  v51[10] = &unk_2852BB0B8;
  v50[11] = @"storageUsed";
  v51[11] = &unk_2852BB070;
  v50[12] = @"time";
  v8 = MEMORY[0x277CCABB0];
  v29 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v28 = [v8 numberWithLongLong:{1000 * objc_msgSend(v29, "longLongValue")}];
  v51[12] = v28;
  v50[13] = @"timeZoneOffset";
  v51[13] = &unk_2852BB070;
  v50[14] = @"type";
  v51[14] = &unk_2852BB0D0;
  v50[15] = @"userId";
  v51[15] = @"20160157686";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:16];
  v52 = v27;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  v54 = v26;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
  v56[1] = v25;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
  v63[4] = v24;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:?];
  v65[0] = v23;
  v64[1] = @"__DR__0A8DCF13-CFEA-459C-B314-8582D55AF885_1655329257";
  v48[0] = @"checkpoints";
  v49[0] = v11;
  v48[1] = @"bookmarks";
  v49[1] = v11;
  v48[2] = @"eventsDict";
  v49[2] = &unk_2852BC0A0;
  v48[3] = @"lastUpdateTimeMilliSeconds";
  v9 = MEMORY[0x277CCABB0];
  v22 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v21 = [v9 numberWithLongLong:{1000 * objc_msgSend(v22, "longLongValue")}];
  v49[3] = v21;
  v48[4] = @"fullSyncRequest";
  v46[0] = @"fsCheckpoint";
  v47[0] = v11;
  v46[1] = @"fsRequestTime";
  v10 = MEMORY[0x277CCABB0];
  v20 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v19 = [v10 numberWithLongLong:{1000 * objc_msgSend(v20, "longLongValue")}];
  v47[1] = v19;
  v46[2] = @"sourceUUID";
  v47[2] = @"dev2";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:?];
  v49[4] = v18;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:5];
  v65[1] = v17;
  v64[2] = @"dev3";
  v44[0] = @"checkpoints";
  v45[0] = v11;
  v44[1] = @"bookmarks";
  v45[1] = v11;
  v44[2] = @"eventsDict";
  v45[2] = &unk_2852BC0F0;
  v44[3] = @"lastUpdateTimeMilliSeconds";
  v12 = MEMORY[0x277CCABB0];
  v16 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v15 = [v12 numberWithLongLong:{1000 * objc_msgSend(v16, "longLongValue")}];
  v45[3] = v15;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:4];
  v65[2] = v14;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:3];
  v67[2] = v13;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  location = [AMDDataSync processDataReplicationPayload:v38 error:ingestionCopy];
  if (*ingestionCopy)
  {
    localizedDescription = [*ingestionCopy localizedDescription];
    [v39 setObject:? forKey:?];
    MEMORY[0x277D82BD8](localizedDescription);
    v43 = MEMORY[0x277D82BE0](v39);
  }

  else
  {
    if (location)
    {
      [v39 setObject:location forKey:@"fsDataConsumption"];
    }

    else
    {
      [v39 setObject:@"nil response" forKey:@"drResponseError"];
    }

    v43 = MEMORY[0x277D82BE0](v39);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  *MEMORY[0x277D85DE8];
  v3 = v43;

  return v3;
}

+ (id)testfullSyncRequestCompletion:(id *)completion
{
  v47[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v30 = a2;
  completionCopy = completion;
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v46[0] = @"drConfig";
  v47[0] = &unk_2852BC118;
  v46[1] = @"deviceRegistry";
  v47[1] = &unk_2852BC140;
  v46[2] = @"drData";
  v44[0] = @"__DR__0A8DCF13-CFEA-459C-B314-8582D55AF885_1655329257";
  v42[0] = @"checkpoints";
  v9 = MEMORY[0x277CBEC10];
  v43[0] = MEMORY[0x277CBEC10];
  v42[1] = @"bookmarks";
  v43[1] = MEMORY[0x277CBEC10];
  v42[2] = @"eventsDict";
  v43[2] = &unk_2852BC168;
  v42[3] = @"lastUpdateTimeMilliSeconds";
  v6 = MEMORY[0x277CCABB0];
  v25 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v24 = [v6 numberWithLongLong:{1000 * objc_msgSend(v25, "longLongValue")}];
  v43[3] = v24;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
  v45[0] = v23;
  v44[1] = @"dev3";
  v40[0] = @"checkpoints";
  v41[0] = v9;
  v40[1] = @"bookmarks";
  v41[1] = v9;
  v40[2] = @"eventsDict";
  v38 = @"AppUsageDataCoreData";
  v35[0] = @"adamId";
  v36[0] = &unk_2852BB088;
  v35[1] = @"appVersion";
  v36[1] = @"11.21.0";
  v35[2] = @"batteryUsage";
  v36[2] = &unk_2852BB070;
  v35[3] = @"deviceId";
  v36[3] = @"dev2";
  v35[4] = @"eventSubType";
  v36[4] = &unk_2852BB070;
  v35[5] = @"foregroundDuration";
  v36[5] = &unk_2852BB0A0;
  v35[6] = @"latitude";
  v36[6] = &unk_2852BB070;
  v35[7] = @"locationAccuracy";
  v36[7] = &unk_2852BB070;
  v35[8] = @"longitude";
  v36[8] = &unk_2852BB070;
  v35[9] = @"networkType";
  v36[9] = &unk_2852BB070;
  v35[10] = @"platform";
  v36[10] = &unk_2852BB0B8;
  v35[11] = @"storageUsed";
  v36[11] = &unk_2852BB070;
  v35[12] = @"time";
  v7 = MEMORY[0x277CCABB0];
  v22 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v21 = [v7 numberWithLongLong:{1000 * objc_msgSend(v22, "longLongValue")}];
  v36[12] = v21;
  v35[13] = @"timeZoneOffset";
  v36[13] = &unk_2852BB070;
  v35[14] = @"type";
  v36[14] = &unk_2852BB0D0;
  v35[15] = @"userId";
  v36[15] = @"20160157686";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:16];
  v37 = v20;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:?];
  v39 = v19;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v41[2] = v18;
  v40[3] = @"lastUpdateTimeMilliSeconds";
  v8 = MEMORY[0x277CCABB0];
  v17 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v16 = [v8 numberWithLongLong:{1000 * objc_msgSend(v17, "longLongValue")}];
  v41[3] = v16;
  v40[4] = @"fullSyncRequest";
  v33[0] = @"fsCheckpoint";
  v34[0] = v9;
  v33[1] = @"fsRequestTime";
  v10 = MEMORY[0x277CCABB0];
  v15 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v14 = [v10 numberWithLongLong:{1000 * objc_msgSend(v15, "longLongValue")}];
  v34[1] = v14;
  v33[2] = @"sourceUUID";
  v34[2] = @"__DR__0A8DCF13-CFEA-459C-B314-8582D55AF885_1655329257";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:?];
  v41[4] = v13;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:5];
  v45[1] = v12;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v47[2] = v11;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  location = [AMDDataSync processDataReplicationPayload:v27 error:completionCopy];
  if (*completionCopy)
  {
    localizedDescription = [*completionCopy localizedDescription];
    [v28 setObject:? forKey:?];
    MEMORY[0x277D82BD8](localizedDescription);
    v32 = MEMORY[0x277D82BE0](v28);
  }

  else
  {
    if (location)
    {
      [v28 setObject:location forKey:@"fsDataConsumption"];
    }

    else
    {
      [v28 setObject:@"nil response" forKey:@"drResponseError"];
    }

    v32 = MEMORY[0x277D82BE0](v28);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  *MEMORY[0x277D85DE8];
  v3 = v32;

  return v3;
}

@end