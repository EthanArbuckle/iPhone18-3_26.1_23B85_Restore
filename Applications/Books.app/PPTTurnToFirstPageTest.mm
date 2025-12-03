@interface PPTTurnToFirstPageTest
- (void)startTest;
@end

@implementation PPTTurnToFirstPageTest

- (void)startTest
{
  objc_opt_class();
  bookController = [(PPTBasicTest *)self bookController];
  v4 = BUDynamicCast();

  if (v4)
  {
    [v4 turnToInitialPage:0];
    selfCopy2 = self;
    v6 = 0;
LABEL_7:
    [(PPTBasicTest *)selfCopy2 setResult:v6];
    onTestFinished = [(PPTBasicTest *)self onTestFinished];
    onTestFinished[2]();

    goto LABEL_8;
  }

  bookController2 = [(PPTBasicTest *)self bookController];
  v8 = [_TtC5Books12RETestDriver isValidWithViewController:bookController2];

  if (v8)
  {
    v9 = sub_1001E65B0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Asking RETestDriver to turn to initial page", v13, 2u);
    }

    bookController3 = [(PPTBasicTest *)self bookController];
    v11 = [_TtC5Books12RETestDriver turnToInitialPageWithViewController:bookController3];

    v6 = v11 ^ 1;
    selfCopy2 = self;
    goto LABEL_7;
  }

LABEL_8:
}

@end