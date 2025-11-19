@interface ATConcreteMessageLink
- (ATConcreteMessageLink)initWithSocket:(id)a3;
- (BOOL)_isWriterPendingStopForforMessage:(id)a3;
- (BOOL)_sendMessage:(id)a3 error:(id *)a4;
- (BOOL)open;
- (NSString)description;
- (id)_getObservers;
- (void)_checkMessageTimeouts;
- (void)_invokeCompletionHandlerForResponseID:(unint64_t)a3 withError:(id)a4;
- (void)_prepareStreamReaderForMessage:(id)a3 withProgress:(id)a4;
- (void)_processIncomingDataRequest:(id)a3;
- (void)_processIncomingDataResponse:(id)a3;
- (void)_processIncomingMessage:(id)a3;
- (void)_processIncomingPartialResponse:(id)a3;
- (void)_processIncomingRequest:(id)a3;
- (void)_processIncomingResponse:(id)a3;
- (void)addObserver:(id)a3;
- (void)addRequestHandler:(id)a3 forDataClass:(id)a4;
- (void)addTimeoutException;
- (void)close;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)removeRequestHandlerForDataClass:(id)a3;
- (void)removeTimeoutException;
- (void)sendPartialResponse:(id)a3 withCompletion:(id)a4;
- (void)sendRequest:(id)a3 withCompletion:(id)a4;
- (void)sendResponse:(id)a3 withProgress:(id)a4 completion:(id)a5;
- (void)setInitialized:(BOOL)a3;
- (void)socket:(id)a3 hasDataAvailable:(const char *)a4 length:(int64_t)a5;
- (void)socketDidClose:(id)a3;
@end

@implementation ATConcreteMessageLink

- (BOOL)_isWriterPendingStopForforMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 messageType];
  if (v5 > 4)
  {
    v8 = 0;
  }

  else
  {
    v6 = *(&self->super.super.isa + *off_2784E9348[v5]);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "messageID")}];
    v8 = [v6 containsObject:v7];
  }

  return v8;
}

void __78__ATConcreteMessageLink__stopWriter_byInjectingStreamError_forMessageId_type___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(*(a1 + 32) + 144));
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v10 = 138543618;
    v11 = v3;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Writer for request ID %d was stopped successfully - removing from our collection", &v10, 0x12u);
  }

  v5 = *(*(a1 + 32) + 72);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  [v5 removeObjectForKey:v6];

  v7 = *(*(a1 + 32) + 96);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  [v7 removeObject:v8];

  dispatch_group_leave(*(*(a1 + 32) + 168));
  v9 = *MEMORY[0x277D85DE8];
}

void __78__ATConcreteMessageLink__stopWriter_byInjectingStreamError_forMessageId_type___block_invoke_86(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(*(a1 + 32) + 144));
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v10 = 138543618;
    v11 = v3;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Writer for response ID %d was stopped successfully - removing from our collection", &v10, 0x12u);
  }

  v5 = *(*(a1 + 32) + 80);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  [v5 removeObjectForKey:v6];

  v7 = *(*(a1 + 32) + 104);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  [v7 removeObject:v8];

  dispatch_group_leave(*(*(a1 + 32) + 168));
  v9 = *MEMORY[0x277D85DE8];
}

