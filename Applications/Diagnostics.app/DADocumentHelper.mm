@interface DADocumentHelper
- (DADocumentHelper)initWithConsentHandles:(id)a3;
- (id)base64String:(id)a3;
- (id)consentBody;
- (id)currentDate;
- (id)generatePDFData;
- (id)getLocalizedConsentTextWithHandle:(id)a3;
- (void)attachConsentFormToSessionWithData:(id)a3;
- (void)saveConsentDocument:(id)a3;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation DADocumentHelper

- (DADocumentHelper)initWithConsentHandles:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = DADocumentHelper;
  v5 = [(DADocumentHelper *)&v22 init];
  if (v5)
  {
    v6 = [WKWebView alloc];
    v7 = +[UIScreen mainScreen];
    [v7 bounds];
    v8 = [v6 initWithFrame:?];
    webView = v5->_webView;
    v5->_webView = v8;

    [(WKWebView *)v5->_webView setNavigationDelegate:v5];
    v10 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(DADocumentHelper *)v5 getLocalizedConsentTextWithHandle:*(*(&v18 + 1) + 8 * v15), v18];
          [v10 addObject:v16];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v13);
    }

    [(DADocumentHelper *)v5 setContentsText:v10];
  }

  return v5;
}

- (id)generatePDFData
{
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = 595.200012;
  v16.size.height = 841.799988;
  v17 = CGRectInset(v16, 24.0, 24.0);
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  v7 = objc_alloc_init(UIPrintPageRenderer);
  v8 = [(DADocumentHelper *)self webView];
  v9 = [v8 viewPrintFormatter];
  [v7 addPrintFormatter:v9 startingAtPageAtIndex:0];

  v10 = [NSValue valueWithCGRect:0.0, 0.0, 595.200012, 841.799988];
  [v7 setValue:v10 forKey:@"paperRect"];

  v11 = [NSValue valueWithCGRect:x, y, width, height];
  [v7 setValue:v11 forKey:@"printableRect"];

  v12 = +[NSMutableData data];
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = 595.200012;
  v18.size.height = 841.799988;
  UIGraphicsBeginPDFContextToData(v12, v18, 0);
  if ([v7 numberOfPages] >= 1)
  {
    v13 = 0;
    do
    {
      UIGraphicsBeginPDFPage();
      PDFContextBounds = UIGraphicsGetPDFContextBounds();
      [v7 drawPageAtIndex:v13++ inRect:{PDFContextBounds.origin.x, PDFContextBounds.origin.y, PDFContextBounds.size.width, PDFContextBounds.size.height}];
    }

    while (v13 < [v7 numberOfPages]);
  }

  UIGraphicsEndPDFContext();

  return v12;
}

- (void)saveConsentDocument:(id)a3
{
  v4 = a3;
  v5 = [(DADocumentHelper *)self saveDataTimer];

  if (v5)
  {
    v6 = [(DADocumentHelper *)self saveDataTimer];
    [v6 invalidate];
  }

  v7 = [v4 copy];
  [(DADocumentHelper *)self setOnSavePDFData:v7];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100024504;
  v12[3] = &unk_1001BD230;
  v12[4] = self;
  v8 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v12 block:3.0];
  [(DADocumentHelper *)self setSaveDataTimer:v8];

  v9 = [(DADocumentHelper *)self webView];
  v10 = [(DADocumentHelper *)self consentBody];
  v11 = [v9 loadHTMLString:v10 baseURL:0];
}

- (id)base64String:(id)a3
{
  v3 = UIImagePNGRepresentation(a3);
  v4 = [v3 base64EncodedStringWithOptions:1];

  return v4;
}

- (id)currentDate
{
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateStyle:4];
  [v2 setTimeStyle:0];
  v3 = +[NSLocale currentLocale];
  [v2 setLocale:v3];

  v4 = +[NSDate date];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

- (id)consentBody
{
  v3 = [(DADocumentHelper *)self imageSignature];
  v22 = [(DADocumentHelper *)self base64String:v3];

  v4 = [@"ELS_HEALTH_CONSENT_DOCUMENT_TITLE" localizedStringForTableName:0 arguments:0];
  v21 = [NSString stringWithFormat:@"<center><h3>%@</h3></center>", v4];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(DADocumentHelper *)self contentsText];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    v9 = &stru_1001C9EA8;
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [NSString stringWithFormat:@"<p>%@</p>", *(*(&v23 + 1) + 8 * v10)];
        v9 = [(__CFString *)v11 stringByAppendingString:v12];

        v10 = v10 + 1;
        v11 = v9;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = &stru_1001C9EA8;
  }

  v13 = [@"ELS_HEALTH_CONSENT_DOCUMENT_NAME" localizedStringForTableName:0 arguments:0];
  v14 = [(DADocumentHelper *)self fullName];
  v15 = [@"ELS_HEALTH_CONSENT_DOCUMENT_SIGN" localizedStringForTableName:0 arguments:0];
  v16 = [@"ELS_HEALTH_CONSENT_DOCUMENT_DATE" localizedStringForTableName:0 arguments:0];
  v17 = [(DADocumentHelper *)self currentDate];
  v18 = [NSString stringWithFormat:@"<h3>%@</h3><p>%@</p><h3>%@</h3><img src=data:image/pngbase64, %@ /><h3>%@</h3><p>%@</p>", v13, v14, v15, v22, v16, v17];;

  v19 = [NSString stringWithFormat:@"%@%@%@%@%@</body></html>", @"<html dir=ltr>", @"<head><style>body { font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbolfont-size:14px;}</style></head><body>", v21, v9, v18];;

  return v19;
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v5 = [(DADocumentHelper *)self generatePDFData:a3];
  v6 = [(DADocumentHelper *)self saveDataTimer];
  [v6 invalidate];

  [(DADocumentHelper *)self attachConsentFormToSessionWithData:v5];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000249EC;
  block[3] = &unk_1001BC580;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)getLocalizedConsentTextWithHandle:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100045B38();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)attachConsentFormToSessionWithData:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_1000FF0D4();
  sub_10005F18C(v5, v7);
}

@end