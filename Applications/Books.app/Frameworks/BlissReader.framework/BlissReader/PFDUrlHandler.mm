@interface PFDUrlHandler
+ (NSArray)supportedSchemes;
+ (id)_assetInfoForHost:(id)host;
+ (id)_assetInfoForURL:(id)l;
+ (id)_mimeTypeForURL:(id)l;
+ (unint64_t)registerHost:(id)host bookRootURL:(id)l withDRMContext:(id)context;
+ (unint64_t)unregisterHost:(id)host;
+ (void)_accessHostMap:(id)map;
- (PFDUrlHandler)initWithQueueMode:(unint64_t)mode requestScope:(id)scope;
- (PFDUrlHandlerDelegate)delegate;
- (void)_cleanupDispatchIO;
- (void)_maybeSendDidReceiveResponse:(id)response;
- (void)_runBlockOnAppropriateQueue:(id)queue;
- (void)_sendDidFailWithError:(id)error;
- (void)_sendDidFinish;
- (void)_sendDidReceiveData:(id)data;
- (void)_sendDidReceiveResponse:(id)response;
- (void)_sendErrorForErrorCode:(int64_t)code;
- (void)_sendLargeFileForAsset:(id)asset;
- (void)_sendSingleDataResponse:(id)response mimeType:(id)type requestedURL:(id)l;
- (void)_sendSmallFileForAsset:(id)asset;
- (void)dealloc;
- (void)loadRequest:(id)request;
- (void)stopLoading;
@end

@implementation PFDUrlHandler

+ (void)_accessHostMap:(id)map
{
  mapCopy = map;
  os_unfair_lock_lock(&unk_567930);
  if (!qword_567938)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = qword_567938;
    qword_567938 = v3;
  }

  mapCopy[2]();
  os_unfair_lock_unlock(&unk_567930);
}

+ (unint64_t)registerHost:(id)host bookRootURL:(id)l withDRMContext:(id)context
{
  hostCopy = host;
  lCopy = l;
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1DFDF8;
  v16[3] = &unk_45F340;
  v11 = hostCopy;
  v17 = v11;
  v12 = contextCopy;
  v18 = v12;
  v13 = lCopy;
  v19 = v13;
  v20 = &v21;
  [self _accessHostMap:v16];
  v14 = v22[3];

  _Block_object_dispose(&v21, 8);
  return v14;
}

+ (unint64_t)unregisterHost:(id)host
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1DFF68;
  v7[3] = &unk_45F368;
  hostCopy = host;
  v8 = hostCopy;
  v9 = &v10;
  [self _accessHostMap:v7];
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

