@interface MPModelForYouRecommendationItemBuilder
+ (id)allSupportedProperties;
- (MPModelForYouRecommendationItemBuilder)initWithRequestedPropertySet:(id)set storeItemMetadataResults:(id)results flatSectionedItems:(id)items;
- (id)modelObjectForRecommendationChildDictionary:(id)dictionary parentGroup:(id)group subgroupsAccumulator:(id)accumulator userIdentity:(id)identity;
@end

@implementation MPModelForYouRecommendationItemBuilder

- (id)modelObjectForRecommendationChildDictionary:(id)dictionary parentGroup:(id)group subgroupsAccumulator:(id)accumulator userIdentity:(id)identity
{
  v94[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  groupCopy = group;
  accumulatorCopy = accumulator;
  identityCopy = identity;
  [(MPModelForYouRecommendationItemBuilder *)self storeItemMetadataResults];
  v77 = v76 = identityCopy;
  v75 = dictionaryCopy;
  if ((*&self->_requestedItemProperties & 1) == 0)
  {
    requestedPropertySet = [(MPModelForYouRecommendationItemBuilder *)self requestedPropertySet];
    properties = [requestedPropertySet properties];
    if ([properties containsObject:@"MPModelForYouRecommendationItemPropertyItemType"])
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    *&self->_requestedItemProperties = *&self->_requestedItemProperties & 0xFD | v15;
    if ([properties containsObject:@"MPModelForYouRecommendationItemPropertyBackedByStoreItemMetadata"])
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    *&self->_requestedItemProperties = *&self->_requestedItemProperties & 0xFB | v16;
    relationships = [requestedPropertySet relationships];
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = [relationships objectForKey:@"MPModelForYouRecommendationItemRelationshipAlbum"];
    if (v19)
    {
      *&self->_requestedItemProperties |= 8u;
      [v18 setObject:v19 forKey:@"MPModelStoreBrowseContentItemRelationshipAlbum"];
    }

    v68 = accumulatorCopy;
    v20 = [relationships objectForKey:@"MPModelForYouRecommendationItemRelationshipPlaylist"];
    requestedItemProperties = self->_requestedItemProperties;
    *&self->_requestedItemProperties = requestedItemProperties & 0xEF | (16 * (v20 != 0));
    if (v20)
    {
      *&self->_requestedItemProperties = requestedItemProperties | 0x10;
      [v18 setObject:v20 forKey:@"MPModelStoreBrowseContentItemRelationshipPlaylist"];
    }

    v22 = [relationships objectForKey:@"MPModelForYouRecommendationItemRelationshipRadioStation"];
    v23 = self->_requestedItemProperties;
    *&self->_requestedItemProperties = v23 & 0xDF | (32 * (v22 != 0));
    if (v22)
    {
      *&self->_requestedItemProperties = v23 | 0x20;
      [v18 setObject:v22 forKey:@"MPModelStoreBrowseContentItemRelationshipRadioStation"];
    }

    v24 = [MPPropertySet alloc];
    v94[0] = @"MPModelStoreBrowseContentItemPropertyItemType";
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:1];
    v26 = [(MPPropertySet *)v24 initWithProperties:v25 relationships:v18];

    v27 = [[MPModelStoreBrowseContentItemBuilder alloc] initWithRequestedPropertySet:v26];
    contentItemBuilder = self->_contentItemBuilder;
    self->_contentItemBuilder = v27;

    v29 = [relationships objectForKey:@"MPModelForYouRecommendationItemRelationshipSubgroup"];
    *&self->_requestedItemProperties = *&self->_requestedItemProperties & 0xBF | ((v29 != 0) << 6);
    v30 = [[MPModelForYouRecommendationGroupBuilder alloc] initWithRequestedGroupPropertySet:v29 requestedItemPropertySet:requestedPropertySet storeItemMetadataResults:v77 flatSectionedItems:self->_flatSectionedItems];
    subgroupBuilder = self->_subgroupBuilder;
    self->_subgroupBuilder = v30;

    *&self->_requestedItemProperties |= 1u;
    dictionaryCopy = v75;
    identityCopy = v76;
    accumulatorCopy = v68;
  }

  v74 = [dictionaryCopy objectForKey:@"contentId"];
  if (_NSIsNSString())
  {
    v32 = v74;
  }

  else
  {
    v32 = 0;
  }

  v33 = [dictionaryCopy objectForKey:@"contentType"];
  if (_NSIsNSString())
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if ([v32 length] && objc_msgSend(v34, "length"))
  {
    v69 = accumulatorCopy;
    v35 = v33;
    v36 = [v77 objectForKey:v32];
    if (v36)
    {
      v37 = [(MPStoreModelObjectBuilder *)self->_contentItemBuilder modelObjectWithStoreItemMetadata:v36 userIdentity:identityCopy];
      itemType = [v37 itemType];
      switch(itemType)
      {
        case 5:
          radioStation = [v37 radioStation];
          v62 = 0;
          v41 = 0;
          v67 = 3;
          v40 = radioStation;
          goto LABEL_39;
        case 4:
          radioStation = [v37 playlist];
          v40 = 0;
          v41 = 0;
          v67 = 2;
          v62 = radioStation;
          goto LABEL_39;
        case 1:
          radioStation = [v37 album];
          v40 = 0;
          v62 = 0;
          v67 = 1;
          v41 = radioStation;
LABEL_39:
          identifiers = [(MPModelObject *)radioStation identifiers];
          v44 = 1;
          goto LABEL_53;
      }

      goto LABEL_52;
    }

    v37 = [dictionaryCopy objectForKey:@"isUnavailableInAppleMusic"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v37 BOOLValue])
    {
      v72 = v37;
      if ([v34 isEqualToString:@"1"])
      {
        v66 = v34;
        identifiers = strtoll([v32 UTF8String], 0, 0);
        if (!identifiers)
        {
          v40 = 0;
          v62 = 0;
          v41 = 0;
          v44 = 0;
          v67 = 0;
LABEL_48:
          v34 = v66;
LABEL_61:
          v37 = v72;
LABEL_53:

          v71 = 0;
          v33 = v35;
          accumulatorCopy = v69;
          v43 = v62;
          if (!identifiers)
          {
            goto LABEL_54;
          }

LABEL_29:
          v63 = v33;
          v65 = v34;
          v45 = v32;
          v46 = [MPModelForYouRecommendationItem alloc];
          v78[0] = MEMORY[0x1E69E9820];
          v78[1] = 3221225472;
          v78[2] = __132__MPModelForYouRecommendationItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke_10;
          v78[3] = &unk_1E767CE08;
          v78[4] = self;
          v85 = v67;
          v79 = v41;
          v80 = v43;
          v81 = v40;
          v47 = v71;
          v82 = v71;
          v48 = v44;
          v49 = groupCopy;
          v83 = groupCopy;
          v84 = accumulatorCopy;
          v86 = v48;
          v50 = v46;
          v32 = v45;
          v33 = v63;
          v34 = v65;
          v70 = [(MPModelObject *)v50 initWithIdentifiers:identifiers block:v78];

          goto LABEL_55;
        }

        v64 = v35;
        v61 = v32;
        v51 = [MPIdentifierSet alloc];
        v52 = +[MPModelAlbumKind identityKind];
        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 3221225472;
        v93[2] = __132__MPModelForYouRecommendationItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke;
        v93[3] = &__block_descriptor_40_e49_v16__0__MPIdentifierSet_MPMutableIdentifierSet__8l;
        v93[4] = identifiers;
        v53 = [(MPIdentifierSet *)v51 initWithSource:@"ForYou" modelKind:v52 block:v93];
LABEL_35:

        if (v53)
        {
          identifiers = v53;
          v41 = [(MPModelObject *)[MPModelAlbum alloc] initWithIdentifiers:v53 block:&__block_literal_global_39167];
          v40 = 0;
          v62 = 0;
          v44 = 0;
        }

        else
        {
          v40 = 0;
          v62 = 0;
          v41 = 0;
          v44 = 0;
          identifiers = 0;
        }

        v67 = 1;
        v32 = v61;
        v35 = v64;
        goto LABEL_48;
      }

      if (([v34 isEqualToString:@"3"] & 1) != 0 || objc_msgSend(v34, "isEqualToString:", @"21"))
      {
        v54 = v34;
        identifiers = strtoull([v32 UTF8String], 0, 0);
        if (identifiers)
        {
          v55 = [MPIdentifierSet alloc];
          v56 = +[MPModelPlaylistKind identityKind];
          v90[0] = MEMORY[0x1E69E9820];
          v90[1] = 3221225472;
          v90[2] = __132__MPModelForYouRecommendationItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke_3;
          v90[3] = &unk_1E767CDA0;
          v91 = v76;
          v92 = identifiers;
          v57 = [(MPIdentifierSet *)v55 initWithSource:@"ForYou" modelKind:v56 block:v90];

          if (v57)
          {
            identifiers = v57;
            v62 = [(MPModelObject *)[MPModelPlaylist alloc] initWithIdentifiers:v57 block:&__block_literal_global_45];
            v40 = 0;
            v41 = 0;
            v44 = 0;
          }

          else
          {
            v40 = 0;
            v62 = 0;
            v41 = 0;
            v44 = 0;
            identifiers = 0;
          }

          v67 = 2;
        }

        else
        {
          v40 = 0;
          v62 = 0;
          v41 = 0;
          v44 = 0;
          v67 = 0;
        }

        v34 = v54;
        goto LABEL_61;
      }

      if ([v34 isEqualToString:@"22"])
      {
        v64 = v35;
        v66 = v34;
        v58 = [MPIdentifierSet alloc];
        v59 = +[MPModelAlbumKind identityKind];
        v87[0] = MEMORY[0x1E69E9820];
        v87[1] = 3221225472;
        v87[2] = __132__MPModelForYouRecommendationItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke_5;
        v87[3] = &unk_1E767EE00;
        v88 = v76;
        v61 = v32;
        v89 = v32;
        v53 = [(MPIdentifierSet *)v58 initWithSource:@"ForYou" modelKind:v59 block:v87];

        v52 = v88;
        goto LABEL_35;
      }
    }

LABEL_52:
    v40 = 0;
    v62 = 0;
    v41 = 0;
    v44 = 0;
    v67 = 0;
    identifiers = 0;
    goto LABEL_53;
  }

  v71 = [(MPModelForYouRecommendationGroupBuilder *)self->_subgroupBuilder modelObjectForRecommendationDictionary:dictionaryCopy userIdentity:identityCopy];
  identifiers = [v71 identifiers];
  v40 = 0;
  v43 = 0;
  v41 = 0;
  v44 = 0;
  v67 = 4;
  if (identifiers)
  {
    goto LABEL_29;
  }

