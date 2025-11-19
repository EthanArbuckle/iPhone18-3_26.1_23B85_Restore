@interface AMSHTTPArchive
+ (NSString)directory;
+ (double)_timeIntervalFromFilename:(id)a3;
+ (id)_createJSONObjectForEntries:(id)a3;
+ (id)_createJSONObjectForTaskMetrics:(id)a3 requestData:(id)a4 responseData:(id)a5;
+ (id)ams_dateFormatterForTimeZone:(id)a3;
+ (id)ams_generateCommentsStringForMetrics:(id)a3;
+ (id)ams_generateContentDictionaryForResponse:(id)a3 responseData:(id)a4;
+ (id)ams_generateRequestDictionaryForMetrics:(id)a3 requestData:(id)a4;
+ (id)ams_generateResponseDictionaryForMetrics:(id)a3 responseData:(id)a4;
+ (id)merge:(id)a3;
+ (id)merge:(id)a3 withEstimatedFileSizeLimit:(unint64_t)a4;
+ (void)removeHTTPArchiveFilesOlderThanDate:(id)a3;
- (AMSHTTPArchive)initWithCoder:(id)a3;
- (AMSHTTPArchive)initWithHTTPArchiveTaskInfo:(id)a3;
- (AMSHTTPArchive)initWithJSONObject:(id)a3;
- (AMSHTTPArchive)initWithMetrics:(id)a3 requestData:(id)a4 responseData:(id)a5;
- (BOOL)writeToDiskWithError:(id *)a3 compressed:(BOOL)a4 appendCombined:(BOOL)a5;
- (void)encodeWithCoder:(id)a3;
- (void)logHARData;
@end

@implementation AMSHTTPArchive

- (AMSHTTPArchive)initWithHTTPArchiveTaskInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 taskMetrics];
  v6 = [v4 HTTPBody];
  v7 = [v4 responseData];
  v8 = [AMSHTTPArchive _createJSONObjectForTaskMetrics:v5 requestData:v6 responseData:v7];

  v9 = [v4 taskMetrics];

  v10 = [v9 transactionMetrics];
  v11 = [v10 firstObject];
  v12 = [v11 request];
  v13 = [v12 URL];
  v14 = [v13 absoluteString];
  urlString = self->_urlString;
  self->_urlString = v14;

  v16 = [(AMSHTTPArchive *)self initWithJSONObject:v8];
  return v16;
}

- (AMSHTTPArchive)initWithMetrics:(id)a3 requestData:(id)a4 responseData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[AMSHTTPArchiveMetrics alloc] initWithURLSessionTaskMetrics:v10];

  v12 = [AMSHTTPArchive _createJSONObjectForTaskMetrics:v11 requestData:v9 responseData:v8];

  v13 = [(AMSHTTPArchive *)self initWithJSONObject:v12];
  return v13;
}

- (AMSHTTPArchive)initWithJSONObject:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AMSHTTPArchive;
  v5 = [(AMSHTTPArchive *)&v12 init];
  if (v5)
  {
    if ([MEMORY[0x1E696ACB0] isValidJSONObject:v4])
    {
      v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:0];
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 ams_compressedData];
    v8 = v7;
    v9 = v7 != 0;
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    objc_storeStrong(&v5->_backingJSONData, v10);
    v5->_compressed = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSHTTPArchive *)self urlString];
  [v4 encodeObject:v5 forKey:@"kCodingKeyUrlString"];

  v6 = [(AMSHTTPArchive *)self backingJSONData];
  [v4 encodeObject:v6 forKey:@"kCodingKeyBackingJSONData"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSHTTPArchive isCompressed](self, "isCompressed")}];
  [v4 encodeObject:v7 forKey:@"kCodingKeyCompressed"];
}

- (AMSHTTPArchive)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AMSHTTPArchive;
  v5 = [(AMSHTTPArchive *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyUrlString"];
    urlString = v5->_urlString;
    v5->_urlString = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyBackingJSONData"];
    backingJSONData = v5->_backingJSONData;
    v5->_backingJSONData = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyCompressed"];
    v5->_compressed = [v10 BOOLValue];
  }

  return v5;
}

