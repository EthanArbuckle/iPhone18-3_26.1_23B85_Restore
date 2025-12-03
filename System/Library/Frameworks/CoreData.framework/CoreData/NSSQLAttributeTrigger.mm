@interface NSSQLAttributeTrigger
- (BOOL)isEqualToExtension:(id)extension;
- (BOOL)validate:(id *)validate;
- (BOOL)validatePredicate:(uint64_t *)predicate error:;
- (NSArray)bulkUpdateSQLStrings;
- (NSArray)dropSQLStrings;
- (NSSQLAttributeTrigger)initWithObjectFromUserInfo:(id)info onAttributeNamed:(id)named onEntity:(id)entity;
- (void)dealloc;
@end

@implementation NSSQLAttributeTrigger

- (void)dealloc
{
  self->_attribute = 0;

  self->_entity = 0;
  self->_relationship = 0;

  self->_destinationEntity = 0;
  self->_destinationAttributes = 0;

  self->_predicate = 0;
  self->_predicateString = 0;

  self->_mToManyInnerFetchWhereClause = 0;
  self->_mToManyIncrementWhenClause = 0;

  self->_mToManyDecrementWhenClause = 0;
  self->_mOfClause = 0;

  self->_mOldMatchingClause = 0;
  self->_mNewMatchingClause = 0;

  self->_mColumnChangedClause = 0;
  self->_mBulkChangeStrings = 0;

  self->_mSqlDropStrings = 0;
  self->_insertSQLStrings = 0;
  v3.receiver = self;
  v3.super_class = NSSQLAttributeTrigger;
  [(NSSQLAttributeTrigger *)&v3 dealloc];
}

- (NSSQLAttributeTrigger)initWithObjectFromUserInfo:(id)info onAttributeNamed:(id)named onEntity:(id)entity
{
  v11.receiver = self;
  v11.super_class = NSSQLAttributeTrigger;
  v8 = [(NSSQLAttributeTrigger *)&v11 init];
  if (v8)
  {
    if (entity)
    {
      v9 = [*(entity + 5) objectForKey:named];
    }

    else
    {
      v9 = 0;
    }

    v8->_attribute = v9;
    v8->_entity = entity;
    v8->_predicateString = info;
    v8->_mToManyDecrementWhenClause = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8->_mToManyIncrementWhenClause = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8->_mToManyInnerFetchWhereClause = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8->_mOfClause = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8->_mOldMatchingClause = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8->_mNewMatchingClause = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8->_mColumnChangedClause = objc_alloc_init(MEMORY[0x1E696AD60]);
    v8->_destinationAttributes = NSArray_EmptyArray;
    v8->_mBulkChangeStrings = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_mSqlDropStrings = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_insertSQLStrings = 0;
  }

  return v8;
}

- (BOOL)isEqualToExtension:(id)extension
{
  v11.receiver = self;
  v11.super_class = NSSQLAttributeTrigger;
  if (([(NSSQLAttributeTrigger *)&v11 isEqual:?]& 1) != 0)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (extension)
    {
      if ([(NSString *)self->_predicateString isEqualToString:objc_getProperty(extension, v6, 16, 1)]&& [(NSSQLProperty *)self->_attribute isEqual:objc_getProperty(extension, v7, 32, 1)])
      {
        entity = self->_entity;
        Property = objc_getProperty(extension, v8, 24, 1);
        return [(NSStoreMapping *)entity isEqual:Property];
      }
    }

    else if ([(NSString *)self->_predicateString isEqualToString:0]&& [(NSSQLProperty *)self->_attribute isEqual:0])
    {
      Property = 0;
      entity = self->_entity;
      return [(NSStoreMapping *)entity isEqual:Property];
    }
  }

  return 0;
}

- (NSArray)bulkUpdateSQLStrings
{
  v2 = [(NSMutableArray *)self->_mBulkChangeStrings copy];

  return v2;
}

- (NSArray)dropSQLStrings
{
  v2 = [(NSMutableArray *)self->_mSqlDropStrings copy];

  return v2;
}

