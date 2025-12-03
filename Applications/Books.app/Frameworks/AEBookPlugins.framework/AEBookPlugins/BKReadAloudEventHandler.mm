@interface BKReadAloudEventHandler
+ (BKReadAloudEventHandler)readAloudEventHandlerWithMediaClass:(id)class delegate:(id)delegate;
- (BKReadAloudEventHandlerDelegate)delegate;
- (void)addMarkupForReadAloudToDocument;
- (void)addhighlightForElementID:(id)d;
- (void)installTapHandlersOnElementIDs:(id)ds withHref:(id)href;
- (void)removeHighlightForElementID:(id)d;
- (void)removeMarkupForReadAloudToDocument;
- (void)removeTapHandlersOnElementIDs:(id)ds;
- (void)setMediaActiveClass:(id)class;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation BKReadAloudEventHandler

+ (BKReadAloudEventHandler)readAloudEventHandlerWithMediaClass:(id)class delegate:(id)delegate
{
  delegateCopy = delegate;
  classCopy = class;
  v7 = objc_alloc_init(BKReadAloudEventHandler);
  [(BKReadAloudEventHandler *)v7 setMediaActiveClass:classCopy];

  [(BKReadAloudEventHandler *)v7 setDelegate:delegateCopy];

  return v7;
}

- (void)setMediaActiveClass:(id)class
{
  if (class)
  {
    classCopy = class;
  }

  else
  {
    classCopy = @"media-overlay-active";
  }

  objc_storeStrong(&self->_mediaActiveClass, classCopy);
}

- (void)addhighlightForElementID:(id)d
{
  dCopy = d;
  mediaActiveClass = [(BKReadAloudEventHandler *)self mediaActiveClass];
  v8 = [NSString stringWithFormat:@"__ibooks_read_aloud.highlightElement('%@', '%@')", dCopy, mediaActiveClass];

  delegate = [(BKReadAloudEventHandler *)self delegate];
  wkWebView = [delegate wkWebView];
  [wkWebView evaluateJavaScript:v8 completionHandler:0];
}

- (void)removeHighlightForElementID:(id)d
{
  dCopy = d;
  mediaActiveClass = [(BKReadAloudEventHandler *)self mediaActiveClass];
  v8 = [NSString stringWithFormat:@"__ibooks_read_aloud.removeHighlightElement('%@', '%@')", dCopy, mediaActiveClass];

  delegate = [(BKReadAloudEventHandler *)self delegate];
  wkWebView = [delegate wkWebView];
  [wkWebView evaluateJavaScript:v8 completionHandler:0];
}

- (void)installTapHandlersOnElementIDs:(id)ds withHref:(id)href
{
  dsCopy = ds;
  hrefCopy = href;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = dsCopy;
  v8 = [dsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(obj);
        }

        hrefCopy = [NSString stringWithFormat:@"__ibooks_read_aloud.installTapHandlerElementIDAndHREF('%@', '%@')", *(*(&v16 + 1) + 8 * v11), hrefCopy];
        delegate = [(BKReadAloudEventHandler *)self delegate];
        wkWebView = [delegate wkWebView];
        [wkWebView evaluateJavaScript:hrefCopy completionHandler:0];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)removeTapHandlersOnElementIDs:(id)ds
{
  dsCopy = ds;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [dsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(dsCopy);
        }

        v9 = [NSString stringWithFormat:@"__ibooks_read_aloud.removeTapHandlerElementID('%@')", *(*(&v12 + 1) + 8 * v8)];
        delegate = [(BKReadAloudEventHandler *)self delegate];
        wkWebView = [delegate wkWebView];
        [wkWebView evaluateJavaScript:v9 completionHandler:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [dsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)addMarkupForReadAloudToDocument
{
  delegate = [(BKReadAloudEventHandler *)self delegate];
  wkWebView = [delegate wkWebView];
  [wkWebView evaluateJavaScript:@"__ibooks_read_aloud.addMediaOverlayClassToDocument()" completionHandler:0];
}

- (void)removeMarkupForReadAloudToDocument
{
  delegate = [(BKReadAloudEventHandler *)self delegate];
  wkWebView = [delegate wkWebView];
  [wkWebView evaluateJavaScript:@"__ibooks_read_aloud.removeMediaOverlayClassFromDocument()" completionHandler:0];
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  name = [messageCopy name];
  v6 = BUDynamicCast();

  if ([v6 isEqualToString:@"readAloudHandler"])
  {
    objc_opt_class();
    body = [messageCopy body];
    v8 = BUDynamicCast();

    v9 = [v8 objectForKeyedSubscript:@"event"];
    objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"data"];
    v11 = BUDynamicCast();

    if ([v9 isEqualToString:@"media_source_load"])
    {
      objc_opt_class();
      v12 = [v11 objectForKeyedSubscript:@"media_source"];
      v13 = BUDynamicCast();

      delegate = [(BKReadAloudEventHandler *)self delegate];
      [delegate readAloudEventHandler:self foundMediaSource:v13];
      goto LABEL_10;
    }

    if ([v9 isEqualToString:@"click"])
    {
      objc_opt_class();
      v15 = [v11 objectForKeyedSubscript:@"id"];
      v13 = BUDynamicCast();

      objc_opt_class();
      v16 = [v11 objectForKeyedSubscript:@"href"];
      delegate = BUDynamicCast();

      if (![v13 length])
      {
        goto LABEL_10;
      }

      delegate2 = [(BKReadAloudEventHandler *)self delegate];
      [delegate2 readAloudEventHandler:self tappedElementID:v13 inHref:delegate];
    }

    else
    {
      if (![v9 isEqualToString:@"action"])
      {
        if (![v9 isEqualToString:@"audio-ended"])
        {
          goto LABEL_11;
        }

        objc_opt_class();
        v20 = [v11 objectForKeyedSubscript:@"media_source"];
        v13 = BUDynamicCast();

        delegate = [(BKReadAloudEventHandler *)self delegate];
        [delegate readAloudEventHandler:self audioElementEnded:v13];
LABEL_10:

LABEL_11:
        goto LABEL_12;
      }

      objc_opt_class();
      v18 = [v11 objectForKeyedSubscript:@"action"];
      v13 = BUDynamicCast();

      objc_opt_class();
      v19 = [v11 objectForKeyedSubscript:@"auto_turn"];
      delegate = BUDynamicCast();

      delegate2 = [(BKReadAloudEventHandler *)self delegate];
      [delegate2 readAloudEventHandler:self performedAction:v13 turnStyle:delegate];
    }

    goto LABEL_10;
  }

LABEL_12:
}

- (BKReadAloudEventHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end