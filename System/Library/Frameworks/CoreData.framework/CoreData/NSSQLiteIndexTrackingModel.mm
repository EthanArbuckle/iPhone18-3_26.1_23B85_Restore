@interface NSSQLiteIndexTrackingModel
+ (id)newModelForFrameworkVersion:;
+ (void)initialize;
+ (void)updateIndexStatistics:(uint64_t)statistics usingConnection:(void *)connection model:;
@end

@implementation NSSQLiteIndexTrackingModel

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    objc_opt_self();
  }
}

+ (id)newModelForFrameworkVersion:
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__NSSQLiteIndexTrackingModel_newModelForFrameworkVersion___block_invoke;
  block[3] = &unk_1E6EC16F0;
  block[4] = v0;
  if (qword_1ED4BEBD8 != -1)
  {
    dispatch_once(&qword_1ED4BEBD8, block);
  }

  return _MergedGlobals_90;
}

uint64_t __58__NSSQLiteIndexTrackingModel_newModelForFrameworkVersion___block_invoke(uint64_t a1)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(NSEntityDescription);
  v3 = objc_opt_self();
  [(NSEntityDescription *)v2 setName:NSStringFromClass(v3)];
  v8[0] = makeAttribute(@"indexName", 700);
  v8[1] = makeAttribute(@"executionCount", 300);
  v8[2] = makeAttribute(@"instructionCount", 300);
  v8[3] = makeAttribute(@"rowCount", 300);
  -[NSEntityDescription setProperties:](v2, "setProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4]);
  _MergedGlobals_90 = objc_alloc_init(NSManagedObjectModel);
  [_MergedGlobals_90 _setModelsReferenceIDOffset:{objc_msgSend(*(a1 + 32), "ancillaryEntityOffset")}];
  v7 = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  [_MergedGlobals_90 setEntities:v4];
  result = [_MergedGlobals_90 _setIsEditable:0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)updateIndexStatistics:(uint64_t)statistics usingConnection:(void *)connection model:
{
  v31 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (connection)
  {
    connection = connection[3];
  }

  v6 = objc_opt_class();
  v7 = [connection objectForKeyedSubscript:NSStringFromClass(v6)];
  v8 = v7;
  if (v7)
  {
    tableName = [v7 tableName];
    v9 = [objc_msgSend(v8[5] objectForKey:{@"executionCount", "columnName"}];
    v10 = [objc_msgSend(v8[5] objectForKey:{@"rowCount", "columnName"}];
    v11 = [objc_msgSend(v8[5] objectForKey:{@"instructionCount", "columnName"}];
    v21 = [objc_msgSend(v8[5] objectForKey:{@"indexName", "columnName"}];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    allValues = [a2 allValues];
    v13 = [allValues countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v13)
    {
      obj = allValues;
      v20 = *v26;
      do
      {
        v24 = v13;
        for (i = 0; i != v24; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v15 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", 0, [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE OR IGNORE %@ SET %@ = %@ + %lld, %@ = %@ + %lld, %@ = %@ + %lld WHERE %@ = '%@'", tableName, v9, v9, objc_msgSend(*(*(&v25 + 1) + 8 * i), "executionCount"), v10, v10, objc_msgSend(*(*(&v25 + 1) + 8 * i), "rowCount"), v11, v11, objc_msgSend(*(*(&v25 + 1) + 8 * i), "instructionCount"), v21, objc_msgSend(objc_msgSend(*(*(&v25 + 1) + 8 * i), "indexName"), "uppercaseString")]);
          [(NSSQLiteConnection *)statistics prepareAndExecuteSQLStatement:v15];
        }

        v13 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v13);
    }
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Couldn't find NSSQLiteIndexStatistics entity\n", buf, 2u);
    }

    v17 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Couldn't find NSSQLiteIndexStatistics entity", buf, 2u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end