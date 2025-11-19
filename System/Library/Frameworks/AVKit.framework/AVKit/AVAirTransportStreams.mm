@interface AVAirTransportStreams
- (AVAirTransportStreams)initWithInput:(id)a3 output:(id)a4;
- (BOOL)canWrite;
- (BOOL)isReadyToSend;
- (NSString)description;
- (id)_readAvailableData;
- (id)_readDataNonBlockingUpToMaxLength:(unint64_t)a3;
- (int64_t)_writeData:(id)a3;
- (void)_inputStreamDidClose;
- (void)_inputStreamHasBytesAvailable;
- (void)_outputStreamDidOpen;
- (void)invalidate;
- (void)open;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation AVAirTransportStreams

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!isRunningEventThread())
  {
    __assert_rtn("[AVAirTransportStreams stream:handleEvent:]", "AVAirTransport.m", 211, "isRunningEventThread()");
  }

  v7 = [(AVAirTransportStreams *)self inputStream];

  v8 = [(AVAirTransportStreams *)self outputStream];

  v9 = @"Input";
  if (v8 == v6)
  {
    v9 = @"Output";
  }

  v10 = v9;
  if ((v4 & 8) == 0)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    v11 = _avairlog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "[AVAirTransportStreams stream:handleEvent:]";
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s %{public}@: OpenCompleted", &v16, 0x16u);
    }

    if (v8 == v6)
    {
      [(AVAirTransportStreams *)self _outputStreamDidOpen];
      if ((v4 & 0x10) != 0)
      {
LABEL_10:
        v12 = _avairlog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315394;
          v17 = "[AVAirTransportStreams stream:handleEvent:]";
          v18 = 2114;
          v19 = v10;
          _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s %{public}@: EndEncountered", &v16, 0x16u);
        }

        if (v7 == v6)
        {
          [(AVAirTransportStreams *)self _inputStreamDidClose];
          goto LABEL_28;
        }
      }
    }

    else
    {
LABEL_9:
      if ((v4 & 0x10) != 0)
      {
        goto LABEL_10;
      }
    }

    if ((v4 & 4) != 0)
    {
      v14 = _avairlog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315394;
        v17 = "[AVAirTransportStreams stream:handleEvent:]";
        v18 = 2114;
        v19 = v10;
        _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s %{public}@: HasSpaceAvailable", &v16, 0x16u);
      }

      if (v8 == v6)
      {
        [(AVAirTransportStreams *)self _outputStreamCanWrite];
      }
    }

    if ((v4 & 2) != 0)
    {
      v15 = _avairlog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315394;
        v17 = "[AVAirTransportStreams stream:handleEvent:]";
        v18 = 2114;
        v19 = v10;
        _os_log_impl(&dword_18B49C000, v15, OS_LOG_TYPE_DEFAULT, "%s %{public}@: HasBytesAvailable", &v16, 0x16u);
      }

      if (v7 == v6)
      {
        [(AVAirTransportStreams *)self _inputStreamHasBytesAvailable];
      }
    }

    goto LABEL_28;
  }

  v13 = _avairlog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[AVAirTransportStreams stream:handleEvent:]";
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%s %{public}@: ErrorOccurred", &v16, 0x16u);
  }

LABEL_28:
}

- (void)_inputStreamDidClose
{
  [(AVAirTransport *)self terminatePendingRequests];
  v3 = [(AVAirTransport *)self delegate];
  [v3 airTransportInputDidClose:self];
}

- (void)_outputStreamDidOpen
{
  v3 = [(AVAirTransport *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(AVAirTransport *)self delegate];
    [v5 airTransportOutputDidOpen:self];
  }
}

- (void)_inputStreamHasBytesAvailable
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _avairlog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[AVAirTransportStreams _inputStreamHasBytesAvailable]";
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s inputStream hasBytesAvailable", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7313;
  v11 = __Block_byref_object_dispose__7314;
  v12 = [(AVAirTransportStreams *)self _readAvailableData];
  if (*(*(&buf + 1) + 40))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__AVAirTransportStreams__inputStreamHasBytesAvailable__block_invoke;
    v5[3] = &unk_1E7207BB8;
    v5[4] = self;
    v5[5] = &buf;
    [(AVAirTransport *)self performOnAirChannelQueueSync:v5];
  }

  else
  {
    v4 = _avairlog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 136315138;
      v7 = "[AVAirTransportStreams _inputStreamHasBytesAvailable]";
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s ... but the data couldn't be read", v6, 0xCu);
    }
  }

  _Block_object_dispose(&buf, 8);
}

