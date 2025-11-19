@interface VenueCategoryContentDownloader
- (VenueCategoryContentDownloader)initWithDelegate:(id)a3 venueAutoCompleteCategoryCardItem:(id)a4;
- (VenueCategoryContentDownloader)initWithDelegate:(id)a3 venueCategoryCardItem:(id)a4;
- (VenueCategoryContentDownloaderDelegate)delegate;
- (void)fetchVenueMapItemWithBusinessID:(unint64_t)a3 completion:(id)a4;
- (void)performSearchWithSearchCategory:(id)a3 subcategoriesType:(int)a4 filter:(id)a5 shouldFrameMapViewport:(BOOL)a6 actionCoordination:(id)a7;
- (void)performSearchWithVenueCategoryItem:(id)a3 actionCoordination:(id)a4;
- (void)searchDidCancel;
- (void)searchDidFail;
- (void)searchDidReceiveAutoCompleteSubcategories:(id)a3;
- (void)searchDidReceiveEVChargerUpdates:(id)a3;
- (void)searchDidReceiveResults:(id)a3;
- (void)searchWillStart;
@end

@implementation VenueCategoryContentDownloader

- (VenueCategoryContentDownloaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)searchDidReceiveAutoCompleteSubcategories:(id)a3
{
  v6 = [a3 firstObject];
  v4 = [(VenueCategoryContentDownloader *)self delegate];
  v5 = [v6 subcategories];
  [v4 venueCategoryContentDownloader:self didReceiveAutoCompleteSubcategories:v5 subcategoriesType:{objc_msgSend(v6, "subCategoryType")}];
}

- (void)searchDidReceiveResults:(id)a3
{
  v4 = a3;
  v5 = [(VenueCategoryContentDownloader *)self delegate];
  [v5 venueCategoryContentDownloader:self didReceiveSearchResults:v4 shouldSwitchToBestFloor:{-[VenueCategoryContentDownloader currentSearchShouldFrameMapViewport](self, "currentSearchShouldFrameMapViewport")}];
}

- (void)searchDidReceiveEVChargerUpdates:(id)a3
{
  v7 = a3;
  v4 = [(VenueCategoryContentDownloader *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VenueCategoryContentDownloader *)self delegate];
    [v6 venueDidReceiveEVChargerUpdates:v7];
  }
}

- (void)searchDidCancel
{
  v3 = [(VenueCategoryContentDownloader *)self delegate];
  [v3 venueCategoryContentDownloaderDidCancel:self];
}

- (void)searchDidFail
{
  v3 = [(VenueCategoryContentDownloader *)self delegate];
  [v3 venueCategoryContentDownloaderDidFail:self];
}

- (void)searchWillStart
{
  v3 = [(VenueCategoryContentDownloader *)self delegate];
  [v3 venueCategoryContentDownloaderDidStart:self];
}

- (void)performSearchWithVenueCategoryItem:(id)a3 actionCoordination:(id)a4
{
  v6 = a4;
  v10 = [SearchFieldItem searchFieldItemWithObject:a3];
  v7 = [(VenueCategoryContentDownloader *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v6 viewController:v9 doSearchItem:v10 withUserInfo:0];
}

- (void)performSearchWithSearchCategory:(id)a3 subcategoriesType:(int)a4 filter:(id)a5 shouldFrameMapViewport:(BOOL)a6 actionCoordination:(id)a7
{
  v8 = a6;
  v23 = a3;
  v12 = a5;
  v13 = a7;
  v14 = [(VenueCategoryContentDownloader *)self mapItem];

  if (v14)
  {
    [(VenueCategoryContentDownloader *)self setCurrentSearchShouldFrameMapViewport:v8];
    v15 = [(VenueCategoryContentDownloader *)self mapItem];
    v16 = [v15 _venueInfo];
    v17 = [v16 venueIdentifier];

    if (a4 == 2)
    {
      v18 = [v12 filterID];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v17;
      }

      v21 = v20;

      v17 = v21;
    }

    v22 = -[VenueCategoryItem initWithSearchCategory:venueIdentifier:displayMode:isAutoCompleteCategory:shouldFrameMapViewport:]([VenueCategoryItem alloc], "initWithSearchCategory:venueIdentifier:displayMode:isAutoCompleteCategory:shouldFrameMapViewport:", v23, v17, [v23 displayMode], 0, -[VenueCategoryContentDownloader currentSearchShouldFrameMapViewport](self, "currentSearchShouldFrameMapViewport"));
    [(VenueCategoryContentDownloader *)self performSearchWithVenueCategoryItem:v22 actionCoordination:v13];
  }
}

- (void)fetchVenueMapItemWithBusinessID:(unint64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [MKMapItemIdentifier alloc];
  v7 = [v6 initWithMUID:a3 resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
  if (v7)
  {
    v8 = +[MKMapService sharedService];
    v13 = v7;
    v9 = [NSArray arrayWithObjects:&v13 count:1];
    v10 = [v8 ticketForIdentifiers:v9 traits:0];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100982930;
    v11[3] = &unk_10165EB78;
    v12 = v5;
    [v10 submitWithHandler:v11 networkActivity:0];
  }
}

- (VenueCategoryContentDownloader)initWithDelegate:(id)a3 venueAutoCompleteCategoryCardItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = VenueCategoryContentDownloader;
  v8 = [(VenueCategoryContentDownloader *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = [v7 venueIdentifier];
    v11 = [v10 businessID];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100982AC8;
    v13[3] = &unk_101630438;
    v14 = v9;
    [(VenueCategoryContentDownloader *)v14 fetchVenueMapItemWithBusinessID:v11 completion:v13];
  }

  return v9;
}

- (VenueCategoryContentDownloader)initWithDelegate:(id)a3 venueCategoryCardItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VenueCategoryContentDownloader;
  v8 = [(VenueCategoryContentDownloader *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    v10 = [v7 venueMapItem];
    mapItem = v9->_mapItem;
    v9->_mapItem = v10;

    WeakRetained = objc_loadWeakRetained(&v9->_delegate);
    [WeakRetained venueCategoryContentDownloader:v9 didChangeMapItem:v9->_mapItem];
  }

  return v9;
}

@end