@interface AMDSQLite
+ (id)allocSharedInstance;
+ (id)clearUserData:(id)data;
+ (id)createSharedInstance;
+ (id)deleteEventsOlderThan:(unsigned int)than;
+ (id)deleteEventsWithPredicate:(id)predicate forStreams:(id)streams;
+ (id)deleteRowsHandler:(id)handler error:(id *)error;
+ (id)deleteVectorDBEntryForDBName:(id)name error:(id *)error;
+ (id)fetchVectorDBConfigForDBName:(id)name error:(id *)error;
+ (id)getBootstrapSchemaDict;
+ (id)getDomainsFrom:(id)from;
+ (id)getFeatureValueWithName:(id)name inDomain:(id)domain withColumnName:(id)columnName skipRowset:(BOOL)rowset error:(id *)error;
+ (id)getSharedInstanceWithOption:(BOOL)option;
+ (id)initSharedInstance:(id)instance;
+ (id)insertRowsHandler:(id)handler error:(id *)error;
+ (id)insertRowsInternal:(id)internal usingSchema:(id)schema error:(id *)error;
+ (id)loadNewData:(id)data;
+ (id)persistVectorDBPath:(id)path forDBName:(id)name withVectorDimension:(int)dimension andDataType:(id)type withDistanceMetric:(id)metric error:(id *)error;
+ (id)refreshEntityTableForDomain:(id)domain error:(id *)error;
+ (id)refreshODTPForDomain:(id)domain error:(id *)error;
+ (id)saveEvents:(id)events error:(id *)error;
+ (id)trimEventsForStreams:(id)streams error:(id *)error;
+ (id)truncateEvents:(id *)events;
+ (id)updateData:(id)data;
+ (id)updateLastVectorDBRefreshTimestamp:(id)timestamp error:(id *)error;
+ (id)updateTablesHandler:(id)handler error:(id *)error;
+ (id)updateTablesInternal:(id)internal usingSchema:(id)schema error:(id *)error;
+ (sqlite3_stmt)prepare:(id)prepare usingDb:(sqlite3 *)db error:(id *)error;
- (BOOL)isUsable;
- (BOOL)isUsableInternal;
- (id)applySchema:(id)schema error:(id *)error;
- (id)bootstrapDb;
- (id)connectionState;
- (id)createIndices:(id)indices error:(id *)error;
- (id)createTable:(id)table usingSchema:(id)schema error:(id *)error;
- (id)deleteRows:(id)rows error:(id *)error;
- (id)deleteRowsInternal:(id)internal error:(id *)error;
- (id)fetchRows:(id)rows andPersist:(BOOL)persist error:(id *)error;
- (id)fetchRowsFrom:(sqlite3 *)from usingDescriptor:(id)descriptor andSchema:(id)schema columnMajorOutput:(BOOL)output rowMajorOutput:(BOOL)majorOutput andPersist:(BOOL)persist error:(id *)error;
- (id)fetchRowsUsingSchema:(id)schema andDescriptor:(id)descriptor andPersist:(BOOL)persist error:(id *)error;
- (id)generateDBLoadError;
- (id)getPredicateExtensionForTable:(id)table forUser:(id)user andDomain:(id)domain error:(id *)error;
- (id)insertRows:(id)rows usingSchema:(id)schema error:(id *)error;
- (id)insertRows:(id)rows usingSchema:(id)schema skipValidation:(BOOL)validation error:(id *)error;
- (id)loadBiomeSchema;
- (id)loadDataSchema;
- (id)loadDb;
- (id)loadMegadomeSchema;
- (id)prepareBootstrapSchema;
- (id)refreshAppsTable:(id *)table;
- (id)saveSchema:(id)schema error:(id *)error;
- (id)updateSchema:(id)schema error:(id *)error;
- (id)updateTableUsingDescriptor:(id)descriptor andSchema:(id)schema error:(id *)error;
- (id)validateRowsData:(id)data tableSchema:(id)schema error:(id *)error;
- (sqlite3_stmt)prepare:(id)prepare error:(id *)error;
- (void)setEnable:(BOOL)enable;
@end

@implementation AMDSQLite

+ (id)clearUserData:(id)data
{
  v39 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v33 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v32 = 2;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    log = v33;
    type = v32;
    __os_log_helper_16_0_0(v31);
    _os_log_debug_impl(&dword_240CB9000, log, type, "SQLITE Clearing user data", v31, 2u);
  }

  objc_storeStrong(&v33, 0);
  v30 = 0;
  v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v27 = v30;
  v15 = [selfCopy truncateEvents:&v27];
  objc_storeStrong(&v30, v27);
  v28 = v15;
  if (v30)
  {
    v13 = v29;
    localizedDescription = [v30 localizedDescription];
    [v13 setObject:? forKey:?];
    MEMORY[0x277D82BD8](localizedDescription);
  }

  else if (v28)
  {
    [v29 setObject:v28 forKey:@"sqliteDeletionSummary"];
  }

  v26 = [selfCopy getDomainsFrom:location[0]];
  if (v26)
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v26, "count")}];
    memset(__b, 0, sizeof(__b));
    v11 = MEMORY[0x277D82BE0](v26);
    v12 = [v11 countByEnumeratingWithState:__b objects:v37 count:16];
    if (v12)
    {
      v8 = *__b[2];
      v9 = 0;
      v10 = v12;
      while (1)
      {
        v7 = v9;
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(v11);
        }

        v20 = *(__b[1] + 8 * v9);
        v5 = v21;
        v18 = v30;
        v6 = [selfCopy refreshODTPForDomain:v20 error:&v18];
        objc_storeStrong(&v30, v18);
        [v5 setObject:v6 forKey:v20];
        MEMORY[0x277D82BD8](v6);
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [v11 countByEnumeratingWithState:__b objects:v37 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v11);
    [v29 setObject:v21 forKey:@"sqliteODTPRefreshed"];
    v36 = MEMORY[0x277D82BE0](v29);
    v22 = 1;
    objc_storeStrong(&v21, 0);
  }

  else
  {
    v25 = MEMORY[0x277D82BE0](@"SQLITE Clear user data: no domains");
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v38, v25);
      _os_log_error_impl(&dword_240CB9000, oslog, v23, "%@", v38, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [v29 setObject:v25 forKey:@"error"];
    v36 = MEMORY[0x277D82BE0](v29);
    v22 = 1;
    objc_storeStrong(&v25, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v36;

  return v3;
}

+ (id)deleteRowsHandler:(id)handler error:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  errorCopy = error;
  v51 = [location[0] objectForKey:@"allDeletes"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v51 count])
  {
    v49 = MEMORY[0x277D82BE0](v51);
    v48 = 0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v49);
    if ([obj countByEnumeratingWithState:__b objects:v59 count:16])
    {
      *__b[2];
      *__b[2];
      v47 = *__b[1];
      v5 = [v49 objectForKey:v47];
      v6 = v48;
      v48 = v5;
      MEMORY[0x277D82BD8](v6);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v48 count])
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_1_8_64(v58, v47);
          _os_log_debug_impl(&dword_240CB9000, oslog, type, "SQLITE Deleting from db '%@'", v58, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v50 = 2;
      }

      else
      {
        v31 = [AMDError allocError:15 withMessage:@"Deletion info not an array, or empty"];
        v7 = v31;
        *errorCopy = v31;
        v54 = 0;
        v50 = 1;
      }
    }

    else
    {
      v50 = 0;
    }

    MEMORY[0x277D82BD8](obj);
    if (!v50 || v50 == 2)
    {
      v43 = +[AMDSQLite getSharedInstance];
      if ([v43 isUsable])
      {
        v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
        memset(v40, 0, sizeof(v40));
        v28 = MEMORY[0x277D82BE0](v48);
        v29 = [v28 countByEnumeratingWithState:v40 objects:v57 count:16];
        if (v29)
        {
          v25 = *v40[2];
          v26 = 0;
          v27 = v29;
          while (1)
          {
            v24 = v26;
            if (*v40[2] != v25)
            {
              objc_enumerationMutation(v28);
            }

            v41 = *(v40[1] + 8 * v26);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = MEMORY[0x277D82BE0](v41);
              v38 = [v39 objectForKey:0x2852AF668];
              if (v38)
              {
                v21 = v43;
                v20 = v38;
                v23 = [location[0] objectForKey:0x2852A91A8];
                v22 = [location[0] objectForKey:0x2852A86A8];
                v37 = [v21 getPredicateExtensionForTable:v20 forUser:v23 andDomain:? error:?];
                MEMORY[0x277D82BD8](v22);
                MEMORY[0x277D82BD8](v23);
                if (*errorCopy)
                {
                  v18 = v42;
                  localizedDescription = [*errorCopy localizedDescription];
                  [v18 addObject:?];
                  MEMORY[0x277D82BD8](localizedDescription);
                  v50 = 5;
                }

                else
                {
                  v36 = [v39 objectForKey:0x2852AF5E8];
                  if (v36)
                  {
                    if (v37)
                    {
                      v9 = [v36 stringByAppendingFormat:@" %@", v37];
                    }
                  }

                  else
                  {
                    objc_storeStrong(&v36, v37);
                  }

                  if (v36)
                  {
                    v16 = v36;
                    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
                    v10 = [v16 stringByTrimmingCharactersInSet:?];
                    v11 = v36;
                    v36 = v10;
                    MEMORY[0x277D82BD8](v11);
                    MEMORY[0x277D82BD8](whitespaceCharacterSet);
                    if ([v36 isEqualToString:&stru_2852A6E28])
                    {
                      [v39 setValue:0 forKey:0x2852AF5E8];
                    }

                    else
                    {
                      [v39 setValue:v36 forKey:0x2852AF5E8];
                    }
                  }

                  v35 = [v43 deleteRows:v39 error:errorCopy];
                  if (*errorCopy)
                  {
                    v14 = v42;
                    localizedDescription2 = [*errorCopy localizedDescription];
                    [v14 addObject:?];
                    MEMORY[0x277D82BD8](localizedDescription2);
                  }

                  else
                  {
                    [v42 addObject:v35];
                  }

                  objc_storeStrong(&v35, 0);
                  objc_storeStrong(&v36, 0);
                  v50 = 0;
                }

                objc_storeStrong(&v37, 0);
              }

              else
              {
                [v42 addObject:@"Table name required"];
                v50 = 5;
              }

              objc_storeStrong(&v38, 0);
              objc_storeStrong(&v39, 0);
            }

            else
            {
              [v42 addObject:@"Invalid deletion spec: not a dict"];
            }

            ++v26;
            if (v24 + 1 >= v27)
            {
              v26 = 0;
              v27 = [v28 countByEnumeratingWithState:v40 objects:v57 count:16];
              if (!v27)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v28);
        v55 = @"deletionSummary";
        v56 = v42;
        v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v50 = 1;
        objc_storeStrong(&v42, 0);
      }

      else
      {
        generateDBLoadError = [v43 generateDBLoadError];
        v8 = generateDBLoadError;
        *errorCopy = generateDBLoadError;
        v54 = 0;
        v50 = 1;
      }

      objc_storeStrong(&v43, 0);
    }

    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v49, 0);
  }

  else
  {
    v33 = [AMDError allocError:15 withMessage:@"Missing deletion info for all DBs"];
    v4 = v33;
    *errorCopy = v33;
    v54 = 0;
    v50 = 1;
  }

  objc_storeStrong(&v51, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v12 = v54;

  return v12;
}

+ (id)deleteEventsWithPredicate:(id)predicate forStreams:(id)streams
{
  v52[1] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, predicate);
  v44 = 0;
  objc_storeStrong(&v44, streams);
  v43 = +[AMDSQLite getSharedInstance];
  if ([v43 isUsable])
  {
    getDataSchema = [v43 getDataSchema];
    getStreamToTableMap = [getDataSchema getStreamToTableMap];
    v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v44)
    {
      memset(__b, 0, sizeof(__b));
      v23 = MEMORY[0x277D82BE0](v44);
      v24 = [v23 countByEnumeratingWithState:__b objects:v50 count:16];
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
            objc_enumerationMutation(v23);
          }

          v36 = *(__b[1] + 8 * v21);
          v34 = [getStreamToTableMap objectForKey:v36];
          if (v34)
          {
            [v37 addObject:v34];
            v40 = 0;
          }

          else
          {
            v40 = 3;
          }

          objc_storeStrong(&v34, 0);
          ++v21;
          if (v19 + 1 >= v22)
          {
            v21 = 0;
            v22 = [v23 countByEnumeratingWithState:__b objects:v50 count:16];
            if (!v22)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v23);
    }

    else
    {
      allValues = [getStreamToTableMap allValues];
      v4 = [allValues mutableCopy];
      v5 = v37;
      v37 = v4;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](allValues);
    }

    v16 = objc_alloc(MEMORY[0x277CBEB38]);
    v33 = [v16 initWithCapacity:{objc_msgSend(v37, "count")}];
    memset(v31, 0, sizeof(v31));
    v17 = MEMORY[0x277D82BE0](v37);
    v18 = [v17 countByEnumeratingWithState:v31 objects:v49 count:16];
    if (v18)
    {
      v13 = *v31[2];
      v14 = 0;
      v15 = v18;
      while (1)
      {
        v12 = v14;
        if (*v31[2] != v13)
        {
          objc_enumerationMutation(v17);
        }

        v32 = *(v31[1] + 8 * v14);
        v30 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
        [v30 setObject:v32 forKey:0x2852AF668];
        if (location[0])
        {
          [v30 setObject:location[0] forKey:0x2852AF5E8];
        }

        v29 = 0;
        v27 = 0;
        v11 = [v43 deleteRows:v30 error:&v27];
        objc_storeStrong(&v29, v27);
        v28 = v11;
        if (v29)
        {
          v47 = @"Error";
          localizedDescription = [v29 localizedDescription];
          v48 = localizedDescription;
          v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          v7 = v28;
          v28 = v6;
          MEMORY[0x277D82BD8](v7);
          MEMORY[0x277D82BD8](localizedDescription);
        }

        if (v28)
        {
          [v33 setObject:v28 forKey:v32];
        }

        else
        {
          [v33 setObject:@"Deletion Failed" forKey:v32];
        }

        objc_storeStrong(&v28, 0);
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v30, 0);
        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [v17 countByEnumeratingWithState:v31 objects:v49 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v17);
    v46 = MEMORY[0x277D82BE0](v33);
    v40 = 1;
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&getStreamToTableMap, 0);
    objc_storeStrong(&getDataSchema, 0);
  }

  else
  {
    connectionState = [v43 connectionState];
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"DB not usable: %@", connectionState];
    v51 = @"eventDeletionError";
    v52[0] = v41;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v40 = 1;
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&connectionState, 0);
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v8 = v46;

  return v8;
}

+ (id)deleteEventsOlderThan:(unsigned int)than
{
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v34 = a2;
  thanCopy = than;
  location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v31 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_4_0(v41, thanCopy);
    _os_log_debug_impl(&dword_240CB9000, location, v31, "SQLITE Deleting events older than %u days", v41, 8u);
  }

  objc_storeStrong(&location, 0);
  v30 = +[AMDSQLite getSharedInstance];
  if ([v30 isUsable])
  {
    getDataSchema = [v30 getDataSchema];
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    getStreamToTableMap = [getDataSchema getStreamToTableMap];
    memset(__b, 0, sizeof(__b));
    v12 = MEMORY[0x277D82BE0](getStreamToTableMap);
    v13 = [v12 countByEnumeratingWithState:__b objects:v38 count:16];
    if (v13)
    {
      v9 = *__b[2];
      v10 = 0;
      v11 = v13;
      while (1)
      {
        v8 = v10;
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(v12);
        }

        v23 = *(__b[1] + 8 * v10);
        v21 = [getStreamToTableMap objectForKey:v23];
        v20 = [getDataSchema getSchemaForTable:v21];
        if (v20)
        {
          getColumns = [v20 getColumns];
          v7 = [getColumns objectForKey:@"creationTime"];
          MEMORY[0x277D82BD8](v7);
          if (v7)
          {
            [v25 addObject:v21];
          }

          else
          {
            oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v17 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              v6 = oslog;
              __os_log_helper_16_2_1_8_64(v37, v21);
              _os_log_error_impl(&dword_240CB9000, v6, v17, "SQLITE deleteEventsOlderThan: Stream '%@' does not have creationTime", v37, 0xCu);
            }

            objc_storeStrong(&oslog, 0);
          }

          objc_storeStrong(&getColumns, 0);
          v27 = 0;
        }

        else
        {
          v27 = 3;
        }

        objc_storeStrong(&v20, 0);
        objc_storeStrong(&v21, 0);
        ++v10;
        if (v8 + 1 >= v11)
        {
          v10 = 0;
          v11 = [v12 countByEnumeratingWithState:__b objects:v38 count:16];
          if (!v11)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v12);
    v16 = +[AMDMiscHelpers getCurrentEpochSeconds];
    unsignedLongValue = [v16 unsignedLongValue];
    v15 = unsignedLongValue - 86400 * thanCopy;
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ < %llu", @"creationTime", v15];
    v36 = [selfCopy deleteEventsWithPredicate:v14 forStreams:v25];
    v27 = 1;
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&getStreamToTableMap, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&getDataSchema, 0);
  }

  else
  {
    connectionState = [v30 connectionState];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"DB not usable: %@", connectionState];
    v39 = @"eventDeletionError";
    v40 = v28;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v27 = 1;
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&connectionState, 0);
  }

  objc_storeStrong(&v30, 0);
  *MEMORY[0x277D85DE8];
  v4 = v36;

  return v4;
}

+ (id)getDomainsFrom:(id)from
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, from);
  v8 = [location[0] objectForKey:0x2852B1B28];
  if (!v8)
  {
    objc_storeStrong(&v8, &unk_2852BC2A0);
  }

  v6 = 0;
  LOBYTE(v5) = 1;
  if (v8)
  {
    objc_opt_class();
    LOBYTE(v5) = 1;
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(v5) = 1;
      if ([v8 count])
      {
        v7 = [v8 objectAtIndexedSubscript:0];
        v6 = 1;
        objc_opt_class();
        v5 = objc_opt_isKindOfClass() ^ 1;
      }
    }
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = MEMORY[0x277D82BE0](v8);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