void __54__AVAirTransportStreams__inputStreamHasBytesAvailable__block_invoke(uint64_t a1, __n128 a2)
{
  v3 = 0;
  v19 = *MEMORY[0x1E69E9840];
  a2.n128_u64[0] = 136315138;
  v16 = a2;
  do
  {
    v4 = v3;
    v5 = [*(a1 + 32) receiveResponseBlocks];
    v6 = [v5 firstObject];

    v7 = [*(a1 + 32) streamDataTransformer];
    v3 = [v7 reverseTransformerForMessageData:*(*(*(a1 + 40) + 8) + 40)];

    if (v3)
    {
      if (([v3 isIncomplete] & 1) == 0)
      {
        v8 = *(a1 + 32);
        if (v6)
        {
          v9 = [v8 receiveResponseBlocks];
          [v9 removeObjectAtIndex:0];

          (v6)[2](v6, v3, 0);
        }

        else
        {
          v12 = [v8 delegate];

          if (v12)
          {
            v13 = [*(a1 + 32) delegate];
            [v13 airTransport:*(a1 + 32) didReceiveObject:v3];
          }

          else
          {
            v13 = _avairlog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v16.n128_u32[0];
              v18 = "[AVAirTransportStreams _inputStreamHasBytesAvailable]_block_invoke";
              _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%s unexpected message/response received; delegate not expecting messages", buf, 0xCu);
            }
          }
        }
      }
    }

    else
    {
      v10 = _avairlog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v16.n128_u32[0];
        v18 = "[AVAirTransportStreams _inputStreamHasBytesAvailable]_block_invoke";
        _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s message data failed to deserialize", buf, 0xCu);
      }

      if (v6)
      {
        v11 = [*(a1 + 32) receiveResponseBlocks];
        [v11 removeObjectAtIndex:0];

        v6[2](v6, 0, -4);
      }
    }

    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;
  }

  while (([v3 shouldCallReverseTransformerAgain] & 1) != 0);
}

- (int64_t)_writeData:(id)a3
{
  v4 = a3;
  v5 = [(AVAirTransportStreams *)self outputStream];
  v6 = [v4 bytes];
  v7 = [v4 length];

  v8 = [v5 write:v6 maxLength:v7];
  return v8;
}

- (id)_readAvailableData
{
  if (!isRunningEventThread())
  {
    __assert_rtn("[AVAirTransportStreams _readAvailableData]", "AVAirTransport.m", 140, "isRunningEventThread()");
  }

  return [(AVAirTransportStreams *)self _readDataNonBlockingUpToMaxLength:-1];
}

- (BOOL)canWrite
{
  v2 = [(AVAirTransportStreams *)self outputStream];
  v3 = [v2 hasSpaceAvailable];

  return v3;
}

- (BOOL)isReadyToSend
{
  v2 = [(AVAirTransportStreams *)self outputStream];
  v3 = [v2 streamStatus];

  return v3 > 1;
}

