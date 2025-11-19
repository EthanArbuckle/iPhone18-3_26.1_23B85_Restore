@interface ANValidationHelper
+ (id)_runValidationCheck:(id)a3 isRetry:(BOOL)a4;
+ (id)performBasicValidationForAnnouncement:(id)a3 type:(unint64_t)a4;
+ (id)performPreflightChecksForSendingAnnouncementToHomeContext:(id)a3;
+ (id)performPreflightChecksForSendingContent:(id)a3 toHome:(id)a4 rooms:(id)a5 zones:(id)a6;
@end

@implementation ANValidationHelper

+ (id)performBasicValidationForAnnouncement:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__ANValidationHelper_performBasicValidationForAnnouncement_type___block_invoke;
  v10[3] = &unk_278C87570;
  v11 = v6;
  v12 = a4;
  v7 = v6;
  v8 = [a1 _runValidationCheck:v10 isRetry:0];

  return v8;
}

+ (id)performPreflightChecksForSendingContent:(id)a3 toHome:(id)a4 rooms:(id)a5 zones:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__ANValidationHelper_performPreflightChecksForSendingContent_toHome_rooms_zones___block_invoke;
  v20[3] = &unk_278C87598;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = [a1 _runValidationCheck:v20 isRetry:0];

  return v18;
}

+ (id)performPreflightChecksForSendingAnnouncementToHomeContext:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ANLogHandleValidationHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = &stru_2851BDB18;
    v41 = 2114;
    v42 = v4;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@Performing preflight check for context: %{public}@", buf, 0x16u);
  }

  v6 = [v4 homeName];
  if (![v6 length] || objc_msgSend(v4, "isEmpty"))
  {
    v7 = ANLogHandleValidationHelper();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Context doesn't contain home name", buf, 0xCu);
    }
  }

  v8 = +[ANHomeManager shared];
  v9 = [v8 homeNamesForContext:v4];

  v10 = ANLogHandleValidationHelper();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = &stru_2851BDB18;
    v41 = 2114;
    v42 = v9;
    _os_log_impl(&dword_23F525000, v10, OS_LOG_TYPE_DEFAULT, "%@Found Homes: %{public}@", buf, 0x16u);
  }

  if (![v9 count])
  {
    v21 = [MEMORY[0x277CCA9B8] an_errorWithCode:1002 component:*MEMORY[0x277CEA9B8] description:@"Invalid room/zone name"];
    goto LABEL_31;
  }

  v11 = [v4 roomNames];
  v12 = [v4 zoneNames];
  v13 = [MEMORY[0x277CEAB68] destinationWithHomeName:v6 zoneNames:v12 roomNames:v11];
  v14 = ANLogHandleValidationHelper();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = &stru_2851BDB18;
    v41 = 2114;
    v42 = v13;
    _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%@Destination from homeContext: %{public}@", buf, 0x16u);
  }

  v15 = [v13 home];
  if (v15)
  {
    v16 = [v11 count];
    v17 = [v13 rooms];
    v33 = v12;
    v34 = a1;
    if (v16 == [v17 count])
    {
      v18 = [v12 count];
      v19 = [v13 zones];
      v20 = [v19 count];

      if (v18 == v20)
      {
LABEL_23:
        v25 = [v13 rooms];
        if ([v25 count])
        {
          v26 = [v13 rooms];
        }

        else
        {
          v26 = MEMORY[0x277CBEBF8];
        }

        v27 = [v13 zones];
        if ([v27 count])
        {
          v28 = [v13 zones];
        }

        else
        {
          v28 = MEMORY[0x277CBEBF8];
        }

        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __80__ANValidationHelper_performPreflightChecksForSendingAnnouncementToHomeContext___block_invoke;
        v35[3] = &unk_278C875C0;
        v36 = v13;
        v37 = v26;
        v38 = v28;
        v29 = v28;
        v30 = v26;
        v21 = [v34 _runValidationCheck:v35 isRetry:0];

        v12 = v33;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v22 = ANLogHandleValidationHelper();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [v13 rooms];
      v24 = [v13 zones];
      *buf = 138412802;
      v40 = &stru_2851BDB18;
      v41 = 2114;
      v42 = v23;
      v43 = 2114;
      v44 = v24;
      _os_log_impl(&dword_23F525000, v22, OS_LOG_TYPE_ERROR, "%@Destination rooms: %{public}@ zones: %{public}@", buf, 0x20u);
    }

    goto LABEL_23;
  }

  v21 = [MEMORY[0x277CCA9B8] an_errorWithCode:1002 component:*MEMORY[0x277CEA9B8]];
LABEL_30:

LABEL_31:
  v31 = *MEMORY[0x277D85DE8];

  return v21;
}

id __80__ANValidationHelper_performPreflightChecksForSendingAnnouncementToHomeContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) home];
  v3 = [ANMessenger performPreflightChecksForSendingAnnouncementToHome:v2 rooms:*(a1 + 40) zones:*(a1 + 48)];

  return v3;
}

+ (id)_runValidationCheck:(id)a3 isRetry:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = ANLogHandleValidationHelper();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = &stru_2851BDB18;
    v22 = 1024;
    v23 = v4;
    _os_log_impl(&dword_23F525000, v7, OS_LOG_TYPE_DEFAULT, "%@Starting validation check (is retry = %d)", &v20, 0x12u);
  }

  v8 = v6[2](v6);
  v9 = v8;
  if (v8)
  {
    if ([v8 isHomeError])
    {
      v10 = !v4;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v13 = ANLogHandleValidationHelper();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = &stru_2851BDB18;
        _os_log_impl(&dword_23F525000, v13, OS_LOG_TYPE_DEFAULT, "%@Validation check failed with Home error - requesting HomeManager refresh", &v20, 0xCu);
      }

      v14 = +[ANHomeManager shared];
      v15 = [v14 refreshHomeSynchronous];

      if (v15)
      {
        v16 = ANLogHandleValidationHelper();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412290;
          v21 = &stru_2851BDB18;
          _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_DEFAULT, "%@Validation check failed - HomeManager refresh error", &v20, 0xCu);
        }

        v17 = v15;
      }

      else
      {
        v17 = [a1 _runValidationCheck:v6 isRetry:1];
      }

      v11 = v17;
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    v12 = ANLogHandleValidationHelper();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v12, OS_LOG_TYPE_DEFAULT, "%@Validation check success", &v20, 0xCu);
    }

    v11 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

@end