@interface ASTFileManagement
+ (id)unprotectedFileHandleForFileURL:(id)a3 error:(id *)a4;
@end

@implementation ASTFileManagement

+ (id)unprotectedFileHandleForFileURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 URLByDeletingLastPathComponent];
  v8 = [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:a4];

  if (v8)
  {
    v9 = [MEMORY[0x277CCA9F8] fileHandleForCreatingURL:v5 protection:*MEMORY[0x277CCA1B8] error:a4];
  }

  else
  {
    v10 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ASTFileManagement *)v5 unprotectedFileHandleForFileURL:a4 error:v10];
    }

    v9 = 0;
  }

  return v9;
}

+ (void)unprotectedFileHandleForFileURL:(NSObject *)a3 error:.cold.1(void *a1, uint64_t *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a1 URLByDeletingLastPathComponent];
  v6 = v5;
  if (a2)
  {
    v7 = *a2;
  }

  else
  {
    v7 = 0;
  }

  v9 = 138412546;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_240F3C000, a3, OS_LOG_TYPE_ERROR, "Could not create directory at URL: [%@]: %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end