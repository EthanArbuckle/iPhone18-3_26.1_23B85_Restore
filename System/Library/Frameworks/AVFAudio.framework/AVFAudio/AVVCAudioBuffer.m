@interface AVVCAudioBuffer
- (void)dealloc;
- (void)finalize;
- (void)setBytesDataSize:(int)a3;
- (void)setPacketDescriptions:(const AudioStreamPacketDescription *)a3 count:(int)a4;
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

- (void)setPacketDescriptions:(const AudioStreamPacketDescription *)a3 count:(int)a4
{
  if (a3)
  {
    v4 = *self->_impl;
    v5 = *(v4 + 32);
    if (v5 >= a4)
    {
      v5 = a4;
    }

    memcpy(*(v4 + 40), a3, 16 * v5);
  }
}

- (void)setBytesDataSize:(int)a3
{
  v3 = *self->_impl;
  v4 = *v3;
  if (*v3 >= a3)
  {
    v4 = a3;
  }

  v3[4] = v4;
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