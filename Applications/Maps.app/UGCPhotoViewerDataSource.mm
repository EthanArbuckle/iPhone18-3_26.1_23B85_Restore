@interface UGCPhotoViewerDataSource
- (BOOL)hasDataToShow;
- (BOOL)hasReachedTotalCount;
- (BOOL)isAllowedToShowAddPhotosCallToAction;
- (BOOL)isSingleVendorThatHasPhotosNeedingObfuscation;
- (NSArray)currentPhotoList;
- (NSArray)currentVendorNameList;
- (UGCPhotoAlbumCategory)currentAlbumCategory;
- (UGCPhotoViewerDataProvider)currentDataProvider;
- (UGCPhotoViewerDataSource)initWithMapItem:(id)item delegate:(id)delegate;
- (id)_dataProviderForAlbumIndex:(unint64_t)index;
- (unint64_t)totalNumberOfPhotosForCurrentDataProvider;
- (void)_createDataSourceIfNeeded;
- (void)_initComingledVendorPhotos;
- (void)_initSingleVendorPhotos;
- (void)fetchNextBatchRequestIfNeeded;
- (void)photoViewerDataProvider:(id)provider didUpdateWithPhotos:(id)photos;
- (void)photoViewerDataProvider:(id)provider failedBatchRequestWithError:(id)error range:(_NSRange)range;
- (void)setActive:(BOOL)active;
- (void)setIndexOfTappedPhoto:(unint64_t)photo;
@end

@implementation UGCPhotoViewerDataSource

- (unint64_t)totalNumberOfPhotosForCurrentDataProvider
{
  currentDataProvider = [(UGCPhotoViewerDataSource *)self currentDataProvider];
  totalNumberOfPhotos = [currentDataProvider totalNumberOfPhotos];

  return totalNumberOfPhotos;
}

- (BOOL)isSingleVendorThatHasPhotosNeedingObfuscation
{
  currentDataProvider = [(UGCPhotoViewerDataSource *)self currentDataProvider];
  hasPhotosThatShouldBeObfuscatedWhenInFullScreen = [currentDataProvider hasPhotosThatShouldBeObfuscatedWhenInFullScreen];

  if (!hasPhotosThatShouldBeObfuscatedWhenInFullScreen)
  {
    return 0;
  }

  _allPhotoAttributions = [(MKMapItem *)self->_mapItem _allPhotoAttributions];
  v6 = [_allPhotoAttributions count] == 1;

  return v6;
}

- (BOOL)isAllowedToShowAddPhotosCallToAction
{
  currentDataProvider = [(UGCPhotoViewerDataSource *)self currentDataProvider];
  isAllowedToShowAddPhotoCallToAction = [currentDataProvider isAllowedToShowAddPhotoCallToAction];

  if (!isAllowedToShowAddPhotoCallToAction)
  {
    return 0;
  }

  mapItem = self->_mapItem;

  return [MKPOIEnrichmentAvailibility shouldShowPhotosCallToActionForMapItem:mapItem];
}

- (BOOL)hasDataToShow
{
  currentDataProvider = [(UGCPhotoViewerDataSource *)self currentDataProvider];
  hasDataToShow = [currentDataProvider hasDataToShow];

  return hasDataToShow;
}

- (void)photoViewerDataProvider:(id)provider failedBatchRequestWithError:(id)error range:(_NSRange)range
{
  errorCopy = error;
  providerCopy = provider;
  currentDataProvider = [(UGCPhotoViewerDataSource *)self currentDataProvider];

  if (currentDataProvider == providerCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained photoViewerDataSourceDidUpdate:self withError:errorCopy];
  }
}

- (void)photoViewerDataProvider:(id)provider didUpdateWithPhotos:(id)photos
{
  providerCopy = provider;
  currentDataProvider = [(UGCPhotoViewerDataSource *)self currentDataProvider];

  if (currentDataProvider == providerCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained photoViewerDataSourceDidUpdate:self];
  }
}

- (UGCPhotoViewerDataProvider)currentDataProvider
{
  albumIndex = self->_albumIndex;
  if (albumIndex >= [(NSMutableArray *)self->_dataProviders count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)self->_dataProviders objectAtIndexedSubscript:self->_albumIndex];
  }

  return v4;
}

- (NSArray)currentVendorNameList
{
  currentDataProvider = [(UGCPhotoViewerDataSource *)self currentDataProvider];
  attributionNames = [currentDataProvider attributionNames];

  return attributionNames;
}

- (NSArray)currentPhotoList
{
  currentDataProvider = [(UGCPhotoViewerDataSource *)self currentDataProvider];
  photoList = [currentDataProvider photoList];

  return photoList;
}

- (void)fetchNextBatchRequestIfNeeded
{
  if ([(UGCPhotoViewerDataSource *)self isActive])
  {
    currentDataProvider = [(UGCPhotoViewerDataSource *)self currentDataProvider];
    [currentDataProvider fetchNextBatchRequestIfNeeded];
  }

  else
  {
    v3 = sub_1007998B0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Trying to fetch the next request while it is not active", buf, 2u);
    }
  }
}

- (BOOL)hasReachedTotalCount
{
  currentDataProvider = [(UGCPhotoViewerDataSource *)self currentDataProvider];
  hasReachedTotalCount = [currentDataProvider hasReachedTotalCount];

  return hasReachedTotalCount;
}

