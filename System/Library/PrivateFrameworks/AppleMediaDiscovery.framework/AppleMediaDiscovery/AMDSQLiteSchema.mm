@interface AMDSQLiteSchema
+ (id)fetchColumnSpecsForTable:(id)table;
- (AMDSQLiteSchema)initWithDict:(id)dict error:(id *)error;
- (id)addIndices:(id)indices error:(id *)error;
- (id)addTable:(id)table withSchema:(id)schema error:(id *)error;
- (id)getCreateTableStatementFor:(id)for;
- (id)getInsertStatementFor:(id)for hasColumns:(id)columns requiresColumns:(id *)requiresColumns;
- (id)getSchemaForTable:(id)table;
- (id)getTableForStream:(id)stream;
@end

@implementation AMDSQLiteSchema

- (id)addTable:(id)table withSchema:(id)schema error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, table);
  v18 = 0;
  objc_storeStrong(&v18, schema);
  v17[1] = error;
  v5 = [AMDSQLiteTableSchema alloc];
  v17[0] = [(AMDSQLiteTableSchema *)v5 initWithDict:v18 withName:location[0] error:error];
  if (*error)
  {
    v21 = 0;
    v16 = 1;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x277CBEB38]);
    tables = [(AMDSQLiteSchema *)selfCopy tables];
    v15 = [v8 initWithDictionary:?];
    MEMORY[0x277D82BD8](tables);
    [v15 setObject:v17[0] forKey:location[0]];
    [(AMDSQLiteSchema *)selfCopy setTables:v15];
    v10 = objc_alloc(MEMORY[0x277CBEB38]);
    streamToTableMap = [(AMDSQLiteSchema *)selfCopy streamToTableMap];
    v14 = [v10 initWithDictionary:?];
    MEMORY[0x277D82BD8](streamToTableMap);
    [v14 setObject:location[0] forKey:location[0]];
    [(AMDSQLiteSchema *)selfCopy setStreamToTableMap:v14];
    v22 = @"added_table";
    v23[0] = location[0];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v16 = 1;
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v21;

  return v6;
}

