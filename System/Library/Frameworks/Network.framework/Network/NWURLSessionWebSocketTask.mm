@interface NWURLSessionWebSocketTask
+ (BOOL)isSubclassOfClass:(Class)class;
+ (void)addWebSocketHeadersToRequest:(uint64_t)request;
- (BOOL)isKindOfClass:(Class)class;
- (id)error;
- (id)response;
- (void)_sendCloseCode:(int64_t)code reason:(id)reason;
- (void)cancelWithCloseCode:(int64_t)code reason:(id)reason;
- (void)completeTaskWithError:(id)error retryable:(BOOL)retryable;
- (void)processWork;
- (void)receiveMessage;
- (void)receiveMessageWithCompletionHandler:(id)handler;
- (void)sendMessage:(id)message completionHandler:(id)handler;
- (void)sendPingWithPongReceiveHandler:(id)handler;
- (void)startNextLoad;
@end

@implementation NWURLSessionWebSocketTask

- (void)completeTaskWithError:(id)error retryable:(BOOL)retryable
{
  errorCopy = error;
  if (!self)
  {
    nw_context_assert_queue(0);
LABEL_5:
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__NWURLSessionWebSocketTask_completeTaskWithError_retryable___block_invoke;
    v7[3] = &unk_1E6A3D760;
    v7[4] = self;
    v8 = errorCopy;
    [(NWURLSessionTask *)self complete:v7];

    goto LABEL_6;
  }

  nw_context_assert_queue(self->super._sessionContext);
  if (self->super._internalState != 2)
  {
    if (!self->super._pendingError)
    {
      objc_storeStrong(&self->super._pendingError, error);
    }

    goto LABEL_5;
  }

LABEL_6:
}

void __61__NWURLSessionWebSocketTask_completeTaskWithError_retryable___block_invoke(uint64_t a1)
{
  [(NWURLSessionWebSocketTask *)*(a1 + 32) processWork];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 248;
    if (!*(v2 + 248))
    {
      v3 = 240;
    }

    v4 = *(v2 + v3);
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = v4;
  [(NWURLSessionDelegateWrapper *)v4 task:v5 didCompleteWithError:*(a1 + 40) metrics:0];
}

- (void)processWork
{
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    nw_context_assert_queue(*(self + 320));
    v2 = *(self + 528);
    if (v2)
    {
    }

    else if (*(self + 296) != 2)
    {
      return;
    }

    v3 = *(self + 536);
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = *(self + 536);
    *(self + 536) = v4;

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    if ((*(self + 492) & 1) == 0)
    {
      if ([*(self + 552) count])
      {
        [(NWURLSessionWebSocketTask *)self receiveMessage];
      }
    }
  }
}

- (void)receiveMessage
{
  if (self)
  {
    nw_context_assert_queue(*(self + 320));
    if (*(self + 296) == 2)
    {
      v3 = *(self + 552);
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(NWURLSessionWebSocketTask *)self setPendingReceiveCompletionHandlers:v4];

      v5 = *(self + 280);
      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = [(NWURLSessionTask *)self errorForErrorCode:?];
      }

      v7 = v6;

      delegateWrapper = [(NWURLSessionTask *)self delegateWrapper];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __43__NWURLSessionWebSocketTask_receiveMessage__block_invoke;
      v12[3] = &unk_1E6A3D760;
      v13 = v3;
      v14 = v7;
      v9 = v7;
      v10 = v3;
      [(NWURLSessionDelegateWrapper *)delegateWrapper runDelegateBlock:v12];
    }

    else
    {
      *(self + 492) = 1;
      v2 = *(self + 528);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __43__NWURLSessionWebSocketTask_receiveMessage__block_invoke_2;
      v11[3] = &unk_1E6A39638;
      v11[4] = self;
      nw_connection_receive_internal(v2, 0, 0xFFFFFFFF, 0xFFFFFFFF, v11);
    }
  }
}

