@interface MPModelPodcastEpisode
+ (void)__MPModelPropertyPodcastEpisodeAreChaptersGenerated__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeArtworkInfo__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeAssetURL__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeChapters__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeDatePlayed__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeDescriptionText__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeDuration__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeExplicit__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeExternalContentID__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeFeedURL__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeHasVideo__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeItemType__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeMediaType__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeNumber__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodePodcastStoreID__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodePriceType__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeReleaseDateComponents__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeSeasonNumber__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeShareURL__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeShouldShowChapterArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeShowArtworkTemplateURL__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeState__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeStreamURL__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeSubtitleShort__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeSubtitle__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeTitle__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeTranscriptAlignments__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeTranscriptIdentifier__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeTranscriptSource__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeType__MAPPING_MISSING__;
+ (void)__MPModelPropertyPodcastEpisodeUserRating__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPodcastEpisodeAuthor__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPodcastEpisodeLocalFileAsset__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPodcastEpisodePlaybackPosition__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPodcastEpisodePodcast__MAPPING_MISSING__;
- (id)artworkCatalog;
- (id)humanDescription;
@end

@implementation MPModelPodcastEpisode

- (id)artworkCatalog
{
  v3 = [(MPModelPodcastEpisode *)self artworkCatalogBlock];
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
  v6 = [v3 stringWithFormat:@"podcast episode %@", v5];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyPodcastEpisodeTitle"])
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [(MPModelPodcastEpisode *)self title];
    v9 = [v7 stringWithFormat:@"“%@” ", v8];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyPodcastEpisodeAreChaptersGenerated__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:154 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeAreChaptersGenerated"];
}

+ (void)__MPModelPropertyPodcastEpisodeShouldShowChapterArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:153 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeShouldShowChapterArtwork"];
}

+ (void)__MPModelPropertyPodcastEpisodeTranscriptAlignments__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:152 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeTranscriptAlignments"];
}

+ (void)__MPModelPropertyPodcastEpisodeChapters__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:151 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeChapters"];
}

+ (void)__MPModelPropertyPodcastEpisodeTranscriptSource__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:150 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeTranscriptSource"];
}

+ (void)__MPModelPropertyPodcastEpisodeTranscriptIdentifier__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:149 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeTranscriptIdentifier"];
}

+ (void)__MPModelPropertyPodcastEpisodeArtworkInfo__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:148 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeArtworkInfo"];
}

+ (void)__MPModelPropertyPodcastEpisodeShowArtworkTemplateURL__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:147 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeShowArtworkTemplateURL"];
}

+ (void)__MPModelPropertyPodcastEpisodeExternalContentID__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:146 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeExternalContentID"];
}

+ (void)__MPModelPropertyPodcastEpisodePodcastStoreID__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:145 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodePodcastStoreID"];
}

+ (void)__MPModelPropertyPodcastEpisodePriceType__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:144 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodePriceType"];
}

+ (void)__MPModelPropertyPodcastEpisodeMediaType__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:143 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeMediaType"];
}

+ (void)__MPModelPropertyPodcastEpisodeItemType__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:142 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeItemType"];
}

+ (void)__MPModelPropertyPodcastEpisodeAssetURL__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:141 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeAssetURL"];
}

+ (void)__MPModelPropertyPodcastEpisodeFeedURL__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:140 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeFeedURL"];
}

+ (void)__MPModelPropertyPodcastEpisodeState__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:139 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeState"];
}

+ (void)__MPModelPropertyPodcastEpisodeArtwork__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:138 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeArtwork"];
}

+ (void)__MPModelRelationshipPodcastEpisodePlaybackPosition__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:137 description:@"Translator was missing mapping for MPModelRelationshipPodcastEpisodePlaybackPosition"];
}

+ (void)__MPModelRelationshipPodcastEpisodeAuthor__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:136 description:@"Translator was missing mapping for MPModelRelationshipPodcastEpisodeAuthor"];
}

+ (void)__MPModelRelationshipPodcastEpisodePodcast__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:135 description:@"Translator was missing mapping for MPModelRelationshipPodcastEpisodePodcast"];
}

+ (void)__MPModelRelationshipPodcastEpisodeLocalFileAsset__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:134 description:@"Translator was missing mapping for MPModelRelationshipPodcastEpisodeLocalFileAsset"];
}

+ (void)__MPModelPropertyPodcastEpisodeSeasonNumber__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:133 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeSeasonNumber"];
}

+ (void)__MPModelPropertyPodcastEpisodeNumber__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:132 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeNumber"];
}

+ (void)__MPModelPropertyPodcastEpisodeType__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:131 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeType"];
}

+ (void)__MPModelPropertyPodcastEpisodeShareURL__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:130 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeShareURL"];
}

+ (void)__MPModelPropertyPodcastEpisodeStreamURL__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:129 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeStreamURL"];
}

+ (void)__MPModelPropertyPodcastEpisodeDatePlayed__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:128 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeDatePlayed"];
}

+ (void)__MPModelPropertyPodcastEpisodeDescriptionText__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:127 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeDescriptionText"];
}

+ (void)__MPModelPropertyPodcastEpisodeHasVideo__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:126 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeHasVideo"];
}

+ (void)__MPModelPropertyPodcastEpisodeExplicit__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:125 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeExplicit"];
}

+ (void)__MPModelPropertyPodcastEpisodeUserRating__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:124 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeUserRating"];
}

+ (void)__MPModelPropertyPodcastEpisodeDuration__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:123 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeDuration"];
}

+ (void)__MPModelPropertyPodcastEpisodeReleaseDateComponents__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:122 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeReleaseDateComponents"];
}

+ (void)__MPModelPropertyPodcastEpisodeSubtitleShort__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:121 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeSubtitleShort"];
}

+ (void)__MPModelPropertyPodcastEpisodeSubtitle__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:120 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeSubtitle"];
}

+ (void)__MPModelPropertyPodcastEpisodeTitle__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPodcastEpisode.m" lineNumber:119 description:@"Translator was missing mapping for MPModelPropertyPodcastEpisodeTitle"];
}

@end