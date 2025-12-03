@interface ASTFileManagement
+ (id)unprotectedFileHandleForFileURL:(id)l error:(id *)error;
@end

@implementation ASTFileManagement

+ (id)unprotectedFileHandleForFileURL:(id)l error:(id *)error
{
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  v8 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error];

  if (v8)
  {
    v9 = [MEMORY[0x277CCA9F8] fileHandleForCreatingURL:lCopy protection:*MEMORY[0x277CCA1B8] error:error];
  }

  else
  {
    v10 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ASTFileManagement *)lCopy unprotectedFileHandleForFileURL:error error:v10];
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