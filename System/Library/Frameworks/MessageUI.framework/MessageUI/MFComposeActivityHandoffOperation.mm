@interface MFComposeActivityHandoffOperation
+ (id)receivingOperationWithInputStream:(id)a3 outputStream:(id)a4;
+ (id)sendingOperationWithDraftData:(id)a3 inputStream:(id)a4 outputStream:(id)a5;
- (MFComposeActivityHandoffOperation)initWithInputStream:(id)a3 outputStream:(id)a4;
- (MFComposeActivityHandoffOperationDelegate)delegate;
- (void)_checkInHandoffStream:(id)a3;
- (void)_commonHandoffStreamInitializationWithStream:(id)a3;
- (void)_complete;
- (void)_didFinishTransferringHandoffPayload;
- (void)_failedToTransferHandoffPayload;
- (void)_finishReceivingHandoffDataAndCloseStream;
- (void)_handleErrorCode:(unint64_t)a3 logString:(id)a4;
- (void)_receivingDataStream:(id)a3 handleEvent:(unint64_t)a4;
- (void)_receivingMessageStream:(id)a3 handleEvent:(unint64_t)a4;
- (void)_sendingDataStream:(id)a3 handleEvent:(unint64_t)a4;
- (void)_sendingMessageStream:(id)a3 handleEvent:(unint64_t)a4;
- (void)_setExecuting:(BOOL)a3;
- (void)_setFinished:(BOOL)a3;
- (void)_startHandoffStreams;
- (void)dealloc;
- (void)start;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation MFComposeActivityHandoffOperation

+ (id)receivingOperationWithInputStream:(id)a3 outputStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initWithInputStream:v6 outputStream:v7];
  v9 = v8;
  if (v8)
  {
    [v8 setTransmissionType:1];
  }

  return v9;
}

+ (id)sendingOperationWithDraftData:(id)a3 inputStream:(id)a4 outputStream:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithInputStream:v9 outputStream:v10];
  v12 = v11;
  if (v11)
  {
    [v11 setTransmissionType:2];
    [v12 setDraftData:v8];
  }

  return v12;
}

- (MFComposeActivityHandoffOperation)initWithInputStream:(id)a3 outputStream:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MFComposeActivityHandoffOperation;
  v9 = [(MFComposeActivityHandoffOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_draftDataByteIndex = 0;
    objc_storeStrong(&v9->_inputStream, a3);
    objc_storeStrong(&v10->_outputStream, a4);
    v10->_transmissionType = 0;
    v11 = dispatch_queue_create("Activity Handoff Stream Handler", 0);
    streamHandlerQueue = v10->_streamHandlerQueue;
    v10->_streamHandlerQueue = v11;
  }

  return v10;
}

- (void)dealloc
{
  [(NSInputStream *)self->_inputStream close];
  [(NSOutputStream *)self->_outputStream close];
  v3.receiver = self;
  v3.super_class = MFComposeActivityHandoffOperation;
  [(MFComposeActivityHandoffOperation *)&v3 dealloc];
}

- (void)start
{
  [(MFComposeActivityHandoffOperation *)self _setExecuting:1];
  if (([(MFComposeActivityHandoffOperation *)self isCancelled]& 1) != 0)
  {

    [(MFComposeActivityHandoffOperation *)self _complete];
  }

  else
  {

    [(MFComposeActivityHandoffOperation *)self _startHandoffStreams];
  }
}

- (void)_setExecuting:(BOOL)a3
{
  [(MFComposeActivityHandoffOperation *)self willChangeValueForKey:@"isExecuting"];
  self->_executing = a3;

  [(MFComposeActivityHandoffOperation *)self didChangeValueForKey:@"isExecuting"];
}

- (void)_setFinished:(BOOL)a3
{
  [(MFComposeActivityHandoffOperation *)self willChangeValueForKey:@"isFinished"];
  self->_finished = a3;

  [(MFComposeActivityHandoffOperation *)self didChangeValueForKey:@"isFinished"];
}

- (void)_complete
{
  [(MFComposeActivityHandoffOperation *)self _setExecuting:0];

  [(MFComposeActivityHandoffOperation *)self _setFinished:1];
}

- (void)_startHandoffStreams
{
  if (!self->_inputStream || !self->_outputStream)
  {
    [MFComposeActivityHandoffOperation _startHandoffStreams];
  }

  [(MFComposeActivityHandoffOperation *)self _commonHandoffStreamInitializationWithStream:?];
  outputStream = self->_outputStream;

  [(MFComposeActivityHandoffOperation *)self _commonHandoffStreamInitializationWithStream:outputStream];
}

