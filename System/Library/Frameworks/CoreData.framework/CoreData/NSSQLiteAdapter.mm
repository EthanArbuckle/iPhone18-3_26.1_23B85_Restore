@interface NSSQLiteAdapter
+ (NSSQLiteStatement)generateStatementForCheckingMulticolumnConstraint:(void *)constraint onObjects:(void *)objects usingSQLCore:;
+ (NSSQLiteStatement)generateStatementForCheckingUniqueProperties:(void *)properties onObjects:(void *)objects usingSQLCore:;
- (NSSQLiteAdapter)initWithSQLCore:(id)core;
- (NSSQLiteStatement)generateSQLStatmentForSourcesAndOrderKeysForDestination:(__CFString *)destination inManyToMany:;
- (NSSQLiteStatement)generateSQLStatmentForSourcesAndOrderKeysForDestination:(void *)destination inToMany:;
- (NSSQLiteStatement)newComplexPrimaryKeyUpdateStatementForEntity:(uint64_t)entity;
- (NSSQLiteStatement)newCopyAndInsertStatementForManyToMany:(__CFString *)many toManyToMany:(uint64_t)toMany intermediateTableName:(int)name invertColumns:;
- (NSSQLiteStatement)newCorrelationDeleteStatementForRelationship:(void *)relationship;
- (NSSQLiteStatement)newCorrelationInsertStatementForRelationship:(void *)relationship;
- (NSSQLiteStatement)newCorrelationMasterReorderStatementForRelationship:(void *)relationship;
- (NSSQLiteStatement)newCorrelationMasterReorderStatementPart2ForRelationship:(void *)relationship;
- (NSSQLiteStatement)newCorrelationReorderStatementForRelationship:(void *)relationship;
- (NSSQLiteStatement)newCreateIndexStatementForColumnWithName:(uint64_t)name inTableWithName:(uint64_t)withName;
- (NSSQLiteStatement)newCreatePrimaryKeyTableStatement;
- (NSSQLiteStatement)newCreateTableStatementForEntity:(__CFString *)entity;
- (NSSQLiteStatement)newCreateTableStatementForManyToMany:(NSSQLiteStatement *)result;
- (NSSQLiteStatement)newCreateTempTableStatementForEntity:(void *)entity withAttributesToConstrain:;
- (NSSQLiteStatement)newDropIndexStatementForColumn:(NSSQLiteStatement *)result;
- (NSSQLiteStatement)newDropIndexStatementForColumnWithName:(uint64_t)name inTableWithName:;
- (NSSQLiteStatement)newDropTableStatementForTableNamed:(NSSQLiteStatement *)result;
- (NSSQLiteStatement)newDropTableStatementOrFailForTableNamed:(NSSQLiteStatement *)result;
- (NSSQLiteStatement)newPrimaryKeyInitializeStatementForEntity:(uint64_t)entity withInitialMaxPK:;
- (NSSQLiteStatement)newRenameTableStatementFrom:(uint64_t)from to:;
- (NSSQLiteStatement)newSimplePrimaryKeyUpdateStatementForEntity:(NSSQLiteStatement *)result;
- (__CFString)typeStringForColumn:(__CFString *)result;
- (id)newCreateIndexStatementsForEntity:(char)entity defaultIndicesOnly:;
- (id)newCreateTriggersForEntity:(void *)entity existingRtreeTables:;
- (id)newDropIndexStatementsForEntity:(char)entity defaultIndicesOnly:;
- (uint64_t)_generateFragmentsForEntity:(void *)entity inArray:(void *)array;
- (uint64_t)_newStatementForFetchRequestContext:(uint64_t)context ignoreInheritance:(void *)inheritance countOnly:(int)only nestingLevel:(int)level;
- (uint64_t)generateBatchDeleteUpdateHistoryStatementEntity:(uint64_t)entity andRelationship:(int)relationship useInverse:;
- (uint64_t)generateBinaryIndexStatementsForIndex:(uint64_t)index onEntity:;
- (uint64_t)generateCorrelationTableTriggerStatementsForRelationship:(uint64_t)relationship existing:(void *)existing correlationTableTriggers:(const __CFDictionary *)triggers error:(uint64_t *)error;
- (uint64_t)generateDeleteHistoryTriggerForEntity:(uint64_t)entity error:(void *)error;
- (uint64_t)generateDropBinaryIndexStatementsForIndex:(uint64_t)index onEntity:;
- (uint64_t)generateTriggerForEntity:(const __CFDictionary *)entity alreadyCreated:(const __CFDictionary *)created correlations:(const __CFDictionary *)correlations batchHistory:(void *)history fragments:(unsigned int)fragments includesSubentities:(uint64_t *)subentities error:;
- (uint64_t)newConstrainedValuesUpdateStatementWithRow:(void *)row;
- (uint64_t)newCountStatementWithFetchRequestContext:(uint64_t)context;
- (uint64_t)newDeleteStatementWithRow:(void *)row;
- (uint64_t)newInsertStatementWithRow:(void *)row;
- (uint64_t)newSelectStatementWithFetchRequest:(int)request ignoreInheritance:;
- (uint64_t)newSelectStatementWithFetchRequestContext:(int)context ignoreInheritance:;
- (uint64_t)newStatementWithEntity:(uint64_t)result;
- (uint64_t)newStatementWithSQLString:(uint64_t)result;
- (uint64_t)newUpdateStatementWithRow:(uint64_t)row originalRow:(const __CFBitVector *)originalRow withMask:;
- (uint64_t)sqlTypeForExpressionConstantValue:(uint64_t)result;
- (void)_useModel:(uint64_t)model;
- (void)dealloc;
- (void)generateBatchDeleteUpdateHistoryTriggerForEntity:(void *)entity andRelationship:(void *)relationship batchHistory:(void *)history error:(const __CFDictionary *)error;
- (void)generateDeleteStatementsForRequest:(uint64_t *)request error:;
- (void)newGeneratorWithStatement:(void *)result;
@end

@implementation NSSQLiteAdapter

- (void)dealloc
{
  cachedDeleteTriggersByEntity = self->_cachedDeleteTriggersByEntity;
  if (cachedDeleteTriggersByEntity)
  {
    CFRelease(cachedDeleteTriggersByEntity);
    self->_cachedDeleteTriggersByEntity = 0;
  }

  self->_sqlCore = 0;

  self->_model = 0;
  v4.receiver = self;
  v4.super_class = NSSQLiteAdapter;
  [(NSSQLiteAdapter *)&v4 dealloc];
}

- (uint64_t)sqlTypeForExpressionConstantValue:(uint64_t)result
{
  if (result)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return 4;
    }

    if ([a2 isNSNumber])
    {
      objCType = [a2 objCType];
      if (!objCType)
      {
        return 2;
      }

      v4 = *objCType - 66;
      if (v4 <= 0x31)
      {
        if (((1 << v4) & 0x2008200020083) != 0)
        {
          return 1;
        }

        if (((1 << v4) & 0x840000008400) != 0)
        {
          return 2;
        }

        if (((1 << v4) & 0x1400000000) != 0)
        {
          return 7;
        }
      }

      return 6;
    }

    if ([a2 isNSString])
    {
      return 6;
    }

    if ([a2 isNSDate])
    {
      return 8;
    }

    else if ([a2 isNSData])
    {
      return 10;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return 12;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          return 11;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (NSSQLiteAdapter)initWithSQLCore:(id)core
{
  v8.receiver = self;
  v8.super_class = NSSQLiteAdapter;
  v4 = [(NSSQLiteAdapter *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_sqlCore = core;
    v4->_model = [core model];
    memset(&v7, 0, sizeof(v7));
    v7.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
    v5->_cachedDeleteTriggersByEntity = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, &v7, MEMORY[0x1E695E9E8]);
    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)_useModel:(uint64_t)model
{
  if (model)
  {
    if (*(model + 16) != a2)
    {
      v4 = a2;

      *(model + 16) = a2;
    }
  }
}

- (__CFString)typeStringForColumn:(__CFString *)result
{
  if (result)
  {
    sqlType = [a2 sqlType];
    if ((sqlType & 0xFE) == 2)
    {
      result = @"INTEGER";
      if (a2)
      {
        if (a2[24] == 2)
        {
          return @"INTEGER PRIMARY KEY";
        }
      }
    }

    else
    {

      return NSSQLiteAdapter_typeStringForSQLType(sqlType);
    }
  }

  return result;
}

- (uint64_t)newStatementWithSQLString:(uint64_t)result
{
  if (result)
  {
    v3 = [NSSQLiteStatement alloc];

    return [(NSSQLiteStatement *)v3 initWithEntity:0 sqlString:a2];
  }

  return result;
}

- (uint64_t)newStatementWithEntity:(uint64_t)result
{
  if (result)
  {
    if (!a2)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"entity required" userInfo:0]);
    }

    v3 = [NSSQLiteStatement alloc];

    return [(NSSQLiteStatement *)v3 initWithEntity:a2];
  }

  return result;
}

- (void)newGeneratorWithStatement:(void *)result
{
  if (result)
  {
    if (!a2)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"statement required" userInfo:0]);
    }

    v3 = result;
    v4 = [_NSSQLGenerator alloc];

    return [(_NSSQLGenerator *)v4 initWithStatement:a2 forAdapter:v3];
  }

  return result;
}

- (uint64_t)newInsertStatementWithRow:(void *)row
{
  if (!row)
  {
    return 0;
  }

  if (!a2 || (*(a2 + 16) & 1) != 0)
  {
    _storeInfo1 = 0;
  }

  else
  {
    v4 = atomic_load((a2 + 40));
    _storeInfo1 = [*(v4 + 16) _storeInfo1];
  }

  v6 = [(NSSQLiteAdapter *)row newStatementWithEntity:_storeInfo1];
  v7 = [(NSSQLiteAdapter *)row newGeneratorWithStatement:v6];
  v8 = v7;
  if (v7)
  {
    [(_NSSQLGenerator *)v7 prepareInsertStatementWithRow:a2 includeConstraints:0 includeOnConflict:0 onConflictKeys:NSArray_EmptyArray];
    v9 = v8[3];
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 0;
    if (v6)
    {
LABEL_8:
      v10 = *(v6 + 32);
      if (v10 != v9)
      {

        *(v6 + 32) = [v9 copy];
      }
    }
  }

  return v6;
}

- (uint64_t)newUpdateStatementWithRow:(uint64_t)row originalRow:(const __CFBitVector *)originalRow withMask:
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v10 = 0;
    goto LABEL_12;
  }

  if (!a2)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D930];
    v18 = @"empty row";
    v19 = 0;
    goto LABEL_16;
  }

  if (!row)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D930];
    v22 = @"objectID";
    v23[0] = [a2 objectID];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v18 = @"missing original";
    v16 = v20;
    v17 = v21;
LABEL_16:
    objc_exception_throw([v16 exceptionWithName:v17 reason:v18 userInfo:v19]);
  }

  if (*(a2 + 16))
  {
    _storeInfo1 = 0;
  }

  else
  {
    v8 = atomic_load((a2 + 40));
    _storeInfo1 = [*(v8 + 16) _storeInfo1];
  }

  v10 = [(NSSQLiteAdapter *)self newStatementWithEntity:_storeInfo1];
  v11 = [(NSSQLiteAdapter *)self newGeneratorWithStatement:v10];
  [(_NSSQLGenerator *)v11 prepareUpdateStatementWithRow:a2 originalRow:row withMask:originalRow];
  if (v11)
  {
    v12 = v11[3];
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (v10)
    {
LABEL_9:
      v13 = *(v10 + 32);
      if (v13 != v12)
      {

        *(v10 + 32) = [v12 copy];
      }
    }
  }

LABEL_12:
  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (uint64_t)newConstrainedValuesUpdateStatementWithRow:(void *)row
{
  if (!row)
  {
    return 0;
  }

  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"empty row" userInfo:0]);
  }

  if (*(a2 + 16))
  {
    _storeInfo1 = 0;
  }

  else
  {
    v4 = atomic_load((a2 + 40));
    _storeInfo1 = [*(v4 + 16) _storeInfo1];
  }

  v6 = [(NSSQLiteAdapter *)row newStatementWithEntity:_storeInfo1];
  v7 = [(NSSQLiteAdapter *)row newGeneratorWithStatement:v6];
  [(_NSSQLGenerator *)v7 prepareConstrainedValuesUpdateStatementWithRow:a2];
  if (v7)
  {
    v8 = v7[3];
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
LABEL_8:
      v9 = *(v6 + 32);
      if (v9 != v8)
      {

        *(v6 + 32) = [v8 copy];
      }
    }
  }

  return v6;
}

- (uint64_t)newDeleteStatementWithRow:(void *)row
{
  if (!row)
  {
    return 0;
  }

  if (!a2 || (*(a2 + 16) & 1) != 0)
  {
    _storeInfo1 = 0;
  }

  else
  {
    v4 = atomic_load((a2 + 40));
    _storeInfo1 = [*(v4 + 16) _storeInfo1];
  }

  v6 = [(NSSQLiteAdapter *)row newStatementWithEntity:_storeInfo1];
  v7 = [(NSSQLiteAdapter *)row newGeneratorWithStatement:v6];
  [(_NSSQLGenerator *)v7 prepareDeleteStatementWithRow:a2];
  if (v7)
  {
    v8 = v7[3];
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (v6)
    {
LABEL_8:
      v9 = *(v6 + 32);
      if (v9 != v8)
      {

        *(v6 + 32) = [v8 copy];
      }
    }
  }

  return v6;
}

- (uint64_t)_newStatementForFetchRequestContext:(uint64_t)context ignoreInheritance:(void *)inheritance countOnly:(int)only nestingLevel:(int)level
{
  v8 = objc_autoreleasePoolPush();
  request = [inheritance request];
  v10 = [[NSSQLGenerator alloc] initWithPersistentStore:*(context + 8)];
  if (v10)
  {
    v11 = [(NSSQLGenerator *)v10 newSQLStatementForRequest:request ignoreInheritance:only countOnly:level nestingLevel:0 nestIsWhereScoped:0 requestContext:inheritance];
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v8);
  return v11;
}

- (uint64_t)newSelectStatementWithFetchRequest:(int)request ignoreInheritance:
{
  if (!self)
  {
    return 0;
  }

  v6 = objc_autoreleasePoolPush();
  if (!a2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"missing fetch request" userInfo:0]);
  }

  v7 = v6;
  if (_sqlCoreLookupSQLEntityForEntityDescription(*(self + 8), [a2 entity]))
  {
    v8 = [[NSSQLFetchRequestContext alloc] initWithRequest:a2 context:0 sqlCore:0];
    v9 = [NSSQLiteAdapter _newStatementForFetchRequestContext:self ignoreInheritance:v8 countOnly:request nestingLevel:0];
  }

  else
  {
    v9 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v9;
}

- (uint64_t)newSelectStatementWithFetchRequestContext:(int)context ignoreInheritance:
{
  if (!self)
  {
    return 0;
  }

  request = [a2 request];
  if (!request)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"missing fetch request" userInfo:0]);
  }

  if (!_sqlCoreLookupSQLEntityForEntityDescription(*(self + 8), [request entity]))
  {
    return 0;
  }

  return [NSSQLiteAdapter _newStatementForFetchRequestContext:self ignoreInheritance:a2 countOnly:context nestingLevel:0];
}

