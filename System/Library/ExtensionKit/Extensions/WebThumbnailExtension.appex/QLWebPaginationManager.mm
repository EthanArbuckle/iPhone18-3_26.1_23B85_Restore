@interface QLWebPaginationManager
- (CGRect)pageRectForPage:(int64_t)page;
- (CGSize)pageSize;
- (QLWebPaginationManager)initWithPageElementXPath:(id)path webview:(id)webview;
- (QLWebPaginationManager)initWithPageSize:(CGSize)size webview:(id)webview;
- (WKWebView)webview;
- (void)_getFramesForXpath:(id)xpath completion:(id)completion;
- (void)processPageGeometryFromXpath:(id)xpath;
@end

@implementation QLWebPaginationManager

- (QLWebPaginationManager)initWithPageSize:(CGSize)size webview:(id)webview
{
  height = size.height;
  width = size.width;
  webviewCopy = webview;
  v11.receiver = self;
  v11.super_class = QLWebPaginationManager;
  v8 = [(QLWebPaginationManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_pageSize.width = width;
    v8->_pageSize.height = height;
    objc_storeWeak(&v8->_webview, webviewCopy);
  }

  return v9;
}

- (QLWebPaginationManager)initWithPageElementXPath:(id)path webview:(id)webview
{
  pathCopy = path;
  webviewCopy = webview;
  v12.receiver = self;
  v12.super_class = QLWebPaginationManager;
  v9 = [(QLWebPaginationManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pageElementXPath, path);
    objc_storeWeak(&v10->_webview, webviewCopy);
  }

  return v10;
}

- (void)processPageGeometryFromXpath:(id)xpath
{
  xpathCopy = xpath;
  pageFrames = [(QLWebPaginationManager *)self pageFrames];

  if (pageFrames)
  {
    if (xpathCopy)
    {
      xpathCopy[2](xpathCopy);
    }
  }

  else
  {
    pageElementXPath = [(QLWebPaginationManager *)self pageElementXPath];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100001FBC;
    v7[3] = &unk_1000083D0;
    v7[4] = self;
    v8 = xpathCopy;
    [(QLWebPaginationManager *)self _getFramesForXpath:pageElementXPath completion:v7];
  }
}

- (CGRect)pageRectForPage:(int64_t)page
{
  pageElementXPath = [(QLWebPaginationManager *)self pageElementXPath];

  if (pageElementXPath)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    pageFrames = [(QLWebPaginationManager *)self pageFrames];

    if (pageFrames)
    {
      pageFrames2 = [(QLWebPaginationManager *)self pageFrames];
      v12 = [pageFrames2 count];

      if (v12 > page)
      {
        pageFrames3 = [(QLWebPaginationManager *)self pageFrames];
        v14 = [pageFrames3 objectAtIndexedSubscript:page];

        [v14 rectValue];
        x = v15;
        y = v16;
        width = v17;
        height = v18;
      }
    }

    else
    {
      v22 = qltLogHandles[14];
      if (!v22)
      {
        QLTInitLogging();
        v22 = qltLogHandles[14];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100002C18(v22);
      }
    }
  }

  else
  {
    [(QLWebPaginationManager *)self pageSize];
    y = v19 * page;
    [(QLWebPaginationManager *)self pageSize];
    width = v20;
    [(QLWebPaginationManager *)self pageSize];
    height = v21;
    x = 0.0;
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)_getFramesForXpath:(id)xpath completion:(id)completion
{
  completionCopy = completion;
  xpathCopy = xpath;
  webview = [(QLWebPaginationManager *)self webview];
  v14 = @"xpath";
  v15 = xpathCopy;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v10 = +[WKContentWorld defaultClientWorld];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000022C0;
  v12[3] = &unk_1000083F8;
  v13 = completionCopy;
  v11 = completionCopy;
  [webview callAsyncJavaScript:@"\nlet elements = document.evaluate(xpath arguments:document inFrame:null inContentWorld:XPathResult.ORDERED_NODE_ITERATOR_TYPE completionHandler:{null) \nlet frames = []\nvar node\nwhile ((node = elements.iterateNext()) != null) {\n    const {x, y, width, height} = node.getBoundingClientRect()\n    frames.push({x, y, width, height})\n}\nreturn frames;\n\n", v9, 0, v10, v12}];
}

- (CGSize)pageSize
{
  objc_copyStruct(v4, &self->_pageSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (WKWebView)webview
{
  WeakRetained = objc_loadWeakRetained(&self->_webview);

  return WeakRetained;
}

@end