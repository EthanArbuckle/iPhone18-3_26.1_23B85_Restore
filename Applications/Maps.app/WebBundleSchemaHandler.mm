@interface WebBundleSchemaHandler
- (WebBundleSchemaHandler)initWithDelegate:(id)delegate configuration:(id)configuration;
- (void)webView:(id)view startURLSchemeTask:(id)task;
@end

@implementation WebBundleSchemaHandler

- (void)webView:(id)view startURLSchemeTask:(id)task
{
  taskCopy = task;
  request = [taskCopy request];
  v7 = [request URL];

  webBundleDirectory = [(WebBundleConfiguration *)self->_configuration webBundleDirectory];
  path = [v7 path];
  v10 = [webBundleDirectory URLByAppendingPathComponent:path];

  pathExtension = [v10 pathExtension];
  v12 = [UTType typeWithFilenameExtension:pathExtension];

  preferredMIMEType = [v12 preferredMIMEType];
  v14 = +[NSFileManager defaultManager];
  absoluteString = [v10 absoluteString];
  v16 = [v14 fileExistsAtPath:absoluteString];

  if (v16)
  {
    absoluteString2 = [v10 absoluteString];
    v26 = 0;
    v18 = [NSData dataWithContentsOfFile:absoluteString2 options:0 error:&v26];
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
  request2 = [taskCopy request];
  v23 = [request2 URL];
  v24 = [v21 initWithURL:v23 MIMEType:preferredMIMEType expectedContentLength:objc_msgSend(v18 textEncodingName:{"length"), 0}];

  [taskCopy didReceiveResponse:v24];
  [taskCopy didReceiveData:v18];
  [taskCopy didFinish];
}

- (WebBundleSchemaHandler)initWithDelegate:(id)delegate configuration:(id)configuration
{
  delegateCopy = delegate;
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = WebBundleSchemaHandler;
  v8 = [(WebBundleSchemaHandler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_configuration, configuration);
  }

  return v9;
}

@end