@interface CuratedCollectionDescriptionCellModel
- (BOOL)hasAuthorImage;
- (BOOL)hasAuthorName;
- (CuratedCollectionDescriptionCellModel)initWithCollection:(id)a3 collectionDescription:(id)a4;
- (NSString)authorName;
- (NSString)collectionMetadata;
- (NSString)companyName;
- (void)_loadCompanyLogoForSize:(CGSize)a3 authorError:(id)a4 completion:(id)a5;
- (void)cancelAuthorImageDownload;
- (void)loadAuthorImageForSize:(CGSize)a3 completion:(id)a4;
@end

@implementation CuratedCollectionDescriptionCellModel

- (NSString)collectionMetadata
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Number of places [Curated Collection]" value:@"localized string not found" table:0];
  v5 = [(CuratedCollectionDescriptionCellModel *)self collection];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v4, [v5 numberOfItems]);

  v7 = +[NSDate date];
  v8 = +[NSCalendar currentCalendar];
  v9 = [(CuratedCollectionDescriptionCellModel *)self collection];
  v10 = [v9 lastModifiedDate];
  v11 = [v8 components:16 fromDate:v10 toDate:v7 options:0];

  v12 = 0;
  if ([v11 day] <= 14)
  {
    v13 = qword_10195D030;
    v14 = [(CuratedCollectionDescriptionCellModel *)self collection];
    v15 = [v14 lastModifiedDate];
    v16 = [v13 localizedStringForDate:v15 relativeToDate:v7];

    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"[Curated Collection] Updated" value:@"localized string not found" table:0];
    v12 = [NSString localizedStringWithFormat:v18, v16];
  }

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];

  v30 = v6;
  v21 = [NSArray arrayWithObjects:&v30 count:1];
  if (v12)
  {
    v29[0] = v6;
    v29[1] = v12;
    v22 = [NSArray arrayWithObjects:v29 count:2];

    v21 = v22;
  }

  v23 = +[UIApplication sharedApplication];
  v24 = [v23 userInterfaceLayoutDirection];

  if (v24 == 1)
  {
    v25 = [v21 reverseObjectEnumerator];
    v26 = [v25 allObjects];

    v21 = v26;
  }

  v27 = [v21 componentsJoinedByString:v20];

  return v27;
}

- (NSString)companyName
{
  v2 = [(CuratedCollectionDescriptionCellModel *)self collection];
  v3 = [v2 publisherAttribution];
  v4 = [v3 displayName];

  return v4;
}

- (NSString)authorName
{
  if ([(CuratedCollectionDescriptionCellModel *)self hasAuthorName])
  {
    v3 = [(CuratedCollectionDescriptionCellModel *)self collection];
    v4 = [v3 authorName];
  }

  else
  {
    v4 = [(CuratedCollectionDescriptionCellModel *)self companyName];
  }

  return v4;
}

- (void)cancelAuthorImageDownload
{
  v5 = +[MKAppImageManager sharedImageManager];
  v3 = [(CuratedCollectionDescriptionCellModel *)self photoInfo];
  v4 = [v3 url];
  [v5 cancelLoadAppImageAtURL:v4];
}

- (void)_loadCompanyLogoForSize:(CGSize)a3 authorError:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[MKSystemController sharedInstance];
  [v9 screenScale];
  v11 = v10;

  v12 = [(CuratedCollectionDescriptionCellModel *)self collection];
  v13 = [v12 publisherAttribution];
  v14 = [v13 iconIdentifier];

  v15 = [(CuratedCollectionDescriptionCellModel *)self collection];
  v16 = [v15 publisherAttribution];
  v17 = [v16 displayName];

  v18 = +[MKPlaceCollectionsPublisherIconManager sharedInstance];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1007033E0;
  v21[3] = &unk_101627390;
  v22 = v7;
  v23 = v8;
  v19 = v7;
  v20 = v8;
  [v18 iconForPublisherNamed:v17 usingId:v14 contentScale:v21 onCompletion:v11];
}

- (void)loadAuthorImageForSize:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = +[MKSystemController sharedInstance];
  [v8 screenScale];
  v10 = v9;

  v11 = [(CuratedCollectionDescriptionCellModel *)self collection];
  v12 = [v11 authorPhoto];

  v13 = [v12 bestPhotoForSize:1 allowSmaller:{v10 * width, v10 * height}];
  [(CuratedCollectionDescriptionCellModel *)self setPhotoInfo:v13];

  if ([(CuratedCollectionDescriptionCellModel *)self hasAuthorImage])
  {
    objc_initWeak(&location, self);
    v14 = +[MKAppImageManager sharedImageManager];
    v15 = [(CuratedCollectionDescriptionCellModel *)self photoInfo];
    v16 = [v15 url];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1007036BC;
    v17[3] = &unk_101627368;
    objc_copyWeak(v19, &location);
    v19[1] = *&width;
    v19[2] = *&height;
    v18 = v7;
    [v14 loadAppImageAtURL:v16 completionHandler:v17];

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }

  else
  {
    [(CuratedCollectionDescriptionCellModel *)self _loadCompanyLogoForSize:0 authorError:v7 completion:width, height];
  }
}

- (BOOL)hasAuthorName
{
  v2 = [(CuratedCollectionDescriptionCellModel *)self collection];
  v3 = [v2 authorName];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasAuthorImage
{
  v2 = [(CuratedCollectionDescriptionCellModel *)self collection];
  v3 = [v2 authorPhoto];
  v4 = v3 != 0;

  return v4;
}

- (CuratedCollectionDescriptionCellModel)initWithCollection:(id)a3 collectionDescription:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CuratedCollectionDescriptionCellModel;
  v9 = [(CuratedCollectionDescriptionCellModel *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, a3);
    v11 = [v8 copy];
    collectionDescription = v10->_collectionDescription;
    v10->_collectionDescription = v11;

    if (qword_10195D028 != -1)
    {
      dispatch_once(&qword_10195D028, &stru_101627340);
    }
  }

  return v10;
}

@end