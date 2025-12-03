@interface AMDJSDebugTestSQLite
+ (id)getSchema:(id)schema;
+ (id)getTestFetchDescriptors;
+ (id)getTestSchemaDict;
+ (id)test:(id)test error:(id *)error;
@end

@implementation AMDJSDebugTestSQLite

+ (id)getSchema:(id)schema
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, schema);
  v10 = +[AMDSQLite getSharedInstance];
  getDataSchema = [v10 getDataSchema];
  MEMORY[0x277D82BD8](v10);
  v13 = 0;
  v11 = [location[0] objectForKey:TEST_USE_TEST_SCHEMA];
  MEMORY[0x277D82BD8](v11);
  if (v11)
  {
    v7 = [AMDSQLiteSchema alloc];
    getTestSchemaDict = [selfCopy getTestSchemaDict];
    v12 = v13;
    v8 = [AMDSQLiteSchema initWithDict:v7 error:"initWithDict:error:"];
    objc_storeStrong(&v13, v12);
    v3 = getDataSchema;
    getDataSchema = v8;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](getTestSchemaDict);
  }

  if (v13)
  {
    v4 = MEMORY[0x277D82BE0](0);
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](getDataSchema);
  }

  v6 = v4;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&getDataSchema, 0);
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)test:(id)test error:(id *)error
{
  v194[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, test);
  errorCopy = error;
  v170 = 0;
  v169 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v91 = [location[0] objectForKey:TEST_LOAD_DB];
  MEMORY[0x277D82BD8](v91);
  if (v91)
  {
    v89 = objc_alloc_init(AMDSQLite);
    loadDb = [(AMDSQLite *)v89 loadDb];
    MEMORY[0x277D82BD8](v89);
    [v169 setObject:loadDb forKey:TEST_LOAD_DB];
    objc_storeStrong(&loadDb, 0);
  }

  v88 = [location[0] objectForKey:TEST_SHARED_INSTANCE];
  MEMORY[0x277D82BD8](v88);
  if (v88)
  {
    v4 = +[AMDSQLite getSharedInstance];
    v5 = v170;
    v170 = v4;
    MEMORY[0x277D82BD8](v5);
    v87 = v169;
    if ([v170 getDb])
    {
      v6 = MEMORY[0x277CBEC38];
    }

    else
    {
      v6 = MEMORY[0x277CBEC28];
    }

    [v87 setObject:v6 forKey:TEST_SHARED_INSTANCE];
  }

  v86 = [location[0] objectForKey:TEST_UPDATE_SCHEMA];
  MEMORY[0x277D82BD8](v86);
  if (v86)
  {
    v7 = +[AMDSQLite getSharedInstance];
    v8 = v170;
    v170 = v7;
    MEMORY[0x277D82BD8](v8);
    v83 = v169;
    v82 = v170;
    getTestSchemaDict = [selfCopy getTestSchemaDict];
    v84 = [v82 updateSchema:? error:?];
    [v83 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](getTestSchemaDict);
  }

  v81 = [location[0] objectForKey:TEST_SET_ENABLE];
  MEMORY[0x277D82BD8](v81);
  if (v81)
  {
    v9 = +[AMDSQLite getSharedInstance];
    v10 = v170;
    v170 = v9;
    MEMORY[0x277D82BD8](v10);
    v79 = [location[0] objectForKey:TEST_SET_ENABLE];
    v80 = [v79 intValue] > 0;
    MEMORY[0x277D82BD8](v79);
    v167 = v80;
    [v170 setEnable:v80];
    if (v80)
    {
      v11 = @"enabled";
    }

    else
    {
      v11 = @"diabled";
    }

    [v169 setObject:v11 forKey:TEST_SET_ENABLE];
  }

  v78 = [location[0] objectForKey:TEST_CREATE_TEST_TABLE];
  MEMORY[0x277D82BD8](v78);
  if (!v78)
  {
    goto LABEL_20;
  }

  v76 = [AMDSQLiteSchema alloc];
  getTestSchemaDict2 = [selfCopy getTestSchemaDict];
  v166 = [AMDSQLiteSchema initWithDict:v76 error:"initWithDict:error:"];
  MEMORY[0x277D82BD8](getTestSchemaDict2);
  if (*errorCopy)
  {
    v193 = TEST_CREATE_TEST_TABLE;
    localizedDescription = [*errorCopy localizedDescription];
    v194[0] = localizedDescription;
    v174 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v194 forKeys:&v193 count:1];
    MEMORY[0x277D82BD8](localizedDescription);
    v165 = 1;
  }

  else
  {
    v12 = +[AMDSQLite getSharedInstance];
    v13 = v170;
    v170 = v12;
    MEMORY[0x277D82BD8](v13);
    v74 = [location[0] objectForKey:TEST_CREATE_TEST_TABLE];
    v164 = [v74 objectForKey:0x2852AF668];
    MEMORY[0x277D82BD8](v74);
    v163 = [v170 createTable:v164 usingSchema:v166 error:errorCopy];
    [v169 setObject:v163 forKey:TEST_CREATE_TEST_TABLE];
    objc_storeStrong(&v163, 0);
    objc_storeStrong(&v164, 0);
    v165 = 0;
  }

  objc_storeStrong(&v166, 0);
  if (!v165)
  {
LABEL_20:
    v73 = [location[0] objectForKey:TEST_CREATE_TABLE];
    MEMORY[0x277D82BD8](v73);
    if (v73)
    {
      v14 = +[AMDSQLite getSharedInstance];
      v15 = v170;
      v170 = v14;
      MEMORY[0x277D82BD8](v15);
      v69 = [location[0] objectForKey:TEST_CREATE_TABLE];
      v162 = [v69 objectForKey:0x2852AF668];
      MEMORY[0x277D82BD8](v69);
      v71 = v170;
      v70 = v162;
      getDataSchema = [v170 getDataSchema];
      v161 = [v71 createTable:v70 usingSchema:? error:?];
      MEMORY[0x277D82BD8](getDataSchema);
      [v169 setObject:v161 forKey:TEST_CREATE_TABLE];
      objc_storeStrong(&v161, 0);
      objc_storeStrong(&v162, 0);
    }

    v68 = [location[0] objectForKey:TEST_SAVE_EVENTS];
    MEMORY[0x277D82BD8](v68);
    if (v68)
    {
      v67 = [location[0] objectForKey:TEST_SAVE_EVENTS];
      v160 = [AMDSQLite saveEvents:"saveEvents:error:" error:?];
      MEMORY[0x277D82BD8](v67);
      if (*errorCopy)
      {
        v65 = v169;
        localizedDescription2 = [*errorCopy localizedDescription];
        [v65 setObject:? forKey:?];
        MEMORY[0x277D82BD8](localizedDescription2);
      }

      else
      {
        [v169 setObject:v160 forKey:TEST_SAVE_EVENTS];
      }

      objc_storeStrong(&v160, 0);
    }

    v64 = [location[0] objectForKey:TEST_FETCH_ROWS];
    MEMORY[0x277D82BD8](v64);
    if (!v64)
    {
      goto LABEL_42;
    }

    v16 = +[AMDSQLite getSharedInstance];
    v17 = v170;
    v170 = v16;
    MEMORY[0x277D82BD8](v17);
    v159 = [selfCopy getSchema:location[0]];
    v158 = [location[0] objectForKey:TEST_FETCH_ROWS];
    v157 = [[AMDFetchDescriptor alloc] initWithDict:v158 usingSchema:v159 error:errorCopy];
    if (*errorCopy)
    {
      v191 = TEST_FETCH_ROWS;
      localizedDescription3 = [*errorCopy localizedDescription];
      v192 = localizedDescription3;
      v174 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
      MEMORY[0x277D82BD8](localizedDescription3);
      v165 = 1;
    }

    else
    {
      v156 = [location[0] objectForKey:@"persist"];
      if (v156)
      {
        v62 = [v156 intValue] != 0;
      }

      else
      {
        v62 = 0;
      }

      v155 = v62;
      v154 = [v170 fetchRowsUsingSchema:v159 andDescriptor:v157 andPersist:v62 error:errorCopy];
      v61 = v169;
      v152 = 0;
      v150 = 0;
      if (v154)
      {
        v60 = v154;
      }

      else
      {
        v189 = @"failure";
        localizedDescription4 = [*errorCopy localizedDescription];
        v152 = 1;
        v190 = localizedDescription4;
        v151 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
        v150 = 1;
        v60 = v151;
      }

      [v61 setObject:v60 forKey:TEST_FETCH_ROWS];
      if (v150)
      {
        MEMORY[0x277D82BD8](v151);
      }

      if (v152)
      {
        MEMORY[0x277D82BD8](localizedDescription4);
      }

      objc_storeStrong(&v154, 0);
      objc_storeStrong(&v156, 0);
      v165 = 0;
    }

    objc_storeStrong(&v157, 0);
    objc_storeStrong(&v158, 0);
    objc_storeStrong(&v159, 0);
    if (!v165)
    {
LABEL_42:
      v59 = [location[0] objectForKey:TEST_DELETE_ROWS];
      MEMORY[0x277D82BD8](v59);
      if (v59)
      {
        v18 = +[AMDSQLite getSharedInstance];
        v19 = v170;
        v170 = v18;
        MEMORY[0x277D82BD8](v19);
        v56 = v170;
        v57 = [location[0] objectForKey:TEST_DELETE_ROWS];
        v149 = [v56 deleteRows:? error:?];
        MEMORY[0x277D82BD8](v57);
        v58 = v169;
        v147 = 0;
        v145 = 0;
        if (v149)
        {
          v55 = v149;
        }

        else
        {
          v187 = @"failure";
          localizedDescription5 = [*errorCopy localizedDescription];
          v147 = 1;
          v188 = localizedDescription5;
          v146 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
          v145 = 1;
          v55 = v146;
        }

        [v58 setObject:v55 forKey:TEST_DELETE_ROWS];
        if (v145)
        {
          MEMORY[0x277D82BD8](v146);
        }

        if (v147)
        {
          MEMORY[0x277D82BD8](localizedDescription5);
        }

        objc_storeStrong(&v149, 0);
      }

      v54 = [location[0] objectForKey:TEST_INSERT_JS];
      MEMORY[0x277D82BD8](v54);
      if (v54)
      {
        v144 = [selfCopy getSchema:location[0]];
        v143 = [location[0] objectForKey:TEST_INSERT_JS];
        v142 = [AMDSQLite insertRowsInternal:v143 usingSchema:v144 error:errorCopy];
        v53 = v169;
        v140 = 0;
        v138 = 0;
        if (v142)
        {
          v52 = v142;
        }

        else
        {
          v185 = @"failure";
          localizedDescription6 = [*errorCopy localizedDescription];
          v140 = 1;
          v186 = localizedDescription6;
          v139 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
          v138 = 1;
          v52 = v139;
        }

        [v53 setObject:v52 forKey:TEST_INSERT_JS];
        if (v138)
        {
          MEMORY[0x277D82BD8](v139);
        }

        if (v140)
        {
          MEMORY[0x277D82BD8](localizedDescription6);
        }

        objc_storeStrong(&v142, 0);
        objc_storeStrong(&v143, 0);
        objc_storeStrong(&v144, 0);
      }

      v51 = [location[0] objectForKey:TEST_DELETE_JS];
      MEMORY[0x277D82BD8](v51);
      if (v51)
      {
        v137 = [location[0] objectForKey:TEST_DELETE_JS];
        v136 = [AMDSQLite deleteRowsHandler:v137 error:errorCopy];
        v50 = v169;
        v134 = 0;
        v132 = 0;
        if (v136)
        {
          v49 = v136;
        }

        else
        {
          v183 = @"failure";
          localizedDescription7 = [*errorCopy localizedDescription];
          v134 = 1;
          v184 = localizedDescription7;
          v133 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
          v132 = 1;
          v49 = v133;
        }

        [v50 setObject:v49 forKey:TEST_DELETE_JS];
        if (v132)
        {
          MEMORY[0x277D82BD8](v133);
        }

        if (v134)
        {
          MEMORY[0x277D82BD8](localizedDescription7);
        }

        objc_storeStrong(&v136, 0);
        objc_storeStrong(&v137, 0);
      }

      v48 = [location[0] objectForKey:TEST_ADD_DESCRIPTORS];
      MEMORY[0x277D82BD8](v48);
      if (v48)
      {
        v20 = +[AMDSQLite getSharedInstance];
        v21 = v170;
        v170 = v20;
        MEMORY[0x277D82BD8](v21);
        v131 = [location[0] objectForKey:TEST_ADD_DESCRIPTORS];
        v130 = [v131 objectForKey:0x2852A86A8];
        v129 = [v131 objectForKey:@"fdConfig"];
        v128 = [AMDFetchDescriptor refreshAggregationDescriptors:v129 forDomain:v130 error:errorCopy];
        v47 = v169;
        v126 = 0;
        v124 = 0;
        if (v128)
        {
          v46 = v128;
        }

        else
        {
          v181 = @"failure";
          localizedDescription8 = [*errorCopy localizedDescription];
          v126 = 1;
          v182 = localizedDescription8;
          v125 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
          v124 = 1;
          v46 = v125;
        }

        [v47 setObject:v46 forKey:TEST_ADD_DESCRIPTORS];
        if (v124)
        {
          MEMORY[0x277D82BD8](v125);
        }

        if (v126)
        {
          MEMORY[0x277D82BD8](localizedDescription8);
        }

        objc_storeStrong(&v128, 0);
        objc_storeStrong(&v129, 0);
        objc_storeStrong(&v130, 0);
        objc_storeStrong(&v131, 0);
      }

      v45 = [location[0] objectForKey:TEST_REFRESH_ODTP];
      MEMORY[0x277D82BD8](v45);
      if (v45)
      {
        v123 = [location[0] objectForKey:TEST_REFRESH_ODTP];
        v122 = [AMDSQLite refreshODTPForDomain:v123 error:errorCopy];
        v44 = v169;
        v120 = 0;
        v118 = 0;
        if (v122)
        {
          v43 = v122;
        }

        else
        {
          v179 = @"failure";
          localizedDescription9 = [*errorCopy localizedDescription];
          v120 = 1;
          v180 = localizedDescription9;
          v119 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
          v118 = 1;
          v43 = v119;
        }

        [v44 setObject:v43 forKey:TEST_REFRESH_ODTP];
        if (v118)
        {
          MEMORY[0x277D82BD8](v119);
        }

        if (v120)
        {
          MEMORY[0x277D82BD8](localizedDescription9);
        }

        objc_storeStrong(&v122, 0);
        objc_storeStrong(&v123, 0);
      }

      v42 = [location[0] objectForKey:TEST_REFRESH_ENTITY_TABLE];
      MEMORY[0x277D82BD8](v42);
      if (v42)
      {
        v117 = [location[0] objectForKey:TEST_REFRESH_ENTITY_TABLE];
        v116 = [AMDSQLite refreshEntityTableForDomain:v117 error:errorCopy];
        v41 = v169;
        v114 = 0;
        v112 = 0;
        if (v116)
        {
          v40 = v116;
        }

        else
        {
          v177 = @"failure";
          localizedDescription10 = [*errorCopy localizedDescription];
          v114 = 1;
          v178 = localizedDescription10;
          v113 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
          v112 = 1;
          v40 = v113;
        }

        [v41 setObject:v40 forKey:TEST_REFRESH_ENTITY_TABLE];
        if (v112)
        {
          MEMORY[0x277D82BD8](v113);
        }

        if (v114)
        {
          MEMORY[0x277D82BD8](localizedDescription10);
        }

        objc_storeStrong(&v116, 0);
        objc_storeStrong(&v117, 0);
      }

      v39 = [location[0] objectForKey:TEST_FETCH_FEATURE];
      MEMORY[0x277D82BD8](v39);
      if (v39)
      {
        v22 = +[AMDSQLite getSharedInstance];
        v23 = v170;
        v170 = v22;
        MEMORY[0x277D82BD8](v23);
        v111 = [location[0] objectForKey:TEST_FETCH_FEATURE];
        v110 = [v111 objectForKey:0x2852A86A8];
        v109 = [v111 objectForKey:@"featureName"];
        v108 = [AMDSQLite getFeatureValueWithName:v109 inDomain:v110 withColumnName:0 skipRowset:0 error:errorCopy];
        if (v108)
        {
          v38 = v108;
        }

        else
        {
          v38 = @"Not found";
        }

        [v169 setObject:v38 forKey:TEST_FETCH_FEATURE];
        objc_storeStrong(&v108, 0);
        objc_storeStrong(&v109, 0);
        objc_storeStrong(&v110, 0);
        objc_storeStrong(&v111, 0);
      }

      v37 = [location[0] objectForKey:TEST_FETCH_SCHEMA];
      MEMORY[0x277D82BD8](v37);
      if (v37)
      {
        v24 = +[AMDSQLite getSharedInstance];
        v25 = v170;
        v170 = v24;
        MEMORY[0x277D82BD8](v25);
        getDataSchema2 = [v170 getDataSchema];
        getSchemaDict = [getDataSchema2 getSchemaDict];
        MEMORY[0x277D82BD8](getDataSchema2);
        if (getSchemaDict)
        {
          v35 = getSchemaDict;
        }

        else
        {
          v35 = @"No schema";
        }

        [v169 setObject:v35 forKey:TEST_FETCH_SCHEMA];
        objc_storeStrong(&getSchemaDict, 0);
      }

      v34 = [location[0] objectForKey:TEST_UPDATE_DATA];
      MEMORY[0x277D82BD8](v34);
      if (v34)
      {
        v106 = [location[0] objectForKey:TEST_UPDATE_DATA];
        v105 = [AMDSQLite updateData:v106];
        [v169 setObject:v105 forKey:TEST_UPDATE_DATA];
        objc_storeStrong(&v105, 0);
        objc_storeStrong(&v106, 0);
      }

      v33 = [location[0] objectForKey:TEST_UPDATE_BIOME_DATA];
      MEMORY[0x277D82BD8](v33);
      if (v33)
      {
        v104 = 0;
        v103 = MEMORY[0x277D82BE0](&unk_2852BC3C0);
        v101 = v104;
        v32 = [AMDBiomeIntegration queryBiomeFor:v103 withError:&v101];
        objc_storeStrong(&v104, v101);
        v102 = v32;
        [v169 setObject:v32 forKey:TEST_UPDATE_DATA];
        objc_storeStrong(&v102, 0);
        objc_storeStrong(&v103, 0);
        objc_storeStrong(&v104, 0);
      }

      v31 = [location[0] objectForKey:TEST_UPDATE_STORAGE_DATA];
      MEMORY[0x277D82BD8](v31);
      if (v31)
      {
        v100 = MEMORY[0x277D82BE0](&unk_2852BBA60);
        v99 = [AMDDeviceStorage performStorageUpdateWithPayload:v100];
        [v169 setObject:v99 forKey:TEST_UPDATE_STORAGE_DATA];
        objc_storeStrong(&v99, 0);
        objc_storeStrong(&v100, 0);
      }

      v30 = [location[0] objectForKey:TEST_UPDATE_TABLES];
      MEMORY[0x277D82BD8](v30);
      if (v30)
      {
        v98 = [selfCopy getSchema:location[0]];
        v97 = [location[0] objectForKey:TEST_UPDATE_TABLES];
        v96 = [AMDSQLite updateTablesInternal:v97 usingSchema:v98 error:errorCopy];
        v29 = v169;
        v94 = 0;
        v92 = 0;
        if (v96)
        {
          v28 = v96;
        }

        else
        {
          v175 = @"failure";
          localizedDescription11 = [*errorCopy localizedDescription];
          v94 = 1;
          v176 = localizedDescription11;
          v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
          v92 = 1;
          v28 = v93;
        }

        [v29 setObject:v28 forKey:TEST_UPDATE_TABLES];
        if (v92)
        {
          MEMORY[0x277D82BD8](v93);
        }

        if (v94)
        {
          MEMORY[0x277D82BD8](localizedDescription11);
        }

        objc_storeStrong(&v96, 0);
        objc_storeStrong(&v97, 0);
        objc_storeStrong(&v98, 0);
      }

      v174 = MEMORY[0x277D82BE0](v169);
      v165 = 1;
    }
  }

  objc_storeStrong(&v169, 0);
  objc_storeStrong(&v170, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v26 = v174;

  return v26;
}

