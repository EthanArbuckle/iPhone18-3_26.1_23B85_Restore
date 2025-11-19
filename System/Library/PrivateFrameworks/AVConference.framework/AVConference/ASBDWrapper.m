@interface ASBDWrapper
- (ASBDWrapper)initWithASBD:(AudioStreamBasicDescription *)a3;
- (AudioStreamBasicDescription)asbd;
- (void)setAsbd:(AudioStreamBasicDescription *)a3;
@end

@implementation ASBDWrapper

- (ASBDWrapper)initWithASBD:(AudioStreamBasicDescription *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = ASBDWrapper;
  result = [(ASBDWrapper *)&v7 init];
  if (result)
  {
    v5 = *&a3->mSampleRate;
    v6 = *&a3->mBytesPerPacket;
    *&result->_asbd.mBitsPerChannel = *&a3->mBitsPerChannel;
    *&result->_asbd.mBytesPerPacket = v6;
    *&result->_asbd.mSampleRate = v5;
  }

  return result;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self->mBytesPerFrame;
  *&retstr->mSampleRate = *&self->mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[1].mSampleRate;
  return self;
}

- (void)setAsbd:(AudioStreamBasicDescription *)a3
{
  v3 = *&a3->mSampleRate;
  v4 = *&a3->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&a3->mBitsPerChannel;
  *&self->_asbd.mBytesPerPacket = v4;
  *&self->_asbd.mSampleRate = v3;
}

@end