- (id)_getObservers
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1447;
  v14 = __Block_byref_object_dispose__1448;
  v15 = 0;
  handlerAccessQueue = self->_handlerAccessQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__ATConcreteMessageLink__getObservers__block_invoke;
  v9[3] = &unk_2784E94F8;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(handlerAccessQueue, v9);
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v11[5] count];
    *buf = 138543618;
    v17 = self;
    v18 = 1024;
    v19 = v5;
    _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Returning %d observers", buf, 0x12u);
  }

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __38__ATConcreteMessageLink__getObservers__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_sendMessage:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ATConcreteMessageLink *)self socket];
  v8 = [v7 isOpen];

  if ((v8 & 1) == 0)
  {
    if (a4)
    {
      [ATInternalError errorWithCode:3 format:@"underlying socket for link closed"];
      *a4 = v16 = 0;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_23;
  }

  self->_lastActivityTime = CFAbsoluteTimeGetCurrent();
  if (![v6 messageType] || objc_msgSend(v6, "messageType") == 1 || objc_msgSend(v6, "messageType") == 2)
  {
    v9 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:
      v10 = [v6 formattedDescription];
      *v22 = 138543618;
      *&v22[4] = self;
      *&v22[12] = 2114;
      *&v22[14] = v10;
      _os_log_impl(&dword_22392A000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ ---> %{public}@", v22, 0x16u);
    }
  }

  else
  {
    if ([v6 hasAdditionalPayload])
    {
      goto LABEL_8;
    }

    v9 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v11 = [v6 data];
  [v11 length];
  v12 = PBDataWriterWriteBareVarint();
  v13 = objc_opt_new();
  [v13 appendBytes:v22 length:v12];
  [v13 appendData:v11];
  v14 = [(ATConcreteMessageLink *)self socket];
  v15 = [v14 writeAllData:v13 error:a4];

  if (v15)
  {
    if ([v6 hasAdditionalPayload])
    {
      v16 = 1;
    }

    else
    {
      v17 = [(ATConcreteMessageLink *)self socket];
      v18 = [v17 flush];

      v16 = v18 == 0;
      if (a4 && v18)
      {
        v19 = v18;
        *a4 = v18;
      }
    }
  }

  else
  {
    if (a4 && !*a4)
    {
      *a4 = [ATInternalError errorWithCode:3 format:@"failed to write message to socket"];
    }

    [(ATConcreteMessageLink *)self close];
    v16 = 0;
  }

LABEL_23:
  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)_checkMessageTimeouts
{
  v85 = *MEMORY[0x277D85DE8];
  Current = CFAbsoluteTimeGetCurrent();
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    lastActivityTime = self->_lastActivityTime;
    idleTimeoutExceptionCount = self->_idleTimeoutExceptionCount;
    *buf = 138544130;
    v78 = self;
    v79 = 2048;
    v80 = lastActivityTime;
    v81 = 2048;
    v82 = Current - lastActivityTime;
    v83 = 1024;
    v84 = idleTimeoutExceptionCount;
    _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Checking for message timeouts. _lastActivityTime=%f (%fs ago), idleTimeoutExceptionCount = %d", buf, 0x26u);
  }

  v7 = [(NSMutableDictionary *)self->_sentRequestsByID allKeys];
  v8 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 count];
    *buf = 138543618;
    v78 = self;
    v79 = 2048;
    v80 = *&v9;
    _os_log_impl(&dword_22392A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Checking %lu sent requests waiting for a reply", buf, 0x16u);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v71;
    *&v11 = 138543618;
    v54 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v71 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v70 + 1) + 8 * i);
        v16 = [(NSMutableDictionary *)self->_sentRequestsByID objectForKey:v15, v54];
        [v16 timestamp];
        if (Current - v17 > 45.0)
        {
          v18 = _ATLogCategoryFramework();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            [v16 timestamp];
            *buf = 138543874;
            v78 = self;
            v79 = 2114;
            v80 = *&v16;
            v81 = 2048;
            v82 = Current - v19;
            _os_log_impl(&dword_22392A000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ Timing out sent request %{public}@ (last activity %fs ago", buf, 0x20u);
          }

          v20 = [(NSMutableDictionary *)self->_streamReadersByID objectForKey:v15];
          v21 = v20;
          if (v20)
          {
            v22 = [v20 didEncounterErrorBlock];
            v23 = [ATInternalError errorWithCode:2 format:@"request timed out"];
            (v22)[2](v22, v23);
          }

          [(NSMutableDictionary *)self->_sentRequestsByID removeObjectForKey:v15];
          v24 = [(NSMutableDictionary *)self->_completionHandlersByRequestID objectForKey:v15];
          if (v24)
          {
            [(NSMutableDictionary *)self->_completionHandlersByRequestID removeObjectForKey:v15];
            v25 = _ATLogCategoryFramework();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = [v15 longLongValue];
              *buf = v54;
              v78 = self;
              v79 = 2048;
              v80 = *&v26;
              _os_log_impl(&dword_22392A000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Calling completion block for timed out messgage if %lld", buf, 0x16u);
            }

            callbackQueue = self->_callbackQueue;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __46__ATConcreteMessageLink__checkMessageTimeouts__block_invoke;
            block[3] = &unk_2784E91E8;
            v69 = v24;
            v68 = v16;
            dispatch_async(callbackQueue, block);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v12);
  }

  v28 = _ATLogCategoryFramework_Oversize();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [(NSMutableDictionary *)self->_streamReadersByID count];
    *buf = 138543618;
    v78 = self;
    v79 = 2048;
    v80 = *&v29;
    _os_log_impl(&dword_22392A000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Checking %lu active stream readers", buf, 0x16u);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v30 = [(NSMutableDictionary *)self->_streamReadersByID allKeys];
  v31 = [v30 countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v64;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v64 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [(NSMutableDictionary *)self->_streamReadersByID objectForKey:*(*(&v63 + 1) + 8 * j)];
        [v35 timestamp];
        if (Current - v36 > 300.0)
        {
          v37 = _ATLogCategoryFramework();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            [v35 timestamp];
            *buf = 138543874;
            v78 = self;
            v79 = 2114;
            v80 = *&v35;
            v81 = 2048;
            v82 = Current - v38;
            _os_log_impl(&dword_22392A000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ Timing out stream reader %{public}@ (last activity %fs ago", buf, 0x20u);
          }

          queue = self->_queue;
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = __46__ATConcreteMessageLink__checkMessageTimeouts__block_invoke_73;
          v61[3] = &unk_2784E94D0;
          v62 = v35;
          dispatch_async(queue, v61);
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v32);
  }

  v40 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = [(NSMutableDictionary *)self->_receivedRequestsByID count];
    *buf = 138543618;
    v78 = self;
    v79 = 2048;
    v80 = *&v41;
    _os_log_impl(&dword_22392A000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending partial responses for %lu requests in progress", buf, 0x16u);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v42 = self->_receivedRequestsByID;
  v43 = [(NSMutableDictionary *)v42 countByEnumeratingWithState:&v57 objects:v74 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v58;
    do
    {
      for (k = 0; k != v44; ++k)
      {
        if (*v58 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = [(NSMutableDictionary *)self->_receivedRequestsByID objectForKey:*(*(&v57 + 1) + 8 * k)];
        [v47 timestamp];
        if (Current - v48 > 22.0)
        {
          v49 = [v47 partialResponseWithParameters:0];
          [(ATConcreteMessageLink *)self sendPartialResponse:v49 withCompletion:0];
        }
      }

      v44 = [(NSMutableDictionary *)v42 countByEnumeratingWithState:&v57 objects:v74 count:16];
    }

    while (v44);
  }

  v50 = self->_idleTimeoutExceptionCount;
  if (v50)
  {
    if (v50 >= 1 && Current - self->_lastActivityTime > 240.0)
    {
      v51 = [objc_alloc(MEMORY[0x277CEA458]) initWithCommand:@"Ping" dataClass:0 parameters:0];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __46__ATConcreteMessageLink__checkMessageTimeouts__block_invoke_77;
      v56[3] = &unk_2784E9300;
      v56[4] = self;
      [(ATConcreteMessageLink *)self sendRequest:v51 withCompletion:v56];
    }
  }

  else if (Current - self->_lastActivityTime > 45.0)
  {
    v52 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v78 = self;
      _os_log_impl(&dword_22392A000, v52, OS_LOG_TYPE_ERROR, "%{public}@ idle timeout expired - closing", buf, 0xCu);
    }

    [(ATConcreteMessageLink *)self close];
  }

  v53 = *MEMORY[0x277D85DE8];
}

void __46__ATConcreteMessageLink__checkMessageTimeouts__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = +[ATInternalError errorWithCode:format:](ATInternalError, "errorWithCode:format:", 2, @"message %u timed out", [*(a1 + 32) messageID]);
  (*(v1 + 16))(v1, 0, v2);
}

void __46__ATConcreteMessageLink__checkMessageTimeouts__block_invoke_73(uint64_t a1)
{
  v3 = [*(a1 + 32) didEncounterErrorBlock];
  v2 = [ATInternalError errorWithCode:2 format:@"stream reader %@ timed out", *(a1 + 32)];
  v3[2](v3, v2);
}

void __46__ATConcreteMessageLink__checkMessageTimeouts__block_invoke_77(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_22392A000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Failed to send ping request: error=%{public}@", &v8, 0x16u);
    }

    [*(a1 + 32) close];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_processIncomingDataResponse:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  receivedResponsesByID = self->_receivedResponsesByID;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "messageID")}];
  v7 = [(NSMutableDictionary *)receivedResponsesByID objectForKey:v6];

  if (!v7)
  {
    goto LABEL_8;
  }

  if (!self->_signatureProvider)
  {
    goto LABEL_8;
  }

  if (([v7 options] & 1) == 0)
  {
    goto LABEL_8;
  }

  signatureProvider = self->_signatureProvider;
  v9 = [v4 payloadSignature];
  v10 = [v4 payload];
  v11 = [(ATSignatureProvider *)signatureProvider verifySignature:v9 forData:v10];

  if (!v11)
  {
LABEL_8:
    responseWritersByID = self->_responseWritersByID;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "messageID")}];
    v11 = [(NSMutableDictionary *)responseWritersByID objectForKey:v14];

    if (!v11 || [(ATConcreteMessageLink *)self _isWriterPendingStopForforMessage:v4])
    {
      goto LABEL_24;
    }

    if ([v4 hasPayload])
    {
      v15 = [v4 payload];
      v36 = 0;
      v16 = [v11 writeAllData:v15 error:&v36];
      v17 = v36;

      if ((v16 & 1) == 0)
      {
        v18 = _ATLogCategoryFramework();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [v4 messageID];
          *buf = 138544130;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v17;
          v38 = 2048;
          v39 = *&v11;
          v40 = 1024;
          LODWORD(v41) = v19;
          _os_log_impl(&dword_22392A000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Error=%{public}@ writing to data stream, stopping %p for response=%u", buf, 0x26u);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v17 = 0;
    }

    if ([v4 additionalPayload])
    {
LABEL_23:

      goto LABEL_24;
    }

    Current = CFAbsoluteTimeGetCurrent();
    [v11 timestamp];
    v22 = v21;
    v23 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = Current - v22;
      v25 = [v11 bytesWritten];
      v26 = [v11 bytesWritten] / v24;
      v27 = [v4 messageID];
      *buf = 138544386;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v25;
      v38 = 2048;
      v39 = v24;
      v40 = 2048;
      v41 = v26;
      v42 = 1024;
      v43 = v27;
      _os_log_impl(&dword_22392A000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished streaming %llu bytes in %.2f seconds (%.2f b/s) for response %u", buf, 0x30u);
    }

    if ([v4 hasStreamError])
    {
      *&buf[8] = 0;
      v28 = [v4 streamError];
      *buf = [v28 domainCode];
      v29 = [v4 streamError];
      *&buf[8] = [v29 code];

      v30 = [v4 messageID];
      v31 = [v4 messageType];
      v32 = buf;
      v33 = self;
      v34 = v11;
LABEL_22:
      [(ATConcreteMessageLink *)v33 _stopWriter:v34 byInjectingStreamError:v32 forMessageId:v30 type:v31];
      goto LABEL_23;
    }

LABEL_21:
    v30 = [v4 messageID];
    v31 = [v4 messageType];
    v33 = self;
    v34 = v11;
    v32 = 0;
    goto LABEL_22;
  }

  v12 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_22392A000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to verify payload signature: %{public}@", buf, 0x16u);
  }

  [(ATConcreteMessageLink *)self close];
