@interface AMDModelDownloader
+ (id)ensureNewVersionDirURLForModel:(id)a3 withVersion:(unint64_t)a4 andCreationTime:(int64_t)a5;
+ (id)parseModel:(id)a3 atLocation:(id)a4 withVersion:(id)a5 withStorefrontId:(id)a6 error:(id *)a7;
+ (id)parseModelWithId:(id)a3 withStorefrontId:(id)a4 fromArchive:(id)a5 withBaseRecoModel:(id)a6;
+ (id)performModelCleanup;
+ (id)processColdstartBinaryDownload:(id)a3 error:(id *)a4;
+ (id)processModelDownload:(id)a3 withStorefrontID:(id)a4 error:(id *)a5;
+ (id)removeOldColdstartBinaries:(id)a3;
+ (id)removeOldModels:(id)a3;
+ (id)saveMapFile:(id)a3 ofSize:(int)a4 isCompressed:(BOOL)a5 inDirURL:(id)a6 fromBuffer:(id)a7;
+ (id)unzipAndValidateCompiledModelBundle:(id)a3 atLocation:(id)a4 withVersion:(id)a5 error:(id *)a6;
+ (id)unzipDownloadedModelBundle:(id)a3 atLocation:(id)a4 withVersion:(id)a5 error:(id *)a6;
+ (id)unzipModel:(id)a3 atLocation:(id)a4 withVersion:(id)a5 error:(id *)a6;
+ (id)updateAppTabInfoForWorkflows:(id)a3;
+ (void)cleanupDiskForModelDirectory:(id)a3 withSavedVersionURL:(id)a4;
+ (void)deleteColdstartBinaryFromStorage:(id)a3 forModel:(id)a4 isVersionChange:(BOOL)a5 error:(id *)a6;
+ (void)deleteModelFromStorage:(id)a3 isVersionChange:(BOOL)a4 error:(id *)a5;
+ (void)saveMinimalContentToLogicalMapForModelId:(id)a3 fromMapData:(id)a4;
+ (void)unzipModelFile:(id)a3 copyToDestination:(id)a4 error:(id *)a5;
+ (void)validateDownloadAtLocation:(id)a3 withModelId:(id)a4 andVersion:(id)a5 error:(id *)a6;
- (id)downloadModel:(id)a3 forVersion:(id)a4 usingUrl:(id)a5 withStorefrontId:(id)a6 andSkipDecision:(BOOL *)a7 error:(id *)a8;
- (int)getVersionForModel:(id)a3;
- (void)printJson:(id)a3;
@end

@implementation AMDModelDownloader

- (int)getVersionForModel:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  obj = 0;
  v4 = [AMDModel getModelInfo:location[0] error:&obj];
  objc_storeStrong(&v9, obj);
  v8 = v4;
  if (!v9 && v8)
  {
    v5 = [v8 objectForKey:0x2852A7108];
    v11 = [v5 intValue];
    v6 = 1;
    objc_storeStrong(&v5, 0);
  }

  else
  {
    v11 = -1;
    v6 = 1;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v11;
}

- (id)downloadModel:(id)a3 forVersion:(id)a4 usingUrl:(id)a5 withStorefrontId:(id)a6 andSkipDecision:(BOOL *)a7 error:(id *)a8
{
  v57 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v55 = 0;
  objc_storeStrong(&v55, a4);
  v54 = 0;
  objc_storeStrong(&v54, a5);
  v53 = 0;
  objc_storeStrong(&v53, a6);
  v52 = a7;
  v51 = a8;
  *a7 = 0;
  v21 = [(AMDModelDownloader *)v57 getVersionForModel:location[0]];
  if (v21 == [v55 intValue])
  {
    *v52 = 1;
    v58 = 0;
    v50 = 1;
  }

  else
  {
    v43 = 0;
    v44 = &v43;
    v45 = 838860800;
    v46 = 48;
    v47 = __Block_byref_object_copy__6;
    v48 = __Block_byref_object_dispose__6;
    v49 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    v36 = 0;
    v37 = &v36;
    v38 = 838860800;
    v39 = 48;
    v40 = __Block_byref_object_copy__6;
    v41 = __Block_byref_object_dispose__6;
    v42 = 0;
    v35 = dispatch_group_create();
    v34 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v33 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v34 delegate:0 delegateQueue:?];
    v15 = v33;
    v14 = v54;
    v23 = MEMORY[0x277D85DD0];
    v24 = -1073741824;
    v25 = 0;
    v26 = __95__AMDModelDownloader_downloadModel_forVersion_usingUrl_withStorefrontId_andSkipDecision_error___block_invoke;
    v27 = &unk_278CB6070;
    v31[1] = &v36;
    v28 = MEMORY[0x277D82BE0](location[0]);
    v29 = MEMORY[0x277D82BE0](v55);
    v30 = MEMORY[0x277D82BE0](v53);
    v31[2] = &v43;
    v31[0] = MEMORY[0x277D82BE0](v35);
    v32 = [v15 downloadTaskWithURL:v14 completionHandler:&v23];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"model_download_%@", location[0]];
    [AMDPerf sampleForKey:v22];
    dispatch_group_enter(v35);
    [v32 resume];
    group = v35;
    v8 = dispatch_time(0, 120000000000);
    dispatch_group_wait(group, v8);
    [AMDPerf sampleForKey:v22];
    if (v37[5])
    {
      v12 = v37[5];
      v9 = v12;
      *v51 = v12;
      v58 = 0;
    }

    else
    {
      v58 = MEMORY[0x277D82BE0](v44[5]);
    }

    v50 = 1;
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(v31, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    _Block_object_dispose(&v36, 8);
    objc_storeStrong(&v42, 0);
    _Block_object_dispose(&v43, 8);
    objc_storeStrong(&v49, 0);
  }

  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(location, 0);
  v10 = v58;

  return v10;
}

void __95__AMDModelDownloader_downloadModel_forVersion_usingUrl_withStorefrontId_andSkipDecision_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = 0;
  objc_storeStrong(&v30, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = a1;
  v27 = 0;
  if (v29)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v29);
    v26 = 1;
  }

  else if (location[0])
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"download_callback_%@", *(a1 + 32)];
    [AMDPerf sampleForKey:v25];
    v24 = -[AMDBaseRecoModel initWithId:andVersion:]([AMDBaseRecoModel alloc], "initWithId:andVersion:", *(a1 + 32), [*(a1 + 40) longLongValue]);
    v23 = [AMDModelDownloader parseModelWithId:*(a1 + 32) withStorefrontId:*(a1 + 48) fromArchive:location[0] withBaseRecoModel:v24];
    [AMDPerf sampleForKey:v25];
    memset(__b, 0, sizeof(__b));
    v13 = MEMORY[0x277D82BE0](v23);
    v14 = [v13 countByEnumeratingWithState:__b objects:v33 count:16];
    if (v14)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v14;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(v13);
        }

        v22 = *(__b[1] + 8 * v11);
        v8 = *(*(*(a1 + 72) + 8) + 40);
        v7 = [v23 objectForKey:v22];
        [v8 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v7);
        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [v13 countByEnumeratingWithState:__b objects:v33 count:16];
          if (!v12)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v13);
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v32, *(a1 + 32));
      _os_log_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_DEFAULT, "successfully downloaded and parsed model %@", v32, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [*(*(*(a1 + 72) + 8) + 40) setObject:*(a1 + 32) forKey:@"modelId"];
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    v26 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to download data for model %@", *(a1 + 32)];
    v16 = [AMDError allocError:16 withMessage:?];
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v16;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v15);
    v26 = 1;
  }

  v6 = v26;
  dispatch_group_leave(*(a1 + 56));
  if (v27)
  {
    objc_exception_rethrow();
  }

  v26 = v6;
  if (!v6)
  {
    v26 = 0;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)printJson:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v4 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v5];
  v3 = [v4 dataTaskWithURL:location[0] completionHandler:&__block_literal_global_4];
  [v3 resume];
  while (![v3 state])
  {
    NSLog(&cfstr_Ld.isa, [v3 state]);
  }

  objc_storeStrong(&v3, 0);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __32__AMDModelDownloader_printJson___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  NSLog(&stru_2852A8188.isa, location[0]);
  NSLog(&cfstr_TaskDone.isa);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

