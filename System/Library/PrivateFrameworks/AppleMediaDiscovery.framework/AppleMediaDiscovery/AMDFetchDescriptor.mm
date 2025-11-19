@interface AMDFetchDescriptor
+ (char)getCodeForSaveAsType:(id)a3;
+ (id)extractPart:(id)a3 from:(id)a4 required:(BOOL)a5 error:(id *)a6;
+ (id)refreshAggregationDescriptors:(id)a3 forDomain:(id)a4 error:(id *)a5;
- (AMDFetchDescriptor)initWithDict:(id)a3 usingSchema:(id)a4 error:(id *)a5;
- (BOOL)isPersistable;
- (id)persist:(id)a3 error:(id *)a4;
- (id)persistObject:(id)a3 error:(id *)a4;
@end

@implementation AMDFetchDescriptor

+ (id)extractPart:(id)a3 from:(id)a4 required:(BOOL)a5 error:(id *)a6
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = a5;
  v17 = a6;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing or invalid %@", location[0]];
  v15 = [v19 objectForKey:location[0]];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = MEMORY[0x277D82BE0](v15);
    }

    else
    {
      v10 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v16];
      v7 = v10;
      *v17 = v10;
      v21 = 0;
    }
  }

  else
  {
    if (v18)
    {
      v11 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v16];
      v6 = v11;
      *v17 = v11;
    }

    v21 = 0;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  v8 = v21;

  return v8;
}