- (BOOL)validate:(id *)validate
{
  v110 = *MEMORY[0x1E69E9840];
  v105 = 0;
  if (self)
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:self->_predicateString];
    self->_predicate = v5;
    if ([(NSSQLAttributeTrigger *)self validatePredicate:v5 error:&v105])
    {
      columnName = [(NSSQLColumn *)self->_attribute columnName];
      tableName = [(NSSQLEntity *)self->_entity tableName];
      tableName2 = [(NSSQLEntity *)self->_destinationEntity tableName];
      v104 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ZT_%@_%@_%@", tableName, columnName, tableName2];
      entity = self->_entity;
      if (entity)
      {
        primaryKey = entity->_primaryKey;
      }

      else
      {
        primaryKey = 0;
      }

      columnName2 = [(NSSQLColumn *)primaryKey columnName];
      v11 = self->_entity;
      if (v11)
      {
        entityKey = v11->_entityKey;
      }

      else
      {
        entityKey = 0;
      }

      columnName3 = [(NSSQLColumn *)entityKey columnName];
      v103 = objc_opt_new();
      relationship = self->_relationship;
      if (relationship && LOBYTE(relationship->length) == 9)
      {
        correlationTableName = [(NSSQLRelationship *)self->_relationship correlationTableName];
        columnName4 = [(__CFString *)relationship columnName];
        inverseColumnName = [(NSSQLManyToMany *)relationship inverseColumnName];
        v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_INSERT_INCREMENT", v104, correlationTableName];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v17];
        [v16 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@ AFTER INSERT ON %@ FOR EACH ROW", v17, correlationTableName];
        [v16 appendString:@" BEGIN"];
        [v16 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1", tableName, columnName, columnName];
        [v16 appendFormat:@" WHERE NEW.%@ IN (SELECT %@ FROM %@ WHERE %@)", inverseColumnName, columnName2, tableName2, self->_mToManyInnerFetchWhereClause];
        [v16 appendFormat:@" AND NEW.%@ = %@;", columnName4, columnName2];
        [v16 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName4];
        [v16 appendFormat:@" END"];
        [(NSMutableArray *)self->_mSqlDropStrings addObject:v18];

        [v103 addObject:v16];
        v19 = objc_alloc_init(MEMORY[0x1E696AD60]);
        v102 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_UPDATE_INCREMENT", v104];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v102];
        [v19 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v102];
        [v19 appendFormat:@" AFTER UPDATE OF %@ ON %@ FOR EACH ROW", self->_mOfClause, tableName2];
        [v19 appendFormat:@" WHEN %@", self->_mToManyIncrementWhenClause];
        [v19 appendString:@" BEGIN"];
        [v19 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1", tableName, columnName, columnName];
        [v19 appendFormat:@" WHERE %@ IN (SELECT %@ FROM %@ WHERE %@ = NEW.%@ AND (%@));", columnName2, columnName4, correlationTableName, inverseColumnName, columnName2, self->_mNewMatchingClause];
        [v19 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName2];
        [v19 appendString:@" END"];
        [v103 addObject:v19];
        [(NSMutableArray *)self->_mSqlDropStrings addObject:v21];

        v22 = objc_alloc_init(MEMORY[0x1E696AD60]);
        v1022 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_UPDATE_DECREMENT", v104];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v1022];
        [v22 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v1022];
        [v22 appendFormat:@" AFTER UPDATE OF %@ ON %@ FOR EACH ROW", self->_mOfClause, tableName2];
        [v22 appendFormat:@" WHEN %@", self->_mToManyDecrementWhenClause];
        [v22 appendString:@" BEGIN"];
        [v22 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1)", tableName, columnName, columnName];
        [v22 appendFormat:@" WHERE %@ IN (SELECT %@ FROM %@ WHERE %@ = NEW.%@ AND (%@));", columnName2, columnName4, correlationTableName, inverseColumnName, columnName2, self->_mOldMatchingClause];
        [v22 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName2];
        [v22 appendString:@" END"];
        [v103 addObject:v22];
        [(NSMutableArray *)self->_mSqlDropStrings addObject:v24];

        v25 = objc_alloc_init(MEMORY[0x1E696AD60]);
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_DELETE_DECREMENT", v104, correlationTableName];
        v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v26];
        [v25 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@ AFTER DELETE ON %@ FOR EACH ROW", v26, correlationTableName];
        [v25 appendFormat:@" BEGIN"];
        [v25 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1)", tableName, columnName, columnName];
        [v25 appendFormat:@" WHERE OLD.%@ IN (SELECT %@ FROM %@ WHERE %@)", inverseColumnName, columnName2, tableName2, self->_mToManyInnerFetchWhereClause];
        [v25 appendFormat:@" AND OLD.%@ = %@;", columnName4, columnName2];
        [v25 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = OLD.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName4];
        [v25 appendFormat:@" END"];
        [v103 addObject:v25];
        [(NSMutableArray *)self->_mSqlDropStrings addObject:v27];

        v28 = objc_alloc_init(MEMORY[0x1E696AD60]);
        v1023 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_DELETE_DECREMENT", v104];
        v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v1023];
        [v28 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@ AFTER DELETE ON %@ FOR EACH ROW WHEN %@", v1023, tableName2, self->_mOldMatchingClause];
        [v28 appendFormat:@" BEGIN"];
        [v28 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1)", tableName, columnName, columnName];
        [v28 appendFormat:@" WHERE %@ IN (SELECT %@ FROM %@ WHERE %@ = OLD.%@ AND (%@));", columnName2, columnName4, correlationTableName, inverseColumnName, columnName2, self->_mOldMatchingClause];
        [v28 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = OLD.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName2];
        [v28 appendFormat:@" END"];
        [v103 addObject:v28];
        [(NSMutableArray *)self->_mSqlDropStrings addObject:v30];

        v1024 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"COUNT_%@", v104];
        v32 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"CREATE TEMP TABLE %@ AS", v1024];
        [v32 appendFormat:@" SELECT %@, COUNT(DISTINCT(%@.%@)) AS COUNT", columnName4, tableName2, columnName2];
        [v32 appendFormat:@" FROM %@, %@", tableName2, correlationTableName];
        [v32 appendFormat:@" WHERE %@ AND %@.%@ == %@.%@", self->_mToManyInnerFetchWhereClause, correlationTableName, inverseColumnName, tableName2, columnName2];
        [v32 appendFormat:@" GROUP BY %@;", columnName4];
        p_mBulkChangeStrings = &self->_mBulkChangeStrings;
        [(NSMutableArray *)self->_mBulkChangeStrings addObject:v32];

        v34 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" CREATE INDEX %@_INDEX ON %@(%@, COUNT);", v1024, v1024, columnName4];
        [(NSMutableArray *)self->_mBulkChangeStrings addObject:v34];

        v35 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" UPDATE %@ SET %@ = IFNULL((SELECT COUNT FROM %@ WHERE %@ = %@), 0);", tableName, columnName, v1024, columnName2, columnName4];
      }

      else
      {
        isToMany = [(NSSQLProperty *)self->_relationship isToMany];
        v37 = self->_relationship;
        if (isToMany)
        {
          if (v37)
          {
            v37 = v37->_inverse;
          }

          columnName5 = [(NSSQLProperty *)v37 columnName];
          v39 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v1025 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_INSERT_INCREMENT", v104];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v1025];
          [v39 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v1025];
          [v39 appendFormat:@" AFTER INSERT ON %@ FOR EACH ROW WHEN %@", tableName2, self->_mNewMatchingClause];
          [v39 appendFormat:@" BEGIN"];
          [v39 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1", tableName, columnName, columnName];
          [v39 appendFormat:@" WHERE NEW.%@ = %@;", columnName5, columnName2];
          [v39 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName5];
          [v39 appendFormat:@" END"];
          [v103 addObject:v39];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v41];

          v42 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v1026 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_UPDATE_INCREMENT", v104];
          v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v1026];
          [v42 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v1026];
          [v42 appendFormat:@" AFTER UPDATE OF %@ ON %@", self->_mOfClause, tableName2];
          mNewMatchingClause = self->_mNewMatchingClause;
          [v42 appendFormat:@" FOR EACH ROW WHEN (%@) AND (%@) AND (NEW.%@ == OLD.%@)", mNewMatchingClause, self->_mColumnChangedClause, columnName5, columnName5];
          [v42 appendFormat:@" BEGIN"];
          [v42 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1", tableName, columnName, columnName];
          [v42 appendFormat:@" WHERE NEW.%@ = %@;", columnName5, columnName2];
          [v42 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName5];
          [v42 appendFormat:@" END"];
          [v103 addObject:v42];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v44];

          v46 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v1027 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_UPDATE_DECREMENT", v104];
          v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v1027];
          [v46 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v1027];
          [v46 appendFormat:@" AFTER UPDATE OF %@ ON %@", self->_mOfClause, tableName2];
          mOldMatchingClause = self->_mOldMatchingClause;
          [v46 appendFormat:@" FOR EACH ROW WHEN (%@) AND (%@) AND (OLD.%@ == NEW.%@)", mOldMatchingClause, self->_mColumnChangedClause, columnName5, columnName5];
          [v46 appendFormat:@" BEGIN"];
          [v46 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1)", tableName, columnName, columnName];
          [v46 appendFormat:@" WHERE OLD.%@ = %@;", columnName5, columnName2];
          [v46 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName5];
          [v46 appendFormat:@" END"];
          [v103 addObject:v46];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v48];

          v50 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v1028 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_DELETE_DECREMENT", v104];
          v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v1028];
          [v50 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v1028];
          [v50 appendFormat:@" AFTER DELETE ON %@ FOR EACH ROW WHEN %@", tableName2, self->_mOldMatchingClause];
          [v50 appendFormat:@" BEGIN"];
          [v50 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1) WHERE OLD.%@ = %@;", tableName, columnName, columnName, columnName5, columnName2];
          [v50 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = OLD.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName5];
          [v50 appendFormat:@" END"];
          [v103 addObject:v50];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v52];

          v53 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_INSERT_INCREMENT", v104, tableName];
          v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v54];
          [v53 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v54];
          [v53 appendFormat:@" AFTER INSERT ON %@ FOR EACH ROW", tableName];
          [v53 appendFormat:@" BEGIN"];
          [v53 appendFormat:@" UPDATE %@ SET %@ = (SELECT COUNT(%@) FROM %@ WHERE (%@ = NEW.%@) AND (%@)) WHERE %@ = NEW.%@;", tableName, columnName, columnName2, tableName2, columnName5, columnName2, self->_mToManyInnerFetchWhereClause, columnName2, columnName2];
          [v53 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName2];
          [v53 appendFormat:@" END"];
          [v103 addObject:v53];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v55];

          v56 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_UPDATE_INCREMENT", v104, columnName5];
          v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v57];
          [v56 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v57];
          [v56 appendFormat:@" AFTER UPDATE OF %@ ON %@ WHEN (%@) AND", columnName5, tableName2, self->_mNewMatchingClause];
          [v56 appendFormat:@" ((NEW.%@ IS NOT NULL AND OLD.%@ IS NULL) OR (NEW.%@ != OLD.%@))", columnName5, columnName5, columnName5, columnName5];
          [v56 appendFormat:@" BEGIN"];
          [v56 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1 WHERE %@ = NEW.%@;", tableName, columnName, columnName, columnName2, columnName5];
          [v56 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName5];
          [v56 appendFormat:@" END"];
          [v103 addObject:v56];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v58];

          v59 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_UPDATE_DECREMENT", v104, columnName5];
          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v60];
          [v59 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v60];
          [v59 appendFormat:@" AFTER UPDATE OF %@ ON %@ WHEN (%@) AND", columnName5, tableName2, self->_mOldMatchingClause];
          [v59 appendFormat:@" ((OLD.%@ IS NOT NULL AND NEW.%@ IS NULL) OR (NEW.%@ != OLD.%@))", columnName5, columnName5, columnName5, columnName5];
          [v59 appendFormat:@" BEGIN"];
          [v59 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1) WHERE %@ = OLD.%@;", tableName, columnName, columnName, columnName2, columnName5];
          [v59 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = OLD.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName5];
          [v59 appendFormat:@" END"];
          [v103 addObject:v59];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v61];

          v1024 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"COUNT_%@", v104];
          v62 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"CREATE TEMP TABLE %@ AS", v1024];
          [v62 appendFormat:@" SELECT %@, COUNT(DISTINCT(%@.%@)) AS COUNT", columnName5, tableName2, columnName2];
          [v62 appendFormat:@" FROM %@", tableName2];
          [v62 appendFormat:@" WHERE %@", self->_mToManyInnerFetchWhereClause];
          [v62 appendFormat:@" GROUP BY %@;", columnName5];
          p_mBulkChangeStrings = &self->_mBulkChangeStrings;
          [(NSMutableArray *)self->_mBulkChangeStrings addObject:v62];

          v63 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" CREATE INDEX %@_INDEX ON %@(%@, COUNT);", v1024, v1024, columnName5];
          [(NSMutableArray *)self->_mBulkChangeStrings addObject:v63];

          v35 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" UPDATE %@ SET %@ = IFNULL((SELECT COUNT FROM %@ WHERE %@ = %@), 0);", tableName, columnName, v1024, columnName2, columnName5];
        }

        else
        {
          if (!v37 || v37->super._propertyType != 7)
          {
LABEL_18:
            if ([v103 count])
            {
              v92 = [v103 copy];

              if (v92)
              {
LABEL_27:
                self->_insertSQLStrings = v92;
                LOBYTE(v95) = 1;
                goto LABEL_38;
              }
            }

            else
            {
            }

            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v107 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
              v108 = 1024;
              v109 = 584;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
            }

            v94 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v107 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
              v108 = 1024;
              v109 = 584;
              _os_log_fault_impl(&dword_18565F000, v94, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
            }

            v92 = 0;
            goto LABEL_27;
          }

          columnName6 = [(NSSQLProperty *)v37 columnName];
          v65 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v1029 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_INSERT_INCREMENT", v104];
          v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v1029];
          [v65 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v1029];
          [v65 appendFormat:@" AFTER INSERT ON %@ FOR EACH ROW WHEN %@", tableName2, self->_mNewMatchingClause];
          [v65 appendFormat:@" BEGIN"];
          [v65 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1", tableName, columnName, columnName];
          [v65 appendFormat:@" WHERE NEW.%@ = %@;", columnName2, columnName6];
          [v65 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName6, columnName2];
          [v65 appendFormat:@" END"];
          [v103 addObject:v65];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v67];

          v68 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v10210 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_UPDATE_INCREMENT", v104];
          v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v10210];
          [v68 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v10210];
          [v68 appendFormat:@" AFTER UPDATE OF %@ ON %@", self->_mOfClause, tableName2];
          v71 = self->_mNewMatchingClause;
          [v68 appendFormat:@" FOR EACH ROW WHEN (%@) AND (%@)", v71, self->_mColumnChangedClause];
          [v68 appendFormat:@" BEGIN"];
          [v68 appendFormat:@" UPDATE %@ SET %@ = IFNULL(%@, 0) + 1", tableName, columnName, columnName];
          [v68 appendFormat:@" WHERE NEW.%@ = %@;", columnName2, columnName6];
          [v68 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName6, columnName2];
          [v68 appendFormat:@" END"];
          [v103 addObject:v68];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v70];

          v72 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v10211 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_UPDATE_DECREMENT", v104];
          v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v10211];
          [v72 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v10211];
          [v72 appendFormat:@" AFTER UPDATE OF %@ ON %@", self->_mOfClause, tableName2];
          v75 = self->_mOldMatchingClause;
          [v72 appendFormat:@" FOR EACH ROW WHEN (%@) AND (%@)", v75, self->_mColumnChangedClause];
          [v72 appendFormat:@" BEGIN"];
          [v72 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1)", tableName, columnName, columnName];
          [v72 appendFormat:@" WHERE OLD.%@ = %@;", columnName2, columnName6];
          [v72 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName6, columnName2];
          [v72 appendFormat:@" END"];
          [v103 addObject:v72];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v74];

          v76 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v10212 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_DELETE_DECREMENT", v104];
          v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v10212];
          [v76 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v10212];
          [v76 appendFormat:@" AFTER DELETE ON %@ FOR EACH ROW WHEN %@", tableName2, self->_mOldMatchingClause];
          [v76 appendFormat:@" BEGIN"];
          [v76 appendFormat:@" UPDATE %@ SET %@ = MAX(0, IFNULL(%@, 0) - 1) WHERE OLD.%@ = %@;", tableName, columnName, columnName, columnName2, columnName6];
          [v76 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = OLD.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName6, columnName2];
          [v76 appendFormat:@" END"];
          [v103 addObject:v76];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v78];

          v79 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_INSERT_INCREMENT", v104, tableName];
          v81 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v80];
          [v79 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v80];
          [v79 appendFormat:@" AFTER INSERT ON %@ FOR EACH ROW", tableName];
          [v79 appendFormat:@" BEGIN"];
          [v79 appendFormat:@" UPDATE %@ SET %@ = (SELECT COUNT(%@) FROM %@ WHERE (%@ = NEW.%@) AND (%@)) WHERE %@ = NEW.%@;", tableName, columnName, columnName2, tableName2, columnName2, columnName6, self->_mToManyInnerFetchWhereClause, columnName2, columnName2];
          [v79 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName2];
          [v79 appendFormat:@" END"];
          [v103 addObject:v79];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v81];

          v82 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_UPDATE_TO_NULL", v104, columnName6];
          v84 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v83];
          [v82 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v83];
          [v82 appendFormat:@" AFTER UPDATE OF %@ ON %@ WHEN", columnName6, tableName];
          [v82 appendFormat:@" (NEW.%@ IS NULL AND OLD.%@ IS NOT NULL)", columnName6, columnName6];
          [v82 appendFormat:@" BEGIN"];
          [v82 appendFormat:@" UPDATE %@ SET %@ = 0 WHERE %@ = NEW.%@;", tableName, columnName, columnName2, columnName2];
          [v82 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName2];
          [v82 appendFormat:@" END"];
          [v103 addObject:v82];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v84];

          v85 = objc_alloc_init(MEMORY[0x1E696AD60]);
          v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_UPDATE_INCREMENT", v104, columnName6];
          v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS %@", v86];
          [v85 appendFormat:@"CREATE TRIGGER IF NOT EXISTS %@", v86];
          [v85 appendFormat:@" AFTER UPDATE OF %@ ON %@ WHEN", columnName6, tableName];
          [v85 appendFormat:@" ((NEW.%@ IS NOT NULL AND OLD.%@ IS NULL) OR (NEW.%@ != OLD.%@))", columnName6, columnName6, columnName6, columnName6];
          [v85 appendFormat:@" BEGIN"];
          [v85 appendFormat:@" UPDATE %@ SET %@ = (SELECT COUNT(%@) FROM %@ WHERE %@ = NEW.%@ AND (%@)) WHERE %@ = NEW.%@;", tableName, columnName, columnName2, tableName2, columnName2, columnName6, self->_mToManyInnerFetchWhereClause, columnName2, columnName2];
          [v85 appendFormat:@" SELECT NSCoreDataTriggerUpdateAffectedObjectValue('%@', %@, %@, '%@', %@) FROM %@ WHERE %@ = NEW.%@;", tableName, columnName3, columnName2, columnName, columnName, tableName, columnName2, columnName2];
          [v85 appendFormat:@" END"];
          [v103 addObject:v85];
          [(NSMutableArray *)self->_mSqlDropStrings addObject:v87];

          v1024 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"COUNT_%@", v104];
          v88 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"CREATE TEMP TABLE %@ AS", v1024];
          [v88 appendFormat:@" SELECT %@, COUNT(DISTINCT(%@)) AS COUNT", columnName2, columnName2];
          [v88 appendFormat:@" FROM %@", tableName2];
          [v88 appendFormat:@" WHERE %@", self->_mToManyInnerFetchWhereClause];
          [v88 appendFormat:@" GROUP BY %@;", columnName2];
          p_mBulkChangeStrings = &self->_mBulkChangeStrings;
          [(NSMutableArray *)self->_mBulkChangeStrings addObject:v88];

          v89 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" CREATE INDEX %@_INDEX ON %@(%@, COUNT);", v1024, v1024, columnName2];
          [(NSMutableArray *)self->_mBulkChangeStrings addObject:v89];

          v35 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" UPDATE %@ SET %@ = IFNULL((SELECT COUNT FROM %@ WHERE %@ = %@), 0);", tableName, columnName, v1024, columnName2, columnName6];
        }
      }

      v90 = v35;
      [(NSMutableArray *)*p_mBulkChangeStrings addObject:v35];

      v91 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@" DROP TABLE %@;", v1024];
      [(NSMutableArray *)*p_mBulkChangeStrings addObject:v91];

      goto LABEL_18;
    }
  }

  if (v105)
  {
    if (validate)
    {
      LOBYTE(v95) = 0;
      *validate = v105;
      goto LABEL_38;
    }

LABEL_37:
    LOBYTE(v95) = 0;
    goto LABEL_38;
  }

  v96 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v107 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
    v108 = 1024;
    v109 = 145;
    _os_log_error_impl(&dword_18565F000, v96, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v97 = _PFLogGetLogStream(17);
  v95 = os_log_type_enabled(v97, OS_LOG_TYPE_FAULT);
  if (v95)
  {
    *buf = 136315394;
    v107 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
    v108 = 1024;
    v109 = 145;
    _os_log_fault_impl(&dword_18565F000, v97, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_37;
  }

LABEL_38:
  v98 = *MEMORY[0x1E69E9840];
  return v95;
}

- (BOOL)validatePredicate:(uint64_t *)predicate error:
{
  v98 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_51;
  }

  v5 = result;
  v72 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a2 compoundPredicateType] == 1 || objc_msgSend(a2, "compoundPredicateType") == 2)
      {
        predicateCopy = predicate;
        v67 = [*(v5 + 64) length];
        if (v67)
        {
          objc_msgSend(*(v5 + 64), "appendString:", @"(");
          objc_msgSend(*(v5 + 96), "appendString:", @"(");
          objc_msgSend(*(v5 + 104), "appendString:", @"(");
        }

        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        subpredicates = [a2 subpredicates];
        v14 = [subpredicates countByEnumeratingWithState:&v68 objects:v77 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v69;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v69 != v16)
              {
                objc_enumerationMutation(subpredicates);
              }

              v18 = *(*(&v68 + 1) + 8 * i);
              if ([*(v5 + 64) length] && objc_msgSend(*(v5 + 64), "characterAtIndex:", objc_msgSend(*(v5 + 64), "length") - 1) != 40)
              {
                if ([a2 compoundPredicateType] == 1)
                {
                  v19 = @"AND";
                }

                else
                {
                  v19 = @"OR";
                }

                [*(v5 + 64) appendFormat:@" %@ ", v19];
                [*(v5 + 96) appendFormat:@" %@ ", v19];
                [*(v5 + 104) appendFormat:@" %@ ", v19];
              }

              if (![(NSSQLAttributeTrigger *)v5 validatePredicate:v18 error:&v72])
              {
                predicate = predicateCopy;
                if (v67)
                {
                  [*(v5 + 64) appendString:@""]);
                  [*(v5 + 96) appendString:@""]);
                  [*(v5 + 104) appendString:@""]);
                }

                goto LABEL_34;
              }
            }

            v15 = [subpredicates countByEnumeratingWithState:&v68 objects:v77 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        if (v67)
        {
          [*(v5 + 64) appendString:@""]);
          [*(v5 + 96) appendString:@""]);
          [*(v5 + 104) appendString:@""]);
        }

        goto LABEL_28;
      }

      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A250];
      v75[0] = @"offendingPredicate";
      if (!a2)
      {
        a2 = [MEMORY[0x1E695DFB0] null];
      }

      v75[1] = *MEMORY[0x1E696A588];
      v76[0] = a2;
      v76[1] = @"Invalid trigger predicate, compound predicates must be AND or OR predicates.";
      v23 = MEMORY[0x1E695DF20];
      v24 = v76;
      v25 = v75;
    }

    else
    {
      v21 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A250];
      v73[0] = @"offendingPredicate";
      if (!a2)
      {
        a2 = [MEMORY[0x1E695DFB0] null];
      }

      v73[1] = *MEMORY[0x1E696A588];
      v74[0] = a2;
      v74[1] = @"Invalid trigger predicate, predicate must evaluate to an instance of NSComparisonPredicate or NSCompoundPredicate.";
      v23 = MEMORY[0x1E695DF20];
      v24 = v74;
      v25 = v73;
    }

    v72 = [v21 errorWithDomain:v22 code:134060 userInfo:{objc_msgSend(v23, "dictionaryWithObjects:forKeys:count:", v24, v25, 2)}];
