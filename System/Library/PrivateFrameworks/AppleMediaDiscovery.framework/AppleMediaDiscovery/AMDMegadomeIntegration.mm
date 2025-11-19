@interface AMDMegadomeIntegration
+ (id)handleJSRequest:(id)a3 error:(id *)a4;
+ (id)run:(id)a3 usingView:(id)a4 andDb:(id)a5 returnColumnMajor:(BOOL)a6 returnRowMajor:(BOOL)a7 withError:(id *)a8;
+ (id)save:(id)a3 into:(id)a4 inDb:(id)a5 withError:(id *)a6;
@end

@implementation AMDMegadomeIntegration

+ (id)handleJSRequest:(id)a3 error:(id *)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v64 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v62 = a4;
  v61 = +[AMDSQLite getSharedInstance];
  if (([v61 isUsable] & 1) == 0)
  {
    v40 = [v61 generateDBLoadError];
    v4 = v40;
    *v62 = v40;
    v65 = 0;
    v60 = 1;
    goto LABEL_53;
  }

  v39 = [v61 getMegadomeSchema];
  MEMORY[0x277D82BD8](v39);
  if (!v39)
  {
    v38 = [AMDMiscHelpers logAndCreateError:17 errorMessage:@"Megadome: no megadome db"];
    v5 = v38;
    *v62 = v38;
    v65 = 0;
    v60 = 1;
    goto LABEL_53;
  }

  v59 = [location[0] objectForKey:@"queries"];
  if (v59)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = MEMORY[0x277D82BE0](v59);
      v57 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v58, "count")}];
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x277D82BE0](v58);
      v36 = [obj countByEnumeratingWithState:__b objects:v70 count:16];
      if (!v36)
      {
LABEL_51:
        MEMORY[0x277D82BD8](obj);
        v65 = MEMORY[0x277D82BE0](v57);
        v60 = 1;
        objc_storeStrong(&v57, 0);
        objc_storeStrong(&v58, 0);
        goto LABEL_52;
      }

      v32 = *__b[2];
      v33 = 0;
      v34 = v36;
      while (1)
      {
        v31 = v33;
        if (*__b[2] != v32)
        {
          objc_enumerationMutation(obj);
        }

        v56 = *(__b[1] + 8 * v33);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v57 addObject:&unk_2852BB1F0];
          goto LABEL_49;
        }

        v54 = MEMORY[0x277D82BE0](v56);
        v7 = [v54 objectForKey:@"sourceView"];
        v8 = v59;
        v59 = v7;
        MEMORY[0x277D82BD8](v8);
        if (v59)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }
        }

        [v57 addObject:&unk_2852BB218];
        v60 = 3;
LABEL_48:
        objc_storeStrong(&v54, 0);