+ (NSString)directory
{
  v8[5] = *MEMORY[0x1E69E9840];
  v2 = CPSharedResourcesDirectory();
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E696AEC0];
    v8[0] = v2;
    v8[1] = @"Library";
    v8[2] = @"Logs";
    v8[3] = @"com.apple.StoreServices";
    v8[4] = @"HTTPArchives";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:5];
    v6 = [v4 pathWithComponents:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)logHARData
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(AMSHTTPArchive *)self backingJSONData];
  if ([(AMSHTTPArchive *)self isCompressed])
  {
    v4 = [v3 ams_decompressedData];

    v3 = v4;
  }

  v5 = [v3 ams_compressWithAlgorithm:0];

  v6 = [v5 base64EncodedStringWithOptions:0];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while ([v6 length])
  {
    v8 = v6;
    if ([v8 length] < 0x2711)
    {
      v6 = 0;
      v9 = v8;
    }

    else
    {
      v9 = [v8 substringToIndex:10000];

      v6 = [v8 substringFromIndex:10000];
    }

    [v7 addObject:v9];
  }

  v10 = AMSGenerateLogCorrelationKey();
  if ([v7 count])
  {
    v11 = 0;
    do
    {
      v12 = [v7 objectAtIndexedSubscript:v11];
      v13 = +[AMSLogConfig sharedConfigOversize];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      ++v11;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v7 count];
        *buf = 138413058;
        v17 = v10;
        v18 = 1024;
        v19 = v11;
        v20 = 1024;
        v21 = v15;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "HARData: %@ %d/%d %@", buf, 0x22u);
      }
    }

    while ([v7 count] > v11);
  }
}

+ (id)merge:(id)a3
{
  v3 = [a1 merge:a3 withEstimatedFileSizeLimit:0x7FFFFFFFFFFFFFFFLL];
  v4 = [v3 firstObject];

  return v4;
}

+ (id)merge:(id)a3 withEstimatedFileSizeLimit:(unint64_t)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 1000 * a4;
    v11 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 isCompressed];
        v16 = [v13 backingJSONData];
        v17 = v16;
        if (v15)
        {
          v18 = [v16 ams_decompressedData];

          v17 = v18;
        }

        if (v17)
        {
          v34 = v14;
          v19 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v17 options:0 error:0];
          v20 = [v19 objectForKeyedSubscript:@"log"];
          v21 = [v20 objectForKeyedSubscript:@"entries"];

          if (v21)
          {
            [v6 addObjectsFromArray:v21];
          }

          v9 += [v17 length];
          if (v9 > v10)
          {
            v33 = [AMSHTTPArchive _createJSONObjectForEntries:v6];
            v22 = v11;
            v23 = v9;
            v24 = v8;
            v25 = v10;
            v26 = v6;
            v27 = [objc_alloc(objc_opt_class()) initWithJSONObject:v33];
            [v31 addObject:v27];

            v6 = v26;
            v10 = v25;
            v8 = v24;
            v9 = v23;
            v11 = v22;
            [v6 removeAllObjects];
          }

          v14 = v34;
        }

        objc_autoreleasePoolPop(v14);
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    v28 = [AMSHTTPArchive _createJSONObjectForEntries:v6];
    v29 = [objc_alloc(objc_opt_class()) initWithJSONObject:v28];
    [v31 addObject:v29];
  }

  return v31;
}

+ (void)removeHTTPArchiveFilesOlderThanDate:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 directory];
  v22 = v4;
  [v4 timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [a1 directory];
  v10 = [v8 enumeratorAtPath:v9];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        [a1 _timeIntervalFromFilename:v16];
        if (v18 != 1.79769313e308 && v18 <= v7)
        {
          v20 = [v5 stringByAppendingPathComponent:v16];
          v21 = [MEMORY[0x1E696AC08] defaultManager];
          [v21 removeItemAtPath:v20 error:0];
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }
}

