@interface MPNowPlayingInfoLyricsItemToken
- (MPNowPlayingInfoLyricsItemToken)initWithIdentifier:(id)a3 userInfo:(id)a4;
- (MPNowPlayingInfoLyricsItemToken)initWithMediaRemoteLyricsItemToken:(void *)a3;
- (void)dealloc;
@end

@implementation MPNowPlayingInfoLyricsItemToken

- (void)dealloc
{
  mediaRemoteLyricsItemToken = self->_mediaRemoteLyricsItemToken;
  if (mediaRemoteLyricsItemToken)
  {
    CFRelease(mediaRemoteLyricsItemToken);
  }

  v4.receiver = self;
  v4.super_class = MPNowPlayingInfoLyricsItemToken;
  [(MPNowPlayingInfoLyricsItemToken *)&v4 dealloc];
}

- (MPNowPlayingInfoLyricsItemToken)initWithMediaRemoteLyricsItemToken:(void *)a3
{
  v7.receiver = self;
  v7.super_class = MPNowPlayingInfoLyricsItemToken;
  v4 = [(MPNowPlayingInfoLyricsItemToken *)&v7 init];
  v5 = v4;
  if (a3 && v4)
  {
    v4->_mediaRemoteLyricsItemToken = CFRetain(a3);
  }

  return v5;
}

- (MPNowPlayingInfoLyricsItemToken)initWithIdentifier:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = MPNowPlayingInfoLyricsItemToken;
  v8 = [(MPNowPlayingInfoLyricsItemToken *)&v10 init];
  if (v8)
  {
    v8->_mediaRemoteLyricsItemToken = MRLyricsItemTokenCreate();
  }

  return v8;
}

@end