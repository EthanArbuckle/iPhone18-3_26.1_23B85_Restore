@interface AMDJSCipherMLQueryHandler
+ (id)triggerPECCall:(id)a3 withError:(id *)a4;
+ (id)triggerPIRKVFetch:(id)a3 withError:(id *)a4;
@end

@implementation AMDJSCipherMLQueryHandler

+ (id)triggerPIRKVFetch:(id)a3 withError:(id *)a4
{
  v60 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v52 = a4;
  if (location[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = MEMORY[0x277D82BE0](location[0]);
      v47 = [v48 objectForKey:@"keywords"];
      if (v47)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = [v48 objectForKey:@"usecase"];
          if (v44)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = MEMORY[0x277D82BE0](v44);
              v40 = MEMORY[0x277D82BE0](v47);
              v39 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v40, "count")}];
              memset(__b, 0, sizeof(__b));
              obj = MEMORY[0x277D82BE0](v40);
              v21 = [obj countByEnumeratingWithState:__b objects:v59 count:16];
              if (v21)
              {
                v17 = *__b[2];
                v18 = 0;
                v19 = v21;
                while (1)
                {
                  v16 = v18;
                  if (*__b[2] != v17)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v38 = *(__b[1] + 8 * v18);
                  v36 = [v38 dataUsingEncoding:4];
                  [v39 addObject:v36];
                  objc_storeStrong(&v36, 0);
                  ++v18;
                  if (v16 + 1 >= v19)
                  {
                    v18 = 0;
                    v19 = [obj countByEnumeratingWithState:__b objects:v59 count:16];
                    if (!v19)
                    {
                      break;
                    }
                  }
                }
              }

              MEMORY[0x277D82BD8](obj);
              v35 = [objc_alloc(MEMORY[0x277CFA598]) initWithUseCase:v41];
              v34 = [objc_alloc(MEMORY[0x277CFA5B0]) initWithClientConfig:v35];
              *v52 = 0;
              v33 = [v34 asyncResponseDataByKeywords:v39 error:v52];
              if (*v52)
              {
                oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                type = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                {
                  log = oslog;
                  v14 = type;
                  v12 = v41;
                  v15 = [*v52 localizedDescription];
                  v30 = MEMORY[0x277D82BE0](v15);
                  __os_log_helper_16_2_2_8_64_8_64(v58, v12, v30);
                  _os_log_error_impl(&dword_240CB9000, log, v14, "PIR use case %@ error: %@", v58, 0x16u);
                  MEMORY[0x277D82BD8](v15);
                  objc_storeStrong(&v30, 0);
                }

                objc_storeStrong(&oslog, 0);
                v54 = 0;
                v50 = 1;
              }

              else
              {
                v29 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  __os_log_helper_16_2_2_8_64_8_64(v57, v41, v33);
                  _os_log_debug_impl(&dword_240CB9000, v29, OS_LOG_TYPE_DEBUG, "PIR call handle, usecase %@: %@", v57, 0x16u);
                }

                objc_storeStrong(&v29, 0);
                v55 = @"callHandle";
                v56 = v33;
                v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
                v50 = 1;
              }

              objc_storeStrong(&v33, 0);
              objc_storeStrong(&v34, 0);
              objc_storeStrong(&v35, 0);
              objc_storeStrong(&v39, 0);
              objc_storeStrong(&v40, 0);
              objc_storeStrong(&v41, 0);
            }

            else
            {
              v42 = MEMORY[0x277D82BE0](@"usecase is not a string");
              v22 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v42];
              v9 = v22;
              *v52 = v22;
              v54 = 0;
              v50 = 1;
              objc_storeStrong(&v42, 0);
            }
          }

          else
          {
            v43 = MEMORY[0x277D82BE0](@"usecase absent in PIR query payload");
            v23 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v43];
            v8 = v23;
            *v52 = v23;
            v54 = 0;
            v50 = 1;
            objc_storeStrong(&v43, 0);
          }

          objc_storeStrong(&v44, 0);
        }

        else
        {
          v45 = MEMORY[0x277D82BE0](@"Keywords are not an array");
          v24 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v45];
          v7 = v24;
          *v52 = v24;
          v54 = 0;
          v50 = 1;
          objc_storeStrong(&v45, 0);
        }
      }

      else
      {
        v46 = MEMORY[0x277D82BE0](@"Keywords absent in PIR query payload");
        v25 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v46];
        v6 = v25;
        *v52 = v25;
        v54 = 0;
        v50 = 1;
        objc_storeStrong(&v46, 0);
      }

      objc_storeStrong(&v47, 0);
      objc_storeStrong(&v48, 0);
    }

    else
    {
      v49 = MEMORY[0x277D82BE0](@"PIRQueryPayload is not a dictionary");
      v26 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v49];
      v5 = v26;
      *v52 = v26;
      v54 = 0;
      v50 = 1;
      objc_storeStrong(&v49, 0);
    }
  }

  else
  {
    v51 = MEMORY[0x277D82BE0](@"PIRQueryPayload is nil");
    v27 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v51];
    v4 = v27;
    *v52 = v27;
    v54 = 0;
    v50 = 1;
    objc_storeStrong(&v51, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v10 = v54;

  return v10;
}

