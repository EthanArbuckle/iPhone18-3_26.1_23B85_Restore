@interface ASDTIOPAudioVTConfigurationProperty
+ (id)configDictForService:(id)a3;
- (ASDTIOPAudioVTConfigurationProperty)initWithConfig:(id)a3;
- (BOOL)storePropertyValue:(id)a3;
- (id)retrievePropertyValue;
- (int)checkPropertyValue:(id)a3;
@end

@implementation ASDTIOPAudioVTConfigurationProperty

+ (id)configDictForService:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEFC38];
  v9[0] = *MEMORY[0x277CEFC58];
  v9[1] = v3;
  v10[0] = @"ASDTIOPAudioVTConfigurationProperty";
  v10[1] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (ASDTIOPAudioVTConfigurationProperty)initWithConfig:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a3];
  v5 = *MEMORY[0x277CEFC10];
  v12[0] = *MEMORY[0x277CEFC28];
  v12[1] = v5;
  v6 = *MEMORY[0x277CEFC68];
  v13[0] = &unk_285359AD8;
  v13[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v4 asdtAddMissingEntriesFromDictionary:v7];

  v11.receiver = self;
  v11.super_class = ASDTIOPAudioVTConfigurationProperty;
  v8 = [(ASDTIOPAudioVTProperty *)&v11 initWithConfig:v4 propertyDataType:1886155636 qualifierDataType:0];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int)checkPropertyValue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDTIOPAudioVTConfigurationProperty;
  v5 = [(ASDTCustomProperty *)&v9 checkPropertyValue:v4];
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 objectForKey:@"CorealisRTModel"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = 0;
      }

      else
      {
        v7 = ASDTIOPLogType();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [ASDTIOPAudioVTConfigurationProperty checkPropertyValue:?];
        }

        v5 = 3;
      }
    }

    else
    {
      v6 = ASDTIOPLogType();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [ASDTIOPAudioVTConfigurationProperty checkPropertyValue:?];
      }

      v5 = 2;
    }
  }

  return v5;
}

- (BOOL)storePropertyValue:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0;
  v5 = [(ASDTIOPAudioVTProperty *)self vtDevice];
  v6 = [v5 getIsEnabled:&v23];

  if (v6)
  {
    if (!v23 || (-[ASDTIOPAudioVTProperty vtDevice](self, "vtDevice"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 setEnabled:0], v7, (v8 & 1) != 0))
    {
      v9 = v4;
      v10 = [v9 objectForKey:@"CorealisRTModelVersion"];
      v11 = ASDTIOPLogType();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(ASDTCustomProperty *)self name];
        v13 = v12;
        v14 = @"<unknown>";
        if (v10)
        {
          v14 = v10;
        }

        *buf = 138412546;
        v25 = v12;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_2416E9000, v11, OS_LOG_TYPE_DEFAULT, "%@: Updating VT configuration to '%@'\n", buf, 0x16u);
      }

      v15 = [(ASDTIOPAudioVTProperty *)self vtDevice];
      v16 = [v15 setConfigurationInfo:v9];

      if (v16)
      {
        if (!v23 || (-[ASDTIOPAudioVTProperty vtDevice](self, "vtDevice"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 setEnabled:v23], v17, (v18 & 1) != 0))
        {
          v19 = 1;
LABEL_22:

          goto LABEL_23;
        }

        v20 = ASDTIOPLogType();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [ASDTIOPAudioVTConfigurationProperty storePropertyValue:?];
        }
      }

      else
      {
        v20 = ASDTIOPLogType();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [ASDTIOPAudioVTConfigurationProperty storePropertyValue:?];
        }
      }

      v19 = 0;
      goto LABEL_22;
    }

    v9 = ASDTIOPLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOPAudioVTConfigurationProperty storePropertyValue:?];
    }
  }

  else
  {
    v9 = ASDTIOPLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASDTIOPAudioVTConfigurationProperty storePropertyValue:?];
    }
  }

  v19 = 0;
LABEL_23:

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)retrievePropertyValue
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(ASDTIOPAudioVTProperty *)self vtDevice];
  v4 = [v3 isConfigured];

  if (v4)
  {
    v5 = [(ASDTIOPAudioVTProperty *)self vtDevice];
    v6 = [v5 getConfigurationInfo];
  }

  else
  {
    v9 = @"CorealisRTModelVersion";
    v10[0] = @"<na>";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)checkPropertyValue:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2416E9000, v2, v3, "%@: VT configuration is not a dictionary.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)checkPropertyValue:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2416E9000, v2, v3, "%@: VT configuration data invalid.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)storePropertyValue:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2416E9000, v2, v3, "%@: Could not determine if the VT device was enabled.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)storePropertyValue:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2416E9000, v2, v3, "%@: Could not disable the VT device.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)storePropertyValue:(void *)a1 .cold.3(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2416E9000, v2, v3, "%@: Failed to set the VT configuration.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)storePropertyValue:(void *)a1 .cold.4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2(&dword_2416E9000, v2, v3, "%@: Could not enable the VT device.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end