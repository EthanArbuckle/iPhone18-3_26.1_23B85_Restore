@interface ANFiles
+ (id)createTemporaryFileWithData:(id)a3 extension:(id)a4 directory:(id)a5;
+ (id)createTemporaryURLWithFileExtension:(id)a3 directory:(id)a4;
+ (id)shared;
+ (id)temporaryDirectoryUrl;
+ (void)purgeTemporarySubDirectory:(id)a3;
+ (void)removeItem:(id)a3;
- (id)createDirectory:(id)a3 andFileURLWithExtension:(id)a4;
- (id)createTemporaryFileWithData:(id)a3 extension:(id)a4 directory:(id)a5;
- (void)purgeTemporarySubDirectory:(id)a3;
- (void)removeDirectoryIfEmpty:(id)a3;
- (void)removeItem:(id)a3;
@end

@implementation ANFiles

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __17__ANFiles_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_shared;

  return v2;
}

uint64_t __17__ANFiles_shared__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  shared_shared = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)createTemporaryFileWithData:(id)a3 extension:(id)a4 directory:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[ANFiles shared];
  v11 = [v10 createTemporaryFileWithData:v9 extension:v8 directory:v7];

  return v11;
}

+ (id)createTemporaryURLWithFileExtension:(id)a3 directory:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ANFiles shared];
  v8 = [v7 createTemporaryURLWithExtension:v6 directory:v5];

  return v8;
}

+ (void)purgeTemporarySubDirectory:(id)a3
{
  v3 = a3;
  v4 = +[ANFiles shared];
  [v4 purgeTemporarySubDirectory:v3];
}

+ (void)removeItem:(id)a3
{
  v3 = a3;
  v4 = +[ANFiles shared];
  [v4 removeItem:v3];
}

+ (id)temporaryDirectoryUrl
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3];

  return v4;
}

- (id)createTemporaryFileWithData:(id)a3 extension:(id)a4 directory:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(ANFiles *)self createDirectory:a5 andFileURLWithExtension:a4];
  if (!v9)
  {
    goto LABEL_4;
  }

  v17 = 0;
  v10 = [v8 writeToURL:v9 options:1 error:&v17];
  v11 = v17;
  v12 = v11;
  if (v10)
  {

LABEL_4:
    v13 = v9;
    goto LABEL_8;
  }

  v14 = ANLogHandleFiles();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v19 = &stru_2836DAA20;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_2237C8000, v14, OS_LOG_TYPE_ERROR, "%@ANFiles: failed to write to temporary file: %@", buf, 0x16u);
  }

  v13 = 0;
