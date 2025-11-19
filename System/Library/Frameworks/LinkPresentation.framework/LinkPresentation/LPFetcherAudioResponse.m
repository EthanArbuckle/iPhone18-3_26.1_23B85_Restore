@interface LPFetcherAudioResponse
+ (id)audioPropertiesForFetcher:(id)a3;
- (LPFetcherAudioResponse)initWithAudio:(id)a3 fetcher:(id)a4;
@end

@implementation LPFetcherAudioResponse

+ (id)audioPropertiesForFetcher:(id)a3
{
  v3 = objc_alloc_init(LPAudioProperties);

  return v3;
}

- (LPFetcherAudioResponse)initWithAudio:(id)a3 fetcher:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = LPFetcherAudioResponse;
  v8 = [(LPFetcherResponse *)&v12 initWithState:2 fetcher:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_audio, a3);
    v10 = v9;
  }

  return v9;
}

@end