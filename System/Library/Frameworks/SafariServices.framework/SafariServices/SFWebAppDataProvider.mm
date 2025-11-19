@interface SFWebAppDataProvider
- (SFWebAppDataProviderDelegate)delegate;
- (UIViewController)activityViewController;
- (void)_downloadManifestIconWithCompletionHandler:(id)a3;
- (void)_updateManifestValues;
- (void)_updateMonogramIconForWebClip;
- (void)dealloc;
- (void)prepareWithManifestData:(id)a3;
- (void)setContentReadyForDisplay;
- (void)updateWebClipIcon:(id)a3;
- (void)updateWithStagedCookiesDirectoryURL:(id)a3 sandboxExtensionToken:(id)a4;
- (void)updateWithWebClipMetadata:(id)a3;
- (void)webClip:(id)a3 iconRequestDidFinishWithImage:(id)a4 precomposed:(BOOL)a5;
- (void)webClip:(id)a3 startupImageRequestDidFinishWithImage:(id)a4;
- (void)webClip:(id)a3 startupLandscapeImageRequestDidFinishWithImage:(id)a4;
- (void)webClipViewController:(id)a3 didFinishWithResult:(BOOL)a4;
@end

@implementation SFWebAppDataProvider

- (void)setContentReadyForDisplay
{
  if (self->_webClipViewController)
  {
    wrappingNavigationController = self->_wrappingNavigationController;
    if (wrappingNavigationController)
    {
      v4 = [(UINavigationController *)wrappingNavigationController topViewController];
      webClipViewController = self->_webClipViewController;

      if (v4 != webClipViewController)
      {
        v6 = self->_wrappingNavigationController;
        v7 = self->_webClipViewController;

        [(UINavigationController *)v6 pushViewController:v7 animated:1];
      }
    }
  }
}

- (void)dealloc
{
  [(_SFWebClipViewController *)self->_webClipViewController setDelegate:0];
  [(UIWebClip *)self->_webClip cancelMediaUpdate];
  [(UIWebClip *)self->_webClip setDelegate:0];
  [(WKWebView *)self->_webView setNavigationDelegate:0];
  [(WKWebView *)self->_webView stopLoading];
  v3.receiver = self;
  v3.super_class = SFWebAppDataProvider;
  [(SFWebAppDataProvider *)&v3 dealloc];
}

- (UIViewController)activityViewController
{
  wrappingNavigationController = self->_wrappingNavigationController;
  if (!wrappingNavigationController)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:self->_webClipViewController];
    v5 = self->_wrappingNavigationController;
    self->_wrappingNavigationController = v4;

    wrappingNavigationController = self->_wrappingNavigationController;
  }

  return wrappingNavigationController;
}

- (void)updateWithWebClipMetadata:(id)a3
{
  v4 = a3;
  [(SFWebAppDataProvider *)self setContentReadyForDisplay];
  v5 = [v4 safari_dictionaryForKey:@"MetaAndLinkTags"];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SFWebAppDataProvider_updateWithWebClipMetadata___block_invoke;
  v6[3] = &unk_1E8491B30;
  v6[4] = self;
  [_SFWebClipMetadataFetcher parseRawMetadataDictionary:v5 consumer:v6];
  [(_SFWebClipViewController *)self->_webClipViewController setCanEditAndSave:1];
  [(_SFWebClipViewController *)self->_webClipViewController updateUIAnimated:0];
  self->_webClipConfigured = 1;
  [(SFWebAppDataProvider *)self _updateManifestValues];
  if (+[_SFFeatureAvailability isHSWADisabled])
  {
    [(UIWebClip *)self->_webClip setFullScreen:0];
  }
}

- (void)updateWebClipIcon:(id)a3
{
  v4 = a3;
  webClip = self->_webClip;
  if (webClip && !self->_touchIcon)
  {
    v6 = v4;
    [(UIWebClip *)webClip setIconImage:v4 isPrecomposed:0];
    [(_SFWebClipViewController *)self->_webClipViewController updateUIAnimated:1];
    v4 = v6;
  }
}

