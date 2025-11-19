@interface AVAudioConverter
- (AVAudioConverter)initFromFormat:(AVAudioFormat *)fromFormat toFormat:(AVAudioFormat *)toFormat;
- (AVAudioConverterOutputStatus)convertToBuffer:(AVAudioBuffer *)outputBuffer error:(NSError *)outError withInputFromBlock:(AVAudioConverterInputBlock)inputBlock;
- (AVAudioConverterPrimeInfo)primeInfo;
- (AVAudioConverterPrimeMethod)primeMethod;
- (AVAudioFormat)inputFormat;
- (AVAudioFormat)outputFormat;
- (BOOL)convertToBuffer:(AVAudioPCMBuffer *)outputBuffer fromBuffer:(const AVAudioPCMBuffer *)inputBuffer error:(NSError *)outError;
- (BOOL)dither;
- (BOOL)downmix;
- (NSArray)applicableEncodeBitRates;
- (NSArray)applicableEncodeSampleRates;
- (NSArray)availableEncodeBitRates;
- (NSArray)availableEncodeChannelLayoutTags;
- (NSArray)availableEncodeSampleRates;
- (NSArray)channelMap;
- (NSData)magicCookie;
- (NSInteger)bitRate;
- (NSInteger)maximumOutputPacketSize;
- (NSInteger)sampleRateConverterQuality;
- (NSString)bitRateStrategy;
- (NSString)sampleRateConverterAlgorithm;
- (int64_t)audioSyncPacketFrequency;
- (int64_t)contentSource;
- (int64_t)dynamicRangeControlConfiguration;
- (void)dealloc;
- (void)reset;
- (void)setAudioSyncPacketFrequency:(int64_t)a3;
- (void)setBitRate:(NSInteger)bitRate;
- (void)setBitRateStrategy:(NSString *)bitRateStrategy;
- (void)setChannelMap:(NSArray *)channelMap;
- (void)setContentSource:(int64_t)a3;
- (void)setDither:(BOOL)dither;
- (void)setDownmix:(BOOL)downmix;
- (void)setDynamicRangeControlConfiguration:(int64_t)a3;
- (void)setMagicCookie:(NSData *)magicCookie;
- (void)setPrimeInfo:(AVAudioConverterPrimeInfo)primeInfo;
- (void)setPrimeMethod:(AVAudioConverterPrimeMethod)primeMethod;
- (void)setSampleRateConverterAlgorithm:(NSString *)sampleRateConverterAlgorithm;
- (void)setSampleRateConverterQuality:(NSInteger)sampleRateConverterQuality;
@end

@implementation AVAudioConverter

- (NSInteger)maximumOutputPacketSize
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  outPropertyData = 0;
  ioPropertyDataSize = 4;
  if (AudioConverterGetProperty(*(impl + 1), 0x786F7073u, &ioPropertyDataSize, &outPropertyData))
  {
    v3 = 0;
  }

  else
  {
    v3 = outPropertyData;
  }

  os_unfair_lock_unlock(impl);
  return v3;
}

