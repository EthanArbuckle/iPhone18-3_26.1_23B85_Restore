@interface FTPersonalizationWidgetEventTracker
- (FTPersonalizationWidgetEventTracker)init;
- (id)personalizationEventAtDate:(id)date withAction:(int)action headline:(id)headline section:(id)section trackableWidgetState:(id)state;
- (void)submitEventsIfNeededWithCompletion:(id)completion;
- (void)userEngagedWithWidgetAtDate:(id)date actionURL:(id)l trackableWidgetState:(id)state;
- (void)widgetDidAppearAtDate:(id)date withTrackableWidgetState:(id)state;
@end

@implementation FTPersonalizationWidgetEventTracker

- (FTPersonalizationWidgetEventTracker)init
{
  v10.receiver = self;
  v10.super_class = FTPersonalizationWidgetEventTracker;
  v2 = [(FTPersonalizationWidgetEventTracker *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    events = v2->_events;
    v2->_events = v3;

    v5 = [FCFileCoordinatedTodayPersonalizationUpdate alloc];
    v6 = FCURLForTodayPersonalizationUpdateStore();
    v7 = [v5 initWithFileURL:v6];
    fileCoordinatedStore = v2->_fileCoordinatedStore;
    v2->_fileCoordinatedStore = v7;
  }

  return v2;
}

- (void)widgetDidAppearAtDate:(id)date withTrackableWidgetState:(id)state
{
  dateCopy = date;
  stateCopy = state;
  todayResults = [stateCopy todayResults];
  v9 = todayResults;
  if (todayResults)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    sections = [todayResults sections];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100014094;
    v11[3] = &unk_1000D7388;
    v11[4] = self;
    v12 = dateCopy;
    v13 = stateCopy;
    v14 = v15;
    [sections enumerateObjectsUsingBlock:v11];

    _Block_object_dispose(v15, 8);
  }
}

- (void)submitEventsIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  events = [(FTPersonalizationWidgetEventTracker *)self events];
  if ([events count])
  {
    v6 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = events;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 addEvents:{*(*(&v14 + 1) + 8 * v11), v14}];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    fileCoordinatedStore = [(FTPersonalizationWidgetEventTracker *)self fileCoordinatedStore];
    [fileCoordinatedStore submitUpdate:v6];

    v13 = objc_opt_new();
    [(FTPersonalizationWidgetEventTracker *)self setEvents:v13];
  }

  completionCopy[2](completionCopy);
}

- (void)userEngagedWithWidgetAtDate:(id)date actionURL:(id)l trackableWidgetState:(id)state
{
  dateCopy = date;
  lCopy = l;
  stateCopy = state;
  fc_NewsArticleID = [lCopy fc_NewsArticleID];
  v12 = fc_NewsArticleID;
  if (fc_NewsArticleID)
  {
    v13 = fc_NewsArticleID;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_1000145EC;
    v31 = sub_1000145FC;
    v32 = 0;
    todayResults = [stateCopy todayResults];
    sections = [todayResults sections];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100014604;
    v24 = &unk_1000D73D8;
    v16 = v13;
    v25 = v16;
    v26 = &v27;
    [sections enumerateObjectsUsingBlock:&v21];

    v17 = v28[5];
    if (v17)
    {
      v18 = [stateCopy sectionForItem:{v28[5], v21, v22, v23, v24}];
      v19 = [(FTPersonalizationWidgetEventTracker *)self personalizationEventAtDate:dateCopy withAction:2 headline:v17 section:v18 trackableWidgetState:stateCopy];

      if (v19)
      {
        events = [(FTPersonalizationWidgetEventTracker *)self events];
        [events addObject:v19];
      }
    }

    _Block_object_dispose(&v27, 8);
  }
}

- (id)personalizationEventAtDate:(id)date withAction:(int)action headline:(id)headline section:(id)section trackableWidgetState:(id)state
{
  v10 = *&action;
  dateCopy = date;
  headlineCopy = headline;
  sectionCopy = section;
  stateCopy = state;
  if (!dateCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A0B08();
    if (headlineCopy)
    {
      goto LABEL_6;
    }
  }

  else if (headlineCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A0BCC();
  }

LABEL_6:
  if (!sectionCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A0C90();
    if (stateCopy)
    {
      goto LABEL_11;
    }
  }

  else if (stateCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A0D54();
  }

LABEL_11:
  personalizationMetadata = [headlineCopy personalizationMetadata];

  if (personalizationMetadata)
  {
    v16 = +[NTPBTodayPersonalizationEvent ft_eventWithDate:action:headline:section:headlineIndexInSection:precedingHeadlinesCount:precedingSectionsCount:](NTPBTodayPersonalizationEvent, "ft_eventWithDate:action:headline:section:headlineIndexInSection:precedingHeadlinesCount:precedingSectionsCount:", dateCopy, v10, headlineCopy, sectionCopy, [stateCopy absoluteOrderOfItemInSection:headlineCopy], objc_msgSend(stateCopy, "absoluteOrderOfItem:", headlineCopy), objc_msgSend(stateCopy, "absoluteOrderOfSection:", sectionCopy));
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end