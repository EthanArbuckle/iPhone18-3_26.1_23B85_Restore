@interface NWURLSessionStreamTask
+ (BOOL)isSubclassOfClass:(Class)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (id)error;
- (id)initWithLoader:(int)a3 identifier:(void *)a4 session:;
- (id)response;
- (void)captureStreams;
- (void)checkForCompletion;
- (void)closeRead;
- (void)closeWrite;
- (void)loaderBetterPathAvailable;
- (void)loaderConnectedWithHTTPConnectionMetadata:(id)a3 CNAMEChain:(id)a4 unlistedTracker:(id)a5;
- (void)readDataOfMinLength:(unint64_t)a3 maxLength:(unint64_t)a4 timeout:(double)a5 completionHandler:(id)a6;
- (void)runCompletionHandler:(uint64_t)a1;
- (void)startNextLoad;
- (void)startSecureConnection;
- (void)writeData:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
@end

@implementation NWURLSessionStreamTask

- (id)initWithLoader:(int)a3 identifier:(void *)a4 session:
{
  v8 = a2;
  if (a1)
  {
    v9 = [(NWURLSessionTask *)a1 initWithRequest:a3 identifier:a4 session:?];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 33, a2);
      *(v10 + 493) = [v8 allowsWriteAfterBecomingStream] ^ 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)loaderConnectedWithHTTPConnectionMetadata:(id)a3 CNAMEChain:(id)a4 unlistedTracker:(id)a5
{
  v14 = a3;
  v8 = a4;
  v10 = a5;
  if (self)
  {
    startTimeoutTimer = self->super._startTimeoutTimer;
    if (startTimeoutTimer)
    {
      self->super._startTimeoutTimer = 0;
      nw_queue_cancel_source(startTimeoutTimer, v9);
    }

    requestTimeoutTimer = self->super._requestTimeoutTimer;
    if (requestTimeoutTimer)
    {
      self->super._requestTimeoutTimer = 0;
      nw_queue_cancel_source(requestTimeoutTimer, v9);
    }

    resourceTimeoutTimer = self->super._resourceTimeoutTimer;
    if (resourceTimeoutTimer)
    {
      self->super._resourceTimeoutTimer = 0;
      nw_queue_cancel_source(resourceTimeoutTimer, v9);
    }
  }
}

- (void)loaderBetterPathAvailable
{
  if (self)
  {
    v3 = 248;
    if (!self->super._internalDelegateWrapper)
    {
      v3 = 240;
    }

    v10 = *(&self->super.super.isa + v3);
    v5 = self;
    if (v10)
    {
      v6 = [(NWURLSessionDelegateWrapper *)v10 delegateFor_betterRouteDiscovered];
      if (v6)
      {
        v7 = v10[5];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __66__NWURLSessionDelegateWrapper_betterRouteDiscoveredForStreamTask___block_invoke;
        v11[3] = &unk_1E6A3B4E0;
        v12 = v6;
        v13 = v7;
        v14 = v5;
        v8 = v10[7];
        v9 = v7;
        [(NWURLSessionDelegateQueue *)v8 runDelegateBlock:v11];
      }
    }
  }

  else
  {
    v10 = 0;
  }
}

- (void)startSecureConnection
{
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__NWURLSessionStreamTask_startSecureConnection__block_invoke;
  block[3] = &unk_1E6A3D868;
  block[4] = self;
  dispatch_async(queue, block);
}

void __47__NWURLSessionStreamTask_startSecureConnection__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[33];
  }

  v8 = v1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v8;
    if (v8)
    {
      *(v8 + 10) = 1;
      if (*(v8 + 8) == 1 && (*(v8 + 11) & 1) == 0)
      {
        *(v8 + 11) = 1;
        *(v8 + 8) = 0;
        v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v4 = v8[7];
        v8[7] = v3;

        v5 = nw_protocol_boringssl_copy_definition();
        options = nw_protocol_create_options(v5);

        v7 = options;
        [(NWURLLoaderTCP *)v8 configureTLS:v7];

        nw_connection_append_and_start_application_protocol(v8[8], v7);
        v2 = v8;
      }
    }
  }

  else
  {
    v2 = v8;
    if (v8)
    {
      _os_crash();
      __break(1u);
      return;
    }
  }
}

