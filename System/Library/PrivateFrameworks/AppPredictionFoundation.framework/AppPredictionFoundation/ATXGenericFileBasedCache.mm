@interface ATXGenericFileBasedCache
- (ATXGenericFileBasedCache)initWithCacheFilePath:(id)a3 loggingHandle:(id)a4 debugName:(id)a5;
- (BOOL)storeData:(id)a3 error:(id *)a4;
- (BOOL)storeSecureCodedObject:(id)a3 error:(id *)a4;
- (id)readSecureCodedObjectWithMaxValidAge:(double)a3 allowableClasses:(id)a4 error:(id *)a5;
- (id)readWithMaxValidAge:(double)a3 error:(id *)a4;
- (void)evict;
@end

@implementation ATXGenericFileBasedCache

- (ATXGenericFileBasedCache)initWithCacheFilePath:(id)a3 loggingHandle:(id)a4 debugName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = ATXGenericFileBasedCache;
  v11 = [(ATXGenericFileBasedCache *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    cacheFilePath = v11->_cacheFilePath;
    v11->_cacheFilePath = v12;

    objc_storeStrong(&v11->_loggingHandle, a4);
    v14 = [v10 copy];
    debugName = v11->_debugName;
    v11->_debugName = v14;
  }

  return v11;
}

- (BOOL)storeData:(id)a3 error:(id *)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = open([(NSString *)self->_cacheFilePath UTF8String], 514, 384);
  if (v7 == -1)
  {
    v10 = *__error();
    v11 = __error();
    v12 = strerror(*v11);
    loggingHandle = self->_loggingHandle;
    if (os_log_type_enabled(loggingHandle, OS_LOG_TYPE_ERROR))
    {
      debugName = self->_debugName;
      *buf = 138412802;
      v33 = debugName;
      v34 = 1024;
      v35 = v10;
      v36 = 2080;
      v37 = v12;
      _os_log_error_impl(&dword_226368000, loggingHandle, OS_LOG_TYPE_ERROR, "Couldn't create %@ cache file: [%i] %s", buf, 0x1Cu);
      if (!a4)
      {
        goto LABEL_16;
      }
    }

    else if (!a4)
    {
      goto LABEL_16;
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA5B8];
    if (v12)
    {
      v30 = *MEMORY[0x277CCA068];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
      v31 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *a4 = [v14 errorWithDomain:v15 code:v10 userInfo:v17];

LABEL_15:
      LOBYTE(a4) = 0;
      goto LABEL_16;
    }

    v28 = *MEMORY[0x277CCA068];
    v29 = @"Unknown error";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v20 = v14;
    v21 = v15;
    v22 = 22;
LABEL_14:
    *a4 = [v20 errorWithDomain:v21 code:v22 userInfo:v16];
    goto LABEL_15;
  }

  v8 = v7;
  v9 = ATXCacheFileWrite(v7, v6);
  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
  }

  if ((v9 & 1) == 0)
  {
    if (os_log_type_enabled(self->_loggingHandle, OS_LOG_TYPE_ERROR))
    {
      [ATXGenericFileBasedCache storeData:? error:?];
      if (!a4)
      {
        goto LABEL_16;
      }
    }

    else if (!a4)
    {
      goto LABEL_16;
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA5B8];
    v26 = *MEMORY[0x277CCA068];
    v27 = @"Unable to write data";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v20 = v18;
    v21 = v19;
    v22 = 5;
    goto LABEL_14;
  }

  LOBYTE(a4) = 1;
LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)storeSecureCodedObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v13 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v13];
  v9 = v13;
  objc_autoreleasePoolPop(v7);
  if (!v8)
  {
    if (os_log_type_enabled(self->_loggingHandle, OS_LOG_TYPE_ERROR))
    {
      [ATXGenericFileBasedCache storeSecureCodedObject:? error:?];
      if (a4)
      {
        goto LABEL_5;
      }
    }

    else if (a4)
    {
LABEL_5:
      v11 = v9;
      v10 = 0;
      *a4 = v9;
      goto LABEL_8;
    }

    v10 = 0;
    goto LABEL_8;
  }

  v10 = [(ATXGenericFileBasedCache *)self storeData:v8 error:a4];
LABEL_8:

  return v10;
}

- (void)evict
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = a2;
  v4 = *__error();
  v5 = __error();
  v6 = strerror(*v5);
  v8 = 138412802;
  v9 = v2;
  v10 = 1024;
  v11 = v4;
  v12 = 2080;
  v13 = v6;
  _os_log_error_impl(&dword_226368000, v3, OS_LOG_TYPE_ERROR, "Couldn't unlink %@ cache file: [%i] %s", &v8, 0x1Cu);

  v7 = *MEMORY[0x277D85DE8];
}

