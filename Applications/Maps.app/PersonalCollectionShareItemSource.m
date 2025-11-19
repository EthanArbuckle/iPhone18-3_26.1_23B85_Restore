@interface PersonalCollectionShareItemSource
- (NSArray)activityProviders;
- (NSArray)excludedActivityTypes;
- (PersonalCollectionShareItemSource)initWithCollectionHandlerInfo:(id)a3;
@end

@implementation PersonalCollectionShareItemSource

- (NSArray)excludedActivityTypes
{
  v4 = UIActivityTypeAddToReadingList;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (NSArray)activityProviders
{
  v3 = [(PersonalCollectionShareItemSource *)self textProvider];
  v4 = [(PersonalCollectionShareItemSource *)self urlProvider];
  v8[1] = v4;
  v5 = [(PersonalCollectionShareItemSource *)self linkPresentationProvider];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (PersonalCollectionShareItemSource)initWithCollectionHandlerInfo:(id)a3
{
  v4 = a3;
  if ([v4 canShare])
  {
    v15.receiver = self;
    v15.super_class = PersonalCollectionShareItemSource;
    v5 = [(PersonalCollectionShareItemSource *)&v15 init];
    if (v5)
    {
      v6 = [[_TtC4Maps30UserGuidesActivityDataProvider alloc] initWithUserGuide:v4];
      [(PersonalCollectionShareItemSource *)v5 setDataProvider:v6];

      v7 = [(PersonalCollectionShareItemSource *)v5 dataProvider];
      v8 = [MUTextActivityProvider activityProviderFromDataProvider:v7];
      [(PersonalCollectionShareItemSource *)v5 setTextProvider:v8];

      v9 = [(PersonalCollectionShareItemSource *)v5 dataProvider];
      v10 = [MUURLActivityProvider activityProviderFromDataProvider:v9];
      [(PersonalCollectionShareItemSource *)v5 setUrlProvider:v10];

      v11 = [(PersonalCollectionShareItemSource *)v5 dataProvider];
      v12 = [MULinkMetadataActivityProvider activityProviderFromDataProvider:v11];
      [(PersonalCollectionShareItemSource *)v5 setLinkPresentationProvider:v12];
    }

    self = v5;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end