LABEL_8:

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)purgeTemporarySubDirectory:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[ANFiles temporaryDirectoryUrl];
  v5 = [v4 URLByAppendingPathComponent:v3 isDirectory:1];

  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];

  v8 = +[ANFiles temporaryDirectoryUrl];
  v9 = [v8 URLByAppendingPathComponent:v7 isDirectory:1];

  v10 = [v5 fileSystemRepresentation];
  v11 = [v9 fileSystemRepresentation];
  rename(v10, v11, v12);
  if (v13)
  {
    v14 = *__error();
    v15 = ANLogHandleFiles();
    v16 = v15;
    if (v14 == 2)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = &stru_2836DAA20;
        v17 = "%@ANFiles: skipping purge, directory does not exist";
        v18 = v16;
        v19 = OS_LOG_TYPE_DEFAULT;
        v20 = 12;
LABEL_11:
        _os_log_impl(&dword_2237C8000, v18, v19, v17, buf, v20);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v23 = *__error();
      *buf = 138412546;
      v27 = &stru_2836DAA20;
      v28 = 1024;
      LODWORD(v29) = v23;
      v17 = "%@ANFiles: failed to rename directory before safely purging: %d";
      v18 = v16;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 18;
      goto LABEL_11;
    }
  }

  else
  {
    v21 = [MEMORY[0x277CCAA00] defaultManager];
    v25 = 0;
    [v21 removeItemAtURL:v9 error:&v25];
    v16 = v25;

    if (v16)
    {
      v22 = ANLogHandleFiles();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v27 = &stru_2836DAA20;
        v28 = 2112;
        v29 = v9;
        v30 = 2112;
        v31 = v16;
        _os_log_impl(&dword_2237C8000, v22, OS_LOG_TYPE_ERROR, "%@ANFiles: failed to remove temporary sub directory at %@: %@", buf, 0x20u);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)removeItem:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  [v5 removeItemAtURL:v4 error:&v9];
  v6 = v9;

  if (v6)
  {
    v7 = ANLogHandleFiles();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v11 = &stru_2836DAA20;
      v12 = 2112;
      v13 = v4;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_2237C8000, v7, OS_LOG_TYPE_ERROR, "%@ANFiles: failed to remove item at %@: %@", buf, 0x20u);
    }
  }

  else
  {
    v7 = [v4 URLByDeletingLastPathComponent];
    [(ANFiles *)self removeDirectoryIfEmpty:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)createDirectory:(id)a3 andFileURLWithExtension:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = +[ANFiles temporaryDirectoryUrl];
  v8 = [v7 URLByAppendingPathComponent:v6 isDirectory:1];

  v9 = ANLogHandleFiles();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = &stru_2836DAA20;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_2237C8000, v9, OS_LOG_TYPE_DEFAULT, "%@ANFiles: creating directory at: %@", buf, 0x16u);
  }

  if (mkdir([v8 fileSystemRepresentation], 0x1EDu) && *__error() != 17)
  {
    v16 = ANLogHandleFiles();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = *__error();
      *buf = 138412546;
      v23 = &stru_2836DAA20;
      v24 = 1024;
      LODWORD(v25) = v19;
      _os_log_impl(&dword_2237C8000, v16, OS_LOG_TYPE_ERROR, "%@ANFiles: failed to create directory: %d", buf, 0x12u);
    }

    v17 = 0;
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_new();
    v12 = [v11 UUIDString];
    v13 = +[ANUtils an_dateFormatterForFilename];
    v14 = [MEMORY[0x277CBEAA8] date];
    v15 = [v13 stringFromDate:v14];
    v16 = [v10 stringWithFormat:@"%@--%@", v12, v15];

    v17 = [v8 URLByAppendingPathComponent:v16 isDirectory:0];
    if ([v5 length])
    {
      v18 = [v17 URLByAppendingPathExtension:v5];

      v17 = v18;
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)removeDirectoryIfEmpty:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (rmdir([v3 fileSystemRepresentation]))
  {
    if (*__error() == 66)
    {
      v4 = ANLogHandleFiles();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = &stru_2836DAA20;
        v5 = "%@ANFiles: failed to remove directory because it is not empty";
        v6 = v4;
        v7 = OS_LOG_TYPE_DEFAULT;
        v8 = 12;
LABEL_10:
        _os_log_impl(&dword_2237C8000, v6, v7, v5, &v13, v8);
      }
    }

    else
    {
      v9 = *__error();
      v10 = ANLogHandleFiles();
      v4 = v10;
      if (v9 == 20)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412546;
          v14 = &stru_2836DAA20;
          v15 = 2112;
          v16 = v3;
          v5 = "%@ANFiles: failed to remove item. %@ is not a directory";
          v6 = v4;
          v7 = OS_LOG_TYPE_DEFAULT;
          v8 = 22;
          goto LABEL_10;
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *__error();
        v13 = 138412546;
        v14 = &stru_2836DAA20;
        v15 = 1024;
        LODWORD(v16) = v11;
        v5 = "%@ANFiles: failed to remove directory: %d";
        v6 = v4;
        v7 = OS_LOG_TYPE_ERROR;
        v8 = 18;
        goto LABEL_10;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end