- (uint64_t)newCountStatementWithFetchRequestContext:(uint64_t)context
{
  if (!context)
  {
    return 0;
  }

  request = [a2 request];
  if (!request)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"missing fetch request" userInfo:0]);
  }

  if (!_sqlCoreLookupSQLEntityForEntityDescription(*(context + 8), [request entity]))
  {
    return 0;
  }

  return [NSSQLiteAdapter _newStatementForFetchRequestContext:context ignoreInheritance:a2 countOnly:0 nestingLevel:1];
}

- (NSSQLiteStatement)newCorrelationInsertStatementForRelationship:(void *)relationship
{
  if (!relationship)
  {
    return 0;
  }

  v4 = [[NSSQLiteStatement alloc] initWithEntity:0];
  v5 = [(NSSQLiteAdapter *)relationship newGeneratorWithStatement:v4];
  [(_NSSQLGenerator *)v5 prepareInsertStatementForRelationship:a2];
  if (v5)
  {
    v6 = v5[3];
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    if (v4)
    {
LABEL_4:
      sqlString = v4->_sqlString;
      if (sqlString != v6)
      {

        v4->_sqlString = [(NSString *)v6 copy];
      }
    }
  }

  return v4;
}

- (NSSQLiteStatement)newCorrelationDeleteStatementForRelationship:(void *)relationship
{
  if (!relationship)
  {
    return 0;
  }

  v4 = [[NSSQLiteStatement alloc] initWithEntity:0];
  v5 = [(NSSQLiteAdapter *)relationship newGeneratorWithStatement:v4];
  [(_NSSQLGenerator *)v5 prepareDeleteStatementForRelationship:a2];
  if (v5)
  {
    v6 = v5[3];
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    if (v4)
    {
LABEL_4:
      sqlString = v4->_sqlString;
      if (sqlString != v6)
      {

        v4->_sqlString = [(NSString *)v6 copy];
      }
    }
  }

  return v4;
}

- (NSSQLiteStatement)newCorrelationMasterReorderStatementForRelationship:(void *)relationship
{
  if (!relationship)
  {
    return 0;
  }

  v4 = [[NSSQLiteStatement alloc] initWithEntity:0];
  v5 = [(NSSQLiteAdapter *)relationship newGeneratorWithStatement:v4];
  [(_NSSQLGenerator *)v5 prepareMasterReorderStatementForRelationship:a2];
  if (v5)
  {
    v6 = v5[3];
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    if (v4)
    {
LABEL_4:
      sqlString = v4->_sqlString;
      if (sqlString != v6)
      {

        v4->_sqlString = [(NSString *)v6 copy];
      }
    }
  }

  return v4;
}

- (NSSQLiteStatement)newCorrelationMasterReorderStatementPart2ForRelationship:(void *)relationship
{
  if (!relationship)
  {
    return 0;
  }

  v4 = [[NSSQLiteStatement alloc] initWithEntity:0];
  v5 = [(NSSQLiteAdapter *)relationship newGeneratorWithStatement:v4];
  [(_NSSQLGenerator *)v5 prepareMasterReorderStatementPart2ForRelationship:a2];
  if (v5)
  {
    v6 = v5[3];
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    if (v4)
    {
LABEL_4:
      sqlString = v4->_sqlString;
      if (sqlString != v6)
      {

        v4->_sqlString = [(NSString *)v6 copy];
      }
    }
  }

  return v4;
}

- (NSSQLiteStatement)newCorrelationReorderStatementForRelationship:(void *)relationship
{
  if (!relationship)
  {
    return 0;
  }

  v4 = [[NSSQLiteStatement alloc] initWithEntity:0];
  v5 = [(NSSQLiteAdapter *)relationship newGeneratorWithStatement:v4];
  [(_NSSQLGenerator *)v5 prepareReorderStatementForRelationship:a2];
  if (v5)
  {
    v6 = v5[3];
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    if (v4)
    {
LABEL_4:
      sqlString = v4->_sqlString;
      if (sqlString != v6)
      {

        v4->_sqlString = [(NSString *)v6 copy];
      }
    }
  }

  return v4;
}

- (uint64_t)generateCorrelationTableTriggerStatementsForRelationship:(uint64_t)relationship existing:(void *)existing correlationTableTriggers:(const __CFDictionary *)triggers error:(uint64_t *)error
{
  existingCopy = existing;
  v48[2] = *MEMORY[0x1E69E9840];
  v8 = _sqlCoreLookupSQLEntityForEntityDescription(*(relationship + 8), [existing entity]);
  name = [existingCopy name];
  if (!v8 || (v10 = [v8[5] objectForKey:name]) == 0 || (v11 = v10, !*(v10 + 64)))
  {
    existingCopy = [existingCopy inverseRelationship];
    v8 = _sqlCoreLookupSQLEntityForEntityDescription(*(relationship + 8), [existingCopy entity]);
    name2 = [existingCopy name];
    if (v8)
    {
      v11 = [v8[5] objectForKey:name2];
    }

    else
    {
      v11 = 0;
    }
  }

  if (CFDictionaryGetValue(triggers, existingCopy))
  {
    goto LABEL_37;
  }

  errorCopy = error;
  v13 = _sqlCoreLookupSQLEntityForEntityDescription(*(relationship + 8), [existingCopy destinationEntity]);
  inverseRelationship = [existingCopy inverseRelationship];
  deleteRule = [existingCopy deleteRule];
  deleteRule2 = [inverseRelationship deleteRule];
  correlationTableName = [(__CFString *)v11 correlationTableName];
  if (deleteRule == 1)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE OR FAIL %@ SET Z_OPT = (Z_OPT + 1) WHERE Z_PK = OLD.%@ ; ", objc_msgSend(v13, "tableName"), -[NSSQLManyToMany inverseColumnName](v11), 0];
    v18 = *(relationship + 8);
    if (v18 && (v18[201] & 4) != 0)
    {
      v19 = [(NSSQLiteAdapter *)v18 generateBatchDeleteUpdateHistoryStatementEntity:v13 andRelationship:v11 useInverse:1];
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@; %@", v19, v17];

      v17 = v20;
    }

    goto LABEL_13;
  }

  if (deleteRule == 2)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM %@ WHERE Z_PK = OLD.%@ ; ", objc_msgSend(v13, "tableName"), -[NSSQLManyToMany inverseColumnName](v11), 0];
LABEL_13:
    if (deleteRule2 == 1)
    {
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE OR FAIL %@ SET Z_OPT = (Z_OPT + 1) WHERE Z_PK = OLD.%@ ; ", objc_msgSend(v8, "tableName"), -[__CFString columnName](v11, "columnName"), 0];
      v26 = *(relationship + 8);
      if (v26)
      {
        v22 = correlationTableName;
        if ((v26[201] & 4) != 0)
        {
          v27 = [(NSSQLiteAdapter *)v26 generateBatchDeleteUpdateHistoryStatementEntity:v8 andRelationship:v11 useInverse:0];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@; %@", v27, v21];

          v21 = v28;
        }

        goto LABEL_22;
      }

LABEL_16:
      v22 = correlationTableName;
LABEL_22:
      if (v17 | v21)
      {
        v29 = objc_alloc(MEMORY[0x1E696AD60]);
        v30 = &stru_1EF3F1768;
        if (v17)
        {
          v31 = v17;
        }

        else
        {
          v31 = &stru_1EF3F1768;
        }

        if (v21)
        {
          v30 = v21;
        }

        v32 = [v29 initWithFormat:@"CREATE TEMPORARY TRIGGER IF NOT EXISTS ZQ_%@_TRIGGER AFTER DELETE ON %@ FOR EACH ROW BEGIN %@%@ END", v22, v22, v31, v30, 0];
      }

      else
      {
        v32 = 0;
      }

      v33 = [[NSSQLiteStatement alloc] initWithEntity:v8];
      v34 = v33;
      if (v33)
      {
        sqlString = v33->_sqlString;
        if (sqlString != v32)
        {

          v34->_sqlString = [(NSString *)v32 copy];
        }
      }

      v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS ZQ_%@_TRIGGER", v22, 0];
      v37 = [[NSSQLiteStatement alloc] initWithEntity:v8];
      v38 = v37;
      if (v37)
      {
        v39 = v37->_sqlString;
        if (v39 != v36)
        {

          v38->_sqlString = [(NSString *)v36 copy];
        }
      }

      v44[0] = v34;
      v44[1] = v38;
      CFDictionarySetValue(triggers, existingCopy, [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2]);

LABEL_37:
      result = 1;
      goto LABEL_38;
    }

    if (deleteRule2 == 2)
    {
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM %@ WHERE Z_PK = OLD.%@ ; ", objc_msgSend(v8, "tableName"), -[__CFString columnName](v11, "columnName"), 0];
      goto LABEL_16;
    }

    if (errorCopy)
    {
      v41 = *MEMORY[0x1E696A250];
      v45[0] = @"Reason";
      v45[1] = @"Relationship";
      v46[0] = @"Delete rule is not supported for batch deletes";
      v46[1] = inverseRelationship;
      *errorCopy = [MEMORY[0x1E696ABC0] errorWithDomain:v41 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v46, v45, 2)}];
    }

LABEL_42:
    result = 0;
    goto LABEL_38;
  }

  if (!errorCopy)
  {
    goto LABEL_42;
  }

  v23 = *MEMORY[0x1E696A250];
  v47[0] = @"Reason";
  v47[1] = @"Relationship";
  v48[0] = @"Delete rule is not supported for batch deletes";
  v48[1] = existingCopy;
  v24 = [MEMORY[0x1E696ABC0] errorWithDomain:v23 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v48, v47, 2)}];
  result = 0;
  *errorCopy = v24;
LABEL_38:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)generateBatchDeleteUpdateHistoryStatementEntity:(uint64_t)entity andRelationship:(int)relationship useInverse:
{
  v7 = [objc_msgSend(objc_msgSend(self "ancillarySQLModels")];
  v8 = v7;
  if (v7)
  {
    v9 = [*(v7 + 40) objectForKey:@"COLUMNS"];
    v10 = [*(v8 + 40) objectForKey:@"ENTITYPK"];
    v11 = [*(v8 + 40) objectForKey:@"ENTITY"];
    v46 = [*(v8 + 40) objectForKey:@"CHANGETYPE"];
  }

  else
  {
    v11 = 0;
    v9 = 0;
    v10 = 0;
    v46 = 0;
  }

  v44 = v10;
  v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ON CONFLICT(%@, %@) DO UPDATE SET %@ = NSPersistentHistoryBatchDeleteUpdateTriggerDataBlobOperator(%@, excluded.%@)", objc_msgSend(v10, "columnName"), objc_msgSend(v11, "columnName"), objc_msgSend(v9, "columnName"), objc_msgSend(v9, "columnName"), objc_msgSend(v9, "columnName")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v12 = entity, relationship))
  {
    if (entity)
    {
      v12 = *(entity + 56);
    }

    else
    {
      v12 = 0;
    }
  }

  name = [v12 name];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (entity)
    {
      if ([*(entity + 56) isToMany] && *(entity + 72) && objc_msgSend(objc_msgSend(entity, "propertyDescription"), "deleteRule") == 1)
      {
        propertyDescription = *(entity + 56);
        if (propertyDescription)
        {
          propertyDescription = [propertyDescription propertyDescription];
        }

        if ([propertyDescription deleteRule] == 1)
        {
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"(SELECT NSPersistentHistoryBatchDeleteUpdateTrigger(OLD.%@, '%@'))", objc_msgSend(*(entity + 72), "columnName"), name];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WHERE OLD.%@ > 0 AND OLD.%@ > 0", objc_msgSend(entity, "columnName"), objc_msgSend(*(entity + 72), "columnName")];
          v43 = objc_alloc(MEMORY[0x1E696AEC0]);
          tempTableName = [(NSSQLEntity *)v8 tempTableName];
          if (v8)
          {
            v17 = *(v8 + 136);
          }

          else
          {
            v17 = 0;
          }

          columnName = [v17 columnName];
          columnName2 = [v10 columnName];
          columnName3 = [v11 columnName];
          columnName4 = [v46 columnName];
          columnName5 = [v9 columnName];
          if (v8)
          {
            v22 = *(v8 + 184);
          }

          else
          {
            v22 = 0;
          }

          v39 = columnName5;
          v23 = v47;
          v24 = [v43 initWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@) SELECT %u, OLD.%@, OLD.%@, %ld, %@ %@ %@", tempTableName, columnName, columnName2, columnName3, columnName4, v39, v22, objc_msgSend(entity, "columnName"), objc_msgSend(*(entity + 72), "columnName"), 1, v15, v16, v47];
          goto LABEL_31;
        }
      }
    }

    else
    {
      [0 isToMany];
    }
  }

  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"(SELECT NSPersistentHistoryBatchDeleteUpdateTrigger(%@.Z_ENT, '%@'))", objc_msgSend(a2, "tableName"), name];
  v25 = objc_alloc(MEMORY[0x1E696AEC0]);
  tableName = [a2 tableName];
  if (relationship)
  {
    inverseColumnName = [(NSSQLManyToMany *)entity inverseColumnName];
  }

  else
  {
    inverseColumnName = [entity columnName];
  }

  v16 = [v25 initWithFormat:@"FROM %@ WHERE Z_PK = OLD.%@", tableName, inverseColumnName];
  v28 = objc_alloc(MEMORY[0x1E696AEC0]);
  tempTableName2 = [(NSSQLEntity *)v8 tempTableName];
  if (v8)
  {
    v30 = *(v8 + 136);
  }

  else
  {
    v30 = 0;
  }

  columnName6 = [v30 columnName];
  columnName7 = [v44 columnName];
  columnName8 = [v11 columnName];
  columnName9 = [v46 columnName];
  columnName10 = [v9 columnName];
  if (v8)
  {
    v36 = *(v8 + 184);
  }

  else
  {
    v36 = 0;
  }

  v23 = v47;
  v24 = [v28 initWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@) SELECT %u, Z_PK, Z_ENT, %ld, %@ %@ %@", tempTableName2, columnName6, columnName7, columnName8, columnName9, columnName10, v36, 1, v15, v16, v47, v40, v41];
LABEL_31:
  v37 = v24;

  return v37;
}

- (NSSQLiteStatement)newCreateTableStatementForEntity:(__CFString *)entity
{
  if (!entity)
  {
    return 0;
  }

  v2 = a2;
  if (!a2 || a2[20])
  {
    return 0;
  }

  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"CREATE TABLE "];
  [v5 appendString:{objc_msgSend(v2, "tableName")}];
  objc_msgSend(v5, "appendString:", @"(");
  while (v2)
  {
    v6 = v2;
    v2 = v2[21];
    if (v2 == v6)
    {
      v7 = v6[9];
      goto LABEL_9;
    }
  }

  v7 = 0;
LABEL_9:
  v8 = [v7 sortedArrayUsingFunction:sortColumnsByType context:0 hint:0];
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = [v8 objectAtIndex:i];
      if (i)
      {
        [v5 appendString:{@", "}];
      }

      [v5 appendFormat:@"%@ %@", objc_msgSend(v12, "columnName"), -[NSSQLiteAdapter typeStringForColumn:](entity, v12)];
    }
  }

  [v5 appendString:@" "]);
  v13 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v5];

  return v13;
}