+ (id)triggerPECCall:(id)a3 withError:(id *)a4
{
  v105 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v94 = a4;
  if (location[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v90 = MEMORY[0x277D82BE0](location[0]);
      v89 = [v90 objectForKey:@"usecase"];
      if (v89)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v86 = MEMORY[0x277D82BE0](v89);
          v85 = [v90 objectForKey:@"shardIndices"];
          if (v85)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v82 = MEMORY[0x277D82BE0](v85);
              v81 = [v90 objectForKey:@"queryData"];
              if (v81)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  memset(__b, 0, sizeof(__b));
                  obj = MEMORY[0x277D82BE0](v81);
                  v49 = [obj countByEnumeratingWithState:__b objects:v104 count:16];
                  if (v49)
                  {
                    v45 = *__b[2];
                    v46 = 0;
                    v47 = v49;
                    while (1)
                    {
                      v44 = v46;
                      if (*__b[2] != v45)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v78 = *(__b[1] + 8 * v46);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        break;
                      }

                      memset(v75, 0, 0x40uLL);
                      v41 = MEMORY[0x277D82BE0](v78);
                      v42 = [v41 countByEnumeratingWithState:v75 objects:v103 count:16];
                      if (v42)
                      {
                        v38 = *v75[2];
                        v39 = 0;
                        v40 = v42;
                        while (1)
                        {
                          v37 = v39;
                          if (*v75[2] != v38)
                          {
                            objc_enumerationMutation(v41);
                          }

                          v75[8] = *(v75[1] + 8 * v39);
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            break;
                          }

                          ++v39;
                          if (v37 + 1 >= v40)
                          {
                            v39 = 0;
                            v40 = [v41 countByEnumeratingWithState:v75 objects:v103 count:16];
                            if (!v40)
                            {
                              goto LABEL_31;
                            }
                          }
                        }

                        v74 = MEMORY[0x277D82BE0](@"an embedding element is not a number");
                        v36 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v74];
                        v13 = v36;
                        *v94 = v36;
                        v96 = 0;
                        v92 = 1;
                        objc_storeStrong(&v74, 0);
                      }

                      else
                      {
LABEL_31:
                        v92 = 0;
                      }

                      MEMORY[0x277D82BD8](v41);
                      if (v92)
                      {
                        goto LABEL_36;
                      }

                      ++v46;
                      if (v44 + 1 >= v47)
                      {
                        v46 = 0;
                        v47 = [obj countByEnumeratingWithState:__b objects:v104 count:16];
                        if (!v47)
                        {
                          goto LABEL_35;
                        }
                      }
                    }

                    v76 = MEMORY[0x277D82BE0](@"an embedding is not an array");
                    v43 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v76];
                    v12 = v43;
                    *v94 = v43;
                    v96 = 0;
                    v92 = 1;
                    objc_storeStrong(&v76, 0);
                  }

                  else
                  {
LABEL_35:
                    v92 = 0;
                  }