- (BOOL)writeToDiskWithError:(id *)a3 compressed:(BOOL)a4 appendCombined:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v63 = *MEMORY[0x1E69E9840];
  v8 = [objc_opt_class() directory];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  if (v10)
  {
    v11 = 0;
LABEL_5:
    v15 = [(AMSHTTPArchive *)self isCompressed];
    v16 = &stru_1F071BA78;
    if (v5)
    {
      v16 = @"_combined_ams";
    }

    v17 = v16;
    v18 = @".har";
    v51 = v15 && v6;
    if (v15 && v6)
    {
      v18 = @".har.compressed";
    }

    v19 = MEMORY[0x1E696AEC0];
    v20 = v18;
    v21 = +[AMSProcessInfo currentProcess];
    v22 = [v21 bundleIdentifier];
    v23 = [MEMORY[0x1E695DF00] date];
    [v23 timeIntervalSinceReferenceDate];
    v53 = v17;
    v25 = [v19 stringWithFormat:@"%@_%f%@%@", v22, v24, v17, v20];

    v26 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
    v27 = [v26 URLByAppendingPathComponent:v25];

    v28 = +[AMSLogConfig sharedConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = AMSLogKey();
      AMSLogableURL(v27);
      v33 = v32 = v8;
      *buf = 138543874;
      v58 = v30;
      v59 = 2114;
      v60 = v31;
      v61 = 2114;
      v62 = v33;
      _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Writing HAR to fileURL: %{public}@", buf, 0x20u);

      v8 = v32;
    }

    v34 = [(AMSHTTPArchive *)self backingJSONData];
    v35 = v34;
    if (!v51)
    {
      v36 = [v34 ams_decompressedData];

      v35 = v36;
    }

    v55 = v11;
    v37 = [v35 writeToURL:v27 options:1 error:&v55];
    v14 = v55;

    if ((v37 & 1) == 0)
    {
      v38 = v8;
      v39 = +[AMSLogConfig sharedConfig];
      if (!v39)
      {
        v39 = +[AMSLogConfig sharedConfig];
      }

      v40 = [v39 OSLogObject];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = objc_opt_class();
        v52 = v41;
        AMSLogKey();
        v43 = v42 = v25;
        *buf = 138543874;
        v58 = v41;
        v59 = 2114;
        v60 = v43;
        v61 = 2114;
        v62 = v14;
        _os_log_impl(&dword_192869000, v40, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to write a HAR object to disk. error = %{public}@", buf, 0x20u);

        v25 = v42;
      }

      v8 = v38;
    }

    if (a3)
    {
      v44 = v14;
      *a3 = v14;
    }

    goto LABEL_24;
  }

  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v56 = 0;
  v13 = [v12 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v56];
  v14 = v56;

  if (v13)
  {
    v11 = v14;
    goto LABEL_5;
  }

  v46 = +[AMSLogConfig sharedConfig];
  if (!v46)
  {
    v46 = +[AMSLogConfig sharedConfig];
  }

  v47 = [v46 OSLogObject];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    v48 = objc_opt_class();
    *buf = 138543618;
    v58 = v48;
    v59 = 2114;
    v60 = v14;
    v49 = v48;
    _os_log_impl(&dword_192869000, v47, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create the directory to write HAR files into. error = %{public}@", buf, 0x16u);
  }

  if (a3)
  {
    v50 = v14;
    v37 = 0;
    *a3 = v14;
  }

  else
  {
    v37 = 0;
  }

LABEL_24:

  return v37;
}

+ (id)ams_dateFormatterForTimeZone:(id)a3
{
  v3 = a3;
  if (_MergedGlobals_116 != -1)
  {
    dispatch_once(&_MergedGlobals_116, &__block_literal_global_69);
  }

  v4 = qword_1ED6E2A58;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__AMSHTTPArchive_ams_dateFormatterForTimeZone___block_invoke_2;
  v9[3] = &unk_1E73B8688;
  v10 = v3;
  v5 = v3;
  v6 = v4;
  v7 = [v6 objectForKey:v5 withCreationBlock:v9];

  return v7;
}

uint64_t __47__AMSHTTPArchive_ams_dateFormatterForTimeZone___block_invoke()
{
  qword_1ED6E2A58 = [[AMSLRUCache alloc] initWithMaxSize:2];

  return MEMORY[0x1EEE66BB8]();
}

id __47__AMSHTTPArchive_ams_dateFormatterForTimeZone___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"uuuu-MM-dd'T'HH:mm:ss.sXXX"];
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setTimeZone:*(a1 + 32)];

  return v2;
}

+ (id)ams_generateCommentsStringForMetrics:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "apsRelayAttempted")}];
  [v5 setObject:v6 forKeyedSubscript:@"APS-Attempted"];

  v7 = MEMORY[0x1E696AD98];
  v8 = [v4 apsRelaySucceeded];

  v9 = [v7 numberWithBool:v8];
  [v5 setObject:v9 forKeyedSubscript:@"APS-Succeeded"];

  v10 = +[AMSDevice localIPAddress];
  [v5 ams_setNullableObject:v10 forKey:@"clientIPAddress"];

  v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:1 error:0];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:4];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)ams_generateContentDictionaryForResponse:(id)a3 responseData:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = MEMORY[0x1E695DF90];
    v7 = a3;
    v8 = objc_alloc_init(v6);
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v7, "expectedContentLength")}];
    [v8 setObject:v9 forKeyedSubscript:@"bodySize"];

    v10 = [v7 MIMEType];

    [v8 ams_setNullableObject:v10 forKey:@"mimeType"];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
    if (+[AMSDefaults includeFullResponseInHARLogging](AMSDefaults, "includeFullResponseInHARLogging") || +[AMSDefaults QAMode])
    {
      v12 = -1;
    }

    else if (+[AMSDefaults logHARData])
    {
      v12 = -1;
    }

    else
    {
      v12 = 40000;
    }

    if ([v11 length] && objc_msgSend(v5, "length") > v12)
    {
      v13 = [v11 length];
      v14 = (v13 / [v5 length] * 40000.0);
      if ([v11 length] <= v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = [v11 substringToIndex:v14];
      }

      v11 = v15;
    }

    if ([v11 length])
    {
      [v8 setObject:v11 forKeyedSubscript:@"text"];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  return v8;
}

