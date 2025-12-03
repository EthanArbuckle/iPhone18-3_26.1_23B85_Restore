@interface PPTFXLZoomToSpreadTest
- (void)startTest;
@end

@implementation PPTFXLZoomToSpreadTest

- (void)startTest
{
  [(PPTBasicTest *)self setRunning:1];
  objc_opt_class();
  bookController = [(PPTBasicTest *)self bookController];
  v4 = BUDynamicCast();

  objc_opt_class();
  pageNavigationViewController = [v4 pageNavigationViewController];
  v6 = BUDynamicCast();

  if (v6)
  {
    if (![v6 isZoomedToSpread])
    {
      [(PPTBasicTest *)self subscribeToStartNotification:kBETestDriverFXLZoomToSpreadStart endNotification:kBETestDriverFXLZoomToSpreadEnd];
      [v6 zoomToSpread:1];
      goto LABEL_9;
    }

    selfCopy2 = self;
    v8 = 0;
  }

  else
  {
    v9 = sub_1001E65B0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "pictureBookNavController not found", v10, 2u);
    }

    selfCopy2 = self;
    v8 = 1;
  }

  [(PPTBasicTest *)selfCopy2 finishPPTTestWithResult:v8];
LABEL_9:
}

@end