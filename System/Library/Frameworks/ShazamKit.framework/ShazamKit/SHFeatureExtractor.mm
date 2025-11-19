@interface SHFeatureExtractor
- (BOOL)convertException:(const exception *)a3 toError:(id *)a4 code:(int64_t)a5;
- (BOOL)flowBuffer:(id)a3 error:(id *)a4;
- (BOOL)flowFloatSamples:(float *)a3 sampleCount:(int)a4 error:(id *)a5;
- (BOOL)flowIntSamples:(signed __int16 *)a3 sampleCount:(int)a4 error:(id *)a5;
- (SHFeatureExtractor)initWithFeatureConfiguration:(id)a3 error:(id *)a4 completionHandler:(id)a5;
- (id)featuresWithError:(id *)a3;
- (unique_ptr<shazam::dsp::FeatureExtractor,)streatx;
- (void)setStreatx:()unique_ptr<shazam:(std::default_delete<shazam::dsp::FeatureExtractor>>)a3 :dsp::FeatureExtractor;
@end

@implementation SHFeatureExtractor

- (BOOL)flowBuffer:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![v6 int16ChannelData])
  {
    if (![v6 floatChannelData])
    {
      [SHError annotateClientError:a4 code:100 underlyingError:0];
      v8 = 0;
      goto LABEL_10;
    }

    if (*[v6 floatChannelData])
    {
      v7 = -[SHFeatureExtractor flowFloatSamples:sampleCount:error:](self, "flowFloatSamples:sampleCount:error:", *[v6 floatChannelData], objc_msgSend(v6, "frameLength"), a4);
      goto LABEL_7;
    }

LABEL_8:
    v8 = 1;
    goto LABEL_10;
  }

  if (!*[v6 int16ChannelData])
  {
    goto LABEL_8;
  }

  v7 = -[SHFeatureExtractor flowIntSamples:sampleCount:error:](self, "flowIntSamples:sampleCount:error:", *[v6 int16ChannelData], objc_msgSend(v6, "frameLength"), a4);
LABEL_7:
  v8 = v7;
LABEL_10:

  return v8;
}

- (void)setStreatx:()unique_ptr<shazam:(std::default_delete<shazam::dsp::FeatureExtractor>>)a3 :dsp::FeatureExtractor
{
  v3 = *a3.__ptr_;
  *a3.__ptr_ = 0;
  std::unique_ptr<shazam::dsp::FeatureExtractor>::reset[abi:ne200100](&self->real_streatx, v3);
}

- (unique_ptr<shazam::dsp::FeatureExtractor,)streatx
{
  ptr = self->real_streatx.__ptr_;
  self->real_streatx.__ptr_ = 0;
  *v2 = ptr;
  return self;
}

- (BOOL)convertException:(const exception *)a3 toError:(id *)a4 code:(int64_t)a5
{
  if (a4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithCString:(*(a3->var0 + 2))(a3 encoding:{a2), objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:*MEMORY[0x277CCA450]];
    *a4 = [v8 errorWithDomain:@"com.shazam.featx" code:a5 userInfo:v9];
  }

  return a4 != 0;
}

- (SHFeatureExtractor)initWithFeatureConfiguration:(id)a3 error:(id *)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v10.receiver = self;
  v10.super_class = SHFeatureExtractor;
  if ([(SHFeatureExtractor *)&v10 init])
  {
    [v7 sampleRate];
    [v7 isCircularBuffering];
    operator new();
  }

  return 0;
}

- (BOOL)flowFloatSamples:(float *)a3 sampleCount:(int)a4 error:(id *)a5
{
  v6 = gsl::make_span<shazam::spectral_peak_compact_t const>(a3, a4);
  shazam::dsp::FeatureExtractor::flow(self->real_streatx.__ptr_, v6, v7);
  return 1;
}

- (BOOL)flowIntSamples:(signed __int16 *)a3 sampleCount:(int)a4 error:(id *)a5
{
  v6 = gsl::make_span<shazam::spectral_peak_compact_t const>(a3, a4);
  shazam::dsp::FeatureExtractor::flow(self->real_streatx.__ptr_, v6, v7);
  return 1;
}

- (id)featuresWithError:(id *)a3
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