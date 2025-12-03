@interface MPModelPodcast
+ (void)__MPModelPropertyPodcastArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastFeedURL__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastShareURL__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastSortType__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastSupportsSubscription__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastTitle__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPodcastAuthor__MAPPING_MISSING__;
- (id)artworkCatalog;
- (id)humanDescription;
@end

@implementation MPModelPodcast

- (id)artworkCatalog
{
  artworkCatalogBlock = [(MPModelPodcast *)self artworkCatalogBlock];
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

- (id)humanDescription
{
  v3 = MEMORY[0x1E696AD60];
  identifiers = [(MPModelObject *)self identifiers];
  humanDescription = [identifiers humanDescription];
  v6 = [v3 stringWithFormat:@"podcast %@", humanDescription];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyPodcastTitle"])
  {
    v7 = MEMORY[0x1E696AEC0];
    title = [(MPModelPodcast *)self title];
    v9 = [v7 stringWithFormat:@"“%@” ", title];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyPodcastArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPodcast.m" lineNumber:98 description:@"Translator was missing mapping for MPModelPropertyPodcastArtwork"];
}

+ (void)__MPModelRelationshipPodcastAuthor__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPodcast.m" lineNumber:97 description:@"Translator was missing mapping for MPModelRelationshipPodcastAuthor"];
}

+ (void)__MPModelPropertyPodcastSortType__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPodcast.m" lineNumber:96 description:@"Translator was missing mapping for MPModelPropertyPodcastSortType"];
}

+ (void)__MPModelPropertyPodcastSupportsSubscription__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPodcast.m" lineNumber:95 description:@"Translator was missing mapping for MPModelPropertyPodcastSupportsSubscription"];
}

+ (void)__MPModelPropertyPodcastShareURL__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPodcast.m" lineNumber:94 description:@"Translator was missing mapping for MPModelPropertyPodcastShareURL"];
}

+ (void)__MPModelPropertyPodcastFeedURL__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPodcast.m" lineNumber:93 description:@"Translator was missing mapping for MPModelPropertyPodcastFeedURL"];
}

+ (void)__MPModelPropertyPodcastTitle__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelPodcast.m" lineNumber:92 description:@"Translator was missing mapping for MPModelPropertyPodcastTitle"];
}

@end