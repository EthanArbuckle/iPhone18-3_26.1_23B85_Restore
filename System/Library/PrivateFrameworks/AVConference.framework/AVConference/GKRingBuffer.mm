@interface GKRingBuffer
- (BOOL)store:(char *)store numSamples:(unsigned int)samples timestamp:(unsigned int)timestamp;
- (GKRingBuffer)initWithCapacity:(unsigned int)capacity bytesPerFrame:(unsigned int)frame;
- (int)fetch:(char *)fetch numSamples:(unsigned int)samples timestamp:(unsigned int)timestamp;
- (int)needsNewNumSamples:(unsigned int)samples timestamp:(unsigned int)timestamp;
- (void)dealloc;
- (void)increaseCapacity:(unsigned int)capacity;
@end

@implementation GKRingBuffer

- (GKRingBuffer)initWithCapacity:(unsigned int)capacity bytesPerFrame:(unsigned int)frame
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = GKRingBuffer;
  v6 = [(GKRingBuffer *)&v8 init];
  v6->endTime = 0;
  v6->capacity = capacity;
  v6->bytesPerFrame = frame;
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

- (void)increaseCapacity:(unsigned int)capacity
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
  CARingBuffer::Allocate(self->ringBufRef, 1, self->bytesPerFrame, capacity);
  CARingBuffer::Store(self->ringBufRef, &v14, self->capacity, v13);
  self->capacity = capacity;
}

- (BOOL)store:(char *)store numSamples:(unsigned int)samples timestamp:(unsigned int)timestamp
{
  v13 = *MEMORY[0x1E69E9840];
  if (2 * samples > self->capacity)
  {
    [(GKRingBuffer *)self increaseCapacity:?];
  }

  *&v12.mNumberBuffers = 0xAAAAAAAA00000001;
  bytesPerFrame = self->bytesPerFrame;
  v12.mBuffers[0].mNumberChannels = 1;
  v12.mBuffers[0].mDataByteSize = bytesPerFrame;
  v12.mBuffers[0].mData = store;
  v10 = CARingBuffer::Store(self->ringBufRef, &v12, samples, timestamp);
  if (!v10)
  {
    self->endTime = timestamp + samples;
  }

  return v10 == 0;
}

- (int)needsNewNumSamples:(unsigned int)samples timestamp:(unsigned int)timestamp
{
  endTime = self->endTime;
  if (timestamp + samples >= endTime)
  {
    return timestamp + samples - endTime;
  }

  else
  {
    return 0;
  }
}

- (int)fetch:(char *)fetch numSamples:(unsigned int)samples timestamp:(unsigned int)timestamp
{
  v13 = *MEMORY[0x1E69E9840];
  if (2 * samples > self->capacity)
  {
    [(GKRingBuffer *)self increaseCapacity:?];
  }

  endTime = self->endTime;
  result = timestamp + samples - endTime;
  if (timestamp + samples <= endTime)
  {
    *&v12.mNumberBuffers = 0xAAAAAAAA00000001;
    bytesPerFrame = self->bytesPerFrame;
    v12.mBuffers[0].mNumberChannels = 1;
    v12.mBuffers[0].mDataByteSize = bytesPerFrame;
    v12.mBuffers[0].mData = fetch;
    if (CARingBuffer::Fetch(self->ringBufRef, &v12, samples, timestamp))
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