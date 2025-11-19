@interface BSSqlitePreparedSimpleStatement
@end

@implementation BSSqlitePreparedSimpleStatement

void __79___BSSqlitePreparedSimpleStatement_executeWithBindings_resultRowHandler_error___block_invoke(uint64_t a1, sqlite3 *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 56) + 8) + 24) = sqlite3_clear_bindings(*(*(a1 + 32) + 16));
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = *(a1 + 40);
    v3 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v3)
    {
      v42 = *v44;
      v39 = 136315650;
      do
      {
        v4 = 0;
        do
        {
          if (*v44 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v43 + 1) + 8 * v4);
          v6 = *(a1 + 32);
          v7 = [*(a1 + 40) objectForKeyedSubscript:{v5, v39}];
          v8 = v5;
          v9 = v7;
          if (v6)
          {
            v10 = *(v6 + 16);
            v11 = v8;
            v12 = sqlite3_bind_parameter_index(v10, [v8 UTF8String]);
            if (!v12)
            {
              goto LABEL_33;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = sqlite3_bind_null(*(v6 + 16), v12);
              goto LABEL_33;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v9;
              v14 = *(v6 + 16);
              v15 = v13;
              v16 = sqlite3_bind_text(v14, v12, [v13 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
              goto LABEL_13;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v9;
              v17 = v13;
              v18 = [v13 objCType];
              if (strlen(v18) == 1)
              {
                v19 = *v18 - 66;
                if (v19 <= 0x31)
                {
                  if (((1 << v19) & 0x2848200028483) != 0)
                  {
                    v16 = sqlite3_bind_int64(*(v6 + 16), v12, [v13 longLongValue]);
                    goto LABEL_13;
                  }

                  if (((1 << v19) & 0x1400000000) != 0)
                  {
                    v28 = *(v6 + 16);
                    [v13 doubleValue];
                    v16 = sqlite3_bind_double(v28, v12, v29);
                    goto LABEL_13;
                  }
                }

                v27 = BSLogCommon();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
LABEL_39:
                  *buf = v39;
                  v48 = "[_BSSqlitePreparedSimpleStatement _bindParameterIndex:numberValue:]";
                  v49 = 2082;
                  *v50 = v18;
                  *&v50[8] = 2112;
                  *&v50[10] = v13;
                  _os_log_error_impl(&dword_18FEF6000, v27, OS_LOG_TYPE_ERROR, "%s: unexpected value type '%{public}s' for object %@", buf, 0x20u);
                }
              }

              else
              {
                v27 = BSLogCommon();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_39;
                }
              }

LABEL_31:
              v12 = 20;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v13 = BSLogCommon();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  v30 = objc_opt_class();
                  *buf = v39;
                  v48 = "[_BSSqlitePreparedSimpleStatement _bindKey:value:]";
                  v49 = 2112;
                  *v50 = v9;
                  *&v50[8] = 2112;
                  *&v50[10] = v30;
                  v31 = v30;
                  _os_log_error_impl(&dword_18FEF6000, v13, OS_LOG_TYPE_ERROR, "%s: unexpected object %@ of class %@", buf, 0x20u);
                }

                goto LABEL_31;
              }

              v13 = v9;
              v20 = v13;
              v21 = [v13 bytes];
              v22 = [v13 length];
              v23 = v13 != 0;
              v24 = v21 == 0;
              if (v23 && v24)
              {
                v25 = 3735936685;
              }

              else
              {
                v25 = v21;
              }

              if (v23 && v24)
              {
                v26 = 0;
              }

              else
              {
                v26 = v22;
              }

              v16 = sqlite3_bind_blob64(*(v6 + 16), v12, v25, v26, 0xFFFFFFFFFFFFFFFFLL);
LABEL_13:
              v12 = v16;
            }

            goto LABEL_33;
          }

          v12 = 0;
LABEL_33:

          *(*(*(a1 + 56) + 8) + 24) = v12;
          if (*(*(*(a1 + 56) + 8) + 24))
          {
            goto LABEL_42;
          }

          ++v4;
        }

        while (v3 != v4);
        v32 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
        v3 = v32;
      }

      while (v32);
    }

LABEL_42:

    if (!*(*(*(a1 + 56) + 8) + 24))
    {
      do
      {
        *(*(*(a1 + 56) + 8) + 24) = sqlite3_step(*(*(a1 + 32) + 16));
        v33 = *(*(*(a1 + 56) + 8) + 24);
        if (v33 == 100)
        {
          if (*(a1 + 48))
          {
            v34 = [BSSqliteResultRow resultRowWithStatement:?];
            (*(*(a1 + 48) + 16))();
            [v34 invalidate];

            v33 = *(*(*(a1 + 56) + 8) + 24);
          }

          else
          {
            v33 = 100;
          }
        }
      }

      while (v33 == 100);
      if (v33 != 101)
      {
        v35 = sqlite3_extended_errcode(a2);
        v36 = BSLogCommon();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = sqlite3_errstr(v35);
          v38 = sqlite3_sql(*(*(a1 + 32) + 16));
          *buf = 136315906;
          v48 = "[_BSSqlitePreparedSimpleStatement executeWithBindings:resultRowHandler:error:]_block_invoke";
          v49 = 1024;
          *v50 = v35;
          *&v50[4] = 2080;
          *&v50[6] = v37;
          *&v50[14] = 2080;
          *&v50[16] = v38;
          _os_log_error_impl(&dword_18FEF6000, v36, OS_LOG_TYPE_ERROR, "%s: received extended error %d (%s) executing statement '%s'", buf, 0x26u);
        }
      }

      *(*(*(a1 + 56) + 8) + 24) = sqlite3_reset(*(*(a1 + 32) + 16));
    }
  }
}

@end