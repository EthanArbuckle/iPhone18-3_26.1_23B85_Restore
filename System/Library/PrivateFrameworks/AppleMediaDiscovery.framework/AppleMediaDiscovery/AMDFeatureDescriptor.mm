@interface AMDFeatureDescriptor
+ (id)getDataType:(id)type;
- (AMDFeatureDescriptor)initWithDictionary:(id)dictionary withUserId:(id)id featureName:(id)name;
- (AMDFeatureDescriptor)initWithDictionaryV2:(id)v2 withUserId:(id)id featureName:(id)name withDomain:(id)domain;
- (BOOL)checkJoinParameters;
- (id)getFeature:(id *)feature;
- (id)getFeatureData:(id *)data;
- (id)performInnerJoin:(id)join;
- (id)performOuterJoin:(id)join;
- (id)prepareArrayResult:(id)result;
- (id)prepareDictionaryResult:(id)result;
- (id)prepareResult:(id)result;
- (id)sort:(id)sort;
- (id)transformTPDataForJoin:(id)join;
- (void)outerJoin:(id)join;
@end

@implementation AMDFeatureDescriptor

+ (id)getDataType:(id)type
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  if (!getDataType__typeDict)
  {
    v11 = objc_alloc(MEMORY[0x277CBEAC0]);
    v10 = 0x277CCA000uLL;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:100];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:200];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:300];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:600];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:500];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:700];
    v12 = &v7;
    v3 = [v11 initWithObjectsAndKeys:{v18, @"int16", v17, @"int32", v16, @"int64", v15, @"float32", v14, @"double", v13, @"string", 0}];
    v4 = getDataType__typeDict;
    getDataType__typeDict = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
  }

  v8 = location;
  v9 = [getDataType__typeDict valueForKey:location[0]];
  objc_storeStrong(v8, 0);
  v5 = v9;

  return v5;
}

- (AMDFeatureDescriptor)initWithDictionary:(id)dictionary withUserId:(id)id featureName:(id)name
{
  v135 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v124 = 0;
  objc_storeStrong(&v124, id);
  v123 = 0;
  objc_storeStrong(&v123, name);
  v5 = selfCopy;
  selfCopy = 0;
  v122.receiver = v5;
  v122.super_class = AMDFeatureDescriptor;
  selfCopy = [(AMDFeatureDescriptor *)&v122 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [selfCopy setFeatureName:v123];
  [selfCopy setVersion:@"v1"];
  v121 = [location[0] valueForKey:@"source_entity"];
  if (v121)
  {
    v63 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:v121];
    [selfCopy setFetchRequest:?];
    MEMORY[0x277D82BD8](v63);
    fetchRequest = [selfCopy fetchRequest];
    [fetchRequest setResultType:2];
    MEMORY[0x277D82BD8](fetchRequest);
    v116 = [location[0] valueForKey:@"properties_to_fetch"];
    if (!v116 || ![v116 count])
    {
      v115 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v114 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        v61 = v115;
        v62 = v114;
        __os_log_helper_16_0_0(v113);
        _os_log_error_impl(&dword_240CB9000, v61, v62, "Missng property descriptors", v113, 2u);
      }

      objc_storeStrong(&v115, 0);
      v127 = 0;
      v117 = 1;
LABEL_93:
      objc_storeStrong(&v116, 0);
      goto LABEL_94;
    }

    if ([v116 count] > 2)
    {
      v112 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v111 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
      {
        v59 = v112;
        v60 = v111;
        __os_log_helper_16_0_0(v110);
        _os_log_error_impl(&dword_240CB9000, v59, v60, "More than two property descriptors found", v110, 2u);
      }

      objc_storeStrong(&v112, 0);
      v127 = 0;
      v117 = 1;
      goto LABEL_93;
    }

    v109 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v116, "count")}];
    memset(__b, 0, sizeof(__b));
    v57 = MEMORY[0x277D82BE0](v116);
    v58 = [v57 countByEnumeratingWithState:__b objects:v134 count:16];
    if (!v58)
    {
LABEL_51:
      v117 = 0;
LABEL_52:
      MEMORY[0x277D82BD8](v57);
      if (!v117)
      {
        fetchRequest2 = [selfCopy fetchRequest];
        [fetchRequest2 setPropertiesToFetch:v109];
        MEMORY[0x277D82BD8](fetchRequest2);
        v87 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v36 = [&unk_2852BC208 objectForKey:v121];
        MEMORY[0x277D82BD8](v36);
        if (v36)
        {
          v124 = [MEMORY[0x277CCACA8] stringWithFormat:@"userId == %@", v124];
          v33 = v87;
          v34 = [MEMORY[0x277CCAC30] predicateWithFormat:v124];
          [v33 addObject:?];
          MEMORY[0x277D82BD8](v34);
          objc_storeStrong(&v124, 0);
        }

        v85 = [location[0] valueForKey:@"predicates"];
        if (v85)
        {
          memset(v83, 0, sizeof(v83));
          v31 = MEMORY[0x277D82BE0](v85);
          v32 = [v31 countByEnumeratingWithState:v83 objects:v129 count:16];
          if (v32)
          {
            v28 = *v83[2];
            v29 = 0;
            v30 = v32;
            while (1)
            {
              v27 = v29;
              if (*v83[2] != v28)
              {
                objc_enumerationMutation(v31);
              }

              v84 = *(v83[1] + 8 * v29);
              v25 = v87;
              v26 = [MEMORY[0x277CCAC30] predicateWithFormat:v84];
              [v25 addObject:?];
              MEMORY[0x277D82BD8](v26);
              ++v29;
              if (v27 + 1 >= v30)
              {
                v29 = 0;
                v30 = [v31 countByEnumeratingWithState:v83 objects:v129 count:16];
                if (!v30)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x277D82BD8](v31);
        }

        v82 = [location[0] objectForKey:@"only_local_data"];
        if (v82 && ([v82 BOOLValue] & 1) != 0)
        {
          v81 = 0;
          v79 = 0;
          v24 = [AMDDataSync fetchDeviceID:&v79];
          objc_storeStrong(&v81, v79);
          v80 = v24;
          if (v81 || !v80)
          {
            v78 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v77 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              v20 = v78;
              v21 = v77;
              __os_log_helper_16_0_0(v76);
              _os_log_error_impl(&dword_240CB9000, v20, v21, "Local device Id could not be fetched", v76, 2u);
            }

            objc_storeStrong(&v78, 0);
          }

          else
          {
            v22 = v87;
            v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"deviceId == %@", v80];
            [v22 addObject:?];
            MEMORY[0x277D82BD8](v23);
          }

          objc_storeStrong(&v80, 0);
          objc_storeStrong(&v81, 0);
        }

        fetchRequest3 = [selfCopy fetchRequest];
        v17 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v87];
        [fetchRequest3 setPredicate:?];
        MEMORY[0x277D82BD8](v17);
        MEMORY[0x277D82BD8](fetchRequest3);
        aggregatedProperty = [selfCopy aggregatedProperty];
        MEMORY[0x277D82BD8](aggregatedProperty);
        if (aggregatedProperty)
        {
          fetchRequest4 = [selfCopy fetchRequest];
          keyProperty = [selfCopy keyProperty];
          v128 = keyProperty;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];
          [fetchRequest4 setPropertiesToGroupBy:?];
          MEMORY[0x277D82BD8](v14);
          MEMORY[0x277D82BD8](keyProperty);
          MEMORY[0x277D82BD8](fetchRequest4);
        }

        v75 = [location[0] valueForKey:@"sort_descriptors"];
        if (v75 && [v75 count])
        {
          firstObject = [v75 firstObject];
          v12 = [firstObject objectForKey:@"sort_order"];
          [selfCopy setSortOrder:?];
          MEMORY[0x277D82BD8](v12);
          MEMORY[0x277D82BD8](firstObject);
        }

        v10 = [location[0] valueForKey:@"num_records"];
        [selfCopy setMaxRecords:?];
        MEMORY[0x277D82BD8](v10);
        maxRecords = [selfCopy maxRecords];
        v73 = 0;
        v71 = 0;
        if (maxRecords && (v74 = [selfCopy maxRecords], v73 = 1, objc_msgSend(v74, "integerValue") > 0))
        {
          maxRecords2 = [selfCopy maxRecords];
          v71 = 1;
          v9 = maxRecords2;
        }

        else
        {
          v9 = &unk_2852BB1C0;
        }

        [selfCopy setMaxRecords:v9];
        if (v71)
        {
          MEMORY[0x277D82BD8](maxRecords2);
        }

        if (v73)
        {
          MEMORY[0x277D82BD8](v74);
        }

        MEMORY[0x277D82BD8](maxRecords);
        v70 = [location[0] valueForKey:@"do_outer_join"];
        if (v70)
        {
          intValue = [v70 intValue];
        }

        else
        {
          intValue = 1;
        }

        [selfCopy setDoOuterJoin:intValue != 0];
        v69 = [location[0] valueForKey:@"default_join_values"];
        if (v69)
        {
          v7 = v69;
        }

        else
        {
          v7 = &unk_2852BB1D8;
        }

        [selfCopy setDefaultJoinValue:v7];
        v127 = MEMORY[0x277D82BE0](selfCopy);
        v117 = 1;
        objc_storeStrong(&v69, 0);
        objc_storeStrong(&v70, 0);
        objc_storeStrong(&v75, 0);
        objc_storeStrong(&v82, 0);
        objc_storeStrong(&v85, 0);
        objc_storeStrong(&v87, 0);
      }

      objc_storeStrong(&v109, 0);
      goto LABEL_93;
    }

    v54 = *__b[2];
    v55 = 0;
    v56 = v58;
    while (1)
    {
      v53 = v55;
      if (*__b[2] != v54)
      {
        objc_enumerationMutation(v57);
      }

      v108 = *(__b[1] + 8 * v55);
      v106 = [v108 valueForKey:@"property_name"];
      if (!v106)
      {
        v105 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v104 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
        {
          v51 = v105;
          v52 = v104;
          __os_log_helper_16_0_0(v103);
          _os_log_error_impl(&dword_240CB9000, v51, v52, "Missng property name", v103, 2u);
        }

        objc_storeStrong(&v105, 0);
        v127 = 0;
        v117 = 1;
        goto LABEL_48;
      }

      v102 = [v108 valueForKey:@"aggregator_function"];
      if (v102)
      {
        v101 = [v108 valueForKey:@"aggregated_data_type"];
        if (v101)
        {
          v98 = [AMDFeatureDescriptor getDataType:v101];
          if (v98)
          {
            v95 = [v108 valueForKey:@"aggregator_keys"];
            if ([v95 count])
            {
              v92 = objc_alloc_init(MEMORY[0x277CBEB18]);
              memset(v90, 0, sizeof(v90));
              v43 = MEMORY[0x277D82BE0](v95);
              v44 = [v43 countByEnumeratingWithState:v90 objects:v130 count:16];
              if (v44)
              {
                v40 = *v90[2];
                v41 = 0;
                v42 = v44;
                while (1)
                {
                  v39 = v41;
                  if (*v90[2] != v40)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v91 = *(v90[1] + 8 * v41);
                  v37 = v92;
                  v38 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v91];
                  [v37 addObject:?];
                  MEMORY[0x277D82BD8](v38);
                  ++v41;
                  if (v39 + 1 >= v42)
                  {
                    v41 = 0;
                    v42 = [v43 countByEnumeratingWithState:v90 objects:v130 count:16];
                    if (!v42)
                    {
                      break;
                    }
                  }
                }
              }

              MEMORY[0x277D82BD8](v43);
              v89 = [MEMORY[0x277CCA9C0] expressionForFunction:v102 arguments:v92];
              v88 = objc_alloc_init(MEMORY[0x277CBE410]);
              [v88 setName:v106];
              [v88 setExpressionResultType:{objc_msgSend(v98, "unsignedIntegerValue")}];
              [v88 setExpression:v89];
              [v109 addObject:v88];
              [selfCopy setAggregatedProperty:v106];
              objc_storeStrong(&v88, 0);
              objc_storeStrong(&v89, 0);
              objc_storeStrong(&v92, 0);
              v117 = 0;
            }

            else
            {
              v94 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v93 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                v45 = v94;
                v46 = v93;
                __os_log_helper_16_2_1_8_64(v131, v106);
                _os_log_error_impl(&dword_240CB9000, v45, v46, "No aggregator keys for aggregated property %@", v131, 0xCu);
              }

              objc_storeStrong(&v94, 0);
              v127 = 0;
              v117 = 1;
            }

            objc_storeStrong(&v95, 0);
          }

          else
          {
            v97 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v96 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
            {
              v47 = v97;
              v48 = v96;
              __os_log_helper_16_2_2_8_64_8_64(v132, v106, v101);
              _os_log_error_impl(&dword_240CB9000, v47, v48, "Invalid data type for aggregated property %@: %@", v132, 0x16u);
            }

            objc_storeStrong(&v97, 0);
            v127 = 0;
            v117 = 1;
          }

          objc_storeStrong(&v98, 0);
        }

        else
        {
          v100 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v99 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
          {
            v49 = v100;
            v50 = v99;
            __os_log_helper_16_2_1_8_64(v133, v106);
            _os_log_error_impl(&dword_240CB9000, v49, v50, "Missng data type for aggregated property %@", v133, 0xCu);
          }

          objc_storeStrong(&v100, 0);
          v127 = 0;
          v117 = 1;
        }

        objc_storeStrong(&v101, 0);
        if (v117)
        {
          goto LABEL_47;
        }
      }

      else
      {
        [v109 addObject:v106];
        [selfCopy setKeyProperty:v106];
      }

      v117 = 0;
