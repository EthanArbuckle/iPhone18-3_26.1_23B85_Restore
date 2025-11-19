@interface TUIStatsFeed
- (TUIStatsFeed)initWithDates:(id)a3 collector:(id)a4;
@end

@implementation TUIStatsFeed

- (TUIStatsFeed)initWithDates:(id)a3 collector:(id)a4
{
  v6 = a3;
  v7 = a4;
  v46.receiver = self;
  v46.super_class = TUIStatsFeed;
  v8 = [(TUIStatsFeed *)&v46 init];
  if (v8)
  {
    v9 = [v6 creationDate];
    creationDate = v8->_creationDate;
    v8->_creationDate = v9;

    v11 = [v6 initialResourcesRenderedDate];
    initialResourcesRenderedDate = v8->_initialResourcesRenderedDate;
    v8->_initialResourcesRenderedDate = v11;

    v13 = [v6 contentUpdateDate];
    contentUpdateDate = v8->_contentUpdateDate;
    v8->_contentUpdateDate = v13;

    v15 = [v6 initialContentReadyDate];
    initialContentReadyDate = v8->_initialContentReadyDate;
    v8->_initialContentReadyDate = v15;

    v17 = [v6 initialLayoutStartDate];
    initialLayoutStartDate = v8->_initialLayoutStartDate;
    v8->_initialLayoutStartDate = v17;

    v19 = [v6 allContentReadyDate];
    allContentReadyDate = v8->_allContentReadyDate;
    v8->_allContentReadyDate = v19;

    v21 = [v6 dynamicUpdateDate];
    dynamicUpdateDate = v8->_dynamicUpdateDate;
    v8->_dynamicUpdateDate = v21;

    v23 = [v6 resourcesStartLoadingDate];
    resourcesStartLoadingDate = v8->_resourcesStartLoadingDate;
    v8->_resourcesStartLoadingDate = v23;

    v25 = [v6 resourcesLoadedDate];
    resourcesLoadedDate = v8->_resourcesLoadedDate;
    v8->_resourcesLoadedDate = v25;

    v27 = [v6 viewWillAppearDate];
    viewWillAppearDate = v8->_viewWillAppearDate;
    v8->_viewWillAppearDate = v27;

    v29 = [v7 passes];
    v30 = [v29 copy];
    passes = v8->_passes;
    v8->_passes = v30;

    v32 = [v7 currentEntriesUID];
    v33 = [v32 copy];
    currentEntriesUID = v8->_currentEntriesUID;
    v8->_currentEntriesUID = v33;

    for (i = 0; i != 5; ++i)
    {
      [v7 elapsedTimeForPhase:i];
      v8->_elapsedTime[i] = v36;
    }

    for (j = 0; j != 29; ++j)
    {
      v8->_eventCount[j] = [v7 countForEvent:j];
    }

    v38 = objc_opt_new();
    v39 = [v7 entries];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_5B4FC;
    v44[3] = &unk_25F568;
    v45 = v38;
    v40 = v38;
    [v39 enumerateKeysAndObjectsUsingBlock:v44];

    v41 = [v40 copy];
    entries = v8->_entries;
    v8->_entries = v41;
  }

  return v8;
}

@end