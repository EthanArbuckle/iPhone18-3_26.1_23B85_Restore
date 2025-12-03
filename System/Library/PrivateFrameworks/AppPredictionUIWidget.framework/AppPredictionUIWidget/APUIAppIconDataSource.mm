@interface APUIAppIconDataSource
+ (id)_appClipIconForIdentifier:(id)identifier;
+ (id)_appClipIconTreatmentForCGImage:(CGImage *)image;
+ (void)openApplication:(id)application completion:(id)completion;
- (APUIAppIconDataSourceDelegate)delegate;
- (BOOL)icon:(id)icon launchFromLocation:(id)location context:(id)context;
- (id)icon:(id)icon displayNameForLocation:(id)location;
- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info;
- (id)icon:(id)icon unmaskedImageWithInfo:(SBIconImageInfo *)info;
@end

@implementation APUIAppIconDataSource

+ (id)_appClipIconForIdentifier:(id)identifier
{
  v4 = [MEMORY[0x277D75D70] webClipWithIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    iconImage = [v4 iconImage];
    v7 = iconImage;
    if (iconImage)
    {
      v8 = [self _appClipIconTreatmentForCGImage:{objc_msgSend(iconImage, "CGImage")}];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_appClipIconTreatmentForCGImage:(CGImage *)image
{
  v19[1] = *MEMORY[0x277D85DE8];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  v7 = [objc_alloc(MEMORY[0x277D1B160]) initWithCGImage:image scale:v6];
  v8 = objc_alloc(MEMORY[0x277D1B1A8]);
  v19[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v10 = [v8 initWithImages:v9];

  v11 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B220]];
  [v11 setShape:5];
  v12 = [v10 prepareImageForDescriptor:v11];
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x277D755B8];
    cGImage = [v12 CGImage];
    [v13 scale];
    v16 = [v14 imageWithCGImage:cGImage scale:0 orientation:?];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)icon:(id)icon displayNameForLocation:(id)location
{
  applicationBundleID = [icon applicationBundleID];
  if ([applicationBundleID length])
  {
    if ([MEMORY[0x277CEB3B8] isAppClipWebClipBundleId:applicationBundleID])
    {
      v5 = [MEMORY[0x277D75D70] webClipWithIdentifier:applicationBundleID];
      title = [v5 title];
    }

    else
    {
      title = [MEMORY[0x277CEB3B8] localizedNameForBundle:applicationBundleID];
    }
  }

  else
  {
    title = 0;
  }

  return title;
}

- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info
{
  applicationBundleID = [icon applicationBundleID];
  if ([applicationBundleID length] && objc_msgSend(MEMORY[0x277CEB3B8], "isAppClipWebClipBundleId:", applicationBundleID))
  {
    v5 = [objc_opt_class() _appClipIconForIdentifier:applicationBundleID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)icon:(id)icon unmaskedImageWithInfo:(SBIconImageInfo *)info
{
  applicationBundleID = [icon applicationBundleID];
  if ([applicationBundleID length])
  {
    v5 = [objc_opt_class() iconForBundleIdentifier:applicationBundleID shouldApplyMask:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)icon:(id)icon launchFromLocation:(id)location context:(id)context
{
  iconCopy = icon;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [WeakRetained appIconDataSource:self launchAppFromIcon:iconCopy];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    applicationBundleID = [iconCopy applicationBundleID];
    v11 = [applicationBundleID length];
    v9 = v11 != 0;
    if (v11)
    {
      [objc_opt_class() openApplication:applicationBundleID completion:0];
    }

    else
    {
      v12 = __atxlog_handle_ui();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [APUIAppIconDataSource icon:v12 launchFromLocation:? context:?];
      }
    }
  }

  return v9;
}

+ (void)openApplication:(id)application completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  completionCopy = completion;
  if ([applicationCopy length])
  {
    if ([MEMORY[0x277CEB3B8] isAppClipWebClipBundleId:applicationCopy])
    {
      v7 = __atxlog_handle_ui();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = applicationCopy;
        _os_log_impl(&dword_240036000, v7, OS_LOG_TYPE_DEFAULT, "AppIconDataSource: +openApplication asked to open clip: %@", buf, 0xCu);
      }

      [MEMORY[0x277D66CE8] launchWebClipWithIdentifier:applicationCopy];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 0);
      }
    }

    else
    {
      v9 = [applicationCopy copy];

      v10 = __atxlog_handle_ui();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v9;
        _os_log_impl(&dword_240036000, v10, OS_LOG_TYPE_DEFAULT, "AppIconDataSource: +openApplication launching app: %@", buf, 0xCu);
      }

      v11 = dispatch_get_global_queue(25, 0);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __52__APUIAppIconDataSource_openApplication_completion___block_invoke;
      v13[3] = &unk_278C90D88;
      applicationCopy = v9;
      v14 = applicationCopy;
      v15 = completionCopy;
      dispatch_async(v11, v13);
    }
  }

  else
  {
    v8 = __atxlog_handle_ui();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [APUIAppIconDataSource icon:v8 launchFromLocation:? context:?];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, 0);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __52__APUIAppIconDataSource_openApplication_completion___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v3 = *MEMORY[0x277D0AC70];
  v10[0] = *MEMORY[0x277D0AC28];
  v10[1] = v3;
  v11[0] = @"AppPredictions";
  v11[1] = MEMORY[0x277CBEC38];
  v10[2] = *MEMORY[0x277D0AC58];
  v11[2] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277D0AD60] optionsWithDictionary:v4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__APUIAppIconDataSource_openApplication_completion___block_invoke_2;
  v8[3] = &unk_278C90D60;
  v9 = *(a1 + 40);
  [v2 openApplication:v5 withOptions:v6 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __52__APUIAppIconDataSource_openApplication_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_ui();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __52__APUIAppIconDataSource_openApplication_completion___block_invoke_2_cold_1(v6, v7);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6 == 0, v6);
  }
}

- (APUIAppIconDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __52__APUIAppIconDataSource_openApplication_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_240036000, a2, OS_LOG_TYPE_ERROR, "AppIconDataSource: could not open app: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end