- (void)closeRead
{
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__NWURLSessionStreamTask_closeRead__block_invoke;
  block[3] = &unk_1E6A3D868;
  block[4] = self;
  dispatch_async(queue, block);
}

void __35__NWURLSessionStreamTask_closeRead__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_12;
  }

  if (*(v2 + 296) == 2 || (*(v2 + 492) & 1) != 0)
  {
    return;
  }

  *(v2 + 492) = 1;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = 248;
    if (!*(v3 + 248))
    {
      v4 = 240;
    }

    v5 = *(v3 + v4);
    v6 = *(a1 + 32);
  }

  else
  {
LABEL_12:
    v6 = 0;
    v5 = 0;
  }

  [(NWURLSessionDelegateWrapper *)v5 readClosedForStreamTask:v6];

  v7 = *(a1 + 32);

  [(NWURLSessionStreamTask *)v7 checkForCompletion];
}

- (void)checkForCompletion
{
  if (!a1)
  {
    return;
  }

  nw_context_assert_queue(*(a1 + 320));
  v2 = *(a1 + 296);
  if (v2 != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 492) == 1 && (*(a1 + 493) & 1) != 0 || *(a1 + 280))
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __44__NWURLSessionStreamTask_checkForCompletion__block_invoke;
    v30[3] = &unk_1E6A3D868;
    v30[4] = a1;
    [(NWURLSessionTask *)a1 complete:v30];
    v2 = *(a1 + 296);
LABEL_7:
    if (v2 == 2)
    {
      return;
    }
  }

  if (!*(a1 + 496) && *(a1 + 494) == 1)
  {
    v3 = 248;
    if (!*(a1 + 248))
    {
      v3 = 240;
    }

    if (*(a1 + v3))
    {
      v4 = [NWURLSessionInputStream alloc];
      if (*(a1 + 492))
      {
        p_isa = &v4->super.super.super.isa;
        v6 = [NWURLError alloc];
        v7 = *(a1 + 264);
        v8 = a1;
        if (v6)
        {
          v9 = [(NWURLError *)v6 initWithErrorCode:-1005];
          v6 = v9;
          if (v9)
          {
            [(NWURLError *)v9 fillErrorForLoader:v7 andTask:v8];
          }
        }

        v10 = [(NWURLSessionInputStream *)p_isa initWithStreamTask:v8 error:v6];
      }

      else
      {
        v10 = [(NWURLSessionInputStream *)&v4->super.super.super.isa initWithStreamTask:a1 error:0];
      }

      v11 = [NWURLSessionOutputStream alloc];
      if (*(a1 + 493))
      {
        v12 = &v11->super.super.super.isa;
        v13 = [NWURLError alloc];
        v14 = *(a1 + 264);
        v15 = a1;
        if (v13)
        {
          v16 = [(NWURLError *)v13 initWithErrorCode:-1005];
          v13 = v16;
          if (v16)
          {
            [(NWURLError *)v16 fillErrorForLoader:v14 andTask:v15];
          }
        }

        v17 = [(NWURLSessionOutputStream *)v12 initWithStreamTask:v15 error:v13];
      }

      else
      {
        v17 = [(NWURLSessionOutputStream *)&v11->super.super.super.isa initWithStreamTask:a1 error:0];
      }

      v18 = 248;
      if (!*(a1 + 248))
      {
        v18 = 240;
      }

      v19 = *(a1 + v18);
      v20 = a1;
      v21 = v10;
      v23 = v17;
      if (v19)
      {
        v24 = [(NWURLSessionDelegateWrapper *)v19 delegateFor_didBecomeInputOutputStream];
        if (v24)
        {
          v25 = *(v19 + 40);
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __76__NWURLSessionDelegateWrapper_streamTask_didBecomeInputStream_outputStream___block_invoke;
          v31[3] = &unk_1E6A3C010;
          v32 = v24;
          v33 = v25;
          v34 = v20;
          v35 = v21;
          v36 = v23;
          v26 = *(v19 + 56);
          v27 = v25;
          [(NWURLSessionDelegateQueue *)v26 runDelegateBlock:v31];
        }
      }

      v28 = *(a1 + 240);
      *(a1 + 240) = 0;

      v29 = *(a1 + 248);
      *(a1 + 248) = 0;
    }
  }
}

