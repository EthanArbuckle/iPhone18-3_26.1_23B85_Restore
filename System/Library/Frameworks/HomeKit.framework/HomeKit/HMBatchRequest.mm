@interface HMBatchRequest
+ (BOOL)validateRequestTypes:(id)a3 requestClass:(Class)a4;
+ (id)batchRequestWithExecuteRequests:(id)a3;
+ (id)batchRequestWithReadRequests:(id)a3;
+ (id)batchRequestWithWriteRequests:(id)a3;
- (HMBatchRequest)initWithRequests:(id)a3 requestClass:(Class)a4;
- (void)setClientContext:(id)a3;
- (void)setReportContext:(id)a3;
@end

@implementation HMBatchRequest

- (void)setReportContext:(id)a3
{
  v4 = [a3 copy];
  reportContext = self->_reportContext;
  self->_reportContext = v4;

  MEMORY[0x1EEE66BB8](v4, reportContext);
}

- (void)setClientContext:(id)a3
{
  v4 = [a3 copy];
  clientContext = self->_clientContext;
  self->_clientContext = v4;

  MEMORY[0x1EEE66BB8](v4, clientContext);
}

- (HMBatchRequest)initWithRequests:(id)a3 requestClass:(Class)a4
{
  v6 = a3;
  if ([HMBatchRequest validateRequestTypes:v6 requestClass:a4])
  {
    v12.receiver = self;
    v12.super_class = HMBatchRequest;
    v7 = [(HMBatchRequest *)&v12 init];
    if (v7)
    {
      v8 = [v6 copy];
      requests = v7->_requests;
      v7->_requests = v8;
    }

    self = v7;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)batchRequestWithExecuteRequests:(id)a3
{
  v3 = a3;
  v4 = [[HMBatchRequest alloc] initWithRequests:v3 requestClass:objc_opt_class()];

  return v4;
}

+ (id)batchRequestWithWriteRequests:(id)a3
{
  v3 = a3;
  v4 = [[HMBatchRequest alloc] initWithRequests:v3 requestClass:objc_opt_class()];

  return v4;
}

+ (id)batchRequestWithReadRequests:(id)a3
{
  v3 = a3;
  v4 = [[HMBatchRequest alloc] initWithRequests:v3 requestClass:objc_opt_class()];

  return v4;
}

+ (BOOL)validateRequestTypes:(id)a3 requestClass:(Class)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = 0;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end