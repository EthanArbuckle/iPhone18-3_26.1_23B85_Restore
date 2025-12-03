@interface COSPaymentSetupAssistantController
+ (BOOL)passkitFlowNeedsToRun:(unint64_t *)run;
+ (id)passLibraryDataProvider;
+ (id)paymentSetupControllerContext;
- (COSPaymentSetupAssistantController)initWithDelegate:(id)delegate;
@end

@implementation COSPaymentSetupAssistantController

- (COSPaymentSetupAssistantController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[COSPaymentSetupAssistantController paymentSetupControllerContext];
  [v5 setPeerPaymentDelegate:delegateCopy];
  [v5 setDelegate:delegateCopy];

  v6 = [[COSPaymentSetupAssistantController alloc] initWithSetupAssistantContext:v5];
  return v6;
}

+ (id)paymentSetupControllerContext
{
  v2 = [[PKBridgeSetupAssistantContext alloc] initWithSetupAssistant:2];
  bridgeController = [UIApp bridgeController];
  isTinkerPairing = [bridgeController isTinkerPairing];

  if (isTinkerPairing)
  {
    setupController = [UIApp setupController];
    tinkerFamilyMember = [setupController tinkerFamilyMember];
    pairingParentFamilyMember = [setupController pairingParentFamilyMember];
    if (!pairingParentFamilyMember)
    {
      v8 = pbb_bridge_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PK Setup Assistant found no pairing member. Falling back to organizer family member.", v11, 2u);
      }

      pairingParentFamilyMember = [setupController organizerFamilyMember];
    }

    [v2 setPairingFamilyMember:tinkerFamilyMember];
    [v2 setParentFamilyMember:pairingParentFamilyMember];
  }

  v9 = +[COSPaymentSetupAssistantController passLibraryDataProvider];
  [v2 setDataProvider:v9];

  return v2;
}

+ (BOOL)passkitFlowNeedsToRun:(unint64_t *)run
{
  v4 = +[COSPaymentSetupAssistantController paymentSetupControllerContext];
  v5 = [[COSPaymentSetupAssistantController alloc] initWithSetupAssistantContext:v4];
  v9 = 0;
  v6 = [(COSPaymentSetupAssistantController *)v5 setupAssistantNeedsToRunReturningRequirements:&v9];
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

+ (id)passLibraryDataProvider
{
  v2 = [@"/System/Library/NanoPreferenceBundles/Applications/" stringByAppendingPathComponent:@"NanoPassbookBridgeSettings"];
  v3 = [v2 stringByAppendingPathExtension:@"bundle"];

  v4 = [NSBundle bundleWithPath:v3];
  if (([v4 isLoaded] & 1) == 0)
  {
    [v4 load];
  }

  v5 = [v4 classNamed:@"NPKPassbookPaymentSetupDelegate"];
  v6 = NSSelectorFromString(@"sharedSetupDelegate");
  if (objc_opt_respondsToSelector())
  {
    v7 = ([v5 methodForSelector:v6])(v5, v6);
  }

  else
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unable to invoke +[NPKPassbookPaymentSetupDelegate sharedSetupDelegate]!", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

@end