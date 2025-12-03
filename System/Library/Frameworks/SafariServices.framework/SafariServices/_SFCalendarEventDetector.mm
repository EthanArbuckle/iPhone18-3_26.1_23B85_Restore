@interface _SFCalendarEventDetector
- (_SFCalendarEventDetector)initWithWebView:(id)view;
- (void)_containsCalendarEventForPageWithSchemaOrgMarkup:(BOOL)markup;
- (void)_foundCalendarEvents:(id)events;
- (void)_service:(id)_service didFindEventCandidateForURL:(id)l pageTitle:(id)title;
- (void)cancelCheckForConfirmationPage;
- (void)containsCalendarEventForPageWithSchemaOrgMarkup:(BOOL)markup;
@end

@implementation _SFCalendarEventDetector

- (void)cancelCheckForConfirmationPage
{
  checkForCalendarEventsBlock = self->_checkForCalendarEventsBlock;
  if (checkForCalendarEventsBlock)
  {
    dispatch_block_cancel(checkForCalendarEventsBlock);
    v4 = self->_checkForCalendarEventsBlock;
    self->_checkForCalendarEventsBlock = 0;
  }
}

- (_SFCalendarEventDetector)initWithWebView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _SFCalendarEventDetector;
  v5 = [(_SFCalendarEventDetector *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_webView, viewCopy);
    v7 = v6;
  }

  return v6;
}

- (void)containsCalendarEventForPageWithSchemaOrgMarkup:(BOOL)markup
{
  [(_SFCalendarEventDetector *)self cancelCheckForConfirmationPage];
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  _unreachableURL = [WeakRetained _unreachableURL];

  if (!_unreachableURL)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76___SFCalendarEventDetector_containsCalendarEventForPageWithSchemaOrgMarkup___block_invoke;
    block[3] = &unk_1E8492B40;
    objc_copyWeak(&v11, &location);
    markupCopy = markup;
    v7 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    checkForCalendarEventsBlock = self->_checkForCalendarEventsBlock;
    self->_checkForCalendarEventsBlock = v7;

    v9 = dispatch_time(0, 2000000000);
    dispatch_after(v9, MEMORY[0x1E69E96A0], self->_checkForCalendarEventsBlock);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_containsCalendarEventForPageWithSchemaOrgMarkup:(BOOL)markup
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained URL];
    title = [v6 title];
    v9 = WBS_LOG_CHANNEL_PREFIXCalendarEventDetection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_SFCalendarEventDetector _containsCalendarEventForPageWithSchemaOrgMarkup:];
    }

    v10 = WBS_LOG_CHANNEL_PREFIXCalendarEventDetection();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [_SFCalendarEventDetector _containsCalendarEventForPageWithSchemaOrgMarkup:];
    }

    v11 = dispatch_get_global_queue(9, 0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77___SFCalendarEventDetector__containsCalendarEventForPageWithSchemaOrgMarkup___block_invoke;
    v14[3] = &unk_1E8492B90;
    v15 = v7;
    v16 = title;
    markupCopy = markup;
    selfCopy = self;
    v12 = title;
    v13 = v7;
    dispatch_async(v11, v14);
  }
}

- (void)_service:(id)_service didFindEventCandidateForURL:(id)l pageTitle:(id)title
{
  _serviceCopy = _service;
  lCopy = l;
  titleCopy = title;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = [WeakRetained URL];
    v14 = [v13 isEqual:lCopy];

    if (v14)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __75___SFCalendarEventDetector__service_didFindEventCandidateForURL_pageTitle___block_invoke;
      v15[3] = &unk_1E8492BE0;
      v16 = lCopy;
      v17 = _serviceCopy;
      v18 = titleCopy;
      selfCopy = self;
      [v12 _getMainResourceDataWithCompletionHandler:v15];
    }
  }
}

- (void)_foundCalendarEvents:(id)events
{
  eventsCopy = events;
  v4 = WBS_LOG_CHANNEL_PREFIXCalendarEventDetection();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_INFO, "Found calendar events", v6, 2u);
  }

  v5 = WBS_LOG_CHANNEL_PREFIXCalendarEventDetection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_SFCalendarEventDetector _foundCalendarEvents:];
  }
}

- (void)_containsCalendarEventForPageWithSchemaOrgMarkup:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 2113;
  v4 = v0;
  _os_log_debug_impl(&dword_1D4644000, v1, OS_LOG_TYPE_DEBUG, "Page URL: %{private}@ and title: '%{private}@'", v2, 0x16u);
}

- (void)_foundCalendarEvents:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end