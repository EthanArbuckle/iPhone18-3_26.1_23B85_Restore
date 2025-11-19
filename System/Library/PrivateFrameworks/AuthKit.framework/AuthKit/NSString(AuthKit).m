@interface NSString(AuthKit)
+ (id)ak_base64EncodedJsonFromObject:()AuthKit;
- (id)ak_numberObject;
- (id)ak_safeBase64String;
- (id)ak_stringByZeroPaddingOccurencesOfString:()AuthKit;
- (id)ak_truncatedCopy;
- (uint64_t)ak_isEmailAddress;
@end

@implementation NSString(AuthKit)

+ (id)ak_base64EncodedJsonFromObject:()AuthKit
{
  v15 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v12 = 0;
  v11 = 0;
  obja = 0;
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:location[0] options:0 error:&obja];
  objc_storeStrong(&v11, obja);
  v10 = v7;
  if (v11)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v14, v11);
      _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Error converting object to json string: %@", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v3 = [v10 base64EncodedStringWithOptions:0];
    v4 = v12;
    v12 = v3;
    MEMORY[0x1E69E5920](v4);
  }

  v6 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v6;
}

- (id)ak_truncatedCopy
{
  v8[2] = a1;
  v8[1] = a2;
  v8[0] = [a1 copy];
  if ([v8[0] length] > 6)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [v8[0] substringToIndex:6];
    v2 = [v6 stringWithFormat:@"%@...", v7];
    v3 = v8[0];
    v8[0] = v2;
    MEMORY[0x1E69E5920](v3);
    MEMORY[0x1E69E5920](v7);
  }

  v5 = MEMORY[0x1E69E5928](v8[0]);
  objc_storeStrong(v8, 0);

  return v5;
}

- (id)ak_stringByZeroPaddingOccurencesOfString:()AuthKit
{
  v9 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = v9;
  v4 = location[0];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"​%@", location[0]];
  v7 = [v5 stringByReplacingOccurrencesOfString:v4 withString:?];
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)ak_safeBase64String
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v9 = a2;
  v7 = 0;
  v4 = 0;
  if ([a1 length])
  {
    v8 = [v10 substringFromIndex:{objc_msgSend(v10, "length") - 1}];
    v7 = 1;
    v4 = [v8 isEqualToString:@"="] == 0;
  }

  if (v7)
  {
    MEMORY[0x1E69E5920](v8);
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@==", v10];
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_3_1_8_65(v12, v6);
      _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Adding padding to the string: %{private}@", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v11 = MEMORY[0x1E69E5928](v6);
    objc_storeStrong(&v6, 0);
  }

  else
  {
    v11 = MEMORY[0x1E69E5928](v10);
  }

  *MEMORY[0x1E69E9840];
  v2 = v11;

  return v2;
}

- (id)ak_numberObject
{
  v5 = a1;
  v4[1] = a2;
  v4[0] = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v4[0] setNumberStyle:1];
  v3 = [v4[0] numberFromString:v5];
  objc_storeStrong(v4, 0);

  return v3;
}

- (uint64_t)ak_isEmailAddress
{
  v6 = a1;
  v5[1] = a2;
  v5[0] = MEMORY[0x1E69E5928](@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}");
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF MATCHES %@", v5[0]];
  v3 = [v4 evaluateWithObject:v6];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v5, 0);
  return v3;
}

@end