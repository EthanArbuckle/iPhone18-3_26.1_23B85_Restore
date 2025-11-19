@interface PFDUrlHandler
+ (NSArray)supportedSchemes;
+ (id)_assetInfoForHost:(id)a3;
+ (id)_assetInfoForURL:(id)a3;
+ (id)_mimeTypeForURL:(id)a3;
+ (unint64_t)registerHost:(id)a3 bookRootURL:(id)a4 withDRMContext:(id)a5;
+ (unint64_t)unregisterHost:(id)a3;
+ (void)_accessHostMap:(id)a3;
- (PFDUrlHandler)initWithQueueMode:(unint64_t)a3 requestScope:(id)a4;
- (PFDUrlHandlerDelegate)delegate;
- (void)_cleanupDispatchIO;
- (void)_maybeSendDidReceiveResponse:(id)a3;
- (void)_runBlockOnAppropriateQueue:(id)a3;
- (void)_sendDidFailWithError:(id)a3;
- (void)_sendDidFinish;
- (void)_sendDidReceiveData:(id)a3;
- (void)_sendDidReceiveResponse:(id)a3;
- (void)_sendErrorForErrorCode:(int64_t)a3;
- (void)_sendLargeFileForAsset:(id)a3;
- (void)_sendSingleDataResponse:(id)a3 mimeType:(id)a4 requestedURL:(id)a5;
- (void)_sendSmallFileForAsset:(id)a3;
- (void)dealloc;
- (void)loadRequest:(id)a3;
- (void)stopLoading;
@end

@implementation PFDUrlHandler

+ (void)_accessHostMap:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&unk_567930);
  if (!qword_567938)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = qword_567938;
    qword_567938 = v3;
  }

  v5[2]();
  os_unfair_lock_unlock(&unk_567930);
}

+ (unint64_t)registerHost:(id)a3 bookRootURL:(id)a4 withDRMContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1DFDF8;
  v16[3] = &unk_45F340;
  v11 = v8;
  v17 = v11;
  v12 = v10;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v20 = &v21;
  [a1 _accessHostMap:v16];
  v14 = v22[3];

  _Block_object_dispose(&v21, 8);
  return v14;
}

+ (unint64_t)unregisterHost:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1DFF68;
  v7[3] = &unk_45F368;
  v4 = a3;
  v8 = v4;
  v9 = &v10;
  [a1 _accessHostMap:v7];
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

+ (id)_assetInfoForHost:(id)a3
{
  v4 = a3;
  v5 = v4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1E0100;
  v16 = sub_1E0110;
  v17 = 0;
  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1E0118;
    v9[3] = &unk_45F390;
    v11 = &v12;
    v10 = v4;
    [a1 _accessHostMap:v9];

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

+ (id)_mimeTypeForURL:(id)a3
{
  v3 = [a3 pathExtension];
  v4 = [UTType typeWithFilenameExtension:v3];
  v5 = [v4 preferredMIMEType];

  return v5;
}

+ (id)_assetInfoForURL:(id)a3
{
  v3 = __chkstk_darwin(a1, a2, a3);
  v5 = v4;
  v6 = objc_opt_class();
  v7 = [v5 host];
  v8 = [v6 _assetInfoForHost:v7];

  [v8 setRequestedURL:v5];
  v9 = [v8 bookRootURL];

  if (v9)
  {
    v10 = [v8 bookRootURL];
    v11 = [v5 path];
    v12 = [v10 URLByAppendingPathComponent:v11];

    v13 = [v12 path];
    v14 = [v13 stringByStandardizingPath];

    v15 = +[NSFileManager defaultManager];
    v16 = [v8 bookRootURL];
    v17 = [v15 bc_doesFolderAtURL:v16 containFileAtURL:v12];

    if ([v14 hasSuffix:@"AppleClasses/AppleWidget.js"])
    {
      v18 = THBundle();
      v19 = [v18 pathForResource:@"AppleWidgetController" ofType:@"js"];

      v17 = &dword_0 + 1;
      v14 = v19;
    }

    if ([v14 length])
    {
      [v8 setAssetIsInsideBookRootPath:v17];
      v20 = [v3 _mimeTypeForURL:v5];
      [v8 setMimeType:v20];

      if ([v14 getFileSystemRepresentation:v24 maxLength:4094])
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
      [v8 setPath:v14];
    }
  }

  return v8;
}

- (PFDUrlHandler)initWithQueueMode:(unint64_t)a3 requestScope:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PFDUrlHandler;
  v8 = [(PFDUrlHandler *)&v13 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("PFDUrlHandler.readQueue", v9);
    readQueue = v8->_readQueue;
    v8->_readQueue = v10;

    v8->_mode = a3;
    objc_storeStrong(&v8->_requestScope, a4);
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

- (void)loadRequest:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1E06A4;
  v4[3] = &unk_45ADB0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(PFDUrlHandler *)v5 _runBlockOnAppropriateQueue:v4];
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

- (void)_runBlockOnAppropriateQueue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_mode == 1)
  {
    v6 = v4;
    dispatch_async(self->_readQueue, v4);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = v4;
    v4 = v4[2](v4);
  }

  v5 = v6;