+ (char)getCodeForSaveAsType:(id)a3
{
  v12[3] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    if (!getCodeForSaveAsType__typeMap)
    {
      v11[0] = @"dictionary";
      v12[0] = &unk_2852BA8C0;
      v11[1] = @"list";
      v12[1] = &unk_2852BA8D8;
      v11[2] = @"rowset";
      v12[2] = &unk_2852BA8F0;
      v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
      v4 = getCodeForSaveAsType__typeMap;
      getCodeForSaveAsType__typeMap = v3;
      MEMORY[0x277D82BD8](v4);
    }

    v7 = [getCodeForSaveAsType__typeMap objectForKey:location[0]];
    if (v7)
    {
      v6 = [v7 unsignedIntValue];
    }

    else
    {
      v6 = 0;
    }

    v10 = v6;
    v8 = 1;
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v10 = 0;
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)refreshAggregationDescriptors:(id)a3 forDomain:(id)a4 error:(id *)a5
{
  v87 = *MEMORY[0x277D85DE8];
  v67 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v65 = 0;
  objc_storeStrong(&v65, a4);
  v64 = a5;
  v63 = MEMORY[0x277D82BE0](@"SaveAggDescripors");
  v62 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v61 = [location[0] objectForKey:0x2852B18C8];
  if (v61 && [v61 count])
  {
    v56 = +[AMDSQLite getSharedInstance];
    if ([v56 getDb])
    {
      v52 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v61, "count")}];
      for (i = 0; ; ++i)
      {
        v32 = i;
        if (v32 >= [v61 count])
        {
          break;
        }

        v28 = [v61 objectAtIndexedSubscript:i];
        v50 = [v28 mutableCopy];
        MEMORY[0x277D82BD8](v28);
        [v50 setObject:v65 forKey:@"domain"];
        v30 = [v67 alloc];
        v29 = v50;
        v31 = [v56 getDataSchema];
        v49 = [v30 initWithDict:v29 usingSchema:? error:?];
        MEMORY[0x277D82BD8](v31);
        if (*v64)
        {
          v26 = MEMORY[0x277CCACA8];
          v25 = i;
          v27 = [*v64 localizedDescription];
          v48 = [v26 stringWithFormat:@"SQLITE bad aggregation descriptor %u: '%@'", v25, v27];
          MEMORY[0x277D82BD8](v27);
          v79 = v63;
          v80 = v48;
          v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          v57 = 1;
          objc_storeStrong(&v48, 0);
        }

        else
        {
          v47 = [v49 getId];
          v46 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v50 options:6 error:v64];
          if (*v64)
          {
            v23 = MEMORY[0x277CCACA8];
            v24 = v47;
            v7 = *v64;
            v43 = 0;
            if (v7)
            {
              v44 = [*v64 localizedDescription];
              v43 = 1;
              v22 = v44;
            }

            else
            {
              v22 = @"unknown reason";
            }

            v45 = [v23 stringWithFormat:@"SQLITE agg descriptor '%@' serialization failure: %@", v24, v22];
            if (v43)
            {
              MEMORY[0x277D82BD8](v44);
            }

            v77 = v63;
            v78 = v45;
            v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
            v57 = 1;
            objc_storeStrong(&v45, 0);
          }

          else
          {
            v18 = v52;
            v75[0] = 0x2852A92A8;
            v76[0] = v46;
            v75[1] = 0x2852A86A8;
            v21 = [MEMORY[0x277CCABB0] numberWithInteger:{+[AMDDomains getCodeForDomain:](AMDDomains, "getCodeForDomain:", v65)}];
            v76[1] = v21;
            v75[2] = 0x2852A70A8;
            v76[2] = v47;
            v75[3] = 0x2852A9168;
            v20 = +[AMDMiscHelpers getCurrentEpochSeconds];
            v76[3] = v20;
            v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:4];
            [v18 addObject:?];
            MEMORY[0x277D82BD8](v19);
            MEMORY[0x277D82BD8](v20);
            MEMORY[0x277D82BD8](v21);
            v57 = 0;
          }

          objc_storeStrong(&v46, 0);
          objc_storeStrong(&v47, 0);
        }

        objc_storeStrong(&v49, 0);
        objc_storeStrong(&v50, 0);
        if (v57)
        {
          goto LABEL_32;
        }
      }

      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = %ld", 0x2852A86A8, +[AMDDomains getCodeForDomain:](AMDDomains, "getCodeForDomain:", v65)];
      v73[0] = @"tableName";
      v74[0] = 0x2852A9288;
      v73[1] = 0x2852A9128;
      v74[1] = v52;
      v73[2] = @"predicateExpression";
      v74[2] = v42;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:3];
      v40 = [v56 deleteRows:v41 error:v64];
      if (*v64)
      {
        v16 = MEMORY[0x277CCACA8];
        v15 = v65;
        v17 = [*v64 localizedDescription];
        v39 = [v16 stringWithFormat:@"SQLITE could not delete descriptors for domain '%@': %@", v15, v17];
        MEMORY[0x277D82BD8](v17);
        v71 = v63;
        v72 = v39;
        v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        v57 = 1;
        objc_storeStrong(&v39, 0);
      }

      else
      {
        [v62 addEntriesFromDictionary:v40];
        v13 = v56;
        v14 = [v56 getBootSchema];
        v38 = [v13 insertRows:v41 usingSchema:? error:?];
        MEMORY[0x277D82BD8](v14);
        if (*v64)
        {
          v11 = MEMORY[0x277CCACA8];
          v10 = v65;
          v12 = [*v64 localizedDescription];
          v37 = [v11 stringWithFormat:@"SQLITE could not insert descriptors for domain '%@': %@", v10, v12];
          MEMORY[0x277D82BD8](v12);
          v69 = v63;
          v70 = v37;
          v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
          v57 = 1;
          objc_storeStrong(&v37, 0);
        }

        else
        {
          [v62 addEntriesFromDictionary:v38];
          v68 = MEMORY[0x277D82BE0](v62);
          v57 = 1;
        }

        objc_storeStrong(&v38, 0);
      }

      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v42, 0);
