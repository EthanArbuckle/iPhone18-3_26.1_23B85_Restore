@interface COSPaymentSetupAssistantExpressController
+ (BOOL)passkitFlowNeedsToRun:(unint64_t *)run;
- (COSPaymentSetupAssistantExpressController)initWithDelegate:(id)delegate;
@end

@implementation COSPaymentSetupAssistantExpressController

- (COSPaymentSetupAssistantExpressController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  paymentSetupControllerContext = [objc_opt_class() paymentSetupControllerContext];
  [paymentSetupControllerContext setPeerPaymentDelegate:delegateCopy];
  [paymentSetupControllerContext setDelegate:delegateCopy];

  v6 = [[COSPaymentSetupAssistantExpressController alloc] initWithSetupAssistantContext:paymentSetupControllerContext];
  return v6;
}

+ (BOOL)passkitFlowNeedsToRun:(unint64_t *)run
{
  paymentSetupControllerContext = [objc_opt_class() paymentSetupControllerContext];
  v5 = [[COSPaymentSetupAssistantExpressController alloc] initWithSetupAssistantContext:paymentSetupControllerContext];
  v9 = 0;
  v6 = [(COSPaymentSetupAssistantExpressController *)v5 setupAssistantNeedsToRunReturningRequirements:&v9];
  *run = v9;
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