- (void)_handleErrorCode:(unint64_t)a3 logString:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v15 = &v18;
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v6 arguments:&v18];
  }

  else
  {
    v7 = @"Unknown Error";
  }

  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(MFComposeActivityHandoffOperation *)v7 _handleErrorCode:a3 logString:v8];
  }

  if (a3 >= 0x64)
  {
    v9 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v9 errorWithDomain:@"MFActivityHandoffOperationError" code:a3 userInfo:v10];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__MFComposeActivityHandoffOperation__handleErrorCode_logString___block_invoke;
    v13[3] = &unk_1E806C520;
    v13[4] = self;
    v14 = v11;
    v12 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v13);
  }
}

void __64__MFComposeActivityHandoffOperation__handleErrorCode_logString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 activityHandoffOperation:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  streamHandlerQueue = self->_streamHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MFComposeActivityHandoffOperation_stream_handleEvent___block_invoke;
  block[3] = &unk_1E806C548;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(streamHandlerQueue, block);
}

void *__56__MFComposeActivityHandoffOperation_stream_handleEvent___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[39];
  if (v3 == 2)
  {
    v5 = *(a1 + 40);
    if (result[34] == v5)
    {
      return [result _sendingDataStream:? handleEvent:?];
    }

    else if (result[33] == v5)
    {
      return [result _sendingMessageStream:? handleEvent:?];
    }
  }

  else if (v3 == 1)
  {
    v4 = *(a1 + 40);
    if (result[33] == v4)
    {
      return [result _receivingDataStream:? handleEvent:?];
    }

    else if (result[34] == v4)
    {
      return [result _receivingMessageStream:? handleEvent:?];
    }
  }

  return result;
}

- (void)_didFinishTransferringHandoffPayload
{
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_INFO, "#Hand-Off Got success receipt from receiving end.", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__MFComposeActivityHandoffOperation__didFinishTransferringHandoffPayload__block_invoke;
  block[3] = &unk_1E806C570;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __73__MFComposeActivityHandoffOperation__didFinishTransferringHandoffPayload__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 activityHandoffOperation:*(a1 + 32) didFinishSendingDataWithResult:1];
}

- (void)_failedToTransferHandoffPayload
{
  [(MFComposeActivityHandoffOperation *)self _handleErrorCode:2 logString:@"Receiving end sent failure receipt."];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MFComposeActivityHandoffOperation__failedToTransferHandoffPayload__block_invoke;
  block[3] = &unk_1E806C570;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __68__MFComposeActivityHandoffOperation__failedToTransferHandoffPayload__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 activityHandoffOperation:*(a1 + 32) didFinishSendingDataWithResult:2];
}

- (void)_receivingMessageStream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 8)
  {
    v8 = v6;
    v7 = [v6 streamError];
    [(MFComposeActivityHandoffOperation *)self _handleErrorCode:3 logString:@"Receiving Message Channel had error: %@", v7];

    v6 = v8;
  }
}

- (void)_sendingMessageStream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  switch(a4)
  {
    case 8uLL:
      v10 = [v6 streamError];
      [(MFComposeActivityHandoffOperation *)self _handleErrorCode:3 logString:@"Sending Message Channel had error: %@", v10];

      break;
    case 2uLL:
      v11 = 0;
      [(NSInputStream *)self->_inputStream read:&v11 maxLength:4];
      v9 = bswap32(v11);
      v11 = v9;
      if (v9 == 2)
      {
        [(MFComposeActivityHandoffOperation *)self _failedToTransferHandoffPayload];
      }

      else if (v9 == 1)
      {
        [(MFComposeActivityHandoffOperation *)self _didFinishTransferringHandoffPayload];
      }

      else
      {
        [(MFComposeActivityHandoffOperation *)self _handleErrorCode:4 logString:@"Unrecognized message sent to message channel: %d", v9];
      }

      [(MFComposeActivityHandoffOperation *)self _checkInHandoffStream:self->_inputStream];
      break;
    case 1uLL:
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [MFComposeActivityHandoffOperation _sendingMessageStream:handleEvent:];
      }

      break;
  }
}

