@interface NWURLSessionRequestBodyStream
- (int64_t)countOfBytesSent;
- (void)close;
- (void)pollStream;
- (void)readMinimumIncompleteLength:(unint64_t)length maximumLength:(unint64_t)maximumLength completionHandler:(id)handler;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation NWURLSessionRequestBodyStream

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v11 = __52__NWURLSessionRequestBodyStream_stream_handleEvent___block_invoke;
  v12 = &unk_1E6A3BCF0;
  v14 = streamCopy;
  eventCopy = event;
  selfCopy = self;
  v7 = MEMORY[0x1E695AC40];
  v8 = streamCopy;
  resourceLoaderRunLoop = [v7 resourceLoaderRunLoop];
  if (CFRunLoopGetCurrent() == resourceLoaderRunLoop)
  {
    v11(block);
  }

  else
  {
    CFRunLoopPerformBlock(resourceLoaderRunLoop, *MEMORY[0x1E695E8E0], block);
    CFRunLoopWakeUp(resourceLoaderRunLoop);
  }
}

void __52__NWURLSessionRequestBodyStream_stream_handleEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if ((v2 - 1) < 2)
  {
    v6 = *(a1 + 32);

    [(NWURLSessionRequestBodyStream *)v6 pollStream];
  }

  else
  {
    if (v2 == 8)
    {
      v10 = [[NWURLError alloc] initWithErrorCode:-1021];
      v7 = [*(a1 + 40) streamError];
      [(NWURLError *)v10 setUnderlyingError:v7];
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = *(v8 + 40);
      }

      else
      {
        v9 = 0;
      }

      [(NWURLSessionReadRequest *)v9 putError:v10];

      v5 = v10;
    }

    else
    {
      if (v2 != 16)
      {
        return;
      }

      v3 = *(a1 + 32);
      if (v3)
      {
        v4 = *(v3 + 40);
        if (v4)
        {
          *(v4 + 8) = 1;
          [(NWURLSessionReadRequest *)v4 tryFulfillRequest];
        }
      }

      v5 = 0;
    }
  }
}

- (void)pollStream
{
  if (self)
  {
    Current = CFRunLoopGetCurrent();
    if (Current != [MEMORY[0x1E695AC40] resourceLoaderRunLoop])
    {
      __assert_rtn("[NWURLSessionRequestBodyStream pollStream]", "NWURLSessionRequest.m", 383, "CFRunLoopGetCurrent() == NSURLConnection.resourceLoaderRunLoop");
    }

    if ([*(self + 16) hasBytesAvailable])
    {
      v3 = *(self + 40);
      if (v3)
      {
        if (*(v3 + 32))
        {
          v4 = *(v3 + 24);
          if (v4)
          {
            alloc = dispatch_data_create_alloc();
            subrange = 0;
            while (1)
            {
              v7 = [*(self + 16) read:subrange maxLength:v4];
              v8 = v7;
              if (v7 <= 0)
              {
                break;
              }

              subrange = (subrange + v7);
              v4 -= v7;
              if (!v4 || ([*(self + 16) hasBytesAvailable] & 1) == 0)
              {
                goto LABEL_11;
              }
            }

            if (v7)
            {
              subrange = [[NWURLError alloc] initWithErrorCode:-1021];
              streamError = [*(self + 16) streamError];
              [(NWURLError *)subrange setUnderlyingError:streamError];
              [(NWURLSessionReadRequest *)*(self + 40) putError:?];

              goto LABEL_20;
            }

LABEL_11:
            streamStatus = [*(self + 16) streamStatus];
            v11 = v8 < 1 || streamStatus == 5;
            if (subrange)
            {
              subrange = dispatch_data_create_subrange(alloc, 0, subrange);
            }

            [(NWURLSessionReadRequest *)*(self + 40) putData:v11 complete:?];
LABEL_20:
          }
        }
      }
    }
  }
}

- (void)close
{
  resourceLoaderRunLoop = [MEMORY[0x1E695AC40] resourceLoaderRunLoop];
  v4 = *MEMORY[0x1E695E8E0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__NWURLSessionRequestBodyStream_close__block_invoke;
  block[3] = &unk_1E6A3D868;
  block[4] = self;
  CFRunLoopPerformBlock(resourceLoaderRunLoop, v4, block);
  CFRunLoopWakeUp(resourceLoaderRunLoop);
}

uint64_t __38__NWURLSessionRequestBodyStream_close__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  [v3 close];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  return [v5 setDelegate:0];
}

- (void)readMinimumIncompleteLength:(unint64_t)length maximumLength:(unint64_t)maximumLength completionHandler:(id)handler
{
  handlerCopy = handler;
  resourceLoaderRunLoop = [MEMORY[0x1E695AC40] resourceLoaderRunLoop];
  v10 = *MEMORY[0x1E695E8E0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__NWURLSessionRequestBodyStream_readMinimumIncompleteLength_maximumLength_completionHandler___block_invoke;
  v12[3] = &unk_1E6A2D7C0;
  lengthCopy = length;
  maximumLengthCopy = maximumLength;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  CFRunLoopPerformBlock(resourceLoaderRunLoop, v10, v12);
  CFRunLoopWakeUp(resourceLoaderRunLoop);
}

void __93__NWURLSessionRequestBodyStream_readMinimumIncompleteLength_maximumLength_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 8))
    {
LABEL_3:
      v3 = *(v2 + 40);
      goto LABEL_4;
    }

    *(v2 + 8) = 1;
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 16);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setDelegate:?];
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[2];
  }

  v8 = MEMORY[0x1E695DFD0];
  v9 = v7;
  v10 = [v8 currentRunLoop];
  [v9 scheduleInRunLoop:v10 forMode:*MEMORY[0x1E695D918]];

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 16);
  }

  else
  {
    v12 = 0;
  }

  [v12 open];
  v2 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_3;
  }

  v3 = 0;
LABEL_4:
  v13 = *(a1 + 48);
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __93__NWURLSessionRequestBodyStream_readMinimumIncompleteLength_maximumLength_completionHandler___block_invoke_2;
  newValue[3] = &unk_1E6A2D798;
  newValue[4] = v2;
  v15 = *(a1 + 40);
  if (v3)
  {
    v3[1] = v13;
    objc_setProperty_nonatomic_copy(v3, v4, newValue, 32);
    [(NWURLSessionReadRequest *)v3 tryFulfillRequest];
  }

  [(NWURLSessionRequestBodyStream *)*(a1 + 32) pollStream];
}

void __93__NWURLSessionRequestBodyStream_readMinimumIncompleteLength_maximumLength_completionHandler___block_invoke_2(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__NWURLSessionRequestBodyStream_readMinimumIncompleteLength_maximumLength_completionHandler___block_invoke_3;
  block[3] = &unk_1E6A35888;
  v15 = v7;
  v16 = v9;
  v11 = *(a1 + 40);
  v19 = a3;
  v17 = v8;
  v18 = v11;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, block);
}

uint64_t __93__NWURLSessionRequestBodyStream_readMinimumIncompleteLength_maximumLength_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      *(v2 + 24) += dispatch_data_get_size(*(a1 + 32));
    }
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (int64_t)countOfBytesSent
{
  if (self)
  {
    return *(self + 24);
  }

  return self;
}

@end