LABEL_34:
    v26 = v72;
    if (v72)
    {
LABEL_48:
      if (predicate)
      {
        result = 0;
        *predicate = v26;
        goto LABEL_51;
      }

LABEL_50:
      result = 0;
      goto LABEL_51;
    }

    goto LABEL_35;
  }

  if ([objc_msgSend(a2 "leftExpression")] != 3)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v20 = *MEMORY[0x1E696A588];
    v82[0] = @"offendingPredicate";
    v82[1] = v20;
    v83[0] = a2;
    v83[1] = @"Invalid trigger predicate, left expression must evaluate to an instance of NSKeyPathExpressionType.";
    v10 = MEMORY[0x1E695DF20];
    v11 = v83;
    v12 = v82;
    goto LABEL_40;
  }

  v6 = [objc_msgSend(objc_msgSend(a2 "leftExpression")];
  if ([v6 count] != 2)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v29 = *MEMORY[0x1E696A588];
    v84[0] = @"offendingPredicate";
    v84[1] = v29;
    v85[0] = a2;
    v85[1] = @"Invalid trigger predicate, left expression must be a key-path with only two components.";
    v10 = MEMORY[0x1E695DF20];
    v11 = v85;
    v12 = v84;
    goto LABEL_40;
  }

  if ([objc_msgSend(a2 "rightExpression")])
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v9 = *MEMORY[0x1E696A588];
    v86[0] = @"offendingPredicate";
    v86[1] = v9;
    v87[0] = a2;
    v87[1] = @"Invalid trigger predicate, right expression must evaluate to an instance of NSConstantValueExpressionType.";
    v10 = MEMORY[0x1E695DF20];
    v11 = v87;
    v12 = v86;