+ (id)parseModelWithId:(id)a3 withStorefrontId:(id)a4 fromArchive:(id)a5 withBaseRecoModel:(id)a6
{
  v188 = *MEMORY[0x277D85DE8];
  v170 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v168 = 0;
  objc_storeStrong(&v168, a4);
  v167 = 0;
  objc_storeStrong(&v167, a5);
  v166 = 0;
  objc_storeStrong(&v166, a6);
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v162 = [MEMORY[0x277CCAA00] defaultManager];
  v161 = 0;
  v160 = 0;
  [AMDPerf sampleForKey:@"parseModelStart"];
  v77 = [v167 path];
  v158 = 0;
  v76 = [v162 attributesOfItemAtPath:? error:?];
  objc_storeStrong(&v163, 0);
  v159 = v76;
  MEMORY[0x277D82BD8](v77);
  v74 = [v76 objectForKey:*MEMORY[0x277CCA1C0]];
  v75 = [v74 unsignedLongLongValue];
  MEMORY[0x277D82BD8](v74);
  v157 = v75;
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_0(v187, v167, COERCE__INT64((v157 / 1048600.0)));
    _os_log_debug_impl(&dword_240CB9000, oslog, type, "Reading model archive from %@, %.3fMB", v187, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v73 = objc_alloc(MEMORY[0x277CBEAE0]);
  v71 = [v167 path];
  v72 = [v73 initWithFileAtPath:?];
  v6 = v161;
  v161 = v72;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v71);
  [v161 open];
  v70 = [AMDByteBuffer alloc];
  v154 = [(AMDByteBuffer *)v70 initWithInputStream:v161 withFileSize:v157];
  v152 = v163;
  v69 = [v154 getByteWithError:&v152];
  objc_storeStrong(&v163, v152);
  v153 = v69;
  if (!v163 && v153 == 1)
  {
    v148 = v163;
    v66 = [v166 parseModelInfoFromBuffer:v154 error:&v148];
    objc_storeStrong(&v163, v148);
    if (v66)
    {
      [AMDPerf sampleForKey:@"ParseModelPostModelParse"];
      v146 = v163;
      v65 = [v154 getShortWithError:&v146];
      objc_storeStrong(&v163, v146);
      v147 = v65;
      if (v163)
      {
        v171 = 0;
        v149 = 1;
      }

      else
      {
        v144 = 0;
        v64 = [v154 getDataOfLength:v147 error:&v144];
        objc_storeStrong(&v163, v144);
        v145 = v64;
        if (v163)
        {
          v171 = 0;
          v149 = 1;
        }

        else
        {
          v143 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v142 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
          {
            v63 = objc_alloc(MEMORY[0x277CCACA8]);
            v62 = [v63 initWithData:v145 encoding:4];
            v141 = MEMORY[0x277D82BE0](v62);
            __os_log_helper_16_2_1_8_64(v185, v141);
            _os_log_debug_impl(&dword_240CB9000, v143, v142, "Checksum algorithm: %@", v185, 0xCu);
            MEMORY[0x277D82BD8](v62);
            objc_storeStrong(&v141, 0);
          }

          objc_storeStrong(&v143, 0);
          v139 = v163;
          v61 = [v154 getDataOfLength:32 error:&v139];
          objc_storeStrong(&v163, v139);
          v140 = v61;
          if (!v163 && v140)
          {
            v59 = location[0];
            v60 = [v166 getVersion];
            v138 = +[AMDModelDownloader ensureNewVersionDirURLForModel:withVersion:andCreationTime:](AMDModelDownloader, "ensureNewVersionDirURLForModel:withVersion:andCreationTime:", v59, v60, [v166 getAssetCreationTimestamp]);
            if (v138)
            {
              v135 = [v138 first];
              v7 = [v138 second];
              v8 = v164;
              v164 = v7;
              MEMORY[0x277D82BD8](v8);
              v134 = 0;
              v132 = v163;
              v58 = [v154 getShortWithError:&v132];
              objc_storeStrong(&v163, v132);
              v133 = v58;
              if (v163)
              {
                v165 = 1;
                v171 = 0;
                v149 = 1;
              }

              else
              {
                v131 = 0;
                while (1)
                {
                  v57 = 0;
                  if (v133 != v131)
                  {
                    v57 = 0;
                    if ([v154 hasRemaining])
                    {
                      v57 = v165 ^ 1;
                    }
                  }

                  if ((v57 & 1) == 0)
                  {
                    break;
                  }

                  v129 = v163;
                  v56 = [v154 getShortWithError:&v129];
                  objc_storeStrong(&v163, v129);
                  v130 = v56;
                  if (v163)
                  {
                    v165 = 1;
                    break;
                  }

                  v127 = 0;
                  v55 = [v154 getByteWithError:&v127];
                  objc_storeStrong(&v163, v127);
                  v128 = v55 == 1;
                  if (v163)
                  {
                    v165 = 1;
                    break;
                  }

                  v125 = 0;
                  v54 = [v154 getIntWithError:&v125];
                  objc_storeStrong(&v163, v125);
                  v126 = v54;
                  if (v163)
                  {
                    v165 = 1;
                    break;
                  }

                  switch(v130)
                  {
                    case 1:
                      v53 = [v164 URLByAppendingPathComponent:location[0]];
                      v124 = [v53 URLByAppendingPathExtension:@"mlmodel"];
                      MEMORY[0x277D82BD8](v53);
                      v123 = v163;
                      [v154 copyDataOfLength:v126 toFile:v124 isCompressed:v128 error:&v123];
                      objc_storeStrong(&v163, v123);
                      if (v163)
                      {
                        v165 = 1;
                        v149 = 6;
                      }

                      else
                      {
                        v122 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                        v121 = OS_LOG_TYPE_DEBUG;
                        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
                        {
                          v51 = v122;
                          v52 = v121;
                          __os_log_helper_16_2_1_8_64(v183, v124);
                          _os_log_debug_impl(&dword_240CB9000, v51, v52, "Saved the model to %@", v183, 0xCu);
                        }

                        objc_storeStrong(&v122, 0);
                        [AMDPerf sampleForKey:@"ParseModelPostModelSave"];
                        v119 = v163;
                        v50 = [MEMORY[0x277CBFF20] compileModelAtURL:v124 error:&v119];
                        objc_storeStrong(&v163, v119);
                        v120 = v50;
                        if (v50 && !v163)
                        {
                          v116 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                          v115 = OS_LOG_TYPE_DEBUG;
                          if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
                          {
                            v46 = v116;
                            v47 = v115;
                            __os_log_helper_16_2_2_8_64_8_64(v181, location[0], v120);
                            _os_log_debug_impl(&dword_240CB9000, v46, v47, "Compiled model '%@', destinationL %@", v181, 0x16u);
                          }

                          objc_storeStrong(&v116, 0);
                          [AMDPerf sampleForKey:@"parseModelPostModelCompile"];
                          v114 = v163;
                          [v162 removeItemAtURL:v124 error:&v114];
                          objc_storeStrong(&v163, v114);
                          v45 = v164;
                          v44 = [v120 lastPathComponent];
                          v113 = [v45 URLByAppendingPathComponent:?];
                          MEMORY[0x277D82BD8](v44);
                          v112 = v163;
                          v43 = [v162 copyItemAtURL:v120 toURL:v113 error:&v112];
                          objc_storeStrong(&v163, v112);
                          if ((v43 & 1) != 0 && !v163)
                          {
                            v9 = [v113 lastPathComponent];
                            v10 = v134;
                            v134 = v9;
                            MEMORY[0x277D82BD8](v10);
                            v109 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                            v108 = OS_LOG_TYPE_DEBUG;
                            if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
                            {
                              v36 = v109;
                              v37 = v108;
                              __os_log_helper_16_2_2_8_64_8_64(v179, v120, v113);
                              _os_log_debug_impl(&dword_240CB9000, v36, v37, "Copied the compiled model from %@ to %@", v179, 0x16u);
                            }

                            objc_storeStrong(&v109, 0);
                            v107 = v163;
                            [v162 removeItemAtURL:v120 error:&v107];
                            objc_storeStrong(&v163, v107);
                            ++v131;
                            v149 = 0;
                          }

                          else
                          {
                            v111 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                            v110 = OS_LOG_TYPE_ERROR;
                            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                            {
                              v39 = v111;
                              v40 = v110;
                              v41 = v120;
                              v42 = v113;
                              v38 = [v163 localizedDescription];
                              __os_log_helper_16_2_3_8_64_8_64_8_64(v180, v41, v42, v38);
                              _os_log_error_impl(&dword_240CB9000, v39, v40, "Error copying compiled model from %@ to %@: %@", v180, 0x20u);
                              MEMORY[0x277D82BD8](v38);
                            }

                            objc_storeStrong(&v111, 0);
                            v165 = 1;
                            v149 = 6;
                          }

                          objc_storeStrong(&v113, 0);
                        }

                        else
                        {
                          v118 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                          v117 = OS_LOG_TYPE_ERROR;
                          if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                          {
                            v48 = v118;
                            v49 = v117;
                            __os_log_helper_16_2_2_8_64_8_64(v182, v124, v163);
                            _os_log_error_impl(&dword_240CB9000, v48, v49, "Could not compile the model %@, %@", v182, 0x16u);
                          }

                          objc_storeStrong(&v118, 0);
                          v165 = 1;
                          v149 = 6;
                        }

                        objc_storeStrong(&v120, 0);
                      }

                      objc_storeStrong(&v124, 0);
                      break;
                    case 2:
                      v25 = [v164 URLByAppendingPathComponent:@"model_metadata"];
                      v98 = [v25 URLByAppendingPathExtension:@"json"];
                      MEMORY[0x277D82BD8](v25);
                      v97 = v163;
                      [v154 copyDataOfLength:v126 toFile:v98 isCompressed:v128 error:&v97];
                      objc_storeStrong(&v163, v97);
                      if (v163)
                      {
                        v96 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                        v95 = OS_LOG_TYPE_ERROR;
                        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                        {
                          v23 = v96;
                          v24 = v95;
                          v22 = [v98 path];
                          v21 = [v163 localizedDescription];
                          __os_log_helper_16_2_2_8_64_8_64(v176, v22, v21);
                          _os_log_error_impl(&dword_240CB9000, v23, v24, "Error  loading metadata from %@: %@", v176, 0x16u);
                          MEMORY[0x277D82BD8](v21);
                          MEMORY[0x277D82BD8](v22);
                        }

                        objc_storeStrong(&v96, 0);
                        v165 = 1;
                        v149 = 6;
                      }

                      else
                      {
                        v94 = 0;
                        v93 = 0;
                        [v166 loadModelMetadataFromDir:v164 error:&v93];
                        objc_storeStrong(&v94, v93);
                        if (v94)
                        {
                          v165 = 1;
                          v149 = 6;
                        }

                        else
                        {
                          ++v131;
                          v92 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                          v91 = OS_LOG_TYPE_DEBUG;
                          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
                          {
                            v19 = v92;
                            v20 = v91;
                            __os_log_helper_16_2_1_8_64(v175, v98);
                            _os_log_debug_impl(&dword_240CB9000, v19, v20, "saved the model metadata to %@", v175, 0xCu);
                          }

                          objc_storeStrong(&v92, 0);
                          v149 = 0;
                        }

                        objc_storeStrong(&v94, 0);
                      }

                      objc_storeStrong(&v98, 0);
                      break;
                    case 3:
                      v35 = [v164 URLByAppendingPathComponent:@"model_assets"];
                      v106 = [v35 URLByAppendingPathExtension:@"json"];
                      MEMORY[0x277D82BD8](v35);
                      v105 = v163;
                      [v154 copyDataOfLength:v126 toFile:v106 isCompressed:v128 error:&v105];
                      objc_storeStrong(&v163, v105);
                      if (v163)
                      {
                        v165 = 1;
                        v149 = 6;
                      }

                      else
                      {
                        [AMDPerf sampleForKey:@"parseModelPostModelAssetsSaved"];
                        v34 = [AMDModelAssets alloc];
                        v32 = [v164 path];
                        v103 = v163;
                        v33 = [AMDModelAssets initFromDir:v34 andMetadata:"initFromDir:andMetadata:useBinaryInputMap:useBinaryOutputMap:withModelId:isInference:error:" useBinaryInputMap:&v103 useBinaryOutputMap:? withModelId:? isInference:? error:?];
                        objc_storeStrong(&v163, v103);
                        v104 = v33;
                        MEMORY[0x277D82BD8](v32);
                        if (v163)
                        {
                          v102 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                          v101 = OS_LOG_TYPE_ERROR;
                          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                          {
                            v30 = v102;
                            v31 = v101;
                            v29 = [v164 path];
                            v28 = [v163 localizedDescription];
                            __os_log_helper_16_2_2_8_64_8_64(v178, v29, v28);
                            _os_log_error_impl(&dword_240CB9000, v30, v31, "Error  loading assets from %@: %@", v178, 0x16u);
                            MEMORY[0x277D82BD8](v28);
                            MEMORY[0x277D82BD8](v29);
                          }

                          objc_storeStrong(&v102, 0);
                          v165 = 1;
                          v149 = 6;
                        }

                        else
                        {
                          ++v131;
                          v100 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                          v99 = OS_LOG_TYPE_DEBUG;
                          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
                          {
                            v26 = v100;
                            v27 = v99;
                            __os_log_helper_16_2_2_8_64_4_0(v177, v106, [v104 isValid]);
                            _os_log_debug_impl(&dword_240CB9000, v26, v27, "Saved the model assets to %@, isValid: %d", v177, 0x12u);
                          }

                          objc_storeStrong(&v100, 0);
                          [AMDPerf sampleForKey:@"parseModelPostModelAssetsSaveVerified"];
                          v149 = 0;
                        }

                        objc_storeStrong(&v104, 0);
                      }

                      objc_storeStrong(&v106, 0);
                      break;
                    case 4:
                      [AMDPerf startMonitoringEvent:@"SaveCToLMap"];
                      v90 = [v170 saveMapFile:0x2852AD2E8 ofSize:v126 isCompressed:v128 inDirURL:v164 fromBuffer:v154];
                      if (v90)
                      {
                        [v170 saveMinimalContentToLogicalMapForModelId:location[0] fromMapData:v90];
                        ++v131;
                        [AMDPerf endMonitoringEvent:@"SaveCToLMap"];
                      }

                      else
                      {
                        v165 = 1;
                      }

                      objc_storeStrong(&v90, 0);
                      break;
                    case 5:
                      v18 = [v170 saveMapFile:0x2852AD308 ofSize:v126 isCompressed:v128 inDirURL:v164 fromBuffer:v154];
                      MEMORY[0x277D82BD8](v18);
                      if (v18)
                      {
                        ++v131;
                      }

                      else
                      {
                        v165 = 1;
                      }

                      break;
                    default:
                      v89 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                      v88 = OS_LOG_TYPE_ERROR;
                      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                      {
                        v17 = v89;
                        __os_log_helper_16_0_1_4_0(v174, v130);
                        _os_log_error_impl(&dword_240CB9000, v17, v88, "unknown asset type %d", v174, 8u);
                      }

                      objc_storeStrong(&v89, 0);
                      v165 = 1;
                      break;
                  }
                }

                if ((v165 & 1) == 0 && v131 == v133)
                {
                  v85 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  [v85 setValue:v135 forKey:@"modelSubdirURL"];
                  [v85 setValue:v164 forKey:@"newVersionDirURL"];
                  [v85 setValue:v134 forKey:@"compiledModelDir"];
                  v16 = [v166 modelMetadata];
                  v15 = [v16 getModelUid];
                  [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
                  MEMORY[0x277D82BD8](v15);
                  MEMORY[0x277D82BD8](v16);
                  [v170 cleanupDiskForModelDirectory:v135 withSavedVersionURL:v164];
                  v171 = MEMORY[0x277D82BE0](v85);
                  v149 = 1;
                  objc_storeStrong(&v85, 0);
                }

                else
                {
                  v87 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                  v86 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                  {
                    __os_log_helper_16_0_2_4_0_4_0(v173, v133, v131);
                    _os_log_error_impl(&dword_240CB9000, v87, v86, "Expecting to save %d assets, found %d", v173, 0xEu);
                  }

                  objc_storeStrong(&v87, 0);
                  v165 = 1;
                  v171 = 0;
                  v149 = 1;
                }
              }

              objc_storeStrong(&v134, 0);
              objc_storeStrong(&v135, 0);
            }

            else
            {
              v137 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v136 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_2_2_8_64_8_0(v184, location[0], [v166 getVersion]);
                _os_log_error_impl(&dword_240CB9000, v137, v136, "Could not create new subdir for model %@, version %llu", v184, 0x16u);
              }

              objc_storeStrong(&v137, 0);
              v171 = 0;
              v149 = 1;
            }

            objc_storeStrong(&v138, 0);
          }

          else
          {
            v171 = 0;
            v149 = 1;
          }

          objc_storeStrong(&v140, 0);
        }

        objc_storeStrong(&v145, 0);
      }
    }

    else
    {
      v171 = 0;
      v149 = 1;
    }
  }

  else
  {
    v151 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v150 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
    {
      v68 = v153;
      v67 = [v163 localizedDescription];
      __os_log_helper_16_2_3_4_0_4_0_8_64(v186, v68, 1, v67);
      _os_log_error_impl(&dword_240CB9000, v151, v150, "Archive format version (%d) != ARCHIVE_FORMAT_VERSION (%d), error: %@", v186, 0x18u);
      MEMORY[0x277D82BD8](v67);
    }

    objc_storeStrong(&v151, 0);
    v171 = 0;
    v149 = 1;
  }

  objc_storeStrong(&v154, 0);
  objc_storeStrong(&v159, 0);
  v14 = v149;
  if (v163)
  {
    v84 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v83 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      v13 = [v163 localizedDescription];
      v82 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_1_8_64(v172, v82);
      _os_log_error_impl(&dword_240CB9000, v84, v83, "%@", v172, 0xCu);
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v82, 0);
    }

    objc_storeStrong(&v84, 0);
  }

  if (v161)
  {
    [v161 close];
  }

  if ((v165 & 1) != 0 && v164)
  {
    v81 = v163;
    [v162 removeItemAtURL:v164 error:&v81];
    objc_storeStrong(&v163, v81);
  }

  if (v160)
  {
    objc_exception_rethrow();
  }

  v149 = v14;
  if (v14 == 3)
  {
    __break(1u);
    JUMPOUT(0x240D24C8CLL);
  }

  objc_storeStrong(&v161, 0);
  objc_storeStrong(&v162, 0);
  objc_storeStrong(&v163, 0);
  objc_storeStrong(&v164, 0);
  objc_storeStrong(&v166, 0);
  objc_storeStrong(&v167, 0);
  objc_storeStrong(&v168, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v11 = v171;

  return v11;
}

