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
  v3 = [(MPModelPodcast *)self artworkCatalogBlock];
  v4 = v3;
  if (v3)
  {
    v5 = (*(v3 + 16))(v3, self);
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
  v4 = [(MPModelObject *)self identifiers];
  v5 = [v4 humanDescription];
  v6 = [v3 stringWithFormat:@"podcast %@", v5];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyPodcastTitle"])
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(MPModelPodcast *)self title];
    v9 = [v7 stringWithFormat:@"“%@” ", v8];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyPodcastArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcast.m" lineNumber:98 description:@"Translator was missing mapping for MPModelPropertyPodcastArtwork"];
}

+ (void)__MPModelRelationshipPodcastAuthor__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcast.m" lineNumber:97 description:@"Translator was missing mapping for MPModelRelationshipPodcastAuthor"];
}

+ (void)__MPModelPropertyPodcastSortType__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcast.m" lineNumber:96 description:@"Translator was missing mapping for MPModelPropertyPodcastSortType"];
}

+ (void)__MPModelPropertyPodcastSupportsSubscription__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcast.m" lineNumber:95 description:@"Translator was missing mapping for MPModelPropertyPodcastSupportsSubscription"];
}

+ (void)__MPModelPropertyPodcastShareURL__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcast.m" lineNumber:94 description:@"Translator was missing mapping for MPModelPropertyPodcastShareURL"];
}

+ (void)__MPModelPropertyPodcastFeedURL__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcast.m" lineNumber:93 description:@"Translator was missing mapping for MPModelPropertyPodcastFeedURL"];
}

+ (void)__MPModelPropertyPodcastTitle__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcast.m" lineNumber:92 description:@"Translator was missing mapping for MPModelPropertyPodcastTitle"];
}

@end