LABEL_32:
      objc_storeStrong(&v52, 0);
    }

    else
    {
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQL database pointer is nil"];
      v33 = [AMDError allocError:22 withMessage:v55];
      v6 = v33;
      *v64 = v33;
      v54 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v53 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v83, v55);
        _os_log_impl(&dword_240CB9000, v54, v53, "%@", v83, 0xCu);
      }

      objc_storeStrong(&v54, 0);
      v81 = v63;
      v82 = v55;
      v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v57 = 1;
      objc_storeStrong(&v55, 0);
    }

    objc_storeStrong(&v56, 0);
  }

  else
  {
    v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"No SQLite aggregators for domain '%@'", v65];
    v34 = [AMDError allocError:15 withMessage:v60];
    v5 = v34;
    *v64 = v34;
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v86, v60);
      _os_log_impl(&dword_240CB9000, oslog, type, "%@", v86, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v84 = v63;
    v85 = v60;
    v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v57 = 1;
    objc_storeStrong(&v60, 0);
  }

  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v8 = v68;

  return v8;
}

- (AMDFetchDescriptor)initWithDict:(id)a3 usingSchema:(id)a4 error:(id *)a5
{
  v104 = *MEMORY[0x277D85DE8];
  v101 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v99 = 0;
  objc_storeStrong(&v99, a4);
  v98 = a5;
  v5 = v101;
  v101 = 0;
  v97.receiver = v5;
  v97.super_class = AMDFetchDescriptor;
  v101 = [(AMDFetchDescriptor *)&v97 init];
  objc_storeStrong(&v101, v101);
  v51 = [AMDFetchDescriptor extractPart:@"id" from:location[0] required:1 error:v98];
  [v101 set_id:?];
  MEMORY[0x277D82BD8](v51);
  if (*v98)
  {
    v102 = 0;
    v96 = 1;
  }

  else
  {
    v95 = [AMDFetchDescriptor extractPart:@"tableName" from:location[0] required:1 error:v98];
    if (*v98)
    {
      v102 = 0;
      v96 = 1;
    }

    else
    {
      v94 = [v99 getTables];
      v48 = [v94 objectForKey:v95];
      MEMORY[0x277D82BD8](v48);
      if (v48)
      {
        v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"FROM %@", v95];
        v91 = [location[0] objectForKey:@"columnsToFetch"];
        if (v91 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v90 = MEMORY[0x277D82BE0](v91);
          v89 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v90, "count")}];
          v88 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v90, "count")}];
          memset(__b, 0, sizeof(__b));
          v44 = MEMORY[0x277D82BE0](v90);
          v45 = [v44 countByEnumeratingWithState:__b objects:v103 count:16];
          if (v45)
          {
            v41 = *__b[2];
            v42 = 0;
            v43 = v45;
            while (1)
            {
              v40 = v42;
              if (*__b[2] != v41)
              {
                objc_enumerationMutation(v44);
              }

              v87 = *(__b[1] + 8 * v42);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                break;
              }

              v85 = MEMORY[0x277D82BE0](v87);
              v38 = [v85 allKeys];
              v9 = [v38 firstObject];
              v10 = v91;
              v91 = v9;
              MEMORY[0x277D82BD8](v10);
              MEMORY[0x277D82BD8](v38);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v84 = MEMORY[0x277D82BE0](v91);
                v12 = [v85 objectForKey:v84];
                v13 = v91;
                v91 = v12;
                MEMORY[0x277D82BD8](v13);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v83 = MEMORY[0x277D82BE0](v91);
                  v15 = [AMDSQLiteColumnSpec alloc];
                  v82 = [(AMDSQLiteColumnSpec *)v15 initWithDict:v83 withName:v84 error:v98];
                  if (*v98)
                  {
                    v102 = 0;
                    v96 = 1;
                  }

                  else
                  {
                    [v89 addObject:v82];
                    v34 = v88;
                    v35 = [v82 getSelectColumnExpression];
                    [v34 addObject:?];
                    MEMORY[0x277D82BD8](v35);
                    v96 = 0;
                  }

                  objc_storeStrong(&v82, 0);
                  objc_storeStrong(&v83, 0);
                }

                else
                {
                  v36 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"Invalid column spec"];
                  v14 = v36;
                  *v98 = v36;
                  v102 = 0;
                  v96 = 1;
                }

                objc_storeStrong(&v84, 0);
              }

              else
              {
                v37 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"Invalid column name"];
                v11 = v37;
                *v98 = v37;
                v102 = 0;
                v96 = 1;
              }

              objc_storeStrong(&v85, 0);
              if (v96)
              {
                goto LABEL_29;
              }

              ++v42;
              if (v40 + 1 >= v43)
              {
                v42 = 0;
                v43 = [v44 countByEnumeratingWithState:__b objects:v103 count:16];
                if (!v43)
                {
                  goto LABEL_28;
                }
              }
            }

            v39 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"Invalid columnspec"];
            v8 = v39;
            *v98 = v39;
            v102 = 0;
            v96 = 1;
          }

          else
          {
LABEL_28:
            v96 = 0;
          }

