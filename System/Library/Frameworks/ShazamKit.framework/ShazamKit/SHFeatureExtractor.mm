@interface SHFeatureExtractor
- (BOOL)convertException:(const exception *)exception toError:(id *)error code:(int64_t)code;
- (BOOL)flowBuffer:(id)buffer error:(id *)error;
- (BOOL)flowFloatSamples:(float *)samples sampleCount:(int)count error:(id *)error;
- (BOOL)flowIntSamples:(signed __int16 *)samples sampleCount:(int)count error:(id *)error;
- (SHFeatureExtractor)initWithFeatureConfiguration:(id)configuration error:(id *)error completionHandler:(id)handler;
- (id)featuresWithError:(id *)error;
- (unique_ptr<shazam::dsp::FeatureExtractor,)streatx;
- (void)setStreatx:()unique_ptr<shazam:(std::default_delete<shazam::dsp::FeatureExtractor>>)shazam :dsp::FeatureExtractor;
@end

@implementation SHFeatureExtractor

- (BOOL)flowBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  if (![bufferCopy int16ChannelData])
  {
    if (![bufferCopy floatChannelData])
    {
      [SHError annotateClientError:error code:100 underlyingError:0];
      v8 = 0;
      goto LABEL_10;
    }

    if (*[bufferCopy floatChannelData])
    {
      v7 = -[SHFeatureExtractor flowFloatSamples:sampleCount:error:](self, "flowFloatSamples:sampleCount:error:", *[bufferCopy floatChannelData], objc_msgSend(bufferCopy, "frameLength"), error);
      goto LABEL_7;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_10;
  }

  if (!*[bufferCopy int16ChannelData])
  {
    goto LABEL_8;
  }

  v7 = -[SHFeatureExtractor flowIntSamples:sampleCount:error:](self, "flowIntSamples:sampleCount:error:", *[bufferCopy int16ChannelData], objc_msgSend(bufferCopy, "frameLength"), error);
LABEL_7:
  v8 = v7;
LABEL_10:

  return v8;
}

- (void)setStreatx:()unique_ptr<shazam:(std::default_delete<shazam::dsp::FeatureExtractor>>)shazam :dsp::FeatureExtractor
{
  v3 = *shazam.__ptr_;
  *shazam.__ptr_ = 0;
  std::unique_ptr<shazam::dsp::FeatureExtractor>::reset[abi:ne200100](&self->real_streatx, v3);
}

- (unique_ptr<shazam::dsp::FeatureExtractor,)streatx
{
  ptr = self->real_streatx.__ptr_;
  self->real_streatx.__ptr_ = 0;
  *v2 = ptr;
  return self;
}

- (BOOL)convertException:(const exception *)exception toError:(id *)error code:(int64_t)code
{
  if (error)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithCString:(*(exception->var0 + 2))(exception encoding:{a2), objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:*MEMORY[0x277CCA450]];
    *error = [v8 errorWithDomain:@"com.shazam.featx" code:code userInfo:v9];
  }

  return error != 0;
}

- (SHFeatureExtractor)initWithFeatureConfiguration:(id)configuration error:(id *)error completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = SHFeatureExtractor;
  if ([(SHFeatureExtractor *)&v10 init])
  {
    [configurationCopy sampleRate];
    [configurationCopy isCircularBuffering];
    operator new();
  }

  return 0;
}

- (BOOL)flowFloatSamples:(float *)samples sampleCount:(int)count error:(id *)error
{
  v6 = gsl::make_span<shazam::spectral_peak_compact_t const>(samples, count);
  shazam::dsp::FeatureExtractor::flow(self->real_streatx.__ptr_, v6, v7);
  return 1;
}

- (BOOL)flowIntSamples:(signed __int16 *)samples sampleCount:(int)count error:(id *)error
{
  v6 = gsl::make_span<shazam::spectral_peak_compact_t const>(samples, count);
  shazam::dsp::FeatureExtractor::flow(self->real_streatx.__ptr_, v6, v7);
  return 1;
}

- (id)featuresWithError:(id *)error
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  if (shazam::dsp::FeatureExtractor::generate(self->real_streatx.__ptr_, &__p))
  {
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:__p length:v6 - __p];
  }

  else
  {
    v3 = 0;
  }

  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

@end