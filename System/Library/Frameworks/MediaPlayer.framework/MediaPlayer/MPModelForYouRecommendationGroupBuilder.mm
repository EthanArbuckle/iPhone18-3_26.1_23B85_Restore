@interface MPModelForYouRecommendationGroupBuilder
+ (id)allSupportedGroupProperties;
- (MPModelForYouRecommendationGroupBuilder)initWithRequestedGroupPropertySet:(id)a3 requestedItemPropertySet:(id)a4 storeItemMetadataResults:(id)a5 flatSectionedItems:(id)a6;
- (id)modelObjectForRecommendationDictionary:(id)a3 userIdentity:(id)a4;
@end

@implementation MPModelForYouRecommendationGroupBuilder

- (id)modelObjectForRecommendationDictionary:(id)a3 userIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((*&self->_requestedGroupProperties & 1) == 0)
  {
    v8 = [(MPPropertySet *)self->_requestedGroupPropertySet properties];
    if ([v8 containsObject:@"MPModelForYouRecommendationGroupPropertyGroupType"])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xFD | v9;
    if ([v8 containsObject:@"MPModelForYouRecommendationGroupPropertyLastUpdatedDate"])
    {
      v10 = 4;
    }

    else
    {
      v10 = 0;
    }

    *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xFB | v10;
    if ([v8 containsObject:@"MPModelForYouRecommendationGroupPropertyTitle"])
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xF7 | v11;
    if ([v8 containsObject:@"MPModelForYouRecommendationGroupPropertyLoadAdditionalContentURL"])
    {
      v12 = 32;
    }

    else
    {
      v12 = 0;
    }

    *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xDF | v12;
    if ([v8 containsObject:@"MPModelForYouRecommendationGroupPropertyRefreshURL"])
    {
      v13 = 64;
    }

    else
    {
      v13 = 0;
    }

    *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xBF | v13;
    v14 = [(MPPropertySet *)self->_requestedItemPropertySet relationships];
    v15 = [v14 objectForKey:@"MPModelForYouRecommendationItemRelationshipSubgroup"];
    *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xEF | (16 * (v15 != 0));

    v16 = [[MPModelForYouRecommendationItemBuilder alloc] initWithRequestedPropertySet:self->_requestedItemPropertySet storeItemMetadataResults:self->_storeItemMetadataResults flatSectionedItems:self->_flatSectionedItems];
    itemBuilder = self->_itemBuilder;
    self->_itemBuilder = v16;

    requestedGroupProperties = self->_requestedGroupProperties;
    if ((requestedGroupProperties & 4) != 0)
    {
      v19 = objc_alloc_init(MEMORY[0x1E696AB78]);
      lastUpdatedDateFormatter = self->_lastUpdatedDateFormatter;
      self->_lastUpdatedDateFormatter = v19;

      v21 = self->_lastUpdatedDateFormatter;
      v22 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
      [(NSDateFormatter *)v21 setLocale:v22];

      v23 = self->_lastUpdatedDateFormatter;
      v24 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
      [(NSDateFormatter *)v23 setTimeZone:v24];

      [(NSDateFormatter *)self->_lastUpdatedDateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
      [(NSDateFormatter *)self->_lastUpdatedDateFormatter setLenient:1];
      requestedGroupProperties = self->_requestedGroupProperties;
    }

    *&self->_requestedGroupProperties = requestedGroupProperties | 1;
  }

  v25 = [v6 objectForKey:@"recoId"];
  if (_NSIsNSString())
  {
    v26 = v25;
    if ([v26 length])
    {
      v27 = [v7 accountDSID];
      v28 = [MPIdentifierSet alloc];
      v29 = +[MPModelForYouRecommendationGroupKind identityKind];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __95__MPModelForYouRecommendationGroupBuilder_modelObjectForRecommendationDictionary_userIdentity___block_invoke;
      v39[3] = &unk_1E767EE00;
      v40 = v27;
      v41 = v26;
      v30 = v27;
      v31 = [(MPIdentifierSet *)v28 initWithSource:@"ForYou" modelKind:v29 block:v39];

      v32 = [MPModelForYouRecommendationGroup alloc];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __95__MPModelForYouRecommendationGroupBuilder_modelObjectForRecommendationDictionary_userIdentity___block_invoke_3;
      v35[3] = &unk_1E767CFD8;
      v36 = v6;
      v37 = self;
      v38 = v7;
      v33 = [(MPModelObject *)v32 initWithIdentifiers:v31 block:v35];
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

void __95__MPModelForYouRecommendationGroupBuilder_modelObjectForRecommendationDictionary_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __95__MPModelForYouRecommendationGroupBuilder_modelObjectForRecommendationDictionary_userIdentity___block_invoke_2;
  v4[3] = &unk_1E767FA78;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 setPersonalStoreIdentifiersWithPersonID:v3 block:v4];
}

void __95__MPModelForYouRecommendationGroupBuilder_modelObjectForRecommendationDictionary_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:@"moduleType"];
  if (_NSIsNSString())
  {
    v5 = v4;
    if ([v5 isEqualToString:@"PERSONALIZED_MIX"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"FRIENDS_LISTENING"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"RECOMMEND_FRIENDS"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"RECENTLY_PLAYED"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"TODAYS_PLAYLISTS"])
    {
      v6 = 5;
    }

    else if ([v5 isEqualToString:@"HEAVY_ROTATION"])
    {
      v6 = 6;
    }

    else if ([v5 isEqualToString:@"ALBUM_GROUPS"])
    {
      v6 = 7;
    }

    else if ([v5 isEqualToString:@"ARTIST_PLAYLISTS"])
    {
      v6 = 8;
    }

    else if ([v5 isEqualToString:@"NEW_RELEASES"])
    {
      v6 = 9;
    }

    else if ([v5 isEqualToString:@"ALBUM_RECO"])
    {
      v6 = 10;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(a1 + 40) + 8);
  if ((v7 & 2) != 0)
  {
    [v3 setGroupType:v6];
    v7 = *(*(a1 + 40) + 8);
    if ((v7 & 8) == 0)
    {
LABEL_27:
      if ((v7 & 4) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_48;
    }
  }

  else if ((*(*(a1 + 40) + 8) & 8) == 0)
  {
    goto LABEL_27;
  }

  v8 = [*(a1 + 32) objectForKey:@"title"];
  if (_NSIsNSDictionary())
  {
    v9 = [v8 objectForKey:@"stringForDisplay"];
    if (_NSIsNSString())
    {
      if (v9)
      {
        goto LABEL_44;
      }
    }

    else
    {
    }
  }

  v10 = [*(a1 + 32) objectForKey:@"reason"];
  if (_NSIsNSDictionary())
  {
    v11 = [v10 objectForKey:@"stringForDisplay"];
    if (_NSIsNSString())
    {
      v9 = v11;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_44:
  v12 = [v9 length];
  if (v6 == 1 && !v12)
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v14 = [v13 localizedStringForKey:@"FOR_YOU_PERSONAL_MIXES_TITLE" value:&stru_1F149ECA8 table:@"MediaPlayer"];

    v9 = v14;
  }

  [v3 setTitle:v9];

  v7 = *(*(a1 + 40) + 8);
  if ((v7 & 4) == 0)
  {
LABEL_28:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_52;
  }

LABEL_48:
  v15 = [*(a1 + 32) objectForKey:@"timestamp"];
  if (_NSIsNSString())
  {
    v16 = [*(*(a1 + 40) + 24) dateFromString:v15];
  }

  else
  {
    v16 = 0;
  }

  [v3 setLastUpdatedDate:v16];

  v7 = *(*(a1 + 40) + 8);
  if ((v7 & 0x20) == 0)
  {
LABEL_29:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

LABEL_52:
  v17 = [*(a1 + 32) objectForKey:@"seeAllUrl"];
  if (_NSIsNSString())
  {
    v18 = [MEMORY[0x1E695DFF8] URLWithString:v17];
  }

  else
  {
    v18 = 0;
  }

  [v3 setLoadAdditionalContentURL:v18];

  if ((*(*(a1 + 40) + 8) & 0x40) != 0)
  {
LABEL_56:
    v19 = [*(a1 + 32) objectForKey:@"refreshUrl"];
    if (_NSIsNSString())
    {
      v20 = [MEMORY[0x1E695DFF8] URLWithString:v19];
    }

    else
    {
      v20 = 0;
    }

    [v3 setRefreshURL:v20];
  }

LABEL_60:
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((*(*(a1 + 40) + 8) & 0x10) != 0)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v22 = 0;
  }

  v23 = [*(a1 + 32) objectForKey:@"children"];
  if (_NSIsNSArray())
  {
    v44 = v4;
    v24 = v23;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v25 = [v24 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v50;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v50 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v49 + 1) + 8 * i);
          if (_NSIsNSDictionary())
          {
            v30 = *(a1 + 40);
            v31 = *(v30 + 16);
            v32 = *(v30 + 8);
            if ((v32 & 0x10) != 0)
            {
              v33 = v3;
            }

            else
            {
              v33 = 0;
            }

            if ((v32 & 0x10) != 0)
            {
              v34 = v22;
            }

            else
            {
              v34 = 0;
            }

            v35 = [v31 modelObjectForRecommendationChildDictionary:v29 parentGroup:v33 subgroupsAccumulator:v34 userIdentity:*(a1 + 48)];
            if (v35)
            {
              [v21 addObject:v35];
            }
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v26);
    }

    v4 = v44;
  }

  v36 = *(a1 + 40);
  if ((*(v36 + 8) & 0x10) != 0)
  {
    [v3 setSubgroups:v22];
    v36 = *(a1 + 40);
  }

  [v3 setSectionIndex:{objc_msgSend(*(v36 + 56), "numberOfSections")}];
  [v3 setSectionedItems:*(*(a1 + 40) + 56)];
  v37 = *(*(a1 + 40) + 56);
  v38 = [MEMORY[0x1E695DFB0] null];
  [v37 appendSection:v38];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v39 = v21;
  v40 = [v39 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v46;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v46 != v42)
        {
          objc_enumerationMutation(v39);
        }

        [*(*(a1 + 40) + 56) appendItem:*(*(&v45 + 1) + 8 * j)];
      }

      v41 = [v39 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v41);
  }
}

