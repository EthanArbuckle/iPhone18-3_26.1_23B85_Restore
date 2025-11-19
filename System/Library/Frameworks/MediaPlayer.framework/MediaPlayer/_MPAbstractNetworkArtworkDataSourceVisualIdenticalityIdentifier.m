@interface _MPAbstractNetworkArtworkDataSourceVisualIdenticalityIdentifier
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringRepresentation;
@end

@implementation _MPAbstractNetworkArtworkDataSourceVisualIdenticalityIdentifier

- (id)stringRepresentation
{
  v3 = [(_MPAbstractNetworkArtworkDataSourceVisualIdenticalityIdentifier *)self imageArtworkIdentifier];
  v4 = [v3 copy];

  v5 = [(_MPAbstractNetworkArtworkDataSourceVisualIdenticalityIdentifier *)self videoArtworkIdentifier];
  v6 = [v5 copy];

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"i=%@/v=%@", v4, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_MPAbstractNetworkArtworkDataSourceVisualIdenticalityIdentifier);
  [(_MPAbstractNetworkArtworkDataSourceVisualIdenticalityIdentifier *)v4 setImageArtworkIdentifier:self->_imageArtworkIdentifier];
  [(_MPAbstractNetworkArtworkDataSourceVisualIdenticalityIdentifier *)v4 setVideoArtworkIdentifier:self->_videoArtworkIdentifier];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      imageArtworkIdentifier = v5->_imageArtworkIdentifier;
      v7 = self->_imageArtworkIdentifier;
      v8 = v7;
      if (v7 == imageArtworkIdentifier)
      {
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:imageArtworkIdentifier];

        if (!v9)
        {
          v10 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      videoArtworkIdentifier = self->_videoArtworkIdentifier;
      v12 = v5->_videoArtworkIdentifier;
      v13 = videoArtworkIdentifier;
      v14 = v13;
      if (v13 == v12)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSString *)v13 isEqual:v12];
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

@end