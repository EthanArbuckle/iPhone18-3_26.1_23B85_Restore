@interface ATXSafariIntentEventQualityFilter
- (ATXSafariIntentEventQualityFilter)init;
- (ATXSafariIntentEventQualityFilter)initWithContextKitClient:(id)a3;
- (BOOL)shouldAcceptSafariDonation:(id)a3;
- (BOOL)shouldBlockURLForObjectionableContent:(id)a3;
@end

@implementation ATXSafariIntentEventQualityFilter

- (ATXSafariIntentEventQualityFilter)init
{
  v3 = objc_opt_new();
  v4 = [(ATXSafariIntentEventQualityFilter *)self initWithContextKitClient:v3];

  return v4;
}

- (ATXSafariIntentEventQualityFilter)initWithContextKitClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXSafariIntentEventQualityFilter;
  v6 = [(ATXSafariIntentEventQualityFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ckClient, a3);
  }

  return v7;
}

- (BOOL)shouldAcceptSafariDonation:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 bundleId];
  v6 = [v4 intentType];
  if ([v5 isEqualToString:@"com.apple.mobilesafari"] && objc_msgSend(v6, "isEqualToString:", @"NSUA_NSUserActivityTypeBrowsingWeb"))
  {
    v7 = [v4 action];

    if (!v7)
    {
      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v23 = 138412290;
        v24 = v19;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%@ - No ATXAction found. Skipping this action.", &v23, 0xCu);
      }

      goto LABEL_15;
    }

    v8 = [v4 action];
    v9 = [v8 userActivity];
    v10 = [v9 webpageURL];

    v11 = [v10 absoluteString];
    v12 = [v11 length];

    if (v12)
    {
      if (![(ATXSafariIntentEventQualityFilter *)self shouldBlockURLForObjectionableContent:v10])
      {
        v17 = 1;
        goto LABEL_16;
      }

      v13 = __atxlog_handle_default();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v23 = 138412290;
      v24 = v15;
      v16 = "%@ - Objectionable Safari donation found by ContextKit. Skipping this action.";
    }

    else
    {
      v13 = __atxlog_handle_default();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

LABEL_15:
        v17 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v20 = objc_opt_class();
      v15 = NSStringFromClass(v20);
      v23 = 138412290;
      v24 = v15;
      v16 = "%@ - No webpageURL found. Skipping this action.";
    }

    _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, v16, &v23, 0xCu);

    goto LABEL_14;
  }

  v17 = 1;
LABEL_17:

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)shouldBlockURLForObjectionableContent:(id)a3
{
  v4 = a3;
  v5 = [(ATXSafariIntentEventQualityFilter *)self ckClient];
  v6 = [v5 level1TopicIdsForURL:v4];

  LOBYTE(v4) = [v6 containsObject:@"EC9001"];
  return v4;
}

@end