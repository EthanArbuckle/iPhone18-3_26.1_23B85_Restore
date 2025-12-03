@interface AVVCAudioBuffer
- (void)dealloc;
- (void)finalize;
- (void)setBytesDataSize:(int)size;
- (void)setPacketDescriptions:(const AudioStreamPacketDescription *)descriptions count:(int)count;
@end

@implementation AVVCAudioBuffer

- (void)dealloc
{
  impl = self->_impl;
  if (*impl)
  {
    MyAudioQueueBuffer::~MyAudioQueueBuffer(*impl);
    MEMORY[0x1BFAF5800]();
  }

  MEMORY[0x1BFAF5800](impl, 0x1020C40A122CEF7);
  v4.receiver = self;
  v4.super_class = AVVCAudioBuffer;
  [(AVVCAudioBuffer *)&v4 dealloc];
}

- (void)setPacketDescriptions:(const AudioStreamPacketDescription *)descriptions count:(int)count
{
  if (descriptions)
  {
    v4 = *self->_impl;
    countCopy = *(v4 + 32);
    if (countCopy >= count)
    {
      countCopy = count;
    }

    memcpy(*(v4 + 40), descriptions, 16 * countCopy);
  }
}

- (void)setBytesDataSize:(int)size
{
  v3 = *self->_impl;
  sizeCopy = *v3;
  if (*v3 >= size)
  {
    sizeCopy = size;
  }

  v3[4] = sizeCopy;
}

- (void)finalize
{
  impl = self->_impl;
  if (*impl)
  {
    MyAudioQueueBuffer::~MyAudioQueueBuffer(*impl);
    MEMORY[0x1BFAF5800]();
  }

  MEMORY[0x1BFAF5800](impl, 0x1020C40A122CEF7);
  v4.receiver = self;
  v4.super_class = AVVCAudioBuffer;
  [(AVVCAudioBuffer *)&v4 finalize];
}

@end