- (id)addIndices:(id)indices error:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, indices);
  errorCopy = error;
  indices = [(AMDSQLiteSchema *)selfCopy indices];
  v61 = [(NSDictionary *)indices mutableCopy];
  MEMORY[0x277D82BD8](indices);
  v60 = 0;
  for (i = 0; ; ++i)
  {
    v39 = i;
    if (v39 >= [location[0] count])
    {
      break;
    }

    v58 = [location[0] objectAtIndexedSubscript:i];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = MEMORY[0x277D82BE0](v58);
      v5 = [v55 objectForKey:@"indexName"];
      v6 = v58;
      v58 = v5;
      MEMORY[0x277D82BD8](v6);
      if (v58 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v53 = MEMORY[0x277D82BE0](v58);
        indices2 = [(AMDSQLiteSchema *)selfCopy indices];
        v52 = [(NSDictionary *)indices2 objectForKey:v53];
        MEMORY[0x277D82BD8](indices2);
        if (v52)
        {
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          type = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
          {
            log = oslog;
            v35 = type;
            __os_log_helper_16_2_1_8_64(v72, v53);
            _os_log_impl(&dword_240CB9000, log, v35, "SQLITE Index '%@' already exists", v72, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          v56 = 4;
        }

        else
        {
          v8 = [v55 objectForKey:0x2852AF668];
          v9 = v58;
          v58 = v8;
          MEMORY[0x277D82BD8](v9);
          if (v58 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v48 = MEMORY[0x277D82BE0](v58);
            tables = [(AMDSQLiteSchema *)selfCopy tables];
            v11 = [(NSDictionary *)tables objectForKey:v48];
            v12 = v52;
            v52 = v11;
            MEMORY[0x277D82BD8](v12);
            MEMORY[0x277D82BD8](tables);
            if (v52)
            {
              v13 = [v55 objectForKey:AMD_SQLITE_COLUMNS];
              v14 = v58;
              v58 = v13;
              MEMORY[0x277D82BD8](v14);
              if (v58 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v58 count])
              {
                v44 = MEMORY[0x277D82BE0](v58);
                memset(__b, 0, 0x40uLL);
                obj = MEMORY[0x277D82BE0](v44);
                v28 = [obj countByEnumeratingWithState:__b objects:v70 count:16];
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
                      objc_enumerationMutation(obj);
                    }

                    __b[8] = *(__b[1] + 8 * v25);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      break;
                    }

                    ++v25;
                    if (v23 + 1 >= v26)
                    {
                      v25 = 0;
                      v26 = [obj countByEnumeratingWithState:__b objects:v70 count:16];
                      if (!v26)
                      {
                        goto LABEL_31;
                      }
                    }
                  }

                  v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE Column name not string in slot %u", i];
                  v22 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v42];
                  v16 = v22;
                  *errorCopy = v22;
                  v65 = 0;
                  v56 = 1;
                  objc_storeStrong(&v42, 0);
                }

                else
                {
LABEL_31:
                  v56 = 0;
                }

                MEMORY[0x277D82BD8](obj);
                if (!v56)
                {
                  v20 = v61;
                  v68[0] = 0x2852AF668;
                  v69[0] = v48;
                  v68[1] = AMD_SQLITE_COLUMNS;
                  v69[1] = v44;
                  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
                  [v20 setObject:? forKey:?];
                  MEMORY[0x277D82BD8](v21);
                  ++v60;
                  v56 = 0;
                }

                objc_storeStrong(&v44, 0);
              }

              else
              {
                v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE Bad or missing columns info in slot %u", i];
                v29 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v45];
                v15 = v29;
                *errorCopy = v29;
                v65 = 0;
                v56 = 1;
                objc_storeStrong(&v45, 0);
              }
            }

            else
            {
              v47 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v46 = OS_LOG_TYPE_INFO;
              if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
              {
                v30 = v47;
                v31 = v46;
                __os_log_helper_16_2_2_8_64_8_64(v71, v48, v53);
                _os_log_impl(&dword_240CB9000, v30, v31, "SQLITE No table '%@' for index '%@'", v71, 0x16u);
              }

              objc_storeStrong(&v47, 0);
              v56 = 4;
            }

            objc_storeStrong(&v48, 0);
          }

          else
          {
            v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE Bad or missing index table name in slot %u", i];
            v33 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v49];
            v10 = v33;
            *errorCopy = v33;
            v65 = 0;
            v56 = 1;
            objc_storeStrong(&v49, 0);
          }
        }

        objc_storeStrong(&v52, 0);
        objc_storeStrong(&v53, 0);
      }

      else
      {
        v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE Bad or missing index name in slot %u", i];
        v37 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v54];
        v7 = v37;
        *errorCopy = v37;
        v65 = 0;
        v56 = 1;
        objc_storeStrong(&v54, 0);
      }

      objc_storeStrong(&v55, 0);
    }

    else
    {
      v57 = [MEMORY[0x277CCACA8] stringWithFormat:@"SQLITE Bad index info in slot %u", i];
      v38 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v57];
      v4 = v38;
      *errorCopy = v38;
      v65 = 0;
      v56 = 1;
      objc_storeStrong(&v57, 0);
    }

    objc_storeStrong(&v58, 0);
    if (v56 && v56 != 4)
    {
      goto LABEL_42;
    }
  }

  [(AMDSQLiteSchema *)selfCopy setIndices:v61];
  v66 = @"added";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v60];
  v67 = v19;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  MEMORY[0x277D82BD8](v19);
  v56 = 1;
LABEL_42:
  objc_storeStrong(&v61, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v17 = v65;

  return v17;
}

