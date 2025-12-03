@interface DSGeneralLogFile
- (BOOL)enumerateLogLinesWithIDs:(id)ds usingBlock:(id)block;
- (BOOL)parseDetailsWithURL:(id)l;
- (BOOL)parseHeadersWithLine:(id)line;
- (DSGeneralLogFile)initWithURL:(id)l;
@end

@implementation DSGeneralLogFile

- (DSGeneralLogFile)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = DSGeneralLogFile;
  v6 = [(DSGeneralLogFile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    if (![(DSGeneralLogFile *)v7 parseDetailsWithURL:lCopy])
    {

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)parseDetailsWithURL:(id)l
{
  lCopy = l;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  path = [lCopy path];
  v6 = [DSTextFile textFileWithPath:path];

  if (v6)
  {
    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __40__DSGeneralLogFile_parseDetailsWithURL___block_invoke;
    v9[3] = &unk_18418;
    objc_copyWeak(&v10, &location);
    v9[4] = &v12;
    [v6 enumerateUsingBlock:v9];
    v7 = *(v13 + 24);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);
  return v7 & 1;
}

void __40__DSGeneralLogFile_parseDetailsWithURL___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a4 == 2)
    {
      v11 = [[DSLogLine alloc] initWithLine:v7];
      v12 = v11;
      if (v11)
      {
        v13 = [(DSLogLine *)v11 date];
        v14 = WeakRetained[5];
        WeakRetained[5] = v13;
      }

      else
      {
        v15 = DiagnosticLogHandleForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = WeakRetained[2];
          v17 = 138412290;
          v18 = v16;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Log appears to be empty: %@", &v17, 0xCu);
        }
      }
    }

    else if (a4 == 1)
    {
      v10 = objc_loadWeakRetained((a1 + 40));
      *(*(*(a1 + 32) + 8) + 24) = [v10 parseHeadersWithLine:v7];
    }

    else
    {
      [v8 end];
    }
  }
}

- (BOOL)parseHeadersWithLine:(id)line
{
  v4 = [line dataUsingEncoding:4];
  v30 = 0;
  v5 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:&v30];
  v6 = v30;
  if (v5)
  {
    v7 = [NSMutableSet setWithObjects:@"installed", @"model", @"os_build", @"serial", @"updated", @"version", 0];
    allKeys = [v5 allKeys];
    v9 = [NSSet setWithArray:allKeys];

    [v7 minusSet:v9];
    v10 = [v7 count];
    v11 = v10 == 0;
    if (v10)
    {
      v12 = DiagnosticLogHandleForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(DSGeneralLogFile *)self parseHeadersWithLine:v12];
      }
    }

    else
    {
      v13 = +[DSDateFormatter sharedFormatter];
      v14 = [v13 formatterWithType:2];
      v15 = [v5 objectForKeyedSubscript:@"installed"];
      v16 = [v14 dateFromString:v15];
      restoreDate = self->_restoreDate;
      self->_restoreDate = v16;

      v18 = [v5 objectForKeyedSubscript:@"model"];
      hardwareModel = self->_hardwareModel;
      self->_hardwareModel = v18;

      v20 = [v5 objectForKeyedSubscript:@"os_build"];
      currentOSVersion = self->_currentOSVersion;
      self->_currentOSVersion = v20;

      v22 = [v5 objectForKeyedSubscript:@"serial"];
      serialNumber = self->_serialNumber;
      self->_serialNumber = v22;

      v24 = +[DSDateFormatter sharedFormatter];
      v25 = [v24 formatterWithType:2];
      v26 = [v5 objectForKeyedSubscript:@"updated"];
      v27 = [v25 dateFromString:v26];
      updateDate = self->_updateDate;
      self->_updateDate = v27;

      v12 = [v5 objectForKeyedSubscript:@"version"];
      self->_logVersion = [v12 intValue];
    }
  }

  else
  {
    v7 = DiagnosticLogHandleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(DSGeneralLogFile *)self parseHeadersWithLine:v6, v7];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)enumerateLogLinesWithIDs:(id)ds usingBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [(DSGeneralLogFile *)self url];
  path = [v8 path];
  v10 = [DSTextFile textFileWithPath:path];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __56__DSGeneralLogFile_enumerateLogLinesWithIDs_usingBlock___block_invoke;
  v14[3] = &unk_18440;
  v11 = dsCopy;
  v15 = v11;
  v17 = &v18;
  v12 = blockCopy;
  v16 = v12;
  [v10 enumerateUsingBlock:v14];
  LOBYTE(v8) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v8;
}

void __56__DSGeneralLogFile_enumerateLogLinesWithIDs_usingBlock___block_invoke(void *a1, void *a2, void *a3, unint64_t a4)
{
  v14 = a2;
  v7 = a3;
  v8 = [v14 length];
  if (a4 >= 2 && v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [[DSLogLine alloc] initWithLine:v14];
    v11 = v10;
    if (v10)
    {
      v12 = a1[4];
      v13 = [(DSLogLine *)v10 type];
      LODWORD(v12) = [v12 containsObject:v13];

      if (v12)
      {
        *(*(a1[6] + 8) + 24) = (*(a1[5] + 16))();
      }
    }

    objc_autoreleasePoolPop(v9);
  }

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    [v7 end];
  }
}

- (void)parseHeadersWithLine:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 16);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "One or more required keys are missing in the header for %@", &v3, 0xCu);
}

- (void)parseHeadersWithLine:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 16);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Could not parse header for %@ error: %@", &v4, 0x16u);
}

@end