- (id)_readDataNonBlockingUpToMaxLength:(unint64_t)a3
{
  v35 = *MEMORY[0x1E69E9840];
  if (!isRunningEventThread())
  {
    __assert_rtn("[AVAirTransportStreams _readDataNonBlockingUpToMaxLength:]", "AVAirTransport.m", 86, "isRunningEventThread()");
  }

  v5 = [(AVAirTransportStreams *)self inputStream];
  v6 = [v5 hasBytesAvailable];

  if (!v6)
  {
    v19 = 0;
    goto LABEL_31;
  }

  if (a3 >= 0x8000)
  {
    v7 = 0x8000;
  }

  else
  {
    v7 = a3;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v7];
  v9 = [(AVAirTransportStreams *)self inputStream];
  v10 = [v9 hasBytesAvailable];

  if (v10)
  {
    v11 = 0;
    while (1)
    {
      v12 = v7 >= a3 - v11 ? a3 - v11 : v7;
      v13 = [(AVAirTransportStreams *)self inputStream];
      v14 = [v13 read:objc_msgSend(v8 maxLength:{"mutableBytes") + v11, v12}];

      if (v14 < 1)
      {
        break;
      }

      if (v14 < v12 || (-[AVAirTransportStreams inputStream](self, "inputStream"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 hasBytesAvailable], v15, (v16 & 1) == 0))
      {
        [v8 setLength:v14 + v11];
        v19 = v8;
        goto LABEL_30;
      }

      v11 += v14;
      [v8 increaseLengthBy:0x20000];
      v17 = [(AVAirTransportStreams *)self inputStream];
      v18 = [v17 hasBytesAvailable];

      v7 = 0x20000;
      if ((v18 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      v20 = [(AVAirTransportStreams *)self inputStream];
      v21 = [v20 streamStatus];

      v22 = _avairlog();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v21 == 5)
      {
        if (v23)
        {
          v31 = 136315138;
          v32 = "[AVAirTransportStreams _readDataNonBlockingUpToMaxLength:]";
          v24 = "%s the input data disappeared! the input stream has closed.";
          v25 = v22;
          v26 = 12;
LABEL_27:
          _os_log_impl(&dword_18B49C000, v25, OS_LOG_TYPE_DEFAULT, v24, &v31, v26);
        }
      }

      else if (v23)
      {
        v31 = 136315394;
        v32 = "[AVAirTransportStreams _readDataNonBlockingUpToMaxLength:]";
        v33 = 1024;
        LODWORD(v34) = v21;
        v24 = "%s the input data disappeared! Are multiple clients trying to read from this stream? (status = %d)";
        v25 = v22;
        v26 = 18;
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    v27 = _avairlog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(AVAirTransportStreams *)self inputStream];
      v29 = [v28 streamError];
      v31 = 136315394;
      v32 = "[AVAirTransportStreams _readDataNonBlockingUpToMaxLength:]";
      v33 = 2114;
      v34 = v29;
      _os_log_impl(&dword_18B49C000, v27, OS_LOG_TYPE_DEFAULT, "%s an error prevented bytes from being read! (%{public}@)", &v31, 0x16u);
    }
  }

LABEL_29:
  v19 = 0;
LABEL_30:

LABEL_31:

  return v19;
}

- (NSString)description
{
  v13.receiver = self;
  v13.super_class = AVAirTransportStreams;
  v3 = [(AVAirTransport *)&v13 delegate];
  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringWithFormat:@"<%@ %p>", v6, v3];
  }

  else
  {
    v7 = @"nil";
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"<%@ %p: (<%@, >%@), delegate=%@>", v10, self, self->_inputStream, self->_outputStream, v7];

  return v11;
}

- (void)open
{
  if (![(NSInputStream *)self->_inputStream streamStatus])
  {
    [(NSInputStream *)self->_inputStream open];
  }

  if (![(NSOutputStream *)self->_outputStream streamStatus])
  {
    outputStream = self->_outputStream;

    [(NSOutputStream *)outputStream open];
  }
}

- (void)invalidate
{
  v20 = *MEMORY[0x1E69E9840];
  [(NSInputStream *)self->_inputStream setDelegate:0];
  [(NSOutputStream *)self->_outputStream setDelegate:0];
  inputStream = self->_inputStream;
  v4 = +[AVAirTransport eventRunLoop];
  v5 = *MEMORY[0x1E695DA28];
  [(NSInputStream *)inputStream removeFromRunLoop:v4 forMode:*MEMORY[0x1E695DA28]];

  outputStream = self->_outputStream;
  v7 = +[AVAirTransport eventRunLoop];
  [(NSOutputStream *)outputStream removeFromRunLoop:v7 forMode:v5];

  [(NSInputStream *)self->_inputStream close];
  [(NSOutputStream *)self->_outputStream close];
  v8 = _avairlog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_inputStream;
    v10 = self->_outputStream;
    *buf = 136315650;
    v15 = "[AVAirTransportStreams invalidate]";
    v16 = 2048;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s shutting down streams %p and %p", buf, 0x20u);
  }

  v11 = self->_inputStream;
  self->_inputStream = 0;

  v12 = self->_outputStream;
  self->_outputStream = 0;

  v13.receiver = self;
  v13.super_class = AVAirTransportStreams;
  [(AVAirTransport *)&v13 invalidate];
}

- (AVAirTransportStreams)initWithInput:(id)a3 output:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = AVAirTransportStreams;
  v9 = [(AVAirTransport *)&v17 _initPrivate];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 7, a3);
    objc_storeStrong(&v10->_outputStream, a4);
    [(NSInputStream *)v10->_inputStream setDelegate:v10];
    inputStream = v10->_inputStream;
    v12 = +[AVAirTransport eventRunLoop];
    v13 = *MEMORY[0x1E695DA28];
    [(NSInputStream *)inputStream scheduleInRunLoop:v12 forMode:*MEMORY[0x1E695DA28]];

    [(NSOutputStream *)v10->_outputStream setDelegate:v10];
    outputStream = v10->_outputStream;
    v15 = +[AVAirTransport eventRunLoop];
    [(NSOutputStream *)outputStream scheduleInRunLoop:v15 forMode:v13];
  }

  return v10;
}

@end