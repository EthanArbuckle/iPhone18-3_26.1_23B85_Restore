@interface PPTEpubGoToScrolledTest
- (PPTEpubGoToScrolledTest)initWithName:(id)name options:(id)options testDefinition:(id)definition isMainTest:(BOOL)test;
- (void)startTest;
@end

@implementation PPTEpubGoToScrolledTest

- (PPTEpubGoToScrolledTest)initWithName:(id)name options:(id)options testDefinition:(id)definition isMainTest:(BOOL)test
{
  v9.receiver = self;
  v9.super_class = PPTEpubGoToScrolledTest;
  v6 = [(PPTBasicTest *)&v9 initWithName:name options:options testDefinition:definition isMainTest:test];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_targetLayout, kBETestDriverEpubLayoutVerticalScroll);
  }

  return v7;
}

- (void)startTest
{
  [(PPTBasicTest *)self setRunning:1];
  bookController = [(PPTBasicTest *)self bookController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    bookController2 = [(PPTBasicTest *)self bookController];
    v6 = [AETestDriver getBookControllerLayout:bookController2];
LABEL_5:
    v9 = v6;

    goto LABEL_7;
  }

  bookController3 = [(PPTBasicTest *)self bookController];
  v8 = [_TtC5Books12RETestDriver isValidWithViewController:bookController3];

  if (v8)
  {
    bookController2 = [(PPTBasicTest *)self bookController];
    v6 = [_TtC5Books12RETestDriver getBookControllerLayoutWithViewController:bookController2];
    goto LABEL_5;
  }

  v9 = &stru_100A30A68;
LABEL_7:
  if ([(__CFString *)v9 isEqualToString:self->_targetLayout])
  {
    [(PPTBasicTest *)self startPPTTest];
    [(PPTBasicTest *)self finishPPTTestWithResult:0];
  }

  else
  {
    v10 = sub_1001E65B0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "We do not have the correct layout, changing it", buf, 2u);
    }

    [(PPTBasicTest *)self subscribeToStartNotification:kBETestDriverPagedToScrolledAnimationStart endNotification:kBETestDriverPagedToScrolledAnimationEnd];
    bookController4 = [(PPTBasicTest *)self bookController];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      bookController5 = [(PPTBasicTest *)self bookController];
      [AETestDriver setBookController:bookController5 layout:self->_targetLayout];
    }

    else
    {
      bookController6 = [(PPTBasicTest *)self bookController];
      v15 = [_TtC5Books12RETestDriver isValidWithViewController:bookController6];

      if (v15)
      {
        targetLayout = self->_targetLayout;
        bookController7 = [(PPTBasicTest *)self bookController];
        [_TtC5Books12RETestDriver setBookControllerLayout:targetLayout viewController:bookController7];
      }

      else
      {
        bookController7 = sub_1001E65B0();
        if (os_log_type_enabled(bookController7, OS_LOG_TYPE_INFO))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, bookController7, OS_LOG_TYPE_INFO, "bookController is not the correct class", v18, 2u);
        }
      }
    }
  }
}

@end