void __44__NWURLSessionStreamTask_checkForCompletion__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = 248;
    if (!*(v1 + 248))
    {
      v3 = 240;
    }

    v4 = *(v1 + v3);
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v5[35];
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  v7 = v4;
  [(NWURLSessionDelegateWrapper *)v4 task:v5 didCompleteWithError:v6 metrics:0];
}

- (void)closeWrite
{
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__NWURLSessionStreamTask_closeWrite__block_invoke;
  block[3] = &unk_1E6A3D868;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __36__NWURLSessionStreamTask_closeWrite__block_invoke(uint64_t result)
{
  v3 = *(result + 32);
  if (!v3)
  {
    goto LABEL_8;
  }

  if (*(v3 + 296) != 2 && (*(v3 + 493) & 1) == 0)
  {
    ++*(v3 + 496);
    v3 = *(result + 32);
    if (v3)
    {
      v4 = *(v3 + 264);
LABEL_6:
      v5[5] = v1;
      v5[6] = v2;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __36__NWURLSessionStreamTask_closeWrite__block_invoke_2;
      v5[3] = &unk_1E6A33F10;
      v5[4] = v3;
      return [v4 writeData:0 complete:1 completionHandler:v5];
    }

LABEL_8:
    v4 = 0;
    goto LABEL_6;
  }

  return result;
}

void __36__NWURLSessionStreamTask_closeWrite__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (--*(v2 + 496), (v3 = *(a1 + 32)) != 0) && (*(v3 + 493) = 1, (v4 = *(a1 + 32)) != 0))
  {
    v5 = 248;
    if (!*(v4 + 248))
    {
      v5 = 240;
    }

    v6 = *(v4 + v5);
    v8 = *(a1 + 32);
    if (v6)
    {
      v9 = [(NWURLSessionDelegateWrapper *)v6 delegateFor_writeClosed];
      if (v9)
      {
        v10 = v6[5];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __56__NWURLSessionDelegateWrapper_writeClosedForStreamTask___block_invoke;
        v14[3] = &unk_1E6A3B4E0;
        v15 = v9;
        v16 = v10;
        v17 = v8;
        v11 = v6[7];
        v12 = v10;
        [(NWURLSessionDelegateQueue *)v11 runDelegateBlock:v14];
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v13 = *(a1 + 32);

  [(NWURLSessionStreamTask *)v13 checkForCompletion];
}

- (void)captureStreams
{
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__NWURLSessionStreamTask_captureStreams__block_invoke;
  block[3] = &unk_1E6A3D868;
  block[4] = self;
  dispatch_async(queue, block);
}

void __40__NWURLSessionStreamTask_captureStreams__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 494) & 1) == 0)
    {
      *(v1 + 494) = 1;
      [(NWURLSessionStreamTask *)*(a1 + 32) checkForCompletion];
    }
  }

  else
  {
    [(NWURLSessionStreamTask *)0 checkForCompletion];
  }
}

- (void)writeData:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__NWURLSessionStreamTask_writeData_timeout_completionHandler___block_invoke;
  v14[3] = &unk_1E6A35F70;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v14[4] = self;
  v12 = v8;
  v13 = v10;
  dispatch_async(queue, v14);
}

