@interface SHSigX
+ (id)version;
- (BOOL)ConvertSigXErrorCode:(id *)code code:(int)a4;
- (BOOL)flowBuffer:(id)buffer error:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (BOOL)setRollingBufferSeconds:(float)seconds error:(id *)error;
- (id)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:;
- (id)signatureWithError:(id *)error;
- (uint64_t)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:;
- (void)dealloc;
- (void)disableSpectralOutput;
- (void)enableSpectralOutputForNumberOfFrequencyBins:(int)bins callbackFrequency:(int)frequency completionHandler:(id)handler;
- (void)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:;
@end

@implementation SHSigX

- (BOOL)flowBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  if (![bufferCopy int16ChannelData])
  {
    if ([bufferCopy int32ChannelData] || !objc_msgSend(bufferCopy, "floatChannelData"))
    {
      [SHError annotateClientError:error code:100 underlyingError:0];
      v11 = 0;
      goto LABEL_11;
    }

    if (*[bufferCopy floatChannelData])
    {
      v12 = *[bufferCopy floatChannelData];
      frameLength = [bufferCopy frameLength];
      format = [bufferCopy format];
      v10 = -[SHSigX flowFloatSamples:sampleCount:channels:error:](self, "flowFloatSamples:sampleCount:channels:error:", v12, frameLength, [format channelCount], error);
      goto LABEL_4;
    }

LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  if (!*[bufferCopy int16ChannelData])
  {
    goto LABEL_10;
  }

  v7 = *[bufferCopy int16ChannelData];
  frameLength2 = [bufferCopy frameLength];
  format = [bufferCopy format];
  v10 = -[SHSigX flowIntSamples:sampleCount:channels:error:](self, "flowIntSamples:sampleCount:channels:error:", v7, frameLength2, [format channelCount], error);
LABEL_4:
  v11 = v10;

LABEL_11:
  return v11;
}

- (BOOL)ConvertSigXErrorCode:(id *)code code:(int)a4
{
  if (code)
  {
    v6 = shazam::sigx_category(self);
    v7 = MEMORY[0x277CCACA8];
    (*v6)[6](__p);
    v8 = v17;
    v9 = __p[0];
    defaultCStringEncoding = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v8 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = v9;
    }

    v12 = [v7 stringWithCString:v11 encoding:defaultCStringEncoding];
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v12 forKey:*MEMORY[0x277CCA450]];
    *code = [v13 errorWithDomain:@"com.shazam.sigx" code:a4 userInfo:v14];
  }

  return code != 0;
}

- (BOOL)resetWithError:(id *)error
{
  (*(self->_pipeline->var0 + 7))(self->_pipeline, a2);
  v5 = (*(self->_pipeline->var0 + 8))(self->_pipeline);
  if (v5)
  {
    [(SHSigX *)self ConvertSigXErrorCode:error code:v5];
  }

  return v5 == 0;
}

- (id)signatureWithError:(id *)error
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(self->_pipeline->var0 + 6))(self->_pipeline, &__p);
  v5 = (*(self->_pipeline->var0 + 8))(self->_pipeline);
  if (v5)
  {
    [(SHSigX *)self ConvertSigXErrorCode:error code:v5];
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:__p length:v9 - __p];
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

+ (id)version
{
  v2 = MEMORY[0x277CCACA8];
  defaultCStringEncoding = [MEMORY[0x277CCACA8] defaultCStringEncoding];

  return [v2 stringWithCString:"25.5.4 (compilation mode 'release' encoding:{built on 'OS X')", defaultCStringEncoding}];
}

- (void)dealloc
{
  pipeline = self->_pipeline;
  if (pipeline)
  {
    (*(pipeline->var0 + 1))(pipeline, a2);
  }

  v4.receiver = self;
  v4.super_class = SHSigX;
  [(SHSigX *)&v4 dealloc];
}

- (BOOL)setRollingBufferSeconds:(float)seconds error:(id *)error
{
  (*(self->_pipeline->var0 + 9))(self->_pipeline, a2, seconds);
  v6 = (*(self->_pipeline->var0 + 8))(self->_pipeline);
  if (v6)
  {
    [(SHSigX *)self ConvertSigXErrorCode:error code:v6];
  }

  return v6 == 0;
}

- (void)enableSpectralOutputForNumberOfFrequencyBins:(int)bins callbackFrequency:(int)frequency completionHandler:(id)handler
{
  v14[4] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  [(SHSigX *)self setSpectralOutputHandler:handlerCopy];
  selfCopy = self;
  v10 = (*(selfCopy->_pipeline->var0 + 10))(selfCopy->_pipeline);
  v11 = selfCopy;
  v14[0] = &unk_2845C6008;
  v14[1] = v11;
  v14[3] = v14;
  shazam::SpectralOutput::enable(v10, bins, frequency, v14, v12);
  std::__function::__value_func<void ()(float const*,unsigned long)>::~__value_func[abi:ne200100](v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)disableSpectralOutput
{
  v3 = (*(self->_pipeline->var0 + 10))(self->_pipeline, a2);
  shazam::SpectralOutput::disable(v3);

  [(SHSigX *)self setSpectralOutputHandler:0];
}

- (void)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:
{
  v4 = *a2;
  v5 = *a3;
  v6 = objc_autoreleasePoolPush();
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
  {
    LODWORD(v8) = *v4;
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    [i addObject:v9];

    ++v4;
  }

  spectralOutputHandler = [*(self + 8) spectralOutputHandler];
  v11 = [i copy];
  (spectralOutputHandler)[2](spectralOutputHandler, v11);

  objc_autoreleasePoolPop(v6);
}

- (id)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:
{
  *a2 = &unk_2845C6008;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (uint64_t)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)initWithSignatureType:(uint64_t *)a1 sampleRate:(uint64_t)a2 signatureOptions:(int)a3 error:(uint64_t)a4 .cold.1(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

@end