LABEL_24:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_processIncomingPartialResponse:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  sentRequestsByID = self->_sentRequestsByID;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "messageID")}];
  v7 = [(NSMutableDictionary *)sentRequestsByID objectForKey:v6];

  if (v7)
  {
    [v7 setTimestamp:CFAbsoluteTimeGetCurrent()];
  }

  else
  {
    v8 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = self;
      v12 = 1024;
      v13 = [v4 messageID];
      _os_log_impl(&dword_22392A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Received incoming partial response for unknown message ID %d", &v10, 0x12u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_processIncomingResponse:(id)a3
{
  *&v36[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 formattedDescription];
    *buf = 138543618;
    v34 = self;
    v35 = 2114;
    *v36 = v6;
    _os_log_impl(&dword_22392A000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <--- %{public}@", buf, 0x16u);
  }

  v7 = [objc_alloc(MEMORY[0x277CEA460]) initWithATPMessage:v4];
  sentRequestsByID = self->_sentRequestsByID;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "messageID")}];
  v10 = [(NSMutableDictionary *)sentRequestsByID objectForKey:v9];

  if (v10)
  {
    v11 = self->_sentRequestsByID;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "messageID")}];
    [(NSMutableDictionary *)v11 removeObjectForKey:v12];

    receivedResponsesByID = self->_receivedResponsesByID;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "messageID")}];
    [(NSMutableDictionary *)receivedResponsesByID setObject:v7 forKey:v14];

    if ([v4 additionalPayload])
    {
      v15 = [objc_alloc(MEMORY[0x277D27F28]) initWithQueue:self->_queue];
      [v15 setCompressed:{(objc_msgSend(v7, "options") >> 1) & 1}];
      v16 = [v15 inputStream];
      [v7 setDataStream:v16];

      responseWritersByID = self->_responseWritersByID;
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "messageID")}];
      [(NSMutableDictionary *)responseWritersByID setObject:v15 forKey:v18];

      [v15 start];
      v19 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v4 messageID];
        v21 = [v15 isCompressed];
        *buf = 138543874;
        v34 = self;
        v35 = 1024;
        *v36 = v20;
        v36[2] = 1024;
        *&v36[3] = v21;
        _os_log_impl(&dword_22392A000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Opened data stream for response ID %d, isCompressed=%{BOOL}u", buf, 0x18u);
      }
    }

    completionHandlersByRequestID = self->_completionHandlersByRequestID;
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "messageID")}];
    v24 = [(NSMutableDictionary *)completionHandlersByRequestID objectForKey:v23];

    if (v24)
    {
      v25 = self->_completionHandlersByRequestID;
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "messageID")}];
      [(NSMutableDictionary *)v25 removeObjectForKey:v26];

      callbackQueue = self->_callbackQueue;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __50__ATConcreteMessageLink__processIncomingResponse___block_invoke;
      v30[3] = &unk_2784E91E8;
      v24 = v24;
      v32 = v24;
      v31 = v7;
      dispatch_async(callbackQueue, v30);
    }
  }

  else
  {
    v24 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v7 messageID];
      *buf = 138543618;
      v34 = self;
      v35 = 1024;
      *v36 = v28;
      _os_log_impl(&dword_22392A000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Received incoming response for unknown message ID %d", buf, 0x12u);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_processIncomingDataRequest:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 formattedDescription];
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    _os_log_impl(&dword_22392A000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <--- %{public}@", buf, 0x16u);
  }

  receivedRequestsByID = self->_receivedRequestsByID;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "messageID")}];
  v9 = [(NSMutableDictionary *)receivedRequestsByID objectForKey:v8];

  if (!v9)
  {
    goto LABEL_10;
  }

  if (!self->_signatureProvider)
  {
    goto LABEL_10;
  }

  if (([v9 options] & 1) == 0)
  {
    goto LABEL_10;
  }

  signatureProvider = self->_signatureProvider;
  v11 = [v4 payloadSignature];
  v12 = [v4 payload];
  v13 = [(ATSignatureProvider *)signatureProvider verifySignature:v11 forData:v12];

  if (!v13)
  {
LABEL_10:
    requestWritersByID = self->_requestWritersByID;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v4, "messageID")}];
    v13 = [(NSMutableDictionary *)requestWritersByID objectForKey:v16];

    if (!v13 || [(ATConcreteMessageLink *)self _isWriterPendingStopForforMessage:v4])
    {
      goto LABEL_26;
    }

    if ([v4 hasPayload])
    {
      v17 = [v4 payload];
      v38 = 0;
      v18 = [v13 writeAllData:v17 error:&v38];
      v19 = v38;

      if ((v18 & 1) == 0)
      {
        v20 = _ATLogCategoryFramework();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = [v4 messageID];
          *buf = 138544130;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v19;
          v40 = 2048;
          v41 = *&v13;
          v42 = 1024;
          LODWORD(v43) = v21;
          _os_log_impl(&dword_22392A000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Error=%{public}@ writing to data stream, stopping %p for request=%u", buf, 0x26u);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v19 = 0;
    }

    if ([v4 additionalPayload])
    {
LABEL_25:

      goto LABEL_26;
    }

    Current = CFAbsoluteTimeGetCurrent();
    [v13 timestamp];
    v24 = v23;
    v25 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = Current - v24;
      v27 = [v13 bytesWritten];
      v28 = [v13 bytesWritten] / v26;
      v29 = [v4 messageID];
      *buf = 138544386;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v27;
      v40 = 2048;
      v41 = v26;
      v42 = 2048;
      v43 = v28;
      v44 = 1024;
      v45 = v29;
      _os_log_impl(&dword_22392A000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished streaming %llu bytes in %.2f seconds (%.2f b/s) for request %u", buf, 0x30u);
    }

    if ([v4 hasStreamError])
    {
      *&buf[8] = 0;
      v30 = [v4 streamError];
      *buf = [v30 domainCode];
      v31 = [v4 streamError];
      *&buf[8] = [v31 code];

      v32 = [v4 messageID];
      v33 = [v4 messageType];
      v34 = buf;
      v35 = self;
      v36 = v13;
LABEL_24:
      [(ATConcreteMessageLink *)v35 _stopWriter:v36 byInjectingStreamError:v34 forMessageId:v32 type:v33];
      goto LABEL_25;
    }

LABEL_23:
    v32 = [v4 messageID];
    v33 = [v4 messageType];
    v35 = self;
    v36 = v13;
    v34 = 0;
    goto LABEL_24;
  }

  v14 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    _os_log_impl(&dword_22392A000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Failed to verify payload signature: %{public}@", buf, 0x16u);
  }

  [(ATConcreteMessageLink *)self close];
LABEL_26:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_processIncomingRequest:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 formattedDescription];
    *buf = 138543618;
    v38 = self;
    v39 = 2114;
    *v40 = v6;
    _os_log_impl(&dword_22392A000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <--- %{public}@", buf, 0x16u);
  }

  v7 = [objc_alloc(MEMORY[0x277CEA458]) initWithATPMessage:v4];
  [v7 setTimestamp:CFAbsoluteTimeGetCurrent()];
  receivedRequestsByID = self->_receivedRequestsByID;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "messageID")}];
  [(NSMutableDictionary *)receivedRequestsByID setObject:v7 forKey:v9];

  requestHandlersByDataClass = self->_requestHandlersByDataClass;
  v11 = [v7 dataClass];
  v12 = [(NSMutableDictionary *)requestHandlersByDataClass objectForKey:v11];

  if (v12)
  {
    if ([v4 additionalPayload])
    {
      v13 = [objc_alloc(MEMORY[0x277D27F28]) initWithQueue:self->_queue];
      [v13 setCompressed:{(objc_msgSend(v7, "options") >> 1) & 1}];
      [v13 start];
      v14 = [v13 inputStream];
      [v7 setDataStream:v14];

      requestWritersByID = self->_requestWritersByID;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "messageID")}];
      [(NSMutableDictionary *)requestWritersByID setObject:v13 forKey:v16];

      v17 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v4 messageID];
        v19 = [v13 isCompressed];
        *buf = 138543874;
        v38 = self;
        v39 = 1024;
        *v40 = v18;
        *&v40[4] = 1024;
        *&v40[6] = v19;
        _os_log_impl(&dword_22392A000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Opened data stream for request ID %d, isCompressed=%{BOOL}u", buf, 0x18u);
      }
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __49__ATConcreteMessageLink__processIncomingRequest___block_invoke_64;
    v33[3] = &unk_2784E92D8;
    v34 = v12;
    v35 = self;
    v20 = MEMORY[0x223DED9F0](v33);
    v21 = v20;
    if (self->_initialized)
    {
      callbackQueue = self->_callbackQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__ATConcreteMessageLink__processIncomingRequest___block_invoke_2;
      block[3] = &unk_2784E91E8;
      v32 = v20;
      v31 = v7;
      dispatch_async(callbackQueue, block);
    }

    else
    {
      (v20)[2](v20, v7);
    }
  }

  else
  {
    v23 = [v7 command];
    v24 = [v23 isEqualToString:@"Ping"];

    if (v24)
    {
      v25 = [v7 responseWithError:0 parameters:0];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __49__ATConcreteMessageLink__processIncomingRequest___block_invoke;
      v36[3] = &unk_2784E9430;
      v36[4] = self;
      [(ATConcreteMessageLink *)self sendResponse:v25 withCompletion:v36];
    }

    else
    {
      v26 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v7 dataClass];
        *buf = 138543618;
        v38 = self;
        v39 = 2114;
        *v40 = v27;
        _os_log_impl(&dword_22392A000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Dropping message for unhandled dataclass %{public}@", buf, 0x16u);
      }

      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:21 userInfo:0];
      v28 = [v7 responseWithError:v25 parameters:0];
      [(ATConcreteMessageLink *)self sendResponse:v28 withCompletion:&__block_literal_global_1456];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __49__ATConcreteMessageLink__processIncomingRequest___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_ERROR, "%{public}@ failed to send ping response. error=%{public}@", &v7, 0x16u);
    }

    [*(a1 + 32) close];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_processIncomingMessage:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__ATConcreteMessageLink__processIncomingMessage___block_invoke;
  v7[3] = &unk_2784E9608;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __49__ATConcreteMessageLink__processIncomingMessage___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 208);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = [*(a1 + 40) paramsSignature];
  v4 = [*(a1 + 40) parameters];
  v5 = [v2 verifySignature:v3 forData:v4];

  if (!v5)
  {
LABEL_6:
    v8 = objc_autoreleasePoolPush();
    v9 = [*(a1 + 40) messageType];
    v10 = v9;
    if (v9 <= 1)
    {
      if (!v9)
      {
        [*(a1 + 32) _processIncomingRequest:*(a1 + 40)];
        goto LABEL_20;
      }

      if (v9 == 1)
      {
        [*(a1 + 32) _processIncomingResponse:*(a1 + 40)];
        goto LABEL_20;
      }
    }

    else
    {
      switch(v9)
      {
        case 2:
          [*(a1 + 32) _processIncomingPartialResponse:*(a1 + 40)];
          goto LABEL_20;
        case 3:
          [*(a1 + 32) _processIncomingDataRequest:*(a1 + 40)];
          goto LABEL_20;
        case 4:
          [*(a1 + 32) _processIncomingDataResponse:*(a1 + 40)];
LABEL_20:
          objc_autoreleasePoolPop(v8);
          goto LABEL_21;
      }
    }

    v11 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v14 = 138543618;
      v15 = v12;
      v16 = 1024;
      LODWORD(v17) = v10;
      _os_log_impl(&dword_22392A000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Received message with unknown type %d", &v14, 0x12u);
    }

    goto LABEL_20;
  }

  v6 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v14 = 138543618;
    v15 = v7;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_22392A000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to verify params signature: %{public}@", &v14, 0x16u);
  }

  [*(a1 + 32) close];