- (void)_receivingDataStream:(id)a3 handleEvent:(unint64_t)a4
{
  v4 = MEMORY[0x1EEE9AC00](self, a2, a3, a4);
  v6 = v5;
  v7 = v4;
  v25 = *MEMORY[0x1E69E9840];
  v9 = v8;
  if (v6 <= 7)
  {
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        if (*(v7 + 280))
        {
          memset(__b, 170, sizeof(__b));
          v10 = [*(v7 + 264) read:__b maxLength:0x8000];
          if (v10)
          {
            v11 = *(v7 + 280);
            [v11 appendBytes:__b length:v10];
            *(v7 + 296) += v10;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __70__MFComposeActivityHandoffOperation__receivingDataStream_handleEvent___block_invoke;
            block[3] = &unk_1E806C570;
            block[4] = v7;
            dispatch_async(MEMORY[0x1E69E96A0], block);
            if ([v11 length] >= *(v7 + 304))
            {
              v12 = MFLogGeneral();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                -[MFComposeActivityHandoffOperation _receivingDataStream:handleEvent:].cold.2(buf, [v11 length], v12);
              }

              [v7 _finishReceivingHandoffDataAndCloseStream];
            }

            goto LABEL_25;
          }

          v19 = [*(v7 + 264) streamError];
          v20 = v19 == 0;

          if (!v20)
          {
            v11 = [*(v7 + 264) streamError];
            [v7 _handleErrorCode:102 logString:{@"Failed to read bytes from input stream! %@", v11}];
LABEL_25:

            goto LABEL_30;
          }

          v21 = MFLogGeneral();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            -[MFComposeActivityHandoffOperation _receivingDataStream:handleEvent:].cold.3(buf, [*(v7 + 280) length], v21);
          }

          [v7 _finishReceivingHandoffDataAndCloseStream];
        }

        else
        {
          __b[0] = 0;
          [*(v7 + 264) read:__b maxLength:4];
          v15 = __b[0];
          __b[0] = bswap32(__b[0]);
          if (v15)
          {
            v16 = MFLogGeneral();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              [MFComposeActivityHandoffOperation _receivingDataStream:handleEvent:];
            }

            v17 = objc_alloc_init(MEMORY[0x1E695DF88]);
            v18 = *(v7 + 280);
            *(v7 + 280) = v17;

            *(v7 + 296) = 0;
            *(v7 + 304) = __b[0];
          }

          else
          {
            [v7 _handleErrorCode:101 logString:@"Failed to get expected size from sending end"];
          }
        }
      }

      goto LABEL_30;
    }

    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [MFComposeActivityHandoffOperation _receivingDataStream:handleEvent:];
    }

LABEL_14:

    goto LABEL_30;
  }

  if (v6 == 8)
  {
    v14 = [*(v7 + 264) streamError];
    [v7 _handleErrorCode:102 logString:{@"Data receiving stream had an error: %@", v14}];

    goto LABEL_30;
  }

  if (v6 == 16)
  {
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [MFComposeActivityHandoffOperation _receivingDataStream:handleEvent:];
    }

    goto LABEL_14;
  }

LABEL_30:
}

void __70__MFComposeActivityHandoffOperation__receivingDataStream_handleEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 activityHandoffOperationReceivedBytes:*(a1 + 32)];
}

- (void)_sendingDataStream:(id)a3 handleEvent:(unint64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(NSData *)self->_draftData length])
  {
    if (a4 > 7)
    {
      if (a4 == 8)
      {
        v21 = [(NSOutputStream *)self->_outputStream streamError];
        [(MFComposeActivityHandoffOperation *)self _handleErrorCode:104 logString:@"Output stream had an error: %@", v21];
      }

      else if (a4 == 16)
      {
        outputStream = self->_outputStream;

        [(MFComposeActivityHandoffOperation *)self _checkInHandoffStream:outputStream];
      }
    }

    else if (a4 == 1)
    {
      v16 = MFLogGeneral();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [MFComposeActivityHandoffOperation _sendingDataStream:handleEvent:];
      }
    }

    else if (a4 == 4)
    {
      v6 = [(NSData *)self->_draftData length];
      v10 = v6;
      draftDataByteIndex = self->_draftDataByteIndex;
      if (!draftDataByteIndex)
      {
        v22 = bswap32(v6);
        [(NSOutputStream *)self->_outputStream write:&v22 maxLength:4];
        v12 = MFLogGeneral();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [MFComposeActivityHandoffOperation _sendingDataStream:handleEvent:];
        }

        draftDataByteIndex = self->_draftDataByteIndex;
      }

      v13 = v10 - draftDataByteIndex;
      if (v13)
      {
        if (v13 >= 0x8000)
        {
          v17 = 0x8000;
        }

        else
        {
          v17 = v13;
        }

        MEMORY[0x1EEE9AC00](v6, v7, v8, v9);
        v19 = &v20 - v18;
        memset(&v20 - v18, 170, v17);
        [(NSData *)self->_draftData getBytes:v19 range:self->_draftDataByteIndex, v17];
        self->_draftDataByteIndex += [(NSOutputStream *)self->_outputStream write:v19 maxLength:v17];
      }

      else
      {
        v14 = MFLogGeneral();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [MFComposeActivityHandoffOperation _sendingDataStream:handleEvent:];
        }

        [(MFComposeActivityHandoffOperation *)self _checkInHandoffStream:self->_outputStream];
      }
    }
  }

  else
  {

    [(MFComposeActivityHandoffOperation *)self _handleErrorCode:103 logString:@"Could not handle sending stream event. Draft data length was zero."];
  }
}