+ (id)saveMapFile:(id)a3 ofSize:(int)a4 isCompressed:(BOOL)a5 inDirURL:(id)a6 fromBuffer:(id)a7
{
  v55 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v48 = a4;
  v47 = a5;
  v46 = 0;
  objc_storeStrong(&v46, a6);
  v45 = 0;
  objc_storeStrong(&v45, a7);
  v26 = [v46 URLByAppendingPathComponent:location[0]];
  v44 = [v26 URLByAppendingPathExtension:@"bin"];
  MEMORY[0x277D82BD8](v26);
  v43 = 0;
  v42 = 0;
  [v45 copyDataOfLength:v48 toFile:v44 isCompressed:v47 error:&v42];
  objc_storeStrong(&v43, v42);
  if (v43)
  {
    v19 = MEMORY[0x277CCACA8];
    v21 = [v44 path];
    v20 = [v43 localizedDescription];
    v41 = [v19 stringWithFormat:@"Error saving map file %@: %@", v21, v20];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    v40 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v39 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v54, v41);
      _os_log_error_impl(&dword_240CB9000, v40, v39, "%@", v54, 0xCu);
    }

    objc_storeStrong(&v40, 0);
    [AMDFrameworkMetrics log:v41 withKey:@"saveMapFileFail" atVerbosity:0];
    v50 = 0;
    v38 = 1;
    objc_storeStrong(&v41, 0);
  }

  else
  {
    v18 = [v46 path];
    v36 = v43;
    v17 = [AMDModelAssets loadMapFromDir:"loadMapFromDir:andFile:error:" andFile:? error:?];
    objc_storeStrong(&v43, v36);
    v37 = v17;
    MEMORY[0x277D82BD8](v18);
    if (v43)
    {
      v14 = MEMORY[0x277CCACA8];
      v16 = [v44 path];
      v15 = [v43 localizedDescription];
      v35 = [v14 stringWithFormat:@"Error reading back map data from file %@: %@", v16, v15];
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      v34 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v33 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v53, v35);
        _os_log_error_impl(&dword_240CB9000, v34, v33, "%@", v53, 0xCu);
      }

      objc_storeStrong(&v34, 0);
      [AMDFrameworkMetrics log:v35 withKey:@"verifyMapFileFail" atVerbosity:0];
      objc_storeStrong(&v43, 0);
      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v32 = v43;
      v13 = [v12 removeItemAtURL:v44 error:&v32];
      objc_storeStrong(&v43, v32);
      MEMORY[0x277D82BD8](v12);
      if ((v13 & 1) == 0)
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v30 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v11 = [v44 path];
          v28 = 0;
          if (v43)
          {
            v29 = [v43 localizedDescription];
            v28 = 1;
            v10 = v29;
          }

          else
          {
            v10 = @"dont know why";
          }

          __os_log_helper_16_2_2_8_64_8_64(v52, v11, v10);
          _os_log_error_impl(&dword_240CB9000, oslog, v30, "Error deleting file (for cleamup) %@: %@", v52, 0x16u);
          if (v28)
          {
            MEMORY[0x277D82BD8](v29);
          }

          MEMORY[0x277D82BD8](v11);
        }

        objc_storeStrong(&oslog, 0);
      }

      v50 = 0;
      v38 = 1;
      objc_storeStrong(&v35, 0);
    }

    else
    {
      if (v37)
      {
        v27 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v9 = [v44 path];
          __os_log_helper_16_2_1_8_64(v51, v9);
          _os_log_debug_impl(&dword_240CB9000, v27, OS_LOG_TYPE_DEBUG, "Saved the map file %@", v51, 0xCu);
          MEMORY[0x277D82BD8](v9);
        }

        objc_storeStrong(&v27, 0);
      }

      v50 = MEMORY[0x277D82BE0](v37);
      v38 = 1;
    }

    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v50;

  return v7;
}

+ (id)ensureNewVersionDirURLForModel:(id)a3 withVersion:(unint64_t)a4 andCreationTime:(int64_t)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = a4;
  v22 = a5;
  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v21 URLsForDirectory:14 inDomains:1];
  v20 = [v12 lastObject];
  MEMORY[0x277D82BD8](v12);
  v19 = [v20 URLByAppendingPathComponent:@"reco"];
  v18 = [v19 URLByAppendingPathComponent:@"models"];
  v17 = [v18 URLByAppendingPathComponent:location[0]];
  if ([AMDMiscHelpers ensureDir:v17 removeIfExists:0])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v23];
    v15 = [v7 stringValue];
    MEMORY[0x277D82BD8](v7);
    v8 = [MEMORY[0x277CCABB0] numberWithLong:v22];
    v14 = [v8 stringValue];
    MEMORY[0x277D82BD8](v8);
    v9 = [v17 URLByAppendingPathComponent:v15];
    v13 = [v9 URLByAppendingPathComponent:v14];
    MEMORY[0x277D82BD8](v9);
    if ([AMDMiscHelpers ensureDir:v13 removeIfExists:1])
    {
      v25 = [[AMDPair alloc] initWith:v17 and:v13];
    }

    else
    {
      v25 = 0;
    }

    v16 = 1;
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v25 = 0;
    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  v5 = v25;

  return v5;
}

