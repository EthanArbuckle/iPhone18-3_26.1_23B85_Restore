@interface _SFLinkPreviewHelper
+ (id)contextMenuConfigurationForWebView:(id)a3 elementInfo:(id)a4 handler:(id)a5;
+ (id)contextMenuContentPreviewForWebView:(id)a3 elementInfo:(id)a4 handler:(id)a5;
+ (id)linkPreviewHelperForWebView:(id)a3;
+ (id)previewViewControllerWebView:(id)a3 windowBounds:(CGRect)a4 url:(id)a5 handler:(id)a6;
+ (void)commitPreviewViewController:(id)a3;
+ (void)initialize;
+ (void)invalidateLinkPreviewHelperForWebView:(id)a3;
- (BOOL)_previewViewControllerIsLinkPreview;
- (NSURL)url;
- (UIViewController)previewContentViewController;
- (_SFLinkPreviewHeader)activeLinkPreviewHeader;
- (_SFLinkPreviewHelper)initWithWebView:(id)a3 windowBounds:(CGRect)a4 elementInfo:(id)a5 orURL:(id)a6 handler:(id)a7;
- (double)headerViewHeightForAdaptivePreviewViewController:(id)a3;
- (id)adaptivePreviewViewController:(id)a3 requestLinkPreviewViewControllerWithURL:(id)a4;
- (id)addToReadingListActionForURL:(id)a3;
- (id)downloadActionForURL:(id)a3;
- (id)makeContextMenuConfiguration;
- (id)makePreviewViewController;
- (id)menuElementsForSuggestedActions:(id)a3;
- (id)menuWithSuggestedActions:(id)a3;
- (id)openActionForAlternateURL:(id)a3;
- (id)openActionForRedirectToExternalNavigationResult:(id)a3;
- (id)openActionForSettingUpOneTimeCodeGeneratorWithExternalNavigationResult:(id)a3;
- (id)openInNewTabActionForURL:(id)a3 withTabOrder:(int64_t)a4 preActionHandler:(id)a5;
- (id)openInNewWindowActionForURL:(id)a3;
- (id)openInTabGroupActionForURL:(id)a3 shouldPerformActionHandler:(id)a4;
- (id)previewViewController;
- (id)previewViewControllerForURL:(id)a3;
- (void)adaptivePreviewViewControllerWillDisableLinkPreview:(id)a3;
- (void)commitPreviewViewController;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateElementInfo;
- (void)openURL:(id)a3 forAction:(int64_t)a4 withTabOrder:(int64_t)a5;
@end

@implementation _SFLinkPreviewHelper

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v3 = ownerToPreviewMap;
    ownerToPreviewMap = v2;
  }
}

+ (id)contextMenuConfigurationForWebView:(id)a3 elementInfo:(id)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 _activatedElementInfo];
  v11 = previewContentForElementInfo(v10);

  if (v11 == 2)
  {
    if (shouldProvideActionsForQRCodes())
    {
LABEL_3:
      v12 = [_SFLinkPreviewHelper alloc];
      v13 = [v7 window];
      [v13 bounds];
      v14 = [(_SFLinkPreviewHelper *)v12 initWithWebView:v7 windowBounds:v8 elementInfo:0 orURL:v9 handler:?];

      [ownerToPreviewMap setObject:v14 forKey:v7];
      v15 = [(_SFLinkPreviewHelper *)v14 makeContextMenuConfiguration];

      goto LABEL_6;
    }
  }

  else
  {
    v16 = [v8 linkURL];
    v17 = [v16 safari_isHTTPFamilyURL];

    if (v17)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:

  return v15;
}

