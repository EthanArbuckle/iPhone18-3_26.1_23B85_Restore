@interface AMDSQLiteTableSchema
- (AMDSQLiteTableSchema)initWithDict:(id)a3 withName:(id)a4 error:(id *)a5;
- (id)getCreateTableStatement;
- (id)getInsertStatement:(id)a3;
- (id)getSpecForColumn:(id)a3;
@end

@implementation AMDSQLiteTableSchema

- (id)getCreateTableStatement
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = self;
  v26[1] = a2;
  v17 = objc_alloc(MEMORY[0x277CBEB18]);
  v18 = [(AMDSQLiteTableSchema *)v27 columns];
  v26[0] = [v17 initWithCapacity:{-[NSDictionary count](v18, "count")}];
  MEMORY[0x277D82BD8](v18);
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  v19 = [(AMDSQLiteTableSchema *)v27 columns];
  obj = [(NSDictionary *)v19 allValues];
  MEMORY[0x277D82BD8](v19);
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
      v12 = [v24 getCreateStatementPart];
      [v11 addObject:?];
      MEMORY[0x277D82BD8](v12);
      if ([v24 unique])
      {
        v9 = v25;
        v10 = [v24 name];
        [v9 addObject:?];
        MEMORY[0x277D82BD8](v10);
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
  v6 = [(AMDSQLiteTableSchema *)v27 name];
  v4 = [v26[0] componentsJoinedByString:{@", "}];
  v5 = [v3 stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@)", v6, v4];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v26, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

- (id)getInsertStatement:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = [(AMDSQLiteTableSchema *)v26 columns];
  v24 = [(NSDictionary *)v16 allKeys];
  MEMORY[0x277D82BD8](v16);
  v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](v24, "count")}];
  v22 = 0;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v24);
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
      v11 = [(AMDSQLiteTableSchema *)v26 columns];
      v19 = [(NSDictionary *)v11 objectForKey:v21];
      MEMORY[0x277D82BD8](v11);
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
  v10 = [(AMDSQLiteTableSchema *)v26 name];
  v9 = [(NSArray *)v24 componentsJoinedByString:?];
  v7 = [v23 componentsJoinedByString:{@", "}];
  v8 = [v6 stringWithFormat:v5, v10, v9, v7];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

- (id)getSpecForColumn:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AMDSQLiteTableSchema *)v7 columns];
  v5 = [(NSDictionary *)v4 objectForKey:location[0]];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);

  return v5;
}

- (AMDSQLiteTableSchema)initWithDict:(id)a3 withName:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35 = a5;
  v5 = v38;
  v38 = 0;
  v34.receiver = v5;
  v34.super_class = AMDSQLiteTableSchema;
  v38 = [(AMDSQLiteTableSchema *)&v34 init];
  objc_storeStrong(&v38, v38);
  v33 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v42, v36);
    _os_log_debug_impl(&dword_240CB9000, v33, type, "SQLITE Loading schema for table '%@'", v42, 0xCu);
  }

  objc_storeStrong(&v33, 0);
  [v38 setName:v36];
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
          v23 = [(AMDSQLiteColumnSpec *)v9 initWithDict:v24 withName:v25 error:v35];
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
          *v35 = v11;
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
      *v35 = v12;
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
      [v38 setColumns:v29];
      [v38 setRequiredColumns:v28];
      oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_4_0_4_0(v40, v36, v31, [v28 count]);
        _os_log_debug_impl(&dword_240CB9000, oslog, OS_LOG_TYPE_DEBUG, "SQLITE Loaded schema for table '%@' (%u columns, %u required)", v40, 0x18u);
      }

      objc_storeStrong(&oslog, 0);
      v39 = MEMORY[0x277D82BE0](v38);
      v30 = 1;
    }

    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  else
  {
    v19 = [AMDMiscHelpers logAndCreateError:29 errorMessage:@"No columns in table"];
    v6 = v19;
    *v35 = v19;
    v39 = 0;
    v30 = 1;
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v38, 0);
  *MEMORY[0x277D85DE8];
  return v39;
}

@end