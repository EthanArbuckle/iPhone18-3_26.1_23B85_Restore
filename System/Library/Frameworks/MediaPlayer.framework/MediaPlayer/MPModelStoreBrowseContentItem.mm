@interface MPModelStoreBrowseContentItem
+ (id)requiredStoreLibraryPersonalizationProperties;
+ (void)__MPModelStoreBrowseContentItemPropertyArtistUploadedContentType__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemPropertyDetailedItemType__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemPropertyItemType__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipAlbum__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipArtist__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipCreditsArtist__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipCurator__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipMediaClip__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipMovie__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipPlaylist__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipRadioStation__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipRecordLabel__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipSocialPerson__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipSong__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipTVEpisode__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipTVSeason__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipTVShowCreator__MAPPING_MISSING__;
+ (void)__MPModelStoreBrowseContentItemRelationshipTVShow__MAPPING_MISSING__;
- (id)innerObject;
- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)a3;
- (id)personalizationScopedPropertiesForProperties:(id)a3;
- (id)relativeModelObjectForStoreLibraryPersonalization;
@end

@implementation MPModelStoreBrowseContentItem

+ (id)requiredStoreLibraryPersonalizationProperties
{
  v64[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = +[MPPropertySet emptyPropertySet];
  v4 = +[MPModelAlbum requiredStoreLibraryPersonalizationProperties];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v63 = v6;

  [v2 setObject:v63 forKey:@"MPModelStoreBrowseContentItemRelationshipAlbum"];
  v7 = +[MPModelArtist requiredStoreLibraryPersonalizationProperties];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  v62 = v9;

  [v2 setObject:v62 forKey:@"MPModelStoreBrowseContentItemRelationshipArtist"];
  v10 = +[MPModelCurator];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v3;
  }

  v61 = v12;

  [v2 setObject:v61 forKey:@"MPModelStoreBrowseContentItemRelationshipCurator"];
  v13 = +[MPModelMovie requiredStoreLibraryPersonalizationProperties];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v3;
  }

  v60 = v15;

  [v2 setObject:v60 forKey:@"MPModelStoreBrowseContentItemRelationshipMovie"];
  v16 = +[MPModelPlaylist requiredStoreLibraryPersonalizationProperties];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v3;
  }

  v59 = v18;

  [v2 setObject:v59 forKey:@"MPModelStoreBrowseContentItemRelationshipPlaylist"];
  v19 = +[MPModelRadioStation];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v3;
  }

  v58 = v21;

  [v2 setObject:v58 forKey:@"MPModelStoreBrowseContentItemRelationshipRadioStation"];
  v22 = +[MPModelSong requiredStoreLibraryPersonalizationProperties];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v3;
  }

  v57 = v24;

  [v2 setObject:v57 forKey:@"MPModelStoreBrowseContentItemRelationshipSong"];
  v25 = +[MPModelSocialPerson];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = v3;
  }

  v28 = v27;

  [v2 setObject:v28 forKey:@"MPModelStoreBrowseContentItemRelationshipSocialPerson"];
  v29 = +[MPModelTVEpisode requiredStoreLibraryPersonalizationProperties];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = v3;
  }

  v32 = v31;

  [v2 setObject:v32 forKey:@"MPModelStoreBrowseContentItemRelationshipTVEpisode"];
  v33 = +[MPModelTVSeason requiredStoreLibraryPersonalizationProperties];
  v34 = v33;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = v3;
  }

  v36 = v35;

  [v2 setObject:v36 forKey:@"MPModelStoreBrowseContentItemRelationshipTVSeason"];
  v37 = +[MPModelTVShow];
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v3;
  }

  v40 = v39;

  [v2 setObject:v40 forKey:@"MPModelStoreBrowseContentItemRelationshipTVShow"];
  v41 = +[MPModelTVShowCreator];
  v42 = v41;
  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = v3;
  }

  v44 = v43;

  [v2 setObject:v44 forKey:@"MPModelStoreBrowseContentItemRelationshipTVShowCreator"];
  v45 = +[MPModelRecordLabel];
  v46 = v45;
  if (v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = v3;
  }

  v48 = v47;

  [v2 setObject:v48 forKey:@"MPModelStoreBrowseContentItemRelationshipRecordLabel"];
  v49 = +[MPModelCreditsArtist];
  v50 = v49;
  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = v3;
  }

  v52 = v51;

  [v2 setObject:v52 forKey:@"MPModelStoreBrowseContentItemRelationshipCreditsArtist"];
  v53 = [MPPropertySet alloc];
  v64[0] = @"MPModelStoreBrowseContentItemPropertyItemType";
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
  v55 = [(MPPropertySet *)v53 initWithProperties:v54 relationships:v2];

  return v55;
}

+ (void)__MPModelStoreBrowseContentItemRelationshipCreditsArtist__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:52 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipCreditsArtist"];
}

+ (void)__MPModelStoreBrowseContentItemRelationshipRecordLabel__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:51 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipRecordLabel"];
}

+ (void)__MPModelStoreBrowseContentItemRelationshipTVShowCreator__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:50 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipTVShowCreator"];
}

+ (void)__MPModelStoreBrowseContentItemRelationshipTVShow__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:49 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipTVShow"];
}

+ (void)__MPModelStoreBrowseContentItemRelationshipTVSeason__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:48 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipTVSeason"];
}

+ (void)__MPModelStoreBrowseContentItemRelationshipTVEpisode__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:47 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipTVEpisode"];
}