LABEL_36:
                  MEMORY[0x277D82BD8](obj);
                  if (!v92)
                  {
                    v73 = MEMORY[0x277D82BE0](v81);
                    v72 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v73, "count")}];
                    memset(v70, 0, sizeof(v70));
                    v34 = MEMORY[0x277D82BE0](v73);
                    v35 = [v34 countByEnumeratingWithState:v70 objects:v102 count:16];
                    if (v35)
                    {
                      v31 = *v70[2];
                      v32 = 0;
                      v33 = v35;
                      while (1)
                      {
                        v30 = v32;
                        if (*v70[2] != v31)
                        {
                          objc_enumerationMutation(v34);
                        }

                        v71 = *(v70[1] + 8 * v32);
                        v69 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{4 * objc_msgSend(v71, "count")}];
                        v27 = v69;
                        v14 = v69;
                        v68 = [v27 mutableBytes];
                        memset(v66, 0, sizeof(v66));
                        v28 = MEMORY[0x277D82BE0](v71);
                        v29 = [v28 countByEnumeratingWithState:v66 objects:v101 count:16];
                        if (v29)
                        {
                          v24 = *v66[2];
                          v25 = 0;
                          v26 = v29;
                          while (1)
                          {
                            v23 = v25;
                            if (*v66[2] != v24)
                            {
                              objc_enumerationMutation(v28);
                            }

                            v67 = *(v66[1] + 8 * v25);
                            [v67 floatValue];
                            v15 = v68;
                            v68 += 4;
                            *v15 = v16;
                            ++v25;
                            if (v23 + 1 >= v26)
                            {
                              v25 = 0;
                              v26 = [v28 countByEnumeratingWithState:v66 objects:v101 count:16];
                              if (!v26)
                              {
                                break;
                              }
                            }
                          }
                        }

                        MEMORY[0x277D82BD8](v28);
                        [v72 addObject:v69];
                        objc_storeStrong(&v69, 0);
                        ++v32;
                        if (v30 + 1 >= v33)
                        {
                          v32 = 0;
                          v33 = [v34 countByEnumeratingWithState:v70 objects:v102 count:16];
                          if (!v33)
                          {
                            break;
                          }
                        }
                      }
                    }

                    MEMORY[0x277D82BD8](v34);
                    v65 = [objc_alloc(MEMORY[0x277CFA598]) initWithUseCase:v86];
                    v64 = [objc_alloc(MEMORY[0x277CFA5B8]) initWithClientConfig:v65];
                    v63 = [v64 asyncResponseSimilarityScoresForElements:v72 shardIndices:v82 error:v94];
                    if (*v94)
                    {
                      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                      type = OS_LOG_TYPE_ERROR;
                      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                      {
                        log = oslog;
                        v21 = type;
                        v19 = v86;
                        v22 = [*v94 localizedDescription];
                        v60 = MEMORY[0x277D82BE0](v22);
                        __os_log_helper_16_2_2_8_64_8_64(v100, v19, v60);
                        _os_log_error_impl(&dword_240CB9000, log, v21, "PEC use case %@ error: %@", v100, 0x16u);
                        MEMORY[0x277D82BD8](v22);
                        objc_storeStrong(&v60, 0);
                      }

                      objc_storeStrong(&oslog, 0);
                      v96 = 0;
                      v92 = 1;
                    }

                    else
                    {
                      v59 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
                      {
                        __os_log_helper_16_2_2_8_64_8_64(v99, v86, v63);
                        _os_log_debug_impl(&dword_240CB9000, v59, OS_LOG_TYPE_DEBUG, "PEC call handle, usecase %@: %@", v99, 0x16u);
                      }

                      objc_storeStrong(&v59, 0);
                      v97 = @"callHandle";
                      v98 = v63;
                      v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
                      v92 = 1;
                    }

                    objc_storeStrong(&v63, 0);
                    objc_storeStrong(&v64, 0);
                    objc_storeStrong(&v65, 0);
                    objc_storeStrong(&v72, 0);
                    objc_storeStrong(&v73, 0);
                  }
                }

                else
                {
                  v79 = MEMORY[0x277D82BE0](@"data is not an array");
                  v50 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v79];
                  v11 = v50;
                  *v94 = v50;
                  v96 = 0;
                  v92 = 1;
                  objc_storeStrong(&v79, 0);
                }
              }

              else
              {
                v80 = MEMORY[0x277D82BE0](@"data absent in PEC query payload");
                v51 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v80];
                v10 = v51;
                *v94 = v51;
                v96 = 0;
                v92 = 1;
                objc_storeStrong(&v80, 0);
              }

              objc_storeStrong(&v81, 0);
              objc_storeStrong(&v82, 0);
            }

            else
            {
              v83 = MEMORY[0x277D82BE0](@"shardIndices are not an array");
              v52 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v83];
              v9 = v52;
              *v94 = v52;
              v96 = 0;
              v92 = 1;
              objc_storeStrong(&v83, 0);
            }
          }

          else
          {
            v84 = MEMORY[0x277D82BE0](@"shardIndices absent in PEC query payload");
            v53 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v84];
            v8 = v53;
            *v94 = v53;
            v96 = 0;
            v92 = 1;
            objc_storeStrong(&v84, 0);
          }

          objc_storeStrong(&v85, 0);
          objc_storeStrong(&v86, 0);
        }

        else
        {
          v87 = MEMORY[0x277D82BE0](@"usecase is not a string");
          v54 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v87];
          v7 = v54;
          *v94 = v54;
          v96 = 0;
          v92 = 1;
          objc_storeStrong(&v87, 0);
        }
      }

      else
      {
        v88 = MEMORY[0x277D82BE0](@"usecase absent in PEC query payload");
        v55 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v88];
        v6 = v55;
        *v94 = v55;
        v96 = 0;
        v92 = 1;
        objc_storeStrong(&v88, 0);
      }

      objc_storeStrong(&v89, 0);
      objc_storeStrong(&v90, 0);
    }

    else
    {
      v91 = MEMORY[0x277D82BE0](@"PECQueryPayload is not a dictionary");
      v56 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v91];
      v5 = v56;
      *v94 = v56;
      v96 = 0;
      v92 = 1;
      objc_storeStrong(&v91, 0);
    }
  }

  else
  {
    v93 = MEMORY[0x277D82BE0](@"PECQueryPayload is nil");
    v57 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v93];
    v4 = v57;
    *v94 = v57;
    v96 = 0;
    v92 = 1;
    objc_storeStrong(&v93, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v17 = v96;

  return v17;
}

@end