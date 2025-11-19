@interface CKSQLiteCompiledStatementCacheKey
- (BOOL)isEqual:(id)a3;
- (CKSQLiteCompiledStatementCacheKey)initWithTable:(id)a3 label:(_CKSQLiteCompiledStatementLabel *)a4;
- (id)description;
@end

@implementation CKSQLiteCompiledStatementCacheKey

- (CKSQLiteCompiledStatementCacheKey)initWithTable:(id)a3 label:(_CKSQLiteCompiledStatementLabel *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = CKSQLiteCompiledStatementCacheKey;
  v9 = [(CKSQLiteCompiledStatementCacheKey *)&v17 init];
  if (v9)
  {
    v10 = objc_msgSend_db(v6, v7, v8);
    db = v9->_db;
    v9->_db = v10;

    v14 = objc_msgSend_dbTableName(v6, v12, v13);
    dbTableName = v9->_dbTableName;
    v9->_dbTableName = v14;

    v9->_statementLabel = a4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_db == v4[1] && self->_statementLabel == v4[3])
  {
    isEqualToString = objc_msgSend_isEqualToString_(self->_dbTableName, v5, v4[2]);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

@end