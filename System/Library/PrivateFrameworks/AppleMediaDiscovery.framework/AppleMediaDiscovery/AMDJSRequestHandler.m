@interface AMDJSRequestHandler
+ (id)getVersion;
+ (id)handlePayload:(id)a3 error:(id *)a4;
+ (int64_t)getActionCode:(id)a3;
+ (void)handlePayload:(id)a3 ForAsyncOperation:(id)a4;
+ (void)handlePayload:(id)a3 withCompletionHandler:(id)a4;
+ (void)logAsyncHandlerPayload:(id)a3 forAction:(id)a4 withVerbosityLevel:(char)a5 andBuild:(id)a6 andSessionKey:(id)a7 andStorefrontId:(id)a8 withLoggingProbability:(id)a9 error:(id *)a10;
+ (void)logMetrics:(id)a3;
+ (void)wrapUp;
@end

@implementation AMDJSRequestHandler

+ (int64_t)getActionCode:(id)a3
{
  v10[50] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!getActionCode__actionMap)
  {
    v9[0] = @"clear_user_data";
    v10[0] = &unk_2852BA9C8;
    v9[1] = @"data_replication";
    v10[1] = &unk_2852BA9E0;
    v9[2] = @"debug";
    v10[2] = &unk_2852BA9F8;
    v9[3] = @"fetch_biome_data";
    v10[3] = &unk_2852BAA10;
    v9[4] = @"get_app_segment_data";
    v10[4] = &unk_2852BAA28;
    v9[5] = @"get_app_tab_info";
    v10[5] = &unk_2852BAA40;
    v9[6] = @"getModelPath";
    v10[6] = &unk_2852BAA58;
    v9[7] = @"getVersion";
    v10[7] = &unk_2852BAA70;
    v9[8] = @"log_metrics_data";
    v10[8] = &unk_2852BAA88;
    v9[9] = @"coldstart_model_download";
    v10[9] = &unk_2852BAAA0;
    v9[10] = @"cms_download_status_handler";
    v10[10] = &unk_2852BAAB8;
    v9[11] = @"refresh_entity_table";
    v10[11] = &unk_2852BAAD0;
    v9[12] = @"refresh_odtp";
    v10[12] = &unk_2852BAAE8;
    v9[13] = @"refresh_on_device_taste_profile";
    v10[13] = &unk_2852BAB00;
    v9[14] = @"run_inference";
    v10[14] = &unk_2852BAB18;
    v9[15] = @"run_megadome_queries";
    v10[15] = &unk_2852BAB30;
    v9[16] = @"run_pir_queries";
    v10[16] = &unk_2852BAB48;
    v9[17] = @"run_pec_queries";
    v10[17] = &unk_2852BAB60;
    v9[18] = @"sync";
    v10[18] = &unk_2852BAB78;
    v9[19] = @"sync2";
    v10[19] = &unk_2852BAB78;
    v9[20] = @"unsigned_sync";
    v10[20] = &unk_2852BAB90;
    v9[21] = @"run_batched_sql_queries";
    v10[21] = &unk_2852BABA8;
    v9[22] = @"run_custom_aggregator";
    v10[22] = &unk_2852BABC0;
    v9[23] = @"aggregateCrashes";
    v10[23] = &unk_2852BABD8;
    v9[24] = @"aggregateInstalls";
    v10[24] = &unk_2852BABF0;
    v9[25] = @"save_appstore_events";
    v10[25] = &unk_2852BAC08;
    v9[26] = @"aggregateLaunches";
    v10[26] = &unk_2852BAC20;
    v9[27] = @"save_crash";
    v10[27] = &unk_2852BAC38;
    v9[28] = @"save_install";
    v10[28] = &unk_2852BAC50;
    v9[29] = @"save_launches";
    v10[29] = &unk_2852BAC68;
    v9[30] = @"save_model_urls";
    v10[30] = &unk_2852BAC80;
    v9[31] = @"savePIRData";
    v10[31] = &unk_2852BAC98;
    v9[32] = @"saveStreamData";
    v10[32] = &unk_2852BACB0;
    v9[33] = @"save_uninstall";
    v10[33] = &unk_2852BACC8;
    v9[34] = @"sqliteDeleteRows";
    v10[34] = &unk_2852BACE0;
    v9[35] = @"sqliteInsertRows";
    v10[35] = &unk_2852BACF8;
    v9[36] = @"sqliteUpdateTables";
    v10[36] = &unk_2852BAD10;
    v9[37] = @"test_inference";
    v10[37] = &unk_2852BAD28;
    v9[38] = @"truncate_sqlite_tables";
    v10[38] = &unk_2852BAD40;
    v9[39] = @"run_podium_inference";
    v10[39] = &unk_2852BAD58;
    v9[40] = @"filter_fitcored_catalog";
    v10[40] = &unk_2852BAD70;
    v9[41] = @"query_workout_references";
    v10[41] = &unk_2852BAD88;
    v9[42] = @"fetch_fitness_catalog";
    v10[42] = &unk_2852BADA0;
    v9[43] = @"fetch_bootstrap_fitness_catalog";
    v10[43] = &unk_2852BADB8;
    v9[44] = @"insert_vectors";
    v10[44] = &unk_2852BADD0;
    v9[45] = @"clear_vector_db";
    v10[45] = &unk_2852BADE8;
    v9[46] = @"create_vector_db";
    v10[46] = &unk_2852BAE00;
    v9[47] = @"search_vector_db";
    v10[47] = &unk_2852BAE18;
    v9[48] = @"delete_vector_db";
    v10[48] = &unk_2852BAE30;
    v9[49] = @"write_biome_data";
    v10[49] = &unk_2852BAE48;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:50];
    v4 = getActionCode__actionMap;
    getActionCode__actionMap = v3;
    MEMORY[0x277D82BD8](v4);
  }

  v7 = [getActionCode__actionMap objectForKey:location[0]];
  if (v7)
  {
    v6 = [v7 unsignedIntValue];
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)getVersion
{
  v20[7] = *MEMORY[0x277D85DE8];
  v18[2] = a1;
  v18[1] = a2;
  v18[0] = +[AMDSQLite getSharedInstance];
  v15 = 0;
  v13 = 0;
  v11 = 0;
  if ([v18[0] isUsable])
  {
    v16 = [v18[0] getDataSchema];
    v15 = 1;
    v14 = [v16 getVersion];
    v13 = 1;
    v2 = MEMORY[0x277D82BE0](v14);
  }

  else
  {
    v12 = [v18[0] connectionState];
    v11 = 1;
    v2 = MEMORY[0x277D82BE0](v12);
  }

  v17 = v2;
  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](v16);
  }

  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v4 infoDictionary];
  MEMORY[0x277D82BD8](v4);
  v19[0] = @"AMDVersion";
  v20[0] = &unk_2852BC680;
  v19[1] = @"Description";
  v20[1] = @"AMDVectorDBImplementation";
  v19[2] = @"SchemaVersion";
  v20[2] = v17;
  v19[3] = @"CFBundleInfoDictionaryVersion";
  v9 = [v10 objectForKey:?];
  v20[3] = v9;
  v19[4] = @"CFBundleNumericVersion";
  v8 = [v10 objectForKey:?];
  v20[4] = v8;
  v19[5] = @"DTPlatformBuild";
  v7 = [v10 objectForKey:?];
  v20[5] = v7;
  v19[6] = @"DTPlatformVersion";
  v5 = [v10 objectForKey:?];
  v20[6] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:7];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)handlePayload:(id)a3 ForAsyncOperation:(id)a4
{
  v90 = *MEMORY[0x277D85DE8];
  v87 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v85 = 0;
  objc_storeStrong(&v85, a4);
  v84 = 0;
  v83 = [location[0] objectForKey:@"data"];
  v82 = 0;
  v81 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v83];
  v80 = [location[0] objectForKey:@"action"];
  if (!v80)
  {
    objc_storeStrong(&v82, @"No action");
    v4 = [AMDError allocError:15 withMessage:v82];
    v5 = v84;
    v84 = v4;
    MEMORY[0x277D82BD8](v5);
    v79 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v78 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v89, v82);
      _os_log_error_impl(&dword_240CB9000, v79, v78, "%@", v89, 0xCu);
    }

    objc_storeStrong(&v79, 0);
    [v87 logMetrics:v84];
    (*(v85 + 2))(v85, 0, v84);
  }

  v77 = [location[0] objectForKey:@"osBuildNumber"];
  v76 = [location[0] objectForKey:@"sessionKey"];
  v75 = [v81 objectForKey:@"storefrontId"];
  v74 = 0;
  v73 = [location[0] objectForKey:@"verbosityLevel"];
  if (v73)
  {
    v74 = [v73 intValue];
  }

  else
  {
    v74 = 0;
  }

  v72 = [v81 objectForKey:@"loggingProbability"];
  if (v72)
  {
    [v72 doubleValue];
    if (v6 > 1.0 || ([v72 doubleValue], v7 < 0.0))
    {
      objc_storeStrong(&v72, 0);
    }
  }

  [v87 getActionCode:v80];
  v71 = [v87 getActionCode:v80];
  v19 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v70 = [v19 UUIDString];
  MEMORY[0x277D82BD8](v19);
  v69 = 0;
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v67 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_4_8_64_8_64_4_0_8_64(v88, v70, v80, v71, @"__defaultTreatment");
    _os_log_impl(&dword_240CB9000, oslog, v67, "Async JS handler call %@: action: %@, code:%d, treatment: %@", v88, 0x26u);
  }

  objc_storeStrong(&oslog, 0);
  [AMDMiscHelpers AMDInitialize:v81];
  v66 = MEMORY[0x277D82BE0](MEMORY[0x277CBEC10]);
  switch(v71)
  {
    case '%':
      [AMDJSDebugHandler handleAsyncDebugRequest:v81 withCompletionHandler:v85];
      break;
    case '&':
      v13 = objc_alloc_init(_TtC19AppleMediaDiscovery20AMDPodiumIntegration);
      v12 = v81;
      v34 = MEMORY[0x277D85DD0];
      v35 = -1073741824;
      v36 = 0;
      v37 = __55__AMDJSRequestHandler_handlePayload_ForAsyncOperation___block_invoke_474;
      v38 = &unk_278CB64A8;
      v39 = MEMORY[0x277D82BE0](v85);
      [(AMDPodiumIntegration *)v13 runInference:v12 completionHandler:&v34];
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v39, 0);
      break;
    case '\'':
      v18 = objc_alloc_init(_TtC19AppleMediaDiscovery18FitCoreDQueryClass);
      v17 = v81;
      v59 = MEMORY[0x277D85DD0];
      v60 = -1073741824;
      v61 = 0;
      v62 = __55__AMDJSRequestHandler_handlePayload_ForAsyncOperation___block_invoke;
      v63 = &unk_278CB59B8;
      v65 = MEMORY[0x277D82BE0](v85);
      v64 = MEMORY[0x277D82BE0](v84);
      [(FitCoreDQueryClass *)v18 filterFitcoreDCatalogWithCatalogFilterConfig:v17 completionHandler:&v59];
      MEMORY[0x277D82BD8](v18);
      objc_storeStrong(&v64, 0);
      objc_storeStrong(&v65, 0);
      break;
    case '(':
      v16 = objc_alloc_init(_TtC19AppleMediaDiscovery18FitCoreDQueryClass);
      v15 = v81;
      v52 = MEMORY[0x277D85DD0];
      v53 = -1073741824;
      v54 = 0;
      v55 = __55__AMDJSRequestHandler_handlePayload_ForAsyncOperation___block_invoke_2;
      v56 = &unk_278CB59B8;
      v58 = MEMORY[0x277D82BE0](v85);
      v57 = MEMORY[0x277D82BE0](v84);
      [(FitCoreDQueryClass *)v16 queryWorkoutReferencesWithWorkoutQueryConfig:v15 completionHandler:&v52];
      MEMORY[0x277D82BD8](v16);
      objc_storeStrong(&v57, 0);
      objc_storeStrong(&v58, 0);
      break;
    case ')':
      v14 = objc_alloc_init(_TtC19AppleMediaDiscovery18FitCoreDQueryClass);
      v40 = MEMORY[0x277D85DD0];
      v41 = -1073741824;
      v42 = 0;
      v43 = __55__AMDJSRequestHandler_handlePayload_ForAsyncOperation___block_invoke_3;
      v44 = &unk_278CB6480;
      v50[1] = v87;
      v45 = MEMORY[0x277D82BE0](v80);
      v51 = v74;
      v46 = MEMORY[0x277D82BE0](v77);
      v47 = MEMORY[0x277D82BE0](v76);
      v48 = MEMORY[0x277D82BE0](v75);
      v49 = MEMORY[0x277D82BE0](v72);
      v50[0] = MEMORY[0x277D82BE0](v85);
      [(FitCoreDQueryClass *)v14 fetchCatalogMetadataWithCompletionHandler:&v40];
      MEMORY[0x277D82BD8](v14);
      objc_storeStrong(v50, 0);
      objc_storeStrong(&v49, 0);
      objc_storeStrong(&v48, 0);
      objc_storeStrong(&v47, 0);
      objc_storeStrong(&v46, 0);
      objc_storeStrong(&v45, 0);
      break;
    case '+':
      v11 = objc_alloc_init(_TtC19AppleMediaDiscovery18FitCoreDQueryClass);
      v10 = v81;
      v22 = MEMORY[0x277D85DD0];
      v23 = -1073741824;
      v24 = 0;
      v25 = __55__AMDJSRequestHandler_handlePayload_ForAsyncOperation___block_invoke_2_477;
      v26 = &unk_278CB6480;
      v32[1] = v87;
      v27 = MEMORY[0x277D82BE0](v80);
      v33 = v74;
      v28 = MEMORY[0x277D82BE0](v77);
      v29 = MEMORY[0x277D82BE0](v76);
      v30 = MEMORY[0x277D82BE0](v75);
      v31 = MEMORY[0x277D82BE0](v72);
      v32[0] = MEMORY[0x277D82BE0](v85);
      [(FitCoreDQueryClass *)v11 runBootstrapCatalogSyncWithBootstrapCatalogSyncConfig:v10 completionHandler:&v22];
      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(v32, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v28, 0);
      objc_storeStrong(&v27, 0);
      break;
    default:
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid action: %@", v80];
      v8 = [AMDError allocError:15 withMessage:v21];
      v9 = v84;
      v84 = v8;
      MEMORY[0x277D82BD8](v9);
      (*(v85 + 2))(v85, v66, v84);
      objc_storeStrong(&v21, 0);
      break;
  }

  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(&v77, 0);
  objc_storeStrong(&v80, 0);
  objc_storeStrong(&v81, 0);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&v83, 0);
  objc_storeStrong(&v84, 0);
  objc_storeStrong(&v85, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __55__AMDJSRequestHandler_handlePayload_ForAsyncOperation___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = a1[4];
  (*(a1[5] + 16))();
  objc_storeStrong(location, 0);
}

