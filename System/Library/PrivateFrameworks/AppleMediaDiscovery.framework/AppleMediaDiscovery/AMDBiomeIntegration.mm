@interface AMDBiomeIntegration
+ (id)createRowSetFrom:(id)a3 withFetchDescriptor:(id)a4;
+ (id)fetchDataFromStream:(id)a3 usingDescriptor:(id)a4 error:(id *)a5;
+ (id)fetchLatestEventTimestampFromEvents:(id)a3;
+ (id)fetchLatestRowsFromStream:(id)a3 withFields:(id)a4 withBiomeTimestampDict:(id)a5 error:(id *)a6;
+ (id)queryBiomeFor:(id)a3 withError:(id *)a4;
+ (id)queryBiomeStream:(id)a3 withEventFields:(id)a4 fromTimestamp:(id)a5 error:(id *)a6;
+ (id)runBiomeQuery:(id)a3 error:(id *)a4;
+ (id)writeToAppLanguageBiomeStream:(id)a3 withError:(id *)a4;
+ (id)writeToBiome:(id)a3 withError:(id *)a4;
@end

@implementation AMDBiomeIntegration

+ (id)queryBiomeFor:(id)a3 withError:(id *)a4
{
  v160 = *MEMORY[0x277D85DE8];
  v147 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v145 = a4;
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    log = oslog;
    v64 = type;
    __os_log_helper_16_0_0(v142);
    _os_log_impl(&dword_240CB9000, log, v64, "Loading new Biome events", v142, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v141 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!location[0])
  {
    v140 = MEMORY[0x277D82BE0](@"Nil config passed for Biome Data refresh");
    v62 = [AMDMiscHelpers logAndCreateError:3 errorMessage:v140];
    v4 = v62;
    *v145 = v62;
    v148 = 0;
    v139 = 1;
    objc_storeStrong(&v140, 0);
    goto LABEL_110;
  }

  v138 = [location[0] objectForKey:@"requestArray"];
  if (!v138)
  {
    v137 = MEMORY[0x277D82BE0](@"Nil config passed for Biome Data refresh");
    v61 = [AMDMiscHelpers logAndCreateError:3 errorMessage:v137];
    v5 = v61;
    *v145 = v61;
    v148 = 0;
    v139 = 1;
    objc_storeStrong(&v137, 0);
    goto LABEL_109;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v136 = MEMORY[0x277D82BE0](@"Invalid payload type passed from the server for Biome Data refresh");
    v60 = [AMDMiscHelpers logAndCreateError:3 errorMessage:v136];
    v6 = v60;
    *v145 = v60;
    v148 = 0;
    v139 = 1;
    objc_storeStrong(&v136, 0);
    goto LABEL_109;
  }

  v135 = MEMORY[0x277D82BE0](v138);
  v134 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v133 = [AMDKVStore fetchValueForKey:@"biome_timestamps_dict" error:v145];
  if (*v145)
  {
    v57 = MEMORY[0x277CCACA8];
    v58 = [*v145 localizedDescription];
    v132 = [v57 stringWithFormat:@"Biome book-keeping dict could not be fetched: %@", v58];
    MEMORY[0x277D82BD8](v58);
    v59 = [AMDMiscHelpers logAndCreateError:3 errorMessage:v132];
    v7 = v59;
    *v145 = v59;
    v148 = 0;
    v139 = 1;
    objc_storeStrong(&v132, 0);
    goto LABEL_108;
  }

  if (!v133)
  {
    v133 = objc_alloc_init(MEMORY[0x277CBEB38]);
    MEMORY[0x277D82BD8](0);
  }

  v131 = objc_alloc_init(MEMORY[0x277CBEB38]);
  for (i = 0; ; ++i)
  {
    v56 = i;
    if (v56 >= [v135 count])
    {
      break;
    }

    v129 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v128 = [v135 objectAtIndex:i];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v124 = MEMORY[0x277D82BE0](v128);
      v123 = [v124 objectForKey:@"streamName"];
      v122 = [v124 objectForKey:@"fieldsRequired"];
      v121 = [v124 objectForKey:@"type"];
      v120 = [v124 objectForKey:@"fetchDescriptor"];
      v119 = [v124 objectForKey:@"persistanceRequired"];
      v118 = [v124 objectForKey:@"featureTransformations"];
      v117 = 0;
      if (v121)
      {
        objc_storeStrong(&v117, v121);
      }

      else
      {
        objc_storeStrong(&v117, @"RefreshDB");
      }

      if (!v123 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v116 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream Name missing/incorrectly formatted in the stream dictionary at index:%d", i];
        v115 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v114 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
        {
          v52 = v115;
          v53 = v114;
          __os_log_helper_16_2_1_8_64(v158, v116);
          _os_log_error_impl(&dword_240CB9000, v52, v53, "%@", v158, 0xCu);
        }

        objc_storeStrong(&v115, 0);
        [v129 setObject:v116 forKey:@"biomeError"];
        [v134 addObject:v129];
        v139 = 4;
        objc_storeStrong(&v116, 0);
        goto LABEL_103;
      }

      v113 = MEMORY[0x277D82BE0](v123);
      v112 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v111 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
      {
        v50 = v112;
        v51 = v111;
        __os_log_helper_16_2_2_8_64_8_64(v157, v117, v113);
        _os_log_impl(&dword_240CB9000, v50, v51, "Running biome query operation: %@ for stream: %@", v157, 0x16u);
      }

      objc_storeStrong(&v112, 0);
      v110 = 0;
      if (([v117 isEqualToString:@"Retrieve"] & 1) == 0)
      {
        if ([v117 isEqualToString:@"RefreshDB"])
        {
          if (!v122)
          {
            v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fields required parameter missing in the stream dictionary for the data fetch operation at index: %d", i];
            v75 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v74 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              v17 = v75;
              v18 = v74;
              __os_log_helper_16_2_1_8_64(v150, v76);
              _os_log_error_impl(&dword_240CB9000, v17, v18, "%@", v150, 0xCu);
            }

            objc_storeStrong(&v75, 0);
            [v129 setObject:v76 forKey:@"biomeError"];
            [v134 addObject:v129];
            v139 = 4;
            objc_storeStrong(&v76, 0);
            goto LABEL_102;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v73 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fields required parameter incorrectly formatted in the stream dictionary at index: %d", i];
            v72 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v71 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              v15 = v72;
              v16 = v71;
              __os_log_helper_16_2_1_8_64(v149, v73);
              _os_log_error_impl(&dword_240CB9000, v15, v16, "%@", v149, 0xCu);
            }

            objc_storeStrong(&v72, 0);
            [v129 setObject:v73 forKey:@"biomeError"];
            [v134 addObject:v129];
            v139 = 4;
            objc_storeStrong(&v73, 0);
            goto LABEL_102;
          }

          v70 = MEMORY[0x277D82BE0](v122);
          if ([v70 count])
          {
            v68 = v110;
            v14 = [v147 fetchLatestRowsFromStream:v113 withFields:v70 withBiomeTimestampDict:v133 error:&v68];
            objc_storeStrong(&v110, v68);
            v69 = v14;
            if (v110)
            {
              v12 = v129;
              v13 = [v110 localizedDescription];
              [v12 setObject:? forKey:?];
              MEMORY[0x277D82BD8](v13);
              [v134 addObject:v129];
              v139 = 4;
            }

            else
            {
              if (v69)
              {
                [v129 setObject:v69 forKey:v113];
              }

              v139 = 0;
            }

            objc_storeStrong(&v69, 0);
          }

          else
          {
            [v129 setObject:@"No fields requested" forKey:v113];
            v139 = 4;
          }

          objc_storeStrong(&v70, 0);
          if (v139)
          {
            goto LABEL_102;
          }

          goto LABEL_101;
        }

        [v129 setObject:@"Invalid action" forKey:v113];
        [v134 addObject:v129];
        v139 = 4;
LABEL_102:
        objc_storeStrong(&v110, 0);
        objc_storeStrong(&v113, 0);
LABEL_103:
        objc_storeStrong(&v117, 0);
        objc_storeStrong(&v118, 0);
        objc_storeStrong(&v119, 0);
        objc_storeStrong(&v120, 0);
        objc_storeStrong(&v121, 0);
        objc_storeStrong(&v122, 0);
        objc_storeStrong(&v123, 0);
        objc_storeStrong(&v124, 0);
        goto LABEL_104;
      }

      if (!v120)
      {
        v109 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fetch descriptor missing in the stream dictionary for the data aggregation operation at index: %d", i];
        v108 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v107 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          v48 = v108;
          v49 = v107;
          __os_log_helper_16_2_1_8_64(v156, v109);
          _os_log_error_impl(&dword_240CB9000, v48, v49, "%@", v156, 0xCu);
        }

        objc_storeStrong(&v108, 0);
        [v129 setObject:v109 forKey:@"biomeError"];
        [v134 addObject:v129];
        v139 = 4;
        objc_storeStrong(&v109, 0);
        goto LABEL_102;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v106 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fetch descriptor dict parameter incorrectly formatted in the stream dictionary at index: %d", i];
        v105 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v104 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
        {
          v46 = v105;
          v47 = v104;
          __os_log_helper_16_2_1_8_64(v155, v106);
          _os_log_error_impl(&dword_240CB9000, v46, v47, "%@", v155, 0xCu);
        }

        objc_storeStrong(&v105, 0);
        [v129 setObject:v106 forKey:@"biomeError"];
        [v134 addObject:v129];
        v139 = 4;
        objc_storeStrong(&v106, 0);
        goto LABEL_102;
      }

      v103 = 0;
      if (v119)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v119 BOOLValue])
        {
          v103 = 1;
        }
      }

      v102 = MEMORY[0x277D82BE0](v120);
      v101 = +[AMDSQLite getSharedInstance];
      if (([v101 isUsable] & 1) == 0)
      {
        v100 = [v101 connectionState];
        v99 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLite database is not usable: %@", v100];
        v98 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v97 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          v44 = v98;
          v45 = v97;
          __os_log_helper_16_2_1_8_64(v154, v99);
          _os_log_error_impl(&dword_240CB9000, v44, v45, "%@", v154, 0xCu);
        }

        objc_storeStrong(&v98, 0);
        [v129 setObject:v99 forKey:v113];
        [v134 addObject:v129];
        v139 = 4;
        objc_storeStrong(&v99, 0);
        objc_storeStrong(&v100, 0);
