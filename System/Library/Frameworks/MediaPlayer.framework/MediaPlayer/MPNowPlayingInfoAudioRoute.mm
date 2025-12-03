@interface MPNowPlayingInfoAudioRoute
- (BOOL)isSpatializationEnabled;
- (BOOL)supportsSpatialization;
- (MPNowPlayingInfoAudioRoute)initWithMediaRemoteAudioRoute:(id)route;
- (MRContentItemMetadataAudioRoute)mediaRemoteAudioRoute;
- (NSString)name;
- (int64_t)type;
- (void)setName:(id)name;
- (void)setSpatializationEnabled:(BOOL)enabled;
- (void)setSupportsSpatialization:(BOOL)spatialization;
- (void)setType:(int64_t)type;
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

    type = [(MPNowPlayingInfoAudioRoute *)self type];
    if ((type - 1) >= 9)
    {
      v7 = 0;
    }

    else
    {
      v7 = type;
    }

    [(MRContentItemMetadataAudioRoute *)self->_mediaRemoteAudioRoute setType:v7];
    name = [(MPNowPlayingInfoAudioRoute *)self name];
    [(MRContentItemMetadataAudioRoute *)self->_mediaRemoteAudioRoute setName:name];

    [(MRContentItemMetadataAudioRoute *)self->_mediaRemoteAudioRoute setSupportsSpatialization:[(MPNowPlayingInfoAudioRoute *)self supportsSpatialization]];
    [(MRContentItemMetadataAudioRoute *)self->_mediaRemoteAudioRoute setSpatializationEnabled:[(MPNowPlayingInfoAudioRoute *)self isSpatializationEnabled]];
    mediaRemoteAudioRoute = self->_mediaRemoteAudioRoute;
  }

  return mediaRemoteAudioRoute;
}

- (void)setSpatializationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  mediaRemoteAudioRoute = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  [mediaRemoteAudioRoute setSpatializationEnabled:enabledCopy];
}

- (BOOL)isSpatializationEnabled
{
  mediaRemoteAudioRoute = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  isSpatializationEnabled = [mediaRemoteAudioRoute isSpatializationEnabled];

  return isSpatializationEnabled;
}

- (void)setSupportsSpatialization:(BOOL)spatialization
{
  spatializationCopy = spatialization;
  mediaRemoteAudioRoute = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  [mediaRemoteAudioRoute setSupportsSpatialization:spatializationCopy];
}

- (BOOL)supportsSpatialization
{
  mediaRemoteAudioRoute = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  supportsSpatialization = [mediaRemoteAudioRoute supportsSpatialization];

  return supportsSpatialization;
}

- (void)setName:(id)name
{
  nameCopy = name;
  mediaRemoteAudioRoute = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  [mediaRemoteAudioRoute setName:nameCopy];
}

- (NSString)name
{
  mediaRemoteAudioRoute = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  name = [mediaRemoteAudioRoute name];

  return name;
}

- (void)setType:(int64_t)type
{
  if ((type - 1) >= 9)
  {
    typeCopy = 0;
  }

  else
  {
    typeCopy = type;
  }

  mediaRemoteAudioRoute = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  [mediaRemoteAudioRoute setType:typeCopy];
}

- (int64_t)type
{
  mediaRemoteAudioRoute = [(MPNowPlayingInfoAudioRoute *)self mediaRemoteAudioRoute];
  type = [mediaRemoteAudioRoute type];
  if ((type - 1) >= 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = type;
  }

  return v4;
}

- (MPNowPlayingInfoAudioRoute)initWithMediaRemoteAudioRoute:(id)route
{
  routeCopy = route;
  if (routeCopy)
  {
    v10.receiver = self;
    v10.super_class = MPNowPlayingInfoAudioRoute;
    v6 = [(MPNowPlayingInfoAudioRoute *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_mediaRemoteAudioRoute, route);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end