+ (id)getFeatureValueWithName:(id)name inDomain:(id)domain withColumnName:(id)columnName skipRowset:(BOOL)rowset error:(id *)error
{
  v88 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v73 = 0;
  objc_storeStrong(&v73, domain);
  v72 = 0;
  objc_storeStrong(&v72, columnName);
  rowsetCopy = rowset;
  errorCopy = error;
  v69 = [AMDDomains getCodeForDomain:v73];
  v68 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v87, v73, location[0]);
    _os_log_debug_impl(&dword_240CB9000, v68, type, "SQLITE Retrieving feature in domain '%@': %@", v87, 0x16u);
  }

  objc_storeStrong(&v68, 0);
  v66 = 0;
  if (rowsetCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"featureName = '%@' AND domain = %ld AND valueType <> %d", location[0], v69, 3];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"featureName = '%@' AND domain = %ld", location[0], v69];
  }

  v8 = v66;
  v66 = v7;
  MEMORY[0x277D82BD8](v8);
  v85[0] = 0x2852AF4C8;
  v86[0] = @"getFeatureValue";
  v85[1] = 0x2852AF668;
  v86[1] = @"__AMDTasteProfile";
  v85[2] = 0x2852AF4A8;
  v82 = @"value";
  v80 = @"type";
  v81 = AMD_SQLITE_DATA_TYPE_BLOB;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:?];
  v83 = v32;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  v84 = v31;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
  v86[2] = v30;
  v85[3] = 0x2852AF5E8;
  v86[3] = v66;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:4];
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  v64 = +[AMDSQLite getSharedInstance];
  if ([v64 isUsable])
  {
    v27 = [AMDFetchDescriptor alloc];
    getBootSchema = [v64 getBootSchema];
    v62 = [AMDFetchDescriptor initWithDict:v27 usingSchema:"initWithDict:usingSchema:error:" error:v65];
    MEMORY[0x277D82BD8](getBootSchema);
    if (*errorCopy)
    {
      v75 = 0;
      v63 = 1;
    }

    else
    {
      v61 = [v64 fetchRows:v62 andPersist:0 error:errorCopy];
      v26 = [v61 objectForKey:@"resultSet"];
      v25 = [v26 objectForKey:@"fetchResultColumnsData"];
      v60 = [v25 objectAtIndexedSubscript:0];
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      if (v60 && [v60 count])
      {
        v56 = [v60 objectAtIndexedSubscript:0];
        v55 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v56 options:4 error:errorCopy];
        if (*errorCopy)
        {
          v75 = 0;
          v63 = 1;
        }

        else if (v72)
        {
          v54 = 0;
          if (v55)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v47 = MEMORY[0x277D82BE0](v55);
              v46 = [v47 objectForKey:@"fetchResultColumnsInfo"];
              v45 = [v47 objectForKey:@"fetchResultColumnsData"];
              if (v46 && v45)
              {
                for (i = 0; ; ++i)
                {
                  v19 = i;
                  if (v19 >= [v46 count])
                  {
                    break;
                  }

                  v40 = [v46 objectAtIndex:i];
                  v39 = [v40 objectForKey:@"name"];
                  if ([v39 isEqualToString:v72])
                  {
                    v13 = [v45 objectAtIndex:i];
                    v14 = v54;
                    v54 = v13;
                    MEMORY[0x277D82BD8](v14);
                    v63 = 2;
                  }

                  else
                  {
                    v63 = 0;
                  }

                  objc_storeStrong(&v39, 0);
                  objc_storeStrong(&v40, 0);
                  if (v63)
                  {
                    break;
                  }
                }

                if (v54)
                {
                  v75 = MEMORY[0x277D82BE0](v54);
                  v63 = 1;
                }

                else
                {
                  v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Feature %@ in domain %@ missing column %@", location[0], v73, v72];
                  v37 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    __os_log_helper_16_2_1_8_64(v76, v38);
                    _os_log_error_impl(&dword_240CB9000, v37, OS_LOG_TYPE_ERROR, "%@", v76, 0xCu);
                  }

                  objc_storeStrong(&v37, 0);
                  v18 = [AMDError allocError:16 withMessage:v38];
                  v15 = v18;
                  *errorCopy = v18;
                  v75 = 0;
                  v63 = 1;
                  objc_storeStrong(&v38, 0);
                }
              }

              else
              {
                v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Feature %@ in domain %@ missing column info/data in rowset", location[0], v73];
                v43 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v42 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  __os_log_helper_16_2_1_8_64(v77, v44);
                  _os_log_error_impl(&dword_240CB9000, v43, v42, "%@", v77, 0xCu);
                }

                objc_storeStrong(&v43, 0);
                v20 = [AMDError allocError:16 withMessage:v44];
                v12 = v20;
                *errorCopy = v20;
                v75 = 0;
                v63 = 1;
                objc_storeStrong(&v44, 0);
              }

              objc_storeStrong(&v45, 0);
              objc_storeStrong(&v46, 0);
              objc_storeStrong(&v47, 0);
            }

            else
            {
              v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Feature %@ in domain %@ is incorrectly formatted", location[0], v73];
              v49 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v48 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_2_1_8_64(v78, v50);
                _os_log_error_impl(&dword_240CB9000, v49, v48, "%@", v78, 0xCu);
              }

              objc_storeStrong(&v49, 0);
              v21 = [AMDError allocError:16 withMessage:v50];
              v11 = v21;
              *errorCopy = v21;
              v75 = 0;
              v63 = 1;
              objc_storeStrong(&v50, 0);
            }
          }

          else
          {
            v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"No feature '%@' in domain '%@' of type RowSet", location[0], v73];
            oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v51 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_1_8_64(v79, v53);
              _os_log_error_impl(&dword_240CB9000, oslog, v51, "%@", v79, 0xCu);
            }

            objc_storeStrong(&oslog, 0);
            v22 = [AMDError allocError:16 withMessage:v53];
            v10 = v22;
            *errorCopy = v22;
            v75 = 0;
            v63 = 1;
            objc_storeStrong(&v53, 0);
          }

          objc_storeStrong(&v54, 0);
        }

        else
        {
          v75 = MEMORY[0x277D82BE0](v55);
          v63 = 1;
        }

        objc_storeStrong(&v55, 0);
        objc_storeStrong(&v56, 0);
      }

      else
      {
        v59 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v58 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          v23 = v59;
          v24 = v58;
          __os_log_helper_16_0_0(v57);
          _os_log_debug_impl(&dword_240CB9000, v23, v24, "SQLITE Nothing found", v57, 2u);
        }

        objc_storeStrong(&v59, 0);
        v75 = 0;
        v63 = 1;
      }

      objc_storeStrong(&v60, 0);
      objc_storeStrong(&v61, 0);
    }

    objc_storeStrong(&v62, 0);
  }

  else
  {
    generateDBLoadError = [v64 generateDBLoadError];
    v9 = generateDBLoadError;
    *errorCopy = generateDBLoadError;
    v75 = 0;
    v63 = 1;
  }

  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v16 = v75;

  return v16;
}

+ (id)allocSharedInstance
{
  v2 = [self getSharedInstanceWithOption:{1, a2, self}];

  return v2;
}

+ (id)createSharedInstance
{
  selfCopy = self;
  v11[1] = a2;
  v11[0] = objc_alloc_init(AMDSQLite);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  MEMORY[0x277D82BD8](mainBundle);
  v7 = bundleIdentifier;
  v2 = bundleIdentifier;
  v8 = dispatch_queue_create([v7 UTF8String], 0);
  [v11[0] set_executorQueue:?];
  MEMORY[0x277D82BD8](v8);
  [v11[0] set_isEnabled:0];
  v3 = [selfCopy initSharedInstance:v11[0]];
  v4 = v11[0];
  v11[0] = v3;
  MEMORY[0x277D82BD8](v4);
  v9 = MEMORY[0x277D82BE0](v11[0]);
  objc_storeStrong(&bundleIdentifier, 0);
  objc_storeStrong(v11, 0);

  return v9;
}

+ (id)initSharedInstance:(id)instance
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, instance);
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v15;
  prepareBootstrapSchema = [location[0] prepareBootstrapSchema];
  [v4 addEntriesFromDictionary:?];
  MEMORY[0x277D82BD8](prepareBootstrapSchema);
  v6 = v15;
  loadDb = [location[0] loadDb];
  [v6 addEntriesFromDictionary:?];
  MEMORY[0x277D82BD8](loadDb);
  v8 = v15;
  loadDataSchema = [location[0] loadDataSchema];
  [v8 addEntriesFromDictionary:?];
  MEMORY[0x277D82BD8](loadDataSchema);
  v10 = v15;
  loadBiomeSchema = [location[0] loadBiomeSchema];
  [v10 addEntriesFromDictionary:?];
  MEMORY[0x277D82BD8](loadBiomeSchema);
  v12 = v15;
  loadMegadomeSchema = [location[0] loadMegadomeSchema];
  [v12 addEntriesFromDictionary:?];
  MEMORY[0x277D82BD8](loadMegadomeSchema);
  [AMDFrameworkMetrics log:v15 withKey:@"SQLLoadSummary" atVerbosity:0];
  v14 = MEMORY[0x277D82BE0](location[0]);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v14;
}

+ (id)getSharedInstanceWithOption:(BOOL)option
{
  selfCopy = self;
  v12 = a2;
  optionCopy = option;
  if (option)
  {
    obj = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __41__AMDSQLite_getSharedInstanceWithOption___block_invoke;
    v9 = &__block_descriptor_40_e5_v8__0l;
    v10 = selfCopy;
    v16 = &getSharedInstanceWithOption__onceToken;
    location = 0;
    objc_storeStrong(&location, &obj);
    if (*v16 != -1)
    {
      dispatch_once(v16, location);
    }

    objc_storeStrong(&location, 0);
    v14 = MEMORY[0x277D82BE0](getSharedInstanceWithOption__sharedInstance);
  }

  else
  {
    v14 = MEMORY[0x277D82BE0](getSharedInstanceWithOption__sharedInstance);
  }

  v3 = v14;

  return v3;
}

uint64_t __41__AMDSQLite_getSharedInstanceWithOption___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v8 = 1;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    log = location[0];
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_240CB9000, log, type, "Running first alloc of DB", v7, 2u);
  }

  objc_storeStrong(location, 0);
  v1 = [a1[4] createSharedInstance];
  v2 = getSharedInstanceWithOption__sharedInstance;
  getSharedInstanceWithOption__sharedInstance = v1;
  return MEMORY[0x277D82BD8](v2);
}

+ (id)getBootstrapSchemaDict
{
  v76[3] = *MEMORY[0x277D85DE8];
  v28[2] = self;
  v28[1] = a2;
  v75[0] = AMD_SQLITE_SCHEMA_NAME;
  v76[0] = @"bootstrap";
  v75[1] = AMD_SQLITE_SCHEMA_VERSION;
  v76[1] = @"1";
  v75[2] = AMD_SQLITE_SCHEMA_TABLES;
  v73[0] = @"__AMDSchema";
  v71[0] = @"schema";
  v69[0] = AMD_SQLITE_TYPE;
  v70[0] = AMD_SQLITE_DATA_TYPE_BLOB;
  v69[1] = AMD_SQLITE_NOT_NULL;
  v3 = MEMORY[0x277CBEC38];
  v70[1] = MEMORY[0x277CBEC38];
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:?];
  v72[0] = v26;
  v71[1] = @"creationTime";
  v67[0] = AMD_SQLITE_TYPE;
  v68[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v67[1] = AMD_SQLITE_NOT_NULL;
  v68[1] = v3;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
  v72[1] = v25;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
  v74[0] = v24;
  v73[1] = @"__AMDTasteProfile";
  v65[0] = @"domain";
  v63[0] = AMD_SQLITE_TYPE;
  v64[0] = AMD_SQLITE_DATA_TYPE_INT;
  v63[1] = AMD_SQLITE_NOT_NULL;
  v64[1] = v3;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
  v66[0] = v23;
  v65[1] = @"featureName";
  v61[0] = AMD_SQLITE_TYPE;
  v62[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v61[1] = AMD_SQLITE_NOT_NULL;
  v62[1] = v3;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
  v66[1] = v22;
  v65[2] = @"source";
  v59[0] = AMD_SQLITE_TYPE;
  v60[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v59[1] = AMD_SQLITE_NOT_NULL;
  v60[1] = v3;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  v66[2] = v21;
  v65[3] = @"valueType";
  v57[0] = AMD_SQLITE_TYPE;
  v58[0] = AMD_SQLITE_DATA_TYPE_INT;
  v57[1] = AMD_SQLITE_NOT_NULL;
  v58[1] = v3;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
  v66[3] = v20;
  v65[4] = @"value";
  v55 = AMD_SQLITE_TYPE;
  v56 = AMD_SQLITE_DATA_TYPE_BLOB;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v66[4] = v19;
  v65[5] = @"creationTime";
  v53[0] = AMD_SQLITE_TYPE;
  v54[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v53[1] = AMD_SQLITE_NOT_NULL;
  v54[1] = v3;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
  v66[5] = v18;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:?];
  v74[1] = v17;
  v73[2] = @"__AMDAggregations";
  v51[0] = @"descriptor";
  v49[0] = AMD_SQLITE_TYPE;
  v50[0] = AMD_SQLITE_DATA_TYPE_BLOB;
  v49[1] = AMD_SQLITE_NOT_NULL;
  v50[1] = v3;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
  v52[0] = v16;
  v51[1] = @"domain";
  v47[0] = AMD_SQLITE_TYPE;
  v48[0] = AMD_SQLITE_DATA_TYPE_INT;
  v47[1] = AMD_SQLITE_NOT_NULL;
  v48[1] = v3;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
  v52[1] = v15;
  v51[2] = @"name";
  v45[0] = AMD_SQLITE_TYPE;
  v46[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v45[1] = AMD_SQLITE_NOT_NULL;
  v46[1] = v3;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  v52[2] = v14;
  v51[3] = @"creationTime";
  v43[0] = AMD_SQLITE_TYPE;
  v44[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v43[1] = AMD_SQLITE_NOT_NULL;
  v44[1] = v3;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v52[3] = v13;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:?];
  v74[2] = v12;
  v73[3] = @"__AMDVectorDatabases";
  v41[0] = @"dbName";
  v39[0] = AMD_SQLITE_TYPE;
  v40[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v39[1] = AMD_SQLITE_NOT_NULL;
  v40[1] = v3;
  v39[2] = AMD_SQLITE_UNIQUE;
  v40[2] = &unk_2852BA5F0;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:?];
  v42[0] = v11;
  v41[1] = @"dbPath";
  v37[0] = AMD_SQLITE_TYPE;
  v38[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v37[1] = AMD_SQLITE_NOT_NULL;
  v38[1] = v3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v42[1] = v10;
  v41[2] = @"lastUpdateTime";
  v35[0] = AMD_SQLITE_TYPE;
  v36[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v35[1] = AMD_SQLITE_NOT_NULL;
  v36[1] = v3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v42[2] = v9;
  v41[3] = @"vectorDimension";
  v33[0] = AMD_SQLITE_TYPE;
  v34[0] = AMD_SQLITE_DATA_TYPE_INT64;
  v33[1] = AMD_SQLITE_NOT_NULL;
  v34[1] = v3;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v42[3] = v8;
  v41[4] = @"distanceMetric";
  v31[0] = AMD_SQLITE_TYPE;
  v32[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v31[1] = AMD_SQLITE_NOT_NULL;
  v32[1] = v3;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v42[4] = v7;
  v41[5] = @"dataType";
  v29[0] = AMD_SQLITE_TYPE;
  v30[0] = AMD_SQLITE_DATA_TYPE_TEXT;
  v29[1] = AMD_SQLITE_NOT_NULL;
  v30[1] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v42[5] = v6;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:6];
  v74[3] = v5;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:4];
  v76[2] = v4;
  v28[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:3];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
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
  v27 = MEMORY[0x277D82BE0](v28[0]);
  objc_storeStrong(v28, 0);
  *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)insertRowsHandler:(id)handler error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v6 = [selfCopy insertRowsInternal:location[0] usingSchema:0 error:error];
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)insertRowsInternal:(id)internal usingSchema:(id)schema error:(id *)error
{
  v67 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, internal);
  v56 = 0;
  objc_storeStrong(&v56, schema);
  errorCopy = error;
  v54 = [location[0] objectForKey:@"allInserts"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v54 count])
  {
    v52 = MEMORY[0x277D82BE0](v54);
    v51 = 0;
    memset(__b, 0, sizeof(__b));
    v32 = MEMORY[0x277D82BE0](v52);
    if ([v32 countByEnumeratingWithState:__b objects:v66 count:16])
    {
      *__b[2];
      *__b[2];
      v50 = *__b[1];
      v6 = [v52 objectForKey:v50];
      v7 = v51;
      v51 = v6;
      MEMORY[0x277D82BD8](v7);
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v65, v50);
        _os_log_debug_impl(&dword_240CB9000, oslog, type, "SQLITE Inserting into db '%@'", v65, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v53 = 2;
    }

    else
    {
      v53 = 0;
    }

    MEMORY[0x277D82BD8](v32);
    if (v51)
    {
      v46 = +[AMDSQLite getSharedInstance];
      if ([v46 isUsable])
      {
        if (!v56)
        {
          _schema = [v46 _schema];
          v11 = v56;
          v56 = _schema;
          MEMORY[0x277D82BD8](v11);
        }

        v45 = [v51 objectForKey:@"skipValidation"];
        if (v45)
        {
          v29 = [v45 intValue] != 0;
        }

        else
        {
          v29 = 0;
        }

        v44 = v29;
        v43 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v42 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          if (v44)
          {
            v12 = "YES";
          }

          else
          {
            v12 = "NO";
          }

          __os_log_helper_16_2_1_8_32(v64, v12);
          _os_log_debug_impl(&dword_240CB9000, v43, v42, "SQLITE Skip validation: %s", v64, 0xCu);
        }

        objc_storeStrong(&v43, 0);
        v13 = [v51 objectForKey:@"rowsData"];
        v14 = v54;
        v54 = v13;
        MEMORY[0x277D82BD8](v14);
        if (v54 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v54 count])
        {
          v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
          memset(v39, 0, sizeof(v39));
          v26 = MEMORY[0x277D82BE0](v54);
          v27 = [v26 countByEnumeratingWithState:v39 objects:v63 count:16];
          if (v27)
          {
            v23 = *v39[2];
            v24 = 0;
            v25 = v27;
            while (1)
            {
              v22 = v24;
              if (*v39[2] != v23)
              {
                objc_enumerationMutation(v26);
              }

              v40 = *(v39[1] + 8 * v24);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v38 = MEMORY[0x277D82BE0](v40);
                v61[0] = 0x2852AF668;
                v21 = [v38 objectForKey:0x2852AF668];
                v62[0] = v21;
                v61[1] = @"rowsData";
                v20 = [v38 objectForKey:?];
                v62[1] = v20;
                v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
                MEMORY[0x277D82BD8](v20);
                MEMORY[0x277D82BD8](v21);
                v36 = [v46 insertRows:v37 usingSchema:v56 skipValidation:v44 error:errorCopy];
                if (*errorCopy)
                {
                  v18 = v41;
                  localizedDescription = [*errorCopy localizedDescription];
                  [v18 addObject:?];
                  MEMORY[0x277D82BD8](localizedDescription);
                }

                else
                {
                  [v41 addObject:v36];
                }

                objc_storeStrong(&v36, 0);
                objc_storeStrong(&v37, 0);
                objc_storeStrong(&v38, 0);
              }

              else
              {
                [v41 addObject:@"Invalid rowset"];
              }

              ++v24;
              if (v22 + 1 >= v25)
              {
                v24 = 0;
                v25 = [v26 countByEnumeratingWithState:v39 objects:v63 count:16];
                if (!v25)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x277D82BD8](v26);
          v59 = @"insertSummary";
          v60 = v41;
          v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v53 = 1;
          objc_storeStrong(&v41, 0);
        }

        else
        {
          v28 = [AMDError allocError:15 withMessage:@"Missing or invalid rowsets"];
          v15 = v28;
          *errorCopy = v28;
          v58 = 0;
          v53 = 1;
        }

        objc_storeStrong(&v45, 0);
      }

      else
      {
        generateDBLoadError = [v46 generateDBLoadError];
        v9 = generateDBLoadError;
        *errorCopy = generateDBLoadError;
        v58 = 0;
        v53 = 1;
      }

      objc_storeStrong(&v46, 0);
    }

    else
    {
      v31 = [AMDError allocError:15 withMessage:@"No insert info"];
      v8 = v31;
      *errorCopy = v31;
      v58 = 0;
      v53 = 1;
    }

    objc_storeStrong(&v51, 0);
    objc_storeStrong(&v52, 0);
  }

  else
  {
    v33 = [AMDError allocError:15 withMessage:@"Missing insertion info for all DBs"];
    v5 = v33;
    *errorCopy = v33;
    v58 = 0;
    v53 = 1;
  }

  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v56, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v16 = v58;

  return v16;
}

+ (id)loadNewData:(id)data
{
  v14[1] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v11 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v10 = 2;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    log = v11;
    type = v10;
    __os_log_helper_16_0_0(v9);
    _os_log_debug_impl(&dword_240CB9000, log, type, "SQLITE Loading new events", v9, 2u);
  }

  objc_storeStrong(&v11, 0);
  v8 = [location[0] objectForKey:0x2852B1928];
  v7 = [AMDDeviceStorage performStorageUpdateWithPayload:v8];
  v13 = @"deviceStorageUpdateSummary";
  v14[0] = v7;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

+ (sqlite3_stmt)prepare:(id)prepare usingDb:(sqlite3 *)db error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, prepare);
  dbCopy = db;
  errorCopy = error;
  v23 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v29, location[0]);
    _os_log_debug_impl(&dword_240CB9000, v23, v22, "SQLITE PREPARE: %@", v29, 0xCu);
  }

  objc_storeStrong(&v23, 0);
  ppStmt = 0;
  if (dbCopy)
  {
    db = dbCopy;
    v10 = location[0];
    v6 = location[0];
    v16 = sqlite3_prepare_v2(db, [v10 UTF8String], -1, &ppStmt, 0);
    if (!v16 && ppStmt)
    {
      v27 = ppStmt;
      v17 = 1;
    }

    else
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE PREPARE failed: %d", v16];
      v9 = [AMDMiscHelpers logAndCreateError:22 errorMessage:v15];
      v7 = v9;
      *errorCopy = v9;
      v27 = 0;
      v17 = 1;
      objc_storeStrong(&v15, 0);
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE PREPARE failed: No db!!!"];
    v12 = [AMDMiscHelpers logAndCreateError:22 errorMessage:v20];
    v5 = v12;
    *errorCopy = v12;
    v19 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v18 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v28, v20);
      _os_log_impl(&dword_240CB9000, v19, v18, "%@", v28, 0xCu);
    }

    objc_storeStrong(&v19, 0);
    v27 = 0;
    v17 = 1;
    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v27;
}

- (sqlite3_stmt)prepare:(id)prepare error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, prepare);
  v6 = [AMDSQLite prepare:location[0] usingDb:[(AMDSQLite *)selfCopy _db] error:error];
  objc_storeStrong(location, 0);
  return v6;
}