- (AVAudioConverterOutputStatus)convertToBuffer:(AVAudioBuffer *)outputBuffer error:(NSError *)outError withInputFromBlock:(AVAudioConverterInputBlock)inputBlock
{
  impl = self->_impl;
  v8 = inputBlock;
  v9 = outputBuffer;
  os_unfair_lock_lock(impl);
  v10 = v9;
  v11 = v8;
  v12 = [(AVAudioBuffer *)v10 format];
  v13 = [v12 isEqual:*(impl + 3)];

  if ((v13 & 1) == 0)
  {
    if (!outError)
    {
      goto LABEL_7;
    }

LABEL_5:
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = [v19 initWithDomain:*MEMORY[0x1E696A768] code:1718449215 userInfo:0];
LABEL_6:
    *outError = v20;
    goto LABEL_7;
  }

  [(AVAudioBuffer *)v10 setByteLength:[(AVAudioBuffer *)v10 byteCapacity]];
  v14 = [(AVAudioBuffer *)v10 mutableAudioBufferList];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v17 = 0;
    v18 = 0;
    ioOutputDataPacketSize = [(AVAudioBuffer *)v10 frameCapacity];
    goto LABEL_11;
  }

  if ((v16 & 1) == 0)
  {
    if (!outError)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  ioOutputDataPacketSize = [(AVAudioBuffer *)v10 packetCapacity];
  v17 = [(AVAudioBuffer *)v10 packetDescriptions];
  v18 = [(AVAudioBuffer *)v10 packetDependencies];
LABEL_11:
  v23 = _Block_copy(v11);
  v24 = *(impl + 8);
  *(impl + 8) = v23;

  if (v18)
  {
    v25 = AudioConverterFillComplexBufferWithPacketDependencies();
  }

  else
  {
    v25 = AudioConverterFillComplexBuffer(*(impl + 1), AVAudioConverterImpl::FillComplexProc, impl + 8, &ioOutputDataPacketSize, v14, v17);
  }

  v26 = v25;
  v27 = *(impl + 8);
  *(impl + 8) = 0;

  if (isKindOfClass)
  {
    [(AVAudioBuffer *)v10 setFrameLength:ioOutputDataPacketSize];
  }

  else
  {
    [(AVAudioBuffer *)v10 setByteLength:*(v14 + 12)];
    [(AVAudioBuffer *)v10 setPacketCount:ioOutputDataPacketSize];
  }

  if (!v26)
  {
    v21 = 2 * (ioOutputDataPacketSize == 0);
    goto LABEL_8;
  }

  if (v26 == 2002872692)
  {
    v21 = AVAudioConverterOutputStatus_InputRanDry;
    goto LABEL_8;
  }

  if (outError)
  {
    v28 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = [v28 initWithDomain:*MEMORY[0x1E696A768] code:v26 userInfo:0];
    goto LABEL_6;
  }

LABEL_7:
  v21 = AVAudioConverterOutputStatus_Error;
LABEL_8:

  os_unfair_lock_unlock(impl);
  return v21;
}

- (BOOL)convertToBuffer:(AVAudioPCMBuffer *)outputBuffer fromBuffer:(const AVAudioPCMBuffer *)inputBuffer error:(NSError *)outError
{
  impl = self->_impl;
  v8 = inputBuffer;
  v9 = outputBuffer;
  os_unfair_lock_lock(impl);
  v10 = v9;
  v11 = v8;
  _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioConverter.mm", 500, "convert", "outputBuffer.frameCapacity >= inputBuffer.frameLength", [(AVAudioPCMBuffer *)v10 frameCapacity]>= [(AVAudioPCMBuffer *)v11 frameLength]);
  v12 = [(AVAudioPCMBuffer *)v11 frameLength];
  [(AVAudioPCMBuffer *)v10 setFrameLength:v12];
  v13 = AudioConverterConvertComplexBuffer(*(impl + 1), v12, [(AVAudioBuffer *)v11 audioBufferList], [(AVAudioBuffer *)v10 mutableAudioBufferList]);
  if (v13)
  {
    if (outError)
    {
      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      *outError = [v14 initWithDomain:*MEMORY[0x1E696A768] code:v13 userInfo:0];
    }

    [(AVAudioPCMBuffer *)v10 setFrameLength:0];
  }

  os_unfair_lock_unlock(impl);
  return v13 == 0;
}

- (void)setDynamicRangeControlConfiguration:(int64_t)a3
{
  v3 = a3;
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  inPropertyData = v3;
  AudioConverterSetProperty(*(impl + 1), 0x63647263u, 4u, &inPropertyData);
  os_unfair_lock_unlock(impl);
}

- (int64_t)dynamicRangeControlConfiguration
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  ioPropertyDataSize = 4;
  outPropertyData = 0;
  AudioConverterGetProperty(*(impl + 1), 0x63647263u, &ioPropertyDataSize, &outPropertyData);
  v3 = outPropertyData;
  os_unfair_lock_unlock(impl);
  return v3;
}

- (void)setContentSource:(int64_t)a3
{
  v3 = a3;
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  inPropertyData = v3;
  AudioConverterSetProperty(*(impl + 1), 0x63737263u, 4u, &inPropertyData);
  os_unfair_lock_unlock(impl);
}

- (int64_t)contentSource
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  ioPropertyDataSize = 4;
  outPropertyData = 0;
  AudioConverterGetProperty(*(impl + 1), 0x63737263u, &ioPropertyDataSize, &outPropertyData);
  v3 = outPropertyData;
  os_unfair_lock_unlock(impl);
  return v3;
}

- (void)setAudioSyncPacketFrequency:(int64_t)a3
{
  v3 = a3;
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  inPropertyData = v3;
  AudioConverterSetProperty(*(impl + 1), 0x61737066u, 4u, &inPropertyData);
  os_unfair_lock_unlock(impl);
}

