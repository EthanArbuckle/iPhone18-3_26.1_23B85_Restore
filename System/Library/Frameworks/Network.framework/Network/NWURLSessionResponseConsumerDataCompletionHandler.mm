@interface NWURLSessionResponseConsumerDataCompletionHandler
- (NSURLResponse)response;
- (NWURLError)error;
- (id)initWithCompletionHandler:(id *)handler;
- (id)prepareNextRequest:(id)request forTask:(id)task error:(id *)error;
- (int64_t)countOfBytesReceived;
- (void)task:(id)task deliverData:(id)data complete:(BOOL)complete error:(id)error completionHandler:(id)handler;
- (void)task:(id)task deliverResponse:(id)response completionHandler:(id)handler;
@end

@implementation NWURLSessionResponseConsumerDataCompletionHandler

- (NWURLError)error
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
    v2 = vars8;
  }

  return self;
}

- (id)prepareNextRequest:(id)request forTask:(id)task error:(id *)error
{
  requestCopy = request;
  taskCopy = task;
  if (self && objc_getProperty(self, v9, 24, 1))
  {
    v11 = [NWURLError alloc];
    v12 = taskCopy;
    if (v11)
    {
      v13 = [(NWURLError *)v11 initWithErrorCode:-1];
      v11 = v13;
      if (v13)
      {
        [(NWURLError *)v13 fillErrorForLoader:0 andTask:v12];
      }
    }

    v14 = *error;
    *error = v11;

    v15 = 0;
  }

  else
  {
    v15 = requestCopy;
  }

  return v15;
}

- (int64_t)countOfBytesReceived
{
  if (!self)
  {
    return 0;
  }

  v3 = self->_data;
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  size = dispatch_data_get_size(self->_data);

  return size;
}

- (NSURLResponse)response
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
    v2 = vars8;
  }

  return self;
}

- (void)task:(id)task deliverData:(id)data complete:(BOOL)complete error:(id)error completionHandler:(id)handler
{
  taskCopy = task;
  dataCopy = data;
  errorCopy = error;
  handlerCopy = handler;
  if (self)
  {
    if (self->_hasCompleted)
    {
      goto LABEL_11;
    }

    self->_hasCompleted = complete;
    if (!dataCopy)
    {
      if (!complete)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    data = self->_data;
  }

  else
  {
    if (!dataCopy)
    {
      if (!complete)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

    data = 0;
  }

  dataCopy2 = data;
  concat = dispatch_data_create_concat(dataCopy2, dataCopy);
  if (self)
  {
    objc_storeStrong(&self->_data, concat);
  }

  [(NWURLSessionTask *)taskCopy setCountOfBytesReceived:?];
  if (complete)
  {
    if (self)
    {
LABEL_9:
      v19 = self->_completionHandler;
      objc_setProperty_nonatomic_copy(self, v20, 0, 16);
      v21 = self->_data;
      v23 = objc_getProperty(self, v22, 24, 1);
      objc_setProperty_atomic(self, v24, errorCopy, 32);
LABEL_10:
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __103__NWURLSessionResponseConsumerDataCompletionHandler_task_deliverData_complete_error_completionHandler___block_invoke;
      v28[3] = &unk_1E6A356D0;
      v29 = taskCopy;
      v30 = v23;
      v32 = v21;
      v33 = v19;
      v31 = errorCopy;
      v25 = v21;
      v26 = v19;
      v27 = v23;
      [(NWURLSessionTask *)v29 complete:v28];

      goto LABEL_11;
    }

LABEL_17:
    v23 = 0;
    v19 = 0;
    v21 = 0;
    goto LABEL_10;
  }

LABEL_11:
  handlerCopy[2](handlerCopy);
}

void __103__NWURLSessionResponseConsumerDataCompletionHandler_task_deliverData_complete_error_completionHandler___block_invoke(id *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = 31;
    if (!v2[31])
    {
      v3 = 30;
    }

    v4 = v2[v3];
  }

  else
  {
    v4 = 0;
  }

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __103__NWURLSessionResponseConsumerDataCompletionHandler_task_deliverData_complete_error_completionHandler___block_invoke_2;
  v27 = &unk_1E6A3B8E8;
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[8];
  *&v9 = a1[7];
  *(&v9 + 1) = v7;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v28 = v10;
  v29 = v9;
  v11 = a1[4];
  if (v11)
  {
    v12 = v11[53];
    v13 = v12;
    if (v12)
    {
      v14 = [v12[3] _callCompletionHandlerInline];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = a1[4];
  if (v15)
  {
    Property = objc_getProperty(a1[4], v8, 456, 1);
  }

  else
  {
    Property = 0;
  }

  v17 = Property;
  v18 = a1[4];
  if (!v18)
  {
    v19 = 0;
    goto LABEL_19;
  }

  v19 = [v18[33] takeCachedResponse];
  v20 = a1[4];
  if (!v20)
  {
LABEL_19:
    v22 = 0;
    v23 = 0;
    goto LABEL_14;
  }

  v21 = v20[53];
  v22 = v21;
  if (v21)
  {
    v23 = [v21[2] URLCache];
  }

  else
  {
    v23 = 0;
  }

LABEL_14:
  [(NWURLSessionDelegateWrapper *)v4 runCompletionHandler:v14 noAsync:v15 task:v17 metrics:v19 cachedResponse:v23 cache:?];
}

uint64_t __103__NWURLSessionResponseConsumerDataCompletionHandler_task_deliverData_complete_error_completionHandler___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return (*(v4 + 16))(v4, a1[6]);
  }

  else
  {
    return (*(v4 + 16))(v4, 0);
  }
}

- (void)task:(id)task deliverResponse:(id)response completionHandler:(id)handler
{
  handlerCopy = handler;
  responseCopy = response;
  data = task;
  if (self)
  {
    objc_setProperty_atomic(self, v9, responseCopy, 24);
    v11 = countOfBytesExpectedToReceive(responseCopy);

    [(NWURLSessionTask *)data setCountOfBytesExpectedToReceive:v11];
    v12 = MEMORY[0x1E69E9668];
    v13 = MEMORY[0x1E69E9668];
    data = self->_data;
    self->_data = v12;
  }

  else
  {
    v14 = countOfBytesExpectedToReceive(responseCopy);

    [(NWURLSessionTask *)data setCountOfBytesExpectedToReceive:v14];
  }

  handlerCopy[2](handlerCopy, 1);
}

- (id)initWithCompletionHandler:(id *)handler
{
  v3 = a2;
  if (handler)
  {
    v7.receiver = handler;
    v7.super_class = NWURLSessionResponseConsumerDataCompletionHandler;
    handler = objc_msgSendSuper2(&v7, sel_init);
    if (handler)
    {
      v4 = _Block_copy(v3);
      v5 = handler[2];
      handler[2] = v4;

      objc_storeStrong(handler + 5, MEMORY[0x1E69E9668]);
    }
  }

  return handler;
}

@end