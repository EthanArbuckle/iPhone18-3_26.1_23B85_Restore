@interface PollPostProcessBuffer
- (PollPostProcessBuffer)init;
- (void)dealloc;
@end

@implementation PollPostProcessBuffer

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PollPostProcessBuffer;
  [(PollPostProcessBuffer *)&v3 dealloc];
}

- (PollPostProcessBuffer)init
{
  v5.receiver = self;
  v5.super_class = PollPostProcessBuffer;
  v2 = [(PollPostProcessBuffer *)&v5 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x29EDB8DF8]) initWithLength:0x100000];
    v2->_dstBuffer = v3;
    if (v3)
    {
      [(PollPostProcessBuffer *)v2 reset];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

@end