@interface MPModelForYouRecommendationItem
+ (id)requiredStoreLibraryPersonalizationProperties;
+ (void)__MPModelForYouRecommendationItemPropertyBackedByStoreItemMetadata__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationItemPropertyItemType__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationItemPropertyParentGroup__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationItemPropertyReason__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationItemPropertySubgroupIndex__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationItemPropertyURL__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationItemPropertyUtterance__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationItemRelationshipAlbum__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationItemRelationshipPlaylist__MAPPING_MISSING__;
+ (void)__MPModelForYouRecommendationItemRelationshipRadioStation__MAPPING_MISSING__;
- (MPModelForYouRecommendationGroup)subgroup;
- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)a3;
- (id)personalizationScopedPropertiesForProperties:(id)a3;
- (id)relativeModelObjectForStoreLibraryPersonalization;
@end

@implementation MPModelForYouRecommendationItem

+ (id)requiredStoreLibraryPersonalizationProperties
{
  v18[3] = *MEMORY[0x1E69E9840];
  v2 = +[MPPropertySet emptyPropertySet];
  v18[0] = @"MPModelForYouRecommendationItemPropertyItemType";
  v18[1] = @"MPModelForYouRecommendationItemPropertyURL";
  v18[2] = @"MPModelForYouRecommendationItemPropertyBackedByStoreItemMetadata";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v4 = +[MPModelAlbum requiredStoreLibraryPersonalizationProperties];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  v17[0] = v6;
  v16[1] = @"MPModelForYouRecommendationItemRelationshipPlaylist";
  v7 = +[MPModelPlaylist requiredStoreLibraryPersonalizationProperties];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  v17[1] = v9;
  v16[2] = @"MPModelForYouRecommendationItemRelationshipRadioStation";
  v10 = +[MPModelRadioStation];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v2;
  }

  v17[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v14 = [[MPPropertySet alloc] initWithProperties:v3 relationships:v13];

  return v14;
}

+ (void)__MPModelForYouRecommendationItemPropertySubgroupIndex__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelForYouRecommendationItem.m" lineNumber:34 description:@"Translator was missing mapping for MPModelForYouRecommendationItemPropertySubgroupIndex"];
}

+ (void)__MPModelForYouRecommendationItemPropertyParentGroup__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelForYouRecommendationItem.m" lineNumber:33 description:@"Translator was missing mapping for MPModelForYouRecommendationItemPropertyParentGroup"];
}

+ (void)__MPModelForYouRecommendationItemPropertyBackedByStoreItemMetadata__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelForYouRecommendationItem.m" lineNumber:32 description:@"Translator was missing mapping for MPModelForYouRecommendationItemPropertyBackedByStoreItemMetadata"];
}

+ (void)__MPModelForYouRecommendationItemRelationshipRadioStation__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelForYouRecommendationItem.m" lineNumber:31 description:@"Translator was missing mapping for MPModelForYouRecommendationItemRelationshipRadioStation"];
}

+ (void)__MPModelForYouRecommendationItemRelationshipPlaylist__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelForYouRecommendationItem.m" lineNumber:30 description:@"Translator was missing mapping for MPModelForYouRecommendationItemRelationshipPlaylist"];
}

+ (void)__MPModelForYouRecommendationItemRelationshipAlbum__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelForYouRecommendationItem.m" lineNumber:29 description:@"Translator was missing mapping for MPModelForYouRecommendationItemRelationshipAlbum"];
}

+ (void)__MPModelForYouRecommendationItemPropertyUtterance__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelForYouRecommendationItem.m" lineNumber:28 description:@"Translator was missing mapping for MPModelForYouRecommendationItemPropertyUtterance"];
}

+ (void)__MPModelForYouRecommendationItemPropertyReason__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelForYouRecommendationItem.m" lineNumber:27 description:@"Translator was missing mapping for MPModelForYouRecommendationItemPropertyReason"];
}

+ (void)__MPModelForYouRecommendationItemPropertyURL__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelForYouRecommendationItem.m" lineNumber:26 description:@"Translator was missing mapping for MPModelForYouRecommendationItemPropertyURL"];
}

+ (void)__MPModelForYouRecommendationItemPropertyItemType__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelForYouRecommendationItem.m" lineNumber:25 description:@"Translator was missing mapping for MPModelForYouRecommendationItemPropertyItemType"];
}

- (id)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)a3
{
  v4 = a3;
  v5 = [(MPModelObject *)self identifiers];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__MPModelForYouRecommendationItem_objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke;
  v9[3] = &unk_1E767CD40;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [(MPModelObject *)self copyWithIdentifiers:v5 block:v9];

  return v7;
}

void __92__MPModelForYouRecommendationItem_objectWithStoreLibraryPersonalizationRelativeModelObject___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) itemType];
  if (v3 == 3)
  {
    [v6 setRadioStation:*(a1 + 40)];
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    [v6 setPlaylist:*(a1 + 40)];
    goto LABEL_8;
  }

  v4 = v3 == 1;
  v5 = v6;
  if (v4)
  {
    [v6 setAlbum:*(a1 + 40)];
LABEL_8:
    v5 = v6;
  }
}

- (id)relativeModelObjectForStoreLibraryPersonalization
{
  v3 = [(MPModelForYouRecommendationItem *)self itemType];
  switch(v3)
  {
    case 3:
      v4 = [(MPModelForYouRecommendationItem *)self radioStation];
      goto LABEL_7;
    case 2:
      v4 = [(MPModelForYouRecommendationItem *)self playlist];
      goto LABEL_7;
    case 1:
      v4 = [(MPModelForYouRecommendationItem *)self album];
LABEL_7:
      v5 = v4;
      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:
  v6 = [v5 relativeModelObjectForStoreLibraryPersonalization];

  return v6;
}

- (id)personalizationScopedPropertiesForProperties:(id)a3
{
  v4 = [a3 relationships];
  v5 = [(MPModelForYouRecommendationItem *)self itemType]- 1;
  if (v5 > 2 || ([v4 objectForKey:off_1E767CD60[v5]], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = +[MPPropertySet emptyPropertySet];
  }

  return v6;
}

- (MPModelForYouRecommendationGroup)subgroup
{
  v3 = [(MPModelForYouRecommendationItem *)self parentGroup];
  v4 = [v3 subgroups];
  v5 = [v4 objectAtIndex:{-[MPModelForYouRecommendationItem subgroupIndex](self, "subgroupIndex")}];

  return v5;
}

@end