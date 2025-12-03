@interface _SFLinkPreviewHelper
+ (id)contextMenuConfigurationForWebView:(id)view elementInfo:(id)info handler:(id)handler;
+ (id)contextMenuContentPreviewForWebView:(id)view elementInfo:(id)info handler:(id)handler;
+ (id)linkPreviewHelperForWebView:(id)view;
+ (id)previewViewControllerWebView:(id)view windowBounds:(CGRect)bounds url:(id)url handler:(id)handler;
+ (void)commitPreviewViewController:(id)controller;
+ (void)initialize;
+ (void)invalidateLinkPreviewHelperForWebView:(id)view;
- (BOOL)_previewViewControllerIsLinkPreview;
- (NSURL)url;
- (UIViewController)previewContentViewController;
- (_SFLinkPreviewHeader)activeLinkPreviewHeader;
- (_SFLinkPreviewHelper)initWithWebView:(id)view windowBounds:(CGRect)bounds elementInfo:(id)info orURL:(id)l handler:(id)handler;
- (double)headerViewHeightForAdaptivePreviewViewController:(id)controller;
- (id)adaptivePreviewViewController:(id)controller requestLinkPreviewViewControllerWithURL:(id)l;
- (id)addToReadingListActionForURL:(id)l;
- (id)downloadActionForURL:(id)l;
- (id)makeContextMenuConfiguration;
- (id)makePreviewViewController;
- (id)menuElementsForSuggestedActions:(id)actions;
- (id)menuWithSuggestedActions:(id)actions;
- (id)openActionForAlternateURL:(id)l;
- (id)openActionForRedirectToExternalNavigationResult:(id)result;
- (id)openActionForSettingUpOneTimeCodeGeneratorWithExternalNavigationResult:(id)result;
- (id)openInNewTabActionForURL:(id)l withTabOrder:(int64_t)order preActionHandler:(id)handler;
- (id)openInNewWindowActionForURL:(id)l;
- (id)openInTabGroupActionForURL:(id)l shouldPerformActionHandler:(id)handler;
- (id)previewViewController;
- (id)previewViewControllerForURL:(id)l;
- (void)adaptivePreviewViewControllerWillDisableLinkPreview:(id)preview;
- (void)commitPreviewViewController;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateElementInfo;
- (void)openURL:(id)l forAction:(int64_t)action withTabOrder:(int64_t)order;
@end

@implementation _SFLinkPreviewHelper

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v3 = ownerToPreviewMap;
    ownerToPreviewMap = weakToStrongObjectsMapTable;
  }
}

+ (id)contextMenuConfigurationForWebView:(id)view elementInfo:(id)info handler:(id)handler
{
  viewCopy = view;
  infoCopy = info;
  handlerCopy = handler;
  _activatedElementInfo = [infoCopy _activatedElementInfo];
  v11 = previewContentForElementInfo(_activatedElementInfo);

  if (v11 == 2)
  {
    if (shouldProvideActionsForQRCodes())
    {
LABEL_3:
      v12 = [_SFLinkPreviewHelper alloc];
      window = [viewCopy window];
      [window bounds];
      v14 = [(_SFLinkPreviewHelper *)v12 initWithWebView:viewCopy windowBounds:infoCopy elementInfo:0 orURL:handlerCopy handler:?];

      [ownerToPreviewMap setObject:v14 forKey:viewCopy];
      makeContextMenuConfiguration = [(_SFLinkPreviewHelper *)v14 makeContextMenuConfiguration];

      goto LABEL_6;
    }
  }

  else
  {
    linkURL = [infoCopy linkURL];
    safari_isHTTPFamilyURL = [linkURL safari_isHTTPFamilyURL];

    if (safari_isHTTPFamilyURL)
    {
      goto LABEL_3;
    }
  }

  makeContextMenuConfiguration = 0;
LABEL_6:

  return makeContextMenuConfiguration;
}

+ (id)contextMenuContentPreviewForWebView:(id)view elementInfo:(id)info handler:(id)handler
{
  viewCopy = view;
  infoCopy = info;
  handlerCopy = handler;
  if ((shouldProvideActionsForQRCodes() & 1) != 0 || ([infoCopy _activatedElementInfo], v10 = objc_claimAutoreleasedReturnValue(), v11 = previewContentForElementInfo(v10), v10, v11 != 2))
  {
    previewViewController = 0;
  }

  else
  {
    v12 = [_SFLinkPreviewHelper alloc];
    window = [viewCopy window];
    [window bounds];
    v14 = [(_SFLinkPreviewHelper *)v12 initWithWebView:viewCopy windowBounds:infoCopy elementInfo:0 orURL:handlerCopy handler:?];

    [ownerToPreviewMap setObject:v14 forKey:viewCopy];
    previewViewController = [(_SFLinkPreviewHelper *)v14 previewViewController];
  }

  return previewViewController;
}

