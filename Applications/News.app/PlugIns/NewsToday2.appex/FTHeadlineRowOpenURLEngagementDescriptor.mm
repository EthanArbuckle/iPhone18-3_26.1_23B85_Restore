@interface FTHeadlineRowOpenURLEngagementDescriptor
- (FTHeadlineRowOpenURLEngagementDescriptor)init;
- (FTHeadlineRowOpenURLEngagementDescriptor)initWithHeadline:(id)headline;
- (NSURL)baseNewsURL;
- (id)openInNewsReferralItemWithTrackableWidgetState:(id)state assetHandlesByRemoteURL:(id)l;
- (id)userEngagementWithWidgetEventTracker:(id)tracker trackableWidgetState:(id)state;
@end

@implementation FTHeadlineRowOpenURLEngagementDescriptor

- (FTHeadlineRowOpenURLEngagementDescriptor)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FTHeadlineRowOpenURLEngagementDescriptor init]";
    v8 = 2080;
    v9 = "FTHeadlineRowOpenURLEngagementDescriptor.m";
    v10 = 1024;
    v11 = 27;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FTHeadlineRowOpenURLEngagementDescriptor init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FTHeadlineRowOpenURLEngagementDescriptor)initWithHeadline:(id)headline
{
  headlineCopy = headline;
  if (!headlineCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C4AA8();
  }

  v9.receiver = self;
  v9.super_class = FTHeadlineRowOpenURLEngagementDescriptor;
  v5 = [(FTHeadlineRowOpenURLEngagementDescriptor *)&v9 init];
  if (v5)
  {
    v6 = [headlineCopy copy];
    headline = v5->_headline;
    v5->_headline = v6;
  }

  return v5;
}

- (id)userEngagementWithWidgetEventTracker:(id)tracker trackableWidgetState:(id)state
{
  trackerCopy = tracker;
  stateCopy = state;
  if (!trackerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C4B6C();
    if (stateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (stateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C4C30();
  }

LABEL_6:
  v8 = +[NSDate date];
  headline = [(FTHeadlineRowOpenURLEngagementDescriptor *)self headline];
  v10 = [trackerCopy engagementWithRowAtDate:v8 forHeadline:headline withTrackableWidgetState:stateCopy];

  return v10;
}

- (NSURL)baseNewsURL
{
  headline = [(FTHeadlineRowOpenURLEngagementDescriptor *)self headline];
  newsURL = [headline NewsURL];

  return newsURL;
}

- (id)openInNewsReferralItemWithTrackableWidgetState:(id)state assetHandlesByRemoteURL:(id)l
{
  stateCopy = state;
  lCopy = l;
  if (!stateCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C4CF4();
    if (lCopy)
    {
      goto LABEL_6;
    }
  }

  else if (lCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C4DB8();
  }

LABEL_6:
  v7 = objc_opt_new();
  v35 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  todayResults = [stateCopy todayResults];
  sections = [todayResults sections];

  obj = sections;
  v32 = [sections countByEnumeratingWithState:&v41 objects:v54 count:16];
  v28 = lCopy;
  v29 = stateCopy;
  if (v32)
  {
    v31 = *v42;
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v10 = 0;
      do
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v10;
        v11 = *(*(&v41 + 1) + 8 * v10);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        items = [v11 items];
        v13 = [items countByEnumeratingWithState:&v37 objects:v53 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v38;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v38 != v15)
              {
                objc_enumerationMutation(items);
              }

              v17 = *(*(&v37 + 1) + 8 * i);
              if (![v17 itemType])
              {
                v18 = v17;
                analyticsElement = [v18 analyticsElement];
                articleID = [analyticsElement articleID];

                headline = [(FTHeadlineRowOpenURLEngagementDescriptor *)self headline];
                v22 = [v18 isEqual:headline];

                if (v22)
                {
                  if (!articleID && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    v23 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'", "articleID"];
                    *buf = 136315906;
                    v46 = "[FTHeadlineRowOpenURLEngagementDescriptor openInNewsReferralItemWithTrackableWidgetState:assetHandlesByRemoteURL:]";
                    v47 = 2080;
                    v48 = "FTHeadlineRowOpenURLEngagementDescriptor.m";
                    v49 = 1024;
                    v50 = 86;
                    v51 = 2114;
                    v52 = v23;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
                  }

                  v34 = [v7 count];
                }

                if (articleID)
                {
                  [v7 addObject:v18];
                  [v35 setObject:v11 forKeyedSubscript:v18];
                }
              }
            }

            v14 = [items countByEnumeratingWithState:&v37 objects:v53 count:16];
          }

          while (v14);
        }

        v10 = v33 + 1;
      }

      while ((v33 + 1) != v32);
      v32 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v32);
  }

  else
  {
    v34 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v24 = [v7 fc_arrayOfObjectsPassingTest:&stru_10010BBE0];
  v25 = [v24 fc_rotateElementsFromTheIndexOfSelectedItem:v34];
  v26 = [FRNewsReferralItemWidgetArticleList ft_itemWithHeadlines:v25 sectionsByHeadline:v35 assetHandlesByRemoteURL:v28];

  return v26;
}

@end