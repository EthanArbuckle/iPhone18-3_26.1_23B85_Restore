@interface COSPaymentSetupAssistantExpressController
+ (BOOL)passkitFlowNeedsToRun:(unint64_t *)a3;
- (COSPaymentSetupAssistantExpressController)initWithDelegate:(id)a3;
@end

@implementation COSPaymentSetupAssistantExpressController

- (COSPaymentSetupAssistantExpressController)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() paymentSetupControllerContext];
  [v5 setPeerPaymentDelegate:v4];
  [v5 setDelegate:v4];

  v6 = [[COSPaymentSetupAssistantExpressController alloc] initWithSetupAssistantContext:v5];
  return v6;
}

+ (BOOL)passkitFlowNeedsToRun:(unint64_t *)a3
{
  v4 = [objc_opt_class() paymentSetupControllerContext];
  v5 = [[COSPaymentSetupAssistantExpressController alloc] initWithSetupAssistantContext:v4];
  v9 = 0;
  v6 = [(COSPaymentSetupAssistantExpressController *)v5 setupAssistantNeedsToRunReturningRequirements:&v9];
  *a3 = v9;
  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PK Setup Assistant advises Passkit Flow needs to run: %{BOOL}d", buf, 8u);
  }

  return v6;
}

@end