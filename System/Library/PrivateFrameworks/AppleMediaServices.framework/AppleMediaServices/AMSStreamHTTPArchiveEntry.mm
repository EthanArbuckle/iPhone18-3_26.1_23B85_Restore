@interface AMSStreamHTTPArchiveEntry
+ (id)_createEntriesForTaskMetrics:(id)metrics requestData:(id)data responseData:(id)responseData;
- (AMSStreamHTTPArchiveEntry)initWithCoder:(id)coder;
- (AMSStreamHTTPArchiveEntry)initWithEntries:(id)entries;
- (AMSStreamHTTPArchiveEntry)initWithHTTPArchiveTaskInfo:(id)info;
- (AMSStreamHTTPArchiveEntry)initWithMetrics:(id)metrics requestData:(id)data responseData:(id)responseData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSStreamHTTPArchiveEntry

- (AMSStreamHTTPArchiveEntry)initWithHTTPArchiveTaskInfo:(id)info
{
  infoCopy = info;
  taskMetrics = [infoCopy taskMetrics];
  hTTPBody = [infoCopy HTTPBody];
  responseData = [infoCopy responseData];

  v8 = [(AMSStreamHTTPArchiveEntry *)self initWithMetrics:taskMetrics requestData:hTTPBody responseData:responseData];
  return v8;
}

- (AMSStreamHTTPArchiveEntry)initWithMetrics:(id)metrics requestData:(id)data responseData:(id)responseData
{
  metricsCopy = metrics;
  v9 = [AMSStreamHTTPArchiveEntry _createEntriesForTaskMetrics:metricsCopy requestData:data responseData:responseData];
  transactionMetrics = [metricsCopy transactionMetrics];

  firstObject = [transactionMetrics firstObject];
  request = [firstObject request];
  v13 = [request URL];
  absoluteString = [v13 absoluteString];
  urlString = self->_urlString;
  self->_urlString = absoluteString;

  v16 = [(AMSStreamHTTPArchiveEntry *)self initWithEntries:v9];
  return v16;
}

- (AMSStreamHTTPArchiveEntry)initWithEntries:(id)entries
{
  v27 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
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
    v20 = entriesCopy;
    v7 = entriesCopy;
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
              ams_compressedData = [v14 ams_compressedData];
              if (ams_compressedData)
              {
                [v6 addObject:ams_compressedData];
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

    entriesCopy = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  urlString = [(AMSStreamHTTPArchiveEntry *)self urlString];
  [coderCopy encodeObject:urlString forKey:@"kCodingKeyUrlString"];

  entries = [(AMSStreamHTTPArchiveEntry *)self entries];
  [coderCopy encodeObject:entries forKey:@"kCodingKeyEntries"];
}

- (AMSStreamHTTPArchiveEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AMSStreamHTTPArchiveEntry;
  v5 = [(AMSStreamHTTPArchiveEntry *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyUrlString"];
    urlString = v5->_urlString;
    v5->_urlString = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyEntries"];
    entries = v5->_entries;
    v5->_entries = v8;
  }

  return v5;
}

+ (id)_createEntriesForTaskMetrics:(id)metrics requestData:(id)data responseData:(id)responseData
{
  v39 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  dataCopy = data;
  responseDataCopy = responseData;
  v31 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [metricsCopy transactionMetrics];
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

        v16 = [AMSHTTPArchive ams_generateRequestDictionaryForMetrics:v12 requestData:dataCopy];
        [v14 setObject:v16 forKeyedSubscript:@"request"];

        v17 = [AMSHTTPArchive ams_generateResponseDictionaryForMetrics:v12 responseData:responseDataCopy];
        [v14 setObject:v17 forKeyedSubscript:@"response"];

        v18 = MEMORY[0x1E696AD98];
        responseEndDate = [v12 responseEndDate];
        requestStartDate = [v12 requestStartDate];
        [responseEndDate timeIntervalSinceDate:requestStartDate];
        v22 = [v18 numberWithDouble:v21 * 1000.0];
        [v14 setObject:v22 forKeyedSubscript:@"time"];

        systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
        v24 = [AMSHTTPArchive ams_dateFormatterForTimeZone:systemTimeZone];
        fetchStartDate = [v12 fetchStartDate];
        v26 = [v24 stringFromDate:fetchStartDate];
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