- (MPModelForYouRecommendationGroupBuilder)initWithRequestedGroupPropertySet:(id)a3 requestedItemPropertySet:(id)a4 storeItemMetadataResults:(id)a5 flatSectionedItems:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = MPModelForYouRecommendationGroupBuilder;
  v14 = [(MPModelForYouRecommendationGroupBuilder *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    requestedGroupPropertySet = v14->_requestedGroupPropertySet;
    v14->_requestedGroupPropertySet = v15;

    v17 = [v11 copy];
    requestedItemPropertySet = v14->_requestedItemPropertySet;
    v14->_requestedItemPropertySet = v17;

    v19 = [v12 copy];
    storeItemMetadataResults = v14->_storeItemMetadataResults;
    v14->_storeItemMetadataResults = v19;

    objc_storeStrong(&v14->_flatSectionedItems, a6);
  }

  return v14;
}

+ (id)allSupportedGroupProperties
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelForYouRecommendationGroupPropertyGroupType";
  v5[1] = @"MPModelForYouRecommendationGroupPropertyLastUpdatedDate";
  v5[2] = @"MPModelForYouRecommendationGroupPropertyTitle";
  v5[3] = @"MPModelForYouRecommendationGroupPropertyLoadAdditionalContentURL";
  v5[4] = @"MPModelForYouRecommendationGroupPropertyHrefURL";
  v5[5] = @"MPModelForYouRecommendationGroupPropertyRefreshURL";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

@end