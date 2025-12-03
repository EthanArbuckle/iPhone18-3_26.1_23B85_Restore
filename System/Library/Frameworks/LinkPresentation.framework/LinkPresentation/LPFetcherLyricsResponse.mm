@interface LPFetcherLyricsResponse
- (LPFetcherLyricsResponse)initWithLyrics:(id)lyrics fetcher:(id)fetcher;
@end

@implementation LPFetcherLyricsResponse

- (LPFetcherLyricsResponse)initWithLyrics:(id)lyrics fetcher:(id)fetcher
{
  lyricsCopy = lyrics;
  v12.receiver = self;
  v12.super_class = LPFetcherLyricsResponse;
  v8 = [(LPFetcherResponse *)&v12 initWithState:2 fetcher:fetcher];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lyrics, lyrics);
    v10 = v9;
  }

  return v9;
}

@end