+ (id)refreshEntityTableForDomain:(id)domain error:(id *)error
{
  v32[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, domain);
  errorCopy = error;
  v21 = MEMORY[0x277D82BE0](@"RefreshEntityTableForDomain");
  if (location[0])
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v30, location[0]);
      _os_log_debug_impl(&dword_240CB9000, oslog, type, "SQLITE Refreshing entity table for domain '%@'", v30, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    getSharedInstance = [selfCopy getSharedInstance];
    if ([getSharedInstance isUsable])
    {
      if ([location[0] isEqualToString:@"apps"])
      {
        v25 = [getSharedInstance refreshAppsTable:errorCopy];
        v19 = 1;
      }

      else
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown domain: %@", location[0]];
        v9 = [AMDError allocError:22 withMessage:v13];
        v6 = v9;
        *errorCopy = v9;
        v26 = v21;
        v27 = v13;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v19 = 1;
        objc_storeStrong(&v13, 0);
      }
    }

    else
    {
      connectionState = [getSharedInstance connectionState];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Entity table refresh failed. DB not usable: %@", connectionState];
      v10 = [AMDError allocError:22 withMessage:v14];
      v5 = v10;
      *errorCopy = v10;
      v28 = v21;
      v29 = v14;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v19 = 1;
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&connectionState, 0);
    }

    objc_storeStrong(&getSharedInstance, 0);
  }

  else
  {
    v20 = MEMORY[0x277D82BE0](@"No domain");
    v11 = [AMDError allocError:22 withMessage:v20];
    v4 = v11;
    *errorCopy = v11;
    v31 = v21;
    v32[0] = v20;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v19 = 1;
    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v25;

  return v7;
}

+ (id)refreshODTPForDomain:(id)domain error:(id *)error
{
  v113[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, domain);
  errorCopy = error;
  v88 = MEMORY[0x277D82BE0](@"RefreshODTPSQLite");
  if (location[0])
  {
    v85 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [AMDPerf startMonitoringEvent:v88];
    v84 = [AMDDomains getCodeForDomain:location[0]];
    if (v84)
    {
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v109, location[0]);
        _os_log_debug_impl(&dword_240CB9000, oslog, type, "SQLITE Refresh ODTP for domain %@", v109, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v106 = @"descriptor";
      v104 = AMD_SQLITE_TYPE;
      v105 = AMD_SQLITE_DATA_TYPE_BLOB;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:?];
      v107 = v42;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
      v108 = v41;
      v80 = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v42);
      v79 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = %lu", @"domain", v84];
      v102[0] = 0x2852AF4C8;
      v103[0] = @"__AMDAggregations";
      v102[1] = 0x2852AF668;
      v103[1] = @"__AMDAggregations";
      v102[2] = 0x2852AF4A8;
      v103[2] = v80;
      v102[3] = 0x2852AF5E8;
      v103[3] = v79;
      v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:4];
      getSharedInstance = [selfCopy getSharedInstance];
      if ([getSharedInstance isUsable])
      {
        v37 = [AMDFetchDescriptor alloc];
        _bootstrapSchema = [getSharedInstance _bootstrapSchema];
        v74 = [AMDFetchDescriptor initWithDict:v37 usingSchema:"initWithDict:usingSchema:error:" error:v78];
        MEMORY[0x277D82BD8](_bootstrapSchema);
        _bootstrapSchema2 = [getSharedInstance _bootstrapSchema];
        v73 = [getSharedInstance fetchRowsUsingSchema:? andDescriptor:? andPersist:? error:?];
        MEMORY[0x277D82BD8](_bootstrapSchema2);
        if (*errorCopy)
        {
          v98 = v88;
          localizedDescription = [*errorCopy localizedDescription];
          v99 = localizedDescription;
          v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
          MEMORY[0x277D82BD8](localizedDescription);
          v86 = 1;
        }

        else
        {
          v72 = [v73 objectForKey:@"resultSet"];
          v71 = [v72 objectForKey:@"fetchResultColumnsData"];
          if (v71 && [v71 count] == 1)
          {
            v67 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v66 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
            {
              v33 = [v71 objectAtIndexedSubscript:0];
              v7 = [v33 count];
              __os_log_helper_16_2_2_8_0_8_64(v95, v7, location[0]);
              _os_log_debug_impl(&dword_240CB9000, v67, v66, "SQLITE Refresh %lu ODTP FDs for domain %@", v95, 0x16u);
              MEMORY[0x277D82BD8](v33);
            }

            objc_storeStrong(&v67, 0);
            v65 = 0;
            v64 = [v71 objectAtIndexedSubscript:0];
            v63 = 0;
            memset(__b, 0, sizeof(__b));
            v31 = MEMORY[0x277D82BE0](v64);
            v32 = [v31 countByEnumeratingWithState:__b objects:v94 count:16];
            if (v32)
            {
              v28 = *__b[2];
              v29 = 0;
              v30 = v32;
              while (1)
              {
                v27 = v29;
                if (*__b[2] != v28)
                {
                  objc_enumerationMutation(v31);
                }

                v62 = *(__b[1] + 8 * v29);
                objc_storeStrong(&v63, 0);
                v59 = v63;
                v26 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v62 options:4 error:&v59];
                objc_storeStrong(&v63, v59);
                v60 = v26;
                if (v63)
                {
                  v58 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                  v57 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    v24 = v58;
                    v25 = v57;
                    __os_log_helper_16_0_0(v56);
                    _os_log_error_impl(&dword_240CB9000, v24, v25, "SQLITE Stored FD not deserializable.  Check!", v56, 2u);
                  }

                  objc_storeStrong(&v58, 0);
                  ++v65;
                  v86 = 3;
                }

                else
                {
                  v21 = [AMDFetchDescriptor alloc];
                  v20 = v60;
                  _schema = [getSharedInstance _schema];
                  v54 = v63;
                  v22 = [AMDFetchDescriptor initWithDict:v21 usingSchema:"initWithDict:usingSchema:error:" error:v20];
                  objc_storeStrong(&v63, v54);
                  v55 = v22;
                  MEMORY[0x277D82BD8](_schema);
                  if (v63)
                  {
                    v53 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                    v52 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                    {
                      v18 = v53;
                      v19 = v52;
                      __os_log_helper_16_0_0(v51);
                      _os_log_error_impl(&dword_240CB9000, v18, v19, "SQLITE Stored FD not parsable.  Check!", v51, 2u);
                    }

                    objc_storeStrong(&v53, 0);
                    ++v65;
                    v86 = 3;
                  }

                  else
                  {
                    v16 = getSharedInstance;
                    _schema2 = [getSharedInstance _schema];
                    v50 = v63;
                    v8 = [v16 fetchRowsUsingSchema:? andDescriptor:? andPersist:? error:?];
                    objc_storeStrong(&v63, v50);
                    MEMORY[0x277D82BD8](_schema2);
                    if (v63)
                    {
                      ++v65;
                    }

                    else
                    {
                      v49 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                      v48 = OS_LOG_TYPE_DEBUG;
                      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                      {
                        v13 = v49;
                        v14 = v48;
                        getId = [v55 getId];
                        v47 = MEMORY[0x277D82BE0](getId);
                        __os_log_helper_16_2_1_8_64(v93, v47);
                        _os_log_debug_impl(&dword_240CB9000, v13, v14, "SQLITE Saving result for FD '%@'", v93, 0xCu);
                        MEMORY[0x277D82BD8](getId);
                        objc_storeStrong(&v47, 0);
                      }

                      objc_storeStrong(&v49, 0);
                    }

                    v86 = 0;
                  }

                  objc_storeStrong(&v55, 0);
                }

                objc_storeStrong(&v60, 0);
                ++v29;
                if (v27 + 1 >= v30)
                {
                  v29 = 0;
                  v30 = [v31 countByEnumeratingWithState:__b objects:v94 count:16];
                  if (!v30)
                  {
                    break;
                  }
                }
              }
            }

            MEMORY[0x277D82BD8](v31);
            v12 = MEMORY[0x277CCACA8];
            v9 = [v71 count];
            v46 = [v12 stringWithFormat:@"SQLITE Refresh FD results: total %lu, failed %u", v9, v65];
            [v85 setObject:v46 forKey:v88];
            [AMDPerf endMonitoringEvent:v88];
            v92 = MEMORY[0x277D82BE0](v85);
            v86 = 1;
            objc_storeStrong(&v46, 0);
            objc_storeStrong(&v63, 0);
            objc_storeStrong(&v64, 0);
          }

          else
          {
            v70 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v69 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
            {
              v34 = v70;
              v35 = v69;
              __os_log_helper_16_0_0(v68);
              _os_log_debug_impl(&dword_240CB9000, v34, v35, "SQLITE ODTP No FDs", v68, 2u);
            }

            objc_storeStrong(&v70, 0);
            v96 = v88;
            v97 = @"No FDs";
            v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
            v86 = 1;
          }

          objc_storeStrong(&v71, 0);
          objc_storeStrong(&v72, 0);
        }

        objc_storeStrong(&v73, 0);
        objc_storeStrong(&v74, 0);
      }

      else
      {
        connectionState = [getSharedInstance connectionState];
        v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE Cannot refresh OD Features: %@", connectionState];
        v40 = [AMDError allocError:22 withMessage:v75];
        v6 = v40;
        *errorCopy = v40;
        v100 = v88;
        v101 = v75;
        v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
        v86 = 1;
        objc_storeStrong(&v75, 0);
        objc_storeStrong(&connectionState, 0);
      }

      objc_storeStrong(&getSharedInstance, 0);
      objc_storeStrong(&v78, 0);
      objc_storeStrong(&v79, 0);
      objc_storeStrong(&v80, 0);
    }

    else
    {
      v83 = MEMORY[0x277D82BE0](@"Unknown domain");
      v43 = [AMDError allocError:22 withMessage:v83];
      v5 = v43;
      *errorCopy = v43;
      v110 = v88;
      v111 = v83;
      v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
      v86 = 1;
      objc_storeStrong(&v83, 0);
    }

    objc_storeStrong(&v85, 0);
  }

  else
  {
    v87 = MEMORY[0x277D82BE0](@"No domain");
    v44 = [AMDError allocError:22 withMessage:v87];
    v4 = v44;
    *errorCopy = v44;
    v112 = v88;
    v113[0] = v87;
    v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:&v112 count:1];
    v86 = 1;
    objc_storeStrong(&v87, 0);
  }

  objc_storeStrong(&v88, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v10 = v92;

  return v10;
}

+ (id)saveEvents:(id)events error:(id *)error
{
  v63[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, events);
  errorCopy = error;
  v57 = MEMORY[0x277D82BE0](@"saveEvents");
  v56 = +[AMDSQLite getSharedInstance];
  if ([v56 isUsable])
  {
    v54 = [location[0] objectForKey:@"streamName"];
    if (v54)
    {
      _schema = [v56 _schema];
      v52 = [_schema getTableForStream:v54];
      MEMORY[0x277D82BD8](_schema);
      if (v52)
      {
        v50 = [location[0] objectForKey:@"rowsData"];
        if (v50 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v62[0] = 0x2852AF668;
          v63[0] = v52;
          v62[1] = @"rowsData";
          v63[1] = v50;
          v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
          _schema2 = [v56 _schema];
          v47 = [v56 insertRows:v48 usingSchema:? error:?];
          MEMORY[0x277D82BD8](_schema2);
          if (*errorCopy)
          {
            v61 = 0;
            v55 = 1;
          }

          else
          {
            v46 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
            if (v47)
            {
              [v46 setObject:v47 forKey:v57];
            }

            else
            {
              [v46 setObject:@"SQL insert failed" forKey:v57];
            }

            v45 = [location[0] objectForKey:0x2852A86A8];
            v44 = 0;
            v43 = [location[0] objectForKey:@"refreshEntityTable"];
            if (v43 && [v43 intValue])
            {
              if (v45)
              {
                v41 = v44;
                v23 = [selfCopy refreshEntityTableForDomain:v45 error:&v41];
                objc_storeStrong(&v44, v41);
                v42 = v23;
                if (v44)
                {
                  v21 = MEMORY[0x277CCACA8];
                  localizedDescription = [v44 localizedDescription];
                  v8 = [v21 stringWithFormat:@"Error refreshing entity table: %@", localizedDescription];
                  v9 = v42;
                  v42 = v8;
                  MEMORY[0x277D82BD8](v9);
                  MEMORY[0x277D82BD8](localizedDescription);
                }

                [v46 setObject:v42 forKey:@"refreshEntity"];
                objc_storeStrong(&v42, 0);
              }

              else
              {
                v40 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v39 = 16;
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  log = v40;
                  type = v39;
                  __os_log_helper_16_0_0(v38);
                  _os_log_error_impl(&dword_240CB9000, log, type, "SQLITE SaveEvent RefreshEntity: no domain", v38, 2u);
                }

                objc_storeStrong(&v40, 0);
              }
            }

            v37 = 0;
            v36 = [location[0] objectForKey:@"refreshODTP"];
            if (v36 && [v36 intValue])
            {
              if (v45)
              {
                obj = v37;
                v18 = [selfCopy refreshODTPForDomain:v45 error:&obj];
                objc_storeStrong(&v37, obj);
                v35 = v18;
                if (v37)
                {
                  v16 = MEMORY[0x277CCACA8];
                  localizedDescription2 = [v37 localizedDescription];
                  v10 = [v16 stringWithFormat:@"Error refreshing ODTP: %@", localizedDescription2];
                  v11 = v35;
                  v35 = v10;
                  MEMORY[0x277D82BD8](v11);
                  MEMORY[0x277D82BD8](localizedDescription2);
                }

                [v46 setObject:v35 forKey:@"refreshODTP"];
                objc_storeStrong(&v35, 0);
              }

              else
              {
                oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v32 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                {
                  v14 = oslog;
                  v15 = v32;
                  __os_log_helper_16_0_0(v31);
                  _os_log_error_impl(&dword_240CB9000, v14, v15, "SQLITE SaveEvent RefreshODTP: no domain", v31, 2u);
                }

                objc_storeStrong(&oslog, 0);
              }
            }

            [AMDFrameworkMetrics log:v46 withKey:@"SQLEventSaveSummary" atVerbosity:0];
            v61 = MEMORY[0x277D82BE0](v46);
            v55 = 1;
            objc_storeStrong(&v36, 0);
            objc_storeStrong(&v37, 0);
            objc_storeStrong(&v43, 0);
            objc_storeStrong(&v44, 0);
            objc_storeStrong(&v45, 0);
            objc_storeStrong(&v46, 0);
          }

          objc_storeStrong(&v47, 0);
          objc_storeStrong(&v48, 0);
        }

        else
        {
          v49 = MEMORY[0x277D82BE0](@"No rows data");
          v25 = [AMDMiscHelpers logAndCreateError:22 errorMessage:v49];
          v7 = v25;
          *errorCopy = v25;
          v61 = 0;
          v55 = 1;
          objc_storeStrong(&v49, 0);
        }

        objc_storeStrong(&v50, 0);
      }

      else
      {
        v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown stream: %@", v54];
        v26 = [AMDMiscHelpers logAndCreateError:22 errorMessage:v51];
        v6 = v26;
        *errorCopy = v26;
        v61 = 0;
        v55 = 1;
        objc_storeStrong(&v51, 0);
      }

      objc_storeStrong(&v52, 0);
    }

    else
    {
      v53 = MEMORY[0x277D82BE0](@"No stream name");
      v28 = [AMDMiscHelpers logAndCreateError:22 errorMessage:v53];
      v5 = v28;
      *errorCopy = v28;
      v61 = 0;
      v55 = 1;
      objc_storeStrong(&v53, 0);
    }

    objc_storeStrong(&v54, 0);
  }

  else
  {
    generateDBLoadError = [v56 generateDBLoadError];
    v4 = generateDBLoadError;
    *errorCopy = generateDBLoadError;
    v61 = 0;
    v55 = 1;
  }

  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v12 = v61;

  return v12;
}

+ (id)trimEventsForStreams:(id)streams error:(id *)error
{
  v95 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, streams);
  errorCopy = error;
  if (location[0])
  {
    v74 = +[AMDSQLite getSharedInstance];
    if ([v74 isUsable])
    {
      getDataSchema = [v74 getDataSchema];
      if (getDataSchema)
      {
        getStreamToTableMap = [getDataSchema getStreamToTableMap];
        v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
        memset(__b, 0, sizeof(__b));
        obj = MEMORY[0x277D82BE0](location[0]);
        v37 = [obj countByEnumeratingWithState:__b objects:v94 count:16];
        if (v37)
        {
          v33 = *__b[2];
          v34 = 0;
          v35 = v37;
          while (1)
          {
            v32 = v34;
            if (*__b[2] != v33)
            {
              objc_enumerationMutation(obj);
            }

            v69 = *(__b[1] + 8 * v34);
            v67 = 0;
            oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            type = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              log = oslog;
              v31 = type;
              __os_log_helper_16_2_1_8_64(v93, v69);
              _os_log_impl(&dword_240CB9000, log, v31, "Performing cleanup for stream: %@", v93, 0xCu);
            }

            objc_storeStrong(&oslog, 0);
            v64 = [location[0] objectForKey:v69];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v63 = MEMORY[0x277D82BE0](v64);
              v62 = [getStreamToTableMap objectForKey:v69];
              v90 = @"creationTime";
              v88 = AMD_SQLITE_TYPE;
              v89 = AMD_SQLITE_DATA_TYPE_INT64;
              v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:?];
              v91 = v28;
              v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
              v92 = v27;
              v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
              MEMORY[0x277D82BD8](v27);
              MEMORY[0x277D82BD8](v28);
              v86[0] = 0x2852AF4C8;
              v87[0] = v62;
              v86[1] = 0x2852AF668;
              v87[1] = v62;
              v86[2] = 0x2852AF4A8;
              v87[2] = v61;
              v86[3] = 0x2852AF648;
              v87[3] = @"creationTime ASC";
              v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:4];
              v7 = [AMDFetchDescriptor alloc];
              v58 = v67;
              v29 = [(AMDFetchDescriptor *)v7 initWithDict:v60 usingSchema:getDataSchema error:&v58];
              objc_storeStrong(&v67, v58);
              v59 = v29;
              if (v67)
              {
                v25 = v70;
                localizedDescription = [v67 localizedDescription];
                [v25 setObject:? forKey:?];
                MEMORY[0x277D82BD8](localizedDescription);
                v75 = 3;
              }

              else
              {
                v56 = 0;
                v24 = [v74 fetchRowsUsingSchema:getDataSchema andDescriptor:v59 andPersist:0 error:&v56];
                objc_storeStrong(&v67, v56);
                v57 = v24;
                if (v67)
                {
                  v22 = v70;
                  localizedDescription2 = [v67 localizedDescription];
                  [v22 setObject:? forKey:?];
                  MEMORY[0x277D82BD8](localizedDescription2);
                  v75 = 3;
                }

                else
                {
                  v55 = [v57 objectForKey:@"resultSet"];
                  v54 = [v55 objectForKey:@"fetchResultColumnsData"];
                  if ([v54 count])
                  {
                    v53 = [v54 objectAtIndexedSubscript:0];
                    v52 = [v53 count];
                    v51 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                    v50 = OS_LOG_TYPE_DEBUG;
                    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                    {
                      v20 = v51;
                      v21 = v50;
                      __os_log_helper_16_0_1_8_0(v85, [v63 longValue]);
                      _os_log_debug_impl(&dword_240CB9000, v20, v21, "Record limit for stream: %ld", v85, 0xCu);
                    }

                    objc_storeStrong(&v51, 0);
                    v49 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                    v48 = OS_LOG_TYPE_DEBUG;
                    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                    {
                      v18 = v49;
                      v19 = v48;
                      __os_log_helper_16_0_1_8_0(v84, v52);
                      _os_log_debug_impl(&dword_240CB9000, v18, v19, "Current record count: %ld", v84, 0xCu);
                    }

                    objc_storeStrong(&v49, 0);
                    v17 = v52;
                    if (v17 > [v63 longValue])
                    {
                      v16 = v52;
                      v47 = v16 - [v63 longValue];
                      v46 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                      v45 = OS_LOG_TYPE_DEBUG;
                      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                      {
                        v14 = v46;
                        v15 = v45;
                        __os_log_helper_16_0_1_8_0(v83, v47);
                        _os_log_debug_impl(&dword_240CB9000, v14, v15, "Elements to delete: %ld", v83, 0xCu);
                      }

                      objc_storeStrong(&v46, 0);
                      v44 = [v53 objectAtIndex:v47];
                      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ < %llu", @"creationTime", objc_msgSend(v44, "longLongValue")];
                      v10 = v43;
                      v82 = v69;
                      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
                      v42 = [AMDSQLite deleteEventsWithPredicate:v10 forStreams:?];
                      MEMORY[0x277D82BD8](v11);
                      v12 = v70;
                      v80[0] = @"summary";
                      v81[0] = v42;
                      v80[1] = @"deletionTimestamp";
                      v81[1] = v44;
                      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
                      [v12 setObject:? forKey:?];
                      MEMORY[0x277D82BD8](v13);
                      objc_storeStrong(&v42, 0);
                      objc_storeStrong(&v43, 0);
                      objc_storeStrong(&v44, 0);
                      v75 = 0;
                    }

                    else
                    {
                      [v70 setObject:&unk_2852BA608 forKey:v69];
                      v75 = 3;
                    }

                    objc_storeStrong(&v53, 0);
                  }

                  else
                  {
                    [v70 setObject:@"Unexpected error: No CreationTime column" forKey:v69];
                    v75 = 3;
                  }

                  objc_storeStrong(&v54, 0);
                  objc_storeStrong(&v55, 0);
                }

                objc_storeStrong(&v57, 0);
              }

              objc_storeStrong(&v59, 0);
              objc_storeStrong(&v60, 0);
              objc_storeStrong(&v61, 0);
              objc_storeStrong(&v62, 0);
              objc_storeStrong(&v63, 0);
            }

            else
            {
              [v70 setObject:@"record limit is not of type NSNumber" forKey:v69];
              v75 = 3;
            }

            objc_storeStrong(&v64, 0);
            objc_storeStrong(&v67, 0);
            ++v34;
            if (v32 + 1 >= v35)
            {
              v34 = 0;
              v35 = [obj countByEnumeratingWithState:__b objects:v94 count:16];
              if (!v35)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](obj);
        [AMDFrameworkMetrics log:v70 withKey:@"SQLTableTruncationSummary" atVerbosity:0];
        v79 = MEMORY[0x277D82BE0](v70);
        v75 = 1;
        objc_storeStrong(&v70, 0);
        objc_storeStrong(&getStreamToTableMap, 0);
      }

      else
      {
        v72 = MEMORY[0x277D82BE0](@"SQL database does not have a schema available");
        v38 = [AMDMiscHelpers logAndCreateError:22 errorMessage:v72];
        v6 = v38;
        *errorCopy = v38;
        v79 = 0;
        v75 = 1;
        objc_storeStrong(&v72, 0);
      }

      objc_storeStrong(&getDataSchema, 0);
    }

    else
    {
      generateDBLoadError = [v74 generateDBLoadError];
      v5 = generateDBLoadError;
      *errorCopy = generateDBLoadError;
      v79 = 0;
      v75 = 1;
    }

    objc_storeStrong(&v74, 0);
  }

  else
  {
    v76 = MEMORY[0x277D82BE0](@"recordLimits dict is nil");
    v40 = [AMDMiscHelpers logAndCreateError:22 errorMessage:v76];
    v4 = v40;
    *errorCopy = v40;
    v79 = 0;
    v75 = 1;
    objc_storeStrong(&v76, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v8 = v79;

  return v8;
}

+ (id)truncateEvents:(id *)events
{
  selfCopy = self;
  location[2] = a2;
  location[1] = events;
  location[0] = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v7 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_debug_impl(&dword_240CB9000, log, type, "SQLITE Truncating all events tables", v6, 2u);
  }

  objc_storeStrong(location, 0);
  return [selfCopy deleteEventsWithPredicate:0 forStreams:?];
}

