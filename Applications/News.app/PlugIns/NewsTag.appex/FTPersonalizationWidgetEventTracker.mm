@interface FTPersonalizationWidgetEventTracker
- (FTPersonalizationWidgetEventTracker)init;
- (id)personalizationEventAtDate:(id)a3 withAction:(int)a4 headline:(id)a5 section:(id)a6 trackableWidgetState:(id)a7;
- (void)submitEventsIfNeededWithCompletion:(id)a3;
- (void)userEngagedWithWidgetAtDate:(id)a3 actionURL:(id)a4 trackableWidgetState:(id)a5;
- (void)widgetDidAppearAtDate:(id)a3 withTrackableWidgetState:(id)a4;
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

- (void)widgetDidAppearAtDate:(id)a3 withTrackableWidgetState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 todayResults];
  v9 = v8;
  if (v8)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    v10 = [v8 sections];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100014094;
    v11[3] = &unk_1000D7388;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    v14 = v15;
    [v10 enumerateObjectsUsingBlock:v11];

    _Block_object_dispose(v15, 8);
  }
}

- (void)submitEventsIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FTPersonalizationWidgetEventTracker *)self events];
  if ([v5 count])
  {
    v6 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
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

    v12 = [(FTPersonalizationWidgetEventTracker *)self fileCoordinatedStore];
    [v12 submitUpdate:v6];

    v13 = objc_opt_new();
    [(FTPersonalizationWidgetEventTracker *)self setEvents:v13];
  }

  v4[2](v4);
}

- (void)userEngagedWithWidgetAtDate:(id)a3 actionURL:(id)a4 trackableWidgetState:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 fc_NewsArticleID];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_1000145EC;
    v31 = sub_1000145FC;
    v32 = 0;
    v14 = [v10 todayResults];
    v15 = [v14 sections];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_100014604;
    v24 = &unk_1000D73D8;
    v16 = v13;
    v25 = v16;
    v26 = &v27;
    [v15 enumerateObjectsUsingBlock:&v21];

    v17 = v28[5];
    if (v17)
    {
      v18 = [v10 sectionForItem:{v28[5], v21, v22, v23, v24}];
      v19 = [(FTPersonalizationWidgetEventTracker *)self personalizationEventAtDate:v8 withAction:2 headline:v17 section:v18 trackableWidgetState:v10];

      if (v19)
      {
        v20 = [(FTPersonalizationWidgetEventTracker *)self events];
        [v20 addObject:v19];
      }
    }

    _Block_object_dispose(&v27, 8);
  }
}

- (id)personalizationEventAtDate:(id)a3 withAction:(int)a4 headline:(id)a5 section:(id)a6 trackableWidgetState:(id)a7
{
  v10 = *&a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A0B08();
    if (v12)
    {
      goto LABEL_6;
    }
  }

  else if (v12)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A0BCC();
  }

LABEL_6:
  if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A0C90();
    if (v14)
    {
      goto LABEL_11;
    }
  }

  else if (v14)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000A0D54();
  }

LABEL_11:
  v15 = [v12 personalizationMetadata];

  if (v15)
  {
    v16 = +[NTPBTodayPersonalizationEvent ft_eventWithDate:action:headline:section:headlineIndexInSection:precedingHeadlinesCount:precedingSectionsCount:](NTPBTodayPersonalizationEvent, "ft_eventWithDate:action:headline:section:headlineIndexInSection:precedingHeadlinesCount:precedingSectionsCount:", v11, v10, v12, v13, [v14 absoluteOrderOfItemInSection:v12], objc_msgSend(v14, "absoluteOrderOfItem:", v12), objc_msgSend(v14, "absoluteOrderOfSection:", v13));
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end