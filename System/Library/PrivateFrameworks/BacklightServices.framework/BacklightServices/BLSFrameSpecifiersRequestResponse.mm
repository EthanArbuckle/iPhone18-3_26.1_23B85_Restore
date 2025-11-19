@interface BLSFrameSpecifiersRequestResponse
- (BLSFrameSpecifiersRequestResponse)initWithDateSpecifiers:(id)a3;
- (NSArray)dateSpecifiers;
@end

@implementation BLSFrameSpecifiersRequestResponse

- (BLSFrameSpecifiersRequestResponse)initWithDateSpecifiers:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CF0C80]);
  empty = xpc_array_create_empty();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = BSCreateSerializedBSXPCEncodableObject();
        if (v13)
        {
          xpc_array_append_value(empty, v13);
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  [v5 setObject:empty forSetting:1];
  v17.receiver = self;
  v17.super_class = BLSFrameSpecifiersRequestResponse;
  v14 = [(BLSFrameSpecifiersRequestResponse *)&v17 initWithInfo:v5 error:0];

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (NSArray)dateSpecifiers
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(BLSFrameSpecifiersRequestResponse *)self info];
  v4 = [v3 objectForSetting:1];

  if (v4 && MEMORY[0x223D71A60](v4) == MEMORY[0x277D86440])
  {
    count = xpc_array_get_count(v4);
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:count];
    if (count)
    {
      v9 = 0;
      *&v8 = 134218498;
      v15 = v8;
      do
      {
        v10 = xpc_array_get_value(v4, v9);
        if (v10)
        {
          v11 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionary();
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v7 addObject:v11];
          }

          else
          {
            v12 = bls_scenes_log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
            {
              *buf = v15;
              v17 = self;
              v18 = 2114;
              v19 = v11;
              v20 = 2114;
              v21 = v10;
              _os_log_fault_impl(&dword_21FE25000, v12, OS_LOG_TYPE_FAULT, "%p %{public}@ is not of type BLSAlwaysOnDateSpecifier from %{public}@", buf, 0x20u);
            }
          }
        }

        ++v9;
      }

      while (count != v9);
    }

    v5 = [v7 copy];
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

@end