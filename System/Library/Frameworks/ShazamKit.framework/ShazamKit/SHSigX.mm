@interface SHSigX
+ (id)version;
- (BOOL)ConvertSigXErrorCode:(id *)a3 code:(int)a4;
- (BOOL)flowBuffer:(id)a3 error:(id *)a4;
- (BOOL)resetWithError:(id *)a3;
- (BOOL)setRollingBufferSeconds:(float)a3 error:(id *)a4;
- (id)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:;
- (id)signatureWithError:(id *)a3;
- (uint64_t)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:;
- (void)dealloc;
- (void)disableSpectralOutput;
- (void)enableSpectralOutputForNumberOfFrequencyBins:(int)a3 callbackFrequency:(int)a4 completionHandler:(id)a5;
- (void)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:;
@end

@implementation SHSigX

- (BOOL)flowBuffer:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![v6 int16ChannelData])
  {
    if ([v6 int32ChannelData] || !objc_msgSend(v6, "floatChannelData"))
    {
      [SHError annotateClientError:a4 code:100 underlyingError:0];
      v11 = 0;
      goto LABEL_11;
    }

    if (*[v6 floatChannelData])
    {
      v12 = *[v6 floatChannelData];
      v13 = [v6 frameLength];
      v9 = [v6 format];
      v10 = -[SHSigX flowFloatSamples:sampleCount:channels:error:](self, "flowFloatSamples:sampleCount:channels:error:", v12, v13, [v9 channelCount], a4);
      goto LABEL_4;
    }

LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  if (!*[v6 int16ChannelData])
  {
    goto LABEL_10;
  }

  v7 = *[v6 int16ChannelData];
  v8 = [v6 frameLength];
  v9 = [v6 format];
  v10 = -[SHSigX flowIntSamples:sampleCount:channels:error:](self, "flowIntSamples:sampleCount:channels:error:", v7, v8, [v9 channelCount], a4);
LABEL_4:
  v11 = v10;

LABEL_11:
  return v11;
}

- (BOOL)ConvertSigXErrorCode:(id *)a3 code:(int)a4
{
  if (a3)
  {
    v6 = shazam::sigx_category(self);
    v7 = MEMORY[0x277CCACA8];
    (*v6)[6](__p);
    v8 = v17;
    v9 = __p[0];
    v10 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v8 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = v9;
    }

    v12 = [v7 stringWithCString:v11 encoding:v10];
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v12 forKey:*MEMORY[0x277CCA450]];
    *a3 = [v13 errorWithDomain:@"com.shazam.sigx" code:a4 userInfo:v14];
  }

  return a3 != 0;
}

- (BOOL)resetWithError:(id *)a3
{
  (*(self->_pipeline->var0 + 7))(self->_pipeline, a2);
  v5 = (*(self->_pipeline->var0 + 8))(self->_pipeline);
  if (v5)
  {
    [(SHSigX *)self ConvertSigXErrorCode:a3 code:v5];
  }

  return v5 == 0;
}

- (id)signatureWithError:(id *)a3
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  (*(self->_pipeline->var0 + 6))(self->_pipeline, &__p);
  v5 = (*(self->_pipeline->var0 + 8))(self->_pipeline);
  if (v5)
  {
    [(SHSigX *)self ConvertSigXErrorCode:a3 code:v5];
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
  v3 = [MEMORY[0x277CCACA8] defaultCStringEncoding];

  return [v2 stringWithCString:"25.5.4 (compilation mode 'release' encoding:{built on 'OS X')", v3}];
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

- (BOOL)setRollingBufferSeconds:(float)a3 error:(id *)a4
{
  (*(self->_pipeline->var0 + 9))(self->_pipeline, a2, a3);
  v6 = (*(self->_pipeline->var0 + 8))(self->_pipeline);
  if (v6)
  {
    [(SHSigX *)self ConvertSigXErrorCode:a4 code:v6];
  }

  return v6 == 0;
}

- (void)enableSpectralOutputForNumberOfFrequencyBins:(int)a3 callbackFrequency:(int)a4 completionHandler:(id)a5
{
  v14[4] = *MEMORY[0x277D85DE8];
  v8 = a5;
  [(SHSigX *)self setSpectralOutputHandler:v8];
  v9 = self;
  v10 = (*(v9->_pipeline->var0 + 10))(v9->_pipeline);
  v11 = v9;
  v14[0] = &unk_2845C6008;
  v14[1] = v11;
  v14[3] = v14;
  shazam::SpectralOutput::enable(v10, a3, a4, v14, v12);
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

  v10 = [*(a1 + 8) spectralOutputHandler];
  v11 = [i copy];
  (v10)[2](v10, v11);

  objc_autoreleasePoolPop(v6);
}

- (id)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:
{
  *a2 = &unk_2845C6008;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

- (uint64_t)enableSpectralOutputForNumberOfFrequencyBins:callbackFrequency:completionHandler:
{
  {
    return a1 + 8;
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