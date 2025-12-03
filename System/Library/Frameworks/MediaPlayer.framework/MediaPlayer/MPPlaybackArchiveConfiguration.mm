@interface MPPlaybackArchiveConfiguration
- (CGSize)preferredArtworkSize;
- (MPPlaybackArchiveConfiguration)initWithCoder:(id)coder;
- (MPPlaybackArchiveConfiguration)initWithPreferredArtworkSize:(CGSize)size;
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

- (MPPlaybackArchiveConfiguration)initWithCoder:(id)coder
{
  [coder decodeCGSizeForKey:@"s"];

  return [(MPPlaybackArchiveConfiguration *)self initWithPreferredArtworkSize:?];
}

- (MPPlaybackArchiveConfiguration)initWithPreferredArtworkSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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