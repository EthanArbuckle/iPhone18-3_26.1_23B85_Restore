@interface MPModelForYouRecommendationMusicKitItemBuilder
+ (id)allSupportedProperties;
- (MPModelForYouRecommendationMusicKitItemBuilder)initWithRequestedPropertySet:(id)set storeItemMetadataResults:(id)results flatSectionedItems:(id)items storeURLBag:(id)bag isListenNow:(BOOL)now;
- (id)convertToStoreItemMetadataDictionary:(id)dictionary;
- (id)modelObjectForRecommendationChildDictionary:(id)dictionary parentGroup:(id)group subgroupsAccumulator:(id)accumulator userIdentity:(id)identity;
- (id)storeItemMetadataWithMusicAPIMetadataDictionary:(id)dictionary;
@end

@implementation MPModelForYouRecommendationMusicKitItemBuilder

- (id)convertToStoreItemMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  [v4 addEntriesFromDictionary:dictionaryCopy];
  v5 = [dictionaryCopy objectForKey:@"attributes"];

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

- (id)storeItemMetadataWithMusicAPIMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [MPStoreItemMetadata alloc];
  v6 = [(MPModelForYouRecommendationMusicKitItemBuilder *)self convertToStoreItemMetadataDictionary:dictionaryCopy];

  v7 = [(MPStoreItemMetadata *)v5 initWithStorePlatformDictionary:v6];

  return v7;
}

