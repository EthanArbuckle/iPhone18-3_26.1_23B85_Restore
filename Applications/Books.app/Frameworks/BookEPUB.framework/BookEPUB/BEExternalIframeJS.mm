@interface BEExternalIframeJS
- (BEExternalIframeJS)init;
- (id)anyFrameJavascript:(int64_t)javascript;
- (id)anyFrameJavascriptURL:(int64_t)l;
- (id)preApprovalToLoadScriptForURL:(id)l;
@end

@implementation BEExternalIframeJS

- (BEExternalIframeJS)init
{
  v6.receiver = self;
  v6.super_class = BEExternalIframeJS;
  v2 = [(BEExternalIframeJS *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BEDocumentLoadExternalResourcesController);
    documentLoadExternalResourcesController = v2->_documentLoadExternalResourcesController;
    v2->_documentLoadExternalResourcesController = v3;
  }

  return v2;
}

- (id)preApprovalToLoadScriptForURL:(id)l
{
  absoluteString = [l absoluteString];
  v4 = [NSJSONSerialization dataWithJSONObject:absoluteString options:4 error:0];

  v5 = [[NSString alloc] initWithData:v4 encoding:4];
  v6 = [NSString stringWithFormat:@"__ibooks_external_iframe.addBlockedLink(%@)", v5];;

  return v6;
}

- (id)anyFrameJavascript:(int64_t)javascript
{
  if (javascript)
  {
    v3 = 0;
  }

  else
  {
    v5 = +[external_iframe source];
    dataURLForPlaceholder = [(BEDocumentLoadExternalResourcesController *)self->_documentLoadExternalResourcesController dataURLForPlaceholder];
    if ([dataURLForPlaceholder length])
    {
      v7 = [NSString stringWithFormat:@"__ibooks_external_iframe.contentBlockerUrl='%@'", dataURLForPlaceholder];;
      v3 = [v5 stringByAppendingString:v7];
    }

    else
    {
      v3 = v5;
    }
  }

  return v3;
}

- (id)anyFrameJavascriptURL:(int64_t)l
{
  if (l)
  {
    v3 = 0;
  }

  else
  {
    v4 = +[external_iframe sourceName];
    v3 = BEJavascriptProviderUniqueURLForFilename(v4);
  }

  return v3;
}

@end