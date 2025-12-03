@interface AEPdfCache
+ (id)sharedInstance;
- (AEPdfCache)init;
- (BOOL)hasCachedObjectForURL:(id)l;
- (id)canonicalPathFromURL:(id)l;
- (id)copyCacheObjectForBook:(id)book;
- (id)copyCacheObjectForPdfPath:(id)path;
- (id)copyCacheObjectForURL:(id)l;
- (void)clearNativeObjectCache;
- (void)dealloc;
- (void)removeCacheObjectForURL:(id)l;
@end

@implementation AEPdfCache

+ (id)sharedInstance
{
  if (qword_22D078 != -1)
  {
    sub_1383F4();
  }

  v3 = qword_22D080;

  return v3;
}

- (AEPdfCache)init
{
  v13.receiver = self;
  v13.super_class = AEPdfCache;
  v2 = [(AEPdfCache *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    urlToDocumentCache = v2->_urlToDocumentCache;
    v2->_urlToDocumentCache = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    urlToStringCache = v2->_urlToStringCache;
    v2->_urlToStringCache = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_get_global_queue(0, 0);
    v9 = dispatch_queue_create_with_target_V2("com.apple.iBooks.pdfCacheQueue", v7, v8);
    cacheQueue = v2->_cacheQueue;
    v2->_cacheQueue = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"didReceiveMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AEPdfCache;
  [(AEPdfCache *)&v4 dealloc];
}

- (void)clearNativeObjectCache
{
  cacheQueue = [(AEPdfCache *)self cacheQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9B380;
  block[3] = &unk_1E2BD0;
  block[4] = self;
  dispatch_sync(cacheQueue, block);
}

- (id)copyCacheObjectForBook:(id)book
{
  bookCopy = book;
  v5 = [bookCopy url];
  v6 = [(AEPdfCache *)self copyCacheObjectForURL:v5];

  password = [bookCopy password];
  if (![password length])
  {
LABEL_7:

    goto LABEL_8;
  }

  isPasswordRequired = [bookCopy isPasswordRequired];
  bOOLValue = [isPasswordRequired BOOLValue];

  if (bOOLValue)
  {
    v10 = [bookCopy url];
    password = [v10 path];

    document = [v6 document];
    if (![document isLocked] || (objc_msgSend(bookCopy, "password"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(document, "unlockWithPassword:", v12), v12, v13))
    {
      cacheQueue = [(AEPdfCache *)self cacheQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_9B560;
      block[3] = &unk_1E4240;
      block[4] = self;
      v17 = password;
      v18 = bookCopy;
      dispatch_sync(cacheQueue, block);
    }

    goto LABEL_7;
  }

LABEL_8:

  return v6;
}

- (id)copyCacheObjectForPdfPath:(id)path
{
  pathCopy = path;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_9B958;
  v34 = sub_9B968;
  v35 = 0;
  if ([pathCopy length])
  {
    cacheQueue = [(AEPdfCache *)self cacheQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_9B970;
    block[3] = &unk_1E4E80;
    v29 = &v30;
    block[4] = self;
    v6 = pathCopy;
    v28 = v6;
    dispatch_sync(cacheQueue, block);

    if (!v31[5])
    {
      [(AEPdfCache *)self clearNativeObjectCache];
      v7 = [[NSURL alloc] initFileURLWithPath:v6 isDirectory:0];
      v8 = [[PDFDocument alloc] initWithURL:v7];
      if (v8)
      {
        v9 = [[AEPdfCacheObject alloc] initWithPdfDocument:v8];
        v10 = v31[5];
        v31[5] = v9;

        if (v31[5])
        {
          cacheQueue2 = [(AEPdfCache *)self cacheQueue];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_9B9DC;
          v24[3] = &unk_1E4F88;
          v24[4] = self;
          v26 = &v30;
          v25 = v6;
          dispatch_sync(cacheQueue2, v24);
        }

        if ([v8 isLocked])
        {
          v18 = 0;
          v19 = &v18;
          v20 = 0x3032000000;
          v21 = sub_9B958;
          v22 = sub_9B968;
          v23 = 0;
          cacheQueue3 = [(AEPdfCache *)self cacheQueue];
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_9BA38;
          v15[3] = &unk_1E4E80;
          v17 = &v18;
          v15[4] = self;
          v16 = v6;
          dispatch_sync(cacheQueue3, v15);

          if (v19[5])
          {
            [v8 unlockWithPassword:?];
          }

          _Block_object_dispose(&v18, 8);
        }
      }
    }
  }

  v13 = v31[5];
  _Block_object_dispose(&v30, 8);

  return v13;
}

- (id)canonicalPathFromURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    path = [lCopy path];

    stringByStandardizingPath = [path stringByStandardizingPath];
  }

  else
  {
    path = [lCopy absoluteURL];

    v4Path = [path path];
    stringByStandardizingPath = [v4Path stringByStandardizingPath];
  }

  return stringByStandardizingPath;
}

- (id)copyCacheObjectForURL:(id)l
{
  lCopy = l;
  v5 = [(AEPdfCache *)self canonicalPathFromURL:lCopy];
  path = [lCopy path];

  pathExtension = [path pathExtension];

  if ([pathExtension caseInsensitiveCompare:@"pdf"])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(AEPdfCache *)self copyCacheObjectForPdfPath:v5];
  }

  return v8;
}

- (BOOL)hasCachedObjectForURL:(id)l
{
  lCopy = l;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(AEPdfCache *)self canonicalPathFromURL:lCopy];
  if ([v5 length])
  {
    cacheQueue = [(AEPdfCache *)self cacheQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_9BD14;
    block[3] = &unk_1E4E80;
    v11 = &v12;
    block[4] = self;
    v10 = v5;
    dispatch_sync(cacheQueue, block);
  }

  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)removeCacheObjectForURL:(id)l
{
  v4 = [(AEPdfCache *)self canonicalPathFromURL:l];
  if ([v4 length])
  {
    cacheQueue = [(AEPdfCache *)self cacheQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_9BE44;
    v6[3] = &unk_1E3F50;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(cacheQueue, v6);
  }
}

@end