void __62__NWURLSessionStreamTask_writeData_timeout_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 280))
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __62__NWURLSessionStreamTask_writeData_timeout_completionHandler___block_invoke_2;
      v20[3] = &unk_1E6A3D710;
      v12 = *(a1 + 48);
      v20[4] = *(a1 + 32);
      v21 = v12;
      [(NWURLSessionStreamTask *)v2 runCompletionHandler:v20];
      v11 = v21;
      goto LABEL_12;
    }

    if (*(v2 + 296) == 2)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __62__NWURLSessionStreamTask_writeData_timeout_completionHandler___block_invoke_3;
      v18[3] = &unk_1E6A3D710;
      v13 = *(a1 + 48);
      v18[4] = *(a1 + 32);
      v19 = v13;
      [(NWURLSessionStreamTask *)v2 runCompletionHandler:v18];
      v11 = v19;
      goto LABEL_12;
    }

    if (*(a1 + 56) <= 0.0)
    {
      v4 = 0;
LABEL_9:
      ++*(v2 + 496);
      v7 = *(a1 + 32);
      if (v7)
      {
        v7 = v7[33];
      }

      goto LABEL_11;
    }

    v3 = *(v2 + 232);
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v7 = 0;
    if (*(a1 + 56) <= 0.0)
    {
      goto LABEL_11;
    }
  }

  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
  v5 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__NWURLSessionStreamTask_writeData_timeout_completionHandler___block_invoke_4;
  block[3] = &unk_1E6A3D868;
  block[4] = *(a1 + 32);
  v6 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_source_set_event_handler(v4, v6);

  dispatch_activate(v4);
  v2 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_9;
  }

  v7 = 0;
LABEL_11:
  v8 = *(a1 + 40);
  v9 = v7;
  v10 = [v8 _createDispatchData];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__NWURLSessionStreamTask_writeData_timeout_completionHandler___block_invoke_5;
  v14[3] = &unk_1E6A33EE8;
  v14[4] = *(a1 + 32);
  v15 = v4;
  v16 = *(a1 + 48);
  v11 = v4;
  [v9 writeData:v10 complete:0 completionHandler:v14];

LABEL_12:
}

uint64_t __62__NWURLSessionStreamTask_writeData_timeout_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 280);
  }

  else
  {
    v4 = 0;
  }

  return (*(v2 + 16))(v2, v4);
}

- (void)runCompletionHandler:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = 248;
    if (!*(a1 + 248))
    {
      v5 = 240;
    }

    v6 = *(a1 + v5);
    v7 = v3;
    if (v6)
    {
      [(NWURLSessionDelegateQueue *)*(v6 + 56) runDelegateBlock:v3];
    }

    else
    {
      v3[2](v3);
    }

    v4 = v7;
  }
}

void __62__NWURLSessionStreamTask_writeData_timeout_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    v3 = [NWURLError alloc];
    v4 = v2[33];
    v5 = v2;
    if (v3 && (v6 = [(NWURLError *)v3 initWithErrorCode:-1005]) != 0)
    {
      v7 = v6;
      [(NWURLError *)v6 fillErrorForLoader:v4 andTask:v5];
    }

    else
    {
      v7 = 0;
    }

    (*(v1 + 16))(v1, v7);
  }

  else
  {
    v7 = 0;
    (*(v1 + 16))(v1, 0);
  }
}

void __62__NWURLSessionStreamTask_writeData_timeout_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 280))
    {
      goto LABEL_9;
    }

    v3 = v2;
    v4 = [NWURLError alloc];
    v5 = v3[33];
    v6 = v3;
    if (v4)
    {
      v7 = [(NWURLError *)v4 initWithErrorCode:-1001];
      v4 = v7;
      if (v7)
      {
        [(NWURLError *)v7 fillErrorForLoader:v5 andTask:v6];
      }
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      objc_storeStrong((v8 + 280), v4);
    }
  }

  else
  {
    v4 = 0;
  }

  v2 = *(a1 + 32);
LABEL_9:

  [(NWURLSessionStreamTask *)v2 checkForCompletion];
}

void __62__NWURLSessionStreamTask_writeData_timeout_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    --*(v4 + 496);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    dispatch_source_cancel(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 280);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  if (!v7)
  {
    [(NWURLSessionTask *)*(a1 + 32) setPendingError:v3];
    v6 = *(a1 + 32);
  }

LABEL_9:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__NWURLSessionStreamTask_writeData_timeout_completionHandler___block_invoke_6;
  v13[3] = &unk_1E6A3D710;
  v8 = *(a1 + 48);
  v13[4] = *(a1 + 32);
  v14 = v8;
  v9 = v13;
  v10 = v9;
  if (v6)
  {
    v11 = 248;
    if (!*(v6 + 248))
    {
      v11 = 240;
    }

    v12 = *(v6 + v11);
    if (v12)
    {
      [(NWURLSessionDelegateQueue *)*(v12 + 56) runDelegateBlock:v9];
    }

    else
    {
      __62__NWURLSessionStreamTask_writeData_timeout_completionHandler___block_invoke_6(v9);
    }
  }

  [(NWURLSessionStreamTask *)*(a1 + 32) checkForCompletion];
}

