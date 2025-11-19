@interface CuratedCollectionHandler
+ (id)_delimiterString;
- (BOOL)canShare;
- (CuratedCollectionHandler)initWithCollection:(id)a3;
- (MKMapItemIdentifier)curatedCollectionIdentifier;
- (id)identifier;
- (id)publisherAttribution;
- (id)sharingURL;
- (id)subtitle;
- (id)title;
- (void)deleteCollection:(id)a3;
- (void)retrieveGeoCollectionWithRefinedItems:(id)a3;
- (void)setCollection:(id)a3;
- (void)setCuratedCollection:(id)a3;
- (void)updateWithMapsSyncCachedCuratedCollection:(id)a3;
@end

@implementation CuratedCollectionHandler

- (void)retrieveGeoCollectionWithRefinedItems:(id)a3
{
  v4 = a3;
  v5 = [CuratedCollectionResolver alloc];
  v6 = [(CuratedCollectionHandler *)self curatedCollectionIdentifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100CF8BD4;
  v10[3] = &unk_101650ED0;
  v11 = v4;
  v7 = v4;
  v8 = [(CuratedCollectionResolver *)v5 initWithCuratedCollectionIdentifier:v6 handler:v10];
  resolver = self->_resolver;
  self->_resolver = v8;

  [(CuratedCollectionResolver *)self->_resolver resolveCollection];
}

- (BOOL)canShare
{
  v2 = [(CuratedCollectionHandler *)self sharingURL];
  v3 = v2 != 0;

  return v3;
}

- (id)sharingURL
{
  v3 = [(CuratedCollectionHandler *)self curatedCollection];
  v4 = [v3 curatedCollectionIdentifier];

  v5 = [(CuratedCollectionHandler *)self curatedCollection];
  v6 = [v5 resultProviderIdentifier];

  return [GEOMapURLBuilder URLForCuratedCollection:v4 provider:v6];
}

- (void)deleteCollection:(id)a3
{
  v4 = a3;
  v5 = +[CuratedCollectionSyncManager sharedManager];
  v6 = [(CuratedCollectionHandler *)self curatedCollection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100CF8EE4;
  v8[3] = &unk_101661760;
  v9 = v4;
  v7 = v4;
  [v5 removeSavedMapsSyncCuratedCollection:v6 completion:v8];
}

- (id)publisherAttribution
{
  if (!self->_publisherAttribution)
  {
    v3 = [(CuratedCollectionHandler *)self curatedCollection];

    if (v3)
    {
      v4 = +[GEOCollectionPublisherAttributionManager sharedInstance];
      v5 = [(CuratedCollectionHandler *)self curatedCollection];
      v6 = [v5 publisherAttribution];
      v7 = [v4 bestAttributionForPublisher:v6];
      publisherAttribution = self->_publisherAttribution;
      self->_publisherAttribution = v7;
    }
  }

  v9 = self->_publisherAttribution;

  return v9;
}

- (id)subtitle
{
  v3 = [(CuratedCollectionHandler *)self publisherAttribution];
  v4 = [v3 displayName];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Number of places [Curated Collection]" value:@"localized string not found" table:0];
  v7 = [(CuratedCollectionHandler *)self curatedCollection];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v6, [v7 placesCount]);

  if (v4)
  {
    v9 = +[UIApplication sharedApplication];
    v10 = [v9 userInterfaceLayoutDirection];

    if (v10 == 1)
    {
      v17[0] = v8;
      v17[1] = v4;
      v11 = v17;
    }

    else
    {
      v16[0] = v4;
      v16[1] = v8;
      v11 = v16;
    }

    v13 = [NSArray arrayWithObjects:v11 count:2];
    v14 = [objc_opt_class() _delimiterString];
    v12 = [v13 componentsJoinedByString:v14];
  }

  else
  {
    v12 = v8;
  }

  return v12;
}

- (id)title
{
  v2 = [(CollectionHandler *)self collection];
  v3 = [v2 title];

  return v3;
}

- (id)identifier
{
  v2 = [(CollectionHandler *)self collection];
  v3 = [v2 identifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (MKMapItemIdentifier)curatedCollectionIdentifier
{
  v3 = [MKMapItemIdentifier alloc];
  v4 = [(CuratedCollectionHandler *)self curatedCollection];
  v5 = [v4 curatedCollectionIdentifier];
  v6 = [(CuratedCollectionHandler *)self curatedCollection];
  v7 = [v6 resultProviderIdentifier];
  v8 = [v3 initWithMUID:v5 resultProviderID:v7 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];

  return v8;
}

- (void)setCuratedCollection:(id)a3
{
  v5 = a3;
  if (self->_curatedCollection != v5)
  {
    objc_storeStrong(&self->_curatedCollection, a3);
    [(CollectionHandler *)self loadImage];
    objc_initWeak(&location, self);
    v6 = +[MapsUIImageCache sharedCache];
    v7 = [(CuratedCollectionHandler *)self publisherAttribution];
    v8 = [v7 iconIdentifier];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100CF9410;
    v9[3] = &unk_101650EA8;
    objc_copyWeak(&v10, &location);
    [v6 getImageForPublisherWithIconIdentifier:v8 completion:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)setCollection:(id)a3
{
  v5.receiver = self;
  v5.super_class = CuratedCollectionHandler;
  v4 = a3;
  [(CollectionHandler *)&v5 setCollection:v4];
  [(CuratedCollectionHandler *)self setCuratedCollection:v4, v5.receiver, v5.super_class];
}

- (void)updateWithMapsSyncCachedCuratedCollection:(id)a3
{
  v6 = a3;
  v4 = [(CollectionHandler *)self collection];
  v5 = [v6 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    [(CuratedCollectionHandler *)self setCollection:v6];
  }
}

- (CuratedCollectionHandler)initWithCollection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CuratedCollectionHandler;
  v5 = [(CollectionHandler *)&v8 initWithCollection:v4];
  v6 = v5;
  if (v5)
  {
    [(CuratedCollectionHandler *)v5 setCuratedCollection:v4];
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