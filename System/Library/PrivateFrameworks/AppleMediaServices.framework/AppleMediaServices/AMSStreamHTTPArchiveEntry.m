@interface AMSStreamHTTPArchiveEntry
+ (id)_createEntriesForTaskMetrics:(id)a3 requestData:(id)a4 responseData:(id)a5;
- (AMSStreamHTTPArchiveEntry)initWithCoder:(id)a3;
- (AMSStreamHTTPArchiveEntry)initWithEntries:(id)a3;
- (AMSStreamHTTPArchiveEntry)initWithHTTPArchiveTaskInfo:(id)a3;
- (AMSStreamHTTPArchiveEntry)initWithMetrics:(id)a3 requestData:(id)a4 responseData:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSStreamHTTPArchiveEntry

- (AMSStreamHTTPArchiveEntry)initWithHTTPArchiveTaskInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 taskMetrics];
  v6 = [v4 HTTPBody];
  v7 = [v4 responseData];

  v8 = [(AMSStreamHTTPArchiveEntry *)self initWithMetrics:v5 requestData:v6 responseData:v7];
  return v8;
}

- (AMSStreamHTTPArchiveEntry)initWithMetrics:(id)a3 requestData:(id)a4 responseData:(id)a5
{
  v8 = a3;
  v9 = [AMSStreamHTTPArchiveEntry _createEntriesForTaskMetrics:v8 requestData:a4 responseData:a5];
  v10 = [v8 transactionMetrics];

  v11 = [v10 firstObject];
  v12 = [v11 request];
  v13 = [v12 URL];
  v14 = [v13 absoluteString];
  urlString = self->_urlString;
  self->_urlString = v14;

  v16 = [(AMSStreamHTTPArchiveEntry *)self initWithEntries:v9];
  return v16;
}

- (AMSStreamHTTPArchiveEntry)initWithEntries:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = AMSStreamHTTPArchiveEntry;
  v5 = [(AMSStreamHTTPArchiveEntry *)&v25 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          if ([MEMORY[0x1E696ACB0] isValidJSONObject:v12])
          {
            v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v12 options:0 error:0];
            if (v14)
            {
              v15 = v14;
              v16 = [v14 ams_compressedData];
              if (v16)
              {
                [v6 addObject:v16];
              }
            }
          }

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }

    v17 = [v6 copy];
    entries = v5->_entries;
    v5->_entries = v17;

    v4 = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSStreamHTTPArchiveEntry *)self urlString];
  [v4 encodeObject:v5 forKey:@"kCodingKeyUrlString"];

  v6 = [(AMSStreamHTTPArchiveEntry *)self entries];
  [v4 encodeObject:v6 forKey:@"kCodingKeyEntries"];
}

- (AMSStreamHTTPArchiveEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AMSStreamHTTPArchiveEntry;
  v5 = [(AMSStreamHTTPArchiveEntry *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyUrlString"];
    urlString = v5->_urlString;
    v5->_urlString = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyEntries"];
    entries = v5->_entries;
    v5->_entries = v8;
  }

  return v5;
}

+ (id)_createEntriesForTaskMetrics:(id)a3 requestData:(id)a4 responseData:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v33 = a4;
  v32 = a5;
  v31 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v7 transactionMetrics];
  v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v15 = [AMSHTTPArchive ams_generateCommentsStringForMetrics:v12];
        [v14 setObject:v15 forKeyedSubscript:@"comment"];

        v16 = [AMSHTTPArchive ams_generateRequestDictionaryForMetrics:v12 requestData:v33];
        [v14 setObject:v16 forKeyedSubscript:@"request"];

        v17 = [AMSHTTPArchive ams_generateResponseDictionaryForMetrics:v12 responseData:v32];
        [v14 setObject:v17 forKeyedSubscript:@"response"];

        v18 = MEMORY[0x1E696AD98];
        v19 = [v12 responseEndDate];
        v20 = [v12 requestStartDate];
        [v19 timeIntervalSinceDate:v20];
        v22 = [v18 numberWithDouble:v21 * 1000.0];
        [v14 setObject:v22 forKeyedSubscript:@"time"];

        v23 = [MEMORY[0x1E695DFE8] systemTimeZone];
        v24 = [AMSHTTPArchive ams_dateFormatterForTimeZone:v23];
        v25 = [v12 fetchStartDate];
        v26 = [v24 stringFromDate:v25];
        [v14 ams_setNullableObject:v26 forKey:@"startedDateTime"];

        v27 = [v14 copy];
        [v31 addObject:v27];

        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v9);
  }

  v28 = [v31 copy];

  return v28;
}

@end