@interface CRLZipFileWriter
+ (void)zipDirectoryAtURL:(id)l customDirectoryFilename:(id)filename toURL:(id)rL queue:(id)queue progressHandler:(id)handler;
+ (void)zipDirectoryAtURL:(id)l toURL:(id)rL queue:(id)queue completion:(id)completion;
- (CRLZipFileWriter)initWithURL:(id)l options:(unint64_t)options error:(id *)error;
- (CRLZipFileWriter)initWithZipFileArchive:(id)archive options:(unint64_t)options error:(id *)error;
- (id)prepareWriteChannelWithCloseCompletionHandler:(id)handler;
- (void)copyEntriesFromZipFileWriter:(id)writer readingFromURL:(id)l options:(unint64_t)options completionHandler:(id)handler;
- (void)copyRemainingEntries:(id)entries fromArchive:(id)archive progress:(id)progress completionHandler:(id)handler;
@end

@implementation CRLZipFileWriter

- (CRLZipFileWriter)initWithURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  v21.receiver = self;
  v21.super_class = CRLZipFileWriter;
  v9 = [(CRLZipWriter *)&v21 initWithOptions:options];
  if (v9)
  {
    objc_initWeak(&location, v9);
    v10 = [CRLFileIOChannel alloc];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10052B438;
    v18 = &unk_10186CCE0;
    objc_copyWeak(&v19, &location);
    v11 = [(CRLFileIOChannel *)v10 initForRandomWritingURL:lCopy error:error cleanupHandler:&v15];
    writeChannel = v9->_writeChannel;
    v9->_writeChannel = v11;

    v13 = v9->_writeChannel;
    if (v13)
    {
      [(CRLRandomWriteChannel *)v13 setLowWater:-1, v15, v16, v17, v18];
    }

    else
    {

      v9 = 0;
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (CRLZipFileWriter)initWithZipFileArchive:(id)archive options:(unint64_t)options error:(id *)error
{
  archiveCopy = archive;
  v9 = [archiveCopy URL];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_10052B95C;
  v42 = sub_10052B96C;
  v43 = 0;
  v37.receiver = self;
  v37.super_class = CRLZipFileWriter;
  v10 = [(CRLZipWriter *)&v37 initWithOptions:options];
  if (!v10)
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_20;
    }

LABEL_19:
    *error = v39[5];
    goto LABEL_20;
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10052B974;
  v35[3] = &unk_10186CD08;
  v11 = v10;
  v36 = v11;
  [archiveCopy enumerateEntriesUsingBlock:v35];
  if ([archiveCopy endOfLastEntry] <= 0)
  {
    v12 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138DC48();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138DC70();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138DD04();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = +[CRLAssertionHandler packedBacktraceString];
      sub_101318C3C(v14, buf, v12, v13);
    }

    v15 = [NSString stringWithUTF8String:"[CRLZipFileWriter initWithZipFileArchive:options:error:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:67 isFatal:0 description:"Unexpected offset"];
  }

  -[CRLZipWriter setEntryInsertionOffset:](v11, "setEntryInsertionOffset:", [archiveCopy endOfLastEntry]);
  objc_initWeak(&location, v11);
  v17 = [CRLFileIOChannel alloc];
  v18 = (v39 + 5);
  obj = v39[5];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10052BA04;
  v31[3] = &unk_10186CCE0;
  objc_copyWeak(&v32, &location);
  v19 = [(CRLFileIOChannel *)v17 initForRandomReadingWritingURL:v9 error:&obj cleanupHandler:v31];
  objc_storeStrong(v18, obj);
  writeChannel = v11->_writeChannel;
  v11->_writeChannel = v19;

  v21 = v11->_writeChannel;
  if (v21)
  {
    [(CRLRandomWriteChannel *)v21 setLowWater:-1];
    v22 = dispatch_semaphore_create(0);
    v23 = v11->_writeChannel;
    endOfLastEntry = [archiveCopy endOfLastEntry];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10052BA84;
    v28[3] = &unk_101844750;
    v30 = &v38;
    v25 = v22;
    v29 = v25;
    [(CRLRandomWriteChannel *)v23 truncateToLength:endOfLastEntry completion:v28];
    dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (v39[5])
  {

    v11 = 0;
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);

  if (error)
  {
    goto LABEL_19;
  }

LABEL_20:
  v26 = v11;
  _Block_object_dispose(&v38, 8);

  return v26;
}

- (void)copyEntriesFromZipFileWriter:(id)writer readingFromURL:(id)l options:(unint64_t)options completionHandler:(id)handler
{
  writerCopy = writer;
  lCopy = l;
  handlerCopy = handler;
  if ([writerCopy isClosed])
  {
    v29 = 0;
    v13 = [[CRLZipFileArchive alloc] initWithWriter:writerCopy forReadingFromURL:lCopy options:options error:&v29];
    v14 = v29;
    v15 = v14;
    if (v13)
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10052BEBC;
      v22[3] = &unk_10186CDB0;
      v16 = [[NSMutableArray alloc] initWithCapacity:{-[CRLZipArchive entriesCount](v13, "entriesCount")}];
      v23 = v16;
      v24 = &v25;
      [(CRLZipArchive *)v13 enumerateEntriesUsingBlock:v22];
      [v16 sortUsingComparator:&stru_10186CDF0];
      v17 = [NSProgress progressWithTotalUnitCount:v26[3]];
      [(CRLZipFileWriter *)self copyRemainingEntries:v16 fromArchive:v13 progress:v17 completionHandler:handlerCopy];

      _Block_object_dispose(&v25, 8);
    }

    else if (handlerCopy)
    {
      if (v14)
      {
        handlerCopy[2](handlerCopy, v14);
      }

      else
      {
        v21 = [NSError crl_fileWriteUnknownErrorWithUserInfo:0];
        handlerCopy[2](handlerCopy, v21);
      }
    }

    goto LABEL_15;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10138DD2C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10138DD40();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10138DDD4();
  }

  v18 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10138DDFC(v18);
  }

  v19 = [NSString stringWithUTF8String:"[CRLZipFileWriter copyEntriesFromZipFileWriter:readingFromURL:options:completionHandler:]"];
  v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriter.m"];
  [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:110 isFatal:0 description:"Closed writer must be closed."];

  if (handlerCopy)
  {
    v15 = [NSError crl_fileWriteUnknownErrorWithUserInfo:0];
    handlerCopy[2](handlerCopy, v15);
LABEL_15:
  }
}

