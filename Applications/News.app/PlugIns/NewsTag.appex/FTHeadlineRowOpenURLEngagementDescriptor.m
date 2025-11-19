@interface FTHeadlineRowOpenURLEngagementDescriptor
- (FTHeadlineRowOpenURLEngagementDescriptor)init;
- (FTHeadlineRowOpenURLEngagementDescriptor)initWithHeadline:(id)a3;
- (NSURL)baseNewsURL;
- (id)openInNewsReferralItemWithTrackableWidgetState:(id)a3 assetHandlesByRemoteURL:(id)a4;
- (id)userEngagementWithWidgetEventTracker:(id)a3 trackableWidgetState:(id)a4;
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

- (FTHeadlineRowOpenURLEngagementDescriptor)initWithHeadline:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009D1F8();
  }

  v9.receiver = self;
  v9.super_class = FTHeadlineRowOpenURLEngagementDescriptor;
  v5 = [(FTHeadlineRowOpenURLEngagementDescriptor *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    headline = v5->_headline;
    v5->_headline = v6;
  }

  return v5;
}

- (id)userEngagementWithWidgetEventTracker:(id)a3 trackableWidgetState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009D2BC();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009D380();
  }

LABEL_6:
  v8 = +[NSDate date];
  v9 = [(FTHeadlineRowOpenURLEngagementDescriptor *)self headline];
  v10 = [v6 engagementWithRowAtDate:v8 forHeadline:v9 withTrackableWidgetState:v7];

  return v10;
}

- (NSURL)baseNewsURL
{
  v2 = [(FTHeadlineRowOpenURLEngagementDescriptor *)self headline];
  v3 = [v2 NewsURL];

  return v3;
}

- (id)openInNewsReferralItemWithTrackableWidgetState:(id)a3 assetHandlesByRemoteURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009D444();
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10009D508();
  }

LABEL_6:
  v7 = objc_opt_new();
  v35 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = [v5 todayResults];
  v9 = [v8 sections];

  obj = v9;
  v32 = [v9 countByEnumeratingWithState:&v41 objects:v54 count:16];
  v28 = v6;
  v29 = v5;
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
        v12 = [v11 items];
        v13 = [v12 countByEnumeratingWithState:&v37 objects:v53 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v37 + 1) + 8 * i);
              if (![v17 itemType])
              {
                v18 = v17;
                v19 = [v18 analyticsElement];
                v20 = [v19 articleID];

                v21 = [(FTHeadlineRowOpenURLEngagementDescriptor *)self headline];
                v22 = [v18 isEqual:v21];

                if (v22)
                {
                  if (!v20 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
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

                if (v20)
                {
                  [v7 addObject:v18];
                  [v35 setObject:v11 forKeyedSubscript:v18];
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v37 objects:v53 count:16];
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

  v24 = [v7 fc_arrayOfObjectsPassingTest:&stru_1000D6F38];
  v25 = [v24 fc_rotateElementsFromTheIndexOfSelectedItem:v34];
  v26 = [FRNewsReferralItemWidgetArticleList ft_itemWithHeadlines:v25 sectionsByHeadline:v35 assetHandlesByRemoteURL:v28];

  return v26;
}

@end