void __43__NWURLSessionWebSocketTask_receiveMessage__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __43__NWURLSessionWebSocketTask_receiveMessage__block_invoke_2(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v74 = *MEMORY[0x1E69E9840];
  newValue = a2;
  v9 = a3;
  v10 = a5;
  v11 = *(a1 + 32);
  if (v11)
  {
    *(v11 + 492) = 0;
    v12 = *(a1 + 32);
    if (v12)
    {
      if (*(v12 + 296) == 2)
      {
        ([NWURLSessionWebSocketTask processWork])();
        goto LABEL_83;
      }
    }
  }

  v13 = 0;
  opcode = nw_ws_opcode_invalid;
  if (v9 && a4)
  {
    if (nw_protocol_copy_ws_definition::onceToken != -1)
    {
      dispatch_once(&nw_protocol_copy_ws_definition::onceToken, &__block_literal_global_4247);
    }

    v15 = nw_protocol_copy_ws_definition::definition;
    v13 = nw_content_context_copy_protocol_metadata(v9, v15);

    if (v13)
    {
      opcode = nw_ws_metadata_get_opcode(v13);
    }

    else
    {
      opcode = nw_ws_opcode_invalid;
    }
  }

  if (gLogDatapath == 1)
  {
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v57 = gurlLogObj;
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_98;
    }

    v58 = *(a1 + 32);
    if (v58)
    {
      [v58 logDescription];
      v59 = *(a1 + 32);
      if (v59)
      {
        [v59 logDescription];
        v60 = v68;
        size = newValue;
LABEL_95:
        if (size)
        {
          size = dispatch_data_get_size(size);
        }

        *buf = 136448002;
        *&buf[4] = "[NWURLSessionWebSocketTask receiveMessage]_block_invoke_2";
        *&buf[12] = 1042;
        *&buf[14] = 16;
        *&buf[18] = 2098;
        *&buf[20] = v69;
        *&buf[28] = 1024;
        *&buf[30] = v60;
        *&buf[34] = 1024;
        *&buf[36] = opcode;
        LOWORD(v72) = 2048;
        *(&v72 + 2) = size;
        WORD5(v72) = 1024;
        HIDWORD(v72) = a4;
        LOWORD(v73) = 2112;
        *(&v73 + 2) = v10;
        _os_log_impl(&dword_181A37000, v57, OS_LOG_TYPE_DEBUG, "%{public}s Task <%{public,uuid_t}.16P>.<%u> received message: %d, size: %zu, complete: %{BOOL}d, error: %@", buf, 0x42u);
LABEL_98:

        goto LABEL_12;
      }
    }

    else
    {
      v69[0] = 0;
      v69[1] = 0;
      v70 = 0;
    }

    size = newValue;
    v60 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    goto LABEL_95;
  }