- (void)copyRemainingEntries:(id)entries fromArchive:(id)archive progress:(id)progress completionHandler:(id)handler
{
  entriesCopy = entries;
  archiveCopy = archive;
  progressCopy = progress;
  handlerCopy = handler;
  firstObject = [entriesCopy firstObject];
  if (firstObject)
  {
    [entriesCopy removeObjectAtIndex:0];
    v15 = [archiveCopy streamReadChannelForEntry:firstObject];
    if (v15)
    {
      name = [firstObject name];
      lastModificationDate = [firstObject lastModificationDate];
      v23 = [firstObject size];
      v22 = [firstObject CRC];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10052C310;
      v24[3] = &unk_10186CE58;
      v30 = handlerCopy;
      v25 = progressCopy;
      v26 = firstObject;
      selfCopy = self;
      v28 = entriesCopy;
      v29 = archiveCopy;
      [(CRLZipWriter *)self writeEntryWithName:name force32BitSize:0 lastModificationDate:lastModificationDate size:v23 CRC:v22 fromReadChannel:v15 completion:v24];

      v18 = v30;
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138DEA4();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138DEB8();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138DF4C();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138DF74(v19);
      }

      v20 = [NSString stringWithUTF8String:"[CRLZipFileWriter copyRemainingEntries:fromArchive:progress:completionHandler:]"];
      v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriter.m"];
      [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:154 isFatal:0 description:"invalid nil value for '%{public}s'", "channel"];

      v15 = 0;
      if (!handlerCopy)
      {
        goto LABEL_17;
      }

      v18 = [NSError crl_fileWriteUnknownErrorWithUserInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v18);
    }

LABEL_17:
    goto LABEL_18;
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

LABEL_18:
}

- (id)prepareWriteChannelWithCloseCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_writeChannelCompletionHandler)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138E020();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138E034();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138E0C8();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138DF74(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLZipFileWriter prepareWriteChannelWithCloseCompletionHandler:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:175 isFatal:0 description:"expected nil value for '%{public}s'", "_writeChannelCompletionHandler"];
  }

  v8 = [handlerCopy copy];
  writeChannelCompletionHandler = self->_writeChannelCompletionHandler;
  self->_writeChannelCompletionHandler = v8;

  writeChannel = self->_writeChannel;
  if (!writeChannel)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138E0F0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138E118();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138E1AC();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138DF74(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLZipFileWriter prepareWriteChannelWithCloseCompletionHandler:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:178 isFatal:0 description:"invalid nil value for '%{public}s'", "_writeChannel"];

    writeChannel = self->_writeChannel;
  }

  v14 = writeChannel;

  return writeChannel;
}