+ (id)updateData:(id)data
{
  v53 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    log = oslog;
    v25 = type;
    __os_log_helper_16_0_0(v44);
    _os_log_debug_impl(&dword_240CB9000, log, v25, "SQLITE Updating all data", v44, 2u);
  }

  objc_storeStrong(&oslog, 0);
  v43 = 0;
  v42 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  unsignedIntValue = 365;
  v23 = [location[0] objectForKey:0x2852B1B08];
  MEMORY[0x277D82BD8](v23);
  if (v23)
  {
    v22 = [location[0] objectForKey:0x2852B1B08];
    unsignedIntValue = [v22 unsignedIntValue];
    MEMORY[0x277D82BD8](v22);
  }

  v20 = [selfCopy deleteEventsOlderThan:unsignedIntValue];
  [v42 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v20);
  v21 = [selfCopy loadNewData:location[0]];
  [v42 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v21);
  v40 = [selfCopy getDomainsFrom:location[0]];
  if (v40)
  {
    v35 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v40, "count")}];
    memset(__b, 0, sizeof(__b));
    v18 = MEMORY[0x277D82BE0](v40);
    v19 = [v18 countByEnumeratingWithState:__b objects:v51 count:16];
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
          objc_enumerationMutation(v18);
        }

        v34 = *(__b[1] + 8 * v16);
        v31 = v43;
        v13 = [selfCopy refreshEntityTableForDomain:v34 error:&v31];
        objc_storeStrong(&v43, v31);
        v32 = v13;
        if (v13)
        {
          [v35 setObject:v32 forKey:v34];
        }

        else
        {
          [v35 setObject:@"Entity table refresh failed" forKey:v34];
        }

        objc_storeStrong(&v32, 0);
        ++v16;
        if (v14 + 1 >= v17)
        {
          v16 = 0;
          v17 = [v18 countByEnumeratingWithState:__b objects:v51 count:16];
          if (!v17)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v18);
    [v42 setObject:v35 forKey:@"refreshEntities"];
    v10 = objc_alloc(MEMORY[0x277CBEB38]);
    v30 = [v10 initWithCapacity:{objc_msgSend(v40, "count")}];
    memset(v28, 0, sizeof(v28));
    v11 = MEMORY[0x277D82BE0](v40);
    v12 = [v11 countByEnumeratingWithState:v28 objects:v50 count:16];
    if (v12)
    {
      v7 = *v28[2];
      v8 = 0;
      v9 = v12;
      while (1)
      {
        v6 = v8;
        if (*v28[2] != v7)
        {
          objc_enumerationMutation(v11);
        }

        v29 = *(v28[1] + 8 * v8);
        v26 = v43;
        v5 = [selfCopy refreshODTPForDomain:v29 error:&v26];
        objc_storeStrong(&v43, v26);
        v27 = v5;
        if (v5)
        {
          [v30 setObject:v27 forKey:v29];
        }

        else
        {
          [v30 setObject:@"ODTP refresh failed" forKey:v29];
        }

        objc_storeStrong(&v27, 0);
        ++v8;
        if (v6 + 1 >= v9)
        {
          v8 = 0;
          v9 = [v11 countByEnumeratingWithState:v28 objects:v50 count:16];
          if (!v9)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v11);
    [v42 setObject:v30 forKey:@"refreshAggregations"];
    v49 = MEMORY[0x277D82BE0](v42);
    v36 = 1;
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v35, 0);
  }

  else
  {
    v39 = MEMORY[0x277D82BE0](@"SQLITE Update: no domains");
    v38 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v37 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v52, v39);
      _os_log_error_impl(&dword_240CB9000, v38, v37, "%@", v52, 0xCu);
    }

    objc_storeStrong(&v38, 0);
    [v42 setObject:v39 forKey:@"error"];
    v49 = MEMORY[0x277D82BE0](v42);
    v36 = 1;
    objc_storeStrong(&v39, 0);
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v49;

  return v3;
}

+ (id)updateTablesHandler:(id)handler error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v6 = [selfCopy updateTablesInternal:location[0] usingSchema:0 error:error];
  objc_storeStrong(location, 0);

  return v6;
}

+ (id)updateTablesInternal:(id)internal usingSchema:(id)schema error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, internal);
  v41 = 0;
  objc_storeStrong(&v41, schema);
  errorCopy = error;
  v39 = [location[0] objectForKey:@"allUpdates"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v39 count])
  {
    v37 = MEMORY[0x277D82BE0](v39);
    memset(__b, 0, sizeof(__b));
    v24 = MEMORY[0x277D82BE0](v37);
    if ([v24 countByEnumeratingWithState:__b objects:v48 count:16])
    {
      *__b[2];
      *__b[2];
      v36 = *__b[1];
      v6 = [v37 objectForKey:v36];
      v7 = v39;
      v39 = v6;
      MEMORY[0x277D82BD8](v7);
      if (v39 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v39 count])
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        type = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_1_8_64(v47, v36);
          _os_log_debug_impl(&dword_240CB9000, oslog, type, "SQLITE Updting db '%@'", v47, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v38 = 2;
      }

      else
      {
        v23 = [AMDError allocError:15 withMessage:@"No updates info"];
        v8 = v23;
        *errorCopy = v23;
        v43 = 0;
        v38 = 1;
      }
    }

    else
    {
      v38 = 0;
    }

    MEMORY[0x277D82BD8](v24);
    if (!v38 || v38 == 2)
    {
      v32 = +[AMDSQLite getSharedInstance];
      if ([v32 isUsable])
      {
        if (!v41)
        {
          _schema = [v32 _schema];
          v11 = v41;
          v41 = _schema;
          MEMORY[0x277D82BD8](v11);
        }

        v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
        memset(v29, 0, sizeof(v29));
        v20 = MEMORY[0x277D82BE0](v39);
        v21 = [v20 countByEnumeratingWithState:v29 objects:v46 count:16];
        if (v21)
        {
          v17 = *v29[2];
          v18 = 0;
          v19 = v21;
          while (1)
          {
            v16 = v18;
            if (*v29[2] != v17)
            {
              objc_enumerationMutation(v20);
            }

            v30 = *(v29[1] + 8 * v18);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = [v32 updateTableUsingDescriptor:v30 andSchema:v41 error:errorCopy];
              if (*errorCopy)
              {
                v14 = v31;
                localizedDescription = [*errorCopy localizedDescription];
                [v14 addObject:?];
                MEMORY[0x277D82BD8](localizedDescription);
              }

              else
              {
                [v31 addObject:v28];
              }

              objc_storeStrong(&v28, 0);
            }

            else
            {
              [v31 addObject:@"Missing or invalid update descriptor"];
            }

            ++v18;
            if (v16 + 1 >= v19)
            {
              v18 = 0;
              v19 = [v20 countByEnumeratingWithState:v29 objects:v46 count:16];
              if (!v19)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](v20);
        v44 = @"updateSummary";
        v45 = v31;
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v38 = 1;
        objc_storeStrong(&v31, 0);
      }

      else
      {
        generateDBLoadError = [v32 generateDBLoadError];
        v9 = generateDBLoadError;
        *errorCopy = generateDBLoadError;
        v43 = 0;
        v38 = 1;
      }

      objc_storeStrong(&v32, 0);
    }

    objc_storeStrong(&v37, 0);
  }

  else
  {
    v25 = [AMDError allocError:15 withMessage:@"Missing updates info for all DBs"];
    v5 = v25;
    *errorCopy = v25;
    v43 = 0;
    v38 = 1;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v12 = v43;

  return v12;
}

- (id)getPredicateExtensionForTable:(id)table forUser:(id)user andDomain:(id)domain error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, table);
  v28 = 0;
  objc_storeStrong(&v28, user);
  v27 = 0;
  objc_storeStrong(&v27, domain);
  errorCopy = error;
  getDataSchema = [(AMDSQLite *)selfCopy getDataSchema];
  if (!getDataSchema)
  {
    v31 = 0;
    v24 = 1;
    goto LABEL_23;
  }

  v23 = [getDataSchema getSchemaForTable:location[0]];
  if (v23)
  {
    v22 = MEMORY[0x277D82BE0](&stru_2852A6E28);
    getColumns = [v23 getColumns];
    v20 = 0;
    v16 = [getColumns objectForKey:@"userId"];
    MEMORY[0x277D82BD8](v16);
    if (v16)
    {
      objc_storeStrong(&v20, @"userId");
    }

    else
    {
      v15 = [getColumns objectForKey:@"dsId"];
      MEMORY[0x277D82BD8](v15);
      if (v15)
      {
        objc_storeStrong(&v20, @"dsId");
      }
    }

    if (v20)
    {
      if (!v28)
      {
        v14 = [AMDError allocError:15 withMessage:@"User identifier required"];
        v6 = v14;
        *errorCopy = v14;
        v31 = 0;
        v24 = 1;
LABEL_21:
        objc_storeStrong(&v20, 0);
        objc_storeStrong(&getColumns, 0);
        objc_storeStrong(&v22, 0);
        goto LABEL_22;
      }

      v7 = [v22 stringByAppendingFormat:@"AND %@ == '%@'", v20, v28];
    }

    v13 = [getColumns objectForKey:@"domain"];
    MEMORY[0x277D82BD8](v13);
    if (v13)
    {
      if (!v27)
      {
        v12 = [AMDError allocError:15 withMessage:@"Domain identifier required"];
        v8 = v12;
        *errorCopy = v12;
        v31 = 0;
        v24 = 1;
        goto LABEL_21;
      }

      v9 = [v22 stringByAppendingFormat:@"AND %@ == %@", @"domain", v27];
    }

    if ([v22 isEqualToString:&stru_2852A6E28])
    {
      v31 = 0;
    }

    else
    {
      v31 = MEMORY[0x277D82BE0](v22);
    }

    v24 = 1;
    goto LABEL_21;
  }

  v31 = 0;
  v24 = 1;
LABEL_22:
  objc_storeStrong(&v23, 0);
LABEL_23:
  objc_storeStrong(&getDataSchema, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  v10 = v31;

  return v10;
}

- (id)prepareBootstrapSchema
{
  v16[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v12[1] = a2;
  v12[0] = 0;
  v11 = +[AMDSQLite getBootstrapSchemaDict];
  v2 = [AMDSQLiteSchema alloc];
  v10 = v12[0];
  v7 = [(AMDSQLiteSchema *)v2 initWithDict:v11 error:&v10];
  objc_storeStrong(v12, v10);
  [(AMDSQLite *)selfCopy set_bootstrapSchema:v7];
  MEMORY[0x277D82BD8](v7);
  _bootstrapSchema = [(AMDSQLite *)selfCopy _bootstrapSchema];
  MEMORY[0x277D82BD8](_bootstrapSchema);
  if (_bootstrapSchema)
  {
    v14 = MEMORY[0x277D82BE0](&unk_2852BB470);
  }

  else
  {
    [(AMDSQLite *)selfCopy set_error:v12[0]];
    v5 = MEMORY[0x277CCACA8];
    localizedDescription = [v12[0] localizedDescription];
    v9 = [v5 stringWithFormat:@"SQLITE Boot schema prep failure: %@", localizedDescription];
    MEMORY[0x277D82BD8](localizedDescription);
    v15 = @"bootSchemaLoadSummary";
    v16[0] = v9;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(v12, 0);
  *MEMORY[0x277D85DE8];
  v3 = v14;

  return v3;
}

- (id)bootstrapDb
{
  selfCopy = self;
  v9[1] = a2;
  v9[0] = 0;
  _bootstrapSchema = [(AMDSQLite *)self _bootstrapSchema];
  v7 = v9[0];
  v5 = [AMDSQLite applySchema:"applySchema:error:" error:?];
  objc_storeStrong(v9, v7);
  v8 = v5;
  MEMORY[0x277D82BD8](_bootstrapSchema);
  if (v9[0])
  {
    [(AMDSQLite *)selfCopy set_error:v9[0]];
  }

  v3 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);

  return v3;
}

- (id)connectionState
{
  selfCopy = self;
  v14[1] = a2;
  v14[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(AMDSQLite *)selfCopy _isEnabled])
  {
    if ([(AMDSQLite *)selfCopy _db])
    {
      _bootstrapSchema = [(AMDSQLite *)selfCopy _bootstrapSchema];
      MEMORY[0x277D82BD8](_bootstrapSchema);
      if (_bootstrapSchema)
      {
        _schema = [(AMDSQLite *)selfCopy _schema];
        MEMORY[0x277D82BD8](_schema);
        if (_schema)
        {
          _error = [(AMDSQLite *)selfCopy _error];
          MEMORY[0x277D82BD8](_error);
          if (_error)
          {
            v6 = MEMORY[0x277CCACA8];
            _error2 = [(AMDSQLite *)selfCopy _error];
            localizedDescription = [(NSError *)_error2 localizedDescription];
            v7 = [v6 stringWithFormat:@"SQLITE internal error: %@", localizedDescription];
            [v14[0] addObject:?];
            MEMORY[0x277D82BD8](v7);
            MEMORY[0x277D82BD8](localizedDescription);
            MEMORY[0x277D82BD8](_error2);
          }
        }

        else
        {
          [v14[0] addObject:@"SQLITE db has no data schema"];
        }
      }

      else
      {
        [v14[0] addObject:@"SQLITE db not bootstrapped"];
      }
    }

    else
    {
      [v14[0] addObject:@"SQLITE db not loaded"];
    }
  }

  else
  {
    [v14[0] addObject:@"SQLITE disabled"];
  }

  if (![v14[0] count])
  {
    [v14[0] addObject:@"SQLite ready"];
  }

  _megadomeSchema = [(AMDSQLite *)selfCopy _megadomeSchema];
  MEMORY[0x277D82BD8](_megadomeSchema);
  if (!_megadomeSchema)
  {
    [v14[0] addObject:@"no Megadome schema"];
  }

  _biomeSchema = [(AMDSQLite *)selfCopy _biomeSchema];
  MEMORY[0x277D82BD8](_biomeSchema);
  if (!_biomeSchema)
  {
    [v14[0] addObject:@"no Biome schema"];
  }

  v13 = [v14[0] componentsJoinedByString:@";"];
  v3 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);

  return v3;
}

- (id)generateDBLoadError
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = [(AMDSQLite *)self connectionState];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"DB not usable: %@", v6[0]];
  v4 = [AMDMiscHelpers logAndCreateError:30 errorMessage:v5];
  v3 = MEMORY[0x277D82BE0](v4);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);

  return v3;
}

- (BOOL)isUsable
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v14 = a2;
  v13 = 0;
  v11 = 0;
  v9 = 0;
  v4 = 0;
  if ([(AMDSQLite *)self _isEnabled])
  {
    v4 = 0;
    if ([(AMDSQLite *)selfCopy _db])
    {
      _bootstrapSchema = [(AMDSQLite *)selfCopy _bootstrapSchema];
      v11 = 1;
      v4 = 0;
      if (_bootstrapSchema)
      {
        _schema = [(AMDSQLite *)selfCopy _schema];
        v9 = 1;
        v4 = _schema != 0;
      }
    }
  }

  v16 = v4;
  if (v9)
  {
    MEMORY[0x277D82BD8](_schema);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](_bootstrapSchema);
  }

  v8 = 1;
  v7 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v6 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    connectionState = [(AMDSQLite *)selfCopy connectionState];
    location = MEMORY[0x277D82BE0](connectionState);
    __os_log_helper_16_2_1_8_64(v17, location);
    _os_log_debug_impl(&dword_240CB9000, v7, v6, "%@", v17, 0xCu);
    MEMORY[0x277D82BD8](connectionState);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&v7, 0);
  if (v13)
  {
    objc_exception_rethrow();
  }

  v8 = 1;
  *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)isUsableInternal
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v12 = a2;
  v11 = 0;
  v9 = 0;
  v4 = 0;
  if ([(AMDSQLite *)self _isEnabled])
  {
    v4 = 0;
    if ([(AMDSQLite *)selfCopy _db])
    {
      _bootstrapSchema = [(AMDSQLite *)selfCopy _bootstrapSchema];
      v9 = 1;
      v4 = _bootstrapSchema != 0;
    }
  }

  v14 = v4;
  if (v9)
  {
    MEMORY[0x277D82BD8](_bootstrapSchema);
  }

  v8 = 1;
  v7 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v6 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    connectionState = [(AMDSQLite *)selfCopy connectionState];
    location = MEMORY[0x277D82BE0](connectionState);
    __os_log_helper_16_2_1_8_64(v15, location);
    _os_log_debug_impl(&dword_240CB9000, v7, v6, "%@", v15, 0xCu);
    MEMORY[0x277D82BD8](connectionState);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&v7, 0);
  if (v11)
  {
    objc_exception_rethrow();
  }

  v8 = 1;
  *MEMORY[0x277D85DE8];
  return v14;
}

- (void)setEnable:(BOOL)enable
{
  v9 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6 = a2;
  enableCopy = enable;
  [(AMDSQLite *)self set_isEnabled:enable];
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    if (enableCopy)
    {
      v3 = @"enabled";
    }

    else
    {
      v3 = @"disabled";
    }

    __os_log_helper_16_2_1_8_64(v8, v3);
    _os_log_debug_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_DEBUG, "SQLITE set to: %@", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  *MEMORY[0x277D85DE8];
}

