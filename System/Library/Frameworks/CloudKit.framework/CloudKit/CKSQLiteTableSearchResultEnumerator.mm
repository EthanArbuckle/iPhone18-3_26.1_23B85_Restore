@interface CKSQLiteTableSearchResultEnumerator
- (CKSQLiteTableSearchResultEnumerator)initWithTable:(id)table statement:(id)statement;
- (id)cksqlcs_appendSQLConstantValueToString:(id)string;
- (id)nextObject;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CKSQLiteTableSearchResultEnumerator

- (void)invalidate
{
  v18 = *MEMORY[0x1E69E9840];
  statement = self->_statement;
  if (statement)
  {
    objc_msgSend_resetAndClearBindings(statement, a2, v2);
    v5 = self->_statement;
    self->_statement = 0;

    if (objc_msgSend_logOperations(self->_table, v6, v7))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v8 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
      {
        v9 = v8;
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v14 = 138543618;
        v15 = v11;
        v16 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1883EA000, v9, OS_LOG_TYPE_INFO, "%{public}@(%p): End enumeration", &v14, 0x16u);
      }
    }
  }

  table = self->_table;
  self->_table = 0;

  v13 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  objc_msgSend_invalidate(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CKSQLiteTableSearchResultEnumerator;
  [(CKSQLiteTableSearchResultEnumerator *)&v4 dealloc];
}

- (id)nextObject
{
  sub_188439230(self, a2);
  entry = self->_entry;

  return entry;
}

- (id)cksqlcs_appendSQLConstantValueToString:(id)string
{
  stringCopy = string;
  v7 = objc_msgSend_statement(self, v5, v6);
  v9 = objc_msgSend_cksqlcs_appendSQLConstantValueToString_(v7, v8, stringCopy);

  objc_msgSend_invalidate(self, v10, v11);

  return v9;
}

- (CKSQLiteTableSearchResultEnumerator)initWithTable:(id)table statement:(id)statement
{
  tableCopy = table;
  statementCopy = statement;
  v24.receiver = self;
  v24.super_class = CKSQLiteTableSearchResultEnumerator;
  v9 = [(CKSQLiteTableSearchResultEnumerator *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_table, table);
    v13 = objc_msgSend_tableGroup(tableCopy, v11, v12);
    v16 = objc_msgSend_name(v13, v14, v15);
    groupName = v10->_groupName;
    v10->_groupName = v16;

    v20 = objc_msgSend_logicalTableName(tableCopy, v18, v19);
    tableName = v10->_tableName;
    v10->_tableName = v20;

    objc_storeStrong(&v10->_statement, statement);
    valueTransformBlock = v10->_valueTransformBlock;
    v10->_valueTransformBlock = &unk_1EFA30110;
  }

  return v10;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  sub_188439230(self, a2);
  if (!state->var0)
  {
    state->var0 = 1;
    state->var1 = &self->_entry;
    state->var2 = state->var3;
  }

  return self->_entry != 0;
}

@end