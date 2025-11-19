@interface ATCIOA2StreamFormat
+ (id)aeaStreamFormatWithDictionary:(id)a3;
+ (id)aeaStreamFormatsWithRangedDictionary:(id)a3;
- (ATCIOA2StreamFormat)initWithAudioStreamBasicDescription:(AudioStreamBasicDescription *)a3;
- (ATCIOA2StreamFormat)initWithIOAudio2Dictionary:(id)a3;
- (ATCIOA2StreamFormat)initWithSampleRate:(double)a3 numChannels:(unsigned int)a4 commonPCMFormat:(unsigned int)a5 isInterleaved:(BOOL)a6;
- (AudioStreamBasicDescription)audioStreamBasicDescription;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ATCIOA2StreamFormat

+ (id)aeaStreamFormatWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithIOAudio2Dictionary:v3];

  return v4;
}

+ (id)aeaStreamFormatsWithRangedDictionary:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v24 = [MEMORY[0x277CBEB18] array];
  v4 = [v3 objectForKeyedSubscript:@"min sample rate"];
  v5 = [v3 objectForKeyedSubscript:@"max sample rate"];
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  if (v7 == v8)
  {
    v21 = [objc_alloc(objc_opt_class()) initWithIOAudio2Dictionary:v3];
    if (v21)
    {
      [v24 addObject:v21];
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [&unk_28535DEC0 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(&unk_28535DEC0);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          [v13 doubleValue];
          v15 = v14;
          [v4 doubleValue];
          if (v15 >= v16)
          {
            [v13 doubleValue];
            v18 = v17;
            [v5 doubleValue];
            if (v18 <= v19)
            {
              v20 = [objc_alloc(objc_opt_class()) initWithIOAudio2Dictionary:v3];
              if (v20)
              {
                [v13 doubleValue];
                [v20 setSampleRate:?];
                [v24 addObject:v20];
              }
            }
          }
        }

        v10 = [&unk_28535DEC0 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v24;
}

- (ATCIOA2StreamFormat)initWithSampleRate:(double)a3 numChannels:(unsigned int)a4 commonPCMFormat:(unsigned int)a5 isInterleaved:(BOOL)a6
{
  v6 = a6;
  v15.receiver = self;
  v15.super_class = ATCIOA2StreamFormat;
  result = [(ATCIOA2StreamFormat *)&v15 init];
  if (result)
  {
    result->_sampleRate = a3;
    *&result->_formatID = 0x86C70636DLL;
    result->_framesPerPacket = 1;
    result->_channelsPerFrame = a4;
    v11 = a5 - 1;
    if (a5 - 1 > 3)
    {
      v14 = 0;
      v13 = 40;
    }

    else
    {
      v12 = dword_241798D90[v11];
      v13 = dword_241798DA0[v11];
      v14 = dword_241798DB0[v11];
      result->_formatFlags = v12;
    }

    result->_bitsPerChannel = 8 * v14;
    if (v6)
    {
      v14 *= a4;
    }

    else
    {
      result->_formatFlags = v13;
    }

    result->_bytesPerPacket = v14;
    result->_bytesPerFrame = v14;
  }

  return result;
}

- (ATCIOA2StreamFormat)initWithAudioStreamBasicDescription:(AudioStreamBasicDescription *)a3
{
  v7.receiver = self;
  v7.super_class = ATCIOA2StreamFormat;
  result = [(ATCIOA2StreamFormat *)&v7 init];
  if (result)
  {
    result->_sampleRate = a3->mSampleRate;
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
  }

  return result;
}

- (ATCIOA2StreamFormat)initWithIOAudio2Dictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ATCIOA2StreamFormat;
  v5 = [(ATCIOA2StreamFormat *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sample rate"];

    if (v6)
    {
      v7 = @"sample rate";
    }

    else
    {
      v7 = @"min sample rate";
    }

    v8 = [v4 objectForKeyedSubscript:v7];
    v5->_sampleRate = IOAudio2Fixed64ToFloat64([v8 longLongValue]);

    v9 = [v4 objectForKeyedSubscript:@"format ID"];
    v5->_formatID = [v9 unsignedIntValue];

    v10 = [v4 objectForKeyedSubscript:@"format flags"];
    v5->_formatFlags = [v10 unsignedIntValue];

    v11 = [v4 objectForKeyedSubscript:@"bytes per packet"];
    v5->_bytesPerPacket = [v11 unsignedIntValue];

    v12 = [v4 objectForKeyedSubscript:@"frames per packet"];
    v5->_framesPerPacket = [v12 unsignedIntValue];

    v13 = [v4 objectForKeyedSubscript:@"channels per frame"];
    v5->_channelsPerFrame = [v13 unsignedIntValue];

    v14 = [v4 objectForKeyedSubscript:@"bytes per frame"];
    v5->_bytesPerFrame = [v14 unsignedIntValue];

    v15 = [v4 objectForKeyedSubscript:@"bits per channel"];
    v5->_bitsPerChannel = [v15 unsignedIntValue];
  }

  return v5;
}

- (AudioStreamBasicDescription)audioStreamBasicDescription
{
  *&retstr->mBitsPerChannel = 0;
  [(ATCIOA2StreamFormat *)self sampleRate];
  retstr->mSampleRate = v5;
  retstr->mFormatID = [(ATCIOA2StreamFormat *)self formatID];
  retstr->mFormatFlags = [(ATCIOA2StreamFormat *)self formatFlags];
  retstr->mBytesPerPacket = [(ATCIOA2StreamFormat *)self bytesPerPacket];
  retstr->mFramesPerPacket = [(ATCIOA2StreamFormat *)self framesPerPacket];
  retstr->mBytesPerFrame = [(ATCIOA2StreamFormat *)self bytesPerFrame];
  retstr->mChannelsPerFrame = [(ATCIOA2StreamFormat *)self channelsPerFrame];
  result = [(ATCIOA2StreamFormat *)self bitsPerChannel];
  retstr->mBitsPerChannel = result;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [(ATCIOA2StreamFormat *)self sampleRate];
  [v4 setSampleRate:?];
  [v4 setFormatID:{-[ATCIOA2StreamFormat formatID](self, "formatID")}];
  [v4 setFormatFlags:{-[ATCIOA2StreamFormat formatFlags](self, "formatFlags")}];
  [v4 setBytesPerPacket:{-[ATCIOA2StreamFormat bytesPerPacket](self, "bytesPerPacket")}];
  [v4 setFramesPerPacket:{-[ATCIOA2StreamFormat framesPerPacket](self, "framesPerPacket")}];
  [v4 setBytesPerFrame:{-[ATCIOA2StreamFormat bytesPerFrame](self, "bytesPerFrame")}];
  [v4 setChannelsPerFrame:{-[ATCIOA2StreamFormat channelsPerFrame](self, "channelsPerFrame")}];
  [v4 setBitsPerChannel:{-[ATCIOA2StreamFormat bitsPerChannel](self, "bitsPerChannel")}];
  return v4;
}

- (unint64_t)hash
{
  v3 = [(ATCIOA2StreamFormat *)self formatID];
  v4 = [(ATCIOA2StreamFormat *)self formatFlags]| v3;
  v5 = [(ATCIOA2StreamFormat *)self bytesPerPacket];
  v6 = v4 | v5 | [(ATCIOA2StreamFormat *)self framesPerPacket];
  v7 = [(ATCIOA2StreamFormat *)self bytesPerFrame];
  v8 = v7 | [(ATCIOA2StreamFormat *)self channelsPerFrame];
  return *&self->_sampleRate | v6 | v8 | [(ATCIOA2StreamFormat *)self bitsPerChannel];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ATCIOA2StreamFormat *)v5 formatID];
      if (v6 == [(ATCIOA2StreamFormat *)self formatID]&& (v7 = [(ATCIOA2StreamFormat *)v5 formatFlags], v7 == [(ATCIOA2StreamFormat *)self formatFlags]) && (v8 = [(ATCIOA2StreamFormat *)v5 bytesPerPacket], v8 == [(ATCIOA2StreamFormat *)self bytesPerPacket]) && (v9 = [(ATCIOA2StreamFormat *)v5 framesPerPacket], v9 == [(ATCIOA2StreamFormat *)self framesPerPacket]) && (v10 = [(ATCIOA2StreamFormat *)v5 bytesPerFrame], v10 == [(ATCIOA2StreamFormat *)self bytesPerFrame]) && (v11 = [(ATCIOA2StreamFormat *)v5 channelsPerFrame], v11 == [(ATCIOA2StreamFormat *)self channelsPerFrame]) && (v12 = [(ATCIOA2StreamFormat *)v5 bitsPerChannel], v12 == [(ATCIOA2StreamFormat *)self bitsPerChannel]))
      {
        [(ATCIOA2StreamFormat *)v5 sampleRate];
        v14 = v13;
        [(ATCIOA2StreamFormat *)self sampleRate];
        v16 = vabdd_f64(v14, v15) < 0.001;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)description
{
  v8 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(ATCIOA2StreamFormat *)self sampleRate];
  v6 = [v8 stringWithFormat:@"<%@ sampleRate:%f formatID:%c%c%c%c formatFlags:0x%08x bytesPerPacket:%u framesPerPacket:%u bytesPerFrame:%u channelsPerFrame:%u bitsPerChannel:%u>", v4, v5, (-[ATCIOA2StreamFormat formatID](self, "formatID") >> 24), ((-[ATCIOA2StreamFormat formatID](self, "formatID") << 8) >> 24), (-[ATCIOA2StreamFormat formatID](self, "formatID") >> 8), -[ATCIOA2StreamFormat formatID](self, "formatID"), -[ATCIOA2StreamFormat formatFlags](self, "formatFlags"), -[ATCIOA2StreamFormat bytesPerPacket](self, "bytesPerPacket"), -[ATCIOA2StreamFormat framesPerPacket](self, "framesPerPacket"), -[ATCIOA2StreamFormat bytesPerFrame](self, "bytesPerFrame"), -[ATCIOA2StreamFormat channelsPerFrame](self, "channelsPerFrame"), -[ATCIOA2StreamFormat bitsPerChannel](self, "bitsPerChannel")];

  return v6;
}

@end