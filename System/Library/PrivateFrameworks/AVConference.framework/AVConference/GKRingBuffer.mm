@interface GKRingBuffer
- (BOOL)store:(char *)a3 numSamples:(unsigned int)a4 timestamp:(unsigned int)a5;
- (GKRingBuffer)initWithCapacity:(unsigned int)a3 bytesPerFrame:(unsigned int)a4;
- (int)fetch:(char *)a3 numSamples:(unsigned int)a4 timestamp:(unsigned int)a5;
- (int)needsNewNumSamples:(unsigned int)a3 timestamp:(unsigned int)a4;
- (void)dealloc;
- (void)increaseCapacity:(unsigned int)a3;
@end

@implementation GKRingBuffer

- (GKRingBuffer)initWithCapacity:(unsigned int)a3 bytesPerFrame:(unsigned int)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = GKRingBuffer;
  v6 = [(GKRingBuffer *)&v8 init];
  v6->endTime = 0;
  v6->capacity = a3;
  v6->bytesPerFrame = a4;
  operator new();
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  CARingBuffer::Deallocate(self->ringBufRef);
  ringBufRef = self->ringBufRef;
  if (ringBufRef)
  {
    CARingBuffer::~CARingBuffer(self->ringBufRef);
    MEMORY[0x1E128B440](ringBufRef, 0x1080C400355024FLL);
  }

  v4.receiver = self;
  v4.super_class = GKRingBuffer;
  [(GKRingBuffer *)&v4 dealloc];
}

- (void)increaseCapacity:(unsigned int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  capacity = self->capacity;
  bytesPerFrame = self->bytesPerFrame;
  v7 = bytesPerFrame * capacity;
  v8 = (v7 + 15) & 0x1FFFFFFF0;
  v9 = &v14 - v8;
  if (v7)
  {
    memset(&v14 - v8, 170, v7);
  }

  *&v14.mNumberBuffers = 0xAAAAAAAA00000001;
  v14.mBuffers[0].mNumberChannels = 1;
  v14.mBuffers[0].mDataByteSize = bytesPerFrame;
  v14.mBuffers[0].mData = v9;
  endTime = self->endTime;
  v11 = endTime >= capacity;
  v12 = endTime - capacity;
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  CARingBuffer::Fetch(self->ringBufRef, &v14, capacity, v13);
  CARingBuffer::Deallocate(self->ringBufRef);
  CARingBuffer::Allocate(self->ringBufRef, 1, self->bytesPerFrame, a3);
  CARingBuffer::Store(self->ringBufRef, &v14, self->capacity, v13);
  self->capacity = a3;
}

- (BOOL)store:(char *)a3 numSamples:(unsigned int)a4 timestamp:(unsigned int)a5
{
  v13 = *MEMORY[0x1E69E9840];
  if (2 * a4 > self->capacity)
  {
    [(GKRingBuffer *)self increaseCapacity:?];
  }

  *&v12.mNumberBuffers = 0xAAAAAAAA00000001;
  bytesPerFrame = self->bytesPerFrame;
  v12.mBuffers[0].mNumberChannels = 1;
  v12.mBuffers[0].mDataByteSize = bytesPerFrame;
  v12.mBuffers[0].mData = a3;
  v10 = CARingBuffer::Store(self->ringBufRef, &v12, a4, a5);
  if (!v10)
  {
    self->endTime = a5 + a4;
  }

  return v10 == 0;
}

- (int)needsNewNumSamples:(unsigned int)a3 timestamp:(unsigned int)a4
{
  endTime = self->endTime;
  if (a4 + a3 >= endTime)
  {
    return a4 + a3 - endTime;
  }

  else
  {
    return 0;
  }
}

- (int)fetch:(char *)a3 numSamples:(unsigned int)a4 timestamp:(unsigned int)a5
{
  v13 = *MEMORY[0x1E69E9840];
  if (2 * a4 > self->capacity)
  {
    [(GKRingBuffer *)self increaseCapacity:?];
  }

  endTime = self->endTime;
  result = a5 + a4 - endTime;
  if (a5 + a4 <= endTime)
  {
    *&v12.mNumberBuffers = 0xAAAAAAAA00000001;
    bytesPerFrame = self->bytesPerFrame;
    v12.mBuffers[0].mNumberChannels = 1;
    v12.mBuffers[0].mDataByteSize = bytesPerFrame;
    v12.mBuffers[0].mData = a3;
    if (CARingBuffer::Fetch(self->ringBufRef, &v12, a4, a5))
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

@end