LABEL_12:
  if (v9)
  {
    v16 = v9;
    v17 = 0;
    if (v16 != &__block_literal_global_44658 && v16 != &__block_literal_global_10_44685)
    {
      v17 = 1;
      if (v16 != &__block_literal_global_6_44667 && v16 != &__block_literal_global_8_44676)
      {
        v17 = BYTE6(v16[14].isa) & 1;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  v18 = 0;
  if (opcode <= (nw_ws_opcode_binary|nw_ws_opcode_text|0x4))
  {
    if (opcode)
    {
      if (opcode == nw_ws_opcode_text)
      {
        v44 = objc_alloc(MEMORY[0x1E696AEC0]);
        if (newValue)
        {
          v45 = newValue;
        }

        else
        {
          v45 = MEMORY[0x1E69E9668];
        }

        v46 = [v44 initWithData:v45 encoding:4];
        v18 = [objc_alloc(MEMORY[0x1E695ACC0]) initWithString:v46];
      }

      else if (opcode == nw_ws_opcode_binary)
      {
        v19 = objc_alloc(MEMORY[0x1E695ACC0]);
        if (newValue)
        {
          v20 = newValue;
        }

        else
        {
          v20 = MEMORY[0x1E69E9668];
        }

        v18 = [v19 initWithData:v20];
      }
    }

    else
    {
      if (__nwlog_url_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
      }

      v43 = gurlLogObj;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "WebSocket cont frame should not be received", buf, 2u);
      }

      v18 = 0;
    }

    goto LABEL_54;
  }

  if ((opcode - 9) >= 2)
  {
    if (opcode == nw_ws_opcode_close)
    {

      close_code = nw_ws_metadata_get_close_code(v13);
      v23 = *(a1 + 32);
      if (v23 && (*(v23 + 504) = close_code, (v24 = *(a1 + 32)) != 0) && (objc_setProperty_nonatomic_copy(v24, v22, newValue, 512), (v25 = *(a1 + 32)) != 0))
      {
        v26 = 248;
        if (!*(v25 + 248))
        {
          v26 = 240;
        }

        v27 = *(v25 + v26);
        v28 = *(a1 + 32);
      }

      else
      {
        v28 = 0;
        v27 = 0;
      }

      v29 = [v28 closeCode];
      v30 = [*(a1 + 32) closeReason];
      v31 = v28;
      v33 = v30;
      if (v27)
      {
        v34 = [(NWURLSessionDelegateWrapper *)v27 delegateFor_didCloseWithCode];
        if (v34)
        {
          v35 = v27[5];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __69__NWURLSessionDelegateWrapper_webSocketTask_didCloseWithCode_reason___block_invoke;
          *&buf[24] = &unk_1E6A3B788;
          *&buf[32] = v34;
          *&v72 = v35;
          *(&v72 + 1) = v31;
          *(&v73 + 1) = v29;
          *&v73 = v33;
          v36 = v31;
          v37 = v27[7];
          v38 = v35;
          v39 = v37;
          v31 = v36;
          [(NWURLSessionDelegateQueue *)v39 runDelegateBlock:buf];
        }
      }

      v10 = 0;
      v18 = 0;
      v40 = 0;
      v41 = *(a1 + 32);
      goto LABEL_42;
    }

LABEL_54:
    if (v10)
    {
      v40 = *(a1 + 32);
      if (v40)
      {
        v47 = v10;
        v40 = [[NWURLError alloc] initWithNWError:v47 forLoader:v40[33] andTask:v40];
      }

      if (v18)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v40 = 0;
      if (v18)
      {
        goto LABEL_62;
      }
    }

    if (v17 != 1 && !v40)
    {
      v40 = [(NWURLSessionTask *)*(a1 + 32) errorForErrorCode:?];
      v18 = 0;
      v17 = 1;
      v41 = *(a1 + 32);
      if (!v40)
      {
        goto LABEL_77;
      }

LABEL_75:
      if (!v41)
      {
        if (v17)
        {
          v42 = 0;
LABEL_44:
          [v41 completeTaskWithError:v42 retryable:0];
LABEL_81:

          goto LABEL_82;
        }

        goto LABEL_80;
      }

      if (!v41[68])
      {
        objc_storeStrong(v41 + 68, v40);
        v41 = *(a1 + 32);
        if (v17)
        {
          goto LABEL_42;
        }

        goto LABEL_80;
      }

LABEL_77:
      if (v17)
      {
LABEL_42:
        if (v41)
        {
          v42 = v41[68];
        }

        else
        {
          v42 = 0;
        }

        goto LABEL_44;
      }

LABEL_80:
      [(NWURLSessionWebSocketTask *)v41 processWork];
      goto LABEL_81;
    }

LABEL_62:
    if (v18)
    {
      v48 = *(a1 + 32);
      if (v48)
      {
        v48 = v48[69];
      }

      v49 = v48;
      v50 = [v49 firstObject];

      v51 = *(a1 + 32);
      if (v51)
      {
        v52 = *(v51 + 552);
      }

      else
      {
        v52 = 0;
      }

      [v52 removeObjectAtIndex:0];
      v53 = *(a1 + 32);
      if (v53)
      {
        v54 = 248;
        if (!*(v53 + 248))
        {
          v54 = 240;
        }

        v55 = *(v53 + v54);
      }

      else
      {
        v55 = 0;
      }

      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __43__NWURLSessionWebSocketTask_receiveMessage__block_invoke_655;
      v63[3] = &unk_1E6A3D710;
      v65 = v50;
      v18 = v18;
      v64 = v18;
      v56 = v50;
      if (v55)
      {
        [(NWURLSessionDelegateQueue *)v55[7] runDelegateBlock:v63];
      }
    }

    v41 = *(a1 + 32);
    if (!v40)
    {
      goto LABEL_77;
    }

    goto LABEL_75;
  }

  [(NWURLSessionWebSocketTask *)*(a1 + 32) receiveMessage];
LABEL_82:

LABEL_83:
}

- (void)cancelWithCloseCode:(int64_t)code reason:(id)reason
{
  [(NWURLSessionWebSocketTask *)self _sendCloseCode:code reason:reason];

  [(NWURLSessionTask *)self cancel];
}

