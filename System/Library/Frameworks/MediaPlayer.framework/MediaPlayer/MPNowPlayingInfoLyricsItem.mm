@interface MPNowPlayingInfoLyricsItem
- (MPNowPlayingInfoLyricsItem)initWithLyrics:(id)lyrics userProvided:(BOOL)provided;
- (MPNowPlayingInfoLyricsItem)initWithLyrics:(id)lyrics userProvided:(BOOL)provided token:(id)token;
- (MPNowPlayingInfoLyricsItem)initWithMediaRemoteLyricsItem:(void *)item;
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

- (MPNowPlayingInfoLyricsItem)initWithMediaRemoteLyricsItem:(void *)item
{
  selfCopy = item;
  if (item)
  {
    v6.receiver = self;
    v6.super_class = MPNowPlayingInfoLyricsItem;
    v4 = [(MPNowPlayingInfoLyricsItem *)&v6 init];
    if (v4)
    {
      v4->_mediaRemoteLyricsItem = CFRetain(selfCopy);
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

- (MPNowPlayingInfoLyricsItem)initWithLyrics:(id)lyrics userProvided:(BOOL)provided token:(id)token
{
  lyricsCopy = lyrics;
  tokenCopy = token;
  v11.receiver = self;
  v11.super_class = MPNowPlayingInfoLyricsItem;
  v9 = [(MPNowPlayingInfoLyricsItem *)&v11 init];
  if (v9)
  {
    [tokenCopy mediaRemoteLyricsItemToken];
    v9->_mediaRemoteLyricsItem = MRLyricsItemCreate();
  }

  return v9;
}

- (MPNowPlayingInfoLyricsItem)initWithLyrics:(id)lyrics userProvided:(BOOL)provided
{
  providedCopy = provided;
  lyricsCopy = lyrics;
  v7 = [[MPNowPlayingInfoLyricsItem alloc] initWithLyrics:lyricsCopy userProvided:providedCopy token:0];

  return v7;
}

@end