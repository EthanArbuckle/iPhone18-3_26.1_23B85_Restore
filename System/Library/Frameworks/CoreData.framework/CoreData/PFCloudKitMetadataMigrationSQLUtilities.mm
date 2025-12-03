@interface PFCloudKitMetadataMigrationSQLUtilities
+ (BOOL)migrationDebugEnabled;
+ (id)columnNamesFromCreateStatement:(uint64_t)statement;
+ (id)columnStatementsFromCreateStatement:(uint64_t)statement;
+ (id)tableNameFromCreateStatement:(uint64_t)statement;
+ (id)tableNameFromStatement:(id)statement withPrefix:(id)prefix;
+ (uint64_t)fetchSchemaSQLForEntity:(void *)entity usingConnection:;
@end

@implementation PFCloudKitMetadataMigrationSQLUtilities

+ (BOOL)migrationDebugEnabled
{
  if (qword_1ED4BEAC0 != -1)
  {
    dispatch_once(&qword_1ED4BEAC0, &__block_literal_global_18);
  }

  return _MergedGlobals_80;
}

uint64_t __64__PFCloudKitMetadataMigrationSQLUtilities_migrationDebugEnabled__block_invoke()
{
  result = [+[_PFRoutines valueForProcessArgument:](_PFRoutines @"com.apple.coredata.cloudkit.MigrationDebug")];
  _MergedGlobals_80 = result;
  return result;
}

+ (uint64_t)fetchSchemaSQLForEntity:(void *)entity usingConnection:
{
  v24 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = -[NSSQLiteConnection fetchTableCreationSQLContaining:](entity, [a2 tableName]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      if ([objc_msgSend(v10 objectAtIndex:{0), "isEqualToString:", objc_msgSend(a2, "tableName")}])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    result = [v10 objectAtIndex:1];
    if (result)
    {
      goto LABEL_16;
    }
  }

LABEL_11:
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    tableName = [a2 tableName];
    *buf = 138412290;
    v22 = tableName;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Couldn't find sql for table '%@', did you check if it exists first?\n", buf, 0xCu);
  }

  v13 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    tableName2 = [a2 tableName];
    *buf = 138412290;
    v22 = tableName2;
    _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Couldn't find sql for table '%@', did you check if it exists first?", buf, 0xCu);
  }

  result = 0;
LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)tableNameFromStatement:(id)statement withPrefix:(id)prefix
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if ([statement hasPrefix:prefix])
  {
    v7 = [statement substringFromIndex:{objc_msgSend(prefix, "length") + (objc_msgSend(prefix, "hasSuffix:", @" "}];
    v8 = [v7 rangeOfString:@" "];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        statementCopy2 = v7;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to find the end of the table name in this statement: %@\n", &v18, 0xCu);
      }

      v10 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v18 = 138412290;
        statementCopy2 = v7;
        _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Failed to find the end of the table name in this statement: %@", &v18, 0xCu);
      }
    }

    v11 = [v7 substringToIndex:v8];
    v12 = [v11 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}];
  }

  else
  {
    v13 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      statementCopy2 = statement;
      _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: fault: This is not a create table statement? %@\n", &v18, 0xCu);
    }

    v14 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v18 = 138412290;
      statementCopy2 = statement;
      _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: This is not a create table statement? %@", &v18, 0xCu);
    }

    v12 = 0;
  }

  v15 = v12;
  objc_autoreleasePoolPop(v6);
  result = v12;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)tableNameFromCreateStatement:(uint64_t)statement
{
  objc_opt_self();

  return [PFCloudKitMetadataMigrationSQLUtilities tableNameFromStatement:a2 withPrefix:@"CREATE TABLE"];
}

+ (id)columnStatementsFromCreateStatement:(uint64_t)statement
{
  v28 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_autoreleasePoolPush();
  v5 = objc_msgSend(a2, "rangeOfString:", @" (");
  v7 = v6;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to find the end of the table name in this statement: %@\n", buf, 0xCu);
    }

    v9 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v27 = a2;
      _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Failed to find the end of the table name in this statement: %@", buf, 0xCu);
    }
  }

  v10 = [a2 substringFromIndex:v5 + v7];
  v11 = [v10 rangeOfString:@""]);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = a2;
      _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to find the ending parenthesis in this statement: %@\n", buf, 0xCu);
    }

    v13 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v27 = a2;
      _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Failed to find the ending parenthesis in this statement: %@", buf, 0xCu);
    }
  }

  v14 = [objc_msgSend(v10 substringToIndex:{v11), "componentsSeparatedByString:", @", "}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [v3 addObject:{objc_msgSend(*(*(&v21 + 1) + 8 * i), "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet"))}];
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(v4);
  result = v3;
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)columnNamesFromCreateStatement:(uint64_t)statement
{
  v34 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  context = objc_autoreleasePoolPush();
  v4 = objc_msgSend(a2, "rangeOfString:", @" (");
  v6 = v5;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to find the end of the table name in this statement: %@\n", buf, 0xCu);
    }

    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v30 = a2;
      _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Failed to find the end of the table name in this statement: %@", buf, 0xCu);
    }
  }

  v9 = [a2 substringFromIndex:v4 + v6];
  v10 = [v9 rangeOfString:@""]);
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = a2;
      _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to find the ending parenthesis in this statement: %@\n", buf, 0xCu);
    }

    v12 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v30 = a2;
      _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Failed to find the ending parenthesis in this statement: %@", buf, 0xCu);
    }
  }

  v13 = [objc_msgSend(v9 substringToIndex:{v10), "componentsSeparatedByString:", @", "}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      v17 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * v17);
        v19 = [objc_msgSend(v18 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")), "componentsSeparatedByString:", @" "}];
        if ([v19 count] < 2)
        {
          v20 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v30 = v18;
            v31 = 2112;
            v32 = a2;
            _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown column declaration? This is missing its type? %@\n%@\n", buf, 0x16u);
          }

          v21 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v30 = v18;
            v31 = 2112;
            v32 = a2;
            _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, "CoreData: Unknown column declaration? This is missing its type? %@\n%@", buf, 0x16u);
          }
        }

        else
        {
          [v3 addObject:{objc_msgSend(v19, "objectAtIndexedSubscript:", 0)}];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }

  objc_autoreleasePoolPop(context);
  result = v3;
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

@end