- (id)getCreateTableStatementFor:(id)for
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, for);
  tables = [(AMDSQLiteSchema *)selfCopy tables];
  v6 = [(NSDictionary *)tables objectForKey:location[0]];
  MEMORY[0x277D82BD8](tables);
  if (v6)
  {
    getCreateTableStatement = [v6 getCreateTableStatement];
  }

  else
  {
    getCreateTableStatement = 0;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  v3 = getCreateTableStatement;

  return v3;
}

- (id)getInsertStatementFor:(id)for hasColumns:(id)columns requiresColumns:(id *)requiresColumns
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, for);
  v11 = 0;
  objc_storeStrong(&v11, columns);
  getRequiredColumns = [location[0] getRequiredColumns];
  v5 = getRequiredColumns;
  *requiresColumns = getRequiredColumns;
  v10 = [location[0] getInsertStatement:v11];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (id)getSchemaForTable:(id)table
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, table);
  tables = [(AMDSQLiteSchema *)selfCopy tables];
  v5 = [(NSDictionary *)tables objectForKey:location[0]];
  MEMORY[0x277D82BD8](tables);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)getTableForStream:(id)stream
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, stream);
  streamToTableMap = [(AMDSQLiteSchema *)selfCopy streamToTableMap];
  v5 = [(NSDictionary *)streamToTableMap objectForKey:location[0]];
  MEMORY[0x277D82BD8](streamToTableMap);
  objc_storeStrong(location, 0);

  return v5;
}

- (AMDSQLiteSchema)initWithDict:(id)dict error:(id *)error
{
  v91 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dict);
  errorCopy = error;
  v4 = selfCopy;
  selfCopy = 0;
  v81.receiver = v4;
  v81.super_class = AMDSQLiteSchema;
  selfCopy = [(AMDSQLiteSchema *)&v81 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [selfCopy setSchemaDict:location[0]];
  v52 = [location[0] objectForKey:AMD_SQLITE_SCHEMA_NAME];
  [selfCopy setName:?];
  MEMORY[0x277D82BD8](v52);
  v80 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
  {
    name = [selfCopy name];
    __os_log_helper_16_2_1_8_64(v90, name);
    _os_log_debug_impl(&dword_240CB9000, v80, type, "SQLITE Preparing schema '%@'", v90, 0xCu);
    MEMORY[0x277D82BD8](name);
  }

  objc_storeStrong(&v80, 0);
  v48 = [location[0] objectForKey:AMD_SQLITE_SCHEMA_VERSION];
  [selfCopy setVersion:?];
  MEMORY[0x277D82BD8](v48);
  version = [selfCopy version];
  MEMORY[0x277D82BD8](version);
  if (version)
  {
    v45 = objc_alloc_init(MEMORY[0x277CCABB8]);
    version2 = [selfCopy version];
    v43 = [v45 numberFromString:?];
    [selfCopy setVersionNumber:?];
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](version2);
    MEMORY[0x277D82BD8](v45);
    versionNumber = [selfCopy versionNumber];
    MEMORY[0x277D82BD8](versionNumber);
    if (!versionNumber)
    {
      v42 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"Bad schema version"];
      v6 = v42;
      *errorCopy = v42;
      v85 = 0;
      v78 = 1;
      goto LABEL_57;
    }

    [selfCopy setTables:MEMORY[0x277CBEC10]];
    v77 = [location[0] objectForKey:AMD_SQLITE_SCHEMA_TABLES];
    if (!v77 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v41 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"Bad or missing table specs"];
      v7 = v41;
      *errorCopy = v41;
      v85 = 0;
      v78 = 1;
