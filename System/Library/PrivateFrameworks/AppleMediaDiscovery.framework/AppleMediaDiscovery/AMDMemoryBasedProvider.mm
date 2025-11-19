@interface AMDMemoryBasedProvider
+ (BOOL)isValidFeatureObject:(id)a3;
+ (BOOL)isValidMultiArray:(id)a3;
+ (id)sharedProvider;
- (id)fetchOutputRemapDictForUsecase:(id)a3;
- (id)getFeatureWithName:(id)a3 withColumn:(id)a4 error:(id *)a5;
- (void)storeFeatureData:(id)a3 error:(id *)a4;
- (void)storeOutputRemapData:(id)a3 error:(id *)a4;
@end

@implementation AMDMemoryBasedProvider

+ (id)sharedProvider
{
  v5 = &sharedProvider_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_1);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedProvider_sharedProvider;

  return v2;
}

uint64_t __40__AMDMemoryBasedProvider_sharedProvider__block_invoke()
{
  v0 = objc_alloc_init(AMDMemoryBasedProvider);
  v1 = sharedProvider_sharedProvider;
  sharedProvider_sharedProvider = v0;
  MEMORY[0x277D82BD8](v1);
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [sharedProvider_sharedProvider setFeatureStore:?];
  return MEMORY[0x277D82BD8](v3);
}

- (id)getFeatureWithName:(id)a3 withColumn:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = a5;
  v11 = [(AMDMemoryBasedProvider *)v18 featureStore];
  v14 = [(NSMutableDictionary *)v11 objectForKey:location[0]];
  MEMORY[0x277D82BD8](v11);
  if (v14)
  {
    v19 = [AMDFeature featureFromValue:v14];
  }

  else
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"could not find in-memory feature with id %@", location[0]];
    v12 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v20, v13);
      _os_log_error_impl(&dword_240CB9000, v12, OS_LOG_TYPE_ERROR, "%@", v20, 0xCu);
    }

    objc_storeStrong(&v12, 0);
    v8 = [AMDError allocError:16 withMessage:v13];
    v5 = v8;
    *v15 = v8;
    v19 = 0;
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v6 = v19;

  return v6;
}

- (id)fetchOutputRemapDictForUsecase:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(AMDMemoryBasedProvider *)v8 featureStore];
  v6 = [(NSMutableDictionary *)v5 objectForKey:location[0]];
  MEMORY[0x277D82BD8](v5);
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = MEMORY[0x277D82BE0](v6);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

- (void)storeFeatureData:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = MEMORY[0x277D82BE0](location[0]);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v22);
    v14 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
    if (v14)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v14;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(__b[1] + 8 * v11);
        v19 = [v22 objectForKey:v21];
        if ([AMDMemoryBasedProvider isValidFeatureObject:v19])
        {
          v23 = 0;
        }

        else
        {
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid data for feature '%@'", v21];
          oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            log = oslog;
            __os_log_helper_16_2_1_8_64(v28, v18);
            _os_log_error_impl(&dword_240CB9000, log, OS_LOG_TYPE_ERROR, "%@", v28, 0xCu);
          }

          objc_storeStrong(&oslog, 0);
          v7 = [AMDError allocError:16 withMessage:v18];
          v5 = v7;
          *v25 = v7;
          v23 = 1;
          objc_storeStrong(&v18, 0);
        }

        objc_storeStrong(&v19, 0);
        if (v23)
        {
          break;
        }

        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
          if (!v12)
          {
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
LABEL_15:
      v23 = 0;
    }

    MEMORY[0x277D82BD8](obj);
    if (!v23)
    {
      v6 = [(AMDMemoryBasedProvider *)v27 featureStore];
      [(NSMutableDictionary *)v6 addEntriesFromDictionary:v22];
      MEMORY[0x277D82BD8](v6);
      v23 = 0;
    }

    objc_storeStrong(&v22, 0);
  }

  else
  {
    v24 = MEMORY[0x277D82BE0](@"Inference input data not a dictionary");
    v15 = [AMDError allocError:15 withMessage:v24];
    v4 = v15;
    *v25 = v15;
    v23 = 1;
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)storeOutputRemapData:(id)a3 error:(id *)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x277D82BE0](location[0]);
    v5 = [(AMDMemoryBasedProvider *)v13 featureStore];
    [(NSMutableDictionary *)v5 addEntriesFromDictionary:v8];
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  else
  {
    v10 = MEMORY[0x277D82BE0](@"Output mapping is data not a dictionary");
    v6 = [AMDError allocError:15 withMessage:v10];
    v4 = v6;
    *v11 = v6;
    v9 = 1;
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(location, 0);
}

