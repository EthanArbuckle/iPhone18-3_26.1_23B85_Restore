@interface MCDForYouDataSource
- (MCDForYouDataSource)initWithRecommendationGroup:(id)group;
- (MPPropertySet)subgroupProperties;
- (id)itemProperties;
@end

@implementation MCDForYouDataSource

- (MCDForYouDataSource)initWithRecommendationGroup:(id)group
{
  groupCopy = group;
  v9.receiver = self;
  v9.super_class = MCDForYouDataSource;
  v6 = [(MCDForYouDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_group, group);
  }

  return v7;
}

- (MPPropertySet)subgroupProperties
{
  v5[0] = MPModelForYouRecommendationGroupPropertyGroupType;
  v5[1] = MPModelForYouRecommendationGroupPropertyLastUpdatedDate;
  v5[2] = MPModelForYouRecommendationGroupPropertyTitle;
  v5[3] = MPModelForYouRecommendationGroupPropertyLoadAdditionalContentURL;
  v5[4] = MPModelForYouRecommendationGroupPropertyHrefURL;
  v5[5] = MPModelForYouRecommendationGroupPropertyRefreshURL;
  v5[6] = MPModelForYouRecommendationGroupPropertyTraits;
  v5[7] = MPModelForYouRecommendationGroupPropertyDisplaysAsGridCellInCarPlay;
  v5[8] = MPModelForYouRecommendationGroupPropertyDisplaysAsTitledSectionWithRowsInCarPlay;
  v5[9] = MPModelForYouRecommendationGroupPropertyDecorations;
  v2 = [NSArray arrayWithObjects:v5 count:10];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)itemProperties
{
  v16[0] = MPModelForYouRecommendationItemPropertyItemType;
  v16[1] = MPModelForYouRecommendationItemPropertyReason;
  v16[2] = MPModelForYouRecommendationItemPropertyUtterance;
  v16[3] = MPModelForYouRecommendationGroupPropertyDisplaysAsGridCellInCarPlay;
  v16[4] = MPModelForYouRecommendationGroupPropertyDisplaysAsTitledSectionWithRowsInCarPlay;
  v3 = [NSArray arrayWithObjects:v16 count:5];
  albumProperties = [(MCDFuseDataSource *)self albumProperties];
  v15[0] = albumProperties;
  v14[1] = MPModelForYouRecommendationItemRelationshipPlaylist;
  playlistProperties = [(MCDFuseDataSource *)self playlistProperties];
  v15[1] = playlistProperties;
  v14[2] = MPModelForYouRecommendationItemRelationshipSubgroup;
  subgroupProperties = [(MCDForYouDataSource *)self subgroupProperties];
  v15[2] = subgroupProperties;
  v14[3] = MPModelForYouRecommendationItemRelationshipRadioStation;
  radioStationProperties = [(MCDFuseDataSource *)self radioStationProperties];
  v15[3] = radioStationProperties;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  v9 = [NSMutableDictionary dictionaryWithDictionary:v8];

  v10 = [MPPropertySet alloc];
  v11 = [v9 copy];
  v12 = [v10 initWithProperties:v3 relationships:v11];

  return v12;
}

@end