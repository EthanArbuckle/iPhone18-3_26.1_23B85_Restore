@interface DADeviceImageViewManager
+ (id)sharedInstance;
- (id)getDeviceSizeTokenForCurrentDeviceClass:(id)a3;
- (id)getFormattedDeviceColor:(id)a3 deviceEnclosureColor:(id)a4;
- (id)getImageFromCacheWithRequest:(id)a3;
- (id)imageURLForDeviceClass:(id)a3 deviceModel:(id)a4 deviceColor:(id)a5 deviceEnclosureColor:(id)a6 scale:(float)a7;
- (id)prepareSession;
- (void)deviceImageViewForDeviceStateAttributes:(id)a3 completion:(id)a4;
- (void)downloadAndSetImageForURL:(id)a3 fallbackUrl:(id)a4 andCompletionHandler:(id)a5;
- (void)setDeviceImage:(id)a3 withCompletion:(id)a4;
@end

@implementation DADeviceImageViewManager

+ (id)sharedInstance
{
  if (qword_100202D58 != -1)
  {
    sub_100158778();
  }

  v3 = qword_100202D50;

  return v3;
}

- (void)deviceImageViewForDeviceStateAttributes:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010E30;
  v11[3] = &unk_1001BCD60;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)downloadAndSetImageForURL:(id)a3 fallbackUrl:(id)a4 andCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100011384;
  v33 = sub_100011394;
  v34 = 0;
  v11 = [(DADeviceImageViewManager *)self prepareSession];
  v12 = [NSMutableURLRequest requestWithURL:v8];
  [v12 setHTTPMethod:@"GET"];
  v13 = [(DADeviceImageViewManager *)self getImageFromCacheWithRequest:v12];
  v14 = v30[5];
  v30[5] = v13;

  v15 = v30[5];
  if (v15)
  {
    [(DADeviceImageViewManager *)self setDeviceImage:v15 withCompletion:v10];
  }

  else
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10001139C;
    v26[3] = &unk_1001BCD88;
    v28 = &v29;
    v26[4] = self;
    v16 = v10;
    v27 = v16;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100011404;
    v19[3] = &unk_1001BCDB0;
    v17 = objc_retainBlock(v26);
    v23 = v17;
    v25 = &v29;
    v20 = v9;
    v21 = self;
    v24 = v16;
    v22 = v11;
    v18 = [v22 dataTaskWithRequest:v12 completionHandler:v19];
    [v18 resume];
  }

  _Block_object_dispose(&v29, 8);
}

- (id)getImageFromCacheWithRequest:(id)a3
{
  v3 = a3;
  v4 = +[NSURLCache sharedURLCache];
  v5 = [v4 cachedResponseForRequest:v3];

  v6 = [v5 data];

  if (v6)
  {
    v7 = [v5 data];
    v6 = [UIImage imageWithData:v7];
  }

  return v6;
}

- (id)prepareSession
{
  v2 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  v3 = [NSURLSession sessionWithConfiguration:v2];

  return v3;
}

- (void)setDeviceImage:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_100011384;
  v11[4] = sub_100011394;
  v12 = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011778;
  v8[3] = &unk_1001BCDD8;
  v9 = a4;
  v10 = v11;
  v6 = v9;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);

  _Block_object_dispose(v11, 8);
}

- (id)imageURLForDeviceClass:(id)a3 deviceModel:(id)a4 deviceColor:(id)a5 deviceEnclosureColor:(id)a6 scale:(float)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(DADeviceImageViewManager *)self getDeviceSizeTokenForCurrentDeviceClass:v15];
  v17 = [(DADeviceImageViewManager *)self getFormattedDeviceColor:v13 deviceEnclosureColor:v12];

  v18 = [@"https://statici.icloud.com/fmipmobile/deviceImages-9.0/" mutableCopy];
  v19 = +[NSCharacterSet URLPathAllowedCharacterSet];
  v20 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:v19];

  [v18 appendFormat:@"%@/", v20];
  v21 = +[NSCharacterSet URLPathAllowedCharacterSet];
  v22 = [v14 stringByAddingPercentEncodingWithAllowedCharacters:v21];

  [v18 appendFormat:@"%@", v22];
  if (v17)
  {
    [v18 appendFormat:@"-%@", v17];
  }

  [v18 appendString:@"/"];
  if (a7 <= 1.0)
  {
    v23 = &stru_1001C9EA8;
  }

  else
  {
    v23 = [[NSString alloc] initWithFormat:@"__%.0fx", a7];
  }

  [v18 appendFormat:@"%@-%@%@.png", @"online", v16, v23];
  v24 = [NSURL URLWithString:v18];

  return v24;
}

- (id)getDeviceSizeTokenForCurrentDeviceClass:(id)a3
{
  v3 = a3;
  v4 = MGCopyAnswer();
  v5 = MGCopyAnswer();
  if (([v3 isEqualToString:v4] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", v5))
  {
    v6 = @"nolocation_ipad";
  }

  else
  {
    v6 = @"nolocation_iphone";
  }

  return v6;
}

- (id)getFormattedDeviceColor:(id)a3 deviceEnclosureColor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = objc_opt_new();
    if ([v5 length])
    {
      v9 = +[NSCharacterSet URLPathAllowedCharacterSet];
      v10 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v9];
      [v8 appendFormat:@"%@", v10];
    }

    if ([v7 length])
    {
      v11 = +[NSCharacterSet URLPathAllowedCharacterSet];
      v12 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v11];
      [v8 appendFormat:@"-%@", v12];
    }

    if ([v7 intValue])
    {
      [v8 appendFormat:@"-%@", @"0"];
    }
  }

  return v8;
}

@end