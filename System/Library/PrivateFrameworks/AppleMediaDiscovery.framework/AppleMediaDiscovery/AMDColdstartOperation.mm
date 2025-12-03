@interface AMDColdstartOperation
+ (id)computeUpdatedScoresV2:(id)v2 withModel:(id)model andMappingDictionary:(id)dictionary;
+ (id)ensureNewDirectoryForBinaryWithModelId:(id)id andVersion:(id)version;
+ (id)saveColdStartBinaryforModel:(id)model atLocation:(id)location withVersion:(id)version error:(id *)error;
@end

@implementation AMDColdstartOperation

+ (id)ensureNewDirectoryForBinaryWithModelId:(id)id andVersion:(id)version
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, id);
  v22 = 0;
  objc_storeStrong(&v22, version);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [defaultManager URLsForDirectory:14 inDomains:1];
  lastObject = [v12 lastObject];
  MEMORY[0x277D82BD8](v12);
  v19 = [lastObject URLByAppendingPathComponent:0x2852AD488];
  v18 = [v19 URLByAppendingPathComponent:@"coldstartBinaries"];
  v17 = [v18 URLByAppendingPathComponent:location[0]];
  if ([AMDMiscHelpers ensureDir:v17 removeIfExists:0])
  {
    stringValue = [v22 stringValue];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v8 = v4;
    MEMORY[0x277D82BD8](date);
    v14[1] = v8;
    v9 = [MEMORY[0x277CCABB0] numberWithLong:v8];
    v14[0] = [v9 stringValue];
    MEMORY[0x277D82BD8](v9);
    v10 = [v17 URLByAppendingPathComponent:stringValue];
    v13 = [v10 URLByAppendingPathComponent:v14[0]];
    MEMORY[0x277D82BD8](v10);
    if ([AMDMiscHelpers ensureDir:v13 removeIfExists:1])
    {
      v24 = MEMORY[0x277D82BE0](v13);
    }

    else
    {
      v24 = 0;
    }

    v16 = 1;
    objc_storeStrong(&v13, 0);
    objc_storeStrong(v14, 0);
    objc_storeStrong(&stringValue, 0);
  }

  else
  {
    v24 = 0;
    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&lastObject, 0);
  objc_storeStrong(&defaultManager, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  v5 = v24;

  return v5;
}