LABEL_21:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_invokeCompletionHandlerForResponseID:(unint64_t)a3 withError:(id)a4
{
  v6 = a4;
  completionHandlersByResponseID = self->_completionHandlersByResponseID;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)completionHandlersByResponseID objectForKey:v8];

  if (v9)
  {
    v10 = self->_completionHandlersByResponseID;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v10 removeObjectForKey:v11];

    callbackQueue = self->_callbackQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__ATConcreteMessageLink__invokeCompletionHandlerForResponseID_withError___block_invoke;
    v13[3] = &unk_2784E91E8;
    v15 = v9;
    v14 = v6;
    dispatch_async(callbackQueue, v13);
  }
}

- (void)_prepareStreamReaderForMessage:(id)a3 withProgress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277D27F20]);
  v9 = [v6 dataStream];
  v10 = [v8 initWithInputStream:v9 queue:self->_queue];

  [v10 setMaximumBufferSize:{-[ATSocket suggestedBufferSize](self->_socket, "suggestedBufferSize")}];
  [v10 setCompress:{(objc_msgSend(v6, "options") >> 1) & 1}];
  v11 = [v6 messageID];
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 1;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  objc_initWeak(&location, v10);
  objc_initWeak(&from, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __69__ATConcreteMessageLink__prepareStreamReaderForMessage_withProgress___block_invoke;
  v26[3] = &unk_2784E9238;
  objc_copyWeak(&v31, &from);
  objc_copyWeak(v32, &location);
  v29 = v37;
  v12 = v6;
  v27 = v12;
  v30 = v35;
  v32[1] = v11;
  v13 = v7;
  v28 = v13;
  [v10 setDidReadDataBlock:v26];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__ATConcreteMessageLink__prepareStreamReaderForMessage_withProgress___block_invoke_54;
  v21[3] = &unk_2784E9288;
  objc_copyWeak(v25, &from);
  v23 = v37;
  v25[1] = v11;
  v14 = v12;
  v22 = v14;
  v24 = v35;
  [v10 setDidEncounterErrorBlock:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__ATConcreteMessageLink__prepareStreamReaderForMessage_withProgress___block_invoke_2;
  v18[3] = &unk_2784E92B0;
  objc_copyWeak(v20, &from);
  v20[1] = v11;
  v15 = v14;
  v19 = v15;
  [v10 setDidFinishReadingBlock:v18];
  streamReadersByID = self->_streamReadersByID;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
  [(NSMutableDictionary *)streamReadersByID setObject:v10 forKey:v17];

  [v10 start];
  objc_destroyWeak(v20);

  objc_destroyWeak(v25);
  objc_destroyWeak(v32);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v37, 8);
}

void __69__ATConcreteMessageLink__prepareStreamReaderForMessage_withProgress___block_invoke(uint64_t a1, void *a2)
{
  *&v22[13] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  dispatch_assert_queue_V2(WeakRetained[18]);
  v5 = objc_loadWeakRetained((a1 + 72));
  if (v5 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v6 = [*(a1 + 32) ATPMessageWithPayloadData:v3];
    [v6 setAdditionalPayload:1];
    if (WeakRetained[26] && [v3 length] && (objc_msgSend(*(a1 + 32), "options") & 1) != 0)
    {
      v7 = WeakRetained[26];
      v18 = 0;
      v8 = [v7 createSignature:&v18 forData:v3];
      v9 = v18;
      if (v8)
      {
        v10 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v20 = WeakRetained;
          v21 = 2114;
          *v22 = v8;
          _os_log_impl(&dword_22392A000, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create signature for payload data: %{public}@", buf, 0x16u);
        }

        goto LABEL_18;
      }

      [v6 setPayloadSignature:v9];
    }

    v17 = 0;
    v12 = [(dispatch_queue_t *)WeakRetained _sendMessage:v6 error:&v17];
    v8 = v17;
    if (v12)
    {
      v13 = *(a1 + 40);
      if (v13)
      {
        (*(v13 + 16))(v13, [v3 length]);
      }

      goto LABEL_19;
    }

    v9 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 80);
      *buf = 138543874;
      v20 = WeakRetained;
      v21 = 1024;
      *v22 = v14;
      v22[2] = 2114;
      *&v22[3] = v8;
      _os_log_impl(&dword_22392A000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to send data for message ID %d: %{public}@", buf, 0x1Cu);
    }

LABEL_18:

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v15 = [v5 didEncounterErrorBlock];
    (v15)[2](v15, v8);

LABEL_19:
    goto LABEL_20;
  }

  v6 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 80);
    *buf = 138543618;
    v20 = WeakRetained;
    v21 = 1024;
    *v22 = v11;
    _os_log_impl(&dword_22392A000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Not processing message id %d", buf, 0x12u);
  }

LABEL_20:

  v16 = *MEMORY[0x277D85DE8];
}

