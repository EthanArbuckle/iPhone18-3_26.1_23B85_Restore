@interface MPArtworkRepresentation
+ (id)representationForVisualIdentity:(id)a3 withSize:(CGSize)a4 image:(id)a5;
+ (id)representationForVisualIdentity:(id)a3 withSize:(CGSize)a4 video:(id)a5;
- (CGSize)representationSize;
- (MPArtworkRepresentation)representationWithPreparedImage:(id)a3;
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

- (MPArtworkRepresentation)representationWithPreparedImage:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setKind:{-[MPArtworkRepresentation kind](self, "kind")}];
  [v5 setImage:v4];

  [(MPArtworkRepresentation *)self representationSize];
  [v5 setRepresentationSize:?];
  v6 = [(MPArtworkRepresentation *)self representationToken];
  [v5 setRepresentationToken:v6];

  [v5 setImagePrepared:1];
  v7 = [(MPArtworkRepresentation *)self visualIdenticalityStringRepresentation];
  v8 = v5[5];
  v5[5] = v7;

  return v5;
}

+ (id)representationForVisualIdentity:(id)a3 withSize:(CGSize)a4 video:(id)a5
{
  if (a5)
  {
    height = a4.height;
    width = a4.width;
    v8 = a5;
    v9 = a3;
    v10 = objc_alloc_init(MPArtworkRepresentation);
    [(MPArtworkRepresentation *)v10 setKind:1];
    [(MPArtworkRepresentation *)v10 setVideo:v8];

    [(MPArtworkRepresentation *)v10 setRepresentationSize:width, height];
    v11 = [v9 stringRepresentation];

    visualIdenticalityStringRepresentation = v10->_visualIdenticalityStringRepresentation;
    v10->_visualIdenticalityStringRepresentation = v11;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)representationForVisualIdentity:(id)a3 withSize:(CGSize)a4 image:(id)a5
{
  if (a5)
  {
    height = a4.height;
    width = a4.width;
    v8 = a5;
    v9 = a3;
    v10 = objc_alloc_init(MPArtworkRepresentation);
    [(MPArtworkRepresentation *)v10 setKind:0];
    [(MPArtworkRepresentation *)v10 setImage:v8];

    [(MPArtworkRepresentation *)v10 setRepresentationSize:width, height];
    v11 = [v9 stringRepresentation];

    visualIdenticalityStringRepresentation = v10->_visualIdenticalityStringRepresentation;
    v10->_visualIdenticalityStringRepresentation = v11;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end