+ (void)zipDirectoryAtURL:(id)l toURL:(id)rL queue:(id)queue completion:(id)completion
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10052C848;
  v11[3] = &unk_10186CF00;
  completionCopy = completion;
  v10 = completionCopy;
  [self zipDirectoryAtURL:l customDirectoryFilename:0 toURL:rL queue:queue progressHandler:v11];
}

+ (void)zipDirectoryAtURL:(id)l customDirectoryFilename:(id)filename toURL:(id)rL queue:(id)queue progressHandler:(id)handler
{
  lCopy = l;
  filenameCopy = filename;
  rLCopy = rL;
  queue = queue;
  handlerCopy = handler;
  v73 = lCopy;
  if (!lCopy)
  {
    v13 = rLCopy;
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138E1D4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138E1E8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138E27C();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138E2A4(v14);
    }

    v15 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]");
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:197 isFatal:0 description:"invalid nil value for '%{public}s'", "directoryURL"];

    rLCopy = v13;
  }

  v72 = rLCopy;
  if (!rLCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138E34C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138E374();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138E408();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138E430(v17);
    }

    v18 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]");
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:198 isFatal:0 description:"invalid nil value for '%{public}s'", "URL"];
  }

  if (!queue)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138E4D8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138E500();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138E594();
    }

    v20 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138E5BC(v20);
    }

    v21 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]");
    v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:199 isFatal:0 description:"invalid nil value for '%{public}s'", "queue"];
  }

  if (!handlerCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138E664();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138E68C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138E720();
    }

    v23 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138E748(v23);
    }

    v24 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]");
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriter.m"];
    [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:200 isFatal:0 description:"invalid nil value for '%{public}s'", "progressHandler"];
  }

  v109 = 0;
  v78 = [[CRLZipFileWriter alloc] initWithURL:v72 error:&v109];
  v26 = v109;
  v71 = v26;
  if (!v78)
  {
    v49 = v26;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10052D82C;
    block[3] = &unk_101839D68;
    v108 = handlerCopy;
    v107 = v49;
    dispatch_async(queue, block);

    v50 = v108;
    goto LABEL_86;
  }

  path = [lCopy path];
  v28 = path;
  if (!filenameCopy)
  {
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

    v28 = stringByDeletingLastPathComponent;
  }

  stringByStandardizingPath = [v28 stringByStandardizingPath];
  precomposedStringWithCanonicalMapping = [stringByStandardizingPath precomposedStringWithCanonicalMapping];

  v76 = [precomposedStringWithCanonicalMapping length];
  v31 = +[NSFileManager defaultManager];
  v114[0] = NSURLIsDirectoryKey;
  v114[1] = NSURLFileSizeKey;
  v32 = [NSArray arrayWithObjects:v114 count:2];
  v33 = [v31 enumeratorAtURL:lCopy includingPropertiesForKeys:v32 options:0 errorHandler:0];

  v105[0] = 0;
  v105[1] = v105;
  v105[2] = 0x2020000000;
  v105[3] = 0;
  v80 = objc_alloc_init(NSMutableArray);
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  obj = v33;
  v34 = [obj countByEnumeratingWithState:&v101 objects:v113 count:16];
  if (!v34)
  {
    v81 = 0;
    goto LABEL_69;
  }

  v81 = 0;
  v35 = *v102;
  do
  {
    v36 = 0;
    do
    {
      if (*v102 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v37 = *(*(&v101 + 1) + 8 * v36);
      v100 = 0;
      v38 = [v37 getResourceValue:&v100 forKey:NSURLIsDirectoryKey error:0];
      v39 = v100;
      v40 = v39;
      if (v38)
      {
        if ([v39 BOOLValue])
        {
          goto LABEL_64;
        }

        v99 = 0;
        v41 = [v37 getResourceValue:&v99 forKey:NSURLFileSizeKey error:0];
        v42 = v99;
        v43 = v42;
        if (v41)
        {
          v81 += [v42 unsignedLongLongValue];
        }

        [v80 addObject:v37];
      }

      else
      {
        v44 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138E7F0();
        }

        v45 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          *buf = 67110146;
          *&buf[4] = v44;
          *v112 = 2082;
          *&v112[2] = "+[CRLZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]";
          *&v112[10] = 2082;
          *&v112[12] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriter.m";
          *&v112[20] = 1024;
          *&v112[22] = 237;
          *&v112[26] = 2112;
          *&v112[28] = v37;
          _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to obtain resource value for %@", buf, 0x2Cu);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138E818();
        }

        v46 = off_1019EDA68;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v48 = +[CRLAssertionHandler packedBacktraceString];
          *buf = 67109378;
          *&buf[4] = v44;
          *v112 = 2114;
          *&v112[2] = v48;
          _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v43 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLZipFileWriter zipDirectoryAtURL:customDirectoryFilename:toURL:queue:progressHandler:]");
        v47 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileWriter.m"];
        [CRLAssertionHandler handleFailureInFunction:v43 file:v47 lineNumber:237 isFatal:0 description:"Failed to obtain resource value for %@", v37];
      }