void __55__AMDJSRequestHandler_handlePayload_ForAsyncOperation___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = a1[4];
  (*(a1[5] + 16))();
  objc_storeStrong(location, 0);
}

void __55__AMDJSRequestHandler_handlePayload_ForAsyncOperation___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  v20[1] = a1;
  v3 = *(a1 + 80);
  v4 = *(a1 + 32);
  v5 = *(a1 + 88);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v20[0] = v21;
  [v3 logAsyncHandlerPayload:location[0] forAction:v4 withVerbosityLevel:v5 andBuild:v6 andSessionKey:v7 andStorefrontId:v8 withLoggingProbability:v9 error:v20];
  objc_storeStrong(&v21, v20[0]);
  if (v21)
  {
    v19 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v18 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      log = v19;
      type = v18;
      v12 = [v21 localizedDescription];
      v17 = MEMORY[0x277D82BE0](v12);
      __os_log_helper_16_2_1_8_64(v25, v17);
      _os_log_error_impl(&dword_240CB9000, log, type, "Data fetch from fitcored failed with error: %@", v25, 0xCu);
      MEMORY[0x277D82BD8](v12);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v19, 0);
    v16 = [v21 localizedDescription];
    v23 = @"error";
    v24 = v16;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    (*(*(a1 + 72) + 16))();
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
  }

  (*(*(a1 + 72) + 16))();
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __55__AMDJSRequestHandler_handlePayload_ForAsyncOperation___block_invoke_474(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  (*(a1[4] + 16))();
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __55__AMDJSRequestHandler_handlePayload_ForAsyncOperation___block_invoke_2_477(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  v20[1] = a1;
  v3 = *(a1 + 80);
  v4 = *(a1 + 32);
  v5 = *(a1 + 88);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v20[0] = v21;
  [v3 logAsyncHandlerPayload:location[0] forAction:v4 withVerbosityLevel:v5 andBuild:v6 andSessionKey:v7 andStorefrontId:v8 withLoggingProbability:v9 error:v20];
  objc_storeStrong(&v21, v20[0]);
  if (v21)
  {
    v19 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v18 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      log = v19;
      type = v18;
      v12 = [v21 localizedDescription];
      v17 = MEMORY[0x277D82BE0](v12);
      __os_log_helper_16_2_1_8_64(v25, v17);
      _os_log_error_impl(&dword_240CB9000, log, type, "Bootstrap data fetch from fitcored failed with error: %@", v25, 0xCu);
      MEMORY[0x277D82BD8](v12);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v19, 0);
    v16 = [v21 localizedDescription];
    v23 = @"error";
    v24 = v16;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    (*(*(a1 + 72) + 16))();
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
  }

  (*(*(a1 + 72) + 16))();
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)handlePayload:(id)a3 withCompletionHandler:(id)a4
{
  v33 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v29 = 1;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    log = v30;
    type = v29;
    __os_log_helper_16_0_0(v28);
    _os_log_impl(&dword_240CB9000, log, type, "Entered top-level event handler", v28, 2u);
  }

  objc_storeStrong(&v30, 0);
  v27 = [location[0] objectForKey:@"data"];
  v26 = 0;
  v25 = 0;
  if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_storeStrong(&v25, @"Missing or invalid payload data");
    v4 = [AMDError allocError:15 withMessage:v25];
    v5 = v26;
    v26 = v4;
    MEMORY[0x277D82BD8](v5);
    (*(v31 + 2))(v31, 0, v26);
  }

  v6 = objc_alloc(MEMORY[0x277CBEB38]);
  v24 = [v6 initWithDictionary:v27];
  v23 = [v24 objectForKey:@"jsHandlerType"];
  if (v23 && ([v23 isEqualToString:@"async"] & 1) != 0)
  {
    v22 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v21 = 2;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v10 = v22;
      v11 = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_debug_impl(&dword_240CB9000, v10, v11, "Async handler invoked", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    [v33 handlePayload:location[0] ForAsyncOperation:v31];
  }

  else
  {
    v19 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v18 = 2;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v8 = v19;
      v9 = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_debug_impl(&dword_240CB9000, v8, v9, "Synchronous handler invoked", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    v15 = v26;
    v7 = [v33 handlePayload:location[0] error:&v15];
    objc_storeStrong(&v26, v15);
    v16 = v7;
    (*(v31 + 2))(v31, v7, v26);
    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
}

+ (id)handlePayload:(id)a3 error:(id *)a4
{
  v170 = *MEMORY[0x277D85DE8];
  v159 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v157 = a4;
  +[AMDPerf provision];
  [AMDPerf startMonitoringEvent:@"JSHandler"];
  v156 = 0;
  v155 = 0;
  v154 = [location[0] objectForKey:@"data"];
  v153 = 0;
  if (v154)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v149 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v154];
      v148 = [v149 objectForKey:@"storefrontId"];
      v147 = [v149 objectForKey:@"dsid"];
      v146 = [location[0] objectForKey:@"action"];
      v145 = [v149 objectForKey:@"treatmentId"];
      v144 = [location[0] objectForKey:@"osBuildNumber"];
      v143 = [location[0] objectForKey:@"sessionKey"];
      v142 = [location[0] objectForKey:@"bypassUserChecks"];
      v141 = [location[0] objectForKey:@"populatePerformanceDict"];
      v140 = [location[0] objectForKey:@"returnOutputAsString"];
      v139 = 0;
      v138 = [location[0] objectForKey:@"verbosityLevel"];
      if (v138)
      {
        v139 = [v138 intValue];
      }

      else
      {
        v139 = 0;
      }

      v137 = [v149 objectForKey:@"loggingProbability"];
      if (v137)
      {
        [v137 doubleValue];
        if (v5 > 1.0 || ([v137 doubleValue], v6 < 0.0))
        {
          objc_storeStrong(&v137, 0);
        }
      }

      [AMDFrameworkMetrics provisionInstanceAtVerbosity:v139 andAction:v146 andVersion:&unk_2852BC680 andBuild:v144 andStorefrontId:v148 withLoggingProbability:v137];
      v136 = 0;
      if (!v142 || ![v142 BOOLValue])
      {
        if (!v147 || !v148)
        {
          v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing storefrontId (%@)or userId (%@)", v148, v147];
          v8 = v153;
          v153 = v7;
          MEMORY[0x277D82BD8](v8);
          v112 = [AMDError allocError:15 withMessage:v153];
          v9 = v112;
          *v157 = v112;
          v135 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v134 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v168, v153);
            _os_log_error_impl(&dword_240CB9000, v135, v134, "%@", v168, 0xCu);
          }

          objc_storeStrong(&v135, 0);
          [AMDFrameworkMetrics log:v153 withKey:@"frameworkError" atVerbosity:0];
          v160 = 0;
          v150 = 1;
LABEL_104:
          objc_storeStrong(&v137, 0);
          objc_storeStrong(&v138, 0);
          objc_storeStrong(&v140, 0);
          objc_storeStrong(&v141, 0);
          objc_storeStrong(&v142, 0);
          objc_storeStrong(&v143, 0);
          objc_storeStrong(&v144, 0);
          objc_storeStrong(&v145, 0);
          objc_storeStrong(&v146, 0);
          objc_storeStrong(&v147, 0);
          objc_storeStrong(&v148, 0);
          objc_storeStrong(&v149, 0);
          goto LABEL_105;
        }

        [v149 setObject:v147 forKey:@"userId"];
        v136 = [v148 intValue];
      }

      if (v146)
      {
        v131 = 0;
        v110 = [location[0] objectForKey:@"enablePerformance"];
        MEMORY[0x277D82BD8](v110);
        if (v110)
        {
          v109 = [location[0] objectForKey:@"enablePerformance"];
          v131 = [v109 BOOLValue];
          MEMORY[0x277D82BD8](v109);
        }

        else
        {
          v131 = 1;
        }

        [AMDPerf enable:v131 & 1];
        [AMDPerf setVerbosity:v139];
        if (!v145 && ([v146 isEqualToString:@"run_inference"] & 1) == 0 && (objc_msgSend(v146, "isEqualToString:", @"get_app_segment_data") & 1) == 0)
        {
          objc_storeStrong(&v145, @"__defaultTreatment");
          [v149 setObject:v145 forKey:@"treatmentId"];
        }

        if (v145)
        {
          v108 = v145;
        }

        else
        {
          v108 = @"__defaultTreatment";
        }

        [AMDFrameworkMetrics log:v108 withKey:@"treatmentId" atVerbosity:0];
        v107 = objc_alloc_init(MEMORY[0x277CCAD78]);
        v130 = [v107 UUIDString];
        MEMORY[0x277D82BD8](v107);
        [AMDFrameworkMetrics log:v130 withKey:@"callUUID" atVerbosity:0];
        v129 = [location[0] objectForKey:@"bridgeAppVersion"];
        if (v129)
        {
          [AMDFrameworkMetrics log:v129 withKey:@"bridgeAppVersion" atVerbosity:0];
        }

        if (v143)
        {
          [AMDFrameworkMetrics log:v143 withKey:@"sessionKey" atVerbosity:0];
        }

        v156 = [v159 getActionCode:v146];
        v128 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v127 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
        {
          if (v145)
          {
            v106 = v145;
          }

          else
          {
            v106 = @"__defaultTreatment";
          }

          __os_log_helper_16_2_4_8_64_8_64_4_0_8_64(v166, v130, v146, v156, v106);
          _os_log_impl(&dword_240CB9000, v128, v127, "Synchronous JS handler call %@: action: %@, code:%d, treatment: %@", v166, 0x26u);
        }

        objc_storeStrong(&v128, 0);
        [AMDMiscHelpers AMDInitialize:v149];
        v126 = MEMORY[0x277D82BE0](MEMORY[0x277CBEC10]);
        switch(v156)
        {
          case 1:
            obj = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
            v123 = [AMDSQLite clearUserData:location[0]];
            [obj setObject:v123 forKey:@"sqliteClearData"];
            v122 = [AMDUserDataManager clearDataForUser:v149 error:v157];
            if (v122)
            {
              [obj setObject:v122 forKey:@"legacyClearData"];
            }

            objc_storeStrong(&v126, obj);
            objc_storeStrong(&v122, 0);
            objc_storeStrong(&v123, 0);
            objc_storeStrong(&obj, 0);
            break;
          case 2:
            v47 = [AMDDataSync processDataReplicationPayload:v149 error:v157];
            v48 = v126;
            v126 = v47;
            MEMORY[0x277D82BD8](v48);
            break;
          case 3:
            v57 = [AMDBiomeIntegration queryBiomeFor:v149 withError:v157];
            v58 = v126;
            v126 = v57;
            MEMORY[0x277D82BD8](v58);
            break;
          case 4:
            v11 = [AMDJSGetSegments getAppSegments:v149 error:v157];
            v12 = v126;
            v126 = v11;
            MEMORY[0x277D82BD8](v12);
            break;
          case 5:
            v105 = [v149 objectForKey:@"appTabName"];
            v13 = [AMDAppTabInfo getInfoForTab:"getInfoForTab:error:" error:?];
            v14 = v126;
            v126 = v13;
            MEMORY[0x277D82BD8](v14);
            MEMORY[0x277D82BD8](v105);
            break;
          case 6:
            v104 = [v149 objectForKey:@"useCaseId"];
            v103 = [v149 objectForKey:@"domain"];
            v102 = [v149 objectForKey:@"model_id"];
            v101 = [v149 objectForKey:@"treatmentId"];
            v15 = [AMDModel getModelPathForUsecase:"getModelPathForUsecase:inDomain:forModelId:withTreatmentId:error:" inDomain:v104 forModelId:v103 withTreatmentId:v102 error:?];
            v16 = v126;
            v126 = v15;
            MEMORY[0x277D82BD8](v16);
            MEMORY[0x277D82BD8](v101);
            MEMORY[0x277D82BD8](v102);
            MEMORY[0x277D82BD8](v103);
            MEMORY[0x277D82BD8](v104);
            break;
          case 7:
            v17 = [v159 getVersion];
            v18 = v126;
            v126 = v17;
            MEMORY[0x277D82BD8](v18);
            break;
          case 8:
            v49 = [AMDSplunkLogger logPayload:v149 error:v157];
            v50 = v126;
            v126 = v49;
            MEMORY[0x277D82BD8](v50);
            break;
          case 9:
            v19 = [AMDModelDownloader processColdstartBinaryDownload:v149 error:v157];
            v20 = v126;
            v126 = v19;
            MEMORY[0x277D82BD8](v20);
            break;
          case 10:
            v21 = [AMDModelDownloader processModelDownload:v149 withStorefrontID:v148 error:v157];
            v22 = v126;
            v126 = v21;
            MEMORY[0x277D82BD8](v22);
            break;
          case 11:
            v100 = [v149 objectForKey:@"domain"];
            v23 = [AMDSQLite refreshEntityTableForDomain:"refreshEntityTableForDomain:error:" error:?];
            v24 = v126;
            v126 = v23;
            MEMORY[0x277D82BD8](v24);
            MEMORY[0x277D82BD8](v100);
            break;
          case 12:
            v99 = [v149 objectForKey:@"domain"];
            v25 = [AMDSQLite refreshODTPForDomain:"refreshODTPForDomain:error:" error:?];
            v26 = v126;
            v126 = v25;
            MEMORY[0x277D82BD8](v26);
            MEMORY[0x277D82BD8](v99);
            break;
          case 13:
            v27 = [AMDJSSync dailyDataUpdate:v149 forStoreFrontId:v136 error:v157];
            v28 = v126;
            v126 = v27;
            MEMORY[0x277D82BD8](v28);
            break;
          case 14:
            v29 = [AMDJSCustomAggregator runCustomAggregation:v149 error:v157];
            v30 = v126;
            v126 = v29;
            MEMORY[0x277D82BD8](v30);
            break;
          case 15:
            v31 = [AMDJSInference runInference:v149 error:v157];
            v32 = v126;
            v126 = v31;
            MEMORY[0x277D82BD8](v32);
            break;
          case 16:
            v33 = [AMDMegadomeIntegration handleJSRequest:v149 error:v157];
            v34 = v126;
            v126 = v33;
            MEMORY[0x277D82BD8](v34);
            break;
          case 17:
            v59 = [AMDJSCipherMLQueryHandler triggerPIRKVFetch:v149 withError:v157];
            v60 = v126;
            v126 = v59;
            MEMORY[0x277D82BD8](v60);
            break;
          case 18:
            v61 = [AMDJSCipherMLQueryHandler triggerPECCall:v149 withError:v157];
            v62 = v126;
            v126 = v61;
            MEMORY[0x277D82BD8](v62);
            break;
          case 19:
            v35 = [AMDJSSync runSync:v149 withCallUUID:v130 error:v157];
            v36 = v126;
            v126 = v35;
            MEMORY[0x277D82BD8](v36);
            break;
          case 20:
            v37 = [AMDJSSync runSyncForUnsignedUser:v149 withCallUUID:v130 error:v157];
            v38 = v126;
            v126 = v37;
            MEMORY[0x277D82BD8](v38);
            break;
          case 21:
          case 22:
          case 23:
            v125 = [v149 objectForKey:@"events"];
            v39 = [AMDJSEngagementEventHandler handleAggregatedEngagementEvent:v125 forEventType:v156 forUserId:v147 andStoreFrontId:v136 error:v157];
            v40 = v126;
            v126 = v39;
            MEMORY[0x277D82BD8](v40);
            objc_storeStrong(&v125, 0);
            break;
          case 24:
            v43 = [AMDJSAppStoreEventHandler handleAggregatedAppStoreEvent:v149 error:v157];
            v44 = v126;
            v126 = v43;
            MEMORY[0x277D82BD8](v44);
            break;
          case 25:
          case 26:
          case 27:
          case 34:
            v41 = [AMDJSEngagementEventHandler handleSingleEngagementEvent:v149 forEventType:v156 forUserId:v147 andStoreFrontId:v136 error:v157];
            v42 = v126;
            v126 = v41;
            MEMORY[0x277D82BD8](v42);
            break;
          case 28:
            [AMDModel saveModels:v149 error:v157];
            break;
          case 29:
            v55 = [AMDJSPIRResponseHandler persistPIRData:v149 error:v157];
            v56 = v126;
            v126 = v55;
            MEMORY[0x277D82BD8](v56);
            break;
          case 30:
            v45 = [AMDSQLite saveEvents:location[0] error:v157];
            v46 = v126;
            v126 = v45;
            MEMORY[0x277D82BD8](v46);
            break;
          case 31:
            v63 = [AMDSQLite deleteRowsHandler:v149 error:v157];
            v64 = v126;
            v126 = v63;
            MEMORY[0x277D82BD8](v64);
            break;
          case 32:
            v65 = [AMDSQLite insertRowsHandler:v149 error:v157];
            v66 = v126;
            v126 = v65;
            MEMORY[0x277D82BD8](v66);
            break;
          case 33:
            v67 = [AMDSQLite updateTablesHandler:v149 error:v157];
            v68 = v126;
            v126 = v67;
            MEMORY[0x277D82BD8](v68);
            break;
          case 35:
            v51 = [AMDJSDebugHandler testInference:v149 error:v157];
            v52 = v126;
            v126 = v51;
            MEMORY[0x277D82BD8](v52);
            break;
          case 36:
            v69 = [AMDSQLite trimEventsForStreams:v149 error:v157];
            v70 = v126;
            v126 = v69;
            MEMORY[0x277D82BD8](v70);
            break;
          case 37:
            v53 = [AMDJSDebugHandler handleDebugRequest:v149 error:v157];
            v54 = v126;
            v126 = v53;
            MEMORY[0x277D82BD8](v54);
            break;
          case 42:
            v71 = [AMDJSCustomAggregator runBatchedSQLDescriptorsUsing:v149 error:v157];
            v72 = v126;
            v126 = v71;
            MEMORY[0x277D82BD8](v72);
            break;
          case 44:
            v75 = [_TtC19AppleMediaDiscovery18AMDVectorDBManager insertVectorsHandlerWithInsertVectorsPayload:v149 error:v157];
            v76 = v126;
            v126 = v75;
            MEMORY[0x277D82BD8](v76);
            break;
          case 45:
            v77 = [_TtC19AppleMediaDiscovery18AMDVectorDBManager clearVectorsHandlerWithClearVectorDBPayload:v149 error:v157];
            v78 = v126;
            v126 = v77;
            MEMORY[0x277D82BD8](v78);
            break;
          case 46:
            v79 = [_TtC19AppleMediaDiscovery18AMDVectorDBManager runVectorDBSearchWithSearchPayload:v149 error:v157];
            v80 = v126;
            v126 = v79;
            MEMORY[0x277D82BD8](v80);
            break;
          case 47:
            v81 = [_TtC19AppleMediaDiscovery18AMDVectorDBManager deleteVectorDatabaseWithDeletionPayload:v149 error:v157];
            v82 = v126;
            v126 = v81;
            MEMORY[0x277D82BD8](v82);
            break;
          case 48:
            v73 = [_TtC19AppleMediaDiscovery18AMDVectorDBManager createVectorDBWithCreateDBPayload:v149 error:v157];
            v74 = v126;
            v126 = v73;
            MEMORY[0x277D82BD8](v74);
            break;
          case 49:
            v83 = [AMDBiomeIntegration writeToBiome:v149 withError:v157];
            v84 = v126;
            v126 = v83;
            MEMORY[0x277D82BD8](v84);
            break;
          default:
            v121 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid action: %@", v146];
            v98 = [AMDError allocError:15 withMessage:v121];
            v85 = v98;
            *v157 = v98;
            objc_storeStrong(&v121, 0);
            break;
        }

        [AMDPerf endMonitoringEvent:@"JSHandler"];
        if (*v157)
        {
          v120 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v119 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
          {
            v97 = [*v157 localizedDescription];
            __os_log_helper_16_2_1_8_64(v165, v97);
            _os_log_error_impl(&dword_240CB9000, v120, v119, "JS handler error: %@", v165, 0xCu);
            MEMORY[0x277D82BD8](v97);
          }

          objc_storeStrong(&v120, 0);
          v163 = @"JSHandlerError";
          v96 = [*v157 localizedDescription];
          v164 = v96;
          v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
          v87 = v126;
          v126 = v86;
          MEMORY[0x277D82BD8](v87);
          MEMORY[0x277D82BD8](v96);
          v95 = [*v157 localizedDescription];
          [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
          MEMORY[0x277D82BD8](v95);
          *v157 = 0;
        }

        v118 = 0;
        if (v141)
        {
          v88 = +[AMDPerf generatePerformanceDict];
          v89 = v118;
          v118 = v88;
          MEMORY[0x277D82BD8](v89);
        }

        v161[0] = @"response";
        if (v126)
        {
          v94 = v126;
        }

        else
        {
          v94 = MEMORY[0x277CBEC10];
        }

        v162[0] = v94;
        v161[1] = @"perfDict";
        if (v118)
        {
          v93 = v118;
        }

        else
        {
          v93 = MEMORY[0x277CBEC10];
        }

        v162[1] = v93;
        v117 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v162 forKeys:v161 count:2];
        if (v140 && [v140 BOOLValue] == 1)
        {
          v116 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v117 options:0 error:v157];
          v115 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v116 encoding:4];
          v160 = MEMORY[0x277D82BE0](v115);
          v150 = 1;
          objc_storeStrong(&v115, 0);
          objc_storeStrong(&v116, 0);
        }

        else
        {
          v160 = MEMORY[0x277D82BE0](v117);
          v150 = 1;
        }

        objc_storeStrong(&v117, 0);
        objc_storeStrong(&v118, 0);
        objc_storeStrong(&v126, 0);
        objc_storeStrong(&v129, 0);
        objc_storeStrong(&v130, 0);
      }

      else
      {
        objc_storeStrong(&v153, @"No action");
        v111 = [AMDError allocError:15 withMessage:v153];
        v10 = v111;
        *v157 = v111;
        v133 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v132 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v167, v153);
          _os_log_error_impl(&dword_240CB9000, v133, v132, "%@", v167, 0xCu);
        }

        objc_storeStrong(&v133, 0);
        [AMDFrameworkMetrics log:v153 withKey:@"frameworkError" atVerbosity:0];
        v160 = 0;
        v150 = 1;
      }

      goto LABEL_104;
    }
  }

  objc_storeStrong(&v153, @"Missing or invalid payload data");
  v113 = [AMDError allocError:15 withMessage:v153];
  v4 = v113;
  *v157 = v113;
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v169, v153);
    _os_log_error_impl(&dword_240CB9000, oslog, type, "%@", v169, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [AMDFrameworkMetrics provisionInstanceAtVerbosity:0 andAction:0 andVersion:0 andBuild:0 andStorefrontId:0 withLoggingProbability:?];
  [AMDFrameworkMetrics log:v153 withKey:@"frameworkError" atVerbosity:0];
  v160 = 0;
  v150 = 1;
LABEL_105:
  objc_storeStrong(&v153, 0);
  objc_storeStrong(&v154, 0);
  v92 = v150;
  [v159 logMetrics:*v157];
  if (v155)
  {
    objc_exception_rethrow();
  }

  v150 = v92;
  if (v92 == 3)
  {
    __break(1u);
    JUMPOUT(0x240D5C258);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v90 = v160;

  return v90;
}

+ (void)wrapUp
{
  v12 = *MEMORY[0x277D85DE8];
  v10[2] = a1;
  v10[1] = a2;
  v10[0] = [AMDSQLite getSharedInstanceWithOption:0];
  if (v10[0])
  {
    v9 = [v10[0] getDb];
    if (v9)
    {
      v8 = sqlite3_close_v2(v9);
      if (v8)
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_1_4_0(v11, v8);
          _os_log_error_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_ERROR, "SQLITE: Error closing db: %d", v11, 8u);
        }

        objc_storeStrong(&oslog, 0);
      }

      else
      {
        location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v6 = 16;
        if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
        {
          log = location;
          type = v6;
          __os_log_helper_16_0_0(v5);
          _os_log_error_impl(&dword_240CB9000, log, type, "SQLITE: DB closed", v5, 2u);
        }

        objc_storeStrong(&location, 0);
      }
    }
  }

  objc_storeStrong(v10, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)logMetrics:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v4 = [location[0] localizedDescription];
    [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
    MEMORY[0x277D82BD8](v4);
  }

  v3 = +[AMDPerf generatePerformanceDict];
  [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
  MEMORY[0x277D82BD8](v3);
  +[AMDFrameworkMetrics flush];
  objc_storeStrong(location, 0);
}

+ (void)logAsyncHandlerPayload:(id)a3 forAction:(id)a4 withVerbosityLevel:(char)a5 andBuild:(id)a6 andSessionKey:(id)a7 andStorefrontId:(id)a8 withLoggingProbability:(id)a9 error:(id *)a10
{
  v24 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = a5;
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v19 = 0;
  objc_storeStrong(&v19, a7);
  v18 = 0;
  objc_storeStrong(&v18, a8);
  v17 = 0;
  objc_storeStrong(&v17, a9);
  v16 = a10;
  [AMDFrameworkMetrics provisionInstanceAtVerbosity:v21 andAction:v22 andVersion:&unk_2852BC680 andBuild:v20 andStorefrontId:v18 withLoggingProbability:v17];
  if (location[0])
  {
    v15 = [v22 stringByAppendingString:@"_summary"];
    [AMDFrameworkMetrics log:location[0] withKey:v15 atVerbosity:v21];
    objc_storeStrong(&v15, 0);
  }

  if (v19)
  {
    [AMDFrameworkMetrics log:v19 withKey:@"sessionKey" atVerbosity:v21];
  }

  [v24 logMetrics:*v16];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

@end