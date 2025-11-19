@interface PPTEpubScrollTest
- (void)startTest;
@end

@implementation PPTEpubScrollTest

- (void)startTest
{
  [(PPTBasicTest *)self setTestTimeout:60];
  [(PPTBasicTest *)self setRunning:1];
  objc_opt_class();
  v3 = [(PPTBasicTest *)self bookController];
  v4 = BUDynamicCast();

  if (v4)
  {
    v5 = [(PPTBasicTest *)self name];
    v6 = [v4 _performScrollTest:v5 iterations:1 delta:20];
LABEL_7:

    goto LABEL_8;
  }

  v7 = [(PPTBasicTest *)self bookController];
  v8 = [_TtC5Books12RETestDriver isValidWithViewController:v7];

  v9 = sub_1001E65B0();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Asking RETestDriver to scroll", buf, 2u);
    }

    v5 = [(PPTBasicTest *)self bookController];
    v11 = [(PPTBasicTest *)self name];
    v6 = [_TtC5Books12RETestDriver performScrollTestWithViewController:v5 name:v11 iterations:1 delta:20];

    goto LABEL_7;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "book controller not found", buf, 2u);
  }

  v6 = 0;
LABEL_8:
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10014FB20;
  v12[3] = &unk_100A044C8;
  v12[4] = self;
  v13 = v6;
  dispatch_async(&_dispatch_main_q, v12);
}

@end