LABEL_64:
      v36 = v36 + 1;
    }

    while (v34 != v36);
    v34 = [obj countByEnumeratingWithState:&v101 objects:v113 count:16];
  }

  while (v34);
LABEL_69:

  *buf = 0;
  *v112 = buf;
  *&v112[8] = 0x3032000000;
  *&v112[16] = sub_10052B95C;
  *&v112[24] = sub_10052B96C;
  *&v112[32] = 0;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v75 = v80;
  v51 = [v75 countByEnumeratingWithState:&v95 objects:v110 count:16];
  if (v51)
  {
    v52 = *v96;
    while (2)
    {
      for (i = 0; i != v51; i = i + 1)
      {
        if (*v96 != v52)
        {
          objc_enumerationMutation(v75);
        }

        v54 = *(*(&v95 + 1) + 8 * i);
        path2 = [v54 path];
        stringByStandardizingPath2 = [path2 stringByStandardizingPath];
        precomposedStringWithCanonicalMapping2 = [stringByStandardizingPath2 precomposedStringWithCanonicalMapping];

        v58 = [precomposedStringWithCanonicalMapping2 substringFromIndex:v76 + 1];
        if (filenameCopy)
        {
          v59 = [filenameCopy stringByAppendingPathComponent:v58];

          v58 = v59;
        }

        v60 = [CRLFileIOChannel alloc];
        v61 = (*v112 + 40);
        v94 = *(*v112 + 40);
        v62 = [(CRLFileIOChannel *)v60 initForReadingURL:v54 error:&v94];
        objc_storeStrong(v61, v94);
        if (!v62)
        {

          goto LABEL_85;
        }

        v93 = 0;
        v63 = [v54 getResourceValue:&v93 forKey:NSURLFileSizeKey error:0];
        v64 = v93;
        v65 = v64;
        if ((v63 & 1) == 0)
        {

          v65 = 0;
        }

        v92 = 0;
        v66 = [v54 getResourceValue:&v92 forKey:NSURLContentModificationDateKey error:0];
        v67 = v92;
        v68 = v67;
        if ((v66 & 1) == 0)
        {

          v68 = 0;
        }

        unsignedLongLongValue = [v65 unsignedLongLongValue];
        v87[0] = _NSConcreteStackBlock;
        v87[1] = 3221225472;
        v87[2] = sub_10052D8F8;
        v87[3] = &unk_10186D068;
        v89 = v105;
        v88 = handlerCopy;
        v90 = buf;
        v91 = v81;
        [(CRLZipWriter *)v78 writeEntryWithName:v58 force32BitSize:0 lastModificationDate:v68 size:unsignedLongLongValue CRC:0 fromReadChannel:v62 writeHandler:v87];
      }

      v51 = [v75 countByEnumeratingWithState:&v95 objects:v110 count:16];
      if (v51)
      {
        continue;
      }

      break;
    }
  }

LABEL_85:

  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_10052D9E8;
  v83[3] = &unk_10186D090;
  v84 = handlerCopy;
  v85 = buf;
  v86 = v81;
  [(CRLZipWriter *)v78 closeWithQueue:queue completion:v83];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v105, 8);

  v50 = precomposedStringWithCanonicalMapping;
LABEL_86:
}

@end