@interface HMCharacteristicBatchRequest
+ (id)characteristicBatchRequestWithReadRequests:(id)requests;
+ (id)characteristicBatchRequestWithWriteRequests:(id)requests;
- (HMCharacteristicBatchRequest)initWithBatchRequest:(id)request;
- (id)requests;
- (void)setCompletionHandler:(id)handler;
- (void)setProgressHandler:(id)handler;
@end

@implementation HMCharacteristicBatchRequest

- (void)setProgressHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__HMCharacteristicBatchRequest_setProgressHandler___block_invoke;
  v7[3] = &unk_1E7547A68;
  v8 = handlerCopy;
  batchRequest = self->_batchRequest;
  v6 = handlerCopy;
  [(HMBatchRequest *)batchRequest setProgressHandler:v7];
}

void __51__HMCharacteristicBatchRequest_setProgressHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          if (v13)
          {
            [v5 addObject:{v13, v15}];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__HMCharacteristicBatchRequest_setCompletionHandler___block_invoke;
  v7[3] = &unk_1E75487B8;
  v8 = handlerCopy;
  batchRequest = self->_batchRequest;
  v6 = handlerCopy;
  [(HMBatchRequest *)batchRequest setCompletionHandler:v7];
}

uint64_t __53__HMCharacteristicBatchRequest_setCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)requests
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = self->_batchRequest;
  v3 = MEMORY[0x1E695DF70];
  requests = [(HMBatchRequest *)v2 requests];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(requests, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  requests2 = [(HMBatchRequest *)v2 requests];
  v7 = [requests2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(requests2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [requests2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (HMCharacteristicBatchRequest)initWithBatchRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = HMCharacteristicBatchRequest;
  v6 = [(HMCharacteristicBatchRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_batchRequest, request);
  }

  return v7;
}

+ (id)characteristicBatchRequestWithWriteRequests:(id)requests
{
  v3 = [HMBatchRequest batchRequestWithWriteRequests:requests];
  v4 = [[HMCharacteristicBatchRequest alloc] initWithBatchRequest:v3];

  return v4;
}

+ (id)characteristicBatchRequestWithReadRequests:(id)requests
{
  v3 = [HMBatchRequest batchRequestWithReadRequests:requests];
  v4 = [[HMCharacteristicBatchRequest alloc] initWithBatchRequest:v3];

  return v4;
}

@end