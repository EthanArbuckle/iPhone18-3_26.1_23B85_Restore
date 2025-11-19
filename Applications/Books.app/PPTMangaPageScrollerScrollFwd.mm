@interface PPTMangaPageScrollerScrollFwd
- (void)startTest;
@end

@implementation PPTMangaPageScrollerScrollFwd

- (void)startTest
{
  objc_opt_class();
  v3 = [(PPTBasicTest *)self bookController];
  v4 = BUDynamicCast();
  [v4 setLayout:2];

  [(PPTBasicTest *)self setTestTimeout:120];
  [(PPTBasicTest *)self setRunning:1];
  objc_opt_class();
  v5 = [(PPTBasicTest *)self bookController];
  v6 = BUDynamicCast();

  if (!v6)
  {
    v7 = sub_1001E65B0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "BKBookViewController not found", buf, 2u);
    }
  }

  v8 = [(PPTBasicTest *)self name];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014FE4C;
  v9[3] = &unk_100A033C8;
  v9[4] = self;
  [v6 _performScrollTest:v8 completionHandler:v9];
}

@end