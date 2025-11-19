@interface ASDTPMActionFileReader
- (ASDTPMActionFileReader)initWithConfig:(id)a3 forSequencer:(id)a4;
- (int)action;
- (void)action;
@end

@implementation ASDTPMActionFileReader

- (ASDTPMActionFileReader)initWithConfig:(id)a3 forSequencer:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v29.receiver = self;
  v29.super_class = ASDTPMActionFileReader;
  v7 = [(ASDTPMAction *)&v29 initWithConfig:v6 forSequencer:a4];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v6 asdtFilePath];
  [(ASDTPMActionFileReader *)v7 setFilePath:v8];

  v9 = [(ASDTPMActionFileReader *)v7 filePath];

  if (!v9)
  {
    v13 = [v6 asdtBundleClass];
    v14 = [v6 asdtBundlePath];
    v15 = [v6 asdtBundleResource];
    v16 = [v6 asdtBundleExtension];
    v17 = [v6 asdtBundleSubdir];
    if (v15 && v13 | v14)
    {
      if (v13)
      {
        [MEMORY[0x277CCA8D8] bundleForClass:v13];
      }

      else
      {
        [MEMORY[0x277CCA8D8] bundleWithPath:v14];
      }
      v18 = ;
      v19 = v18;
      if (v18)
      {
        if (v17)
        {
          [v18 pathForResource:v15 ofType:v16 inDirectory:v17];
        }

        else
        {
          [v18 pathForResource:v15 ofType:v16];
        }
        v22 = ;
        [(ASDTPMActionFileReader *)v7 setFilePath:v22];

        v23 = [(ASDTPMActionFileReader *)v7 filePath];

        if (v23)
        {

          goto LABEL_3;
        }

        v20 = ASDTBaseLogType();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v26 = [(ASDTPMDevice *)v7 name];
          v27 = [v19 bundlePath];
          *buf = 138413314;
          v31 = v26;
          v32 = 2112;
          v33 = v15;
          v34 = 2112;
          v35 = v16;
          v36 = 2112;
          v37 = v17;
          v38 = 2112;
          v39 = v27;
          _os_log_error_impl(&dword_241659000, v20, OS_LOG_TYPE_ERROR, "%@: Could not generate path for bundle resource '%@', type '%@', subdir '%@'. Bundle path: %@", buf, 0x34u);
        }
      }

      else
      {
        v20 = ASDTBaseLogType();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v28 = [(ASDTPMDevice *)v7 name];
          v21 = v14;
          if (v13)
          {
            v21 = NSStringFromClass(v13);
          }

          *buf = 138412546;
          v31 = v28;
          v32 = 2112;
          v33 = v21;
          _os_log_error_impl(&dword_241659000, v20, OS_LOG_TYPE_ERROR, "%@: Bundle not found for %@", buf, 0x16u);
          if (v13)
          {
          }
        }
      }
    }

    else
    {
      v19 = ASDTBaseLogType();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ASDTPMActionFileReader initWithConfig:v7 forSequencer:?];
      }
    }

LABEL_31:
    v12 = 0;
    goto LABEL_32;
  }

LABEL_3:
  v10 = [v6 asdtPropertyAddress];
  [(ASDTPMActionFileReader *)v7 setPropertyAddress:v10];

  v11 = [(ASDTPMActionFileReader *)v7 propertyAddress];

  if (!v11)
  {
    v14 = ASDTBaseLogType();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMActionFileReader initWithConfig:v7 forSequencer:?];
    }

    goto LABEL_31;
  }

  -[ASDTPMActionFileReader setPropertyDataType:](v7, "setPropertyDataType:", [v6 asdtPropertyIsPList]);
LABEL_5:
  v12 = v7;
LABEL_32:

  v24 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int)action
{
  v3 = MEMORY[0x277CBEA90];
  v4 = [(ASDTPMActionFileReader *)self filePath];
  v23 = 0;
  v5 = [v3 dataWithContentsOfFile:v4 options:2 error:&v23];
  v6 = v23;

  if (v5)
  {
    v7 = [(ASDTPMActionFileReader *)self convert:v5];
    v22 = 0;
    if ([(ASDTPMActionFileReader *)self propertyDataType]== 1886155636)
    {
      v22 = v7;
      v8 = 8;
      v9 = &v22;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v7;
        v13 = v7;
        v9 = [v13 bytes];
        v8 = [v13 length];
      }

      else
      {
        v9 = 0;
        v8 = 0;
      }
    }

    v14 = [(ASDTPMActionFileReader *)self propertyAddress];
    v20 = [v14 audioObjectPropertyAddress];
    LODWORD(v21) = v15;

    v16 = [(ASDTPMDevice *)self parentSequencer:v20];
    v17 = [v16 parentDevice];
    v18 = [v17 setProperty:&v20 withQualifierSize:0 qualifierData:0 dataSize:v8 andData:v9 forClient:0];

    if (v18)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2003329396;
    }
  }

  else
  {
    v10 = ASDTBaseLogType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ASDTPMActionFileReader *)self action];
    }

    v11 = [v6 code];
  }

  return v11;
}

- (void)initWithConfig:(void *)a1 forSequencer:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 name];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithConfig:(void *)a1 forSequencer:.cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 name];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x34u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)action
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a1 name];
  v5 = [a1 filePath];
  v12 = [a2 description];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

@end