LABEL_79:
        objc_storeStrong(&v101, 0);
        objc_storeStrong(&v102, 0);
        if (!v139)
        {
LABEL_101:
          v139 = 0;
        }

        goto LABEL_102;
      }

      v41 = [AMDFetchDescriptor alloc];
      v40 = v102;
      v43 = [v101 getDataSchema];
      v95 = v110;
      v42 = [AMDFetchDescriptor initWithDict:v41 usingSchema:"initWithDict:usingSchema:error:" error:v40];
      objc_storeStrong(&v110, v95);
      v96 = v42;
      MEMORY[0x277D82BD8](v43);
      if (v110)
      {
        v94 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v93 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          v37 = v94;
          v38 = v93;
          v39 = [v110 localizedDescription];
          v92 = MEMORY[0x277D82BE0](v39);
          __os_log_helper_16_2_1_8_64(v153, v92);
          _os_log_error_impl(&dword_240CB9000, v37, v38, "%@", v153, 0xCu);
          MEMORY[0x277D82BD8](v39);
          objc_storeStrong(&v92, 0);
        }

        objc_storeStrong(&v94, 0);
        v35 = v129;
        v36 = [v110 localizedDescription];
        [v35 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v36);
        [v134 addObject:v129];
        v139 = 4;
        goto LABEL_78;
      }

      if (!v96)
      {
        v91 = MEMORY[0x277D82BE0](@"Internal logic error: Nil Fetch descriptor object");
        v90 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v89 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          v33 = v90;
          v34 = v89;
          __os_log_helper_16_2_1_8_64(v152, v91);
          _os_log_error_impl(&dword_240CB9000, v33, v34, "%@", v152, 0xCu);
        }

        objc_storeStrong(&v90, 0);
        [v129 setObject:v91 forKey:v113];
        [v134 addObject:v129];
        v139 = 4;
        objc_storeStrong(&v91, 0);
        goto LABEL_78;
      }

      v87 = v110;
      v32 = [v147 fetchDataFromStream:v113 usingDescriptor:v96 error:&v87];
      objc_storeStrong(&v110, v87);
      v88 = v32;
      if (v110)
      {
        v86 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v85 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          v29 = v86;
          v30 = v85;
          v31 = [v110 localizedDescription];
          v84 = MEMORY[0x277D82BE0](v31);
          __os_log_helper_16_2_1_8_64(v151, v84);
          _os_log_error_impl(&dword_240CB9000, v29, v30, "%@", v151, 0xCu);
          MEMORY[0x277D82BD8](v31);
          objc_storeStrong(&v84, 0);
        }

        objc_storeStrong(&v86, 0);
        v27 = v129;
        v28 = [v110 localizedDescription];
        [v27 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v28);
        [v134 addObject:v129];
        v139 = 4;
      }

      else if (v88)
      {
        if (v103)
        {
          v79 = v110;
          v24 = [v96 persist:v88 error:&v79];
          objc_storeStrong(&v110, v79);
          v80 = v24;
          if (v110)
          {
            v22 = v129;
            v23 = [v110 localizedDescription];
            [v22 setObject:? forKey:?];
            MEMORY[0x277D82BD8](v23);
            [v134 addObject:v129];
            v139 = 4;
          }

          else
          {
            if (v80)
            {
              [v129 setObject:v80 forKey:@"resultSetPersistSummary"];
            }

            v139 = 0;
          }

          objc_storeStrong(&v80, 0);
          if (v139)
          {
            goto LABEL_77;
          }
        }

        else
        {
          v78 = 0;
          if (v118)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_storeStrong(&v78, v118);
            }
          }

          v77 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v77 setObject:v88 forKey:@"featureData"];
          if (v78)
          {
            [v77 setObject:v78 forKey:@"featureTransformations"];
          }

          v20 = v131;
          v19 = v77;
          v21 = [v96 getId];
          [v20 setObject:v19 forKey:?];
          MEMORY[0x277D82BD8](v21);
          objc_storeStrong(&v77, 0);
          objc_storeStrong(&v78, 0);
        }

        v139 = 0;
      }

      else
      {
        v83 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v82 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          v25 = v83;
          v26 = v82;
          __os_log_helper_16_0_0(v81);
          _os_log_error_impl(&dword_240CB9000, v25, v26, "Nil rowset returned", v81, 2u);
        }

        objc_storeStrong(&v83, 0);
        [v129 setObject:@"Nil rowset for aggregation" forKey:v113];
        [v134 addObject:v129];
        v139 = 4;
      }