+ (void)__MPModelStoreBrowseContentItemRelationshipSong__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:46 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipSong"];
}

+ (void)__MPModelStoreBrowseContentItemRelationshipSocialPerson__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:45 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipSocialPerson"];
}

+ (void)__MPModelStoreBrowseContentItemRelationshipRadioStation__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:44 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipRadioStation"];
}

+ (void)__MPModelStoreBrowseContentItemRelationshipPlaylist__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:43 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipPlaylist"];
}

+ (void)__MPModelStoreBrowseContentItemRelationshipMovie__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:42 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipMovie"];
}

+ (void)__MPModelStoreBrowseContentItemRelationshipMediaClip__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:41 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipMediaClip"];
}

+ (void)__MPModelStoreBrowseContentItemRelationshipCurator__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:40 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipCurator"];
}

+ (void)__MPModelStoreBrowseContentItemRelationshipArtist__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:39 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipArtist"];
}

+ (void)__MPModelStoreBrowseContentItemRelationshipAlbum__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:38 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemRelationshipAlbum"];
}

+ (void)__MPModelStoreBrowseContentItemPropertyArtistUploadedContentType__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:37 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemPropertyArtistUploadedContentType"];
}

+ (void)__MPModelStoreBrowseContentItemPropertyDetailedItemType__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:36 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemPropertyDetailedItemType"];
}

+ (void)__MPModelStoreBrowseContentItemPropertyItemType__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelStoreBrowseContentItem.m" lineNumber:35 description:@"Translator was missing mapping for MPModelStoreBrowseContentItemPropertyItemType"];
}

- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)a3
{
  v4 = a3;
  v5 = [(MPModelObject *)self identifiers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__MPModelStoreBrowseContentItem_objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke;
  v9[3] = &unk_1E767C828;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [(MPModelObject *)self copyWithIdentifiers:v5 block:v9];

  return v7;
}

void __90__MPModelStoreBrowseContentItem_objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  switch([*(a1 + 32) itemType])
  {
    case 1:
      [v3 setAlbum:*(a1 + 40)];
      break;
    case 2:
      [v3 setArtist:*(a1 + 40)];
      break;
    case 3:
      [v3 setCurator:*(a1 + 40)];
      break;
    case 4:
      [v3 setPlaylist:*(a1 + 40)];
      break;
    case 5:
      [v3 setRadioStation:*(a1 + 40)];
      break;
    case 6:
      [v3 setSocialPerson:*(a1 + 40)];
      break;
    case 7:
      [v3 setSong:*(a1 + 40)];
      break;
    case 8:
      [v3 setEpisode:*(a1 + 40)];
      break;
    case 9:
      [v3 setShow:*(a1 + 40)];
      break;
    case 10:
      [v3 setSeason:*(a1 + 40)];
      break;
    case 11:
      [v3 setShowCreator:*(a1 + 40)];
      break;
    case 12:
      [v3 setMovie:*(a1 + 40)];
      break;
    case 14:
      [v3 setRecordLabel:*(a1 + 40)];
      break;
    case 15:
      [v3 setCreditsArtist:*(a1 + 40)];
      break;
    default:
      break;
  }
}

- (id)relativeModelObjectForStoreLibraryPersonalization
{
  v2 = [(MPModelStoreBrowseContentItem *)self innerObject];
  v3 = [v2 relativeModelObjectForStoreLibraryPersonalization];

  return v3;
}

- (id)personalizationScopedPropertiesForProperties:(id)a3
{
  v4 = [a3 relationships];
  v5 = [(MPModelStoreBrowseContentItem *)self itemType]- 1;
  if (v5 > 0xE || ((0x6FFFu >> v5) & 1) == 0 || ([v4 objectForKey:off_1E767C848[v5]], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = +[MPPropertySet emptyPropertySet];
  }

  return v6;
}

- (id)innerObject
{
  switch([(MPModelStoreBrowseContentItem *)self itemType])
  {
    case 1:
      v3 = [(MPModelStoreBrowseContentItem *)self album];
      break;
    case 2:
      v3 = [(MPModelStoreBrowseContentItem *)self artist];
      break;
    case 3:
      v3 = [(MPModelStoreBrowseContentItem *)self curator];
      break;
    case 4:
      v3 = [(MPModelStoreBrowseContentItem *)self playlist];
      break;
    case 5:
      v3 = [(MPModelStoreBrowseContentItem *)self radioStation];
      break;
    case 6:
      v3 = [(MPModelStoreBrowseContentItem *)self socialPerson];
      break;
    case 7:
      v3 = [(MPModelStoreBrowseContentItem *)self song];
      break;
    case 8:
      v3 = [(MPModelStoreBrowseContentItem *)self episode];
      break;
    case 9:
      v3 = [(MPModelStoreBrowseContentItem *)self show];
      break;
    case 10:
      v3 = [(MPModelStoreBrowseContentItem *)self season];
      break;
    case 11:
      v3 = [(MPModelStoreBrowseContentItem *)self showCreator];
      break;
    case 12:
      v3 = [(MPModelStoreBrowseContentItem *)self movie];
      break;
    case 13:
      v3 = [(MPModelStoreBrowseContentItem *)self mediaClip];
      break;
    case 14:
      v3 = [(MPModelStoreBrowseContentItem *)self recordLabel];
      break;
    case 15:
      v3 = [(MPModelStoreBrowseContentItem *)self creditsArtist];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

@end