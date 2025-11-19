@interface ASDRingBufferStreamPair
- (ASDRingBufferStreamPair)initWithRingBufferFrameCapacity:(int64_t)a3 withPlugin:(id)a4;
- (void)setRingBufferFrameCapacity:(int64_t)a3;
@end

@implementation ASDRingBufferStreamPair

- (ASDRingBufferStreamPair)initWithRingBufferFrameCapacity:(int64_t)a3 withPlugin:(id)a4
{
  v4 = a3;
  v6 = a4;
  v15.receiver = self;
  v15.super_class = ASDRingBufferStreamPair;
  v7 = [(ASDRingBufferStreamPair *)&v15 init];
  if (v7)
  {
    v8 = [(ASDRingBuffer *)[ASDManagedRingBuffer alloc] initWithFrameCapacity:v4];
    ringBuffer = v7->_ringBuffer;
    v7->_ringBuffer = v8;

    v10 = [[ASDRingBufferInputStream alloc] initWithRingBuffer:v7->_ringBuffer withPlugin:v6];
    inputStream = v7->_inputStream;
    v7->_inputStream = &v10->super;

    v12 = [[ASDRingBufferOutputStream alloc] initWithRingBuffer:v7->_ringBuffer withPlugin:v6];
    outputStream = v7->_outputStream;
    v7->_outputStream = &v12->super;
  }

  return v7;
}

- (void)setRingBufferFrameCapacity:(int64_t)a3
{
  v3 = a3;
  v4 = [(ASDRingBufferStreamPair *)self ringBuffer];
  [v4 setFrameCapacity:v3];
}

@end