+ (id)saveColdStartBinaryforModel:(id)model atLocation:(id)location withVersion:(id)version error:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  v58 = 0;
  objc_storeStrong(&v58, location);
  v57 = 0;
  objc_storeStrong(&v57, version);
  errorCopy = error;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:v58])
  {
    v24 = MEMORY[0x277CBEA90];
    v25 = [MEMORY[0x277CBEBC0] fileURLWithPath:v58];
    v50 = [v24 dataWithContentsOfURL:?];
    MEMORY[0x277D82BD8](v25);
    v49 = 6;
    v7 = v50;
    v48 = crc32(0, ([v50 bytes] + 6), objc_msgSend(v50, "length") - 6);
    v8 = v50;
    bytes = [v50 bytes];
    v46 = bytes;
    v45 = *bytes;
    if (v45)
    {
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Format mismatch. Expected format:0 got:%d Binary cannot be processed for model: %@", v45, location[0]];
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v42 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v66, v44);
        _os_log_error_impl(&dword_240CB9000, oslog, v42, "%@", v66, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v23 = [AMDError allocError:7 withMessage:v44];
      v9 = v23;
      *errorCopy = v23;
      v60 = 0;
      v51 = 1;
      objc_storeStrong(&v44, 0);
    }

    else
    {
      v46 = (v46 + 2);
      v41 = *v46;
      if (v48 == v41)
      {
        v37 = [AMDColdstartOperation ensureNewDirectoryForBinaryWithModelId:location[0] andVersion:v57];
        v36 = [MEMORY[0x277CBEBC0] fileURLWithPath:v58 isDirectory:0];
        v21 = [v37 URLByAppendingPathComponent:@"coldstartbinary"];
        v35 = [v21 URLByAppendingPathExtension:@"bin"];
        MEMORY[0x277D82BD8](v21);
        if (([defaultManager copyItemAtURL:v36 toURL:v35 error:errorCopy] & 1) != 0 && !*errorCopy)
        {
          [defaultManager removeItemAtURL:v36 error:errorCopy];
          if (*errorCopy)
          {
            v30 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_1_8_64(v63, v58);
              _os_log_error_impl(&dword_240CB9000, v30, OS_LOG_TYPE_ERROR, "could not delete downloaded Coldstart binary at location: %@", v63, 0xCu);
            }

            objc_storeStrong(&v30, 0);
            v60 = 0;
            v51 = 1;
          }

          else
          {
            v61[0] = @"modelId";
            v62[0] = location[0];
            v61[1] = @"url";
            path = [v35 path];
            v62[1] = path;
            v61[2] = @"version";
            stringValue = [v57 stringValue];
            v62[2] = stringValue;
            v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:3];
            MEMORY[0x277D82BD8](stringValue);
            MEMORY[0x277D82BD8](path);
            v51 = 1;
          }
        }

        else
        {
          v34 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v33 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v17 = v34;
            v18 = v33;
            v20 = [MEMORY[0x277CBEBC0] URLWithString:v58];
            v15 = MEMORY[0x277D82BE0](v20);
            v32 = v15;
            v16 = v37;
            localizedDescription = [*errorCopy localizedDescription];
            v31 = MEMORY[0x277D82BE0](localizedDescription);
            __os_log_helper_16_2_3_8_64_8_64_8_64(v64, v15, v16, v31);
            _os_log_error_impl(&dword_240CB9000, v17, v18, "could not copy the compiled model from %@ to %@, %@", v64, 0x20u);
            MEMORY[0x277D82BD8](localizedDescription);
            MEMORY[0x277D82BD8](v20);
            objc_storeStrong(&v31, 0);
            objc_storeStrong(&v32, 0);
          }

          objc_storeStrong(&v34, 0);
          v60 = 0;
          v51 = 1;
        }

        objc_storeStrong(&v35, 0);
        objc_storeStrong(&v36, 0);
        objc_storeStrong(&v37, 0);
      }

      else
      {
        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"CRC value mismatch. Binary cannot be processed for model: %@", location[0]];
        v39 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v38 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v65, v40);
          _os_log_error_impl(&dword_240CB9000, v39, v38, "%@", v65, 0xCu);
        }

        objc_storeStrong(&v39, 0);
        v22 = [AMDError allocError:7 withMessage:v40];
        v10 = v22;
        *errorCopy = v22;
        v60 = 0;
        v51 = 1;
        objc_storeStrong(&v40, 0);
      }
    }

    objc_storeStrong(&v50, 0);
  }

  else
  {
    v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"Binary unavailable at path: %@ for model: %@", v58, location[0]];
    v53 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v67, v54);
      _os_log_error_impl(&dword_240CB9000, v53, type, "%@", v67, 0xCu);
    }

    objc_storeStrong(&v53, 0);
    v26 = [AMDError allocError:15 withMessage:v54];
    v6 = v26;
    *errorCopy = v26;
    v60 = 0;
    v51 = 1;
    objc_storeStrong(&v54, 0);
  }

  objc_storeStrong(&defaultManager, 0);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v11 = v60;

  return v11;
}

