@interface MPModelForYouRecommendationMusicKitItemBuilder
+ (id)allSupportedProperties;
- (MPModelForYouRecommendationMusicKitItemBuilder)initWithRequestedPropertySet:(id)a3 storeItemMetadataResults:(id)a4 flatSectionedItems:(id)a5 storeURLBag:(id)a6 isListenNow:(BOOL)a7;
- (id)convertToStoreItemMetadataDictionary:(id)a3;
- (id)modelObjectForRecommendationChildDictionary:(id)a3 parentGroup:(id)a4 subgroupsAccumulator:(id)a5 userIdentity:(id)a6;
- (id)storeItemMetadataWithMusicAPIMetadataDictionary:(id)a3;
@end

@implementation MPModelForYouRecommendationMusicKitItemBuilder

- (id)convertToStoreItemMetadataDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 addEntriesFromDictionary:v3];
  v5 = [v3 objectForKey:@"attributes"];

  if (_NSIsNSDictionary())
  {
    [v4 addEntriesFromDictionary:v5];
    v6 = v5;
    v7 = [v6 objectForKey:@"playParams"];
    if (_NSIsNSDictionary())
    {
      v8 = [v7 objectForKey:@"kind"];
      if (_NSIsNSString())
      {
        [v4 setValue:v8 forKey:@"kind"];
      }
    }

    v9 = [v6 objectForKey:@"artistName"];
    if (_NSIsNSString())
    {
      [v4 setValue:v9 forKey:@"artistNameObject"];
    }

    v10 = [v6 objectForKey:@"artwork"];
    if (v10)
    {
      [v4 setValue:v10 forKey:@"artwork"];
    }
  }

  v11 = [v4 copy];

  return v11;
}

- (id)storeItemMetadataWithMusicAPIMetadataDictionary:(id)a3
{
  v4 = a3;
  v5 = [MPStoreItemMetadata alloc];
  v6 = [(MPModelForYouRecommendationMusicKitItemBuilder *)self convertToStoreItemMetadataDictionary:v4];

  v7 = [(MPStoreItemMetadata *)v5 initWithStorePlatformDictionary:v6];

  return v7;
}

