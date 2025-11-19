@interface CuratedCollectionShareItemSource
- (CuratedCollectionShareItemSource)initWithPlaceCollection:(id)a3 refinedMapItems:(id)a4;
- (CuratedCollectionShareItemSource)initWithPublisher:(id)a3;
- (NSArray)activityProviders;
- (NSArray)excludedActivityTypes;
@end

@implementation CuratedCollectionShareItemSource

- (NSArray)excludedActivityTypes
{
  v4 = UIActivityTypeAddToReadingList;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (NSArray)activityProviders
{
  v3 = [(CuratedCollectionShareItemSource *)self textProvider];
  v4 = [(CuratedCollectionShareItemSource *)self urlProvider];
  v8[1] = v4;
  v5 = [(CuratedCollectionShareItemSource *)self linkPresentationProvider];
  v8[2] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (CuratedCollectionShareItemSource)initWithPublisher:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CuratedCollectionShareItemSource;
  v5 = [(CuratedCollectionShareItemSource *)&v12 init];
  if (v5)
  {
    v6 = [[_TtC4Maps33CuratedGuidesActivityDataProvider alloc] initWithPublisher:v4];
    dataProvider = v5->_dataProvider;
    v5->_dataProvider = v6;

    v8 = [MUTextActivityProvider activityProviderFromDataProvider:v5->_dataProvider];
    [(CuratedCollectionShareItemSource *)v5 setTextProvider:v8];

    v9 = [MUURLActivityProvider activityProviderFromDataProvider:v5->_dataProvider];
    [(CuratedCollectionShareItemSource *)v5 setUrlProvider:v9];

    v10 = [MULinkMetadataActivityProvider activityProviderFromDataProvider:v5->_dataProvider];
    [(CuratedCollectionShareItemSource *)v5 setLinkPresentationProvider:v10];
  }

  return v5;
}

- (CuratedCollectionShareItemSource)initWithPlaceCollection:(id)a3 refinedMapItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CuratedCollectionShareItemSource;
  v8 = [(CuratedCollectionShareItemSource *)&v15 init];
  if (v8)
  {
    v9 = [[_TtC4Maps33CuratedGuidesActivityDataProvider alloc] initWithCuratedGuide:v6 mapItems:v7];
    dataProvider = v8->_dataProvider;
    v8->_dataProvider = v9;

    v11 = [MUTextActivityProvider activityProviderFromDataProvider:v8->_dataProvider];
    [(CuratedCollectionShareItemSource *)v8 setTextProvider:v11];

    v12 = [MUURLActivityProvider activityProviderFromDataProvider:v8->_dataProvider];
    [(CuratedCollectionShareItemSource *)v8 setUrlProvider:v12];

    v13 = [MULinkMetadataActivityProvider activityProviderFromDataProvider:v8->_dataProvider];
    [(CuratedCollectionShareItemSource *)v8 setLinkPresentationProvider:v13];
  }

  return v8;
}

@end