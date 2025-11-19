@interface NSDictionary(AuthKit)
- (id)_ak_shortenServiceIdentifier:()AuthKit;
- (id)_ak_truncateTokenDict:()AuthKit;
- (id)_ak_truncateTokenString:()AuthKit;
- (id)ak_dictionaryWithKeysFromArray:()AuthKit;
- (id)ak_redactedCopy;
- (uint64_t)hasValueAtKey:()AuthKit ofType:;
@end

@implementation NSDictionary(AuthKit)

- (id)_ak_shortenServiceIdentifier:()AuthKit
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [location[0] stringByReplacingOccurrencesOfString:@"com.apple.gs." withString:@"(cag)."];
  }

  else
  {
    v6 = MEMORY[0x1E69E5928](location[0]);
  }

  objc_storeStrong(location, 0);
  v3 = v6;

  return v3;
}

- (id)_ak_truncateTokenString:()AuthKit
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [location[0] length] > 0x10)
  {
    v7 = [location[0] substringToIndex:4];
    v6 = [location[0] substringFromIndex:{objc_msgSend(location[0], "length") - 4}];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@...%@", v7, v6];
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v7, 0);
  }

  else
  {
    if (location[0])
    {
      v3 = @"(******)";
    }

    else
    {
      v3 = @"(null)";
    }

    v9 = MEMORY[0x1E69E5928](v3);
  }

  objc_storeStrong(location, 0);
  v4 = v9;

  return v4;
}

- (id)_ak_truncateTokenDict:()AuthKit
{
  v11 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = [v4 initWithCapacity:{objc_msgSend(location[0], "count")}];
  v5 = location[0];
  v7 = MEMORY[0x1E69E5928](v11);
  v8 = MEMORY[0x1E69E5928](v9);
  [v5 enumerateKeysAndObjectsUsingBlock:?];
  v6 = [v9 copy];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)ak_redactedCopy
{
  v5[2] = a1;
  v5[1] = a2;
  v5[0] = MEMORY[0x1E69E5928](a1);
  v4 = [a1 aaf_map:?];
  objc_storeStrong(v5, 0);

  return v4;
}

- (id)ak_dictionaryWithKeysFromArray:()AuthKit
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v14 = [MEMORY[0x1E695DF90] dictionary];
  memset(__b, 0, sizeof(__b));
  obja = MEMORY[0x1E69E5928](location[0]);
  v10 = [obja countByEnumeratingWithState:__b objects:v17 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obja);
      }

      v13 = *(__b[1] + 8 * v7);
      v11 = [v16 objectForKeyedSubscript:v13];
      if (v11)
      {
        [v14 setObject:v11 forKeyedSubscript:v13];
      }

      objc_storeStrong(&v11, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obja countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](obja);
  v4 = [v14 copy];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v4;
}

- (uint64_t)hasValueAtKey:()AuthKit ofType:
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = [v17 objectForKeyedSubscript:location[0]];
  if (v14)
  {
    v4 = objc_opt_class();
    v10 = _AKSafeCast_0(v4, v14);
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v10 length])
      {
        v18 = 1;
        v11 = 1;
      }

      else
      {
        v7 = _AKLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v19, location[0]);
          _os_log_error_impl(&dword_193225000, v7, OS_LOG_TYPE_ERROR, "NSDictionary validateValues string is empty atKey %@", v19, 0xCu);
        }

        objc_storeStrong(&v7, 0);
        v18 = 0;
        v11 = 1;
      }
    }

    else
    {
      oslog = _AKLogSystem();
      v8 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_3_8_64_8_64_8_64(v20, location[0], v15, v14);
        _os_log_error_impl(&dword_193225000, oslog, v8, "NSDictionary hasValueAtKey %@ expected %@ got %@", v20, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
      v18 = 0;
      v11 = 1;
    }

    objc_storeStrong(&v10, 0);
  }

  else
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v21, location[0]);
      _os_log_error_impl(&dword_193225000, v13, v12, "NSDictionary failed hasValueAtKey %@", v21, 0xCu);
    }

    objc_storeStrong(&v13, 0);
    v18 = 0;
    v11 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v18 & 1;
}

@end