+ (id)getTestFetchDescriptors
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0x2852AF4C8;
  v6[0] = @"fetch_from_t1";
  v5[1] = 0x2852AF668;
  v6[1] = @"testTable1";
  v5[2] = 0x2852AF4E8;
  v6[2] = @"adamId";
  v5[3] = 0x2852AF4A8;
  v6[3] = &unk_2852BC3D8;
  v5[4] = 0x2852AF608;
  v6[4] = @"rowset";
  v5[5] = 0x2852A86A8;
  v6[5] = @"apps";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  MEMORY[0x277D82BD8](v3);
  *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)getTestSchemaDict
{
  v198[4] = *MEMORY[0x277D85DE8];
  v197[0] = AMD_SQLITE_SCHEMA_NAME;
  v198[0] = @"testSchema";
  v197[1] = AMD_SQLITE_SCHEMA_VERSION;
  v198[1] = @"17";
  v197[2] = AMD_SQLITE_SCHEMA_TABLES;
  v195[0] = @"testUniqueColumns";
  v193[0] = @"c1";
  v191[0] = AMD_SQLITE_TYPE;
  v192[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v191[1] = AMD_SQLITE_NOT_NULL;
  v3 = MEMORY[0x277CBEC38];
  v192[1] = MEMORY[0x277CBEC38];
  v191[2] = AMD_SQLITE_UNIQUE;
  v192[2] = MEMORY[0x277CBEC38];
  v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v192 forKeys:v191 count:?];
  v194[0] = v68;
  v193[1] = @"c2";
  v189[0] = AMD_SQLITE_TYPE;
  v190[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v189[1] = AMD_SQLITE_NOT_NULL;
  v190[1] = v3;
  v189[2] = AMD_SQLITE_UNIQUE;
  v190[2] = v3;
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v190 forKeys:v189 count:3];
  v194[1] = v67;
  v193[2] = @"c3";
  v187[0] = AMD_SQLITE_TYPE;
  v188[0] = AMD_SQLITE_DATA_TYPE_FLOAT;
  v187[1] = AMD_SQLITE_NOT_NULL;
  v188[1] = v3;
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v188 forKeys:v187 count:?];
  v194[2] = v66;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v194 forKeys:v193 count:3];
  v196[0] = v65;
  v195[1] = 0x2852A7C68;
  v185[0] = 0x2852A8B68;
  v183[0] = AMD_SQLITE_TYPE;
  v184[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v183[1] = AMD_SQLITE_NOT_NULL;
  v184[1] = v3;
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v184 forKeys:v183 count:2];
  v186[0] = v64;
  v185[1] = 0x2852AA908;
  v181[0] = AMD_SQLITE_TYPE;
  v182[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v181[1] = AMD_SQLITE_NOT_NULL;
  v182[1] = v3;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v182 forKeys:v181 count:2];
  v186[1] = v63;
  v185[2] = 0x2852AA928;
  v179[0] = AMD_SQLITE_TYPE;
  v180[0] = AMD_SQLITE_DATA_TYPE_INT;
  v179[1] = AMD_SQLITE_NOT_NULL;
  v180[1] = v3;
  v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v180 forKeys:v179 count:2];
  v186[2] = v62;
  v185[3] = 0x2852AA948;
  v177[0] = AMD_SQLITE_TYPE;
  v178[0] = AMD_SQLITE_DATA_TYPE_INT;
  v177[1] = AMD_SQLITE_NOT_NULL;
  v178[1] = v3;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v178 forKeys:v177 count:2];
  v186[3] = v61;
  v185[4] = 0x2852AA968;
  v175[0] = AMD_SQLITE_TYPE;
  v176[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v175[1] = AMD_SQLITE_NOT_NULL;
  v176[1] = v3;
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v176 forKeys:v175 count:2];
  v186[4] = v60;
  v185[5] = 0x2852A9168;
  v173[0] = AMD_SQLITE_TYPE;
  v174[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v173[1] = AMD_SQLITE_NOT_NULL;
  v174[1] = v3;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v174 forKeys:v173 count:2];
  v186[5] = v59;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v186 forKeys:v185 count:6];
  v196[1] = v58;
  v195[2] = @"testTable1";
  v171[0] = @"eventTime";
  v169[0] = AMD_SQLITE_TYPE;
  v170[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v169[1] = AMD_SQLITE_NOT_NULL;
  v170[1] = v3;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v170 forKeys:v169 count:2];
  v172[0] = v57;
  v171[1] = @"eventType";
  v167[0] = AMD_SQLITE_TYPE;
  v168[0] = AMD_SQLITE_DATA_TYPE_INT;
  v167[1] = AMD_SQLITE_NOT_NULL;
  v168[1] = v3;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v168 forKeys:v167 count:2];
  v172[1] = v56;
  v171[2] = @"adamId";
  v165[0] = AMD_SQLITE_TYPE;
  v166[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v165[1] = AMD_SQLITE_NOT_NULL;
  v166[1] = v3;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v166 forKeys:v165 count:2];
  v172[2] = v55;
  v171[3] = @"duration";
  v163[0] = AMD_SQLITE_TYPE;
  v164[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v163[1] = AMD_SQLITE_NOT_NULL;
  v164[1] = v3;
  v163[2] = AMD_SQLITE_DEFAULT_VALUE;
  v164[2] = &unk_2852BA920;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v163 count:3];
  v172[3] = v54;
  v171[4] = 0x2852A9168;
  v161[0] = AMD_SQLITE_TYPE;
  v162[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v161[1] = AMD_SQLITE_NOT_NULL;
  v162[1] = v3;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v162 forKeys:v161 count:2];
  v172[4] = v53;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v172 forKeys:v171 count:5];
  v196[2] = v52;
  v195[3] = @"testTable2";
  v159[0] = @"c1";
  v157[0] = AMD_SQLITE_TYPE;
  v158[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v157[1] = AMD_SQLITE_NOT_NULL;
  v158[1] = v3;
  v157[2] = AMD_SQLITE_DEFAULT_VALUE;
  v158[2] = @"foo_bar";
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v158 forKeys:v157 count:3];
  v160[0] = v51;
  v159[1] = @"c2";
  v155 = AMD_SQLITE_TYPE;
  v156 = AMD_SQLITE_DATA_TYPE_INT;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v156 forKeys:&v155 count:?];
  v160[1] = v50;
  v159[2] = @"c22";
  v153[0] = AMD_SQLITE_TYPE;
  v154[0] = AMD_SQLITE_DATA_TYPE_INT;
  v153[1] = AMD_SQLITE_NOT_NULL;
  v154[1] = v3;
  v153[2] = AMD_SQLITE_DEFAULT_VALUE;
  v154[2] = &unk_2852BA938;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v154 forKeys:v153 count:3];
  v160[2] = v49;
  v159[3] = @"c3";
  v151[0] = AMD_SQLITE_TYPE;
  v152[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v151[1] = AMD_SQLITE_NOT_NULL;
  v152[1] = v3;
  v151[2] = AMD_SQLITE_DEFAULT_VALUE;
  v152[2] = &unk_2852BA950;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v152 forKeys:v151 count:3];
  v160[3] = v48;
  v159[4] = @"c4";
  v149[0] = AMD_SQLITE_TYPE;
  v150[0] = AMD_SQLITE_DATA_TYPE_FLOAT;
  v149[1] = AMD_SQLITE_NOT_NULL;
  v150[1] = v3;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:2];
  v160[4] = v47;
  v159[5] = @"c5";
  v147 = AMD_SQLITE_TYPE;
  v148 = AMD_SQLITE_DATA_TYPE_BLOB;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
  v160[5] = v46;
  v159[6] = @"c6";
  v145[0] = AMD_SQLITE_TYPE;
  v146[0] = AMD_SQLITE_DATA_TYPE_BLOB;
  v145[1] = AMD_SQLITE_NOT_NULL;
  v146[1] = v3;
  v145[2] = AMD_SQLITE_DEFAULT_VALUE;
  v146[2] = &unk_2852BC660;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:v145 count:3];
  v160[6] = v45;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v160 forKeys:v159 count:7];
  v196[3] = v44;
  v195[4] = @"AMDAppStoreUsageEvents";
  v143[0] = @"adamId";
  v141[0] = AMD_SQLITE_TYPE;
  v142[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v141[1] = AMD_SQLITE_NOT_NULL;
  v142[1] = v3;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:2];
  v144[0] = v43;
  v143[1] = @"shortAppVersion";
  v139[0] = AMD_SQLITE_TYPE;
  v140[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v139[1] = AMD_SQLITE_NOT_NULL;
  v140[1] = v3;
  v139[2] = AMD_SQLITE_DEFAULT_VALUE;
  v140[2] = &stru_2852A6E28;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:v139 count:3];
  v144[1] = v42;
  v143[2] = @"batteryUsage";
  v137 = AMD_SQLITE_TYPE;
  v138 = AMD_SQLITE_DATA_TYPE_FLOAT;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
  v144[2] = v41;
  v143[3] = @"dsId";
  v135[0] = AMD_SQLITE_TYPE;
  v136[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v135[1] = AMD_SQLITE_NOT_NULL;
  v136[1] = v3;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:2];
  v144[3] = v40;
  v143[4] = @"eventTime";
  v133[0] = AMD_SQLITE_TYPE;
  v134[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v133[1] = AMD_SQLITE_NOT_NULL;
  v134[1] = v3;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:2];
  v144[4] = v39;
  v143[5] = @"eventType";
  v131[0] = AMD_SQLITE_TYPE;
  v132[0] = AMD_SQLITE_DATA_TYPE_INT;
  v131[1] = AMD_SQLITE_NOT_NULL;
  v132[1] = v3;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:2];
  v144[5] = v38;
  v143[6] = @"eventSubType";
  v129 = AMD_SQLITE_TYPE;
  v130 = AMD_SQLITE_DATA_TYPE_INT;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
  v144[6] = v37;
  v143[7] = @"eventVersion";
  v127 = AMD_SQLITE_TYPE;
  v128 = AMD_SQLITE_DATA_TYPE_TEXT;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
  v144[7] = v36;
  v143[8] = @"foregroundDuration";
  v125[0] = AMD_SQLITE_TYPE;
  v126[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v125[1] = AMD_SQLITE_NOT_NULL;
  v126[1] = v3;
  v125[2] = AMD_SQLITE_DEFAULT_VALUE;
  v126[2] = &unk_2852BA920;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:3];
  v144[8] = v35;
  v143[9] = @"latitude";
  v123 = AMD_SQLITE_TYPE;
  v124 = AMD_SQLITE_DATA_TYPE_FLOAT;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
  v144[9] = v34;
  v143[10] = @"locationAccuracy";
  v121 = AMD_SQLITE_TYPE;
  v122 = AMD_SQLITE_DATA_TYPE_FLOAT;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
  v144[10] = v33;
  v143[11] = @"longitude";
  v119 = AMD_SQLITE_TYPE;
  v120 = AMD_SQLITE_DATA_TYPE_FLOAT;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
  v144[11] = v32;
  v143[12] = @"networkType";
  v117 = AMD_SQLITE_TYPE;
  v118 = AMD_SQLITE_DATA_TYPE_INT;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
  v144[12] = v31;
  v143[13] = @"platform";
  v115[0] = AMD_SQLITE_TYPE;
  v116[0] = AMD_SQLITE_DATA_TYPE_INT;
  v115[1] = AMD_SQLITE_NOT_NULL;
  v116[1] = v3;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:2];
  v144[13] = v30;
  v143[14] = @"storageUsed";
  v113 = AMD_SQLITE_TYPE;
  v114 = AMD_SQLITE_DATA_TYPE_INT64;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
  v144[14] = v29;
  v143[15] = @"timeZoneOffset";
  v111[0] = AMD_SQLITE_TYPE;
  v112[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v111[1] = AMD_SQLITE_NOT_NULL;
  v112[1] = v3;
  v111[2] = AMD_SQLITE_DEFAULT_VALUE;
  v112[2] = &unk_2852BA920;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:3];
  v144[15] = v28;
  v143[16] = 0x2852A9168;
  v109[0] = AMD_SQLITE_TYPE;
  v110[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v109[1] = AMD_SQLITE_NOT_NULL;
  v110[1] = v3;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:2];
  v144[16] = v27;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v143 count:17];
  v196[4] = v26;
  v195[5] = @"BiomeAppActivity";
  v107[0] = @"bundleId";
  v105[0] = AMD_SQLITE_TYPE;
  v106[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v105[1] = AMD_SQLITE_NOT_NULL;
  v106[1] = v3;
  v105[2] = AMD_SQLITE_DEFAULT_VALUE;
  v106[2] = @"nil_bundle_ID";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:3];
  v108[0] = v25;
  v107[1] = @"activityType";
  v103[0] = AMD_SQLITE_TYPE;
  v104[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v103[1] = AMD_SQLITE_NOT_NULL;
  v104[1] = v3;
  v103[2] = AMD_SQLITE_DEFAULT_VALUE;
  v104[2] = @"nil_activity_type";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:3];
  v108[1] = v24;
  v107[2] = @"eventTimestamp";
  v101[0] = AMD_SQLITE_TYPE;
  v102[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v101[1] = AMD_SQLITE_NOT_NULL;
  v102[1] = v3;
  v101[2] = AMD_SQLITE_DEFAULT_VALUE;
  v102[2] = &unk_2852BA920;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:3];
  v108[2] = v23;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:3];
  v196[5] = v22;
  v195[6] = @"BiomeWifiActivity";
  v99[0] = @"SSID";
  v97[0] = AMD_SQLITE_TYPE;
  v98[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v97[1] = AMD_SQLITE_NOT_NULL;
  v98[1] = v3;
  v97[2] = AMD_SQLITE_DEFAULT_VALUE;
  v98[2] = @"nil_SSID";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:3];
  v100[0] = v21;
  v99[1] = @"eventTimestamp";
  v95[0] = AMD_SQLITE_TYPE;
  v96[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v95[1] = AMD_SQLITE_NOT_NULL;
  v96[1] = v3;
  v95[2] = AMD_SQLITE_DEFAULT_VALUE;
  v96[2] = &unk_2852BA920;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:3];
  v100[1] = v20;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:2];
  v196[6] = v19;
  v195[7] = @"DeviceStorageUsage";
  v93[0] = @"deviceId";
  v91[0] = AMD_SQLITE_TYPE;
  v92[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v91[1] = AMD_SQLITE_NOT_NULL;
  v92[1] = v3;
  v91[2] = AMD_SQLITE_DEFAULT_VALUE;
  v92[2] = @"undefined";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:3];
  v94[0] = v18;
  v93[1] = @"time";
  v89[0] = AMD_SQLITE_TYPE;
  v90[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v89[1] = AMD_SQLITE_NOT_NULL;
  v90[1] = v3;
  v89[2] = AMD_SQLITE_DEFAULT_VALUE;
  v90[2] = &unk_2852BA920;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:3];
  v94[1] = v17;
  v93[2] = @"totalDeviceCapacityGB";
  v87[0] = AMD_SQLITE_TYPE;
  v88[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v87[1] = AMD_SQLITE_NOT_NULL;
  v88[1] = v3;
  v87[2] = AMD_SQLITE_DEFAULT_VALUE;
  v88[2] = &unk_2852BA920;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:3];
  v94[2] = v16;
  v93[3] = @"availableDeviceCapacityGB";
  v85[0] = AMD_SQLITE_TYPE;
  v86[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v85[1] = AMD_SQLITE_NOT_NULL;
  v86[1] = v3;
  v85[2] = AMD_SQLITE_DEFAULT_VALUE;
  v86[2] = &unk_2852BA920;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:3];
  v94[3] = v15;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:?];
  v196[7] = v14;
  v195[8] = @"topics";
  v83[0] = @"topicId";
  v81 = AMD_SQLITE_TYPE;
  v82 = AMD_SQLITE_DATA_TYPE_TEXT;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
  v84[0] = v13;
  v83[1] = @"score";
  v79 = AMD_SQLITE_TYPE;
  v80 = AMD_SQLITE_DATA_TYPE_FLOAT;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  v84[1] = v12;
  v83[2] = @"most_recent_documentId";
  v77 = AMD_SQLITE_TYPE;
  v78 = AMD_SQLITE_DATA_TYPE_TEXT;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  v84[2] = v11;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:3];
  v196[8] = v10;
  v195[9] = @"megadome_topics";
  v75[0] = @"topicId";
  v73 = AMD_SQLITE_TYPE;
  v74 = AMD_SQLITE_DATA_TYPE_TEXT;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
  v76[0] = v9;
  v75[1] = @"score";
  v71 = AMD_SQLITE_TYPE;
  v72 = AMD_SQLITE_DATA_TYPE_FLOAT;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  v76[1] = v8;
  v75[2] = @"most_recent_documentId";
  v69 = AMD_SQLITE_TYPE;
  v70 = AMD_SQLITE_DATA_TYPE_TEXT;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
  v76[2] = v7;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:3];
  v196[9] = v6;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v196 forKeys:v195 count:10];
  v198[2] = v4;
  v197[3] = AMD_SQLITE_STREAM_TO_TABLE_MAP;
  v198[3] = &unk_2852BBB28;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v198 forKeys:v197 count:4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
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
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v61);
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v67);
  MEMORY[0x277D82BD8](v68);
  *MEMORY[0x277D85DE8];

  return v5;
}

@end