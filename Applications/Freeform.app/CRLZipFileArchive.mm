@interface CRLZipFileArchive
+ (BOOL)isZipArchiveAtFD:(int)d;
+ (BOOL)isZipArchiveAtURL:(id)l error:(id *)error;
+ (BOOL)isZipSignatureAllZerosAtURL:(id)l;
+ (id)zipArchiveFromURL:(id)l options:(unint64_t)options error:(id *)error;
+ (void)readArchiveFromURL:(id)l options:(unint64_t)options queue:(id)queue completion:(id)completion;
- (BOOL)copyToTemporaryLocationRelativeToURL:(id)l error:(id *)error;
- (BOOL)isValid;
- (BOOL)openWithURL:(id)l error:(id *)error;
- (BOOL)reopenWithTemporaryURL:(id)l error:(id *)error;
- (CRLZipFileArchive)initWithWriter:(id)writer forReadingFromURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)debugDescription;
- (id)initForReadingFromURL:(id)l options:(unint64_t)options error:(id *)error;
- (id)newArchiveReadChannel;
- (unint64_t)archiveLength;
- (void)createTemporaryDirectoryRelativeToURL:(id)l;
- (void)dealloc;
- (void)removeTemporaryDirectory;
@end

@implementation CRLZipFileArchive

+ (BOOL)isZipArchiveAtURL:(id)l error:(id *)error
{
  lCopy = l;
  path = [lCopy path];
  if (![path length])
  {
    v11 = 0;
    goto LABEL_7;
  }

  path2 = [lCopy path];
  v9 = open([path2 fileSystemRepresentation], 0, 0);

  if ((v9 & 0x80000000) != 0)
  {
    v11 = [NSError crl_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
LABEL_7:
    v10 = 0;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v10 = [self isZipArchiveAtFD:v9];
  close(v9);
  v11 = 0;
  if (!error)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v10 & 1) == 0)
  {
    if (v11)
    {
      v12 = v11;
      *error = v11;
    }

    else
    {
      v13 = [NSError crl_fileReadUnknownErrorWithUserInfo:0];
      *error = v13;
    }
  }

LABEL_12:

  return v10;
}

+ (BOOL)isZipSignatureAllZerosAtURL:(id)l
{
  path = [l path];
  v4 = open([path fileSystemRepresentation], 0, 0);

  if (v4 < 0)
  {
    return 0;
  }

  v5 = read(v4, &v12, 4uLL);
  v6.i32[0] = v12;
  v7 = vmovl_u8(v6).u64[0];
  v8 = vuzp1_s8(v7, v7).u32[0];
  v10 = v5 == 4 && v8 == 0;
  close(v4);
  return v10;
}

+ (BOOL)isZipArchiveAtFD:(int)d
{
  v4 = lseek(d, 0, 1);
  v5 = v4;
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (lseek(d, 0, 0) == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if (v4 != -1)
  {
LABEL_5:
    if (read(d, &v9, 4uLL) == 4)
    {
      v7 = v9 == 67324752 || v9 == 101010256;
      return lseek(d, v5, 0) != -1 && v7;
    }

LABEL_12:
    v7 = 0;
    return lseek(d, v5, 0) != -1 && v7;
  }

  return 0;
}

+ (void)readArchiveFromURL:(id)l options:(unint64_t)options queue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  lCopy = l;
  v18 = 0;
  v13 = [[self alloc] initForReadingFromURL:lCopy options:options error:&v18];

  v14 = v18;
  if (v13)
  {
    [v13 readArchiveWithQueue:queueCopy completion:completionCopy];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C616C;
    block[3] = &unk_101839D68;
    v17 = completionCopy;
    v16 = v14;
    dispatch_async(queueCopy, block);

    queueCopy = v17;
  }
}

+ (id)zipArchiveFromURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1000C645C;
  v32 = sub_1000C646C;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1000C645C;
  v26 = sub_1000C646C;
  v27 = 0;
  obj = 0;
  v9 = [self isZipArchiveAtURL:lCopy error:&obj];
  objc_storeStrong(&v27, obj);
  if (v9)
  {
    v10 = dispatch_semaphore_create(0);
    v11 = dispatch_get_global_queue(0, 0);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000C6474;
    v17[3] = &unk_101839D90;
    v19 = &v28;
    v20 = &v22;
    v12 = v10;
    v18 = v12;
    [self readArchiveFromURL:lCopy options:options queue:v11 completion:v17];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (error && !v29[5])
  {
    v13 = v23[5];
    if (v13)
    {
      *error = v13;
    }

    else
    {
      v14 = [NSError crl_fileReadUnknownErrorWithUserInfo:0];
      *error = v14;
    }
  }

  v15 = v29[5];
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);

  return v15;
}

