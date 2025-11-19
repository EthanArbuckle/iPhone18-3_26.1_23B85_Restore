@interface LSHandlerPrefRemoveAllWithBundleID
@end

@implementation LSHandlerPrefRemoveAllWithBundleID

void ___LSHandlerPrefRemoveAllWithBundleID_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v20, v2, 0);

  if (!v3)
  {
    v5 = _LSDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = +[_LSDServiceDomain defaultServiceDomain];
      v18 = LaunchServices::Database::Context::_get(&v20, v17, 0);

      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v23;
      }

      *buf = 138412546;
      v25 = v16;
      v26 = 2112;
      v27 = v19;
      _os_log_error_impl(&dword_18162D000, v5, OS_LOG_TYPE_ERROR, "Error getting the database context when removing handler prefs for %@: %@", buf, 0x16u);
    }

    v6 = *(a1 + 48);
    v7 = +[_LSDServiceDomain defaultServiceDomain];
    v8 = LaunchServices::Database::Context::_get(&v20, v7, 0);

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v23;
    }

    (*(v6 + 16))(v6, 0, v9);
    goto LABEL_12;
  }

  StringForCFString = _LSDatabaseGetStringForCFString(*v3, *(a1 + 32), 0);
  if (!StringForCFString)
  {
    v10 = _LSDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_INFO, "Unable to remove all prefs with bundleID %{public}@, returning kLSApplicationNotFoundErr", buf, 0xCu);
    }

    v12 = *(a1 + 48);
    v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "_LSHandlerPrefRemoveAllWithBundleID_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSPrefs.mm", 1222);
    (*(v12 + 16))(v12, 0, v9);
LABEL_12:

    goto LABEL_13;
  }

  LSHandlerPref::RemoveRoleHandlersMatchingBundleID(*v3, StringForCFString);
  (*(*(a1 + 48) + 16))();
LABEL_13:
  if (v20 && v22 == 1)
  {
    _LSContextDestroy(v20);
  }

  v13 = v21;
  v20 = 0;
  v21 = 0;

  v22 = 0;
  v14 = v23;
  v23 = 0;

  v15 = *MEMORY[0x1E69E9840];
}

void ___LSHandlerPrefRemoveAllWithBundleID_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    ___LSHandlerPrefRemoveAllWithBundleID_block_invoke_2_cold_1(a1);
  }

  (*(*(a1 + 48) + 16))();
}

void ___LSHandlerPrefRemoveAllWithBundleID_block_invoke_70(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___LSHandlerPrefRemoveAllWithBundleID_block_invoke_70_cold_1(a1);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void ___LSHandlerPrefRemoveAllWithBundleID_block_invoke_2_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_5();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void ___LSHandlerPrefRemoveAllWithBundleID_block_invoke_70_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_5();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

@end