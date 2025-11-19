@interface PPXCollectionListViewController
- (PPXCollectionListViewController)initWithAssetID:(id)a3 isPurchased:(BOOL)a4 isAudiobook:(BOOL)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateCollections;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation PPXCollectionListViewController

- (PPXCollectionListViewController)initWithAssetID:(id)a3 isPurchased:(BOOL)a4 isAudiobook:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = PPXCollectionListViewController;
  v9 = [(PPXCollectionListViewController *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    assetID = v9->_assetID;
    v9->_assetID = v10;

    v9->_isPurchased = a4;
    v9->_isAudiobook = a5;
  }

  return v9;
}

- (void)loadView
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Add to Collection" value:&stru_100031DE0 table:0];
  [(PPXCollectionListViewController *)self setTitle:v4];

  v5 = objc_alloc_init(UITableView);
  [v5 setDelegate:self];
  [v5 setDataSource:self];
  [(PPXCollectionListViewController *)self setView:v5];
  [(PPXCollectionListViewController *)self _updateCollections];
}

- (void)_updateCollections
{
  objc_initWeak(&location, self);
  v2 = +[BCCloudCollectionsManager sharedManager];
  v3 = [v2 collectionDetailManager];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000245C;
  v4[3] = &unk_100031418;
  objc_copyWeak(&v5, &location);
  [v3 fetchCollectionDetailsIncludingDeleted:0 completion:v4];
  objc_destroyWeak(&v5);

  objc_destroyWeak(&location);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(PPXCollectionListViewController *)self collectionDetailsCache:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"PPXCollectionListCell"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"PPXCollectionListCell"];
  }

  v8 = [v6 row];
  v9 = [(PPXCollectionListViewController *)self collectionDetailsCache];
  if (v8 >= [v9 count])
  {
    v10 = 0;
  }

  else
  {
    v10 = [v9 objectAtIndex:v8];
  }

  v11 = [v10 name];
  v12 = [v7 textLabel];
  [v12 setText:v11];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PPXCollectionListViewController *)self assetID];
  if (v6)
  {
    v7 = [v5 row];
    v8 = [(PPXCollectionListViewController *)self collectionDetailsCache];
    if (v7 < [v8 count])
    {
      v9 = [v8 objectAtIndex:v7];
      v10 = [v9 collectionID];
      if (v10)
      {
        v11 = [(PPXCollectionListViewController *)self ba_effectiveAnalyticsTracker];
        v13 = _NSConcreteStackBlock;
        v14 = 3221225472;
        v15 = sub_100002A48;
        v16 = &unk_100031440;
        v17 = v6;
        v18 = self;
        v19 = v11;
        v20 = v10;
        v12 = v11;
        [BDSServiceCenter addStoreID:v17 toCollectionID:v20 completion:&v13];
      }
    }
  }

  [(PPXCollectionListViewController *)self dismissViewControllerAnimated:1 completion:0, v13, v14, v15, v16];
}

@end