+ (void)cleanupDiskForModelDirectory:(id)a3 withSavedVersionURL:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v33 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [v34 URLByDeletingLastPathComponent];
  v32 = [v16 lastPathComponent];
  MEMORY[0x277D82BD8](v16);
  v31[1] = 1;
  v18 = v33;
  v17 = location[0];
  v39[0] = *MEMORY[0x277CBE868];
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:?];
  v31[0] = [v18 enumeratorAtURL:v17 includingPropertiesForKeys:? options:? errorHandler:?];
  MEMORY[0x277D82BD8](v19);
  memset(__b, 0, sizeof(__b));
  v20 = MEMORY[0x277D82BE0](v31[0]);
  v21 = [v20 countByEnumeratingWithState:__b objects:v38 count:16];
  if (v21)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v21;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(v20);
      }

      v30 = *(__b[1] + 8 * v13);
      v28 = 0;
      v27 = [v30 lastPathComponent];
      if ([v32 isEqualToString:v27])
      {
        v26 = 3;
      }

      else
      {
        v25 = v28;
        v10 = [v33 removeItemAtURL:v30 error:&v25];
        objc_storeStrong(&v28, v25);
        if (v10)
        {
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          type = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            log = oslog;
            v8 = type;
            v9 = [v30 lastPathComponent];
            __os_log_helper_16_2_2_8_64_8_64(v37, v9, v30);
            _os_log_impl(&dword_240CB9000, log, v8, "Deleted directory for version: %@ at %@", v37, 0x16u);
            MEMORY[0x277D82BD8](v9);
          }

          objc_storeStrong(&oslog, 0);
        }

        else
        {
          v22 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v4 = v22;
            v6 = [v30 lastPathComponent];
            v5 = [v28 localizedDescription];
            __os_log_helper_16_2_2_8_64_8_64(v36, v6, v5);
            _os_log_error_impl(&dword_240CB9000, v4, OS_LOG_TYPE_ERROR, "Error deleting directory for version: %@: %@", v36, 0x16u);
            MEMORY[0x277D82BD8](v5);
            MEMORY[0x277D82BD8](v6);
          }

          objc_storeStrong(&v22, 0);
        }

        v26 = 0;
      }

      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v28, 0);
      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [v20 countByEnumeratingWithState:__b objects:v38 count:16];
        if (!v14)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v20);
  objc_storeStrong(v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)processColdstartBinaryDownload:(id)a3 error:(id *)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v54 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v52 = a4;
  v51 = [location[0] objectForKey:@"status"];
  v50 = [location[0] objectForKey:@"modelId"];
  if (v51)
  {
    if (v50)
    {
      if ([v51 isEqualToString:@"Failure"])
      {
        v42 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v41 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v59, v50);
          _os_log_error_impl(&dword_240CB9000, v42, v41, "Coldstart binary download failed for modelId: %@", v59, 0xCu);
        }

        objc_storeStrong(&v42, 0);
        v18 = [AMDError allocError:15 withMessage:@"Coldstart binary download failed in AMS"];
        v6 = v18;
        *v52 = v18;
        v55 = 0;
        v46 = 1;
      }

      else
      {
        v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v39 = [location[0] objectForKey:@"modelLocation"];
        v38 = [location[0] objectForKey:@"version"];
        if (v39)
        {
          if (v38)
          {
            v31 = [AMDColdstartOperation saveColdStartBinaryforModel:v50 atLocation:v39 withVersion:v38 error:v52];
            if (*v52)
            {
              v55 = 0;
              v46 = 1;
            }

            else
            {
              v30 = 0;
              v28 = 0;
              v15 = [AMDColdstartURL getColdstartURLForModel:v50 error:&v28];
              objc_storeStrong(&v30, v28);
              v29 = v15;
              [AMDColdstartURL saveColdstartURL:v31 error:v52];
              if (*v52)
              {
                v27 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v26 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v12 = v27;
                  v13 = v26;
                  v11 = v50;
                  v14 = [*v52 localizedDescription];
                  v25 = MEMORY[0x277D82BE0](v14);
                  __os_log_helper_16_2_2_8_64_8_64(v56, v11, v25);
                  _os_log_error_impl(&dword_240CB9000, v12, v13, "Save to the Coldstart binary table failed for modelId: %@ with error: %@", v56, 0x16u);
                  MEMORY[0x277D82BD8](v14);
                  objc_storeStrong(&v25, 0);
                }

                objc_storeStrong(&v27, 0);
                v55 = 0;
                v46 = 1;
              }

              else
              {
                if (!v30 && v29)
                {
                  v24 = v30;
                  [v54 deleteColdstartBinaryFromStorage:v29 forModel:v50 isVersionChange:1 error:&v24];
                  objc_storeStrong(&v30, v24);
                  if (v30)
                  {
                    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deletion of older version coldstart file failed for model: %@", v50];
                    [v40 setObject:v23 forKey:@"OlderVersionDeletionError"];
                    objc_storeStrong(&v23, 0);
                  }

                  else
                  {
                    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Successfully deleted older version coldstart file for model: %@", v50];
                    [v40 setObject:v22 forKey:@"OlderVersionDeletionSummary"];
                    objc_storeStrong(&v22, 0);
                  }
                }

                [v40 setObject:v50 forKey:@"savedColdstartModelId"];
                [v40 setObject:v38 forKey:@"savedColdstartModelVersion"];
                [AMDFrameworkMetrics log:v40 withKey:@"coldstartBinaryDownloadSummary" atVerbosity:0];
                v55 = MEMORY[0x277D82BE0](v40);
                v46 = 1;
              }

              objc_storeStrong(&v29, 0);
              objc_storeStrong(&v30, 0);
            }

            objc_storeStrong(&v31, 0);
          }

          else
          {
            v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"No binary version provided in the payload for model: %@", v50];
            v33 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v32 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_1_8_64(v57, v34);
              _os_log_error_impl(&dword_240CB9000, v33, v32, "%@", v57, 0xCu);
            }

            objc_storeStrong(&v33, 0);
            v16 = [AMDError allocError:15 withMessage:v34];
            v8 = v16;
            *v52 = v16;
            v55 = 0;
            v46 = 1;
            objc_storeStrong(&v34, 0);
          }
        }

        else
        {
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"No binary location provided in the payload for model: %@", v50];
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v35 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v58, v37);
            _os_log_error_impl(&dword_240CB9000, oslog, v35, "%@", v58, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          v17 = [AMDError allocError:15 withMessage:v37];
          v7 = v17;
          *v52 = v17;
          v55 = 0;
          v46 = 1;
          objc_storeStrong(&v37, 0);
        }

        objc_storeStrong(&v38, 0);
        objc_storeStrong(&v39, 0);
        objc_storeStrong(&v40, 0);
      }
    }

    else
    {
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid input to process coldstart binary download handler: Missing modelId"];
      v44 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v43 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v60, v45);
        _os_log_error_impl(&dword_240CB9000, v44, v43, "%@", v60, 0xCu);
      }

      objc_storeStrong(&v44, 0);
      v19 = [AMDError allocError:15 withMessage:v45];
      v5 = v19;
      *v52 = v19;
      v55 = 0;
      v46 = 1;
      objc_storeStrong(&v45, 0);
    }
  }

  else
  {
    v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Input to process coldstart binary download handler: Missing status"];
    v48 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v47 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v61, v49);
      _os_log_error_impl(&dword_240CB9000, v48, v47, "%@", v61, 0xCu);
    }

    objc_storeStrong(&v48, 0);
    v20 = [AMDError allocError:15 withMessage:v49];
    v4 = v20;
    *v52 = v20;
    v55 = 0;
    v46 = 1;
    objc_storeStrong(&v49, 0);
  }

  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v55;

  return v9;
}

