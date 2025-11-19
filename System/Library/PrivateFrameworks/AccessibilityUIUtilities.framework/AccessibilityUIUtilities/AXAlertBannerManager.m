@interface AXAlertBannerManager
- (AXAlertBannerManager)init;
- (void)dismissAlertBanner:(id)a3;
- (void)postAlertBanner:(id)a3;
- (void)postAlertBanner:(id)a3 duration:(double)a4;
@end

@implementation AXAlertBannerManager

- (AXAlertBannerManager)init
{
  v8.receiver = self;
  v8.super_class = AXAlertBannerManager;
  v2 = [(AXAlertBannerManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(AXAlertBannerManager *)v2 setBannerRequestIdentifier:@"com.apple.accessibility"];
    v4 = MEMORY[0x1E698E580];
    v5 = [(AXAlertBannerManager *)v3 bannerRequestIdentifier];
    v6 = [v4 bannerSourceForDestination:0 forRequesterIdentifier:v5];
    [(AXAlertBannerManager *)v3 setBannerSource:v6];
  }

  return v3;
}

- (void)postAlertBanner:(id)a3
{
  v9 = a3;
  v4 = [v9 actionBlock];
  if (v4)
  {
    v5 = 5.0;
  }

  else
  {
    v5 = 3.0;
  }

  v6 = [v9 identifier];
  v7 = [v6 containsString:@"accessibility-help-banner"];

  v8 = 10.0;
  if (!v7)
  {
    v8 = v5;
  }

  [(AXAlertBannerManager *)self postAlertBanner:v9 duration:v8];
}

- (void)postAlertBanner:(id)a3 duration:(double)a4
{
  v5 = a3;
  [(AXAlertBannerManager *)self dismissAlertBanner:@"Replacing with new banner"];
  v6 = [(AXAlertBannerManager *)self dismissalTimer];
  [v6 invalidate];

  v7 = SBUIIsSystemApertureEnabled();
  v8 = off_1E812CB78;
  if (!v7)
  {
    v8 = off_1E812CB60;
  }

  v9 = objc_alloc(*v8);
  v10 = [(AXAlertBannerManager *)self bannerRequestIdentifier];
  v11 = [v9 initWithAlertContent:v5 requesterID:v10];

  [(AXAlertBannerManager *)self setBannerPresentable:v11];
  v12 = [v5 userInfo];
  v13 = [v12 mutableCopy];
  if (v13)
  {
    [(AXAlertBannerManager *)self setBannerUserInfo:v13];
  }

  else
  {
    v14 = objc_opt_new();
    [(AXAlertBannerManager *)self setBannerUserInfo:v14];
  }

  v15 = [(AXAlertBannerManager *)self bannerUserInfo];
  [v15 setValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69D45D0]];

  v16 = [(AXAlertBannerManager *)self bannerSource];
  v17 = [(AXAlertBannerManager *)self bannerUserInfo];
  v20 = 0;
  [v16 postPresentable:v11 options:1 userInfo:v17 error:&v20];
  v18 = v20;

  if (v18)
  {
    v19 = AXLogUI();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [AXAlertBannerManager postAlertBanner:v18 duration:v19];
    }
  }

  else
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)dismissAlertBanner:(id)a3
{
  v4 = a3;
  v5 = [(AXAlertBannerManager *)self bannerPresentable];
  v6 = [v5 requestIdentifier];

  if ([v6 length])
  {
    v7 = [(AXAlertBannerManager *)self bannerSource];
    v8 = [(AXAlertBannerManager *)self bannerUserInfo];
    v12 = 0;
    v9 = [v7 revokePresentableWithRequestIdentifier:v6 reason:v4 animated:1 userInfo:v8 error:&v12];
    v10 = v12;

    if (v10)
    {
      v11 = AXLogUI();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(AXAlertBannerManager *)v10 dismissAlertBanner:v11];
      }
    }
  }
}

- (void)postAlertBanner:(uint64_t)a1 duration:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C0DFB000, a2, OS_LOG_TYPE_ERROR, "Error posting banner: %@", &v2, 0xCu);
}

- (void)dismissAlertBanner:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C0DFB000, a2, OS_LOG_TYPE_ERROR, "Error dismissing banner: %@", &v2, 0xCu);
}

@end