- (int64_t)audioSyncPacketFrequency
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  ioPropertyDataSize = 4;
  outPropertyData = 0;
  AudioConverterGetProperty(*(impl + 1), 0x61737066u, &ioPropertyDataSize, &outPropertyData);
  v3 = outPropertyData;
  os_unfair_lock_unlock(impl);
  return v3;
}

- (void)setPrimeInfo:(AVAudioConverterPrimeInfo)primeInfo
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  inPropertyData = primeInfo;
  AudioConverterSetProperty(*(impl + 1), 0x7072696Du, 8u, &inPropertyData);
  os_unfair_lock_unlock(impl);
}

- (AVAudioConverterPrimeInfo)primeInfo
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  ioPropertyDataSize = 8;
  AudioConverterGetProperty(*(impl + 1), 0x7072696Du, &ioPropertyDataSize, &outPropertyData);
  v3 = outPropertyData;
  os_unfair_lock_unlock(impl);
  return v3;
}

- (void)setPrimeMethod:(AVAudioConverterPrimeMethod)primeMethod
{
  v3 = primeMethod;
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  inPropertyData = v3;
  AudioConverterSetProperty(*(impl + 1), 0x70726D6Du, 4u, &inPropertyData);
  os_unfair_lock_unlock(impl);
}

- (AVAudioConverterPrimeMethod)primeMethod
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  ioPropertyDataSize = 4;
  outPropertyData = 0;
  AudioConverterGetProperty(*(impl + 1), 0x70726D6Du, &ioPropertyDataSize, &outPropertyData);
  v3 = outPropertyData;
  os_unfair_lock_unlock(impl);
  return v3;
}

- (void)setChannelMap:(NSArray *)channelMap
{
  impl = self->_impl;
  v4 = channelMap;
  os_unfair_lock_lock(impl);
  v5 = v4;
  v6 = [(NSArray *)v5 count];
  v7 = (4 * v6);
  v8 = malloc_type_calloc(1uLL, v7, 0x100004052888210uLL);
  if (v6 >= 1)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = [(NSArray *)v5 objectAtIndex:v9];
      v8[v9] = [v11 integerValue];

      v9 = v10;
    }

    while (v6 > v10++);
  }

  AudioConverterSetProperty(*(impl + 1), 0x63686D70u, v7, v8);
  free(v8);

  os_unfair_lock_unlock(impl);
}

- (NSArray)channelMap
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  v3 = AVAudioConverterImpl::getInt32List(impl + 1, 0x63686D70u, 0);
  v4 = *(impl + 5);
  *(impl + 5) = v3;

  v5 = *(impl + 5);
  if (!v5)
  {
    v6 = objc_opt_new();
    v7 = *(impl + 5);
    *(impl + 5) = v6;

    v5 = *(impl + 5);
  }

  v8 = v5;
  os_unfair_lock_unlock(impl);

  return v8;
}

- (void)setMagicCookie:(NSData *)magicCookie
{
  impl = self->_impl;
  v5 = magicCookie;
  os_unfair_lock_lock(impl);
  v6 = v5;
  if (!AudioConverterSetProperty(*(impl + 1), 0x636D6763u, [(NSData *)v6 length], [(NSData *)v6 bytes]))
  {
    objc_storeStrong(impl + 4, magicCookie);
  }

  os_unfair_lock_unlock(impl);
}

- (NSData)magicCookie
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  outSize = 0;
  outWritable = 0;
  if (AudioConverterGetPropertyInfo(*(impl + 1), 0x636D6763u, &outSize, &outWritable))
  {
    goto LABEL_4;
  }

  v3 = malloc_type_calloc(1uLL, outSize, 0x100004077774924uLL);
  if (AudioConverterGetProperty(*(impl + 1), 0x636D6763u, &outSize, v3))
  {
    free(v3);
LABEL_4:
    v4 = 0;
    goto LABEL_5;
  }

  v6 = objc_alloc(MEMORY[0x1E695DEF0]);
  v4 = [v6 initWithBytes:v3 length:outSize];
  free(v3);
  objc_storeStrong(impl + 4, v4);
LABEL_5:
  os_unfair_lock_unlock(impl);

  return v4;
}

