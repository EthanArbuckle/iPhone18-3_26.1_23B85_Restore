@interface VenueCategoryContentDownloader
- (VenueCategoryContentDownloader)initWithDelegate:(id)delegate venueAutoCompleteCategoryCardItem:(id)item;
- (VenueCategoryContentDownloader)initWithDelegate:(id)delegate venueCategoryCardItem:(id)item;
- (VenueCategoryContentDownloaderDelegate)delegate;
- (void)fetchVenueMapItemWithBusinessID:(unint64_t)d completion:(id)completion;
- (void)performSearchWithSearchCategory:(id)category subcategoriesType:(int)type filter:(id)filter shouldFrameMapViewport:(BOOL)viewport actionCoordination:(id)coordination;
- (void)performSearchWithVenueCategoryItem:(id)item actionCoordination:(id)coordination;
- (void)searchDidCancel;
- (void)searchDidFail;
- (void)searchDidReceiveAutoCompleteSubcategories:(id)subcategories;
- (void)searchDidReceiveEVChargerUpdates:(id)updates;
- (void)searchDidReceiveResults:(id)results;
- (void)searchWillStart;
@end

@implementation VenueCategoryContentDownloader

- (VenueCategoryContentDownloaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)searchDidReceiveAutoCompleteSubcategories:(id)subcategories
{
  firstObject = [subcategories firstObject];
  delegate = [(VenueCategoryContentDownloader *)self delegate];
  subcategories = [firstObject subcategories];
  [delegate venueCategoryContentDownloader:self didReceiveAutoCompleteSubcategories:subcategories subcategoriesType:{objc_msgSend(firstObject, "subCategoryType")}];
}

- (void)searchDidReceiveResults:(id)results
{
  resultsCopy = results;
  delegate = [(VenueCategoryContentDownloader *)self delegate];
  [delegate venueCategoryContentDownloader:self didReceiveSearchResults:resultsCopy shouldSwitchToBestFloor:{-[VenueCategoryContentDownloader currentSearchShouldFrameMapViewport](self, "currentSearchShouldFrameMapViewport")}];
}

- (void)searchDidReceiveEVChargerUpdates:(id)updates
{
  updatesCopy = updates;
  delegate = [(VenueCategoryContentDownloader *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VenueCategoryContentDownloader *)self delegate];
    [delegate2 venueDidReceiveEVChargerUpdates:updatesCopy];
  }
}

- (void)searchDidCancel
{
  delegate = [(VenueCategoryContentDownloader *)self delegate];
  [delegate venueCategoryContentDownloaderDidCancel:self];
}

- (void)searchDidFail
{
  delegate = [(VenueCategoryContentDownloader *)self delegate];
  [delegate venueCategoryContentDownloaderDidFail:self];
}

- (void)searchWillStart
{
  delegate = [(VenueCategoryContentDownloader *)self delegate];
  [delegate venueCategoryContentDownloaderDidStart:self];
}

- (void)performSearchWithVenueCategoryItem:(id)item actionCoordination:(id)coordination
{
  coordinationCopy = coordination;
  v10 = [SearchFieldItem searchFieldItemWithObject:item];
  delegate = [(VenueCategoryContentDownloader *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = delegate;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [coordinationCopy viewController:v9 doSearchItem:v10 withUserInfo:0];
}

- (void)performSearchWithSearchCategory:(id)category subcategoriesType:(int)type filter:(id)filter shouldFrameMapViewport:(BOOL)viewport actionCoordination:(id)coordination
{
  viewportCopy = viewport;
  categoryCopy = category;
  filterCopy = filter;
  coordinationCopy = coordination;
  mapItem = [(VenueCategoryContentDownloader *)self mapItem];

  if (mapItem)
  {
    [(VenueCategoryContentDownloader *)self setCurrentSearchShouldFrameMapViewport:viewportCopy];
    mapItem2 = [(VenueCategoryContentDownloader *)self mapItem];
    _venueInfo = [mapItem2 _venueInfo];
    venueIdentifier = [_venueInfo venueIdentifier];

    if (type == 2)
    {
      filterID = [filterCopy filterID];
      v19 = filterID;
      if (filterID)
      {
        v20 = filterID;
      }

      else
      {
        v20 = venueIdentifier;
      }

      v21 = v20;

      venueIdentifier = v21;
    }

    v22 = -[VenueCategoryItem initWithSearchCategory:venueIdentifier:displayMode:isAutoCompleteCategory:shouldFrameMapViewport:]([VenueCategoryItem alloc], "initWithSearchCategory:venueIdentifier:displayMode:isAutoCompleteCategory:shouldFrameMapViewport:", categoryCopy, venueIdentifier, [categoryCopy displayMode], 0, -[VenueCategoryContentDownloader currentSearchShouldFrameMapViewport](self, "currentSearchShouldFrameMapViewport"));
    [(VenueCategoryContentDownloader *)self performSearchWithVenueCategoryItem:v22 actionCoordination:coordinationCopy];
  }
}

- (void)fetchVenueMapItemWithBusinessID:(unint64_t)d completion:(id)completion
{
  completionCopy = completion;
  v6 = [MKMapItemIdentifier alloc];
  v7 = [v6 initWithMUID:d resultProviderID:0 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];
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
    v12 = completionCopy;
    [v10 submitWithHandler:v11 networkActivity:0];
  }
}

- (VenueCategoryContentDownloader)initWithDelegate:(id)delegate venueAutoCompleteCategoryCardItem:(id)item
{
  delegateCopy = delegate;
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = VenueCategoryContentDownloader;
  v8 = [(VenueCategoryContentDownloader *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    venueIdentifier = [itemCopy venueIdentifier];
    businessID = [venueIdentifier businessID];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100982AC8;
    v13[3] = &unk_101630438;
    v14 = v9;
    [(VenueCategoryContentDownloader *)v14 fetchVenueMapItemWithBusinessID:businessID completion:v13];
  }

  return v9;
}

- (VenueCategoryContentDownloader)initWithDelegate:(id)delegate venueCategoryCardItem:(id)item
{
  delegateCopy = delegate;
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = VenueCategoryContentDownloader;
  v8 = [(VenueCategoryContentDownloader *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    venueMapItem = [itemCopy venueMapItem];
    mapItem = v9->_mapItem;
    v9->_mapItem = venueMapItem;

    WeakRetained = objc_loadWeakRetained(&v9->_delegate);
    [WeakRetained venueCategoryContentDownloader:v9 didChangeMapItem:v9->_mapItem];
  }

  return v9;
}

@end