- (void)_sendCloseCode:(int64_t)code reason:(id)reason
{
  reasonCopy = reason;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__NWURLSessionWebSocketTask__sendCloseCode_reason___block_invoke;
  aBlock[3] = &unk_1E6A3BCF0;
  aBlock[4] = self;
  codeCopy = code;
  v7 = reasonCopy;
  v20 = v7;
  v8 = _Block_copy(aBlock);
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
  block[2] = __51__NWURLSessionWebSocketTask__sendCloseCode_reason___block_invoke_3;
  block[3] = &unk_1E6A3D710;
  block[4] = self;
  v10 = v8;
  v18 = v10;
  dispatch_async(queue, block);
  objc_initWeak(&location, self);
  v11 = dispatch_time(0, 5000000000);
  if (self)
  {
    v12 = self->super._queue;
  }

  else
  {
    v12 = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__NWURLSessionWebSocketTask__sendCloseCode_reason___block_invoke_4;
  v14[3] = &unk_1E6A3A6C8;
  v13 = v12;
  objc_copyWeak(&v15, &location);
  dispatch_after(v11, v13, v14);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __51__NWURLSessionWebSocketTask__sendCloseCode_reason___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(v3 + 296) == 2)
    {
      return;
    }

    v4 = (a1 + 48);
    *(v3 + 504) = *(a1 + 48);
    v5 = *(a1 + 32);
    if (v5)
    {
      objc_setProperty_nonatomic_copy(v5, a2, *(a1 + 40), 512);
    }
  }

  else
  {
    v4 = (a1 + 48);
  }

  v6 = nw_content_context_create("close");
  nw_content_context_set_is_final(v6, 1);
  metadata = nw_ws_create_metadata(nw_ws_opcode_close);
  v8 = metadata;
  if (*v4)
  {
    nw_ws_metadata_set_close_code(metadata, *v4);
  }

  nw_content_context_set_metadata_for_protocol(v6, v8);
  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = v9[66];
  }

  v10 = *(a1 + 40);
  v11 = v9;
  v12 = [v10 _createDispatchData];
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = __51__NWURLSessionWebSocketTask__sendCloseCode_reason___block_invoke_2;
  completion[3] = &unk_1E6A33F88;
  completion[4] = *(a1 + 32);
  nw_connection_send(v11, v12, v6, 1, completion);
}

void __51__NWURLSessionWebSocketTask__sendCloseCode_reason___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[67];
  }

  v3 = *(a1 + 40);
  v4 = v2;
  v5 = _Block_copy(v3);
  [v4 addObject:v5];

  v6 = *(a1 + 32);

  [(NWURLSessionWebSocketTask *)v6 processWork];
}

void __51__NWURLSessionWebSocketTask__sendCloseCode_reason___block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[37] != 2)
  {
    v2 = WeakRetained;
    if (__nwlog_url_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
    }

    v3 = gurlLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      [v2 logDescription];
      [v2 logDescription];
      *buf = 68289282;
      v7 = 16;
      v8 = 2098;
      v9 = &v5;
      v10 = 1024;
      v11 = v4;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEFAULT, "Task <%{public,uuid_t}.16P>.<%u> cancelling automatically since the server did not reply to our close frame", buf, 0x18u);
    }

    [v2 cancel];
    WeakRetained = v2;
  }
}

void __51__NWURLSessionWebSocketTask__sendCloseCode_reason___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (!v4)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if (*(v4 + 296) == 2)
  {
    goto LABEL_15;
  }

  if (!v3)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v5 = [[NWURLError alloc] initWithNWError:v3 forLoader:*(v4 + 264) andTask:v4];
  v4 = *(a1 + 32);
  if (v4)
  {
LABEL_7:
    v6 = *(v4 + 280);
    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:
  if (!v6 && v5)
  {
    [(NWURLSessionTask *)v4 setPendingError:v5];
    v4 = *(a1 + 32);
    if (v4)
    {
      goto LABEL_11;
    }
  }

  else if (v4)
  {
LABEL_11:
    nw_context_assert_queue(*(v4 + 320));
    if (*(v4 + 296) == 1)
    {
      v7 = *(v4 + 280);
      if (v7)
      {
        [v4 completeTaskWithError:v7 retryable:0];
      }
    }
  }

LABEL_14:

  v3 = v8;
LABEL_15:
}

- (void)sendPingWithPongReceiveHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__NWURLSessionWebSocketTask_sendPingWithPongReceiveHandler___block_invoke;
  aBlock[3] = &unk_1E6A3D710;
  aBlock[4] = self;
  v12 = handlerCopy;
  v5 = handlerCopy;
  v6 = _Block_copy(aBlock);
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__NWURLSessionWebSocketTask_sendPingWithPongReceiveHandler___block_invoke_7;
  v9[3] = &unk_1E6A3D710;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);
}

