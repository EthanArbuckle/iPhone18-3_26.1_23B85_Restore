@interface DADeviceImageViewManager
+ (id)sharedInstance;
- (id)getDeviceSizeTokenForCurrentDeviceClass:(id)class;
- (id)getFormattedDeviceColor:(id)color deviceEnclosureColor:(id)enclosureColor;
- (id)getImageFromCacheWithRequest:(id)request;
- (id)imageURLForDeviceClass:(id)class deviceModel:(id)model deviceColor:(id)color deviceEnclosureColor:(id)enclosureColor scale:(float)scale;
- (id)prepareSession;
- (void)deviceImageViewForDeviceStateAttributes:(id)attributes completion:(id)completion;
- (void)downloadAndSetImageForURL:(id)l fallbackUrl:(id)url andCompletionHandler:(id)handler;
- (void)setDeviceImage:(id)image withCompletion:(id)completion;
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

- (void)deviceImageViewForDeviceStateAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010E30;
  v11[3] = &unk_1001BCD60;
  objc_copyWeak(&v14, &location);
  v12 = attributesCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = attributesCopy;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)downloadAndSetImageForURL:(id)l fallbackUrl:(id)url andCompletionHandler:(id)handler
{
  lCopy = l;
  urlCopy = url;
  handlerCopy = handler;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100011384;
  v33 = sub_100011394;
  v34 = 0;
  prepareSession = [(DADeviceImageViewManager *)self prepareSession];
  v12 = [NSMutableURLRequest requestWithURL:lCopy];
  [v12 setHTTPMethod:@"GET"];
  v13 = [(DADeviceImageViewManager *)self getImageFromCacheWithRequest:v12];
  v14 = v30[5];
  v30[5] = v13;

  v15 = v30[5];
  if (v15)
  {
    [(DADeviceImageViewManager *)self setDeviceImage:v15 withCompletion:handlerCopy];
  }

  else
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10001139C;
    v26[3] = &unk_1001BCD88;
    v28 = &v29;
    v26[4] = self;
    v16 = handlerCopy;
    v27 = v16;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100011404;
    v19[3] = &unk_1001BCDB0;
    v17 = objc_retainBlock(v26);
    v23 = v17;
    v25 = &v29;
    v20 = urlCopy;
    selfCopy = self;
    v24 = v16;
    v22 = prepareSession;
    v18 = [v22 dataTaskWithRequest:v12 completionHandler:v19];
    [v18 resume];
  }

  _Block_object_dispose(&v29, 8);
}

- (id)getImageFromCacheWithRequest:(id)request
{
  requestCopy = request;
  v4 = +[NSURLCache sharedURLCache];
  v5 = [v4 cachedResponseForRequest:requestCopy];

  data = [v5 data];

  if (data)
  {
    data2 = [v5 data];
    data = [UIImage imageWithData:data2];
  }

  return data;
}

- (id)prepareSession
{
  v2 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  v3 = [NSURLSession sessionWithConfiguration:v2];

  return v3;
}

- (void)setDeviceImage:(id)image withCompletion:(id)completion
{
  imageCopy = image;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_100011384;
  v11[4] = sub_100011394;
  v12 = imageCopy;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011778;
  v8[3] = &unk_1001BCDD8;
  completionCopy = completion;
  v10 = v11;
  v6 = completionCopy;
  v7 = imageCopy;
  dispatch_async(&_dispatch_main_q, v8);

  _Block_object_dispose(v11, 8);
}

- (id)imageURLForDeviceClass:(id)class deviceModel:(id)model deviceColor:(id)color deviceEnclosureColor:(id)enclosureColor scale:(float)scale
{
  enclosureColorCopy = enclosureColor;
  colorCopy = color;
  modelCopy = model;
  classCopy = class;
  v16 = [(DADeviceImageViewManager *)self getDeviceSizeTokenForCurrentDeviceClass:classCopy];
  v17 = [(DADeviceImageViewManager *)self getFormattedDeviceColor:colorCopy deviceEnclosureColor:enclosureColorCopy];

  v18 = [@"https://statici.icloud.com/fmipmobile/deviceImages-9.0/" mutableCopy];
  v19 = +[NSCharacterSet URLPathAllowedCharacterSet];
  v20 = [classCopy stringByAddingPercentEncodingWithAllowedCharacters:v19];

  [v18 appendFormat:@"%@/", v20];
  v21 = +[NSCharacterSet URLPathAllowedCharacterSet];
  v22 = [modelCopy stringByAddingPercentEncodingWithAllowedCharacters:v21];

  [v18 appendFormat:@"%@", v22];
  if (v17)
  {
    [v18 appendFormat:@"-%@", v17];
  }

  [v18 appendString:@"/"];
  if (scale <= 1.0)
  {
    scale = &stru_1001C9EA8;
  }

  else
  {
    scale = [[NSString alloc] initWithFormat:@"__%.0fx", scale];
  }

  [v18 appendFormat:@"%@-%@%@.png", @"online", v16, scale];
  v24 = [NSURL URLWithString:v18];

  return v24;
}

- (id)getDeviceSizeTokenForCurrentDeviceClass:(id)class
{
  classCopy = class;
  v4 = MGCopyAnswer();
  v5 = MGCopyAnswer();
  if (([classCopy isEqualToString:v4] & 1) != 0 || objc_msgSend(classCopy, "isEqualToString:", v5))
  {
    v6 = @"nolocation_ipad";
  }

  else
  {
    v6 = @"nolocation_iphone";
  }

  return v6;
}

- (id)getFormattedDeviceColor:(id)color deviceEnclosureColor:(id)enclosureColor
{
  colorCopy = color;
  enclosureColorCopy = enclosureColor;
  v7 = enclosureColorCopy;
  v8 = 0;
  if (colorCopy && enclosureColorCopy)
  {
    v8 = objc_opt_new();
    if ([colorCopy length])
    {
      v9 = +[NSCharacterSet URLPathAllowedCharacterSet];
      v10 = [colorCopy stringByAddingPercentEncodingWithAllowedCharacters:v9];
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