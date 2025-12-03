@interface PPXCollectionListViewController
- (PPXCollectionListViewController)initWithAssetID:(id)d isPurchased:(BOOL)purchased isAudiobook:(BOOL)audiobook;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateCollections;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PPXCollectionListViewController

- (PPXCollectionListViewController)initWithAssetID:(id)d isPurchased:(BOOL)purchased isAudiobook:(BOOL)audiobook
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = PPXCollectionListViewController;
  v9 = [(PPXCollectionListViewController *)&v13 init];
  if (v9)
  {
    v10 = [dCopy copy];
    assetID = v9->_assetID;
    v9->_assetID = v10;

    v9->_isPurchased = purchased;
    v9->_isAudiobook = audiobook;
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
  collectionDetailManager = [v2 collectionDetailManager];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000245C;
  v4[3] = &unk_100031418;
  objc_copyWeak(&v5, &location);
  [collectionDetailManager fetchCollectionDetailsIncludingDeleted:0 completion:v4];
  objc_destroyWeak(&v5);

  objc_destroyWeak(&location);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PPXCollectionListViewController *)self collectionDetailsCache:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"PPXCollectionListCell"];
  if (!v7)
  {
    v7 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"PPXCollectionListCell"];
  }

  v8 = [pathCopy row];
  collectionDetailsCache = [(PPXCollectionListViewController *)self collectionDetailsCache];
  if (v8 >= [collectionDetailsCache count])
  {
    v10 = 0;
  }

  else
  {
    v10 = [collectionDetailsCache objectAtIndex:v8];
  }

  name = [v10 name];
  textLabel = [v7 textLabel];
  [textLabel setText:name];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  assetID = [(PPXCollectionListViewController *)self assetID];
  if (assetID)
  {
    v7 = [pathCopy row];
    collectionDetailsCache = [(PPXCollectionListViewController *)self collectionDetailsCache];
    if (v7 < [collectionDetailsCache count])
    {
      v9 = [collectionDetailsCache objectAtIndex:v7];
      collectionID = [v9 collectionID];
      if (collectionID)
      {
        ba_effectiveAnalyticsTracker = [(PPXCollectionListViewController *)self ba_effectiveAnalyticsTracker];
        v13 = _NSConcreteStackBlock;
        v14 = 3221225472;
        v15 = sub_100002A48;
        v16 = &unk_100031440;
        v17 = assetID;
        selfCopy = self;
        v19 = ba_effectiveAnalyticsTracker;
        v20 = collectionID;
        v12 = ba_effectiveAnalyticsTracker;
        [BDSServiceCenter addStoreID:v17 toCollectionID:v20 completion:&v13];
      }
    }
  }

  [(PPXCollectionListViewController *)self dismissViewControllerAnimated:1 completion:0, v13, v14, v15, v16];
}

@end