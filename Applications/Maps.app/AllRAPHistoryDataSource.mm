@interface AllRAPHistoryDataSource
- (AllRAPHistoryDataSource)initWithCollectionView:(id)view reportSection:(unint64_t)section;
- (BOOL)_isInternalInstall;
- (id)_reportHistoryContentForReportSection:(unint64_t)section;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (void)_loadReports;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
@end

@implementation AllRAPHistoryDataSource

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  pathsCopy = paths;
  if (-[AllRAPHistoryDataSource _isInternalInstall](self, "_isInternalInstall") && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 BOOLForKey:@"__internal__EnableTapRAPForReportID"], v7, v8) && objc_msgSend(pathsCopy, "count") == 1)
  {
    firstObject = [pathsCopy firstObject];
    v10 = -[NSArray objectAtIndexedSubscript:](self->_reports, "objectAtIndexedSubscript:", [firstObject row]);
    v11 = v10;
    if (v10)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100DED5B8;
      v14[3] = &unk_101660440;
      v15 = v10;
      v12 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v14];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_isInternalInstall
{
  v2 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v2 isInternalInstall];

  return isInternalInstall;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = pathCopy;
  if (self->_reportSection == 3)
  {
    v8 = -[NSArray objectAtIndexedSubscript:](self->_reports, "objectAtIndexedSubscript:", [pathCopy row]);
    delegate = [(DataSource *)self delegate];
    [delegate dataSource:self itemTapped:v8];
  }

  [viewCopy deselectItemAtIndexPath:v7 animated:1];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  reports = self->_reports;
  pathCopy = path;
  viewCopy = view;
  v8 = -[NSArray objectAtIndexedSubscript:](reports, "objectAtIndexedSubscript:", [pathCopy row]);
  v9 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

  v11 = [TwoLinesContentViewModelComposer cellModelForRAPReportsHistory:v8 allowDisclosureIndicator:1];
  [v10 setViewModel:v11];

  return v10;
}

- (id)_reportHistoryContentForReportSection:(unint64_t)section
{
  v5 = +[NSArray array];
  reports = self->_reports;
  self->_reports = v5;

  v7 = +[UserProfileReportHistoryManager sharedInstance];
  rapHistory = [v7 rapHistory];

  v9 = +[NSMutableArray array];
  v10 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = rapHistory;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        reportStatus = [v16 reportStatus];
        v18 = v9;
        if (reportStatus)
        {
          if (reportStatus != 1)
          {
            continue;
          }

          v18 = v10;
        }

        [v18 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  v19 = [[NSSortDescriptor alloc] initWithKey:@"dateOfReportCreation" ascending:0];
  v20 = [NSArray arrayWithObject:v19];
  switch(section)
  {
    case 4uLL:
      v22 = v11;
      goto LABEL_19;
    case 3uLL:
      v21 = v10;
      goto LABEL_17;
    case 2uLL:
      v21 = v9;
LABEL_17:
      v22 = [v21 sortedArrayUsingDescriptors:{v20, v27}];
LABEL_19:
      v23 = self->_reports;
      self->_reports = v22;

      break;
  }

  v24 = self->_reports;
  v25 = v24;

  return v24;
}

- (void)_loadReports
{
  v3 = [(AllRAPHistoryDataSource *)self _reportHistoryContentForReportSection:self->_reportSection];
  reports = self->_reports;
  self->_reports = v3;

  delegate = [(DataSource *)self delegate];
  [delegate dataSourceUpdated:self];
}

- (AllRAPHistoryDataSource)initWithCollectionView:(id)view reportSection:(unint64_t)section
{
  v11.receiver = self;
  v11.super_class = AllRAPHistoryDataSource;
  v5 = [(DataSource *)&v11 initWithCollectionView:view updateLocation:0];
  v6 = v5;
  if (v5)
  {
    v5->_reportSection = section;
    v7 = +[UserProfileReportHistoryManager sharedInstance];
    observers = [v7 observers];
    [observers registerObserver:v6];

    v9 = +[UserProfileReportHistoryManager sharedInstance];
    [v9 refineRAPHistory];

    [(AllRAPHistoryDataSource *)v6 _loadReports];
  }

  return v6;
}

@end