@interface CKSQLiteCompiledStatementCacheKey
- (BOOL)isEqual:(id)equal;
- (CKSQLiteCompiledStatementCacheKey)initWithTable:(id)table label:(_CKSQLiteCompiledStatementLabel *)label;
- (id)description;
@end

@implementation CKSQLiteCompiledStatementCacheKey

- (CKSQLiteCompiledStatementCacheKey)initWithTable:(id)table label:(_CKSQLiteCompiledStatementLabel *)label
{
  tableCopy = table;
  v17.receiver = self;
  v17.super_class = CKSQLiteCompiledStatementCacheKey;
  v9 = [(CKSQLiteCompiledStatementCacheKey *)&v17 init];
  if (v9)
  {
    v10 = objc_msgSend_db(tableCopy, v7, v8);
    db = v9->_db;
    v9->_db = v10;

    v14 = objc_msgSend_dbTableName(tableCopy, v12, v13);
    dbTableName = v9->_dbTableName;
    v9->_dbTableName = v14;

    v9->_statementLabel = label;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = sub_188680BFC(self->_statementLabel, a2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ for table '%@'", v4, self->_dbTableName);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self->_db == equalCopy[1] && self->_statementLabel == equalCopy[3])
  {
    isEqualToString = objc_msgSend_isEqualToString_(self->_dbTableName, v5, equalCopy[2]);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

@end