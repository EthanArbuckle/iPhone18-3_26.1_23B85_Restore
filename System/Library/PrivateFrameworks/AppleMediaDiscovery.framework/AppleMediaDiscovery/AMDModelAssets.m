@interface AMDModelAssets
+ (id)loadMapFromDir:(id)a3 andFile:(id)a4 error:(id *)a5;
+ (void)saveMap:(id)a3 toDir:(id)a4 inFile:(id)a5 keyIsInt64:(BOOL)a6 error:(id *)a7;
- (BOOL)isValid;
- (id)initFromDir:(id)a3 andMetadata:(id)a4 useBinaryInputMap:(BOOL)a5 useBinaryOutputMap:(BOOL)a6 withModelId:(id)a7 isInference:(BOOL)a8 error:(id *)a9;
- (void)loadCToLMapFromDir:(id)a3 error:(id *)a4;
- (void)loadLToCMapFromDir:(id)a3 error:(id *)a4;
- (void)saveCToLMap:(id)a3 toDir:(id)a4 error:(id *)a5;
- (void)saveLToCMap:(id)a3 toDir:(id)a4 error:(id *)a5;
@end

@implementation AMDModelAssets

+ (id)loadMapFromDir:(id)a3 andFile:(id)a4 error:(id *)a5
{
  v45 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = a5;
  v16 = [location[0] stringByAppendingPathComponent:v37];
  v35 = [v16 stringByAppendingPathExtension:@"bin"];
  MEMORY[0x277D82BD8](v16);
  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = [v17 fileExistsAtPath:v35];
  MEMORY[0x277D82BD8](v17);
  if (v18)
  {
    v31 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v30 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v43, v35);
      _os_log_debug_impl(&dword_240CB9000, v31, v30, "Loading binary map data from %@", v43, 0xCu);
    }

    objc_storeStrong(&v31, 0);
    v12 = MEMORY[0x277CBEA90];
    v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v35];
    v29 = [v12 dataWithContentsOfURL:?];
    MEMORY[0x277D82BD8](v13);
    if (v29)
    {
      v6 = v29;
      v25 = [v29 bytes];
      v24 = *v25++;
      v23 = 12 * v24 + 4;
      if ([v29 length] == v23)
      {
        v19 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_2_4_0_8_0(v40, v24, [v29 length]);
          _os_log_debug_impl(&dword_240CB9000, v19, OS_LOG_TYPE_DEBUG, "Number of map entries: %u, buffer size: %lu", v40, 0x12u);
        }

        objc_storeStrong(&v19, 0);
        v39 = MEMORY[0x277D82BE0](v29);
        v32 = 1;
      }

      else
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected buffer size: %lu (expected: %u)", objc_msgSend(v29, "length"), v23];
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v20 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v41, v22);
          _os_log_error_impl(&dword_240CB9000, oslog, v20, "%@", v41, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v10 = [AMDError allocError:7 withMessage:v22];
        v7 = v10;
        *v36 = v10;
        v39 = 0;
        v32 = 1;
        objc_storeStrong(&v22, 0);
      }
    }

    else
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not read from file %@", v35];
      v27 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v26 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v42, v28);
        _os_log_error_impl(&dword_240CB9000, v27, v26, "%@", v42, 0xCu);
      }

      objc_storeStrong(&v27, 0);
      v11 = [AMDError allocError:7 withMessage:v28];
      v5 = v11;
      *v36 = v11;
      v39 = 0;
      v32 = 1;
      objc_storeStrong(&v28, 0);
    }

    objc_storeStrong(&v29, 0);
  }

  else
  {
    v34 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v33 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v44, v35);
      _os_log_debug_impl(&dword_240CB9000, v34, v33, "Data file not present: %@", v44, 0xCu);
    }

    objc_storeStrong(&v34, 0);
    *v36 = 0;
    v39 = 0;
    v32 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v8 = v39;

  return v8;
}

- (void)loadCToLMapFromDir:(id)a3 error:(id *)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AMDModelAssets *)v8 useBinaryInputMap])
  {
    v4 = [AMDModelAssets loadMapFromDir:location[0] andFile:@"content_id_to_logical_id" error:a4];
    [(AMDModelAssets *)v8 setContentToLogicalMap:?];
    MEMORY[0x277D82BD8](v4);
    v5 = [(AMDModelAssets *)v8 contentToLogicalMap];
    MEMORY[0x277D82BD8](v5);
    if (v5)
    {
      [AMDPerf sampleForKey:@"loadedCToL"];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)loadLToCMapFromDir:(id)a3 error:(id *)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AMDModelAssets *)v8 useBinaryOutputMap])
  {
    v4 = [AMDModelAssets loadMapFromDir:location[0] andFile:@"label_index_to_content_id" error:a4];
    [(AMDModelAssets *)v8 setLogicalToContentMap:?];
    MEMORY[0x277D82BD8](v4);
    v5 = [(AMDModelAssets *)v8 logicalToContentMap];
    MEMORY[0x277D82BD8](v5);
    if (v5)
    {
      [AMDPerf sampleForKey:@"loadedLToC"];
    }
  }

  objc_storeStrong(location, 0);
}