+ (id)updateAppTabInfoForWorkflows:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v24 = [obj countByEnumeratingWithState:__b objects:v51 count:16];
  if (v24)
  {
    v20 = *__b[2];
    v21 = 0;
    v22 = v24;
    while (1)
    {
      v19 = v21;
      if (*__b[2] != v20)
      {
        objc_enumerationMutation(obj);
      }

      v44 = *(__b[1] + 8 * v21);
      v42 = 0;
      v41 = [v44 objectForKey:0x2852AAB28];
      v39 = v42;
      v18 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v41 options:4 error:&v39];
      objc_storeStrong(&v42, v39);
      v40 = v18;
      if (v42)
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = [v44 objectForKey:0x2852A8FC8];
        v38 = [v16 stringWithFormat:@"Workflow could not be parsed for usecase: %@", v17];
        MEMORY[0x277D82BD8](v17);
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v15 = type;
          __os_log_helper_16_2_1_8_64(v50, v38);
          _os_log_error_impl(&dword_240CB9000, log, v15, "%@", v50, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        [AMDFrameworkMetrics log:v38 withKey:@"TabInfoUpdateError" atVerbosity:0];
        v35 = 3;
        objc_storeStrong(&v38, 0);
      }

      else
      {
        v34 = [v40 objectForKey:@"tab_ids"];
        v33 = [v40 objectForKey:@"use_case_id"];
        if (v34)
        {
          v29 = v42;
          v3 = [AMDAppTabInfo refreshTabsForUseCase:v33 tabs:v34 error:&v29];
          objc_storeStrong(&v42, v29);
          if (v42)
          {
            v9 = MEMORY[0x277CCACA8];
            v11 = [v44 objectForKey:0x2852A8FC8];
            v10 = [v42 localizedDescription];
            v28 = [v9 stringWithFormat:@"Tab Id update failed for usecase: %@ with error: %@", v11, v10];
            MEMORY[0x277D82BD8](v10);
            MEMORY[0x277D82BD8](v11);
            v27 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v26 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v7 = v27;
              v8 = v26;
              __os_log_helper_16_2_1_8_64(v48, v28);
              _os_log_error_impl(&dword_240CB9000, v7, v8, "%@", v48, 0xCu);
            }

            objc_storeStrong(&v27, 0);
            [AMDFrameworkMetrics log:v28 withKey:@"TabInfoUpdateError" atVerbosity:0];
            v35 = 3;
            objc_storeStrong(&v28, 0);
          }

          else
          {
            [v45 setObject:v34 forKey:v33];
            v25 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v6 = v25;
              __os_log_helper_16_2_2_8_64_8_64(v47, v33, v34);
              _os_log_impl(&dword_240CB9000, v6, OS_LOG_TYPE_INFO, "Usecase:%@ mapped to tabs: %@", v47, 0x16u);
            }

            objc_storeStrong(&v25, 0);
            v35 = 0;
          }
        }

        else
        {
          v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"TabIds not defined for usecase: %@", v33];
          v31 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v30 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v12 = v31;
            v13 = v30;
            __os_log_helper_16_2_1_8_64(v49, v32);
            _os_log_error_impl(&dword_240CB9000, v12, v13, "%@", v49, 0xCu);
          }

          objc_storeStrong(&v31, 0);
          [AMDFrameworkMetrics log:v32 withKey:@"NilTabIdError" atVerbosity:0];
          v35 = 3;
          objc_storeStrong(&v32, 0);
        }

        objc_storeStrong(&v33, 0);
        objc_storeStrong(&v34, 0);
      }

      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v42, 0);
      ++v21;
      if (v19 + 1 >= v22)
      {
        v21 = 0;
        v22 = [obj countByEnumeratingWithState:__b objects:v51 count:16];
        if (!v22)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v5 = MEMORY[0x277D82BE0](v45);
  v35 = 1;
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)performModelCleanup
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = a1;
  v27[1] = a2;
  v27[0] = +[AMDModel getCurrentModelInfoByModelId];
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v27[0]);
  v14 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
  if (v14)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(__b[1] + 8 * v11);
      v23 = 0;
      v21 = 0;
      v8 = [AMDWorkflow getWorkflowsForModelId:v25 error:&v21];
      objc_storeStrong(&v23, v21);
      v22 = v8;
      if (v23)
      {
        [AMDFrameworkMetrics log:@"Workflow fetch failed during model cleanup" withKey:@"WorkflowFetchError" atVerbosity:0];
        v20 = 3;
      }

      else
      {
        if (v22 && [v22 count])
        {
          goto LABEL_18;
        }

        v18 = v23;
        v7 = [AMDWorkflowInFlight getAllWorkflowsWithModelId:v25 error:&v18];
        objc_storeStrong(&v23, v18);
        v19 = v7;
        if (v23)
        {
          [AMDFrameworkMetrics log:@"Inflight workflow fetch failed during model cleanup" withKey:@"InfightWorkflowFetchError" atVerbosity:0];
          v20 = 3;
        }

        else
        {
          if (!v19 || ![v19 count])
          {
            v5 = v26;
            v6 = [v27[0] objectForKey:v25];
            [v5 addObject:?];
            MEMORY[0x277D82BD8](v6);
            oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            type = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              log = oslog;
              __os_log_helper_16_2_1_8_64(v29, v25);
              _os_log_debug_impl(&dword_240CB9000, log, type, "Model to delete :%@", v29, 0xCu);
            }

            objc_storeStrong(&oslog, 0);
          }

          v20 = 0;
        }

        objc_storeStrong(&v19, 0);
        if (!v20)
        {
LABEL_18:
          v20 = 0;
        }
      }

      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v23, 0);
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v15 = [v28 removeOldModels:v26];
  v3 = MEMORY[0x277D82BE0](v15);
  v20 = 1;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(v27, 0);
  *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)processModelDownload:(id)a3 withStorefrontID:(id)a4 error:(id *)a5
{
  v155 = *MEMORY[0x277D85DE8];
  v138 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v136 = 0;
  objc_storeStrong(&v136, a4);
  v135 = a5;
  v134 = [location[0] objectForKey:@"status"];
  v133 = [location[0] objectForKey:@"modelId"];
  if (!v134)
  {
    v132 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Input to Process Model Download Handler: Missing status"];
    v131 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v154, v132);
      _os_log_error_impl(&dword_240CB9000, v131, type, "%@", v154, 0xCu);
    }

    objc_storeStrong(&v131, 0);
    v58 = [AMDError allocError:15 withMessage:v132];
    v5 = v58;
    *v135 = v58;
    v139 = 0;
    v129 = 1;
    objc_storeStrong(&v132, 0);
    goto LABEL_91;
  }

  if (!v133)
  {
    v128 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Input to Process Model Download Handler: Missing modelId"];
    v127 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v126 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v153, v128);
      _os_log_error_impl(&dword_240CB9000, v127, v126, "%@", v153, 0xCu);
    }

    objc_storeStrong(&v127, 0);
    v57 = [AMDError allocError:15 withMessage:v128];
    v6 = v57;
    *v135 = v57;
    v139 = 0;
    v129 = 1;
    objc_storeStrong(&v128, 0);
    goto LABEL_91;
  }

  if (([v134 isEqualToString:@"Failure"] & 1) == 0)
  {
    v122 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v121 = [location[0] objectForKey:@"domain"];
    if (!v121)
    {
      v120 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v119 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
      {
        v54 = v120;
        v55 = v119;
        __os_log_helper_16_0_0(v118);
        _os_log_error_impl(&dword_240CB9000, v54, v55, "No domain provided in modelDownloadPayload", v118, 2u);
      }

      objc_storeStrong(&v120, 0);
      v53 = [AMDError allocError:15 withMessage:@"No domain provided in modelDownloadPayload"];
      v8 = v53;
      *v135 = v53;
      v139 = 0;
      v129 = 1;
      goto LABEL_90;
    }

    v117 = [AMDDomains getCodeForDomain:v121];
    v116 = [AMDWorkflowInFlight getAllWorkflowsForDomain:v117 withModelId:v133 error:v135];
    if (*v135)
    {
      v115 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v114 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        v50 = v115;
        v51 = v114;
        v52 = [*v135 localizedDescription];
        v113 = MEMORY[0x277D82BE0](v52);
        __os_log_helper_16_2_1_8_64(v151, v113);
        _os_log_error_impl(&dword_240CB9000, v50, v51, "Error querying In-Flight Workflow table: %@", v151, 0xCu);
        MEMORY[0x277D82BD8](v52);
        objc_storeStrong(&v113, 0);
      }

      objc_storeStrong(&v115, 0);
      v139 = 0;
      v129 = 1;
      goto LABEL_89;
    }

    if (!v116 || ![v116 count])
    {
      v112 = [MEMORY[0x277CCACA8] stringWithFormat:@"No In-Flight workflows found for modelId: %@", v133];
      v111 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v110 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v150, v112);
        _os_log_error_impl(&dword_240CB9000, v111, v110, "%@", v150, 0xCu);
      }

      objc_storeStrong(&v111, 0);
      [AMDFrameworkMetrics log:v112 withKey:@"modelDownloadError" atVerbosity:0];
      v139 = 0;
      v129 = 1;
      objc_storeStrong(&v112, 0);
      goto LABEL_89;
    }

    v109 = [v116 firstObject];
    v48 = MEMORY[0x277CCAAA0];
    v49 = [v109 objectForKey:0x2852AAB28];
    v108 = [v48 JSONObjectWithData:? options:? error:?];
    MEMORY[0x277D82BD8](v49);
    if (*v135)
    {
      v107 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v106 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        v45 = v107;
        v46 = v106;
        v47 = [*v135 localizedDescription];
        v105 = MEMORY[0x277D82BE0](v47);
        __os_log_helper_16_2_1_8_64(v149, v105);
        _os_log_error_impl(&dword_240CB9000, v45, v46, "Inflight workflow serialization failed: %@", v149, 0xCu);
        MEMORY[0x277D82BD8](v47);
        objc_storeStrong(&v105, 0);
      }

      objc_storeStrong(&v107, 0);
      v139 = 0;
      v129 = 1;
      goto LABEL_88;
    }

    v104 = [v108 objectForKey:@"model_format"];
    v103 = [location[0] objectForKey:@"modelLocation"];
    v102 = [location[0] objectForKey:@"version"];
    v101 = [location[0] objectForKey:@"type"];
    if (!v103)
    {
      v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"No model location provided in the payload for model: %@", v133];
      v99 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v98 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v148, v100);
        _os_log_error_impl(&dword_240CB9000, v99, v98, "%@", v148, 0xCu);
      }

      objc_storeStrong(&v99, 0);
      v44 = [AMDError allocError:15 withMessage:v100];
      v9 = v44;
      *v135 = v44;
      v139 = 0;
      v129 = 1;
      objc_storeStrong(&v100, 0);
      goto LABEL_87;
    }

    if (!v102)
    {
      v97 = [MEMORY[0x277CCACA8] stringWithFormat:@"No model version provided in the payload for model: %@", v133];
      v96 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v95 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v147, v97);
        _os_log_error_impl(&dword_240CB9000, v96, v95, "%@", v147, 0xCu);
      }

      objc_storeStrong(&v96, 0);
      v43 = [AMDError allocError:15 withMessage:v97];
      v10 = v43;
      *v135 = v43;
      v139 = 0;
      v129 = 1;
      objc_storeStrong(&v97, 0);
      goto LABEL_87;
    }

    v94 = 0;
    if ([v104 isEqualToString:@"CoreML"])
    {
      if (v101 && ([v101 isEqualToString:@"uncompiled"] & 1) == 0)
      {
        if (([v101 isEqualToString:@"compiled"] & 1) == 0)
        {
          v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized model type sent to JS Handler: %@", v101];
          v92 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v91 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v146, v93);
            _os_log_error_impl(&dword_240CB9000, v92, v91, "%@", v146, 0xCu);
          }

          objc_storeStrong(&v92, 0);
          v42 = [AMDError allocError:15 withMessage:v93];
          v15 = v42;
          *v135 = v42;
          v139 = 0;
          v129 = 1;
          objc_storeStrong(&v93, 0);
          goto LABEL_86;
        }

        v13 = [v138 unzipAndValidateCompiledModelBundle:v133 atLocation:v103 withVersion:v102 error:v135];
        v14 = v94;
        v94 = v13;
        MEMORY[0x277D82BD8](v14);
      }

      else
      {
        v11 = [v138 parseModel:v133 atLocation:v103 withVersion:v102 withStorefrontId:v136 error:v135];
        v12 = v94;
        v94 = v11;
        MEMORY[0x277D82BD8](v12);
      }
    }

    else
    {
      if (([v104 isEqualToString:@"Espresso"] & 1) == 0)
      {
        v90 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported model format present in inflight workflow: %@", v104];
        v89 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v88 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v145, v90);
          _os_log_error_impl(&dword_240CB9000, v89, v88, "%@", v145, 0xCu);
        }

        objc_storeStrong(&v89, 0);
        v41 = [AMDError allocError:15 withMessage:v90];
        v18 = v41;
        *v135 = v41;
        v139 = 0;
        v129 = 1;
        objc_storeStrong(&v90, 0);
        goto LABEL_86;
      }

      v16 = [v138 unzipDownloadedModelBundle:v133 atLocation:v103 withVersion:v102 error:v135];
      v17 = v94;
      v94 = v16;
      MEMORY[0x277D82BD8](v17);
    }

    if (*v135)
    {
      v139 = 0;
      v129 = 1;
    }

    else if (v94)
    {
      v85 = 0;
      v83 = 0;
      v39 = [AMDModel getModelInfo:v133 error:&v83];
      objc_storeStrong(&v85, v83);
      v84 = v39;
      [AMDModel saveModels:v94 error:v135];
      if (*v135)
      {
        v82 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v81 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          v37 = v133;
          v38 = [*v135 localizedDescription];
          __os_log_helper_16_2_2_8_64_8_64(v143, v37, v38);
          _os_log_error_impl(&dword_240CB9000, v82, v81, "Model url save failed, modelId: %@, error: %@", v143, 0x16u);
          MEMORY[0x277D82BD8](v38);
        }

        objc_storeStrong(&v82, 0);
        v139 = 0;
        v129 = 1;
      }

      else
      {
        v80 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v79 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_1_8_64(v142, v133);
          _os_log_debug_impl(&dword_240CB9000, v80, v79, "Added modelUrl for '%@'", v142, 0xCu);
        }

        objc_storeStrong(&v80, 0);
        if (!v85 && v84)
        {
          v78 = v85;
          [v138 deleteModelFromStorage:v84 isVersionChange:1 error:&v78];
          objc_storeStrong(&v85, v78);
          if (v85)
          {
            v77 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deletion of older version model file failed for model: %@", v133];
            [v122 setObject:v77 forKey:@"OlderVersionDeletionError"];
            objc_storeStrong(&v77, 0);
          }

          else
          {
            v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"Successfully deleted older model version for model: %@", v133];
            [v122 setObject:v76 forKey:@"OlderVersionDeletionSummary"];
            objc_storeStrong(&v76, 0);
          }
        }

        [v122 setObject:v133 forKey:@"savedModelId"];
        [v122 setObject:v102 forKey:@"savedModelVersion"];
        v75 = [AMDWorkflowInFlight moveInflightWorkflowsToWorkflows:v116 withDomain:v117 error:v135];
        v74 = [v75 objectForKey:@"savedWorkflows"];
        v73 = [v75 objectForKey:@"deletionSummary"];
        v72 = [v138 updateAppTabInfoForWorkflows:v74];
        v71 = [v138 performModelCleanup];
        v70 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v69 = 0;
        memset(__b, 0, sizeof(__b));
        v35 = MEMORY[0x277D82BE0](v116);
        v36 = [v35 countByEnumeratingWithState:__b objects:v141 count:16];
        if (v36)
        {
          v32 = *__b[2];
          v33 = 0;
          v34 = v36;
          while (1)
          {
            v31 = v33;
            if (*__b[2] != v32)
            {
              objc_enumerationMutation(v35);
            }

            v68 = *(__b[1] + 8 * v33);
            v66 = [v68 objectForKey:0x2852AAA88];
            v65 = [v68 objectForKey:0x2852A9168];
            if (v66)
            {
              [v70 addObject:v66];
            }

            if (v65)
            {
              v69 = [v65 longLongValue];
            }

            objc_storeStrong(&v65, 0);
            objc_storeStrong(&v66, 0);
            ++v33;
            if (v31 + 1 >= v34)
            {
              v33 = 0;
              v34 = [v35 countByEnumeratingWithState:__b objects:v141 count:16];
              if (!v34)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v35);
        v64 = [v70 allObjects];
        v29 = [MEMORY[0x277CBEAA8] date];
        [v29 timeIntervalSince1970];
        v30 = v20;
        MEMORY[0x277D82BD8](v29);
        v63 = v30;
        v62 = v30 - v69;
        [v122 setObject:v64 forKey:@"SyncUUIDs"];
        if (v69)
        {
          v27 = v122;
          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v62];
          [v27 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v28);
        }

        else
        {
          [v122 setObject:@"SyncTime not found" forKey:@"Error:modelAvailabilityLatency"];
        }

        v23 = v122;
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v69];
        [v23 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v24);
        v25 = v122;
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63];
        [v25 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v26);
        [v122 setObject:v73 forKey:@"workflowCleanupInformation"];
        [v122 setObject:v71 forKey:@"modelsDeleted"];
        [v122 setObject:v72 forKey:@"updatedTabInfo"];
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_0_1_8_0(v140, v62);
          _os_log_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_INFO, "Total model availability latency(seconds) : %lld", v140, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        [AMDFrameworkMetrics log:v122 withKey:@"downloadProcessSummary" atVerbosity:0];
        v139 = MEMORY[0x277D82BE0](v122);
        v129 = 1;
        objc_storeStrong(&v64, 0);
        objc_storeStrong(&v70, 0);
        objc_storeStrong(&v71, 0);
        objc_storeStrong(&v72, 0);
        objc_storeStrong(&v73, 0);
        objc_storeStrong(&v74, 0);
        objc_storeStrong(&v75, 0);
      }

      objc_storeStrong(&v84, 0);
      objc_storeStrong(&v85, 0);
    }

    else
    {
      v87 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v86 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v144, v133);
        _os_log_error_impl(&dword_240CB9000, v87, v86, "Parse model information operation failed for modelId: %@", v144, 0xCu);
      }

      objc_storeStrong(&v87, 0);
      v40 = [AMDError allocError:16 withMessage:@"Parse model information operation failed"];
      v19 = v40;
      *v135 = v40;
      v139 = 0;
      v129 = 1;
    }

