@interface BKReadAloudEventHandler
+ (BKReadAloudEventHandler)readAloudEventHandlerWithMediaClass:(id)a3 delegate:(id)a4;
- (BKReadAloudEventHandlerDelegate)delegate;
- (void)addMarkupForReadAloudToDocument;
- (void)addhighlightForElementID:(id)a3;
- (void)installTapHandlersOnElementIDs:(id)a3 withHref:(id)a4;
- (void)removeHighlightForElementID:(id)a3;
- (void)removeMarkupForReadAloudToDocument;
- (void)removeTapHandlersOnElementIDs:(id)a3;
- (void)setMediaActiveClass:(id)a3;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
@end

@implementation BKReadAloudEventHandler

+ (BKReadAloudEventHandler)readAloudEventHandlerWithMediaClass:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(BKReadAloudEventHandler);
  [(BKReadAloudEventHandler *)v7 setMediaActiveClass:v6];

  [(BKReadAloudEventHandler *)v7 setDelegate:v5];

  return v7;
}

- (void)setMediaActiveClass:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = @"media-overlay-active";
  }

  objc_storeStrong(&self->_mediaActiveClass, v3);
}

- (void)addhighlightForElementID:(id)a3
{
  v4 = a3;
  v5 = [(BKReadAloudEventHandler *)self mediaActiveClass];
  v8 = [NSString stringWithFormat:@"__ibooks_read_aloud.highlightElement('%@', '%@')", v4, v5];

  v6 = [(BKReadAloudEventHandler *)self delegate];
  v7 = [v6 wkWebView];
  [v7 evaluateJavaScript:v8 completionHandler:0];
}

- (void)removeHighlightForElementID:(id)a3
{
  v4 = a3;
  v5 = [(BKReadAloudEventHandler *)self mediaActiveClass];
  v8 = [NSString stringWithFormat:@"__ibooks_read_aloud.removeHighlightElement('%@', '%@')", v4, v5];

  v6 = [(BKReadAloudEventHandler *)self delegate];
  v7 = [v6 wkWebView];
  [v7 evaluateJavaScript:v8 completionHandler:0];
}

- (void)installTapHandlersOnElementIDs:(id)a3 withHref:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v6;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

        v12 = [NSString stringWithFormat:@"__ibooks_read_aloud.installTapHandlerElementIDAndHREF('%@', '%@')", *(*(&v16 + 1) + 8 * v11), v7];
        v13 = [(BKReadAloudEventHandler *)self delegate];
        v14 = [v13 wkWebView];
        [v14 evaluateJavaScript:v12 completionHandler:0];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)removeTapHandlersOnElementIDs:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [NSString stringWithFormat:@"__ibooks_read_aloud.removeTapHandlerElementID('%@')", *(*(&v12 + 1) + 8 * v8)];
        v10 = [(BKReadAloudEventHandler *)self delegate];
        v11 = [v10 wkWebView];
        [v11 evaluateJavaScript:v9 completionHandler:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)addMarkupForReadAloudToDocument
{
  v3 = [(BKReadAloudEventHandler *)self delegate];
  v2 = [v3 wkWebView];
  [v2 evaluateJavaScript:@"__ibooks_read_aloud.addMediaOverlayClassToDocument()" completionHandler:0];
}

- (void)removeMarkupForReadAloudToDocument
{
  v3 = [(BKReadAloudEventHandler *)self delegate];
  v2 = [v3 wkWebView];
  [v2 evaluateJavaScript:@"__ibooks_read_aloud.removeMediaOverlayClassFromDocument()" completionHandler:0];
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v21 = a4;
  objc_opt_class();
  v5 = [v21 name];
  v6 = BUDynamicCast();

  if ([v6 isEqualToString:@"readAloudHandler"])
  {
    objc_opt_class();
    v7 = [v21 body];
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

      v14 = [(BKReadAloudEventHandler *)self delegate];
      [v14 readAloudEventHandler:self foundMediaSource:v13];
      goto LABEL_10;
    }

    if ([v9 isEqualToString:@"click"])
    {
      objc_opt_class();
      v15 = [v11 objectForKeyedSubscript:@"id"];
      v13 = BUDynamicCast();

      objc_opt_class();
      v16 = [v11 objectForKeyedSubscript:@"href"];
      v14 = BUDynamicCast();

      if (![v13 length])
      {
        goto LABEL_10;
      }

      v17 = [(BKReadAloudEventHandler *)self delegate];
      [v17 readAloudEventHandler:self tappedElementID:v13 inHref:v14];
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

        v14 = [(BKReadAloudEventHandler *)self delegate];
        [v14 readAloudEventHandler:self audioElementEnded:v13];
LABEL_10:

LABEL_11:
        goto LABEL_12;
      }

      objc_opt_class();
      v18 = [v11 objectForKeyedSubscript:@"action"];
      v13 = BUDynamicCast();

      objc_opt_class();
      v19 = [v11 objectForKeyedSubscript:@"auto_turn"];
      v14 = BUDynamicCast();

      v17 = [(BKReadAloudEventHandler *)self delegate];
      [v17 readAloudEventHandler:self performedAction:v13 turnStyle:v14];
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