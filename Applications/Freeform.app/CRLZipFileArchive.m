@interface CRLZipFileArchive
+ (BOOL)isZipArchiveAtFD:(int)a3;
+ (BOOL)isZipArchiveAtURL:(id)a3 error:(id *)a4;
+ (BOOL)isZipSignatureAllZerosAtURL:(id)a3;
+ (id)zipArchiveFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
+ (void)readArchiveFromURL:(id)a3 options:(unint64_t)a4 queue:(id)a5 completion:(id)a6;
- (BOOL)copyToTemporaryLocationRelativeToURL:(id)a3 error:(id *)a4;
- (BOOL)isValid;
- (BOOL)openWithURL:(id)a3 error:(id *)a4;
- (BOOL)reopenWithTemporaryURL:(id)a3 error:(id *)a4;
- (CRLZipFileArchive)initWithWriter:(id)a3 forReadingFromURL:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (id)debugDescription;
- (id)initForReadingFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)newArchiveReadChannel;
- (unint64_t)archiveLength;
- (void)createTemporaryDirectoryRelativeToURL:(id)a3;
- (void)dealloc;
- (void)removeTemporaryDirectory;
@end

@implementation CRLZipFileArchive

+ (BOOL)isZipArchiveAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 path];
  if (![v7 length])
  {
    v11 = 0;
    goto LABEL_7;
  }

  v8 = [v6 path];
  v9 = open([v8 fileSystemRepresentation], 0, 0);

  if ((v9 & 0x80000000) != 0)
  {
    v11 = [NSError crl_fileReadPOSIXErrorWithNumber:*__error() userInfo:0];
LABEL_7:
    v10 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v10 = [a1 isZipArchiveAtFD:v9];
  close(v9);
  v11 = 0;
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v10 & 1) == 0)
  {
    if (v11)
    {
      v12 = v11;
      *a4 = v11;
    }

    else
    {
      v13 = [NSError crl_fileReadUnknownErrorWithUserInfo:0];
      *a4 = v13;
    }
  }

LABEL_12:

  return v10;
}

+ (BOOL)isZipSignatureAllZerosAtURL:(id)a3
{
  v3 = [a3 path];
  v4 = open([v3 fileSystemRepresentation], 0, 0);

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

+ (BOOL)isZipArchiveAtFD:(int)a3
{
  v4 = lseek(a3, 0, 1);
  v5 = v4;
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (lseek(a3, 0, 0) == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  if (v4 != -1)
  {
LABEL_5:
    if (read(a3, &v9, 4uLL) == 4)
    {
      v7 = v9 == 67324752 || v9 == 101010256;
      return lseek(a3, v5, 0) != -1 && v7;
    }

LABEL_12:
    v7 = 0;
    return lseek(a3, v5, 0) != -1 && v7;
  }

  return 0;
}

+ (void)readArchiveFromURL:(id)a3 options:(unint64_t)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v18 = 0;
  v13 = [[a1 alloc] initForReadingFromURL:v12 options:a4 error:&v18];

  v14 = v18;
  if (v13)
  {
    [v13 readArchiveWithQueue:v11 completion:v10];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C616C;
    block[3] = &unk_101839D68;
    v17 = v10;
    v16 = v14;
    dispatch_async(v11, block);

    v11 = v17;
  }
}

+ (id)zipArchiveFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
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
  v9 = [a1 isZipArchiveAtURL:v8 error:&obj];
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
    [a1 readArchiveFromURL:v8 options:a4 queue:v11 completion:v17];
    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (a5 && !v29[5])
  {
    v13 = v23[5];
    if (v13)
    {
      *a5 = v13;
    }

    else
    {
      v14 = [NSError crl_fileReadUnknownErrorWithUserInfo:0];
      *a5 = v14;
    }
  }

  v15 = v29[5];
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);

  return v15;
}