- (void)_finishReceivingHandoffDataAndCloseStream
{
  if (pthread_main_np())
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MFActivityHandoffOperation.m" lineNumber:395 description:@"Current thread is main"];
  }

  inputStream = self->_inputStream;
  if (inputStream && [(NSInputStream *)inputStream streamStatus]!= 6)
  {
    [(MFComposeActivityHandoffOperation *)self _checkInHandoffStream:self->_inputStream];
    if ([(NSData *)self->_draftData length])
    {
      v5 = 0x1000000;
    }

    else
    {
      v5 = 0x2000000;
    }

    v8 = v5;
    [(NSOutputStream *)self->_outputStream write:&v8 maxLength:4];
    [(MFComposeActivityHandoffOperation *)self _checkInHandoffStream:self->_outputStream];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__MFComposeActivityHandoffOperation__finishReceivingHandoffDataAndCloseStream__block_invoke;
    v7[3] = &unk_1E806C570;
    v7[4] = self;
    dispatch_sync(MEMORY[0x1E69E96A0], v7);
  }
}

void __78__MFComposeActivityHandoffOperation__finishReceivingHandoffDataAndCloseStream__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 activityHandoffOperation:*(a1 + 32) didFinishReceivingData:*(*(a1 + 32) + 280)];
}

- (void)_commonHandoffStreamInitializationWithStream:(id)a3
{
  v5 = a3;
  [v5 setDelegate:self];
  v4 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v5 scheduleInRunLoop:v4 forMode:*MEMORY[0x1E695D918]];

  [v5 open];
}

- (void)_checkInHandoffStream:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_outputStream == v4)
  {
    self->_doneWithOutputStream = 1;
  }

  else if (self->_inputStream == v4)
  {
    self->_doneWithInputStream = 1;
  }

  if (self->_doneWithInputStream && self->_doneWithOutputStream)
  {
    v6 = MEMORY[0x1E695D918];
    if (self->_inputStream)
    {
      v7 = MFLogGeneral();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

      if (v8)
      {
        v9 = MFLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1BE819000, v9, OS_LOG_TYPE_INFO, "#Hand-Off Closing stream: Input Stream", buf, 2u);
        }
      }

      [(NSInputStream *)self->_inputStream close];
      inputStream = self->_inputStream;
      v11 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(NSInputStream *)inputStream removeFromRunLoop:v11 forMode:*v6];

      v12 = self->_inputStream;
      self->_inputStream = 0;
    }

    if (self->_outputStream)
    {
      v13 = MFLogGeneral();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

      if (v14)
      {
        v15 = MFLogGeneral();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v19 = 0;
          _os_log_impl(&dword_1BE819000, v15, OS_LOG_TYPE_INFO, "#Hand-Off Closing stream: Output Stream", v19, 2u);
        }
      }

      [(NSOutputStream *)self->_outputStream close];
      outputStream = self->_outputStream;
      v17 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(NSOutputStream *)outputStream removeFromRunLoop:v17 forMode:*v6];

      v18 = self->_outputStream;
      self->_outputStream = 0;
    }

    [(MFComposeActivityHandoffOperation *)self _complete];
    self->_doneWithInputStream = 0;
    self->_doneWithOutputStream = 0;
  }
}

- (MFComposeActivityHandoffOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleErrorCode:(os_log_t)log logString:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1BE819000, log, OS_LOG_TYPE_ERROR, "#Hand-Off ** Handoff Operation Error (%lu): %@", &v3, 0x16u);
}

- (void)_sendingMessageStream:handleEvent:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_receivingDataStream:handleEvent:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_receivingDataStream:(os_log_t)log handleEvent:.cold.2(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_1BE819000, log, OS_LOG_TYPE_DEBUG, "#Hand-Off It looks like we got all the data (%lu bytes) from the input stream. Closing.", buf, 0xCu);
}

- (void)_receivingDataStream:(os_log_t)log handleEvent:.cold.3(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_1BE819000, log, OS_LOG_TYPE_DEBUG, "#Hand-Off Finished reading from stream. Got %lu bytes", buf, 0xCu);
}

- (void)_receivingDataStream:handleEvent:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_sendingDataStream:handleEvent:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end