+ (id)_assetInfoForHost:(id)host
{
  hostCopy = host;
  v5 = hostCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1E0100;
  v16 = sub_1E0110;
  v17 = 0;
  if (hostCopy)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1E0118;
    v9[3] = &unk_45F390;
    v11 = &v12;
    v10 = hostCopy;
    [self _accessHostMap:v9];

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

+ (id)_mimeTypeForURL:(id)l
{
  pathExtension = [l pathExtension];
  v4 = [UTType typeWithFilenameExtension:pathExtension];
  preferredMIMEType = [v4 preferredMIMEType];

  return preferredMIMEType;
}

+ (id)_assetInfoForURL:(id)l
{
  v3 = __chkstk_darwin(self, a2, l);
  v5 = v4;
  v6 = objc_opt_class();
  host = [v5 host];
  v8 = [v6 _assetInfoForHost:host];

  [v8 setRequestedURL:v5];
  bookRootURL = [v8 bookRootURL];

  if (bookRootURL)
  {
    bookRootURL2 = [v8 bookRootURL];
    path = [v5 path];
    v12 = [bookRootURL2 URLByAppendingPathComponent:path];

    path2 = [v12 path];
    stringByStandardizingPath = [path2 stringByStandardizingPath];

    v15 = +[NSFileManager defaultManager];
    bookRootURL3 = [v8 bookRootURL];
    v17 = [v15 bc_doesFolderAtURL:bookRootURL3 containFileAtURL:v12];

    if ([stringByStandardizingPath hasSuffix:@"AppleClasses/AppleWidget.js"])
    {
      v18 = THBundle();
      v19 = [v18 pathForResource:@"AppleWidgetController" ofType:@"js"];

      v17 = &dword_0 + 1;
      stringByStandardizingPath = v19;
    }

    if ([stringByStandardizingPath length])
    {
      [v8 setAssetIsInsideBookRootPath:v17];
      v20 = [v3 _mimeTypeForURL:v5];
      [v8 setMimeType:v20];

      if ([stringByStandardizingPath getFileSystemRepresentation:v24 maxLength:4094])
      {
        memset(&v23, 0, sizeof(v23));
        if (lstat(v24, &v23))
        {
          st_size = 0;
        }

        else
        {
          st_size = v23.st_size;
        }
      }

      else
      {
        st_size = 0;
      }

      [v8 setFileSize:st_size];
      [v8 setPath:stringByStandardizingPath];
    }
  }

  return v8;
}

- (PFDUrlHandler)initWithQueueMode:(unint64_t)mode requestScope:(id)scope
{
  scopeCopy = scope;
  v13.receiver = self;
  v13.super_class = PFDUrlHandler;
  v8 = [(PFDUrlHandler *)&v13 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("PFDUrlHandler.readQueue", v9);
    readQueue = v8->_readQueue;
    v8->_readQueue = v10;

    v8->_mode = mode;
    objc_storeStrong(&v8->_requestScope, scope);
  }

  return v8;
}

- (void)dealloc
{
  [(PFDUrlHandler *)self _cleanupDispatchIO];
  v3.receiver = self;
  v3.super_class = PFDUrlHandler;
  [(PFDUrlHandler *)&v3 dealloc];
}

+ (NSArray)supportedSchemes
{
  v4 = @"x-ibooks-th";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)loadRequest:(id)request
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1E06A4;
  v4[3] = &unk_45ADB0;
  selfCopy = self;
  requestCopy = request;
  v3 = requestCopy;
  [(PFDUrlHandler *)selfCopy _runBlockOnAppropriateQueue:v4];
}

- (void)stopLoading
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1E087C;
  v2[3] = &unk_45AD60;
  v2[4] = self;
  [(PFDUrlHandler *)self _runBlockOnAppropriateQueue:v2];
}

- (void)_runBlockOnAppropriateQueue:(id)queue
{
  queueCopy = queue;
  v5 = queueCopy;
  if (self->_mode == 1)
  {
    v6 = queueCopy;
    dispatch_async(self->_readQueue, queueCopy);
  }

  else
  {
    if (!queueCopy)
    {
      goto LABEL_6;
    }

    v6 = queueCopy;
    queueCopy = queueCopy[2](queueCopy);
  }

  v5 = v6;
LABEL_6:

  _objc_release_x1(queueCopy, v5);
}

- (void)_cleanupDispatchIO
{
  readDispatchIO = self->_readDispatchIO;
  if (readDispatchIO)
  {
    dispatch_io_close(readDispatchIO, 1uLL);
    v4 = self->_readDispatchIO;
    self->_readDispatchIO = 0;
  }
}

- (void)_maybeSendDidReceiveResponse:(id)response
{
  if ((*&self->_delegateMessageFlags & 1) == 0)
  {
    responseCopy = response;
    v5 = [NSURLResponse alloc];
    requestedURL = [responseCopy requestedURL];
    mimeType = [responseCopy mimeType];
    fileSize = [responseCopy fileSize];

    v9 = [v5 initWithURL:requestedURL MIMEType:mimeType expectedContentLength:fileSize textEncodingName:0];
    [(PFDUrlHandler *)self _sendDidReceiveResponse:v9];
  }
}

- (void)_sendErrorForErrorCode:(int64_t)code
{
  v4 = [NSError errorWithDomain:NSURLErrorDomain code:code userInfo:0];
  [(PFDUrlHandler *)self _sendDidFailWithError:v4];
}

