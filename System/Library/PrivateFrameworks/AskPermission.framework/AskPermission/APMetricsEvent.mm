@interface APMetricsEvent
+ (id)metricsEventWithAccount:(id)a3 request:(id)a4;
+ (id)nonIdentifiableMetricsFieldsForAccount:(id)a3;
- (APMetricsEvent)initWithAccount:(id)a3 request:(id)a4;
@end

@implementation APMetricsEvent

- (APMetricsEvent)initWithAccount:(id)a3 request:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 metricsTopic];
  v9 = [v7 metricsApp];
  v24.receiver = self;
  v24.super_class = APMetricsEvent;
  v10 = [(APMetricsEvent *)&v24 initWithTopic:v8];
  v11 = v10;
  if (v10)
  {
    [(APMetricsEvent *)v10 setEventVersion:&unk_2852E2360];
    [(APMetricsEvent *)v11 setProperty:v9 forBodyKey:@"app"];
    v12 = [v6 ams_DSID];
    [(APMetricsEvent *)v11 setProperty:v12 forBodyKey:@"dsId"];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "isAuthenticated")}];
    v14 = [v13 stringValue];
    [(APMetricsEvent *)v11 setProperty:v14 forBodyKey:@"isSignedIn"];

    v15 = [v7 itemIdentifier];
    [(APMetricsEvent *)v11 setProperty:v15 forBodyKey:@"pageId"];

    v16 = [MEMORY[0x277CEE470] operatingSystem];
    [(APMetricsEvent *)v11 setProperty:v16 forBodyKey:@"os"];

    v17 = [MEMORY[0x277CEE470] buildVersion];
    [(APMetricsEvent *)v11 setProperty:v17 forBodyKey:@"osBuildNumber"];

    v18 = [v6 ams_storefront];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = @"Unknown";
    }

    [(APMetricsEvent *)v11 setProperty:v20 forBodyKey:@"storeFrontHeader"];

    v21 = [v7 metricsID];

    if (v21)
    {
      v22 = [v7 metricsID];
      [(APMetricsEvent *)v11 setProperty:v22 forBodyKey:@"purchaseAuthorizationId"];
    }
  }

  return v11;
}

