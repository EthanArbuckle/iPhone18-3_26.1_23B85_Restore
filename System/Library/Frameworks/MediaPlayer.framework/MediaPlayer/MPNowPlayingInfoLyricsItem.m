@interface MPNowPlayingInfoLyricsItem
- (MPNowPlayingInfoLyricsItem)initWithLyrics:(id)a3 userProvided:(BOOL)a4;
- (MPNowPlayingInfoLyricsItem)initWithLyrics:(id)a3 userProvided:(BOOL)a4 token:(id)a5;
- (MPNowPlayingInfoLyricsItem)initWithMediaRemoteLyricsItem:(void *)a3;
- (MPNowPlayingInfoLyricsItemToken)token;
- (void)dealloc;
@end

@implementation MPNowPlayingInfoLyricsItem

- (MPNowPlayingInfoLyricsItemToken)token
{
  v2 = [[MPNowPlayingInfoLyricsItemToken alloc] initWithMediaRemoteLyricsItemToken:MRLyricsItemGetToken()];

  return v2;
}

- (void)dealloc
{
  mediaRemoteLyricsItem = self->_mediaRemoteLyricsItem;
  if (mediaRemoteLyricsItem)
  {
    CFRelease(mediaRemoteLyricsItem);
  }

  v4.receiver = self;
  v4.super_class = MPNowPlayingInfoLyricsItem;
  [(MPNowPlayingInfoLyricsItem *)&v4 dealloc];
}

- (MPNowPlayingInfoLyricsItem)initWithMediaRemoteLyricsItem:(void *)a3
{
  v3 = a3;
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = MPNowPlayingInfoLyricsItem;
    v4 = [(MPNowPlayingInfoLyricsItem *)&v6 init];
    if (v4)
    {
      v4->_mediaRemoteLyricsItem = CFRetain(v3);
    }

    self = v4;
    v3 = self;
  }

  return v3;
}

- (MPNowPlayingInfoLyricsItem)initWithLyrics:(id)a3 userProvided:(BOOL)a4 token:(id)a5
{
  v7 = a3;
  v8 = a5;
  v11.receiver = self;
  v11.super_class = MPNowPlayingInfoLyricsItem;
  v9 = [(MPNowPlayingInfoLyricsItem *)&v11 init];
  if (v9)
  {
    [v8 mediaRemoteLyricsItemToken];
    v9->_mediaRemoteLyricsItem = MRLyricsItemCreate();
  }

  return v9;
}

- (MPNowPlayingInfoLyricsItem)initWithLyrics:(id)a3 userProvided:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[MPNowPlayingInfoLyricsItem alloc] initWithLyrics:v6 userProvided:v4 token:0];

  return v7;
}

@end