- (id)modelObjectForRecommendationChildDictionary:(id)a3 parentGroup:(id)a4 subgroupsAccumulator:(id)a5 userIdentity:(id)a6
{
  v108[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v86 = a5;
  v12 = a6;
  [(MPModelForYouRecommendationMusicKitItemBuilder *)self storeItemMetadataResults];
  v84 = v83 = v10;
  v87 = v12;
  v88 = v11;
  if (!self->_requestedItemProperties.isInitialized)
  {
    v13 = [(MPModelForYouRecommendationMusicKitItemBuilder *)self requestedPropertySet];
    v14 = [v13 properties];
    self->_requestedItemProperties.itemType = [v14 containsObject:@"MPModelForYouRecommendationItemPropertyItemType"];
    self->_requestedItemProperties.url = [v14 containsObject:@"MPModelForYouRecommendationItemPropertyURL"];
    self->_requestedItemProperties.reason = [v14 containsObject:@"MPModelForYouRecommendationItemPropertyReason"];
    self->_requestedItemProperties.utterance = [v14 containsObject:@"MPModelForYouRecommendationItemPropertyUtterance"];
    self->_requestedItemProperties.backedByStoreItemMetadata = [v14 containsObject:@"MPModelForYouRecommendationItemPropertyBackedByStoreItemMetadata"];
    v15 = [v13 relationships];
    v16 = objc_opt_new();
    v17 = [v15 objectForKey:@"MPModelForYouRecommendationItemRelationshipAlbum"];
    if (v17)
    {
      self->_requestedItemProperties.album = 1;
      [v16 setObject:v17 forKey:@"MPModelStoreBrowseContentItemRelationshipAlbum"];
    }

    v18 = [v15 objectForKey:@"MPModelForYouRecommendationItemRelationshipPlaylist"];
    if (v18)
    {
      self->_requestedItemProperties.playlist = 1;
      [v16 setObject:v18 forKey:@"MPModelStoreBrowseContentItemRelationshipPlaylist"];
    }

    v19 = [v15 objectForKey:@"MPModelForYouRecommendationItemRelationshipRadioStation"];
    if (v19)
    {
      self->_requestedItemProperties.radioStation = 1;
      [v16 setObject:v19 forKey:@"MPModelStoreBrowseContentItemRelationshipRadioStation"];
    }

    v20 = [MPPropertySet alloc];
    v108[0] = @"MPModelStoreBrowseContentItemPropertyItemType";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:1];
    v22 = [(MPPropertySet *)v20 initWithProperties:v21 relationships:v16];

    v23 = [[MPModelStoreBrowseContentItemBuilder alloc] initWithRequestedPropertySet:v22];
    contentItemBuilder = self->_contentItemBuilder;
    self->_contentItemBuilder = v23;

    [(MPModelStoreBrowseContentItemBuilder *)self->_contentItemBuilder setPreventStoreItemMetadataCaching:1];
    v25 = [v15 objectForKey:@"MPModelForYouRecommendationItemRelationshipSubgroup"];
    self->_requestedItemProperties.subgroup = v25 != 0;
    v26 = [[MPModelForYouRecommendationMusicKitGroupBuilder alloc] initWithRequestedGroupPropertySet:v25 requestedItemPropertySet:v13 storeItemMetadataResults:v84 flatSectionedItems:self->_flatSectionedItems storeURLBag:self->_storeURLBag isListenNow:self->_isListenNow];
    subgroupBuilder = self->_subgroupBuilder;
    self->_subgroupBuilder = v26;

    self->_requestedItemProperties.isInitialized = 1;
    v10 = v83;
    v12 = v87;
    v11 = v88;
  }

  v90 = +[MPIdentifierSet emptyIdentifierSet];
  v28 = [v10 objectForKey:@"id"];
  if (_NSIsNSString())
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = [v10 objectForKey:@"type"];
  if (_NSIsNSString())
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = [v10 objectForKey:@"meta"];
  v81 = v32;
  if (_NSIsNSDictionary())
  {
    v33 = v31;
    v34 = v30;
    v35 = [v32 objectForKey:@"reason"];
    if (_NSIsNSDictionary())
    {
      v36 = [v35 objectForKey:@"stringForDisplay"];
      if (_NSIsNSString())
      {
        v85 = v36;
      }

      else
      {
        v85 = 0;
      }
    }

    else
    {
      v85 = 0;
    }

    v37 = [v32 objectForKey:@"utterance"];
    if (_NSIsNSDictionary())
    {
      v38 = [v37 objectForKey:@"stringForDisplay"];
      if (_NSIsNSString())
      {
        v89 = v38;
      }

      else
      {
        v89 = 0;
      }

      v32 = v81;
    }

    else
    {
      v89 = 0;
    }

    v30 = v34;
    v31 = v33;
    v12 = v87;
  }

  else
  {
    v89 = 0;
    v85 = 0;
  }

  if (![v11 hasLoadedValueForKey:@"MPModelForYouRecommendationGroupPropertyTraits"] || (v39 = objc_msgSend(v11, "traits"), v89) || (v39 & 1) == 0)
  {
    v42 = [v10 objectForKey:@"attributes"];
    v77 = v42;
    if (_NSIsNSDictionary())
    {
      v43 = [v42 objectForKey:@"url"];
      if (_NSIsNSString())
      {
        v82 = [MEMORY[0x1E695DFF8] URLWithString:v43];
      }

      else
      {
        v82 = 0;
      }
    }

    else
    {
      v82 = 0;
    }

    v79 = v29;
    v80 = v28;
    v78 = v30;
    v76 = v31;
    if (![v29 length] || !objc_msgSend(v31, "length") || objc_msgSend(v11, "isGroupRecommendation"))
    {
      v44 = [(MPModelForYouRecommendationMusicKitGroupBuilder *)self->_subgroupBuilder modelObjectForRecommendationDictionary:v10 userIdentity:v12];
      v45 = [v44 identifiers];
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v71 = 4;
      v46 = v90;
LABEL_46:

      v47 = [(MPIdentifierSet *)v45 personalizedStore];
      v48 = [v47 personID];
      v49 = v48;
      if (v48)
      {
        v50 = v48;
      }

      else
      {
        v51 = [MEMORY[0x1E69E4688] defaultIdentityStore];
        v52 = [v51 DSIDForUserIdentity:v12 outError:0];
        v50 = [v52 stringValue];

        v11 = v88;
      }

      if ([v50 length])
      {
        v53 = [MPIdentifierSet alloc];
        v54 = [(MPIdentifierSet *)v45 sources];
        v55 = [v54 firstObject];
        v56 = [(MPIdentifierSet *)v45 modelKind];
        v103[0] = MEMORY[0x1E69E9820];
        v103[1] = 3221225472;
        v103[2] = __140__MPModelForYouRecommendationMusicKitItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke;
        v103[3] = &unk_1E767EE00;
        v104 = v50;
        v105 = v88;
        v57 = v53;
        v11 = v88;
        v58 = [(MPIdentifierSet *)v57 initWithSource:v55 modelKind:v56 block:v103];
      }

      else
      {
        v58 = v45;
      }

      v59 = [MPModelForYouRecommendationItem alloc];
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __140__MPModelForYouRecommendationMusicKitItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke_3;
      v91[3] = &unk_1E767CED8;
      v91[4] = self;
      v101 = v71;
      v92 = v82;
      v93 = v85;
      v94 = v89;
      v60 = v73;
      v95 = v60;
      v61 = v74;
      v96 = v61;
      v62 = v75;
      v97 = v62;
      v63 = v44;
      v98 = v63;
      v99 = v11;
      v100 = v86;
      v102 = v72;
      v41 = [(MPModelObject *)v59 initWithIdentifiers:v58 block:v91];

      v90 = v45;
      v10 = v83;
      v31 = v76;
      goto LABEL_53;
    }

    v58 = [v10 mutableCopy];
    v65 = [v11 identifiers];
    v66 = [v65 personalizedStore];
    v67 = [v66 recommendationID];
    [(MPIdentifierSet *)v58 setObject:v67 forKey:@"recommendationId"];

    v68 = [(MPIdentifierSet *)v58 copy];
    v50 = [(MPModelForYouRecommendationMusicKitItemBuilder *)self storeItemMetadataWithMusicAPIMetadataDictionary:v68];

    v69 = [(MPStoreModelObjectBuilder *)self->_contentItemBuilder modelObjectWithStoreItemMetadata:v50 userIdentity:v12];
    v70 = [v69 itemType];
    if (v70 == 5)
    {
      v11 = v88;
      if (self->_requestedItemProperties.radioStation)
      {
        [v69 radioStation];
        v73 = 0;
        v75 = v74 = 0;
        [v75 identifiers];
        goto LABEL_64;
      }
    }

    else
    {
      v11 = v88;
      if (v70 == 4)
      {
        v74 = [v69 playlist];
        v75 = 0;
        v73 = 0;
        [v74 identifiers];
        goto LABEL_64;
      }

      if (v70 == 1)
      {
        [v69 album];
        v74 = 0;
        v73 = v75 = 0;
        [v73 identifiers];
        v45 = LABEL_64:;

        v44 = 0;
        v72 = 1;
        v46 = v58;
        goto LABEL_46;
      }
    }

    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v41 = 0;
LABEL_53:

    v12 = v87;
    v29 = v79;
    v28 = v80;
    v30 = v78;
    v32 = v81;
    v40 = v82;
    goto LABEL_54;
  }

  v40 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v107 = v10;
    _os_log_impl(&dword_1A238D000, v40, OS_LOG_TYPE_ERROR, "Dropping node because parent requires displaying utterance and no utterance was found in item dictionary: %{public}@", buf, 0xCu);
  }

  v41 = 0;