- (id)initForReadingFromURL:(id)l options:(unint64_t)options error:(id *)error
{
  lCopy = l;
  if (([lCopy isFileURL] & 1) == 0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130DEF4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DF08();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130DF90();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLZipFileArchive initForReadingFromURL:options:error:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileArchive.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:170 isFatal:0 description:"Need a file URL"];
  }

  v17.receiver = self;
  v17.super_class = CRLZipFileArchive;
  v12 = [(CRLZipArchive *)&v17 initWithOptions:options];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("CRLZipFileArchive.Access", v13);
    accessQueue = v12->_accessQueue;
    v12->_accessQueue = v14;

    if (![(CRLZipFileArchive *)v12 openWithURL:lCopy error:error])
    {

      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)openWithURL:(id)l error:(id *)error
{
  lCopy = l;
  if (self->_fdWrapper)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130DFB8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DFCC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130E054();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLZipFileArchive openWithURL:error:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileArchive.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:188 isFatal:0 description:"Shouldn't open the archive if it's already open."];
  }

  v10 = [lCopy copy];
  URL = self->_URL;
  self->_URL = v10;

  [lCopy removeCachedResourceValueForKey:NSURLFileSizeKey];
  v27 = 0;
  v28 = 0;
  v12 = [lCopy getResourceValue:&v28 forKey:NSURLFileSizeKey error:&v27];
  v13 = v28;
  v14 = v27;
  if (v12)
  {
    self->_archiveLength = [v13 unsignedLongLongValue];
    path = [lCopy path];
    v16 = open([path fileSystemRepresentation], 0, 0);

    if ((v16 & 0x80000000) != 0)
    {
      v22 = [NSError crl_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
    }

    else
    {
      if (([(CRLZipArchive *)self options]& 0x10) != 0 && fcntl(v16, 48, 1) == -1)
      {
        if (qword_101AD5A08 != -1)
        {
          sub_10130E194();
        }

        v17 = off_1019EDA60;
        if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
        {
          sub_10130E1BC(v17);
        }
      }

      v18 = [[CRLZipFileDescriptorWrapper alloc] initWithFileDescriptor:v16];
      fdWrapper = self->_fdWrapper;
      self->_fdWrapper = v18;

      if (self->_fdWrapper)
      {
        if ([objc_opt_class() isZipArchiveAtFD:v16])
        {
          v20 = 1;
          if (!error)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        }

        v23 = self->_fdWrapper;
        self->_fdWrapper = 0;

        v22 = [NSError crl_fileReadCorruptedFileErrorWithUserInfo:0];
      }

      else
      {
        v22 = [NSError crl_fileReadUnknownErrorWithUserInfo:0];
      }
    }

    v24 = v22;

    v20 = 0;
    v14 = v24;
    if (!error)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (qword_101AD5A08 != -1)
  {
    sub_10130E07C();
  }

  v21 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
  {
    sub_10130E0A4(lCopy, v21, v14);
  }

  v20 = 0;
  if (error)
  {
LABEL_33:
    if (v14)
    {
      v25 = v14;
      *error = v14;
    }
  }

LABEL_35:

  return v20;
}

- (CRLZipFileArchive)initWithWriter:(id)writer forReadingFromURL:(id)l options:(unint64_t)options error:(id *)error
{
  writerCopy = writer;
  lCopy = l;
  v12 = [(CRLZipFileArchive *)self initForReadingFromURL:lCopy options:options error:error];
  if (v12)
  {
    v13 = v12;
    archiveLength = v12->_archiveLength;
    if (archiveLength == [writerCopy archiveLength])
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000C6F2C;
      v26[3] = &unk_101839E78;
      v15 = v13;
      v27 = v15;
      [writerCopy enumerateEntriesUsingBlock:v26];
      v13 = v27;
    }

    else
    {
      v16 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10130E24C();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        log = v17;
        path = [lCopy path];
        v24 = v13->_archiveLength;
        *buf = 67110658;
        v29 = v16;
        v30 = 2082;
        v31 = "[CRLZipFileArchive initWithWriter:forReadingFromURL:options:error:]";
        v32 = 2082;
        v33 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileArchive.m";
        v34 = 1024;
        v35 = 250;
        v36 = 2112;
        v37 = path;
        v38 = 2048;
        v39 = v24;
        v40 = 2048;
        archiveLength = [writerCopy archiveLength];
        _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Length of archive at %@ doesn't match archive length of writer. %llu != %llu", buf, 0x40u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10130E260();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v18);
      }

      v19 = [NSString stringWithUTF8String:"[CRLZipFileArchive initWithWriter:forReadingFromURL:options:error:]"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileArchive.m"];
      path2 = [lCopy path];
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v19, v20, 250, 0, "Length of archive at %@ doesn't match archive length of writer. %llu != %llu", path2, v13->_archiveLength, [writerCopy archiveLength]);

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  self->_archiveLength = 0;
  fdWrapper = self->_fdWrapper;
  self->_fdWrapper = 0;

  [(CRLZipFileArchive *)self removeTemporaryDirectory];
  v4.receiver = self;
  v4.super_class = CRLZipFileArchive;
  [(CRLZipFileArchive *)&v4 dealloc];
}

- (void)createTemporaryDirectoryRelativeToURL:(id)l
{
  lCopy = l;
  if (!self->_temporaryDirectoryURL)
  {
    v11 = lCopy;
    if (!lCopy || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v5 = objc_claimAutoreleasedReturnValue(), [v5 URLForDirectory:99 inDomain:1 appropriateForURL:v11 create:1 error:0], v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_temporaryDirectoryURL, self->_temporaryDirectoryURL = v6, v7, v5, lCopy = v11, !self->_temporaryDirectoryURL))
    {
      v8 = [[CRLTemporaryDirectory alloc] initWithSignature:@"ZipFile" error:0];
      [(CRLTemporaryDirectory *)v8 leakTemporaryDirectory];
      v9 = [(CRLTemporaryDirectory *)v8 URL];
      temporaryDirectoryURL = self->_temporaryDirectoryURL;
      self->_temporaryDirectoryURL = v9;

      lCopy = v11;
    }
  }
}