LABEL_29:
          MEMORY[0x277D82BD8](v44);
          if (!v96)
          {
            [v101 set_columnSpecs:v89];
            v81 = [AMDFetchDescriptor extractPart:@"joinExpression" from:location[0] required:0 error:v98];
            if (*v98)
            {
              v102 = 0;
              v96 = 1;
            }

            else
            {
              v80 = [AMDFetchDescriptor extractPart:@"predicateExpression" from:location[0] required:0 error:v98];
              if (*v98)
              {
                v102 = 0;
                v96 = 1;
              }

              else
              {
                v79 = [AMDFetchDescriptor extractPart:@"groupByExpression" from:location[0] required:0 error:v98];
                if (*v98)
                {
                  v102 = 0;
                  v96 = 1;
                }

                else
                {
                  v78 = [AMDFetchDescriptor extractPart:@"havingExpression" from:location[0] required:0 error:v98];
                  if (*v98)
                  {
                    v102 = 0;
                    v96 = 1;
                  }

                  else
                  {
                    v77 = [AMDFetchDescriptor extractPart:@"sortExpression" from:location[0] required:0 error:v98];
                    if (*v98)
                    {
                      v102 = 0;
                      v96 = 1;
                    }

                    else
                    {
                      v76 = [AMDFetchDescriptor extractPart:@"limit" from:location[0] required:0 error:v98];
                      if (*v98)
                      {
                        v102 = 0;
                        v96 = 1;
                      }

                      else
                      {
                        v75 = [AMDFetchDescriptor extractPart:@"onlyLocalData" from:location[0] required:0 error:v98];
                        if (*v98)
                        {
                          v102 = 0;
                          v96 = 1;
                        }

                        else
                        {
                          if (v75 && ([v75 isEqualToString:@"TRUE"] & 1) != 0)
                          {
                            v74 = 0;
                            v72 = 0;
                            v33 = [AMDDataSync fetchDeviceID:&v72];
                            objc_storeStrong(&v74, v72);
                            v73 = v33;
                            if (v74 || !v73)
                            {
                              oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                              type = OS_LOG_TYPE_ERROR;
                              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                              {
                                log = oslog;
                                v31 = type;
                                __os_log_helper_16_0_0(v68);
                                _os_log_error_impl(&dword_240CB9000, log, v31, "Local device Id could not be fetched", v68, 2u);
                              }

                              objc_storeStrong(&oslog, 0);
                            }

                            else
                            {
                              v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"deviceId = '%@'", v73];
                              if (v80)
                              {
                                v32 = [v80 stringByAppendingString:@" AND "];
                                v16 = [v32 stringByAppendingString:v71];
                                v17 = v80;
                                v80 = v16;
                                MEMORY[0x277D82BD8](v17);
                                MEMORY[0x277D82BD8](v32);
                              }

                              else
                              {
                                objc_storeStrong(&v80, v71);
                              }

                              objc_storeStrong(&v71, 0);
                            }

                            objc_storeStrong(&v73, 0);
                            objc_storeStrong(&v74, 0);
                          }

                          v28 = MEMORY[0x277CCACA8];
                          v29 = [v88 componentsJoinedByString:{@", "}];
                          v67 = [v28 stringWithFormat:@"SELECT %@ %@", v29, v92];
                          MEMORY[0x277D82BD8](v29);
                          v65 = 0;
                          if (v81)
                          {
                            v66 = [v67 stringByAppendingFormat:@" %@", v81];
                            v65 = 1;
                            objc_storeStrong(&v67, v66);
                          }

                          else
                          {
                            objc_storeStrong(&v67, v67);
                          }

                          if (v65)
                          {
                            MEMORY[0x277D82BD8](v66);
                          }

                          v63 = 0;
                          if (v80)
                          {
                            v64 = [v67 stringByAppendingFormat:@" WHERE %@", v80];
                            v63 = 1;
                            objc_storeStrong(&v67, v64);
                          }

                          else
                          {
                            objc_storeStrong(&v67, v67);
                          }

                          if (v63)
                          {
                            MEMORY[0x277D82BD8](v64);
                          }

                          v61 = 0;
                          if (v79)
                          {
                            v62 = [v67 stringByAppendingFormat:@" GROUP BY %@", v79];
                            v61 = 1;
                            objc_storeStrong(&v67, v62);
                          }

                          else
                          {
                            objc_storeStrong(&v67, v67);
                          }

                          if (v61)
                          {
                            MEMORY[0x277D82BD8](v62);
                          }

                          v59 = 0;
                          if (v78)
                          {
                            v60 = [v67 stringByAppendingFormat:@" HAVING %@", v78];
                            v59 = 1;
                            objc_storeStrong(&v67, v60);
                          }

                          else
                          {
                            objc_storeStrong(&v67, v67);
                          }

                          if (v59)
                          {
                            MEMORY[0x277D82BD8](v60);
                          }

                          v57 = 0;
                          if (v77)
                          {
                            v58 = [v67 stringByAppendingFormat:@" ORDER BY %@", v77];
                            v57 = 1;
                            objc_storeStrong(&v67, v58);
                          }

                          else
                          {
                            objc_storeStrong(&v67, v67);
                          }

                          if (v57)
                          {
                            MEMORY[0x277D82BD8](v58);
                          }

                          v55 = 0;
                          if (v76)
                          {
                            v56 = [v67 stringByAppendingFormat:@" LIMIT %@", v76];
                            v55 = 1;
                            objc_storeStrong(&v67, v56);
                          }

                          else
                          {
                            objc_storeStrong(&v67, v67);
                          }

                          if (v55)
                          {
                            MEMORY[0x277D82BD8](v56);
                          }

                          [v101 set_statement:v67];
                          v54 = [AMDFetchDescriptor extractPart:@"saveAs" from:location[0] required:0 error:v98];
                          if (*v98)
                          {
                            v102 = 0;
                            v96 = 1;
                          }

                          else
                          {
                            v18 = [AMDFetchDescriptor getCodeForSaveAsType:v54];
                            [v101 set_saveAsType:v18];
                            v53 = [AMDFetchDescriptor extractPart:@"domain" from:location[0] required:0 error:v98];
                            if (*v98)
                            {
                              v102 = 0;
                              v96 = 1;
                            }

                            else
                            {
                              v19 = [AMDDomains getCodeForDomain:v53];
                              [v101 set_domain:v19];
                              v52 = [AMDFetchDescriptor extractPart:@"listColumn" from:location[0] required:0 error:v98];
                              MEMORY[0x277D82BD8](0);
                              if (*v98)
                              {
                                v102 = 0;
                                v96 = 1;
                              }

                              else
                              {
                                if (v52)
                                {
                                  v27 = [v52 intValue];
                                }

                                else
                                {
                                  v27 = -1;
                                }

                                [v101 set_listColumn:v27];
                                v20 = [AMDFetchDescriptor extractPart:@"keyColumn" from:location[0] required:0 error:v98];
                                v21 = v52;
                                v52 = v20;
                                MEMORY[0x277D82BD8](v21);
                                if (*v98)
                                {
                                  v102 = 0;
                                  v96 = 1;
                                }

                                else
                                {
                                  if (v52)
                                  {
                                    v26 = [v52 intValue];
                                  }

                                  else
                                  {
                                    v26 = -1;
                                  }

                                  [v101 set_keyColumn:v26];
                                  v22 = [AMDFetchDescriptor extractPart:@"valueColumn" from:location[0] required:0 error:v98];
                                  v23 = v52;
                                  v52 = v22;
                                  MEMORY[0x277D82BD8](v23);
                                  if (*v98)
                                  {
                                    v102 = 0;
                                    v96 = 1;
                                  }

                                  else
                                  {
                                    if (v52)
                                    {
                                      v25 = [v52 intValue];
                                    }

                                    else
                                    {
                                      v25 = -1;
                                    }

                                    [v101 set_valueColumn:v25];
                                    v102 = MEMORY[0x277D82BE0](v101);
                                    v96 = 1;
                                  }
                                }
                              }

                              objc_storeStrong(&v52, 0);
                            }

                            objc_storeStrong(&v53, 0);
                          }

                          objc_storeStrong(&v54, 0);
                          objc_storeStrong(&v67, 0);
                        }

                        objc_storeStrong(&v75, 0);
                      }

                      objc_storeStrong(&v76, 0);
                    }

                    objc_storeStrong(&v77, 0);
                  }

                  objc_storeStrong(&v78, 0);
                }

                objc_storeStrong(&v79, 0);
              }

              objc_storeStrong(&v80, 0);
            }

            objc_storeStrong(&v81, 0);
          }

          objc_storeStrong(&v88, 0);
          objc_storeStrong(&v89, 0);
          objc_storeStrong(&v90, 0);
        }

        else
        {
          v46 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"No or invalid columns"];
          v7 = v46;
          *v98 = v46;
          v102 = 0;
          v96 = 1;
        }

        objc_storeStrong(&v91, 0);
        objc_storeStrong(&v92, 0);
      }

      else
      {
        v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE No table '%@'", v95];
        v47 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v93];
        v6 = v47;
        *v98 = v47;
        v102 = 0;
        v96 = 1;
        objc_storeStrong(&v93, 0);
      }

      objc_storeStrong(&v94, 0);
    }

    objc_storeStrong(&v95, 0);
  }

  objc_storeStrong(&v99, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v101, 0);
  *MEMORY[0x277D85DE8];
  return v102;
}