void __60__NWURLSessionWebSocketTask_sendPingWithPongReceiveHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 296) == 2)
  {
    v12 = *(v2 + 280);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = [(NWURLSessionTask *)*(a1 + 32) errorForErrorCode:?];
    }

    v14 = v13;

    v15 = [(NWURLSessionTask *)*(a1 + 32) delegateWrapper];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __60__NWURLSessionWebSocketTask_sendPingWithPongReceiveHandler___block_invoke_2;
    v21[3] = &unk_1E6A3D710;
    v16 = *(a1 + 40);
    v22 = v14;
    v23 = v16;
    v3 = v14;
    [(NWURLSessionDelegateWrapper *)v15 runDelegateBlock:v21];

    metadata = v23;
  }

  else
  {
    v3 = nw_content_context_create("ping");
    metadata = nw_ws_create_metadata(nw_ws_opcode_ping);
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 232);
    }

    else
    {
      v6 = 0;
    }

    pong_handler[0] = MEMORY[0x1E69E9820];
    pong_handler[1] = 3221225472;
    pong_handler[2] = __60__NWURLSessionWebSocketTask_sendPingWithPongReceiveHandler___block_invoke_3;
    pong_handler[3] = &unk_1E6A33F60;
    pong_handler[4] = v5;
    v20 = *(a1 + 40);
    nw_ws_metadata_set_pong_handler(metadata, v6, pong_handler);
    nw_content_context_set_metadata_for_protocol(v3, metadata);
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 494);
      *(v7 + 494) = v8 + 1;
    }

    else
    {
      v8 = 0;
    }

    buffer = __rev16(v8);
    v9 = dispatch_data_create(&buffer, 2uLL, 0, 0);
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 528);
    }

    else
    {
      v11 = 0;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __60__NWURLSessionWebSocketTask_sendPingWithPongReceiveHandler___block_invoke_6;
    v17[3] = &unk_1E6A33F88;
    v17[4] = v10;
    nw_connection_send(v11, v9, v3, 1, v17);
  }
}

void __60__NWURLSessionWebSocketTask_sendPingWithPongReceiveHandler___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[67];
  }

  v3 = *(a1 + 40);
  v4 = v2;
  v5 = _Block_copy(v3);
  [v4 addObject:v5];

  v6 = *(a1 + 32);

  [(NWURLSessionWebSocketTask *)v6 processWork];
}

void __60__NWURLSessionWebSocketTask_sendPingWithPongReceiveHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (!v5)
  {
    v6 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  if (*(v5 + 296) == 2)
  {
    v16 = *(v5 + 280);
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = [(NWURLSessionTask *)*(a1 + 32) errorForErrorCode:?];
    }

    v18 = v17;
    v19 = [(NWURLSessionTask *)*(a1 + 32) delegateWrapper];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __60__NWURLSessionWebSocketTask_sendPingWithPongReceiveHandler___block_invoke_4;
    v27[3] = &unk_1E6A3D710;
    v20 = *(a1 + 40);
    v28 = v18;
    v29 = v20;
    v6 = v18;
    [(NWURLSessionDelegateWrapper *)v19 runDelegateBlock:v27];

    v13 = v29;
    goto LABEL_23;
  }

  if (!v3)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v6 = [[NWURLError alloc] initWithNWError:v3 forLoader:*(v5 + 264) andTask:v5];
  v5 = *(a1 + 32);
  if (v5)
  {
LABEL_7:
    v7 = *(v5 + 280);
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:
  if (!v7 && v6)
  {
    [(NWURLSessionTask *)v5 setPendingError:v6];
    v5 = *(a1 + 32);
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_27:
    v8 = 0;
    goto LABEL_12;
  }

  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_11:
  v8 = *(v5 + 280);
LABEL_12:
  v9 = v8;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = 248;
    if (!*(v10 + 248))
    {
      v11 = 240;
    }

    v12 = *(v10 + v11);
  }

  else
  {
    v12 = 0;
  }

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __60__NWURLSessionWebSocketTask_sendPingWithPongReceiveHandler___block_invoke_5;
  v24 = &unk_1E6A3D710;
  v26 = *(a1 + 40);
  v13 = v9;
  v25 = v13;
  if (v12)
  {
    [(NWURLSessionDelegateQueue *)v12[7] runDelegateBlock:?];
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    nw_context_assert_queue(*(v14 + 320));
    if (*(v14 + 296) == 1)
    {
      v15 = *(v14 + 280);
      if (v15)
      {
        [v14 completeTaskWithError:v15 retryable:{0, v21, v22, v23, v24, v25, v26}];
      }
    }
  }

LABEL_23:
}

void __60__NWURLSessionWebSocketTask_sendPingWithPongReceiveHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (!v4)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if (*(v4 + 296) == 2)
  {
    goto LABEL_15;
  }

  if (!v3)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v5 = [[NWURLError alloc] initWithNWError:v3 forLoader:*(v4 + 264) andTask:v4];
  v4 = *(a1 + 32);
  if (v4)
  {
LABEL_7:
    v6 = *(v4 + 280);
    goto LABEL_8;
  }

  v6 = 0;
LABEL_8:
  if (!v6 && v5)
  {
    [(NWURLSessionTask *)v4 setPendingError:v5];
    v4 = *(a1 + 32);
    if (v4)
    {
      goto LABEL_11;
    }
  }

  else if (v4)
  {
LABEL_11:
    nw_context_assert_queue(*(v4 + 320));
    if (*(v4 + 296) == 1)
    {
      v7 = *(v4 + 280);
      if (v7)
      {
        [v4 completeTaskWithError:v7 retryable:0];
      }
    }
  }

LABEL_14:

  v3 = v8;