- (void)removeTemporaryDirectory
{
  if (self->_temporaryDirectoryURL)
  {
    v3 = +[NSFileManager defaultManager];
    temporaryDirectoryURL = self->_temporaryDirectoryURL;
    v9 = 0;
    v5 = [v3 removeItemAtURL:temporaryDirectoryURL error:&v9];
    v6 = v9;

    if ((v5 & 1) == 0)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_10130E288();
      }

      v7 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_10130E2B0(v7, v6);
      }
    }

    v8 = self->_temporaryDirectoryURL;
    self->_temporaryDirectoryURL = 0;
  }
}

- (BOOL)reopenWithTemporaryURL:(id)l error:(id *)error
{
  archiveLength = self->_archiveLength;
  fdWrapper = self->_fdWrapper;
  v9 = fdWrapper;
  self->_archiveLength = 0;
  v10 = self->_fdWrapper;
  self->_fdWrapper = 0;
  lCopy = l;

  v12 = [(CRLZipFileArchive *)self openWithURL:lCopy error:error];
  if (!v12)
  {
    self->_archiveLength = archiveLength;
    objc_storeStrong(&self->_fdWrapper, fdWrapper);
  }

  return v12;
}

- (BOOL)copyToTemporaryLocationRelativeToURL:(id)l error:(id *)error
{
  lCopy = l;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000C645C;
  v25 = sub_1000C646C;
  v26 = 0;
  accessQueue = self->_accessQueue;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000C7494;
  v16 = &unk_101839FD0;
  selfCopy = self;
  v8 = lCopy;
  v18 = v8;
  v19 = &v21;
  v20 = &v27;
  dispatch_sync(accessQueue, &v13);
  if (error && (v28[3] & 1) == 0)
  {
    v9 = v22[5];
    if (v9)
    {
      *error = v9;
    }

    else
    {
      selfCopy = [NSError crl_fileReadUnknownErrorWithUserInfo:0, v13, v14, v15, v16, selfCopy];
      *error = selfCopy;
    }
  }

  v11 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v11;
}

- (unint64_t)archiveLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C7D98;
  v5[3] = &unk_101839FF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)newArchiveReadChannel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000C645C;
  v10 = sub_1000C646C;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C7E9C;
  v5[3] = &unk_10183A0A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isValid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C8248;
  v5[3] = &unk_10183A0A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)debugDescription
{
  v3 = [CRLDescription descriptionWithObject:self class:objc_opt_class()];
  v4 = [NSString stringWithFormat:@"%qu", self->_archiveLength];
  [v3 addField:@"archiveLength" value:v4];

  v8.receiver = self;
  v8.super_class = CRLZipFileArchive;
  v5 = [(CRLZipArchive *)&v8 debugDescription];
  [v3 addFieldValue:v5];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

@end