LABEL_56:
      objc_storeStrong(&v77, 0);
      goto LABEL_57;
    }

    v76 = MEMORY[0x277D82BE0](v77);
    v75 = 0;
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v76, "count")}];
    v9 = v75;
    v75 = v8;
    MEMORY[0x277D82BD8](v9);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v76);
    v40 = [obj countByEnumeratingWithState:__b objects:v89 count:16];
    if (v40)
    {
      v36 = *__b[2];
      v37 = 0;
      v38 = v40;
      while (1)
      {
        v35 = v37;
        if (*__b[2] != v36)
        {
          objc_enumerationMutation(obj);
        }

        v74 = *(__b[1] + 8 * v37);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v71 = MEMORY[0x277D82BE0](v74);
        v70 = [v76 objectForKey:v71];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v68 = MEMORY[0x277D82BE0](v70);
          v67 = [[AMDSQLiteTableSchema alloc] initWithDict:v68 withName:v71 error:errorCopy];
          if (v67)
          {
            [v75 setObject:v67 forKey:v71];
            v78 = 0;
          }

          else
          {
            v85 = 0;
            v78 = 1;
          }

          objc_storeStrong(&v67, 0);
          objc_storeStrong(&v68, 0);
        }

        else
        {
          v69 = [MEMORY[0x277CCACA8] stringWithFormat:@"Table data for '%@' not a dict", v71];
          v33 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v69];
          v11 = v33;
          *errorCopy = v33;
          v85 = 0;
          v78 = 1;
          objc_storeStrong(&v69, 0);
        }

        objc_storeStrong(&v70, 0);
        objc_storeStrong(&v71, 0);
        if (v78)
        {
          goto LABEL_26;
        }

        ++v37;
        if (v35 + 1 >= v38)
        {
          v37 = 0;
          v38 = [obj countByEnumeratingWithState:__b objects:v89 count:16];
          if (!v38)
          {
            goto LABEL_25;
          }
        }
      }

      v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bad table data"];
      v34 = [AMDMiscHelpers logAndCreateError:29 errorMessage:v72];
      v10 = v34;
      *errorCopy = v34;
      v85 = 0;
      v78 = 1;
      objc_storeStrong(&v72, 0);
    }

    else
    {
LABEL_25:
      v78 = 0;
    }

LABEL_26:
    MEMORY[0x277D82BD8](obj);
    if (v78)
    {
LABEL_55:
      objc_storeStrong(&v75, 0);
      objc_storeStrong(&v76, 0);
      goto LABEL_56;
    }

    [selfCopy setTables:v75];
    [selfCopy setStreamToTableMap:MEMORY[0x277CBEC10]];
    v66 = [location[0] objectForKey:AMD_SQLITE_STREAM_TO_TABLE_MAP];
    if (v66 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v65 = MEMORY[0x277D82BE0](v66);
      v64 = 0;
      v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v65, "count")}];
      v13 = v64;
      v64 = v12;
      MEMORY[0x277D82BD8](v13);
      memset(v62, 0, sizeof(v62));
      v31 = MEMORY[0x277D82BE0](v65);
      v32 = [v31 countByEnumeratingWithState:v62 objects:v88 count:16];
      if (v32)
      {
        v28 = *v62[2];
        v29 = 0;
        v30 = v32;
        while (1)
        {
          v27 = v29;
          if (*v62[2] != v28)
          {
            objc_enumerationMutation(v31);
          }

          v63 = *(v62[1] + 8 * v29);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v58 = [v65 objectForKey:v63];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v64 setObject:v58 forKey:v63];
              v78 = 0;
            }

            else
            {
              v57 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v56 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                v24 = v57;
                __os_log_helper_16_2_1_8_64(v87, v63);
                _os_log_error_impl(&dword_240CB9000, v24, v56, "SQLITE Table name for stream '%@' not a string", v87, 0xCu);
              }

              objc_storeStrong(&v57, 0);
              v78 = 5;
            }

            objc_storeStrong(&v58, 0);
          }

          else
          {
            oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v60 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              v25 = oslog;
              v26 = v60;
              __os_log_helper_16_0_0(v59);
              _os_log_error_impl(&dword_240CB9000, v25, v26, "SQLITE Bad stream-to-table mapping data", v59, 2u);
            }

            objc_storeStrong(&oslog, 0);
          }

          ++v29;
          if (v27 + 1 >= v30)
          {
            v29 = 0;
            v30 = [v31 countByEnumeratingWithState:v62 objects:v88 count:16];
            if (!v30)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v31);
      [selfCopy setStreamToTableMap:v64];
      objc_storeStrong(&v64, 0);
      objc_storeStrong(&v65, 0);
    }

    [selfCopy setIndices:MEMORY[0x277CBEC10]];
    v55 = [location[0] objectForKey:AMD_SQLITE_SCHEMA_INDICES];
    v54 = 0;
    if (v55)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"Bad or missing table specs"];
        v14 = v23;
        *errorCopy = v23;
        v85 = 0;
        v78 = 1;