- (BOOL)isPersistable
{
  v6 = [(AMDFetchDescriptor *)self _columnSpecs];
  v7 = [(NSArray *)v6 count];
  MEMORY[0x277D82BD8](v6);
  v8 = 0;
  if ([(AMDFetchDescriptor *)self _domain])
  {
    v8 = 0;
    if ([(AMDFetchDescriptor *)self _saveAsType])
    {
      if ([(AMDFetchDescriptor *)self _saveAsType]!= 2 || (v8 = 0, ([(AMDFetchDescriptor *)self _listColumn]& 0x80000000) == 0) && (v8 = 0, [(AMDFetchDescriptor *)self _listColumn]< v7))
      {
        if ([(AMDFetchDescriptor *)self _saveAsType]== 1)
        {
          v5 = 0;
          if (([(AMDFetchDescriptor *)self _keyColumn]& 0x80000000) == 0)
          {
            v5 = 0;
            if ([(AMDFetchDescriptor *)self _keyColumn]< v7)
            {
              v5 = 0;
              if (([(AMDFetchDescriptor *)self _valueColumn]& 0x80000000) == 0)
              {
                v5 = 0;
                if ([(AMDFetchDescriptor *)self _valueColumn]< v7)
                {
                  v4 = [(AMDFetchDescriptor *)self _keyColumn];
                  v5 = v4 != [(AMDFetchDescriptor *)self _valueColumn];
                }
              }
            }
          }

          v3 = v5;
        }

        else
        {
          v3 = 1;
        }

        return v3 != 0;
      }
    }
  }

  return v8;
}

