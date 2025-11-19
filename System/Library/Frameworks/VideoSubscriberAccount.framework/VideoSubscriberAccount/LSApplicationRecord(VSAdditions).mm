@interface LSApplicationRecord(VSAdditions)
+ (id)vs_applicationRecordWithBundleIdentifier:()VSAdditions;
+ (id)vs_applicationRecordWithBundleURL:()VSAdditions;
+ (id)vs_applicationRecordWithStoreItemIdentifier:()VSAdditions;
@end

@implementation LSApplicationRecord(VSAdditions)

+ (id)vs_applicationRecordWithBundleURL:()VSAdditions
{
  v3 = a3;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithURL:v3 allowPlaceholder:1 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[LSApplicationRecord(VSAdditions) vs_applicationRecordWithBundleURL:];
    }
  }

  return v4;
}

+ (id)vs_applicationRecordWithStoreItemIdentifier:()VSAdditions
{
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithStoreItemIdentifier:a3 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(LSApplicationRecord(VSAdditions) *)v6 vs_applicationRecordWithStoreItemIdentifier:a3, v8];
    }
  }

  return v4;
}

+ (id)vs_applicationRecordWithBundleIdentifier:()VSAdditions
{
  v3 = a3;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[LSApplicationRecord(VSAdditions) vs_applicationRecordWithBundleIdentifier:];
    }
  }

  return v4;
}

+ (void)vs_applicationRecordWithStoreItemIdentifier:()VSAdditions .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = a1;
  OUTLINED_FUNCTION_1(&dword_23AB8E000, a2, a3, "Unable to fetch valid app record from store item identifier: %llu, %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end