LABEL_86:
    objc_storeStrong(&v94, 0);
LABEL_87:
    objc_storeStrong(&v101, 0);
    objc_storeStrong(&v102, 0);
    objc_storeStrong(&v103, 0);
    objc_storeStrong(&v104, 0);
LABEL_88:
    objc_storeStrong(&v108, 0);
    objc_storeStrong(&v109, 0);
LABEL_89:
    objc_storeStrong(&v116, 0);
LABEL_90:
    objc_storeStrong(&v121, 0);
    objc_storeStrong(&v122, 0);
    goto LABEL_91;
  }

  v125 = [MEMORY[0x277CCACA8] stringWithFormat:@"Model Download Failed for modelId: %@", v133];
  v124 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v123 = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v152, v125);
    _os_log_error_impl(&dword_240CB9000, v124, v123, "%@", v152, 0xCu);
  }

  objc_storeStrong(&v124, 0);
  v56 = [AMDError allocError:15 withMessage:v125];
  v7 = v56;
  *v135 = v56;
  [AMDFrameworkMetrics log:v125 withKey:@"modelDownloadFailure" atVerbosity:0];
  v139 = 0;
  v129 = 1;
  objc_storeStrong(&v125, 0);
LABEL_91:
  objc_storeStrong(&v133, 0);
  objc_storeStrong(&v134, 0);
  objc_storeStrong(&v136, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v21 = v139;

  return v21;
}

+ (id)parseModel:(id)a3 atLocation:(id)a4 withVersion:(id)a5 withStorefrontId:(id)a6 error:(id *)a7
{
  v53 = *MEMORY[0x277D85DE8];
  v44 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v42 = 0;
  objc_storeStrong(&v42, a4);
  v41 = 0;
  objc_storeStrong(&v41, a5);
  v40 = 0;
  objc_storeStrong(&v40, a6);
  v39[1] = a7;
  v39[0] = MEMORY[0x277D82BE0](@"ModelFilesHandling");
  [AMDPerf sampleForKey:v39[0]];
  v38 = 0;
  context = objc_autoreleasePoolPush();
  v18 = [AMDBaseRecoModel alloc];
  v37 = -[AMDBaseRecoModel initWithId:andVersion:](v18, "initWithId:andVersion:", location[0], [v41 longLongValue]);
  v21 = v44;
  v19 = location[0];
  v20 = v40;
  v22 = [MEMORY[0x277CBEBC0] URLWithString:v42];
  v7 = [v21 parseModelWithId:v19 withStorefrontId:v20 fromArchive:? withBaseRecoModel:?];
  v8 = v38;
  v38 = v7;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v22);
  objc_storeStrong(&v37, 0);
  objc_autoreleasePoolPop(context);
  [AMDPerf sampleForKey:v39[0]];
  v36 = [v38 objectForKey:@"newVersionDirURL"];
  if (v36)
  {
    v32 = [v38 objectForKey:?];
    v31 = [v36 absoluteString];
    v30 = [v31 stringByRemovingPercentEncoding];
    v28 = [v30 rangeOfString:@"file://"];
    v29 = v9;
    v46 = v28;
    v47 = v9;
    v27 = [v30 substringFromIndex:v28 + v9];
    v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:v27 isDirectory:1];
    v12 = [v26 URLByDeletingLastPathComponent];
    v25 = [v12 lastPathComponent];
    MEMORY[0x277D82BD8](v12);
    v50 = location[0];
    v48[0] = @"modelId";
    v49[0] = location[0];
    v48[1] = @"url";
    v49[1] = v27;
    v48[2] = @"compiledModelDir";
    v49[2] = v32;
    v48[3] = @"version";
    v49[3] = v25;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:4];
    v51 = v13;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    MEMORY[0x277D82BD8](v13);
    v45 = MEMORY[0x277D82BE0](v24);
    v33 = 1;
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  else
  {
    v35 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v34 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v52, location[0]);
      _os_log_error_impl(&dword_240CB9000, v35, v34, "Model file not correctly parsed for modelId: %@", v52, 0xCu);
    }

    objc_storeStrong(&v35, 0);
    v45 = 0;
    v33 = 1;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v10 = v45;

  return v10;
}

+ (void)saveMinimalContentToLogicalMapForModelId:(id)a3 fromMapData:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  v7 = 0;
  v5 = [AMDTasteProfile getPurchasedAppsSet:&v7];
  objc_storeStrong(&v9, v7);
  v8 = v5;
  if ([v5 count])
  {
    [AMDTasteProfile saveMinimalCToLMapForModelId:location[0] usingMapData:v10 andPurchases:v8];
  }

  else
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v12, location[0]);
      _os_log_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_INFO, "No purchases to map to logicalIds for modelId %@", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)unzipModelFile:(id)a3 copyToDestination:(id)a4 error:(id *)a5
{
  v23[3] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = a5;
  [AMDPerf startMonitoringEvent:@"ModelUnzip"];
  v17[5] = BOMCopierNew();
  v10 = location[0];
  v5 = location[0];
  v17[2] = [v10 fileSystemRepresentation];
  v9 = v19;
  v6 = v19;
  v17[1] = [v9 fileSystemRepresentation];
  v22[0] = @"extractPKZip";
  v23[0] = *MEMORY[0x277CBED28];
  v22[1] = @"sequesterResources";
  v23[1] = *MEMORY[0x277CBED28];
  v22[2] = @"copyResources";
  v23[2] = *MEMORY[0x277CBED28];
  v17[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v16 = BOMCopierCopyWithOptions();
  BOMCopierFree();
  if (v16)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Model at path %@ could not be unzipped", location[0]];
    v14 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v21, v15);
      _os_log_error_impl(&dword_240CB9000, v14, OS_LOG_TYPE_ERROR, "%@", v21, 0xCu);
    }

    objc_storeStrong(&v14, 0);
    v8 = [AMDError allocError:15 withMessage:v15];
    v7 = v8;
    *v18 = v8;
    v13 = 1;
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(v17, 0);
  if (!v13)
  {
    [AMDPerf endMonitoringEvent:@"ModelUnzip"];
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)unzipModel:(id)a3 atLocation:(id)a4 withVersion:(id)a5 error:(id *)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v42 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  v39 = 0;
  objc_storeStrong(&v39, a5);
  v38 = a6;
  v37 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v37 fileExistsAtPath:v40])
  {
    v18 = [MEMORY[0x277CBEAA8] date];
    [v18 timeIntervalSince1970];
    v19 = v7;
    MEMORY[0x277D82BD8](v18);
    v32[1] = v19;
    v32[0] = [v42 ensureNewVersionDirURLForModel:location[0] withVersion:objc_msgSend(v39 andCreationTime:{"longLongValue"), v19}];
    if (v32[0])
    {
      v28 = [v32[0] second];
      v15 = v42;
      v14 = v40;
      v16 = [v28 path];
      [v15 unzipModelFile:v14 copyToDestination:? error:?];
      MEMORY[0x277D82BD8](v16);
      if (*v38)
      {
        v13 = [*v38 localizedDescription];
        [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
        MEMORY[0x277D82BD8](v13);
        v43 = 0;
        v33 = 1;
      }

      else
      {
        v27 = 0;
        v11 = v37;
        v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v40 isDirectory:0];
        v26 = v27;
        [v11 removeItemAtURL:? error:?];
        objc_storeStrong(&v27, v26);
        MEMORY[0x277D82BD8](v12);
        if (v27)
        {
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not delete downloaded zipped model at location: %@", v40];
          v24 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v44, v25);
            _os_log_error_impl(&dword_240CB9000, v24, OS_LOG_TYPE_ERROR, "%@", v44, 0xCu);
          }

          objc_storeStrong(&v24, 0);
          [AMDFrameworkMetrics log:v25 withKey:@"downloadedModelDeletionError" atVerbosity:0];
          objc_storeStrong(&v25, 0);
        }

        v43 = MEMORY[0x277D82BE0](v28);
        v33 = 1;
        objc_storeStrong(&v27, 0);
      }

      objc_storeStrong(&v28, 0);
    }

    else
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"New directory could not be created at path: %@ for model: %@", v40, location[0]];
      v30 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v29 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v45, v31);
        _os_log_error_impl(&dword_240CB9000, v30, v29, "%@", v45, 0xCu);
      }

      objc_storeStrong(&v30, 0);
      v17 = [AMDError allocError:15 withMessage:v31];
      v8 = v17;
      *v38 = v17;
      v43 = 0;
      v33 = 1;
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(v32, 0);
  }

  else
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Downloaded Model unavailable at path: %@ for model: %@", v40, location[0]];
    [AMDFrameworkMetrics log:v36 withKey:@"parseDownloadedModelError" atVerbosity:0];
    v35 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v34 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v46, v36);
      _os_log_error_impl(&dword_240CB9000, v35, v34, "%@", v46, 0xCu);
    }

    objc_storeStrong(&v35, 0);
    v20 = [AMDError allocError:15 withMessage:v36];
    v6 = v20;
    *v38 = v20;
    v43 = 0;
    v33 = 1;
    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v43;

  return v9;
}