+ (id)linkPreviewHelperForWebView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    v4 = [ownerToPreviewMap objectForKey:viewCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)invalidateLinkPreviewHelperForWebView:(id)view
{
  viewCopy = view;
  superview = [viewCopy superview];

  if (!superview)
  {
    v4 = [ownerToPreviewMap objectForKey:viewCopy];
    [v4 invalidate];

    [ownerToPreviewMap removeObjectForKey:viewCopy];
  }
}

+ (id)previewViewControllerWebView:(id)view windowBounds:(CGRect)bounds url:(id)url handler:(id)handler
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  viewCopy = view;
  urlCopy = url;
  handlerCopy = handler;
  height = [[_SFLinkPreviewHelper alloc] initWithWebView:viewCopy windowBounds:0 elementInfo:urlCopy orURL:handlerCopy handler:x, y, width, height];
  [ownerToPreviewMap setObject:height forKey:viewCopy];
  previewViewController = [(_SFLinkPreviewHelper *)height previewViewController];

  return previewViewController;
}

+ (void)commitPreviewViewController:(id)controller
{
  v3 = [ownerToPreviewMap objectForKey:controller];
  [v3 commitPreviewViewController];
  [v3 invalidate];
}

- (_SFLinkPreviewHelper)initWithWebView:(id)view windowBounds:(CGRect)bounds elementInfo:(id)info orURL:(id)l handler:(id)handler
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  viewCopy = view;
  infoCopy = info;
  lCopy = l;
  handlerCopy = handler;
  v25.receiver = self;
  v25.super_class = _SFLinkPreviewHelper;
  v20 = [(_SFLinkPreviewHelper *)&v25 init];
  if (v20)
  {
    _activatedElementInfo = [infoCopy _activatedElementInfo];
    elementInfo = v20->_elementInfo;
    v20->_elementInfo = _activatedElementInfo;

    objc_storeStrong(&v20->_fallbackURL, l);
    objc_storeWeak(&v20->_handler, handlerCopy);
    objc_storeStrong(&v20->_webView, view);
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
  v5 = *self;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  v11 = v6;
  v7 = v4;
  [v7 decideOpenStrategyWithCompletionHandler:v8];
}

- (void)openURL:(id)l forAction:(int64_t)action withTabOrder:(int64_t)order
{
  lCopy = l;
  v8 = [MEMORY[0x1E69B1C50] builderWithModifierFlags:0];
  [v8 setPreferredTabOrder:order];
  if (action == 3)
  {
    [v8 setPrefersOpenInNewTab:1];
  }

  else if (action == 4)
  {
    [v8 setPrefersOpenInNewWindow:1];
  }

  v9 = [v8 navigationIntentWithURL:lCopy];
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  [WeakRetained linkPreviewHelper:self didProduceNavigationIntent:v9 forAction:action];
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
  previewViewController = [(_SFLinkPreviewHelper *)self previewViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentViewController = [previewViewController contentViewController];

    previewViewController = contentViewController;
  }

  return previewViewController;
}

- (id)previewViewController
{
  cachedPreviewViewController = self->_cachedPreviewViewController;
  if (!cachedPreviewViewController)
  {
    makePreviewViewController = [(_SFLinkPreviewHelper *)self makePreviewViewController];
    v5 = self->_cachedPreviewViewController;
    self->_cachedPreviewViewController = makePreviewViewController;

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

- (id)menuWithSuggestedActions:(id)actions
{
  actionsCopy = actions;
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  if (objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained isAutomationEnabledForLinkPreviewHelper:self])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(_SFLinkPreviewHelper *)self menuElementsForSuggestedActions:actionsCopy];
    if ((previewContentForElementInfo(self->_elementInfo) - 1) > 1)
    {
      title = &stru_1F4FE9E38;
    }

    else
    {
      title = [(_WKActivatedElementInfo *)self->_elementInfo title];
    }

    v6 = [MEMORY[0x1E69DCC60] menuWithTitle:title children:v7];
  }

  return v6;
}

