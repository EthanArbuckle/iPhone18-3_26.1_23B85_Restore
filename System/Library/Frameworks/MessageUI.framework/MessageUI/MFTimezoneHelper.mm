@interface MFTimezoneHelper
+ (id)citiesMatchingName:(id)name;
+ (id)cityForTimeZone:(id)zone;
+ (id)log;
@end

@implementation MFTimezoneHelper

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__MFTimezoneHelper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_13 != -1)
  {
    dispatch_once(&log_onceToken_13, block);
  }

  v2 = log_log_13;

  return v2;
}

void __23__MFTimezoneHelper_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_13;
  log_log_13 = v1;
}

+ (id)cityForTimeZone:(id)zone
{
  zoneCopy = zone;
  mEMORY[0x1E698B670] = [MEMORY[0x1E698B670] sharedManager];
  v5 = [mEMORY[0x1E698B670] defaultCityForTimeZone:zoneCopy];

  if (v5)
  {
    v6 = [MFCity alloc];
    v7 = [v5 displayNameIncludingCountry:0];
    v8 = [v5 displayNameIncludingCountry:1];
    v9 = [(MFCity *)v6 initWithCityName:v7 displayName:v8 timeZone:zoneCopy];
  }

  else
  {
    v10 = +[MFTimezoneHelper log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MFTimezoneHelper *)zoneCopy cityForTimeZone:v10];
    }

    v9 = 0;
  }

  return v9;
}

+ (id)citiesMatchingName:(id)name
{
  nameCopy = name;
  mEMORY[0x1E698B670] = [MEMORY[0x1E698B670] sharedManager];
  v5 = [mEMORY[0x1E698B670] citiesMatchingName:nameCopy];
  v6 = [v5 ef_map:&__block_literal_global_36];

  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v6];
  allObjects = [v7 allObjects];
  v9 = [allObjects sortedArrayUsingComparator:&__block_literal_global_9];

  return v9;
}

MFCity *__39__MFTimezoneHelper_citiesMatchingName___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MFCity alloc];
  v4 = [v2 displayNameIncludingCountry:0];
  v5 = [v2 displayNameIncludingCountry:1];
  v6 = objc_alloc(MEMORY[0x1E695DFE8]);
  v7 = [v2 timeZone];
  v8 = [v6 initWithName:v7];
  v9 = [(MFCity *)v3 initWithCityName:v4 displayName:v5 timeZone:v8];

  return v9;
}

uint64_t __39__MFTimezoneHelper_citiesMatchingName___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayName];
  v6 = [v4 displayName];
  v7 = [v5 localizedStandardCompare:v6];

  return v7;
}

+ (void)cityForTimeZone:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BE819000, a2, OS_LOG_TYPE_ERROR, "The city for a time zone (%{public}@) does not exist.", &v2, 0xCu);
}

@end