LABEL_77:
      objc_storeStrong(&v88, 0);
LABEL_78:
      objc_storeStrong(&v96, 0);
      goto LABEL_79;
    }

    v127 = [MEMORY[0x277CCACA8] stringWithFormat:@"Biome stream object not a dictionary at index:%d", i];
    v126 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v125 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
    {
      v54 = v126;
      v55 = v125;
      __os_log_helper_16_2_1_8_64(v159, v127);
      _os_log_error_impl(&dword_240CB9000, v54, v55, "%@", v159, 0xCu);
    }

    objc_storeStrong(&v126, 0);
    [v129 setObject:v127 forKey:@"biomeError"];
    [v134 addObject:v129];
    v139 = 4;
    objc_storeStrong(&v127, 0);
LABEL_104:
    objc_storeStrong(&v128, 0);
    objc_storeStrong(&v129, 0);
  }

  v67 = 0;
  v66 = 0;
  [AMDKVStore setValue:v133 forKey:@"biome_timestamps_dict" error:&v66];
  objc_storeStrong(&v67, v66);
  if (v67)
  {
    v10 = v141;
    v11 = [v67 localizedDescription];
    [v10 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v11);
  }

  [v141 setObject:v134 forKey:@"biomeUpdateSummaries"];
  [AMDFrameworkMetrics log:v141 withKey:@"biomeQuerySummary" atVerbosity:0];
  v148 = MEMORY[0x277D82BE0](v131);
  v139 = 1;
  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v131, 0);