+ (id)contextMenuContentPreviewForWebView:(id)a3 elementInfo:(id)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ((shouldProvideActionsForQRCodes() & 1) != 0 || ([v8 _activatedElementInfo], v10 = objc_claimAutoreleasedReturnValue(), v11 = previewContentForElementInfo(v10), v10, v11 != 2))
  {
    v15 = 0;
  }

  else
  {
    v12 = [_SFLinkPreviewHelper alloc];
    v13 = [v7 window];
    [v13 bounds];
    v14 = [(_SFLinkPreviewHelper *)v12 initWithWebView:v7 windowBounds:v8 elementInfo:0 orURL:v9 handler:?];

    [ownerToPreviewMap setObject:v14 forKey:v7];
    v15 = [(_SFLinkPreviewHelper *)v14 previewViewController];
  }

  return v15;
}

+ (id)linkPreviewHelperForWebView:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [ownerToPreviewMap objectForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)invalidateLinkPreviewHelperForWebView:(id)a3
{
  v5 = a3;
  v3 = [v5 superview];

  if (!v3)
  {
    v4 = [ownerToPreviewMap objectForKey:v5];
    [v4 invalidate];

    [ownerToPreviewMap removeObjectForKey:v5];
  }
}

+ (id)previewViewControllerWebView:(id)a3 windowBounds:(CGRect)a4 url:(id)a5 handler:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = [[_SFLinkPreviewHelper alloc] initWithWebView:v12 windowBounds:0 elementInfo:v13 orURL:v14 handler:x, y, width, height];
  [ownerToPreviewMap setObject:v15 forKey:v12];
  v16 = [(_SFLinkPreviewHelper *)v15 previewViewController];

  return v16;
}

+ (void)commitPreviewViewController:(id)a3
{
  v3 = [ownerToPreviewMap objectForKey:a3];
  [v3 commitPreviewViewController];
  [v3 invalidate];
}

- (_SFLinkPreviewHelper)initWithWebView:(id)a3 windowBounds:(CGRect)a4 elementInfo:(id)a5 orURL:(id)a6 handler:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v25.receiver = self;
  v25.super_class = _SFLinkPreviewHelper;
  v20 = [(_SFLinkPreviewHelper *)&v25 init];
  if (v20)
  {
    v21 = [v17 _activatedElementInfo];
    elementInfo = v20->_elementInfo;
    v20->_elementInfo = v21;

    objc_storeStrong(&v20->_fallbackURL, a6);
    objc_storeWeak(&v20->_handler, v19);
    objc_storeStrong(&v20->_webView, a3);
    v20->_windowBounds.origin.x = x;
    v20->_windowBounds.origin.y = y;
    v20->_windowBounds.size.width = width;
    v20->_windowBounds.size.height = height;
    v23 = v20;
  }

  return v20;
}

- (NSURL)url
{
  v3 = [(_WKActivatedElementInfo *)self->_elementInfo URL];
  fallbackURL = v3;
  if (!v3)
  {
    fallbackURL = self->_fallbackURL;
  }

  v5 = fallbackURL;

  return fallbackURL;
}

- (void)commitPreviewViewController
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E69C9750]) initWithURL:v3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZZ51___SFLinkPreviewHelper_commitPreviewViewController_ENK3__0clEP5NSURL_block_invoke;
  v8[3] = &unk_1E84922F0;
  v5 = *a1;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  v11 = v6;
  v7 = v4;
  [v7 decideOpenStrategyWithCompletionHandler:v8];
}

- (void)openURL:(id)a3 forAction:(int64_t)a4 withTabOrder:(int64_t)a5
{
  v11 = a3;
  v8 = [MEMORY[0x1E69B1C50] builderWithModifierFlags:0];
  [v8 setPreferredTabOrder:a5];
  if (a4 == 3)
  {
    [v8 setPrefersOpenInNewTab:1];
  }

  else if (a4 == 4)
  {
    [v8 setPrefersOpenInNewWindow:1];
  }

  v9 = [v8 navigationIntentWithURL:v11];
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  [WeakRetained linkPreviewHelper:self didProduceNavigationIntent:v9 forAction:a4];
}