- (void)updateWithStagedCookiesDirectoryURL:(id)a3 sandboxExtensionToken:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v7 UTF8String];
  v8 = sandbox_extension_consume();
  if (v8 == -1)
  {
    v16 = WBS_LOG_CHANNEL_PREFIXWebApp();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SFWebAppDataProvider updateWithStagedCookiesDirectoryURL:v7 sandboxExtensionToken:v16];
    }
  }

  else
  {
    v9 = v8;
    v10 = objc_alloc_init(MEMORY[0x1E69C8A40]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __82__SFWebAppDataProvider_updateWithStagedCookiesDirectoryURL_sandboxExtensionToken___block_invoke;
    v23[3] = &__block_descriptor_40_e5_v8__0l;
    v23[4] = v9;
    [v10 setHandler:v23];
    v11 = [(UIWebClip *)self->_webClip _sf_stagedCookiesURL];
    v12 = v11;
    if (v6 && v11)
    {
      v13 = [MEMORY[0x1E696AC08] defaultManager];
      v22 = 0;
      [v13 copyItemAtURL:v6 toURL:v12 error:&v22];
      v14 = v22;

      if (v14)
      {
        v15 = WBS_LOG_CHANNEL_PREFIXWebApp();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [SFWebAppDataProvider updateWithStagedCookiesDirectoryURL:v15 sandboxExtensionToken:v14];
        }
      }
    }

    else
    {
      v17 = WBS_LOG_CHANNEL_PREFIXWebApp();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
        v19 = [v6 absoluteString];
        v20 = [v12 absoluteString];
        v21 = [(UIWebClip *)self->_webClip identifier];
        *buf = 138543874;
        v25 = v19;
        v26 = 2114;
        v27 = v20;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1D4644000, v18, OS_LOG_TYPE_ERROR, "Received invalid paths to copy cookies from: %{public}@ to: %{public}@, for web clip with identifier: %{public}@", buf, 0x20u);
      }
    }
  }
}

- (void)webClipViewController:(id)a3 didFinishWithResult:(BOOL)a4
{
  v4 = a4;
  v6 = [(SFWebAppDataProvider *)self delegate];
  [v6 dataProvider:self didFinishWithResult:v4];

  v7 = [(UIWebClip *)self->_webClip _sf_stagedCookiesURL];
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v7 path];
    v10 = [v8 fileExistsAtPath:v9];

    if (v10)
    {
      v11 = [MEMORY[0x1E696AC08] defaultManager];
      v17 = 0;
      [v11 removeItemAtURL:v7 error:&v17];
      v12 = v17;

      if (v12)
      {
        v13 = WBS_LOG_CHANNEL_PREFIXWebApp();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [SFWebAppDataProvider webClipViewController:v7 didFinishWithResult:v13];
        }
      }
    }
  }

  wrappingNavigationController = self->_wrappingNavigationController;
  self->_wrappingNavigationController = 0;

  [(_SFWebClipViewController *)self->_webClipViewController setDelegate:0];
  webClipViewController = self->_webClipViewController;
  self->_webClipViewController = 0;

  [(UIWebClip *)self->_webClip setDelegate:0];
  webClip = self->_webClip;
  self->_webClip = 0;
}

- (void)webClip:(id)a3 iconRequestDidFinishWithImage:(id)a4 precomposed:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v8 = a4;
  if (v8 && self->_webClip == v9)
  {
    [(UIWebClip *)v9 setIconImage:v8 isPrecomposed:v5];
    [(_SFWebClipViewController *)self->_webClipViewController updateUIAnimated:1];
    objc_storeStrong(&self->_touchIcon, a4);
    self->_touchIconPrecomposed = v5;
  }
}

- (void)webClip:(id)a3 startupImageRequestDidFinishWithImage:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v6 && self->_webClip == v7 && [v6 sf_isLaunchImageSizedForOrientation:1 includesStatusBar:0])
  {
    [(UIWebClip *)v7 setStartupImage:v6];
  }
}

- (void)webClip:(id)a3 startupLandscapeImageRequestDidFinishWithImage:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v6 && self->_webClip == v7 && [v6 sf_isLaunchImageSizedForOrientation:4 includesStatusBar:0])
  {
    [(UIWebClip *)v7 setStartupLandscapeImage:v6];
  }
}