- (id)adaptivePreviewViewController:(id)controller requestLinkPreviewViewControllerWithURL:(id)l
{
  controllerCopy = controller;
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  v9 = [WeakRetained linkPreviewHelper:self previewViewControllerForURL:lCopy];

  activeLinkPreviewHeader = [(_SFLinkPreviewHelper *)self activeLinkPreviewHeader];
  [activeLinkPreviewHeader setDelegate:controllerCopy];

  return v9;
}

- (double)headerViewHeightForAdaptivePreviewViewController:(id)controller
{
  activeLinkPreviewHeader = [(_SFLinkPreviewHelper *)self activeLinkPreviewHeader];
  [activeLinkPreviewHeader bounds];
  Height = CGRectGetHeight(v7);
  if (Height == 0.0)
  {
    [activeLinkPreviewHeader defaultHeight];
    Height = v5;
  }

  return Height;
}

- (void)adaptivePreviewViewControllerWillDisableLinkPreview:(id)preview
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained linkPreviewHelperWillDisableLinkPreview];
  }
}

- (BOOL)_previewViewControllerIsLinkPreview
{
  previewViewController = [(_SFLinkPreviewHelper *)self previewViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    showingLinkPreview = [previewViewController showingLinkPreview];
  }

  else
  {
    showingLinkPreview = 0;
  }

  return showingLinkPreview;
}

