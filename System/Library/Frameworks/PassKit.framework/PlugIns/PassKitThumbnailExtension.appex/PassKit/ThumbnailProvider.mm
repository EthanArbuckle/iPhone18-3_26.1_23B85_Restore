@interface ThumbnailProvider
- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler;
@end

@implementation ThumbnailProvider

- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  [requestCopy maximumSize];
  v8 = v7;
  v10 = v9;
  fileURL = [requestCopy fileURL];
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = fileURL;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Generating thumbnail for file URL: %@", buf, 0xCu);
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [NSData dataWithContentsOfURL:fileURL];
  v22 = 0;
  v15 = [PKPass createWithData:v14 warnings:0 error:&v22];
  v16 = v22;
  if (v15)
  {
    [v15 loadContentSync];
    [v15 loadImageSetSync:0 preheat:1];

    objc_autoreleasePoolPop(v13);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100000D68;
    block[3] = &unk_100004128;
    v18 = v15;
    v20 = v8;
    v21 = v10;
    v19 = handlerCopy;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {

    objc_autoreleasePoolPop(v13);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not generate thumbnail for invalid pass. Error: %@", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v16);
  }
}

@end