- (id)persist:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = a4;
  v31 = MEMORY[0x277D82BE0](@"SQlitePersist");
  if ([(AMDFetchDescriptor *)v34 isPersistable])
  {
    v26 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v25 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v16 = [(AMDFetchDescriptor *)v34 _id];
      __os_log_helper_16_2_2_8_64_4_0(v38, v16, [(AMDFetchDescriptor *)v34 _saveAsType]);
      _os_log_debug_impl(&dword_240CB9000, v26, v25, "SQLITE Saving agg results for '%@', type: %d", v38, 0x12u);
      MEMORY[0x277D82BD8](v16);
    }

    objc_storeStrong(&v26, 0);
    v24 = 0;
    v15 = [(AMDFetchDescriptor *)v34 _saveAsType];
    if (v15)
    {
      switch(v15)
      {
        case 1:
          v23 = [location[0] objectForKey:0x2852A9368];
          v12 = MEMORY[0x277CBEAC0];
          v14 = [v23 objectAtIndexedSubscript:{-[AMDFetchDescriptor _valueColumn](v34, "_valueColumn")}];
          v13 = [v23 objectAtIndexedSubscript:{-[AMDFetchDescriptor _keyColumn](v34, "_keyColumn")}];
          v22 = [v12 dictionaryWithObjects:v14 forKeys:?];
          MEMORY[0x277D82BD8](v13);
          MEMORY[0x277D82BD8](v14);
          v4 = [(AMDFetchDescriptor *)v34 persistObject:v22 error:v32];
          v5 = v24;
          v24 = v4;
          MEMORY[0x277D82BD8](v5);
          objc_storeStrong(&v22, 0);
          objc_storeStrong(&v23, 0);
          break;
        case 2:
          v21 = [location[0] objectForKey:0x2852A9368];
          v20 = [v21 objectAtIndexedSubscript:{-[AMDFetchDescriptor _listColumn](v34, "_listColumn")}];
          v6 = [(AMDFetchDescriptor *)v34 persistObject:v20 error:v32];
          v7 = v24;
          v24 = v6;
          MEMORY[0x277D82BD8](v7);
          objc_storeStrong(&v20, 0);
          objc_storeStrong(&v21, 0);
          break;
        case 3:
          v8 = [(AMDFetchDescriptor *)v34 persistObject:location[0] error:v32];
          v9 = v24;
          v24 = v8;
          MEMORY[0x277D82BD8](v9);
          break;
      }
    }

    else
    {
      objc_storeStrong(&v24, @"Check!!");
    }

    v36 = v31;
    v37 = v24;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v27 = 1;
    objc_storeStrong(&v24, 0);
  }

  else
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [(AMDFetchDescriptor *)v34 _id];
    v30 = [v17 stringWithFormat:@"Cannot persist '%@', check descriptor", v18];
    MEMORY[0x277D82BD8](v18);
    v29 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v28 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v41, v30);
      _os_log_debug_impl(&dword_240CB9000, v29, v28, "SQLITE %@", v41, 0xCu);
    }

    objc_storeStrong(&v29, 0);
    v39 = v31;
    v40 = v30;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v27 = 1;
    objc_storeStrong(&v30, 0);
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v10 = v35;

  return v10;
}