LABEL_54:
  v70 = 0;
  v47 = v71;
  v49 = groupCopy;
LABEL_55:

  return v70;
}

uint64_t __132__MPModelForYouRecommendationItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __132__MPModelForYouRecommendationItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke_2;
  v3[3] = &__block_descriptor_40_e46_v16__0___MPMutableUniversalStoreIdentifiers__8l;
  v3[4] = *(a1 + 32);
  return [a2 setUniversalStoreIdentifiersWithBlock:v3];
}

void __132__MPModelForYouRecommendationItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 accountDSID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __132__MPModelForYouRecommendationItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke_6;
  v6[3] = &unk_1E767FA78;
  v7 = *(a1 + 40);
  [v4 setPersonalStoreIdentifiersWithPersonID:v5 block:v6];
}

void __132__MPModelForYouRecommendationItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 accountDSID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __132__MPModelForYouRecommendationItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke_4;
  v6[3] = &__block_descriptor_40_e45_v16__0___MPMutablePersonalStoreIdentifiers__8l;
  v6[4] = *(a1 + 40);
  [v4 setPersonalStoreIdentifiersWithPersonID:v5 block:v6];
}

void __132__MPModelForYouRecommendationItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke_10(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(*(a1 + 32) + 8);
  if ((v3 & 2) != 0)
  {
    [v4 setItemType:*(a1 + 88)];
    v3 = *(*(a1 + 32) + 8);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(*(a1 + 32) + 8) & 8) == 0)
  {
    goto LABEL_3;
  }

  [v4 setAlbum:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  if ((v3 & 0x10) == 0)
  {
LABEL_4:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  [v4 setPlaylist:*(a1 + 48)];
  v3 = *(*(a1 + 32) + 8);
  if ((v3 & 0x20) == 0)
  {
LABEL_5:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

LABEL_10:
  [v4 setRadioStation:*(a1 + 56)];
  if ((*(*(a1 + 32) + 8) & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (*(a1 + 64))
  {
    [v4 setParentGroup:*(a1 + 72)];
    [v4 setSubgroupIndex:{objc_msgSend(*(a1 + 80), "count")}];
    [*(a1 + 80) addObject:*(a1 + 64)];
  }

  else
  {
    [v4 setParentGroup:0];
    [v4 setSubgroupIndex:0x7FFFFFFFFFFFFFFFLL];
  }

LABEL_14:
  if ((*(*(a1 + 32) + 8) & 4) != 0)
  {
    [v4 setBackedByStoreItemMetadata:*(a1 + 96)];
  }
}

void __132__MPModelForYouRecommendationItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAdamID:v3];
  [v4 setPurchasedAdamID:*(a1 + 32)];
}

- (MPModelForYouRecommendationItemBuilder)initWithRequestedPropertySet:(id)set storeItemMetadataResults:(id)results flatSectionedItems:(id)items
{
  setCopy = set;
  resultsCopy = results;
  itemsCopy = items;
  v17.receiver = self;
  v17.super_class = MPModelForYouRecommendationItemBuilder;
  v11 = [(MPModelForYouRecommendationItemBuilder *)&v17 init];
  if (v11)
  {
    v12 = [setCopy copy];
    requestedPropertySet = v11->_requestedPropertySet;
    v11->_requestedPropertySet = v12;

    v14 = [resultsCopy copy];
    storeItemMetadataResults = v11->_storeItemMetadataResults;
    v11->_storeItemMetadataResults = v14;

    objc_storeStrong(&v11->_flatSectionedItems, items);
  }

  return v11;
}

+ (id)allSupportedProperties
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = +[MPStoreModelAlbumBuilder allSupportedProperties];
  v3 = [v2 mutableCopy];

  [v3 removeProperty:@"MPModelPropertyAlbumDiscCount"];
  v4 = [v3 copy];
  v5 = +[MPStoreModelPlaylistBuilder allSupportedProperties];
  v6 = [v5 mutableCopy];

  [v6 removeProperty:@"MPModelPropertyPlaylistEditorNotes"];
  [v6 removeProperty:@"MPModelPropertyPlaylistTrackCount"];
  v7 = [v6 copy];
  v8 = +[MPStoreModelRadioStationBuilder allSupportedProperties];
  v9 = [MPPropertySet alloc];
  v17[0] = @"MPModelForYouRecommendationItemPropertyItemType";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v11 = [MPModelForYouRecommendationGroupBuilder allSupportedGroupProperties:@"MPModelForYouRecommendationItemRelationshipAlbum"];
  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:4];
  v13 = [(MPPropertySet *)v9 initWithProperties:v10 relationships:v12];

  return v13;
}

@end