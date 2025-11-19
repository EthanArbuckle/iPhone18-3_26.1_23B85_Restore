@interface LSPluginFindWithPlatformInfo
@end

@implementation LSPluginFindWithPlatformInfo

void ___LSPluginFindWithPlatformInfo_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = _LSGetPlugin(*(a1 + 32), a3);
  if (!v7)
  {
    v24 = _LSDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      ___LSPluginFindWithPlatformInfo_block_invoke_2_cold_2(a1);
    }

    goto LABEL_32;
  }

  v8 = v7;
  v9 = *(a1 + 400);
  if ((v9 + 1) >= 2 && *(v7 + 20) != v9)
  {
    return;
  }

  v26 = 0;
  v11 = (v7 + 4);
  v10 = *(v7 + 4);
  v12 = _LSContainerGet(*(a1 + 32));
  if (!v12)
  {
    v24 = _LSDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      ___LSPluginFindWithPlatformInfo_block_invoke_2_cold_1(a1);
    }

LABEL_32:

    return;
  }

  v13 = _LSContainerCheckState(*(a1 + 32), *v11, v12, &v26, 0);
  if (_LSGetNSErrorFromOSStatusImpl(v13, 0, 0, "_LSPluginFindWithPlatformInfo_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSPluginBundle.mm", 624) && v26 == 1)
  {
    v15 = *(a1 + 404);
    if (!v15 || v15 == v8[3] || v15 == v8[43] || v15 == v8[44])
    {
      v16 = *(a1 + 408);
      if (!v16 || v16 == v8[55])
      {
        if (*(a1 + 412) != 1 || (v17 = *(a1 + 32), v18 = *(*(a1 + 40) + 8), obj = *(v18 + 40), v19 = _LSPluginCheckExtensionPoint(v17, a3, v8, &obj), objc_storeStrong((v18 + 40), obj), v19))
        {
          if (*(a1 + 413) != 1 || _LSPluginIsValid(*(a1 + 32), a3, v8, 0, 0, 0))
          {
            v20 = v8[42];
            v21 = (v20 >> 2) & 1;
            v22 = *(a1 + 414);
            if ((v22 & 1) != 0 || (v20 & 4) == 0)
            {
              v23 = *(*(a1 + 48) + 8);
              if (!*(v23 + 24))
              {
                *(v23 + 24) = a3;
                *(*(*(a1 + 56) + 8) + 24) = v8;
              }

              *(*(*(a1 + 64) + 8) + 24) = a3;
              *(*(*(a1 + 72) + 8) + 24) = v8;
            }

            if (v21 == v22)
            {
              *(*(*(a1 + 48) + 8) + 24) = 0;
              *(*(*(a1 + 56) + 8) + 24) = 0;
              *a4 = 1;
            }
          }
        }
      }
    }
  }
}

uint64_t ___LSPluginFindWithPlatformInfo_block_invoke(uint64_t result, uint64_t a2, int *a3, uint64_t a4, _BYTE *a5)
{
  if (a3[1])
  {
    v8 = result;
    v9 = *(result + 64);
    if ((v9 + 1) < 2 || a3[5] == v9)
    {
      result = _LSContainerGet(*(result + 32));
      if (result)
      {
        v12 = 0;
        v10 = _LSContainerCheckState(*(v8 + 32), a3[1], result, &v12, 0);
        result = _LSGetNSErrorFromOSStatusImpl(v10, 0, 0, "_LSPluginFindWithPlatformInfo_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSPluginBundle.mm", 594);
        if (result)
        {
          v11 = v12 == 1;
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
          result = _LSAliasMatchesPath_NoIO(*(v8 + 32), *a3, *(v8 + 40), 0);
          if (result)
          {
            if (*(v8 + 68) != 1 || (result = _LSPluginIsValid(*(v8 + 32), a2, a3, 0, 0, 0), result))
            {
              *(*(*(v8 + 48) + 8) + 24) = a2;
              *(*(*(v8 + 56) + 8) + 24) = a3;
              *a5 = 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void ___LSPluginFindWithPlatformInfo_block_invoke_2_cold_1(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_2_11(a1, *MEMORY[0x1E69E9840]);
  if (v4)
  {
    v3 = 240;
  }

  v5 = *(v1 + v3);
  v6 = *v2;
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x12u);
  v12 = *MEMORY[0x1E69E9840];
}

void ___LSPluginFindWithPlatformInfo_block_invoke_2_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_2_11(a1, *MEMORY[0x1E69E9840]);
  if (v3)
  {
    v2 = 240;
  }

  v4 = *(v1 + v2);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  v10 = *MEMORY[0x1E69E9840];
}

@end