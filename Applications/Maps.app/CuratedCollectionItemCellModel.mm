@interface CuratedCollectionItemCellModel
- (BOOL)hasImage;
- (BOOL)isItemInLibrary;
- (CuratedCollectionItemCellModel)initWithMKPlaceCollectionMapItem:(id)item usingAttribution:(id)attribution itemDescription:(id)description itemInUserCollection:(BOOL)collection libraryOperationsCoordinator:(id)coordinator appClip:(id)clip;
- (CuratedCollectionPlaceSummaryViewModel)placeSummaryModel;
- (NSAttributedString)fullReviewString;
- (NSString)imageAttribution;
- (id)_collectionItemImage;
- (void)cancelImageDownload;
- (void)loadImageForSize:(CGSize)size completion:(id)completion;
@end

@implementation CuratedCollectionItemCellModel

- (BOOL)isItemInLibrary
{
  libraryOperationsCoordinator = [(CuratedCollectionItemCellModel *)self libraryOperationsCoordinator];
  isPlaceInLibrary = [libraryOperationsCoordinator isPlaceInLibrary];

  return isPlaceInLibrary;
}

- (id)_collectionItemImage
{
  collectionItem = [(CuratedCollectionItemCellModel *)self collectionItem];
  placeCollectionItem = [collectionItem placeCollectionItem];
  photos = [placeCollectionItem photos];
  firstObject = [photos firstObject];

  if (!firstObject)
  {
    collectionItem2 = [(CuratedCollectionItemCellModel *)self collectionItem];
    placeCollectionItem2 = [collectionItem2 placeCollectionItem];
    supportsPhotoFallback = [placeCollectionItem2 supportsPhotoFallback];

    if (supportsPhotoFallback)
    {
      collectionItem3 = [(CuratedCollectionItemCellModel *)self collectionItem];
      mapItem = [collectionItem3 mapItem];
      _geoMapItem = [mapItem _geoMapItem];
      _photos = [_geoMapItem _photos];
      firstObject = [_photos firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

- (NSString)imageAttribution
{
  collectionItem = [(CuratedCollectionItemCellModel *)self collectionItem];
  placeCollectionItem = [collectionItem placeCollectionItem];
  photos = [placeCollectionItem photos];
  firstObject = [photos firstObject];

  if (firstObject)
  {
    author = [firstObject author];
    goto LABEL_10;
  }

  collectionItem2 = [(CuratedCollectionItemCellModel *)self collectionItem];
  placeCollectionItem2 = [collectionItem2 placeCollectionItem];
  supportsPhotoFallback = [placeCollectionItem2 supportsPhotoFallback];

  if (supportsPhotoFallback)
  {
    collectionItem3 = [(CuratedCollectionItemCellModel *)self collectionItem];
    mapItem = [collectionItem3 mapItem];
    _geoMapItem = [mapItem _geoMapItem];
    _photos = [_geoMapItem _photos];
    firstObject = [_photos firstObject];

    if (firstObject)
    {
      attribution = [firstObject attribution];
      shouldSuppressPhotoAttribution = [attribution shouldSuppressPhotoAttribution];

      if ((shouldSuppressPhotoAttribution & 1) == 0)
      {
        attribution2 = [firstObject attribution];
        providerName = [attribution2 providerName];

        if ([providerName length])
        {
          v19 = +[NSBundle mainBundle];
          v20 = [v19 localizedStringForKey:@"Photo from [provider]" value:@"localized string not found" table:0];
          author = [NSString stringWithFormat:v20, providerName];

          goto LABEL_10;
        }
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  author = 0;
LABEL_10:

  return author;
}

- (void)cancelImageDownload
{
  v5 = +[MKAppImageManager sharedImageManager];
  photoInfo = [(CuratedCollectionItemCellModel *)self photoInfo];
  v4 = [photoInfo url];
  [v5 cancelLoadAppImageAtURL:v4];
}

- (void)loadImageForSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  v8 = +[MKSystemController sharedInstance];
  [v8 screenScale];
  v10 = v9;

  _collectionItemImage = [(CuratedCollectionItemCellModel *)self _collectionItemImage];
  v12 = [_collectionItemImage bestPhotoForSize:1 allowSmaller:{v10 * width, v10 * height}];
  [(CuratedCollectionItemCellModel *)self setPhotoInfo:v12];

  v13 = +[MKAppImageManager sharedImageManager];
  photoInfo = [(CuratedCollectionItemCellModel *)self photoInfo];
  v15 = [photoInfo url];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100BE40BC;
  v17[3] = &unk_101650190;
  v18 = completionCopy;
  v16 = completionCopy;
  [v13 loadAppImageAtURL:v15 completionHandler:v17];
}

- (BOOL)hasImage
{
  _collectionItemImage = [(CuratedCollectionItemCellModel *)self _collectionItemImage];
  v3 = _collectionItemImage != 0;

  return v3;
}

- (CuratedCollectionPlaceSummaryViewModel)placeSummaryModel
{
  if (!self->_placeSummaryModel)
  {
    v3 = [CuratedCollectionPlaceSummaryViewModel alloc];
    collectionItem = [(CuratedCollectionItemCellModel *)self collectionItem];
    mapItem = [collectionItem mapItem];
    v6 = [(CuratedCollectionPlaceSummaryViewModel *)v3 initWithMapItem:mapItem];
    placeSummaryModel = self->_placeSummaryModel;
    self->_placeSummaryModel = v6;
  }

  currentLocation = [(CuratedCollectionItemCellModel *)self currentLocation];
  [(CuratedCollectionPlaceSummaryViewModel *)self->_placeSummaryModel setCurrentLocation:currentLocation];

  v9 = self->_placeSummaryModel;

  return v9;
}

- (NSAttributedString)fullReviewString
{
  collectionItem = [(CuratedCollectionItemCellModel *)self collectionItem];
  placeCollectionItem = [collectionItem placeCollectionItem];
  reviewUrl = [placeCollectionItem reviewUrl];

  if (reviewUrl)
  {
    collectionItem2 = [(CuratedCollectionItemCellModel *)self collectionItem];
    placeCollectionItem2 = [collectionItem2 placeCollectionItem];
    reviewText = [placeCollectionItem2 reviewText];

    if (![reviewText length])
    {
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"[Curated Collection View] Read review text" value:@"localized string not found" table:0];

      reviewText = v10;
    }

    v11 = [[NSMutableAttributedString alloc] initWithString:reviewText];
    v16 = NSFontAttributeName;
    v12 = +[UIFont system15];
    v17 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v11 addAttributes:v13 range:{0, objc_msgSend(reviewText, "length")}];

    [v11 addAttribute:NSLinkAttributeName value:reviewUrl range:{0, objc_msgSend(reviewText, "length")}];
    v14 = [v11 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CuratedCollectionItemCellModel)initWithMKPlaceCollectionMapItem:(id)item usingAttribution:(id)attribution itemDescription:(id)description itemInUserCollection:(BOOL)collection libraryOperationsCoordinator:(id)coordinator appClip:(id)clip
{
  itemCopy = item;
  attributionCopy = attribution;
  descriptionCopy = description;
  coordinatorCopy = coordinator;
  clipCopy = clip;
  v25.receiver = self;
  v25.super_class = CuratedCollectionItemCellModel;
  v19 = [(CuratedCollectionItemCellModel *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_collectionItem, item);
    objc_storeStrong(&v20->_attribution, attribution);
    v21 = [descriptionCopy copy];
    itemDescription = v20->_itemDescription;
    v20->_itemDescription = v21;

    v20->_isItemInUserCollection = collection;
    objc_storeStrong(&v20->_libraryOperationsCoordinator, coordinator);
    objc_storeStrong(&v20->_appClip, clip);
  }

  return v20;
}

@end