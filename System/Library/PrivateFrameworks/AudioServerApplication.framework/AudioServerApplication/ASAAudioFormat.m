@interface ASAAudioFormat
- (ASAAudioFormat)initWithAudioStreamBasicDescription:(AudioStreamBasicDescription *)a3;
- (ASAAudioFormat)initWithAudioStreamRangedDescription:(AudioStreamRangedDescription *)a3;
- (AudioStreamBasicDescription)audioStreamBasicDescription;
- (AudioStreamRangedDescription)audioStreamRangedDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setChannelsPerFrame:(unsigned int)a3;
@end

@implementation ASAAudioFormat

- (ASAAudioFormat)initWithAudioStreamBasicDescription:(AudioStreamBasicDescription *)a3
{
  result = [(ASAAudioFormat *)self init];
  if (result)
  {
    mSampleRate = a3->mSampleRate;
    result->_formatID = a3->mFormatID;
    result->_formatFlags = a3->mFormatFlags;
    result->_bytesPerPacket = a3->mBytesPerPacket;
    mFramesPerPacket = a3->mFramesPerPacket;
    result->_framesPerPacket = mFramesPerPacket;
    result->_channelsPerFrame = a3->mChannelsPerFrame;
    mBytesPerFrame = a3->mBytesPerFrame;
    result->_bytesPerFrame = mBytesPerFrame;
    result->_bitsPerChannel = a3->mBitsPerChannel;
    result->_bytesPerPacket = mBytesPerFrame * mFramesPerPacket;
    result->_sampleRate = mSampleRate;
    result->_minimumSampleRate = mSampleRate;
    result->_maximumSampleRate = mSampleRate;
  }

  return result;
}

- (ASAAudioFormat)initWithAudioStreamRangedDescription:(AudioStreamRangedDescription *)a3
{
  result = [(ASAAudioFormat *)self init];
  if (result)
  {
    result->_sampleRate = a3->mFormat.mSampleRate;
    result->_formatID = a3->mFormat.mFormatID;
    result->_formatFlags = a3->mFormat.mFormatFlags;
    result->_bytesPerPacket = a3->mFormat.mBytesPerPacket;
    mFramesPerPacket = a3->mFormat.mFramesPerPacket;
    result->_framesPerPacket = mFramesPerPacket;
    result->_channelsPerFrame = a3->mFormat.mChannelsPerFrame;
    mBytesPerFrame = a3->mFormat.mBytesPerFrame;
    result->_bytesPerFrame = mBytesPerFrame;
    result->_bitsPerChannel = a3->mFormat.mBitsPerChannel;
    result->_bytesPerPacket = mBytesPerFrame * mFramesPerPacket;
    result->_minimumSampleRate = a3->mSampleRateRange.mMinimum;
    result->_maximumSampleRate = a3->mSampleRateRange.mMaximum;
  }

  return result;
}

- (void)setChannelsPerFrame:(unsigned int)a3
{
  self->_channelsPerFrame = a3;
  [(ASAAudioFormat *)self setBytesPerFrame:4 * a3];
  v4 = [(ASAAudioFormat *)self framesPerPacket];
  v5 = [(ASAAudioFormat *)self bytesPerFrame]* v4;

  [(ASAAudioFormat *)self setBytesPerPacket:v5];
}

- (AudioStreamBasicDescription)audioStreamBasicDescription
{
  *&retstr->mBitsPerChannel = 0;
  [(ASAAudioFormat *)self sampleRate];
  retstr->mSampleRate = v5;
  retstr->mFormatID = [(ASAAudioFormat *)self formatID];
  retstr->mFormatFlags = [(ASAAudioFormat *)self formatFlags];
  retstr->mBytesPerPacket = [(ASAAudioFormat *)self bytesPerPacket];
  retstr->mFramesPerPacket = [(ASAAudioFormat *)self framesPerPacket];
  retstr->mBytesPerFrame = [(ASAAudioFormat *)self bytesPerFrame];
  retstr->mChannelsPerFrame = [(ASAAudioFormat *)self channelsPerFrame];
  result = [(ASAAudioFormat *)self bitsPerChannel];
  retstr->mBitsPerChannel = result;
  return result;
}

