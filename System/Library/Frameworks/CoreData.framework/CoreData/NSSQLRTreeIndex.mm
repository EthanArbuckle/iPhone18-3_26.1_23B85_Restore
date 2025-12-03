@interface NSSQLRTreeIndex
- (id)bulkUpdateStatementsForStore:(id)store;
- (id)dropStatementsForStore:(id)store;
- (id)generateStatementsForStore:(id)store;
- (id)initForIndexDescription:(id)description sqlEntity:(id)entity;
- (void)dealloc;
- (void)generateSQLStrings;
@end

@implementation NSSQLRTreeIndex

- (id)initForIndexDescription:(id)description sqlEntity:(id)entity
{
  v8.receiver = self;
  v8.super_class = NSSQLRTreeIndex;
  v6 = [NSSQLIndex initForIndexDescription:sel_initForIndexDescription_sqlEntity_ sqlEntity:?];
  if (v6)
  {
    v6[6] = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Z_%@_%@", objc_msgSend(entity, "name"), objc_msgSend(description, "name")];
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
  if (self)
  {
    selfCopy = self;
    context = objc_autoreleasePoolPush();
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v47 = [MEMORY[0x1E696AD60] stringWithString:&stru_1EF3F1768];
    v44 = [MEMORY[0x1E696AD60] stringWithString:&stru_1EF3F1768];
    v46 = [MEMORY[0x1E696AD60] stringWithString:&stru_1EF3F1768];
    v45 = [MEMORY[0x1E696AD60] stringWithString:&stru_1EF3F1768];
    v39 = [objc_msgSend(selfCopy "sqlEntity")];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [objc_msgSend(selfCopy "indexDescription")];
    v2 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (!v2)
    {
      goto LABEL_20;
    }

    v3 = v2;
    v4 = &stru_1EF3F1768;
    v5 = *v50;
    v6 = &stru_1EF3F1768;
    v7 = selfCopy;
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
        property = [v9 property];
        if (([property _propertyType] & 0xFFFFFFFFFFFFFFFBLL) == 2)
        {
          if (property && [property superCompositeAttribute])
          {
            _qualifiedName = [property _qualifiedName];
            sqlEntity = [selfCopy sqlEntity];
            if (sqlEntity)
            {
              sqlEntity2 = sqlEntity;
              goto LABEL_14;
            }
          }

          else
          {
            sqlEntity2 = [selfCopy sqlEntity];
            name = [property name];
            if (sqlEntity2)
            {
              _qualifiedName = name;
LABEL_14:
              sqlEntity = [*(sqlEntity2 + 40) objectForKey:_qualifiedName];
            }

            else
            {
              sqlEntity = 0;
            }
          }

          columnName = [sqlEntity columnName];
          [v47 appendFormat:@"%@%@_MIN, %@_MAX", v6, columnName, columnName];
          [v44 appendFormat:@"%@NEW.%@, NEW.%@", v6, columnName, columnName];
          [v45 appendFormat:@"%@%@, %@", v6, columnName, columnName];
          [v46 appendFormat:@"%@%@ NOT NULL", v4, columnName];
          selfCopy = v7;
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
        v18 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [selfCopy sqlEntity], objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"CREATE VIRTUAL TABLE IF NOT EXISTS %@ USING RTREE (Z_PK INTEGER PRIMARY KEY, %@)", selfCopy[6], v47));
        [v40 addObject:v18];

        v19 = [NSSQLiteStatement alloc];
        sqlEntity3 = [selfCopy sqlEntity];
        v21 = -[NSSQLiteStatement initWithEntity:sqlString:](v19, "initWithEntity:sqlString:", sqlEntity3, [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE IF EXISTS %@", selfCopy[6]]);
        [v41 addObject:v21];

        v22 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [selfCopy sqlEntity], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE TRIGGER IF NOT EXISTS %@_INSERT AFTER INSERT ON %@ FOR EACH ROW BEGIN INSERT OR REPLACE INTO %@ (Z_PK, %@) VALUES (NEW.Z_PK, %@) ; END", selfCopy[6], v39, selfCopy[6], v47, v44));
        [v40 addObject:v22];

        v23 = [NSSQLiteStatement alloc];
        sqlEntity4 = [selfCopy sqlEntity];
        v25 = -[NSSQLiteStatement initWithEntity:sqlString:](v23, "initWithEntity:sqlString:", sqlEntity4, [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TRIGGER IF EXISTS %@_INSERT", selfCopy[6]]);
        [v41 addObject:v25];

        v26 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [selfCopy sqlEntity], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE TRIGGER IF NOT EXISTS %@_UPDATE AFTER UPDATE ON %@ FOR EACH ROW BEGIN DELETE FROM %@ WHERE Z_PK = NEW.Z_PK ; INSERT INTO %@ (Z_PK, %@) VALUES (NEW.Z_PK, %@) ; END", selfCopy[6], v39, selfCopy[6], selfCopy[6], v47, v44));
        [v40 addObject:v26];

        v27 = [NSSQLiteStatement alloc];
        sqlEntity5 = [selfCopy sqlEntity];
        v29 = -[NSSQLiteStatement initWithEntity:sqlString:](v27, "initWithEntity:sqlString:", sqlEntity5, [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TRIGGER IF EXISTS %@_UPDATE", selfCopy[6]]);
        [v41 addObject:v29];

        v30 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [selfCopy sqlEntity], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CREATE TRIGGER IF NOT EXISTS %@_DELETE AFTER DELETE ON %@ FOR EACH ROW BEGIN DELETE FROM %@ WHERE Z_PK = OLD.Z_PK ; END", selfCopy[6], v39, selfCopy[6]));
        [v40 addObject:v30];

        v31 = [NSSQLiteStatement alloc];
        sqlEntity6 = [selfCopy sqlEntity];
        v33 = -[NSSQLiteStatement initWithEntity:sqlString:](v31, "initWithEntity:sqlString:", sqlEntity6, [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TRIGGER IF EXISTS %@_DELETE", selfCopy[6]]);
        [v41 addObject:v33];

        v34 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", [selfCopy sqlEntity], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"INSERT OR REPLACE INTO %@ (Z_PK, %@) SELECT Z_PK, %@ from %@ where %@", selfCopy[6], v47, v45, v39, v46));
        [v42 addObject:v34];

        objc_setProperty_nonatomic(selfCopy, v35, v40, 24);
        objc_setProperty_nonatomic(selfCopy, v36, v41, 32);

        objc_setProperty_nonatomic(selfCopy, v37, v42, 40);
        objc_autoreleasePoolPop(context);
        break;
      }
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (id)generateStatementsForStore:(id)store
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

- (id)dropStatementsForStore:(id)store
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

- (id)bulkUpdateStatementsForStore:(id)store
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