@interface MPNowPlayingInfoLyricsEvent
- (MPNowPlayingInfoLyricsEvent)initWithMediaRemoteLyricsEvent:(void *)a3;
- (MPNowPlayingInfoLyricsItemToken)token;
- (void)dealloc;
@end

@implementation MPNowPlayingInfoLyricsEvent

- (MPNowPlayingInfoLyricsItemToken)token
{
  v2 = [[MPNowPlayingInfoLyricsItemToken alloc] initWithMediaRemoteLyricsItemToken:MRLyricsEventGetToken()];

  return v2;
}

- (void)dealloc
{
  mediaRemoteLyricsEvent = self->_mediaRemoteLyricsEvent;
  if (mediaRemoteLyricsEvent)
  {
    CFRelease(mediaRemoteLyricsEvent);
  }

  v4.receiver = self;
  v4.super_class = MPNowPlayingInfoLyricsEvent;
  [(MPNowPlayingInfoLyricsEvent *)&v4 dealloc];
}

- (MPNowPlayingInfoLyricsEvent)initWithMediaRemoteLyricsEvent:(void *)a3
{
  v6.receiver = self;
  v6.super_class = MPNowPlayingInfoLyricsEvent;
  v4 = [(MPNowPlayingInfoLyricsEvent *)&v6 init];
  if (v4)
  {
    v4->_mediaRemoteLyricsEvent = CFRetain(a3);
  }

  return v4;
}

@end