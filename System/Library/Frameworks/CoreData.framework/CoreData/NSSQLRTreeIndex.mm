@interface NSSQLRTreeIndex
- (id)bulkUpdateStatementsForStore:(id)a3;
- (id)dropStatementsForStore:(id)a3;
- (id)generateStatementsForStore:(id)a3;
- (id)initForIndexDescription:(id)a3 sqlEntity:(id)a4;
- (void)dealloc;
- (void)generateSQLStrings;
@end

@implementation NSSQLRTreeIndex

- (id)initForIndexDescription:(id)a3 sqlEntity:(id)a4
{
  v8.receiver = self;
  v8.super_class = NSSQLRTreeIndex;
  v6 = [NSSQLIndex initForIndexDescription:sel_initForIndexDescription_sqlEntity_ sqlEntity:?];
  if (v6)
  {
    v6[6] = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_%@_%@", objc_msgSend(a4, "name"), objc_msgSend(a3, "name")];
  }

  return v6;
}

- (void)dealloc
{
  self->_tableName = 0;
  v3.receiver = self;
  v3.super_class = NSSQLRTreeIndex;
  [(NSSQLIndex *)&v3 dealloc];
}

- (void)generateSQLStrings
{
  v54 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    context = objc_autoreleasePoolPush();
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v47 = [MEMORY[0x1E696AD60] stringWithString:&stru_1EF3F1768];
    v44 = [MEMORY[0x1E696AD60] stringWithString:&stru_1EF3F1768];
    v46 = [MEMORY[0x1E696AD60] stringWithString:&stru_1EF3F1768];
    v45 = [MEMORY[0x1E696AD60] stringWithString:&stru_1EF3F1768];
    v39 = [objc_msgSend(v1 "sqlEntity")];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [objc_msgSend(v1 "indexDescription")];
    v2 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (!v2)
    {
      goto LABEL_20;
    }

    v3 = v2;
    v4 = &stru_1EF3F1768;
    v5 = *v50;
    v6 = &stru_1EF3F1768;
    v7 = v1;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v50 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v49 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 property];
        if (([v11 _propertyType] & 0xFFFFFFFFFFFFFFFBLL) == 2)
        {
          if (v11 && [v11 superCompositeAttribute])
          {
            v12 = [v11 _qualifiedName];
            v13 = [v1 sqlEntity];
            if (v13)
            {
              v14 = v13;
              goto LABEL_14;
            }
          }

          else
          {
            v14 = [v1 sqlEntity];
            v15 = [v11 name];
            if (v14)
            {
              v12 = v15;
LABEL_14:
              v13 = [*(v14 + 40) objectForKey:v12];
            }

            else
            {
              v13 = 0;
            }
          }

          v16 = [v13 columnName];
          [v47 appendFormat:@"%@%@_MIN, %@_MAX", v6, v16, v16];
          [v44 appendFormat:@"%@NEW.%@, NEW.%@", v6, v16, v16];
          [v45 appendFormat:@"%@%@, %@", v6, v16, v16];
          [v46 appendFormat:@"%@%@ NOT NULL", v4, v16];
          v1 = v7;
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
        v4 = @" AND ";
        v6 = @", ";
      }

      while (v3 != v8);
      v17 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
      v3 = v17;
      v4 = @" AND ";
      if (!v17)
      {
LABEL_20:
        v18 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [v1 sqlEntity], objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"CREATE VIRTUAL TABLE IF NOT EXISTS %@ USING RTREE (Z_PK INTEGER PRIMARY KEY, %@)", v1[6], v47));
        [v40 addObject:v18];

        v19 = [NSSQLiteStatement alloc];
        v20 = [v1 sqlEntity];
        v21 = -[NSSQLiteStatement initWithEntity:sqlString:](v19, "initWithEntity:sqlString:", v20, [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE IF EXISTS %@", v1[6]]);
        [v41 addObject:v21];

        v22 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [v1 sqlEntity], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW BEGIN INSERT OR REPLACE INTO %@ (Z_PK, %@) VALUES (NEW.Z_PK, %@) ; END", v1[6], v39, v1[6], v47, v44));
        [v40 addObject:v22];

        v23 = [NSSQLiteStatement alloc];
        v24 = [v1 sqlEntity];
        v25 = -[NSSQLiteStatement initWithEntity:sqlString:](v23, "initWithEntity:sqlString:", v24, [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", v1[6]]);
        [v41 addObject:v25];

        v26 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [v1 sqlEntity], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE TRIGGER IF NOT EXISTS %@_UPDATE AFTER UPDATE ON %@ FOR EACH ROW BEGIN DELETE FROM %@ WHERE Z_PK = NEW.Z_PK ; INSERT INTO %@ (Z_PK, %@) VALUES (NEW.Z_PK, %@) ; END", v1[6], v39, v1[6], v1[6], v47, v44));
        [v40 addObject:v26];

        v27 = [NSSQLiteStatement alloc];
        v28 = [v1 sqlEntity];
        v29 = -[NSSQLiteStatement initWithEntity:sqlString:](v27, "initWithEntity:sqlString:", v28, [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE", v1[6]]);
        [v41 addObject:v29];

        v30 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [v1 sqlEntity], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE TRIGGER IF NOT EXISTS %@_DELETE AFTER DELETE ON %@ FOR EACH ROW BEGIN DELETE FROM %@ WHERE Z_PK = OLD.Z_PK ; END", v1[6], v39, v1[6]));
        [v40 addObject:v30];

        v31 = [NSSQLiteStatement alloc];
        v32 = [v1 sqlEntity];
        v33 = -[NSSQLiteStatement initWithEntity:sqlString:](v31, "initWithEntity:sqlString:", v32, [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TRIGGER IF EXISTS %@_DELETE", v1[6]]);
        [v41 addObject:v33];

        v34 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [v1 sqlEntity], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"INSERT OR REPLACE INTO %@ (Z_PK, %@) SELECT Z_PK, %@ from %@ where %@", v1[6], v47, v45, v39, v46));
        [v42 addObject:v34];

        objc_setProperty_nonatomic(v1, v35, v40, 24);
        objc_setProperty_nonatomic(v1, v36, v41, 32);

        objc_setProperty_nonatomic(v1, v37, v42, 40);
        objc_autoreleasePoolPop(context);
        break;
      }
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (id)generateStatementsForStore:(id)a3
{
  if (self)
  {
    result = self->super._createStrings;
    if (!result)
    {
      [(NSSQLRTreeIndex *)self generateSQLStrings];
      return self->super._createStrings;
    }
  }

  else
  {
    [(NSSQLRTreeIndex *)0 generateSQLStrings];
    return 0;
  }

  return result;
}

- (id)dropStatementsForStore:(id)a3
{
  if (self)
  {
    result = self->super._dropStrings;
    if (!result)
    {
      [(NSSQLRTreeIndex *)self generateSQLStrings];
      return self->super._dropStrings;
    }
  }

  else
  {
    [(NSSQLRTreeIndex *)0 generateSQLStrings];
    return 0;
  }

  return result;
}

- (id)bulkUpdateStatementsForStore:(id)a3
{
  if (self)
  {
    result = self->super._updateStrings;
    if (!result)
    {
      [(NSSQLRTreeIndex *)self generateSQLStrings];
      return self->super._updateStrings;
    }
  }

  else
  {
    [(NSSQLRTreeIndex *)0 generateSQLStrings];
    return 0;
  }

  return result;
}

@end