- (id)loadDb
{
  v74 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v66 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v73, @"0");
    _os_log_impl(&dword_240CB9000, location[0], v66, "SQLITE Version: %@", v73, 0xCu);
  }

  objc_storeStrong(location, 0);
  v65 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v64 = [v65 objectAtIndexedSubscript:0];
  v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"AMDSQLite.db", @"0"];
  v62 = [v64 stringByAppendingPathComponent:v63];
  v61 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v60 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v72, v62);
    _os_log_debug_impl(&dword_240CB9000, v61, v60, "SQLITE Loading from DB file: %@", v72, 0xCu);
  }

  objc_storeStrong(&v61, 0);
  v59 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v59 setObject:@"0" forKey:@"version"];
  [(AMDSQLite *)selfCopy set_error:0];
  v58 = 0;
  ppDb = 0;
  v56 = 0;
  v55 = MEMORY[0x277D82BE0](@"loadDBSummary");
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v30 = [defaultManager fileExistsAtPath:v62];
  MEMORY[0x277D82BD8](defaultManager);
  if (v30)
  {
    v54 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v53 = 2;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      v27 = v54;
      v28 = v53;
      __os_log_helper_16_0_0(v52);
      _os_log_debug_impl(&dword_240CB9000, v27, v28, "SQLITE DB found", v52, 2u);
    }

    objc_storeStrong(&v54, 0);
    v26 = v62;
    v2 = v62;
    v56 = sqlite3_open_v2([v26 UTF8String], &ppDb, 65538, 0);
    if (v56)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE DB loading failed: %d", v56];
      v4 = v58;
      v58 = v3;
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      [(AMDSQLite *)selfCopy set_db:ppDb];
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v50 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v24 = oslog;
        v25 = v50;
        __os_log_helper_16_0_0(v49);
        _os_log_debug_impl(&dword_240CB9000, v24, v25, "SQLITE Loaded DB", v49, 2u);
      }

      objc_storeStrong(&oslog, 0);
      v56 = sqlite3_exec(ppDb, "PRAGMA journal_mode=WAL;", 0, 0, 0);
      if (v56)
      {
        v45 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v44 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_4_0(v71, v56);
          _os_log_debug_impl(&dword_240CB9000, v45, v44, "SQLITE Setting journaling to WAL failed: %d", v71, 8u);
        }

        objc_storeStrong(&v45, 0);
        [v59 setObject:@"loaded without WAL mode" forKey:v55];
      }

      else
      {
        v48 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v47 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          v22 = v48;
          v23 = v47;
          __os_log_helper_16_0_0(v46);
          _os_log_debug_impl(&dword_240CB9000, v22, v23, "SQLITE Journaling set to WAL", v46, 2u);
        }

        objc_storeStrong(&v48, 0);
        [v59 setObject:@"loaded in WAL mode" forKey:v55];
      }

      v43 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v42 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v20 = v43;
        v21 = v42;
        __os_log_helper_16_0_0(v41);
        _os_log_impl(&dword_240CB9000, v20, v21, "Running bootstrap schema refresh", v41, 2u);
      }

      objc_storeStrong(&v43, 0);
      v18 = v59;
      bootstrapDb = [(AMDSQLite *)selfCopy bootstrapDb];
      [v18 addEntriesFromDictionary:?];
      MEMORY[0x277D82BD8](bootstrapDb);
    }
  }

  else
  {
    v40 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v39 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v70, v62);
      _os_log_impl(&dword_240CB9000, v40, v39, "SQLITE Creating new DB at: %@", v70, 0xCu);
    }

    objc_storeStrong(&v40, 0);
    flags = 65542;
    v17 = v62;
    v5 = v62;
    v56 = sqlite3_open_v2([v17 UTF8String], &ppDb, 65542, 0);
    if (v56)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE DB creation failed: %d", v56];
      v7 = v58;
      v58 = v6;
      MEMORY[0x277D82BD8](v7);
    }

    else
    {
      [(AMDSQLite *)selfCopy set_db:ppDb];
      v15 = v59;
      bootstrapDb2 = [(AMDSQLite *)selfCopy bootstrapDb];
      [v15 addEntriesFromDictionary:?];
      MEMORY[0x277D82BD8](bootstrapDb2);
      v37 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v36 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v13 = v37;
        v14 = v36;
        __os_log_helper_16_0_0(v35);
        _os_log_debug_impl(&dword_240CB9000, v13, v14, "SQLITE Created new DB", v35, 2u);
      }

      objc_storeStrong(&v37, 0);
      [AMDFrameworkMetrics log:@"createdDb" withKey:@"SQLiteLoadDb" atVerbosity:2];
      v56 = sqlite3_exec(ppDb, "PRAGMA journal_mode=WAL;", 0, 0, 0);
      if (v56)
      {
        v31 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_0_1_4_0(v69, v56);
          _os_log_debug_impl(&dword_240CB9000, v31, OS_LOG_TYPE_DEBUG, "SQLITE Setting journaling to WAL failed: %d", v69, 8u);
        }

        objc_storeStrong(&v31, 0);
        [v59 setObject:@"created without WAL mode" forKey:v55];
      }

      else
      {
        v34 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v33 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v11 = v34;
          v12 = v33;
          __os_log_helper_16_0_0(v32);
          _os_log_debug_impl(&dword_240CB9000, v11, v12, "SQLITE Journaling set to WAL", v32, 2u);
        }

        objc_storeStrong(&v34, 0);
        [v59 setObject:@"created in WAL mode" forKey:v55];
      }
    }
  }

  if (v58)
  {
    v10 = [AMDMiscHelpers logAndCreateError:22 errorMessage:v58];
    [(AMDSQLite *)selfCopy set_error:?];
    MEMORY[0x277D82BD8](v10);
    [(AMDSQLite *)selfCopy set_db:0];
    sqlite3_close(ppDb);
    [v59 setObject:v58 forKey:v55];
  }

  v9 = MEMORY[0x277D82BE0](v59);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(&v65, 0);
  *MEMORY[0x277D85DE8];

  return v9;
}

- (id)applySchema:(id)schema error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, schema);
  errorCopy = error;
  oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    log = oslog;
    v21 = type;
    getName = [location[0] getName];
    v39 = MEMORY[0x277D82BE0](getName);
    __os_log_helper_16_2_1_8_64(v50, v39);
    _os_log_impl(&dword_240CB9000, log, v21, "SQLITE applying schema '%@'", v50, 0xCu);
    MEMORY[0x277D82BD8](getName);
    objc_storeStrong(&v39, 0);
  }

  objc_storeStrong(&oslog, 0);
  v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
  getTables = [location[0] getTables];
  allKeys = [getTables allKeys];
  MEMORY[0x277D82BD8](getTables);
  v36 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v35 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_8_0(v49, [allKeys count]);
    _os_log_impl(&dword_240CB9000, v36, v35, "SQLITE Creating %lu tables", v49, 0xCu);
  }

  objc_storeStrong(&v36, 0);
  v34 = 0;
  v33 = 0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](allKeys);
  v18 = [obj countByEnumeratingWithState:__b objects:v48 count:16];
  if (v18)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v18;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(__b[1] + 8 * v15);
      v30 = 0;
      v28 = 0;
      v12 = [(AMDSQLite *)selfCopy createTable:v32 usingSchema:location[0] error:&v28];
      objc_storeStrong(&v30, v28);
      v29 = v12;
      if (v30)
      {
        ++v34;
      }

      else
      {
        if (v29)
        {
          [v38 setObject:v29 forKey:v32];
        }

        ++v33;
      }

      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v30, 0);
      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [obj countByEnumeratingWithState:__b objects:v48 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v27 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v26 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_2_4_0_4_0(v47, v33, v34);
    _os_log_impl(&dword_240CB9000, v27, v26, "SQLITE table creation: succceed: %u, failed: %u", v47, 0xEu);
  }

  objc_storeStrong(&v27, 0);
  v8 = v38;
  v45[0] = @"succeeded";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v33];
  v46[0] = v11;
  v45[1] = @"failed";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v34];
  v46[1] = v10;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  [v8 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  if (v34)
  {
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u Errors while applying schema", v34];
    v7 = [AMDError allocError:22 withMessage:v25];
    v4 = v7;
    *errorCopy = v7;
    [v38 setObject:v25 forKey:@"createTableError"];
    objc_storeStrong(&v25, 0);
  }

  v24 = [(AMDSQLite *)selfCopy createIndices:location[0] error:errorCopy];
  [v38 setObject:v24 forKey:@"createIndicesSummary"];
  v6 = MEMORY[0x277D82BE0](v38);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&allKeys, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

- (id)createIndices:(id)indices error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, indices);
  v47[1] = error;
  v47[0] = [location[0] getIndices];
  v21 = objc_alloc(MEMORY[0x277CBEB18]);
  v46 = [v21 initWithCapacity:{objc_msgSend(v47[0], "count")}];
  v20 = objc_alloc(MEMORY[0x277CBEB18]);
  v45 = [v20 initWithCapacity:{objc_msgSend(v47[0], "count")}];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v47[0]);
  v19 = [obj countByEnumeratingWithState:__b objects:v54 count:16];
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

      v44 = *(__b[1] + 8 * v16);
      v42 = [v47[0] objectForKey:v44];
      v41 = [v42 objectForKey:0x2852AF668];
      v40 = [v42 objectForKey:AMD_SQLITE_COLUMNS];
      v11 = MEMORY[0x277CCACA8];
      v12 = v44;
      v13 = v41;
      v10 = [v40 componentsJoinedByString:{@", "}];
      v39 = [v11 stringWithFormat:@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@)", v12, v13, v10];
      MEMORY[0x277D82BD8](v10);
      v38 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        log = v38;
        v9 = type;
        __os_log_helper_16_2_1_8_64(v53, v39);
        _os_log_debug_impl(&dword_240CB9000, log, v9, "SQLITE Creating index:: '%@'", v53, 0xCu);
      }

      objc_storeStrong(&v38, 0);
      v32 = 0;
      v33 = &v32;
      v34 = 0x20000000;
      v35 = 32;
      v36 = 1;
      queue = [(AMDSQLite *)selfCopy _executorQueue];
      v24 = MEMORY[0x277D85DD0];
      v25 = -1073741824;
      v26 = 0;
      v27 = __33__AMDSQLite_createIndices_error___block_invoke;
      v28 = &unk_278CB5B98;
      v31[1] = &v32;
      v29 = MEMORY[0x277D82BE0](selfCopy);
      v30 = MEMORY[0x277D82BE0](v39);
      v31[0] = MEMORY[0x277D82BE0](v44);
      dispatch_sync(queue, &v24);
      MEMORY[0x277D82BD8](queue);
      if (*(v33 + 6))
      {
        [v45 addObject:v44];
      }

      else
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
        {
          v6 = oslog;
          __os_log_helper_16_2_1_8_64(v52, v44);
          _os_log_impl(&dword_240CB9000, v6, OS_LOG_TYPE_INFO, "SQLITE Created index: '%@'", v52, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        [v46 addObject:v44];
      }

      objc_storeStrong(v31, 0);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v29, 0);
      _Block_object_dispose(&v32, 8);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v42, 0);
      ++v16;
      if (v14 + 1 >= v17)
      {
        v16 = 0;
        v17 = [obj countByEnumeratingWithState:__b objects:v54 count:16];
        if (!v17)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v50[0] = @"succeeded";
  v51[0] = v46;
  v50[1] = @"failed";
  v51[1] = v45;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(v47, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

void __33__AMDSQLite_createIndices_error___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[2] = a1;
  v7[1] = a1;
  v7[0] = 0;
  v3 = [*(a1 + 32) _db];
  v2 = *(a1 + 40);
  v1 = v2;
  *(*(*(a1 + 56) + 8) + 24) = sqlite3_exec(v3, [v2 UTF8String], 0, 0, v7);
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE CREATE INDEX failure for index '%@': %s", *(a1 + 48), v7[0]];
    [AMDFrameworkMetrics log:v6 withKey:@"createIndexError" atVerbosity:0];
    location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_32(v8, *(a1 + 48), v7[0]);
      _os_log_error_impl(&dword_240CB9000, location, OS_LOG_TYPE_ERROR, "SQLITE CREATE INDEX failure for index '%@': %s", v8, 0x16u);
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v6, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (id)updateSchema:(id)schema error:(id *)error
{
  v67 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, schema);
  errorCopy = error;
  v52 = MEMORY[0x277D82BE0](@"UpdateSchema");
  v51 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  if ([(AMDSQLite *)selfCopy _isEnabled])
  {
    v46 = [[AMDSQLiteSchema alloc] initWithDict:location[0] error:errorCopy];
    if (v46)
    {
      getVersionNumber = [v46 getVersionNumber];
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v40 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v61, getVersionNumber);
        _os_log_impl(&dword_240CB9000, oslog, v40, "SQLITE Attempting schema update to version %@", v61, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v39 = 1;
      v38 = 0;
      _schema = [(AMDSQLite *)selfCopy _schema];
      MEMORY[0x277D82BD8](_schema);
      if (_schema)
      {
        _schema2 = [(AMDSQLite *)selfCopy _schema];
        getVersionNumber2 = [(AMDSQLiteSchema *)_schema2 getVersionNumber];
        v6 = v38;
        v38 = getVersionNumber2;
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](_schema2);
        integerValue = [v38 integerValue];
        v39 = integerValue < [getVersionNumber integerValue];
      }

      if (v39)
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE Update schema from version %@ to %@", v38, getVersionNumber];
        v33 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v32 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_64(v57, v34);
          _os_log_impl(&dword_240CB9000, v33, v32, "%@", v57, 0xCu);
        }

        objc_storeStrong(&v33, 0);
        v31 = 0;
        v15 = v51;
        v30 = 0;
        v16 = [(AMDSQLite *)selfCopy applySchema:v46 error:&v30];
        objc_storeStrong(&v31, v30);
        [v15 setObject:v16 forKey:@"applySchema"];
        MEMORY[0x277D82BD8](v16);
        if (v31)
        {
          v29 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v28 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v13 = v29;
            v14 = v28;
            __os_log_helper_16_0_0(v27);
            _os_log_error_impl(&dword_240CB9000, v13, v14, "SQLITE Could not apply schema, not saving it in DB", v27, 2u);
          }

          objc_storeStrong(&v29, 0);
          v56 = MEMORY[0x277D82BE0](v51);
          v47 = 1;
        }

        else
        {
          v11 = v51;
          v12 = [(AMDSQLite *)selfCopy saveSchema:location[0] error:errorCopy];
          [v11 setObject:? forKey:?];
          MEMORY[0x277D82BD8](v12);
          if (!*errorCopy)
          {
            [(AMDSQLite *)selfCopy set_schema:v46];
          }

          [AMDFrameworkMetrics log:v34 withKey:@"SQLiteSchemaUpdate" atVerbosity:2];
          [v51 setObject:getVersionNumber forKey:@"newVersion"];
          _error = [(AMDSQLite *)selfCopy _error];
          v25 = 0;
          v23 = 0;
          v10 = 0;
          if (_error)
          {
            _error2 = [(AMDSQLite *)selfCopy _error];
            v25 = 1;
            localizedDescription = [(NSError *)_error2 localizedDescription];
            v23 = 1;
            v10 = [(NSString *)localizedDescription isEqualToString:@"No Schema Data"];
          }

          if (v23)
          {
            MEMORY[0x277D82BD8](localizedDescription);
          }

          if (v25)
          {
            MEMORY[0x277D82BD8](_error2);
          }

          MEMORY[0x277D82BD8](_error);
          if (v10)
          {
            [(AMDSQLite *)selfCopy set_error:0];
          }

          v56 = MEMORY[0x277D82BE0](v51);
          v47 = 1;
        }

        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v34, 0);
      }

      else
      {
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE Skipping schema update: current version %@", v38];
        v36 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v35 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_64(v60, v37);
          _os_log_impl(&dword_240CB9000, v36, v35, "%@", v60, 0xCu);
        }

        objc_storeStrong(&v36, 0);
        v58 = v52;
        v59 = v37;
        v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v47 = 1;
        objc_storeStrong(&v37, 0);
      }

      objc_storeStrong(&v38, 0);
      objc_storeStrong(&getVersionNumber, 0);
    }

    else
    {
      v21 = MEMORY[0x277CCACA8];
      v4 = *errorCopy;
      v43 = 0;
      if (v4)
      {
        localizedDescription2 = [*errorCopy localizedDescription];
        v43 = 1;
        v20 = localizedDescription2;
      }

      else
      {
        v20 = @"unknown reason";
      }

      v45 = [v21 stringWithFormat:@"SQLITE new schema parse failure: %@", v20];
      if (v43)
      {
        MEMORY[0x277D82BD8](localizedDescription2);
      }

      v62 = v52;
      v63 = v45;
      v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v47 = 1;
      objc_storeStrong(&v45, 0);
    }

    objc_storeStrong(&v46, 0);
  }

  else
  {
    v50 = MEMORY[0x277D82BE0](@"SQLITE Cannot update schema: SQLite disabled");
    v49 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v48 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_64(v66, v50);
      _os_log_impl(&dword_240CB9000, v49, v48, "%@", v66, 0xCu);
    }

    objc_storeStrong(&v49, 0);
    v64 = v52;
    v65 = v50;
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v47 = 1;
    objc_storeStrong(&v50, 0);
  }

  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v56;

  return v7;
}

- (id)saveSchema:(id)schema error:(id *)error
{
  v40[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, schema);
  errorCopy = error;
  v27 = MEMORY[0x277D82BE0](@"SaveSchema");
  v26 = [MEMORY[0x277CCAAA0] dataWithJSONObject:location[0] options:6 error:error];
  if (*error)
  {
    v16 = MEMORY[0x277CCACA8];
    v4 = *errorCopy;
    v23 = 0;
    if (v4)
    {
      localizedDescription = [*errorCopy localizedDescription];
      v23 = 1;
      v15 = localizedDescription;
    }

    else
    {
      v15 = @"unknown reason";
    }

    v25 = [v16 stringWithFormat:@"SQLITE new schema serialization failure: %@", v15];
    if (v23)
    {
      MEMORY[0x277D82BD8](localizedDescription);
    }

    v39 = v27;
    v40[0] = v25;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v22 = 1;
    objc_storeStrong(&v25, 0);
  }

  else
  {
    v36[0] = @"schema";
    v37[0] = v26;
    v36[1] = @"creationTime";
    v13 = +[AMDMiscHelpers getCurrentEpochSeconds];
    v37[1] = v13;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:?];
    v38 = v12;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    v34[0] = 0x2852AF668;
    v35[0] = @"__AMDSchema";
    v34[1] = @"rowsData";
    v35[1] = v21;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    v14 = [(AMDSQLite *)selfCopy deleteRowsInternal:v20 error:errorCopy];
    [v19 addEntriesFromDictionary:?];
    MEMORY[0x277D82BD8](v14);
    if (*errorCopy)
    {
      v10 = MEMORY[0x277CCACA8];
      localizedDescription2 = [*errorCopy localizedDescription];
      v18 = [v10 stringWithFormat:@"SQLITE could not truncate schema table: %@", localizedDescription2];
      MEMORY[0x277D82BD8](localizedDescription2);
      v32 = v27;
      v33 = v18;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v22 = 1;
      objc_storeStrong(&v18, 0);
    }

    else
    {
      v7 = selfCopy;
      _bootstrapSchema = [(AMDSQLite *)selfCopy _bootstrapSchema];
      v8 = [AMDSQLite insertRows:v7 usingSchema:"insertRows:usingSchema:error:" error:v20];
      [v19 addEntriesFromDictionary:?];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](_bootstrapSchema);
      v31 = MEMORY[0x277D82BE0](v19);
      v22 = 1;
    }

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v5 = v31;

  return v5;
}