- (id)previewViewControllerForURL:(id)l
{
  lCopy = l;
  if ([lCopy isTelephonyURL] & 1) != 0 || (objc_msgSend(lCopy, "sf_isFacetimeURL") & 1) != 0 || (objc_msgSend(lCopy, "safari_isMailtoURL"))
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

    v5 = [[_SFAdaptivePreviewViewController alloc] initWithURL:lCopy];
    [(_SFAdaptivePreviewViewController *)v5 setDelegate:self];
    if ([(_WKActivatedElementInfo *)self->_elementInfo type]== 1)
    {
      image = [(_WKActivatedElementInfo *)self->_elementInfo image];
      [image size];
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

- (id)menuElementsForSuggestedActions:(id)actions
{
  v93 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v63 = [(_SFLinkPreviewHelper *)self url];
  array = [MEMORY[0x1E695DF70] array];
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  v61 = +[_SFQRCodeDetectionController sharedController];
  if (self->_elementInfo)
  {
    v6 = [v61 menuElementsForElementInfo:?];
    [array addObjectsFromArray:v6];

    v7 = [v61 actionForElement:self->_elementInfo];
    [v7 setDelegate:WeakRetained];
    [v61 cacheElement:self->_elementInfo];
    urlThatCanBeOpened = [v7 urlThatCanBeOpened];
  }

  else
  {
    urlThatCanBeOpened = 0;
  }

  v64 = [WeakRetained linkPreviewHelper:self resultOfLoadingURL:v63];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = actionsCopy;
  v8 = [obj countByEnumeratingWithState:&v88 objects:v92 count:16];
  if (v8)
  {
    selfCopy = self;
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
          identifier = [v12 identifier];
          v15 = [v13 elementActionTypeForUIActionIdentifier:identifier];

          switch(v15)
          {
            case 1:
              type = [v64 type];
              if (type != 3 || ([v64 externalApplication], v23 = objc_claimAutoreleasedReturnValue(), v24 = v23 == 0, v23, v24))
              {
                v27 = [objc_alloc(MEMORY[0x1E69C9750]) initWithURL:v63];
                appLink = selfCopy->_appLink;
                selfCopy->_appLink = v27;

                synchronouslyDecideOpenStrategy = [(WBSAppLink *)selfCopy->_appLink synchronouslyDecideOpenStrategy];
                if ((synchronouslyDecideOpenStrategy - 1) >= 3)
                {
                  if ((synchronouslyDecideOpenStrategy + 1) < 2)
                  {
                    if (urlThatCanBeOpened)
                    {
                      v42 = [(_SFLinkPreviewHelper *)selfCopy openActionForAlternateURL:?];
                    }

                    else
                    {
                      v42 = v12;
                    }

                    v47 = v42;

                    if ((type - 1) <= 1)
                    {
                      v48 = [(_SFLinkPreviewHelper *)selfCopy openInNewTabActionForURL:v63 withTabOrder:0 preActionHandler:0];

                      v57 = v48;
                    }

                    v49 = [(_SFLinkPreviewHelper *)selfCopy openInTabGroupActionForURL:v63 shouldPerformActionHandler:0];

                    v60 = v49;
                    v50 = [(_SFLinkPreviewHelper *)selfCopy openInNewWindowActionForURL:v63];

                    v59 = v50;
                    if ((type - 1) < 2)
                    {
                      v51 = [(_SFLinkPreviewHelper *)selfCopy downloadActionForURL:v63];

                      v56 = v51;
                    }

                    [array addObject:v47];
                    [array safari_addObjectUnlessNil:v57];
                    [array safari_addObjectUnlessNil:v60];
                    [array safari_addObjectUnlessNil:v59];
                    [array safari_addObjectUnlessNil:v56];
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
                  v30 = selfCopy->_appLink;
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
                  v72[4] = selfCopy;
                  v73 = urlThatCanBeOpened;
                  v34 = v63;
                  v74 = v34;
                  v35 = [v31 actionWithTitle:v32 image:v33 identifier:0 handler:v72];
                  [array addObject:v35];

                  if ((type - 1) <= 1)
                  {
                    aBlock[0] = MEMORY[0x1E69E9820];
                    aBlock[1] = 3221225472;
                    aBlock[2] = __56___SFLinkPreviewHelper_menuElementsForSuggestedActions___block_invoke_192;
                    aBlock[3] = &unk_1E84921E8;
                    aBlock[4] = selfCopy;
                    v36 = _Block_copy(aBlock);
                    v37 = [(_SFLinkPreviewHelper *)selfCopy openInNewTabActionForURL:v34 withTabOrder:0 preActionHandler:v36];
                    [array safari_addObjectUnlessNil:v37];

                    v38 = [(_SFLinkPreviewHelper *)selfCopy openInTabGroupActionForURL:v34 shouldPerformActionHandler:v36];
                    [array safari_addObjectUnlessNil:v38];

                    v39 = [(_SFLinkPreviewHelper *)selfCopy openInNewWindowActionForURL:v34];
                    [array safari_addObjectUnlessNil:v39];
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
                    v70[4] = selfCopy;
                    v46 = [MEMORY[0x1E69DC628] actionWithTitle:v40 image:v41 identifier:0 handler:v70];
                    [array addObject:v46];
                  }

                  _Block_object_dispose(&v76, 8);
                  _Block_object_dispose(&v82, 8);
                }
              }

              else
              {
                if ([v63 safari_isOTPAuthURL])
                {
                  [(_SFLinkPreviewHelper *)selfCopy openActionForSettingUpOneTimeCodeGeneratorWithExternalNavigationResult:v64];
                }

                else
                {
                  [(_SFLinkPreviewHelper *)selfCopy openActionForRedirectToExternalNavigationResult:v64];
                }
                v25 = ;
                [array addObject:v25];
              }

              break;
            case 2:
              v21 = [v61 adjustedCopyActionForAction:v12 elementInfo:selfCopy->_elementInfo];

              [array safari_addObjectUnlessNil:v21];
              v66 = v21;
              break;
            case 4:
              v16 = [v64 URL];
              v17 = [(_SFLinkPreviewHelper *)selfCopy addToReadingListActionForURL:v16];
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

              [array addObject:v20];
              v65 = v20;
              break;
            default:
              v26 = v12;

              [array addObject:v26];
              v67 = v26;
              break;
          }
        }

        else
        {
          [array addObject:v11];
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

  v52 = [array copy];

  return v52;
}

- (id)openActionForAlternateURL:(id)l
{
  lCopy = l;
  v5 = MEMORY[0x1E69DC628];
  v6 = _WBSLocalizedString();
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"safari"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50___SFLinkPreviewHelper_openActionForAlternateURL___block_invoke;
  v11[3] = &unk_1E8492238;
  v11[4] = self;
  v8 = lCopy;
  v12 = v8;
  v9 = [v5 actionWithTitle:v6 image:v7 identifier:0 handler:v11];

  return v9;
}

- (id)openActionForRedirectToExternalNavigationResult:(id)result
{
  resultCopy = result;
  externalApplication = [resultCopy externalApplication];
  bundleIdentifier = [externalApplication bundleIdentifier];
  if ([bundleIdentifier isEqualToString:@"com.apple.InCallService"])
  {
    v7 = [resultCopy URL];
    sf_isFacetimeURL = [v7 sf_isFacetimeURL];

    if (sf_isFacetimeURL)
    {
      v9 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.facetime"];
      v10 = v9;
      if (v9)
      {
        v11 = v9;

        externalApplication = v11;
      }
    }
  }

  if ([bundleIdentifier isEqualToString:*MEMORY[0x1E69C8B18]])
  {
    v12 = _WBSLocalizedString();
    v13 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"arrow.up.forward.appclip"];
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = _WBSLocalizedString();
    localizedName = [externalApplication localizedName];
    v17 = [v14 stringWithFormat:v15, localizedName];

    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.forward.app"];
    v12 = v17;
  }

  v18 = MEMORY[0x1E69DC628];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __72___SFLinkPreviewHelper_openActionForRedirectToExternalNavigationResult___block_invoke;
  v22[3] = &unk_1E8492238;
  v22[4] = self;
  v19 = resultCopy;
  v23 = v19;
  v20 = [v18 actionWithTitle:v12 image:v13 identifier:0 handler:v22];

  return v20;
}

- (id)openActionForSettingUpOneTimeCodeGeneratorWithExternalNavigationResult:(id)result
{
  resultCopy = result;
  externalApplication = [resultCopy externalApplication];
  bundleIdentifier = [externalApplication bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.Preferences"];

  v8 = MEMORY[0x1E696AEC0];
  v9 = _WBSLocalizedString();
  if (v7)
  {
    v10 = [v8 stringWithFormat:v9];
  }

  else
  {
    externalApplication2 = [resultCopy externalApplication];
    localizedName = [externalApplication2 localizedName];
    v10 = [v8 stringWithFormat:v9, localizedName];
  }

  objc_initWeak(&location, self);
  v13 = MEMORY[0x1E69DC628];
  v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95___SFLinkPreviewHelper_openActionForSettingUpOneTimeCodeGeneratorWithExternalNavigationResult___block_invoke;
  v18[3] = &unk_1E8492260;
  objc_copyWeak(&v20, &location);
  v15 = resultCopy;
  v19 = v15;
  v16 = [v13 actionWithTitle:v10 image:v14 identifier:0 handler:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v16;
}

- (id)openInNewTabActionForURL:(id)l withTabOrder:(int64_t)order preActionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  v11 = [WeakRetained linkPreviewHelper:self supportsAction:3 forURL:lCopy];

  if (v11)
  {
    [MEMORY[0x1E69B1C48] effectiveTabOrderWithPreferredTabOrder:order];
    v12 = _WBSLocalizedString();
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.square.on.square"];
    v14 = MEMORY[0x1E69DC628];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79___SFLinkPreviewHelper_openInNewTabActionForURL_withTabOrder_preActionHandler___block_invoke;
    v17[3] = &unk_1E8492288;
    v19 = handlerCopy;
    orderCopy = order;
    v17[4] = self;
    v18 = lCopy;
    v15 = [v14 actionWithTitle:v12 image:v13 identifier:0 handler:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)openInTabGroupActionForURL:(id)l shouldPerformActionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  if ([WeakRetained linkPreviewHelper:self supportsAction:3 forURL:lCopy] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78___SFLinkPreviewHelper_openInTabGroupActionForURL_shouldPerformActionHandler___block_invoke;
    v11[3] = &unk_1E84922B0;
    v14 = handlerCopy;
    v11[4] = self;
    v12 = WeakRetained;
    v13 = lCopy;
    v9 = [v12 openInTabGroupMenuWithNewTabGroupName:0 URL:v13 descendantCount:0 handler:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)openInNewWindowActionForURL:(id)l
{
  lCopy = l;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  supportsMultipleScenes = [mEMORY[0x1E69DC668] supportsMultipleScenes];

  if (supportsMultipleScenes)
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
    selfCopy = self;
    v18 = lCopy;
    v10 = [v12 actionWithTitle:v8 image:v11 identifier:0 handler:v15];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)addToReadingListActionForURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  if ([WeakRetained linkPreviewHelper:self supportsAction:0 forURL:lCopy] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v6 = _WBSLocalizedString();
    v7 = MEMORY[0x1E69DC628];
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eyeglasses"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53___SFLinkPreviewHelper_addToReadingListActionForURL___block_invoke;
    v11[3] = &unk_1E84921C0;
    v12 = WeakRetained;
    selfCopy = self;
    v14 = lCopy;
    v9 = [v7 actionWithTitle:v6 image:v8 identifier:0 handler:v11];

    [v9 setAccessibilityIdentifier:@"AddLinkToReadingListMenuItem"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)downloadActionForURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  if ([WeakRetained linkPreviewHelper:self supportsAction:1 forURL:lCopy] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v6 = MEMORY[0x1E69DC628];
    v7 = _WBSLocalizedString();
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.down.circle"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45___SFLinkPreviewHelper_downloadActionForURL___block_invoke;
    v11[3] = &unk_1E84921C0;
    v12 = WeakRetained;
    selfCopy = self;
    v14 = lCopy;
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