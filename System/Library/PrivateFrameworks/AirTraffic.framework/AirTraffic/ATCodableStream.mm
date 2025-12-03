@interface ATCodableStream
- (ATCodableStream)init;
- (ATCodableStream)initWithCoder:(id)coder;
- (ATCodableStream)initWithInputStream:(id)stream;
- (void)dealloc;
@end

@implementation ATCodableStream

- (ATCodableStream)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ATCodableStream *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fileHandleForReading"];
    v7 = [objc_alloc(MEMORY[0x277D27F28]) initWithQueue:0];
    [v7 start];
    inputStream = [v7 inputStream];
    inputStream = v5->_inputStream;
    v5->_inputStream = inputStream;

    objc_storeStrong(&v5->_writer, v7);
    v10 = dup([v6 fileDescriptor]);
    v11 = dispatch_source_create(MEMORY[0x277D85D28], v10, 0, v5->_queue);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __33__ATCodableStream_initWithCoder___block_invoke;
    handler[3] = &unk_278C6D8C8;
    v20 = v10;
    v18 = v7;
    v19 = v11;
    v12 = v11;
    v13 = v7;
    dispatch_source_set_event_handler(v12, handler);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __33__ATCodableStream_initWithCoder___block_invoke_2;
    v15[3] = &__block_descriptor_36_e5_v8__0l;
    v16 = v10;
    dispatch_source_set_cancel_handler(v12, v15);
    dispatch_resume(v12);
  }

  return v5;
}

void __33__ATCodableStream_initWithCoder___block_invoke(uint64_t a1)
{
  v2 = NSPageSize();
  v3 = malloc_type_malloc(v2, 0xF6762EAEuLL);
  v4 = read(*(a1 + 48), v3, v2);
  if (v4)
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v3 length:v4 freeWhenDone:1];
    [*(a1 + 32) writeAllData:v6 error:0];
  }

  else
  {
    [*(a1 + 32) stop];
    free(v3);
    dispatch_source_cancel(*(a1 + 40));
    v5 = *(a1 + 40);

    dispatch_source_set_event_handler(v5, 0);
  }
}

- (void)dealloc
{
  [(NSFileHandle *)self->_fileHandleForReading closeFile];
  v3.receiver = self;
  v3.super_class = ATCodableStream;
  [(ATCodableStream *)&v3 dealloc];
}

- (ATCodableStream)initWithInputStream:(id)stream
{
  streamCopy = stream;
  v7 = [(ATCodableStream *)self init];
  if (v7)
  {
    if (!streamCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"ATCodableStream.m" lineNumber:37 description:@"inputStream cannot be nil"];
    }

    v8 = [objc_alloc(MEMORY[0x277D27F20]) initWithInputStream:streamCopy queue:0];
    [v8 setMaximumBufferSize:NSPageSize()];
    reader = v7->_reader;
    v7->_reader = v8;
    v10 = v8;

    objc_storeStrong(&v7->_inputStream, stream);
    pipe = [MEMORY[0x277CCAC10] pipe];
    fileHandleForWriting = [pipe fileHandleForWriting];
    fileHandleForReading = [pipe fileHandleForReading];
    fileHandleForReading = v7->_fileHandleForReading;
    v7->_fileHandleForReading = fileHandleForReading;

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __39__ATCodableStream_initWithInputStream___block_invoke;
    v27[3] = &unk_278C6D878;
    v15 = fileHandleForWriting;
    v28 = v15;
    [v10 setDidReadDataBlock:v27];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __39__ATCodableStream_initWithInputStream___block_invoke_2;
    v24[3] = &unk_278C6DC30;
    v16 = v15;
    v25 = v16;
    v17 = v7;
    v26 = v17;
    [v10 setDidFinishReadingBlock:v24];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __39__ATCodableStream_initWithInputStream___block_invoke_3;
    v21[3] = &unk_278C6D8A0;
    v22 = v16;
    v23 = v17;
    v18 = v16;
    [v10 setDidEncounterErrorBlock:v21];
    [v10 start];
  }

  return v7;
}

uint64_t __39__ATCodableStream_initWithInputStream___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) closeFile];
  [*(*(a1 + 40) + 8) setDidReadDataBlock:0];
  [*(*(a1 + 40) + 8) setDidEncounterErrorBlock:0];
  v2 = *(*(a1 + 40) + 8);

  return [v2 setDidFinishReadingBlock:0];
}

uint64_t __39__ATCodableStream_initWithInputStream___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) closeFile];
  [*(*(a1 + 40) + 8) setDidReadDataBlock:0];
  [*(*(a1 + 40) + 8) setDidFinishReadingBlock:0];
  v2 = *(*(a1 + 40) + 8);

  return [v2 setDidEncounterErrorBlock:0];
}

- (ATCodableStream)init
{
  v8.receiver = self;
  v8.super_class = ATCodableStream;
  v2 = [(ATCodableStream *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_create(Name, 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

@end