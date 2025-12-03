@interface FPFileManagerFixPermDelegate
- (BOOL)fileManager:(id)manager shouldRemoveItemAtURL:(id)l;
@end

@implementation FPFileManagerFixPermDelegate

- (BOOL)fileManager:(id)manager shouldRemoveItemAtURL:(id)l
{
  lCopy = l;
  v5 = open([lCopy fileSystemRepresentation], 260);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    memset(&v24, 0, sizeof(v24));
    if (fstat(v5, &v24) < 0)
    {
      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [FPFileManagerFixPermDelegate fileManager:shouldRemoveItemAtURL:];
      }
    }

    else
    {
      if ((v24.st_flags & 2) == 0 || (fchflags(v6, v24.st_flags & 0xFFFFFFFD) & 0x80000000) == 0)
      {
        v23 = 0;
        v7 = *MEMORY[0x1E695DB48];
        v22 = 0;
        v8 = [lCopy getResourceValue:&v23 forKey:v7 error:&v22];
        v9 = v23;
        v10 = v22;
        if ((v8 & 1) == 0)
        {
          v11 = fp_current_or_default_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [FPFileManagerFixPermDelegate fileManager:shouldRemoveItemAtURL:];
          }
        }

        if (v9)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF40]);
          if (!CFFileSecuritySetAccessControlList(v12, 1))
          {
            v13 = fp_current_or_default_log();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [NSURL(FPFSHelpers) fp_withReadWriteAccess:];
            }
          }

          v21 = v10;
          v14 = [lCopy setResourceValue:v12 forKey:v7 error:&v21];
          v15 = v21;

          if ((v14 & 1) == 0)
          {
            v19 = fp_current_or_default_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [FPFileManagerFixPermDelegate fileManager:shouldRemoveItemAtURL:];
            }

            close(v6);
            goto LABEL_31;
          }
        }

        else
        {
          v15 = v10;
        }

        if ((v24.st_mode & 0x80) == 0 && fchmod(v6, v24.st_mode | 0x80) < 0)
        {
          v18 = fp_current_or_default_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [FPFileManagerFixPermDelegate fileManager:shouldRemoveItemAtURL:];
          }
        }

        close(v6);
LABEL_31:

        goto LABEL_35;
      }

      v17 = fp_current_or_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [FPFileManagerFixPermDelegate fileManager:shouldRemoveItemAtURL:];
      }
    }

    close(v6);
    goto LABEL_35;
  }

  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [FPFileManagerFixPermDelegate fileManager:shouldRemoveItemAtURL:];
  }

LABEL_35:
  return 1;
}

- (void)fileManager:shouldRemoveItemAtURL:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  v1 = *__error();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)fileManager:shouldRemoveItemAtURL:.cold.2()
{
  OUTLINED_FUNCTION_10_1();
  v0 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_11_0(v1 v2)];
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)fileManager:shouldRemoveItemAtURL:.cold.4()
{
  OUTLINED_FUNCTION_10_1();
  v0 = *MEMORY[0x1E69E9840];
  v3 = [OUTLINED_FUNCTION_11_0(v1 v2)];
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)fileManager:shouldRemoveItemAtURL:.cold.5()
{
  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  v1 = *__error();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)fileManager:shouldRemoveItemAtURL:.cold.6()
{
  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  v1 = *__error();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)fileManager:shouldRemoveItemAtURL:.cold.7()
{
  OUTLINED_FUNCTION_6_0();
  v8 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  v1 = *__error();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x1E69E9840];
}

@end