LABEL_108:
  objc_storeStrong(&v133, 0);
  objc_storeStrong(&v134, 0);
  objc_storeStrong(&v135, 0);
LABEL_109:
  objc_storeStrong(&v138, 0);
LABEL_110:
  objc_storeStrong(&v141, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v8 = v148;

  return v8;
}

+ (id)queryBiomeStream:(id)a3 withEventFields:(id)a4 fromTimestamp:(id)a5 error:(id *)a6
{
  obj = a4;
  v21 = a5;
  v22 = a6;
  v33 = *MEMORY[0x277D85DE8];
  v31 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, obj);
  v28 = 0;
  objc_storeStrong(&v28, v21);
  v27 = v22;
  v26 = [v29 componentsJoinedByString:{@", "}];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@ FROM %@", v26, location[0]];
  if (v28)
  {
    v18 = v25;
    v17 = MEMORY[0x277CCACA8];
    [v28 doubleValue];
    v19 = [v17 stringWithFormat:@" WHERE eventTimestamp > %f", v6];
    v7 = [v18 stringByAppendingString:?];
    v8 = v25;
    v25 = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v19);
  }

  v24 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v23 = 1;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    log = v24;
    *type = v23;
    buf = v32;
    __os_log_helper_16_2_1_8_64(v32, v25);
    _os_log_impl(&dword_240CB9000, log, type[0], "Query string for biome data fetch operation: %@", buf, 0xCu);
  }

  v13 = 0;
  objc_storeStrong(&v24, 0);
  v11 = &v25;
  v12 = [v31 runBiomeQuery:v25 error:v27];
  objc_storeStrong(v11, v13);
  objc_storeStrong(&v26, v13);
  objc_storeStrong(&v28, v13);
  objc_storeStrong(&v29, v13);
  objc_storeStrong(location, v13);
  *MEMORY[0x277D85DE8];
  v9 = v12;

  return v9;
}

