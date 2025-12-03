@interface PersonalCollectionShareItemSource
- (NSArray)activityProviders;
- (NSArray)excludedActivityTypes;
- (PersonalCollectionShareItemSource)initWithCollectionHandlerInfo:(id)info;
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
  textProvider = [(PersonalCollectionShareItemSource *)self textProvider];
  urlProvider = [(PersonalCollectionShareItemSource *)self urlProvider];
  v8[1] = urlProvider;
  linkPresentationProvider = [(PersonalCollectionShareItemSource *)self linkPresentationProvider];
  v8[2] = linkPresentationProvider;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (PersonalCollectionShareItemSource)initWithCollectionHandlerInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy canShare])
  {
    v15.receiver = self;
    v15.super_class = PersonalCollectionShareItemSource;
    v5 = [(PersonalCollectionShareItemSource *)&v15 init];
    if (v5)
    {
      v6 = [[_TtC4Maps30UserGuidesActivityDataProvider alloc] initWithUserGuide:infoCopy];
      [(PersonalCollectionShareItemSource *)v5 setDataProvider:v6];

      dataProvider = [(PersonalCollectionShareItemSource *)v5 dataProvider];
      v8 = [MUTextActivityProvider activityProviderFromDataProvider:dataProvider];
      [(PersonalCollectionShareItemSource *)v5 setTextProvider:v8];

      dataProvider2 = [(PersonalCollectionShareItemSource *)v5 dataProvider];
      v10 = [MUURLActivityProvider activityProviderFromDataProvider:dataProvider2];
      [(PersonalCollectionShareItemSource *)v5 setUrlProvider:v10];

      dataProvider3 = [(PersonalCollectionShareItemSource *)v5 dataProvider];
      v12 = [MULinkMetadataActivityProvider activityProviderFromDataProvider:dataProvider3];
      [(PersonalCollectionShareItemSource *)v5 setLinkPresentationProvider:v12];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end