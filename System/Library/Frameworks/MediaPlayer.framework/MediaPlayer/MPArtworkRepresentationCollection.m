@interface MPArtworkRepresentationCollection
+ (MPArtworkRepresentationCollection)collectionWithImageRepresentation:(id)a3 videoRepresentation:(id)a4 bestRepresentationKinds:(unint64_t)a5;
- (void)resetForRepresentationKinds:(unint64_t)a3;
@end

@implementation MPArtworkRepresentationCollection

- (void)resetForRepresentationKinds:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    [(MPArtworkRepresentationCollection *)self setImageRepresentation:0];
    [(MPArtworkRepresentationCollection *)self setBestRepresentationKinds:[(MPArtworkRepresentationCollection *)self bestRepresentationKinds]& 0xFFFFFFFFFFFFFFFELL];
  }

  if ((v3 & 2) != 0)
  {
    [(MPArtworkRepresentationCollection *)self setVideoRepresentation:0];
    v5 = [(MPArtworkRepresentationCollection *)self bestRepresentationKinds]& 0xFFFFFFFFFFFFFFFDLL;

    [(MPArtworkRepresentationCollection *)self setBestRepresentationKinds:v5];
  }
}

+ (MPArtworkRepresentationCollection)collectionWithImageRepresentation:(id)a3 videoRepresentation:(id)a4 bestRepresentationKinds:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(MPArtworkRepresentationCollection);
  [(MPArtworkRepresentationCollection *)v9 setImageRepresentation:v8];

  [(MPArtworkRepresentationCollection *)v9 setVideoRepresentation:v7];
  [(MPArtworkRepresentationCollection *)v9 setBestRepresentationKinds:a5];

  return v9;
}

@end