LABEL_47:
      objc_storeStrong(&v102, 0);
LABEL_48:
      objc_storeStrong(&v106, 0);
      if (v117)
      {
        goto LABEL_52;
      }

      ++v55;
      if (v53 + 1 >= v56)
      {
        v55 = 0;
        v56 = [v57 countByEnumeratingWithState:__b objects:v134 count:16];
        if (!v56)
        {
          goto LABEL_51;
        }
      }
    }
  }

  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    log = oslog;
    v66 = type;
    __os_log_helper_16_0_0(v118);
    _os_log_error_impl(&dword_240CB9000, log, v66, "Missing entity name", v118, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v127 = 0;
  v117 = 1;
LABEL_94:
  objc_storeStrong(&v121, 0);
  objc_storeStrong(&v123, 0);
  objc_storeStrong(&v124, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v127;
}

- (AMDFeatureDescriptor)initWithDictionaryV2:(id)v2 withUserId:(id)id featureName:(id)name withDomain:(id)domain
{
  v189 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, v2);
  v178 = 0;
  objc_storeStrong(&v178, id);
  v177 = 0;
  objc_storeStrong(&v177, name);
  v176 = 0;
  objc_storeStrong(&v176, domain);
  v6 = selfCopy;
  selfCopy = 0;
  v175.receiver = v6;
  v175.super_class = AMDFeatureDescriptor;
  selfCopy = [(AMDFeatureDescriptor *)&v175 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [selfCopy setFeatureName:v177];
  [selfCopy setVersion:@"v2"];
  v174 = [location[0] valueForKey:@"source_entity"];
  if (v174)
  {
    v89 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:v174];
    [selfCopy setFetchRequest:?];
    MEMORY[0x277D82BD8](v89);
    fetchRequest = [selfCopy fetchRequest];
    [fetchRequest setResultType:2];
    MEMORY[0x277D82BD8](fetchRequest);
    v169 = [location[0] valueForKey:@"properties_to_fetch"];
    if (!v169 || ![v169 count])
    {
      v168 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v167 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
      {
        v87 = v168;
        v88 = v167;
        __os_log_helper_16_0_0(v166);
        _os_log_error_impl(&dword_240CB9000, v87, v88, "Missng property descriptors", v166, 2u);
      }

      objc_storeStrong(&v168, 0);
      v181 = 0;
      v170 = 1;
LABEL_131:
      objc_storeStrong(&v169, 0);
      goto LABEL_132;
    }

    v165 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v169, "count")}];
    v164 = 0;
    v84 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [selfCopy setPropertyDict:?];
    MEMORY[0x277D82BD8](v84);
    memset(__b, 0, sizeof(__b));
    v85 = MEMORY[0x277D82BE0](v169);
    v86 = [v85 countByEnumeratingWithState:__b objects:v188 count:16];
    if (!v86)
    {
LABEL_59:
      v170 = 0;
LABEL_60:
      MEMORY[0x277D82BD8](v85);
      if (!v170)
      {
        fetchRequest2 = [selfCopy fetchRequest];
        [fetchRequest2 setPropertiesToFetch:v165];
        MEMORY[0x277D82BD8](fetchRequest2);
        v135 = [location[0] objectForKey:@"having_predicate"];
        if ((v164 & 1) != 0 && v135 && [v135 count])
        {
          v134 = objc_alloc_init(MEMORY[0x277CBEB18]);
          memset(v132, 0, sizeof(v132));
          v51 = MEMORY[0x277D82BE0](v135);
          v52 = [v51 countByEnumeratingWithState:v132 objects:v183 count:16];
          if (v52)
          {
            v48 = *v132[2];
            v49 = 0;
            v50 = v52;
            while (1)
            {
              v47 = v49;
              if (*v132[2] != v48)
              {
                objc_enumerationMutation(v51);
              }

              v133 = *(v132[1] + 8 * v49);
              v131 = [v133 objectForKey:@"variable_name"];
              v130 = [v133 objectForKey:@"predicate"];
              if (v131 && v130)
              {
                v126 = [MEMORY[0x277CCA9C0] expressionForVariable:v131];
                v125 = [@"%@ " stringByAppendingString:v130];
                v126 = [MEMORY[0x277CCAC30] predicateWithFormat:v125, v126];
                [v134 addObject:v126];
                objc_storeStrong(&v126, 0);
                objc_storeStrong(&v125, 0);
                objc_storeStrong(&v126, 0);
                v170 = 0;
              }

              else
              {
                v129 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v128 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                {
                  v45 = v129;
                  v46 = v128;
                  __os_log_helper_16_0_0(v127);
                  _os_log_error_impl(&dword_240CB9000, v45, v46, "Incomplete predicate dictionary within the having predicate", v127, 2u);
                }

                objc_storeStrong(&v129, 0);
                v170 = 7;
              }

              objc_storeStrong(&v130, 0);
              objc_storeStrong(&v131, 0);
              ++v49;
              if (v47 + 1 >= v50)
              {
                v49 = 0;
                v50 = [v51 countByEnumeratingWithState:v132 objects:v183 count:16];
                if (!v50)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x277D82BD8](v51);
          v123 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v134];
          fetchRequest3 = [selfCopy fetchRequest];
          [fetchRequest3 setHavingPredicate:v123];
          MEMORY[0x277D82BD8](fetchRequest3);
          objc_storeStrong(&v123, 0);
          objc_storeStrong(&v134, 0);
        }

        v122 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v43 = [&unk_2852BC230 objectForKey:v174];
        MEMORY[0x277D82BD8](v43);
        if (v43)
        {
          v178 = [MEMORY[0x277CCACA8] stringWithFormat:@"userId == %@", v178];
          v41 = v122;
          v42 = [MEMORY[0x277CCAC30] predicateWithFormat:v178];
          [v41 addObject:?];
          MEMORY[0x277D82BD8](v42);
          objc_storeStrong(&v178, 0);
        }

        v120 = [location[0] objectForKey:@"only_local_data"];
        if (v120 && ([v120 BOOLValue] & 1) != 0)
        {
          v119 = 0;
          v117 = 0;
          v40 = [AMDDataSync fetchDeviceID:&v117];
          objc_storeStrong(&v119, v117);
          v118 = v40;
          if (v119 || !v118)
          {
            v116 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v115 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
            {
              v36 = v116;
              v37 = v115;
              __os_log_helper_16_0_0(v114);
              _os_log_error_impl(&dword_240CB9000, v36, v37, "Local device Id could not be fetched", v114, 2u);
            }

            objc_storeStrong(&v116, 0);
          }

          else
          {
            v38 = v122;
            v118 = [MEMORY[0x277CCAC30] predicateWithFormat:@"deviceId == %@", v118];
            [v38 addObject:?];
            MEMORY[0x277D82BD8](v118);
          }

          objc_storeStrong(&v118, 0);
          objc_storeStrong(&v119, 0);
        }

        v113 = [location[0] valueForKey:@"predicates"];
        if (v113)
        {
          memset(v111, 0, sizeof(v111));
          v34 = MEMORY[0x277D82BE0](v113);
          v35 = [v34 countByEnumeratingWithState:v111 objects:v182 count:16];
          if (v35)
          {
            v31 = *v111[2];
            v32 = 0;
            v33 = v35;
            while (1)
            {
              v30 = v32;
              if (*v111[2] != v31)
              {
                objc_enumerationMutation(v34);
              }

              v112 = *(v111[1] + 8 * v32);
              v28 = v122;
              v29 = [MEMORY[0x277CCAC30] predicateWithFormat:v112];
              [v28 addObject:?];
              MEMORY[0x277D82BD8](v29);
              ++v32;
              if (v30 + 1 >= v33)
              {
                v32 = 0;
                v33 = [v34 countByEnumeratingWithState:v111 objects:v182 count:16];
                if (!v33)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x277D82BD8](v34);
        }

        fetchRequest4 = [selfCopy fetchRequest];
        v26 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v122];
        [fetchRequest4 setPredicate:?];
        MEMORY[0x277D82BD8](v26);
        MEMORY[0x277D82BD8](fetchRequest4);
        v110 = [location[0] objectForKey:@"group_by_descriptors"];
        if (v110)
        {
          aggregatedPropertyList = [selfCopy aggregatedPropertyList];
          v105 = 0;
          v23 = 0;
          if (aggregatedPropertyList)
          {
            aggregatedPropertyList2 = [selfCopy aggregatedPropertyList];
            v105 = 1;
            v23 = 0;
            if ([aggregatedPropertyList2 count])
            {
              v23 = [v110 count] != 0;
            }
          }

          if (v105)
          {
            MEMORY[0x277D82BD8](aggregatedPropertyList2);
          }

          MEMORY[0x277D82BD8](aggregatedPropertyList);
          if (v23)
          {
            fetchRequest5 = [selfCopy fetchRequest];
            [fetchRequest5 setPropertiesToGroupBy:v110];
            MEMORY[0x277D82BD8](fetchRequest5);
          }

          v104 = [location[0] valueForKey:@"sort_descriptors"];
          if (v104 && [v104 count])
          {
            firstObject = [v104 firstObject];
            v17 = [firstObject objectForKey:@"sort_order"];
            [selfCopy setSortOrder:?];
            MEMORY[0x277D82BD8](v17);
            MEMORY[0x277D82BD8](firstObject);
            firstObject2 = [v104 firstObject];
            v19 = [firstObject2 objectForKey:@"sort_key"];
            [selfCopy setSortKey:?];
            MEMORY[0x277D82BD8](v19);
            MEMORY[0x277D82BD8](firstObject2);
          }

          v15 = [location[0] valueForKey:@"num_records"];
          [selfCopy setMaxRecords:?];
          MEMORY[0x277D82BD8](v15);
          maxRecords = [selfCopy maxRecords];
          v102 = 0;
          v100 = 0;
          if (maxRecords && (v103 = [selfCopy maxRecords], v102 = 1, objc_msgSend(v103, "integerValue") > 0))
          {
            maxRecords2 = [selfCopy maxRecords];
            v100 = 1;
            v14 = maxRecords2;
          }

          else
          {
            v14 = &unk_2852BB1C0;
          }

          [selfCopy setMaxRecords:v14];
          if (v100)
          {
            MEMORY[0x277D82BD8](maxRecords2);
          }

          if (v102)
          {
            MEMORY[0x277D82BD8](v103);
          }

          MEMORY[0x277D82BD8](maxRecords);
          v99 = [location[0] objectForKey:@"join_descriptors"];
          v97 = 0;
          v13 = 0;
          if (v99)
          {
            firstObject3 = [v99 firstObject];
            v97 = 1;
            v13 = firstObject3 != 0;
          }

          if (v97)
          {
            MEMORY[0x277D82BD8](firstObject3);
          }

          if (!v13)
          {
            goto LABEL_127;
          }

          firstObject4 = [v99 firstObject];
          v8 = [firstObject4 objectForKey:@"key"];
          [selfCopy setKeyProperty:?];
          MEMORY[0x277D82BD8](v8);
          v9 = [firstObject4 objectForKey:@"type"];
          [selfCopy setJoinType:?];
          MEMORY[0x277D82BD8](v9);
          v10 = [firstObject4 objectForKey:@"table"];
          [selfCopy setJoinTable:?];
          MEMORY[0x277D82BD8](v10);
          v11 = [firstObject4 objectForKey:@"default_join_values"];
          [selfCopy setDefaultJoinValueDict:?];
          MEMORY[0x277D82BD8](v11);
          v12 = [firstObject4 objectForKey:@"columns_to_fetch"];
          [selfCopy setJoinRequiredColumns:?];
          MEMORY[0x277D82BD8](v12);
          [selfCopy setJoinTableDomain:v176];
          if ([selfCopy checkJoinParameters])
          {
            v170 = 0;
          }

          else
          {
            v181 = 0;
            v170 = 1;
          }

          objc_storeStrong(&firstObject4, 0);
          if (!v170)
          {
LABEL_127:
            v181 = MEMORY[0x277D82BE0](selfCopy);
            v170 = 1;
          }

          objc_storeStrong(&v99, 0);
          objc_storeStrong(&v104, 0);
        }

        else
        {
          v109 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v108 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            v24 = v109;
            v25 = v108;
            __os_log_helper_16_0_0(v107);
            _os_log_error_impl(&dword_240CB9000, v24, v25, "Properties to group by array is absent", v107, 2u);
          }

          objc_storeStrong(&v109, 0);
          v181 = 0;
          v170 = 1;
        }

        objc_storeStrong(&v110, 0);
        objc_storeStrong(&v113, 0);
        objc_storeStrong(&v120, 0);
        objc_storeStrong(&v122, 0);
        objc_storeStrong(&v135, 0);
      }

      objc_storeStrong(&v165, 0);
      goto LABEL_131;
    }

    v81 = *__b[2];
    v82 = 0;
    v83 = v86;
    while (1)
    {
      v80 = v82;
      if (*__b[2] != v81)
      {
        objc_enumerationMutation(v85);
      }

      v163 = *(__b[1] + 8 * v82);
      v161 = [v163 valueForKey:@"property_name"];
      if (!v161)
      {
        v160 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v159 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
        {
          v78 = v160;
          v79 = v159;
          __os_log_helper_16_0_0(v158);
          _os_log_error_impl(&dword_240CB9000, v78, v79, "Missng property name", v158, 2u);
        }

        objc_storeStrong(&v160, 0);
        v181 = 0;
        v170 = 1;
        goto LABEL_56;
      }

      v157 = [v163 valueForKey:@"aggregator_function"];
      if (v157)
      {
        v164 = 1;
        aggregatedPropertyList3 = [selfCopy aggregatedPropertyList];
        MEMORY[0x277D82BD8](aggregatedPropertyList3);
        if (!aggregatedPropertyList3)
        {
          v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [selfCopy setAggregatedPropertyList:?];
          MEMORY[0x277D82BD8](v70);
        }

        v149 = [v163 valueForKey:@"aggregated_data_type"];
        if (v149)
        {
          v146 = [AMDFeatureDescriptor getDataType:v149];
          if (v146)
          {
            v143 = [v163 valueForKey:@"aggregator_keys"];
            if ([v143 count])
            {
              v140 = objc_alloc_init(MEMORY[0x277CBEB18]);
              memset(v138, 0, sizeof(v138));
              v62 = MEMORY[0x277D82BE0](v143);
              v63 = [v62 countByEnumeratingWithState:v138 objects:v184 count:16];
              if (v63)
              {
                v59 = *v138[2];
                v60 = 0;
                v61 = v63;
                while (1)
                {
                  v58 = v60;
                  if (*v138[2] != v59)
                  {
                    objc_enumerationMutation(v62);
                  }

                  v139 = *(v138[1] + 8 * v60);
                  v56 = v140;
                  v57 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v139];
                  [v56 addObject:?];
                  MEMORY[0x277D82BD8](v57);
                  ++v60;
                  if (v58 + 1 >= v61)
                  {
                    v60 = 0;
                    v61 = [v62 countByEnumeratingWithState:v138 objects:v184 count:16];
                    if (!v61)
                    {
                      break;
                    }
                  }
                }
              }

              MEMORY[0x277D82BD8](v62);
              v137 = [MEMORY[0x277CCA9C0] expressionForFunction:v157 arguments:v140];
              v136 = objc_alloc_init(MEMORY[0x277CBE410]);
              [v136 setName:v161];
              [v136 setExpressionResultType:{objc_msgSend(v146, "unsignedIntegerValue")}];
              [v136 setExpression:v137];
              [v165 addObject:v136];
              [selfCopy setAggregatedProperty:v161];
              aggregatedPropertyList4 = [selfCopy aggregatedPropertyList];
              [aggregatedPropertyList4 addObject:v161];
              MEMORY[0x277D82BD8](aggregatedPropertyList4);
              propertyDict = [selfCopy propertyDict];
              [propertyDict setObject:v149 forKey:v161];
              MEMORY[0x277D82BD8](propertyDict);
              objc_storeStrong(&v136, 0);
              objc_storeStrong(&v137, 0);
              objc_storeStrong(&v140, 0);
              v170 = 0;
            }

            else
            {
              v142 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v141 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
              {
                v64 = v142;
                v65 = v141;
                __os_log_helper_16_2_1_8_64(v185, v161);
                _os_log_error_impl(&dword_240CB9000, v64, v65, "No aggregator keys for aggregated property %@", v185, 0xCu);
              }

              objc_storeStrong(&v142, 0);
              v181 = 0;
              v170 = 1;
            }

            objc_storeStrong(&v143, 0);
          }

          else
          {
            v145 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v144 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
            {
              v66 = v145;
              v67 = v144;
              __os_log_helper_16_2_2_8_64_8_64(v186, v161, v149);
              _os_log_error_impl(&dword_240CB9000, v66, v67, "Invalid data type for aggregated property %@: %@", v186, 0x16u);
            }

            objc_storeStrong(&v145, 0);
            v181 = 0;
            v170 = 1;
          }

          objc_storeStrong(&v146, 0);
        }

        else
        {
          v148 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v147 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
          {
            v68 = v148;
            v69 = v147;
            __os_log_helper_16_2_1_8_64(v187, v161);
            _os_log_error_impl(&dword_240CB9000, v68, v69, "Missng data type for aggregated property %@", v187, 0xCu);
          }

          objc_storeStrong(&v148, 0);
          v181 = 0;
          v170 = 1;
        }

        objc_storeStrong(&v149, 0);
        if (v170)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v156 = [v163 objectForKey:@"data_type"];
        if (v156)
        {
          v75 = [AMDFeatureDescriptor getDataType:v156];
          MEMORY[0x277D82BD8](v75);
          if (v75)
          {
            [v165 addObject:v161];
            propertyDict2 = [selfCopy propertyDict];
            [propertyDict2 setObject:v156 forKey:v161];
            MEMORY[0x277D82BD8](propertyDict2);
            v170 = 0;
          }

          else
          {
            v152 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v151 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
            {
              v73 = v152;
              v74 = v151;
              __os_log_helper_16_0_0(v150);
              _os_log_error_impl(&dword_240CB9000, v73, v74, "Invalid property data type provided", v150, 2u);
            }

            objc_storeStrong(&v152, 0);
            v181 = 0;
            v170 = 1;
          }
        }

        else
        {
          v155 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v154 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
          {
            v76 = v155;
            v77 = v154;
            __os_log_helper_16_0_0(v153);
            _os_log_error_impl(&dword_240CB9000, v76, v77, "Missing property data type", v153, 2u);
          }

          objc_storeStrong(&v155, 0);
          v181 = 0;
          v170 = 1;
        }

        objc_storeStrong(&v156, 0);
        if (v170)
        {
          goto LABEL_55;
        }
      }

      v170 = 0;
LABEL_55:
      objc_storeStrong(&v157, 0);
LABEL_56:
      objc_storeStrong(&v161, 0);
      if (v170)
      {
        goto LABEL_60;
      }

      ++v82;
      if (v80 + 1 >= v83)
      {
        v82 = 0;
        v83 = [v85 countByEnumeratingWithState:__b objects:v188 count:16];
        if (!v83)
        {
          goto LABEL_59;
        }
      }
    }
  }

  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    log = oslog;
    v92 = type;
    __os_log_helper_16_0_0(v171);
    _os_log_error_impl(&dword_240CB9000, log, v92, "Missing entity name", v171, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v181 = 0;
  v170 = 1;
LABEL_132:
  objc_storeStrong(&v174, 0);
  objc_storeStrong(&v176, 0);
  objc_storeStrong(&v177, 0);
  objc_storeStrong(&v178, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v181;
}

- (id)getFeature:(id *)feature
{
  selfCopy = self;
  v7 = a2;
  featureCopy = feature;
  location = [(AMDFeatureDescriptor *)self getFeatureData:feature];
  if (!*featureCopy && location)
  {
    v9 = [AMDFeature featureFromValue:location];
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&location, 0);
  v3 = v9;

  return v3;
}

- (BOOL)checkJoinParameters
{
  v38 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v33 = a2;
  joinType = [(AMDFeatureDescriptor *)self joinType];
  v31 = 0;
  v17 = 1;
  if (![(NSString *)joinType isEqualToString:@"inner"])
  {
    joinType2 = [(AMDFeatureDescriptor *)selfCopy joinType];
    v31 = 1;
    v17 = [(NSString *)joinType2 isEqualToString:@"outer"];
  }

  if (v31)
  {
    MEMORY[0x277D82BD8](joinType2);
  }

  MEMORY[0x277D82BD8](joinType);
  if (v17)
  {
    joinTable = [(AMDFeatureDescriptor *)selfCopy joinTable];
    v26 = 0;
    v13 = 1;
    if (joinTable)
    {
      joinTableDomain = [(AMDFeatureDescriptor *)selfCopy joinTableDomain];
      v26 = 1;
      v13 = joinTableDomain == 0;
    }

    if (v26)
    {
      MEMORY[0x277D82BD8](joinTableDomain);
    }

    MEMORY[0x277D82BD8](joinTable);
    if (v13)
    {
      v25 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v24 = 16;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v10 = v25;
        v11 = v24;
        __os_log_helper_16_0_0(v23);
        _os_log_error_impl(&dword_240CB9000, v10, v11, "Both the feature name to be joined to the descriptor result, and the feature domain must be specified", v23, 2u);
      }

      objc_storeStrong(&v25, 0);
      v35 = 0;
    }

    else
    {
      joinTableDomain2 = [(AMDFeatureDescriptor *)selfCopy joinTableDomain];
      v9 = [AMDDomains getCodeForDomain:?];
      MEMORY[0x277D82BD8](joinTableDomain2);
      if (v9)
      {
        joinRequiredColumns = [(AMDFeatureDescriptor *)selfCopy joinRequiredColumns];
        v19 = 0;
        v5 = 1;
        if (joinRequiredColumns)
        {
          joinRequiredColumns2 = [(AMDFeatureDescriptor *)selfCopy joinRequiredColumns];
          v19 = 1;
          v5 = [(NSArray *)joinRequiredColumns2 count]== 0;
        }

        if (v19)
        {
          MEMORY[0x277D82BD8](joinRequiredColumns2);
        }

        MEMORY[0x277D82BD8](joinRequiredColumns);
        if (v5)
        {
          v18 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            joinTable2 = [(AMDFeatureDescriptor *)selfCopy joinTable];
            __os_log_helper_16_2_1_8_64(v36, joinTable2);
            _os_log_error_impl(&dword_240CB9000, v18, OS_LOG_TYPE_ERROR, "Required fields from feature: %@ have not been provided", v36, 0xCu);
            MEMORY[0x277D82BD8](joinTable2);
          }

          objc_storeStrong(&v18, 0);
          v35 = 0;
        }

        else
        {
          v35 = 1;
        }
      }

      else
      {
        v22 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v21 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          joinTableDomain3 = [(AMDFeatureDescriptor *)selfCopy joinTableDomain];
          joinTable3 = [(AMDFeatureDescriptor *)selfCopy joinTable];
          __os_log_helper_16_2_2_8_64_8_64(v37, joinTableDomain3, joinTable3);
          _os_log_error_impl(&dword_240CB9000, v22, v21, "Unsupported domain:%@ passed for feature: %@", v37, 0x16u);
          MEMORY[0x277D82BD8](joinTable3);
          MEMORY[0x277D82BD8](joinTableDomain3);
        }

        objc_storeStrong(&v22, 0);
        v35 = 0;
      }
    }
  }

  else
  {
    location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v29 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v29;
      __os_log_helper_16_0_0(v28);
      _os_log_error_impl(&dword_240CB9000, log, type, "Incorrect join type passed. Only inner and outer joins are supported", v28, 2u);
    }

    objc_storeStrong(&location, 0);
    v35 = 0;
  }

  *MEMORY[0x277D85DE8];
  return v35 & 1;
}