- (id)loadDataSchema
{
  v118[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    log = location[0];
    v40 = type;
    __os_log_helper_16_0_0(v83);
    _os_log_impl(&dword_240CB9000, log, v40, "SQLITE Loading run-time schema from DB", v83, 2u);
  }

  objc_storeStrong(location, 0);
  v82 = MEMORY[0x277D82BE0](@"loadSchemaSummary");
  [(AMDSQLite *)selfCopy set_schema:0];
  if ([(AMDSQLite *)selfCopy _db])
  {
    _bootstrapSchema = [(AMDSQLite *)selfCopy _bootstrapSchema];
    MEMORY[0x277D82BD8](_bootstrapSchema);
    if (_bootstrapSchema)
    {
      v112 = @"schema";
      v110[0] = AMD_SQLITE_TYPE;
      v111[0] = AMD_SQLITE_DATA_TYPE_BLOB;
      v110[1] = AMD_SQLITE_NOT_NULL;
      v111[1] = MEMORY[0x277CBEC38];
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];
      v113 = v26;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:?];
      v114 = v25;
      v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v114 count:1];
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      v108[0] = 0x2852AF4C8;
      v109[0] = @"__AMDSchema";
      v108[1] = 0x2852AF668;
      v109[1] = @"__AMDSchema";
      v108[2] = 0x2852AF568;
      v109[2] = @"1";
      v108[3] = 0x2852AF4A8;
      v109[3] = v74;
      v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:4];
      v72 = 0;
      v28 = [AMDFetchDescriptor alloc];
      v27 = v73;
      _bootstrapSchema2 = [(AMDSQLite *)selfCopy _bootstrapSchema];
      v70 = v72;
      v29 = [AMDFetchDescriptor initWithDict:v28 usingSchema:"initWithDict:usingSchema:error:" error:v27];
      objc_storeStrong(&v72, v70);
      v71 = v29;
      MEMORY[0x277D82BD8](_bootstrapSchema2);
      v31 = selfCopy;
      _bootstrapSchema3 = [(AMDSQLite *)selfCopy _bootstrapSchema];
      v68 = v72;
      v32 = [AMDSQLite fetchRowsUsingSchema:v31 andDescriptor:"fetchRowsUsingSchema:andDescriptor:andPersist:error:" andPersist:? error:?];
      objc_storeStrong(&v72, v68);
      v69 = v32;
      MEMORY[0x277D82BD8](_bootstrapSchema3);
      if (v72)
      {
        [(AMDSQLite *)selfCopy set_error:v72];
        v23 = MEMORY[0x277CCACA8];
        localizedDescription = [v72 localizedDescription];
        v67 = [v23 stringWithFormat:@"SQLITE schema fetch failure: '%@'", localizedDescription];
        MEMORY[0x277D82BD8](localizedDescription);
        v66 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v65 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v107, v67);
          _os_log_error_impl(&dword_240CB9000, v66, v65, "%@", v107, 0xCu);
        }

        objc_storeStrong(&v66, 0);
        v105 = v82;
        v106 = v67;
        v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
        v78 = 1;
        objc_storeStrong(&v67, 0);
      }

      else
      {
        v64 = [v69 objectForKey:@"resultSet"];
        v63 = [v64 objectForKey:@"fetchResultColumnsData"];
        v61 = 0;
        v22 = 1;
        if (v63)
        {
          v22 = 1;
          if ([v63 count])
          {
            v62 = [v63 objectAtIndexedSubscript:0];
            v61 = 1;
            v22 = [v62 count] == 0;
          }
        }

        if (v61)
        {
          MEMORY[0x277D82BD8](v62);
        }

        if (v22)
        {
          v60 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v59 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v104, @"No Schema Data");
            _os_log_error_impl(&dword_240CB9000, v60, v59, "%@", v104, 0xCu);
          }

          objc_storeStrong(&v60, 0);
          v21 = [AMDError allocError:22 withMessage:?];
          [(AMDSQLite *)selfCopy set_error:?];
          MEMORY[0x277D82BD8](v21);
          v102 = v82;
          v103 = @"No Schema Data";
          v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v78 = 1;
        }

        else
        {
          v20 = [v63 objectAtIndexedSubscript:?];
          v58 = [v20 objectAtIndexedSubscript:0];
          MEMORY[0x277D82BD8](v20);
          if (v58 && [v58 length])
          {
            v53 = v72;
            v16 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v58 options:4 error:&v53];
            objc_storeStrong(&v72, v53);
            v54 = v16;
            if (v16 && !v72)
            {
              v2 = [AMDSQLiteSchema alloc];
              v49 = v72;
              v11 = [(AMDSQLiteSchema *)v2 initWithDict:v54 error:&v49];
              objc_storeStrong(&v72, v49);
              [(AMDSQLite *)selfCopy set_schema:v11];
              MEMORY[0x277D82BD8](v11);
              _schema = [(AMDSQLite *)selfCopy _schema];
              MEMORY[0x277D82BD8](_schema);
              if (_schema)
              {
                _schema2 = [(AMDSQLite *)selfCopy _schema];
                getVersion = [(AMDSQLiteSchema *)_schema2 getVersion];
                MEMORY[0x277D82BD8](_schema2);
                _schema3 = [(AMDSQLite *)selfCopy _schema];
                getTables = [(AMDSQLiteSchema *)_schema3 getTables];
                MEMORY[0x277D82BD8](_schema3);
                v41 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                {
                  __os_log_helper_16_2_1_8_64(v92, getVersion);
                  _os_log_impl(&dword_240CB9000, v41, OS_LOG_TYPE_INFO, "SQLITE Loaded schema version %@", v92, 0xCu);
                }

                objc_storeStrong(&v41, 0);
                v90 = v82;
                v88[0] = @"version";
                v89[0] = getVersion;
                v88[1] = @"tableCount";
                v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(getTables, "count")}];
                v89[1] = v6;
                v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
                v91 = v5;
                v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
                MEMORY[0x277D82BD8](v5);
                MEMORY[0x277D82BD8](v6);
                v78 = 1;
                objc_storeStrong(&getTables, 0);
                objc_storeStrong(&getVersion, 0);
              }

              else
              {
                [(AMDSQLite *)selfCopy set_error:v72];
                v10 = MEMORY[0x277CCACA8];
                v46 = 0;
                if (v72)
                {
                  localizedDescription2 = [v72 localizedDescription];
                  v46 = 1;
                  v9 = localizedDescription2;
                }

                else
                {
                  v9 = @"unknown";
                }

                v48 = [v10 stringWithFormat:@"Fail: '%@'", v9];
                if (v46)
                {
                  MEMORY[0x277D82BD8](localizedDescription2);
                }

                v45 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v44 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  __os_log_helper_16_2_1_8_64(v95, v48);
                  _os_log_error_impl(&dword_240CB9000, v45, v44, "%@", v95, 0xCu);
                }

                objc_storeStrong(&v45, 0);
                v93 = v82;
                v94 = v48;
                v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
                v78 = 1;
                objc_storeStrong(&v48, 0);
              }
            }

            else
            {
              objc_storeStrong(&v72, 0);
              v14 = MEMORY[0x277CCACA8];
              localizedDescription3 = [v72 localizedDescription];
              v52 = [v14 stringWithFormat:@"Error deserializing schema: %@", localizedDescription3];
              MEMORY[0x277D82BD8](localizedDescription3);
              v51 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v50 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                __os_log_helper_16_2_1_8_64(v98, v52);
                _os_log_error_impl(&dword_240CB9000, v51, v50, "%@", v98, 0xCu);
              }

              objc_storeStrong(&v51, 0);
              v13 = [AMDError allocError:22 withMessage:v52];
              [(AMDSQLite *)selfCopy set_error:?];
              MEMORY[0x277D82BD8](v13);
              v96 = v82;
              v97 = v52;
              v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
              v78 = 1;
              objc_storeStrong(&v52, 0);
            }

            objc_storeStrong(&v54, 0);
          }

          else
          {
            v19 = MEMORY[0x277CCACA8];
            if (v58)
            {
              v18 = [v58 length];
            }

            else
            {
              v18 = -1;
            }

            v57 = [v19 stringWithFormat:@"No schema data, size: %d", v18];
            oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v55 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_1_8_64(v101, v57);
              _os_log_error_impl(&dword_240CB9000, oslog, v55, "%@", v101, 0xCu);
            }

            objc_storeStrong(&oslog, 0);
            v17 = [AMDError allocError:22 withMessage:v57];
            [(AMDSQLite *)selfCopy set_error:?];
            MEMORY[0x277D82BD8](v17);
            v99 = v82;
            v100 = v57;
            v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
            v78 = 1;
            objc_storeStrong(&v57, 0);
          }

          objc_storeStrong(&v58, 0);
        }

        objc_storeStrong(&v63, 0);
        objc_storeStrong(&v64, 0);
      }

      objc_storeStrong(&v69, 0);
      objc_storeStrong(&v71, 0);
      objc_storeStrong(&v72, 0);
      objc_storeStrong(&v73, 0);
      objc_storeStrong(&v74, 0);
    }

    else
    {
      v77 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v76 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        v34 = v77;
        v35 = v76;
        __os_log_helper_16_0_0(v75);
        _os_log_error_impl(&dword_240CB9000, v34, v35, "Not bootstrapped", v75, 2u);
      }

      objc_storeStrong(&v77, 0);
      v115 = v82;
      v116 = @"Not bootstrapped";
      v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
      v78 = 1;
    }
  }

  else
  {
    v81 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v80 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      v37 = v81;
      v38 = v80;
      __os_log_helper_16_0_0(v79);
      _os_log_error_impl(&dword_240CB9000, v37, v38, "No DB", v79, 2u);
    }

    objc_storeStrong(&v81, 0);
    v117 = v82;
    v118[0] = @"No DB";
    v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:&v117 count:1];
    v78 = 1;
  }

  objc_storeStrong(&v82, 0);
  *MEMORY[0x277D85DE8];
  v3 = v87;

  return v3;
}

- (id)loadBiomeSchema
{
  _schema = [(AMDSQLite *)self _schema];
  [(AMDSQLite *)self set_biomeSchema:?];
  MEMORY[0x277D82BD8](_schema);
  v2 = MEMORY[0x277CBEC10];

  return v2;
}

- (id)loadMegadomeSchema
{
  _schema = [(AMDSQLite *)self _schema];
  [(AMDSQLite *)self set_megadomeSchema:?];
  MEMORY[0x277D82BD8](_schema);
  v2 = MEMORY[0x277CBEC10];

  return v2;
}

- (id)createTable:(id)table usingSchema:(id)schema error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, table);
  v39 = 0;
  objc_storeStrong(&v39, schema);
  errorCopy = error;
  v37 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  v36 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v50, location[0]);
    _os_log_impl(&dword_240CB9000, v37, v36, "SQLITE Creating table '%@'", v50, 0xCu);
  }

  objc_storeStrong(&v37, 0);
  v35 = MEMORY[0x277D82BE0](@"createTableStatus");
  if ([(AMDSQLite *)selfCopy _db])
  {
    v32 = [v39 getCreateTableStatementFor:location[0]];
    if (v32)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x20000000;
      v29 = 32;
      v30 = 1;
      queue = [(AMDSQLite *)selfCopy _executorQueue];
      v18 = MEMORY[0x277D85DD0];
      v19 = -1073741824;
      v20 = 0;
      v21 = __43__AMDSQLite_createTable_usingSchema_error___block_invoke;
      v22 = &unk_278CB5B98;
      v25[1] = &v26;
      v23 = MEMORY[0x277D82BE0](selfCopy);
      v24 = MEMORY[0x277D82BE0](v32);
      v25[0] = MEMORY[0x277D82BE0](location[0]);
      dispatch_sync(queue, &v18);
      MEMORY[0x277D82BD8](queue);
      if (*(v27 + 6))
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to create %@", location[0]];
        v10 = [AMDError allocError:22 withMessage:v17];
        v7 = v10;
        *errorCopy = v10;
        v42 = 0;
        v33 = 1;
        objc_storeStrong(&v17, 0);
      }

      else
      {
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_1_8_64(v45, location[0]);
          _os_log_debug_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_DEBUG, "SQLITE Created table '%@'", v45, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v43 = v35;
        v44 = @"created";
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v33 = 1;
      }

      objc_storeStrong(v25, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v23, 0);
      _Block_object_dispose(&v26, 8);
    }

    else
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE CREATE: No table '%@' in schema", location[0]];
      v12 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v31];
      v6 = v12;
      *errorCopy = v12;
      v46 = v35;
      v47 = v31;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v33 = 1;
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v32, 0);
  }

  else
  {
    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE CREATE: No db!!"];
    v13 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v34];
    v5 = v13;
    *errorCopy = v13;
    v48 = v35;
    v49 = v34;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v33 = 1;
    objc_storeStrong(&v34, 0);
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v8 = v42;

  return v8;
}

void __43__AMDSQLite_createTable_usingSchema_error___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7[2] = a1;
  v7[1] = a1;
  v7[0] = 0;
  v3 = [*(a1 + 32) _db];
  v2 = *(a1 + 40);
  v1 = v2;
  *(*(*(a1 + 56) + 8) + 24) = sqlite3_exec(v3, [v2 UTF8String], 0, 0, v7);
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE CREATE TABLE failure for table '%@': %s", *(a1 + 48), v7[0]];
    [AMDFrameworkMetrics log:v6 withKey:@"createTableError" atVerbosity:0];
    location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_32(v8, *(a1 + 48), v7[0]);
      _os_log_debug_impl(&dword_240CB9000, location, OS_LOG_TYPE_DEBUG, "SQLITE CREATE TABLE failure for table '%@': %s", v8, 0x16u);
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v6, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (id)validateRowsData:(id)data tableSchema:(id)schema error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v43 = 0;
  objc_storeStrong(&v43, schema);
  errorCopy = error;
  getColumns = [v43 getColumns];
  getRequiredColumns = [v43 getRequiredColumns];
  v22 = objc_alloc(MEMORY[0x277CBEB18]);
  v39 = [v22 initWithCapacity:{objc_msgSend(location[0], "count")}];
  for (i = 0; ; ++i)
  {
    v19 = i;
    if (v19 >= [location[0] count])
    {
      break;
    }

    v37 = [location[0] objectAtIndexedSubscript:i];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = MEMORY[0x277D82BE0](v37);
      v33 = 1;
      v32 = [getRequiredColumns mutableCopy];
      memset(__b, 0, sizeof(__b));
      v16 = MEMORY[0x277D82BE0](v34);
      v17 = [v16 countByEnumeratingWithState:__b objects:v48 count:16];
      if (v17)
      {
        v13 = *__b[2];
        v14 = 0;
        v15 = v17;
        while (1)
        {
          v12 = v14;
          if (*__b[2] != v13)
          {
            objc_enumerationMutation(v16);
          }

          v31 = *(__b[1] + 8 * v14);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          v28 = MEMORY[0x277D82BE0](v31);
          v27 = [getColumns objectForKey:v28];
          if (v27)
          {
            [v32 removeObject:v28];
            v26 = [v34 objectForKey:v31];
            getType = [v27 getType];
            if (getType && (getType == 1 || (getType - 2) <= 2 || getType == 5))
            {
              objc_opt_class();
              v33 = objc_opt_isKindOfClass() & 1;
            }

            else
            {
              v33 = 0;
            }

            if (v33)
            {
              v35 = 0;
            }

            else
            {
              v35 = 5;
            }

            objc_storeStrong(&v26, 0);
          }

          else
          {
            v35 = 6;
          }

          objc_storeStrong(&v27, 0);
          objc_storeStrong(&v28, 0);
          if (v35 && v35 != 6)
          {
            goto LABEL_28;
          }

          ++v14;
          if (v12 + 1 >= v15)
          {
            v14 = 0;
            v15 = [v16 countByEnumeratingWithState:__b objects:v48 count:16];
            if (!v15)
            {
              goto LABEL_27;
            }
          }
        }

        v29 = MEMORY[0x277D82BE0](@"SQLITE INSERT: invalid row data: bad column name");
        v11 = [AMDMiscHelpers logAndCreateError:15 errorMessage:v29];
        v6 = v11;
        *errorCopy = v11;
        v45 = 0;
        v35 = 1;
        objc_storeStrong(&v29, 0);
      }

      else
      {
LABEL_27:
        v35 = 0;
      }

LABEL_28:
      MEMORY[0x277D82BD8](v16);
      if (!v35 || v35 == 5)
      {
        if ((v33 & 1) == 0 || [v32 count])
        {
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          type = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            log = oslog;
            __os_log_helper_16_2_2_4_0_8_64(v47, i, v32);
            _os_log_debug_impl(&dword_240CB9000, log, type, "SQLITE Row %u not valid, missing required columns: %@", v47, 0x12u);
          }

          objc_storeStrong(&oslog, 0);
        }

        else
        {
          [v39 addObject:v34];
        }

        v35 = 0;
      }

      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v34, 0);
    }

    else
    {
      v36 = MEMORY[0x277D82BE0](@"SQLITE INSERT: invalid row data");
      v18 = [AMDMiscHelpers logAndCreateError:15 errorMessage:v36];
      v5 = v18;
      *errorCopy = v18;
      v45 = 0;
      v35 = 1;
      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&v37, 0);
    if (v35)
    {
      goto LABEL_43;
    }
  }

  v23 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_2_8_0_8_0(v46, [location[0] count], objc_msgSend(v39, "count"));
    _os_log_debug_impl(&dword_240CB9000, v23, OS_LOG_TYPE_DEBUG, "SQLITE Total rows: %lu, valid: %lu", v46, 0x16u);
  }

  objc_storeStrong(&v23, 0);
  v45 = MEMORY[0x277D82BE0](v39);
  v35 = 1;
LABEL_43:
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&getRequiredColumns, 0);
  objc_storeStrong(&getColumns, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v7 = v45;

  return v7;
}

- (id)insertRows:(id)rows usingSchema:(id)schema error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rows);
  v9 = 0;
  objc_storeStrong(&v9, schema);
  v8 = [(AMDSQLite *)selfCopy insertRows:location[0] usingSchema:v9 skipValidation:0 error:error];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)insertRows:(id)rows usingSchema:(id)schema skipValidation:(BOOL)validation error:(id *)error
{
  v75[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rows);
  v64 = 0;
  objc_storeStrong(&v64, schema);
  validationCopy = validation;
  errorCopy = error;
  v61 = MEMORY[0x277D82BE0](@"insertedRowsCount");
  v60 = MEMORY[0x277D82BE0](@"totalRowsCount");
  v59 = [location[0] objectForKey:0x2852AF668];
  v58 = [location[0] objectForKey:@"rowsData"];
  if (v58)
  {
    v53 = [v64 getSchemaForTable:v59];
    if (v53)
    {
      v51 = MEMORY[0x277D82BE0](v58);
      if (validationCopy)
      {
        v50 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v49 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_64(v73, v59);
          _os_log_impl(&dword_240CB9000, v50, v49, "SQLITE INSERT: Skipping validation for table '%@'", v73, 0xCu);
        }

        objc_storeStrong(&v50, 0);
      }

      else
      {
        v7 = [(AMDSQLite *)selfCopy validateRowsData:v58 tableSchema:v53 error:errorCopy];
        v8 = v51;
        v51 = v7;
        MEMORY[0x277D82BD8](v8);
      }

      if (v51)
      {
        v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v47 = 0;
        v45 = 0;
        v15 = [v64 getInsertStatementFor:v53 hasColumns:v48 requiresColumns:&v45];
        objc_storeStrong(&v47, v45);
        v46 = v15;
        v44 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v43 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_64(v72, v46);
          _os_log_impl(&dword_240CB9000, v44, v43, "Prepared INSERT statement: %@", v72, 0xCu);
        }

        objc_storeStrong(&v44, 0);
        v42 = [(AMDSQLite *)selfCopy prepare:v46 error:errorCopy];
        if (v42)
        {
          v37 = 0;
          v38 = &v37;
          v39 = 0x20000000;
          v40 = 32;
          v41 = [v51 count];
          v33 = 0;
          v34 = &v33;
          v35 = 0x20000000;
          v36 = 32;
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          v31 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_2_2_4_0_8_64(v71, *(v38 + 6), v59);
            _os_log_debug_impl(&dword_240CB9000, oslog, v31, "SQLITE Inserting %u rows into table '%@'", v71, 0x12u);
          }

          objc_storeStrong(&oslog, 0);
          queue = [(AMDSQLite *)selfCopy _executorQueue];
          v23 = MEMORY[0x277D85DD0];
          v24 = -1073741824;
          v25 = 0;
          v26 = __57__AMDSQLite_insertRows_usingSchema_skipValidation_error___block_invoke;
          v27 = &unk_278CB5BC0;
          v30[1] = &v37;
          v30[3] = v42;
          v28 = MEMORY[0x277D82BE0](v51);
          v29 = MEMORY[0x277D82BE0](v48);
          v30[0] = MEMORY[0x277D82BE0](v47);
          v30[2] = &v33;
          dispatch_sync(queue, &v23);
          MEMORY[0x277D82BD8](queue);
          sqlite3_finalize(v42);
          v22 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_2_3_4_0_4_0_8_64(v70, *(v34 + 6), *(v38 + 6), v59);
            _os_log_debug_impl(&dword_240CB9000, v22, OS_LOG_TYPE_DEBUG, "SQLITE Inserted %u of %u rows in table '%@'", v70, 0x18u);
          }

          objc_storeStrong(&v22, 0);
          v68[0] = v61;
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v34 + 6)];
          v69[0] = v12;
          v68[1] = v60;
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v38 + 6)];
          v69[1] = v11;
          v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
          MEMORY[0x277D82BD8](v11);
          MEMORY[0x277D82BD8](v12);
          v54 = 1;
          objc_storeStrong(v30, 0);
          objc_storeStrong(&v29, 0);
          objc_storeStrong(&v28, 0);
          _Block_object_dispose(&v33, 8);
          _Block_object_dispose(&v37, 8);
        }

        else
        {
          localizedDescription = [*errorCopy localizedDescription];
          [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
          MEMORY[0x277D82BD8](localizedDescription);
          v67 = 0;
          v54 = 1;
        }

        objc_storeStrong(&v46, 0);
        objc_storeStrong(&v47, 0);
        objc_storeStrong(&v48, 0);
      }

      else
      {
        v67 = 0;
        v54 = 1;
      }

      objc_storeStrong(&v51, 0);
    }

    else
    {
      v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE INSERT: table '%@' does not exist'", v59];
      v16 = [AMDMiscHelpers logAndCreateError:15 errorMessage:v52];
      v6 = v16;
      *errorCopy = v16;
      v67 = 0;
      v54 = 1;
      objc_storeStrong(&v52, 0);
    }

    objc_storeStrong(&v53, 0);
  }

  else
  {
    v57 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      log = v57;
      v18 = type;
      __os_log_helper_16_0_0(v55);
      _os_log_debug_impl(&dword_240CB9000, log, v18, "SQLITE Nothing to insert", v55, 2u);
    }

    objc_storeStrong(&v57, 0);
    v74[0] = v61;
    v75[0] = &unk_2852BA608;
    v74[1] = v60;
    v75[1] = &unk_2852BA608;
    v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
    v54 = 1;
  }

  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v64, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v67;

  return v9;
}