LABEL_15:
}

- (void)receiveMessageWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    queue = self->super._queue;
  }

  else
  {
    queue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__NWURLSessionWebSocketTask_receiveMessageWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E6A3D710;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __65__NWURLSessionWebSocketTask_receiveMessageWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[69];
  }

  v3 = *(a1 + 40);
  v4 = v2;
  v5 = _Block_copy(v3);
  [v4 addObject:v5];

  v6 = *(a1 + 32);

  [(NWURLSessionWebSocketTask *)v6 processWork];
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__NWURLSessionWebSocketTask_sendMessage_completionHandler___block_invoke;
  aBlock[3] = &unk_1E6A39AE8;
  v16 = messageCopy;
  v17 = handlerCopy;
  aBlock[4] = self;
  v8 = messageCopy;
  v9 = handlerCopy;
  v10 = _Block_copy(aBlock);
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
  block[2] = __59__NWURLSessionWebSocketTask_sendMessage_completionHandler___block_invoke_6;
  block[3] = &unk_1E6A3D710;
  block[4] = self;
  v14 = v10;
  v12 = v10;
  dispatch_async(queue, block);
}

void __59__NWURLSessionWebSocketTask_sendMessage_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 296) == 2)
  {
    v10 = *(v2 + 280);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = [(NWURLSessionTask *)*(a1 + 32) errorForErrorCode:?];
    }

    v12 = v11;

    v13 = [(NWURLSessionTask *)*(a1 + 32) delegateWrapper];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __59__NWURLSessionWebSocketTask_sendMessage_completionHandler___block_invoke_2;
    v17[3] = &unk_1E6A3D710;
    v14 = *(a1 + 48);
    v18 = v12;
    v19 = v14;
    v3 = v12;
    [(NWURLSessionDelegateWrapper *)v13 runDelegateBlock:v17];

    metadata = v19;
  }

  else
  {
    v3 = nw_content_context_create("send");
    if ([*(a1 + 40) type])
    {
      metadata = nw_ws_create_metadata(nw_ws_opcode_text);
      v5 = [*(a1 + 40) string];
      v6 = [v5 dataUsingEncoding:4];
    }

    else
    {
      metadata = nw_ws_create_metadata(nw_ws_opcode_binary);
      v6 = [*(a1 + 40) data];
    }

    nw_content_context_set_metadata_for_protocol(v3, metadata);
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = v7[66];
    }

    v8 = v7;
    v9 = [v6 _createDispatchData];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__NWURLSessionWebSocketTask_sendMessage_completionHandler___block_invoke_3;
    v15[3] = &unk_1E6A33F60;
    v15[4] = *(a1 + 32);
    v16 = *(a1 + 48);
    nw_connection_send(v8, v9, v3, 1, v15);
  }
}

void __59__NWURLSessionWebSocketTask_sendMessage_completionHandler___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[67];
  }

  v3 = *(a1 + 40);
  v4 = v2;
  v5 = _Block_copy(v3);
  [v4 addObject:v5];

  v6 = *(a1 + 32);

  [(NWURLSessionWebSocketTask *)v6 processWork];
}

void __59__NWURLSessionWebSocketTask_sendMessage_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (!v5)
  {
    v6 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  if (*(v5 + 296) == 2)
  {
    v16 = *(v5 + 280);
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = [(NWURLSessionTask *)*(a1 + 32) errorForErrorCode:?];
    }

    v18 = v17;
    v19 = [(NWURLSessionTask *)*(a1 + 32) delegateWrapper];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __59__NWURLSessionWebSocketTask_sendMessage_completionHandler___block_invoke_4;
    v27[3] = &unk_1E6A3D710;
    v20 = *(a1 + 40);
    v28 = v18;
    v29 = v20;
    v6 = v18;
    [(NWURLSessionDelegateWrapper *)v19 runDelegateBlock:v27];

    v13 = v29;
    goto LABEL_23;
  }

  if (!v3)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v6 = [[NWURLError alloc] initWithNWError:v3 forLoader:*(v5 + 264) andTask:v5];
  v5 = *(a1 + 32);
  if (v5)
  {
LABEL_7:
    v7 = *(v5 + 280);
    goto LABEL_8;
  }

  v7 = 0;
LABEL_8:
  if (!v7 && v6)
  {
    [(NWURLSessionTask *)v5 setPendingError:v6];
    v5 = *(a1 + 32);
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_27:
    v8 = 0;
    goto LABEL_12;
  }

  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_11:
  v8 = *(v5 + 280);
