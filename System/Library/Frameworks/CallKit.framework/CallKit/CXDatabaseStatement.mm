@interface CXDatabaseStatement
- (BOOL)bind:(id)a3 error:(id *)a4;
- (BOOL)bindInt64:(int64_t)a3 atIndex:(int)a4 error:(id *)a5;
- (BOOL)bindText:(const char *)a3 ofLength:(int)a4 atIndex:(int)a5 error:(id *)a6;
- (BOOL)executeWithExpectedColumnCount:(int64_t)a3 resultRowHandler:(id)a4 error:(id *)a5;
- (BOOL)processResultsWithExpectedColumnCount:(int64_t)a3 resultRowHandler:(id)a4 error:(id *)a5;
- (CXDatabaseStatement)initWithSQL:(id)a3 database:(id)a4 error:(id *)a5;
- (void)dealloc;
- (void)finalize;
@end

@implementation CXDatabaseStatement

- (void)finalize
{
  if ([(CXDatabaseStatement *)self statement])
  {
    sqlite3_finalize([(CXDatabaseStatement *)self statement]);

    [(CXDatabaseStatement *)self setStatement:0];
  }
}

- (void)dealloc
{
  [(CXDatabaseStatement *)self finalize];
  v3.receiver = self;
  v3.super_class = CXDatabaseStatement;
  [(CXDatabaseStatement *)&v3 dealloc];
}

- (CXDatabaseStatement)initWithSQL:(id)a3 database:(id)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = CXDatabaseStatement;
  v10 = [(CXDatabaseStatement *)&v18 init];
  if (v10)
  {
    v11 = sqlite3_prepare_v2([v9 database], objc_msgSend(v8, "UTF8String"), objc_msgSend(v8, "length") + 1, &v10->_statement, 0);
    if (v11)
    {
      if (a5)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlite3_prepare_v2 for query '%@' returned %d errorMessage '%s'", v8, v11, sqlite3_errmsg(objc_msgSend(v9, "database"))];
        v14 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A578];
        v20[0] = v13;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
        *a5 = [v14 errorWithDomain:@"com.apple.callkit.database.sqlite" code:v12 userInfo:v15];
      }

      v10 = 0;
    }

    else
    {
      v10->_database = [v9 database];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)executeWithExpectedColumnCount:(int64_t)a3 resultRowHandler:(id)a4 error:(id *)a5
{
  v42[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v29 = *MEMORY[0x1E696A578];
  v8 = 1;
  v9 = 0.0;
  v10 = 0.0;
  while (1)
  {
    v11 = sqlite3_step([(CXDatabaseStatement *)self statement]);
    v12 = v11;
    v13 = (v11 - 7) >= 0xFFFFFFFE ? v10 : 0.0;
    v14 = (v11 - 7) >= 0xFFFFFFFE ? v9 : 0.0;
    if ((v11 - 5) >= 2)
    {
      break;
    }

    v15 = sqlite3_errmsg([(CXDatabaseStatement *)self database]);
    v16 = sqlite3_extended_errcode([(CXDatabaseStatement *)self database]);
    if (v10 > 300.0)
    {
      if (!a5)
      {
        goto LABEL_30;
      }

      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlite3_step for query '%s' returned %d (%d) errorMessage '%s' after retrying for %f seconds", sqlite3_sql(-[CXDatabaseStatement statement](self, "statement")), v12, v16, v15, *&v10];
      v21 = MEMORY[0x1E696ABC0];
      v22 = v12;
      v41 = v29;
      v42[0] = v20;
      v23 = MEMORY[0x1E695DF20];
      v24 = v42;
      v25 = &v41;
      goto LABEL_29;
    }

    if (v9 == 0.0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v10 + v9 * 1.2;
    }

    if (v9 == 0.0)
    {
      v14 = 0.2;
    }

    else
    {
      v14 = v9 * 1.2;
    }

    v17 = CXDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      v34 = v12;
      v35 = 1024;
      v36 = v16;
      v37 = 2080;
      v38 = v15;
      v39 = 2048;
      v40 = v14;
      _os_log_impl(&dword_1B47F3000, v17, OS_LOG_TYPE_DEFAULT, "[WARN] sqlite3_step returned %d (%d) errorMessage '%s', so retrying query after %f seconds", buf, 0x22u);
    }

    [MEMORY[0x1E696AF00] sleepForTimeInterval:v14];
LABEL_22:
    v9 = v14;
    v10 = v13;
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  if (v11 == 100)
  {
    if (v7)
    {
      v8 = [(CXDatabaseStatement *)self processResultsWithExpectedColumnCount:a3 resultRowHandler:v7 error:a5];
    }

    goto LABEL_22;
  }

  if (v11 == 101)
  {
    goto LABEL_31;
  }

  if (a5)
  {
    v18 = sqlite3_sql([(CXDatabaseStatement *)self statement]);
    v19 = sqlite3_errmsg([(CXDatabaseStatement *)self database]);
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sqlite3_step for query '%s' returned %d (%d) errorMessage '%s'", v18, v12, sqlite3_extended_errcode(-[CXDatabaseStatement database](self, "database")), v19];
    v21 = MEMORY[0x1E696ABC0];
    v22 = v12;
    v31 = v29;
    v32 = v20;
    v23 = MEMORY[0x1E695DF20];
    v24 = &v32;
    v25 = &v31;
LABEL_29:
    v26 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
    *a5 = [v21 errorWithDomain:@"com.apple.callkit.database.sqlite" code:v22 userInfo:v26];
  }

LABEL_30:
  v8 = 0;
LABEL_31:
  sqlite3_reset([(CXDatabaseStatement *)self statement]);
  sqlite3_clear_bindings([(CXDatabaseStatement *)self statement]);

  v27 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)bind:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = v7;
  v9 = 1;
  v10 = *v33;
  v11 = 0x1E696A000uLL;
  v31 = a4;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v32 + 1) + 8 * i);
      v14 = *(v11 + 3776);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v13;
        v16 = [v15 UTF8String];
        if (!v16)
        {
          if (a4)
          {
            v22 = [*(v11 + 3776) stringWithFormat:@"NSString %@ returned a nil UTF-8 string", v15];
            v23 = MEMORY[0x1E696ABC0];
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            v38 = *MEMORY[0x1E696A578];
            v39 = v22;
            v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
            *a4 = [v23 errorWithDomain:v25 code:3 userInfo:v26];

            goto LABEL_25;
          }

          goto LABEL_26;
        }

        if (![(CXDatabaseStatement *)self bindText:v16 ofLength:strlen(v16) atIndex:v9 error:a4])
        {
          goto LABEL_26;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!-[CXDatabaseStatement bindInt64:atIndex:error:](self, "bindInt64:atIndex:error:", [v13 longLongValue], v9, a4))
          {
            goto LABEL_27;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sqlite3_bind_null([(CXDatabaseStatement *)self statement], v9);
            goto LABEL_20;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              goto LABEL_28;
            }

            v15 = [*(v11 + 3776) stringWithFormat:@"Object %@ not a supported binding class", v13];
            v29 = MEMORY[0x1E696ABC0];
            v30 = objc_opt_class();
            v22 = NSStringFromClass(v30);
            v36 = *MEMORY[0x1E696A578];
            v37 = v15;
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
            *a4 = [v29 errorWithDomain:v22 code:1 userInfo:v25];