- (void)setSampleRateConverterAlgorithm:(NSString *)sampleRateConverterAlgorithm
{
  impl = self->_impl;
  v4 = sampleRateConverterAlgorithm;
  os_unfair_lock_lock(impl);
  v5 = v4;
  if ([(NSString *)v5 compare:@"AVSampleRateConverterAlgorithm_Mastering"])
  {
    if ([(NSString *)v5 compare:@"AVSampleRateConverterAlgorithm_Normal"])
    {
      if ([(NSString *)v5 compare:@"AVSampleRateConverterAlgorithm_MinimumPhase"])
      {

        if (!impl)
        {
          return;
        }

        goto LABEL_10;
      }

      v6 = 1835626096;
    }

    else
    {
      v6 = 1852797549;
    }
  }

  else
  {
    v6 = 1650553971;
  }

  inPropertyData = v6;
  AudioConverterSetProperty(*(impl + 1), 0x73726361u, 4u, &inPropertyData);

LABEL_10:

  os_unfair_lock_unlock(impl);
}

- (NSString)sampleRateConverterAlgorithm
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  outPropertyData = 0;
  ioPropertyDataSize = 4;
  if (AudioConverterGetProperty(*(impl + 1), 0x73726361u, &ioPropertyDataSize, &outPropertyData))
  {
    goto LABEL_2;
  }

  switch(outPropertyData)
  {
    case 1650553971:
      v4 = &AVSampleRateConverterAlgorithm_Mastering;
      break;
    case 1835626096:
      v4 = &AVSampleRateConverterAlgorithm_MinimumPhase;
      break;
    case 1852797549:
      v4 = &AVSampleRateConverterAlgorithm_Normal;
      break;
    default:
LABEL_2:
      v3 = 0;
      goto LABEL_10;
  }

  v3 = *v4;
LABEL_10:
  os_unfair_lock_unlock(impl);

  return v3;
}

- (void)setSampleRateConverterQuality:(NSInteger)sampleRateConverterQuality
{
  v3 = sampleRateConverterQuality;
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  inPropertyData = v3;
  AudioConverterSetProperty(*(impl + 1), 0x73726371u, 4u, &inPropertyData);
  os_unfair_lock_unlock(impl);
}

- (NSInteger)sampleRateConverterQuality
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  outPropertyData = 0;
  ioPropertyDataSize = 4;
  if (AudioConverterGetProperty(*(impl + 1), 0x73726371u, &ioPropertyDataSize, &outPropertyData))
  {
    v3 = 0;
  }

  else
  {
    v3 = outPropertyData;
  }

  os_unfair_lock_unlock(impl);
  return v3;
}

- (void)setDownmix:(BOOL)downmix
{
  v3 = downmix;
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  inPropertyData = v3;
  AudioConverterSetProperty(*(impl + 1), 0x646D6978u, 4u, &inPropertyData);
  os_unfair_lock_unlock(impl);
}

- (void)setDither:(BOOL)dither
{
  v3 = dither;
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  if (v3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  inPropertyData = v5;
  AudioConverterSetProperty(*(impl + 1), 0x64697468u, 4u, &inPropertyData);
  os_unfair_lock_unlock(impl);
}

- (BOOL)downmix
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  outPropertyData = 0;
  ioPropertyDataSize = 4;
  if (AudioConverterGetProperty(*(impl + 1), 0x646D6978u, &ioPropertyDataSize, &outPropertyData))
  {
    v3 = 1;
  }

  else
  {
    v3 = outPropertyData == 0;
  }

  v4 = !v3;
  os_unfair_lock_unlock(impl);
  return v4;
}

- (BOOL)dither
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  outPropertyData = 0;
  ioPropertyDataSize = 4;
  if (AudioConverterGetProperty(*(impl + 1), 0x64697468u, &ioPropertyDataSize, &outPropertyData))
  {
    v3 = 1;
  }

  else
  {
    v3 = outPropertyData == 0;
  }

  v4 = !v3;
  os_unfair_lock_unlock(impl);
  return v4;
}

- (void)reset
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  *(impl + 72) = 0;
  AudioConverterReset(*(impl + 1));

  os_unfair_lock_unlock(impl);
}

- (AVAudioFormat)outputFormat
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  v3 = *(impl + 3);
  os_unfair_lock_unlock(impl);

  return v3;
}

- (AVAudioFormat)inputFormat
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  v3 = *(impl + 2);
  os_unfair_lock_unlock(impl);

  return v3;
}

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    AudioConverterDispose(*(impl + 1));

    MEMORY[0x1BFAF5800](impl, 0x10A0C40CD2C87C2);
  }

  v4.receiver = self;
  v4.super_class = AVAudioConverter;
  [(AVAudioConverter *)&v4 dealloc];
}