LABEL_49:
        ++v33;
        if (v31 + 1 >= v34)
        {
          v33 = 0;
          v34 = [obj countByEnumeratingWithState:__b objects:v70 count:16];
          if (!v34)
          {
            goto LABEL_51;
          }
        }
      }

      v53 = MEMORY[0x277D82BE0](v59);
      v9 = [v54 objectForKey:@"fd"];
      v10 = v59;
      v59 = v9;
      MEMORY[0x277D82BD8](v10);
      if (!v59 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        [v57 addObject:&unk_2852BB240];
        v60 = 3;
LABEL_47:
        objc_storeStrong(&v53, 0);
        goto LABEL_48;
      }

      v52 = MEMORY[0x277D82BE0](v59);
      v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v50 = 0;
      v49 = 0;
      v11 = [v54 objectForKey:@"persist"];
      v12 = v59;
      v59 = v11;
      MEMORY[0x277D82BD8](v12);
      if (v59 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v59 BOOLValue] & 1) != 0)
      {
        v13 = [v54 objectForKey:@"targetTable"];
        v14 = v59;
        v59 = v13;
        MEMORY[0x277D82BD8](v14);
        if (!v59 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          [v57 addObject:&unk_2852BB268];
          v60 = 3;
LABEL_46:
          objc_storeStrong(&v49, 0);
          objc_storeStrong(&v51, 0);
          objc_storeStrong(&v52, 0);
          goto LABEL_47;
        }

        objc_storeStrong(&v49, v59);
        v50 = 1;
      }

      else
      {
        [v51 setObject:@"Not persisting" forKey:@"persistStatus"];
      }

      v15 = [v54 objectForKey:@"returnResult"];
      v16 = v59;
      v59 = v15;
      MEMORY[0x277D82BD8](v16);
      v30 = 0;
      if (v59)
      {
        objc_opt_class();
        v30 = 0;
        if (objc_opt_isKindOfClass())
        {
          v30 = [v59 BOOLValue];
        }
      }

      v48 = v30 & 1;
      if (v30 & 1) != 0 || (v50)
      {
        v47 = 0;
        v45 = 0;
        v29 = [v64 run:v52 usingView:v53 andDb:v61 returnColumnMajor:v48 & 1 returnRowMajor:v50 & 1 withError:&v45];
        objc_storeStrong(&v47, v45);
        v46 = v29;
        if (v47)
        {
          v26 = v57;
          v68 = @"error";
          v28 = [v47 localizedDescription];
          v69 = v28;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
          [v26 addObject:?];
          MEMORY[0x277D82BD8](v27);
          MEMORY[0x277D82BD8](v28);
          v60 = 3;
        }

        else
        {
          v17 = [v46 objectForKey:0x2852A76C8];
          v18 = v46;
          v46 = v17;
          MEMORY[0x277D82BD8](v18);
          if ((v50 & 1) != 0 && v49)
          {
            v43 = v47;
            v25 = [v64 save:v46 into:v49 inDb:v61 withError:&v43];
            objc_storeStrong(&v47, v43);
            v44 = v25;
            if (v47)
            {
              v23 = v51;
              v24 = [v47 localizedDescription];
              [v23 setObject:? forKey:?];
              MEMORY[0x277D82BD8](v24);
            }

            else
            {
              [v51 setObject:v44 forKey:@"persistStatus"];
            }

            objc_storeStrong(&v44, 0);
          }

          if (v48)
          {
            v66[0] = 0x2852A9348;
            v22 = [v46 objectForKeyedSubscript:0x2852A9348];
            v67[0] = v22;
            v66[1] = 0x2852A9368;
            v21 = [v46 objectForKeyedSubscript:0x2852A9368];
            v67[1] = v21;
            v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
            MEMORY[0x277D82BD8](v21);
            MEMORY[0x277D82BD8](v22);
            [v51 setObject:v42 forKey:@"resultSet"];
            objc_storeStrong(&v42, 0);
          }

          [v57 addObject:v51];
          v60 = 0;
        }

        objc_storeStrong(&v46, 0);
        objc_storeStrong(&v47, 0);
      }

      else
      {
        [v57 addObject:&unk_2852BB290];
        v60 = 3;
      }

      goto LABEL_46;
    }
  }

  v37 = [AMDMiscHelpers logAndCreateError:17 errorMessage:@"Megadome: bad payload"];
  v6 = v37;
  *v62 = v37;
  v65 = 0;
  v60 = 1;
LABEL_52:
  objc_storeStrong(&v59, 0);
LABEL_53:
  objc_storeStrong(&v61, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v19 = v65;

  return v19;
}

+ (id)run:(id)a3 usingView:(id)a4 andDb:(id)a5 returnColumnMajor:(BOOL)a6 returnRowMajor:(BOOL)a7 withError:(id *)a8
{
  v74 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v67 = 0;
  objc_storeStrong(&v67, a4);
  v66 = 0;
  objc_storeStrong(&v66, a5);
  v65 = a6;
  v64 = a7;
  v63 = a8;
  v62 = 0;
  v61 = [getGDViewServiceClass() clientService];
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  if ([v67 isEqualToString:@"ShortTermTopics"])
  {
    v8 = [v61 firstPartyShortTermTopicViewWithError:v63];
    v9 = v59;
    v59 = v8;
    MEMORY[0x277D82BD8](v9);
    if (*v63)
    {
      v69 = 0;
      v56 = 1;
      goto LABEL_37;
    }

LABEL_4:
    v10 = [v59 databaseFilePath];
    v11 = v60;
    v60 = v10;
    MEMORY[0x277D82BD8](v11);
    goto LABEL_14;
  }

  if ([v67 isEqualToString:@"LongTermTopics"])
  {
    v12 = [v61 firstPartyLongTermTopicViewWithError:v63];
    v13 = v59;
    v59 = v12;
    MEMORY[0x277D82BD8](v13);
    if (*v63)
    {
      v69 = 0;
      v56 = 1;
      goto LABEL_37;
    }

    goto LABEL_4;
  }

  if (([v67 isEqualToString:@"languageView"] & 1) == 0)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported view: %@", v67];
    v20 = v62;
    v62 = v19;
    MEMORY[0x277D82BD8](v20);
    v35 = [AMDError allocError:17 withMessage:v62];
    v21 = v35;
    *v63 = v35;
    v69 = 0;
    v56 = 1;
    goto LABEL_37;
  }

  getGDRemoteViewAccessRequesterClass();
  v36 = objc_opt_new();
  v14 = v58;
  v58 = v36;
  MEMORY[0x277D82BD8](v14);
  v15 = [v36 requestAssertionForViewName:@"languageView" error:v63];
  v16 = v57;
  v57 = v15;
  MEMORY[0x277D82BD8](v16);
  if (*v63)
  {
    v69 = 0;
    v56 = 1;
    goto LABEL_37;
  }

  v55 = [v57 viewArtifactURL];
  v17 = [v55 path];
  v18 = v60;
  v60 = v17;
  MEMORY[0x277D82BD8](v18);
  objc_storeStrong(&v55, 0);
