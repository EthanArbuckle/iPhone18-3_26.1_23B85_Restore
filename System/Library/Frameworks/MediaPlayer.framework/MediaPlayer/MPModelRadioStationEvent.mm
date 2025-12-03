@interface MPModelRadioStationEvent
+ (void)__MPModelPropertyRadioStationEventArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationEventDescriptionText__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationEventEndTime__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationEventHeroArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationEventStartTime__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationEventTitle__MAPPING_MISSING__;
- (id)artworkCatalog;
- (id)heroArtworkCatalog;
@end

@implementation MPModelRadioStationEvent

- (id)heroArtworkCatalog
{
  heroArtworkCatalogBlock = [(MPModelRadioStationEvent *)self heroArtworkCatalogBlock];
  v4 = heroArtworkCatalogBlock;
  if (heroArtworkCatalogBlock)
  {
    v5 = (*(heroArtworkCatalogBlock + 16))(heroArtworkCatalogBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)artworkCatalog
{
  artworkCatalogBlock = [(MPModelRadioStationEvent *)self artworkCatalogBlock];
  v4 = artworkCatalogBlock;
  if (artworkCatalogBlock)
  {
    v5 = (*(artworkCatalogBlock + 16))(artworkCatalogBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)__MPModelPropertyRadioStationEventHeroArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStationEvent.m" lineNumber:32 description:@"Translator was missing mapping for MPModelPropertyRadioStationEventHeroArtwork"];
}

+ (void)__MPModelPropertyRadioStationEventArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStationEvent.m" lineNumber:31 description:@"Translator was missing mapping for MPModelPropertyRadioStationEventArtwork"];
}

+ (void)__MPModelPropertyRadioStationEventEndTime__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStationEvent.m" lineNumber:30 description:@"Translator was missing mapping for MPModelPropertyRadioStationEventEndTime"];
}

+ (void)__MPModelPropertyRadioStationEventStartTime__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStationEvent.m" lineNumber:29 description:@"Translator was missing mapping for MPModelPropertyRadioStationEventStartTime"];
}

+ (void)__MPModelPropertyRadioStationEventDescriptionText__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStationEvent.m" lineNumber:28 description:@"Translator was missing mapping for MPModelPropertyRadioStationEventDescriptionText"];
}

+ (void)__MPModelPropertyRadioStationEventTitle__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStationEvent.m" lineNumber:27 description:@"Translator was missing mapping for MPModelPropertyRadioStationEventTitle"];
}

@end