@interface MPNowPlayingInfoAudioRoute
- (BOOL)isSpatializationEnabled;
- (BOOL)supportsSpatialization;
- (MPNowPlayingInfoAudioRoute)initWithMediaRemoteAudioRoute:(id)a3;
- (MRContentItemMetadataAudioRoute)mediaRemoteAudioRoute;
- (NSString)name;
- (int64_t)type;
- (void)setName:(id)a3;
- (void)setSpatializationEnabled:(BOOL)a3;
- (void)setSupportsSpatialization:(BOOL)a3;
- (void)setType:(int64_t)a3;
@end

@implementation MPNowPlayingInfoAudioRoute

- (MRContentItemMetadataAudioRoute)mediaRemoteAudioRoute
{
  mediaRemoteAudioRoute = self->_mediaRemoteAudioRoute;
  if (!mediaRemoteAudioRoute)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B0A00]);
    v5 = self->_mediaRemoteAudioRoute;
    self->_mediaRemoteAudioRoute = v4;

    v6 = [(MPNowPlayingInfoAudioRoute *)self type];
    if ((v6 - 1) >= 9)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    [(MRContentItemMetadataAudioRoute *)self->_mediaRemoteAudioRoute setType:v7];
    v8 = [(MPNowPlayingInfoAudioRoute *)self name];
    [(MRContentItemMetadataAudioRoute *)self->_mediaRemoteAudioRoute setName:v8];

    [(MRContentItemMetadataAudioRoute *)self->_mediaRemoteAudioRoute setSupportsSpatialization:[(MPNowPlayingInfoAudioRoute *)self supportsSpatialization]];
    [(MRContentItemMetadataAudioRoute *)self->_mediaRemoteAudioRoute setSpatializationEnabled:[(MPNowPlayingInfoAudioRoute *)self isSpatializationEnabled]];
    mediaRemoteAudioRoute = self->_mediaRemoteAudioRoute;
  }

  return mediaRemoteAudioRoute;
}

- (void)setSpatializationEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  [v4 setSpatializationEnabled:v3];
}

- (BOOL)isSpatializationEnabled
{
  v2 = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  v3 = [v2 isSpatializationEnabled];

  return v3;
}

- (void)setSupportsSpatialization:(BOOL)a3
{
  v3 = a3;
  v4 = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  [v4 setSupportsSpatialization:v3];
}

- (BOOL)supportsSpatialization
{
  v2 = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  v3 = [v2 supportsSpatialization];

  return v3;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  [v5 setName:v4];
}

- (NSString)name
{
  v2 = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  v3 = [v2 name];

  return v3;
}

- (void)setType:(int64_t)a3
{
  if ((a3 - 1) >= 9)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  v4 = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  [v4 setType:v3];
}

- (int64_t)type
{
  v2 = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  v3 = [v2 type];
  if ((v3 - 1) >= 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (MPNowPlayingInfoAudioRoute)initWithMediaRemoteAudioRoute:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = MPNowPlayingInfoAudioRoute;
    v6 = [(MPNowPlayingInfoAudioRoute *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_mediaRemoteAudioRoute, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end