@interface MCDBrowseDataSource
- (MCDBrowseDataSource)initWithParentSection:(id)section;
- (id)itemProperties;
- (id)sectionProperties;
@end

@implementation MCDBrowseDataSource

- (MCDBrowseDataSource)initWithParentSection:(id)section
{
  sectionCopy = section;
  v9.receiver = self;
  v9.super_class = MCDBrowseDataSource;
  v6 = [(MCDBrowseDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_section, section);
  }

  return v7;
}

- (id)sectionProperties
{
  v5[0] = MPModelStoreBrowseSectionPropertyTitle;
  v5[1] = MPModelStoreBrowseSectionPropertyType;
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)itemProperties
{
  v3 = [MPPropertySet alloc];
  v15 = MPModelStoreBrowseContentItemPropertyItemType;
  v4 = [NSArray arrayWithObjects:&v15 count:1];
  albumProperties = [(MCDFuseDataSource *)self albumProperties];
  v14[0] = albumProperties;
  v13[1] = MPModelStoreBrowseContentItemRelationshipCurator;
  curatorProperties = [(MCDFuseDataSource *)self curatorProperties];
  v14[1] = curatorProperties;
  v13[2] = MPModelStoreBrowseContentItemRelationshipPlaylist;
  playlistProperties = [(MCDFuseDataSource *)self playlistProperties];
  v14[2] = playlistProperties;
  v13[3] = MPModelStoreBrowseContentItemRelationshipRadioStation;
  radioStationProperties = [(MCDFuseDataSource *)self radioStationProperties];
  v14[3] = radioStationProperties;
  v13[4] = MPModelStoreBrowseContentItemRelationshipSong;
  songProperties = [(MCDFuseDataSource *)self songProperties];
  v14[4] = songProperties;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:5];
  v11 = [v3 initWithProperties:v4 relationships:v10];

  return v11;
}

@end