- (id)readWithMaxValidAge:(double)a3 error:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = open([(NSString *)self->_cacheFilePath UTF8String], 0);
  if (v7 != -1)
  {
    v8 = v7;
    *buf = 0;
    v27 = 0.0;
    v9 = objc_autoreleasePoolPush();
    ATXCacheFileRead(v8, buf, &v27, a3);
    objc_autoreleasePoolPop(v9);
    if (v27 < 0.0)
    {
      if (os_log_type_enabled(self->_loggingHandle, OS_LOG_TYPE_ERROR))
      {
        [ATXGenericFileBasedCache readWithMaxValidAge:? error:?];
      }

      [(ATXGenericFileBasedCache *)self evict];
    }

    if ((v8 & 0x80000000) == 0)
    {
      close(v8);
    }

    v10 = *buf;
    if (*buf)
    {
      v11 = *buf;
LABEL_17:

      goto LABEL_25;
    }

    if (os_log_type_enabled(self->_loggingHandle, OS_LOG_TYPE_ERROR))
    {
      [ATXGenericFileBasedCache readWithMaxValidAge:? error:?];
      if (!a4)
      {
        goto LABEL_17;
      }
    }

    else if (!a4)
    {
      goto LABEL_17;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA5B8];
    v28 = *MEMORY[0x277CCA068];
    v29 = @"Unable to read data";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    *a4 = [v17 errorWithDomain:v18 code:5 userInfo:v19];

    goto LABEL_17;
  }

  v12 = *__error();
  v13 = __error();
  v14 = strerror(*v13);
  loggingHandle = self->_loggingHandle;
  if (v12 == 2)
  {
    if (os_log_type_enabled(loggingHandle, OS_LOG_TYPE_DEFAULT))
    {
      debugName = self->_debugName;
      *buf = 138412290;
      *&buf[4] = debugName;
      _os_log_impl(&dword_226368000, loggingHandle, OS_LOG_TYPE_DEFAULT, "Couldn't open %@ cache file because it is missing", buf, 0xCu);
      if (!a4)
      {
        goto LABEL_24;
      }

LABEL_20:
      v20 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA5B8];
      if (v14)
      {
        v32 = *MEMORY[0x277CCA068];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
        v33 = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        *a4 = [v20 errorWithDomain:v21 code:v12 userInfo:v23];
      }

      else
      {
        v30 = *MEMORY[0x277CCA068];
        v31 = @"Unknown error";
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        *a4 = [v20 errorWithDomain:v21 code:22 userInfo:v22];
      }

      goto LABEL_24;
    }
  }

  else if (os_log_type_enabled(loggingHandle, OS_LOG_TYPE_ERROR))
  {
    v26 = self->_debugName;
    *buf = 138412802;
    *&buf[4] = v26;
    v35 = 1024;
    v36 = v12;
    v37 = 2080;
    v38 = v14;
    _os_log_error_impl(&dword_226368000, loggingHandle, OS_LOG_TYPE_ERROR, "Couldn't open %@ cache file: [%i] %s", buf, 0x1Cu);
    if (!a4)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (a4)
  {
    goto LABEL_20;
  }

LABEL_24:
  v10 = 0;
LABEL_25:
  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)readSecureCodedObjectWithMaxValidAge:(double)a3 allowableClasses:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v17 = 0;
  v10 = [(ATXGenericFileBasedCache *)self readWithMaxValidAge:&v17 error:a3];
  v11 = v17;
  if (v10)
  {
    v16 = v11;
    v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v10 error:&v16];
    v13 = v16;

    if (!v12)
    {
      if (os_log_type_enabled(self->_loggingHandle, OS_LOG_TYPE_ERROR))
      {
        [ATXGenericFileBasedCache readSecureCodedObjectWithMaxValidAge:? allowableClasses:? error:?];
      }

      v12 = 0;
    }

    v11 = v13;
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v9);
  if (a5)
  {
    v14 = v11;
    *a5 = v11;
  }

  return v12;
}

- (void)storeData:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v1, v2, "Couldn't write %@ cache file", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)storeSecureCodedObject:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4(&dword_226368000, v1, v2, "Couldn't archive secure coded data for %@ cache file: %@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)readWithMaxValidAge:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v1, v2, "Detected %@ cache file with last modified date in the future -- will attempt deletion", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)readWithMaxValidAge:(uint64_t)a1 error:.cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_0_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_2(&dword_226368000, v1, v2, "Couldn't read %@ cache file", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)readSecureCodedObjectWithMaxValidAge:(uint64_t)a1 allowableClasses:error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_3(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4(&dword_226368000, v1, v2, "Couldn't unarchive secure coded data for %@ cache file: %@");
  v3 = *MEMORY[0x277D85DE8];
}

@end