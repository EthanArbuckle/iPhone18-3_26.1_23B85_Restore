@interface MPArtworkRepresentationCollection
+ (MPArtworkRepresentationCollection)collectionWithImageRepresentation:(id)representation videoRepresentation:(id)videoRepresentation bestRepresentationKinds:(unint64_t)kinds;
- (void)resetForRepresentationKinds:(unint64_t)kinds;
@end

@implementation MPArtworkRepresentationCollection

- (void)resetForRepresentationKinds:(unint64_t)kinds
{
  kindsCopy = kinds;
  if (kinds)
  {
    [(MPArtworkRepresentationCollection *)self setImageRepresentation:0];
    [(MPArtworkRepresentationCollection *)self setBestRepresentationKinds:[(MPArtworkRepresentationCollection *)self bestRepresentationKinds]& 0xFFFFFFFFFFFFFFFELL];
  }

  if ((kindsCopy & 2) != 0)
  {
    [(MPArtworkRepresentationCollection *)self setVideoRepresentation:0];
    v5 = [(MPArtworkRepresentationCollection *)self bestRepresentationKinds]& 0xFFFFFFFFFFFFFFFDLL;

    [(MPArtworkRepresentationCollection *)self setBestRepresentationKinds:v5];
  }
}

+ (MPArtworkRepresentationCollection)collectionWithImageRepresentation:(id)representation videoRepresentation:(id)videoRepresentation bestRepresentationKinds:(unint64_t)kinds
{
  videoRepresentationCopy = videoRepresentation;
  representationCopy = representation;
  v9 = objc_alloc_init(MPArtworkRepresentationCollection);
  [(MPArtworkRepresentationCollection *)v9 setImageRepresentation:representationCopy];

  [(MPArtworkRepresentationCollection *)v9 setVideoRepresentation:videoRepresentationCopy];
  [(MPArtworkRepresentationCollection *)v9 setBestRepresentationKinds:kinds];

  return v9;
}

@end