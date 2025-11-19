@interface SOKerberosFileManager
+ (BOOL)archiveDictionary:(id)a3 toFile:(id)a4;
+ (id)documentsDirectoryURLForFileName:(id)a3;
+ (id)loadDictionaryFromFile:(id)a3;
@end

@implementation SOKerberosFileManager

+ (BOOL)archiveDictionary:(id)a3 toFile:(id)a4
{
  v6 = a3;
  v7 = [a1 documentsDirectoryURLForFileName:a4];
  v8 = SO_LOG_SOKerberosFileManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosFileManager archiveDictionary:v7 toFile:v8];
  }

  v17 = 0;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v17];

  v10 = v17;
  if (v10)
  {
    v11 = v10;
    v12 = SO_LOG_SOKerberosFileManager();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[SOKerberosFileManager archiveDictionary:toFile:];
    }

    v13 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v16 = 0;
  v13 = [v9 writeToURL:v7 options:1073741825 error:&v16];
  v14 = v16;
  if (v14)
  {
    v11 = v14;
    v12 = SO_LOG_SOKerberosFileManager();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[SOKerberosFileManager archiveDictionary:toFile:];
    }

    goto LABEL_10;
  }

LABEL_11:

  return v13;
}

+ (id)loadDictionaryFromFile:(id)a3
{
  v18[7] = *MEMORY[0x277D85DE8];
  v3 = [a1 documentsDirectoryURLForFileName:a3];
  v4 = SO_LOG_SOKerberosFileManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(SOKerberosFileManager *)v3 loadDictionaryFromFile:v4];
  }

  v17 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3 options:0 error:&v17];
  v6 = v17;
  if (v6)
  {
    v7 = v6;
    v8 = SO_LOG_SOKerberosFileManager();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[SOKerberosFileManager loadDictionaryFromFile:];
    }

    v9 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CCAAC8];
    v11 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v18[4] = objc_opt_class();
    v18[5] = objc_opt_class();
    v18[6] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:7];
    v13 = [v11 setWithArray:v12];
    v16 = 0;
    v9 = [v10 unarchivedObjectOfClasses:v13 fromData:v5 error:&v16];
    v7 = v16;

    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = SO_LOG_SOKerberosFileManager();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SOKerberosFileManager *)v7 loadDictionaryFromFile:v8];
    }
  }

LABEL_11:
  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)documentsDirectoryURLForFileName:(id)a3
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v6 = [v5 URLsForDirectory:9 inDomains:1];
  v7 = [v6 firstObject];

  v8 = [v7 URLByAppendingPathComponent:v4];

  return v8;
}

+ (void)archiveDictionary:(uint64_t)a1 toFile:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24006C000, a2, OS_LOG_TYPE_DEBUG, "archiving to file: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)archiveDictionary:toFile:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1(&dword_24006C000, v0, v1, "Error archiving file: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)archiveDictionary:toFile:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1(&dword_24006C000, v0, v1, "Error writing file: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)loadDictionaryFromFile:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24006C000, a2, OS_LOG_TYPE_DEBUG, "loading from file: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)loadDictionaryFromFile:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1(&dword_24006C000, v0, v1, "Error reading plist file: %{public}@, message: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)loadDictionaryFromFile:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24006C000, a2, OS_LOG_TYPE_ERROR, "Error deserializing plist: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end