+ (void)saveMap:(id)a3 toDir:(id)a4 inFile:(id)a5 keyIsInt64:(BOOL)a6 error:(id *)a7
{
  v69 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v60 = 0;
  objc_storeStrong(&v60, a4);
  v59 = 0;
  objc_storeStrong(&v59, a5);
  v58 = a6;
  v57 = a7;
  v28 = [v60 stringByAppendingPathComponent:v59];
  v56 = [v28 stringByAppendingPathExtension:@"bin"];
  MEMORY[0x277D82BD8](v28);
  v26 = [MEMORY[0x277CCAA00] defaultManager];
  v27 = [v26 fileExistsAtPath:v56];
  MEMORY[0x277D82BD8](v26);
  if (v27)
  {
    v55 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v68, v56);
      _os_log_debug_impl(&dword_240CB9000, v55, type, "Data file already present: %@", v68, 0xCu);
    }

    objc_storeStrong(&v55, 0);
    v53 = 1;
  }

  else
  {
    v52 = [location[0] count];
    v51 = 12 * v52 + 4;
    v50 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v49 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_2_4_0_4_0(v67, v52, v51);
      _os_log_debug_impl(&dword_240CB9000, v50, v49, "Preparing %u entries, buffer size: %u", v67, 0xEu);
    }

    objc_storeStrong(&v50, 0);
    v48 = malloc_type_malloc(v51, 0xA50DA638uLL);
    v47 = v48;
    *v48 = v52;
    ++v47;
    if (v58)
    {
      memset(__b, 0, sizeof(__b));
      v24 = MEMORY[0x277D82BE0](location[0]);
      v25 = [v24 countByEnumeratingWithState:__b objects:v66 count:16];
      if (v25)
      {
        v21 = *__b[2];
        v22 = 0;
        v23 = v25;
        while (1)
        {
          v20 = v22;
          if (*__b[2] != v21)
          {
            objc_enumerationMutation(v24);
          }

          v46 = *(__b[1] + 8 * v22);
          v19 = [location[0] objectForKey:v46];
          *v47 = [v19 intValue];
          MEMORY[0x277D82BD8](v19);
          *++v47 = [v46 longLongValue];
          v47 += 2;
          ++v22;
          if (v20 + 1 >= v23)
          {
            v22 = 0;
            v23 = [v24 countByEnumeratingWithState:__b objects:v66 count:16];
            if (!v23)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v24);
    }

    else
    {
      memset(v43, 0, sizeof(v43));
      v17 = MEMORY[0x277D82BE0](location[0]);
      v18 = [v17 countByEnumeratingWithState:v43 objects:v65 count:16];
      if (v18)
      {
        v14 = *v43[2];
        v15 = 0;
        v16 = v18;
        while (1)
        {
          v13 = v15;
          if (*v43[2] != v14)
          {
            objc_enumerationMutation(v17);
          }

          v44 = *(v43[1] + 8 * v15);
          *v47++ = [v44 intValue];
          v12 = [location[0] objectForKey:v44];
          *v47 = [v12 longLongValue];
          MEMORY[0x277D82BD8](v12);
          v47 += 2;
          ++v15;
          if (v13 + 1 >= v16)
          {
            v15 = 0;
            v16 = [v17 countByEnumeratingWithState:v43 objects:v65 count:16];
            if (!v16)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v17);
    }

    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v41 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_4_0_8_64(v64, v52, v56);
      _os_log_debug_impl(&dword_240CB9000, oslog, v41, "Saving binary map data (%u entries) to %@", v64, 0x12u);
    }

    objc_storeStrong(&oslog, 0);
    v40 = [MEMORY[0x277CBEB78] outputStreamToFileAtPath:v56 append:0];
    v39 = 0;
    if (v40)
    {
      [v40 open];
      v35 = [v40 write:v48 maxLength:v51];
      if (v35 > 0)
      {
        v53 = 0;
      }

      else
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"error writing to %@", v56];
        v33 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v62, v34);
          _os_log_error_impl(&dword_240CB9000, v33, OS_LOG_TYPE_ERROR, "%@", v62, 0xCu);
        }

        objc_storeStrong(&v33, 0);
        v10 = [AMDError allocError:7 withMessage:v34];
        v8 = v10;
        *v57 = v10;
        v53 = 1;
        objc_storeStrong(&v34, 0);
      }
    }

    else
    {
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not open output stream to file %@", v56];
      v37 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v36 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v63, v38);
        _os_log_error_impl(&dword_240CB9000, v37, v36, "%@", v63, 0xCu);
      }

      objc_storeStrong(&v37, 0);
      v11 = [AMDError allocError:7 withMessage:v38];
      v7 = v11;
      *v57 = v11;
      v53 = 1;
      objc_storeStrong(&v38, 0);
    }

    v9 = v53;
    free(v48);
    [v40 close];
    if (v39)
    {
      objc_exception_rethrow();
    }

    v53 = v9;
    if (v9)
    {
      if (v9 == 6)
      {
        __break(1u);
        JUMPOUT(0x240D1C970);
      }
    }

    else
    {
      v53 = 0;
    }

    objc_storeStrong(&v40, 0);
  }

  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)saveCToLMap:(id)a3 toDir:(id)a4 error:(id *)a5
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if ([(AMDModelAssets *)v9 useBinaryInputMap])
  {
    [AMDModelAssets saveMap:location[0] toDir:v7 inFile:@"content_id_to_logical_id" keyIsInt64:1 error:a5];
    [AMDPerf sampleForKey:@"savedCToL"];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)saveLToCMap:(id)a3 toDir:(id)a4 error:(id *)a5
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if ([(AMDModelAssets *)v9 useBinaryInputMap])
  {
    [AMDModelAssets saveMap:location[0] toDir:v7 inFile:@"label_index_to_content_id" keyIsInt64:0 error:a5];
    [AMDPerf sampleForKey:@"savedLToC"];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (id)initFromDir:(id)a3 andMetadata:(id)a4 useBinaryInputMap:(BOOL)a5 useBinaryOutputMap:(BOOL)a6 withModelId:(id)a7 isInference:(BOOL)a8 error:(id *)a9
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33 = 0;
  objc_storeStrong(&v33, a4);
  v32 = a5;
  v31 = a6;
  v30 = 0;
  objc_storeStrong(&v30, a7);
  v29 = a8;
  v28 = a9;
  v9 = v35;
  v35 = 0;
  v27.receiver = v9;
  v27.super_class = AMDModelAssets;
  v35 = [(AMDModelAssets *)&v27 init];
  objc_storeStrong(&v35, v35);
  [v35 setContentToLogicalMap:0];
  [v35 setLogicalToContentMap:0];
  [v35 setUseBinaryInputMap:v32];
  [v35 setUseBinaryOutputMap:v31];
  [v35 setAssetsMetadata:v33];
  [v35 loadLToCMapFromDir:location[0] error:v28];
  if (*v28)
  {
    v36 = 0;
    v26 = 1;
  }

  else
  {
    if (!v29)
    {
      goto LABEL_11;
    }

    v25 = 0;
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", 0x2852B10E8, v30];
    v22 = v25;
    v13 = [AMDTasteProfile getFeatureValueWithName:v24 inDomain:@"apps" error:&v22];
    objc_storeStrong(&v25, v22);
    v23 = v13;
    if (!v13 || v25)
    {
      v26 = 0;
    }

    else
    {
      [v35 setMinimalMapPresent:1];
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        log = oslog;
        v12 = type;
        __os_log_helper_16_0_0(v19);
        _os_log_impl(&dword_240CB9000, log, v12, "Minimal map of content to logical Id is present. Skipping binary map loading", v19, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v36 = MEMORY[0x277D82BE0](v35);
      v26 = 1;
    }

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    if (!v26)
    {
LABEL_11:
      [v35 setMinimalMapPresent:0];
      [v35 loadCToLMapFromDir:location[0] error:v28];
      if (*v28)
      {
        v36 = 0;
      }

      else
      {
        v36 = MEMORY[0x277D82BE0](v35);
      }

      v26 = 1;
    }
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v35, 0);
  return v36;
}

- (BOOL)isValid
{
  v4 = [(AMDModelAssets *)self contentToLogicalMap];
  v5 = 0;
  if (!v4 || (v6 = [(AMDModelAssets *)self logicalToContentMap], v5 = 1, v3 = 1, !v6))
  {
    v3 = [(AMDModelAssets *)self minimalMapPresent];
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](v4);
  return v3;
}

@end