- (NSSQLiteStatement)newCreateTempTableStatementForEntity:(void *)entity withAttributesToConstrain:
{
  v3 = 0;
  v46 = *MEMORY[0x1E69E9840];
  if (self && a2)
  {
    if (*(a2 + 160))
    {
      v3 = 0;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"CREATE TEMP TABLE "];
      [v7 appendString:-[NSSQLEntity tempTableName](a2)];
      v35 = v7;
      objc_msgSend(v7, "appendString:", @"(");
      v8 = a2;
      v33 = a2;
      while (v8)
      {
        v9 = v8;
        v8 = *(v8 + 168);
        if (v8 == v9)
        {
          entityCopy2 = entity;
          v11 = *(v9 + 72);
          goto LABEL_9;
        }
      }

      entityCopy2 = entity;
      v11 = 0;
LABEL_9:
      v12 = [v11 sortedArrayUsingFunction:sortColumnsByType context:0 hint:0];
      v13 = [v12 count];
      if (v13)
      {
        v14 = v13;
        for (i = 0; i != v14; ++i)
        {
          v16 = [v12 objectAtIndex:i];
          if (i)
          {
            [v35 appendString:{@", "}];
          }

          if ([v16 propertyType] != 1 || !v16 || (v17 = @"%@ %@ UNIQUE", (v16[16] & 2) == 0))
          {
            v17 = @"%@ %@";
          }

          [v35 appendFormat:v17, objc_msgSend(v16, "columnName"), -[NSSQLiteAdapter typeStringForColumn:](self, v16)];
        }
      }

      if (!entityCopy2)
      {
        entityCopy2 = *(v33 + 216);
      }

      if ([entityCopy2 count])
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v18 = [entityCopy2 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v18)
        {
          v19 = v18;
          obj = entityCopy2;
          v34 = *v41;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v41 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v40 + 1) + 8 * j);
              v22 = [objc_msgSend(v21 valueForKey:{@"columnName", "componentsJoinedByString:", @"_"}];
              v23 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @", CONSTRAINT %@ UNIQUE ("), v22;
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v39 = 0u;
              v24 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v37;
                v27 = 1;
                do
                {
                  for (k = 0; k != v25; ++k)
                  {
                    if (*v37 != v26)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v29 = *(*(&v36 + 1) + 8 * k);
                    if ((v27 & 1) == 0)
                    {
                      [v23 appendString:{@", "}];
                    }

                    [v23 appendString:{objc_msgSend(v29, "columnName")}];
                    v27 = 0;
                  }

                  v25 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
                  v27 = 0;
                }

                while (v25);
              }

              [v23 appendString:@""]);
              [v35 appendString:v23];
            }

            v19 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
          }

          while (v19);
        }
      }

      else
      {
        [v35 appendString:@" "];
      }

      [v35 appendString:@" "]);
      v3 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v35];
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v3;
}

- (NSSQLiteStatement)newCreatePrimaryKeyTableStatement
{
  if (result)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"CREATE TABLE "];
    [v1 appendString:@"Z_PRIMARYKEY"];
    objc_msgSend(v1, "appendString:", @" (");
    [v1 appendString:@"Z_ENT"];
    [v1 appendString:{@" INTEGER PRIMARY KEY, "}];
    [v1 appendString:@"Z_NAME"];
    [v1 appendString:{@" VARCHAR, "}];
    [v1 appendString:@"Z_SUPER"];
    [v1 appendString:{@" INTEGER, "}];
    [v1 appendString:@"Z_MAX"];
    [v1 appendString:@" INTEGER"]);
    v2 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v1];

    return v2;
  }

  return result;
}

- (NSSQLiteStatement)newPrimaryKeyInitializeStatementForEntity:(uint64_t)entity withInitialMaxPK:
{
  if (result)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (a2)
    {
      v6 = *(a2 + 184);
      name = [a2 name];
      v8 = *(a2 + 160);
      if (v8)
      {
        v8 = *(v8 + 184);
      }
    }

    else
    {
      name = [0 name];
      v6 = 0;
      v8 = 0;
    }

    entity = [v5 initWithFormat:@"INSERT INTO %@(%@, %@, %@, %@) VALUES(%u, '%@', %u, %qd)", @"Z_PRIMARYKEY", @"Z_ENT", @"Z_NAME", @"Z_SUPER", @"Z_MAX", v6, name, v8, entity];
    v10 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:entity];

    return v10;
  }

  return result;
}

- (NSSQLiteStatement)newSimplePrimaryKeyUpdateStatementForEntity:(NSSQLiteStatement *)result
{
  if (result)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE OR FAIL %@ SET %@ = MAX((SELECT %@ FROM %@ WHERE %@ = '%@'), (SELECT CASE WHEN (SELECT COUNT(*) FROM %@)== 0 THEN 0 ELSE (SELECT MAX(%@) FROM %@) END)) WHERE %@ = '%@'", @"Z_PRIMARYKEY", @"Z_MAX", @"Z_MAX", @"Z_PRIMARYKEY", @"Z_NAME", objc_msgSend(a2, "name"), objc_msgSend(a2, "tableName"), @"Z_PK", objc_msgSend(a2, "tableName"), @"Z_NAME", objc_msgSend(a2, "name")];
    v3 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v2];

    return v3;
  }

  return result;
}

- (uint64_t)_generateFragmentsForEntity:(void *)entity inArray:(void *)array
{
  entityCopy = entity;
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [entity manyToManyRelationships];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        if (entityCopy)
        {
          v9 = entityCopy[20];
        }

        else
        {
          v9 = 0;
        }

        if (([objc_msgSend(v9 "manyToManyRelationships")] & 1) == 0)
        {
          v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT CASE WHEN (SELECT COUNT(*) FROM %@) == 0 THEN 0 ELSE (SELECT MAX (%@) FROM %@) END", objc_msgSend(v8, "correlationTableName"), objc_msgSend(v8, "columnName"), objc_msgSend(v8, "correlationTableName")];
          [array addObject:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v11 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      v5 = v11;
    }

    while (v11);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (entityCopy)
  {
    entityCopy = entityCopy[19];
  }

  result = [entityCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (result)
  {
    v13 = result;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(entityCopy);
        }

        [NSSQLiteAdapter _generateFragmentsForEntity:array inArray:?];
      }

      while (v13 != v15);
      result = [entityCopy countByEnumeratingWithState:&v18 objects:v26 count:16];
      v13 = result;
    }

    while (result);
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSSQLiteStatement)newComplexPrimaryKeyUpdateStatementForEntity:(uint64_t)entity
{
  v21 = *MEMORY[0x1E69E9840];
  if (entity)
  {
    array = [MEMORY[0x1E695DF70] array];
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT CASE WHEN (SELECT COUNT(*) FROM %@) == 0 THEN 0 ELSE (SELECT MAX (%@) FROM %@) END", objc_msgSend(a2, "tableName"), @"Z_PK", objc_msgSend(a2, "tableName")];
    [array addObject:v4];

    [NSSQLiteAdapter _generateFragmentsForEntity:a2 inArray:array];
    if ([array count] == 1)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"MAX((SELECT %@ FROM %@ WHERE %@ = '%@'), (%@))", @"Z_MAX", @"Z_PRIMARYKEY", @"Z_NAME", objc_msgSend(a2, "name"), objc_msgSend(array, "lastObject")];
    }

    else
    {
      v5 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @"MAX((SELECT %@ FROM %@ WHERE %@ = '%@'),"), CFSTR("Z_MAX"), CFSTR("Z_PRIMARYKEY"), CFSTR("Z_NAME"), objc_msgSend(a2, "name");
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = [array countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        v9 = 1;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(array);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            if ((v9 & 1) == 0)
            {
              [v5 appendString:{@", "}];
            }

            [v5 appendFormat:@"(%@)", v11];
            v9 = 0;
          }

          v7 = [array countByEnumeratingWithState:&v16 objects:v20 count:16];
          v9 = 0;
        }

        while (v7);
      }

      [v5 appendString:@""]);
    }

    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE OR FAIL %@ SET %@ = (%@) WHERE %@ = '%@'", @"Z_PRIMARYKEY", @"Z_MAX", v5, @"Z_NAME", objc_msgSend(a2, "name")];

    v13 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (NSSQLiteStatement)newCopyAndInsertStatementForManyToMany:(__CFString *)many toManyToMany:(uint64_t)toMany intermediateTableName:(int)name invertColumns:
{
  if (result)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"INSERT INTO "];
    [v9 appendString:{-[__CFString correlationTableName](many, "correlationTableName")}];
    objc_msgSend(v9, "appendString:", @" (");
    [v9 appendString:{-[__CFString columnName](many, "columnName")}];
    [v9 appendString:{@", "}];
    [v9 appendString:-[NSSQLManyToMany inverseColumnName](many)];
    if (many && (data = many[2].data) != 0)
    {
      [v9 appendString:{@", "}];
      [v9 appendString:data];
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    inverseOrderColumnName = [(NSSQLManyToMany *)many inverseOrderColumnName];
    if (inverseOrderColumnName)
    {
      [v9 appendString:{@", "}];
      [v9 appendString:inverseOrderColumnName];
    }

    [v9 appendString:@" SELECT "]);
    if (name)
    {
      [v9 appendString:-[NSSQLManyToMany inverseColumnName](a2)];
      [v9 appendString:{@", "}];
      [v9 appendString:{-[__CFString columnName](a2, "columnName")}];
      if (inverseOrderColumnName)
      {
        inverseOrderColumnName2 = [(NSSQLManyToMany *)a2 inverseOrderColumnName];
        [v9 appendString:{@", "}];
        if (inverseOrderColumnName2)
        {
          v14 = v9;
          inverseColumnName = inverseOrderColumnName2;
        }

        else
        {
          inverseColumnName = [(NSSQLManyToMany *)a2 inverseColumnName];
          v14 = v9;
        }

        [v14 appendString:inverseColumnName];
      }

      if (v11)
      {
        goto LABEL_32;
      }

      if (!a2)
      {
        [v9 appendString:{@", "}];
        goto LABEL_21;
      }

      inverseOrderColumnName3 = a2[2].data;
      [v9 appendString:{@", "}];
      if (!inverseOrderColumnName3)
      {
LABEL_21:
        columnName = [(__CFString *)a2 columnName];
LABEL_30:
        v22 = columnName;
        v21 = v9;
        goto LABEL_31;
      }

LABEL_28:
      v21 = v9;
      v22 = inverseOrderColumnName3;
LABEL_31:
      [v21 appendString:v22];
      goto LABEL_32;
    }

    [v9 appendString:{-[__CFString columnName](a2, "columnName")}];
    [v9 appendString:{@", "}];
    [v9 appendString:-[NSSQLManyToMany inverseColumnName](a2)];
    if (v11)
    {
LABEL_26:
      if (!inverseOrderColumnName)
      {
LABEL_32:
        [v9 appendString:@" FROM "];
        [v9 appendString:toMany];
        v23 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v9];

        return v23;
      }

      inverseOrderColumnName3 = [(NSSQLManyToMany *)a2 inverseOrderColumnName];
      [v9 appendString:{@", "}];
      if (!inverseOrderColumnName3)
      {
        columnName = [(NSSQLManyToMany *)a2 inverseColumnName];
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if (a2)
    {
      v16 = a2[2].data;
      [v9 appendString:{@", "}];
      if (v16)
      {
        v17 = v9;
        columnName2 = v16;
LABEL_25:
        [v17 appendString:columnName2];
        goto LABEL_26;
      }
    }

    else
    {
      [v9 appendString:{@", "}];
    }

    columnName2 = [(__CFString *)a2 columnName];
    v17 = v9;
    goto LABEL_25;
  }

  return result;
}

- (NSSQLiteStatement)newDropTableStatementForTableNamed:(NSSQLiteStatement *)result
{
  if (result)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"DROP TABLE IF EXISTS "];
    [v3 appendString:a2];
    v4 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v3];

    return v4;
  }

  return result;
}

- (NSSQLiteStatement)newDropTableStatementOrFailForTableNamed:(NSSQLiteStatement *)result
{
  if (result)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"DROP TABLE "];
    [v3 appendString:a2];
    v4 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v3];

    return v4;
  }

  return result;
}

- (NSSQLiteStatement)newRenameTableStatementFrom:(uint64_t)from to:
{
  if (result)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"ALTER TABLE "];
    [v5 appendString:a2];
    [v5 appendString:@" RENAME TO "];
    [v5 appendString:from];
    v6 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v5];

    return v6;
  }

  return result;
}

- (NSSQLiteStatement)newCreateTableStatementForManyToMany:(NSSQLiteStatement *)result
{
  if (result)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"CREATE TABLE "];
    [v3 appendString:{-[__CFString correlationTableName](a2, "correlationTableName")}];
    objc_msgSend(v3, "appendString:", @"(");
    columnName = [(__CFString *)a2 columnName];
    if (a2)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }

    v6 = NSSQLiteAdapter_typeStringForSQLType(v5);
    [v3 appendFormat:@"%@ %@", columnName, v6];
    [v3 appendString:{@", "}];
    [v3 appendFormat:@"%@ %@", -[NSSQLManyToMany inverseColumnName](a2), v6];
    if (a2)
    {
      data = a2[2].data;
      if (data)
      {
        [v3 appendString:{@", "}];
        [v3 appendFormat:@"%@ %@", data, NSSQLiteAdapter_typeStringForSQLType(1)];
      }
    }

    inverseOrderColumnName = [(NSSQLManyToMany *)a2 inverseOrderColumnName];
    if (inverseOrderColumnName)
    {
      v9 = inverseOrderColumnName;
      [v3 appendString:{@", "}];
      [v3 appendFormat:@"%@ %@", v9, NSSQLiteAdapter_typeStringForSQLType(a2 != 0)];
    }

    objc_msgSend(v3, "appendString:", @", PRIMARY KEY (");
    [v3 appendString:{-[__CFString columnName](a2, "columnName")}];
    [v3 appendString:{@", "}];
    [v3 appendString:-[NSSQLManyToMany inverseColumnName](a2)];
    [v3 appendString:@"]"));
    v10 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v3];

    return v10;
  }

  return result;
}

- (NSSQLiteStatement)newCreateIndexStatementForColumnWithName:(uint64_t)name inTableWithName:(uint64_t)withName
{
  name = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_INDEX", withName, name];
  name2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@)", name, withName, name];

  v6 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:name2];
  return v6;
}

- (NSSQLiteStatement)newDropIndexStatementForColumn:(NSSQLiteStatement *)result
{
  if (result)
  {
    v3 = result;
    columnName = [a2 columnName];
    v5 = [objc_msgSend(a2 "entity")];

    return [(NSSQLiteAdapter *)v3 newDropIndexStatementForColumnWithName:columnName inTableWithName:v5];
  }

  return result;
}

- (NSSQLiteStatement)newDropIndexStatementForColumnWithName:(uint64_t)name inTableWithName:
{
  if (result)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_INDEX", name, a2];
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP INDEX IF EXISTS %@", v3];

    v5 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v4];
    return v5;
  }

  return result;
}

- (uint64_t)generateBinaryIndexStatementsForIndex:(uint64_t)index onEntity:
{
  v4 = [(NSSQLIndex *)[NSSQLBinaryIndex alloc] initForIndexDescription:a2 sqlEntity:index];
  v5 = [v4 generateStatementsForStore:*(self + 8)];

  return v5;
}

- (uint64_t)generateDropBinaryIndexStatementsForIndex:(uint64_t)index onEntity:
{
  v4 = [(NSSQLIndex *)[NSSQLBinaryIndex alloc] initForIndexDescription:a2 sqlEntity:index];
  v5 = [v4 dropStatementsForStore:*(self + 8)];

  return v5;
}

