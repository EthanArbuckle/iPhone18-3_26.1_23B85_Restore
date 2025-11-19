@interface BKBookSampleHelper
+ (id)defaultHelper;
- (void)downloadSampleWithURL:(id)a3 contentData:(id)a4 tracker:(id)a5 completion:(id)a6;
@end

@implementation BKBookSampleHelper

+ (id)defaultHelper
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FDEEC;
  block[3] = &unk_100A03560;
  block[4] = a1;
  if (qword_100AF7628 != -1)
  {
    dispatch_once(&qword_100AF7628, block);
  }

  v2 = qword_100AF7620;

  return v2;
}

- (void)downloadSampleWithURL:(id)a3 contentData:(id)a4 tracker:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[JSABridge sharedInstance];
  v14 = [v13 windowManager];

  v15 = [BLDownloadManifestRequest alloc];
  v16 = [NSURLRequest requestWithURL:v9];
  v17 = [v15 initWithURLRequest:v16];

  kdebug_trace();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000FE0DC;
  v22[3] = &unk_100A073D8;
  v23 = v9;
  v24 = v11;
  v25 = v10;
  v26 = v12;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v9;
  [v17 startWithUIManager:v14 manifestResponseBlock:v22];
  kdebug_trace();
}

@end