LABEL_54:
        objc_storeStrong(&v54, 0);
        objc_storeStrong(&v55, 0);
        objc_storeStrong(&v66, 0);
        goto LABEL_55;
      }

      v15 = [selfCopy addIndices:v55 error:errorCopy];
      v16 = v54;
      v54 = v15;
      MEMORY[0x277D82BD8](v16);
      if (!v54)
      {
        v85 = 0;
        v78 = 1;
        goto LABEL_54;
      }
    }

    v53 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      name2 = [selfCopy name];
      version3 = [selfCopy version];
      tables = [selfCopy tables];
      v18 = [tables count];
      streamToTableMap = [selfCopy streamToTableMap];
      __os_log_helper_16_2_5_8_64_8_64_8_0_8_0_8_64(v86, name2, version3, v18, [streamToTableMap count], v54);
      _os_log_debug_impl(&dword_240CB9000, v53, OS_LOG_TYPE_DEBUG, "SQLITE Prepared schema '%@', version '%@', table count: %lu, map count: %lu, indices: %@", v86, 0x34u);
      MEMORY[0x277D82BD8](streamToTableMap);
      MEMORY[0x277D82BD8](tables);
      MEMORY[0x277D82BD8](version3);
      MEMORY[0x277D82BD8](name2);
    }

    objc_storeStrong(&v53, 0);
    v85 = MEMORY[0x277D82BE0](selfCopy);
    v78 = 1;
    goto LABEL_54;
  }

  v47 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"No version in schema"];
  v5 = v47;
  *errorCopy = v47;
  v85 = 0;
  v78 = 1;
LABEL_57:
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v85;
}

+ (id)fetchColumnSpecsForTable:(id)table
{
  v30 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, table);
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = +[AMDSQLite getSharedInstance];
  if ([v21 getDb])
  {
    getDataSchema = [v21 getDataSchema];
    v19 = [getDataSchema getSchemaForTable:location[0]];
    MEMORY[0x277D82BD8](getDataSchema);
    if (v19)
    {
      getColumns = [v19 getColumns];
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x277D82BE0](getColumns);
      v12 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
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
            objc_enumerationMutation(obj);
          }

          v17 = *(__b[1] + 8 * v9);
          v15 = [getColumns objectForKey:v17];
          v27 = v17;
          v25 = AMD_SQLITE_TYPE;
          getTypeString = [v15 getTypeString];
          v26 = getTypeString;
          v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:?];
          v28 = v5;
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          MEMORY[0x277D82BD8](v5);
          MEMORY[0x277D82BD8](getTypeString);
          [v22 addObject:v14];
          objc_storeStrong(&v14, 0);
          objc_storeStrong(&v15, 0);
          ++v9;
          if (v7 + 1 >= v10)
          {
            v9 = 0;
            v10 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
            if (!v10)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](obj);
      v24 = MEMORY[0x277D82BE0](v22);
      v20 = 1;
      objc_storeStrong(&getColumns, 0);
    }

    else
    {
      v24 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
      v20 = 1;
    }

    objc_storeStrong(&v19, 0);
  }

  else
  {
    v24 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
    v20 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v3 = v24;

  return v3;
}

@end