void __69__ATConcreteMessageLink__prepareStreamReaderForMessage_withProgress___block_invoke_54(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  dispatch_assert_queue_V2(WeakRetained[18]);
  *(*(*(a1 + 40) + 8) + 24) = 0;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 64);
    *buf = 138543874;
    v34 = WeakRetained;
    v35 = 1024;
    *v36 = v6;
    *&v36[4] = 2114;
    *&v36[6] = v3;
    _os_log_impl(&dword_22392A000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Did encounter error reading input stream for message ID %d: %{public}@", buf, 0x1Cu);
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CBEA90] data];
  v9 = [v7 ATPMessageWithPayloadData:v8];

  v10 = objc_alloc_init(ATPError);
  [v9 setStreamError:v10];

  v11 = [v3 code];
  v12 = [v9 streamError];
  [v12 setCode:v11];

  v13 = [v9 streamError];
  [v13 setDomainCode:-1];

  v32 = 0;
  LODWORD(v12) = [(dispatch_queue_t *)WeakRetained _sendMessage:v9 error:&v32];
  v14 = v32;
  [(dispatch_queue_t *)WeakRetained _invokeCompletionHandlerForResponseID:*(a1 + 64) withError:v14];
  if (v12 && *(*(*(a1 + 48) + 8) + 24) != 1)
  {
    v18 = WeakRetained[14];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
    LOBYTE(v18) = [v18 containsObject:v19];

    if ((v18 & 1) == 0)
    {
      v20 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 64);
        *buf = 138543618;
        v34 = WeakRetained;
        v35 = 1024;
        *v36 = v21;
        _os_log_impl(&dword_22392A000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueuing stop for message %d", buf, 0x12u);
      }

      v22 = WeakRetained[14];
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
      [v22 addObject:v23];

      v24 = WeakRetained[11];
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
      v26 = [v24 objectForKey:v25];

      if (v26)
      {
        dispatch_group_enter(WeakRetained[21]);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __69__ATConcreteMessageLink__prepareStreamReaderForMessage_withProgress___block_invoke_56;
        v29[3] = &unk_2784E9260;
        v27 = WeakRetained;
        v28 = *(a1 + 64);
        v30 = v27;
        v31 = v28;
        [v26 stopWithCompletion:v29];
      }
    }
  }

  else
  {
    v15 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 138543874;
      v34 = WeakRetained;
      v35 = 2114;
      *v36 = v14;
      *&v36[8] = 1024;
      *&v36[10] = v16;
      _os_log_impl(&dword_22392A000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Failed to send message: %{public}@, shouldCloseMessageLink %d", buf, 0x1Cu);
    }

    [(dispatch_queue_t *)WeakRetained close];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __69__ATConcreteMessageLink__prepareStreamReaderForMessage_withProgress___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  dispatch_assert_queue_V2(WeakRetained[18]);
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 138543618;
    v16 = WeakRetained;
    v17 = 1024;
    LODWORD(v18) = v4;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Did finish reading input stream for message ID %d", buf, 0x12u);
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CBEA90] data];
  v7 = [v5 ATPMessageWithPayloadData:v6];

  v14 = 0;
  v8 = [(dispatch_queue_t *)WeakRetained _sendMessage:v7 error:&v14];
  v9 = v14;
  [(dispatch_queue_t *)WeakRetained _invokeCompletionHandlerForResponseID:*(a1 + 48) withError:v9];
  v10 = WeakRetained[11];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  [v10 removeObjectForKey:v11];

  if ((v8 & 1) == 0)
  {
    v12 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = WeakRetained;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_22392A000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to send message: %{public}@", buf, 0x16u);
    }

    [(dispatch_queue_t *)WeakRetained close];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __69__ATConcreteMessageLink__prepareStreamReaderForMessage_withProgress___block_invoke_56(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 144));
  v2 = *(*(a1 + 32) + 112);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  [v2 removeObject:v3];

  v4 = *(*(a1 + 32) + 88);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  [v4 removeObjectForKey:v5];

  v6 = *(*(a1 + 32) + 168);

  dispatch_group_leave(v6);
}

- (void)socket:(id)a3 hasDataAvailable:(const char *)a4 length:(int64_t)a5
{
  v9 = a3;
  self->_lastActivityTime = CFAbsoluteTimeGetCurrent();
  v8 = objc_autoreleasePoolPush();
  [(ATMessageParser *)self->_parser processData:a4 length:a5];
  objc_autoreleasePoolPop(v8);
}

- (void)socketDidClose:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Underlying socket closed", &v6, 0xCu);
  }

  [(ATConcreteMessageLink *)self close];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeTimeoutException
{
  v13 = *MEMORY[0x277D85DE8];
  idleTimeoutExceptionCount = self->_idleTimeoutExceptionCount;
  if (idleTimeoutExceptionCount <= 0)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ATConcreteMessageLink.m" lineNumber:510 description:@"timeout exception already at 0!"];

    idleTimeoutExceptionCount = self->_idleTimeoutExceptionCount;
  }

  self->_idleTimeoutExceptionCount = idleTimeoutExceptionCount - 1;
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = self->_idleTimeoutExceptionCount;
    v9 = 138543618;
    v10 = self;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing idleTimeoutException - count %d", &v9, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addTimeoutException
{
  v10 = *MEMORY[0x277D85DE8];
  ++self->_idleTimeoutExceptionCount;
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    idleTimeoutExceptionCount = self->_idleTimeoutExceptionCount;
    v6 = 138543618;
    v7 = self;
    v8 = 1024;
    v9 = idleTimeoutExceptionCount;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding idleTimeoutException - count %d", &v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ATConcreteMessageLink *)self endpointType];
  v7 = [(ATConcreteMessageLink *)self isOpen];
  v8 = [(ATConcreteMessageLink *)self identifier];
  v9 = [v3 stringWithFormat:@"<%@: %p, type=%d, open=%d identifier=%@>", v5, self, v6, v7, v8];

  return v9;
}

- (void)sendPartialResponse:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ATConcreteMessageLink_sendPartialResponse_withCompletion___block_invoke;
  block[3] = &unk_2784E96A8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __60__ATConcreteMessageLink_sendPartialResponse_withCompletion___block_invoke(id *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (*(v2 + 185))
  {
    v3 = v2[5];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a1[5], "messageID")}];
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      v6 = [a1[5] ATPMessage];
      v7 = v6;
      v8 = *(a1[4] + 26);
      if (v8 && (v28 = 0, -[NSObject parameters](v6, "parameters"), v9 = objc_claimAutoreleasedReturnValue(), [v8 createSignature:&v28 forData:v9], v10 = objc_claimAutoreleasedReturnValue(), v8 = v28, v9, v10))
      {
        v11 = _ATLogCategoryFramework();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = a1[4];
          *buf = 138543618;
          v30 = v12;
          v31 = 2114;
          v32 = v10;
          _os_log_impl(&dword_22392A000, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to sign response params: %{public}@", buf, 0x16u);
        }

        [a1[4] close];
      }

      else
      {
        [v7 setParamsSignature:v8];
        v17 = a1[4];
        v27 = 0;
        [v17 _sendMessage:v7 error:&v27];
        v10 = v27;
      }

      v18 = *(a1[4] + 19);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __60__ATConcreteMessageLink_sendPartialResponse_withCompletion___block_invoke_44;
      v24[3] = &unk_2784E91E8;
      v19 = a1[6];
      v25 = v10;
      v26 = v19;
      v20 = v10;
      dispatch_async(v18, v24);
    }

    else
    {
      v7 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v21 = a1[4];
        v22 = [a1[5] messageID];
        *buf = 138543618;
        v30 = v21;
        v31 = 1024;
        LODWORD(v32) = v22;
        _os_log_impl(&dword_22392A000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Received outgoing response for unknown message ID %d", buf, 0x12u);
      }
    }

    goto LABEL_17;
  }

  v13 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = a1[4];
    v15 = a1[5];
    *buf = 138543618;
    v30 = v14;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&dword_22392A000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Not sending partial response %{public}@ as the link is closed", buf, 0x16u);
  }

  v16 = a1[6];
  if (v16)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:8 userInfo:0];
    v16[2](v16, v5);
