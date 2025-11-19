@interface NSData(AuthKit)
+ (id)ak_dataWithBase64UrlEncodedString:()AuthKit;
- (id)ak_SHA256Data;
@end

@implementation NSData(AuthKit)

- (id)ak_SHA256Data
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v6[1] = a2;
  v2 = a1;
  if (CC_SHA256([a1 bytes], objc_msgSend(v7, "length"), md))
  {
    v6[0] = [MEMORY[0x1E695DEF0] dataWithBytes:md length:32];
    v8 = MEMORY[0x1E69E5928](v6[0]);
    objc_storeStrong(v6, 0);
  }

  else
  {
    v8 = 0;
  }

  *MEMORY[0x1E69E9840];
  v3 = v8;

  return v3;
}

+ (id)ak_dataWithBase64UrlEncodedString:()AuthKit
{
  v11 = *MEMORY[0x1E69E9840];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v8 = [location[0] stringByReplacingOccurrencesOfString:@"_" withString:@"/"];
  v3 = [v8 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];
  v4 = v8;
  v8 = v3;
  MEMORY[0x1E69E5920](v4);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_3_1_8_65(v10, v8);
    _os_log_debug_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEBUG, "Base64 encoded string after replacement: %{private}@", v10, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v6 = [v8 aaf_toBase64DecodedData];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v6;
}

@end