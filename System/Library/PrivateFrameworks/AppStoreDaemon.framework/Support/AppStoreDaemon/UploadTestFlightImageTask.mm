@interface UploadTestFlightImageTask
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation UploadTestFlightImageTask

- (void)mainWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [NSMutableURLRequest alloc];
  v6 = *(&self->super._bag + 2);
  if (v6)
  {
    v6 = v6[3];
  }

  v7 = v6;
  v8 = [v5 initWithURL:v7];

  v9 = *(&self->super._bag + 2);
  if (v9)
  {
    v9 = v9[1];
  }

  v10 = v9;
  [v8 setHTTPBody:v10];

  [v8 setHTTPMethod:@"PUT"];
  v11 = [(UploadTestFlightImageTask *)self contentTypeHeaderValue];
  [v8 setHTTPContentType:v11];

  v12 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  [v12 set_sourceApplicationBundleIdentifier:@"com.apple.AppStore"];
  v13 = [NSURLSession sessionWithConfiguration:v12];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100239F5C;
  v19 = &unk_10051E2A8;
  v20 = self;
  v21 = v4;
  v14 = v4;
  v15 = [v13 dataTaskWithRequest:v8 completionHandler:&v16];
  [v15 resume];
}

@end