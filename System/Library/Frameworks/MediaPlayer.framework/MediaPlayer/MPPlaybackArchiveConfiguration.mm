@interface MPPlaybackArchiveConfiguration
- (CGSize)preferredArtworkSize;
- (MPPlaybackArchiveConfiguration)initWithCoder:(id)a3;
- (MPPlaybackArchiveConfiguration)initWithPreferredArtworkSize:(CGSize)a3;
@end

@implementation MPPlaybackArchiveConfiguration

- (CGSize)preferredArtworkSize
{
  width = self->_preferredArtworkSize.width;
  height = self->_preferredArtworkSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (MPPlaybackArchiveConfiguration)initWithCoder:(id)a3
{
  [a3 decodeCGSizeForKey:@"s"];

  return [(MPPlaybackArchiveConfiguration *)self initWithPreferredArtworkSize:?];
}

- (MPPlaybackArchiveConfiguration)initWithPreferredArtworkSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = MPPlaybackArchiveConfiguration;
  result = [(MPPlaybackArchiveConfiguration *)&v6 init];
  if (result)
  {
    result->_preferredArtworkSize.width = width;
    result->_preferredArtworkSize.height = height;
  }

  return result;
}

@end