@interface BEUIHandler
- (BEUIHandlerDelegate)delegate;
- (BUBlockCallThrottler)alertThrottler;
- (id)_webView:(id)view adjustedDataInteractionItemProvidersForItemProvider:(id)provider representingObjects:(id)objects additionalData:(id)data;
- (void)_handleContextMenuConfigurationForElement:(id)element completionHandler:(id)handler;
- (void)_throttledRunJavaScriptAlertPanel:(id)panel;
- (void)_webView:(id)view didNotHandleTapAsClickAtPoint:(CGPoint)point;
- (void)_webViewDidEnterFullscreen:(id)fullscreen;
- (void)_webViewDidExitFullscreen:(id)fullscreen;
- (void)_webViewFullscreenMayReturnToInline:(id)inline;
- (void)buildMenuWithBuilder:(id)builder inWebView:(id)view atPoint:(CGPoint)point;
- (void)webView:(id)view runJavaScriptAlertPanelWithMessage:(id)message initiatedByFrame:(id)frame completionHandler:(id)handler;
- (void)webView:(id)view runJavaScriptConfirmPanelWithMessage:(id)message initiatedByFrame:(id)frame completionHandler:(id)handler;
@end

@implementation BEUIHandler

- (void)buildMenuWithBuilder:(id)builder inWebView:(id)view atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  builderCopy = builder;
  viewCopy = view;
  delegate = [(BEUIHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate buildMenuWithBuilder:builderCopy inWebView:viewCopy atPoint:{x, y}];
  }
}

- (void)webView:(id)view runJavaScriptAlertPanelWithMessage:(id)message initiatedByFrame:(id)frame completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2B758;
  v10[3] = &unk_328F68;
  messageCopy = message;
  handlerCopy = handler;
  v10[4] = self;
  v8 = messageCopy;
  v9 = handlerCopy;
  [(BEUIHandler *)self _throttledRunJavaScriptAlertPanel:v10];
}

- (void)webView:(id)view runJavaScriptConfirmPanelWithMessage:(id)message initiatedByFrame:(id)frame completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2BA30;
  v10[3] = &unk_328F68;
  messageCopy = message;
  handlerCopy = handler;
  v10[4] = self;
  v8 = messageCopy;
  v9 = handlerCopy;
  [(BEUIHandler *)self _throttledRunJavaScriptAlertPanel:v10];
}

- (id)_webView:(id)view adjustedDataInteractionItemProvidersForItemProvider:(id)provider representingObjects:(id)objects additionalData:(id)data
{
  viewCopy = view;
  providerCopy = provider;
  dataCopy = data;
  identifier = [UTTypeImage identifier];
  v13 = [providerCopy hasItemConformingToTypeIdentifier:identifier];

  if (v13)
  {
    v14 = &__NSArray0__struct;
  }

  else
  {
    delegate = [(BEUIHandler *)self delegate];
    v16 = providerCopy;
    if (dataCopy)
    {
      identifier2 = [UTTypeUTF8PlainText identifier];
      v18 = [dataCopy objectForKeyedSubscript:identifier2];

      v19 = [[NSString alloc] initWithData:v18 encoding:4];
      if ([v19 length] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v20 = [delegate handler:self citationForText:v19 webView:viewCopy];
      }

      else
      {
        v20 = &stru_33E120;
      }
    }

    else
    {
      v20 = &stru_33E120;
    }

    if ([(__CFString *)v20 length]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      v24 = v16;
      v21 = [NSArray arrayWithObjects:&v24 count:1];
      v22 = [delegate adjustedItemProvidersWithCitation:v21 withExcerptString:v20];
    }

    else
    {
      v22 = &__NSArray0__struct;
    }

    v14 = v22;
  }

  return v14;
}

- (void)_webView:(id)view didNotHandleTapAsClickAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  delegate = [(BEUIHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    be_contentView = [viewCopy be_contentView];
    [be_contentView convertPoint:viewCopy toView:{x, y}];
    v10 = v9;
    v12 = v11;

    [delegate handler:self webView:viewCopy didNotHandleTapAsClickAtPoint:{v10, v12}];
  }
}

- (void)_webViewDidEnterFullscreen:(id)fullscreen
{
  fullscreenCopy = fullscreen;
  delegate = [(BEUIHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate webViewDidEnterFullscreen:fullscreenCopy];
  }
}

- (void)_webViewDidExitFullscreen:(id)fullscreen
{
  fullscreenCopy = fullscreen;
  delegate = [(BEUIHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate webViewDidExitFullscreen:fullscreenCopy];
  }
}

- (void)_webViewFullscreenMayReturnToInline:(id)inline
{
  inlineCopy = inline;
  delegate = [(BEUIHandler *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate webViewFullscreenMayReturnToInline:inlineCopy];
  }
}

- (BUBlockCallThrottler)alertThrottler
{
  alertThrottler = self->_alertThrottler;
  if (!alertThrottler)
  {
    v4 = objc_alloc_init(BUBlockCallThrottler);
    v5 = self->_alertThrottler;
    self->_alertThrottler = v4;

    alertThrottler = self->_alertThrottler;
  }

  return alertThrottler;
}

- (void)_throttledRunJavaScriptAlertPanel:(id)panel
{
  panelCopy = panel;
  alertThrottler = [(BEUIHandler *)self alertThrottler];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2C344;
  v9[3] = &unk_328F90;
  v6 = panelCopy;
  v10 = v6;
  LOBYTE(panelCopy) = [alertThrottler runBlockThrottled:v9];

  if ((panelCopy & 1) == 0)
  {
    v7 = _BookEPUBLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Suppressed JS alert panels", v8, 2u);
    }

    (*(v6 + 2))(v6, 0);
  }
}

- (void)_handleContextMenuConfigurationForElement:(id)element completionHandler:(id)handler
{
  handlerCopy = handler;
  elementCopy = element;
  linkURL = [elementCopy linkURL];
  _activatedElementInfo = [elementCopy _activatedElementInfo];

  type = [_activatedElementInfo type];
  if (type)
  {
    if (type == &dword_0 + 1)
    {
      v9 = 0;
LABEL_6:
      v10 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v9];
      goto LABEL_8;
    }
  }

  else if (BEURLHandlerSchemeIsOkForBookToLoad(linkURL))
  {
    v9 = &stru_328FD0;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_8:
  handlerCopy[2](handlerCopy, v10);
}

- (BEUIHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end