id __57__AMSHTTPArchive_ams_generateHeadersArrayForHTTPHeaders___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"name";
  v9[1] = @"value";
  v10[0] = a2;
  v10[1] = a3;
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = a2;
  v7 = [v4 dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (id)ams_generateRequestDictionaryForMetrics:(id)a3 requestData:(id)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 request];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
  [v8 setObject:v9 forKeyedSubscript:@"bodySize"];

  [v8 setObject:&unk_1F07795F8 forKeyedSubscript:@"headersSize"];
  [v8 setObject:@"HTTP/1.1" forKeyedSubscript:@"httpVersion"];
  v10 = [v7 allHTTPHeaderFields];
  v11 = [a1 ams_generateHeadersArrayForHTTPHeaders:v10];
  [v8 ams_setNullableObject:v11 forKey:@"headers"];

  v12 = [v7 HTTPMethod];
  [v8 ams_setNullableObject:v12 forKey:@"method"];

  v13 = [v7 URL];
  v14 = [v13 absoluteString];
  [v8 ams_setNullableObject:v14 forKey:@"url"];

  if (+[AMSDefaults includeFullRequestInHARLogging](AMSDefaults, "includeFullRequestInHARLogging") || +[AMSDefaults QAMode])
  {
    [v6 length];
  }

  else
  {
    v34 = +[AMSDefaults logHARData];
    v35 = [v6 length];
    if (!v34 && v35 >= 0x9C41)
    {

      v6 = 0;
    }
  }

  v15 = [v6 ams_decompressedData];
  v16 = v15;
  if (v15)
  {
    v17 = v15;

    v6 = v17;
  }

  v18 = [v7 URL];
  v19 = [v18 absoluteString];
  v20 = [v19 containsString:@"/WebObjects/MZFinance.woa/wa/authenticate"];

  if (v20)
  {
    v21 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:1 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 objectForKeyedSubscript:@"password"];

      if (v22)
      {
        [v21 setObject:@"******" forKeyedSubscript:@"password"];
        v23 = [MEMORY[0x1E696AE40] dataWithPropertyList:v21 format:100 options:0 error:0];

        v6 = v23;
      }
    }

LABEL_18:

    if (v6)
    {
LABEL_19:
      v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = &stru_1F071BA78;
      }

      v36 = @"text";
      v37 = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      [v8 setObject:v32 forKeyedSubscript:@"postData"];

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v21 = [v7 valueForHTTPHeaderField:@"Content-Type"];
  v24 = [v21 isEqualToString:@"application/x-apple-plist"];
  if (!v16 || !v24)
  {
    goto LABEL_18;
  }

  if (v6)
  {
    v25 = [v6 base64EncodedStringWithOptions:0];
    if ([(__CFString *)v25 hasPrefix:@"YnBsaX"])
    {
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = &stru_1F071BA78;
      }

      v38 = @"text";
      v39[0] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      [v8 setObject:v27 forKeyedSubscript:@"postData"];

      v28 = [v8 copy];
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_23:
  v28 = [v8 copy];
LABEL_24:

  return v28;
}

+ (id)ams_generateResponseDictionaryForMetrics:(id)a3 responseData:(id)a4
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 response];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
    goto LABEL_10;
  }

  v9 = v8;

  if (!v9)
  {
LABEL_10:
    v24 = MEMORY[0x1E695E0F8];
    goto LABEL_11;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = [v9 allHeaderFields];
  v26 = [v11 objectForKeyedSubscript:@"Content-Length"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v26, "integerValue")}];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &unk_1F07795F8;
  }

  [v10 setObject:v14 forKeyedSubscript:{@"bodySize", v26}];

  v15 = [a1 ams_generateContentDictionaryForResponse:v9 responseData:v7];
  [v10 setObject:v15 forKeyedSubscript:@"content"];

  v16 = [v9 allHeaderFields];
  v17 = [a1 ams_generateHeadersArrayForHTTPHeaders:v16];
  v18 = [v17 mutableCopy];

  v28[0] = @"name";
  v28[1] = @"value";
  v29[0] = @"X-Apple-Connection-Reused";
  v19 = [v6 resourceFetchType];
  v20 = @"false";
  if (v19 == 3)
  {
    v20 = @"true";
  }

  v29[1] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  [v18 addObject:v21];

  [v10 setObject:v18 forKeyedSubscript:@"headers"];
  [v10 setObject:&unk_1F07795F8 forKeyedSubscript:@"headersSize"];
  [v10 setObject:@"HTTP/1.1" forKeyedSubscript:@"httpVersion"];
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "statusCode")}];
  [v10 setObject:v22 forKeyedSubscript:@"status"];

  v23 = [MEMORY[0x1E695AC08] localizedStringForStatusCode:{objc_msgSend(v9, "statusCode")}];
  [v10 ams_setNullableObject:v23 forKey:@"statusText"];

  v24 = [v10 copy];
