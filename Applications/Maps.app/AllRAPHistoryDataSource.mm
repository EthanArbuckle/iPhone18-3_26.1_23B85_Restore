@interface AllRAPHistoryDataSource
- (AllRAPHistoryDataSource)initWithCollectionView:(id)a3 reportSection:(unint64_t)a4;
- (BOOL)_isInternalInstall;
- (id)_reportHistoryContentForReportSection:(unint64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (void)_loadReports;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
@end

@implementation AllRAPHistoryDataSource

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  v6 = a4;
  if (-[AllRAPHistoryDataSource _isInternalInstall](self, "_isInternalInstall") && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 BOOLForKey:@"__internal__EnableTapRAPForReportID"], v7, v8) && objc_msgSend(v6, "count") == 1)
  {
    v9 = [v6 firstObject];
    v10 = -[NSArray objectAtIndexedSubscript:](self->_reports, "objectAtIndexedSubscript:", [v9 row]);
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
  v3 = [v2 isInternalInstall];

  return v3;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (self->_reportSection == 3)
  {
    v8 = -[NSArray objectAtIndexedSubscript:](self->_reports, "objectAtIndexedSubscript:", [v6 row]);
    v9 = [(DataSource *)self delegate];
    [v9 dataSource:self itemTapped:v8];
  }

  [v10 deselectItemAtIndexPath:v7 animated:1];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  reports = self->_reports;
  v6 = a4;
  v7 = a3;
  v8 = -[NSArray objectAtIndexedSubscript:](reports, "objectAtIndexedSubscript:", [v6 row]);
  v9 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
  v10 = [v7 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v6];

  v11 = [TwoLinesContentViewModelComposer cellModelForRAPReportsHistory:v8 allowDisclosureIndicator:1];
  [v10 setViewModel:v11];

  return v10;
}

- (id)_reportHistoryContentForReportSection:(unint64_t)a3
{
  v5 = +[NSArray array];
  reports = self->_reports;
  self->_reports = v5;

  v7 = +[UserProfileReportHistoryManager sharedInstance];
  v8 = [v7 rapHistory];

  v9 = +[NSMutableArray array];
  v10 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v8;
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
        v17 = [v16 reportStatus];
        v18 = v9;
        if (v17)
        {
          if (v17 != 1)
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
  switch(a3)
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

  v5 = [(DataSource *)self delegate];
  [v5 dataSourceUpdated:self];
}

- (AllRAPHistoryDataSource)initWithCollectionView:(id)a3 reportSection:(unint64_t)a4
{
  v11.receiver = self;
  v11.super_class = AllRAPHistoryDataSource;
  v5 = [(DataSource *)&v11 initWithCollectionView:a3 updateLocation:0];
  v6 = v5;
  if (v5)
  {
    v5->_reportSection = a4;
    v7 = +[UserProfileReportHistoryManager sharedInstance];
    v8 = [v7 observers];
    [v8 registerObserver:v6];

    v9 = +[UserProfileReportHistoryManager sharedInstance];
    [v9 refineRAPHistory];

    [(AllRAPHistoryDataSource *)v6 _loadReports];
  }

  return v6;
}

@end