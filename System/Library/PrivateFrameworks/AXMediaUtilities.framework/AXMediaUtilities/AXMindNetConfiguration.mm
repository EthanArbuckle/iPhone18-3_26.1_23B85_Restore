@interface AXMindNetConfiguration
- (AXMindNetConfiguration)initWithURL:(id)l;
@end

@implementation AXMindNetConfiguration

- (AXMindNetConfiguration)initWithURL:(id)l
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = AXMindNetConfiguration;
  v5 = [(AXMindNetConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy];
    filterThresholds = v5->_filterThresholds;
    v5->_filterThresholds = &unk_1F240B550;

    nmsThreshold = v5->_nmsThreshold;
    v5->_nmsThreshold = &unk_1F240B220;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v6 objectForKey:@"filterThresholds"];
      v10 = [v6 objectForKey:@"nmsThreshold"];
      if (__38__AXMindNetConfiguration_initWithURL___block_invoke(v10, v9))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&v5->_filterThresholds, v9);
          objc_storeStrong(&v5->_nmsThreshold, v10);
        }
      }
    }

    v11 = v5;
  }

  return v5;
}

BOOL __38__AXMindNetConfiguration_initWithURL___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_12;
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v8 = [v3 count] != 0;
  }

  else
  {
LABEL_12:
    v8 = 0;
  }

  return v8;
}

@end