- (id)newCreateIndexStatementsForEntity:(char)entity defaultIndicesOnly:
{
  v99 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v75 = 0;
    goto LABEL_75;
  }

  v3 = a2;
  if (!a2)
  {
    v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
    goto LABEL_4;
  }

  v4 = *(a2 + 160);
  v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
LABEL_4:
    v71 = 0;
    goto LABEL_18;
  }

  while (v3)
  {
    v5 = v3;
    v3 = v3[21];
    if (v3 == v5)
    {
      v6 = v5[9];
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v91 objects:v98 count:16];
  if (v7)
  {
    v8 = *v92;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v92 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v91 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        if ([v10 propertyType] == 3)
        {
          v12 = -[NSSQLiteAdapter newCreateIndexStatementForColumnWithName:inTableWithName:]([v10 columnName], objc_msgSend(objc_msgSend(v10, "entity"), "tableName"));
          [v75 addObject:v12];
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v6 countByEnumeratingWithState:&v91 objects:v98 count:16];
    }

    while (v7);
  }

  v71 = 1;
  v3 = a2;
LABEL_18:
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  manyToManyRelationships = [v3 manyToManyRelationships];
  v14 = [manyToManyRelationships countByEnumeratingWithState:&v87 objects:v97 count:16];
  if (v14)
  {
    v76 = *v88;
    obj = manyToManyRelationships;
    do
    {
      v77 = v14;
      for (j = 0; j != v77; ++j)
      {
        if (*v88 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v87 + 1) + 8 * j);
        v17 = objc_autoreleasePoolPush();
        if (v16)
        {
          if (v16[2].isa)
          {
            if ([(__CFString *)v16 entity]== a2)
            {
              if (v16[2].isa)
              {
                v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_INDEX", -[__CFString correlationTableName](v16, "correlationTableName"), -[NSSQLManyToMany inverseColumnName](v16)];
                v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@, %@)", v41, -[__CFString correlationTableName](v16, "correlationTableName"), -[NSSQLManyToMany inverseColumnName](v16), -[__CFString columnName](v16, "columnName")];

                v43 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v42];
                if (v43)
                {
                  [v75 addObject:v43];
                }
              }
            }
          }

          if ([-[__CFString propertyDescription](v16 "propertyDescription")])
          {
            if ([objc_msgSend(objc_msgSend(-[__CFString propertyDescription](v16 "propertyDescription")])
            {
              v18 = objc_alloc(MEMORY[0x1E696AEC0]);
              correlationTableName = [(__CFString *)v16 correlationTableName];
              columnName = [(__CFString *)v16 columnName];
              inverseColumnName = [(NSSQLManyToMany *)v16 inverseColumnName];
              v22 = [v18 initWithFormat:@"%@_%@_%@_%@_INDEX", correlationTableName, columnName, inverseColumnName, -[NSSQLManyToMany inverseOrderColumnName](v16)];
              v23 = objc_alloc(MEMORY[0x1E696AEC0]);
              correlationTableName2 = [(__CFString *)v16 correlationTableName];
              columnName2 = [(__CFString *)v16 columnName];
              inverseColumnName2 = [(NSSQLManyToMany *)v16 inverseColumnName];
              v27 = [v23 initWithFormat:@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@, %@, %@)", v22, correlationTableName2, columnName2, inverseColumnName2, -[NSSQLManyToMany inverseOrderColumnName](v16)];
              v28 = objc_alloc(MEMORY[0x1E696AEC0]);
              correlationTableName3 = [(__CFString *)v16 correlationTableName];
              columnName3 = [(__CFString *)v16 columnName];
              inverseOrderColumnName = [(NSSQLManyToMany *)v16 inverseOrderColumnName];
              v32 = [v28 initWithFormat:@"%@_%@_%@_%@_INDEX", correlationTableName3, columnName3, inverseOrderColumnName, -[NSSQLManyToMany inverseColumnName](v16)];
              v33 = objc_alloc(MEMORY[0x1E696AEC0]);
              correlationTableName4 = [(__CFString *)v16 correlationTableName];
              columnName4 = [(__CFString *)v16 columnName];
              inverseOrderColumnName2 = [(NSSQLManyToMany *)v16 inverseOrderColumnName];
              v37 = [v33 initWithFormat:@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@, %@, %@)", v32, correlationTableName4, columnName4, inverseOrderColumnName2, -[NSSQLManyToMany inverseColumnName](v16)];
              v38 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v27];
              v39 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v37];
              v40 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v38, v39, 0}];

              if (v40)
              {
                [v75 addObjectsFromArray:v40];
              }
            }
          }
        }

        objc_autoreleasePoolPop(v17);
      }

      v14 = [obj countByEnumeratingWithState:&v87 objects:v97 count:16];
    }

    while (v14);
  }

  v44 = v71 ^ 1;
  if (!a2)
  {
    v44 = 1;
  }

  if ((v44 & 1) == 0)
  {
    v45 = *(a2 + 152);
    if (v45)
    {
      if ([v45 count])
      {
        v46 = [objc_msgSend(objc_msgSend(a2 "entityDescription")];
        v47 = v46;
        if (!v46 || ![v46 isNSString] || (v48 = objc_msgSend(v47, "lowercaseString"), (v49 = v48) == 0) || (objc_msgSend(v48, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v49, "isEqualToString:", @"1") & 1) == 0)
        {
          v50 = -[NSSQLiteAdapter newCreateIndexStatementForColumnWithName:inTableWithName:]([*(a2 + 136) columnName], objc_msgSend(objc_msgSend(*(a2 + 136), "entity"), "tableName"));
          [v75 addObject:v50];
        }
      }
    }
  }

  if ((entity & 1) == 0)
  {
    entityDescription = [a2 entityDescription];
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    indexes = [entityDescription indexes];
    v53 = [indexes countByEnumeratingWithState:&v83 objects:v96 count:16];
    if (v53)
    {
      v54 = *v84;
      do
      {
        v55 = 0;
        do
        {
          if (*v84 != v54)
          {
            objc_enumerationMutation(indexes);
          }

          v56 = *(*(&v83 + 1) + 8 * v55);
          v57 = objc_autoreleasePoolPush();
          if ([objc_msgSend(v56 "elements")])
          {
            v58 = [objc_msgSend(objc_msgSend(v56 "elements")];
            if (v58 == 1)
            {
              if (a2)
              {
                v60 = [*(a2 + 232) objectForKey:{objc_msgSend(v56, "name")}];
              }

              else
              {
                v60 = 0;
              }

              v59 = [v60 generateStatementsForStore:*(self + 8)];
            }

            else
            {
              if (v58)
              {
                goto LABEL_62;
              }

              v59 = [(NSSQLiteAdapter *)self generateBinaryIndexStatementsForIndex:v56 onEntity:a2];
            }

            if (v59)
            {
              [v75 addObjectsFromArray:v59];
            }
          }

LABEL_62:
          objc_autoreleasePoolPop(v57);
          ++v55;
        }

        while (v53 != v55);
        v61 = [indexes countByEnumeratingWithState:&v83 objects:v96 count:16];
        v53 = v61;
      }

      while (v61);
    }

    _uniquenessConstraintsAsFetchIndexes = [entityDescription _uniquenessConstraintsAsFetchIndexes];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v63 = [_uniquenessConstraintsAsFetchIndexes countByEnumeratingWithState:&v79 objects:v95 count:16];
    if (v63)
    {
      v64 = *v80;
      do
      {
        for (k = 0; k != v63; ++k)
        {
          if (*v80 != v64)
          {
            objc_enumerationMutation(_uniquenessConstraintsAsFetchIndexes);
          }

          v66 = *(*(&v79 + 1) + 8 * k);
          v67 = objc_autoreleasePoolPush();
          v68 = [(NSSQLiteAdapter *)self generateBinaryIndexStatementsForIndex:v66 onEntity:a2];
          if (v68)
          {
            [v75 addObjectsFromArray:v68];
          }

          objc_autoreleasePoolPop(v67);
        }

        v63 = [_uniquenessConstraintsAsFetchIndexes countByEnumeratingWithState:&v79 objects:v95 count:16];
      }

      while (v63);
    }
  }

LABEL_75:
  v69 = *MEMORY[0x1E69E9840];
  return v75;
}

- (id)newDropIndexStatementsForEntity:(char)entity defaultIndicesOnly:
{
  v70 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v49 = 0;
    goto LABEL_72;
  }

  if (!a2)
  {
    v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
    goto LABEL_4;
  }

  v5 = *(a2 + 160);
  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v5)
  {
LABEL_4:
    v47 = 0;
    goto LABEL_19;
  }

  v6 = a2;
  while (v6)
  {
    v7 = v6;
    v6 = *(v6 + 168);
    if (v6 == v7)
    {
      v8 = *(v7 + 72);
      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_9:
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v9)
  {
    v10 = *v63;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v63 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v62 + 1) + 8 * i);
        if ([v12 propertyType] == 3)
        {
          v13 = -[NSSQLiteAdapter newDropIndexStatementForColumnWithName:inTableWithName:](self, [v12 columnName], objc_msgSend(objc_msgSend(v12, "entity"), "tableName"));
          [v49 addObject:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v9);
  }

  v47 = 1;
LABEL_19:
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  manyToManyRelationships = [a2 manyToManyRelationships];
  v15 = [manyToManyRelationships countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v15)
  {
    v16 = *v59;
    do
    {
      v17 = 0;
      do
      {
        if (*v59 != v16)
        {
          objc_enumerationMutation(manyToManyRelationships);
        }

        v18 = *(*(&v58 + 1) + 8 * v17);
        if (v18)
        {
          if (v18[2].isa)
          {
            if ([*(*(&v58 + 1) + 8 * v17) entity] == a2)
            {
              if (v18[2].isa)
              {
                v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@_INDEX", -[__CFString correlationTableName](v18, "correlationTableName"), -[NSSQLManyToMany inverseColumnName](v18)];
                v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP INDEX IF EXISTS %@", v19];

                v21 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v20];
                if (v21)
                {
                  [v49 addObject:v21];
                }
              }
            }
          }
        }

        ++v17;
      }

      while (v15 != v17);
      v22 = [manyToManyRelationships countByEnumeratingWithState:&v58 objects:v68 count:16];
      v15 = v22;
    }

    while (v22);
  }

  v23 = v47 ^ 1;
  if (!a2)
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v24 = *(a2 + 152);
    if (v24)
    {
      if ([v24 count])
      {
        v25 = [objc_msgSend(objc_msgSend(a2 "entityDescription")];
        v26 = v25;
        if (!v25 || ![v25 isNSString] || (v27 = objc_msgSend(v26, "lowercaseString"), (v28 = v27) == 0) || (objc_msgSend(v27, "isEqualToString:", @"yes") & 1) == 0 && (objc_msgSend(v28, "isEqualToString:", @"1") & 1) == 0)
        {
          v29 = -[NSSQLiteAdapter newDropIndexStatementForColumnWithName:inTableWithName:](self, [*(a2 + 136) columnName], objc_msgSend(objc_msgSend(*(a2 + 136), "entity"), "tableName"));
          [v49 addObject:v29];
        }
      }
    }
  }

  if ((entity & 1) == 0)
  {
    entityDescription = [a2 entityDescription];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    indexes = [entityDescription indexes];
    v32 = [indexes countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v32)
    {
      v33 = *v55;
      do
      {
        v34 = 0;
        do
        {
          if (*v55 != v33)
          {
            objc_enumerationMutation(indexes);
          }

          v35 = *(*(&v54 + 1) + 8 * v34);
          if ([objc_msgSend(v35 "elements")])
          {
            v36 = [objc_msgSend(objc_msgSend(v35 "elements")];
            if (v36 == 1)
            {
              if (a2)
              {
                v38 = [*(a2 + 232) objectForKey:{objc_msgSend(v35, "name")}];
              }

              else
              {
                v38 = 0;
              }

              v37 = [v38 dropStatementsForStore:self->_entity];
            }

            else
            {
              if (v36)
              {
                goto LABEL_59;
              }

              v37 = [(NSSQLiteAdapter *)self generateDropBinaryIndexStatementsForIndex:v35 onEntity:a2];
            }

            if (v37)
            {
              [v49 addObjectsFromArray:v37];
            }
          }

LABEL_59:
          ++v34;
        }

        while (v32 != v34);
        v39 = [indexes countByEnumeratingWithState:&v54 objects:v67 count:16];
        v32 = v39;
      }

      while (v39);
    }

    _uniquenessConstraintsAsFetchIndexes = [entityDescription _uniquenessConstraintsAsFetchIndexes];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v41 = [_uniquenessConstraintsAsFetchIndexes countByEnumeratingWithState:&v50 objects:v66 count:16];
    if (v41)
    {
      v42 = *v51;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v51 != v42)
          {
            objc_enumerationMutation(_uniquenessConstraintsAsFetchIndexes);
          }

          v44 = [(NSSQLiteAdapter *)self generateDropBinaryIndexStatementsForIndex:a2 onEntity:?];
          if (v44)
          {
            [v49 addObjectsFromArray:v44];
          }
        }

        v41 = [_uniquenessConstraintsAsFetchIndexes countByEnumeratingWithState:&v50 objects:v66 count:16];
      }

      while (v41);
    }
  }

LABEL_72:
  v45 = *MEMORY[0x1E69E9840];
  return v49;
}