+ (id)unzipDownloadedModelBundle:(id)a3 atLocation:(id)a4 withVersion:(id)a5 error:(id *)a6
{
  v25[1] = *MEMORY[0x277D85DE8];
  v20 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  v16[1] = a6;
  v16[0] = [v20 unzipModel:location[0] atLocation:v18 withVersion:v17 error:a6];
  if (*a6)
  {
    v21 = 0;
    v15 = 1;
  }

  else
  {
    v24 = location[0];
    v22[0] = @"modelId";
    v23[0] = location[0];
    v22[1] = @"url";
    v10 = [v16[0] path];
    v23[1] = v10;
    v22[2] = @"compiledModelDir";
    v23[2] = &stru_2852A6E28;
    v22[3] = @"version";
    v9 = [v17 stringValue];
    v23[3] = v9;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
    v25[0] = v8;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    v21 = MEMORY[0x277D82BE0](v14);
    v15 = 1;
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v21;

  return v6;
}

+ (id)unzipAndValidateCompiledModelBundle:(id)a3 atLocation:(id)a4 withVersion:(id)a5 error:(id *)a6
{
  v27[1] = *MEMORY[0x277D85DE8];
  v22 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = a6;
  v17 = [v22 unzipModel:location[0] atLocation:v20 withVersion:v19 error:a6];
  if (*a6)
  {
    v23 = 0;
    v16 = 1;
  }

  else
  {
    [v22 validateDownloadAtLocation:v17 withModelId:location[0] andVersion:v19 error:v18];
    if (*v18)
    {
      v23 = 0;
      v16 = 1;
    }

    else
    {
      v15 = [location[0] stringByAppendingString:@".mlmodelc"];
      v26 = location[0];
      v24[0] = @"modelId";
      v25[0] = location[0];
      v24[1] = @"url";
      v10 = [v17 path];
      v25[1] = v10;
      v24[2] = @"compiledModelDir";
      v25[2] = v15;
      v24[3] = @"version";
      v9 = [v19 stringValue];
      v25[3] = v9;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];
      v27[0] = v8;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      v23 = MEMORY[0x277D82BE0](v14);
      v16 = 1;
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
    }
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v23;

  return v6;
}

+ (void)validateDownloadAtLocation:(id)a3 withModelId:(id)a4 andVersion:(id)a5 error:(id *)a6
{
  v88 = *MEMORY[0x277D85DE8];
  v81 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v79 = 0;
  objc_storeStrong(&v79, a4);
  v78 = 0;
  objc_storeStrong(&v78, a5);
  v77 = a6;
  v49 = [AMDBaseRecoModel alloc];
  v76 = -[AMDBaseRecoModel initWithId:andVersion:](v49, "initWithId:andVersion:", v79, [v78 longLongValue]);
  [v76 loadModelMetadataFromDir:location[0] error:a6];
  v6 = *a6;
  v74 = 0;
  v50 = 1;
  if (!v6)
  {
    v75 = [v76 modelMetadata];
    v74 = 1;
    v50 = v75 == 0;
  }

  if (v74)
  {
    MEMORY[0x277D82BD8](v75);
  }

  if (v50)
  {
    v73 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v72 = 16;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      log = v73;
      type = v72;
      v45 = [location[0] path];
      v44 = [*v77 localizedDescription];
      v71 = MEMORY[0x277D82BE0](v44);
      __os_log_helper_16_2_2_8_64_8_64(v87, v45, v71);
      _os_log_error_impl(&dword_240CB9000, log, type, "Error loading model metadata from %@: %@", v87, 0x16u);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v45);
      objc_storeStrong(&v71, 0);
    }

    objc_storeStrong(&v73, 0);
    v41 = [*v77 localizedDescription];
    [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
    MEMORY[0x277D82BD8](v41);
    v70 = 1;
  }

  else
  {
    v39 = [v76 modelMetadata];
    v40 = [v39 isValid];
    MEMORY[0x277D82BD8](v39);
    if (v40)
    {
      v33 = [AMDModelAssets alloc];
      v34 = [location[0] path];
      v66 = [AMDModelAssets initFromDir:v33 andMetadata:"initFromDir:andMetadata:useBinaryInputMap:useBinaryOutputMap:withModelId:isInference:error:" useBinaryInputMap:v77 useBinaryOutputMap:? withModelId:? isInference:? error:?];
      MEMORY[0x277D82BD8](v34);
      if (*v77)
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v64 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v29 = oslog;
          v30 = v64;
          v32 = [location[0] path];
          v31 = [*v77 localizedDescription];
          v63 = MEMORY[0x277D82BE0](v31);
          __os_log_helper_16_2_2_8_64_8_64(v85, v32, v63);
          _os_log_error_impl(&dword_240CB9000, v29, v30, "Error  loading assets from %@: %@", v85, 0x16u);
          MEMORY[0x277D82BD8](v31);
          MEMORY[0x277D82BD8](v32);
          objc_storeStrong(&v63, 0);
        }

        objc_storeStrong(&oslog, 0);
        v28 = [*v77 localizedDescription];
        [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
        MEMORY[0x277D82BD8](v28);
        v70 = 1;
      }

      else
      {
        v27 = [v76 modelMetadata];
        v62 = [v27 getMappingFileRequirement];
        MEMORY[0x277D82BD8](v27);
        if (v62 && [v62 BOOLValue] == 1 && (objc_msgSend(v66, "isValid") & 1) == 0)
        {
          v25 = MEMORY[0x277CCACA8];
          v26 = [location[0] path];
          v61 = [v25 stringWithFormat:@"Invalid assets loaded from filepath: %@", v26];
          MEMORY[0x277D82BD8](v26);
          v60 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v59 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v84, v61);
            _os_log_error_impl(&dword_240CB9000, v60, v59, "%@", v84, 0xCu);
          }

          objc_storeStrong(&v60, 0);
          v23 = [AMDError allocError:16 withMessage:v61];
          v8 = v23;
          *v77 = v23;
          v24 = [*v77 localizedDescription];
          [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
          MEMORY[0x277D82BD8](v24);
          v70 = 1;
          objc_storeStrong(&v61, 0);
        }

        else
        {
          v22 = [v66 getContentToLogicalMap];
          MEMORY[0x277D82BD8](v22);
          if (v22)
          {
            v20 = v81;
            v19 = v79;
            v21 = [v66 getContentToLogicalMap];
            [v20 saveMinimalContentToLogicalMapForModelId:v19 fromMapData:?];
            MEMORY[0x277D82BD8](v21);
          }

          v18 = [location[0] URLByAppendingPathComponent:v79];
          v58 = [v18 URLByAppendingPathExtension:@"mlmodelc"];
          MEMORY[0x277D82BD8](v18);
          v57 = objc_alloc_init(MEMORY[0x277CBFF38]);
          [v57 setComputeUnits:0];
          v56 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v58 configuration:v57 error:v77];
          if (*v77)
          {
            v15 = MEMORY[0x277CCACA8];
            v17 = [v58 path];
            v16 = [*v77 localizedDescription];
            v55 = [v15 stringWithFormat:@"Error while loading the model from %@: %@", v17, v16];
            MEMORY[0x277D82BD8](v16);
            MEMORY[0x277D82BD8](v17);
            v54 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v53 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_1_8_64(v83, v55);
              _os_log_error_impl(&dword_240CB9000, v54, v53, "%@", v83, 0xCu);
            }

            objc_storeStrong(&v54, 0);
            v13 = [AMDError allocError:16 withMessage:v55];
            v9 = v13;
            *v77 = v13;
            v14 = [*v77 localizedDescription];
            [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
            MEMORY[0x277D82BD8](v14);
            v70 = 1;
            objc_storeStrong(&v55, 0);
          }

          else if (v56)
          {
            v70 = 0;
          }

          else
          {
            v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"ML model loaded incorrectly. Nil value returned"];
            v51 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_1_8_64(v82, v52);
              _os_log_error_impl(&dword_240CB9000, v51, OS_LOG_TYPE_ERROR, "%@", v82, 0xCu);
            }

            objc_storeStrong(&v51, 0);
            v11 = [AMDError allocError:16 withMessage:v52];
            v10 = v11;
            *v77 = v11;
            v12 = [*v77 localizedDescription];
            [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
            MEMORY[0x277D82BD8](v12);
            v70 = 1;
            objc_storeStrong(&v52, 0);
          }

          objc_storeStrong(&v56, 0);
          objc_storeStrong(&v57, 0);
          objc_storeStrong(&v58, 0);
        }

        objc_storeStrong(&v62, 0);
      }

      objc_storeStrong(&v66, 0);
    }

    else
    {
      v37 = MEMORY[0x277CCACA8];
      v38 = [location[0] path];
      v69 = [v37 stringWithFormat:@"Invalid model metadata from filepath: %@", v38];
      MEMORY[0x277D82BD8](v38);
      v68 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v67 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v86, v69);
        _os_log_error_impl(&dword_240CB9000, v68, v67, "%@", v86, 0xCu);
      }

      objc_storeStrong(&v68, 0);
      v35 = [AMDError allocError:16 withMessage:v69];
      v7 = v35;
      *v77 = v35;
      v36 = [*v77 localizedDescription];
      [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
      MEMORY[0x277D82BD8](v36);
      v70 = 1;
      objc_storeStrong(&v69, 0);
    }
  }

  objc_storeStrong(&v76, 0);
  objc_storeStrong(&v78, 0);
  objc_storeStrong(&v79, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)deleteModelFromStorage:(id)a3 isVersionChange:(BOOL)a4 error:(id *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  v18 = a5;
  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = MEMORY[0x277CBEBC0];
  v9 = [location[0] objectForKey:0x2852AAF08];
  v16 = [v8 fileURLWithPath:?];
  MEMORY[0x277D82BD8](v9);
  v15 = [location[0] objectForKey:0x2852A8E08];
  if (a4)
  {
    v14 = [v16 URLByDeletingLastPathComponent];
    if (([v17 removeItemAtURL:v14 error:v18] & 1) != 0 && !*v18)
    {
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_64_8_64(v22, v15, v14);
        _os_log_impl(&dword_240CB9000, oslog, type, "Deleted directory for modelId '%@': %@", v22, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v14, 0);
  }

  else
  {
    v5 = [v16 URLByDeletingLastPathComponent];
    v11 = [v5 URLByDeletingLastPathComponent];
    MEMORY[0x277D82BD8](v5);
    if (([v17 removeItemAtURL:v11 error:v18] & 1) != 0 && !*v18)
    {
      v10 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_64_8_64(v21, v15, v11);
        _os_log_impl(&dword_240CB9000, v10, OS_LOG_TYPE_INFO, "Deleted directory for modelId '%@': %@", v21, 0x16u);
      }

      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (void)deleteColdstartBinaryFromStorage:(id)a3 forModel:(id)a4 isVersionChange:(BOOL)a5 error:(id *)a6
{
  v31 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = a5;
  v23 = a6;
  v22 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = [MEMORY[0x277CBEBC0] fileURLWithPath:location[0]];
  if (a5)
  {
    v8 = [v21 URLByDeletingLastPathComponent];
    v20 = [v8 URLByDeletingLastPathComponent];
    MEMORY[0x277D82BD8](v8);
    if (([v22 removeItemAtURL:v20 error:v23] & 1) != 0 && !*v23)
    {
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v30, v25, v20);
        _os_log_error_impl(&dword_240CB9000, oslog, type, "Deleted directory for modelId '%@': %@", v30, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      v17 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v16 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_64_8_64(v29, v25, v20);
        _os_log_impl(&dword_240CB9000, v17, v16, "Deleted directory for modelId '%@': %@", v29, 0x16u);
      }

      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v20, 0);
  }

  else
  {
    v7 = [v21 URLByDeletingLastPathComponent];
    v6 = [v7 URLByDeletingLastPathComponent];
    v15 = [v6 URLByDeletingLastPathComponent];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    if (([v22 removeItemAtURL:v15 error:v23] & 1) != 0 && !*v23)
    {
      v14 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v13 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v28, v25, v15);
        _os_log_error_impl(&dword_240CB9000, v14, v13, "Deleted directory for modelId '%@': %@", v28, 0x16u);
      }

      objc_storeStrong(&v14, 0);
      v12 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_64_8_64(v27, v25, v15);
        _os_log_impl(&dword_240CB9000, v12, OS_LOG_TYPE_INFO, "Deleted directory for modelId '%@': %@", v27, 0x16u);
      }

      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)removeOldModels:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v57 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v55 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = objc_alloc(MEMORY[0x277CBEB18]);
  v54 = [v29 initWithCapacity:{objc_msgSend(location[0], "count")}];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v31 = [obj countByEnumeratingWithState:__b objects:v66 count:16];
  if (v31)
  {
    v26 = *__b[2];
    v27 = 0;
    v28 = v31;
    while (1)
    {
      v25 = v27;
      if (*__b[2] != v26)
      {
        objc_enumerationMutation(obj);
      }

      v53 = *(__b[1] + 8 * v27);
      v51 = 0;
      v50 = [v53 objectForKey:0x2852A8E08];
      v49 = v51;
      [v57 deleteModelFromStorage:v53 isVersionChange:0 error:&v49];
      objc_storeStrong(&v51, v49);
      if (v51)
      {
        v20 = MEMORY[0x277CBEBC0];
        v21 = [v53 objectForKey:0x2852AAF08];
        v48 = [v20 fileURLWithPath:?];
        MEMORY[0x277D82BD8](v21);
        v47 = [v48 URLByDeletingLastPathComponent];
        v23 = MEMORY[0x277CCACA8];
        v22 = v47;
        v24 = [v51 localizedDescription];
        v46 = [v23 stringWithFormat:@"Error deleting directory '%@': %@", v22, v24];
        MEMORY[0x277D82BD8](v24);
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v19 = type;
          __os_log_helper_16_2_2_8_64_8_64(v65, v50, v46);
          _os_log_error_impl(&dword_240CB9000, log, v19, "'%@': %@", v65, 0x16u);
        }

        objc_storeStrong(&oslog, 0);
        [v55 setObject:v46 forKey:v50];
        v43 = 3;
        objc_storeStrong(&v46, 0);
        objc_storeStrong(&v47, 0);
        objc_storeStrong(&v48, 0);
      }

      else
      {
        v42 = 0;
        v3 = [AMDWorkflow deleteWorkflowsForModelId:v50 error:&v42];
        objc_storeStrong(&v51, v42);
        if (v51)
        {
          v16 = MEMORY[0x277CCACA8];
          v17 = [v51 localizedDescription];
          v41 = [v16 stringWithFormat:@"Error deleting workflows: %@", v17];
          MEMORY[0x277D82BD8](v17);
          v40 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v39 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v14 = v40;
            v15 = v39;
            __os_log_helper_16_2_2_8_64_8_64(v64, v50, v41);
            _os_log_error_impl(&dword_240CB9000, v14, v15, "'%@': %@", v64, 0x16u);
          }

          objc_storeStrong(&v40, 0);
          [v55 setObject:v41 forKey:v50];
          v43 = 3;
          objc_storeStrong(&v41, 0);
        }

        else
        {
          v38 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v37 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v12 = v38;
            v13 = v37;
            __os_log_helper_16_2_1_8_64(v63, v50);
            _os_log_debug_impl(&dword_240CB9000, v12, v13, "Deleted workflow for modelId '%@'", v63, 0xCu);
          }

          objc_storeStrong(&v38, 0);
          v62 = v53;
          v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
          v36 = v51;
          [AMDModel deleteModels:"deleteModels:error:" error:?];
          objc_storeStrong(&v51, v36);
          MEMORY[0x277D82BD8](v11);
          if (v51)
          {
            v9 = MEMORY[0x277CCACA8];
            v10 = [v51 localizedDescription];
            v35 = [v9 stringWithFormat:@"Error deleting AMDModel: %@", v10];
            MEMORY[0x277D82BD8](v10);
            v34 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v33 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v7 = v34;
              v8 = v33;
              __os_log_helper_16_2_2_8_64_8_64(v61, v50, v35);
              _os_log_error_impl(&dword_240CB9000, v7, v8, "'%@': %@", v61, 0x16u);
            }

            objc_storeStrong(&v34, 0);
            [v55 setObject:v35 forKey:v50];
            v43 = 3;
            objc_storeStrong(&v35, 0);
          }

          else
          {
            v32 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v6 = v32;
              __os_log_helper_16_2_1_8_64(v60, v50);
              _os_log_debug_impl(&dword_240CB9000, v6, OS_LOG_TYPE_DEBUG, "Deleted model url for modelId '%@'", v60, 0xCu);
            }

            objc_storeStrong(&v32, 0);
            [v54 addObject:v50];
            v43 = 0;
          }
        }
      }

      objc_storeStrong(&v50, 0);
      objc_storeStrong(&v51, 0);
      ++v27;
      if (v25 + 1 >= v28)
      {
        v27 = 0;
        v28 = [obj countByEnumeratingWithState:__b objects:v66 count:16];
        if (!v28)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v58[0] = @"deleted";
  v59[0] = v54;
  v58[1] = @"failures";
  v59[1] = v55;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
  v43 = 1;
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)removeOldColdstartBinaries:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v37 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = objc_alloc(MEMORY[0x277CBEB18]);
  v34 = [v18 initWithCapacity:{objc_msgSend(location[0], "count")}];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v20 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
  if (v20)
  {
    v15 = *__b[2];
    v16 = 0;
    v17 = v20;
    while (1)
    {
      v14 = v16;
      if (*__b[2] != v15)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(__b[1] + 8 * v16);
      v31 = 0;
      v30 = [v33 objectForKey:0x2852A8E08];
      v29 = [v33 objectForKey:0x2852AAF08];
      v28 = v31;
      [v37 deleteColdstartBinaryFromStorage:v29 forModel:v30 isVersionChange:0 error:&v28];
      objc_storeStrong(&v31, v28);
      if (v31)
      {
        v12 = MEMORY[0x277CCACA8];
        v11 = v29;
        v13 = [v31 localizedDescription];
        v27 = [v12 stringWithFormat:@"Error deleting directory '%@': %@", v11, v13];
        MEMORY[0x277D82BD8](v13);
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v10 = type;
          __os_log_helper_16_2_2_8_64_8_64(v42, v30, v27);
          _os_log_error_impl(&dword_240CB9000, log, v10, "'%@': %@", v42, 0x16u);
        }

        objc_storeStrong(&oslog, 0);
        [v35 setObject:v27 forKey:v30];
        v24 = 3;
        objc_storeStrong(&v27, 0);
      }

      else
      {
        v41 = v33;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
        v23 = v31;
        [AMDColdstartURL deleteColdstartURLs:"deleteColdstartURLs:error:" error:?];
        objc_storeStrong(&v31, v23);
        MEMORY[0x277D82BD8](v8);
        if (v31)
        {
          v6 = MEMORY[0x277CCACA8];
          v7 = [v31 localizedDescription];
          v22 = [v6 stringWithFormat:@"Error deleting AMDColdstartBinary: %@", v7];
          MEMORY[0x277D82BD8](v7);
          v21 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v5 = v21;
            __os_log_helper_16_2_2_8_64_8_64(v40, v30, v22);
            _os_log_error_impl(&dword_240CB9000, v5, OS_LOG_TYPE_ERROR, "'%@': %@", v40, 0x16u);
          }

          objc_storeStrong(&v21, 0);
          [v35 setObject:v22 forKey:v30];
          v24 = 3;
          objc_storeStrong(&v22, 0);
        }

        else
        {
          [v34 addObject:v30];
          v24 = 0;
        }
      }

      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
      ++v16;
      if (v14 + 1 >= v17)
      {
        v16 = 0;
        v17 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
        if (!v17)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v38[0] = @"deleted";
  v39[0] = v34;
  v38[1] = @"failures";
  v39[1] = v35;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v24 = 1;
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

@end