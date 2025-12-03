@interface LPFetcherAudioResponse
+ (id)audioPropertiesForFetcher:(id)fetcher;
- (LPFetcherAudioResponse)initWithAudio:(id)audio fetcher:(id)fetcher;
@end

@implementation LPFetcherAudioResponse

+ (id)audioPropertiesForFetcher:(id)fetcher
{
  v3 = objc_alloc_init(LPAudioProperties);

  return v3;
}

- (LPFetcherAudioResponse)initWithAudio:(id)audio fetcher:(id)fetcher
{
  audioCopy = audio;
  v12.receiver = self;
  v12.super_class = LPFetcherAudioResponse;
  v8 = [(LPFetcherResponse *)&v12 initWithState:2 fetcher:fetcher];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_audio, audio);
    v10 = v9;
  }

  return v9;
}

@end