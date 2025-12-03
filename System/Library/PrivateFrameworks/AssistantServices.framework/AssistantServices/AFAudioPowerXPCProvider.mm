@interface AFAudioPowerXPCProvider
- (AFAudioPowerXPCProvider)initWithXPCWrapper:(id)wrapper;
- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower;
@end

@implementation AFAudioPowerXPCProvider

- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower
{
  sharedMemory = self->_sharedMemory;
  if (!sharedMemory)
  {
    return 0;
  }

  v8 = power != 0;
  if (power)
  {
    [(_AFAudioPowerXPCSharedMemory *)sharedMemory averagePower];
    *power = v9;
  }

  if (peakPower)
  {
    [(_AFAudioPowerXPCSharedMemory *)self->_sharedMemory peakPower];
    *peakPower = v10;
    return 1;
  }

  return v8;
}

- (AFAudioPowerXPCProvider)initWithXPCWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v11.receiver = self;
  v11.super_class = AFAudioPowerXPCProvider;
  v5 = [(AFAudioPowerXPCProvider *)&v11 init];
  if (v5)
  {
    v6 = [_AFAudioPowerXPCSharedMemory alloc];
    xpcObject = [wrapperCopy xpcObject];
    v8 = [(_AFAudioPowerXPCSharedMemory *)v6 initWithXPCObject:xpcObject];
    sharedMemory = v5->_sharedMemory;
    v5->_sharedMemory = v8;
  }

  return v5;
}

@end