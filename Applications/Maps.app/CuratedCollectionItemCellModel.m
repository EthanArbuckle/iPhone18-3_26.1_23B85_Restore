@interface CuratedCollectionItemCellModel
- (BOOL)hasImage;
- (BOOL)isItemInLibrary;
- (CuratedCollectionItemCellModel)initWithMKPlaceCollectionMapItem:(id)a3 usingAttribution:(id)a4 itemDescription:(id)a5 itemInUserCollection:(BOOL)a6 libraryOperationsCoordinator:(id)a7 appClip:(id)a8;
- (CuratedCollectionPlaceSummaryViewModel)placeSummaryModel;
- (NSAttributedString)fullReviewString;
- (NSString)imageAttribution;
- (id)_collectionItemImage;
- (void)cancelImageDownload;
- (void)loadImageForSize:(CGSize)a3 completion:(id)a4;
@end

@implementation CuratedCollectionItemCellModel

- (BOOL)isItemInLibrary
{
  v2 = [(CuratedCollectionItemCellModel *)self libraryOperationsCoordinator];
  v3 = [v2 isPlaceInLibrary];

  return v3;
}

- (id)_collectionItemImage
{
  v3 = [(CuratedCollectionItemCellModel *)self collectionItem];
  v4 = [v3 placeCollectionItem];
  v5 = [v4 photos];
  v6 = [v5 firstObject];

  if (!v6)
  {
    v7 = [(CuratedCollectionItemCellModel *)self collectionItem];
    v8 = [v7 placeCollectionItem];
    v9 = [v8 supportsPhotoFallback];

    if (v9)
    {
      v10 = [(CuratedCollectionItemCellModel *)self collectionItem];
      v11 = [v10 mapItem];
      v12 = [v11 _geoMapItem];
      v13 = [v12 _photos];
      v6 = [v13 firstObject];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)imageAttribution
{
  v3 = [(CuratedCollectionItemCellModel *)self collectionItem];
  v4 = [v3 placeCollectionItem];
  v5 = [v4 photos];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = [v6 author];
    goto LABEL_10;
  }

  v8 = [(CuratedCollectionItemCellModel *)self collectionItem];
  v9 = [v8 placeCollectionItem];
  v10 = [v9 supportsPhotoFallback];

  if (v10)
  {
    v11 = [(CuratedCollectionItemCellModel *)self collectionItem];
    v12 = [v11 mapItem];
    v13 = [v12 _geoMapItem];
    v14 = [v13 _photos];
    v6 = [v14 firstObject];

    if (v6)
    {
      v15 = [v6 attribution];
      v16 = [v15 shouldSuppressPhotoAttribution];

      if ((v16 & 1) == 0)
      {
        v17 = [v6 attribution];
        v18 = [v17 providerName];

        if ([v18 length])
        {
          v19 = +[NSBundle mainBundle];
          v20 = [v19 localizedStringForKey:@"Photo from [provider]" value:@"localized string not found" table:0];
          v7 = [NSString stringWithFormat:v20, v18];

          goto LABEL_10;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (void)cancelImageDownload
{
  v5 = +[MKAppImageManager sharedImageManager];
  v3 = [(CuratedCollectionItemCellModel *)self photoInfo];
  v4 = [v3 url];
  [v5 cancelLoadAppImageAtURL:v4];
}

- (void)loadImageForSize:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = +[MKSystemController sharedInstance];
  [v8 screenScale];
  v10 = v9;

  v11 = [(CuratedCollectionItemCellModel *)self _collectionItemImage];
  v12 = [v11 bestPhotoForSize:1 allowSmaller:{v10 * width, v10 * height}];
  [(CuratedCollectionItemCellModel *)self setPhotoInfo:v12];

  v13 = +[MKAppImageManager sharedImageManager];
  v14 = [(CuratedCollectionItemCellModel *)self photoInfo];
  v15 = [v14 url];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100BE40BC;
  v17[3] = &unk_101650190;
  v18 = v7;
  v16 = v7;
  [v13 loadAppImageAtURL:v15 completionHandler:v17];
}

- (BOOL)hasImage
{
  v2 = [(CuratedCollectionItemCellModel *)self _collectionItemImage];
  v3 = v2 != 0;

  return v3;
}

- (CuratedCollectionPlaceSummaryViewModel)placeSummaryModel
{
  if (!self->_placeSummaryModel)
  {
    v3 = [CuratedCollectionPlaceSummaryViewModel alloc];
    v4 = [(CuratedCollectionItemCellModel *)self collectionItem];
    v5 = [v4 mapItem];
    v6 = [(CuratedCollectionPlaceSummaryViewModel *)v3 initWithMapItem:v5];
    placeSummaryModel = self->_placeSummaryModel;
    self->_placeSummaryModel = v6;
  }

  v8 = [(CuratedCollectionItemCellModel *)self currentLocation];
  [(CuratedCollectionPlaceSummaryViewModel *)self->_placeSummaryModel setCurrentLocation:v8];

  v9 = self->_placeSummaryModel;

  return v9;
}

- (NSAttributedString)fullReviewString
{
  v3 = [(CuratedCollectionItemCellModel *)self collectionItem];
  v4 = [v3 placeCollectionItem];
  v5 = [v4 reviewUrl];

  if (v5)
  {
    v6 = [(CuratedCollectionItemCellModel *)self collectionItem];
    v7 = [v6 placeCollectionItem];
    v8 = [v7 reviewText];

    if (![v8 length])
    {
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"[Curated Collection View] Read review text" value:@"localized string not found" table:0];

      v8 = v10;
    }

    v11 = [[NSMutableAttributedString alloc] initWithString:v8];
    v16 = NSFontAttributeName;
    v12 = +[UIFont system15];
    v17 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [v11 addAttributes:v13 range:{0, objc_msgSend(v8, "length")}];

    [v11 addAttribute:NSLinkAttributeName value:v5 range:{0, objc_msgSend(v8, "length")}];
    v14 = [v11 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CuratedCollectionItemCellModel)initWithMKPlaceCollectionMapItem:(id)a3 usingAttribution:(id)a4 itemDescription:(id)a5 itemInUserCollection:(BOOL)a6 libraryOperationsCoordinator:(id)a7 appClip:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = CuratedCollectionItemCellModel;
  v19 = [(CuratedCollectionItemCellModel *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_collectionItem, a3);
    objc_storeStrong(&v20->_attribution, a4);
    v21 = [v16 copy];
    itemDescription = v20->_itemDescription;
    v20->_itemDescription = v21;

    v20->_isItemInUserCollection = a6;
    objc_storeStrong(&v20->_libraryOperationsCoordinator, a7);
    objc_storeStrong(&v20->_appClip, a8);
  }

  return v20;
}

@end