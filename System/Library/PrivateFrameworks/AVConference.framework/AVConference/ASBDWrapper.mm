@interface ASBDWrapper
- (ASBDWrapper)initWithASBD:(AudioStreamBasicDescription *)d;
- (AudioStreamBasicDescription)asbd;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
@end

@implementation ASBDWrapper

- (ASBDWrapper)initWithASBD:(AudioStreamBasicDescription *)d
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = ASBDWrapper;
  result = [(ASBDWrapper *)&v7 init];
  if (result)
  {
    v5 = *&d->mSampleRate;
    v6 = *&d->mBytesPerPacket;
    *&result->_asbd.mBitsPerChannel = *&d->mBitsPerChannel;
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

- (void)setAsbd:(AudioStreamBasicDescription *)asbd
{
  v3 = *&asbd->mSampleRate;
  v4 = *&asbd->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&asbd->mBitsPerChannel;
  *&self->_asbd.mBytesPerPacket = v4;
  *&self->_asbd.mSampleRate = v3;
}

@end