@interface NWURLSessionResponseConsumerDataDelegate
- (NSURLResponse)response;
- (NWURLError)error;
- (id)prepareNextRequest:(id)a3 forTask:(id)a4 error:(id *)a5;
- (int64_t)countOfBytesReceived;
- (void)task:(id)a3 deliverData:(id)a4 complete:(BOOL)a5 error:(id)a6 completionHandler:(id)a7;
- (void)task:(id)a3 deliverResponse:(id)a4 completionHandler:(id)a5;
@end

@implementation NWURLSessionResponseConsumerDataDelegate

- (id)prepareNextRequest:(id)a3 forTask:(id)a4 error:(id *)a5
{
  v8 = a3;
  v10 = a4;
  if (self && objc_getProperty(self, v9, 16, 1))
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
  if (self)
  {
    return *(self + 32);
  }

  return self;
}

- (NWURLError)error
{
  if (self)
  {
    self = objc_getProperty(self, a2, 24, 1);
    v2 = vars8;
  }

  return self;
}

- (NSURLResponse)response
{
  if (self)
  {
    self = objc_getProperty(self, a2, 16, 1);
    v2 = vars8;
  }

  return self;
}

- (void)task:(id)a3 deliverData:(id)a4 complete:(BOOL)a5 error:(id)a6 completionHandler:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (self)
  {
    if (self->_hasCompleted)
    {
      (*(v15 + 2))(v15);
      goto LABEL_10;
    }

    self->_hasCompleted = v9;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __94__NWURLSessionResponseConsumerDataDelegate_task_deliverData_complete_error_completionHandler___block_invoke;
  v22[3] = &unk_1E6A356A8;
  v23 = v13;
  v24 = self;
  v17 = v12;
  v25 = v17;
  v28 = v9;
  v18 = v14;
  v26 = v18;
  v27 = v16;
  v19 = _Block_copy(v22);
  v21 = v19;
  if (v9)
  {
    if (self)
    {
      objc_setProperty_atomic(self, v20, v18, 24);
    }

    [(NWURLSessionTask *)v17 complete:v21];
  }

  else
  {
    (*(v19 + 2))(v19);
  }

LABEL_10:
}

void __94__NWURLSessionResponseConsumerDataDelegate_task_deliverData_complete_error_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v3 && (*(v3 + 32) += dispatch_data_get_size(v2), (v4 = *(a1 + 40)) != 0))
    {
      v5 = *(v4 + 32);
    }

    else
    {
      v5 = 0;
    }

    [(NWURLSessionTask *)*(a1 + 48) setCountOfBytesReceived:v5];
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = 248;
      if (!*(v6 + 248))
      {
        v7 = 240;
      }

      v9 = *(v6 + v7);
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v49 = *(a1 + 72);
      if (v11)
      {
        Property = objc_getProperty(v11, v8, 456, 1);
      }

      else
      {
        Property = 0;
      }
    }

    else
    {
      v9 = 0;
      v11 = 0;
      Property = 0;
      v10 = *(a1 + 32);
      v49 = *(a1 + 72);
      v12 = *(a1 + 56);
    }

    v14 = Property;
    v15 = *(a1 + 48);
    if (v15)
    {
      v16 = [*(v15 + 264) takeCachedResponse];
      v17 = *(a1 + 48);
      if (v17)
      {
        v18 = *(v17 + 424);
        if (v18)
        {
          v48 = v18;
          v19 = [v18[2] URLCache];
          goto LABEL_14;
        }
      }
    }

    else
    {
      v16 = 0;
    }

    v48 = 0;
    v19 = 0;