- (void)invalidate
{
  p_cachedPreviewViewController = &self->_cachedPreviewViewController;
  if (self->_cachedPreviewViewController && ([ownerToPreviewMap objectForKey:?], v4 = objc_claimAutoreleasedReturnValue(), v4, v4 == self) || (p_cachedPreviewViewController = &self->_webView, objc_msgSend(ownerToPreviewMap, "objectForKey:", self->_webView), v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == self))
  {
    [ownerToPreviewMap removeObjectForKey:*p_cachedPreviewViewController];
  }

  [(_SFLinkPreviewHelper *)self invalidateElementInfo];
}

- (void)invalidateElementInfo
{
  if (self->_elementInfo)
  {
    v3 = +[_SFQRCodeDetectionController sharedController];
    [v3 clearCachedElement:self->_elementInfo];
  }
}

- (void)dealloc
{
  [(_SFLinkPreviewHelper *)self invalidateElementInfo];
  v3.receiver = self;
  v3.super_class = _SFLinkPreviewHelper;
  [(_SFLinkPreviewHelper *)&v3 dealloc];
}

- (id)makeContextMenuConfiguration
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52___SFLinkPreviewHelper_makeContextMenuConfiguration__block_invoke;
  v5[3] = &unk_1E8492120;
  v5[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52___SFLinkPreviewHelper_makeContextMenuConfiguration__block_invoke_2;
  v4[3] = &unk_1E8492148;
  v4[4] = self;
  v2 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:v5 actionProvider:v4];

  return v2;
}

- (UIViewController)previewContentViewController
{
  v2 = [(_SFLinkPreviewHelper *)self previewViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 contentViewController];

    v2 = v3;
  }

  return v2;
}

- (id)previewViewController
{
  cachedPreviewViewController = self->_cachedPreviewViewController;
  if (!cachedPreviewViewController)
  {
    v4 = [(_SFLinkPreviewHelper *)self makePreviewViewController];
    v5 = self->_cachedPreviewViewController;
    self->_cachedPreviewViewController = v4;

    cachedPreviewViewController = self->_cachedPreviewViewController;
  }

  return cachedPreviewViewController;
}

- (id)makePreviewViewController
{
  v3 = previewContentForElementInfo(self->_elementInfo);
  if (v3 == 2)
  {
    v5 = [[_SFQRImagePreviewViewController alloc] initWithElementInfo:self->_elementInfo];
  }

  else
  {
    if (v3 == 1)
    {
      [(_WKActivatedElementInfo *)self->_elementInfo imageURL];
    }

    else
    {
      [(_SFLinkPreviewHelper *)self url];
    }
    v4 = ;
    v5 = [(_SFLinkPreviewHelper *)self previewViewControllerForURL:v4];
  }

  return v5;
}

- (id)menuWithSuggestedActions:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  if (objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained isAutomationEnabledForLinkPreviewHelper:self])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(_SFLinkPreviewHelper *)self menuElementsForSuggestedActions:v4];
    if ((previewContentForElementInfo(self->_elementInfo) - 1) > 1)
    {
      v8 = &stru_1F4FE9E38;
    }

    else
    {
      v8 = [(_WKActivatedElementInfo *)self->_elementInfo title];
    }

    v6 = [MEMORY[0x1E69DCC60] menuWithTitle:v8 children:v7];
  }

  return v6;
}

- (id)adaptivePreviewViewController:(id)a3 requestLinkPreviewViewControllerWithURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  v9 = [WeakRetained linkPreviewHelper:self previewViewControllerForURL:v7];

  v10 = [(_SFLinkPreviewHelper *)self activeLinkPreviewHeader];
  [v10 setDelegate:v6];

  return v9;
}

- (double)headerViewHeightForAdaptivePreviewViewController:(id)a3
{
  v3 = [(_SFLinkPreviewHelper *)self activeLinkPreviewHeader];
  [v3 bounds];
  Height = CGRectGetHeight(v7);
  if (Height == 0.0)
  {
    [v3 defaultHeight];
    Height = v5;
  }

  return Height;
}

