@interface AVAudioFormat
+ (AVAudioFormat)formatWithInvalidSampleRateAndChannelCount;
+ (id)settingsFromASBD:(const AudioStreamBasicDescription *)a3 channelLayout:(id)a4;
- (AVAudioFormat)initStandardFormatWithSampleRate:(double)sampleRate channelLayout:(AVAudioChannelLayout *)layout;
- (AVAudioFormat)initStandardFormatWithSampleRate:(double)sampleRate channels:(AVAudioChannelCount)channels;
- (AVAudioFormat)initWithCMAudioFormatDescription:(CMAudioFormatDescriptionRef)formatDescription;
- (AVAudioFormat)initWithCoder:(id)a3;
- (AVAudioFormat)initWithCommonFormat:(AVAudioCommonFormat)format sampleRate:(double)sampleRate channels:(AVAudioChannelCount)channels interleaved:(BOOL)interleaved;
- (AVAudioFormat)initWithCommonFormat:(AVAudioCommonFormat)format sampleRate:(double)sampleRate interleaved:(BOOL)interleaved channelLayout:(AVAudioChannelLayout *)layout;
- (AVAudioFormat)initWithSettings:(NSDictionary *)settings;
- (AVAudioFormat)initWithStreamDescription:(const AudioStreamBasicDescription *)asbd channelLayout:(AVAudioChannelLayout *)layout;
- (BOOL)isEqual:(id)object;
- (BOOL)isStandard;
- (CMAudioFormatDescriptionRef)formatDescription;
- (NSData)magicCookie;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setMagicCookie:(NSData *)magicCookie;
@end

@implementation AVAudioFormat

- (void)dealloc
{
  reserved = self->_reserved;
  if (reserved)
  {

    MEMORY[0x1BFAF5800](reserved, 0x80C40B8603338);
  }

  v4.receiver = self;
  v4.super_class = AVAudioFormat;
  [(AVAudioFormat *)&v4 dealloc];
}

- (NSData)magicCookie
{
  os_unfair_lock_lock(&self->_magicCookieMutex.m_lock);
  reserved = self->_reserved;
  if (reserved)
  {
    v4 = *reserved;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_magicCookieMutex.m_lock);

  return v4;
}

- (id)description
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *&self->_asbd.mBytesPerPacket;
  *&v7.var0 = *&self->_asbd.mSampleRate;
  *&v7.var3 = v3;
  *&v7.var7 = *&self->_asbd.mBitsPerChannel;
  CAStreamBasicDescription::AsString(&v7, v8, 0x80uLL, v7.var0, *&v3);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<AVAudioFormat %p: %s>", self, v8];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (AVAudioFormat)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"mSampleRate"];
  v13 = v5;
  v14 = [v4 decodeIntegerForKey:@"mFormatID"];
  v15 = [v4 decodeIntegerForKey:@"mFormatFlags"];
  v16 = [v4 decodeIntegerForKey:@"mBytesPerPacket"];
  v17 = [v4 decodeIntegerForKey:@"mFramesPerPacket"];
  v18 = [v4 decodeIntegerForKey:@"mBytesPerFrame"];
  v19 = [v4 decodeIntegerForKey:@"mChannelsPerFrame"];
  v20 = [v4 decodeIntegerForKey:@"mBitsPerChannel"];
  v6 = objc_opt_self();
  v7 = [v4 decodeObjectOfClass:v6 forKey:@"channelLayout"];

  v8 = objc_opt_self();
  v9 = [v4 decodeObjectOfClass:v8 forKey:@"magicCookie"];

  v10 = [(AVAudioFormat *)self initWithStreamDescription:&v13 channelLayout:v7];
  v11 = v10;
  if (v9)
  {
    [(AVAudioFormat *)v10 setMagicCookie:v9];
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(AVAudioFormat *)self streamDescription];
  [v7 encodeDouble:@"mSampleRate" forKey:v4->mSampleRate];
  [v7 encodeInteger:v4->mFormatID forKey:@"mFormatID"];
  [v7 encodeInteger:v4->mFormatFlags forKey:@"mFormatFlags"];
  [v7 encodeInteger:v4->mBytesPerPacket forKey:@"mBytesPerPacket"];
  [v7 encodeInteger:v4->mFramesPerPacket forKey:@"mFramesPerPacket"];
  [v7 encodeInteger:v4->mBytesPerFrame forKey:@"mBytesPerFrame"];
  [v7 encodeInteger:v4->mChannelsPerFrame forKey:@"mChannelsPerFrame"];
  [v7 encodeInteger:v4->mBitsPerChannel forKey:@"mBitsPerChannel"];
  v5 = [(AVAudioFormat *)self channelLayout];
  [v7 encodeObject:v5 forKey:@"channelLayout"];

  v6 = [(AVAudioFormat *)self magicCookie];
  [v7 encodeObject:v6 forKey:@"magicCookie"];
}