LABEL_14:
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v55 = __94__NWURLSessionResponseConsumerDataDelegate_task_deliverData_complete_error_completionHandler___block_invoke_2;
    v56 = &unk_1E6A3CE48;
    v57 = *(a1 + 64);
    v52 = v11;
    v51 = v10;
    v20 = v12;
    v21 = v14;
    v22 = v16;
    v50 = v19;
    v53 = v54;
    if (!v9)
    {
LABEL_29:

      return;
    }

    v24 = [(NWURLSessionDelegateWrapper *)v9 delegateFor_didReceiveData_withCB];
    v26 = [(NWURLSessionDelegateWrapper *)v9 delegateFor_didReceiveData_withoutCB];
    v29 = [(NWURLSessionDelegateWrapper *)v9 delegateFor_willCacheResponse];
    v30 = v49 ^ 1;
    if (!v21)
    {
      v30 = 1;
    }

    if (v30)
    {
      v31 = 0;
      if (!v49)
      {
LABEL_19:
        v32 = 0;
        if (v24)
        {
          goto LABEL_27;
        }

LABEL_23:
        if (!v26 && !v31 && !v32)
        {
          v55(v53);
LABEL_28:

          goto LABEL_29;
        }

LABEL_27:
        v47 = v22;
        v33 = v9[5];
        v46 = v20;
        v34 = v9[6];
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __117__NWURLSessionDelegateWrapper_dataTask_didReceiveData_complete_error_metrics_cachedResponse_cache_completionHandler___block_invoke;
        v58[3] = &unk_1E6A3B710;
        v59 = v24;
        v60 = v33;
        v61 = v52;
        v62 = v51;
        v63 = v34;
        v73 = v53;
        v35 = v26;
        v74 = v49;
        v64 = v35;
        v65 = v9;
        v66 = v47;
        v67 = v50;
        v68 = v29;
        v69 = v31;
        v70 = v21;
        v71 = v32;
        v72 = v46;
        v36 = v9[7];
        v37 = v34;
        v38 = v33;
        [(NWURLSessionDelegateQueue *)v36 runDelegateBlock:v58];

        v20 = v46;
        v22 = v47;
        goto LABEL_28;
      }
    }

    else
    {
      v31 = [(NWURLSessionDelegateWrapper *)v9 delegateFor_didFinishCollectingMetrics];
      if (!v49)
      {
        goto LABEL_19;
      }
    }

    v32 = [(NWURLSessionDelegateWrapper *)v9 delegateFor_didCompleteWithError];
    if (v24)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (*(a1 + 72) == 1)
  {
    v40 = [(NWURLSessionTask *)*(a1 + 48) delegateWrapper];
    v41 = *(a1 + 48);
    v42 = *(a1 + 56);
    if (v41)
    {
      v43 = objc_getProperty(*(a1 + 48), v39, 456, 1);
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;
    [(NWURLSessionDelegateWrapper *)v40 task:v41 didCompleteWithError:v42 metrics:v44];
  }

  v45 = *(*(a1 + 64) + 16);

  v45();
}

- (void)task:(id)a3 deliverResponse:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  if (self)
  {
    objc_setProperty_atomic(self, v10, v9, 16);
  }

  v12 = countOfBytesExpectedToReceive(v9);
  [(NWURLSessionTask *)v8 setCountOfBytesExpectedToReceive:v12];
  if (v8)
  {
    v13 = 31;
    if (!v8[31])
    {
      v13 = 30;
    }

    v14 = v8[v13];
  }

  else
  {
    v14 = 0;
  }

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __83__NWURLSessionResponseConsumerDataDelegate_task_deliverResponse_completionHandler___block_invoke;
  v35 = &unk_1E6A35680;
  v36 = v11;
  v15 = v11;
  v16 = v8;
  v17 = v9;
  v19 = v33;
  if (v14)
  {
    v20 = [(NWURLSessionDelegateWrapper *)v14 delegateFor_didReceiveResponse];
    if (v20)
    {
      v31 = v14[5];
      v21 = v14[6];
      v22 = [NWURLSessionDelegateDeallocBomb alloc];
      v23 = *(v14 + 16);
      v24 = v20;
      v32 = v15;
      if (v22)
      {
        v37.receiver = v22;
        v37.super_class = NWURLSessionDelegateDeallocBomb;
        v25 = [(NWURLSessionResponseConsumerDataDelegate *)&v37 init];
        v22 = v25;
        if (v25)
        {
          objc_storeStrong(&v25->_currentResponse, v20);
          if (sel_dataTask_didReceiveResponse_completionHandler_)
          {
            v26 = sel_dataTask_didReceiveResponse_completionHandler_;
          }

          else
          {
            v26 = 0;
          }

          v22->__method = v26;
          v22->__strict = v23;
        }
      }

      v37.receiver = MEMORY[0x1E69E9820];
      v37.super_class = 3221225472;
      v38 = __77__NWURLSessionDelegateWrapper_dataTask_didReceiveResponse_completionHandler___block_invoke;
      v39 = &unk_1E6A3B580;
      v40 = v24;
      v41 = v31;
      v42 = v16;
      v43 = v17;
      v44 = v22;
      v45 = v21;
      v46 = v19;
      v27 = v14[7];
      v28 = v21;
      v29 = v22;
      v30 = v31;
      [(NWURLSessionDelegateQueue *)v27 runDelegateBlock:?];

      v15 = v32;
    }

    else
    {
      (v34)(v19, 1);
    }
  }
}

@end