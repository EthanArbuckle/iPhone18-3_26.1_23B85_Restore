@interface TUIStatsFeed
- (TUIStatsFeed)initWithDates:(id)dates collector:(id)collector;
@end

@implementation TUIStatsFeed

- (TUIStatsFeed)initWithDates:(id)dates collector:(id)collector
{
  datesCopy = dates;
  collectorCopy = collector;
  v46.receiver = self;
  v46.super_class = TUIStatsFeed;
  v8 = [(TUIStatsFeed *)&v46 init];
  if (v8)
  {
    creationDate = [datesCopy creationDate];
    creationDate = v8->_creationDate;
    v8->_creationDate = creationDate;

    initialResourcesRenderedDate = [datesCopy initialResourcesRenderedDate];
    initialResourcesRenderedDate = v8->_initialResourcesRenderedDate;
    v8->_initialResourcesRenderedDate = initialResourcesRenderedDate;

    contentUpdateDate = [datesCopy contentUpdateDate];
    contentUpdateDate = v8->_contentUpdateDate;
    v8->_contentUpdateDate = contentUpdateDate;

    initialContentReadyDate = [datesCopy initialContentReadyDate];
    initialContentReadyDate = v8->_initialContentReadyDate;
    v8->_initialContentReadyDate = initialContentReadyDate;

    initialLayoutStartDate = [datesCopy initialLayoutStartDate];
    initialLayoutStartDate = v8->_initialLayoutStartDate;
    v8->_initialLayoutStartDate = initialLayoutStartDate;

    allContentReadyDate = [datesCopy allContentReadyDate];
    allContentReadyDate = v8->_allContentReadyDate;
    v8->_allContentReadyDate = allContentReadyDate;

    dynamicUpdateDate = [datesCopy dynamicUpdateDate];
    dynamicUpdateDate = v8->_dynamicUpdateDate;
    v8->_dynamicUpdateDate = dynamicUpdateDate;

    resourcesStartLoadingDate = [datesCopy resourcesStartLoadingDate];
    resourcesStartLoadingDate = v8->_resourcesStartLoadingDate;
    v8->_resourcesStartLoadingDate = resourcesStartLoadingDate;

    resourcesLoadedDate = [datesCopy resourcesLoadedDate];
    resourcesLoadedDate = v8->_resourcesLoadedDate;
    v8->_resourcesLoadedDate = resourcesLoadedDate;

    viewWillAppearDate = [datesCopy viewWillAppearDate];
    viewWillAppearDate = v8->_viewWillAppearDate;
    v8->_viewWillAppearDate = viewWillAppearDate;

    passes = [collectorCopy passes];
    v30 = [passes copy];
    passes = v8->_passes;
    v8->_passes = v30;

    currentEntriesUID = [collectorCopy currentEntriesUID];
    v33 = [currentEntriesUID copy];
    currentEntriesUID = v8->_currentEntriesUID;
    v8->_currentEntriesUID = v33;

    for (i = 0; i != 5; ++i)
    {
      [collectorCopy elapsedTimeForPhase:i];
      v8->_elapsedTime[i] = v36;
    }

    for (j = 0; j != 29; ++j)
    {
      v8->_eventCount[j] = [collectorCopy countForEvent:j];
    }

    v38 = objc_opt_new();
    entries = [collectorCopy entries];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_5B4FC;
    v44[3] = &unk_25F568;
    v45 = v38;
    v40 = v38;
    [entries enumerateKeysAndObjectsUsingBlock:v44];

    v41 = [v40 copy];
    entries = v8->_entries;
    v8->_entries = v41;
  }

  return v8;
}

@end