- (AudioStreamRangedDescription)audioStreamRangedDescription
{
  [(ASAAudioFormat *)self audioStreamBasicDescription];
  retstr->mSampleRateRange.mMinimum = 0.0;
  retstr->mSampleRateRange.mMaximum = 0.0;
  [(ASAAudioFormat *)self minimumSampleRate];
  retstr->mSampleRateRange.mMinimum = v5;
  result = [(ASAAudioFormat *)self maximumSampleRate];
  retstr->mSampleRateRange.mMaximum = v7;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(ASAAudioFormat *)self sampleRate];
  [v4 setSampleRate:?];
  [v4 setFormatID:{-[ASAAudioFormat formatID](self, "formatID")}];
  [v4 setFormatFlags:{-[ASAAudioFormat formatFlags](self, "formatFlags")}];
  [v4 setBytesPerPacket:{-[ASAAudioFormat bytesPerPacket](self, "bytesPerPacket")}];
  [v4 setFramesPerPacket:{-[ASAAudioFormat framesPerPacket](self, "framesPerPacket")}];
  [v4 setBytesPerFrame:{-[ASAAudioFormat bytesPerFrame](self, "bytesPerFrame")}];
  [v4 setChannelsPerFrame:{-[ASAAudioFormat channelsPerFrame](self, "channelsPerFrame")}];
  [v4 setBitsPerChannel:{-[ASAAudioFormat bitsPerChannel](self, "bitsPerChannel")}];
  [(ASAAudioFormat *)self minimumSampleRate];
  [v4 setMinimumSampleRate:?];
  [(ASAAudioFormat *)self maximumSampleRate];
  [v4 setMaximumSampleRate:?];
  return v4;
}

- (id)description
{
  v24 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(ASAAudioFormat *)self sampleRate];
  v6 = v5;
  if ([(ASAAudioFormat *)self formatID]< 0x20000000 || [(ASAAudioFormat *)self formatID]> 2130706431)
  {
    v7 = 32;
  }

  else
  {
    v7 = ([(ASAAudioFormat *)self formatID]>> 24);
  }

  v23 = v7;
  if (([(ASAAudioFormat *)self formatID]<< 8) < 0x20000000 || ([(ASAAudioFormat *)self formatID]<< 8) > 2130706431)
  {
    v8 = 32;
  }

  else
  {
    v8 = (([(ASAAudioFormat *)self formatID]<< 8) >> 24);
  }

  v22 = v8;
  if ([(ASAAudioFormat *)self formatID]< 0x2000 || [(ASAAudioFormat *)self formatID]> 32511)
  {
    v9 = 32;
  }

  else
  {
    v9 = ([(ASAAudioFormat *)self formatID]>> 8);
  }

  if ([(ASAAudioFormat *)self formatID]< 32 || [(ASAAudioFormat *)self formatID]== 127)
  {
    v10 = 32;
  }

  else
  {
    v10 = [(ASAAudioFormat *)self formatID];
  }

  v11 = [(ASAAudioFormat *)self formatFlags];
  v12 = [(ASAAudioFormat *)self bytesPerPacket];
  v13 = [(ASAAudioFormat *)self framesPerPacket];
  v14 = [(ASAAudioFormat *)self bytesPerFrame];
  v15 = [(ASAAudioFormat *)self channelsPerFrame];
  v16 = [(ASAAudioFormat *)self bitsPerChannel];
  [(ASAAudioFormat *)self minimumSampleRate];
  v18 = v17;
  [(ASAAudioFormat *)self maximumSampleRate];
  v20 = [v24 stringWithFormat:@"<%@ sampleRate:%f formatID:%c%c%c%c formatFlags:0x%08x bytesPerPacket:%u framesPerPacket:%u bytesPerFrame:%u channelsPerFrame:%u bitsPerChannel:%u minimumSampleRate:%f maximumSampleRate:%f>", v4, v6, v23, v22, v9, v10, v11, v12, v13, v14, v15, v16, v18, v19];

  return v20;
}

@end