- (void)setMagicCookie:(NSData *)magicCookie
{
  v5 = magicCookie;
  os_unfair_lock_lock(&self->_magicCookieMutex.m_lock);
  reserved = self->_reserved;
  if (reserved)
  {
    AVAudioFormatImpl::setMagicCookie(reserved, v5);
  }

  else if (v5)
  {
    operator new();
  }

  os_unfair_lock_unlock(&self->_magicCookieMutex.m_lock);
}

- (BOOL)isStandard
{
  if (self->_commonFormat == 1)
  {
    return (LOBYTE(self->_asbd.mFormatFlags) >> 5) & 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (unint64_t)hash
{
  v2 = self->_asbd.mFormatID - self->_asbd.mSampleRate + 32 * self->_asbd.mSampleRate;
  v3 = self->_asbd.mBytesPerFrame - v2 + 32 * v2;
  v4 = self->_asbd.mFramesPerPacket - v3 + 32 * v3;
  v5 = self->_asbd.mChannelsPerFrame - v4 + 32 * v4;
  return (self->_asbd.mBitsPerChannel - v5 + 32 * v5 + 887503681);
}

- (BOOL)isEqual:(id)object
{
  v4 = object;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_asbd.mSampleRate == v4->_asbd.mSampleRate && self->_asbd.mFormatID == v4->_asbd.mFormatID && self->_asbd.mBytesPerPacket == v4->_asbd.mBytesPerPacket && self->_asbd.mFramesPerPacket == v4->_asbd.mFramesPerPacket && self->_asbd.mChannelsPerFrame == v4->_asbd.mChannelsPerFrame && self->_asbd.mBitsPerChannel == v4->_asbd.mBitsPerChannel && CA::Implementation::EquivalentFormatFlags(&self->_asbd, &v4->_asbd, v5))
    {
      v6 = [(AVAudioFormat *)v4 magicCookie];
      v7 = [(AVAudioFormat *)self magicCookie];
      if (v7)
      {
        v8 = [(AVAudioFormat *)self magicCookie];
      }

      else
      {
        v8 = v6;
      }

      v11 = v8;

      v12 = [(AVAudioFormat *)self magicCookie];
      if (v12)
      {
        v13 = v6;
      }

      else
      {
        v13 = [(AVAudioFormat *)self magicCookie];
      }

      v14 = v13;

      if (v11 && ([v11 isEqual:v14] & 1) == 0)
      {
        v9 = 0;
      }

      else
      {
        v15 = [(AVAudioFormat *)v4 channelLayout];
        layout = self->_layout;
        if ((v15 != 0) == (layout != 0))
        {
          v9 = !layout || [(AVAudioChannelLayout *)layout isEqual:v15];
        }

        else
        {
          if (layout)
          {
            v17 = self->_layout;
          }

          else
          {
            v17 = v15;
          }

          v18 = v17;
          v9 = [(AVAudioChannelLayout *)v18 layoutTag]== 6553601 || [(AVAudioChannelLayout *)v18 layoutTag]== 6619138;
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (CMAudioFormatDescriptionRef)formatDescription
{
  arg = 0;
  v3 = [(AVAudioFormat *)self streamDescription];
  v4 = [(AVAudioFormat *)self channelLayout];
  v5 = [v4 layout];

  v6 = [(AVAudioFormat *)self magicCookie];
  v7 = v6;
  if (!v5)
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    v9 = 0;
    v10 = 0;
    goto LABEL_9;
  }

  if (!*v5)
  {
    v8 = 20 * v5[2] + 12;
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  v8 = 12;
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_6:
  v9 = [v6 length];
  v10 = [v7 bytes];
LABEL_9:
  v11 = sCMAudioFormatDescriptionCreate;
  if (sCMAudioFormatDescriptionCreate)
  {
    goto LABEL_13;
  }

  if (sLoadCoreMediaOnce != -1)
  {
    dispatch_once(&sLoadCoreMediaOnce, &__block_literal_global_6099);
  }

  v11 = sCMAudioFormatDescriptionCreate;
  if (sCMAudioFormatDescriptionCreate)
  {
LABEL_13:
    v12 = (v11)(*MEMORY[0x1E695E480], v3, v8, v5, v9, v10, 0, &arg);
    if (v12)
    {
      NSLog(&cfstr_CannotConvertT.isa, v12);
    }
  }

  if (arg)
  {
    v13 = CFAutorelease(arg);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (AVAudioFormat)initWithCMAudioFormatDescription:(CMAudioFormatDescriptionRef)formatDescription
{
  if (formatDescription)
  {
    v16 = 0;
    v5 = sCMAudioFormatDescriptionGetStreamBasicDescription;
    if (sCMAudioFormatDescriptionGetStreamBasicDescription)
    {
      goto LABEL_6;
    }

    if (sLoadCoreMediaOnce != -1)
    {
      dispatch_once(&sLoadCoreMediaOnce, &__block_literal_global_6099);
    }

    v5 = sCMAudioFormatDescriptionGetStreamBasicDescription;
    if (sCMAudioFormatDescriptionGetStreamBasicDescription)
    {
LABEL_6:
      v6 = v5(formatDescription, a2);
    }

    else
    {
      v6 = 0;
    }

    v7 = sCMAudioFormatDescriptionGetChannelLayout;
    if (sCMAudioFormatDescriptionGetChannelLayout)
    {
      goto LABEL_11;
    }

    if (sLoadCoreMediaOnce != -1)
    {
      dispatch_once(&sLoadCoreMediaOnce, &__block_literal_global_6099);
    }

    v7 = sCMAudioFormatDescriptionGetChannelLayout;
    if (sCMAudioFormatDescriptionGetChannelLayout)
    {
LABEL_11:
      v8 = v7(formatDescription, &v16);
    }

    else
    {
      v8 = 0;
    }

    v15 = 0;
    v9 = sCMAudioFormatDescriptionGetMagicCookie;
    if (!sCMAudioFormatDescriptionGetMagicCookie)
    {
      if (sLoadCoreMediaOnce != -1)
      {
        dispatch_once(&sLoadCoreMediaOnce, &__block_literal_global_6099);
      }

      v9 = sCMAudioFormatDescriptionGetMagicCookie;
      if (!sCMAudioFormatDescriptionGetMagicCookie)
      {
        v10 = 0;
        if (!v6)
        {
          goto LABEL_26;
        }

LABEL_17:
        if (v16 && v8)
        {
          v11 = [AVAudioChannelLayout layoutWithLayout:v8 size:?];
          self = [(AVAudioFormat *)self initWithStreamDescription:v6 channelLayout:v11];

          if (!v10)
          {
            goto LABEL_25;
          }
        }

        else
        {
          self = [(AVAudioFormat *)self initWithStreamDescription:v6, v15];
          if (!v10)
          {
LABEL_25:
            v6 = self;
            goto LABEL_26;
          }
        }

        if (v15)
        {
          v12 = objc_alloc(MEMORY[0x1E695DEF0]);
          v13 = [v12 initWithBytes:v10 length:v15];
          [(AVAudioFormat *)self setMagicCookie:v13];
        }

        goto LABEL_25;
      }
    }

    v10 = v9(formatDescription, &v15);
    if (v6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_26:

  return v6;
}

- (AVAudioFormat)initWithSettings:(NSDictionary *)settings
{
  v4 = settings;
  v32[0] = 0;
  v28 = 0u;
  v29 = 0u;
  v31 = 0;
  if (getUInt32ForKey(v4, &cfstr_Avformatidkey.isa, &v31, v32))
  {
    v6 = v31;
  }

  else
  {
    if (v32[0])
    {
      goto LABEL_16;
    }

    v6 = 1819304813;
  }

  LODWORD(v28) = v6;
  *&v30 = 0.0;
  if (getFloat64ForKey(v4, &v30, v32, v5))
  {
    v7 = 0x40BF400000000000;
    if (*&v30 >= 8000.0)
    {
      v7 = v30;
      if (*&v30 > 192000.0)
      {
        v7 = 0x4107700000000000;
      }
    }
  }

  else
  {
    if (v32[0])
    {
      goto LABEL_16;
    }

    v7 = qword_1BA6CF400[v6 == 1768710755];
  }

  v27 = v7;
  if (getUInt32ForKey(v4, &cfstr_Avnumberofchan.isa, &v31, v32))
  {
    if (v31 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v31;
    }
  }

  else
  {
    if (v32[0])
    {
      goto LABEL_16;
    }

    v8 = 1;
  }

  DWORD1(v29) = v8;
  if (v6 == 1819304813)
  {
    UInt32ForKey = getUInt32ForKey(v4, &cfstr_Avlinearpcmisb.isa, &v31, v32);
    if (v31)
    {
      v11 = 10;
    }

    else
    {
      v11 = 8;
    }

    if (UInt32ForKey)
    {
      v12 = v11;
    }

    else
    {
      v12 = 8;
    }

    v13 = getUInt32ForKey(v4, &cfstr_Avlinearpcmisf.isa, &v31, v32);
    if (v31)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v14 == 1)
    {
      v12 |= 1u;
      DWORD2(v29) = 32;
      v15 = 4;
LABEL_38:
      v17 = getUInt32ForKey(v4, &cfstr_Avlinearpcmisn.isa, &v31, v32);
      v18 = v31 != 0;
      v19 = (v17 & v18) == 0;
      if ((v17 & v18) != 0)
      {
        v20 = 32;
      }

      else
      {
        v20 = 0;
      }

      v21 = v12 | v20;
      if (v19)
      {
        v22 = v8;
      }

      else
      {
        v22 = 1;
      }

      DWORD1(v28) = v21;
      DWORD2(v28) = v15 * v22;
      HIDWORD(v28) = 1;
      LODWORD(v29) = v15 * v22;
      goto LABEL_45;
    }

    if (getUInt32ForKey(v4, &cfstr_Avlinearpcmbit.isa, &v31, v32))
    {
      v16 = (v31 + 7) & 0xFFFFFFF8;
      DWORD2(v29) = v16;
      if (v31 + 7 >= 8 && v16 <= 0x20)
      {
        if (v16 == 8)
        {
          v15 = 1;
          goto LABEL_38;
        }

LABEL_37:
        v12 |= 4u;
        v15 = v16 >> 3;
        goto LABEL_38;
      }
    }

    else if (!v32[0])
    {
      v16 = 16;
      DWORD2(v29) = 16;
      goto LABEL_37;
    }

LABEL_16:

    v9 = 0;
    goto LABEL_49;
  }

LABEL_45:

  v23 = [(NSDictionary *)v4 objectForKey:@"AVChannelLayoutKey"];
  v24 = v23;
  if (v23)
  {
    v25 = -[AVAudioChannelLayout initWithLayout:size:]([AVAudioChannelLayout alloc], "initWithLayout:size:", [v23 bytes], objc_msgSend(v23, "length"));
  }

  else
  {
    v25 = 0;
  }

  self = [(AVAudioFormat *)self initWithStreamDescription:&v27 channelLayout:v25];

  v9 = self;
LABEL_49:

  return v9;
}

- (AVAudioFormat)initWithCommonFormat:(AVAudioCommonFormat)format sampleRate:(double)sampleRate interleaved:(BOOL)interleaved channelLayout:(AVAudioChannelLayout *)layout
{
  v7 = interleaved;
  v11 = layout;
  if (v11)
  {
    v21.receiver = self;
    v21.super_class = AVAudioFormat;
    v12 = [(AVAudioFormat *)&v21 init];
    if (v12)
    {
      v13 = [(AVAudioChannelLayout *)v11 channelCount];
      if (format - 1 > 3)
      {
        v14 = 0;
      }

      else
      {
        v14 = dword_1BA6CF4E0[format - 1];
      }

      CAStreamBasicDescription::CAStreamBasicDescription(v19, v13, v14, v7, sampleRate);
      v16 = v19[0];
      v17 = v19[1];
      *(v12 + 5) = v20;
      *(v12 + 24) = v17;
      *(v12 + 8) = v16;
      *(v12 + 7) = format;
      objc_storeStrong(v12 + 6, layout);
      *(v12 + 8) = 0;
    }

    self = v12;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (AVAudioFormat)initWithCommonFormat:(AVAudioCommonFormat)format sampleRate:(double)sampleRate channels:(AVAudioChannelCount)channels interleaved:(BOOL)interleaved
{
  if (channels <= 2)
  {
    v7 = interleaved;
    v19.receiver = self;
    v19.super_class = AVAudioFormat;
    v11 = [(AVAudioFormat *)&v19 init];
    if (v11)
    {
      if (format - 1 > 3)
      {
        v12 = 0;
      }

      else
      {
        v12 = dword_1BA6CF4E0[format - 1];
      }

      CAStreamBasicDescription::CAStreamBasicDescription(v17, channels, v12, v7, sampleRate);
      v13 = v17[0];
      v14 = v18;
      *(v11 + 24) = v17[1];
      *(v11 + 8) = v13;
      v15 = *(v11 + 6);
      *(v11 + 5) = v14;
      *(v11 + 6) = 0;
      *(v11 + 7) = format;

      *(v11 + 8) = 0;
    }

    self = v11;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AVAudioFormat)initStandardFormatWithSampleRate:(double)sampleRate channelLayout:(AVAudioChannelLayout *)layout
{
  v7 = layout;
  if (v7)
  {
    v12.receiver = self;
    v12.super_class = AVAudioFormat;
    v8 = [(AVAudioFormat *)&v12 init];
    if (v8)
    {
      v9 = [(AVAudioChannelLayout *)v7 channelCount];
      v8->_asbd.mSampleRate = sampleRate;
      *&v8->_asbd.mFormatID = xmmword_1BA6CF410;
      v8->_asbd.mBytesPerFrame = 4;
      v8->_asbd.mChannelsPerFrame = v9;
      *&v8->_asbd.mBitsPerChannel = 32;
      v8->_commonFormat = 1;
      objc_storeStrong(&v8->_layout, layout);
      v8->_reserved = 0;
    }

    self = v8;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (AVAudioFormat)initStandardFormatWithSampleRate:(double)sampleRate channels:(AVAudioChannelCount)channels
{
  if (channels <= 2)
  {
    v11.receiver = self;
    v11.super_class = AVAudioFormat;
    v7 = [(AVAudioFormat *)&v11 init];
    v8 = v7;
    if (v7)
    {
      v7->_asbd.mSampleRate = sampleRate;
      *&v7->_asbd.mFormatID = xmmword_1BA6CF410;
      v7->_asbd.mBytesPerFrame = 4;
      v7->_asbd.mChannelsPerFrame = channels;
      *&v7->_asbd.mBitsPerChannel = 32;
      layout = v7->_layout;
      v7->_layout = 0;
      v7->_commonFormat = 1;

      v8->_reserved = 0;
    }

    self = v8;
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (AVAudioFormat)initWithStreamDescription:(const AudioStreamBasicDescription *)asbd channelLayout:(AVAudioChannelLayout *)layout
{
  v7 = layout;
  v8 = v7;
  if (!v7)
  {
    if (asbd->mChannelsPerFrame <= 2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_12;
  }

  if ([(AVAudioChannelLayout *)v7 channelCount]!= asbd->mChannelsPerFrame)
  {
    goto LABEL_8;
  }

LABEL_3:
  v19.receiver = self;
  v19.super_class = AVAudioFormat;
  v9 = [(AVAudioFormat *)&v19 init];
  v10 = v9;
  if (v9)
  {
    v11 = *&asbd->mBytesPerPacket;
    v17[0] = *&asbd->mSampleRate;
    v17[1] = v11;
    v18 = *&asbd->mBitsPerChannel;
    v12 = v18;
    *(v9 + 8) = v17[0];
    *(v9 + 5) = v12;
    *(v9 + 24) = v11;
    v16 = 0;
    if (CAStreamBasicDescription::IdentifyCommonPCMFormat(v17, &v16) && (v16 - 1) <= 4)
    {
      v13 = qword_1BA6CF5A8[v16 - 1];
    }

    else
    {
      v13 = 0;
    }

    *(v10 + 7) = v13;
    objc_storeStrong(v10 + 6, layout);
    *(v10 + 8) = 0;
  }

  self = v10;
  v14 = self;
LABEL_12:

  return v14;
}

+ (id)settingsFromASBD:(const AudioStreamBasicDescription *)a3 channelLayout:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3->mFormatID];
  [v6 setValue:v7 forKey:@"AVFormatIDKey"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a3->mSampleRate];
  [v6 setValue:v8 forKey:@"AVSampleRateKey"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3->mChannelsPerFrame];
  [v6 setValue:v9 forKey:@"AVNumberOfChannelsKey"];

  v10 = [v5 layoutSize];
  if (v10)
  {
    v11 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v5 length:{"layout"), v10}];
    [v6 setValue:v11 forKey:@"AVChannelLayoutKey"];
  }

  if (a3->mFormatID == 1819304813)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3->mBitsPerChannel];
    [v6 setValue:v12 forKey:@"AVLinearPCMBitDepthKey"];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3->mFormatFlags & 1];
    [v6 setValue:v13 forKey:@"AVLinearPCMIsFloatKey"];

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(a3->mFormatFlags >> 1) & 1];
    [v6 setValue:v14 forKey:@"AVLinearPCMIsBigEndianKey"];

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(a3->mFormatFlags >> 5) & 1];
    [v6 setValue:v15 forKey:@"AVLinearPCMIsNonInterleaved"];
  }

  return v6;
}

+ (AVAudioFormat)formatWithInvalidSampleRateAndChannelCount
{
  v2 = [[AVAudioFormat alloc] initStandardFormatWithSampleRate:0 channels:0.0];

  return v2;
}

@end