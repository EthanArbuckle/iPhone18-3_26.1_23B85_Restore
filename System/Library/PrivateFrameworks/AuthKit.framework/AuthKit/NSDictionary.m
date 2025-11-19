@interface NSDictionary
@end

@implementation NSDictionary

void __47__NSDictionary_AuthKit___ak_truncateTokenDict___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[2] = a4;
  v13[1] = a1;
  v13[0] = [a1[4] _ak_shortenServiceIdentifier:location[0]];
  v12 = MEMORY[0x1E69E5928](v14);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a1[4] _ak_truncateTokenString:v14];
    v5 = v12;
    v12 = v4;
    MEMORY[0x1E69E5920](v5);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v14 ak_redactedCopy];
      v7 = v12;
      v12 = v6;
      MEMORY[0x1E69E5920](v7);
    }
  }

  [a1[5] setObject:v12 forKeyedSubscript:{v13[0], &v12}];
  objc_storeStrong(v8, 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

id __40__NSDictionary_AuthKit__ak_redactedCopy__block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21 = 0;
  objc_storeStrong(&v21, a3);
  v20[1] = a1;
  v14 = +[AKAppleIDAuthenticationController sensitiveAuthenticationKeys];
  v15 = [(NSSet *)v14 containsObject:location[0]];
  MEMORY[0x1E69E5920](v14);
  if (v15)
  {
    if ([location[0] isEqualToString:@"AKPassword"])
    {
      v20[0] = MEMORY[0x1E69E5928](v21);
      v18 = 0;
      v16 = 0;
      if ([v20[0] length] <= 4)
      {
        v3 = MEMORY[0x1E69E5928](@"(******)");
      }

      else
      {
        v11 = MEMORY[0x1E696AEC0];
        v19 = [v20[0] substringFromIndex:{objc_msgSend(v20[0], "length") - 4}];
        v18 = 1;
        v17 = [v11 stringWithFormat:@"(...%@)", v19];
        v16 = 1;
        v3 = MEMORY[0x1E69E5928](v17);
      }

      v23 = v3;
      if (v16)
      {
        MEMORY[0x1E69E5920](v17);
      }

      if (v18)
      {
        MEMORY[0x1E69E5920](v19);
      }

      objc_storeStrong(v20, 0);
    }

    else
    {
      if (v21)
      {
        v4 = @"(******)";
      }

      else
      {
        v4 = @"(null)";
      }

      v23 = MEMORY[0x1E69E5928](v4);
    }
  }

  else
  {
    v9 = +[AKAppleIDAuthenticationController sensitiveTokenKeys];
    v10 = [(NSSet *)v9 containsObject:location[0]];
    MEMORY[0x1E69E5920](v9);
    if (v10)
    {
      v23 = [a1[4] _ak_truncateTokenString:v21];
    }

    else
    {
      v7 = +[AKAppleIDAuthenticationController tokenDictionaryKeys];
      v8 = [(NSSet *)v7 containsObject:location[0]];
      MEMORY[0x1E69E5920](v7);
      if (v8)
      {
        v23 = [a1[4] _ak_truncateTokenDict:v21];
      }

      else
      {
        v23 = MEMORY[0x1E69E5928](v21);
      }
    }
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  v5 = v23;

  return v5;
}

@end