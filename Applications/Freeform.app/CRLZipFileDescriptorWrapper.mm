@interface CRLZipFileDescriptorWrapper
- (CRLZipFileDescriptorWrapper)init;
- (CRLZipFileDescriptorWrapper)initWithFileDescriptor:(int)descriptor;
- (void)dealloc;
@end

@implementation CRLZipFileDescriptorWrapper

- (CRLZipFileDescriptorWrapper)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183A0C8);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLZipFileDescriptorWrapper init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileArchive.m";
    v18 = 1024;
    v19 = 471;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10183A0E8);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v13 = v2;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v7 = [NSString stringWithUTF8String:"[CRLZipFileDescriptorWrapper init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/Zip/CRLZipFileArchive.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:471 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLZipFileDescriptorWrapper init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (CRLZipFileDescriptorWrapper)initWithFileDescriptor:(int)descriptor
{
  selfCopy = self;
  if ((descriptor & 0x80000000) == 0)
  {
    v4 = *&descriptor;
    v14.receiver = self;
    v14.super_class = CRLZipFileDescriptorWrapper;
    v5 = [(CRLZipFileDescriptorWrapper *)&v14 init];
    selfCopy = v5;
    if (!v5)
    {
      close(v4);
      goto LABEL_7;
    }

    v5->_fileDescriptor = v4;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000C881C;
    v12[3] = &unk_10183A108;
    v13 = v4;
    v6 = [[CRLFileIOChannel alloc] initForReadingDescriptor:v4 cleanupHandler:v12];
    readChannel = selfCopy->_readChannel;
    selfCopy->_readChannel = v6;

    if (selfCopy->_readChannel)
    {
      v8 = dispatch_group_create();
      accessGroup = selfCopy->_accessGroup;
      selfCopy->_accessGroup = v8;

LABEL_7:
      selfCopy = selfCopy;
      v10 = selfCopy;
      goto LABEL_8;
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (void)dealloc
{
  [(CRLReadChannel *)self->_readChannel close];
  v3.receiver = self;
  v3.super_class = CRLZipFileDescriptorWrapper;
  [(CRLZipFileDescriptorWrapper *)&v3 dealloc];
}

@end