LABEL_14:
  v54 = [v66 getMegadomeSchema];
  v53 = [[AMDFetchDescriptor alloc] initWithDict:location[0] usingSchema:v54 error:v63];
  if (*v63)
  {
    v69 = 0;
    v56 = 1;
  }

  else
  {
    v52 = 0;
    ppDb = 0;
    v50 = MEMORY[0x277D82BE0](MEMORY[0x277CBEC10]);
    v49 = 0;
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v73, v60, v67);
      _os_log_debug_impl(&dword_240CB9000, oslog, type, "MEGADOME opening DB '%@' for view '%@'", v73, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v34 = v60;
    v22 = v60;
    v52 = sqlite3_open_v2([v34 UTF8String], &ppDb, 32769, 0);
    if (v52)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to load megadome db from path '%@': %d", v60, v52];
      v24 = v62;
      v62 = v23;
      MEMORY[0x277D82BD8](v24);
      v33 = [AMDError allocError:17 withMessage:v62];
      v25 = v33;
      *v63 = v33;
      v69 = 0;
      v56 = 1;
    }

    else
    {
      v46 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v45 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v72, v67);
        _os_log_debug_impl(&dword_240CB9000, v46, v45, "MEGADOME reading from view '%@'", v72, 0xCu);
      }

      objc_storeStrong(&v46, 0);
      v26 = [v66 fetchRowsFrom:ppDb usingDescriptor:v53 andSchema:v54 columnMajorOutput:v65 rowMajorOutput:v64 andPersist:0 error:v63];
      v27 = v50;
      v50 = v26;
      MEMORY[0x277D82BD8](v27);
      v56 = 0;
    }

    v32 = v56;
    if (ppDb)
    {
      v52 = sqlite3_close_v2(ppDb);
      if (v52)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to close megadome db, path '%@': %d", v60, v52];
        v29 = v62;
        v62 = v28;
        MEMORY[0x277D82BD8](v29);
        v44 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v43 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v71, v62);
          _os_log_error_impl(&dword_240CB9000, v44, v43, "%@", v71, 0xCu);
        }

        objc_storeStrong(&v44, 0);
      }

      else
      {
        v42 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_2_8_64_8_64(v70, v60, v67);
          _os_log_debug_impl(&dword_240CB9000, v42, OS_LOG_TYPE_DEBUG, "MEGADOME closed DB '%@' for view '%@'", v70, 0x16u);
        }

        objc_storeStrong(&v42, 0);
      }
    }

    if (v49)
    {
      objc_exception_rethrow();
    }

    v56 = v32;
    if (!v32)
    {
      v69 = MEMORY[0x277D82BE0](v50);
      v56 = 1;
    }

    objc_storeStrong(&v50, 0);
  }

  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v54, 0);
LABEL_37:
  objc_storeStrong(&v57, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v67, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v30 = v69;

  return v30;
}

+ (id)save:(id)a3 into:(id)a4 inDb:(id)a5 withError:(id *)a6
{
  v26[2] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = a6;
  v25[0] = 0x2852AF668;
  v26[0] = v20;
  v25[1] = 0x2852A9128;
  v13 = [location[0] objectForKeyedSubscript:0x2852A9388];
  v26[1] = v13;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  MEMORY[0x277D82BD8](v13);
  v16 = [v19 deleteRows:v17 error:a6];
  if (*a6)
  {
    v22 = 0;
    v15 = 1;
  }

  else
  {
    v8 = v19;
    v9 = [v19 getDataSchema];
    v14 = [v8 insertRows:v17 usingSchema:? error:?];
    MEMORY[0x277D82BD8](v9);
    if (*v18)
    {
      v22 = 0;
    }

    else
    {
      v23[0] = @"truncationSummary";
      v24[0] = v16;
      v23[1] = @"saveSummary";
      v24[1] = v14;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    }

    v15 = 1;
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v22;

  return v6;
}

@end