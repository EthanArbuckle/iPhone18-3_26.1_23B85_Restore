@interface NWURLSessionResponseConsumerDataCompletionHandler
- (NSURLResponse)response;
- (NWURLError)error;
- (id)initWithCompletionHandler:(id *)a1;
- (id)prepareNextRequest:(id)a3 forTask:(id)a4 error:(id *)a5;
- (int64_t)countOfBytesReceived;
- (void)task:(id)a3 deliverData:(id)a4 complete:(BOOL)a5 error:(id)a6 completionHandler:(id)a7;
- (void)task:(id)a3 deliverResponse:(id)a4 completionHandler:(id)a5;
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

- (id)prepareNextRequest:(id)a3 forTask:(id)a4 error:(id *)a5
{
  v8 = a3;
  v10 = a4;
  if (self && objc_getProperty(self, v9, 24, 1))
  {
    v11 = [NWURLError alloc];
    v12 = v10;
    if (v11)
    {
      v13 = [(NWURLError *)v11 initWithErrorCode:-1];
      v11 = v13;
      if (v13)
      {
        [(NWURLError *)v13 fillErrorForLoader:0 andTask:v12];
      }
    }

    v14 = *a5;
    *a5 = v11;

    v15 = 0;
  }

  else
  {
    v15 = v8;
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

- (void)task:(id)a3 deliverData:(id)a4 complete:(BOOL)a5 error:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (self)
  {
    if (self->_hasCompleted)
    {
      goto LABEL_11;
    }

    self->_hasCompleted = a5;
    if (!v13)
    {
      if (!a5)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    data = self->_data;
  }

  else
  {
    if (!v13)
    {
      if (!a5)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

    data = 0;
  }

  v17 = data;
  concat = dispatch_data_create_concat(v17, v13);
  if (self)
  {
    objc_storeStrong(&self->_data, concat);
  }

  [(NWURLSessionTask *)v12 setCountOfBytesReceived:?];
  if (a5)
  {
    if (self)
    {
LABEL_9:
      v19 = self->_completionHandler;
      objc_setProperty_nonatomic_copy(self, v20, 0, 16);
      v21 = self->_data;
      v23 = objc_getProperty(self, v22, 24, 1);
      objc_setProperty_atomic(self, v24, v14, 32);
LABEL_10:
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __103__NWURLSessionResponseConsumerDataCompletionHandler_task_deliverData_complete_error_completionHandler___block_invoke;
      v28[3] = &unk_1E6A356D0;
      v29 = v12;
      v30 = v23;
      v32 = v21;
      v33 = v19;
      v31 = v14;
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
  v15[2](v15);
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

- (void)task:(id)a3 deliverResponse:(id)a4 completionHandler:(id)a5
{
  v15 = a5;
  v8 = a4;
  data = a3;
  if (self)
  {
    objc_setProperty_atomic(self, v9, v8, 24);
    v11 = countOfBytesExpectedToReceive(v8);

    [(NWURLSessionTask *)data setCountOfBytesExpectedToReceive:v11];
    v12 = MEMORY[0x1E69E9668];
    v13 = MEMORY[0x1E69E9668];
    data = self->_data;
    self->_data = v12;
  }

  else
  {
    v14 = countOfBytesExpectedToReceive(v8);

    [(NWURLSessionTask *)data setCountOfBytesExpectedToReceive:v14];
  }

  v15[2](v15, 1);
}

- (id)initWithCompletionHandler:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = NWURLSessionResponseConsumerDataCompletionHandler;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = _Block_copy(v3);
      v5 = a1[2];
      a1[2] = v4;

      objc_storeStrong(a1 + 5, MEMORY[0x1E69E9668]);
    }
  }

  return a1;
}

@end