- (id)newCreateTriggersForEntity:(void *)entity existingRtreeTables:
{
  v53 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v36 = 0;
    goto LABEL_40;
  }

  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = [objc_msgSend(objc_msgSend(a2 "entityDescription")];
  v5 = [v4 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v5)
  {
    v6 = *v38;
    v32 = v4;
    v33 = a2;
    do
    {
      v7 = 0;
      do
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v37 + 1) + 8 * v7);
        if ([v8 _propertyType] != 6)
        {
          if ([objc_msgSend(v8 "userInfo")])
          {
            name = [v8 name];
            if (a2)
            {
              v10 = [a2[5] objectForKey:name];
            }

            else
            {
              v10 = 0;
            }

            v45 = 0;
            v47 = 0;
            v48 = &v47;
            v49 = 0x3052000000;
            v50 = __Block_byref_object_copy__470;
            v51 = __Block_byref_object_dispose__471;
            v52 = 0;
            v11 = [NSSQLAttributeExtensionFactory newExtensionsForAttribute:v10 error:&v45];
            v12 = v11;
            if (v11)
            {
              if ([v11 count])
              {
                *&v41 = MEMORY[0x1E69E9820];
                *(&v41 + 1) = 3221225472;
                *&v42 = __72__NSSQLiteAdapter_createSQLStatementsForTriggerAttribute_withSQLEntity___block_invoke;
                *(&v42 + 1) = &unk_1E6EC3E18;
                *&v43 = &v47;
                [v12 enumerateObjectsUsingBlock:&v41];
              }

              else
              {
                v20 = objc_alloc_init(MEMORY[0x1E695DEC8]);
                v48[5] = v20;
              }
            }

            if (!v48[5])
            {
              v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v25 = v24;
              if (v45)
              {
                [v24 setObject:v45 forKey:*MEMORY[0x1E696AA08]];
              }

              v26 = [v25 copy];

              v27 = [_NSCoreDataException exceptionWithName:134060 code:@"Invalid trigger configuration." reason:v26 userInfo:?];
              objc_exception_throw(v27);
            }

            v14 = v48[5];
            _Block_object_dispose(&v47, 8);
            if (v14)
            {
              goto LABEL_34;
            }

            goto LABEL_35;
          }

          if (![v8 attributeType] && objc_msgSend(objc_msgSend(v8, "userInfo"), "objectForKey:", @"_NSLocationAttributeDerivedComponents"))
          {
            v45 = 0;
            v13 = [objc_msgSend(v8 "userInfo")];
            if (!v13)
            {
              goto LABEL_45;
            }

            v35 = -[NSSQLLocationAttributeRTreeExtension initWithObjectFromUserInfo:onAttributeNamed:onEntity:]([NSSQLLocationAttributeRTreeExtension alloc], "initWithObjectFromUserInfo:onAttributeNamed:onEntity:", v13, [v8 name], a2);
            if (!v35 || ([entity containsObject:v35->_rtreeTableName] & 1) != 0)
            {

LABEL_45:
              v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v29 = v28;
              if (v45)
              {
                [v28 setObject:v45 forKey:*MEMORY[0x1E696AA08]];
              }

              v30 = [v29 copy];

              v31 = [_NSCoreDataException exceptionWithName:134060 code:@"Invalid location index configuration." reason:v30 userInfo:?];
              objc_exception_throw(v31);
            }

            v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
            if ([(NSSQLLocationAttributeRTreeExtension *)v35 validate:&v45])
            {
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              insertSQLStrings = [(NSSQLLocationAttributeRTreeExtension *)v35 insertSQLStrings];
              v16 = [(NSArray *)insertSQLStrings countByEnumeratingWithState:&v41 objects:&v47 count:16];
              if (v16)
              {
                v17 = *v42;
                do
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v42 != v17)
                    {
                      objc_enumerationMutation(insertSQLStrings);
                    }

                    v19 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:*(*(&v41 + 1) + 8 * i)];
                    if (v19)
                    {
                      [v14 addObject:v19];
                    }
                  }

                  v16 = [(NSArray *)insertSQLStrings countByEnumeratingWithState:&v41 objects:&v47 count:16];
                }

                while (v16);
              }
            }

            v4 = v32;
            a2 = v33;
            if (!v14)
            {
              goto LABEL_45;
            }

LABEL_34:
            [v36 addObjectsFromArray:v14];
LABEL_35:
          }
        }

        ++v7;
      }

      while (v7 != v5);
      v21 = [v4 countByEnumeratingWithState:&v37 objects:v46 count:16];
      v5 = v21;
    }

    while (v21);
  }

LABEL_40:
  v22 = *MEMORY[0x1E69E9840];
  return v36;
}

- (uint64_t)generateTriggerForEntity:(const __CFDictionary *)entity alreadyCreated:(const __CFDictionary *)created correlations:(const __CFDictionary *)correlations batchHistory:(void *)history fragments:(unsigned int)fragments includesSubentities:(uint64_t *)subentities error:
{
  v164 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (atomic_load((a2 + 124)))
    {
      v14 = *(a2 + 72);
    }

    else
    {
      superentity = a2;
      do
      {
        v14 = superentity;
        superentity = [superentity superentity];
      }

      while (superentity);
    }
  }

  else
  {
    v14 = 0;
  }

  if (CFDictionaryGetValue(entity, a2))
  {
    array = 1;
    goto LABEL_159;
  }

  CFDictionarySetValue(entity, a2, [MEMORY[0x1E695DFB0] null]);
  subentitiesCopy = subentities;
  historyCopy = history;
  if (history)
  {
    historyCopy2 = history;
  }

  else
  {
    historyCopy2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v133 = historyCopy2;
  v18 = [objc_msgSend(a2 "superentity")];
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v130 = a2;
  v19 = [objc_msgSend(a2 "relationshipsByName")];
  v20 = [v19 countByEnumeratingWithState:&v148 objects:v153 count:16];
  theDict = entity;
  if (v20)
  {
    v21 = v20;
    v22 = *v149;
    selfCopy = self;
    v134 = v19;
    v135 = v18;
    v136 = *v149;
    do
    {
      v23 = 0;
      v138 = v21;
      do
      {
        if (*v149 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v148 + 1) + 8 * v23);
        if (([v24 isTransient] & 1) == 0 && !objc_msgSend(v18, "objectForKey:", objc_msgSend(v24, "name")))
        {
          entity = [v24 entity];
          v26 = _sqlCoreLookupSQLEntityForEntityDescription(*(self + 8), entity);
          if (!v26 || ((v27 = v26, v28 = [v26 model], v29 = objc_msgSend(*(self + 8), "model"), v30 = objc_msgSend(entity, "managedObjectModel"), v31 = objc_msgSend(*(self + 8), "configurationName"), !v30) || (objc_msgSend(objc_msgSend(*(*(v30 + 24) + 24), "objectForKey:", v31), "containsObject:", objc_msgSend(entity, "name")) & 1) == 0) && v28 == v29)
          {
            v101 = subentitiesCopy;
            if (subentitiesCopy)
            {
              v102 = MEMORY[0x1E696ABC0];
              v103 = *MEMORY[0x1E696A250];
              *&v160 = @"Reason";
              v159[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Entity named:%@ not found for relationship named:%@", objc_msgSend(entity, "name"), objc_msgSend(v24, "name")];
              *(&v160 + 1) = @"MissingEntity";
              v159[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", objc_msgSend(entity, "name"), entity];
              *&v161 = @"Relationship";
              v159[2] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Name: %@ Destination Entity:%@", objc_msgSend(v24, "name"), objc_msgSend(objc_msgSend(v24, "destinationEntity"), "name")];
              v104 = MEMORY[0x1E695DF20];
              v105 = v159;
              v106 = &v160;
              goto LABEL_134;
            }

LABEL_136:
            array = 0;
            v80 = v133;
            goto LABEL_158;
          }

          v32 = [v27[5] objectForKey:{objc_msgSend(v24, "name")}];
          destinationEntity = [v24 destinationEntity];
          v34 = _sqlCoreLookupSQLEntityForEntityDescription(*(self + 8), destinationEntity);
          if (!v34)
          {
            goto LABEL_132;
          }

          v142 = v34;
          model = [v34 model];
          model2 = [*(selfCopy + 8) model];
          managedObjectModel = [destinationEntity managedObjectModel];
          configurationName = [*(selfCopy + 8) configurationName];
          if (managedObjectModel)
          {
            v39 = [objc_msgSend(*(*(managedObjectModel + 24) + 24) objectForKey:{configurationName), "containsObject:", objc_msgSend(destinationEntity, "name")}];
            v40 = v142;
            if ((v39 & 1) == 0 && model == model2)
            {
LABEL_132:
              v101 = subentitiesCopy;
              if (!subentitiesCopy)
              {
                goto LABEL_136;
              }

              v102 = MEMORY[0x1E696ABC0];
              v103 = *MEMORY[0x1E696A250];
              v157[0] = @"Reason";
              v158[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Entity named:%@ not found for relationship named:%@", objc_msgSend(destinationEntity, "name"), objc_msgSend(v24, "name")];
              v157[1] = @"MissingEntity";
              v158[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", objc_msgSend(destinationEntity, "name"), destinationEntity];
              v157[2] = @"Relationship";
              v158[2] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Name: %@ Destination Entity:%@", objc_msgSend(v24, "name"), objc_msgSend(objc_msgSend(v24, "entity"), "name")];
              v104 = MEMORY[0x1E695DF20];
              v105 = v158;
              v106 = v157;
LABEL_134:
              v107 = [v104 dictionaryWithObjects:v105 forKeys:v106 count:3];
              v108 = v102;
              v109 = v103;
LABEL_135:
              *v101 = [v108 errorWithDomain:v109 code:134060 userInfo:v107];
              goto LABEL_136;
            }
          }

          else
          {
            v40 = v142;
            if (model == model2)
            {
              goto LABEL_132;
            }
          }

          inverseRelationship = [v24 inverseRelationship];
          if (v32)
          {
            v42 = *(v32 + 56);
            if (inverseRelationship)
            {
              goto LABEL_28;
            }

LABEL_32:
            v43 = 0;
          }

          else
          {
            v42 = 0;
            if (!inverseRelationship)
            {
              goto LABEL_32;
            }

LABEL_28:
            v43 = [inverseRelationship isOptional] ^ 1;
          }

          deleteRule = [v24 deleteRule];
          v45 = deleteRule;
          if (deleteRule == 2)
          {
            if (v32 && *(v32 + 24) == 7)
            {
              v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM %@ WHERE Z_PK = OLD.%@", objc_msgSend(v40, "tableName"), objc_msgSend(v32, "columnName"), 0];
              goto LABEL_51;
            }

            if (v42 && *(v42 + 24) == 7)
            {
              v48 = objc_alloc(MEMORY[0x1E696AEC0]);
              tableName = [v40 tableName];
              v50 = v42;
LABEL_50:
              v46 = [v48 initWithFormat:@"DELETE FROM %@ WHERE %@ = OLD.Z_PK", tableName, objc_msgSend(v50, "columnName"), 0];
LABEL_51:
              v51 = v46;
            }

            else
            {
              if (v32 && *(v32 + 24) == 9)
              {
                if (![NSSQLiteAdapter generateCorrelationTableTriggerStatementsForRelationship:selfCopy existing:v24 correlationTableTriggers:created error:subentitiesCopy])
                {
                  goto LABEL_136;
                }

                v48 = objc_alloc(MEMORY[0x1E696AEC0]);
                tableName = [v32 correlationTableName];
                v50 = v32;
                goto LABEL_50;
              }

              v51 = 0;
            }

            if (destinationEntity)
            {
              if (atomic_load((destinationEntity + 124)))
              {
                v53 = *(destinationEntity + 72);
                goto LABEL_55;
              }

              superentity2 = destinationEntity;
              v54 = selfCopy;
              do
              {
                v53 = superentity2;
                superentity2 = [superentity2 superentity];
              }

              while (superentity2);
            }

            else
            {
              v53 = 0;
LABEL_55:
              v54 = selfCopy;
            }

            if (!CFDictionaryContainsKey(theDict, v53) && ([(NSSQLiteAdapter *)v54 generateTriggerForEntity:destinationEntity alreadyCreated:theDict correlations:created batchHistory:correlations fragments:0 includesSubentities:fragments error:subentitiesCopy]& 1) == 0)
            {

              goto LABEL_136;
            }

            v22 = v136;
            v45 = 2;
LABEL_61:
            if (v51)
            {
              v56 = &unk_1EF435DB8;
              if (v45 == 2)
              {
                v56 = &unk_1EF435DA0;
              }

              v154[0] = v56;
              v154[1] = v51;
              v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:2];

              v19 = v134;
              v18 = v135;
              v21 = v138;
              if (!v57)
              {
                goto LABEL_136;
              }

              goto LABEL_88;
            }

LABEL_87:
            v57 = &unk_1EF43D600;
            v19 = v134;
            v18 = v135;
            v21 = v138;
LABEL_88:
            self = selfCopy;
            entity = theDict;
            if ([v57 count] >= 2)
            {
              [v133 addObject:v57];
            }

            goto LABEL_90;
          }

          v22 = v136;
          if (!deleteRule)
          {
            goto LABEL_87;
          }

          if (deleteRule != 1)
          {
            if (!subentitiesCopy)
            {
              goto LABEL_136;
            }

            v101 = subentitiesCopy;
            v111 = MEMORY[0x1E696ABC0];
            v112 = *MEMORY[0x1E696A250];
            v156[0] = @"Delete rule is not supported for batch deletes";
            v155[0] = @"Reason";
            v155[1] = @"Relationship";
            v156[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", objc_msgSend(objc_msgSend(v24, "entity"), "name"), objc_msgSend(v24, "name")];
            v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v156 forKeys:v155 count:2];
            v108 = v111;
            v109 = v112;
            goto LABEL_135;
          }

          if (v32 && *(v32 + 24) == 7)
          {
            if (v43)
            {
              v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT RAISE(FAIL, 'Batch delete failed due to mandatory OTO nullify inverse on %@/%@') FROM %@ WHERE Z_PK = OLD.%@", objc_msgSend(entity, "name"), objc_msgSend(v24, "name"), objc_msgSend(v40, "tableName"), objc_msgSend(v32, "columnName"), 0];
LABEL_70:
              v51 = v47;
              goto LABEL_61;
            }

            if (!v42 || *(v42 + 24) != 7)
            {
              if ([v42 isToMany])
              {
                v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE OR FAIL %@ SET Z_OPT = (Z_OPT + 1) WHERE Z_PK = OLD.%@", objc_msgSend(v40, "tableName"), objc_msgSend(v32, "columnName"), 0];
                v68 = *(selfCopy + 8);
                if (v68 && (v68[201] & 4) != 0)
                {
                  v69 = [(NSSQLiteAdapter *)v68 generateBatchDeleteUpdateHistoryStatementEntity:v142 andRelationship:v32 useInverse:0];
                  v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@; %@", v69, v51];

                  v51 = v70;
                }

                goto LABEL_61;
              }

              goto LABEL_87;
            }

            v61 = v40;
            v62 = *(v42 + 72);
            v63 = objc_alloc(MEMORY[0x1E696AEC0]);
            tableName2 = [v61 tableName];
            columnName = [v42 columnName];
            if (v62)
            {
              columnName2 = [*(v42 + 72) columnName];
              columnName3 = [v42 columnName];
              v123 = 0;
              v67 = [v63 initWithFormat:@"UPDATE OR FAIL %@ SET %@ = NULL, %@ = NULL, Z_OPT = (Z_OPT + 1) WHERE %@ = OLD.Z_PK", tableName2, columnName, columnName2];
            }

            else
            {
              columnName3 = 0;
              v67 = [v63 initWithFormat:@"UPDATE OR FAIL %@ SET %@ = NULL, Z_OPT = (Z_OPT + 1) WHERE %@ = OLD.Z_PK", tableName2, columnName, objc_msgSend(v42, "columnName")];
            }

            v51 = v67;
            v78 = *(selfCopy + 8);
            v45 = 1;
          }

          else
          {
            if (!v42 || *(v42 + 24) != 7)
            {
              if (v32 && *(v32 + 24) == 9)
              {
                if (![NSSQLiteAdapter generateCorrelationTableTriggerStatementsForRelationship:selfCopy existing:v24 correlationTableTriggers:created error:subentitiesCopy])
                {
                  goto LABEL_136;
                }

                if (v43)
                {
                  correlationTableName = [v32 correlationTableName];
                  columnName4 = [v32 columnName];
                  columnName5 = [v42 columnName];
                  v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WITH ZCTE_INTERMEDIATE AS (SELECT %@, %@ FROM %@ WHERE %@ = OLD.Z_PK) SELECT RAISE(FAIL, 'Batch delete failed due to mandatory MTM nullify inverse on %@/%@') FROM ZCTE_INTERMEDIATE T0 WHERE (0 == (SELECT COUNT(*) FROM %@ T1 where T1.%@ = T0.%@ and T1.%@ != OLD.Z_PK))", columnName4, columnName5, correlationTableName, columnName4, objc_msgSend(entity, "name"), objc_msgSend(v24, "name"), correlationTableName, columnName5, columnName5, columnName4, 0];
                }

                else
                {
                  v129 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM %@ WHERE %@ = OLD.Z_PK", objc_msgSend(v32, "correlationTableName"), objc_msgSend(v32, "columnName"), 0, columnName3, v123, v124, v125, v126, v127, v128, v129];
                }

                v51 = v129;
                v22 = v136;
                goto LABEL_61;
              }

              goto LABEL_87;
            }

            if (v43)
            {
              v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT RAISE(FAIL, 'Batch delete failed due to manadatory OTM nullify inverse on %@/%@') FROM %@ WHERE %@ = OLD.Z_PK", objc_msgSend(entity, "name"), objc_msgSend(v24, "name"), objc_msgSend(v40, "tableName"), objc_msgSend(v42, "columnName"), 0];
              goto LABEL_70;
            }

            if ([v24 isOrdered])
            {
              v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE OR FAIL %@ SET %@ = NULL, %@ = NULL, Z_OPT = (Z_OPT + 1) WHERE %@ = OLD.Z_PK", objc_msgSend(v40, "tableName"), objc_msgSend(v42, "columnName"), objc_msgSend(*(v42 + 80), "columnName"), objc_msgSend(v42, "columnName"), 0];
              v45 = 1;
              goto LABEL_61;
            }

            v71 = v40;
            v72 = *(v42 + 72);
            v73 = objc_alloc(MEMORY[0x1E696AEC0]);
            tableName3 = [v71 tableName];
            columnName6 = [v42 columnName];
            if (v72)
            {
              columnName7 = [*(v42 + 72) columnName];
              columnName3 = [v42 columnName];
              v123 = 0;
              v77 = [v73 initWithFormat:@"UPDATE OR FAIL %@ SET %@ = NULL, %@ = NULL, Z_OPT = (Z_OPT + 1) WHERE %@ = OLD.Z_PK", tableName3, columnName6, columnName7];
            }

            else
            {
              columnName3 = 0;
              v77 = [v73 initWithFormat:@"UPDATE OR FAIL %@ SET %@ = NULL, Z_OPT = (Z_OPT + 1) WHERE %@ = OLD.Z_PK", tableName3, columnName6, objc_msgSend(v42, "columnName")];
            }

            v51 = v77;
            v78 = *(selfCopy + 8);
            v45 = 1;
          }

          if (v78 && (v78[201] & 4) != 0)
          {
            [NSSQLiteAdapter generateBatchDeleteUpdateHistoryTriggerForEntity:v78 andRelationship:v142 batchHistory:v42 error:correlations];
          }

          goto LABEL_61;
        }

LABEL_90:
        ++v23;
      }

      while (v23 != v21);
      v79 = [v19 countByEnumeratingWithState:&v148 objects:v153 count:16];
      v21 = v79;
    }

    while (v79);
  }

  v80 = v133;
  if (fragments)
  {
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    subentities = [v130 subentities];
    v82 = [subentities countByEnumeratingWithState:&v144 objects:v152 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v145;
      while (2)
      {
        for (i = 0; i != v83; ++i)
        {
          if (*v145 != v84)
          {
            objc_enumerationMutation(subentities);
          }

          if (![(NSSQLiteAdapter *)self generateTriggerForEntity:entity alreadyCreated:created correlations:correlations batchHistory:v133 fragments:1 includesSubentities:subentitiesCopy error:?])
          {
            array = 0;
            goto LABEL_158;
          }
        }

        v83 = [subentities countByEnumeratingWithState:&v144 objects:v152 count:16];
        if (v83)
        {
          continue;
        }

        break;
      }
    }
  }

  if (!historyCopy)
  {
    if ([v133 count])
    {
      v86 = _sqlCoreLookupSQLEntityForEntityDescription(*(self + 8), v130);
      tableName4 = [v86 tableName];
      v88 = objc_alloc_init(MEMORY[0x1E696AD60]);
      [v133 sortUsingComparator:&__block_literal_global_17];
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v89 = [v133 countByEnumeratingWithState:&v160 objects:v159 count:16];
      if (v89)
      {
        v90 = v89;
        v91 = *v161;
        do
        {
          for (j = 0; j != v90; ++j)
          {
            if (*v161 != v91)
            {
              objc_enumerationMutation(v133);
            }

            [v88 appendString:{objc_msgSend(*(*(&v160 + 1) + 8 * j), "lastObject")}];
            [v88 appendString:@"; "];
          }

          v90 = [v133 countByEnumeratingWithState:&v160 objects:v159 count:16];
        }

        while (v90);
      }

      v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TEMPORARY TRIGGER IF NOT EXISTS ZQ_%@_TRIGGER AFTER DELETE ON %@ FOR EACH ROW BEGIN %@ END", tableName4, tableName4, v88];

      v94 = [[NSSQLiteStatement alloc] initWithEntity:v86];
      v95 = v94;
      if (v94)
      {
        sqlString = v94->_sqlString;
        if (sqlString != v93)
        {

          v95->_sqlString = [(NSString *)v93 copy];
        }
      }

      v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TRIGGER IF EXISTS ZQ_%@_TRIGGER", tableName4];
      v98 = [[NSSQLiteStatement alloc] initWithEntity:v86];
      v99 = v98;
      if (v98)
      {
        v100 = v98->_sqlString;
        if (v100 != v97)
        {

          v99->_sqlString = [(NSString *)v97 copy];
        }
      }

      array = [MEMORY[0x1E695DF70] arrayWithObjects:{v95, v99, 0}];

      entity = theDict;
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
    }

    if (!array)
    {
      goto LABEL_159;
    }

    if ([array count])
    {
      Value = CFDictionaryGetValue(entity, v14);
      if ([MEMORY[0x1E695DFB0] null] == Value)
      {
        CFDictionarySetValue(entity, v14, array);
      }

      else
      {
        [Value addObjectsFromArray:array];
      }
    }

    if (correlations)
    {
      v113 = *(self + 8);
      v114 = v113 ? [*(v113 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToInclude"] : 0;
      if ([v114 containsObject:{objc_msgSend(v14, "name")}])
      {
        v115 = [objc_msgSend(v14 "managedObjectModel")];
        if (v115 != +[_PFPersistentHistoryModel ancillaryEntityOffset])
        {
          v116 = [NSSQLiteAdapter generateDeleteHistoryTriggerForEntity:self error:v14];
          v117 = CFDictionaryGetValue(correlations, v14);
          null = [MEMORY[0x1E695DFB0] null];
          if (!v117 || null == v117)
          {
            CFDictionarySetValue(correlations, v14, v116);
          }

          else
          {
            [v117 addObjectsFromArray:v116];
          }
        }
      }
    }

    v80 = 0;
  }

  array = 1;
LABEL_158:

LABEL_159:
  v119 = *MEMORY[0x1E69E9840];
  return array;
}

- (void)generateBatchDeleteUpdateHistoryTriggerForEntity:(void *)entity andRelationship:(void *)relationship batchHistory:(void *)history error:(const __CFDictionary *)error
{
  v5 = [objc_msgSend(objc_msgSend(entity "ancillarySQLModels")];
  v6 = v5;
  if (v5)
  {
    v7 = [*(v5 + 40) objectForKey:@"COLUMNS"];
    v8 = [*(v6 + 40) objectForKey:@"ENTITYPK"];
    v9 = [*(v6 + 40) objectForKey:@"ENTITY"];
    v33 = [*(v6 + 40) objectForKey:@"CHANGETYPE"];
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
    v33 = 0;
  }

  historyCopy = history;
  v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"(SELECT NSPersistentHistoryBatchDeleteUpdateTrigger(Z_ENT, '%@'))", objc_msgSend(history, "name")];
  v34 = v9;
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ON CONFLICT(%@, %@) DO UPDATE SET %@ = NSPersistentHistoryBatchDeleteUpdateTriggerDataBlobOperator(%@, excluded.%@)", objc_msgSend(v8, "columnName"), objc_msgSend(v9, "columnName"), objc_msgSend(v7, "columnName"), objc_msgSend(v7, "columnName"), objc_msgSend(v7, "columnName")];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FROM %@ WHERE Z_PK = OLD.Z_PK", objc_msgSend(relationship, "tableName")];
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  tempTableName = [(NSSQLEntity *)v6 tempTableName];
  if (v6)
  {
    v14 = *(v6 + 136);
  }

  else
  {
    v14 = 0;
  }

  columnName = [v14 columnName];
  columnName2 = [v8 columnName];
  columnName3 = [v34 columnName];
  columnName4 = [v33 columnName];
  columnName5 = [v7 columnName];
  if (v6)
  {
    v20 = *(v6 + 184);
  }

  else
  {
    v20 = 0;
  }

  v21 = [v12 initWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@) SELECT %u, Z_PK, Z_ENT, %ld, %@ %@ %@;", tempTableName, columnName, columnName2, columnName3, columnName4, columnName5, v20, 1, v38, v11, v10];

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TEMPORARY TRIGGER IF NOT EXISTS ZQ_%@_%@_HISTORYBATCHDELETEUPDATE_TRIGGER AFTER UPDATE OF %@ ON %@ FOR EACH ROW BEGIN %@ END", objc_msgSend(relationship, "tableName"), objc_msgSend(historyCopy, "columnName"), objc_msgSend(historyCopy, "columnName"), objc_msgSend(relationship, "tableName"), v21];
  v23 = [[NSSQLiteStatement alloc] initWithEntity:relationship];
  v24 = v23;
  if (v23)
  {
    sqlString = v23->_sqlString;
    if (sqlString != v22)
    {

      v24->_sqlString = [(NSString *)v22 copy];
    }
  }

  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DROP TRIGGER IF EXISTS ZQ_%@_%@_HISTORYBATCHDELETEUPDATE_TRIGGER", objc_msgSend(relationship, "tableName"), objc_msgSend(historyCopy, "columnName")];
  v27 = [[NSSQLiteStatement alloc] initWithEntity:relationship];
  v39 = v27;
  if (v27)
  {
    v28 = v27->_sqlString;
    if (v28 != v26)
    {

      v39->_sqlString = [(NSString *)v26 copy];
    }
  }

  v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v24, v39, 0}];
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", objc_msgSend(relationship, "name"), objc_msgSend(historyCopy, "name")];
  Value = CFDictionaryGetValue(error, v30);
  null = [MEMORY[0x1E695DFB0] null];
  if (!Value || null == Value)
  {
    CFDictionarySetValue(error, v30, v29);
  }

  else
  {
    [Value addObjectsFromArray:v29];
  }
}

uint64_t __88__NSSQLiteAdapter_generateTriggerStatementsForEntity_usingRelationshipCleanupSQL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 firstObject];
  v5 = [a3 firstObject];

  return [v4 compare:v5];
}