- (id)getFeatureData:(id *)data
{
  v75 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v70 = a2;
  dataCopy = data;
  v62 = 0;
  v63 = &v62;
  v64 = 838860800;
  v65 = 48;
  v66 = __Block_byref_object_copy__12;
  v67 = __Block_byref_object_dispose__12;
  v68 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 838860800;
  v58 = 48;
  v59 = __Block_byref_object_copy__12;
  v60 = __Block_byref_object_dispose__12;
  v61 = 0;
  v31 = +[AMDCoreDataPersistentContainer sharedContainer];
  getManagedObjectContext = [v31 getManagedObjectContext];
  MEMORY[0x277D82BD8](v31);
  v30 = getManagedObjectContext;
  v47 = MEMORY[0x277D85DD0];
  v48 = -1073741824;
  v49 = 0;
  v50 = __39__AMDFeatureDescriptor_getFeatureData___block_invoke;
  v51 = &unk_278CB5A80;
  v52 = MEMORY[0x277D82BE0](getManagedObjectContext);
  v53[0] = MEMORY[0x277D82BE0](selfCopy);
  v53[1] = &v62;
  v53[2] = &v55;
  [v30 performBlockAndWait:&v47];
  if (v63[5])
  {
    v29 = v63[5];
    v3 = v29;
    *dataCopy = v29;
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [*dataCopy localizedDescription];
      __os_log_helper_16_2_1_8_64(v74, localizedDescription);
      _os_log_error_impl(&dword_240CB9000, oslog, type, "Error executing aggregation: %@", v74, 0xCu);
      MEMORY[0x277D82BD8](localizedDescription);
    }

    objc_storeStrong(&oslog, 0);
    v72 = 0;
    v44 = 1;
  }

  else if (v56[5])
  {
    v43 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v42 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v27 = [v56[5] count];
      featureName = [(AMDFeatureDescriptor *)selfCopy featureName];
      __os_log_helper_16_2_2_8_0_8_64(v73, v27, featureName);
      _os_log_debug_impl(&dword_240CB9000, v43, v42, "Got %lu records for feature %@", v73, 0x16u);
      MEMORY[0x277D82BD8](featureName);
    }

    objc_storeStrong(&v43, 0);
    version = [(AMDFeatureDescriptor *)selfCopy version];
    v25 = [(NSString *)version isEqualToString:@"v1"];
    MEMORY[0x277D82BD8](version);
    if (v25)
    {
      [(AMDFeatureDescriptor *)selfCopy outerJoin:v56[5]];
      v23 = selfCopy;
      v22 = [(AMDFeatureDescriptor *)selfCopy sort:v56[5]];
      v72 = [(AMDFeatureDescriptor *)v23 prepareResult:?];
      MEMORY[0x277D82BD8](v22);
      v44 = 1;
    }

    else
    {
      v40 = 0;
      v38 = 0;
      joinType = [(AMDFeatureDescriptor *)selfCopy joinType];
      v21 = 0;
      if (joinType)
      {
        joinTable = [(AMDFeatureDescriptor *)selfCopy joinTable];
        v40 = 1;
        v21 = 0;
        if (joinTable)
        {
          joinTableDomain = [(AMDFeatureDescriptor *)selfCopy joinTableDomain];
          v38 = 1;
          v21 = joinTableDomain != 0;
        }
      }

      if (v38)
      {
        MEMORY[0x277D82BD8](joinTableDomain);
      }

      if (v40)
      {
        MEMORY[0x277D82BD8](joinTable);
      }

      MEMORY[0x277D82BD8](joinType);
      if (v21)
      {
        location = 0;
        joinType2 = [(AMDFeatureDescriptor *)selfCopy joinType];
        v19 = [(NSString *)joinType2 isEqualToString:@"inner"];
        MEMORY[0x277D82BD8](joinType2);
        if (v19)
        {
          v4 = [(AMDFeatureDescriptor *)selfCopy performInnerJoin:v56[5]];
          v5 = location;
          location = v4;
          MEMORY[0x277D82BD8](v5);
        }

        else
        {
          v35 = 0;
          joinType3 = [(AMDFeatureDescriptor *)selfCopy joinType];
          v16 = 0;
          if ([(NSString *)joinType3 isEqualToString:@"outer"])
          {
            defaultJoinValueDict = [(AMDFeatureDescriptor *)selfCopy defaultJoinValueDict];
            v35 = 1;
            v16 = defaultJoinValueDict != 0;
          }

          if (v35)
          {
            MEMORY[0x277D82BD8](defaultJoinValueDict);
          }

          MEMORY[0x277D82BD8](joinType3);
          if (v16)
          {
            v6 = [(AMDFeatureDescriptor *)selfCopy performOuterJoin:v56[5]];
            v7 = location;
            location = v6;
            MEMORY[0x277D82BD8](v7);
          }

          else
          {
            v34 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v33 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v14 = v34;
              v15 = v33;
              __os_log_helper_16_0_0(v32);
              _os_log_error_impl(&dword_240CB9000, v14, v15, "Invalid join parameters passed", v32, 2u);
            }

            objc_storeStrong(&v34, 0);
          }
        }

        if (location)
        {
          v13 = selfCopy;
          v12 = [(AMDFeatureDescriptor *)selfCopy sort:location];
          v72 = [(AMDFeatureDescriptor *)v13 prepareArrayResult:?];
          MEMORY[0x277D82BD8](v12);
        }

        else
        {
          v72 = 0;
        }

        v44 = 1;
        objc_storeStrong(&location, 0);
      }

      else
      {
        v11 = selfCopy;
        v10 = [(AMDFeatureDescriptor *)selfCopy sort:v56[5]];
        v72 = [(AMDFeatureDescriptor *)v11 prepareArrayResult:?];
        MEMORY[0x277D82BD8](v10);
        v44 = 1;
      }
    }
  }

  else
  {
    v72 = 0;
    v44 = 1;
  }

  objc_storeStrong(v53, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(&getManagedObjectContext, 0);
  _Block_object_dispose(&v55, 8);
  objc_storeStrong(&v61, 0);
  _Block_object_dispose(&v62, 8);
  objc_storeStrong(&v68, 0);
  *MEMORY[0x277D85DE8];
  v8 = v72;

  return v8;
}

