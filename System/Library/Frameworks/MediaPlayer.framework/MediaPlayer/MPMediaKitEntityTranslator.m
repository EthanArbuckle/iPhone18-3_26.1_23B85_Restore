@interface MPMediaKitEntityTranslator
+ (id)createGenericObjectTranslator;
+ (id)createTranslatorForMPModelClass:(Class)a3;
+ (id)translatorForType:(id)a3;
+ (void)buildSchemaIfNeeded;
- (void)mapIdentifierCreationKeyPaths:(id)a3 transformBlock:(id)a4;
- (void)mapPropertyKey:(id)a3 toPayloadKeyPath:(id)a4;
- (void)mapPropertyKey:(id)a3 toPayloadKeyPaths:(id)a4 valueTransformer:(id)a5;
- (void)mapPropertyKey:(id)a3 toPayloadKeyPaths:(id)a4 valueTransformerFunction:(void *)a5;
- (void)mapRelationshipKey:(id)a3 toModelClass:(Class)a4 mediaKitType:(id)a5;
- (void)mapRelationshipKey:(id)a3 toModelClass:(Class)a4 mediaKitType:(id)a5 attributePayloadTransform:(id)a6;
- (void)mapRelationshipKey:(id)a3 toModelClass:(Class)a4 mediaKitType:(id)a5 payloadTransform:(id)a6;
@end

@implementation MPMediaKitEntityTranslator

- (void)mapRelationshipKey:(id)a3 toModelClass:(Class)a4 mediaKitType:(id)a5
{
  v9 = a5;
  v10 = a3;
  v11 = [(MPBaseEntityTranslator *)self MPModelClass];
  if (v11 != objc_opt_class())
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MPMediaKitEntityTranslator.m" lineNumber:259 description:{@"Can only call %s on generic object translators.", "-[MPMediaKitEntityTranslator mapRelationshipKey:toModelClass:mediaKitType:]"}];
  }

  v13 = [[_MPMediaKitEntityRelationshipTranslator alloc] initWithRelatedMPModelClass:a4 mediaKitType:v9 payloadTransformBlock:&__block_literal_global_225];

  [MPBaseEntityTranslator mapRelationshipKey:v10 ofModelClass:v13 toRelationshipTranslator:?];
}

void __75__MPMediaKitEntityTranslator_mapRelationshipKey_toModelClass_mediaKitType___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"id"];
  [v5 setIdentifier:v7];

  v8 = [v5 attributes];
  v9 = [v6 objectForKeyedSubscript:@"attributes"];
  v10 = v9;
  v11 = MEMORY[0x1E695E0F8];
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F8];
  }

  [v8 addEntriesFromDictionary:v12];

  v13 = [v5 meta];
  v14 = [v6 objectForKeyedSubscript:@"meta"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v11;
  }

  [v13 addEntriesFromDictionary:v16];

  v19 = [v5 relationships];

  v17 = [v6 objectForKeyedSubscript:@"relationships"];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v11;
  }

  [v19 addEntriesFromDictionary:v18];
}

- (void)mapRelationshipKey:(id)a3 toModelClass:(Class)a4 mediaKitType:(id)a5 attributePayloadTransform:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101__MPMediaKitEntityTranslator_mapRelationshipKey_toModelClass_mediaKitType_attributePayloadTransform___block_invoke;
  v12[3] = &unk_1E767DA10;
  v13 = v10;
  v11 = v10;
  [(MPMediaKitEntityTranslator *)self mapRelationshipKey:a3 toModelClass:a4 mediaKitType:a5 payloadTransform:v12];
}

void __101__MPMediaKitEntityTranslator_mapRelationshipKey_toModelClass_mediaKitType_attributePayloadTransform___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v7 = a4;
  v8 = a3;
  v9 = [v16 objectForKeyedSubscript:@"attributes"];
  v10 = _NSIsNSDictionary();

  if (v10)
  {
    v11 = [v7 attributes];
    v12 = [v16 objectForKeyedSubscript:@"attributes"];
    [v11 addEntriesFromDictionary:v12];
  }

  v13 = *(a1 + 32);
  v14 = [v16 objectForKeyedSubscript:@"attributes"];
  v15 = [v7 attributes];
  (*(v13 + 16))(v13, v14, v8, v15);
}

- (void)mapRelationshipKey:(id)a3 toModelClass:(Class)a4 mediaKitType:(id)a5 payloadTransform:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[_MPMediaKitEntityRelationshipTranslator alloc] initWithRelatedMPModelClass:a4 mediaKitType:v11 payloadTransformBlock:v10];

  [MPBaseEntityTranslator mapRelationshipKey:v12 ofModelClass:v13 toRelationshipTranslator:?];
}

- (void)mapPropertyKey:(id)a3 toPayloadKeyPaths:(id)a4 valueTransformerFunction:(void *)a5
{
  v8 = a3;
  v9 = [(_MPKeyPathEntityPropertyTranslator *)_MPMediaKitEntityPropertyTranslator translatorForKeyPaths:a4 valueTransformFunction:a5];
  [(MPBaseEntityTranslator *)&self->super.super.isa mapPropertyKey:v8 toPropertyTranslator:v9];
}

- (void)mapPropertyKey:(id)a3 toPayloadKeyPaths:(id)a4 valueTransformer:(id)a5
{
  v8 = a3;
  v9 = [(_MPKeyPathEntityPropertyTranslator *)_MPMediaKitEntityPropertyTranslator translatorForKeyPaths:a4 valueTransformBlock:a5];
  [(MPBaseEntityTranslator *)&self->super.super.isa mapPropertyKey:v8 toPropertyTranslator:v9];
}

