@interface BKBookSampleHelper
+ (id)defaultHelper;
- (void)downloadSampleWithURL:(id)l contentData:(id)data tracker:(id)tracker completion:(id)completion;
@end

@implementation BKBookSampleHelper

+ (id)defaultHelper
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FDEEC;
  block[3] = &unk_100A03560;
  block[4] = self;
  if (qword_100AF7628 != -1)
  {
    dispatch_once(&qword_100AF7628, block);
  }

  v2 = qword_100AF7620;

  return v2;
}

- (void)downloadSampleWithURL:(id)l contentData:(id)data tracker:(id)tracker completion:(id)completion
{
  lCopy = l;
  dataCopy = data;
  trackerCopy = tracker;
  completionCopy = completion;
  v13 = +[JSABridge sharedInstance];
  windowManager = [v13 windowManager];

  v15 = [BLDownloadManifestRequest alloc];
  v16 = [NSURLRequest requestWithURL:lCopy];
  v17 = [v15 initWithURLRequest:v16];

  kdebug_trace();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000FE0DC;
  v22[3] = &unk_100A073D8;
  v23 = lCopy;
  v24 = trackerCopy;
  v25 = dataCopy;
  v26 = completionCopy;
  v18 = dataCopy;
  v19 = trackerCopy;
  v20 = completionCopy;
  v21 = lCopy;
  [v17 startWithUIManager:windowManager manifestResponseBlock:v22];
  kdebug_trace();
}

@end