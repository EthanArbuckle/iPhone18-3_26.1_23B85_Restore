@interface ASDStreamDSPConfiguration
- (ASDStreamDSPConfiguration)initWithDictionary:(id)a3 resourcePath:(id)a4;
@end

@implementation ASDStreamDSPConfiguration

- (ASDStreamDSPConfiguration)initWithDictionary:(id)a3 resourcePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = ASDStreamDSPConfiguration;
  v8 = [(ASDStreamDSPConfiguration *)&v21 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"Hardware"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[ASDDSPConfiguration alloc] initWithArray:v9 resourcePath:v7];
      hardwareDSP = v8->_hardwareDSP;
      v8->_hardwareDSP = v10;

      if (!v8->_hardwareDSP)
      {
        v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v12)
        {
          [(ASDStreamDSPConfiguration *)v12 initWithDictionary:v13 resourcePath:v14, v15, v16, v17, v18, v19];
        }

        v8 = 0;
      }
    }
  }

  return v8;
}

@end