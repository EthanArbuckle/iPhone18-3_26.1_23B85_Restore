@interface MPModelRadioStation
+ (id)classesForSecureCoding;
+ (void)__MPModelPropertyRadioStationAllowsItemLiking__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationAttributionLabel__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationBeats1__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationContainsVideo__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationEditorNotes__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationEditorialArtwork__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationEndingAirDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationEvents__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationGlyph__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationHasExplicitContent__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationLive__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationName__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationProviderBundleIdentifier__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationProviderID__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationProviderName__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationProviderUniversalLink__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationShortEditorNotes__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationStartingAirDate__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationSubscriptionRequired__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationSubtype__MAPPING_MISSING__;
+ (void)__MPModelPropertyRadioStationType__MAPPING_MISSING__;
- (MPRadioStationEvent)currentStationEvent;
- (MPRadioStationEvent)upcomingStationEvent;
- (id)artworkCatalog;
- (id)contentItemCollectionInfo;
- (id)editorialArtworkCatalog;
- (id)humanDescription;
- (id)stationGlyph;
@end

@implementation MPModelRadioStation

- (MPRadioStationEvent)upcomingStationEvent
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] now];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  stationEvents = [(MPModelRadioStation *)self stationEvents];
  v5 = [stationEvents countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(stationEvents);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        startTime = [v10 startTime];
        v12 = [v3 compare:startTime];

        if (v12 == -1)
        {
          if (!v7 || ([v10 startTime], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "timeIntervalSinceNow"), v15 = v14, objc_msgSend(v7, "startTime"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "timeIntervalSinceNow"), v18 = v17, v16, v13, v15 < v18))
          {
            v19 = v10;

            v7 = v19;
          }
        }
      }

      v6 = [stationEvents countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MPRadioStationEvent)currentStationEvent
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] now];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(MPModelRadioStation *)self stationEvents];
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x1E696AB80]);
        startTime = [v9 startTime];
        endTime = [v9 endTime];
        v13 = [v10 initWithStartDate:startTime endDate:endTime];

        if ([v13 containsDate:v3])
        {
          if (!v6 || ([v9 startTime], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "timeIntervalSinceNow"), v16 = v15, objc_msgSend(v6, "startTime"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "timeIntervalSinceNow"), v19 = v18, v17, v14, v16 < v19))
          {
            v20 = v9;

            v6 = v20;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)editorialArtworkCatalog
{
  editorialArtworkCatalogBlock = [(MPModelRadioStation *)self editorialArtworkCatalogBlock];
  v4 = editorialArtworkCatalogBlock;
  if (editorialArtworkCatalogBlock)
  {
    v5 = (*(editorialArtworkCatalogBlock + 16))(editorialArtworkCatalogBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)stationGlyph
{
  stationGlyphBlock = [(MPModelRadioStation *)self stationGlyphBlock];
  v4 = stationGlyphBlock;
  if (stationGlyphBlock)
  {
    v5 = (*(stationGlyphBlock + 16))(stationGlyphBlock, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)artworkCatalog
{
  artworkCatalogBlock = [(MPModelRadioStation *)self artworkCatalogBlock];
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
  v6 = [v3 stringWithFormat:@"radio station %@", humanDescription];

  if ([(MPModelObject *)self hasLoadedValueForKey:@"MPModelPropertyRadioStationName"])
  {
    v7 = MEMORY[0x1E696AEC0];
    name = [(MPModelRadioStation *)self name];
    v9 = [v7 stringWithFormat:@"“%@” ", name];

    [v6 insertString:v9 atIndex:0];
  }

  return v6;
}

+ (void)__MPModelPropertyRadioStationEndingAirDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:105 description:@"Translator was missing mapping for MPModelPropertyRadioStationEndingAirDate"];
}

+ (void)__MPModelPropertyRadioStationStartingAirDate__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:104 description:@"Translator was missing mapping for MPModelPropertyRadioStationStartingAirDate"];
}

+ (void)__MPModelPropertyRadioStationProviderID__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:103 description:@"Translator was missing mapping for MPModelPropertyRadioStationProviderID"];
}

+ (void)__MPModelPropertyRadioStationProviderBundleIdentifier__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:102 description:@"Translator was missing mapping for MPModelPropertyRadioStationProviderBundleIdentifier"];
}

+ (void)__MPModelPropertyRadioStationProviderUniversalLink__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:101 description:@"Translator was missing mapping for MPModelPropertyRadioStationProviderUniversalLink"];
}