uint64_t __62__NWURLSessionStreamTask_writeData_timeout_completionHandler___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 280);
  }

  else
  {
    v4 = 0;
  }

  return (*(v2 + 16))(v2, v4);
}

- (void)readDataOfMinLength:(unint64_t)a3 maxLength:(unint64_t)a4 timeout:(double)a5 completionHandler:(id)a6
{
  v10 = a6;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke;
  block[3] = &unk_1E6A33EC0;
  block[4] = self;
  v14 = v10;
  v15 = a5;
  v16 = a3;
  v17 = a4;
  v12 = v10;
  dispatch_async(queue, block);
}

void __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v8 = 0;
    v12 = 0;
    v9 = 0;
    if (*(a1 + 48) <= 0.0)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (*(v2 + 296) != 2 && !*(v2 + 280))
  {
    if (*(v2 + 492) == 1)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke_3;
      v21[3] = &unk_1E6A3D710;
      v16 = *(a1 + 40);
      v21[4] = *(a1 + 32);
      v22 = v16;
      [(NWURLSessionStreamTask *)v2 runCompletionHandler:v21];
      v13 = v22;
      goto LABEL_19;
    }

    if (*(a1 + 48) <= 0.0)
    {
      v9 = 0;
      goto LABEL_16;
    }

    v8 = *(v2 + 232);
LABEL_11:
    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v8);
    v10 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke_4;
    block[3] = &unk_1E6A3D868;
    block[4] = *(a1 + 32);
    v11 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_source_set_event_handler(v9, v11);

    dispatch_activate(v9);
    v2 = *(a1 + 32);
    if (!v2)
    {
      v12 = 0;
LABEL_18:
      v14 = *(a1 + 56);
      v15 = *(a1 + 64);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke_5;
      v17[3] = &unk_1E6A33E98;
      v17[4] = v12;
      v18 = v9;
      v19 = *(a1 + 40);
      v13 = v9;
      [v2 readDataOfMinimumIncompleteLength:v14 maximumLength:v15 completionHandler:v17];

      goto LABEL_19;
    }

LABEL_16:
    ++*(v2 + 496);
    v12 = *(a1 + 32);
    if (v12)
    {
      v2 = *(v12 + 264);
    }

    else
    {
      v2 = 0;
    }

    goto LABEL_18;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke_2;
  v23[3] = &unk_1E6A3D710;
  v3 = *(a1 + 40);
  v23[4] = *(a1 + 32);
  v24 = v3;
  v4 = v23;
  v5 = v4;
  v6 = 248;
  if (!*(v2 + 248))
  {
    v6 = 240;
  }

  v7 = *(v2 + v6);
  if (v7)
  {
    [(NWURLSessionDelegateQueue *)*(v7 + 56) runDelegateBlock:v4];
  }

  else
  {
    __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke_2(v4);
  }

  v13 = v24;
LABEL_19:
}

uint64_t __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 280);
  }

  else
  {
    v4 = 0;
  }

  return (*(v2 + 16))(v2, 0, 1, v4);
}

void __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    v3 = [NWURLError alloc];
    v4 = v2[33];
    v5 = v2;
    if (v3 && (v6 = [(NWURLError *)v3 initWithErrorCode:-1005]) != 0)
    {
      v7 = v6;
      [(NWURLError *)v6 fillErrorForLoader:v4 andTask:v5];
    }

    else
    {
      v7 = 0;
    }

    (*(v1 + 16))(v1, 0, 1, v7);
  }

  else
  {
    v7 = 0;
    (*(v1 + 16))(v1, 0, 1, 0);
  }
}

void __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 280))
    {
      goto LABEL_9;
    }

    v3 = v2;
    v4 = [NWURLError alloc];
    v5 = v3[33];
    v6 = v3;
    if (v4)
    {
      v7 = [(NWURLError *)v4 initWithErrorCode:-1001];
      v4 = v7;
      if (v7)
      {
        [(NWURLError *)v7 fillErrorForLoader:v5 andTask:v6];
      }
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      objc_storeStrong((v8 + 280), v4);
    }
  }

  else
  {
    v4 = 0;
  }

  v2 = *(a1 + 32);