- (id)modelObjectForRecommendationChildDictionary:(id)dictionary parentGroup:(id)group subgroupsAccumulator:(id)accumulator userIdentity:(id)identity
{
  v108[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  groupCopy = group;
  accumulatorCopy = accumulator;
  identityCopy = identity;
  [(MPModelForYouRecommendationMusicKitItemBuilder *)self storeItemMetadataResults];
  v84 = v83 = dictionaryCopy;
  v87 = identityCopy;
  v88 = groupCopy;
  if (!self->_requestedItemProperties.isInitialized)
  {
    requestedPropertySet = [(MPModelForYouRecommendationMusicKitItemBuilder *)self requestedPropertySet];
    properties = [requestedPropertySet properties];
    self->_requestedItemProperties.itemType = [properties containsObject:@"MPModelForYouRecommendationItemPropertyItemType"];
    self->_requestedItemProperties.url = [properties containsObject:@"MPModelForYouRecommendationItemPropertyURL"];
    self->_requestedItemProperties.reason = [properties containsObject:@"MPModelForYouRecommendationItemPropertyReason"];
    self->_requestedItemProperties.utterance = [properties containsObject:@"MPModelForYouRecommendationItemPropertyUtterance"];
    self->_requestedItemProperties.backedByStoreItemMetadata = [properties containsObject:@"MPModelForYouRecommendationItemPropertyBackedByStoreItemMetadata"];
    relationships = [requestedPropertySet relationships];
    v16 = objc_opt_new();
    v17 = [relationships objectForKey:@"MPModelForYouRecommendationItemRelationshipAlbum"];
    if (v17)
    {
      self->_requestedItemProperties.album = 1;
      [v16 setObject:v17 forKey:@"MPModelStoreBrowseContentItemRelationshipAlbum"];
    }

    v18 = [relationships objectForKey:@"MPModelForYouRecommendationItemRelationshipPlaylist"];
    if (v18)
    {
      self->_requestedItemProperties.playlist = 1;
      [v16 setObject:v18 forKey:@"MPModelStoreBrowseContentItemRelationshipPlaylist"];
    }

    v19 = [relationships objectForKey:@"MPModelForYouRecommendationItemRelationshipRadioStation"];
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
    v25 = [relationships objectForKey:@"MPModelForYouRecommendationItemRelationshipSubgroup"];
    self->_requestedItemProperties.subgroup = v25 != 0;
    v26 = [[MPModelForYouRecommendationMusicKitGroupBuilder alloc] initWithRequestedGroupPropertySet:v25 requestedItemPropertySet:requestedPropertySet storeItemMetadataResults:v84 flatSectionedItems:self->_flatSectionedItems storeURLBag:self->_storeURLBag isListenNow:self->_isListenNow];
    subgroupBuilder = self->_subgroupBuilder;
    self->_subgroupBuilder = v26;

    self->_requestedItemProperties.isInitialized = 1;
    dictionaryCopy = v83;
    identityCopy = v87;
    groupCopy = v88;
  }

  v90 = +[MPIdentifierSet emptyIdentifierSet];
  v28 = [dictionaryCopy objectForKey:@"id"];
  if (_NSIsNSString())
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = [dictionaryCopy objectForKey:@"type"];
  if (_NSIsNSString())
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = [dictionaryCopy objectForKey:@"meta"];
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
    identityCopy = v87;
  }

  else
  {
    v89 = 0;
    v85 = 0;
  }

  if (![groupCopy hasLoadedValueForKey:@"MPModelForYouRecommendationGroupPropertyTraits"] || (v39 = objc_msgSend(groupCopy, "traits"), v89) || (v39 & 1) == 0)
  {
    v42 = [dictionaryCopy objectForKey:@"attributes"];
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
    if (![v29 length] || !objc_msgSend(v31, "length") || objc_msgSend(groupCopy, "isGroupRecommendation"))
    {
      v44 = [(MPModelForYouRecommendationMusicKitGroupBuilder *)self->_subgroupBuilder modelObjectForRecommendationDictionary:dictionaryCopy userIdentity:identityCopy];
      identifiers = [v44 identifiers];
      v72 = 0;
      v73 = 0;
      playlist = 0;
      v75 = 0;
      v71 = 4;
      v46 = v90;
LABEL_46:

      personalizedStore = [(MPIdentifierSet *)identifiers personalizedStore];
      personID = [personalizedStore personID];
      v49 = personID;
      if (personID)
      {
        stringValue = personID;
      }

      else
      {
        defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
        v52 = [defaultIdentityStore DSIDForUserIdentity:identityCopy outError:0];
        stringValue = [v52 stringValue];

        groupCopy = v88;
      }

      if ([stringValue length])
      {
        v53 = [MPIdentifierSet alloc];
        sources = [(MPIdentifierSet *)identifiers sources];
        firstObject = [sources firstObject];
        modelKind = [(MPIdentifierSet *)identifiers modelKind];
        v103[0] = MEMORY[0x1E69E9820];
        v103[1] = 3221225472;
        v103[2] = __140__MPModelForYouRecommendationMusicKitItemBuilder_modelObjectForRecommendationChildDictionary_parentGroup_subgroupsAccumulator_userIdentity___block_invoke;
        v103[3] = &unk_1E767EE00;
        v104 = stringValue;
        v105 = v88;
        v57 = v53;
        groupCopy = v88;
        v58 = [(MPIdentifierSet *)v57 initWithSource:firstObject modelKind:modelKind block:v103];
      }

      else
      {
        v58 = identifiers;
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
      v61 = playlist;
      v96 = v61;
      v62 = v75;
      v97 = v62;
      v63 = v44;
      v98 = v63;
      v99 = groupCopy;
      v100 = accumulatorCopy;
      v102 = v72;
      v41 = [(MPModelObject *)v59 initWithIdentifiers:v58 block:v91];

      v90 = identifiers;
      dictionaryCopy = v83;
      v31 = v76;
      goto LABEL_53;
    }

    v58 = [dictionaryCopy mutableCopy];
    identifiers2 = [groupCopy identifiers];
    personalizedStore2 = [identifiers2 personalizedStore];
    recommendationID = [personalizedStore2 recommendationID];
    [(MPIdentifierSet *)v58 setObject:recommendationID forKey:@"recommendationId"];

    v68 = [(MPIdentifierSet *)v58 copy];
    stringValue = [(MPModelForYouRecommendationMusicKitItemBuilder *)self storeItemMetadataWithMusicAPIMetadataDictionary:v68];

    v69 = [(MPStoreModelObjectBuilder *)self->_contentItemBuilder modelObjectWithStoreItemMetadata:stringValue userIdentity:identityCopy];
    itemType = [v69 itemType];
    if (itemType == 5)
    {
      groupCopy = v88;
      if (self->_requestedItemProperties.radioStation)
      {
        [v69 radioStation];
        v73 = 0;
        v75 = playlist = 0;
        [v75 identifiers];
        goto LABEL_64;
      }
    }

    else
    {
      groupCopy = v88;
      if (itemType == 4)
      {
        playlist = [v69 playlist];
        v75 = 0;
        v73 = 0;
        [playlist identifiers];
        goto LABEL_64;
      }

      if (itemType == 1)
      {
        [v69 album];
        playlist = 0;
        v73 = v75 = 0;
        [v73 identifiers];
        identifiers = LABEL_64:;

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

    identityCopy = v87;
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
    v107 = dictionaryCopy;
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

- (MPModelForYouRecommendationMusicKitItemBuilder)initWithRequestedPropertySet:(id)set storeItemMetadataResults:(id)results flatSectionedItems:(id)items storeURLBag:(id)bag isListenNow:(BOOL)now
{
  setCopy = set;
  resultsCopy = results;
  itemsCopy = items;
  bagCopy = bag;
  v22.receiver = self;
  v22.super_class = MPModelForYouRecommendationMusicKitItemBuilder;
  v16 = [(MPModelForYouRecommendationMusicKitItemBuilder *)&v22 init];
  if (v16)
  {
    v17 = [setCopy copy];
    requestedPropertySet = v16->_requestedPropertySet;
    v16->_requestedPropertySet = v17;

    v19 = [resultsCopy copy];
    storeItemMetadataResults = v16->_storeItemMetadataResults;
    v16->_storeItemMetadataResults = v19;

    objc_storeStrong(&v16->_flatSectionedItems, items);
    objc_storeStrong(&v16->_storeURLBag, bag);
    v16->_isListenNow = now;
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