LABEL_17:
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t __60__ATConcreteMessageLink_sendPartialResponse_withCompletion___block_invoke_44(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)sendResponse:(id)a3 withProgress:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__ATConcreteMessageLink_sendResponse_withProgress_completion___block_invoke;
  v15[3] = &unk_2784E9210;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __62__ATConcreteMessageLink_sendResponse_withProgress_completion___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 185))
  {
    v3 = *(v2 + 40);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "messageID")}];
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      v6 = *(a1 + 48);
      if (v6)
      {
        v7 = *(*(a1 + 32) + 64);
        v8 = [v6 copy];
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "messageID")}];
        [v7 setObject:v8 forKey:v9];
      }

      v10 = [*(a1 + 40) ATPMessage];
      v11 = [*(a1 + 40) dataStream];

      if (v11)
      {
        [*(a1 + 32) _prepareStreamReaderForMessage:*(a1 + 40) withProgress:*(a1 + 56)];
        v12 = [MEMORY[0x277CBEA90] data];
        [v10 setPayload:v12];

        [v10 setAdditionalPayload:1];
      }

      v13 = *(*(a1 + 32) + 208);
      if (v13 && (v42 = 0, [v10 parameters], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "createSignature:forData:", &v42, v14), v15 = objc_claimAutoreleasedReturnValue(), v13 = v42, v14, v15))
      {
        v16 = _ATLogCategoryFramework();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 32);
          *buf = 138543618;
          v44 = v17;
          v45 = 2114;
          v46 = v15;
          _os_log_impl(&dword_22392A000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to sign response params: %{public}@", buf, 0x16u);
        }

        [*(a1 + 32) close];
      }

      else
      {
        [v10 setParamsSignature:v13];
        v22 = *(a1 + 32);
        v41 = 0;
        v23 = [v22 _sendMessage:v10 error:&v41];
        v15 = v41;
        if ((v23 & 1) == 0)
        {
          v24 = _ATLogCategoryFramework();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = *(a1 + 32);
            v26 = [v10 formattedDescription];
            *buf = 138543874;
            v44 = v25;
            v45 = 2114;
            v46 = v26;
            v47 = 2114;
            v48 = v15;
            _os_log_impl(&dword_22392A000, v24, OS_LOG_TYPE_ERROR, "%{public}@ Failed to send response %{public}@. err=%{public}@", buf, 0x20u);
          }
        }
      }

      v27 = *(*(a1 + 32) + 40);
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "messageID")}];
      [v27 removeObjectForKey:v28];

      v29 = [*(a1 + 40) dataStream];

      if (!v29 || v15)
      {
        v30 = *(*(a1 + 32) + 64);
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "messageID")}];
        [v30 removeObjectForKey:v31];

        v32 = *(*(a1 + 32) + 152);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __62__ATConcreteMessageLink_sendResponse_withProgress_completion___block_invoke_43;
        v38[3] = &unk_2784E91E8;
        v40 = *(a1 + 48);
        v39 = v15;
        dispatch_async(v32, v38);
      }
    }

    else
    {
      v33 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = *(a1 + 32);
        v35 = [*(a1 + 40) messageID];
        *buf = 138543618;
        v44 = v34;
        v45 = 1024;
        LODWORD(v46) = v35;
        _os_log_impl(&dword_22392A000, v33, OS_LOG_TYPE_ERROR, "%{public}@ Received outgoing response for unknown message ID %d", buf, 0x12u);
      }

      v36 = *(a1 + 48);
      if (!v36)
      {
        v5 = 0;
        goto LABEL_29;
      }

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:23 userInfo:0];
      (*(v36 + 16))(v36, v10);
    }

LABEL_29:
    goto LABEL_30;
  }

  v18 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    *buf = 138543618;
    v44 = v19;
    v45 = 2114;
    v46 = v20;
    _os_log_impl(&dword_22392A000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Not sending response %{public}@ as the link is closed", buf, 0x16u);
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:8 userInfo:0];
    (*(v21 + 16))(v21, v5);
    goto LABEL_29;
  }

LABEL_30:
  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __62__ATConcreteMessageLink_sendResponse_withProgress_completion___block_invoke_43(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)sendRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ATConcreteMessageLink_sendRequest_withCompletion___block_invoke;
  block[3] = &unk_2784E96A8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __52__ATConcreteMessageLink_sendRequest_withCompletion___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[185])
  {
    [*(a1 + 40) setMessageID:{objc_msgSend(v2, "_nextRequestID")}];
    v3 = [*(a1 + 40) ATPMessage];
    v4 = [*(a1 + 40) dataStream];

    if (v4)
    {
      [*(a1 + 32) _prepareStreamReaderForMessage:*(a1 + 40) withProgress:0];
      v5 = [MEMORY[0x277CBEA90] data];
      [v3 setPayload:v5];

      [v3 setAdditionalPayload:1];
    }

    v6 = *(*(a1 + 32) + 208);
    if (v6 && (v33 = 0, [v3 parameters], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "createSignature:forData:", &v33, v7), v8 = objc_claimAutoreleasedReturnValue(), v6 = v33, v7, v8))
    {
      v9 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        *buf = 138543618;
        v35 = v10;
        v36 = 2114;
        v37 = v8;
        _os_log_impl(&dword_22392A000, v9, OS_LOG_TYPE_ERROR, "%{public}@ Failed to sign request params: %{public}@", buf, 0x16u);
      }

      [*(a1 + 32) close];
    }

    else
    {
      [v3 setParamsSignature:v6];
      [*(a1 + 40) setTimestamp:CFAbsoluteTimeGetCurrent()];
      v15 = *(a1 + 32);
      v32 = 0;
      v16 = [v15 _sendMessage:v3 error:&v32];
      v8 = v32;
      if (v16)
      {
        v17 = *(a1 + 48);
        if (v17)
        {
          v18 = *(*(a1 + 32) + 56);
          v19 = [v17 copy];
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(*(a1 + 40), "messageID")}];
          [v18 setObject:v19 forKey:v20];
        }

        v21 = *(a1 + 40);
        v22 = *(*(a1 + 32) + 32);
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v21, "messageID")}];
        [v22 setObject:v21 forKey:v23];
      }

      else
      {
        v23 = _ATLogCategoryFramework();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = *(a1 + 32);
          v25 = [v3 formattedDescription];
          *buf = 138543874;
          v35 = v24;
          v36 = 2114;
          v37 = v25;
          v38 = 2114;
          v39 = v8;
          _os_log_impl(&dword_22392A000, v23, OS_LOG_TYPE_ERROR, "%{public}@ Failed to send request %{public}@. err=%{public}@", buf, 0x20u);
        }
      }

      if (!v8)
      {
        goto LABEL_22;
      }
    }

    v26 = *(a1 + 48);
    if (v26)
    {
      v27 = *(*(a1 + 32) + 152);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __52__ATConcreteMessageLink_sendRequest_withCompletion___block_invoke_42;
      v29[3] = &unk_2784E91E8;
      v31 = v26;
      v8 = v8;
      v30 = v8;
      dispatch_async(v27, v29);
    }

LABEL_22:

    goto LABEL_23;
  }

  v11 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    *buf = 138543618;
    v35 = v12;
    v36 = 2114;
    v37 = v13;
    _os_log_impl(&dword_22392A000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Not sending request %{public}@ as the link is closed", buf, 0x16u);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:8 userInfo:0];
    (*(v14 + 16))(v14, 0, v3);
LABEL_23:
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)setInitialized:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  if (self->_initialized)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"ATConcreteMessageLink.m" lineNumber:340 description:@"we should not be initializing twice"];
  }

  self->_initialized = v3;
  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(ATConcreteMessageLink *)self _getObservers];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 messageLinkWasInitialized:self];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  handlerAccessQueue = self->_handlerAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ATConcreteMessageLink_removeObserver___block_invoke;
  v7[3] = &unk_2784E9608;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(handlerAccessQueue, v7);
}

void __40__ATConcreteMessageLink_removeObserver___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 128) removeObject:*(a1 + 40)];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Removed observer %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  handlerAccessQueue = self->_handlerAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ATConcreteMessageLink_addObserver___block_invoke;
  v7[3] = &unk_2784E9608;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(handlerAccessQueue, v7);
}