void __57__AMDSQLite_insertRows_usingSchema_skipValidation_error___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v40 = a1;
  v39 = a1;
  for (i = 0; i < *(*(*(a1 + 56) + 8) + 24); ++i)
  {
    v37 = sqlite3_clear_bindings(*(a1 + 72));
    if (v37)
    {
      location = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      v35 = 16;
      if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
      {
        log = location;
        type = v35;
        __os_log_helper_16_0_2_4_0_4_0(v44, i, v37);
        _os_log_error_impl(&dword_240CB9000, log, type, "SQLITE could not clear bindings for row %u: %d", v44, 0xEu);
      }

      objc_storeStrong(&location, 0);
    }

    else
    {
      v34 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v33 = 0;
      for (j = 0; ; ++j)
      {
        v18 = j;
        if (v18 >= [*(a1 + 40) count])
        {
          break;
        }

        v31 = [*(a1 + 40) objectAtIndexedSubscript:j];
        v30 = [v31 getName];
        v29 = [v34 objectForKey:v30];
        if (v29)
        {
          v27 = 0;
          v27 = [v31 getType];
          if (v27)
          {
            switch(v27)
            {
              case 1:
                v15 = *(a1 + 72);
                v16 = j + 1;
                v17 = v29;
                v1 = v29;
                v14 = [v17 bytes];
                v37 = sqlite3_bind_blob(v15, v16, v14, [v29 length], 0xFFFFFFFFFFFFFFFFLL);
                break;
              case 2:
                v12 = *(a1 + 72);
                v13 = j + 1;
                [v29 doubleValue];
                v37 = sqlite3_bind_double(v12, v13, v2);
                break;
              case 3:
                v37 = sqlite3_bind_int(*(a1 + 72), j + 1, [v29 intValue]);
                break;
              case 4:
                v37 = sqlite3_bind_int64(*(a1 + 72), j + 1, [v29 longLongValue]);
                break;
              case 5:
                v9 = *(a1 + 72);
                v10 = j + 1;
                v11 = v29;
                v3 = v29;
                v37 = sqlite3_bind_text(v9, v10, [v11 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
                break;
            }
          }

          if (v37)
          {
            oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v25 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              v7 = oslog;
              v8 = v25;
              __os_log_helper_16_2_4_8_64_4_0_4_0_4_0(v43, v30, v27, i, v37);
              _os_log_debug_impl(&dword_240CB9000, v7, v8, "SQLITE Bind failed for column '%@', type: %u, row %u: %d", v43, 0x1Eu);
            }

            objc_storeStrong(&oslog, 0);
            v28 = 5;
          }

          else
          {
            v28 = 0;
          }
        }

        else if ([*(a1 + 48) containsObject:v30])
        {
          v33 = 1;
          v28 = 5;
        }

        else
        {
          v28 = 7;
        }

        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
        if (v28 == 5)
        {
          break;
        }
      }

      if ((v33 & 1) != 0 || v37)
      {
        v24 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        v23 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v5 = v24;
          v6 = v23;
          __os_log_helper_16_0_3_4_0_4_0_4_0(v42, i, v33 & 1, v37);
          _os_log_impl(&dword_240CB9000, v5, v6, "SQLITE Skipping row %u, rowBad: %u, sqlResponse: %d", v42, 0x14u);
        }

        objc_storeStrong(&v24, 0);
        v28 = 4;
      }

      else
      {
        v37 = sqlite3_step(*(a1 + 72));
        if (v37 == 101)
        {
          ++*(*(*(a1 + 64) + 8) + 24);
        }

        else
        {
          v22 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v4 = v22;
            __os_log_helper_16_0_2_4_0_4_0(v41, i, v37);
            _os_log_error_impl(&dword_240CB9000, v4, OS_LOG_TYPE_ERROR, "SQLITE INSERT failure (row %u): %d", v41, 0xEu);
          }

          objc_storeStrong(&v22, 0);
        }

        sqlite3_reset(*(a1 + 72));
        v28 = 0;
      }

      objc_storeStrong(&v34, 0);
    }
  }

  *MEMORY[0x277D85DE8];
}

- (id)fetchRows:(id)rows andPersist:(BOOL)persist error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rows);
  if ([(AMDSQLite *)selfCopy isUsable])
  {
    v8 = selfCopy;
    _schema = [(AMDSQLite *)selfCopy _schema];
    v14 = [AMDSQLite fetchRowsUsingSchema:v8 andDescriptor:"fetchRowsUsingSchema:andDescriptor:andPersist:error:" andPersist:? error:?];
    MEMORY[0x277D82BD8](_schema);
  }

  else
  {
    generateDBLoadError = [(AMDSQLite *)selfCopy generateDBLoadError];
    v5 = generateDBLoadError;
    *error = generateDBLoadError;
    v14 = 0;
  }

  objc_storeStrong(location, 0);
  v6 = v14;

  return v6;
}

- (id)fetchRowsUsingSchema:(id)schema andDescriptor:(id)descriptor andPersist:(BOOL)persist error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, schema);
  v13 = 0;
  objc_storeStrong(&v13, descriptor);
  v11 = selfCopy;
  v6 = [(AMDSQLite *)selfCopy _db];
  v12 = [(AMDSQLite *)v11 fetchRowsFrom:v6 usingDescriptor:v13 andSchema:location[0] columnMajorOutput:1 rowMajorOutput:0 andPersist:persist error:error];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v12;
}

- (id)fetchRowsFrom:(sqlite3 *)from usingDescriptor:(id)descriptor andSchema:(id)schema columnMajorOutput:(BOOL)output rowMajorOutput:(BOOL)majorOutput andPersist:(BOOL)persist error:(id *)error
{
  v95 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v84 = a2;
  fromCopy = from;
  location = 0;
  objc_storeStrong(&location, descriptor);
  v81 = 0;
  objc_storeStrong(&v81, schema);
  outputCopy = output;
  majorOutputCopy = majorOutput;
  persistCopy = persist;
  errorCopy = error;
  getStatement = [location getStatement];
  if (!getStatement)
  {
    v34 = [AMDError allocError:22 withMessage:@"Fetch descriptor unusable!"];
    v9 = v34;
    *errorCopy = v34;
    v86 = 0;
    v75 = 1;
    goto LABEL_28;
  }

  pStmt = [AMDSQLite prepare:getStatement usingDb:fromCopy error:errorCopy];
  if (!pStmt)
  {
    localizedDescription = [*errorCopy localizedDescription];
    [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
    MEMORY[0x277D82BD8](localizedDescription);
    v86 = 0;
    v75 = 1;
    goto LABEL_28;
  }

  v73 = 0;
  getColumnSpecs = [location getColumnSpecs];
  v71 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(getColumnSpecs, "count")}];
  for (i = 0; i < [getColumnSpecs count]; ++i)
  {
    v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v71 addObject:v32];
    MEMORY[0x277D82BD8](v32);
  }

  v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = 0;
  v65 = &v64;
  v66 = 0x20000000;
  v67 = 32;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 838860800;
  v60 = 48;
  v61 = __Block_byref_object_copy__0;
  v62 = __Block_byref_object_dispose__0;
  v63 = 0;
  queue = [(AMDSQLite *)selfCopy _executorQueue];
  v47 = MEMORY[0x277D85DD0];
  v48 = -1073741824;
  v49 = 0;
  v50 = __103__AMDSQLite_fetchRowsFrom_usingDescriptor_andSchema_columnMajorOutput_rowMajorOutput_andPersist_error___block_invoke;
  v51 = &unk_278CB5BE8;
  v54[3] = pStmt;
  v52 = MEMORY[0x277D82BE0](getColumnSpecs);
  v54[1] = &v57;
  v54[2] = &v64;
  v55 = outputCopy;
  v53 = MEMORY[0x277D82BE0](v71);
  v56 = majorOutputCopy;
  v54[0] = MEMORY[0x277D82BE0](v69);
  dispatch_sync(queue, &v47);
  MEMORY[0x277D82BD8](queue);
  if ((v65[3] & 1) == 0)
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      v28 = [v71 objectAtIndexedSubscript:0];
      v29 = [v28 count];
      getId = [location getId];
      v44 = MEMORY[0x277D82BE0](getId);
      __os_log_helper_16_2_2_8_0_8_64(v94, v29, v44);
      _os_log_debug_impl(&dword_240CB9000, oslog, type, "SQLITE Fetched %lu rows from descriptor '%@'", v94, 0x16u);
      MEMORY[0x277D82BD8](getId);
      MEMORY[0x277D82BD8](v28);
      objc_storeStrong(&v44, 0);
    }

    objc_storeStrong(&oslog, 0);
    v26 = objc_alloc(MEMORY[0x277CBEB18]);
    v43 = [v26 initWithCapacity:{objc_msgSend(getColumnSpecs, "count")}];
    memset(__b, 0, sizeof(__b));
    v24 = MEMORY[0x277D82BE0](getColumnSpecs);
    v25 = [v24 countByEnumeratingWithState:__b objects:v93 count:16];
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

        v42 = *(__b[1] + 8 * v22);
        v19 = v43;
        v91[0] = @"name";
        getSelectColumnName = [v42 getSelectColumnName];
        v92[0] = getSelectColumnName;
        v91[1] = AMD_SQLITE_TYPE;
        getTypeString = [v42 getTypeString];
        v92[1] = getTypeString;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
        [v19 addObject:?];
        MEMORY[0x277D82BD8](v16);
        MEMORY[0x277D82BD8](getTypeString);
        MEMORY[0x277D82BD8](getSelectColumnName);
        ++v22;
        if (v20 + 1 >= v23)
        {
          v22 = 0;
          v23 = [v24 countByEnumeratingWithState:__b objects:v93 count:16];
          if (!v23)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v24);
    v89[0] = @"fetchResultColumnsInfo";
    v90[0] = v43;
    v89[1] = @"fetchResultColumnsData";
    v90[1] = v71;
    v89[2] = @"fetchResultRowsData";
    v90[2] = v69;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:3];
    v39 = 0;
    if (persistCopy)
    {
      v11 = [location persist:v40 error:errorCopy];
      v12 = v39;
      v39 = v11;
      MEMORY[0x277D82BD8](v12);
      if (*errorCopy)
      {
        v86 = 0;
        v75 = 1;
LABEL_24:
        objc_storeStrong(&v39, 0);
        objc_storeStrong(&v40, 0);
        objc_storeStrong(&v43, 0);
        goto LABEL_25;
      }
    }

    else
    {
      objc_storeStrong(&v39, @"Persistance not requested");
    }

    v87[0] = @"resultSet";
    v88[0] = v40;
    v87[1] = @"persistStatus";
    v88[1] = v39;
    v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
    v75 = 1;
    goto LABEL_24;
  }

  v30 = v58[5];
  v10 = v30;
  *errorCopy = v30;
  v86 = 0;
  v75 = 1;
LABEL_25:
  objc_storeStrong(v54, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&v52, 0);
  _Block_object_dispose(&v57, 8);
  objc_storeStrong(&v63, 0);
  _Block_object_dispose(&v64, 8);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(&getColumnSpecs, 0);
  v15 = v75;
  sqlite3_finalize(pStmt);
  if (v73)
  {
    objc_exception_rethrow();
  }

  v75 = v15;
  if (v15 == 2)
  {
    __break(1u);
    JUMPOUT(0x240CE987CLL);
  }

LABEL_28:
  objc_storeStrong(&getStatement, 0);
  objc_storeStrong(&v81, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
  v13 = v86;

  return v13;
}

void __103__AMDSQLite_fetchRowsFrom_usingDescriptor_andSchema_columnMajorOutput_rowMajorOutput_andPersist_error___block_invoke(uint64_t a1)
{
  v48[2] = a1;
  v48[1] = a1;
  do
  {
    if (sqlite3_step(*(a1 + 72)) != 100)
    {
      return;
    }

    v48[0] = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    for (i = 0; ; ++i)
    {
      v37 = i;
      if (v37 >= [*(a1 + 32) count])
      {
        break;
      }

      location = [*(a1 + 32) objectAtIndexedSubscript:i];
      v45 = sqlite3_column_type(*(a1 + 72), i);
      v44 = [location getType];
      switch(v44)
      {
        case 0:
          goto LABEL_35;
        case 1:
          if (v45 == 5)
          {
            v35 = v48[0];
            v36 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v43 length:0];
            [v35 addObject:?];
            MEMORY[0x277D82BD8](v36);
          }

          else if (v45 == 4)
          {
            v33 = v48[0];
            v32 = objc_alloc(MEMORY[0x277CBEA90]);
            v31 = sqlite3_column_blob(*(a1 + 72), i);
            v34 = [v32 initWithBytes:v31 length:{sqlite3_column_bytes(*(a1 + 72), i)}];
            [v33 addObject:?];
            MEMORY[0x277D82BD8](v34);
          }

          else
          {
            v1 = [AMDError allocError:22 withMessage:@"Data not blob"];
            v2 = *(*(a1 + 56) + 8);
            v3 = *(v2 + 40);
            *(v2 + 40) = v1;
            MEMORY[0x277D82BD8](v3);
            *(*(*(a1 + 64) + 8) + 24) = 1;
          }

          break;
        case 2:
          if (v45 == 5)
          {
            [v48[0] addObject:&unk_2852BC630];
          }

          else if (v45 == 2)
          {
            v29 = v48[0];
            v30 = [MEMORY[0x277CCABB0] numberWithDouble:{sqlite3_column_double(*(a1 + 72), i)}];
            [v29 addObject:?];
            MEMORY[0x277D82BD8](v30);
          }

          else
          {
            v4 = [AMDError allocError:22 withMessage:@"Data not float"];
            v5 = *(*(a1 + 56) + 8);
            v6 = *(v5 + 40);
            *(v5 + 40) = v4;
            MEMORY[0x277D82BD8](v6);
            *(*(*(a1 + 64) + 8) + 24) = 1;
          }

          break;
        case 3:
          if (v45 == 5)
          {
            goto LABEL_23;
          }

          if (v45 != 1)
          {
            goto LABEL_25;
          }

          v27 = v48[0];
          v28 = [MEMORY[0x277CCABB0] numberWithInt:{sqlite3_column_int(*(a1 + 72), i)}];
          [v27 addObject:?];
          MEMORY[0x277D82BD8](v28);
          break;
        case 4:
          if (v45 == 5)
          {
LABEL_23:
            [v48[0] addObject:&unk_2852BA608];
            break;
          }

          if (v45 != 1)
          {
LABEL_25:
            v7 = [AMDError allocError:22 withMessage:@"Data not int"];
            v8 = *(*(a1 + 56) + 8);
            v9 = *(v8 + 40);
            *(v8 + 40) = v7;
            MEMORY[0x277D82BD8](v9);
            *(*(*(a1 + 64) + 8) + 24) = 1;
            break;
          }

          v25 = v48[0];
          v26 = [MEMORY[0x277CCABB0] numberWithLongLong:{sqlite3_column_int64(*(a1 + 72), i)}];
          [v25 addObject:?];
          MEMORY[0x277D82BD8](v26);
          break;
        case 5:
          if (v45 == 5)
          {
            [v48[0] addObject:&stru_2852A6E28];
          }

          else if (v45 == 3)
          {
            v23 = v48[0];
            v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{sqlite3_column_text(*(a1 + 72), i)}];
            [v23 addObject:?];
            MEMORY[0x277D82BD8](v24);
          }

          else
          {
            v10 = [AMDError allocError:22 withMessage:@"Data not text"];
            v11 = *(*(a1 + 56) + 8);
            v12 = *(v11 + 40);
            *(v11 + 40) = v10;
            MEMORY[0x277D82BD8](v12);
            *(*(*(a1 + 64) + 8) + 24) = 1;
          }

          break;
        default:
LABEL_35:
          v13 = [AMDError allocError:22 withMessage:@"Unexpected data type. Check!"];
          v14 = *(*(a1 + 56) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = v13;
          MEMORY[0x277D82BD8](v15);
          *(*(*(a1 + 64) + 8) + 24) = 1;
          break;
      }

      if (*(*(*(a1 + 64) + 8) + 24))
      {
        v42 = 4;
      }

      else
      {
        v42 = 0;
      }

      objc_storeStrong(&location, 0);
      if (v42)
      {
        break;
      }
    }

    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v42 = 3;
    }

    else
    {
      if (*(a1 + 80))
      {
        for (j = 0; ; ++j)
        {
          v22 = j;
          if (v22 >= [*(a1 + 32) count])
          {
            break;
          }

          v21 = [*(a1 + 40) objectAtIndexedSubscript:j];
          v20 = [v48[0] objectAtIndexedSubscript:j];
          [v21 addObject:?];
          MEMORY[0x277D82BD8](v20);
          MEMORY[0x277D82BD8](v21);
        }
      }

      if (*(a1 + 81))
      {
        v40 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
        for (k = 0; k < [*(a1 + 32) count]; ++k)
        {
          v16 = v40;
          v19 = [v48[0] objectAtIndexedSubscript:k];
          v18 = [*(a1 + 32) objectAtIndexedSubscript:k];
          v17 = [v18 getName];
          [v16 setObject:v19 forKey:?];
          MEMORY[0x277D82BD8](v17);
          MEMORY[0x277D82BD8](v18);
          MEMORY[0x277D82BD8](v19);
        }

        [*(a1 + 48) addObject:v40];
        objc_storeStrong(&v40, 0);
      }

      v42 = 0;
    }

    objc_storeStrong(v48, 0);
  }

  while (!v42);
}

- (id)deleteRows:(id)rows error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rows);
  if ([(AMDSQLite *)selfCopy isUsable])
  {
    v11 = [(AMDSQLite *)selfCopy deleteRowsInternal:location[0] error:error];
  }

  else
  {
    generateDBLoadError = [(AMDSQLite *)selfCopy generateDBLoadError];
    v4 = generateDBLoadError;
    *error = generateDBLoadError;
    v11 = 0;
  }

  objc_storeStrong(location, 0);
  v5 = v11;

  return v5;
}

