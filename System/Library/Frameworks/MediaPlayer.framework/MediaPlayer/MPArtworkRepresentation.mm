@interface MPArtworkRepresentation
+ (id)representationForVisualIdentity:(id)identity withSize:(CGSize)size image:(id)image;
+ (id)representationForVisualIdentity:(id)identity withSize:(CGSize)size video:(id)video;
- (CGSize)representationSize;
- (MPArtworkRepresentation)representationWithPreparedImage:(id)image;
@end

@implementation MPArtworkRepresentation

- (CGSize)representationSize
{
  width = self->_representationSize.width;
  height = self->_representationSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (MPArtworkRepresentation)representationWithPreparedImage:(id)image
{
  imageCopy = image;
  v5 = objc_opt_new();
  [v5 setKind:{-[MPArtworkRepresentation kind](self, "kind")}];
  [v5 setImage:imageCopy];

  [(MPArtworkRepresentation *)self representationSize];
  [v5 setRepresentationSize:?];
  representationToken = [(MPArtworkRepresentation *)self representationToken];
  [v5 setRepresentationToken:representationToken];

  [v5 setImagePrepared:1];
  visualIdenticalityStringRepresentation = [(MPArtworkRepresentation *)self visualIdenticalityStringRepresentation];
  v8 = v5[5];
  v5[5] = visualIdenticalityStringRepresentation;

  return v5;
}

+ (id)representationForVisualIdentity:(id)identity withSize:(CGSize)size video:(id)video
{
  if (video)
  {
    height = size.height;
    width = size.width;
    videoCopy = video;
    identityCopy = identity;
    v10 = objc_alloc_init(MPArtworkRepresentation);
    [(MPArtworkRepresentation *)v10 setKind:1];
    [(MPArtworkRepresentation *)v10 setVideo:videoCopy];

    [(MPArtworkRepresentation *)v10 setRepresentationSize:width, height];
    stringRepresentation = [identityCopy stringRepresentation];

    visualIdenticalityStringRepresentation = v10->_visualIdenticalityStringRepresentation;
    v10->_visualIdenticalityStringRepresentation = stringRepresentation;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)representationForVisualIdentity:(id)identity withSize:(CGSize)size image:(id)image
{
  if (image)
  {
    height = size.height;
    width = size.width;
    imageCopy = image;
    identityCopy = identity;
    v10 = objc_alloc_init(MPArtworkRepresentation);
    [(MPArtworkRepresentation *)v10 setKind:0];
    [(MPArtworkRepresentation *)v10 setImage:imageCopy];

    [(MPArtworkRepresentation *)v10 setRepresentationSize:width, height];
    stringRepresentation = [identityCopy stringRepresentation];

    visualIdenticalityStringRepresentation = v10->_visualIdenticalityStringRepresentation;
    v10->_visualIdenticalityStringRepresentation = stringRepresentation;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end