- (void)adaptivePreviewViewControllerWillDisableLinkPreview:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained linkPreviewHelperWillDisableLinkPreview];
  }
}

- (BOOL)_previewViewControllerIsLinkPreview
{
  v2 = [(_SFLinkPreviewHelper *)self previewViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 showingLinkPreview];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)previewViewControllerForURL:(id)a3
{
  v4 = a3;
  if ([v4 isTelephonyURL] & 1) != 0 || (objc_msgSend(v4, "sf_isFacetimeURL") & 1) != 0 || (objc_msgSend(v4, "safari_isMailtoURL"))
  {
    v5 = 0;
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEFAULT, "Showing link preview for link on webpage", v10, 2u);
    }

    v5 = [[_SFAdaptivePreviewViewController alloc] initWithURL:v4];
    [(_SFAdaptivePreviewViewController *)v5 setDelegate:self];
    if ([(_WKActivatedElementInfo *)self->_elementInfo type]== 1)
    {
      v8 = [(_WKActivatedElementInfo *)self->_elementInfo image];
      [v8 size];
      [(_SFAdaptivePreviewViewController *)v5 setPreferredDocumentContentSize:?];
    }

    else
    {
      Width = CGRectGetWidth(self->_windowBounds);
      [(_SFAdaptivePreviewViewController *)v5 setPreferredDocumentContentSize:Width, Width * 1.33333333];
    }
  }

  return v5;
}