LABEL_11:

  return v24;
}

+ (id)_createJSONObjectForEntries:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[AMSMappedBundleInfo currentBundleInfo];
  v20[0] = @"name";
  v5 = [v4 clientName];
  v6 = v5;
  v7 = @"AppleMediaServices";
  if (v5)
  {
    v7 = v5;
  }

  v20[1] = @"version";
  v21[0] = v7;
  v8 = [v4 clientVersion];
  v9 = v8;
  v10 = @"1.0";
  if (v8)
  {
    v10 = v8;
  }

  v21[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v18 = @"log";
  v16[0] = @"creator";
  v16[1] = @"entries";
  v12 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v12 = v3;
  }

  v17[0] = v11;
  v17[1] = v12;
  v16[2] = @"version";
  v17[2] = @"1.2";
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  return v14;
}

+ (id)_createJSONObjectForTaskMetrics:(id)a3 requestData:(id)a4 responseData:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 transactionMetrics];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__AMSHTTPArchive__createJSONObjectForTaskMetrics_requestData_responseData___block_invoke;
  v16[3] = &unk_1E73B86D0;
  v18 = v9;
  v19 = a1;
  v17 = v8;
  v11 = v9;
  v12 = v8;
  v13 = [v10 ams_mapWithTransform:v16];

  v14 = [a1 _createJSONObjectForEntries:v13];

  return v14;
}

id __75__AMSHTTPArchive__createJSONObjectForTaskMetrics_requestData_responseData___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [*(a1 + 48) ams_generateCommentsStringForMetrics:v4];
  [v5 setObject:v6 forKeyedSubscript:@"comment"];

  v7 = [*(a1 + 48) ams_generateRequestDictionaryForMetrics:v4 requestData:*(a1 + 32)];
  [v5 setObject:v7 forKeyedSubscript:@"request"];

  v8 = [*(a1 + 48) ams_generateResponseDictionaryForMetrics:v4 responseData:*(a1 + 40)];
  [v5 setObject:v8 forKeyedSubscript:@"response"];

  v9 = MEMORY[0x1E696AD98];
  v10 = [v4 responseEndDate];
  v11 = [v4 requestStartDate];
  [v10 timeIntervalSinceDate:v11];
  v13 = [v9 numberWithDouble:v12 * 1000.0];
  [v5 setObject:v13 forKeyedSubscript:@"time"];

  v14 = *(a1 + 48);
  v15 = [MEMORY[0x1E695DFE8] systemTimeZone];
  v16 = [v14 ams_dateFormatterForTimeZone:v15];
  v17 = [v4 fetchStartDate];

  v18 = [v16 stringFromDate:v17];
  [v5 ams_setNullableObject:v18 forKey:@"startedDateTime"];

  v19 = [v5 copy];

  return v19;
}

+ (double)_timeIntervalFromFilename:(id)a3
{
  v3 = a3;
  if ([v3 containsString:@".har"])
  {
    v4 = [v3 stringByReplacingOccurrencesOfString:@"_streamwrite.har" withString:&stru_1F071BA78];

    v5 = [v4 stringByReplacingOccurrencesOfString:@".har.compressed" withString:&stru_1F071BA78];

    v3 = [v5 stringByReplacingOccurrencesOfString:@".har" withString:&stru_1F071BA78];

    v6 = [v3 componentsSeparatedByString:@"_"];
    if ([v6 count] == 2)
    {
      v7 = [v6 objectAtIndexedSubscript:1];
      v8 = [MEMORY[0x1E696AE88] scannerWithString:v7];
      v11 = 0.0;
      if ([v8 scanDouble:&v11])
      {
        v9 = v11;
      }

      else
      {
        v9 = 1.79769313e308;
      }
    }

    else
    {
      v9 = 1.79769313e308;
    }
  }

  else
  {
    v9 = 1.79769313e308;
  }

  return v9;
}

@end