+ (id)fetchLatestEventTimestampFromEvents:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = -1.0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v14 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
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

      v17 = *(__b[1] + 8 * v11);
      v15 = v18;
      v7 = [v17 objectForKey:@"eventTimestamp"];
      [v7 doubleValue];
      v8 = v3;
      MEMORY[0x277D82BD8](v7);
      if (v15 >= v8)
      {
        v6 = v15;
      }

      else
      {
        v6 = v8;
      }

      v18 = v6;
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  if (v18 >= 0.0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  }

  else
  {
    v20 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v20;

  return v4;
}

+ (id)runBiomeQuery:(id)a3 error:(id *)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = objc_alloc_init(MEMORY[0x277CF1A88]);
  v16 = [v17 executeQuery:{@"%@", location[0]}];
  while (([v16 next] & 1) != 0)
  {
    v13 = [v16 row];
    MEMORY[0x277D82BD8](v13);
    if (v13)
    {
      v12 = [v16 row];
      [v18 addObject:?];
      MEMORY[0x277D82BD8](v12);
    }
  }

  v11 = [v16 error];
  MEMORY[0x277D82BD8](v11);
  if (v11)
  {
    v7 = MEMORY[0x277CCACA8];
    v9 = [v16 error];
    v8 = [v9 localizedDescription];
    v15 = [v7 stringWithFormat:@"Biome query failure: %@", v8];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    v10 = [AMDMiscHelpers logAndCreateError:3 errorMessage:v15];
    v4 = v10;
    *v19 = v10;
    v21 = 0;
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v21 = MEMORY[0x277D82BE0](v18);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  v5 = v21;

  return v5;
}