LABEL_12:
  v9 = v8;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = 248;
    if (!*(v10 + 248))
    {
      v11 = 240;
    }

    v12 = *(v10 + v11);
  }

  else
  {
    v12 = 0;
  }

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __59__NWURLSessionWebSocketTask_sendMessage_completionHandler___block_invoke_5;
  v24 = &unk_1E6A3D710;
  v26 = *(a1 + 40);
  v13 = v9;
  v25 = v13;
  if (v12)
  {
    [(NWURLSessionDelegateQueue *)v12[7] runDelegateBlock:?];
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    nw_context_assert_queue(*(v14 + 320));
    if (*(v14 + 296) == 1)
    {
      v15 = *(v14 + 280);
      if (v15)
      {
        [v14 completeTaskWithError:v15 retryable:{0, v21, v22, v23, v24, v25, v26}];
      }
    }
  }

LABEL_23:
}

- (void)startNextLoad
{
  if (self)
  {
    nw_context_assert_queue(self->super._sessionContext);
    configuration = self->super._configuration;
  }

  else
  {
    nw_context_assert_queue(0);
    configuration = 0;
  }

  v4 = configuration;
  currentRequest = [(NWURLSessionTask *)self currentRequest];
  [(NWURLSessionTaskConfiguration *)v4 updateRequest:currentRequest];

  v6 = [NWURLLoaderHTTP alloc];
  currentRequest2 = [(NWURLSessionTask *)self currentRequest];
  if (self)
  {
    v8 = self->super._configuration;
    v9 = self->super._queue;
    v10 = [(NWURLLoaderHTTP *)&v6->super.isa initWithRequest:currentRequest2 bodyKnownSize:0 configuration:v8 queue:v9 client:self];
    loader = self->super._loader;
    self->super._loader = v10;

    v12 = self->super._loader;
  }

  else
  {

    v12 = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__NWURLSessionWebSocketTask_startNextLoad__block_invoke;
  v13[3] = &unk_1E6A3D868;
  v13[4] = self;
  [(NWURLLoader *)v12 start:v13];
}

void __42__NWURLSessionWebSocketTask_startNextLoad__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[33];
  }

  v3 = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__NWURLSessionWebSocketTask_startNextLoad__block_invoke_2;
  v5[3] = &unk_1E6A33C70;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  [v4 readResponse:v5];
}

void __42__NWURLSessionWebSocketTask_startNextLoad__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v57 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 264);
  }

  else
  {
    v8 = 0;
  }

  if (v8 != *(a1 + 40))
  {
    goto LABEL_46;
  }

  if (!v5)
  {
LABEL_8:
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_50:
    v53 = v57;
LABEL_45:

    goto LABEL_46;
  }

  if (!v7)
  {
    goto LABEL_50;
  }

  if (!*(v7 + 280))
  {
    objc_storeStrong((v7 + 280), a3);
    v7 = *(a1 + 32);
    goto LABEL_8;
  }

