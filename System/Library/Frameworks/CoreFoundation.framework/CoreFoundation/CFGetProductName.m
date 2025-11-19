@interface CFGetProductName
@end

@implementation CFGetProductName

void ___CFGetProductName_block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = getenv("CLASSIC_SUFFIX");
  if (v0)
  {
    v1 = v0;
    if (!strncmp(v0, "iphone", 6uLL))
    {
      v4 = _CFBundleResourceLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        ___CFGetProductName_block_invoke_cold_2(v4);
      }

      goto LABEL_16;
    }

    if (!strncmp(v1, "ipad", 4uLL))
    {
      v9 = _CFBundleResourceLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        ___CFGetProductName_block_invoke_cold_1(v9);
      }

LABEL_39:
      v5 = @"ipad";
      goto LABEL_41;
    }
  }

  memset(v13, 0, sizeof(v13));
  v12 = 256;
  v2 = sysctlbyname("hw.machine", v13, &v12, 0, 0);
  if (!v2 || v2 == -1 && *__error() == 12)
  {
    if (v12 < 6)
    {
      if (v12 < 4)
      {
        goto LABEL_42;
      }

      goto LABEL_18;
    }

    if (LODWORD(v13[0]) != 1869107305 || WORD2(v13[0]) != 25966)
    {
LABEL_18:
      if (LODWORD(v13[0]) == 1685016681)
      {
        v5 = @"ipod";
        goto LABEL_41;
      }

      if (LODWORD(v13[0]) != 1684099177)
      {
        if (v12 < 5)
        {
          goto LABEL_42;
        }

        if (LODWORD(v13[0]) == 1668571479 && BYTE4(v13[0]) == 104)
        {
          v5 = @"applewatch";
        }

        else
        {
          if (v12 < 7)
          {
            goto LABEL_42;
          }

          if (LODWORD(v13[0]) == 1819308097 && *(v13 + 3) == 1448371564)
          {
            v5 = @"appletv";
          }

          else
          {
            if (v12 < 0xD)
            {
              goto LABEL_42;
            }

            if (*&v13[0] != 0x447974696C616552 || *(v13 + 5) != 0x6563697665447974)
            {
              goto LABEL_42;
            }

            v5 = @"applevision";
          }
        }

        goto LABEL_41;
      }

      goto LABEL_39;
    }

LABEL_16:
    v5 = @"iphone";
LABEL_41:
    _CFGetProductName__cfBundlePlatform = v5;
  }

LABEL_42:
  v10 = _CFBundleResourceLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    ___CFGetProductName_block_invoke_cold_3(v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void ___CFGetProductName_block_invoke_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "Using ~ipad resources (classic)", v2, 2u);
  v1 = *MEMORY[0x1E69E9840];
}

void ___CFGetProductName_block_invoke_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "Using ~iphone resources (classic)", v2, 2u);
  v1 = *MEMORY[0x1E69E9840];
}

void ___CFGetProductName_block_invoke_cold_3(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = _CFGetProductName__cfBundlePlatform;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "Using ~%@ resources", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end