- (id)initForReadingFromURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if (([v8 isFileURL] & 1) == 0)
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
  v12 = [(CRLZipArchive *)&v17 initWithOptions:a4];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("CRLZipFileArchive.Access", v13);
    accessQueue = v12->_accessQueue;
    v12->_accessQueue = v14;

    if (![(CRLZipFileArchive *)v12 openWithURL:v8 error:a5])
    {

      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)openWithURL:(id)a3 error:(id *)a4
{
  v6 = a3;
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

  v10 = [v6 copy];
  URL = self->_URL;
  self->_URL = v10;

  [v6 removeCachedResourceValueForKey:NSURLFileSizeKey];
  v27 = 0;
  v28 = 0;
  v12 = [v6 getResourceValue:&v28 forKey:NSURLFileSizeKey error:&v27];
  v13 = v28;
  v14 = v27;
  if (v12)
  {
    self->_archiveLength = [v13 unsignedLongLongValue];
    v15 = [v6 path];
    v16 = open([v15 fileSystemRepresentation], 0, 0);

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
          if (!a4)
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
    if (!a4)
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
    sub_10130E0A4(v6, v21, v14);
  }

  v20 = 0;
  if (a4)
  {
LABEL_33:
    if (v14)
    {
      v25 = v14;
      *a4 = v14;
    }
  }

LABEL_35:

  return v20;
}

- (CRLZipFileArchive)initWithWriter:(id)a3 forReadingFromURL:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(CRLZipFileArchive *)self initForReadingFromURL:v11 options:a5 error:a6];
  if (v12)
  {
    v13 = v12;
    archiveLength = v12->_archiveLength;
    if (archiveLength == [v10 archiveLength])
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000C6F2C;
      v26[3] = &unk_101839E78;
      v15 = v13;
      v27 = v15;
      [v10 enumerateEntriesUsingBlock:v26];
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
        v23 = [v11 path];
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
        v37 = v23;
        v38 = 2048;
        v39 = v24;
        v40 = 2048;
        v41 = [v10 archiveLength];
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
      v21 = [v11 path];
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v19, v20, 250, 0, "Length of archive at %@ doesn't match archive length of writer. %llu != %llu", v21, v13->_archiveLength, [v10 archiveLength]);

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

- (void)createTemporaryDirectoryRelativeToURL:(id)a3
{
  v4 = a3;
  if (!self->_temporaryDirectoryURL)
  {
    v11 = v4;
    if (!v4 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v5 = objc_claimAutoreleasedReturnValue(), [v5 URLForDirectory:99 inDomain:1 appropriateForURL:v11 create:1 error:0], v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_temporaryDirectoryURL, self->_temporaryDirectoryURL = v6, v7, v5, v4 = v11, !self->_temporaryDirectoryURL))
    {
      v8 = [[CRLTemporaryDirectory alloc] initWithSignature:@"ZipFile" error:0];
      [(CRLTemporaryDirectory *)v8 leakTemporaryDirectory];
      v9 = [(CRLTemporaryDirectory *)v8 URL];
      temporaryDirectoryURL = self->_temporaryDirectoryURL;
      self->_temporaryDirectoryURL = v9;

      v4 = v11;
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

- (BOOL)reopenWithTemporaryURL:(id)a3 error:(id *)a4
{
  archiveLength = self->_archiveLength;
  fdWrapper = self->_fdWrapper;
  v9 = fdWrapper;
  self->_archiveLength = 0;
  v10 = self->_fdWrapper;
  self->_fdWrapper = 0;
  v11 = a3;

  v12 = [(CRLZipFileArchive *)self openWithURL:v11 error:a4];
  if (!v12)
  {
    self->_archiveLength = archiveLength;
    objc_storeStrong(&self->_fdWrapper, fdWrapper);
  }

  return v12;
}

- (BOOL)copyToTemporaryLocationRelativeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v17 = self;
  v8 = v6;
  v18 = v8;
  v19 = &v21;
  v20 = &v27;
  dispatch_sync(accessQueue, &v13);
  if (a4 && (v28[3] & 1) == 0)
  {
    v9 = v22[5];
    if (v9)
    {
      *a4 = v9;
    }

    else
    {
      v10 = [NSError crl_fileReadUnknownErrorWithUserInfo:0, v13, v14, v15, v16, v17];
      *a4 = v10;
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

  v6 = [v3 descriptionString];

  return v6;
}

@end