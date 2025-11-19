@interface ASDDSPConfiguration
- (ASDDSPConfiguration)initWithArray:(id)a3 resourcePath:(id)a4;
@end

@implementation ASDDSPConfiguration

- (ASDDSPConfiguration)initWithArray:(id)a3 resourcePath:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = ASDDSPConfiguration;
  v8 = [(ASDDSPConfiguration *)&v33 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28 = v6;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * v14);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [[ASDDSPItemInfo alloc] initWithDictionary:v15 resourcePath:v7];
            if (!v16)
            {

              v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              if (v18)
              {
                [(ASDDSPConfiguration *)v18 initWithArray:v19 resourcePath:v20, v21, v22, v23, v24, v25];
              }

              v8 = 0;
              goto LABEL_16;
            }

            v17 = v16;
            [v9 addObject:v16];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    objc_storeStrong(&v8->_dspItems, v9);
LABEL_16:
    v6 = v28;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v8;
}

@end