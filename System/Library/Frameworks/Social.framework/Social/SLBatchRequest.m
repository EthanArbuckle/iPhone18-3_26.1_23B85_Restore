@interface SLBatchRequest
- (SLBatchRequest)initWithServiceType:(id)a3 URL:(id)a4 parameters:(id)a5 requestMethod:(int64_t)a6;
- (id)preparedURLRequest;
- (void)addRequest:(id)a3;
@end

@implementation SLBatchRequest

- (SLBatchRequest)initWithServiceType:(id)a3 URL:(id)a4 parameters:(id)a5 requestMethod:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"com.apple.social.facebook"])
  {
    v18.receiver = self;
    v18.super_class = SLBatchRequest;
    v13 = [(SLRequest *)&v18 initWithServiceType:v10 URL:v11 parameters:v12 requestMethod:a6];
    if (v13)
    {
      v14 = objc_opt_new();
      requests = v13->_requests;
      v13->_requests = v14;
    }

    self = v13;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)addRequest:(id)a3
{
  v5 = a3;
  v4 = [(SLRequest *)self multiPartBoundary];
  [v5 setMultiPartBoundary:v4];

  [(NSMutableArray *)self->_requests addObject:v5];
}

- (id)preparedURLRequest
{
  v36 = *MEMORY[0x1E69E9840];
  v23 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_requests;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v31;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v8 = [v7 dictionaryRepresentationForJSONSerialization];
        [v23 addObject:v8];

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = [v7 multiParts];
        v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v27;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v27 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v26 + 1) + 8 * j);
              v15 = [v14 uniqueIdentifier];
              [v14 setName:v15];

              [(SLRequest *)self addMultiPart:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v11);
        }
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v4);
  }

  v25 = 0;
  v16 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v23 options:0 error:&v25];
  if (v25)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Failed to serialize batch request data into JSON"];
  }

  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v16 encoding:4];
    [(SLRequest *)self setParameterValue:v17 forKey:@"batch"];
    v20 = v17;
    _SLLog(v21, 6, @"Batch: %@");
  }

  v24.receiver = self;
  v24.super_class = SLBatchRequest;
  v18 = [(SLRequest *)&v24 preparedURLRequest];

  return v18;
}

@end