+ (id)metricsEventWithAccount:(id)a3 request:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = +[APLogConfig sharedFrameworkConfig];
  if (!v9)
  {
    v9 = +[APLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v8;
    v12 = v7;
    v13 = AMSLogKey();
    v14 = MEMORY[0x277CCACA8];
    v42 = a1;
    v15 = objc_opt_class();
    v41 = a2;
    if (v13)
    {
      v16 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [v14 stringWithFormat:@"%@: [%@] %@ ", v15, v16, a2];
    }

    else
    {
      v16 = NSStringFromSelector(a2);
      [v14 stringWithFormat:@"%@: %@ ", v15, v16];
    }
    v17 = ;
    v18 = AMSHashIfNeeded();
    v19 = AMSHashIfNeeded();
    *buf = 138543874;
    v50 = v17;
    v51 = 2114;
    v52 = v18;
    v53 = 2114;
    v54 = v19;
    _os_log_impl(&dword_241063000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Creating metrics event. Account: %{public}@ | Request: %{public}@", buf, 0x20u);
    if (v13)
    {

      v17 = a2;
    }

    v7 = v12;
    v8 = v11;
    a2 = v41;
    a1 = v42;
  }

  v20 = [v8 lineOfBusiness];
  v21 = +[APLogConfig sharedFrameworkConfig];
  v22 = v21;
  if (v20 == 1)
  {
    if (!v21)
    {
      v22 = +[APLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = a2;
      v25 = AMSLogKey();
      v26 = MEMORY[0x277CCACA8];
      v43 = a1;
      v27 = objc_opt_class();
      if (v25)
      {
        v28 = AMSLogKey();
        a1 = NSStringFromSelector(v24);
        [v26 stringWithFormat:@"%@: [%@] %@ ", v27, v28, a1];
      }

      else
      {
        v28 = NSStringFromSelector(v24);
        [v26 stringWithFormat:@"%@: %@ ", v27, v28];
      }
      v29 = ;
      *buf = 138543362;
      v50 = v29;
      _os_log_impl(&dword_241063000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Request is for App Store LOB.", buf, 0xCu);
      if (v25)
      {

        v29 = a1;
      }

      a2 = v24;
      a1 = v43;
    }

    v36 = [a1 nonIdentifiableMetricsFieldsForAccount:v7];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __50__APMetricsEvent_metricsEventWithAccount_request___block_invoke;
    v44[3] = &unk_278CC1690;
    v47 = a1;
    v48 = a2;
    v45 = v7;
    v46 = v8;
    v37 = [(APMetricsEvent *)v36 continueWithBlock:v44];
  }

  else
  {
    if (!v21)
    {
      v22 = +[APLogConfig sharedConfig];
    }

    v30 = [v22 OSLogObject];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = AMSLogKey();
      v32 = MEMORY[0x277CCACA8];
      v33 = objc_opt_class();
      if (v31)
      {
        v34 = AMSLogKey();
        a1 = NSStringFromSelector(a2);
        [v32 stringWithFormat:@"%@: [%@] %@ ", v33, v34, a1];
      }

      else
      {
        v34 = NSStringFromSelector(a2);
        [v32 stringWithFormat:@"%@: %@ ", v33, v34];
      }
      v35 = ;
      *buf = 138543362;
      v50 = v35;
      _os_log_impl(&dword_241063000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@LOB is not App Store. Enqueueing standard metrics.", buf, 0xCu);
      if (v31)
      {

        v35 = a1;
      }
    }

    v38 = MEMORY[0x277CEE630];
    v36 = [[APMetricsEvent alloc] initWithAccount:v7 request:v8];
    v37 = [v38 promiseWithResult:v36];
  }

  v39 = *MEMORY[0x277D85DE8];

  return v37;
}

id __50__APMetricsEvent_metricsEventWithAccount_request___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = +[APLogConfig sharedFrameworkConfig];
  v9 = v8;
  if (!v6 || v7)
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v17 = [v9 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = v7;
      v19 = AMSLogKey();
      v20 = MEMORY[0x277CCACA8];
      v21 = *(a1 + 48);
      v22 = objc_opt_class();
      if (v19)
      {
        v23 = AMSLogKey();
        v3 = NSStringFromSelector(*(a1 + 56));
        [v20 stringWithFormat:@"%@: [%@] %@ ", v22, v23, v3];
      }

      else
      {
        v23 = NSStringFromSelector(*(a1 + 56));
        [v20 stringWithFormat:@"%@: %@ ", v22, v23];
      }
      v24 = ;
      v25 = AMSLogableError();
      *buf = 138543618;
      v37 = v24;
      v38 = 2114;
      v39 = v25;
      _os_log_impl(&dword_241063000, v17, OS_LOG_TYPE_ERROR, "%{public}@Error obtaining metrics fields: %{public}@", buf, 0x16u);
      if (v19)
      {

        v24 = v3;
      }

      v7 = v18;
    }

    v26 = MEMORY[0x277CEE630];
    v27 = [[APMetricsEvent alloc] initWithAccount:*(a1 + 32) request:*(a1 + 40)];
    v28 = [v26 promiseWithResult:v27];
  }

  else
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = AMSLogKey();
      v12 = MEMORY[0x277CCACA8];
      v13 = *(a1 + 48);
      v14 = objc_opt_class();
      if (v11)
      {
        v15 = AMSLogKey();
        v3 = NSStringFromSelector(*(a1 + 56));
        [v12 stringWithFormat:@"%@: [%@] %@ ", v14, v15, v3];
      }

      else
      {
        v15 = NSStringFromSelector(*(a1 + 56));
        [v12 stringWithFormat:@"%@: %@ ", v14, v15];
      }
      v16 = ;
      v29 = AMSHashIfNeeded();
      *buf = 138543618;
      v37 = v16;
      v38 = 2114;
      v39 = v29;
      _os_log_impl(&dword_241063000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Obtained metrics fields: %{public}@", buf, 0x16u);
      if (v11)
      {

        v16 = v3;
      }
    }

    v27 = [v6 objectForKeyedSubscript:@"userId"];
    v30 = [v6 objectForKeyedSubscript:@"xpAccountsMatch"];
    v31 = [v6 objectForKeyedSubscript:@"xpUserIdSyncState"];
    v32 = [v6 objectForKeyedSubscript:@"clientId"];
    v33 = [[APMetricsEvent alloc] initWithAccount:*(a1 + 32) request:*(a1 + 40)];
    [(APMetricsEvent *)v33 setProperty:0 forBodyKey:@"dsId"];
    [(APMetricsEvent *)v33 setProperty:v27 forBodyKey:@"userId"];
    [(APMetricsEvent *)v33 setProperty:v32 forBodyKey:@"clientId"];
    [(APMetricsEvent *)v33 setProperty:@"APPSTORE_ENGAGEMENT" forBodyKey:@"userNs"];
    [(APMetricsEvent *)v33 setProperty:v30 forBodyKey:@"xpAccountsMatch"];
    [(APMetricsEvent *)v33 setProperty:v31 forBodyKey:@"xpUserIdSyncState"];
    v28 = [MEMORY[0x277CEE630] promiseWithResult:v33];

    v7 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)nonIdentifiableMetricsFieldsForAccount:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[APLogConfig sharedFrameworkConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    if (v9)
    {
      v12 = AMSLogKey();
      v3 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: [%@] %@ ", v11, v12, v3];
    }

    else
    {
      v12 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: %@ ", v11, v12];
    }
    v13 = ;
    v14 = AMSHashIfNeeded();
    *buf = 138543618;
    v30 = v13;
    v31 = 2114;
    v32 = v14;
    _os_log_impl(&dword_241063000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Generating metrics fields for account: %{public}@", buf, 0x16u);
    if (v9)
    {

      v13 = v3;
    }
  }

  v15 = MEMORY[0x277CEE5B8];
  v16 = [MEMORY[0x277CEE3F8] sharedBag];
  v17 = [v15 identifierStoreWithAccount:v6 bagNamespace:@"APPSTORE_ENGAGEMENT" bag:v16];

  v18 = MEMORY[0x277CEE5B8];
  v19 = [MEMORY[0x277CEE3F8] sharedBag];
  v20 = [v18 identifierForAccount:v6 bag:v19 bagNamespace:@"APPSTORE_ENGAGEMENT_CLIENT" keyName:@"clientId"];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __57__APMetricsEvent_nonIdentifiableMetricsFieldsForAccount___block_invoke;
  v25[3] = &unk_278CC16E0;
  v27 = a1;
  v28 = a2;
  v26 = v17;
  v21 = v17;
  v22 = [v20 continueWithBlock:v25];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

id __57__APMetricsEvent_nonIdentifiableMetricsFieldsForAccount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = +[APLogConfig sharedFrameworkConfig];
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = AMSLogKey();
      v12 = MEMORY[0x277CCACA8];
      v13 = *(a1 + 40);
      v14 = objc_opt_class();
      if (v11)
      {
        v15 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 48));
        [v12 stringWithFormat:@"%@: [%@] %@ ", v14, v15, a1];
      }

      else
      {
        v15 = NSStringFromSelector(*(a1 + 48));
        [v12 stringWithFormat:@"%@: %@ ", v14, v15];
      }
      v16 = ;
      v24 = AMSLogableError();
      *buf = 138543618;
      v34 = v16;
      v35 = 2112;
      v36 = v24;
      _os_log_impl(&dword_241063000, v10, OS_LOG_TYPE_ERROR, "%{public}@Error loading Metrics clientID: %@", buf, 0x16u);
      if (v11)
      {

        v16 = a1;
      }
    }

    v25 = [MEMORY[0x277CEE630] promiseWithError:v7];
  }

  else
  {
    if (!v8)
    {
      v9 = +[APLogConfig sharedConfig];
    }

    v17 = [v9 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = AMSLogKey();
      v19 = MEMORY[0x277CCACA8];
      v20 = *(a1 + 40);
      v21 = objc_opt_class();
      if (v18)
      {
        v22 = AMSLogKey();
        v3 = NSStringFromSelector(*(a1 + 48));
        [v19 stringWithFormat:@"%@: [%@] %@ ", v21, v22, v3];
      }

      else
      {
        v22 = NSStringFromSelector(*(a1 + 48));
        [v19 stringWithFormat:@"%@: %@ ", v21, v22];
      }
      v23 = ;
      v26 = AMSHashIfNeeded();
      *buf = 138543618;
      v34 = v23;
      v35 = 2112;
      v36 = v26;
      _os_log_impl(&dword_241063000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Loaded Metrics clientID: %@", buf, 0x16u);
      if (v18)
      {

        v23 = v3;
      }
    }

    v27 = *(a1 + 32);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __57__APMetricsEvent_nonIdentifiableMetricsFieldsForAccount___block_invoke_61;
    v30[3] = &unk_278CC16B8;
    v32 = *(a1 + 40);
    v31 = v6;
    v25 = [v27 continueWithBlock:v30];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v25;
}

id __57__APMetricsEvent_nonIdentifiableMetricsFieldsForAccount___block_invoke_61(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[APLogConfig sharedFrameworkConfig];
    if (!v7)
    {
      v7 = +[APLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = AMSLogKey();
      v10 = MEMORY[0x277CCACA8];
      v11 = *(a1 + 40);
      v12 = objc_opt_class();
      if (v9)
      {
        v13 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 48));
        [v10 stringWithFormat:@"%@: [%@] %@ ", v12, v13, a1];
      }

      else
      {
        v13 = NSStringFromSelector(*(a1 + 48));
        [v10 stringWithFormat:@"%@: %@ ", v12, v13];
      }
      v14 = ;
      v27 = AMSLogableError();
      *buf = 138543618;
      v35 = v14;
      v36 = 2112;
      v37 = v27;
      _os_log_impl(&dword_241063000, v8, OS_LOG_TYPE_ERROR, "%{public}@Error loading Metrics Store for userID: %@", buf, 0x16u);
      if (v9)
      {

        v14 = a1;
      }
    }

    v28 = [MEMORY[0x277CEE630] promiseWithError:v6];
  }

  else
  {
    [v5 setIncludeAccountMatchStatus:1];
    v15 = [MEMORY[0x277CEE5B0] keyWithName:@"userId" crossDeviceSync:1];
    v33 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    v17 = [v5 generateEventFieldsForKeys:v16];
    v18 = [v17 mutableCopy];

    v19 = +[APLogConfig sharedFrameworkConfig];
    if (!v19)
    {
      v19 = +[APLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = AMSLogKey();
      v22 = MEMORY[0x277CCACA8];
      v23 = *(a1 + 40);
      v24 = objc_opt_class();
      if (v21)
      {
        v25 = AMSLogKey();
        v32 = NSStringFromSelector(*(a1 + 48));
        [v22 stringWithFormat:@"%@: [%@] %@ ", v24, v25, v32];
      }

      else
      {
        v25 = NSStringFromSelector(*(a1 + 48));
        [v22 stringWithFormat:@"%@: %@ ", v24, v25];
      }
      v26 = ;
      v29 = AMSHashIfNeeded();
      *buf = 138543618;
      v35 = v26;
      v36 = 2112;
      v37 = v29;
      _os_log_impl(&dword_241063000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Loaded Metrics event fields: %@", buf, 0x16u);
      if (v21)
      {

        v26 = v32;
      }
    }

    [v18 setObject:*(a1 + 32) forKeyedSubscript:@"clientId"];
    v28 = [MEMORY[0x277CEE630] promiseWithResult:v18];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v28;
}

@end