- (uint64_t)generateDeleteHistoryTriggerForEntity:(uint64_t)entity error:(void *)error
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = _sqlCoreLookupSQLEntityForEntityDescription(*(entity + 8), error);
  tableName = [v3 tableName];
  if (v3)
  {
    columnName = [*(v3 + 136) columnName];
    v4 = *(v3 + 128);
  }

  else
  {
    columnName = [0 columnName];
    v4 = 0;
  }

  columnName2 = [v4 columnName];
  v50 = v3;
  v5 = [_PFPersistentHistoryModel _tombstonesColumnsForEntity:v3];
  v6 = [objc_msgSend(objc_msgSend(*(entity + 8) "ancillarySQLModels")];
  v7 = v6;
  if (v6)
  {
    v8 = [*(v6 + 40) objectForKey:@"ENTITYPK"];
    v9 = [*(v7 + 40) objectForKey:@"ENTITY"];
    v10 = [*(v7 + 40) objectForKey:@"CHANGETYPE"];
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v10 = 0;
  }

  v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"INSERT OR REPLACE INTO %@ ", -[NSSQLEntity tempTableName](v7)];
  v12 = objc_alloc(MEMORY[0x1E696AD60]);
  v47 = v11;
  if (v7)
  {
    v13 = *(v7 + 136);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v12 initWithFormat:@"%@, %@, %@, %@", objc_msgSend(v13, "columnName"), objc_msgSend(v8, "columnName"), objc_msgSend(v9, "columnName"), objc_msgSend(v10, "columnName")];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v5 count])
  {
    v16 = [v5 count];
    v64[3] = v16;
    if (v50)
    {
      v17 = *(v50 + 184);
    }

    else
    {
      v17 = 0;
    }

    [v15 setObject:v5 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", v17)}];
  }

  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3052000000;
  v62[3] = __Block_byref_object_copy__29;
  v62[4] = __Block_byref_object_dispose__29;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __63__NSSQLiteAdapter_generateDeleteHistoryTriggerForEntity_error___block_invoke;
  v61[3] = &unk_1E6EC3DC8;
  v61[4] = v15;
  v61[5] = &v63;
  v61[6] = v62;
  v62[5] = v61;
  __63__NSSQLiteAdapter_generateDeleteHistoryTriggerForEntity_error___block_invoke(v61, v50);
  if (v64[3])
  {
    v18 = 1;
    do
    {
      [v14 appendFormat:@", Z%@%u", @"TOMBSTONE", v18 - 1];
    }

    while (v64[3] > v18++);
  }

  v20 = objc_alloc(MEMORY[0x1E696AD60]);
  if (v7)
  {
    v21 = *(v7 + 184);
  }

  else
  {
    v21 = 0;
  }

  v22 = [v20 initWithFormat:@"SELECT %d, %@, %@, %ld", v21, columnName2, columnName, 2];
  if (v64[3])
  {
    v23 = [v5 count];
    v24 = v64[3];
    if (v23 == v24)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v25 = [v5 countByEnumeratingWithState:&v57 objects:v68 count:16];
      if (v25)
      {
        v26 = *v58;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v58 != v26)
            {
              objc_enumerationMutation(v5);
            }

            [v22 appendFormat:@", OLD.%@", *(*(&v57 + 1) + 8 * i)];
          }

          v25 = [v5 countByEnumeratingWithState:&v57 objects:v68 count:16];
        }

        while (v25);
      }
    }

    else if (v24)
    {
      v28 = 0;
      v29 = 0;
      do
      {
        v52 = v29;
        [v22 appendFormat:@", CASE %@ ", columnName];
        v30 = v14;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v31 = [v15 countByEnumeratingWithState:&v53 objects:v67 count:16];
        if (v31)
        {
          v32 = *v54;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v54 != v32)
              {
                objc_enumerationMutation(v15);
              }

              v34 = *(*(&v53 + 1) + 8 * j);
              v35 = [v15 objectForKey:v34];
              if ([v35 count] > v28)
              {
                [v22 appendFormat:@"WHEN %@ THEN (SELECT %@) ", v34, objc_msgSend(v35, "objectAtIndexedSubscript:", v28)];
              }
            }

            v31 = [v15 countByEnumeratingWithState:&v53 objects:v67 count:16];
          }

          while (v31);
        }

        [v22 appendFormat:@"ELSE NULL "];
        v14 = v30;
        [v22 appendFormat:@"END "];
        v28 = (v52 + 1);
        v29 = v52 + 1;
      }

      while (v64[3] > v28);
    }
  }

  [v47 appendFormat:@"(%@) %@ FROM %@ WHERE %@ = OLD.%@;", v14, v22, tableName, columnName2, columnName2];

  v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CREATE TEMPORARY TRIGGER IF NOT EXISTS ZQ_%@_HISTORYBATCHDELETE_TRIGGER BEFORE DELETE ON %@ FOR EACH ROW BEGIN %@ END", tableName, tableName, v47];
  v37 = [[NSSQLiteStatement alloc] initWithEntity:v50];
  v38 = v37;
  if (v37)
  {
    sqlString = v37->_sqlString;
    if (sqlString != v36)
    {

      v38->_sqlString = [(NSString *)v36 copy];
    }
  }

  v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TRIGGER IF EXISTS ZQ_%@_HISTORYBATCHDELETE_TRIGGER", tableName];
  v41 = [[NSSQLiteStatement alloc] initWithEntity:v50];
  v42 = v41;
  if (v41)
  {
    v43 = v41->_sqlString;
    if (v43 != v40)
    {

      v42->_sqlString = [(NSString *)v40 copy];
    }
  }

  v44 = [MEMORY[0x1E695DF70] arrayWithObjects:{v38, v42, 0}];

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(&v63, 8);
  v45 = *MEMORY[0x1E69E9840];
  return v44;
}

