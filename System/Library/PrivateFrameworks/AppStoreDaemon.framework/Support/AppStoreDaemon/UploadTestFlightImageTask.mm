@interface UploadTestFlightImageTask
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation UploadTestFlightImageTask

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  contentTypeHeaderValue = [(UploadTestFlightImageTask *)self contentTypeHeaderValue];
  [v8 setHTTPContentType:contentTypeHeaderValue];

  v12 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  [v12 set_sourceApplicationBundleIdentifier:@"com.apple.AppStore"];
  v13 = [NSURLSession sessionWithConfiguration:v12];
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100239F5C;
  v19 = &unk_10051E2A8;
  selfCopy = self;
  v21 = handlerCopy;
  v14 = handlerCopy;
  v15 = [v13 dataTaskWithRequest:v8 completionHandler:&v16];
  [v15 resume];
}

@end