- (void)_updateManifestValues
{
  v2 = self;
  v45 = *MEMORY[0x1E69E9840];
  manifest = self->_manifest;
  if (manifest)
  {
    v4 = [(_WKApplicationManifest *)manifest safari_name];
    webClip = v2->_webClip;
    if (v4)
    {
      [(UIWebClip *)webClip setTitle:v4];
    }

    else
    {
      v6 = [(UIWebClip *)webClip title];
      [(UIWebClip *)v2->_webClip setTitle:v6];
    }

    v7 = [(_WKApplicationManifest *)v2->_manifest startURL];
    v8 = v2->_webClip;
    if (v7)
    {
      [(UIWebClip *)v8 setPageURL:v7];
    }

    else
    {
      v9 = [(UIWebClip *)v8 pageURL];
      [(UIWebClip *)v2->_webClip setPageURL:v9];
    }

    v10 = [(_WKApplicationManifest *)v2->_manifest displayMode]== 3 || [(_WKApplicationManifest *)v2->_manifest displayMode]== 2;
    [(UIWebClip *)v2->_webClip setFullScreen:v10];
    v11 = [(_WKApplicationManifest *)v2->_manifest icons];
    v12 = v11;
    if (v11)
    {
      v35 = v11;
      v36 = v2;
      v13 = [(_WKApplicationManifest *)v2->_manifest icons];
      v37 = [MEMORY[0x1E695DF70] array];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = v13;
      v14 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v41;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v41 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v40 + 1) + 8 * i);
            v19 = [v18 purposes];
            v20 = [v19 containsObject:&unk_1F5023098];

            if (v20)
            {
              v21 = objc_alloc_init(MEMORY[0x1E69DD2C0]);
              v22 = [v18 src];
              [v21 setUrl:v22];

              [v21 setSiteWide:1];
              [v21 setPrecomposed:0];
              v23 = [v18 sizes];

              if (v23)
              {
                v24 = [v18 sizes];
                v25 = [v24 firstObject];
                v26 = [v25 componentsSeparatedByString:@"x"];
                v27 = [v26 firstObject];
                v28 = [v27 integerValue];

                if (v28)
                {
                  [v21 setBestSize:{v28, v28}];
                }
              }

              [v37 addObject:v21];
            }
          }

          v15 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v15);
      }

      if ([v37 count])
      {
        v29 = v37;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      v2 = v36;
      manifestIcons = v36->_manifestIcons;
      v36->_manifestIcons = v30;

      v12 = v35;
    }

    else
    {
      v32 = v2->_manifestIcons;
      v2->_manifestIcons = 0;
    }

    v33 = [(_WKApplicationManifest *)v2->_manifest manifestId];
    [(UIWebClip *)v2->_webClip setManifestId:v33];

    [(UIWebClip *)v2->_webClip _sf_setApplicationManifest:v2->_manifest];
  }

  [(_SFWebClipViewController *)v2->_webClipViewController setCanEditAndSave:1];
  [(_SFWebClipViewController *)v2->_webClipViewController updateUIAnimated:0];
  v2->_webClipConfigured = 1;
  touchIcon = v2->_touchIcon;
  if (touchIcon)
  {
    [(UIWebClip *)v2->_webClip setIconImage:touchIcon isPrecomposed:v2->_touchIconPrecomposed];
  }

  else
  {
    [(SFWebAppDataProvider *)v2 _updateMonogramIconForWebClip];
    if (v2->_manifestIcons)
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __45__SFWebAppDataProvider__updateManifestValues__block_invoke;
      v39[3] = &unk_1E8491B58;
      v39[4] = v2;
      [(SFWebAppDataProvider *)v2 _downloadManifestIconWithCompletionHandler:v39];
    }
  }
}

uint64_t __45__SFWebAppDataProvider__updateManifestValues__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    [*(*(result + 32) + 24) setIconImage:a2 isPrecomposed:0];
    v3 = *(*(v2 + 32) + 16);

    return [v3 updateUIAnimated:1];
  }

  return result;
}

- (void)_updateMonogramIconForWebClip
{
  if (self->_touchIcon || self->_bestManifestIcon)
  {
    return;
  }

  webView = self->_webView;
  if (webView)
  {
    v4 = [(WKWebView *)webView themeColor];
    pageThemeColor = self->_pageThemeColor;
    self->_pageThemeColor = v4;

    v6 = [(WKWebView *)self->_webView underPageBackgroundColor];
    underPageBackgroundColor = self->_underPageBackgroundColor;
    self->_underPageBackgroundColor = v6;
  }

  v27 = [MEMORY[0x1E69B1C58] defaultIconKeyColor];
  manifest = self->_manifest;
  if (manifest)
  {
    v9 = [(_WKApplicationManifest *)manifest themeColor];
    if (v9)
    {
      v10 = v9;
      v11 = [(_WKApplicationManifest *)self->_manifest themeColor];
      v12 = [v11 safari_isCloseToWhite];

      if ((v12 & 1) == 0)
      {
        v17 = [(_WKApplicationManifest *)self->_manifest themeColor];
LABEL_18:
        v18 = v17;

        v15 = v18;
        goto LABEL_19;
      }
    }
  }

  v13 = self->_pageThemeColor;
  if (v13 && ([(UIColor *)v13 safari_isCloseToWhite]& 1) == 0)
  {
    v16 = self->_pageThemeColor;
LABEL_17:
    v17 = v16;
    goto LABEL_18;
  }

  v14 = self->_underPageBackgroundColor;
  if (v14 && ([(UIColor *)v14 safari_isCloseToWhite]& 1) == 0)
  {
    v16 = self->_underPageBackgroundColor;
    goto LABEL_17;
  }

  v15 = v27;
LABEL_19:
  v28 = v15;
  if (([(UIColor *)v15 sf_isDarkColor]& 1) == 0)
  {
    v19 = [v28 sf_darkenedColor];

    v28 = v19;
  }

  v20 = objc_alloc_init(MEMORY[0x1E69C9880]);
  [MEMORY[0x1E69B1C58] defaultSize];
  [v20 setIconSize:?];
  v21 = MEMORY[0x1E69B1C58];
  if (_SFDeviceIsPad())
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  [v21 fontPointSizeForIconSize:v22];
  [v20 setFontSize:?];
  [v20 setFontWeight:1];
  [v20 setBackgroundColor:v28];
  [MEMORY[0x1E69B1C58] cornerRadius];
  [v20 setCornerRadius:?];
  v23 = MEMORY[0x1E69C9888];
  v24 = [(UIWebClip *)self->_webClip title];
  v25 = [(UIWebClip *)self->_webClip pageURL];
  v26 = [v23 monogramWithTitle:v24 url:v25 monogramConfiguration:v20 shouldRemoveGrammaticalArticles:1];

  [(UIWebClip *)self->_webClip setIconImage:v26 isPrecomposed:1];
  [(_SFWebClipViewController *)self->_webClipViewController updateUIAnimated:1];
}