- (void)mapPropertyKey:(id)a3 toPayloadKeyPath:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v11 count:1];
  v10 = [(_MPKeyPathEntityPropertyTranslator *)_MPMediaKitEntityPropertyTranslator translatorForKeyPaths:v9 valueTransformFunction:_MPKeyPathValueTransformFirstKeyPath, v11, v12];

  [(MPBaseEntityTranslator *)&self->super.super.isa mapPropertyKey:v8 toPropertyTranslator:v10];
}

- (void)mapIdentifierCreationKeyPaths:(id)a3 transformBlock:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__MPMediaKitEntityTranslator_mapIdentifierCreationKeyPaths_transformBlock___block_invoke;
  v9[3] = &unk_1E767D9E8;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  v8 = [(_MPKeyPathEntityPropertyTranslator *)_MPMediaKitEntityPropertyTranslator translatorForKeyPaths:a3 valueTransformBlock:v9];
  [(MPBaseEntityTranslator *)&self->super.super.isa mapIdentifiersToPropertyTranslator:v8];
}

MPIdentifierSet *__75__MPMediaKitEntityTranslator_mapIdentifierCreationKeyPaths_transformBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MPIdentifierSet alloc];
  v8 = +[MPModelKind kindWithModelClass:](MPModelKind, "kindWithModelClass:", [*(a1 + 32) MPModelClass]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__MPMediaKitEntityTranslator_mapIdentifierCreationKeyPaths_transformBlock___block_invoke_2;
  v14[3] = &unk_1E767F2F0;
  v9 = *(a1 + 40);
  v16 = v6;
  v17 = v9;
  v15 = v5;
  v10 = v6;
  v11 = v5;
  v12 = [(MPIdentifierSet *)v7 initWithSource:@"MediaAPI" modelKind:v8 block:v14];

  return v12;
}

