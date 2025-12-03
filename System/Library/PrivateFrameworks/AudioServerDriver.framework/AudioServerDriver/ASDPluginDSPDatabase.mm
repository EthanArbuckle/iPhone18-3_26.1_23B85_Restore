@interface ASDPluginDSPDatabase
- (ASDPluginDSPDatabase)initWithDictionary:(id)dictionary resourcePath:(id)path;
@end

@implementation ASDPluginDSPDatabase

- (ASDPluginDSPDatabase)initWithDictionary:(id)dictionary resourcePath:(id)path
{
  v37 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  pathCopy = path;
  v35.receiver = self;
  v35.super_class = ASDPluginDSPDatabase;
  v8 = [(ASDPluginDSPDatabase *)&v35 init];
  if (v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = dictionaryCopy;
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      v29 = v8;
      v30 = dictionaryCopy;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = [v10 objectForKeyedSubscript:{v15, v29}];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (v17 = [[ASDAudioDeviceDSPDatabase alloc] initWithDictionary:v16 resourcePath:pathCopy deviceUID:v15]) == 0)
          {

            v19 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v19)
            {
              [(ASDPluginDSPDatabase *)v19 initWithDictionary:v20 resourcePath:v21, v22, v23, v24, v25, v26];
            }

            v8 = 0;
            dictionaryCopy = v30;
            goto LABEL_15;
          }

          v18 = v17;
          [dictionary setObject:v17 forKey:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
        v8 = v29;
        dictionaryCopy = v30;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    objc_storeStrong(&v8->_deviceDatabases, dictionary);
LABEL_15:
  }

  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

@end