+ (id)computeUpdatedScoresV2:(id)v2 withModel:(id)model andMappingDictionary:(id)dictionary
{
  v131 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, v2);
  v118 = 0;
  objc_storeStrong(&v118, model);
  v117 = 0;
  objc_storeStrong(&v117, dictionary);
  [AMDPerf startMonitoringEvent:@"ColdStart"];
  v116 = 0;
  if (v118)
  {
    v110 = v116;
    v40 = [AMDColdstartURL getColdstartURLForModel:v118 error:&v110];
    objc_storeStrong(&v116, v110);
    v111 = v40;
    if (v116)
    {
      v118 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error retrieving binary file from Coredata for model: %@", v118];
      v108 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v107 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v129, v118);
        _os_log_error_impl(&dword_240CB9000, v108, v107, "%@", v129, 0xCu);
      }

      objc_storeStrong(&v108, 0);
      [AMDFrameworkMetrics log:v118 withKey:@"coldstartError" atVerbosity:2];
      v120 = 0;
      v112 = 1;
      objc_storeStrong(&v118, 0);
    }

    else if (v111)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      if ([defaultManager fileExistsAtPath:v111])
      {
        v98 = v116;
        v39 = [defaultManager attributesOfItemAtPath:v111 error:&v98];
        objc_storeStrong(&v116, v98);
        v99 = v39;
        if (v116)
        {
          v1182 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error extracting attributes of file: %@ for model: %@", v111, v118];
          v96 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v95 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v126, v1182);
            _os_log_error_impl(&dword_240CB9000, v96, v95, "%@", v126, 0xCu);
          }

          objc_storeStrong(&v96, 0);
          [AMDFrameworkMetrics log:v1182 withKey:@"coldstartError" atVerbosity:2];
          v120 = 0;
          v112 = 1;
          objc_storeStrong(&v1182, 0);
        }

        else
        {
          v37 = [v99 objectForKey:*MEMORY[0x277CCA1C0]];
          unsignedLongLongValue = [v37 unsignedLongLongValue];
          MEMORY[0x277D82BD8](v37);
          v94 = unsignedLongLongValue;
          v93 = (unsignedLongLongValue - 6) / 0x14uLL;
          v92 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v91 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_2_2_8_64_8_64(v125, v111, v118);
            _os_log_debug_impl(&dword_240CB9000, v92, v91, "Loading Coldstart binary: %@ for model: %@", v125, 0x16u);
          }

          objc_storeStrong(&v92, 0);
          v36 = MEMORY[0x277CBEA90];
          v35 = [MEMORY[0x277CBEBC0] fileURLWithPath:v111];
          v90 = [v36 dataWithContentsOfURL:?];
          MEMORY[0x277D82BD8](v35);
          if (v90)
          {
            v86 = [v117 count];
            v85 = v86;
            v84 = objc_opt_new();
            v34 = v117;
            v78 = MEMORY[0x277D85DD0];
            v79 = -1073741824;
            v80 = 0;
            v81 = __79__AMDColdstartOperation_computeUpdatedScoresV2_withModel_andMappingDictionary___block_invoke;
            v82 = &unk_278CB64D0;
            v83 = MEMORY[0x277D82BE0](v84);
            [v34 enumerateKeysAndObjectsUsingBlock:&v78];
            v77 = [v84 copy];
            v76 = [v117 mutableCopy];
            v75 = malloc_type_malloc(4 * v93, 0x100004052888210uLL);
            v74 = malloc_type_malloc(4 * v93, 0x100004052888210uLL);
            v73 = malloc_type_malloc(4 * v93, 0x100004052888210uLL);
            v72 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v75 length:malloc_size(v75)];
            v71 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v74 length:malloc_size(v74)];
            v70 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v73 length:malloc_size(v73)];
            v69 = 0;
            v33 = v90;
            v5 = v90;
            bytes = [v33 bytes];
            v67 = (bytes + 6);
            v66 = 0;
            while (v66 < v93)
            {
              v65 = *v67;
              v32 = v77;
              v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v65];
              v30 = [v32 objectForKey:?];
              MEMORY[0x277D82BD8](v30);
              MEMORY[0x277D82BD8](v31);
              if (v30)
              {
                v67 = (v67 + 20);
                ++v66;
              }

              else
              {
                v29 = v84;
                v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v65];
                v27 = [v29 objectForKey:?];
                MEMORY[0x277D82BD8](v27);
                MEMORY[0x277D82BD8](v28);
                if (v27)
                {
                  v20 = v84;
                  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v65];
                  v64 = [v20 objectForKey:?];
                  MEMORY[0x277D82BD8](v19);
                  v75[v66] = [v64 intValue];
                  objc_storeStrong(&v64, 0);
                }

                else
                {
                  v26 = v84;
                  v25 = [MEMORY[0x277CCABB0] numberWithInt:v85];
                  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v65];
                  [v26 setObject:v25 forKey:?];
                  MEMORY[0x277D82BD8](v24);
                  MEMORY[0x277D82BD8](v25);
                  v23 = v76;
                  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v65];
                  v21 = [MEMORY[0x277CCABB0] numberWithInt:v85];
                  [v23 setObject:v22 forKey:?];
                  MEMORY[0x277D82BD8](v21);
                  MEMORY[0x277D82BD8](v22);
                  v75[v66] = v85++;
                }

                v63 = *++v67;
                v18 = v84;
                v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63];
                v62 = [v18 objectForKey:?];
                MEMORY[0x277D82BD8](v17);
                v74[v66] = [v62 intValue];
                v61 = *++v67;
                v67 = (v67 + 4);
                v73[v66++] = v61;
                objc_storeStrong(&v62, 0);
              }
            }

            v60 = v66;
            v59 = 1;
            v58 = 0;
            memset(__b, 0, sizeof(__b));
            v56 = 0;
            SparseConvertFromCoordinate(0, v75, v74, v73, v85, v86, v66, 1u, __b);
            v55 = malloc_type_malloc(4 * v93, 0x100004052888210uLL);
            v54 = malloc_type_malloc(4 * v85, 0x100004052888210uLL);
            v53 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v55 length:malloc_size(v55)];
            v52 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v54 length:malloc_size(v54)];
            for (i = 0; i < [location[0] count]; ++i)
            {
              v16 = [location[0] objectAtIndex:i];
              [v16 floatValue];
              *(v55 + i) = v6;
              MEMORY[0x277D82BD8](v16);
            }

            *&v50.count = v86;
            v50.data = v55;
            v49 = 0;
            v49.count = v85;
            v49.data = v54;
            memcpy(&__dst, __b, sizeof(__dst));
            *&v133.count = v86;
            v133.data = v55;
            *&v134.count = *&v49.count;
            v134.data = v54;
            SparseMultiply(&__dst, v133, v134);
            for (j = 0; j < v86; ++j)
            {
              *(v54 + j) = *(v55 + j);
            }

            v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v85];
            v7 = v69;
            v69 = v15;
            MEMORY[0x277D82BD8](v7);
            for (k = 0; k < v85; ++k)
            {
              v14 = v69;
              LODWORD(v8) = *(v54 + k);
              v13 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
              [v14 addObject:?];
              MEMORY[0x277D82BD8](v13);
            }

            v45 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v12 = [MEMORY[0x277CCABB0] numberWithInt:v86];
            [v45 setObject:? forKey:?];
            MEMORY[0x277D82BD8](v12);
            v11 = [MEMORY[0x277CCABB0] numberWithInt:v85];
            [v45 setObject:? forKey:?];
            MEMORY[0x277D82BD8](v11);
            [AMDFrameworkMetrics log:v45 withKey:@"coldstartSummary" atVerbosity:2];
            [AMDPerf endMonitoringEvent:@"ColdStart"];
            objc_storeStrong(&v45, 0);
            objc_storeStrong(&v52, 0);
            objc_storeStrong(&v53, 0);
            if (v69)
            {
              v121[0] = @"recomputedScores";
              v122[0] = v69;
              v121[1] = @"updatedRemapdict";
              v122[1] = v76;
              v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:2];
              v112 = 1;
            }

            else
            {
              v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Coldstart: Error computing updated scores"];
              oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_2_1_8_64(v123, v44);
                _os_log_error_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_ERROR, "%@", v123, 0xCu);
              }

              objc_storeStrong(&oslog, 0);
              [AMDFrameworkMetrics log:v44 withKey:@"coldstartError" atVerbosity:2];
              v120 = 0;
              v112 = 1;
              objc_storeStrong(&v44, 0);
            }

            objc_storeStrong(&v69, 0);
            objc_storeStrong(&v70, 0);
            objc_storeStrong(&v71, 0);
            objc_storeStrong(&v72, 0);
            objc_storeStrong(&v76, 0);
            objc_storeStrong(&v77, 0);
            objc_storeStrong(&v83, 0);
            objc_storeStrong(&v84, 0);
          }

          else
          {
            v111 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not read from file %@", v111];
            v88 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v87 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_1_8_64(v124, v111);
              _os_log_error_impl(&dword_240CB9000, v88, v87, "%@", v124, 0xCu);
            }

            objc_storeStrong(&v88, 0);
            [AMDFrameworkMetrics log:v111 withKey:@"coldstartError" atVerbosity:2];
            v120 = 0;
            v112 = 1;
            objc_storeStrong(&v111, 0);
          }

          objc_storeStrong(&v90, 0);
        }

        objc_storeStrong(&v99, 0);
      }

      else
      {
        v1183 = [MEMORY[0x277CCACA8] stringWithFormat:@"Binary unavailable at path: %@ for model: %@", v111, v118];
        v101 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v100 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v127, v1183);
          _os_log_error_impl(&dword_240CB9000, v101, v100, "%@", v127, 0xCu);
        }

        objc_storeStrong(&v101, 0);
        [AMDFrameworkMetrics log:v1183 withKey:@"coldstartError" atVerbosity:2];
        v120 = 0;
        v112 = 1;
        objc_storeStrong(&v1183, 0);
      }

      objc_storeStrong(&defaultManager, 0);
    }

    else
    {
      v1184 = [MEMORY[0x277CCACA8] stringWithFormat:@"Coldstart binary missing for model: %@", v118];
      v105 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v104 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v128, v1184);
        _os_log_error_impl(&dword_240CB9000, v105, v104, "%@", v128, 0xCu);
      }

      objc_storeStrong(&v105, 0);
      [AMDFrameworkMetrics log:v1184 withKey:@"coldstartError" atVerbosity:2];
      v120 = 0;
      v112 = 1;
      objc_storeStrong(&v1184, 0);
    }

    objc_storeStrong(&v111, 0);
  }

  else
  {
    v115 = [MEMORY[0x277CCACA8] stringWithFormat:@"Coldstart modelId being passed is nil"];
    v114 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v130, v115);
      _os_log_error_impl(&dword_240CB9000, v114, type, "%@", v130, 0xCu);
    }

    objc_storeStrong(&v114, 0);
    [AMDFrameworkMetrics log:v115 withKey:@"coldstartError" atVerbosity:2];
    v120 = 0;
    v112 = 1;
    objc_storeStrong(&v115, 0);
  }

  objc_storeStrong(&v116, 0);
  objc_storeStrong(&v117, 0);
  objc_storeStrong(&v118, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v120;

  return v9;
}

void __79__AMDColdstartOperation_computeUpdatedScoresV2_withModel_andMappingDictionary___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] setObject:location[0] forKeyedSubscript:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end