@interface ASDDSPGraphLoader
+ (BOOL)applyAUStrip:(id)a3 toGraph:(id)a4;
+ (BOOL)applyPropertyStrip:(id)a3 toGraph:(id)a4;
+ (id)graphWithConfiguration:(id)a3;
+ (id)graphWithGraphInfo:(id)a3;
@end

@implementation ASDDSPGraphLoader

+ (id)graphWithConfiguration:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v30 = a3;
  v3 = [v30 dspItems];
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v32;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v32 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v31 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [ASDDSPGraphLoader graphWithGraphInfo:v9];

        v6 = v10;
        if (!v10)
        {
          goto LABEL_29;
        }

        continue;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v6)
        {
          if ([ASDDSPGraphLoader applyAUStrip:v9 toGraph:v6])
          {
            continue;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [(ASDDSPGraphLoader *)v9 graphWithConfiguration:v6];
          }

LABEL_27:

          goto LABEL_28;
        }

        v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v11)
        {
          [(ASDDSPGraphLoader *)v11 graphWithConfiguration:v12, v13, v14, v15, v16, v17, v18];
        }

LABEL_28:
        v6 = 0;
        goto LABEL_29;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        continue;
      }

      if (!v6)
      {
        v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v20)
        {
          [(ASDDSPGraphLoader *)v20 graphWithConfiguration:v21, v22, v23, v24, v25, v26, v27];
        }

        goto LABEL_28;
      }

      if (![ASDDSPGraphLoader applyPropertyStrip:v9 toGraph:v6])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [(ASDDSPGraphLoader *)v9 graphWithConfiguration:v6];
        }

        goto LABEL_27;
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v28 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)graphWithGraphInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 text];

  if (v4)
  {
    v5 = [v3 text];
    v6 = [v3 substitutions];
    v7 = [v3 includePaths];
    v8 = [ASDDSPGraphInterpreter compileText:v5 withSubstitutions:v6 includingPaths:v7];
LABEL_5:
    v10 = v8;

    goto LABEL_6;
  }

  v9 = [v3 path];

  if (v9)
  {
    v5 = [v3 path];
    v6 = [v3 substitutions];
    v7 = [v3 includePaths];
    v8 = [ASDDSPGraphInterpreter compileFile:v5 withSubstitutions:v6 includingPaths:v7];
    goto LABEL_5;
  }

  v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v12)
  {
    [(ASDDSPGraphLoader *)v12 graphWithGraphInfo:v13, v14, v15, v16, v17, v18, v19];
  }

  v10 = 0;
LABEL_6:

  return v10;
}

+ (BOOL)applyAUStrip:(id)a3 toGraph:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 value];
    v8 = [v5 path];
    v26 = 138412546;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AUStripInfo value:%@ path:%@", &v26, 0x16u);
  }

  v9 = [v5 value];

  if (v9)
  {
    v10 = [v5 value];
    v11 = [v6 setAUStrip:v10];
  }

  else
  {
    v12 = [v5 path];

    if (v12)
    {
      v13 = MEMORY[0x277CBEAC0];
      v14 = [v5 path];
      v15 = [v13 dictionaryWithContentsOfFile:v14];

      v11 = [v6 setAUStrip:v15];
    }

    else
    {
      v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v16)
      {
        [(ASDDSPGraphLoader *)v16 applyAUStrip:v17 toGraph:v18, v19, v20, v21, v22, v23];
      }

      v11 = 0;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)applyPropertyStrip:(id)a3 toGraph:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 value];

  if (v7)
  {
    v8 = [v5 value];
    v9 = [v6 setPropertyStrip:v8];
  }

  else
  {
    v10 = [v5 path];

    if (v10)
    {
      v11 = MEMORY[0x277CBEAC0];
      v12 = [v5 path];
      v13 = [v11 dictionaryWithContentsOfFile:v12];

      v9 = [v6 setPropertyStrip:v13];
    }

    else
    {
      v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v14)
      {
        [(ASDDSPGraphLoader *)v14 applyPropertyStrip:v15 toGraph:v16, v17, v18, v19, v20, v21];
      }

      v9 = 0;
    }
  }

  return v9;
}

+ (void)graphWithConfiguration:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 path];
  v4 = [a2 name];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Applying PropertyStrip %@ to graph %@ failed", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)graphWithConfiguration:(void *)a1 .cold.3(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 path];
  v4 = [a2 name];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Applying AUStrip %@ to graph %@ failed", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end