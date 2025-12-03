@interface ASDTPMActionFileReader
- (ASDTPMActionFileReader)initWithConfig:(id)config forSequencer:(id)sequencer;
- (int)action;
- (void)action;
@end

@implementation ASDTPMActionFileReader

- (ASDTPMActionFileReader)initWithConfig:(id)config forSequencer:(id)sequencer
{
  v40 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v29.receiver = self;
  v29.super_class = ASDTPMActionFileReader;
  v7 = [(ASDTPMAction *)&v29 initWithConfig:configCopy forSequencer:sequencer];
  if (!v7)
  {
    goto LABEL_5;
  }

  asdtFilePath = [configCopy asdtFilePath];
  [(ASDTPMActionFileReader *)v7 setFilePath:asdtFilePath];

  filePath = [(ASDTPMActionFileReader *)v7 filePath];

  if (!filePath)
  {
    asdtBundleClass = [configCopy asdtBundleClass];
    asdtBundlePath = [configCopy asdtBundlePath];
    asdtBundleResource = [configCopy asdtBundleResource];
    asdtBundleExtension = [configCopy asdtBundleExtension];
    asdtBundleSubdir = [configCopy asdtBundleSubdir];
    if (asdtBundleResource && asdtBundleClass | asdtBundlePath)
    {
      if (asdtBundleClass)
      {
        [MEMORY[0x277CCA8D8] bundleForClass:asdtBundleClass];
      }

      else
      {
        [MEMORY[0x277CCA8D8] bundleWithPath:asdtBundlePath];
      }
      v18 = ;
      v19 = v18;
      if (v18)
      {
        if (asdtBundleSubdir)
        {
          [v18 pathForResource:asdtBundleResource ofType:asdtBundleExtension inDirectory:asdtBundleSubdir];
        }

        else
        {
          [v18 pathForResource:asdtBundleResource ofType:asdtBundleExtension];
        }
        v22 = ;
        [(ASDTPMActionFileReader *)v7 setFilePath:v22];

        filePath2 = [(ASDTPMActionFileReader *)v7 filePath];

        if (filePath2)
        {

          goto LABEL_3;
        }

        v20 = ASDTBaseLogType();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          name = [(ASDTPMDevice *)v7 name];
          bundlePath = [v19 bundlePath];
          *buf = 138413314;
          v31 = name;
          v32 = 2112;
          v33 = asdtBundleResource;
          v34 = 2112;
          v35 = asdtBundleExtension;
          v36 = 2112;
          v37 = asdtBundleSubdir;
          v38 = 2112;
          v39 = bundlePath;
          _os_log_error_impl(&dword_241659000, v20, OS_LOG_TYPE_ERROR, "%@: Could not generate path for bundle resource '%@', type '%@', subdir '%@'. Bundle path: %@", buf, 0x34u);
        }
      }

      else
      {
        v20 = ASDTBaseLogType();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          name2 = [(ASDTPMDevice *)v7 name];
          v21 = asdtBundlePath;
          if (asdtBundleClass)
          {
            v21 = NSStringFromClass(asdtBundleClass);
          }

          *buf = 138412546;
          v31 = name2;
          v32 = 2112;
          v33 = v21;
          _os_log_error_impl(&dword_241659000, v20, OS_LOG_TYPE_ERROR, "%@: Bundle not found for %@", buf, 0x16u);
          if (asdtBundleClass)
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
  asdtPropertyAddress = [configCopy asdtPropertyAddress];
  [(ASDTPMActionFileReader *)v7 setPropertyAddress:asdtPropertyAddress];

  propertyAddress = [(ASDTPMActionFileReader *)v7 propertyAddress];

  if (!propertyAddress)
  {
    asdtBundlePath = ASDTBaseLogType();
    if (os_log_type_enabled(asdtBundlePath, OS_LOG_TYPE_ERROR))
    {
      [ASDTPMActionFileReader initWithConfig:v7 forSequencer:?];
    }

    goto LABEL_31;
  }

  -[ASDTPMActionFileReader setPropertyDataType:](v7, "setPropertyDataType:", [configCopy asdtPropertyIsPList]);
LABEL_5:
  v12 = v7;
LABEL_32:

  v24 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int)action
{
  v3 = MEMORY[0x277CBEA90];
  filePath = [(ASDTPMActionFileReader *)self filePath];
  v23 = 0;
  v5 = [v3 dataWithContentsOfFile:filePath options:2 error:&v23];
  v6 = v23;

  if (v5)
  {
    v7 = [(ASDTPMActionFileReader *)self convert:v5];
    v22 = 0;
    if ([(ASDTPMActionFileReader *)self propertyDataType]== 1886155636)
    {
      v22 = v7;
      v8 = 8;
      bytes = &v22;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v7;
        v13 = v7;
        bytes = [v13 bytes];
        v8 = [v13 length];
      }

      else
      {
        bytes = 0;
        v8 = 0;
      }
    }

    propertyAddress = [(ASDTPMActionFileReader *)self propertyAddress];
    audioObjectPropertyAddress = [propertyAddress audioObjectPropertyAddress];
    LODWORD(v21) = v15;

    v16 = [(ASDTPMDevice *)self parentSequencer:audioObjectPropertyAddress];
    parentDevice = [v16 parentDevice];
    v18 = [parentDevice setProperty:&audioObjectPropertyAddress withQualifierSize:0 qualifierData:0 dataSize:v8 andData:bytes forClient:0];

    if (v18)
    {
      code = 0;
    }

    else
    {
      code = 2003329396;
    }
  }

  else
  {
    v10 = ASDTBaseLogType();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ASDTPMActionFileReader *)self action];
    }

    code = [v6 code];
  }

  return code;
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
  name = [self name];
  filePath = [self filePath];
  v12 = [a2 description];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

@end