- (void)_downloadManifestIconWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bestManifestIcon)
  {
    (*(v4 + 2))(v4);
  }

  else
  {
    v6 = [(NSArray *)self->_manifestIcons safari_maximumUsingComparator:&__block_literal_global_18];
    v7 = [MEMORY[0x1E69C97D8] sharedManager];
    v8 = [v6 url];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__SFWebAppDataProvider__downloadManifestIconWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_1E8491BA0;
    v9[4] = self;
    v10 = v5;
    [v7 downloadImageWithURL:v8 options:1 completionHandler:v9];
  }
}

void __67__SFWebAppDataProvider__downloadManifestIconWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v7 = v4;
  if (*(v5 + 80))
  {
    goto LABEL_2;
  }

  if (!v4)
  {
    [v5 _updateMonogramIconForWebClip];
LABEL_2:
    v6 = *(*(a1 + 40) + 16);
    goto LABEL_5;
  }

  objc_storeStrong((v5 + 48), a2);
  v6 = *(*(a1 + 40) + 16);
LABEL_5:
  v6();
}

- (SFWebAppDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepareWithManifestData:(id)a3
{
  v4 = a3;
  v5 = [[_SFWebClipViewController alloc] initWithStyle:1];
  webClipViewController = self->_webClipViewController;
  self->_webClipViewController = v5;

  [(_SFWebClipViewController *)self->_webClipViewController setDelegate:self];
  v7 = [(NSDictionary *)v4 safari_applicationManifestForKey:?];
  manifest = self->_manifest;
  self->_manifest = v7;

  v9 = [(NSDictionary *)v4 safari_colorForKey:?];
  pageThemeColor = self->_pageThemeColor;
  self->_pageThemeColor = v9;

  v11 = [(NSDictionary *)v4 safari_colorForKey:?];
  underPageBackgroundColor = self->_underPageBackgroundColor;
  self->_underPageBackgroundColor = v11;

  v18 = [v4 safari_URLForKey:@"PageURL"];
  v13 = objc_alloc_init(MEMORY[0x1E69DD2B8]);
  webClip = self->_webClip;
  self->_webClip = v13;

  [(UIWebClip *)self->_webClip setDelegate:self];
  v15 = [v4 safari_stringForKey:@"PageTitle"];

  [(UIWebClip *)self->_webClip setTitle:v15];
  [(UIWebClip *)self->_webClip setPageURL:v18];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v17 = [WeakRetained trustedClientBundleIdentifier];

  if ([v17 length] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(UIWebClip *)self->_webClip addTrustedClientBundleIdentifier:v17];
  }

  [(_SFWebClipViewController *)self->_webClipViewController setWebClip:self->_webClip];
}

- (void)updateWithStagedCookiesDirectoryURL:(void *)a1 sandboxExtensionToken:(void *)a2 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Failed to copy staged cookies into webClip's directory %@", &v5, 0xCu);
}

- (void)updateWithStagedCookiesDirectoryURL:(uint64_t)a1 sandboxExtensionToken:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *__error();
  v5 = 138412546;
  v6 = a1;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Failed to consume sandbox extension, Sandbox Extension %@, errno = %d", &v5, 0x12u);
}

- (void)webClipViewController:(uint64_t)a1 didFinishWithResult:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Failed to remove stageCookies at URL %@", &v2, 0xCu);
}

@end