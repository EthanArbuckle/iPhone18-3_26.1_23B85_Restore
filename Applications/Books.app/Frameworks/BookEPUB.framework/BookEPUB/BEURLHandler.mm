@interface BEURLHandler
+ (NSArray)supportedSchemes;
+ (id)testingDelegate;
+ (void)setTestingDelegate:(id)a3;
- (BEURLHandler)initWithQueueMode:(unint64_t)a3 cacheItem:(id)a4;
- (BEURLHandlerDelegate)delegate;
- (BOOL)_shouldSendSVGForAsset:(id)a3;
- (BOOL)_shouldSendUpdatediBooksJSForAsset:(id)a3;
- (void)dealloc;
- (void)loadRequest:(id)a3;
- (void)stopLoading;
@end

@implementation BEURLHandler

- (BEURLHandler)initWithQueueMode:(unint64_t)a3 cacheItem:(id)a4
{
  v7 = a4;
  v17.receiver = self;
  v17.super_class = BEURLHandler;
  v8 = [(BEURLHandler *)&v17 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("BEURLHandler.readQueue", v9);
    readQueue = v8->_readQueue;
    v8->_readQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("BEURLHandler.ImageFilterQueue", v13);
    imageFilterQueue = v8->_imageFilterQueue;
    v8->_imageFilterQueue = v14;

    objc_storeStrong(&v8->_cacheItem, a4);
    v8->_mode = a3;
  }

  return v8;
}

- (void)dealloc
{
  readDispatchIO = self->_readDispatchIO;
  if (readDispatchIO)
  {
    v4 = self;
    dispatch_io_close(readDispatchIO, 1uLL);
    v5 = self->_readDispatchIO;
    self->_readDispatchIO = 0;
  }

  v6.receiver = self;
  v6.super_class = BEURLHandler;
  [(BEURLHandler *)&v6 dealloc];
}

+ (id)testingDelegate
{
  os_unfair_lock_lock(&unk_36ABA0);
  WeakRetained = objc_loadWeakRetained(&qword_36AB98);
  os_unfair_lock_unlock(&unk_36ABA0);

  return WeakRetained;
}

+ (void)setTestingDelegate:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&unk_36ABA0);
  objc_storeWeak(&qword_36AB98, v3);

  os_unfair_lock_unlock(&unk_36ABA0);
}

+ (NSArray)supportedSchemes
{
  v4[0] = @"ibooks";
  v4[1] = @"ibooksimg";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (void)loadRequest:(id)a3
{
  v4 = a3;
  mode = self->_mode;
  readQueue = self->_readQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_25FE8;
  v12[3] = &unk_328DC0;
  v12[4] = self;
  v7 = v4;
  v13 = v7;
  v8 = readQueue;
  v9 = v8;
  if (mode == 1)
  {
    dispatch_async(v8, v12);
  }

  else
  {
    v10 = objc_retainBlock(v12);
    v11 = v10;
    if (v10)
    {
      (v10[2])(v10);
    }
  }
}

- (void)stopLoading
{
  mode = self->_mode;
  readQueue = self->_readQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_27938;
  block[3] = &unk_328DE8;
  block[4] = self;
  v4 = readQueue;
  v5 = v4;
  if (mode == 1)
  {
    dispatch_async(v4, block);
  }

  else
  {
    v6 = objc_retainBlock(block);
    v7 = v6;
    if (v6)
    {
      (v6[2])(v6);
    }
  }
}

- (BOOL)_shouldSendSVGForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 requestedURL];
  v5 = [v4 scheme];
  if ([@"ibooks" compare:v5 options:1])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v3 mimeType];
    if ([v7 length])
    {
      v8 = v7;
      v9 = BESupportedImageMimeTypes();
      v6 = [v9 containsObject:v8];
    }

    else
    {
      v6 = BEDoesURLPointToAnImageFile(v4);
    }
  }

  return v6;
}

- (BOOL)_shouldSendUpdatediBooksJSForAsset:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 requestedURL];
  v6 = [v5 lastPathComponent];

  if (![v6 caseInsensitiveCompare:@"ibooks.js"] || !objc_msgSend(v6, "caseInsensitiveCompare:", @"ibook.js"))
  {
    v8 = [v3 sinfData];

    if (v8)
    {
      LOBYTE(v29) = 0;
      v9 = [v3 path];
      v10 = [v3 sinfData];
      v30 = 0;
      v11 = [ft9cupR7u6OrU4m1pyhB pK0gFZ9QOdm17E9p9cpP:v9 sinfData:v10 refetch:&v29 error:&v30];
      v12 = v30;

      if (v29 == 1)
      {
        v13 = [v3 path];
        [ft9cupR7u6OrU4m1pyhB _8g0aKpBRl5gIBvODdOy7:v13 completion:0];
      }

      if (v12)
      {
        v7 = 0;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v14 = [v3 path];
      v11 = [NSData dataWithContentsOfFile:v14];
    }

    v15 = [[NSString alloc] initWithData:v11 encoding:4];
    if ([v15 length])
    {
      v29 = 0;
      v28 = [NSRegularExpression regularExpressionWithPattern:@"iBooks?.VERSION[ ]*=[ ]*'([0-9]+)\\.([0-9]+)'" options:0 error:&v29];;
      v12 = v29;
      v16 = [v28 matchesInString:v15 options:0 range:{0, objc_msgSend(v15, "length")}];
      v17 = [v16 firstObject];
      v18 = v17;
      if (v17 && (v19 = [v17 rangeAtIndex:1], objc_msgSend(v15, "substringWithRange:", v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "integerValue"), v21, v22 <= 1))
      {
        v23 = [v18 rangeAtIndex:2];
        v25 = [v15 substringWithRange:{v23, v24}];
        v26 = [v25 integerValue];

        v7 = v26 <= 4;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v12 = 0;
      v7 = 0;
    }

    goto LABEL_18;
  }

  v7 = 0;
LABEL_19:

  objc_autoreleasePoolPop(v4);
  return v7;
}

- (BEURLHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end