- (id)deleteRowsInternal:(id)internal error:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, internal);
  errorCopy = error;
  if ([(AMDSQLite *)selfCopy _db])
  {
    v50 = [location[0] objectForKey:0x2852AF668];
    v49 = [location[0] objectForKey:0x2852AF5E8];
    v48 = [location[0] objectForKey:0x2852AF648];
    v47 = [location[0] objectForKey:0x2852AF568];
    v46 = [location[0] objectForKey:0x2852AF5C8];
    v17 = MEMORY[0x277CCACA8];
    v43 = 0;
    if (v49)
    {
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@" WHERE %@", v49];
      v43 = 1;
      v16 = v44;
    }

    else
    {
      v16 = &stru_2852A6E28;
    }

    v41 = 0;
    if (v48)
    {
      v42 = [MEMORY[0x277CCACA8] stringWithFormat:@" ORDER BY %@", v48];
      v41 = 1;
      v15 = v42;
    }

    else
    {
      v15 = &stru_2852A6E28;
    }

    v39 = 0;
    if (v47)
    {
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@" LIMIT %@", v47];
      v39 = 1;
      v14 = v40;
    }

    else
    {
      v14 = &stru_2852A6E28;
    }

    v37 = 0;
    if (v46)
    {
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@" OFFSET %@", v46];
      v37 = 1;
      v13 = v38;
    }

    else
    {
      v13 = &stru_2852A6E28;
    }

    v45 = [v17 stringWithFormat:@"DELETE FROM %@%@%@%@%@", v50, v16, v15, v14, v13];
    if (v37)
    {
      MEMORY[0x277D82BD8](v38);
    }

    if (v39)
    {
      MEMORY[0x277D82BD8](v40);
    }

    if (v41)
    {
      MEMORY[0x277D82BD8](v42);
    }

    if (v43)
    {
      MEMORY[0x277D82BD8](v44);
    }

    v36 = [(AMDSQLite *)selfCopy prepare:v45 error:errorCopy];
    if (v36)
    {
      v35 = 0;
      v30 = 0;
      v31 = &v30;
      v32 = 0x20000000;
      v33 = 32;
      v34 = 1;
      _executorQueue = [(AMDSQLite *)selfCopy _executorQueue];
      block = MEMORY[0x277D85DD0];
      v24 = -1073741824;
      v25 = 0;
      v26 = __38__AMDSQLite_deleteRowsInternal_error___block_invoke;
      v27 = &unk_278CB5C10;
      v28 = &v30;
      v29 = v36;
      dispatch_sync(_executorQueue, &block);
      MEMORY[0x277D82BD8](_executorQueue);
      if (*(v31 + 6) == 101)
      {
        v21 = sqlite3_changes([(AMDSQLite *)selfCopy _db]);
        oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_2_2_4_0_8_64(v59, v21, v50);
          _os_log_debug_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_DEBUG, "SQLITE Deleted %u rows from table %@", v59, 0x12u);
        }

        objc_storeStrong(&oslog, 0);
        v57 = @"deleteStatus";
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"deleted %u rows", v21];
        v58 = v9;
        v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        MEMORY[0x277D82BD8](v9);
        v51 = 1;
      }

      else
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE Delete: %d", *(v31 + 6)];
        v10 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v22];
        v5 = v10;
        *errorCopy = v10;
        v56 = 0;
        v51 = 1;
        objc_storeStrong(&v22, 0);
      }

      _Block_object_dispose(&v30, 8);
      v8 = v51;
      sqlite3_finalize(v36);
      if (v35)
      {
        objc_exception_rethrow();
      }

      v51 = v8;
      if (v8 == 2)
      {
        __break(1u);
        JUMPOUT(0x240CEAF14);
      }
    }

    else
    {
      localizedDescription = [*errorCopy localizedDescription];
      [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
      MEMORY[0x277D82BD8](localizedDescription);
      v56 = 0;
      v51 = 1;
    }

    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v47, 0);
    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v49, 0);
    objc_storeStrong(&v50, 0);
  }

  else
  {
    v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE DELETE: No db!!"];
    v18 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v52];
    v4 = v18;
    *errorCopy = v18;
    v56 = 0;
    v51 = 1;
    objc_storeStrong(&v52, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v56;

  return v6;
}

uint64_t __38__AMDSQLite_deleteRowsInternal_error___block_invoke(uint64_t a1)
{
  result = sqlite3_step(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)updateTableUsingDescriptor:(id)descriptor andSchema:(id)schema error:(id *)error
{
  v79 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  v70 = 0;
  objc_storeStrong(&v70, schema);
  errorCopy = error;
  v68 = [location[0] objectForKey:0x2852AF668];
  v67 = [v70 getSchemaForTable:v68];
  if (v67)
  {
    v64 = [location[0] objectForKey:@"orReplace"];
    if (v64)
    {
      v30 = [v64 intValue] != 0;
    }

    else
    {
      v30 = 0;
    }

    v63 = v30;
    v62 = [location[0] objectForKey:0x2852AF628];
    if (v62 && [v62 count])
    {
      v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
      memset(__b, 0, sizeof(__b));
      v27 = MEMORY[0x277D82BE0](v62);
      v28 = [v27 countByEnumeratingWithState:__b objects:v78 count:16];
      if (v28)
      {
        v24 = *__b[2];
        v25 = 0;
        v26 = v28;
        while (1)
        {
          v23 = v25;
          if (*__b[2] != v24)
          {
            objc_enumerationMutation(v27);
          }

          v59 = *(__b[1] + 8 * v25);
          v57 = [v62 objectForKey:v59];
          v22 = v60;
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = %@", v59, v57];
          [v22 addObject:?];
          MEMORY[0x277D82BD8](v21);
          objc_storeStrong(&v57, 0);
          ++v25;
          if (v23 + 1 >= v26)
          {
            v25 = 0;
            v26 = [v27 countByEnumeratingWithState:__b objects:v78 count:16];
            if (!v26)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v27);
      v56 = [location[0] objectForKey:0x2852AF5E8];
      v18 = MEMORY[0x277CCACA8];
      v19 = v68;
      v7 = @" OR REPLACE";
      if (!v63)
      {
        v7 = &stru_2852A6E28;
      }

      v20 = v7;
      v17 = [v60 componentsJoinedByString:{@", "}];
      v53 = 0;
      if (v56)
      {
        v54 = [MEMORY[0x277CCACA8] stringWithFormat:@" WHERE %@", v56];
        v53 = 1;
        v16 = v54;
      }

      else
      {
        v16 = &stru_2852A6E28;
      }

      v55 = [v18 stringWithFormat:@"UPDATE %@%@ SET %@%@", v19, v20, v17, v16];
      if (v53)
      {
        MEMORY[0x277D82BD8](v54);
      }

      MEMORY[0x277D82BD8](v17);
      v52 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_64(v77, v55);
        _os_log_impl(&dword_240CB9000, v52, type, "Prepared UPDATE statement: %@", v77, 0xCu);
      }

      objc_storeStrong(&v52, 0);
      v50 = [(AMDSQLite *)selfCopy prepare:v55 error:errorCopy];
      if (v50)
      {
        v49 = 0;
        v44 = 0;
        v45 = &v44;
        v46 = 0x20000000;
        v47 = 32;
        v48 = 1;
        _executorQueue = [(AMDSQLite *)selfCopy _executorQueue];
        block = MEMORY[0x277D85DD0];
        v38 = -1073741824;
        v39 = 0;
        v40 = __56__AMDSQLite_updateTableUsingDescriptor_andSchema_error___block_invoke;
        v41 = &unk_278CB5C10;
        v42 = &v44;
        v43 = v50;
        dispatch_sync(_executorQueue, &block);
        MEMORY[0x277D82BD8](_executorQueue);
        if (*(v45 + 6) == 101)
        {
          v35 = sqlite3_changes([(AMDSQLite *)selfCopy _db]);
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_2_2_4_0_8_64(v76, v35, v68);
            _os_log_debug_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_DEBUG, "SQLITE Updated %u rows in table %@", v76, 0x12u);
          }

          objc_storeStrong(&oslog, 0);
          v74 = @"updateStatus";
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"updated %u rows", v35];
          v75 = v12;
          v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          MEMORY[0x277D82BD8](v12);
          v65 = 1;
        }

        else
        {
          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE update: %d", *(v45 + 6)];
          v13 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v36];
          v8 = v13;
          *errorCopy = v13;
          v73 = 0;
          v65 = 1;
          objc_storeStrong(&v36, 0);
        }

        _Block_object_dispose(&v44, 8);
        v11 = v65;
        sqlite3_finalize(v50);
        if (v49)
        {
          objc_exception_rethrow();
        }

        v65 = v11;
        if (v11 == 4)
        {
          __break(1u);
          JUMPOUT(0x240CEBCD8);
        }
      }

      else
      {
        localizedDescription = [*errorCopy localizedDescription];
        [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
        MEMORY[0x277D82BD8](localizedDescription);
        v73 = 0;
        v65 = 1;
      }

      objc_storeStrong(&v55, 0);
      objc_storeStrong(&v56, 0);
      objc_storeStrong(&v60, 0);
    }

    else
    {
      v61 = MEMORY[0x277D82BE0](@"SQLITE UPDATE: no SET clause info");
      v29 = [AMDMiscHelpers logAndCreateError:15 errorMessage:v61];
      v6 = v29;
      *errorCopy = v29;
      v73 = 0;
      v65 = 1;
      objc_storeStrong(&v61, 0);
    }

    objc_storeStrong(&v62, 0);
    objc_storeStrong(&v64, 0);
  }

  else
  {
    v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE UPDATE: table '%@' does not exist'", v68];
    v31 = [AMDMiscHelpers logAndCreateError:15 errorMessage:v66];
    v5 = v31;
    *errorCopy = v31;
    v73 = 0;
    v65 = 1;
    objc_storeStrong(&v66, 0);
  }

  objc_storeStrong(&v67, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v73;

  return v9;
}

uint64_t __56__AMDSQLite_updateTableUsingDescriptor_andSchema_error___block_invoke(uint64_t a1)
{
  result = sqlite3_step(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)refreshAppsTable:(id *)table
{
  v60 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v44 = a2;
  tableCopy = table;
  v42 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = +[AMDMiscHelpers getCurrentEpochSeconds];
  v39 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  [v39 setFilter:&__block_literal_global];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v39);
  v24 = [obj countByEnumeratingWithState:__b objects:v59 count:16];
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

      v38 = *(__b[1] + 8 * v21);
      iTunesMetadata = [v38 iTunesMetadata];
      v12 = v41;
      v57[0] = @"adamId";
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "storeItemIdentifier")}];
      v58[0] = v18;
      v57[1] = @"genreId";
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "genreIdentifier")}];
      v58[1] = v17;
      v57[2] = @"isArcade";
      v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v38, "isArcadeApp")}];
      v58[2] = v16;
      v57[3] = @"purchasedRedownload";
      v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(iTunesMetadata, "isPurchasedRedownload")}];
      v58[3] = v15;
      v57[4] = @"ratingRank";
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(iTunesMetadata, "ratingRank")}];
      v58[4] = v14;
      v57[5] = @"creationTime";
      v58[5] = v40;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:6];
      [v12 addObject:?];
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      objc_storeStrong(&iTunesMetadata, 0);
      ++v21;
      if (v19 + 1 >= v22)
      {
        v21 = 0;
        v22 = [obj countByEnumeratingWithState:__b objects:v59 count:16];
        if (!v22)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  if ([v41 count])
  {
    oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v56, [v41 count]);
      _os_log_debug_impl(&dword_240CB9000, oslog, type, "SQLITE found %lu apps", v56, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v51[0] = 0x2852AF668;
    v52[0] = @"apps";
    v51[1] = @"rowsData";
    v52[1] = v41;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
    v3 = [(AMDSQLite *)selfCopy deleteRows:v29 error:tableCopy];
    v28 = v3;
    if (*tableCopy)
    {
      v10 = MEMORY[0x277CCACA8];
      localizedDescription = [*tableCopy localizedDescription];
      v27 = [v10 stringWithFormat:@"SQLITE could not truncate '%@': %@", @"apps", localizedDescription];
      MEMORY[0x277D82BD8](localizedDescription);
      v49 = @"error";
      v50 = v27;
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v30 = 1;
      objc_storeStrong(&v27, 0);
    }

    else
    {
      if (v28)
      {
        [v42 addEntriesFromDictionary:v28];
      }

      else
      {
        [AMDFrameworkMetrics log:@"Delete Rows Failed" withKey:@"AppsTableRefreshError" atVerbosity:0];
      }

      v8 = selfCopy;
      _schema = [(AMDSQLite *)selfCopy _schema];
      v26 = [AMDSQLite insertRows:v8 usingSchema:"insertRows:usingSchema:error:" error:v29];
      MEMORY[0x277D82BD8](_schema);
      if (*tableCopy)
      {
        v6 = MEMORY[0x277CCACA8];
        localizedDescription2 = [*tableCopy localizedDescription];
        v25 = [v6 stringWithFormat:@"SQLITE could not insert into '%@': %@", @"apps", localizedDescription2];
        MEMORY[0x277D82BD8](localizedDescription2);
        v47 = @"error";
        v48 = v25;
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v30 = 1;
        objc_storeStrong(&v25, 0);
      }

      else
      {
        if (v26)
        {
          [v42 addEntriesFromDictionary:v26];
        }

        else
        {
          [AMDFrameworkMetrics log:@"Insert Rows Failed" withKey:@"AppsTableRefreshError" atVerbosity:0];
        }

        v46 = MEMORY[0x277D82BE0](v42);
        v30 = 1;
      }

      objc_storeStrong(&v26, 0);
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    v33 = MEMORY[0x277D82BE0](@"SQLITE found no apps. Check!");
    v32 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    v31 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v55, v33);
      _os_log_error_impl(&dword_240CB9000, v32, v31, "%@", v55, 0xCu);
    }

    objc_storeStrong(&v32, 0);
    v53 = @"error";
    v54 = v33;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v30 = 1;
    objc_storeStrong(&v33, 0);
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  *MEMORY[0x277D85DE8];
  v4 = v46;

  return v4;
}

BOOL __30__AMDSQLite_refreshAppsTable___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] iTunesMetadata];
  v4 = [v3 storeItemIdentifier] != 0;
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
  return v4;
}

+ (id)fetchVectorDBConfigForDBName:(id)name error:(id *)error
{
  v55[4] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  errorCopy = error;
  v33 = +[AMDSQLite getSharedInstance];
  if ([v33 isUsableInternal])
  {
    v53 = @"dbPath";
    v51[0] = AMD_SQLITE_TYPE;
    v52[0] = AMD_SQLITE_DATA_TYPE_TEXT;
    v51[1] = AMD_SQLITE_NOT_NULL;
    v9 = MEMORY[0x277CBEC38];
    v52[1] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:?];
    v54 = v17;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:?];
    v55[0] = v16;
    v49 = @"dataType";
    v47[0] = AMD_SQLITE_TYPE;
    v48[0] = AMD_SQLITE_DATA_TYPE_TEXT;
    v47[1] = AMD_SQLITE_NOT_NULL;
    v48[1] = v9;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
    v50 = v15;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v55[1] = v14;
    v45 = @"vectorDimension";
    v43[0] = AMD_SQLITE_TYPE;
    v44[0] = AMD_SQLITE_DATA_TYPE_INT;
    v43[1] = AMD_SQLITE_NOT_NULL;
    v44[1] = v9;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
    v46 = v13;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v55[2] = v12;
    v41 = @"distanceMetric";
    v39[0] = AMD_SQLITE_TYPE;
    v40[0] = AMD_SQLITE_DATA_TYPE_TEXT;
    v39[1] = AMD_SQLITE_NOT_NULL;
    v40[1] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v42 = v11;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v55[3] = v10;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    v37[0] = 0x2852AF4C8;
    v38[0] = @"__AMDVectorDatabases";
    v37[1] = 0x2852AF668;
    v38[1] = @"__AMDVectorDatabases";
    v37[2] = 0x2852AF568;
    v38[2] = @"1";
    v37[3] = 0x2852AF4A8;
    v38[3] = v31;
    v37[4] = 0x2852AF5E8;
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"dbName = '%@'", location[0]];
    v38[4] = v18;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:5];
    MEMORY[0x277D82BD8](v18);
    v19 = [AMDFetchDescriptor alloc];
    _bootstrapSchema = [v33 _bootstrapSchema];
    v29 = [AMDFetchDescriptor initWithDict:v19 usingSchema:"initWithDict:usingSchema:error:" error:v30];
    MEMORY[0x277D82BD8](_bootstrapSchema);
    v21 = [v33 _db];
    _bootstrapSchema2 = [v33 _bootstrapSchema];
    v28 = [v33 fetchRowsFrom:v21 usingDescriptor:v29 andSchema:errorCopy columnMajorOutput:? rowMajorOutput:? andPersist:? error:?];
    MEMORY[0x277D82BD8](_bootstrapSchema2);
    if (*errorCopy)
    {
      v36 = 0;
      v32 = 1;
    }

    else
    {
      v27 = [v28 objectForKey:@"resultSet"];
      v26 = [v27 objectForKey:@"fetchResultRowsData"];
      if (v26)
      {
        if ([v26 count])
        {
          v25 = [v26 objectAtIndexedSubscript:0];
          v36 = MEMORY[0x277D82BE0](v25);
          v32 = 1;
          objc_storeStrong(&v25, 0);
        }

        else
        {
          v36 = MEMORY[0x277D82BE0](MEMORY[0x277CBEC10]);
          v32 = 1;
        }
      }

      else
      {
        v8 = [AMDError allocError:22 withMessage:@"Internal SQL failure"];
        v5 = v8;
        *errorCopy = v8;
        v36 = 0;
        v32 = 1;
      }

      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v31, 0);
  }

  else
  {
    generateDBLoadError = [v33 generateDBLoadError];
    v4 = generateDBLoadError;
    *errorCopy = generateDBLoadError;
    v36 = 0;
    v32 = 1;
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v36;

  return v6;
}

+ (id)persistVectorDBPath:(id)path forDBName:(id)name withVectorDimension:(int)dimension andDataType:(id)type withDistanceMetric:(id)metric error:(id *)error
{
  v39[1] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v32 = 0;
  objc_storeStrong(&v32, name);
  dimensionCopy = dimension;
  v30 = 0;
  objc_storeStrong(&v30, type);
  v29 = 0;
  objc_storeStrong(&v29, metric);
  errorCopy = error;
  v27 = +[AMDSQLite getSharedInstance];
  if ([v27 isUsableInternal])
  {
    v37[0] = @"dbName";
    v38[0] = v32;
    v37[1] = @"dbPath";
    v38[1] = location[0];
    v37[2] = @"lastUpdateTime";
    v11 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v14 = [v11 numberWithDouble:?];
    v38[2] = v14;
    v37[3] = @"vectorDimension";
    v13 = [MEMORY[0x277CCABB0] numberWithInt:dimensionCopy];
    v38[3] = v13;
    v37[4] = @"dataType";
    v38[4] = v30;
    v37[5] = @"distanceMetric";
    v38[5] = v29;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:6];
    v39[0] = v12;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](date);
    v35[0] = 0x2852AF668;
    v36[0] = @"__AMDVectorDatabases";
    v35[1] = @"rowsData";
    v36[1] = v25;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
    _bootstrapSchema = [v27 _bootstrapSchema];
    v23 = [v27 insertRows:v24 usingSchema:? error:?];
    MEMORY[0x277D82BD8](_bootstrapSchema);
    if (*errorCopy)
    {
      v34 = 0;
    }

    else
    {
      v34 = MEMORY[0x277D82BE0](v23);
    }

    v26 = 1;
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  else
  {
    generateDBLoadError = [v27 generateDBLoadError];
    v8 = generateDBLoadError;
    *errorCopy = generateDBLoadError;
    v34 = 0;
    v26 = 1;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v9 = v34;

  return v9;
}

+ (id)deleteVectorDBEntryForDBName:(id)name error:(id *)error
{
  v18[3] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  errorCopy = error;
  v13 = +[AMDSQLite getSharedInstance];
  if ([v13 isUsableInternal])
  {
    v17[0] = 0x2852AF4C8;
    v18[0] = @"__AMDVectorDatabases";
    v17[1] = 0x2852AF668;
    v18[1] = @"__AMDVectorDatabases";
    v17[2] = 0x2852AF5E8;
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"dbName = '%@'", location[0]];
    v18[2] = v7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    MEMORY[0x277D82BD8](v7);
    v10 = [v13 deleteRowsInternal:v11 error:errorCopy];
    if (*errorCopy)
    {
      v16 = 0;
    }

    else
    {
      v16 = MEMORY[0x277D82BE0](v10);
    }

    v12 = 1;
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    generateDBLoadError = [v13 generateDBLoadError];
    v4 = generateDBLoadError;
    *errorCopy = generateDBLoadError;
    v16 = 0;
    v12 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v5 = v16;

  return v5;
}

+ (id)updateLastVectorDBRefreshTimestamp:(id)timestamp error:(id *)error
{
  v26[4] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, timestamp);
  errorCopy = error;
  v19 = +[AMDSQLite getSharedInstance];
  if ([v19 isUsableInternal])
  {
    v25[0] = 0x2852AF4C8;
    v26[0] = @"__AMDVectorDatabases";
    v25[1] = 0x2852AF668;
    v26[1] = @"__AMDVectorDatabases";
    v25[2] = 0x2852AF5E8;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"dbName = '%@'", location[0]];
    v26[2] = v12;
    v25[3] = 0x2852AF628;
    v23 = @"lastUpdateTime";
    v8 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v10 = [v8 numberWithLongLong:v5];
    v24 = v10;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v26[3] = v9;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](date);
    MEMORY[0x277D82BD8](v12);
    _bootstrapSchema = [v19 _bootstrapSchema];
    v16 = [v19 updateTableUsingDescriptor:v17 andSchema:? error:?];
    MEMORY[0x277D82BD8](_bootstrapSchema);
    if (*errorCopy)
    {
      v22 = 0;
    }

    else
    {
      v22 = MEMORY[0x277D82BE0](v16);
    }

    v18 = 1;
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    generateDBLoadError = [v19 generateDBLoadError];
    v4 = generateDBLoadError;
    *errorCopy = generateDBLoadError;
    v22 = 0;
    v18 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v22;

  return v6;
}

@end