LABEL_9:

  [(NWURLSessionStreamTask *)v2 checkForCompletion];
}

void __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke_5(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v9)
  {
    --*(v9 + 496);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    dispatch_source_cancel(v10);
  }

  v11 = *(a1 + 32);
  if (!v11)
  {
    v12 = 0;
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (*(v11 + 492) == 1)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke_6;
    v28[3] = &unk_1E6A3D710;
    v19 = &v29;
    v21 = *(a1 + 48);
    v28[4] = *(a1 + 32);
    v29 = v21;
    [(NWURLSessionStreamTask *)v11 runCompletionHandler:v28];
    goto LABEL_20;
  }

  v12 = *(v11 + 280);
  if (v8)
  {
LABEL_8:
    if (!v12)
    {
      [(NWURLSessionTask *)*(a1 + 32) setPendingError:v8];
      v11 = *(a1 + 32);
    }
  }

LABEL_10:
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke_7;
  v23[3] = &unk_1E6A39CC0;
  v26 = *(a1 + 48);
  v13 = v7;
  v27 = a3;
  v14 = *(a1 + 32);
  v24 = v13;
  v25 = v14;
  v15 = v23;
  v16 = v15;
  if (v11)
  {
    v17 = 248;
    if (!*(v11 + 248))
    {
      v17 = 240;
    }

    v18 = *(v11 + v17);
    if (v18)
    {
      [(NWURLSessionDelegateQueue *)*(v18 + 56) runDelegateBlock:v15];
    }

    else
    {
      __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke_7(v15);
    }
  }

  v19 = &v26;

  v20 = *(a1 + 32);
  if (!a3)
  {
    goto LABEL_19;
  }

  if (!v20)
  {
    goto LABEL_23;
  }

  if ((*(v20 + 492) & 1) == 0)
  {
    *(v20 + 492) = 1;
    v20 = *(a1 + 32);
LABEL_23:
    v22 = [(NWURLSessionTask *)v20 delegateWrapper];
    [(NWURLSessionDelegateWrapper *)v22 readClosedForStreamTask:?];

    v20 = *(a1 + 32);
  }

LABEL_19:
  [(NWURLSessionStreamTask *)v20 checkForCompletion];

LABEL_20:
}

void __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    v3 = [NWURLError alloc];
    v4 = v2[33];
    v5 = v2;
    if (v3 && (v6 = [(NWURLError *)v3 initWithErrorCode:-1005]) != 0)
    {
      v7 = v6;
      [(NWURLError *)v6 fillErrorForLoader:v4 andTask:v5];
    }

    else
    {
      v7 = 0;
    }

    (*(v1 + 16))(v1, 0, 1, v7);
  }

  else
  {
    v7 = 0;
    (*(v1 + 16))(v1, 0, 1, 0);
  }
}

uint64_t __82__NWURLSessionStreamTask_readDataOfMinLength_maxLength_timeout_completionHandler___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(v5 + 280);
  }

  else
  {
    v6 = 0;
  }

  return (*(v2 + 16))(v2, v4, v3, v6);
}

- (void)startNextLoad
{
  if (self)
  {
    nw_context_assert_queue(self->super._sessionContext);
    loader = self->super._loader;
  }

  else
  {
    nw_context_assert_queue(0);
    loader = 0;
  }

  [(NWURLLoader *)loader start:&__block_literal_global_600];
}

- (id)error
{
  if (self)
  {
    self = self->super._pendingError;
  }

  return self;
}

- (id)response
{
  if (self)
  {
    self = self->_storedResponse;
  }

  return self;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = NWURLSessionStreamTask;
  if ([(NWURLSessionTask *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isEqual:objc_opt_class()];
  }
}

+ (BOOL)isSubclassOfClass:(Class)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___NWURLSessionStreamTask;
  if (objc_msgSendSuper2(&v5, sel_isSubclassOfClass_))
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isEqual:objc_opt_class()];
  }
}

@end