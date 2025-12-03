@interface ASDDSPGraphLoader
+ (BOOL)applyAUStrip:(id)strip toGraph:(id)graph;
+ (BOOL)applyPropertyStrip:(id)strip toGraph:(id)graph;
+ (id)graphWithConfiguration:(id)configuration;
+ (id)graphWithGraphInfo:(id)info;
@end

@implementation ASDDSPGraphLoader

+ (id)graphWithConfiguration:(id)configuration
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  configurationCopy = configuration;
  dspItems = [configurationCopy dspItems];
  v4 = [dspItems countByEnumeratingWithState:&v31 objects:v35 count:16];
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
        objc_enumerationMutation(dspItems);
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

    v5 = [dspItems countByEnumeratingWithState:&v31 objects:v35 count:16];
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

+ (id)graphWithGraphInfo:(id)info
{
  infoCopy = info;
  text = [infoCopy text];

  if (text)
  {
    text2 = [infoCopy text];
    substitutions = [infoCopy substitutions];
    includePaths = [infoCopy includePaths];
    v8 = [ASDDSPGraphInterpreter compileText:text2 withSubstitutions:substitutions includingPaths:includePaths];
LABEL_5:
    v10 = v8;

    goto LABEL_6;
  }

  path = [infoCopy path];

  if (path)
  {
    text2 = [infoCopy path];
    substitutions = [infoCopy substitutions];
    includePaths = [infoCopy includePaths];
    v8 = [ASDDSPGraphInterpreter compileFile:text2 withSubstitutions:substitutions includingPaths:includePaths];
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

+ (BOOL)applyAUStrip:(id)strip toGraph:(id)graph
{
  v30 = *MEMORY[0x277D85DE8];
  stripCopy = strip;
  graphCopy = graph;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    value = [stripCopy value];
    path = [stripCopy path];
    v26 = 138412546;
    v27 = value;
    v28 = 2112;
    v29 = path;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AUStripInfo value:%@ path:%@", &v26, 0x16u);
  }

  value2 = [stripCopy value];

  if (value2)
  {
    value3 = [stripCopy value];
    v11 = [graphCopy setAUStrip:value3];
  }

  else
  {
    path2 = [stripCopy path];

    if (path2)
    {
      v13 = MEMORY[0x277CBEAC0];
      path3 = [stripCopy path];
      v15 = [v13 dictionaryWithContentsOfFile:path3];

      v11 = [graphCopy setAUStrip:v15];
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

+ (BOOL)applyPropertyStrip:(id)strip toGraph:(id)graph
{
  stripCopy = strip;
  graphCopy = graph;
  value = [stripCopy value];

  if (value)
  {
    value2 = [stripCopy value];
    v9 = [graphCopy setPropertyStrip:value2];
  }

  else
  {
    path = [stripCopy path];

    if (path)
    {
      v11 = MEMORY[0x277CBEAC0];
      path2 = [stripCopy path];
      v13 = [v11 dictionaryWithContentsOfFile:path2];

      v9 = [graphCopy setPropertyStrip:v13];
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