void __37__ATConcreteMessageLink_addObserver___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 128) addObject:*(a1 + 40)];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Added observer %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeRequestHandlerForDataClass:(id)a3
{
  v4 = a3;
  handlerAccessQueue = self->_handlerAccessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ATConcreteMessageLink_removeRequestHandlerForDataClass___block_invoke;
  v7[3] = &unk_2784E9608;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(handlerAccessQueue, v7);
}

void __58__ATConcreteMessageLink_removeRequestHandlerForDataClass___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 120) removeObjectForKey:*(a1 + 40)];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Removed request for dataclass %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)addRequestHandler:(id)a3 forDataClass:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerAccessQueue = self->_handlerAccessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ATConcreteMessageLink_addRequestHandler_forDataClass___block_invoke;
  block[3] = &unk_2784E9568;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(handlerAccessQueue, block);
}

void __56__ATConcreteMessageLink_addRequestHandler_forDataClass___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1[4] + 120) setObject:a1[5] forKey:a1[6]];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Registered request handler %{public}@ for dataclass %{public}@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__ATConcreteMessageLink_close__block_invoke;
  block[3] = &unk_2784E94D0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __30__ATConcreteMessageLink_close__block_invoke(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 136);
    *(v4 + 136) = 0;

    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 185);
  v7 = _ATLogCategoryFramework();
  v8 = v7;
  if (v6 == 1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543362;
      v84 = v9;
      _os_log_impl(&dword_22392A000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Closing ...", buf, 0xCu);
    }

    *(*(a1 + 32) + 185) = 0;
    if ([*(*(a1 + 32) + 32) count] || objc_msgSend(*(*(a1 + 32) + 40), "count"))
    {
      v10 = _ATLogCategoryFramework();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = [*(v11 + 32) count];
        v13 = [*(*(a1 + 32) + 40) count];
        *buf = 138543874;
        v84 = v11;
        v85 = 2048;
        v86 = v12;
        v87 = 2048;
        v88 = v13;
        _os_log_impl(&dword_22392A000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Abandoning %lu sent and %lu received messages", buf, 0x20u);
      }
    }

    [*(*(a1 + 32) + 32) removeAllObjects];
    [*(*(a1 + 32) + 40) removeAllObjects];
    [*(*(a1 + 32) + 8) removeDelegate:?];
    if ([*(*(a1 + 32) + 8) isOpen])
    {
      [*(*(a1 + 32) + 8) close];
    }

    v14 = *(a1 + 32);
    v15 = *(v14 + 8);
    *(v14 + 8) = 0;

    v16 = _ATLogCategoryFramework_Oversize();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = *(v17 + 88);
      *buf = 138543618;
      v84 = v17;
      v85 = 2114;
      v86 = v18;
      _os_log_impl(&dword_22392A000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ _streamReadersByID=%{public}@", buf, 0x16u);
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v19 = 88;
    v20 = [*(*(a1 + 32) + 88) allKeys];
    v21 = [v20 countByEnumeratingWithState:&v76 objects:v82 count:16];
    if (v21)
    {
      v23 = v21;
      v24 = *v77;
      v25 = &OBJC_IVAR___ATSocket__descriptor;
      *&v22 = 138543618;
      v62 = v22;
      do
      {
        v26 = 0;
        v63 = v23;
        do
        {
          if (*v77 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v76 + 1) + 8 * v26);
          v28 = v25[71];
          if (([*(*(a1 + 32) + v28) containsObject:{v27, v62}] & 1) == 0)
          {
            v29 = _ATLogCategoryFramework();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = v24;
              v31 = v25;
              v32 = v20;
              v33 = v19;
              v34 = *(a1 + 32);
              v35 = [v27 integerValue];
              *buf = v62;
              v84 = v34;
              v19 = v33;
              v20 = v32;
              v25 = v31;
              v24 = v30;
              v23 = v63;
              v85 = 1024;
              LODWORD(v86) = v35;
              _os_log_impl(&dword_22392A000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueuing stop for message %d", buf, 0x12u);
            }

            v36 = [*(*(a1 + 32) + v19) objectForKey:v27];
            if (v36)
            {
              [*(*(a1 + 32) + v28) addObject:v27];
              dispatch_group_enter(*(*(a1 + 32) + 168));
              v75[0] = MEMORY[0x277D85DD0];
              v75[1] = 3221225472;
              v75[2] = __30__ATConcreteMessageLink_close__block_invoke_23;
              v75[3] = &unk_2784E9608;
              v75[4] = *(a1 + 32);
              v75[5] = v27;
              [v36 stopWithCompletion:v75];
            }
          }

          ++v26;
        }

        while (v23 != v26);
        v23 = [v20 countByEnumeratingWithState:&v76 objects:v82 count:16];
      }

      while (v23);
    }

    v74 = xmmword_22394E560;
    v37 = _ATLogCategoryFramework_Oversize();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(a1 + 32);
      v39 = *(v38 + 72);
      *buf = 138543618;
      v84 = v38;
      v85 = 2114;
      v86 = v39;
      _os_log_impl(&dword_22392A000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ _requestWritersByID=%{public}@", buf, 0x16u);
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v40 = [*(*(a1 + 32) + 72) allKeys];
    v41 = [v40 countByEnumeratingWithState:&v70 objects:v81 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v71;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v71 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v70 + 1) + 8 * i);
          v46 = [*(*(a1 + 32) + 72) objectForKey:v45];
          [*(a1 + 32) _stopWriter:v46 byInjectingStreamError:&v74 forMessageId:objc_msgSend(v45 type:{"unsignedIntValue"), 0}];
        }

        v42 = [v40 countByEnumeratingWithState:&v70 objects:v81 count:16];
      }

      while (v42);
    }

    v47 = _ATLogCategoryFramework_Oversize();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *(a1 + 32);
      v49 = *(v48 + 80);
      *buf = 138543618;
      v84 = v48;
      v85 = 2114;
      v86 = v49;
      _os_log_impl(&dword_22392A000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ _responseWritersByID=%{public}@", buf, 0x16u);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v50 = [*(*(a1 + 32) + 80) allKeys];
    v51 = [v50 countByEnumeratingWithState:&v66 objects:v80 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v67;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v67 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v66 + 1) + 8 * j);
          v56 = [*(*(a1 + 32) + 80) objectForKey:v55];
          [*(a1 + 32) _stopWriter:v56 byInjectingStreamError:&v74 forMessageId:objc_msgSend(v55 type:{"unsignedIntValue"), 1}];
        }

        v52 = [v50 countByEnumeratingWithState:&v66 objects:v80 count:16];
      }

      while (v52);
    }

    objc_initWeak(buf, *(a1 + 32));
    v57 = *(a1 + 32);
    v58 = *(v57 + 168);
    v59 = *(v57 + 144);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__ATConcreteMessageLink_close__block_invoke_24;
    block[3] = &unk_2784E91C0;
    block[4] = v57;
    objc_copyWeak(&v65, buf);
    dispatch_group_notify(v58, v59, block);
    objc_destroyWeak(&v65);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v60 = *(a1 + 32);
      *buf = 138543362;
      v84 = v60;
      _os_log_impl(&dword_22392A000, v8, OS_LOG_TYPE_ERROR, "%{public}@ is already closed", buf, 0xCu);
    }
  }

  v61 = *MEMORY[0x277D85DE8];
}

void __30__ATConcreteMessageLink_close__block_invoke_23(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 144));
  [*(*(a1 + 32) + 112) removeObject:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 168);

  dispatch_group_leave(v2);
}

