@interface AMDTestDataCommon
+ (id)getAggregationDescriptorDict;
+ (id)getEventPayload:(id)payload;
+ (id)getInferencePayload;
+ (id)getNonAggregationDescriptor;
+ (id)getRefreshOnDeviceTasteProfilePayload;
+ (id)getRefreshServerTasteProfilePayload;
+ (id)getSampleEvent;
+ (id)getSampleEventCrashes;
+ (id)getSampleEventInstalls;
+ (id)getSampleEventLaunches;
+ (id)getSampleEventUninstall;
+ (id)getSampleWorkflow;
+ (id)getSaveConfigDownloadModelPayload;
@end

@implementation AMDTestDataCommon

+ (id)getSampleEvent
{
  v9[15] = *MEMORY[0x277D85DE8];
  v8[0] = 0x2852AC9C8;
  v4 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v5 = [v4 numberWithUnsignedLongLong:v2];
  v9[0] = v5;
  v8[1] = 0x2852ACD68;
  v9[1] = &unk_2852BAE60;
  v8[2] = 0x2852ACCE8;
  v9[2] = @"1.1";
  v8[3] = 0x2852ACD08;
  v9[3] = &unk_2852BC690;
  v8[4] = 0x2852ACD48;
  v9[4] = &unk_2852BAE78;
  v8[5] = 0x2852ACD88;
  v9[5] = &unk_2852BC6A0;
  v8[6] = 0x2852ACDA8;
  v9[6] = &unk_2852BC6B0;
  v8[7] = 0x2852ACDC8;
  v9[7] = &unk_2852BC6C0;
  v8[8] = 0x2852ACDE8;
  v9[8] = @"Some misc data";
  v8[9] = 0x2852ACE08;
  v9[9] = &unk_2852BAE90;
  v8[10] = 0x2852ACE28;
  v9[10] = @"iPhone";
  v8[11] = 0x2852ACE48;
  v9[11] = &unk_2852BAEA8;
  v8[12] = 0x2852ACE68;
  v9[12] = &unk_2852BAEC0;
  v8[13] = 0x2852ACE88;
  v9[13] = &unk_2852BAED8;
  v8[14] = 0x2852ACEA8;
  v9[14] = @"installs";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:15];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](date);
  *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)getSampleEventInstalls
{
  v9[16] = *MEMORY[0x277D85DE8];
  v8[0] = 0x2852AC9C8;
  v4 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v5 = [v4 numberWithUnsignedLongLong:v2];
  v9[0] = v5;
  v8[1] = 0x2852ACD68;
  v9[1] = &unk_2852BAE60;
  v8[2] = 0x2852ACCE8;
  v9[2] = @"1.1";
  v8[3] = 0x2852ACD08;
  v9[3] = &unk_2852BC690;
  v8[4] = 0x2852ACD48;
  v9[4] = &unk_2852BAE78;
  v8[5] = 0x2852ACD88;
  v9[5] = &unk_2852BC6A0;
  v8[6] = 0x2852ACDA8;
  v9[6] = &unk_2852BC6B0;
  v8[7] = 0x2852ACDC8;
  v9[7] = &unk_2852BC6C0;
  v8[8] = 0x2852ACDE8;
  v9[8] = @"Some misc data";
  v8[9] = 0x2852ACE08;
  v9[9] = &unk_2852BAE90;
  v8[10] = 0x2852ACE28;
  v9[10] = @"iPhone";
  v8[11] = 0x2852ACE48;
  v9[11] = &unk_2852BAEA8;
  v8[12] = 0x2852ACE68;
  v9[12] = &unk_2852BAEC0;
  v8[13] = 0x2852ACE88;
  v9[13] = &unk_2852BAED8;
  v8[14] = 0x2852ACEA8;
  v9[14] = @"installs";
  v8[15] = @"installType";
  v9[15] = &unk_2852BAEC0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:16];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](date);
  *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)getSampleEventUninstall
{
  v9[5] = *MEMORY[0x277D85DE8];
  v8[0] = 0x2852ACD68;
  v9[0] = &unk_2852BAE60;
  v8[1] = 0x2852ACCE8;
  v9[1] = @"1.1";
  v8[2] = 0x2852ACE28;
  v9[2] = @"iPhone";
  v8[3] = 0x2852AC9C8;
  v4 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v5 = [v4 numberWithUnsignedLongLong:v2];
  v9[3] = v5;
  v8[4] = 0x2852ACEA8;
  v9[4] = @"uninstalls";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:5];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](date);
  *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)getSampleEventCrashes
{
  v9[5] = *MEMORY[0x277D85DE8];
  v8[0] = 0x2852ACD68;
  v9[0] = &unk_2852BAE60;
  v8[1] = 0x2852ACCE8;
  v9[1] = @"1.1";
  v8[2] = 0x2852ACE28;
  v9[2] = @"iPhone";
  v8[3] = 0x2852AC9C8;
  v4 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v5 = [v4 numberWithUnsignedLongLong:v2];
  v9[3] = v5;
  v8[4] = 0x2852ACEA8;
  v9[4] = @"crashes";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:5];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](date);
  *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)getSampleEventLaunches
{
  v5[6] = *MEMORY[0x277D85DE8];
  v4[0] = 0x2852ACEA8;
  v5[0] = @"launches";
  v4[1] = 0x2852ACCE8;
  v5[1] = @"2.1";
  v4[2] = 0x2852B19A8;
  v5[2] = &unk_2852BC420;
  v4[3] = 0x2852ACE28;
  v5[3] = @"iPhone";
  v4[4] = 0x2852ACD68;
  v5[4] = &unk_2852BAF38;
  v4[5] = 0x2852ACD08;
  v5[5] = &unk_2852BAF50;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:6];
  *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)getEventPayload:(id)payload
{
  v17[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, payload);
  v14 = 0;
  if ([location[0] isEqualToString:0x2852B1D68])
  {
    v3 = +[AMDTestDataCommon getSampleEventInstalls];
    v4 = v14;
    v14 = v3;
    MEMORY[0x277D82BD8](v4);
  }

  else if ([location[0] isEqualToString:0x2852B1DE8])
  {
    v5 = +[AMDTestDataCommon getSampleEventUninstall];
    v6 = v14;
    v14 = v5;
    MEMORY[0x277D82BD8](v6);
  }

  else if ([location[0] isEqualToString:0x2852B1D48])
  {
    v7 = +[AMDTestDataCommon getSampleEventCrashes];
    v8 = v14;
    v14 = v7;
    MEMORY[0x277D82BD8](v8);
  }

  else if ([location[0] isEqualToString:0x2852B1DA8])
  {
    v9 = +[AMDTestDataCommon getSampleEventLaunches];
    v10 = v14;
    v14 = v9;
    MEMORY[0x277D82BD8](v10);
  }

  v16[0] = @"data";
  v17[0] = v14;
  v16[1] = @"action";
  v17[1] = location[0];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:{2, &v14}];
  objc_storeStrong(v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)getNonAggregationDescriptor
{
  v19[5] = *MEMORY[0x277D85DE8];
  v18[0] = 0x2852B3A88;
  v19[0] = @"AMDAppEvent";
  v18[1] = 0x2852B39E8;
  v15 = 0x2852B3A08;
  v16 = @"adamId";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:?];
  v17 = v10;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v19[1] = v9;
  v18[2] = 0x2852B0D88;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ > 100", @"time"];
  v14 = v8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v19[2] = v7;
  v18[3] = 0x2852B3028;
  v11[0] = 0x2852B3A28;
  v12[0] = @"time";
  v11[1] = 0x2852B3A68;
  v12[1] = &unk_2852BAF68;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v13 = v6;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v19[3] = v5;
  v18[4] = 0x2852B39C8;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:9];
  v19[4] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)getAggregationDescriptorDict
{
  v20[4] = *MEMORY[0x277D85DE8];
  v9[2] = self;
  v9[1] = a2;
  v19[0] = 0x2852B3A08;
  v20[0] = @"aggregatedProp";
  v19[1] = 0x2852B3808;
  v20[1] = @"count:";
  v19[2] = 0x2852B37E8;
  v20[2] = 0x2852B29A8;
  v19[3] = 0x2852B3828;
  v18 = 0x2852ACD48;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:?];
  v20[3] = v3;
  v9[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  MEMORY[0x277D82BD8](v3);
  v16[0] = 0x2852B3A88;
  v17[0] = @"AMDAppEvent";
  v16[1] = 0x2852B39E8;
  v13 = 0x2852B3A08;
  v14 = @"adamId";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v15[0] = v8;
  v15[1] = v9[0];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v17[1] = v7;
  v16[2] = 0x2852B0D88;
  v17[2] = &unk_2852BC438;
  v16[3] = 0x2852B3888;
  v17[3] = &unk_2852BC450;
  v16[4] = 0x2852B3028;
  v10 = 0x2852B3A68;
  v11 = &unk_2852BAF68;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v12 = v6;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v17[4] = v4;
  v16[5] = 0x2852B39C8;
  v17[5] = &unk_2852BAF80;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(v9, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)getRefreshServerTasteProfilePayload
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"data";
  v8[0] = @"domain";
  v9[0] = @"apps";
  v8[1] = @"tasteProfiles";
  v6[0] = @"user_id";
  v7[0] = @"268533468";
  v6[1] = @"storefront_id";
  v7[1] = &unk_2852BAF98;
  v6[2] = @"PURCHASED_ITEM_AFFINITY";
  v7[2] = &unk_2852BBC18;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v9[1] = v5;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:?];
  v11[0] = v3;
  v10[1] = @"action";
  v11[1] = @"refresh_server_taste_profile";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)getRefreshOnDeviceTasteProfilePayload
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"data";
  v8[0] = @"domain";
  v9[0] = @"apps";
  v8[1] = @"tasteProfiles";
  v6[0] = @"user_id";
  v7[0] = @"268533468";
  v6[1] = @"storefront_id";
  v7[1] = &unk_2852BAF98;
  v6[2] = @"PURCHASED_ITEM_AFFINITY";
  v7[2] = &unk_2852BBC40;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v9[1] = v5;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:?];
  v11[0] = v3;
  v10[1] = @"action";
  v11[1] = @"refresh_on_device_taste_profile";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)getInferencePayload
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"data";
  v5[0] = @"domain";
  v6[0] = @"apps";
  v5[1] = @"useCaseIds";
  v6[1] = &unk_2852BC480;
  v5[2] = @"storefrontId";
  v6[2] = &unk_2852BAF98;
  v5[3] = @"dsid";
  v6[3] = @"268533468";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v8[0] = v3;
  v7[1] = @"action";
  v8[1] = @"run_inference";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  MEMORY[0x277D82BD8](v3);
  *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)getSaveConfigDownloadModelPayload
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = @"data";
  v17 = @"apps";
  v15[0] = @"modelUrls";
  v16[0] = &unk_2852BBC68;
  v15[1] = @"workflows";
  v12[0] = @"workflow_id";
  v13[0] = &unk_2852BAFB0;
  v12[1] = @"workflow_name";
  v13[1] = @"MGYML Default";
  v12[2] = @"tab_ids";
  v13[2] = &unk_2852BC498;
  v12[3] = @"use_case_id";
  v13[3] = @"mgyml";
  v12[4] = @"included_device_families";
  v13[4] = &unk_2852BC4B0;
  v12[5] = @"model_id";
  v13[5] = @"games_od_phl_monetize_classifier_global";
  v12[6] = @"model_format";
  v13[6] = @"CoreML";
  v12[7] = @"included_storefront_ids";
  v13[7] = MEMORY[0x277CBEBF8];
  v12[8] = @"excluded_storefront_ids";
  v13[8] = MEMORY[0x277CBEBF8];
  v12[9] = @"js_resources";
  v13[9] = &unk_2852BC4C8;
  v12[10] = @"max_items_to_display";
  v13[10] = &unk_2852BAFC8;
  v12[11] = @"input_definitions";
  v13[11] = &unk_2852BBCB8;
  v12[12] = @"output_definitions";
  v13[12] = &unk_2852BBD80;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:13];
  v14 = v9;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:?];
  v16[1] = v8;
  v15[2] = @"descriptors";
  v10 = @"sort_descriptors";
  v7 = +[AMDTestDataCommon getAggregationDescriptorDict];
  v11 = v7;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v16[2] = v6;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v18 = v5;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v3;
  v19[1] = @"action";
  v20[1] = @"save_config_download_model";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)getSampleWorkflow
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"workflow_id";
  v6[0] = &unk_2852BAFB0;
  v5[1] = @"workflow_name";
  v6[1] = @"MGYML Default";
  v5[2] = @"use_case_id";
  v6[2] = @"mgyml";
  v5[3] = @"included_device_families";
  v6[3] = &unk_2852BC540;
  v5[4] = @"model_id";
  v6[4] = @"games_od_phl_monetize_classifier_global";
  v5[5] = @"model_format";
  v6[5] = @"CoreML";
  v5[6] = @"included_storefront_ids";
  v6[6] = MEMORY[0x277CBEBF8];
  v5[7] = @"excluded_storefront_ids";
  v6[7] = MEMORY[0x277CBEBF8];
  v5[8] = @"js_resources";
  v6[8] = &unk_2852BC558;
  v5[9] = @"max_items_to_display";
  v6[9] = &unk_2852BAFC8;
  v5[10] = @"input_definitions";
  v6[10] = &unk_2852BBDD0;
  v5[11] = @"output_definitions";
  v6[11] = &unk_2852BBE98;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:12];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  MEMORY[0x277D82BD8](v3);
  *MEMORY[0x277D85DE8];

  return v4;
}

@end