@interface MFScreenshotService
+ (OS_os_log)log;
- (MFScreenshotService)initWithDelegate:(id)delegate;
- (MFScreenshotServiceDelegate)delegate;
- (void)fetchPDFRepresentationWithCompletion:(id)completion;
@end

@implementation MFScreenshotService

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10020C54C;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD618 != -1)
  {
    dispatch_once(&qword_1006DD618, block);
  }

  v2 = qword_1006DD610;

  return v2;
}

- (MFScreenshotService)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = MFScreenshotService;
  v5 = [(MFScreenshotService *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)fetchPDFRepresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(MFScreenshotService *)self delegate];
  v6 = [delegate messageContentRepresentationRequestForScreenshotService:self];

  if (v6)
  {
    v7 = [[MFMessagePrinter alloc] initWithContentRequest:v6];
    v8 = +[NSFileManager defaultManager];
    temporaryDirectory = [v8 temporaryDirectory];
    v10 = [temporaryDirectory URLByAppendingPathComponent:@"MFScreenshotService" isDirectory:1];

    [v8 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:0];
    v11 = +[NSString ef_UUID];
    v12 = [v10 URLByAppendingPathComponent:v11];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10020C894;
    v15[3] = &unk_1006509D8;
    v13 = v7;
    v16 = v13;
    v17 = v12;
    v18 = v6;
    v19 = completionCopy;
    v14 = v12;
    [(MFMessagePrinter *)v13 loadWithCompletion:v15];
  }
}

- (MFScreenshotServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end