- (id)menuElementsForSuggestedActions:(id)a3
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v63 = [(_SFLinkPreviewHelper *)self url];
  v5 = [MEMORY[0x1E695DF70] array];
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  v61 = +[_SFQRCodeDetectionController sharedController];
  if (self->_elementInfo)
  {
    v6 = [v61 menuElementsForElementInfo:?];
    [v5 addObjectsFromArray:v6];

    v7 = [v61 actionForElement:self->_elementInfo];
    [v7 setDelegate:WeakRetained];
    [v61 cacheElement:self->_elementInfo];
    v58 = [v7 urlThatCanBeOpened];
  }

  else
  {
    v58 = 0;
  }

  v64 = [WeakRetained linkPreviewHelper:self resultOfLoadingURL:v63];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v88 objects:v92 count:16];
  if (v8)
  {
    v69 = self;
    v66 = 0;
    v67 = 0;
    v56 = 0;
    v57 = 0;
    v65 = 0;
    v59 = 0;
    v60 = 0;
    v62 = 0;
    v9 = *v89;
    v55 = *MEMORY[0x1E69C8B18];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v89 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v88 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = MEMORY[0x1E69853E0];
          v14 = [v12 identifier];
          v15 = [v13 elementActionTypeForUIActionIdentifier:v14];

          switch(v15)
          {
            case 1:
              v22 = [v64 type];
              if (v22 != 3 || ([v64 externalApplication], v23 = objc_claimAutoreleasedReturnValue(), v24 = v23 == 0, v23, v24))
              {
                v27 = [objc_alloc(MEMORY[0x1E69C9750]) initWithURL:v63];
                appLink = v69->_appLink;
                v69->_appLink = v27;

                v29 = [(WBSAppLink *)v69->_appLink synchronouslyDecideOpenStrategy];
                if ((v29 - 1) >= 3)
                {
                  if ((v29 + 1) < 2)
                  {
                    if (v58)
                    {
                      v42 = [(_SFLinkPreviewHelper *)v69 openActionForAlternateURL:?];
                    }

                    else
                    {
                      v42 = v12;
                    }

                    v47 = v42;

                    if ((v22 - 1) <= 1)
                    {
                      v48 = [(_SFLinkPreviewHelper *)v69 openInNewTabActionForURL:v63 withTabOrder:0 preActionHandler:0];

                      v57 = v48;
                    }

                    v49 = [(_SFLinkPreviewHelper *)v69 openInTabGroupActionForURL:v63 shouldPerformActionHandler:0];

                    v60 = v49;
                    v50 = [(_SFLinkPreviewHelper *)v69 openInNewWindowActionForURL:v63];

                    v59 = v50;
                    if ((v22 - 1) < 2)
                    {
                      v51 = [(_SFLinkPreviewHelper *)v69 downloadActionForURL:v63];

                      v56 = v51;
                    }

                    [v5 addObject:v47];
                    [v5 safari_addObjectUnlessNil:v57];
                    [v5 safari_addObjectUnlessNil:v60];
                    [v5 safari_addObjectUnlessNil:v59];
                    [v5 safari_addObjectUnlessNil:v56];
                    v62 = v47;
                  }
                }

                else
                {
                  v82 = 0;
                  v83 = &v82;
                  v84 = 0x3032000000;
                  v85 = __Block_byref_object_copy__2;
                  v86 = __Block_byref_object_dispose__2;
                  v87 = 0;
                  v76 = 0;
                  v77 = &v76;
                  v78 = 0x3032000000;
                  v79 = __Block_byref_object_copy__2;
                  v80 = __Block_byref_object_dispose__2;
                  v81 = 0;
                  v30 = v69->_appLink;
                  v75[0] = MEMORY[0x1E69E9820];
                  v75[1] = 3221225472;
                  v75[2] = __56___SFLinkPreviewHelper_menuElementsForSuggestedActions___block_invoke;
                  v75[3] = &unk_1E8492170;
                  v75[4] = &v82;
                  v75[5] = &v76;
                  [(WBSAppLink *)v30 getAppLinkAttributesWithCompletionHandler:v75];
                  v31 = MEMORY[0x1E69DC628];
                  v32 = _WBSLocalizedString();
                  v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari"];
                  v72[0] = MEMORY[0x1E69E9820];
                  v72[1] = 3221225472;
                  v72[2] = __56___SFLinkPreviewHelper_menuElementsForSuggestedActions___block_invoke_2;
                  v72[3] = &unk_1E84921C0;
                  v72[4] = v69;
                  v73 = v58;
                  v34 = v63;
                  v74 = v34;
                  v35 = [v31 actionWithTitle:v32 image:v33 identifier:0 handler:v72];
                  [v5 addObject:v35];

                  if ((v22 - 1) <= 1)
                  {
                    aBlock[0] = MEMORY[0x1E69E9820];
                    aBlock[1] = 3221225472;
                    aBlock[2] = __56___SFLinkPreviewHelper_menuElementsForSuggestedActions___block_invoke_192;
                    aBlock[3] = &unk_1E84921E8;
                    aBlock[4] = v69;
                    v36 = _Block_copy(aBlock);
                    v37 = [(_SFLinkPreviewHelper *)v69 openInNewTabActionForURL:v34 withTabOrder:0 preActionHandler:v36];
                    [v5 safari_addObjectUnlessNil:v37];

                    v38 = [(_SFLinkPreviewHelper *)v69 openInTabGroupActionForURL:v34 shouldPerformActionHandler:v36];
                    [v5 safari_addObjectUnlessNil:v38];

                    v39 = [(_SFLinkPreviewHelper *)v69 openInNewWindowActionForURL:v34];
                    [v5 safari_addObjectUnlessNil:v39];
                  }

                  if (v83[5])
                  {
                    if ([v77[5] isEqualToString:v55])
                    {
                      v40 = _WBSLocalizedString();
                      v41 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"arrow.up.forward.appclip"];
                    }

                    else
                    {
                      v43 = MEMORY[0x1E696AEC0];
                      v44 = _WBSLocalizedString();
                      v45 = [v43 stringWithFormat:v44, v83[5]];

                      v41 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.forward.app"];
                      v40 = v45;
                    }

                    v70[0] = MEMORY[0x1E69E9820];
                    v70[1] = 3221225472;
                    v70[2] = __56___SFLinkPreviewHelper_menuElementsForSuggestedActions___block_invoke_2_207;
                    v70[3] = &unk_1E8492210;
                    v70[4] = v69;
                    v46 = [MEMORY[0x1E69DC628] actionWithTitle:v40 image:v41 identifier:0 handler:v70];
                    [v5 addObject:v46];
                  }

                  _Block_object_dispose(&v76, 8);
                  _Block_object_dispose(&v82, 8);
                }
              }

              else
              {
                if ([v63 safari_isOTPAuthURL])
                {
                  [(_SFLinkPreviewHelper *)v69 openActionForSettingUpOneTimeCodeGeneratorWithExternalNavigationResult:v64];
                }

                else
                {
                  [(_SFLinkPreviewHelper *)v69 openActionForRedirectToExternalNavigationResult:v64];
                }
                v25 = ;
                [v5 addObject:v25];
              }

              break;
            case 2:
              v21 = [v61 adjustedCopyActionForAction:v12 elementInfo:v69->_elementInfo];

              [v5 safari_addObjectUnlessNil:v21];
              v66 = v21;
              break;
            case 4:
              v16 = [v64 URL];
              v17 = [(_SFLinkPreviewHelper *)v69 addToReadingListActionForURL:v16];
              v18 = v17;
              if (v17)
              {
                v19 = v17;
              }

              else
              {
                v19 = v12;
              }

              v20 = v19;

              [v5 addObject:v20];
              v65 = v20;
              break;
            default:
              v26 = v12;

              [v5 addObject:v26];
              v67 = v26;
              break;
          }
        }

        else
        {
          [v5 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v88 objects:v92 count:16];
    }

    while (v8);
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v56 = 0;
    v57 = 0;
    v65 = 0;
    v59 = 0;
    v60 = 0;
    v62 = 0;
  }

  v52 = [v5 copy];

  return v52;
}

