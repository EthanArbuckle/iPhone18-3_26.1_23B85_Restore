@interface AMDSQLiteTableSchema
- (AMDSQLiteTableSchema)initWithDict:(id)dict withName:(id)name error:(id *)error;
- (id)getCreateTableStatement;
- (id)getInsertStatement:(id)statement;
- (id)getSpecForColumn:(id)column;
@end

@implementation AMDSQLiteTableSchema

- (id)getCreateTableStatement
{
  v29 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v26[1] = a2;
  v17 = objc_alloc(MEMORY[0x277CBEB18]);
  columns = [(AMDSQLiteTableSchema *)selfCopy columns];
  v26[0] = [v17 initWithCapacity:{-[NSDictionary count](columns, "count")}];
  MEMORY[0x277D82BD8](columns);
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  columns2 = [(AMDSQLiteTableSchema *)selfCopy columns];
  obj = [(NSDictionary *)columns2 allValues];
  MEMORY[0x277D82BD8](columns2);
  v21 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v28 count:16];
  if (v21)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v21;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(__b[1] + 8 * v15);
      v11 = v26[0];
      getCreateStatementPart = [v24 getCreateStatementPart];
      [v11 addObject:?];
      MEMORY[0x277D82BD8](getCreateStatementPart);
      if ([v24 unique])
      {
        v9 = v25;
        name = [v24 name];
        [v9 addObject:?];
        MEMORY[0x277D82BD8](name);
      }

      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  if ([v25 count])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [v25 componentsJoinedByString:{@", "}];
    v22 = [v7 stringWithFormat:@"UNIQUE(%@)", v8];
    MEMORY[0x277D82BD8](v8);
    [v26[0] addObject:v22];
    objc_storeStrong(&v22, 0);
  }

  v3 = MEMORY[0x277CCACA8];
  name2 = [(AMDSQLiteTableSchema *)selfCopy name];
  v4 = [v26[0] componentsJoinedByString:{@", "}];
  v5 = [v3 stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@)", name2, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](name2);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v26, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

- (id)getInsertStatement:(id)statement
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statement);
  columns = [(AMDSQLiteTableSchema *)selfCopy columns];
  allKeys = [(NSDictionary *)columns allKeys];
  MEMORY[0x277D82BD8](columns);
  v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](allKeys, "count")}];
  v22 = 0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](allKeys);
  v18 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
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
      columns2 = [(AMDSQLiteTableSchema *)selfCopy columns];
      v19 = [(NSDictionary *)columns2 objectForKey:v21];
      MEMORY[0x277D82BD8](columns2);
      [location[0] addObject:v19];
      if ([v19 unique])
      {
        v22 = 1;
      }

      [v23 addObject:@"?"];
      objc_storeStrong(&v19, 0);
      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v6 = MEMORY[0x277CCACA8];
  v3 = @"INSERT OR REPLACE INTO %@(%@) VALUES(%@)";
  if ((v22 & 1) == 0)
  {
    v3 = @"INSERT INTO %@(%@) VALUES(%@)";
  }

  v5 = v3;
  name = [(AMDSQLiteTableSchema *)selfCopy name];
  v9 = [(NSArray *)allKeys componentsJoinedByString:?];
  v7 = [v23 componentsJoinedByString:{@", "}];
  v8 = [v6 stringWithFormat:v5, name, v9, v7];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](name);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&allKeys, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getSpecForColumn:(id)column
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, column);
  columns = [(AMDSQLiteTableSchema *)selfCopy columns];
  v5 = [(NSDictionary *)columns objectForKey:location[0]];
  MEMORY[0x277D82BD8](columns);
  objc_storeStrong(location, 0);

  return v5;
}

- (AMDSQLiteTableSchema)initWithDict:(id)dict withName:(id)name error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dict);
  v36 = 0;
  objc_storeStrong(&v36, name);
  errorCopy = error;
  v5 = selfCopy;
  selfCopy = 0;
  v34.receiver = v5;
  v34.super_class = AMDSQLiteTableSchema;
  selfCopy = [(AMDSQLiteTableSchema *)&v34 init];
  objc_storeStrong(&selfCopy, selfCopy);
  v33 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v42, v36);
    _os_log_debug_impl(&dword_240CB9000, v33, type, "SQLITE Loading schema for table '%@'", v42, 0xCu);
  }

  objc_storeStrong(&v33, 0);
  [selfCopy setName:v36];
  v31 = [location[0] count];
  if (v31)
  {
    v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v31];
    v28 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(location[0], "count")}];
    memset(__b, 0, sizeof(__b));
    v17 = MEMORY[0x277D82BE0](location[0]);
    v18 = [v17 countByEnumeratingWithState:__b objects:v41 count:16];
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
          objc_enumerationMutation(v17);
        }

        v27 = *(__b[1] + 8 * v15);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v25 = MEMORY[0x277D82BE0](v27);
        v24 = [location[0] objectForKey:v27];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [AMDSQLiteColumnSpec alloc];
          v23 = [(AMDSQLiteColumnSpec *)v9 initWithDict:v24 withName:v25 error:errorCopy];
          if (v23)
          {
            if ([v23 isRequired])
            {
              [v28 addObject:v25];
            }

            [v29 setObject:v23 forKey:v25];
            v30 = 0;
          }

          else
          {
            v39 = 0;
            v30 = 1;
          }

          objc_storeStrong(&v23, 0);
        }

        else
        {
          v11 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"Column spec not a dict"];
          v8 = v11;
          *errorCopy = v11;
          v39 = 0;
          v30 = 1;
        }

        objc_storeStrong(&v24, 0);
        objc_storeStrong(&v25, 0);
        if (v30)
        {
          goto LABEL_23;
        }

        ++v15;
        if (v13 + 1 >= v16)
        {
          v15 = 0;
          v16 = [v17 countByEnumeratingWithState:__b objects:v41 count:16];
          if (!v16)
          {
            goto LABEL_22;
          }
        }
      }

      v12 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"Column name not string"];
      v7 = v12;
      *errorCopy = v12;
      v39 = 0;
      v30 = 1;
    }

    else
    {
LABEL_22:
      v30 = 0;
    }

LABEL_23:
    MEMORY[0x277D82BD8](v17);
    if (!v30)
    {
      [selfCopy setColumns:v29];
      [selfCopy setRequiredColumns:v28];
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_4_0_4_0(v40, v36, v31, [v28 count]);
        _os_log_debug_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_DEBUG, "SQLITE Loaded schema for table '%@' (%u columns, %u required)", v40, 0x18u);
      }

      objc_storeStrong(&oslog, 0);
      v39 = MEMORY[0x277D82BE0](selfCopy);
      v30 = 1;
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    v19 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"No columns in table"];
    v6 = v19;
    *errorCopy = v19;
    v39 = 0;
    v30 = 1;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v39;
}

@end