+ (BOOL)isValidMultiArray:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = [location[0] firstObject];
  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x277D82BE0](location[0]);
      v15 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
      if (v15)
      {
        v11 = *__b[2];
        v12 = 0;
        v13 = v15;
        while (1)
        {
          v10 = v12;
          if (*__b[2] != v11)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(__b[1] + 8 * v12);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v23 = 0;
            v19 = 1;
            goto LABEL_15;
          }

          if (([v22 isValidMultiArray:v18] & 1) == 0)
          {
            break;
          }

          ++v12;
          if (v10 + 1 >= v13)
          {
            v12 = 0;
            v13 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
            if (!v13)
            {
              goto LABEL_14;
            }
          }
        }

        v23 = 0;
        v19 = 1;
      }

      else
      {
LABEL_14:
        v19 = 0;
      }

LABEL_15:
      MEMORY[0x277D82BD8](obj);
      if (!v19)
      {
        v23 = 1;
        v19 = 1;
      }
    }

    else
    {
      memset(v16, 0, 0x40uLL);
      v8 = MEMORY[0x277D82BE0](location[0]);
      v9 = [v8 countByEnumeratingWithState:v16 objects:v24 count:16];
      if (v9)
      {
        v5 = *v16[2];
        v6 = 0;
        v7 = v9;
        while (1)
        {
          v4 = v6;
          if (*v16[2] != v5)
          {
            objc_enumerationMutation(v8);
          }

          v16[8] = *(v16[1] + 8 * v6);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          ++v6;
          if (v4 + 1 >= v7)
          {
            v6 = 0;
            v7 = [v8 countByEnumeratingWithState:v16 objects:v24 count:16];
            if (!v7)
            {
              goto LABEL_25;
            }
          }
        }

        v23 = 0;
        v19 = 1;
      }

      else
      {
LABEL_25:
        v19 = 0;
      }

      MEMORY[0x277D82BD8](v8);
      if (!v19)
      {
        v23 = 1;
        v19 = 1;
      }
    }
  }

  else
  {
    v23 = 0;
    v19 = 1;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v23 & 1;
}

+ (BOOL)isValidFeatureObject:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v24 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [location[0] allValues];
    v4 = v22;
    v22 = v3;
    MEMORY[0x277D82BD8](v4);
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v22, location[0]);
LABEL_9:
    v20 = [v22 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memset(__b, 0, 0x40uLL);
      obj = MEMORY[0x277D82BE0](v22);
      v17 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
      if (v17)
      {
        v13 = *__b[2];
        v14 = 0;
        v15 = v17;
        while (1)
        {
          v12 = v14;
          if (*__b[2] != v13)
          {
            objc_enumerationMutation(obj);
          }

          __b[8] = *(__b[1] + 8 * v14);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          ++v14;
          if (v12 + 1 >= v15)
          {
            v14 = 0;
            v15 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
            if (!v15)
            {
              goto LABEL_18;
            }
          }
        }

        v25 = 0;
        v21 = 1;
      }

      else
      {
LABEL_18:
        v21 = 0;
      }

      MEMORY[0x277D82BD8](obj);
      if (v21)
      {
        goto LABEL_38;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [v24 isValidMultiArray:v22] & 1;
        }

        else
        {
          v25 = 0;
        }

        v21 = 1;
        goto LABEL_38;
      }

      memset(v18, 0, 0x40uLL);
      v10 = MEMORY[0x277D82BE0](v22);
      v11 = [v10 countByEnumeratingWithState:v18 objects:v26 count:16];
      if (v11)
      {
        v7 = *v18[2];
        v8 = 0;
        v9 = v11;
        while (1)
        {
          v6 = v8;
          if (*v18[2] != v7)
          {
            objc_enumerationMutation(v10);
          }

          v18[8] = *(v18[1] + 8 * v8);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          ++v8;
          if (v6 + 1 >= v9)
          {
            v8 = 0;
            v9 = [v10 countByEnumeratingWithState:v18 objects:v26 count:16];
            if (!v9)
            {
              goto LABEL_30;
            }
          }
        }

        v25 = 0;
        v21 = 1;
      }

      else
      {
LABEL_30:
        v21 = 0;
      }

      MEMORY[0x277D82BD8](v10);
      if (v21)
      {
        goto LABEL_38;
      }
    }

    v25 = 1;
    v21 = 1;
LABEL_38:
    objc_storeStrong(&v20, 0);
    goto LABEL_39;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v25 = 1;
    v21 = 1;
  }

  else
  {
    v25 = 0;
    v21 = 1;
  }

LABEL_39:
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v25 & 1;
}

@end