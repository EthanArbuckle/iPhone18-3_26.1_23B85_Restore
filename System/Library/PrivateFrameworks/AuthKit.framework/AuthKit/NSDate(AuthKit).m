@interface NSDate(AuthKit)
+ (id)_dateFormatter;
+ (id)ak_dateFromRFC2822String:()AuthKit;
+ (id)ak_dateFromString:()AuthKit;
- (id)ak_serverFriendlyString;
@end

@implementation NSDate(AuthKit)

- (id)ak_serverFriendlyString
{
  v10[2] = a1;
  v10[1] = a2;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __42__NSDate_AuthKit__ak_serverFriendlyString__block_invoke;
  v8 = &unk_1E73D8A40;
  v9 = MEMORY[0x1E69E5928](a1);
  v10[0] = ak_unfair_lock_perform_with_result_5(&timeFormatterLock, &v4);
  v3 = MEMORY[0x1E69E5928](v10[0]);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);

  return v3;
}

+ (id)_dateFormatter
{
  v3 = &_dateFormatter_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_48);
  if (*v3 != -1)
  {
    dispatch_once(v3, location);
  }

  objc_storeStrong(&location, 0);
  v0 = _dateFormatter_dateFormatter;

  return v0;
}

+ (id)ak_dateFromString:()AuthKit
{
  v12 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __37__NSDate_AuthKit__ak_dateFromString___block_invoke;
  v9 = &unk_1E73D8A68;
  v10[1] = v12;
  v10[0] = MEMORY[0x1E69E5928](location[0]);
  v4 = ak_unfair_lock_perform_with_result_5(&timeFormatterLock, &v5);
  objc_storeStrong(v10, 0);
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)ak_dateFromRFC2822String:()AuthKit
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v13 = &ak_dateFromRFC2822String__onceToken;
  v12 = 0;
  objc_storeStrong(&v12, &__block_literal_global_3);
  if (*v13 != -1)
  {
    dispatch_once(v13, v12);
  }

  objc_storeStrong(&v12, 0);
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __44__NSDate_AuthKit__ak_dateFromRFC2822String___block_invoke_2;
  v9 = &unk_1E73D8A40;
  v10 = MEMORY[0x1E69E5928](location[0]);
  v4 = ak_unfair_lock_perform_with_result_5(&timeFormatterLock, &v5);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v4;
}

@end