LABEL_9:
  v9 = *(v7 + 280);
  if (!v9)
  {
    v10 = v57;
    nw_context_assert_queue(*(v7 + 320));
    v12 = *(v7 + 344);
    if (v12)
    {
      *(v7 + 344) = 0;
      nw_queue_cancel_source(v12, v11);
    }

    v13 = *(v7 + 336);
    if (v13)
    {
      *(v7 + 336) = 0;
      nw_queue_cancel_source(v13, v11);
    }

    v14 = *(v7 + 360);
    if (v14)
    {
      *(v7 + 360) = 0;
      nw_queue_cancel_source(v14, v11);
    }

    [(NWURLSessionTask *)v7 updateResponse:v10];
    objc_setProperty_nonatomic_copy(v7, v15, v10, 520);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = v10;
      v16 = [v7 currentRequest];
      v54 = [v16 valueForHTTPHeaderField:@"Sec-WebSocket-Key"];

      options = nw_ws_create_options(nw_ws_version_13);
      nw_ws_options_set_permessage_deflate(options, 1);
      nw_ws_options_set_auto_reply_ping(options, 1);
      nw_ws_options_set_skip_handshake(options, 1);
      nw_ws_options_set_maximum_message_size(options, [v7 maximumMessageSize]);
      v55 = [v56 valueForHTTPHeaderField:@"Sec-WebSocket-Protocol"];
      if (v55)
      {
        v18 = [v7 currentRequest];
        v19 = [v18 valueForHTTPHeaderField:@"Sec-WebSocket-Protocol"];
        v20 = [v19 componentsSeparatedByString:{@", "}];

        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v62 objects:v74 count:16];
        if (v22)
        {
          v23 = *v63;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v63 != v23)
              {
                objc_enumerationMutation(v21);
              }

              v25 = *(*(&v62 + 1) + 8 * i);
              v26 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
              v27 = [v25 stringByTrimmingCharactersInSet:v26];

              nw_ws_options_add_subprotocol(options, [v27 cStringUsingEncoding:5]);
            }

            v22 = [v21 countByEnumeratingWithState:&v62 objects:v74 count:16];
          }

          while (v22);
        }
      }

      HTTPResponse = CFURLResponseGetHTTPResponse();
      v61 = 0;
      if (nw_ws_validate_server_response_with_protocol_options(HTTPResponse, v54, options, &v61))
      {
        v29 = 248;
        if (!*(v7 + 248))
        {
          v29 = 240;
        }

        v30 = *(v7 + v29);
        v31 = v7;
        v33 = v55;
        if (v30)
        {
          v34 = [(NWURLSessionDelegateWrapper *)v30 delegateFor_didOpenWithProtocol];
          if (v34)
          {
            v35 = *(v30 + 40);
            v66 = MEMORY[0x1E69E9820];
            v67 = 3221225472;
            v68 = __65__NWURLSessionDelegateWrapper_webSocketTask_didOpenWithProtocol___block_invoke;
            v69 = &unk_1E6A3C038;
            v70 = v34;
            v71 = v35;
            v72 = v31;
            v73 = v33;
            v36 = *(v30 + 56);
            v37 = v35;
            [(NWURLSessionDelegateQueue *)v36 runDelegateBlock:?];
          }
        }

        v38 = v31[33];
        v39 = [v38 underlyingConnection];
        v40 = v31[66];
        v31[66] = v39;

        v66 = 0;
        v67 = &v66;
        v68 = 0x2020000000;
        LOBYTE(v69) = 0;
        v41 = v31[66];
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __44__NWURLSessionWebSocketTask_handleResponse___block_invoke;
        v58[3] = &unk_1E6A33F38;
        v60 = &v66;
        v59 = options;
        nw_connection_modify_connected_protocol_stack_internal(v41, v58, 1);

        [(NWURLSessionWebSocketTask *)v31 processWork];
        _Block_object_dispose(&v66, 8);
      }

      else
      {
        v46 = [NWURLError alloc];
        v47 = *(v7 + 264);
        v48 = v7;
        if (v46)
        {
          v49 = [(NWURLError *)v46 initWithErrorCode:-1011];
          v46 = v49;
          if (v49)
          {
            [(NWURLError *)v49 fillErrorForLoader:v47 andTask:v48];
          }
        }

        v50 = [(NWURLError *)v46 webSocketHandshakeFailureReason];
        v51 = v50 == 0;

        if (v51)
        {
          v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v61];
          [(NWURLError *)v46 setWebSocketHandshakeFailureReason:v52];
        }

        [v48 completeTaskWithError:v46 retryable:0];
      }
    }

    else
    {
      v42 = [NWURLError alloc];
      v43 = *(v7 + 264);
      v44 = v7;
      if (v42)
      {
        v45 = [(NWURLError *)v42 initWithErrorCode:-1011];
        v42 = v45;
        if (v45)
        {
          [(NWURLError *)v45 fillErrorForLoader:v43 andTask:v44];
        }
      }

      [v44 completeTaskWithError:v42 retryable:0];
    }

    goto LABEL_45;
  }

  [v7 completeTaskWithError:v9 retryable:0];
LABEL_46:
}

id __44__NWURLSessionWebSocketTask_handleResponse___block_invoke(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  if (a2 || (v5 = *(*(a1 + 40) + 8), (*(v5 + 24) & 1) != 0))
  {
    v6 = 0;
    *a4 = 0;
  }

  else
  {
    *(v5 + 24) = 1;
    *a4 = 2;
    v6 = *(a1 + 32);
  }

  return v6;
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
    self = self->_closeReason;
  }

  return self;
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = NWURLSessionWebSocketTask;
  if ([(NWURLSessionTask *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isEqual:objc_opt_class()];
  }
}

+ (BOOL)isSubclassOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___NWURLSessionWebSocketTask;
  if (objc_msgSendSuper2(&v5, sel_isSubclassOfClass_))
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isEqual:objc_opt_class()];
  }
}

+ (void)addWebSocketHeadersToRequest:(uint64_t)request
{
  v4 = a2;
  objc_opt_self();
  v2 = [v4 valueForHTTPHeaderField:@"Sec-WebSocket-Version"];

  if (!v2)
  {
    [v4 setValue:@"13" forHTTPHeaderField:@"Sec-WebSocket-Version"];
  }

  v3 = [v4 valueForHTTPHeaderField:@"Sec-WebSocket-Extensions"];

  if (!v3)
  {
    [v4 setValue:@"permessage-deflate" forHTTPHeaderField:@"Sec-WebSocket-Extensions"];
  }
}

@end