uint64_t __63__NSSQLiteAdapter_generateDeleteHistoryTriggerForEntity_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v17 = *MEMORY[0x1E69E9840];
  v4 = [_PFPersistentHistoryModel _tombstonesColumnsForEntity:a2];
  if ([v4 count])
  {
    v5 = v2 ? *(v2 + 184) : 0;
    [*(a1 + 32) setObject:v4 forKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", v5)}];
    if ([v4 count] > *(*(*(a1 + 40) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = [v4 count];
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (v2)
  {
    v2 = *(v2 + 152);
  }

  result = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
        ++v9;
      }

      while (v7 != v9);
      result = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
    }

    while (result);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __82__NSSQLiteAdapter__generateExternalDataRefStatementsForEntities_inRequestContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v27 = *MEMORY[0x1E69E9840];
  result = [(NSEntityDescription *)a2 _hasAttributesWithExternalDataReferences];
  if (result)
  {
    v4 = _sqlCoreLookupSQLEntityForEntityDescription(*(*(a1 + 32) + 8), v2);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    result = [v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (result)
    {
      v5 = result;
      v6 = 0x1E696A000uLL;
      v7 = *v23;
      v19 = *v23;
      v20 = v2;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v22 + 1) + 8 * v8);
          if ([v9 _propertyType] == 2 && objc_msgSend(v9, "storesBinaryDataExternally"))
          {
            v10 = [v9 name];
            if (v4)
            {
              v11 = [*(v4 + 40) objectForKey:v10];
            }

            else
            {
              v11 = 0;
            }

            v12 = [objc_msgSend(v4 "rootEntity")];
            if (v4 && !*(v4 + 160))
            {
              v13 = &stru_1EF3F1768;
            }

            else
            {
              v13 = [*(v6 + 3776) stringWithFormat:@"_%@", objc_msgSend(v4, "name")];
            }

            v14 = v6;
            v15 = [v11 columnName];
            v16 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", v4, [*(v6 + 3776) stringWithFormat:@"CREATE TEMPORARY TRIGGER IF NOT EXISTS ZQ_EDR_%@_%@%@ BEFORE DELETE ON %@ FOR EACH ROW WHEN OLD.%@ IS NOT NULL BEGIN INSERT INTO %@ VALUES (OLD.%@); END", v12, v15, v13, v12, v15, *(a1 + 40), v15]);
            [*(a1 + 48) addObject:v16];

            v17 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", v4, [*(v14 + 3776) stringWithFormat:@"DROP TRIGGER IF EXISTS ZQ_EDR_%@_%@%@", v12, v15, v13]);
            [*(a1 + 56) addObject:v17];

            v6 = v14;
            v7 = v19;
            v2 = v20;
          }

          ++v8;
        }

        while (v5 != v8);
        result = [v2 countByEnumeratingWithState:&v22 objects:v26 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)generateDeleteStatementsForRequest:(uint64_t *)request error:
{
  v129[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_125;
  }

  request = [a2 request];
  fetchRequestForObjectsToDelete = [(NSSQLBatchDeleteRequestContext *)a2 fetchRequestForObjectsToDelete];
  resultType = [request resultType];
  v9 = resultType;
  if (a2)
  {
    if (resultType == 1)
    {
      v10 = *(a2 + 112);
      if (v10)
      {
        if (![v10 count])
        {
          array = NSArray_EmptyArray;
          goto LABEL_126;
        }

        [fetchRequestForObjectsToDelete setPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"SELF IN %@", *(a2 + 112))}];
        [fetchRequestForObjectsToDelete setSortDescriptors:0];
        [fetchRequestForObjectsToDelete setFetchOffset:0];
        goto LABEL_7;
      }

      goto LABEL_123;
    }
  }

  else if (resultType == 1)
  {
LABEL_123:
    if (request)
    {
      array = 0;
      *request = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF4356E8];
      goto LABEL_126;
    }

LABEL_125:
    array = 0;
    goto LABEL_126;
  }

LABEL_7:
  entity = [fetchRequestForObjectsToDelete entity];
  v12 = _sqlCoreLookupSQLEntityForEntityDescription(*(self + 8), entity);
  v13 = v12;
  if (request && !v12)
  {
    v14 = MEMORY[0x1E696ABC0];
    v126[0] = @"Reason";
    v126[1] = @"Model Configuration";
    v127[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSBatchDeleteRequest could not locate an Entity for entity name '%@'", objc_msgSend(entity, "name")];
    configurationName = [*(self + 8) configurationName];
    v16 = @"Default";
    if (configurationName)
    {
      v16 = configurationName;
    }

    v127[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:2];
    *request = [v14 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v17];
  }

  v18 = [(NSSQLiteAdapter *)self newSelectStatementWithFetchRequest:fetchRequestForObjectsToDelete ignoreInheritance:0];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_21;
  }

  if (v18[40])
  {

    array = [MEMORY[0x1E695DF70] array];
    goto LABEL_126;
  }

  sqlString = [v18 sqlString];
  v23 = [sqlString rangeOfString:{@"t0.Z_ENT, "}];
  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
    sqlString = [sqlString stringByReplacingCharactersInRange:v23 withString:{v22, &stru_1EF3F1768}];
  }

  v25 = [sqlString rangeOfString:{@"0, "}];
  if (v25 != 0x7FFFFFFFFFFFFFFFLL)
  {
    sqlString = [sqlString stringByReplacingCharactersInRange:v25 withString:{v24, &stru_1EF3F1768}];
  }

  if (sqlString)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM %@ WHERE Z_PK IN (%@)", objc_msgSend(v13, "tableName", v25), sqlString];
  }

  else
  {
LABEL_21:
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM %@", objc_msgSend(v13, "tableName")];
  }

  v27 = v26;
  v92 = [[NSSQLiteStatement alloc] initWithEntity:v13];
  if (v92)
  {
    sqlString = v92->_sqlString;
    if (sqlString != v27)
    {

      v92->_sqlString = [(NSString *)v27 copy];
    }

    if (v9 == 2)
    {
      v92->_trackChangedRowCount = 1;
    }
  }

  if (v19)
  {
    -[NSSQLiteStatement setBindIntarrays:](v92, [v19 bindIntarrays]);
    -[NSSQLiteAdapter _useModel:](v92, [v19 bindVariables]);
  }

  if (entity)
  {
    if (atomic_load((entity + 124)))
    {
      v30 = *(entity + 72);
    }

    else
    {
      do
      {
        v30 = entity;
        entity = [entity superentity];
      }

      while (entity);
    }
  }

  else
  {
    v30 = 0;
  }

  os_unfair_lock_lock_with_options();
  Value = CFDictionaryGetValue(*(self + 24), v30);
  v32 = Value;
  os_unfair_lock_unlock((self + 32));
  v33 = Value;
  if (v33)
  {
    array = [MEMORY[0x1E695DF70] array];
    [array addObject:{objc_msgSend(v33, "firstObject")}];
    [array addObject:v92];
    [array addObject:{objc_msgSend(v33, "lastObject")}];
  }

  else
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = *(self + 16);
    if (v36)
    {
      v37 = *(v36 + 32);
    }

    else
    {
      v37 = 0;
    }

    v38 = [v37 count];
    v39 = *MEMORY[0x1E695E480];
    cf = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v38, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v40 = *(self + 16);
    if (v40)
    {
      v41 = *(v40 + 32);
    }

    else
    {
      v41 = 0;
    }

    v42 = [v41 count];
    Mutable = CFDictionaryCreateMutable(v39, v42, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v43 = *(self + 8);
    if (v43 && (*(v43 + 201) & 4) != 0)
    {
      v44 = *(self + 16);
      if (v44)
      {
        v45 = *(v44 + 32);
      }

      else
      {
        v45 = 0;
      }

      v46 = [v45 count];
      v89 = CFDictionaryCreateMutable(v39, v46, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v89 = 0;
    }

    v88 = -[NSSQLiteAdapter generateTriggerForEntity:alreadyCreated:correlations:batchHistory:fragments:includesSubentities:error:](self, v30, cf, Mutable, v89, 0, [fetchRequestForObjectsToDelete includesSubentities], request);
    if (v88)
    {
      if (!a2 || (*(a2 + 83) & 1) == 0)
      {
        v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ([(__CFDictionary *)cf count])
        {
          if (a2)
          {
            objc_setProperty_nonatomic(a2, v48, @"ZQ_BATCH_DELETE_MARSHALLING", 88);
          }

          v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v117[0] = MEMORY[0x1E69E9820];
          v117[1] = 3221225472;
          v117[2] = __82__NSSQLiteAdapter__generateExternalDataRefStatementsForEntities_inRequestContext___block_invoke;
          v117[3] = &unk_1E6EC3DF0;
          v117[4] = self;
          v117[5] = @"ZQ_BATCH_DELETE_MARSHALLING";
          v117[6] = v49;
          v117[7] = v50;
          [(__CFDictionary *)cf enumerateKeysAndObjectsUsingBlock:v117];
          if ([v49 count])
          {
            v51 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:@"CREATE TEMP TABLE ZQ_BATCH_DELETE_MARSHALLING(refToDelete)"];
            [v49 insertObject:v51 atIndex:0];

            [v47 addObject:v49];
            [v47 addObject:v50];
            v52 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:@"SELECT refToDelete FROM ZQ_BATCH_DELETE_MARSHALLING"];
            v129[0] = v52;
            [v47 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v129, 1)}];

            v53 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:@"DROP TABLE ZQ_BATCH_DELETE_MARSHALLING"];
            v128 = v53;
            [v47 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v128, 1)}];
          }
        }

        if (a2)
        {
          objc_setProperty_nonatomic(a2, v48, v47, 128);
        }
      }

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      allValues = [(__CFDictionary *)cf allValues];
      v55 = [allValues countByEnumeratingWithState:&v113 objects:v125 count:16];
      if (v55)
      {
        v56 = *v114;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v114 != v56)
            {
              objc_enumerationMutation(allValues);
            }

            v58 = *(*(&v113 + 1) + 8 * i);
            if ([MEMORY[0x1E695DFB0] null] != v58)
            {
              [v34 addObject:{objc_msgSend(v58, "firstObject")}];
            }
          }

          v55 = [allValues countByEnumeratingWithState:&v113 objects:v125 count:16];
        }

        while (v55);
      }

      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      allValues2 = [(__CFDictionary *)Mutable allValues];
      v60 = [allValues2 countByEnumeratingWithState:&v109 objects:v124 count:16];
      if (v60)
      {
        v61 = *v110;
        do
        {
          for (j = 0; j != v60; ++j)
          {
            if (*v110 != v61)
            {
              objc_enumerationMutation(allValues2);
            }

            v63 = *(*(&v109 + 1) + 8 * j);
            if ([MEMORY[0x1E695DFB0] null] != v63)
            {
              [v34 addObject:{objc_msgSend(v63, "firstObject")}];
            }
          }

          v60 = [allValues2 countByEnumeratingWithState:&v109 objects:v124 count:16];
        }

        while (v60);
      }

      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      allValues3 = [(__CFDictionary *)v89 allValues];
      v65 = [allValues3 countByEnumeratingWithState:&v105 objects:v123 count:16];
      if (v65)
      {
        v66 = *v106;
        do
        {
          for (k = 0; k != v65; ++k)
          {
            if (*v106 != v66)
            {
              objc_enumerationMutation(allValues3);
            }

            v68 = *(*(&v105 + 1) + 8 * k);
            if ([MEMORY[0x1E695DFB0] null] != v68)
            {
              [v34 addObject:{objc_msgSend(v68, "firstObject")}];
            }
          }

          v65 = [allValues3 countByEnumeratingWithState:&v105 objects:v123 count:16];
        }

        while (v65);
      }

      [0 addObject:v92];
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      allValues4 = [(__CFDictionary *)cf allValues];
      v70 = [allValues4 countByEnumeratingWithState:&v101 objects:v122 count:16];
      if (v70)
      {
        v71 = *v102;
        do
        {
          for (m = 0; m != v70; ++m)
          {
            if (*v102 != v71)
            {
              objc_enumerationMutation(allValues4);
            }

            v73 = *(*(&v101 + 1) + 8 * m);
            if ([MEMORY[0x1E695DFB0] null] != v73)
            {
              [v35 addObject:{objc_msgSend(v73, "lastObject")}];
            }
          }

          v70 = [allValues4 countByEnumeratingWithState:&v101 objects:v122 count:16];
        }

        while (v70);
      }

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      allValues5 = [(__CFDictionary *)Mutable allValues];
      v75 = [allValues5 countByEnumeratingWithState:&v97 objects:v121 count:16];
      if (v75)
      {
        v76 = *v98;
        do
        {
          for (n = 0; n != v75; ++n)
          {
            if (*v98 != v76)
            {
              objc_enumerationMutation(allValues5);
            }

            v78 = *(*(&v97 + 1) + 8 * n);
            if ([MEMORY[0x1E695DFB0] null] != v78)
            {
              [v35 addObject:{objc_msgSend(v78, "lastObject")}];
            }
          }

          v75 = [allValues5 countByEnumeratingWithState:&v97 objects:v121 count:16];
        }

        while (v75);
      }

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      allValues6 = [(__CFDictionary *)v89 allValues];
      v80 = [allValues6 countByEnumeratingWithState:&v93 objects:v120 count:16];
      if (v80)
      {
        v81 = *v94;
        do
        {
          for (ii = 0; ii != v80; ++ii)
          {
            if (*v94 != v81)
            {
              objc_enumerationMutation(allValues6);
            }

            v83 = *(*(&v93 + 1) + 8 * ii);
            if ([MEMORY[0x1E695DFB0] null] != v83)
            {
              [v35 addObject:{objc_msgSend(v83, "lastObject")}];
            }
          }

          v80 = [allValues6 countByEnumeratingWithState:&v93 objects:v120 count:16];
        }

        while (v80);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v89)
    {
      CFRelease(v89);
    }

    array2 = [MEMORY[0x1E695DF70] array];
    array = array2;
    if (v88)
    {
      [array2 addObject:v34];
      v119 = v92;
      [array addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v119, 1)}];
      [array addObject:v35];
      v118[0] = v34;
      v118[1] = v35;
      v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];
      os_unfair_lock_lock_with_options();
      CFDictionarySetValue(*(self + 24), v85, v30);
      os_unfair_lock_unlock((self + 32));
    }
  }

LABEL_126:
  v86 = *MEMORY[0x1E69E9840];
  return array;
}