+ (id)fetchLatestRowsFromStream:(id)a3 withFields:(id)a4 withBiomeTimestampDict:(id)a5 error:(id *)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v33 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = 0;
  objc_storeStrong(&v30, a5);
  v29 = a6;
  v28 = [v30 objectForKey:location[0]];
  v27 = [v33 queryBiomeStream:location[0] withEventFields:v31 fromTimestamp:v28 error:a6];
  if (*a6)
  {
    v34 = 0;
    v26 = 1;
  }

  else
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    memset(__b, 0, sizeof(__b));
    v14 = MEMORY[0x277D82BE0](v27);
    v15 = [v14 countByEnumeratingWithState:__b objects:v37 count:16];
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

        v24 = *(__b[1] + 8 * v12);
        v22 = [v24 mutableCopy];
        v8 = v22;
        v9 = [v22 objectForKey:@"eventTimestamp"];
        [v8 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v9);
        [v25 addObject:v22];
        objc_storeStrong(&v22, 0);
        ++v12;
        if (v10 + 1 >= v13)
        {
          v12 = 0;
          v13 = [v14 countByEnumeratingWithState:__b objects:v37 count:16];
          if (!v13)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v14);
    v35[0] = 0x2852A9148;
    v36[0] = location[0];
    v35[1] = 0x2852A9128;
    v36[1] = v25;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v20 = [AMDSQLite saveEvents:v21 error:v29];
    if (*v29)
    {
      v34 = 0;
      v26 = 1;
    }

    else
    {
      v19 = [v33 fetchLatestEventTimestampFromEvents:v27];
      if (v19)
      {
        [v30 setObject:v19 forKey:location[0]];
      }

      v34 = MEMORY[0x277D82BE0](v20);
      v26 = 1;
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v25, 0);
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v34;

  return v6;
}

+ (id)fetchDataFromStream:(id)a3 usingDescriptor:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = a5;
  v14 = [v16 getStatement];
  v13 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v12 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v20, v14);
    _os_log_impl(&dword_240CB9000, v13, v12, "Biome SQL Query statement: %@", v20, 0xCu);
  }

  objc_storeStrong(&v13, 0);
  v11 = [v18 runBiomeQuery:v14 error:v15];
  if (*v15)
  {
    v19 = 0;
    v10 = 1;
  }

  else if (v11)
  {
    v9 = [v18 createRowSetFrom:v11 withFetchDescriptor:v16];
    v19 = MEMORY[0x277D82BE0](v9);
    v10 = 1;
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v19 = 0;
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v5 = v19;

  return v5;
}

