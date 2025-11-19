@interface QLWebPaginationManager
- (CGRect)pageRectForPage:(int64_t)a3;
- (CGSize)pageSize;
- (QLWebPaginationManager)initWithPageElementXPath:(id)a3 webview:(id)a4;
- (QLWebPaginationManager)initWithPageSize:(CGSize)a3 webview:(id)a4;
- (WKWebView)webview;
- (void)_getFramesForXpath:(id)a3 completion:(id)a4;
- (void)processPageGeometryFromXpath:(id)a3;
@end

@implementation QLWebPaginationManager

- (QLWebPaginationManager)initWithPageSize:(CGSize)a3 webview:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = QLWebPaginationManager;
  v8 = [(QLWebPaginationManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_pageSize.width = width;
    v8->_pageSize.height = height;
    objc_storeWeak(&v8->_webview, v7);
  }

  return v9;
}

- (QLWebPaginationManager)initWithPageElementXPath:(id)a3 webview:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = QLWebPaginationManager;
  v9 = [(QLWebPaginationManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pageElementXPath, a3);
    objc_storeWeak(&v10->_webview, v8);
  }

  return v10;
}

- (void)processPageGeometryFromXpath:(id)a3
{
  v4 = a3;
  v5 = [(QLWebPaginationManager *)self pageFrames];

  if (v5)
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v6 = [(QLWebPaginationManager *)self pageElementXPath];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100001FBC;
    v7[3] = &unk_1000083D0;
    v7[4] = self;
    v8 = v4;
    [(QLWebPaginationManager *)self _getFramesForXpath:v6 completion:v7];
  }
}

- (CGRect)pageRectForPage:(int64_t)a3
{
  v5 = [(QLWebPaginationManager *)self pageElementXPath];

  if (v5)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [(QLWebPaginationManager *)self pageFrames];

    if (v10)
    {
      v11 = [(QLWebPaginationManager *)self pageFrames];
      v12 = [v11 count];

      if (v12 > a3)
      {
        v13 = [(QLWebPaginationManager *)self pageFrames];
        v14 = [v13 objectAtIndexedSubscript:a3];

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
    y = v19 * a3;
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

- (void)_getFramesForXpath:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(QLWebPaginationManager *)self webview];
  v14 = @"xpath";
  v15 = v7;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v10 = +[WKContentWorld defaultClientWorld];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000022C0;
  v12[3] = &unk_1000083F8;
  v13 = v6;
  v11 = v6;
  [v8 callAsyncJavaScript:@"\nlet elements = document.evaluate(xpath arguments:document inFrame:null inContentWorld:XPathResult.ORDERED_NODE_ITERATOR_TYPE completionHandler:{null) \nlet frames = []\nvar node\nwhile ((node = elements.iterateNext()) != null) {\n    const {x, y, width, height} = node.getBoundingClientRect()\n    frames.push({x, y, width, height})\n}\nreturn frames;\n\n", v9, 0, v10, v12}];
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