LABEL_54:

  return v41;
}

void __140__MPModelForYouRecommendationMusicKitItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __140__MPModelForYouRecommendationMusicKitItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke_2;
  v4[3] = &unk_1E767FA78;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 setPersonalStoreIdentifiersWithPersonID:v3 block:v4];
}

void __140__MPModelForYouRecommendationMusicKitItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (v3[9] == 1)
  {
    [v4 setItemType:*(a1 + 112)];
    v3 = *(a1 + 32);
  }

  if (v3[10] == 1)
  {
    [v4 setUrl:*(a1 + 40)];
    v3 = *(a1 + 32);
  }

  if (v3[11] == 1)
  {
    [v4 setReason:*(a1 + 48)];
    v3 = *(a1 + 32);
  }

  if (v3[12] == 1)
  {
    [v4 setUtterance:*(a1 + 56)];
    v3 = *(a1 + 32);
  }

  if (v3[14] == 1)
  {
    [v4 setAlbum:*(a1 + 64)];
    v3 = *(a1 + 32);
  }

  if (v3[15] == 1)
  {
    [v4 setPlaylist:*(a1 + 72)];
    v3 = *(a1 + 32);
  }

  if (v3[16] == 1)
  {
    [v4 setRadioStation:*(a1 + 80)];
    v3 = *(a1 + 32);
  }

  if (v3[17] == 1)
  {
    if (*(a1 + 88))
    {
      [v4 setParentGroup:*(a1 + 96)];
      [v4 setSubgroupIndex:{objc_msgSend(*(a1 + 104), "count")}];
      [*(a1 + 104) addObject:*(a1 + 88)];
    }

    else
    {
      [v4 setParentGroup:0];
      [v4 setSubgroupIndex:0x7FFFFFFFFFFFFFFFLL];
    }
  }

  if (*(*(a1 + 32) + 13) == 1)
  {
    [v4 setBackedByStoreItemMetadata:*(a1 + 120)];
  }
}