- (id)openActionForAlternateURL:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69DC628];
  v6 = _WBSLocalizedString();
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50___SFLinkPreviewHelper_openActionForAlternateURL___block_invoke;
  v11[3] = &unk_1E8492238;
  v11[4] = self;
  v8 = v4;
  v12 = v8;
  v9 = [v5 actionWithTitle:v6 image:v7 identifier:0 handler:v11];

  return v9;
}

- (id)openActionForRedirectToExternalNavigationResult:(id)a3
{
  v4 = a3;
  v5 = [v4 externalApplication];
  v6 = [v5 bundleIdentifier];
  if ([v6 isEqualToString:@"com.apple.InCallService"])
  {
    v7 = [v4 URL];
    v8 = [v7 sf_isFacetimeURL];

    if (v8)
    {
      v9 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.facetime"];
      v10 = v9;
      if (v9)
      {
        v11 = v9;

        v5 = v11;
      }
    }
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69C8B18]])
  {
    v12 = _WBSLocalizedString();
    v13 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"arrow.up.forward.appclip"];
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = _WBSLocalizedString();
    v16 = [v5 localizedName];
    v17 = [v14 stringWithFormat:v15, v16];

    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.forward.app"];
    v12 = v17;
  }

  v18 = MEMORY[0x1E69DC628];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72___SFLinkPreviewHelper_openActionForRedirectToExternalNavigationResult___block_invoke;
  v22[3] = &unk_1E8492238;
  v22[4] = self;
  v19 = v4;
  v23 = v19;
  v20 = [v18 actionWithTitle:v12 image:v13 identifier:0 handler:v22];

  return v20;
}

