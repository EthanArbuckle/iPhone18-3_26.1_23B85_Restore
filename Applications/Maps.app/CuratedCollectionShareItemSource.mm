@interface CuratedCollectionShareItemSource
- (CuratedCollectionShareItemSource)initWithPlaceCollection:(id)collection refinedMapItems:(id)items;
- (CuratedCollectionShareItemSource)initWithPublisher:(id)publisher;
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
  textProvider = [(CuratedCollectionShareItemSource *)self textProvider];
  urlProvider = [(CuratedCollectionShareItemSource *)self urlProvider];
  v8[1] = urlProvider;
  linkPresentationProvider = [(CuratedCollectionShareItemSource *)self linkPresentationProvider];
  v8[2] = linkPresentationProvider;
  v6 = [NSArray arrayWithObjects:v8 count:3];

  return v6;
}

- (CuratedCollectionShareItemSource)initWithPublisher:(id)publisher
{
  publisherCopy = publisher;
  v12.receiver = self;
  v12.super_class = CuratedCollectionShareItemSource;
  v5 = [(CuratedCollectionShareItemSource *)&v12 init];
  if (v5)
  {
    v6 = [[_TtC4Maps33CuratedGuidesActivityDataProvider alloc] initWithPublisher:publisherCopy];
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

- (CuratedCollectionShareItemSource)initWithPlaceCollection:(id)collection refinedMapItems:(id)items
{
  collectionCopy = collection;
  itemsCopy = items;
  v15.receiver = self;
  v15.super_class = CuratedCollectionShareItemSource;
  v8 = [(CuratedCollectionShareItemSource *)&v15 init];
  if (v8)
  {
    v9 = [[_TtC4Maps33CuratedGuidesActivityDataProvider alloc] initWithCuratedGuide:collectionCopy mapItems:itemsCopy];
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