- (void)_sendSingleDataResponse:(id)response mimeType:(id)type requestedURL:(id)l
{
  lCopy = l;
  typeCopy = type;
  responseCopy = response;
  v11 = [[NSURLResponse alloc] initWithURL:lCopy MIMEType:typeCopy expectedContentLength:objc_msgSend(responseCopy textEncodingName:{"length"), 0}];

  [(PFDUrlHandler *)self _sendDidReceiveResponse:v11];
  [(PFDUrlHandler *)self _sendDidReceiveData:responseCopy];

  [(PFDUrlHandler *)self _sendDidFinish];
}

- (void)_sendSmallFileForAsset:(id)asset
{
  assetCopy = asset;
  v5 = objc_autoreleasePoolPush();
  path = [assetCopy path];
  v7 = [NSURL fileURLWithPath:path];

  context = [assetCopy context];
  if (context)
  {
    context2 = [assetCopy context];
    v15 = 0;
    v10 = [context2 dataWithContentsOfURL:v7 error:&v15];
    v11 = v15;

    v12 = v11 == 0;
  }

  else
  {
    v10 = [NSData dataWithContentsOfURL:v7];
    v12 = 1;
  }

  if (v12 && v10)
  {
    mimeType = [assetCopy mimeType];
    requestedURL = [assetCopy requestedURL];
    [(PFDUrlHandler *)self _sendSingleDataResponse:v10 mimeType:mimeType requestedURL:requestedURL];
  }

  else
  {
    [(PFDUrlHandler *)self _sendErrorForErrorCode:-1008];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_sendLargeFileForAsset:(id)asset
{
  assetCopy = asset;
  [(PFDUrlHandler *)self _cleanupDispatchIO];
  context = [assetCopy context];
  path = [assetCopy path];
  v20 = 0;
  v7 = [context agSuxzs6g5UyvRU64xGP:path error:&v20];
  v8 = v20;

  if (v8)
  {
    [(PFDUrlHandler *)self _sendErrorForErrorCode:-1008];
  }

  else
  {
    v9 = +[ft9cupR7u6OrU4m1pyhB dataChunkSize];
    path2 = [assetCopy path];
    v11 = dispatch_io_create_with_path(0, [path2 UTF8String], 0, 0, self->_readQueue, &stru_45F3D0);
    readDispatchIO = self->_readDispatchIO;
    self->_readDispatchIO = v11;

    dispatch_io_set_high_water(self->_readDispatchIO, v9);
    dispatch_io_set_low_water(self->_readDispatchIO, v9);
    v13 = self->_readDispatchIO;
    fileSize = [assetCopy fileSize];
    readQueue = self->_readQueue;
    io_handler[0] = _NSConcreteStackBlock;
    io_handler[1] = 3221225472;
    io_handler[2] = sub_1E0ED4;
    io_handler[3] = &unk_45F420;
    io_handler[4] = self;
    v17 = assetCopy;
    v18 = v7;
    v19 = v9;
    dispatch_io_read(v13, 0, fileSize, readQueue, io_handler);
  }
}

- (void)_sendDidReceiveResponse:(id)response
{
  if ((*&self->_delegateMessageFlags & 1) == 0)
  {
    *&self->_delegateMessageFlags |= 1u;
    responseCopy = response;
    delegate = [(PFDUrlHandler *)self delegate];
    [delegate urlHandler:self didReceiveResponse:responseCopy];
  }
}

- (void)_sendDidReceiveData:(id)data
{
  if ((*&self->_delegateMessageFlags & 6) == 0)
  {
    dataCopy = data;
    delegate = [(PFDUrlHandler *)self delegate];
    [delegate urlHandler:self didReceiveData:dataCopy];
  }
}

- (void)_sendDidFinish
{
  if ((*&self->_delegateMessageFlags & 6) == 0)
  {
    *&self->_delegateMessageFlags |= 4u;
    delegate = [(PFDUrlHandler *)self delegate];
    [delegate urlHandlerDidFinish:self];
  }
}

- (void)_sendDidFailWithError:(id)error
{
  if ((*&self->_delegateMessageFlags & 6) == 0)
  {
    *&self->_delegateMessageFlags |= 2u;
    errorCopy = error;
    delegate = [(PFDUrlHandler *)self delegate];
    [delegate urlHandler:self didFailWithError:errorCopy];
  }
}

- (PFDUrlHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end