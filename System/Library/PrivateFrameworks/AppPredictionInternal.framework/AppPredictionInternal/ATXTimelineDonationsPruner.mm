@interface ATXTimelineDonationsPruner
- (void)pruneTimelineRelevanceTableWithXPCActivity:(id)activity;
@end

@implementation ATXTimelineDonationsPruner

- (void)pruneTimelineRelevanceTableWithXPCActivity:(id)activity
{
  activityCopy = activity;
  v4 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Pruning timeline donations", buf, 2u);
  }

  mEMORY[0x277CEB5C8] = [MEMORY[0x277CEB5C8] sharedInstance];
  if ([activityCopy didDefer])
  {
    v6 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v7 = "ATXTimelineDonationsPruner: Asked to defer";
      v8 = &v21;
LABEL_20:
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  pruneTimelineEntries = [mEMORY[0x277CEB5C8] pruneTimelineEntries];
  v10 = __atxlog_handle_timeline();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (pruneTimelineEntries)
  {
    if (!v11)
    {
      goto LABEL_12;
    }

    v20 = 0;
    v12 = "Sucessfully finished pruning the timeline relevance table";
    v13 = &v20;
  }

  else
  {
    if (!v11)
    {
      goto LABEL_12;
    }

    *v19 = 0;
    v12 = "Unable to finish pruning the timeline relevance table";
    v13 = v19;
  }

  _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
LABEL_12:

  if ([activityCopy didDefer])
  {
    v6 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v7 = "ATXTimelineDonationsPruner: Asked to defer";
      v8 = &v18;
      goto LABEL_20;
    }
  }

  else
  {
    pruneInvalidSuggestions = [mEMORY[0x277CEB5C8] pruneInvalidSuggestions];
    v6 = __atxlog_handle_timeline();
    v15 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (pruneInvalidSuggestions)
    {
      if (v15)
      {
        v17 = 0;
        v7 = "Sucessfully finished pruning invalid info suggestions";
        v8 = &v17;
        goto LABEL_20;
      }
    }

    else if (v15)
    {
      v16 = 0;
      v7 = "Unable to finish pruning invalid info suggestions";
      v8 = &v16;
      goto LABEL_20;
    }
  }

LABEL_21:
}

@end