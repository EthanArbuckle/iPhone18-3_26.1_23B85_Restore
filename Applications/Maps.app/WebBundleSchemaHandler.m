@interface WebBundleSchemaHandler
- (WebBundleSchemaHandler)initWithDelegate:(id)a3 configuration:(id)a4;
- (void)webView:(id)a3 startURLSchemeTask:(id)a4;
@end

@implementation WebBundleSchemaHandler

- (void)webView:(id)a3 startURLSchemeTask:(id)a4
{
  v5 = a4;
  v6 = [v5 request];
  v7 = [v6 URL];

  v8 = [(WebBundleConfiguration *)self->_configuration webBundleDirectory];
  v9 = [v7 path];
  v10 = [v8 URLByAppendingPathComponent:v9];

  v11 = [v10 pathExtension];
  v12 = [UTType typeWithFilenameExtension:v11];

  v13 = [v12 preferredMIMEType];
  v14 = +[NSFileManager defaultManager];
  v15 = [v10 absoluteString];
  v16 = [v14 fileExistsAtPath:v15];

  if (v16)
  {
    v17 = [v10 absoluteString];
    v26 = 0;
    v18 = [NSData dataWithContentsOfFile:v17 options:0 error:&v26];
    v19 = v26;

    if (!v19)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v25 = 0;
    v18 = [NSData dataWithContentsOfURL:v10 options:0 error:&v25];
    v19 = v25;
    if (!v19)
    {
      goto LABEL_8;
    }
  }

  v20 = sub_100038318();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "File Retrieval Error %@", buf, 0xCu);
  }

LABEL_8:
  v21 = [NSURLResponse alloc];
  v22 = [v5 request];
  v23 = [v22 URL];
  v24 = [v21 initWithURL:v23 MIMEType:v13 expectedContentLength:objc_msgSend(v18 textEncodingName:{"length"), 0}];

  [v5 didReceiveResponse:v24];
  [v5 didReceiveData:v18];
  [v5 didFinish];
}

- (WebBundleSchemaHandler)initWithDelegate:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = WebBundleSchemaHandler;
  v8 = [(WebBundleSchemaHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_configuration, a4);
  }

  return v9;
}

@end