void __140__MPModelForYouRecommendationMusicKitItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 identifiers];
  v4 = [v6 personalizedStore];
  v5 = [v4 recommendationID];
  [v3 setRecommendationID:v5];
}

- (MPModelForYouRecommendationMusicKitItemBuilder)initWithRequestedPropertySet:(id)a3 storeItemMetadataResults:(id)a4 flatSectionedItems:(id)a5 storeURLBag:(id)a6 isListenNow:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v22.receiver = self;
  v22.super_class = MPModelForYouRecommendationMusicKitItemBuilder;
  v16 = [(MPModelForYouRecommendationMusicKitItemBuilder *)&v22 init];
  if (v16)
  {
    v17 = [v12 copy];
    requestedPropertySet = v16->_requestedPropertySet;
    v16->_requestedPropertySet = v17;

    v19 = [v13 copy];
    storeItemMetadataResults = v16->_storeItemMetadataResults;
    v16->_storeItemMetadataResults = v19;

    objc_storeStrong(&v16->_flatSectionedItems, a5);
    objc_storeStrong(&v16->_storeURLBag, a6);
    v16->_isListenNow = a7;
  }

  return v16;
}

+ (id)allSupportedProperties
{
  v16[4] = *MEMORY[0x1E69E9840];
  v16[0] = @"MPModelForYouRecommendationItemPropertyItemType";
  v16[1] = @"MPModelForYouRecommendationItemPropertyURL";
  v16[2] = @"MPModelForYouRecommendationItemPropertyReason";
  v16[3] = @"MPModelForYouRecommendationItemPropertyUtterance";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
  v3 = +[MPStoreModelAlbumBuilder allSupportedProperties];
  v4 = [v3 mutableCopy];

  [v4 removeProperty:@"MPModelPropertyAlbumDiscCount"];
  v5 = [v4 copy];
  v6 = +[MPStoreModelPlaylistBuilder allSupportedProperties];
  v7 = [v6 mutableCopy];

  [v7 removeProperty:@"MPModelPropertyPlaylistEditorNotes"];
  [v7 removeProperty:@"MPModelPropertyPlaylistTrackCount"];
  v8 = [v7 copy];
  v9 = +[MPStoreModelRadioStationBuilder allSupportedProperties];
  v14[0] = @"MPModelForYouRecommendationItemRelationshipAlbum";
  v14[1] = @"MPModelForYouRecommendationItemRelationshipPlaylist";
  v15[0] = v5;
  v15[1] = v8;
  v15[2] = v9;
  v14[2] = @"MPModelForYouRecommendationItemRelationshipRadioStation";
  v14[3] = @"MPModelForYouRecommendationItemRelationshipSubgroup";
  v10 = +[MPModelForYouRecommendationMusicKitGroupBuilder allSupportedGroupProperties];
  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = [[MPPropertySet alloc] initWithProperties:v2 relationships:v11];

  return v12;
}

@end