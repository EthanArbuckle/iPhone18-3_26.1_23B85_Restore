@interface PPTFXLEpubSpreadsForwardPageTurnTest
- (void)turnPage;
@end

@implementation PPTFXLEpubSpreadsForwardPageTurnTest

- (void)turnPage
{
  objc_opt_class();
  v3 = [(PPTBasicTest *)self bookController];
  v4 = BUDynamicCast();

  if (v4)
  {
    if ([v4 turnPages:1 animated:1])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = [(PPTBasicTest *)self bookController];
  v6 = [_TtC5Books12RETestDriver isValidWithViewController:v5];

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = sub_1001E65B0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Asking RETestDriver to turn page", v10, 2u);
  }

  v8 = [(PPTBasicTest *)self bookController];
  v9 = [_TtC5Books12RETestDriver turnPageWithViewController:v8 forward:1];

  if ((v9 & 1) == 0)
  {
LABEL_8:
    [(PPTBasicTest *)self finishPPTTestWithResult:1];
  }

LABEL_9:
}

@end