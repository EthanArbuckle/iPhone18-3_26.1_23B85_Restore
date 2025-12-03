@interface CuratedCollectionDescriptionCellModel
- (BOOL)hasAuthorImage;
- (BOOL)hasAuthorName;
- (CuratedCollectionDescriptionCellModel)initWithCollection:(id)collection collectionDescription:(id)description;
- (NSString)authorName;
- (NSString)collectionMetadata;
- (NSString)companyName;
- (void)_loadCompanyLogoForSize:(CGSize)size authorError:(id)error completion:(id)completion;
- (void)cancelAuthorImageDownload;
- (void)loadAuthorImageForSize:(CGSize)size completion:(id)completion;
@end

@implementation CuratedCollectionDescriptionCellModel

- (NSString)collectionMetadata
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Number of places [Curated Collection]" value:@"localized string not found" table:0];
  collection = [(CuratedCollectionDescriptionCellModel *)self collection];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v4, [collection numberOfItems]);

  v7 = +[NSDate date];
  v8 = +[NSCalendar currentCalendar];
  collection2 = [(CuratedCollectionDescriptionCellModel *)self collection];
  lastModifiedDate = [collection2 lastModifiedDate];
  v11 = [v8 components:16 fromDate:lastModifiedDate toDate:v7 options:0];

  v12 = 0;
  if ([v11 day] <= 14)
  {
    v13 = qword_10195D030;
    collection3 = [(CuratedCollectionDescriptionCellModel *)self collection];
    lastModifiedDate2 = [collection3 lastModifiedDate];
    v16 = [v13 localizedStringForDate:lastModifiedDate2 relativeToDate:v7];

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
  userInterfaceLayoutDirection = [v23 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    reverseObjectEnumerator = [v21 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v21 = allObjects;
  }

  v27 = [v21 componentsJoinedByString:v20];

  return v27;
}

- (NSString)companyName
{
  collection = [(CuratedCollectionDescriptionCellModel *)self collection];
  publisherAttribution = [collection publisherAttribution];
  displayName = [publisherAttribution displayName];

  return displayName;
}

- (NSString)authorName
{
  if ([(CuratedCollectionDescriptionCellModel *)self hasAuthorName])
  {
    collection = [(CuratedCollectionDescriptionCellModel *)self collection];
    authorName = [collection authorName];
  }

  else
  {
    authorName = [(CuratedCollectionDescriptionCellModel *)self companyName];
  }

  return authorName;
}

- (void)cancelAuthorImageDownload
{
  v5 = +[MKAppImageManager sharedImageManager];
  photoInfo = [(CuratedCollectionDescriptionCellModel *)self photoInfo];
  v4 = [photoInfo url];
  [v5 cancelLoadAppImageAtURL:v4];
}

- (void)_loadCompanyLogoForSize:(CGSize)size authorError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v9 = +[MKSystemController sharedInstance];
  [v9 screenScale];
  v11 = v10;

  collection = [(CuratedCollectionDescriptionCellModel *)self collection];
  publisherAttribution = [collection publisherAttribution];
  iconIdentifier = [publisherAttribution iconIdentifier];

  collection2 = [(CuratedCollectionDescriptionCellModel *)self collection];
  publisherAttribution2 = [collection2 publisherAttribution];
  displayName = [publisherAttribution2 displayName];

  v18 = +[MKPlaceCollectionsPublisherIconManager sharedInstance];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1007033E0;
  v21[3] = &unk_101627390;
  v22 = errorCopy;
  v23 = completionCopy;
  v19 = errorCopy;
  v20 = completionCopy;
  [v18 iconForPublisherNamed:displayName usingId:iconIdentifier contentScale:v21 onCompletion:v11];
}

- (void)loadAuthorImageForSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  v8 = +[MKSystemController sharedInstance];
  [v8 screenScale];
  v10 = v9;

  collection = [(CuratedCollectionDescriptionCellModel *)self collection];
  authorPhoto = [collection authorPhoto];

  v13 = [authorPhoto bestPhotoForSize:1 allowSmaller:{v10 * width, v10 * height}];
  [(CuratedCollectionDescriptionCellModel *)self setPhotoInfo:v13];

  if ([(CuratedCollectionDescriptionCellModel *)self hasAuthorImage])
  {
    objc_initWeak(&location, self);
    v14 = +[MKAppImageManager sharedImageManager];
    photoInfo = [(CuratedCollectionDescriptionCellModel *)self photoInfo];
    v16 = [photoInfo url];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1007036BC;
    v17[3] = &unk_101627368;
    objc_copyWeak(v19, &location);
    v19[1] = *&width;
    v19[2] = *&height;
    v18 = completionCopy;
    [v14 loadAppImageAtURL:v16 completionHandler:v17];

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }

  else
  {
    [(CuratedCollectionDescriptionCellModel *)self _loadCompanyLogoForSize:0 authorError:completionCopy completion:width, height];
  }
}

- (BOOL)hasAuthorName
{
  collection = [(CuratedCollectionDescriptionCellModel *)self collection];
  authorName = [collection authorName];
  v4 = authorName != 0;

  return v4;
}

- (BOOL)hasAuthorImage
{
  collection = [(CuratedCollectionDescriptionCellModel *)self collection];
  authorPhoto = [collection authorPhoto];
  v4 = authorPhoto != 0;

  return v4;
}

- (CuratedCollectionDescriptionCellModel)initWithCollection:(id)collection collectionDescription:(id)description
{
  collectionCopy = collection;
  descriptionCopy = description;
  v14.receiver = self;
  v14.super_class = CuratedCollectionDescriptionCellModel;
  v9 = [(CuratedCollectionDescriptionCellModel *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, collection);
    v11 = [descriptionCopy copy];
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