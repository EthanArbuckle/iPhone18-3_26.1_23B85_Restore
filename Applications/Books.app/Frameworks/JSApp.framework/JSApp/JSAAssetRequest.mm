@interface JSAAssetRequest
+ (void)get:(id)get :(id)a4;
+ (void)get:(id)get completion:(id)completion;
+ (void)requestWithURL:(id)l completionHandler:(id)handler;
@end

@implementation JSAAssetRequest

+ (void)get:(id)get :(id)a4
{
  getCopy = get;
  v7 = a4;
  v8 = getCopy;
  v9 = +[NSBundle mainBundle];
  bundlePath = [v9 bundlePath];

  if ([v8 containsString:bundlePath])
  {
    v11 = +[NSFileManager defaultManager];
    v12 = [v11 fileExistsAtPath:v8];

    v13 = v8;
    if ((v12 & 1) == 0)
    {
      v14 = [NSURL URLWithString:v8];
      lastPathComponent = [v14 lastPathComponent];

      v13 = [bundlePath stringByAppendingPathComponent:lastPathComponent];
    }

    v24 = 0;
    v16 = [NSString stringWithContentsOfFile:v13 encoding:4 error:&v24];
    v17 = v24;
    v18 = +[JSABridge sharedInstance];
    v19 = v16;
    if (!v16)
    {
      v19 = +[NSNull null];
    }

    v25[0] = v19;
    if (v17)
    {
      [v17 localizedDescription];
    }

    else
    {
      +[NSNull null];
    }
    v20 = ;
    v25[1] = v20;
    v21 = [NSArray arrayWithObjects:v25 count:2];
    [v18 enqueueValueCall:v7 arguments:v21 file:@"JSAAssetRequest.m" line:36];

    if (!v16)
    {
    }
  }

  else
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_4C84;
    v22[3] = &unk_B2270;
    v23 = v7;
    [self get:v8 completion:v22];
    v17 = v23;
    v13 = v8;
  }
}

+ (void)get:(id)get completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4E60;
  v7[3] = &unk_B2298;
  completionCopy = completion;
  v6 = completionCopy;
  [self requestWithURL:get completionHandler:v7];
}

+ (void)requestWithURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [NSURL URLWithString:l];
  v7 = [[NSURLRequest alloc] initWithURL:v6 cachePolicy:0 timeoutInterval:30.0];
  v8 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v8 setHTTPShouldUsePipelining:1];
  [v8 setRequestCachePolicy:0];
  v9 = +[NSURLCache sharedURLCache];
  [v8 setURLCache:v9];

  [v8 setAllowsCellularAccess:1];
  v10 = [NSURLSession sessionWithConfiguration:v8];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_50D8;
  v13[3] = &unk_B22C0;
  v14 = handlerCopy;
  v11 = handlerCopy;
  v12 = [v10 dataTaskWithRequest:v7 completionHandler:v13];
  [v12 resume];
}

@end