LABEL_40:
    v30 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:2];
    v31 = v7;
    v32 = v8;
    goto LABEL_41;
  }

  if (![objc_msgSend(objc_msgSend(a2 "rightExpression")])
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v47 = *MEMORY[0x1E696A588];
    v88[0] = @"offendingPredicate";
    v88[1] = v47;
    v89[0] = a2;
    v89[1] = @"Invalid trigger predicate, right expression must evaluate to a constant integer value.";
    v10 = MEMORY[0x1E695DF20];
    v11 = v89;
    v12 = v88;
    goto LABEL_40;
  }

  v37 = [objc_msgSend(objc_msgSend(a2 "rightExpression")];
  if ([a2 predicateOperatorType] > 5)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v48 = *MEMORY[0x1E696A588];
    v90[0] = @"offendingPredicate";
    v90[1] = v48;
    v91[0] = a2;
    v91[1] = @"Invalid trigger predicate, predicate operator must be one of:\nNSLessThanPredicateOperatorType,\nNSLessThanOrEqualToPredicateOperatorType,\nNSGreaterThanPredicateOperatorType,\nNSGreaterThanOrEqualToPredicateOperatorType,\nNSEqualToPredicateOperatorType,\nNSNotEqualToPredicateOperatorType";
    v10 = MEMORY[0x1E695DF20];
    v11 = v91;
    v12 = v90;
    goto LABEL_40;
  }

  v38 = *(v5 + 24);
  v39 = [v6 objectAtIndexedSubscript:0];
  if (v38)
  {
    v40 = [*(v38 + 40) objectForKey:v39];
  }

  else
  {
    v40 = 0;
  }

  destinationEntity = [v40 destinationEntity];
  v42 = [v6 objectAtIndexedSubscript:1];
  if (destinationEntity)
  {
    v43 = [*(destinationEntity + 40) objectForKey:v42];
  }

  else
  {
    v43 = 0;
  }

  v44 = [objc_msgSend(a2 "predicateOperator")];
  v45 = [objc_msgSend(a2 "predicateOperator")];
  if (v45 > 5)
  {
    v46 = 0;
  }

  else
  {
    v46 = [objc_alloc(MEMORY[0x1E696AE20]) initWithOperatorType:qword_18592E558[v45]];
  }

  symbol = [v46 symbol];

  if (!v40)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v61 = *MEMORY[0x1E696A588];
    v92[0] = @"offendingPredicate";
    v92[1] = v61;
    v93[0] = a2;
    v93[1] = @"Invalid trigger predicate, failed to find the relationship identified by the keyPath.";
    v10 = MEMORY[0x1E695DF20];
    v11 = v93;
    v12 = v92;
    goto LABEL_40;
  }

  v50 = *(v5 + 40);
  if (!v50)
  {
    goto LABEL_72;
  }

  if (![v50 isEqual:v40])
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A250];
    v62 = *MEMORY[0x1E696A588];
    v94[0] = @"offendingPredicate";
    v94[1] = v62;
    v95[0] = a2;
    v95[1] = @"Invalid trigger predicate, this predicate appears to reference a different relationship than other predicates in this trigger.";
    v10 = MEMORY[0x1E695DF20];
    v11 = v95;
    v12 = v94;
    goto LABEL_40;
  }

  if (!*(v5 + 40))
  {
LABEL_72:
    v51 = v40;
    *(v5 + 40) = v51;
    *(v5 + 48) = [v51 destinationEntity];
  }

  if (v43)
  {
    v52 = *(v5 + 32);
    if (v52)
    {
      *(v52 + 32) |= 8u;
    }

    if (([*(v5 + 56) containsObject:v43] & 1) == 0)
    {
      v53 = [*(v5 + 56) mutableCopy];
      [v53 addObject:v43];

      *(v5 + 56) = [v53 copy];
      v54 = v40[7];
      if (v54)
      {
        [(NSSQLAttribute *)v43 addKeyForTriggerOnRelationship:v54];
      }

      v55 = [*(v5 + 80) length];
      v56 = *(v5 + 80);
      columnName = [v43 columnName];
      columnName2 = [v43 columnName];
      if (v55)
      {
        v59 = @" OR (NEW.%@ %@ %ld AND OLD.%@ %@ %ld)";
      }

      else
      {
        v59 = @"(NEW.%@ %@ %ld AND OLD.%@ %@ %ld)";
      }

      v60 = @" OR (NEW.%@ %@ %ld AND OLD.%@ %@ %ld)";
      [v56 appendFormat:v59, columnName, v44, v37, columnName2, symbol, v37];
      if (![*(v5 + 72) length])
      {
        v60 = @"(NEW.%@ %@ %ld AND OLD.%@ %@ %ld)";
      }

      [*(v5 + 72) appendFormat:v60, objc_msgSend(v43, "columnName"), symbol, v37, objc_msgSend(v43, "columnName"), v44, v37];
      if ([*(v5 + 88) length])
      {
        [*(v5 + 88) appendString:{@", "}];
      }

      [*(v5 + 88) appendString:{objc_msgSend(v43, "columnName")}];
      if ([*(v5 + 112) length])
      {
        [*(v5 + 112) appendString:@" OR "];
      }

      [*(v5 + 112) appendFormat:@"NEW.%@ != OLD.%@", objc_msgSend(v43, "columnName"), objc_msgSend(v43, "columnName")];
    }

    [*(v5 + 64) appendFormat:@"%@ %@ %ld", objc_msgSend(v43, "columnName"), v44, objc_msgSend(objc_msgSend(objc_msgSend(a2, "rightExpression"), "constantValue"), "integerValue")];
    [*(v5 + 96) appendFormat:@"OLD.%@ %@ %ld", objc_msgSend(v43, "columnName"), v44, v37];
    [*(v5 + 104) appendFormat:@"NEW.%@ %@ %ld", objc_msgSend(v43, "columnName"), v44, v37];
LABEL_28:
    result = 1;
    goto LABEL_51;
  }

  v63 = MEMORY[0x1E696ABC0];
  v64 = *MEMORY[0x1E696A250];
  *buf = a2;
  v96[0] = @"offendingPredicate";
  v96[1] = @"offendingAttribute";
  name = [*(v5 + 32) name];
  v96[2] = *MEMORY[0x1E696A588];
  *&buf[8] = name;
  *&buf[16] = @"Invalid trigger predicate, unable to find the attribute specified by this predicate.";
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v96 count:3];
  v31 = v63;
  v32 = v64;
LABEL_41:
  v33 = [v31 errorWithDomain:v32 code:134060 userInfo:v30];
  v26 = v33;
  if (v33)
  {
    v72 = v33;
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *v78 = 136315394;
      v79 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
      v80 = 1024;
      v81 = 837;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v78, 0x12u);
    }

    v35 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      *v78 = 136315394;
      v79 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
      v80 = 1024;
      v81 = 837;
      _os_log_fault_impl(&dword_18565F000, v35, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v78, 0x12u);
    }
  }

  if (v26)
  {
    goto LABEL_48;
  }

LABEL_35:
  v27 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
    *&buf[12] = 1024;
    *&buf[14] = 676;
    _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v28 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 136315394;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSSQLAttributeTrigger.m";
    *&buf[12] = 1024;
    *&buf[14] = 676;
    _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_50;
  }

LABEL_51:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

@end