- (NSSQLiteStatement)generateSQLStatmentForSourcesAndOrderKeysForDestination:(void *)destination inToMany:
{
  if (result)
  {
    sourceEntity = [destination sourceEntity];
    if (sourceEntity)
    {
      v6 = sourceEntity;
      v7 = *(sourceEntity + 184);
      destinationEntity = [destination destinationEntity];
      v9 = *(v6 + 152);
    }

    else
    {
      destinationEntity = [destination destinationEntity];
      v7 = 0;
      v9 = 0;
    }

    v10 = [v9 count];
    if (destination)
    {
      v11 = destination[7];
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_msgSend(v11 "foreignKey")];
    if (v10)
    {
      if (v11)
      {
        v13 = v11[9];
      }

      else
      {
        v13 = 0;
      }

      columnName = [v13 columnName];
    }

    else
    {
      columnName = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", v7];
    }

    v15 = columnName;
    if (v11)
    {
      v16 = v11[10];
    }

    else
    {
      v16 = 0;
    }

    columnName2 = [v16 columnName];
    tableName = [destinationEntity tableName];
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT %@, %@, %@ FROM %@ WHERE Z_PK = %u", v12, v15, columnName2, tableName, objc_msgSend(a2, "_referenceData64")];
    v20 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v19];

    return v20;
  }

  return result;
}

- (NSSQLiteStatement)generateSQLStatmentForSourcesAndOrderKeysForDestination:(__CFString *)destination inManyToMany:
{
  if (result)
  {
    sourceEntity = [(__CFString *)destination sourceEntity];
    v6 = sourceEntity;
    if (sourceEntity)
    {
      v7 = *(sourceEntity + 184);
      sourceEntity = *(sourceEntity + 152);
    }

    else
    {
      v7 = 0;
    }

    v8 = [sourceEntity count];
    correlationTableName = [(__CFString *)destination correlationTableName];
    tableName = [v6 tableName];
    columnName = [(__CFString *)destination columnName];
    inverseOrderColumnName = [(NSSQLManyToMany *)destination inverseOrderColumnName];
    if (v8)
    {
      if (v6)
      {
        v13 = v6[17];
      }

      else
      {
        v13 = 0;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"T1.%@", objc_msgSend(v13, "columnName")];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT T0.%@, %@, T0.%@ from %@ T0 JOIN %@ T1 on t0.%@ = t1.Z_PK where T0.%@ = %u", columnName, v14, inverseOrderColumnName, correlationTableName, tableName, columnName, -[NSSQLManyToMany inverseColumnName](destination), objc_msgSend(a2, "_referenceData64")];
    }

    else
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", v7];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT %@, %@, %@ FROM %@ WHERE %@ = %u", columnName, v16, inverseOrderColumnName, correlationTableName, -[NSSQLManyToMany inverseColumnName](destination), objc_msgSend(a2, "_referenceData64"), v19, v20];
    }

    v17 = v15;
    v18 = [[NSSQLiteStatement alloc] initWithEntity:v6 sqlString:v15];

    return v18;
  }

  return result;
}

+ (NSSQLiteStatement)generateStatementForCheckingUniqueProperties:(void *)properties onObjects:(void *)objects usingSQLCore:
{
  v89 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  superentity = [objc_msgSend(properties "lastObject")];
  if (superentity)
  {
    if (atomic_load((superentity + 124)))
    {
      v8 = *(superentity + 72);
    }

    else
    {
      do
      {
        v8 = superentity;
        superentity = [superentity superentity];
      }

      while (superentity);
    }
  }

  else
  {
    v8 = 0;
  }

  v56 = _sqlCoreLookupSQLEntityForEntityDescription(objects, v8);
  v9 = objc_alloc(MEMORY[0x1E696AD60]);
  if ([objc_msgSend(v8 "subentities")])
  {
    v10 = @"Z_PK, Z_ENT";
  }

  else
  {
    v10 = @"Z_PK";
  }

  v11 = [v9 initWithString:v10];
  v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v64 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v61 = [a2 countByEnumeratingWithState:&v77 objects:v88 count:16];
  if (v61)
  {
    v60 = *v78;
    v59 = v11;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v78 != v60)
        {
          objc_enumerationMutation(a2);
        }

        v13 = *(*(&v77 + 1) + 8 * i);
        if (!v13)
        {
          goto LABEL_28;
        }

        v14 = *(v13 + 24);
        if (v14 != 7)
        {
          if (v14 == 1)
          {
            v58 = i;
            propertyDescription = [v13 propertyDescription];
            name = [propertyDescription name];
            v16 = v13;
            columnName = [v13 columnName];
            v18 = propertyDescription;
            entity = [propertyDescription entity];
            [v11 appendFormat:@", %@", columnName];
            v20 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @"%@ IN ("), columnName;
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v21 = [properties countByEnumeratingWithState:&v73 objects:v87 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v74;
              v24 = 1;
              do
              {
                propertiesCopy = properties;
                for (j = 0; j != v22; ++j)
                {
                  if (*v74 != v23)
                  {
                    objc_enumerationMutation(propertiesCopy);
                  }

                  v27 = *(*(&v73 + 1) + 8 * j);
                  if ([objc_msgSend(v27 "entity")])
                  {
                    if ((v24 & 1) == 0)
                    {
                      [v20 appendString:{@", "}];
                    }

                    [v20 appendString:@"? "];
                    v28 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", [v27 valueForKey:name], objc_msgSend(v16, "sqlType"), v18);
                    [v64 addObject:v28];

                    v24 = 0;
                  }
                }

                properties = propertiesCopy;
                v22 = [propertiesCopy countByEnumeratingWithState:&v73 objects:v87 count:16];
              }

              while (v22);
            }

            [v20 appendString:@""]);
            [v62 addObject:v20];

            i = v58;
            v11 = v59;
            continue;
          }

LABEL_28:
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            name2 = [v56 name];
            *buf = 138412546;
            v83 = name2;
            v84 = 2112;
            v85 = v13;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unsupported property type for unique attribute on entity '%@': %@\n", buf, 0x16u);
          }

          v30 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            name3 = [v56 name];
            *buf = 138412546;
            v83 = name3;
            v84 = 2112;
            v85 = v13;
            _os_log_fault_impl(&dword_18565F000, v30, OS_LOG_TYPE_FAULT, "CoreData: Unsupported property type for unique attribute on entity '%@': %@", buf, 0x16u);
          }

          continue;
        }

        propertyDescription2 = [*(*(&v77 + 1) + 8 * i) propertyDescription];
        name4 = [propertyDescription2 name];
        columnName2 = [v13 columnName];
        entity2 = [propertyDescription2 entity];
        [v11 appendFormat:@", %@", columnName2];
        v36 = *(v13 + 72);
        if (v36)
        {
          [v11 appendFormat:@", %@", objc_msgSend(v36, "columnName")];
        }

        v37 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @"%@ IN ("), columnName2;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v38 = [properties countByEnumeratingWithState:&v69 objects:v86 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v70;
          v41 = 1;
          do
          {
            for (k = 0; k != v39; ++k)
            {
              if (*v70 != v40)
              {
                objc_enumerationMutation(properties);
              }

              v43 = *(*(&v69 + 1) + 8 * k);
              if ([objc_msgSend(v43 "entity")])
              {
                if ((v41 & 1) == 0)
                {
                  [v37 appendString:{@", "}];
                }

                [v37 appendString:@"? "];
                v44 = -[NSSQLBindVariable initWithInt64:sqlType:]([NSSQLBindVariable alloc], "initWithInt64:sqlType:", [objc_msgSend(objc_msgSend(v43 valueForKey:{name4), "objectID"), "_referenceData64"}], 2);
                [v64 addObject:v44];

                v41 = 0;
              }
            }

            v39 = [properties countByEnumeratingWithState:&v69 objects:v86 count:16];
          }

          while (v39);
        }

        [v37 appendString:@""]);
        [v62 addObject:v37];

        v11 = v59;
      }

      v61 = [a2 countByEnumeratingWithState:&v77 objects:v88 count:16];
    }

    while (v61);
  }

  v46 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @"SELECT %@ FROM %@ WHERE ("), v11, objc_msgSend(v56, "tableName");

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v47 = [v62 countByEnumeratingWithState:&v65 objects:v81 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v66;
    v50 = 1;
    do
    {
      for (m = 0; m != v48; ++m)
      {
        if (*v66 != v49)
        {
          objc_enumerationMutation(v62);
        }

        v52 = *(*(&v65 + 1) + 8 * m);
        if ((v50 & 1) == 0)
        {
          [v46 appendString:@" OR "];
        }

        [v46 appendFormat:@"%@", v52];
        v50 = 0;
      }

      v48 = [v62 countByEnumeratingWithState:&v65 objects:v81 count:16];
      v50 = 0;
    }

    while (v48);
  }

  [v46 appendString:@""]);
  v53 = [[NSSQLiteStatement alloc] initWithEntity:v56 sqlString:v46];

  [(NSSQLiteAdapter *)v53 _useModel:v64];
  v54 = *MEMORY[0x1E69E9840];
  return v53;
}

+ (NSSQLiteStatement)generateStatementForCheckingMulticolumnConstraint:(void *)constraint onObjects:(void *)objects usingSQLCore:
{
  v77 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  constraintCopy = constraint;
  superentity = [objc_msgSend(constraint "lastObject")];
  if (superentity)
  {
    if (atomic_load((superentity + 124)))
    {
      v8 = *(superentity + 72);
    }

    else
    {
      do
      {
        v8 = superentity;
        superentity = [superentity superentity];
      }

      while (superentity);
    }
  }

  else
  {
    v8 = 0;
  }

  v49 = _sqlCoreLookupSQLEntityForEntityDescription(objects, v8);
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v10 = [a2 countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = *v66;
  v13 = 1;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v66 != v12)
      {
        objc_enumerationMutation(a2);
      }

      foreignKey = *(*(&v65 + 1) + 8 * i);
      if ((v13 & 1) == 0)
      {
        [v9 appendString:{@", "}];
      }

      if (foreignKey)
      {
        v16 = foreignKey[24];
        if (v16 != 1)
        {
          if (v16 != 7)
          {
            goto LABEL_17;
          }

          foreignKey = [foreignKey foreignKey];
        }

        [v9 appendString:{objc_msgSend(foreignKey, "columnName")}];
      }

LABEL_17:
      v13 = 0;
    }

    v11 = [a2 countByEnumeratingWithState:&v65 objects:v74 count:16];
    v13 = 0;
  }

  while (v11);
LABEL_19:
  v17 = objc_alloc(MEMORY[0x1E696AD60]);
  if ([objc_msgSend(v8 "subentities")])
  {
    v18 = @"Z_PK, Z_ENT";
  }

  else
  {
    v18 = @"Z_PK";
  }

  v19 = objc_msgSend(v17, "initWithFormat:", @"SELECT %@, %@ FROM %@ WHERE Z_PK IN ("), v18, v9, objc_msgSend(v49, "tableName");

  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v53 = [a2 countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (!v53)
  {
    [v19 appendString:@""]);
    goto LABEL_71;
  }

  v55 = 1;
  v51 = v19;
  v52 = *v62;
  while (2)
  {
    v20 = 0;
    while (2)
    {
      if (*v62 != v52)
      {
        objc_enumerationMutation(a2);
      }

      v21 = *(*(&v61 + 1) + 8 * v20);
      objc_opt_self();
      propertyDescription = [v21 propertyDescription];
      entity = [propertyDescription entity];
      v59 = propertyDescription;
      name = [propertyDescription name];
      v24 = v21 != 0;
      if (!v21)
      {
        foreignKey2 = 0;
        v57 = 0;
        goto LABEL_32;
      }

      v25 = v21[24];
      columnName = [v21 columnName];
      if (v25 == 7)
      {
        toOneRelationship = v21;
        if (v21[24] == 3)
        {
          toOneRelationship = [v21 toOneRelationship];
        }

        v57 = [objc_msgSend(toOneRelationship "propertyDescription")];
        foreignKey2 = [v21 foreignKey];
LABEL_32:
        columnName2 = [foreignKey2 columnName];
      }

      else
      {
        columnName2 = columnName;
        v24 = 0;
        v57 = 0;
      }

      v56 = v20;
      v30 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @"SELECT Z_PK FROM %@ WHERE %@ IN ("), objc_msgSend(objc_msgSend(v21, "entity"), "tableName"), columnName2;
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
      sqlType = [v21 sqlType];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v33 = [constraintCopy countByEnumeratingWithState:&v69 objects:v76 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v70;
        v36 = 1;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v70 != v35)
            {
              objc_enumerationMutation(constraintCopy);
            }

            v38 = *(*(&v69 + 1) + 8 * j);
            if ([objc_msgSend(v38 "entity")])
            {
              if ((v36 & 1) == 0)
              {
                [v30 appendString:{@", "}];
              }

              if (v31)
              {
                [v30 appendString:@"?"];
                v39 = [NSSQLBindVariable alloc];
                if (v24)
                {
                  v40 = -[NSSQLBindVariable initWithInt64:sqlType:](v39, "initWithInt64:sqlType:", [objc_msgSend(objc_msgSend(v38 valueForKey:{v57), "objectID"), "_referenceData64"}], 2);
                }

                else
                {
                  v40 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:](v39, "initWithValue:sqlType:propertyDescription:", [v38 valueForKey:name], sqlType, v59);
                }

                v41 = v40;
                [v31 addObject:v40];
              }

              v36 = 0;
            }
          }

          v34 = [constraintCopy countByEnumeratingWithState:&v69 objects:v76 count:16];
        }

        while (v34);
        [v30 appendString:@""]);
        if (v36)
        {
          v42 = 0;
        }

        else
        {
          if (v31)
          {
            v75[0] = v30;
            v75[1] = v31;
            v43 = MEMORY[0x1E695DEC8];
            v44 = 2;
          }

          else
          {
            v75[0] = v30;
            v43 = MEMORY[0x1E695DEC8];
            v44 = 1;
          }

          v42 = [v43 arrayWithObjects:v75 count:v44];
        }

        v19 = v51;
      }

      else
      {
        [v30 appendString:@""]);
        v42 = 0;
      }

      if (v42)
      {
        if ((v55 & 1) == 0)
        {
          [v19 appendString:@" INTERSECT "];
        }

        [v19 appendString:{objc_msgSend(v42, "objectAtIndex:", 0)}];
        if ([v42 count] >= 2)
        {
          [v50 addObjectsFromArray:{objc_msgSend(v42, "objectAtIndex:", 1)}];
        }

        v55 = 0;
      }

      v20 = v56 + 1;
      if (v56 + 1 != v53)
      {
        continue;
      }

      break;
    }

    v45 = [a2 countByEnumeratingWithState:&v61 objects:v73 count:16];
    v53 = v45;
    if (v45)
    {
      continue;
    }

    break;
  }

  [v19 appendString:@""]);
  if (v55)
  {
LABEL_71:
    v46 = 0;
    goto LABEL_72;
  }

  v46 = [[NSSQLiteStatement alloc] initWithEntity:v49 sqlString:v19];
LABEL_72:

  [(NSSQLiteAdapter *)v46 _useModel:v50];
  v47 = *MEMORY[0x1E69E9840];
  return v46;
}

void __72__NSSQLiteAdapter_createSQLStatementsForTriggerAttribute_withSQLEntity___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a2 insertSQLStrings];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:*(*(&v12 + 1) + 8 * v9)];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  *(*(*(a1 + 32) + 8) + 40) = [v4 copy];

  v11 = *MEMORY[0x1E69E9840];
}

@end