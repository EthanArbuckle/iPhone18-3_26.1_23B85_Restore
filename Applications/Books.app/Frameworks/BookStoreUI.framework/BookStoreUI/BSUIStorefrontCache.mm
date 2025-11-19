@interface BSUIStorefrontCache
+ (BSUIStorefrontCache)sharedInstance;
- (BSUIStorefrontCache)initWithMemoryCapacity:(unint64_t)a3 diskCapacity:(unint64_t)a4;
- (id)_resolveURLString:(id)a3 size:(CGSize)a4 fileType:(id)a5;
- (void)imageWithURLString:(id)a3 size:(CGSize)a4 fileType:(id)a5 completion:(id)a6;
@end

@implementation BSUIStorefrontCache

+ (BSUIStorefrontCache)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_70B4;
  block[3] = &unk_386D38;
  block[4] = a1;
  if (qword_3CA6B8 != -1)
  {
    dispatch_once(&qword_3CA6B8, block);
  }

  v2 = qword_3CA6C0;

  return v2;
}

- (BSUIStorefrontCache)initWithMemoryCapacity:(unint64_t)a3 diskCapacity:(unint64_t)a4
{
  v15.receiver = self;
  v15.super_class = BSUIStorefrontCache;
  v6 = [(BSUIStorefrontCache *)&v15 init];
  if (v6)
  {
    v7 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    v8 = [NSURLCache alloc];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 initWithMemoryCapacity:a3 diskCapacity:a4 diskPath:v10];
    [v7 setURLCache:v11];

    v12 = [NSURLSession sessionWithConfiguration:v7];
    session = v6->_session;
    v6->_session = v12;
  }

  return v6;
}

- (void)imageWithURLString:(id)a3 size:(CGSize)a4 fileType:(id)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = [(BSUIStorefrontCache *)self _resolveURLString:a3 size:a5 fileType:width, height];
  session = self->_session;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_72F0;
  v16[3] = &unk_386D60;
  v17 = v11;
  v14 = v11;
  v15 = [(NSURLSession *)session dataTaskWithURL:v12 completionHandler:v16];
  [v15 resume];
}

- (id)_resolveURLString:(id)a3 size:(CGSize)a4 fileType:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a5;
  v9 = [a3 mutableCopy];
  v10 = v8;
  v11 = v10;
  if (([(__CFString *)v10 isEqualToString:@"jpeg"]& 1) == 0)
  {
    v11 = v10;
    if (([(__CFString *)v10 isEqualToString:@"png"]& 1) == 0)
    {

      v11 = @"jpeg";
    }
  }

  v12 = fmin(width, height);
  v13 = width;
  if (v12 <= 0.0)
  {
    v13 = 100.0;
  }

  v19 = llroundf(v13);
  if (v12 > 0.0)
  {
    v14 = height;
  }

  else
  {
    v14 = 100.0;
  }

  v15 = [NSString stringWithFormat:@"%d", v19];
  [v9 replaceOccurrencesOfString:@"{w}" withString:v15 options:2 range:{0, objc_msgSend(v9, "length")}];

  v16 = [NSString stringWithFormat:@"%d", llroundf(v14)];
  [v9 replaceOccurrencesOfString:@"{h}" withString:v16 options:2 range:{0, objc_msgSend(v9, "length")}];

  [v9 replaceOccurrencesOfString:@"{f}" withString:v11 options:2 range:{0, objc_msgSend(v9, "length")}];
  v17 = [NSURL URLWithString:v9];

  return v17;
}

@end