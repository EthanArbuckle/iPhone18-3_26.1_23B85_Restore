@interface UGCPhotoViewerDataSource
- (BOOL)hasDataToShow;
- (BOOL)hasReachedTotalCount;
- (BOOL)isAllowedToShowAddPhotosCallToAction;
- (BOOL)isSingleVendorThatHasPhotosNeedingObfuscation;
- (NSArray)currentPhotoList;
- (NSArray)currentVendorNameList;
- (UGCPhotoAlbumCategory)currentAlbumCategory;
- (UGCPhotoViewerDataProvider)currentDataProvider;
- (UGCPhotoViewerDataSource)initWithMapItem:(id)a3 delegate:(id)a4;
- (id)_dataProviderForAlbumIndex:(unint64_t)a3;
- (unint64_t)totalNumberOfPhotosForCurrentDataProvider;
- (void)_createDataSourceIfNeeded;
- (void)_initComingledVendorPhotos;
- (void)_initSingleVendorPhotos;
- (void)fetchNextBatchRequestIfNeeded;
- (void)photoViewerDataProvider:(id)a3 didUpdateWithPhotos:(id)a4;
- (void)photoViewerDataProvider:(id)a3 failedBatchRequestWithError:(id)a4 range:(_NSRange)a5;
- (void)setActive:(BOOL)a3;
- (void)setIndexOfTappedPhoto:(unint64_t)a3;
@end

@implementation UGCPhotoViewerDataSource

- (unint64_t)totalNumberOfPhotosForCurrentDataProvider
{
  v2 = [(UGCPhotoViewerDataSource *)self currentDataProvider];
  v3 = [v2 totalNumberOfPhotos];

  return v3;
}

- (BOOL)isSingleVendorThatHasPhotosNeedingObfuscation
{
  v3 = [(UGCPhotoViewerDataSource *)self currentDataProvider];
  v4 = [v3 hasPhotosThatShouldBeObfuscatedWhenInFullScreen];

  if (!v4)
  {
    return 0;
  }

  v5 = [(MKMapItem *)self->_mapItem _allPhotoAttributions];
  v6 = [v5 count] == 1;

  return v6;
}

- (BOOL)isAllowedToShowAddPhotosCallToAction
{
  v3 = [(UGCPhotoViewerDataSource *)self currentDataProvider];
  v4 = [v3 isAllowedToShowAddPhotoCallToAction];

  if (!v4)
  {
    return 0;
  }

  mapItem = self->_mapItem;

  return [MKPOIEnrichmentAvailibility shouldShowPhotosCallToActionForMapItem:mapItem];
}

- (BOOL)hasDataToShow
{
  v2 = [(UGCPhotoViewerDataSource *)self currentDataProvider];
  v3 = [v2 hasDataToShow];

  return v3;
}

- (void)photoViewerDataProvider:(id)a3 failedBatchRequestWithError:(id)a4 range:(_NSRange)a5
{
  v10 = a4;
  v7 = a3;
  v8 = [(UGCPhotoViewerDataSource *)self currentDataProvider];

  if (v8 == v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained photoViewerDataSourceDidUpdate:self withError:v10];
  }
}

- (void)photoViewerDataProvider:(id)a3 didUpdateWithPhotos:(id)a4
{
  v5 = a3;
  v6 = [(UGCPhotoViewerDataSource *)self currentDataProvider];

  if (v6 == v5)
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
  v2 = [(UGCPhotoViewerDataSource *)self currentDataProvider];
  v3 = [v2 attributionNames];

  return v3;
}

- (NSArray)currentPhotoList
{
  v2 = [(UGCPhotoViewerDataSource *)self currentDataProvider];
  v3 = [v2 photoList];

  return v3;
}

- (void)fetchNextBatchRequestIfNeeded
{
  if ([(UGCPhotoViewerDataSource *)self isActive])
  {
    v4 = [(UGCPhotoViewerDataSource *)self currentDataProvider];
    [v4 fetchNextBatchRequestIfNeeded];
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
  v2 = [(UGCPhotoViewerDataSource *)self currentDataProvider];
  v3 = [v2 hasReachedTotalCount];

  return v3;
}

- (void)setIndexOfTappedPhoto:(unint64_t)a3
{
  if (self->_indexOfTappedPhoto != a3)
  {
    self->_indexOfTappedPhoto = a3;
    v5 = [(NSMutableArray *)self->_dataProviders firstObject];
    [v5 setIndexOfTappedPhoto:a3];
  }
}

- (void)_initSingleVendorPhotos
{
  v3 = [(MKMapItem *)self->_mapItem _mapkit_resolvedFlatPhotoList];
  v4 = [v3 count];

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
    v12 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v13 = -[UGCPlaceDataPhotoListDataProvider initWitBatchRequester:initialCount:batchCount:totalCount:albumCategory:delegate:](v9, "initWitBatchRequester:initialCount:batchCount:totalCount:albumCategory:delegate:", v8, UInteger, v11, [v12 _totalPhotoCount], v14, self);

    [(NSMutableArray *)self->_dataProviders addObject:v13];
  }
}

- (void)_initComingledVendorPhotos
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v4 = [v3 _captionedPhotoAlbums];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
        v12 = [v9 categoryId];
        v13 = [(UGCPhotoViewerComingledBatchRequester *)v10 initWithMapItem:mapItem categoryId:v12];

        v14 = [v9 categoryName];
        v15 = [v14 length];

        v16 = [UGCPhotoAlbumCategory alloc];
        if (v15)
        {
          v17 = [v9 categoryName];
          v18 = [(UGCPhotoAlbumCategory *)v16 initWithTitle:v17 categoryType:1];
        }

        else
        {
          v17 = +[NSBundle mainBundle];
          v19 = [v17 localizedStringForKey:@"Other [More Photos]" value:@"localized string not found" table:0];
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

- (id)_dataProviderForAlbumIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_dataProviders count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_dataProviders objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (UGCPhotoAlbumCategory)currentAlbumCategory
{
  v2 = [(UGCPhotoViewerDataSource *)self _dataProviderForAlbumIndex:[(UGCPhotoViewerDataSource *)self albumIndex]];
  v3 = [v2 albumCategory];

  return v3;
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
      v9 = [(MKMapItem *)self->_mapItem _geoMapItem];
      v10 = [v9 _hasCaptionedPhotoAlbum];

      if (v10)
      {
        [(UGCPhotoViewerDataSource *)self _initComingledVendorPhotos];
      }

      else
      {
        [(UGCPhotoViewerDataSource *)self _initSingleVendorPhotos];
      }
    }

    indexOfTappedPhoto = self->_indexOfTappedPhoto;
    v12 = [(NSMutableArray *)self->_dataProviders firstObject];
    [v12 setIndexOfTappedPhoto:indexOfTappedPhoto];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
    {
      [(UGCPhotoViewerDataSource *)self _createDataSourceIfNeeded];
    }
  }
}

- (UGCPhotoViewerDataSource)initWithMapItem:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = UGCPhotoViewerDataSource;
  v9 = [(UGCPhotoViewerDataSource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapItem, a3);
    v10->_albumIndex = 0;
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

@end