- (id)persistObject:(id)a3 error:(id *)a4
{
  v61[1] = *MEMORY[0x277D85DE8];
  v47 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v45 = a4;
  v44 = MEMORY[0x277D82BE0](@"persistFDOutput");
  v43 = [MEMORY[0x277CCAAA0] dataWithJSONObject:location[0] options:6 error:a4];
  if (*a4)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = [(AMDFetchDescriptor *)v47 _id];
    v4 = *v45;
    v40 = 0;
    if (v4)
    {
      v41 = [*v45 localizedDescription];
      v40 = 1;
      v25 = v41;
    }

    else
    {
      v25 = @"unknown reason";
    }

    v42 = [v26 stringWithFormat:@"SQLITE tp data '%@' serialization failure: %@", v27, v25];
    if (v40)
    {
      MEMORY[0x277D82BD8](v41);
    }

    MEMORY[0x277D82BD8](v27);
    v60 = v44;
    v61[0] = v42;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:&v60 count:1];
    v39 = 1;
    objc_storeStrong(&v42, 0);
  }

  else
  {
    v18 = MEMORY[0x277CCACA8];
    v17 = [(AMDFetchDescriptor *)v47 _domain];
    v19 = [(AMDFetchDescriptor *)v47 _id];
    v38 = [v18 stringWithFormat:@"%@ = %ld AND %@ = '%@'", 0x2852A86A8, v17, 0x2852A8408, v19];
    MEMORY[0x277D82BD8](v19);
    v57[0] = 0x2852A86A8;
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:{-[AMDFetchDescriptor _domain](v47, "_domain")}];
    v58[0] = v24;
    v57[1] = 0x2852A8408;
    v23 = [(AMDFetchDescriptor *)v47 _id];
    v58[1] = v23;
    v57[2] = 0x2852A9228;
    v58[2] = 0x2852B1228;
    v57[3] = 0x2852A9248;
    v22 = [MEMORY[0x277CCABB0] numberWithChar:{-[AMDFetchDescriptor _saveAsType](v47, "_saveAsType")}];
    v58[3] = v22;
    v57[4] = 0x2852A9268;
    v58[4] = v43;
    v57[5] = 0x2852A9168;
    v21 = +[AMDMiscHelpers getCurrentEpochSeconds];
    v58[5] = v21;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:6];
    v59 = v20;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    v55[0] = @"tableName";
    v56[0] = 0x2852A9208;
    v55[1] = 0x2852A9128;
    v56[1] = v37;
    v55[2] = @"predicateExpression";
    v56[2] = v38;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
    v35 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    v34 = +[AMDSQLite getSharedInstance];
    if ([v34 getDb])
    {
      v32 = [v34 deleteRows:v36 error:v45];
      if (*v45)
      {
        v14 = MEMORY[0x277CCACA8];
        v16 = [(AMDFetchDescriptor *)v47 _id];
        v13 = [(AMDFetchDescriptor *)v47 _domain];
        v15 = [*v45 localizedDescription];
        v31 = [v14 stringWithFormat:@"SQLITE error deleting old TP entry '%@', domain %lu: %@", v16, v13, v15];
        MEMORY[0x277D82BD8](v15);
        MEMORY[0x277D82BD8](v16);
        v51 = v44;
        v52 = v31;
        v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v39 = 1;
        objc_storeStrong(&v31, 0);
      }

      else
      {
        [v35 addEntriesFromDictionary:v32];
        v12 = [v34 getBootSchema];
        v30 = [v34 insertRows:v36 usingSchema:? error:?];
        MEMORY[0x277D82BD8](v12);
        if (*v45)
        {
          v9 = MEMORY[0x277CCACA8];
          v11 = [(AMDFetchDescriptor *)v47 _id];
          v8 = [(AMDFetchDescriptor *)v47 _domain];
          v10 = [*v45 localizedDescription];
          v29 = [v9 stringWithFormat:@"SQLITE error inserting new TP entry '%@', domain %lu: %@", v11, v8, v10];
          MEMORY[0x277D82BD8](v10);
          MEMORY[0x277D82BD8](v11);
          v49 = v44;
          v50 = v29;
          v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v39 = 1;
          objc_storeStrong(&v29, 0);
        }

        else
        {
          [v35 addEntriesFromDictionary:v30];
          v7 = [(AMDFetchDescriptor *)v47 _id];
          [v35 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v7);
          v48 = MEMORY[0x277D82BE0](v35);
          v39 = 1;
        }

        objc_storeStrong(&v30, 0);
      }

      objc_storeStrong(&v32, 0);
    }

    else
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQL database pointer is nil"];
      v53 = v44;
      v54 = v33;
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v39 = 1;
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v5 = v48;

  return v5;
}

@end