LABEL_25:

LABEL_26:
LABEL_27:
            LOBYTE(a4) = 0;
            goto LABEL_28;
          }

          v17 = v11;
          v18 = v6;
          v19 = v13;
          v20 = [v19 bytes];
          if (v20)
          {
            v21 = [v19 length];
          }

          else
          {
            v21 = 0;
          }

          sqlite3_bind_blob([(CXDatabaseStatement *)self statement], v9, v20, v21, 0);

          v6 = v18;
          v11 = v17;
          a4 = v31;
        }
      }

LABEL_20:
      v9 = (v9 + 1);
    }

    v8 = [v6 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_22:
  LOBYTE(a4) = 1;
LABEL_28:

  v27 = *MEMORY[0x1E69E9840];
  return a4;
}

- (BOOL)bindInt64:(int64_t)a3 atIndex:(int)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = sqlite3_bind_int64([(CXDatabaseStatement *)self statement], a4, a3);
  v8 = v7;
  if (a5 && v7)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SQLite bind attempt returned %d errorMessage '%s'", v7, sqlite3_errmsg(-[CXDatabaseStatement database](self, "database"))];
    v10 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v15[0] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a5 = [v10 errorWithDomain:@"com.apple.callkit.database.sqlite" code:v8 userInfo:v11];
  }

  result = v8 == 0;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)bindText:(const char *)a3 ofLength:(int)a4 atIndex:(int)a5 error:(id *)a6
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = strnlen(a3, a4);
  }

  else
  {
    v10 = 0;
  }

  v11 = sqlite3_bind_text([(CXDatabaseStatement *)self statement], a5, a3, v10, 0);
  v12 = v11;
  if (a6 && v11)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SQLite bind attempt returned %d errorMessage '%s'", v11, sqlite3_errmsg(-[CXDatabaseStatement database](self, "database"))];
    v14 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    *a6 = [v14 errorWithDomain:@"com.apple.callkit.database.sqlite" code:v12 userInfo:v15];
  }

  result = v12 == 0;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)processResultsWithExpectedColumnCount:(int64_t)a3 resultRowHandler:(id)a4 error:(id *)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = sqlite3_column_count([(CXDatabaseStatement *)self statement]);
  if (v9 == a3)
  {
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
    if (v9 >= 1)
    {
      for (i = 0; v9 != i; ++i)
      {
        v12 = sqlite3_column_type([(CXDatabaseStatement *)self statement], i);
        if (v12 <= 2)
        {
          if (v12 == 1)
          {
            v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(-[CXDatabaseStatement statement](self, "statement"), i)}];
            goto LABEL_15;
          }

          if (v12 == 2)
          {
            v13 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(-[CXDatabaseStatement statement](self, "statement"), i)}];
            goto LABEL_15;
          }
        }

        else
        {
          switch(v12)
          {
            case 5:
              v13 = [MEMORY[0x1E695DFB0] null];
              goto LABEL_15;
            case 4:
              v14 = sqlite3_column_blob([(CXDatabaseStatement *)self statement], i);
              v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:{sqlite3_column_bytes(-[CXDatabaseStatement statement](self, "statement"), i)}];
              goto LABEL_15;
            case 3:
              v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(-[CXDatabaseStatement statement](self, "statement"), i)}];
LABEL_15:
              v15 = v13;
              [v10 addObject:v13];

              break;
          }
        }
      }
    }

    v8[2](v8, v10);
  }

  else if (a5)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Columns returned by query (%d) did not match expected number of columns (%ld)", v9, a3];
    v17 = MEMORY[0x1E696ABC0];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v23 = *MEMORY[0x1E696A578];
    v24[0] = v16;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *a5 = [v17 errorWithDomain:v19 code:2 userInfo:v20];
  }

  v21 = *MEMORY[0x1E69E9840];
  return v9 == a3;
}

@end