- (void)setIndexOfTappedPhoto:(unint64_t)photo
{
  if (self->_indexOfTappedPhoto != photo)
  {
    self->_indexOfTappedPhoto = photo;
    firstObject = [(NSMutableArray *)self->_dataProviders firstObject];
    [firstObject setIndexOfTappedPhoto:photo];
  }
}

- (void)_initSingleVendorPhotos
{
  _mapkit_resolvedFlatPhotoList = [(MKMapItem *)self->_mapItem _mapkit_resolvedFlatPhotoList];
  v4 = [_mapkit_resolvedFlatPhotoList count];

  if (v4)
  {
    v5 = [UGCPhotoAlbumCategory alloc];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Other [More Photos]" value:@"localized string not found" table:0];
    v14 = [(UGCPhotoAlbumCategory *)v5 initWithTitle:v7 categoryType:0];

    v8 = [[UGCPhotoViewerBatchRequester alloc] initWithMapItem:self->_mapItem];
    v9 = [UGCPlaceDataPhotoListDataProvider alloc];
    UInteger = GEOConfigGetUInteger();
    v11 = GEOConfigGetUInteger();
    _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
    v13 = -[UGCPlaceDataPhotoListDataProvider initWitBatchRequester:initialCount:batchCount:totalCount:albumCategory:delegate:](v9, "initWitBatchRequester:initialCount:batchCount:totalCount:albumCategory:delegate:", v8, UInteger, v11, [_geoMapItem _totalPhotoCount], v14, self);

    [(NSMutableArray *)self->_dataProviders addObject:v13];
  }
}

- (void)_initComingledVendorPhotos
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  _captionedPhotoAlbums = [_geoMapItem _captionedPhotoAlbums];

  obj = _captionedPhotoAlbums;
  v5 = [_captionedPhotoAlbums countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v10 = [UGCPhotoViewerComingledBatchRequester alloc];
        mapItem = self->_mapItem;
        categoryId = [v9 categoryId];
        v13 = [(UGCPhotoViewerComingledBatchRequester *)v10 initWithMapItem:mapItem categoryId:categoryId];

        categoryName = [v9 categoryName];
        v15 = [categoryName length];

        v16 = [UGCPhotoAlbumCategory alloc];
        if (v15)
        {
          categoryName2 = [v9 categoryName];
          v18 = [(UGCPhotoAlbumCategory *)v16 initWithTitle:categoryName2 categoryType:1];
        }

        else
        {
          categoryName2 = +[NSBundle mainBundle];
          v19 = [categoryName2 localizedStringForKey:@"Other [More Photos]" value:@"localized string not found" table:0];
          v18 = [(UGCPhotoAlbumCategory *)v16 initWithTitle:v19 categoryType:0];
        }

        if ([v9 totalNumberOfPhotosAvailable])
        {
          v20 = [UGCPlaceDataPhotoListDataProvider alloc];
          UInteger = GEOConfigGetUInteger();
          v22 = -[UGCPlaceDataPhotoListDataProvider initWitBatchRequester:initialCount:batchCount:totalCount:albumCategory:delegate:](v20, "initWitBatchRequester:initialCount:batchCount:totalCount:albumCategory:delegate:", v13, UInteger, GEOConfigGetUInteger(), [v9 totalNumberOfPhotosAvailable], v18, self);
          [(NSMutableArray *)self->_dataProviders addObject:v22];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }
}

- (id)_dataProviderForAlbumIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_dataProviders count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_dataProviders objectAtIndexedSubscript:index];
  }

  return v5;
}

- (UGCPhotoAlbumCategory)currentAlbumCategory
{
  v2 = [(UGCPhotoViewerDataSource *)self _dataProviderForAlbumIndex:[(UGCPhotoViewerDataSource *)self albumIndex]];
  albumCategory = [v2 albumCategory];

  return albumCategory;
}

- (void)_createDataSourceIfNeeded
{
  if (!self->_dataProviders)
  {
    v4 = objc_alloc_init(NSMutableArray);
    dataProviders = self->_dataProviders;
    self->_dataProviders = v4;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = [WeakRetained userUploadDataProviderForDataSource:self];

    if (v13)
    {
      if ([v13 hasUserUploadedImages])
      {
        v7 = [[UGCUserUploadedPhotoDataProvider alloc] initWithLookupResult:v13 delegate:self];
        userUploadDataProvider = self->_userUploadDataProvider;
        self->_userUploadDataProvider = v7;

        if (self->_userUploadDataProvider)
        {
          [(NSMutableArray *)self->_dataProviders addObject:?];
        }
      }
    }

    if ([(MKMapItem *)self->_mapItem _mapkit_supportsFullScreenExperience])
    {
      _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
      _hasCaptionedPhotoAlbum = [_geoMapItem _hasCaptionedPhotoAlbum];

      if (_hasCaptionedPhotoAlbum)
      {
        [(UGCPhotoViewerDataSource *)self _initComingledVendorPhotos];
      }

      else
      {
        [(UGCPhotoViewerDataSource *)self _initSingleVendorPhotos];
      }
    }

    indexOfTappedPhoto = self->_indexOfTappedPhoto;
    firstObject = [(NSMutableArray *)self->_dataProviders firstObject];
    [firstObject setIndexOfTappedPhoto:indexOfTappedPhoto];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      [(UGCPhotoViewerDataSource *)self _createDataSourceIfNeeded];
    }
  }
}

- (UGCPhotoViewerDataSource)initWithMapItem:(id)item delegate:(id)delegate
{
  itemCopy = item;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = UGCPhotoViewerDataSource;
  v9 = [(UGCPhotoViewerDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapItem, item);
    v10->_albumIndex = 0;
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

@end