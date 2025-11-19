@interface ASDManagedRingBuffer
- (ASDManagedRingBuffer)initWithFrameCapacity:(int64_t)a3 writeFormat:(id)a4 readFormat:(id)a5;
- (void)startReader;
- (void)startWriter;
- (void)stopReader;
- (void)stopWriter;
@end

@implementation ASDManagedRingBuffer

- (ASDManagedRingBuffer)initWithFrameCapacity:(int64_t)a3 writeFormat:(id)a4 readFormat:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = ASDManagedRingBuffer;
  v10 = [(ASDRingBuffer *)&v16 initWithFrameCapacity:a3 writeFormat:v8 readFormat:v9];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = dispatch_queue_create([v12 UTF8String], 0);
    queue = v10->_queue;
    v10->_queue = v13;
  }

  return v10;
}

- (void)startReader
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ASDManagedRingBuffer_startReader__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __35__ASDManagedRingBuffer_startReader__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setReaderRunning:1];
  result = [*(a1 + 32) writerRunning];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 allocate];
  }

  return result;
}

- (void)stopReader
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ASDManagedRingBuffer_stopReader__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __34__ASDManagedRingBuffer_stopReader__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setReaderRunning:0];
  result = [*(a1 + 32) writerRunning];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 deallocate];
  }

  return result;
}

- (void)startWriter
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__ASDManagedRingBuffer_startWriter__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __35__ASDManagedRingBuffer_startWriter__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setWriterRunning:1];
  result = [*(a1 + 32) readerRunning];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 allocate];
  }

  return result;
}

- (void)stopWriter
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ASDManagedRingBuffer_stopWriter__block_invoke;
  block[3] = &unk_278CE39D0;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __34__ASDManagedRingBuffer_stopWriter__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setWriterRunning:0];
  result = [*(a1 + 32) readerRunning];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 deallocate];
  }

  return result;
}

@end