+ (void)__MPModelPropertyRadioStationSubscriptionRequired__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:100 description:@"Translator was missing mapping for MPModelPropertyRadioStationSubscriptionRequired"];
}

+ (void)__MPModelPropertyRadioStationProviderName__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:99 description:@"Translator was missing mapping for MPModelPropertyRadioStationProviderName"];
}

+ (void)__MPModelPropertyRadioStationAttributionLabel__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:98 description:@"Translator was missing mapping for MPModelPropertyRadioStationAttributionLabel"];
}

+ (void)__MPModelPropertyRadioStationSubtype__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:97 description:@"Translator was missing mapping for MPModelPropertyRadioStationSubtype"];
}

+ (void)__MPModelPropertyRadioStationType__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:96 description:@"Translator was missing mapping for MPModelPropertyRadioStationType"];
}

+ (void)__MPModelPropertyRadioStationAllowsItemLiking__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:95 description:@"Translator was missing mapping for MPModelPropertyRadioStationAllowsItemLiking"];
}

+ (void)__MPModelPropertyRadioStationEditorialArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:94 description:@"Translator was missing mapping for MPModelPropertyRadioStationEditorialArtwork"];
}

+ (void)__MPModelPropertyRadioStationGlyph__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:93 description:@"Translator was missing mapping for MPModelPropertyRadioStationGlyph"];
}

+ (void)__MPModelPropertyRadioStationArtwork__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:92 description:@"Translator was missing mapping for MPModelPropertyRadioStationArtwork"];
}

+ (void)__MPModelPropertyRadioStationEvents__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:91 description:@"Translator was missing mapping for MPModelPropertyRadioStationEvents"];
}

+ (void)__MPModelPropertyRadioStationHasExplicitContent__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:90 description:@"Translator was missing mapping for MPModelPropertyRadioStationHasExplicitContent"];
}

+ (void)__MPModelPropertyRadioStationShortEditorNotes__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:89 description:@"Translator was missing mapping for MPModelPropertyRadioStationShortEditorNotes"];
}

+ (void)__MPModelPropertyRadioStationEditorNotes__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:88 description:@"Translator was missing mapping for MPModelPropertyRadioStationEditorNotes"];
}

+ (void)__MPModelPropertyRadioStationName__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:87 description:@"Translator was missing mapping for MPModelPropertyRadioStationName"];
}

+ (void)__MPModelPropertyRadioStationContainsVideo__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:86 description:@"Translator was missing mapping for MPModelPropertyRadioStationContainsVideo"];
}

+ (void)__MPModelPropertyRadioStationLive__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:85 description:@"Translator was missing mapping for MPModelPropertyRadioStationLive"];
}

+ (void)__MPModelPropertyRadioStationBeats1__MAPPING_MISSING__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelRadioStation.m" lineNumber:84 description:@"Translator was missing mapping for MPModelPropertyRadioStationBeats1"];
}

+ (id)classesForSecureCoding
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)contentItemCollectionInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:@"_MPNowPlayingCollectionInfoCollectionTypeRadio" forKey:@"_MPNowPlayingCollectionInfoKeyCollectionType"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__MPModelRadioStation_MPContentItemAdditions__contentItemCollectionInfo__block_invoke;
  v8[3] = &unk_1E76823C0;
  v8[4] = self;
  v4 = v3;
  v9 = v4;
  [MPModelObject performWithoutEnforcement:v8];
  v5 = v9;
  v6 = v4;

  return v4;
}

void __72__MPModelRadioStation_MPContentItemAdditions__contentItemCollectionInfo__block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) name];
  if ([v11 length])
  {
    [*(a1 + 40) setObject:v11 forKey:@"_MPNowPlayingCollectionInfoKeyTitle"];
  }

  v2 = [*(a1 + 32) identifiers];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [v2 radio];
  v5 = [v4 stationStringID];

  if ([v5 length])
  {
    [v3 setObject:v5 forKey:@"_MPNowPlayingInfoPropertyRadioStationStringIdentifier"];
  }

  v6 = [v2 radio];
  v7 = [v6 stationID];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:v7];
    [v3 setObject:v8 forKey:@"_MPNowPlayingInfoPropertyRadioStationIdentifier"];
  }

  v9 = [v2 radio];
  v10 = [v9 stationHash];

  if ([v10 length])
  {
    [v3 setObject:v10 forKey:@"_MPNowPlayingInfoPropertyRadioStationHash"];
  }

  if ([v3 count])
  {
    [*(a1 + 40) setObject:v3 forKey:@"_MPNowPlayingCollectionInfoKeyIdentifiers"];
  }
}

@end