@interface PPTLibraryScrollToBookTest
- (void)startTest;
@end

@implementation PPTLibraryScrollToBookTest

- (void)startTest
{
  [(PPTBasicTest *)self setTestTimeout:120];
  [(PPTBasicTest *)self setRunning:1];
  [(PPTBasicTest *)self startPPTTest];
  asset = [(PPTBasicTest *)self asset];

  if (asset)
  {
    bookshelf = [(PPTBasicTest *)self bookshelf];
    if (!bookshelf)
    {
      v5 = sub_1001E65B0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Could not find the bookshelf", buf, 2u);
      }
    }

    asset2 = [(PPTBasicTest *)self asset];
    assetID = [asset2 assetID];
    [bookshelf scrollToMakeLibraryAssetIDVisible:assetID];

    v8 = dispatch_time(0, 2000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004EB54;
    block[3] = &unk_100A033C8;
    block[4] = self;
    dispatch_after(v8, &_dispatch_main_q, block);
  }

  else
  {
    v9 = sub_1001E65B0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "We do not have a valid book asset", buf, 2u);
    }

    [(PPTBasicTest *)self finishPPTTestWithResult:1];
  }
}

@end