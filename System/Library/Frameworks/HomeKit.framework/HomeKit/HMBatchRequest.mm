@interface HMBatchRequest
+ (BOOL)validateRequestTypes:(id)types requestClass:(Class)class;
+ (id)batchRequestWithExecuteRequests:(id)requests;
+ (id)batchRequestWithReadRequests:(id)requests;
+ (id)batchRequestWithWriteRequests:(id)requests;
- (HMBatchRequest)initWithRequests:(id)requests requestClass:(Class)class;
- (void)setClientContext:(id)context;
- (void)setReportContext:(id)context;
@end

@implementation HMBatchRequest

- (void)setReportContext:(id)context
{
  v4 = [context copy];
  reportContext = self->_reportContext;
  self->_reportContext = v4;

  MEMORY[0x1EEE66BB8](v4, reportContext);
}

- (void)setClientContext:(id)context
{
  v4 = [context copy];
  clientContext = self->_clientContext;
  self->_clientContext = v4;

  MEMORY[0x1EEE66BB8](v4, clientContext);
}

- (HMBatchRequest)initWithRequests:(id)requests requestClass:(Class)class
{
  requestsCopy = requests;
  if ([HMBatchRequest validateRequestTypes:requestsCopy requestClass:class])
  {
    v12.receiver = self;
    v12.super_class = HMBatchRequest;
    v7 = [(HMBatchRequest *)&v12 init];
    if (v7)
    {
      v8 = [requestsCopy copy];
      requests = v7->_requests;
      v7->_requests = v8;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)batchRequestWithExecuteRequests:(id)requests
{
  requestsCopy = requests;
  v4 = [[HMBatchRequest alloc] initWithRequests:requestsCopy requestClass:objc_opt_class()];

  return v4;
}

+ (id)batchRequestWithWriteRequests:(id)requests
{
  requestsCopy = requests;
  v4 = [[HMBatchRequest alloc] initWithRequests:requestsCopy requestClass:objc_opt_class()];

  return v4;
}

+ (id)batchRequestWithReadRequests:(id)requests
{
  requestsCopy = requests;
  v4 = [[HMBatchRequest alloc] initWithRequests:requestsCopy requestClass:objc_opt_class()];

  return v4;
}

+ (BOOL)validateRequestTypes:(id)types requestClass:(Class)class
{
  v19 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  if ([typesCopy count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = typesCopy;
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