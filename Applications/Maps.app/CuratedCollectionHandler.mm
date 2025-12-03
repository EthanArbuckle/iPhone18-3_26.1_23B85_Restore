@interface CuratedCollectionHandler
+ (id)_delimiterString;
- (BOOL)canShare;
- (CuratedCollectionHandler)initWithCollection:(id)collection;
- (MKMapItemIdentifier)curatedCollectionIdentifier;
- (id)identifier;
- (id)publisherAttribution;
- (id)sharingURL;
- (id)subtitle;
- (id)title;
- (void)deleteCollection:(id)collection;
- (void)retrieveGeoCollectionWithRefinedItems:(id)items;
- (void)setCollection:(id)collection;
- (void)setCuratedCollection:(id)collection;
- (void)updateWithMapsSyncCachedCuratedCollection:(id)collection;
@end

@implementation CuratedCollectionHandler

- (void)retrieveGeoCollectionWithRefinedItems:(id)items
{
  itemsCopy = items;
  v5 = [CuratedCollectionResolver alloc];
  curatedCollectionIdentifier = [(CuratedCollectionHandler *)self curatedCollectionIdentifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100CF8BD4;
  v10[3] = &unk_101650ED0;
  v11 = itemsCopy;
  v7 = itemsCopy;
  v8 = [(CuratedCollectionResolver *)v5 initWithCuratedCollectionIdentifier:curatedCollectionIdentifier handler:v10];
  resolver = self->_resolver;
  self->_resolver = v8;

  [(CuratedCollectionResolver *)self->_resolver resolveCollection];
}

- (BOOL)canShare
{
  sharingURL = [(CuratedCollectionHandler *)self sharingURL];
  v3 = sharingURL != 0;

  return v3;
}

- (id)sharingURL
{
  curatedCollection = [(CuratedCollectionHandler *)self curatedCollection];
  curatedCollectionIdentifier = [curatedCollection curatedCollectionIdentifier];

  curatedCollection2 = [(CuratedCollectionHandler *)self curatedCollection];
  resultProviderIdentifier = [curatedCollection2 resultProviderIdentifier];

  return [GEOMapURLBuilder URLForCuratedCollection:curatedCollectionIdentifier provider:resultProviderIdentifier];
}

- (void)deleteCollection:(id)collection
{
  collectionCopy = collection;
  v5 = +[CuratedCollectionSyncManager sharedManager];
  curatedCollection = [(CuratedCollectionHandler *)self curatedCollection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100CF8EE4;
  v8[3] = &unk_101661760;
  v9 = collectionCopy;
  v7 = collectionCopy;
  [v5 removeSavedMapsSyncCuratedCollection:curatedCollection completion:v8];
}

- (id)publisherAttribution
{
  if (!self->_publisherAttribution)
  {
    curatedCollection = [(CuratedCollectionHandler *)self curatedCollection];

    if (curatedCollection)
    {
      v4 = +[GEOCollectionPublisherAttributionManager sharedInstance];
      curatedCollection2 = [(CuratedCollectionHandler *)self curatedCollection];
      publisherAttribution = [curatedCollection2 publisherAttribution];
      v7 = [v4 bestAttributionForPublisher:publisherAttribution];
      publisherAttribution = self->_publisherAttribution;
      self->_publisherAttribution = v7;
    }
  }

  v9 = self->_publisherAttribution;

  return v9;
}

- (id)subtitle
{
  publisherAttribution = [(CuratedCollectionHandler *)self publisherAttribution];
  displayName = [publisherAttribution displayName];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Number of places [Curated Collection]" value:@"localized string not found" table:0];
  curatedCollection = [(CuratedCollectionHandler *)self curatedCollection];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v6, [curatedCollection placesCount]);

  if (displayName)
  {
    v9 = +[UIApplication sharedApplication];
    userInterfaceLayoutDirection = [v9 userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v17[0] = v8;
      v17[1] = displayName;
      v11 = v17;
    }

    else
    {
      v16[0] = displayName;
      v16[1] = v8;
      v11 = v16;
    }

    v13 = [NSArray arrayWithObjects:v11 count:2];
    _delimiterString = [objc_opt_class() _delimiterString];
    v12 = [v13 componentsJoinedByString:_delimiterString];
  }

  else
  {
    v12 = v8;
  }

  return v12;
}

- (id)title
{
  collection = [(CollectionHandler *)self collection];
  title = [collection title];

  return title;
}

- (id)identifier
{
  collection = [(CollectionHandler *)self collection];
  identifier = [collection identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (MKMapItemIdentifier)curatedCollectionIdentifier
{
  v3 = [MKMapItemIdentifier alloc];
  curatedCollection = [(CuratedCollectionHandler *)self curatedCollection];
  curatedCollectionIdentifier = [curatedCollection curatedCollectionIdentifier];
  curatedCollection2 = [(CuratedCollectionHandler *)self curatedCollection];
  resultProviderIdentifier = [curatedCollection2 resultProviderIdentifier];
  v8 = [v3 initWithMUID:curatedCollectionIdentifier resultProviderID:resultProviderIdentifier coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];

  return v8;
}

- (void)setCuratedCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_curatedCollection != collectionCopy)
  {
    objc_storeStrong(&self->_curatedCollection, collection);
    [(CollectionHandler *)self loadImage];
    objc_initWeak(&location, self);
    v6 = +[MapsUIImageCache sharedCache];
    publisherAttribution = [(CuratedCollectionHandler *)self publisherAttribution];
    iconIdentifier = [publisherAttribution iconIdentifier];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100CF9410;
    v9[3] = &unk_101650EA8;
    objc_copyWeak(&v10, &location);
    [v6 getImageForPublisherWithIconIdentifier:iconIdentifier completion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)setCollection:(id)collection
{
  v5.receiver = self;
  v5.super_class = CuratedCollectionHandler;
  collectionCopy = collection;
  [(CollectionHandler *)&v5 setCollection:collectionCopy];
  [(CuratedCollectionHandler *)self setCuratedCollection:collectionCopy, v5.receiver, v5.super_class];
}

- (void)updateWithMapsSyncCachedCuratedCollection:(id)collection
{
  collectionCopy = collection;
  collection = [(CollectionHandler *)self collection];
  v5 = [collectionCopy isEqual:collection];

  if ((v5 & 1) == 0)
  {
    [(CuratedCollectionHandler *)self setCollection:collectionCopy];
  }
}

- (CuratedCollectionHandler)initWithCollection:(id)collection
{
  collectionCopy = collection;
  v8.receiver = self;
  v8.super_class = CuratedCollectionHandler;
  v5 = [(CollectionHandler *)&v8 initWithCollection:collectionCopy];
  v6 = v5;
  if (v5)
  {
    [(CuratedCollectionHandler *)v5 setCuratedCollection:collectionCopy];
  }

  return v6;
}

+ (id)_delimiterString
{
  if (qword_10195EF58 != -1)
  {
    dispatch_once(&qword_10195EF58, &stru_101650EF0);
  }

  v3 = qword_10195EF50;

  return v3;
}

@end