void __39__AMDFeatureDescriptor_getFeatureData___block_invoke(uint64_t a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v4 = *(a1 + 32);
  v7 = [*(a1 + 40) fetchRequest];
  location = (*(*(a1 + 48) + 8) + 40);
  v9 = *location;
  v6 = [v4 executeFetchRequest:? error:?];
  objc_storeStrong(location, v9);
  v10[0] = v6;
  MEMORY[0x277D82BD8](v7);
  if (!*(*(*(a1 + 48) + 8) + 40) && v10[0])
  {
    v1 = [v10[0] mutableCopy];
    v2 = *(*(a1 + 56) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = v1;
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(v10, 0);
}

- (void)outerJoin:(id)join
{
  v79 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, join);
  v67 = 0;
  LOBYTE(v48) = 1;
  if ([(AMDFeatureDescriptor *)selfCopy doOuterJoin])
  {
    keyProperty = [(AMDFeatureDescriptor *)selfCopy keyProperty];
    v67 = 1;
    v48 = ![(NSString *)keyProperty isEqualToString:0x2852A8B68];
  }

  if (v67)
  {
    MEMORY[0x277D82BD8](keyProperty);
  }

  if (v48)
  {
    v66 = 1;
  }

  else
  {
    v65 = 0;
    obj = 0;
    v47 = [AMDTasteProfile getFeatureValueWithName:0x2852B1188 inDomain:@"apps" error:&obj];
    objc_storeStrong(&v65, obj);
    v64 = v47;
    if (!v65 && v64)
    {
      v61 = v65;
      v46 = [AMDTasteProfile getFeatureValueWithName:0x2852B1268 inDomain:@"apps" error:&v61];
      objc_storeStrong(&v65, v61);
      v62 = v46;
      if (!v65 && v62)
      {
        v40 = MEMORY[0x277CBEB58];
        allKeys = [v64 allKeys];
        v60 = [v40 setWithArray:?];
        MEMORY[0x277D82BD8](allKeys);
        v42 = MEMORY[0x277CBEB98];
        allKeys2 = [v62 allKeys];
        v59 = [v42 setWithArray:?];
        MEMORY[0x277D82BD8](allKeys2);
        [v60 unionSet:v59];
        memset(__b, 0, sizeof(__b));
        v44 = MEMORY[0x277D82BE0](location[0]);
        v45 = [v44 countByEnumeratingWithState:__b objects:v78 count:16];
        if (v45)
        {
          v37 = *__b[2];
          v38 = 0;
          v39 = v45;
          while (1)
          {
            v36 = v38;
            if (*__b[2] != v37)
            {
              objc_enumerationMutation(v44);
            }

            v58 = *(__b[1] + 8 * v38);
            v33 = v60;
            v32 = v58;
            keyProperty2 = [(AMDFeatureDescriptor *)selfCopy keyProperty];
            v34 = [v32 objectForKey:?];
            [v33 removeObject:?];
            MEMORY[0x277D82BD8](v34);
            MEMORY[0x277D82BD8](keyProperty2);
            ++v38;
            if (v36 + 1 >= v39)
            {
              v38 = 0;
              v39 = [v44 countByEnumeratingWithState:__b objects:v78 count:16];
              if (!v39)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v44);
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_8_0(v77, [v60 count]);
          _os_log_debug_impl(&dword_240CB9000, oslog, type, "Adding %lu records due to outer join", v77, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        memset(v53, 0, sizeof(v53));
        v30 = MEMORY[0x277D82BE0](v60);
        v31 = [v30 countByEnumeratingWithState:v53 objects:v76 count:16];
        if (v31)
        {
          v27 = *v53[2];
          v28 = 0;
          v29 = v31;
          while (1)
          {
            v26 = v28;
            if (*v53[2] != v27)
            {
              objc_enumerationMutation(v30);
            }

            v54 = *(v53[1] + 8 * v28);
            aggregatedProperty = [(AMDFeatureDescriptor *)selfCopy aggregatedProperty];
            v51 = 0;
            v25 = 1;
            if (!aggregatedProperty)
            {
              aggregatedPropertyList = [(AMDFeatureDescriptor *)selfCopy aggregatedPropertyList];
              v51 = 1;
              v25 = aggregatedPropertyList != 0;
            }

            if (v51)
            {
              MEMORY[0x277D82BD8](aggregatedPropertyList);
            }

            MEMORY[0x277D82BD8](aggregatedProperty);
            if (v25)
            {
              version = [(AMDFeatureDescriptor *)selfCopy version];
              v23 = [(NSString *)version isEqualToString:@"v1"];
              MEMORY[0x277D82BD8](version);
              if (v23)
              {
                v17 = location[0];
                keyProperty3 = [(AMDFeatureDescriptor *)selfCopy keyProperty];
                v74[0] = keyProperty3;
                v75[0] = v54;
                aggregatedProperty2 = [(AMDFeatureDescriptor *)selfCopy aggregatedProperty];
                v74[1] = aggregatedProperty2;
                defaultJoinValue = [(AMDFeatureDescriptor *)selfCopy defaultJoinValue];
                v75[1] = defaultJoinValue;
                v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
                [v17 addObject:?];
                MEMORY[0x277D82BD8](v18);
                MEMORY[0x277D82BD8](defaultJoinValue);
                MEMORY[0x277D82BD8](aggregatedProperty2);
                MEMORY[0x277D82BD8](keyProperty3);
              }

              else
              {
                v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v13 = v50;
                v12 = v54;
                keyProperty4 = [(AMDFeatureDescriptor *)selfCopy keyProperty];
                [v13 setObject:v12 forKey:?];
                MEMORY[0x277D82BD8](keyProperty4);
                memset(v49, 0, 0x40uLL);
                aggregatedPropertyList2 = [(AMDFeatureDescriptor *)selfCopy aggregatedPropertyList];
                v16 = [(NSMutableArray *)aggregatedPropertyList2 countByEnumeratingWithState:v49 objects:v73 count:16];
                if (v16)
                {
                  v9 = *v49[2];
                  v10 = 0;
                  v11 = v16;
                  while (1)
                  {
                    v8 = v10;
                    if (*v49[2] != v9)
                    {
                      objc_enumerationMutation(aggregatedPropertyList2);
                    }

                    v49[8] = *(v49[1] + 8 * v10);
                    v6 = v50;
                    defaultJoinValue2 = [(AMDFeatureDescriptor *)selfCopy defaultJoinValue];
                    [v6 setObject:? forKey:?];
                    MEMORY[0x277D82BD8](defaultJoinValue2);
                    ++v10;
                    if (v8 + 1 >= v11)
                    {
                      v10 = 0;
                      v11 = [(NSMutableArray *)aggregatedPropertyList2 countByEnumeratingWithState:v49 objects:v73 count:16];
                      if (!v11)
                      {
                        break;
                      }
                    }
                  }
                }

                MEMORY[0x277D82BD8](aggregatedPropertyList2);
                [location[0] addObject:v50];
                objc_storeStrong(&v50, 0);
              }
            }

            else
            {
              v3 = location[0];
              keyProperty5 = [(AMDFeatureDescriptor *)selfCopy keyProperty];
              v71 = keyProperty5;
              v72 = v54;
              v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
              [v3 addObject:?];
              MEMORY[0x277D82BD8](v4);
              MEMORY[0x277D82BD8](keyProperty5);
            }

            ++v28;
            if (v26 + 1 >= v29)
            {
              v28 = 0;
              v29 = [v30 countByEnumeratingWithState:v53 objects:v76 count:16];
              if (!v29)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v30);
        objc_storeStrong(&v59, 0);
        objc_storeStrong(&v60, 0);
        v66 = 0;
      }

      else
      {
        v66 = 1;
      }

      objc_storeStrong(&v62, 0);
    }

    else
    {
      v66 = 1;
    }

    objc_storeStrong(&v64, 0);
    objc_storeStrong(&v65, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)transformTPDataForJoin:(id)join
{
  v43 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, join);
  v36 = [location[0] objectForKey:0x2852ABCA8];
  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  keyProperty = [(AMDFeatureDescriptor *)selfCopy keyProperty];
  v34 = [v36 objectForKey:?];
  MEMORY[0x277D82BD8](keyProperty);
  if (v34)
  {
    v32 = [v34 objectForKey:@"featureValue"];
    v22 = [v34 objectForKey:@"featureFormat"];
    keyProperty2 = [(AMDFeatureDescriptor *)selfCopy keyProperty];
    [v35 setObject:v22 forKey:?];
    MEMORY[0x277D82BD8](keyProperty2);
    MEMORY[0x277D82BD8](v22);
    allKeys = [v36 allKeys];
    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    for (i = 0; ; ++i)
    {
      v20 = i;
      if (v20 >= [v32 count])
      {
        break;
      }

      v28 = [v32 objectAtIndex:i];
      v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x277D82BE0](allKeys);
      v19 = [obj countByEnumeratingWithState:__b objects:v42 count:16];
      if (v19)
      {
        v15 = *__b[2];
        v16 = 0;
        v17 = v19;
        while (1)
        {
          v14 = v16;
          if (*__b[2] != v15)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(__b[1] + 8 * v16);
          v11 = v26;
          keyProperty3 = [(AMDFeatureDescriptor *)selfCopy keyProperty];
          v13 = [v11 isEqualToString:?];
          MEMORY[0x277D82BD8](keyProperty3);
          if ((v13 & 1) == 0)
          {
            if (!i)
            {
              v8 = v35;
              v10 = [v36 objectForKey:v26];
              v9 = [v10 objectForKey:@"featureFormat"];
              [v8 setObject:? forKey:?];
              MEMORY[0x277D82BD8](v9);
              MEMORY[0x277D82BD8](v10);
            }

            v5 = [v36 objectForKey:v26];
            v24 = [v5 objectForKey:@"featureValue"];
            MEMORY[0x277D82BD8](v5);
            v6 = v27;
            v7 = [v24 objectAtIndex:i];
            [v6 setObject:? forKey:?];
            MEMORY[0x277D82BD8](v7);
            objc_storeStrong(&v24, 0);
          }

          ++v16;
          if (v14 + 1 >= v17)
          {
            v16 = 0;
            v17 = [obj countByEnumeratingWithState:__b objects:v42 count:16];
            if (!v17)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](obj);
      [v30 setObject:v27 forKey:v28];
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v28, 0);
    }

    v40[0] = @"featureValue";
    v41[0] = v30;
    v40[1] = @"featureFormat";
    v41[1] = v35;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
    v33 = 1;
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&allKeys, 0);
    objc_storeStrong(&v32, 0);
  }

  else
  {
    v39 = 0;
    v33 = 1;
  }

  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v39;

  return v3;
}

- (id)performInnerJoin:(id)join
{
  v83 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, join);
  v72 = 0;
  joinTable = [(AMDFeatureDescriptor *)selfCopy joinTable];
  joinTableDomain = [(AMDFeatureDescriptor *)selfCopy joinTableDomain];
  obj = v72;
  v43 = [AMDTasteProfile getFeatureValueWithName:"getFeatureValueWithName:inDomain:error:" inDomain:joinTable error:?];
  objc_storeStrong(&v72, obj);
  v71 = v43;
  MEMORY[0x277D82BD8](joinTableDomain);
  MEMORY[0x277D82BD8](joinTable);
  if (!v72 && v71)
  {
    v65 = [(AMDFeatureDescriptor *)selfCopy transformTPDataForJoin:v71];
    if (v65)
    {
      v62 = [v65 objectForKey:@"featureValue"];
      v61 = [v65 objectForKey:@"featureFormat"];
      v33 = MEMORY[0x277CBEB98];
      v35 = [v71 objectForKey:0x2852ABCA8];
      allKeys = [v35 allKeys];
      v60 = [v33 setWithArray:?];
      MEMORY[0x277D82BD8](allKeys);
      MEMORY[0x277D82BD8](v35);
      memset(__b, 0, sizeof(__b));
      joinRequiredColumns = [(AMDFeatureDescriptor *)selfCopy joinRequiredColumns];
      v37 = [(NSArray *)joinRequiredColumns countByEnumeratingWithState:__b objects:v80 count:16];
      if (v37)
      {
        v30 = *__b[2];
        v31 = 0;
        v32 = v37;
        while (1)
        {
          v29 = v31;
          if (*__b[2] != v30)
          {
            objc_enumerationMutation(joinRequiredColumns);
          }

          v59 = *(__b[1] + 8 * v31);
          if (([v60 containsObject:v59] & 1) == 0)
          {
            break;
          }

          ++v31;
          if (v29 + 1 >= v32)
          {
            v31 = 0;
            v32 = [(NSArray *)joinRequiredColumns countByEnumeratingWithState:__b objects:v80 count:16];
            if (!v32)
            {
              goto LABEL_20;
            }
          }
        }

        v57 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v56 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v79, v59);
          _os_log_error_impl(&dword_240CB9000, v57, v56, "Inner join failed:Requested property %@ not found in feature", v79, 0xCu);
        }

        objc_storeStrong(&v57, 0);
        v75 = 0;
        v66 = 1;
      }

      else
      {
LABEL_20:
        v66 = 0;
      }

      MEMORY[0x277D82BD8](joinRequiredColumns);
      if (!v66)
      {
        v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
        memset(v53, 0, sizeof(v53));
        v27 = MEMORY[0x277D82BE0](location[0]);
        v28 = [v27 countByEnumeratingWithState:v53 objects:v78 count:16];
        if (v28)
        {
          v24 = *v53[2];
          v25 = 0;
          v26 = v28;
          while (1)
          {
            v23 = v25;
            if (*v53[2] != v24)
            {
              objc_enumerationMutation(v27);
            }

            v54 = *(v53[1] + 8 * v25);
            v21 = v54;
            keyProperty = [(AMDFeatureDescriptor *)selfCopy keyProperty];
            v52 = [v21 objectForKey:?];
            MEMORY[0x277D82BD8](keyProperty);
            v51 = [v62 objectForKey:v52];
            if (v51)
            {
              v50 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v54];
              memset(v48, 0, sizeof(v48));
              joinRequiredColumns2 = [(AMDFeatureDescriptor *)selfCopy joinRequiredColumns];
              v20 = [(NSArray *)joinRequiredColumns2 countByEnumeratingWithState:v48 objects:v77 count:16];
              if (v20)
              {
                v16 = *v48[2];
                v17 = 0;
                v18 = v20;
                while (1)
                {
                  v15 = v17;
                  if (*v48[2] != v16)
                  {
                    objc_enumerationMutation(joinRequiredColumns2);
                  }

                  v49 = *(v48[1] + 8 * v17);
                  v13 = v50;
                  v14 = [v51 objectForKey:v49];
                  [v13 setObject:? forKey:?];
                  MEMORY[0x277D82BD8](v14);
                  ++v17;
                  if (v15 + 1 >= v18)
                  {
                    v17 = 0;
                    v18 = [(NSArray *)joinRequiredColumns2 countByEnumeratingWithState:v48 objects:v77 count:16];
                    if (!v18)
                    {
                      break;
                    }
                  }
                }
              }

              MEMORY[0x277D82BD8](joinRequiredColumns2);
              [v55 addObject:v50];
              objc_storeStrong(&v50, 0);
              v66 = 0;
            }

            else
            {
              v66 = 5;
            }

            objc_storeStrong(&v51, 0);
            objc_storeStrong(&v52, 0);
            ++v25;
            if (v23 + 1 >= v26)
            {
              v25 = 0;
              v26 = [v27 countByEnumeratingWithState:v53 objects:v78 count:16];
              if (!v26)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v27);
        if ([v55 count])
        {
          memset(v46, 0, sizeof(v46));
          joinRequiredColumns3 = [(AMDFeatureDescriptor *)selfCopy joinRequiredColumns];
          v12 = [(NSArray *)joinRequiredColumns3 countByEnumeratingWithState:v46 objects:v76 count:16];
          if (v12)
          {
            v8 = *v46[2];
            v9 = 0;
            v10 = v12;
            while (1)
            {
              v7 = v9;
              if (*v46[2] != v8)
              {
                objc_enumerationMutation(joinRequiredColumns3);
              }

              v47 = *(v46[1] + 8 * v9);
              propertyDict = [(AMDFeatureDescriptor *)selfCopy propertyDict];
              v5 = [v61 objectForKey:v47];
              [NSMutableDictionary setObject:propertyDict forKey:"setObject:forKey:"];
              MEMORY[0x277D82BD8](v5);
              MEMORY[0x277D82BD8](propertyDict);
              ++v9;
              if (v7 + 1 >= v10)
              {
                v9 = 0;
                v10 = [(NSArray *)joinRequiredColumns3 countByEnumeratingWithState:v46 objects:v76 count:16];
                if (!v10)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x277D82BD8](joinRequiredColumns3);
        }

        v75 = MEMORY[0x277D82BE0](v55);
        v66 = 1;
        objc_storeStrong(&v55, 0);
      }

      objc_storeStrong(&v60, 0);
      objc_storeStrong(&v61, 0);
      objc_storeStrong(&v62, 0);
    }

    else
    {
      v64 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v63 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        keyProperty2 = [(AMDFeatureDescriptor *)selfCopy keyProperty];
        __os_log_helper_16_2_1_8_64(v81, keyProperty2);
        _os_log_error_impl(&dword_240CB9000, v64, v63, "Inner join failed:Key property %@ not found in feature", v81, 0xCu);
        MEMORY[0x277D82BD8](keyProperty2);
      }

      objc_storeStrong(&v64, 0);
      v75 = 0;
      v66 = 1;
    }

    objc_storeStrong(&v65, 0);
  }

  else
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v40 = type;
      joinTable2 = [(AMDFeatureDescriptor *)selfCopy joinTable];
      localizedDescription = [v72 localizedDescription];
      v67 = MEMORY[0x277D82BE0](localizedDescription);
      __os_log_helper_16_2_2_8_64_8_64(v82, joinTable2, v67);
      _os_log_error_impl(&dword_240CB9000, log, v40, "Inner join failed: Feature %@ could not be fetched. Error: %@", v82, 0x16u);
      MEMORY[0x277D82BD8](localizedDescription);
      MEMORY[0x277D82BD8](joinTable2);
      objc_storeStrong(&v67, 0);
    }

    objc_storeStrong(&oslog, 0);
    v75 = 0;
    v66 = 1;
  }

  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v75;

  return v3;
}

- (id)performOuterJoin:(id)join
{
  v101 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, join);
  v88 = 0;
  joinTable = [(AMDFeatureDescriptor *)selfCopy joinTable];
  joinTableDomain = [(AMDFeatureDescriptor *)selfCopy joinTableDomain];
  obj = v88;
  v54 = [AMDTasteProfile getFeatureValueWithName:"getFeatureValueWithName:inDomain:error:" inDomain:joinTable error:?];
  objc_storeStrong(&v88, obj);
  v87 = v54;
  MEMORY[0x277D82BD8](joinTableDomain);
  MEMORY[0x277D82BD8](joinTable);
  if (!v88 && v87)
  {
    v81 = [(AMDFeatureDescriptor *)selfCopy transformTPDataForJoin:v87];
    if (v81)
    {
      v78 = [v81 objectForKey:@"featureValue"];
      v77 = [v81 objectForKey:@"featureFormat"];
      v46 = [v87 objectForKey:0x2852ABCA8];
      allKeys = [v46 allKeys];
      MEMORY[0x277D82BD8](v46);
      v75 = [MEMORY[0x277CBEB98] setWithArray:allKeys];
      memset(__b, 0, sizeof(__b));
      joinRequiredColumns = [(AMDFeatureDescriptor *)selfCopy joinRequiredColumns];
      v48 = [(NSArray *)joinRequiredColumns countByEnumeratingWithState:__b objects:v98 count:16];
      if (v48)
      {
        v43 = *__b[2];
        v44 = 0;
        v45 = v48;
        while (1)
        {
          v42 = v44;
          if (*__b[2] != v43)
          {
            objc_enumerationMutation(joinRequiredColumns);
          }

          v74 = *(__b[1] + 8 * v44);
          if (([v75 containsObject:v74] & 1) == 0)
          {
            v72 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v71 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_1_8_64(v97, v74);
              _os_log_error_impl(&dword_240CB9000, v72, v71, "Outer join failed:Requested property %@ not found in feature", v97, 0xCu);
            }

            objc_storeStrong(&v72, 0);
            v91 = 0;
            v82 = 1;
            goto LABEL_25;
          }

          defaultJoinValueDict = [(AMDFeatureDescriptor *)selfCopy defaultJoinValueDict];
          v41 = [(NSDictionary *)defaultJoinValueDict objectForKey:v74];
          MEMORY[0x277D82BD8](v41);
          MEMORY[0x277D82BD8](defaultJoinValueDict);
          if (!v41)
          {
            break;
          }

          ++v44;
          if (v42 + 1 >= v45)
          {
            v44 = 0;
            v45 = [(NSArray *)joinRequiredColumns countByEnumeratingWithState:__b objects:v98 count:16];
            if (!v45)
            {
              goto LABEL_24;
            }
          }
        }

        v70 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v69 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v38 = v74;
          joinTable2 = [(AMDFeatureDescriptor *)selfCopy joinTable];
          __os_log_helper_16_2_2_8_64_8_64(v96, v38, joinTable2);
          _os_log_error_impl(&dword_240CB9000, v70, v69, "Outer join failed:Default value not provided for column: %@ while performing join with feature: %@", v96, 0x16u);
          MEMORY[0x277D82BD8](joinTable2);
        }

        objc_storeStrong(&v70, 0);
        v91 = 0;
        v82 = 1;
      }

      else
      {
LABEL_24:
        v82 = 0;
      }

LABEL_25:
      MEMORY[0x277D82BD8](joinRequiredColumns);
      if (!v82)
      {
        v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
        memset(v66, 0, sizeof(v66));
        v36 = MEMORY[0x277D82BE0](location[0]);
        v37 = [v36 countByEnumeratingWithState:v66 objects:v95 count:16];
        if (v37)
        {
          v33 = *v66[2];
          v34 = 0;
          v35 = v37;
          while (1)
          {
            v32 = v34;
            if (*v66[2] != v33)
            {
              objc_enumerationMutation(v36);
            }

            v67 = *(v66[1] + 8 * v34);
            v30 = v67;
            keyProperty = [(AMDFeatureDescriptor *)selfCopy keyProperty];
            v65 = [v30 objectForKey:?];
            MEMORY[0x277D82BD8](keyProperty);
            v64 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v67];
            v63 = [v78 objectForKey:v65];
            if (v63)
            {
              memset(v59, 0, sizeof(v59));
              joinRequiredColumns2 = [(AMDFeatureDescriptor *)selfCopy joinRequiredColumns];
              v20 = [(NSArray *)joinRequiredColumns2 countByEnumeratingWithState:v59 objects:v93 count:16];
              if (v20)
              {
                v16 = *v59[2];
                v17 = 0;
                v18 = v20;
                while (1)
                {
                  v15 = v17;
                  if (*v59[2] != v16)
                  {
                    objc_enumerationMutation(joinRequiredColumns2);
                  }

                  v60 = *(v59[1] + 8 * v17);
                  v13 = v64;
                  v14 = [v63 objectForKey:v60];
                  [v13 setObject:? forKey:?];
                  MEMORY[0x277D82BD8](v14);
                  ++v17;
                  if (v15 + 1 >= v18)
                  {
                    v17 = 0;
                    v18 = [(NSArray *)joinRequiredColumns2 countByEnumeratingWithState:v59 objects:v93 count:16];
                    if (!v18)
                    {
                      break;
                    }
                  }
                }
              }

              MEMORY[0x277D82BD8](joinRequiredColumns2);
            }

            else
            {
              memset(v61, 0, sizeof(v61));
              joinRequiredColumns3 = [(AMDFeatureDescriptor *)selfCopy joinRequiredColumns];
              v29 = [(NSArray *)joinRequiredColumns3 countByEnumeratingWithState:v61 objects:v94 count:16];
              if (v29)
              {
                v25 = *v61[2];
                v26 = 0;
                v27 = v29;
                while (1)
                {
                  v24 = v26;
                  if (*v61[2] != v25)
                  {
                    objc_enumerationMutation(joinRequiredColumns3);
                  }

                  v62 = *(v61[1] + 8 * v26);
                  v21 = v64;
                  defaultJoinValueDict2 = [(AMDFeatureDescriptor *)selfCopy defaultJoinValueDict];
                  v22 = [(NSDictionary *)defaultJoinValueDict2 objectForKey:v62];
                  [v21 setObject:? forKey:?];
                  MEMORY[0x277D82BD8](v22);
                  MEMORY[0x277D82BD8](defaultJoinValueDict2);
                  ++v26;
                  if (v24 + 1 >= v27)
                  {
                    v26 = 0;
                    v27 = [(NSArray *)joinRequiredColumns3 countByEnumeratingWithState:v61 objects:v94 count:16];
                    if (!v27)
                    {
                      break;
                    }
                  }
                }
              }

              MEMORY[0x277D82BD8](joinRequiredColumns3);
            }

            [v68 addObject:v64];
            objc_storeStrong(&v63, 0);
            objc_storeStrong(&v64, 0);
            objc_storeStrong(&v65, 0);
            ++v34;
            if (v32 + 1 >= v35)
            {
              v34 = 0;
              v35 = [v36 countByEnumeratingWithState:v66 objects:v95 count:16];
              if (!v35)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v36);
        if ([v68 count])
        {
          memset(v57, 0, sizeof(v57));
          joinRequiredColumns4 = [(AMDFeatureDescriptor *)selfCopy joinRequiredColumns];
          v12 = [(NSArray *)joinRequiredColumns4 countByEnumeratingWithState:v57 objects:v92 count:16];
          if (v12)
          {
            v8 = *v57[2];
            v9 = 0;
            v10 = v12;
            while (1)
            {
              v7 = v9;
              if (*v57[2] != v8)
              {
                objc_enumerationMutation(joinRequiredColumns4);
              }

              v58 = *(v57[1] + 8 * v9);
              propertyDict = [(AMDFeatureDescriptor *)selfCopy propertyDict];
              v5 = [v77 objectForKey:v58];
              [NSMutableDictionary setObject:propertyDict forKey:"setObject:forKey:"];
              MEMORY[0x277D82BD8](v5);
              MEMORY[0x277D82BD8](propertyDict);
              ++v9;
              if (v7 + 1 >= v10)
              {
                v9 = 0;
                v10 = [(NSArray *)joinRequiredColumns4 countByEnumeratingWithState:v57 objects:v92 count:16];
                if (!v10)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x277D82BD8](joinRequiredColumns4);
        }

        v91 = MEMORY[0x277D82BE0](v68);
        v82 = 1;
        objc_storeStrong(&v68, 0);
      }

      objc_storeStrong(&v75, 0);
      objc_storeStrong(&allKeys, 0);
      objc_storeStrong(&v77, 0);
      objc_storeStrong(&v78, 0);
    }

    else
    {
      v80 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v79 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        keyProperty2 = [(AMDFeatureDescriptor *)selfCopy keyProperty];
        __os_log_helper_16_2_1_8_64(v99, keyProperty2);
        _os_log_error_impl(&dword_240CB9000, v80, v79, "Outer join failed:Key property %@ not found in feature", v99, 0xCu);
        MEMORY[0x277D82BD8](keyProperty2);
      }

      objc_storeStrong(&v80, 0);
      v91 = 0;
      v82 = 1;
    }

    objc_storeStrong(&v81, 0);
  }

  else
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v51 = type;
      joinTable3 = [(AMDFeatureDescriptor *)selfCopy joinTable];
      localizedDescription = [v88 localizedDescription];
      v83 = MEMORY[0x277D82BE0](localizedDescription);
      __os_log_helper_16_2_2_8_64_8_64(v100, joinTable3, v83);
      _os_log_error_impl(&dword_240CB9000, log, v51, "Outer join failed: Feature %@ could not be fetched. Error: %@", v100, 0x16u);
      MEMORY[0x277D82BD8](localizedDescription);
      MEMORY[0x277D82BD8](joinTable3);
      objc_storeStrong(&v83, 0);
    }

    objc_storeStrong(&oslog, 0);
    v91 = 0;
    v82 = 1;
  }

  objc_storeStrong(&v87, 0);
  objc_storeStrong(&v88, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v91;

  return v3;
}

- (id)sort:(id)sort
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, sort);
  sortOrder = [(AMDFeatureDescriptor *)selfCopy sortOrder];
  v15 = 1;
  if (sortOrder)
  {
    v15 = [location[0] count] == 0;
  }

  MEMORY[0x277D82BD8](sortOrder);
  if (v15)
  {
    v28 = MEMORY[0x277D82BE0](location[0]);
    v25 = 1;
  }

  else
  {
    v24 = 0;
    version = [(AMDFeatureDescriptor *)selfCopy version];
    v13 = [(NSString *)version isEqualToString:@"v1"];
    MEMORY[0x277D82BD8](version);
    if (v13)
    {
      aggregatedProperty = [(AMDFeatureDescriptor *)selfCopy aggregatedProperty];
      v22 = 0;
      v20 = 0;
      if (aggregatedProperty)
      {
        aggregatedProperty2 = [(AMDFeatureDescriptor *)selfCopy aggregatedProperty];
        v22 = 1;
        objc_storeStrong(&v24, aggregatedProperty2);
      }

      else
      {
        keyProperty = [(AMDFeatureDescriptor *)selfCopy keyProperty];
        v20 = 1;
        objc_storeStrong(&v24, keyProperty);
      }

      if (v20)
      {
        MEMORY[0x277D82BD8](keyProperty);
      }

      if (v22)
      {
        MEMORY[0x277D82BD8](aggregatedProperty2);
      }

      MEMORY[0x277D82BD8](aggregatedProperty);
    }

    else
    {
      sortKey = [(AMDFeatureDescriptor *)selfCopy sortKey];
      v18 = 0;
      v16 = 0;
      if (sortKey)
      {
        sortKey2 = [(AMDFeatureDescriptor *)selfCopy sortKey];
        v18 = 1;
        objc_storeStrong(&v24, sortKey2);
      }

      else
      {
        keyProperty2 = [(AMDFeatureDescriptor *)selfCopy keyProperty];
        v16 = 1;
        objc_storeStrong(&v24, keyProperty2);
      }

      if (v16)
      {
        MEMORY[0x277D82BD8](keyProperty2);
      }

      if (v18)
      {
        MEMORY[0x277D82BD8](sortKey2);
      }

      MEMORY[0x277D82BD8](sortKey);
    }

    firstObject = [location[0] firstObject];
    v5 = [firstObject objectForKey:v24];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](firstObject);
    sortOrder2 = [(AMDFeatureDescriptor *)selfCopy sortOrder];
    v9 = [(NSNumber *)sortOrder2 intValue]== 0;
    MEMORY[0x277D82BD8](sortOrder2);
    v28 = [AMDMiscHelpers sortArrayElements:location[0] inDescendingOrder:v9 withComparisonKey:v24 isKeyString:isKindOfClass & 1];
    v25 = 1;
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(location, 0);
  v3 = v28;

  return v3;
}

