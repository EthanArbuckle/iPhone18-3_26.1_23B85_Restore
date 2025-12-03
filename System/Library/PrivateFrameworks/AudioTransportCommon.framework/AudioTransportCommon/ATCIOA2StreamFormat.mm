@interface ATCIOA2StreamFormat
+ (id)aeaStreamFormatWithDictionary:(id)dictionary;
+ (id)aeaStreamFormatsWithRangedDictionary:(id)dictionary;
- (ATCIOA2StreamFormat)initWithAudioStreamBasicDescription:(AudioStreamBasicDescription *)description;
- (ATCIOA2StreamFormat)initWithIOAudio2Dictionary:(id)dictionary;
- (ATCIOA2StreamFormat)initWithSampleRate:(double)rate numChannels:(unsigned int)channels commonPCMFormat:(unsigned int)format isInterleaved:(BOOL)interleaved;
- (AudioStreamBasicDescription)audioStreamBasicDescription;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation ATCIOA2StreamFormat

+ (id)aeaStreamFormatWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [objc_alloc(objc_opt_class()) initWithIOAudio2Dictionary:dictionaryCopy];

  return v4;
}

+ (id)aeaStreamFormatsWithRangedDictionary:(id)dictionary
{
  v30 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  array = [MEMORY[0x277CBEB18] array];
  v4 = [dictionaryCopy objectForKeyedSubscript:@"min sample rate"];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"max sample rate"];
  [v4 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  if (v7 == v8)
  {
    v21 = [objc_alloc(objc_opt_class()) initWithIOAudio2Dictionary:dictionaryCopy];
    if (v21)
    {
      [array addObject:v21];
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
              v20 = [objc_alloc(objc_opt_class()) initWithIOAudio2Dictionary:dictionaryCopy];
              if (v20)
              {
                [v13 doubleValue];
                [v20 setSampleRate:?];
                [array addObject:v20];
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

  return array;
}

- (ATCIOA2StreamFormat)initWithSampleRate:(double)rate numChannels:(unsigned int)channels commonPCMFormat:(unsigned int)format isInterleaved:(BOOL)interleaved
{
  interleavedCopy = interleaved;
  v15.receiver = self;
  v15.super_class = ATCIOA2StreamFormat;
  result = [(ATCIOA2StreamFormat *)&v15 init];
  if (result)
  {
    result->_sampleRate = rate;
    *&result->_formatID = 0x86C70636DLL;
    result->_framesPerPacket = 1;
    result->_channelsPerFrame = channels;
    v11 = format - 1;
    if (format - 1 > 3)
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
    if (interleavedCopy)
    {
      v14 *= channels;
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

- (ATCIOA2StreamFormat)initWithAudioStreamBasicDescription:(AudioStreamBasicDescription *)description
{
  v7.receiver = self;
  v7.super_class = ATCIOA2StreamFormat;
  result = [(ATCIOA2StreamFormat *)&v7 init];
  if (result)
  {
    result->_sampleRate = description->mSampleRate;
    result->_formatID = description->mFormatID;
    result->_formatFlags = description->mFormatFlags;
    result->_bytesPerPacket = description->mBytesPerPacket;
    mFramesPerPacket = description->mFramesPerPacket;
    result->_framesPerPacket = mFramesPerPacket;
    result->_channelsPerFrame = description->mChannelsPerFrame;
    mBytesPerFrame = description->mBytesPerFrame;
    result->_bytesPerFrame = mBytesPerFrame;
    result->_bitsPerChannel = description->mBitsPerChannel;
    result->_bytesPerPacket = mBytesPerFrame * mFramesPerPacket;
  }

  return result;
}

- (ATCIOA2StreamFormat)initWithIOAudio2Dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = ATCIOA2StreamFormat;
  v5 = [(ATCIOA2StreamFormat *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sample rate"];

    if (v6)
    {
      v7 = @"sample rate";
    }

    else
    {
      v7 = @"min sample rate";
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:v7];
    v5->_sampleRate = IOAudio2Fixed64ToFloat64([v8 longLongValue]);

    v9 = [dictionaryCopy objectForKeyedSubscript:@"format ID"];
    v5->_formatID = [v9 unsignedIntValue];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"format flags"];
    v5->_formatFlags = [v10 unsignedIntValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"bytes per packet"];
    v5->_bytesPerPacket = [v11 unsignedIntValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"frames per packet"];
    v5->_framesPerPacket = [v12 unsignedIntValue];

    v13 = [dictionaryCopy objectForKeyedSubscript:@"channels per frame"];
    v5->_channelsPerFrame = [v13 unsignedIntValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"bytes per frame"];
    v5->_bytesPerFrame = [v14 unsignedIntValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"bits per channel"];
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

- (id)copyWithZone:(_NSZone *)zone
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
  formatID = [(ATCIOA2StreamFormat *)self formatID];
  v4 = [(ATCIOA2StreamFormat *)self formatFlags]| formatID;
  bytesPerPacket = [(ATCIOA2StreamFormat *)self bytesPerPacket];
  v6 = v4 | bytesPerPacket | [(ATCIOA2StreamFormat *)self framesPerPacket];
  bytesPerFrame = [(ATCIOA2StreamFormat *)self bytesPerFrame];
  v8 = bytesPerFrame | [(ATCIOA2StreamFormat *)self channelsPerFrame];
  return *&self->_sampleRate | v6 | v8 | [(ATCIOA2StreamFormat *)self bitsPerChannel];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      formatID = [(ATCIOA2StreamFormat *)v5 formatID];
      if (formatID == [(ATCIOA2StreamFormat *)self formatID]&& (v7 = [(ATCIOA2StreamFormat *)v5 formatFlags], v7 == [(ATCIOA2StreamFormat *)self formatFlags]) && (v8 = [(ATCIOA2StreamFormat *)v5 bytesPerPacket], v8 == [(ATCIOA2StreamFormat *)self bytesPerPacket]) && (v9 = [(ATCIOA2StreamFormat *)v5 framesPerPacket], v9 == [(ATCIOA2StreamFormat *)self framesPerPacket]) && (v10 = [(ATCIOA2StreamFormat *)v5 bytesPerFrame], v10 == [(ATCIOA2StreamFormat *)self bytesPerFrame]) && (v11 = [(ATCIOA2StreamFormat *)v5 channelsPerFrame], v11 == [(ATCIOA2StreamFormat *)self channelsPerFrame]) && (v12 = [(ATCIOA2StreamFormat *)v5 bitsPerChannel], v12 == [(ATCIOA2StreamFormat *)self bitsPerChannel]))
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