+ (id)translatorForType:(id)a3
{
  v18[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18[0] = @"songs";
  v18[1] = @"music-videos";
  v18[2] = @"uploaded-audios";
  v18[3] = @"uploaded-videos";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
  v6 = [v5 containsObject:v4];

  if (v6 & 1) != 0 || (v17[0] = @"playlists", v17[1] = @"library-playlists", [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", v4), v7, (v8) || (objc_msgSend(v4, "isEqualToString:", @"artists") & 1) != 0 || (v16[0] = @"albums", v16[1] = @"library-albums", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 2), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsObject:", v4), v9, (v10) || (objc_msgSend(v4, "isEqualToString:", @"stations") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"station-events") & 1) != 0 || (v15[0] = @"curators", v15[1] = @"activities", v15[2] = @"apple-curators", v15[3] = @"editorial-items", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 4), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", v4), v11, (v12) || (objc_msgSend(v4, "isEqualToString:", @"tv-shows") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"tv-episodes") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"music-movies") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"social-profiles") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"personal-social-profiles") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"record-labels") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"credit-artists"))
  {
    v13 = [a1 translatorForMPModelClass:objc_opt_class()];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)createTranslatorForMPModelClass:(Class)a3
{
  if (objc_opt_class() == a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"MPMediaKitEntityTranslator.m" lineNumber:159 description:@"Use +createGenericObjectTranslator instead."];
  }

  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___MPMediaKitEntityTranslator;
  v6 = objc_msgSendSuper2(&v9, sel_createTranslatorForMPModelClass_, a3);

  return v6;
}

+ (id)createGenericObjectTranslator
{
  v3 = objc_opt_class();
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MPMediaKitEntityTranslator;
  v4 = objc_msgSendSuper2(&v6, sel_createTranslatorForMPModelClass_, v3);
  [v4 mapIdentifierCreationKeyPaths:MEMORY[0x1E695E0F0] transformBlock:&__block_literal_global_193];

  return v4;
}

+ (void)buildSchemaIfNeeded
{
  if (buildSchemaIfNeeded_onceToken != -1)
  {
    dispatch_once(&buildSchemaIfNeeded_onceToken, &__block_literal_global_42969);
  }
}

void __49__MPMediaKitEntityTranslator_buildSchemaIfNeeded__block_invoke()
{
  v42 = *MEMORY[0x1E69E9840];
  v0 = +[MPMediaKitEntityTranslator createGenericObjectTranslator];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericSong" toModelClass:objc_opt_class() mediaKitType:@"songs"];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericArtist" toModelClass:objc_opt_class() mediaKitType:@"artists"];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericAlbum" toModelClass:objc_opt_class() mediaKitType:@"albums"];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericPlaylist" toModelClass:objc_opt_class() mediaKitType:@"playlists"];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericRadioStation" toModelClass:objc_opt_class() mediaKitType:@"stations"];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericRadioStationEvent" toModelClass:objc_opt_class() mediaKitType:@"station-events"];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericGenre" toModelClass:objc_opt_class() mediaKitType:@"genres"];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericCurator" toModelClass:objc_opt_class() mediaKitType:@"curators"];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericTVShow" toModelClass:objc_opt_class() mediaKitType:@"tv-shows"];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericTVEpisode" toModelClass:objc_opt_class() mediaKitType:@"tv-episodes"];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericMovie" toModelClass:objc_opt_class() mediaKitType:@"music-movies"];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericSocialPerson" toModelClass:objc_opt_class() mediaKitType:@"social-profiles"];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericRecordLabel" toModelClass:objc_opt_class() mediaKitType:@"record-labels"];
  [v0 mapRelationshipKey:@"MPModelRelationshipGenericCreditsArtist" toModelClass:objc_opt_class() mediaKitType:@"credit-artists"];

  v1 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  v30 = @"id";
  v31 = @"meta.formerIds";
  v32 = @"type";
  v33 = @"_MPMKT_transformedType";
  v34 = @"attributes.playParams";
  v35 = @"attributes.offers.kind";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:6];
  [v1 mapIdentifierCreationKeyPaths:v2 transformBlock:&__block_literal_global_33_43058];

  [v1 mapPropertyKey:@"MPModelPropertySongTitle" toPayloadKeyPath:@"attributes.name"];
  [v1 mapPropertyKey:@"MPModelPropertySongDuration" toPayloadKeyPaths:&unk_1F1509FE8 valueTransformerFunction:MPTranslatorUtilitiesTransformMillisecondsToSeconds];
  [v1 mapUnsupportedPropertyKey:@"_MPModelPropertySongTrackCount"];
  [v1 mapPropertyKey:@"MPModelPropertySongDiscNumber" toPayloadKeyPath:@"attributes.discNumber"];
  [v1 mapPropertyKey:@"MPModelPropertySongTrackNumber" toPayloadKeyPath:@"attributes.trackNumber"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongGrouping"];
  [v1 mapPropertyKey:@"MPModelPropertySongHasCredits" toPayloadKeyPath:@"attributes.hasCredits"];
  [v1 mapPropertyKey:@"MPModelPropertySongExplicit" toPayloadKeyPaths:&unk_1F150A000 valueTransformer:&__block_literal_global_67_43064];
  v39 = @"type";
  v40 = @"_MPMKT_transformedType";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:2];
  [v1 mapPropertyKey:@"MPModelPropertySongArtistUploadedContent" toPayloadKeyPaths:v3 valueTransformer:&__block_literal_global_73_43065];

  v36 = @"type";
  v37 = @"_MPMKT_transformedType";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:2];
  [v1 mapPropertyKey:@"MPModelPropertySongHasVideo" toPayloadKeyPaths:v4 valueTransformer:&__block_literal_global_75_43066];

  [v1 mapPropertyKey:@"MPModelPropertySongArtwork" toPayloadKeyPaths:&unk_1F150A018 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongAnimatedArtwork"];
  [v1 mapPropertyKey:@"MPModelPropertySongShouldShowComposer" toPayloadKeyPaths:&unk_1F150A030 valueTransformer:&__block_literal_global_89];
  [v1 mapPropertyKey:@"MPModelPropertySongCopyrightText" toPayloadKeyPath:@"attributes.copyright"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongVolumeNormalization"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongLibraryAdded"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongDownloadedDate"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongKeepLocalEnableState"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongKeepLocalManagedStatus"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongKeepLocalManagedStatusReason"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongKeepLocalConstraints"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongIsFavorite"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongIsDisliked"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongDateFavorited"];
  [v1 mapPropertyKey:@"MPModelPropertySongLibraryAddEligible" toPayloadKeyPaths:&unk_1F150A048 valueTransformerFunction:_MPKeyPathValueTransformHasNonnullValue];
  [v1 mapPropertyKey:@"MPModelPropertySongClassicalWork" toPayloadKeyPath:@"attributes.workName"];
  [v1 mapPropertyKey:@"MPModelPropertySongClassicalMovement" toPayloadKeyPath:@"attributes.movementName"];
  [v1 mapPropertyKey:@"MPModelPropertySongClassicalMovementCount" toPayloadKeyPath:@"attributes.movementCount"];
  [v1 mapPropertyKey:@"MPModelPropertySongClassicalMovementNumber" toPayloadKeyPath:@"attributes.movementNumber"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongHasCloudSyncSource"];
  [v1 mapPropertyKey:@"MPModelPropertySongYear" toPayloadKeyPaths:&unk_1F150A060 valueTransformer:&__block_literal_global_118];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongUserRating"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongCloudStatus"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongGaplessInfo"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongIsPinned"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongImmersiveDeeplinkURL"];
  [v1 mapUnsupportedPropertyKey:@"MPModelPropertySongDateReleased"];
  v5 = MEMORY[0x1E695E0F0];
  [v1 mapPropertyKey:@"MPModelPropertySongVolumeAdjustment" toPayloadKeyPaths:MEMORY[0x1E695E0F0] valueTransformer:&__block_literal_global_120];
  [v1 mapPropertyKey:@"MPModelPropertySongTraits" toPayloadKeyPaths:&unk_1F150A078 valueTransformer:&__block_literal_global_132];
  [v1 mapPropertyKey:@"MPModelPropertySongSupportsExtendedLyricsAttribute" toPayloadKeyPath:@"attributes.isVocalAttenuationAllowed"];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongAlbum" toModelClass:objc_opt_class() mediaKitType:@"albums" payloadTransform:&__block_literal_global_155];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongArtist" toModelClass:objc_opt_class() mediaKitType:@"artists" payloadTransform:&__block_literal_global_167];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongComposer" toModelClass:objc_opt_class() mediaKitType:@"_composers" attributePayloadTransform:&__block_literal_global_178_43073];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongGenre" toModelClass:objc_opt_class() mediaKitType:@"genres" attributePayloadTransform:&__block_literal_global_181_43074];
  [v1 mapUnsupportedRelationshipKey:@"MPModelRelationshipSongLocalFileAsset"];
  [v1 mapUnsupportedRelationshipKey:@"MPModelRelationshipSongHomeSharingAsset"];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongLyrics" toModelClass:objc_opt_class() mediaKitType:@"_lyrics" attributePayloadTransform:&__block_literal_global_188];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongStoreAsset" toModelClass:objc_opt_class() mediaKitType:@"_storeAsset" attributePayloadTransform:&__block_literal_global_198];
  [v1 mapRelationshipKey:@"MPModelRelationshipSongPreviewAsset" toModelClass:objc_opt_class() mediaKitType:@"_previewAsset" attributePayloadTransform:&__block_literal_global_208];
  [v1 mapUnsupportedRelationshipKey:@"MPModelRelationshipSongPlaybackPosition"];

  v6 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v6 mapIdentifierCreationKeyPaths:&unk_1F150A090 transformBlock:&__block_literal_global_227];
  [v6 mapPropertyKey:@"MPModelPropertyLyricsHasStoreLyrics" toPayloadKeyPath:@"attributes.hasLyrics"];
  [v6 mapPropertyKey:@"MPModelPropertyLyricsHasTimeSyncedLyrics" toPayloadKeyPath:@"attributes.hasTimeSyncedLyrics"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyLyricsHasLibraryLyrics"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyLyricsText"];
  [v6 mapUnsupportedPropertyKey:@"MPModelPropertyLyricsTTML"];

  v7 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v7 mapIdentifierCreationKeyPaths:&unk_1F150A0A8 transformBlock:&__block_literal_global_241];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumTitle" toPayloadKeyPath:@"attributes.name"];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumTrackCount" toPayloadKeyPath:@"attributes.trackCount"];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumMaximumItemTrackNumber" toPayloadKeyPath:@"attributes.trackCount"];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumDiscCount" toPayloadKeyPath:@"attributes.discCount"];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumHasCleanContent" toPayloadKeyPaths:&unk_1F150A0C0 valueTransformer:&__block_literal_global_254];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumHasExplicitContent" toPayloadKeyPaths:&unk_1F150A0D8 valueTransformer:&__block_literal_global_262];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumIsCompilation" toPayloadKeyPath:@"attributes.isCompilation"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsClassical"];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumReleaseDateComponents" toPayloadKeyPaths:&unk_1F150A0F0 valueTransformer:&__block_literal_global_270_43080];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumArtwork" toPayloadKeyPaths:&unk_1F150A108 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumStaticTallEditorialArtwork" toPayloadKeyPaths:&unk_1F150A120 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumSuperHeroTallEditorialArtwork" toPayloadKeyPaths:&unk_1F150A138 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumLibraryAddEligible" toPayloadKeyPaths:&unk_1F150A150 valueTransformerFunction:_MPKeyPathValueTransformHasNonnullValue];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumYear" toPayloadKeyPaths:&unk_1F150A168 valueTransformer:&__block_literal_global_293];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumLibraryAdded"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsPinned"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumDownloadedDate"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumKeepLocalEnableState"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumKeepLocalManagedStatus"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumKeepLocalManagedStatusReason"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumKeepLocalConstraints"];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumCopyrightText" toPayloadKeyPath:@"attributes.copyright"];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumPreorder" toPayloadKeyPath:@"attributes.isPrerelease"];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumEditorNotes" toPayloadKeyPaths:&unk_1F150A180 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumShortEditorNotes" toPayloadKeyPaths:&unk_1F150A198 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumVolumeNormalization" toPayloadKeyPaths:v5 valueTransformer:&__block_literal_global_310];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumSongPopularity" toPayloadKeyPaths:&unk_1F150A1B0 valueTransformer:&__block_literal_global_318];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumTraits" toPayloadKeyPaths:&unk_1F150A1C8 valueTransformer:&__block_literal_global_342];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumVersionHash" toPayloadKeyPath:@"attributes.versionHash"];
  [v7 mapPropertyKey:@"MPModelPropertyAlbumClassicalExperienceAvailable" toPayloadKeyPaths:&unk_1F150A1E0 valueTransformer:&__block_literal_global_350];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsFavorite"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsDisliked"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumDateFavorited"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumIsStoreRedownloadable"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumDownloadedTrackCount"];
  [v7 mapUnsupportedPropertyKey:@"MPModelPropertyAlbumCleanDownloadedTrackCount"];
  [v7 mapRelationshipKey:@"MPModelRelationshipAlbumArtist" toModelClass:objc_opt_class() mediaKitType:@"artists" payloadTransform:&__block_literal_global_352];
  [v7 mapRelationshipKey:@"MPModelRelationshipAlbumGenre" toModelClass:objc_opt_class() mediaKitType:@"genres" attributePayloadTransform:&__block_literal_global_354];
  [v7 mapUnsupportedRelationshipKey:@"MPModelRelationshipAlbumRepresentativeSong"];

  v8 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v8 mapIdentifierCreationKeyPaths:&unk_1F150A1F8 transformBlock:&__block_literal_global_359];
  [v8 mapPropertyKey:@"MPModelPropertyPersonName" toPayloadKeyPath:@"attributes.name"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyArtistHasBiography"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyPersonHasSocialPosts"];
  [v8 mapPropertyKey:@"MPModelPropertyArtistArtwork" toPayloadKeyPaths:&unk_1F150A210 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyArtistEditorialArtwork"];
  [v8 mapPropertyKey:@"MPModelPropertyArtistClassicalExperienceAvailable" toPayloadKeyPaths:&unk_1F150A228 valueTransformer:&__block_literal_global_369];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyArtistIsFavorite"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyArtistIsPinned"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyArtistIsDisliked"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyArtistDateFavorited"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyArtistLibraryAdded"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyArtistDownloadedSongCount"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyArtistCleanDownloadedSongCount"];
  [v8 mapUnsupportedPropertyKey:@"MPModelPropertyArtistCleanSongCount"];
  [v8 mapRelationshipKey:@"MPModelRelationshipArtistGenre" toModelClass:objc_opt_class() mediaKitType:@"genres" attributePayloadTransform:&__block_literal_global_371];

  v9 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v9 mapIdentifierCreationKeyPaths:&unk_1F150A240 transformBlock:&__block_literal_global_379];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistName" toPayloadKeyPath:@"attributes.name"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistTrackCount"];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistEditorNotes" toPayloadKeyPaths:&unk_1F150A258 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistShortEditorNotes" toPayloadKeyPaths:&unk_1F150A270 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistReleaseDateComponents" toPayloadKeyPaths:&unk_1F150A288 valueTransformer:&__block_literal_global_392];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistLastModifiedDateComponents" toPayloadKeyPaths:&unk_1F150A2A0 valueTransformer:&__block_literal_global_400];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistArtwork" toPayloadKeyPaths:&unk_1F150A2B8 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistStaticTallEditorialArtwork" toPayloadKeyPaths:&unk_1F150A2D0 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistSuperHeroTallEditorialArtwork" toPayloadKeyPaths:&unk_1F150A2E8 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistEditorialArtwork"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistTracksTiledArtwork"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistHasCleanContent"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistHasExplicitContent"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsPinned"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistHasAnyCleanTracks"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistHasAnyCleanDownloadedTracks"];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistType" toPayloadKeyPaths:&unk_1F150A300 valueTransformer:&__block_literal_global_420];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistLibraryAdded"];
  [v9 mapUnsupportedPropertyKey:MPModelPropertyPlaylistDownloadedDate];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistKeepLocalEnableState"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistKeepLocalManagedStatus"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistKeepLocalManagedStatusReason"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistKeepLocalConstraints"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsOwner"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCuratorPlaylist"];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistPublicPlaylist" toPayloadKeyPaths:v5 valueTransformerFunction:_MPKeyPathValueTransformConstantYES];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistVisiblePlaylist"];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistSubscribed" toPayloadKeyPaths:v5 valueTransformerFunction:_MPKeyPathValueTransformConstantYES];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistUserEditableComponents"];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistShareURL" toPayloadKeyPaths:&unk_1F150A318 valueTransformer:&__block_literal_global_440];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistShareShortURL"];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistDescriptionText" toPayloadKeyPaths:&unk_1F150A330 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistVersionHash" toPayloadKeyPath:@"attributes.versionHash"];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistCloudVersionHash" toPayloadKeyPath:@"attributes.playParams.versionHash"];
  [v9 mapPropertyKey:@"MPModelPropertyPlaylistTraits" toPayloadKeyPaths:&unk_1F150A348 valueTransformer:&__block_literal_global_458];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsFavorite"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsDisliked"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistDateFavorited"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsFavoriteSongsPlaylist"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistParentPersistentID"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistEditSessionID"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsStoreRedownloadable"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistDownloadedTrackCount"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCoverArtworkRecipe"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistIsCollaborative"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationSharingMode"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationMode"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaboratorPermissions"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationInvitationURL"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationInvitationURLExpirationDate"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaborationJoinRequestIsPending"];
  [v9 mapUnsupportedPropertyKey:@"MPModelPropertyPlaylistCollaboratorStatus"];
  [v9 mapRelationshipKey:@"MPModelRelationshipPlaylistCurator" toModelClass:objc_opt_class() mediaKitType:@"curators" attributePayloadTransform:&__block_literal_global_460];

  v10 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v10 mapIdentifierCreationKeyPaths:&unk_1F150A360 transformBlock:&__block_literal_global_476];
  [v10 mapPropertyKey:@"MPModelPropertyRadioStationName" toPayloadKeyPath:@"attributes.name"];
  [v10 mapPropertyKey:@"MPModelPropertyRadioStationLive" toPayloadKeyPath:@"attributes.isLive"];
  [v10 mapPropertyKey:@"MPModelPropertyRadioStationProviderName" toPayloadKeyPath:@"attributes.stationProviderName"];
  [v10 mapUnsupportedPropertyKey:@"MPModelPropertyRadioStationBeats1"];
  [v10 mapPropertyKey:@"MPModelPropertyRadioStationEditorNotes" toPayloadKeyPaths:&unk_1F150A378 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v10 mapPropertyKey:@"MPModelPropertyRadioStationShortEditorNotes" toPayloadKeyPaths:&unk_1F150A390 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v10 mapPropertyKey:@"MPModelPropertyRadioStationHasExplicitContent" toPayloadKeyPaths:&unk_1F150A3A8 valueTransformer:&__block_literal_global_496];
  [v10 mapPropertyKey:@"MPModelPropertyRadioStationArtwork" toPayloadKeyPaths:&unk_1F150A3C0 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v10 mapPropertyKey:@"MPModelPropertyRadioStationGlyph" toPayloadKeyPaths:&unk_1F150A3D8 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v10 mapPropertyKey:@"MPModelPropertyRadioStationEditorialArtwork" toPayloadKeyPaths:&unk_1F150A3F0 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v10 mapPropertyKey:@"MPModelPropertyRadioStationSubtype" toPayloadKeyPaths:&unk_1F150A408 valueTransformer:&__block_literal_global_519];
  [v10 mapPropertyKey:@"MPModelPropertyRadioStationStartingAirDate" toPayloadKeyPaths:&unk_1F150A420 valueTransformer:&__block_literal_global_533];
  [v10 mapPropertyKey:@"MPModelPropertyRadioStationEndingAirDate" toPayloadKeyPaths:&unk_1F150A438 valueTransformer:&__block_literal_global_541];
  [v10 mapPropertyKey:@"MPModelPropertyRadioStationSubscriptionRequired" toPayloadKeyPath:@"attributes.requiresSubscription"];
  [v10 mapUnsupportedPropertyKey:@"MPModelPropertyRadioStationAllowsItemLiking"];
  [v10 mapUnsupportedPropertyKey:@"MPModelPropertyRadioStationType"];
  [v10 mapUnsupportedPropertyKey:@"MPModelPropertyRadioStationAttributionLabel"];
  [v10 mapUnsupportedPropertyKey:@"MPModelPropertyRadioStationProviderUniversalLink"];
  [v10 mapUnsupportedPropertyKey:@"MPModelPropertyRadioStationProviderBundleIdentifier"];
  [v10 mapUnsupportedPropertyKey:@"MPModelPropertyRadioStationProviderID"];
  [v10 mapUnsupportedPropertyKey:@"MPModelPropertyRadioStationContainsVideo"];

  v11 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v11 mapIdentifierCreationKeyPaths:&unk_1F150A450 transformBlock:&__block_literal_global_549];
  [v11 mapPropertyKey:@"MPModelPropertyRadioStationEventTitle" toPayloadKeyPath:@"attributes.title"];
  [v11 mapPropertyKey:@"MPModelPropertyRadioStationEventDescriptionText" toPayloadKeyPaths:&unk_1F150A468 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v11 mapPropertyKey:@"MPModelPropertyRadioStationEventStartTime" toPayloadKeyPaths:&unk_1F150A480 valueTransformer:&__block_literal_global_565];
  [v11 mapPropertyKey:@"MPModelPropertyRadioStationEventEndTime" toPayloadKeyPaths:&unk_1F150A498 valueTransformer:&__block_literal_global_573];
  [v11 mapPropertyKey:@"MPModelPropertyRadioStationEventArtwork" toPayloadKeyPaths:&unk_1F150A4B0 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v11 mapPropertyKey:@"MPModelPropertyRadioStationEventHeroArtwork" toPayloadKeyPaths:&unk_1F150A4C8 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];

  v12 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v12 mapIdentifierCreationKeyPaths:&unk_1F150A4E0 transformBlock:&__block_literal_global_587];
  [v12 mapPropertyKey:@"MPModelPropertyPersonName" toPayloadKeyPath:@"attributes.name"];

  v13 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v13 mapIdentifierCreationKeyPaths:&unk_1F150A4F8 transformBlock:&__block_literal_global_594];
  [v13 mapPropertyKey:@"MPModelPropertyPersonName" toPayloadKeyPaths:&unk_1F150A510 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v13 mapPropertyKey:@"MPModelPropertyCuratorHandle" toPayloadKeyPath:@"attributes.handle"];
  [v13 mapUnsupportedPropertyKey:@"MPModelPropertyPersonHasSocialPosts"];
  [v13 mapUnsupportedPropertyKey:@"MPModelPropertyCuratorShortName"];
  [v13 mapPropertyKey:@"MPModelPropertyCuratorEditorNotes" toPayloadKeyPaths:&unk_1F150A528 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v13 mapPropertyKey:@"MPModelPropertyCuratorShortEditorNotes" toPayloadKeyPaths:&unk_1F150A540 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  v30 = @"attributes.kind";
  v31 = @"_MPMKT_transformedType";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:2];
  [v13 mapPropertyKey:@"MPModelPropertyCuratorSubKind" toPayloadKeyPaths:v14 valueTransformer:&__block_literal_global_616];

  v39 = @"type";
  v40 = @"_MPMKT_transformedType";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:2];
  [v13 mapPropertyKey:@"MPModelPropertyCuratorKind" toPayloadKeyPaths:v15 valueTransformer:&__block_literal_global_627];

  [v13 mapPropertyKey:@"MPModelPropertyCuratorEditorialArtwork" toPayloadKeyPaths:&unk_1F150A558 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v13 mapPropertyKey:@"MPModelPropertyCuratorBrandLogoArtwork" toPayloadKeyPaths:&unk_1F150A570 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];

  v16 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v16 mapIdentifierCreationKeyPaths:&unk_1F150A588 transformBlock:&__block_literal_global_644];
  [v16 mapPropertyKey:@"MPModelPropertyGenreName" toPayloadKeyPath:@"attributes.name"];

  v17 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v17 mapIdentifierCreationKeyPaths:&unk_1F150A5A0 transformBlock:&__block_literal_global_651];
  [v17 mapPropertyKey:@"MPModelPropertyTVShowTitle" toPayloadKeyPath:@"attributes.name"];
  [v17 mapPropertyKey:@"MPModelPropertyTVShowEpisodeCount" toPayloadKeyPath:@"attributes.episodeCount"];
  [v17 mapPropertyKey:@"MPModelPropertyTVShowEditorNotes" toPayloadKeyPath:@"attributes.editorialNotes.standard"];
  [v17 mapPropertyKey:@"MPModelPropertyTVShowTagline" toPayloadKeyPath:@"attributes.editorialNotes.tagline"];
  [v17 mapPropertyKey:@"MPModelPropertyTVShowArtwork" toPayloadKeyPaths:&unk_1F150A5B8 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v17 mapUnsupportedPropertyKey:@"MPModelPropertyTVShowShortTitle"];
  [v17 mapUnsupportedPropertyKey:@"MPModelPropertyTVShowShortEditorNotes"];
  [v17 mapUnsupportedPropertyKey:@"MPModelPropertyTVShowEditorialArtwork"];
  [v17 mapUnsupportedPropertyKey:@"MPModelPropertyTVShowStoreCanonicalID"];
  [v17 mapUnsupportedRelationshipKey:@"MPModelRelationshipTVShowCreator"];

  v18 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  v30 = @"id";
  v31 = @"meta.formerIds";
  v32 = @"type";
  v33 = @"_MPMKT_transformedType";
  v34 = @"attributes.playParams";
  v35 = @"attributes.offers.kind";
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:6];
  [v18 mapIdentifierCreationKeyPaths:v19 transformBlock:&__block_literal_global_664];

  [v18 mapPropertyKey:@"MPModelPropertyTVEpisodeTitle" toPayloadKeyPath:@"attributes.name"];
  [v18 mapPropertyKey:@"MPModelPropertyTVEpisodeDescriptionText" toPayloadKeyPaths:&unk_1F150A5D0 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v18 mapPropertyKey:@"MPModelPropertyTVEpisodeDuration" toPayloadKeyPaths:&unk_1F150A5E8 valueTransformer:&__block_literal_global_680];
  [v18 mapPropertyKey:@"MPModelPropertyTVEpisodeNumber" toPayloadKeyPath:@"attributes.episodeNumber"];
  [v18 mapPropertyKey:@"MPModelPropertyTVEpisodeExplicitRating" toPayloadKeyPaths:&unk_1F150A618 valueTransformer:&__block_literal_global_703_43094];
  [v18 mapPropertyKey:@"MPModelPropertyTVEpisodeReleaseDate" toPayloadKeyPaths:&unk_1F150A630 valueTransformer:&__block_literal_global_711_43095];
  [v18 mapPropertyKey:@"MPModelPropertyTVEpisodeArtwork" toPayloadKeyPaths:&unk_1F150A648 valueTransformer:&__block_literal_global_719];
  [v18 mapPropertyKey:@"MPModelPropertyTVEpisodeLibraryAddEligible" toPayloadKeyPaths:&unk_1F150A678 valueTransformer:&__block_literal_global_733];
  [v18 mapPropertyKey:@"MPModelPropertyTVEpisodeMusicShow" toPayloadKeyPaths:MEMORY[0x1E695E0F0] valueTransformerFunction:_MPKeyPathValueTransformConstantYES];
  [v18 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeType"];
  [v18 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeTypeDisplayName"];
  [v18 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeHasCloudSyncSource"];
  [v18 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeLibraryAdded"];
  [v18 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeLibraryAddedDate"];
  [v18 mapUnsupportedPropertyKey:MPModelPropertyTVEpisodeDownloadedDate];
  [v18 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeLastDevicePlaybackDate"];
  [v18 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalEnableState"];
  [v18 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalManagedStatus"];
  [v18 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalManagedStatusReason"];
  [v18 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeKeepLocalConstraints"];
  [v18 mapUnsupportedPropertyKey:@"MPModelPropertyTVEpisodeStoreCanonicalID"];
  [v18 mapUnsupportedRelationshipKey:@"MPModelRelationshipTVEpisodeLocalFileAsset"];
  [v18 mapUnsupportedRelationshipKey:@"MPModelRelationshipTVEpisodePlaybackPosition"];
  [v18 mapUnsupportedRelationshipKey:@"MPModelRelationshipTVEpisodeSeason"];
  [v18 mapRelationshipKey:@"MPModelRelationshipTVEpisodeShow" toModelClass:objc_opt_class() mediaKitType:@"tv-shows" attributePayloadTransform:&__block_literal_global_738];
  [v18 mapRelationshipKey:@"MPModelRelationshipTVEpisodeStoreAsset" toModelClass:objc_opt_class() mediaKitType:@"_storeAsset" attributePayloadTransform:&__block_literal_global_743];

  v20 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  v30 = @"id";
  v31 = @"meta.formerIds";
  v32 = @"type";
  v33 = @"_MPMKT_transformedType";
  v34 = @"attributes.playParams";
  v35 = @"attributes.offers.kind";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:6];
  [v20 mapIdentifierCreationKeyPaths:v21 transformBlock:&__block_literal_global_745];

  [v20 mapPropertyKey:@"MPModelPropertyMovieTitle" toPayloadKeyPath:@"attributes.name"];
  [v20 mapPropertyKey:@"MPModelPropertyMovieDescriptionText" toPayloadKeyPaths:&unk_1F150A6A8 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v20 mapPropertyKey:@"MPModelPropertyMovieDuration" toPayloadKeyPaths:&unk_1F150A6C0 valueTransformer:&__block_literal_global_755];
  [v20 mapPropertyKey:@"MPModelPropertyMovieExplicitRating" toPayloadKeyPaths:&unk_1F150A6F0 valueTransformer:&__block_literal_global_763];
  [v20 mapPropertyKey:@"MPModelPropertyMovieTagline" toPayloadKeyPath:@"attributes.editorialNotes.tagline"];
  [v20 mapPropertyKey:@"MPModelPropertyMovieReleaseDate" toPayloadKeyPaths:&unk_1F150A708 valueTransformer:&__block_literal_global_768];
  [v20 mapPropertyKey:@"MPModelPropertyMovieArtwork" toPayloadKeyPaths:&unk_1F150A720 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v20 mapPropertyKey:@"MPModelPropertyMovieLibraryAddEligible" toPayloadKeyPaths:&unk_1F150A738 valueTransformer:&__block_literal_global_776];
  [v20 mapUnsupportedPropertyKey:@"MPModelPropertyMovieInfoDictionary"];
  [v20 mapUnsupportedPropertyKey:@"MPModelPropertyMovieHasCloudSyncSource"];
  [v20 mapUnsupportedPropertyKey:@"MPModelPropertyMovieLibraryAdded"];
  [v20 mapUnsupportedPropertyKey:@"MPModelPropertyMovieLibraryAddedDate"];
  [v20 mapUnsupportedPropertyKey:MPModelPropertyMovieDownloadedDate];
  [v20 mapUnsupportedPropertyKey:@"MPModelPropertyMovieLastDevicePlaybackDate"];
  [v20 mapUnsupportedPropertyKey:@"MPModelPropertyMovieKeepLocalEnableState"];
  [v20 mapUnsupportedPropertyKey:@"MPModelPropertyMovieKeepLocalManagedStatus"];
  [v20 mapUnsupportedPropertyKey:@"MPModelPropertyMovieKeepLocalManagedStatusReason"];
  [v20 mapUnsupportedPropertyKey:@"MPModelPropertyMovieKeepLocalConstraints"];
  [v20 mapUnsupportedPropertyKey:@"MPModelPropertyMovieEditorialArtwork"];
  [v20 mapUnsupportedPropertyKey:@"MPModelPropertyMovieStoreCanonicalID"];
  [v20 mapUnsupportedRelationshipKey:@"MPModelRelationshipMovieClips"];
  [v20 mapUnsupportedRelationshipKey:@"MPModelRelationshipMovieLocalFileAsset"];
  [v20 mapUnsupportedRelationshipKey:@"MPModelRelationshipMoviePlaybackPosition"];
  [v20 mapRelationshipKey:@"MPModelRelationshipMovieStoreAsset" toModelClass:objc_opt_class() mediaKitType:@"_storeAsset" attributePayloadTransform:&__block_literal_global_781];

  v22 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v22 mapIdentifierCreationKeyPaths:&unk_1F150A768 transformBlock:&__block_literal_global_786];
  [v22 mapPropertyKey:@"MPModelPropertyPersonName" toPayloadKeyPath:@"attributes.name"];
  [v22 mapPropertyKey:@"MPModelPropertySocialPersonHandle" toPayloadKeyPath:@"attributes.handle"];
  [v22 mapPropertyKey:@"MPModelPropertySocialPersonIsPrivate" toPayloadKeyPath:@"attributes.isPrivate"];
  [v22 mapPropertyKey:@"MPModelPropertySocialPersonIsVerified" toPayloadKeyPath:@"attributes.isVerified"];
  [v22 mapPropertyKey:@"MPModelPropertySocialPersonPendingRequestsCount" toPayloadKeyPath:@"attributes.pendingFollowersCount"];
  [v22 mapPropertyKey:@"MPModelPropertySocialPersonArtwork" toPayloadKeyPaths:&unk_1F150A780 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v22 mapUnsupportedPropertyKey:@"MPModelPropertySocialPersonUncensoredName"];
  [v22 mapUnsupportedPropertyKey:@"MPModelPropertySocialPersonBiography"];
  [v22 mapUnsupportedPropertyKey:@"MPModelPropertySocialPersonHasLightweightProfile"];

  v23 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v23 mapIdentifierCreationKeyPaths:&unk_1F150A798 transformBlock:&__block_literal_global_805];
  [v23 mapPropertyKey:@"MPModelPropertyRecordLabelName" toPayloadKeyPath:@"attributes.name"];
  [v23 mapPropertyKey:@"MPModelPropertyRecordLabelDescriptionText" toPayloadKeyPaths:&unk_1F150A7B0 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v23 mapPropertyKey:@"MPModelPropertyRecordLabelShortDescriptionText" toPayloadKeyPaths:&unk_1F150A7C8 valueTransformerFunction:_MPKeyPathValueTransformFirstNonnullKeyPath];
  [v23 mapPropertyKey:@"MPModelPropertyRecordLabelArtwork" toPayloadKeyPaths:&unk_1F150A7E0 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v23 mapPropertyKey:@"MPModelPropertyRecordLabelEditorialArtwork" toPayloadKeyPaths:&unk_1F150A7F8 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];

  v24 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v24 mapIdentifierCreationKeyPaths:&unk_1F150A810 transformBlock:&__block_literal_global_827];
  [v24 mapPropertyKey:@"MPModelPropertyPersonName" toPayloadKeyPath:@"attributes.name"];
  [v24 mapPropertyKey:@"MPModelPropertyCreditsArtistArtwork" toPayloadKeyPaths:&unk_1F150A828 valueTransformerFunction:MPMediaKitEntityTranslatorTransformArtwork];
  [v24 mapRelationshipKey:@"MPModelRelationshipCreditsArtistRelatedArtist" toModelClass:objc_opt_class() mediaKitType:@"artists" payloadTransform:&__block_literal_global_834];

  v25 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v25 mapIdentifierCreationKeyPaths:&unk_1F150A840 transformBlock:&__block_literal_global_839];
  v30 = @"_MPMKT_transformedType";
  v31 = @"attributes.playParams";
  v32 = @"attributes.offers.kind";
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:3];
  [v25 mapPropertyKey:@"MPModelPropertyStoreAssetEndpointType" toPayloadKeyPaths:v26 valueTransformer:&__block_literal_global_843];

  [v25 mapUnsupportedPropertyKey:@"MPModelPropertyStoreAssetRedownloadParameters"];
  v39 = @"_MPMKT_transformedType";
  v40 = @"attributes.playParams";
  v41 = @"attributes.offers.kind";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:3];
  [v25 mapPropertyKey:@"MPModelPropertyStoreAssetRedownloadable" toPayloadKeyPaths:v27 valueTransformer:&__block_literal_global_845];

  [v25 mapUnsupportedPropertyKey:@"MPModelPropertyStoreAssetAccountIdentifier"];
  [v25 mapPropertyKey:@"MPModelPropertyStoreAssetShouldReportPlayEvents" toPayloadKeyPaths:&unk_1F150A858 valueTransformer:&__block_literal_global_853];
  [v25 mapUnsupportedPropertyKey:MPModelPropertyStoreAssetNeedsUserUpload];
  v36 = @"_MPMKT_transformedType";
  v37 = @"attributes.playParams";
  v38 = @"attributes.videoKind";
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:3];
  [v25 mapPropertyKey:@"MPModelPropertyStoreAssetSubscriptionRequired" toPayloadKeyPaths:v28 valueTransformer:&__block_literal_global_858];

  v29 = [MPMediaKitEntityTranslator createTranslatorForMPModelClass:objc_opt_class()];
  [v29 mapIdentifierCreationKeyPaths:&unk_1F150A870 transformBlock:&__block_literal_global_866];
  [v29 mapPropertyKey:@"MPModelPropertyPreviewAssetURL" toPayloadKeyPaths:&unk_1F150A888 valueTransformer:&__block_literal_global_876];
}

@end