+ (id)createRowSetFrom:(id)a3 withFetchDescriptor:(id)a4
{
  v43[2] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = [v37 getColumnSpecs];
  v35 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v36, "count")}];
  v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v36, "count")}];
  for (i = 0; ; ++i)
  {
    v21 = i;
    if (v21 >= [v36 count])
    {
      break;
    }

    v32 = [v36 objectAtIndex:i];
    v31 = [v32 getSelectColumnName];
    v30 = [v32 getTypeString];
    v16 = v34;
    v42[0] = @"name";
    v43[0] = v31;
    v42[1] = AMD_SQLITE_TYPE;
    v43[1] = v30;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
    [v16 addObject:?];
    MEMORY[0x277D82BD8](v17);
    v19 = v35;
    v18 = objc_alloc(MEMORY[0x277CBEB18]);
    v20 = [v18 initWithCapacity:{objc_msgSend(location[0], "count")}];
    [v19 addObject:?];
    MEMORY[0x277D82BD8](v20);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v32, 0);
  }

  memset(__b, 0, sizeof(__b));
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = [v14 countByEnumeratingWithState:__b objects:v41 count:16];
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

      v29 = *(__b[1] + 8 * v12);
      if (v29)
      {
        for (j = 0; ; ++j)
        {
          v9 = j;
          if (v9 >= [v36 count])
          {
            break;
          }

          v26 = [v36 objectAtIndex:j];
          v25 = [v26 getSelectColumnName];
          v24 = [v29 objectForKey:v25];
          if (v24)
          {
            v8 = [v35 objectAtIndex:j];
            [v8 addObject:v24];
            MEMORY[0x277D82BD8](v8);
          }

          else
          {
            v4 = [MEMORY[0x277CBEB68] null];
            v5 = v24;
            v24 = v4;
            MEMORY[0x277D82BD8](v5);
          }

          objc_storeStrong(&v24, 0);
          objc_storeStrong(&v25, 0);
          objc_storeStrong(&v26, 0);
        }
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [v14 countByEnumeratingWithState:__b objects:v41 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v14);
  v39[0] = 0x2852A9348;
  v40[0] = v34;
  v39[1] = 0x2852A9368;
  v40[1] = v35;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v7 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)writeToBiome:(id)a3 withError:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = a4;
  if (location[0])
  {
    v24 = [location[0] objectForKey:@"requestArray"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x277D82BE0](v24);
      v15 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
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
            objc_enumerationMutation(obj);
          }

          v22 = *(__b[1] + 8 * v12);
          v20 = [v24 objectForKey:v22];
          if ([v22 isEqualToString:@"AppLanguageConsumption"])
          {
            v19 = [v28 writeToAppLanguageBiomeStream:v20 withError:v26];
            [v23 setObject:v19 forKey:v22];
            objc_storeStrong(&v19, 0);
            v25 = 0;
          }

          else
          {
            v9 = [AMDMiscHelpers logAndCreateError:3 errorMessage:@"Biome write is not supported for the current stream"];
            v6 = v9;
            *v26 = v9;
            v29 = 0;
            v25 = 1;
          }

          objc_storeStrong(&v20, 0);
          if (v25)
          {
            break;
          }

          ++v12;
          if (v10 + 1 >= v13)
          {
            v12 = 0;
            v13 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
            if (!v13)
            {
              goto LABEL_15;
            }
          }
        }
      }

      else
      {
LABEL_15:
        v25 = 0;
      }

      MEMORY[0x277D82BD8](obj);
      if (!v25)
      {
        v29 = MEMORY[0x277D82BE0](v23);
        v25 = 1;
      }

      objc_storeStrong(&v23, 0);
    }

    else
    {
      v16 = [AMDMiscHelpers logAndCreateError:3 errorMessage:@"Biome write streams payload is invalid"];
      v5 = v16;
      *v26 = v16;
      v29 = 0;
      v25 = 1;
    }

    objc_storeStrong(&v24, 0);
  }

  else
  {
    v17 = [AMDMiscHelpers logAndCreateError:3 errorMessage:@"Biome write payload is nil"];
    v4 = v17;
    *v26 = v17;
    v29 = 0;
    v25 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v29;

  return v7;
}

+ (id)writeToAppLanguageBiomeStream:(id)a3 withError:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30[1] = a4;
  v30[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = 0;
  v16 = BiomeLibrary();
  v15 = [v16 App];
  v28 = [v15 LanguageConsumption];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v27 = [v28 source];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v18 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
  if (v18)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v18;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(__b[1] + 8 * v12);
      v24 = [v26 objectForKey:@"dataSource"];
      if (!v24)
      {
        objc_storeStrong(&v24, &unk_2852BA710);
      }

      v23 = [v26 objectForKey:@"adamId"];
      v22 = [v26 objectForKey:@"contentLanguage"];
      v21 = [v26 objectForKey:@"contentGenre"];
      v20 = [v26 objectForKey:@"timeSpent"];
      v9 = objc_alloc(MEMORY[0x277CF1000]);
      v4 = [v24 intValue];
      v19 = [v9 initWithDataSource:v4 adamID:v23 contentLanguage:v22 contentGenre:v21 timeSpent:v20];
      [v27 sendEvent:v19];
      ++v29;
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v6 = v30[0];
  v7 = [MEMORY[0x277CCABB0] numberWithLong:v29];
  [v6 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v7);
  v8 = MEMORY[0x277D82BE0](v30[0]);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

@end