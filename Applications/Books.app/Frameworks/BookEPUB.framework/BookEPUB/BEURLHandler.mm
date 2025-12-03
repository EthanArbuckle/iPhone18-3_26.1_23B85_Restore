@interface BEURLHandler
+ (NSArray)supportedSchemes;
+ (id)testingDelegate;
+ (void)setTestingDelegate:(id)delegate;
- (BEURLHandler)initWithQueueMode:(unint64_t)mode cacheItem:(id)item;
- (BEURLHandlerDelegate)delegate;
- (BOOL)_shouldSendSVGForAsset:(id)asset;
- (BOOL)_shouldSendUpdatediBooksJSForAsset:(id)asset;
- (void)dealloc;
- (void)loadRequest:(id)request;
- (void)stopLoading;
@end

@implementation BEURLHandler

- (BEURLHandler)initWithQueueMode:(unint64_t)mode cacheItem:(id)item
{
  itemCopy = item;
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

    objc_storeStrong(&v8->_cacheItem, item);
    v8->_mode = mode;
  }

  return v8;
}

- (void)dealloc
{
  readDispatchIO = self->_readDispatchIO;
  if (readDispatchIO)
  {
    selfCopy = self;
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

+ (void)setTestingDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&unk_36ABA0);
  objc_storeWeak(&qword_36AB98, delegateCopy);

  os_unfair_lock_unlock(&unk_36ABA0);
}

+ (NSArray)supportedSchemes
{
  v4[0] = @"ibooks";
  v4[1] = @"ibooksimg";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (void)loadRequest:(id)request
{
  requestCopy = request;
  mode = self->_mode;
  readQueue = self->_readQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_25FE8;
  v12[3] = &unk_328DC0;
  v12[4] = self;
  v7 = requestCopy;
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

- (BOOL)_shouldSendSVGForAsset:(id)asset
{
  assetCopy = asset;
  requestedURL = [assetCopy requestedURL];
  scheme = [requestedURL scheme];
  if ([@"ibooks" compare:scheme options:1])
  {
    v6 = 0;
  }

  else
  {
    mimeType = [assetCopy mimeType];
    if ([mimeType length])
    {
      v8 = mimeType;
      v9 = BESupportedImageMimeTypes();
      v6 = [v9 containsObject:v8];
    }

    else
    {
      v6 = BEDoesURLPointToAnImageFile(requestedURL);
    }
  }

  return v6;
}

- (BOOL)_shouldSendUpdatediBooksJSForAsset:(id)asset
{
  assetCopy = asset;
  v4 = objc_autoreleasePoolPush();
  requestedURL = [assetCopy requestedURL];
  lastPathComponent = [requestedURL lastPathComponent];

  if (![lastPathComponent caseInsensitiveCompare:@"ibooks.js"] || !objc_msgSend(lastPathComponent, "caseInsensitiveCompare:", @"ibook.js"))
  {
    sinfData = [assetCopy sinfData];

    if (sinfData)
    {
      LOBYTE(v29) = 0;
      path = [assetCopy path];
      sinfData2 = [assetCopy sinfData];
      v30 = 0;
      v11 = [ft9cupR7u6OrU4m1pyhB pK0gFZ9QOdm17E9p9cpP:path sinfData:sinfData2 refetch:&v29 error:&v30];
      v12 = v30;

      if (v29 == 1)
      {
        path2 = [assetCopy path];
        [ft9cupR7u6OrU4m1pyhB _8g0aKpBRl5gIBvODdOy7:path2 completion:0];
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
      path3 = [assetCopy path];
      v11 = [NSData dataWithContentsOfFile:path3];
    }

    v15 = [[NSString alloc] initWithData:v11 encoding:4];
    if ([v15 length])
    {
      v29 = 0;
      v28 = [NSRegularExpression regularExpressionWithPattern:@"iBooks?.VERSION[ ]*=[ ]*'([0-9]+)\\.([0-9]+)'" options:0 error:&v29];;
      v12 = v29;
      v16 = [v28 matchesInString:v15 options:0 range:{0, objc_msgSend(v15, "length")}];
      firstObject = [v16 firstObject];
      v18 = firstObject;
      if (firstObject && (v19 = [firstObject rangeAtIndex:1], objc_msgSend(v15, "substringWithRange:", v19, v20), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "integerValue"), v21, v22 <= 1))
      {
        v23 = [v18 rangeAtIndex:2];
        v25 = [v15 substringWithRange:{v23, v24}];
        integerValue = [v25 integerValue];

        v7 = integerValue <= 4;
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