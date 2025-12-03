@interface ASDRingBufferStreamPair
- (ASDRingBufferStreamPair)initWithRingBufferFrameCapacity:(int64_t)capacity withPlugin:(id)plugin;
- (void)setRingBufferFrameCapacity:(int64_t)capacity;
@end

@implementation ASDRingBufferStreamPair

- (ASDRingBufferStreamPair)initWithRingBufferFrameCapacity:(int64_t)capacity withPlugin:(id)plugin
{
  capacityCopy = capacity;
  pluginCopy = plugin;
  v15.receiver = self;
  v15.super_class = ASDRingBufferStreamPair;
  v7 = [(ASDRingBufferStreamPair *)&v15 init];
  if (v7)
  {
    v8 = [(ASDRingBuffer *)[ASDManagedRingBuffer alloc] initWithFrameCapacity:capacityCopy];
    ringBuffer = v7->_ringBuffer;
    v7->_ringBuffer = v8;

    v10 = [[ASDRingBufferInputStream alloc] initWithRingBuffer:v7->_ringBuffer withPlugin:pluginCopy];
    inputStream = v7->_inputStream;
    v7->_inputStream = &v10->super;

    v12 = [[ASDRingBufferOutputStream alloc] initWithRingBuffer:v7->_ringBuffer withPlugin:pluginCopy];
    outputStream = v7->_outputStream;
    v7->_outputStream = &v12->super;
  }

  return v7;
}

- (void)setRingBufferFrameCapacity:(int64_t)capacity
{
  capacityCopy = capacity;
  ringBuffer = [(ASDRingBufferStreamPair *)self ringBuffer];
  [ringBuffer setFrameCapacity:capacityCopy];
}

@end