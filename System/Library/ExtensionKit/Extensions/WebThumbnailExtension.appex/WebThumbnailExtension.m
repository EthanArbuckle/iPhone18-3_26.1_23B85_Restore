void sub_100000F4C(uint64_t a1)
{
  [*(a1 + 32) _setupWebView];
  v2 = *(a1 + 32);
  v3 = [v2 webView];
  [v3 setNavigationDelegate:v2];

  v4 = [*(a1 + 32) webView];
  v5 = [*(a1 + 32) item];
  v6 = [v5 fileData];
  v7 = [*(a1 + 32) item];
  v8 = [v7 contentType];
  v9 = [v8 preferredMIMEType];
  v10 = objc_opt_new();
  v11 = [v4 loadData:v6 MIMEType:v9 characterEncodingName:@"UTF-8" baseURL:v10];

  v12 = dispatch_time(0, 30000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000010C8;
  block[3] = &unk_100008308;
  block[4] = *(a1 + 32);
  dispatch_after(v12, &_dispatch_main_q, block);
}

void sub_100001420(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) paginationManager];

  if (v2)
  {
    if (!v3)
    {
      v4 = [QLWebPaginationManager alloc];
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) webView];
      v7 = [(QLWebPaginationManager *)v4 initWithPageElementXPath:v5 webview:v6];
      [*(a1 + 40) setPaginationManager:v7];
    }

    v8 = [*(a1 + 40) paginationManager];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100001614;
    v29[3] = &unk_100008330;
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v29[4] = *(a1 + 40);
    v31 = v9;
    v30 = v10;
    [v8 processPageGeometryFromXpath:v29];
  }

  else
  {
    if (!v3)
    {
      v11 = [QLWebPaginationManager alloc];
      [*(a1 + 40) previewSize];
      v13 = v12;
      v15 = v14;
      v16 = [*(a1 + 40) webView];
      v17 = [(QLWebPaginationManager *)v11 initWithPageSize:v16 webview:v13, v15];
      [*(a1 + 40) setPaginationManager:v17];
    }

    v18 = [*(a1 + 40) paginationManager];
    [v18 pageRectForPage:*(a1 + 56)];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = *(a1 + 40);
    v28 = *(a1 + 48);

    [v27 _requestSnapshotThumbnailForRect:v28 completion:{v20, v22, v24, v26}];
  }
}

id sub_100001614(uint64_t a1)
{
  v2 = [*(a1 + 32) paginationManager];
  [v2 pageRectForPage:*(a1 + 48)];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);

  return [v11 _requestSnapshotThumbnailForRect:v12 completion:{v4, v6, v8, v10}];
}

void sub_100001728(uint64_t a1)
{
  v4 = [*(a1 + 32) webView];
  [v4 bounds];
  v3 = v2;
  [v4 bounds];
  [*(a1 + 32) _requestSnapshotThumbnailForRect:*(a1 + 40) completion:{0.0, 0.0, v3}];
}

void sub_1000019D0(uint64_t a1)
{
  if (([*(a1 + 32) loaded] & 1) == 0)
  {
    [*(a1 + 32) load];
  }

  v2 = [*(a1 + 32) afterLoadingQueue];
  dispatch_async(v2, *(a1 + 40));
}

uint64_t sub_100001FBC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setPageFrames:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000022C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  if (v5)
  {
    v26 = a1;
    v27 = v6;
    v28 = v5;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:{@"x", v26, v27, v28}];
          [v13 floatValue];
          v15 = v14;

          v16 = [v12 objectForKeyedSubscript:@"y"];
          [v16 floatValue];
          v18 = v17;

          v19 = [v12 objectForKeyedSubscript:@"width"];
          [v19 floatValue];
          v21 = v20;

          v22 = [v12 objectForKeyedSubscript:@"height"];
          [v22 floatValue];
          v24 = v23;

          v25 = [NSValue valueWithRect:v15, v18, v21, v24];
          [v7 addObject:v25];
        }

        v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v9);
    }

    v6 = v27;
    v5 = v28;
    a1 = v26;
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10000295C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100002974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _sendReplyFor:*(a1 + 40) fromCGImage:a2 extension:*(a1 + 48) error:a3 completionHandler:*(a1 + 56)];
  v4 = *(*(*(a1 + 64) + 8) + 40);

  return [v4 cleanup];
}

id sub_1000029C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _sendReplyFor:*(a1 + 40) fromCGImage:a2 extension:*(a1 + 48) error:a3 completionHandler:*(a1 + 56)];
  v4 = *(*(*(a1 + 64) + 8) + 40);

  return [v4 cleanup];
}

uint64_t sub_100002BB0(uint64_t a1, CGContextRef c)
{
  CGContextScaleCTM(c, *(a1 + 32), *(a1 + 32));
  CGContextSetInterpolationQuality(c, kCGInterpolationHigh);
  v5.origin.x = CGPointZero.x;
  v5.origin.y = CGPointZero.y;
  v5.size.width = *(a1 + 40);
  v5.size.height = *(a1 + 48);
  CGContextDrawImage(c, v5, *(a1 + 56));
  CGImageRelease(*(a1 + 56));
  return 1;
}