LABEL_6:

  _objc_release_x1(v4, v5);
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

- (void)_maybeSendDidReceiveResponse:(id)a3
{
  if ((*&self->_delegateMessageFlags & 1) == 0)
  {
    v4 = a3;
    v5 = [NSURLResponse alloc];
    v6 = [v4 requestedURL];
    v7 = [v4 mimeType];
    v8 = [v4 fileSize];

    v9 = [v5 initWithURL:v6 MIMEType:v7 expectedContentLength:v8 textEncodingName:0];
    [(PFDUrlHandler *)self _sendDidReceiveResponse:v9];
  }
}

- (void)_sendErrorForErrorCode:(int64_t)a3
{
  v4 = [NSError errorWithDomain:NSURLErrorDomain code:a3 userInfo:0];
  [(PFDUrlHandler *)self _sendDidFailWithError:v4];
}

- (void)_sendSingleDataResponse:(id)a3 mimeType:(id)a4 requestedURL:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[NSURLResponse alloc] initWithURL:v8 MIMEType:v9 expectedContentLength:objc_msgSend(v10 textEncodingName:{"length"), 0}];

  [(PFDUrlHandler *)self _sendDidReceiveResponse:v11];
  [(PFDUrlHandler *)self _sendDidReceiveData:v10];

  [(PFDUrlHandler *)self _sendDidFinish];
}

- (void)_sendSmallFileForAsset:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 path];
  v7 = [NSURL fileURLWithPath:v6];

  v8 = [v4 context];
  if (v8)
  {
    v9 = [v4 context];
    v15 = 0;
    v10 = [v9 dataWithContentsOfURL:v7 error:&v15];
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
    v13 = [v4 mimeType];
    v14 = [v4 requestedURL];
    [(PFDUrlHandler *)self _sendSingleDataResponse:v10 mimeType:v13 requestedURL:v14];
  }

  else
  {
    [(PFDUrlHandler *)self _sendErrorForErrorCode:-1008];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_sendLargeFileForAsset:(id)a3
{
  v4 = a3;
  [(PFDUrlHandler *)self _cleanupDispatchIO];
  v5 = [v4 context];
  v6 = [v4 path];
  v20 = 0;
  v7 = [v5 agSuxzs6g5UyvRU64xGP:v6 error:&v20];
  v8 = v20;

  if (v8)
  {
    [(PFDUrlHandler *)self _sendErrorForErrorCode:-1008];
  }

  else
  {
    v9 = +[ft9cupR7u6OrU4m1pyhB dataChunkSize];
    v10 = [v4 path];
    v11 = dispatch_io_create_with_path(0, [v10 UTF8String], 0, 0, self->_readQueue, &stru_45F3D0);
    readDispatchIO = self->_readDispatchIO;
    self->_readDispatchIO = v11;

    dispatch_io_set_high_water(self->_readDispatchIO, v9);
    dispatch_io_set_low_water(self->_readDispatchIO, v9);
    v13 = self->_readDispatchIO;
    v14 = [v4 fileSize];
    readQueue = self->_readQueue;
    io_handler[0] = _NSConcreteStackBlock;
    io_handler[1] = 3221225472;
    io_handler[2] = sub_1E0ED4;
    io_handler[3] = &unk_45F420;
    io_handler[4] = self;
    v17 = v4;
    v18 = v7;
    v19 = v9;
    dispatch_io_read(v13, 0, v14, readQueue, io_handler);
  }
}

- (void)_sendDidReceiveResponse:(id)a3
{
  if ((*&self->_delegateMessageFlags & 1) == 0)
  {
    *&self->_delegateMessageFlags |= 1u;
    v4 = a3;
    v5 = [(PFDUrlHandler *)self delegate];
    [v5 urlHandler:self didReceiveResponse:v4];
  }
}

- (void)_sendDidReceiveData:(id)a3
{
  if ((*&self->_delegateMessageFlags & 6) == 0)
  {
    v5 = a3;
    v6 = [(PFDUrlHandler *)self delegate];
    [v6 urlHandler:self didReceiveData:v5];
  }
}

- (void)_sendDidFinish
{
  if ((*&self->_delegateMessageFlags & 6) == 0)
  {
    *&self->_delegateMessageFlags |= 4u;
    v4 = [(PFDUrlHandler *)self delegate];
    [v4 urlHandlerDidFinish:self];
  }
}

- (void)_sendDidFailWithError:(id)a3
{
  if ((*&self->_delegateMessageFlags & 6) == 0)
  {
    *&self->_delegateMessageFlags |= 2u;
    v5 = a3;
    v6 = [(PFDUrlHandler *)self delegate];
    [v6 urlHandler:self didFailWithError:v5];
  }
}

- (PFDUrlHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end