void __30__ATConcreteMessageLink_close__block_invoke_24(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 56) allValues];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v44;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v44 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v43 + 1) + 8 * i);
        v8 = *(*(a1 + 32) + 152);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __30__ATConcreteMessageLink_close__block_invoke_2;
        block[3] = &unk_2784E9198;
        block[4] = v7;
        dispatch_async(v8, block);
      }

      v4 = [v2 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v4);
  }

  v9 = [*(*(a1 + 32) + 64) allValues];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v38 + 1) + 8 * j);
        v15 = *(*(a1 + 32) + 152);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __30__ATConcreteMessageLink_close__block_invoke_3;
        v37[3] = &unk_2784E9198;
        v37[4] = v14;
        dispatch_async(v15, v37);
      }

      v11 = [v9 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v11);
  }

  [*(*(a1 + 32) + 56) removeAllObjects];
  [*(*(a1 + 32) + v31) removeAllObjects];
  [*(*(a1 + 32) + 24) removeAllObjects];
  v16 = [*(a1 + 32) _getObservers];
  v17 = *(a1 + 32);
  v18 = *(v17 + 160);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __30__ATConcreteMessageLink_close__block_invoke_4;
  v36[3] = &unk_2784E94D0;
  v36[4] = v17;
  dispatch_sync(v18, v36);
  v19 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    *buf = 138543362;
    v49 = v20;
    _os_log_impl(&dword_22392A000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ All stream readers and writers have been stopped", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = v16;
  v23 = [v22 countByEnumeratingWithState:&v32 objects:v47 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v32 + 1) + 8 * k);
        if (objc_opt_respondsToSelector())
        {
          [v27 messageLinkWasClosed:WeakRetained];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v32 objects:v47 count:16];
    }

    while (v24);
  }

  v28 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 32);
    *buf = 138543362;
    v49 = v29;
    _os_log_impl(&dword_22392A000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Wrapped up ...", buf, 0xCu);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __30__ATConcreteMessageLink_close__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [ATInternalError errorWithCode:3 format:@"message link closed"];
  (*(v1 + 16))(v1, 0, v2);
}

void __30__ATConcreteMessageLink_close__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [ATInternalError errorWithCode:3 format:@"message link closed"];
  (*(v1 + 16))(v1, v2);
}

uint64_t __30__ATConcreteMessageLink_close__block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 128) removeAllObjects];
  v2 = *(*(a1 + 32) + 120);

  return [v2 removeAllObjects];
}

- (BOOL)open
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__ATConcreteMessageLink_open__block_invoke;
  v5[3] = &unk_2784E94F8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __29__ATConcreteMessageLink_open__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 8) open];
  v2 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v5 = "without error";
    }

    else
    {
      v5 = "with error";
    }

    *buf = 138543874;
    v30 = v3;
    v31 = 2114;
    v32 = v4;
    v33 = 2080;
    v34 = v5;
    _os_log_impl(&dword_22392A000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Opened socket %{public}@ %s", buf, 0x20u);
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(a1 + 32) + 185) = 1;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [*(a1 + 32) _getObservers];
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        v10 = 0;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 messageLinkWasOpened:*(a1 + 32)];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v8);
    }

    v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 144));
    v13 = *(a1 + 32);
    v14 = *(v13 + 136);
    *(v13 + 136) = v12;

    v15 = *(*(a1 + 32) + 136);
    v16 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v15, v16, 0x37E11D600uLL, 0x3B9ACA00uLL);
    v17 = *(a1 + 32);
    v18 = *(v17 + 136);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __29__ATConcreteMessageLink_open__block_invoke_21;
    handler[3] = &unk_2784E94D0;
    handler[4] = v17;
    dispatch_source_set_event_handler(v18, handler);
    dispatch_resume(*(*(a1 + 32) + 136));
  }

  else
  {
    v19 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      v21 = *(v20 + 8);
      *buf = 138543618;
      v30 = v20;
      v31 = 2114;
      v32 = v21;
      _os_log_impl(&dword_22392A000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Failed to open socket %{public}@", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ getting dealloced", buf, 0xCu);
  }

  requestTimeoutTimer = self->_requestTimeoutTimer;
  if (requestTimeoutTimer)
  {
    dispatch_source_cancel(requestTimeoutTimer);
    v5 = self->_requestTimeoutTimer;
    self->_requestTimeoutTimer = 0;
  }

  socket = self->_socket;
  if (socket)
  {
    [(ATSocket *)socket removeDelegate:self];
    if ([(ATSocket *)self->_socket isOpen])
    {
      [(ATSocket *)self->_socket close];
    }

    v7 = self->_socket;
    self->_socket = 0;
  }

  v9.receiver = self;
  v9.super_class = ATConcreteMessageLink;
  [(ATConcreteMessageLink *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (ATConcreteMessageLink)initWithSocket:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v49 = [MEMORY[0x277CCA890] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"ATConcreteMessageLink.m" lineNumber:117 description:@"socket is nil"];
  }

  v56.receiver = self;
  v56.super_class = ATConcreteMessageLink;
  v7 = [(ATMessageLink *)&v56 init];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];
    guid = v7->_guid;
    v7->_guid = v9;

    v11 = dispatch_queue_create("com.apple.amp.AirTraffic.ATFoundation.ATConcreteMessageLink.queue", 0);
    queue = v7->_queue;
    v7->_queue = v11;

    v13 = dispatch_queue_create("com.apple.amp.AirTraffic.ATFoundation.ATConcreteMessageLink.handlerAccess", 0);
    handlerAccessQueue = v7->_handlerAccessQueue;
    v7->_handlerAccessQueue = v13;

    v15 = dispatch_queue_create("com.apple.amp.AirTraffic.ATFoundation.ATConcreteMessageLink.callBack", 0);
    callbackQueue = v7->_callbackQueue;
    v7->_callbackQueue = v15;

    v17 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:512 capacity:0];
    outputStreamsToInputStreams = v7->_outputStreamsToInputStreams;
    v7->_outputStreamsToInputStreams = v17;

    v19 = [MEMORY[0x277CBEB38] dictionary];
    requestWritersByID = v7->_requestWritersByID;
    v7->_requestWritersByID = v19;

    v21 = [MEMORY[0x277CBEB38] dictionary];
    responseWritersByID = v7->_responseWritersByID;
    v7->_responseWritersByID = v21;

    v23 = [MEMORY[0x277CBEB38] dictionary];
    streamReadersByID = v7->_streamReadersByID;
    v7->_streamReadersByID = v23;

    v25 = [MEMORY[0x277CBEB58] set];
    requestWritersPendingStopByID = v7->_requestWritersPendingStopByID;
    v7->_requestWritersPendingStopByID = v25;

    v27 = [MEMORY[0x277CBEB58] set];
    responseWritersPendingStopByID = v7->_responseWritersPendingStopByID;
    v7->_responseWritersPendingStopByID = v27;

    v29 = [MEMORY[0x277CBEB58] set];
    requestReadersPendingStopByID = v7->_requestReadersPendingStopByID;
    v7->_requestReadersPendingStopByID = v29;

    v31 = [MEMORY[0x277CBEB38] dictionary];
    sentRequestsByID = v7->_sentRequestsByID;
    v7->_sentRequestsByID = v31;

    v33 = [MEMORY[0x277CBEB38] dictionary];
    receivedRequestsByID = v7->_receivedRequestsByID;
    v7->_receivedRequestsByID = v33;

    v35 = [MEMORY[0x277CBEB38] dictionary];
    completionHandlersByRequestID = v7->_completionHandlersByRequestID;
    v7->_completionHandlersByRequestID = v35;

    v37 = [MEMORY[0x277CBEB38] dictionary];
    completionHandlersByResponseID = v7->_completionHandlersByResponseID;
    v7->_completionHandlersByResponseID = v37;

    v39 = [MEMORY[0x277CBEB38] dictionary];
    requestHandlersByDataClass = v7->_requestHandlersByDataClass;
    v7->_requestHandlersByDataClass = v39;

    v41 = dispatch_group_create();
    stopReadersAndWritersGroup = v7->_stopReadersAndWritersGroup;
    v7->_stopReadersAndWritersGroup = v41;

    v43 = [[ATMessageParser alloc] initWithMessageClass:objc_opt_class()];
    parser = v7->_parser;
    v7->_parser = v43;

    objc_initWeak(&location, v7);
    v45 = v7->_parser;
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = __40__ATConcreteMessageLink_initWithSocket___block_invoke;
    v53 = &unk_2784E9170;
    objc_copyWeak(&v54, &location);
    [(ATMessageParser *)v45 setObjectParsedBlock:&v50];
    v46 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v46;

    objc_storeStrong(&v7->_socket, a3);
    [v6 addDelegate:v7];
    v7->_endpointType = 0;
    v7->_lastActivityTime = CFAbsoluteTimeGetCurrent();
    v7->_idleTimeoutExceptionCount = 0;
    objc_destroyWeak(&v54);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __40__ATConcreteMessageLink_initWithSocket___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processIncomingMessage:v3];
}

@end