- (id)prepareDictionaryResult:(id)result
{
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  v20 = objc_alloc(MEMORY[0x277CBEB38]);
  v27 = [v20 initWithCapacity:{objc_msgSend(location[0], "count")}];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v22 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
  if (v22)
  {
    v17 = *__b[2];
    v18 = 0;
    v19 = v22;
    while (1)
    {
      v16 = v18;
      if (*__b[2] != v17)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(__b[1] + 8 * v18);
      v14 = v26;
      keyProperty = [(AMDFeatureDescriptor *)selfCopy keyProperty];
      v24 = [v14 objectForKey:?];
      MEMORY[0x277D82BD8](keyProperty);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        stringValue = [v24 stringValue];
        v4 = v24;
        v24 = stringValue;
        MEMORY[0x277D82BD8](v4);
      }

      v8 = v27;
      v7 = v26;
      aggregatedProperty = [(AMDFeatureDescriptor *)selfCopy aggregatedProperty];
      v9 = [v7 objectForKey:?];
      [v8 setObject:? forKey:?];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](aggregatedProperty);
      v13 = [v27 count];
      maxRecords = [(AMDFeatureDescriptor *)selfCopy maxRecords];
      integerValue = [(NSNumber *)maxRecords integerValue];
      MEMORY[0x277D82BD8](maxRecords);
      if (v13 == integerValue)
      {
        v23 = 2;
      }

      else
      {
        v23 = 0;
      }

      objc_storeStrong(&v24, 0);
      if (v23)
      {
        break;
      }

      ++v18;
      if (v16 + 1 >= v19)
      {
        v18 = 0;
        v19 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
        if (!v19)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v6 = MEMORY[0x277D82BE0](v27);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

- (id)prepareArrayResult:(id)result
{
  v43 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = 0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v25 = [obj countByEnumeratingWithState:__b objects:v42 count:16];
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
        objc_enumerationMutation(obj);
      }

      v34 = *(__b[1] + 8 * v22);
      memset(v31, 0, sizeof(v31));
      v18 = MEMORY[0x277D82BE0](v34);
      v19 = [v18 countByEnumeratingWithState:v31 objects:v41 count:16];
      if (v19)
      {
        v15 = *v31[2];
        v16 = 0;
        v17 = v19;
        while (1)
        {
          v14 = v16;
          if (*v31[2] != v15)
          {
            objc_enumerationMutation(v18);
          }

          v32 = *(v31[1] + 8 * v16);
          v13 = [v36 objectForKey:v32];
          MEMORY[0x277D82BD8](v13);
          if (v13)
          {
            v27 = [v36 objectForKey:v32];
            v26 = [v27 objectForKey:@"featureValue"];
            v8 = v26;
            v9 = [v34 objectForKey:v32];
            [v8 addObject:?];
            MEMORY[0x277D82BD8](v9);
            objc_storeStrong(&v26, 0);
            objc_storeStrong(&v27, 0);
          }

          else
          {
            v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v10 = v29;
            v11 = [v34 objectForKey:v32];
            [v10 addObject:?];
            MEMORY[0x277D82BD8](v11);
            propertyDict = [(AMDFeatureDescriptor *)selfCopy propertyDict];
            v28 = [(NSMutableDictionary *)propertyDict objectForKey:v32];
            MEMORY[0x277D82BD8](propertyDict);
            [v30 setObject:v29 forKey:@"featureValue"];
            [v30 setObject:v28 forKey:@"featureFormat"];
            [v36 setObject:v30 forKey:v32];
            objc_storeStrong(&v28, 0);
            objc_storeStrong(&v29, 0);
            objc_storeStrong(&v30, 0);
          }

          ++v16;
          if (v14 + 1 >= v17)
          {
            v16 = 0;
            v17 = [v18 countByEnumeratingWithState:v31 objects:v41 count:16];
            if (!v17)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v18);
      v7 = ++v35;
      maxRecords = [(AMDFeatureDescriptor *)selfCopy maxRecords];
      integerValue = [(NSNumber *)maxRecords integerValue];
      MEMORY[0x277D82BD8](maxRecords);
      if (v7 == integerValue)
      {
        break;
      }

      ++v22;
      if (v20 + 1 >= v23)
      {
        v22 = 0;
        v23 = [obj countByEnumeratingWithState:__b objects:v42 count:16];
        if (!v23)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v39[0] = 0x2852ABCA8;
  v40[0] = v36;
  v39[1] = 0x2852B11E8;
  v40[1] = 0x2852B1208;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

- (id)prepareResult:(id)result
{
  v27 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  aggregatedProperty = [(AMDFeatureDescriptor *)selfCopy aggregatedProperty];
  MEMORY[0x277D82BD8](aggregatedProperty);
  if (aggregatedProperty)
  {
    v25 = [(AMDFeatureDescriptor *)selfCopy prepareDictionaryResult:location[0]];
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    v22 = [v16 initWithCapacity:{objc_msgSend(location[0], "count")}];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](location[0]);
    v18 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
    if (v18)
    {
      v13 = *__b[2];
      v14 = 0;
      v15 = v18;
      while (1)
      {
        v12 = v14;
        if (*__b[2] != v13)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(__b[1] + 8 * v14);
        v6 = v22;
        v5 = v21;
        keyProperty = [(AMDFeatureDescriptor *)selfCopy keyProperty];
        v7 = [v5 objectForKey:?];
        [v6 addObject:?];
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](keyProperty);
        v11 = [v22 count];
        maxRecords = [(AMDFeatureDescriptor *)selfCopy maxRecords];
        integerValue = [(NSNumber *)maxRecords integerValue];
        MEMORY[0x277D82BD8](maxRecords);
        if (v11 == integerValue)
        {
          break;
        }

        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    v25 = MEMORY[0x277D82BE0](v22);
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v25;

  return v3;
}

@end