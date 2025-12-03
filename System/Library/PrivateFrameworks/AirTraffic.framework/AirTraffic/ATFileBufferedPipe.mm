@interface ATFileBufferedPipe
+ (id)pipe;
- (ATFileBufferedPipe)init;
- (id)_bufferedWrite:(id)write;
- (void)_inputReadyForReading:(unint64_t)reading;
- (void)_outputReadyForWriting:(unint64_t)writing;
@end

@implementation ATFileBufferedPipe

- (id)_bufferedWrite:(id)write
{
  v4 = [MEMORY[0x277CBEB28] dataWithData:write];
  while (self->_readyForData)
  {
    if (![v4 length])
    {
      break;
    }

    fileHandleForWriting = [(NSPipe *)self->_outputPipe fileHandleForWriting];
    v6 = write([fileHandleForWriting fileDescriptor], objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length"));

    if (v6 < 1)
    {
      if (*__error() == 35)
      {
        self->_readyForData = 0;
      }
    }

    else
    {
      [v4 replaceBytesInRange:0 withBytes:v6 length:{0, 0}];
    }
  }

  return v4;
}

- (void)_inputReadyForReading:(unint64_t)reading
{
  if (reading)
  {
    fileHandleForReading = [(NSPipe *)self->_inputPipe fileHandleForReading];
    fileHandleForWriting = [fileHandleForReading readDataOfLength:reading];

    if (self->_readyForData)
    {
      v6 = [(ATFileBufferedPipe *)self _bufferedWrite:fileHandleForWriting];
      [(ATFileBuffer *)self->_buffer appendData:v6];
    }

    else
    {
      [(ATFileBuffer *)self->_buffer appendData:fileHandleForWriting];
    }
  }

  else
  {
    dispatch_source_cancel(self->_readSource);
    if ([(ATFileBuffer *)self->_buffer length])
    {
      self->_readyToClose = 1;
      return;
    }

    fileHandleForWriting = [(NSPipe *)self->_outputPipe fileHandleForWriting];
    [fileHandleForWriting closeFile];
  }
}

- (void)_outputReadyForWriting:(unint64_t)writing
{
  if (!writing)
  {
    dispatch_source_cancel(self->_writeSource);
  }

  self->_readyForData = 1;
  if ([(ATFileBuffer *)self->_buffer length])
  {
    fileHandleForWriting = [(ATFileBuffer *)self->_buffer readDataOfLength:writing];
    v5 = [(ATFileBufferedPipe *)self _bufferedWrite:?];
    [(ATFileBuffer *)self->_buffer rewindData:v5];
  }

  else
  {
    if (!self->_readyToClose)
    {
      return;
    }

    fileHandleForWriting = [(NSPipe *)self->_outputPipe fileHandleForWriting];
    [fileHandleForWriting closeFile];
  }
}

- (ATFileBufferedPipe)init
{
  v38.receiver = self;
  v38.super_class = ATFileBufferedPipe;
  v2 = [(ATFileBufferedPipe *)&v38 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_create(Name, 0);
    v6 = *(v2 + 2);
    *(v2 + 2) = v5;

    v7 = objc_alloc_init(ATFileBuffer);
    v8 = *(v2 + 1);
    *(v2 + 1) = v7;

    pipe = [MEMORY[0x277CCAC10] pipe];
    v10 = *(v2 + 3);
    *(v2 + 3) = pipe;

    pipe2 = [MEMORY[0x277CCAC10] pipe];
    v12 = *(v2 + 4);
    *(v2 + 4) = pipe2;

    fileHandleForReading = [*(v2 + 4) fileHandleForReading];
    v14 = *(v2 + 8);
    *(v2 + 8) = fileHandleForReading;

    fileHandleForWriting = [*(v2 + 3) fileHandleForWriting];
    v16 = *(v2 + 9);
    *(v2 + 9) = fileHandleForWriting;

    fileHandleForWriting2 = [*(v2 + 4) fileHandleForWriting];
    fileDescriptor = [fileHandleForWriting2 fileDescriptor];

    v19 = fcntl(fileDescriptor, 3);
    fcntl(fileDescriptor, 4, v19 | 4u);
    *(v2 + 28) = 0;
    objc_initWeak(&location, v2);
    fileHandleForWriting3 = [*(v2 + 4) fileHandleForWriting];
    fileDescriptor2 = [fileHandleForWriting3 fileDescriptor];
    v22 = dispatch_source_create(MEMORY[0x277D85D50], fileDescriptor2, 0, *(v2 + 2));

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __26__ATFileBufferedPipe_init__block_invoke;
    handler[3] = &unk_278C6D850;
    v23 = v22;
    v35 = v23;
    objc_copyWeak(&v36, &location);
    dispatch_source_set_event_handler(v23, handler);
    objc_storeStrong(v2 + 5, v22);
    dispatch_resume(*(v2 + 5));
    fileHandleForReading2 = [*(v2 + 3) fileHandleForReading];
    fileDescriptor3 = [fileHandleForReading2 fileDescriptor];
    v26 = dispatch_source_create(MEMORY[0x277D85D28], fileDescriptor3, 0, *(v2 + 2));

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __26__ATFileBufferedPipe_init__block_invoke_2;
    v31[3] = &unk_278C6D850;
    v27 = v26;
    v32 = v27;
    objc_copyWeak(&v33, &location);
    dispatch_source_set_event_handler(v27, v31);
    v28 = *(v2 + 6);
    *(v2 + 6) = v27;
    v29 = v27;

    dispatch_resume(*(v2 + 6));
    objc_destroyWeak(&v33);

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __26__ATFileBufferedPipe_init__block_invoke(uint64_t a1)
{
  data = dispatch_source_get_data(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _outputReadyForWriting:data];
}

void __26__ATFileBufferedPipe_init__block_invoke_2(uint64_t a1)
{
  data = dispatch_source_get_data(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _inputReadyForReading:data];
}

+ (id)pipe
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

@end