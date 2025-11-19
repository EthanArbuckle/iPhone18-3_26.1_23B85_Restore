@interface CKSQLiteTableSearchResultEnumerator
- (CKSQLiteTableSearchResultEnumerator)initWithTable:(id)a3 statement:(id)a4;
- (id)cksqlcs_appendSQLConstantValueToString:(id)a3;
- (id)nextObject;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
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
        v17 = self;
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

- (id)cksqlcs_appendSQLConstantValueToString:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_statement(self, v5, v6);
  v9 = objc_msgSend_cksqlcs_appendSQLConstantValueToString_(v7, v8, v4);

  objc_msgSend_invalidate(self, v10, v11);

  return v9;
}

- (CKSQLiteTableSearchResultEnumerator)initWithTable:(id)a3 statement:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = CKSQLiteTableSearchResultEnumerator;
  v9 = [(CKSQLiteTableSearchResultEnumerator *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_table, a3);
    v13 = objc_msgSend_tableGroup(v7, v11, v12);
    v16 = objc_msgSend_name(v13, v14, v15);
    groupName = v10->_groupName;
    v10->_groupName = v16;

    v20 = objc_msgSend_logicalTableName(v7, v18, v19);
    tableName = v10->_tableName;
    v10->_tableName = v20;

    objc_storeStrong(&v10->_statement, a4);
    valueTransformBlock = v10->_valueTransformBlock;
    v10->_valueTransformBlock = &unk_1EFA30110;
  }

  return v10;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  sub_188439230(self, a2);
  if (!a3->var0)
  {
    a3->var0 = 1;
    a3->var1 = &self->_entry;
    a3->var2 = a3->var3;
  }

  return self->_entry != 0;
}

@end