- (AVAudioConverter)initFromFormat:(AVAudioFormat *)fromFormat toFormat:(AVAudioFormat *)toFormat
{
  v6 = fromFormat;
  v7 = toFormat;
  outAudioConverter = 0;
  if (!AudioConverterNew([(AVAudioFormat *)v6 streamDescription], [(AVAudioFormat *)v7 streamDescription], &outAudioConverter) && outAudioConverter)
  {
    v8 = [(AVAudioFormat *)v6 channelLayout];
    v9 = v8;
    if (!v8 || [v8 layoutTag] == 6553601 || objc_msgSend(v9, "layoutTag") == 6619138 || (v10 = objc_msgSend(v9, "layout"), v11 = objc_msgSend(v9, "layoutSize"), !AudioConverterSetProperty(outAudioConverter, 0x69636C20u, v11, v10)))
    {
      v12 = [(AVAudioFormat *)v7 channelLayout];
      v13 = v12;
      if (!v12 || [v12 layoutTag] == 6553601 || objc_msgSend(v13, "layoutTag") == 6619138 || (v14 = objc_msgSend(v13, "layout"), v15 = objc_msgSend(v13, "layoutSize"), !AudioConverterSetProperty(outAudioConverter, 0x6F636C20u, v15, v14)))
      {
        operator new();
      }

      AudioConverterDispose(outAudioConverter);
    }

    else
    {
      AudioConverterDispose(outAudioConverter);
    }
  }

  return 0;
}

- (NSArray)availableEncodeChannelLayoutTags
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  v3 = AVAudioConverterImpl::getInt32List(impl + 1, 0x6165636Cu, 1);
  if (impl)
  {
    os_unfair_lock_unlock(impl);
  }

  return v3;
}

- (NSArray)applicableEncodeSampleRates
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  v3 = AVAudioConverterImpl::getRateList(impl + 1, 0x61657372u, 1);
  if (impl)
  {
    os_unfair_lock_unlock(impl);
  }

  return v3;
}

- (NSArray)availableEncodeSampleRates
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  v3 = AVAudioConverterImpl::getRateList(impl + 1, 0x76657372u, 1);
  if (impl)
  {
    os_unfair_lock_unlock(impl);
  }

  return v3;
}

- (NSArray)applicableEncodeBitRates
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  v3 = AVAudioConverterImpl::getRateList(impl + 1, 0x61656272u, 0);
  if (impl)
  {
    os_unfair_lock_unlock(impl);
  }

  return v3;
}

- (NSArray)availableEncodeBitRates
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  v3 = AVAudioConverterImpl::getRateList(impl + 1, 0x76656272u, 0);
  if (impl)
  {
    os_unfair_lock_unlock(impl);
  }

  return v3;
}

- (void)setBitRateStrategy:(NSString *)bitRateStrategy
{
  impl = self->_impl;
  v4 = bitRateStrategy;
  os_unfair_lock_lock(impl);
  v5 = v4;
  v6 = *(impl + 1);
  v7 = v5;
  if ([(NSString *)v7 compare:@"AVAudioBitRateStrategy_Constant"])
  {
    if ([(NSString *)v7 compare:@"AVAudioBitRateStrategy_LongTermAverage"])
    {
      if ([(NSString *)v7 compare:@"AVAudioBitRateStrategy_VariableConstrained"])
      {
        if ([(NSString *)v7 compare:@"AVAudioBitRateStrategy_Variable"])
        {

          goto LABEL_11;
        }

        v8 = 3;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  inPropertyData = v8;

  AudioConverterSetProperty(v6, 0x61636266u, 4u, &inPropertyData);
LABEL_11:

  os_unfair_lock_unlock(impl);
}

- (NSString)bitRateStrategy
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  v3 = *(impl + 1);
  outPropertyData = 0;
  ioPropertyDataSize = 4;
  if (AudioConverterGetProperty(v3, 0x61636266u, &ioPropertyDataSize, &outPropertyData) || outPropertyData > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_1E7EF54D8[outPropertyData];
  }

  os_unfair_lock_unlock(impl);

  return v4;
}

- (void)setBitRate:(NSInteger)bitRate
{
  v3 = bitRate;
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  inPropertyData = v3;
  AudioConverterSetProperty(*(impl + 1), 0x62726174u, 4u, &inPropertyData);
  os_unfair_lock_unlock(impl);
}

- (NSInteger)bitRate
{
  impl = self->_impl;
  os_unfair_lock_lock(impl);
  outPropertyData = 0;
  ioPropertyDataSize = 4;
  AudioConverterGetProperty(*(impl + 1), 0x62726174u, &ioPropertyDataSize, &outPropertyData);
  v3 = outPropertyData;
  os_unfair_lock_unlock(impl);
  return v3;
}

@end