- (id)openActionForSettingUpOneTimeCodeGeneratorWithExternalNavigationResult:(id)a3
{
  v4 = a3;
  v5 = [v4 externalApplication];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.Preferences"];

  v8 = MEMORY[0x1E696AEC0];
  v9 = _WBSLocalizedString();
  if (v7)
  {
    v10 = [v8 stringWithFormat:v9];
  }

  else
  {
    v11 = [v4 externalApplication];
    v12 = [v11 localizedName];
    v10 = [v8 stringWithFormat:v9, v12];
  }

  objc_initWeak(&location, self);
  v13 = MEMORY[0x1E69DC628];
  v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95___SFLinkPreviewHelper_openActionForSettingUpOneTimeCodeGeneratorWithExternalNavigationResult___block_invoke;
  v18[3] = &unk_1E8492260;
  objc_copyWeak(&v20, &location);
  v15 = v4;
  v19 = v15;
  v16 = [v13 actionWithTitle:v10 image:v14 identifier:0 handler:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v16;
}

- (id)openInNewTabActionForURL:(id)a3 withTabOrder:(int64_t)a4 preActionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  v11 = [WeakRetained linkPreviewHelper:self supportsAction:3 forURL:v8];

  if (v11)
  {
    [MEMORY[0x1E69B1C48] effectiveTabOrderWithPreferredTabOrder:a4];
    v12 = _WBSLocalizedString();
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.square.on.square"];
    v14 = MEMORY[0x1E69DC628];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79___SFLinkPreviewHelper_openInNewTabActionForURL_withTabOrder_preActionHandler___block_invoke;
    v17[3] = &unk_1E8492288;
    v19 = v9;
    v20 = a4;
    v17[4] = self;
    v18 = v8;
    v15 = [v14 actionWithTitle:v12 image:v13 identifier:0 handler:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)openInTabGroupActionForURL:(id)a3 shouldPerformActionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  if ([WeakRetained linkPreviewHelper:self supportsAction:3 forURL:v6] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78___SFLinkPreviewHelper_openInTabGroupActionForURL_shouldPerformActionHandler___block_invoke;
    v11[3] = &unk_1E84922B0;
    v14 = v7;
    v11[4] = self;
    v12 = WeakRetained;
    v13 = v6;
    v9 = [v12 openInTabGroupMenuWithNewTabGroupName:0 URL:v13 descendantCount:0 handler:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)openInNewWindowActionForURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v6 = [v5 supportsMultipleScenes];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_handler);
    if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained isPrivateBrowsingEnabledForPreviewHelper:self])
    {
      v8 = _WBSLocalizedString();
      v9 = @"plus.square.fill";
    }

    else
    {
      v8 = _WBSLocalizedString();
      v9 = @"plus.square";
    }

    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:v9];
    v12 = MEMORY[0x1E69DC628];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52___SFLinkPreviewHelper_openInNewWindowActionForURL___block_invoke;
    v15[3] = &unk_1E84921C0;
    v13 = WeakRetained;
    v16 = v13;
    v17 = self;
    v18 = v4;
    v10 = [v12 actionWithTitle:v8 image:v11 identifier:0 handler:v15];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)addToReadingListActionForURL:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  if ([WeakRetained linkPreviewHelper:self supportsAction:0 forURL:v4] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v6 = _WBSLocalizedString();
    v7 = MEMORY[0x1E69DC628];
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eyeglasses"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53___SFLinkPreviewHelper_addToReadingListActionForURL___block_invoke;
    v11[3] = &unk_1E84921C0;
    v12 = WeakRetained;
    v13 = self;
    v14 = v4;
    v9 = [v7 actionWithTitle:v6 image:v8 identifier:0 handler:v11];

    [v9 setAccessibilityIdentifier:@"AddLinkToReadingListMenuItem"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)downloadActionForURL:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  if ([WeakRetained linkPreviewHelper:self supportsAction:1 forURL:v4] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v6 = MEMORY[0x1E69DC628];
    v7 = _WBSLocalizedString();
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.down.circle"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45___SFLinkPreviewHelper_downloadActionForURL___block_invoke;
    v11[3] = &unk_1E84921C0;
    v12 = WeakRetained;
    v13 = self;
    v14 = v4;
    v9 = [v6 actionWithTitle:v7 image:v8 identifier:0 handler:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_SFLinkPreviewHeader)activeLinkPreviewHeader
{
  WeakRetained = objc_loadWeakRetained(&self->_activeLinkPreviewHeader);

  return WeakRetained;
}

@end