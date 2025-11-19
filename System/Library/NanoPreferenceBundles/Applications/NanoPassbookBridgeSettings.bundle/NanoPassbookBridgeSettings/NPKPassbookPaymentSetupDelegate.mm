@interface NPKPassbookPaymentSetupDelegate
+ (id)sharedSetupDelegate;
- (BOOL)_canAddPaymentPass;
- (BOOL)canAddPaymentPass;
- (BOOL)handleDeletePassRequestWithPass:(id)a3 forViewController:(id)a4;
- (BOOL)hasPaymentPassWithUniqueID:(id)a3;
- (BOOL)isDeletionInProgressForPass:(id)a3;
- (NPKPassbookPaymentSetupDelegate)init;
- (NPKPaymentWebServiceCompanionTargetDevice)targetDevice;
- (NSString)defaultPaymentPassIdentifier;
- (PKPaymentWebService)webService;
- (id)_defaultPaymentPassIdentifier;
- (id)defaultPaymentApplicationForPassWithUniqueID:(id)a3;
- (id)passWithPassTypeIdentifier:(id)a3 serialNumber:(id)a4;
- (id)passWithUniqueID:(id)a3;
- (id)passes;
- (id)paymentPasses;
- (id)peerPaymentAccount;
- (id)peerPaymentPassUniqueID;
- (id)peerPaymentWebService;
- (unint64_t)_numberOfPaymentPasses;
- (unint64_t)countOfPasses;
- (void)_registerForPeerPaymentWithCompletion:(id)a3;
- (void)_setDeletionInProgress:(BOOL)a3 forPassWithUniqueID:(id)a4;
- (void)_unregisterForPeerPaymentWithCompletion:(id)a3;
- (void)loadWebService;
- (void)paymentSetupDidFinish:(id)a3;
- (void)paymentSetupDidShowEligibilityIssue;
- (void)paymentSetupDidShowError:(id)a3;
- (void)paymentSetupRequestPasscodeUpgradeForPasscodeUpgradeFlowController:(id)a3 withVisibleViewController:(id)a4 completion:(id)a5;
- (void)peerPaymentRegistrationStatusHasChanged:(BOOL)a3 completion:(id)a4;
- (void)setDefaultPaymentApplication:(id)a3 forPassWithUniqueID:(id)a4 completion:(id)a5;
- (void)setDefaultPaymentPassIdentifier:(id)a3;
- (void)setDeletionStatusHandler:(id)a3 forPass:(id)a4;
- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 orderedByDate:(int64_t)a8 limit:(int64_t)a9 completion:(id)a10;
@end

@implementation NPKPassbookPaymentSetupDelegate

+ (id)sharedSetupDelegate
{
  if (qword_34D10 != -1)
  {
    sub_1669C();
  }

  v3 = qword_34D08;

  return v3;
}

- (NPKPassbookPaymentSetupDelegate)init
{
  v10.receiver = self;
  v10.super_class = NPKPassbookPaymentSetupDelegate;
  v2 = [(NPKPassbookPaymentSetupDelegate *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NPKCompanionAgentConnection);
    companionAgentConnection = v2->_companionAgentConnection;
    v2->_companionAgentConnection = v3;

    v5 = +[NSMutableDictionary dictionary];
    deleteStatusHandlers = v2->_deleteStatusHandlers;
    v2->_deleteStatusHandlers = v5;

    v7 = +[NSMutableSet set];
    deletionInProgressPasses = v2->_deletionInProgressPasses;
    v2->_deletionInProgressPasses = v7;
  }

  return v2;
}

- (void)loadWebService
{
  v2 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  [v2 loadWebService];
}

- (PKPaymentWebService)webService
{
  v2 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  v3 = [v2 webService];

  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Payment setup delegate returning web service %@", &v8, 0xCu);
    }
  }

  return v3;
}

- (NPKPaymentWebServiceCompanionTargetDevice)targetDevice
{
  v2 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  v3 = [v2 targetDevice];

  return v3;
}

- (void)paymentSetupDidFinish:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Payment setup finished for nav controller %@", &v12, 0xCu);
    }
  }

  v8 = [(NPKPassbookPaymentSetupDelegate *)self webService];
  v9 = [(NPKPassbookPaymentSetupDelegate *)self targetDevice];
  v10 = [v8 context];
  [v9 archiveContext:v10];

  v11 = [v4 presentingViewController];
  [v11 dismissViewControllerAnimated:1 completion:0];
}

- (void)paymentSetupDidShowError:(id)a3
{
  v3 = a3;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Error during provisioning: %@", &v7, 0xCu);
    }
  }
}

- (void)paymentSetupDidShowEligibilityIssue
{
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Notice: Card eligibility issue", v5, 2u);
    }
  }
}

- (void)paymentSetupRequestPasscodeUpgradeForPasscodeUpgradeFlowController:(id)a3 withVisibleViewController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_retainBlock(v10);
      v16 = 138412802;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Notice: Payment setup request to upgrade passcode with flow controller: %@ visible view controller: %@ completion: %@", &v16, 0x20u);
    }
  }

  v15 = [(NPKPassbookPaymentSetupDelegate *)self targetDevice];
  [v15 requestPasscodeUpgradeForPasscodeUpgradeFlowController:v8 withVisibleViewController:v9 completion:v10];
}

- (BOOL)handleDeletePassRequestWithPass:(id)a3 forViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Payment setup delegate: got delete request for pass %@", buf, 0xCu);
    }
  }

  v11 = [v6 paymentPass];
  v12 = [v11 isPeerPaymentPass];

  if (v12)
  {
    v13 = pk_Payment_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = pk_Payment_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Notice: Not requiring remote confirmation to remove peer payment pass", buf, 2u);
      }
    }
  }

  v16 = [v6 uniqueID];
  v17 = [v7 navigationController];
  objc_initWeak(buf, v17);

  [(NPKPassbookPaymentSetupDelegate *)self _setDeletionInProgress:1 forPassWithUniqueID:v16];
  v18 = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v19 = [v6 uniqueID];
  v20 = NPKPairedOrPairingDevice();
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_12D58;
  v24[3] = &unk_2D010;
  v21 = v6;
  v25 = v21;
  objc_copyWeak(&v28, buf);
  v26 = self;
  v22 = v16;
  v27 = v22;
  [v18 removePaymentPassWithUniqueID:v19 forDevice:v20 waitForConfirmation:v12 ^ 1 completion:v24];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);

  return 1;
}

- (BOOL)isDeletionInProgressForPass:(id)a3
{
  v4 = a3;
  v5 = [(NPKPassbookPaymentSetupDelegate *)self deletionInProgressPasses];
  v6 = [v4 uniqueID];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (void)setDeletionStatusHandler:(id)a3 forPass:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NPKPassbookPaymentSetupDelegate *)self deleteStatusHandlers];
  if (v10)
  {
    v8 = objc_retainBlock(v10);
    v9 = [v6 uniqueID];

    [v7 setObject:v8 forKey:v9];
  }

  else
  {
    v8 = [v6 uniqueID];

    [v7 removeObjectForKey:v8];
  }
}

- (void)_setDeletionInProgress:(BOOL)a3 forPassWithUniqueID:(id)a4
{
  v4 = a3;
  v12 = a4;
  v6 = [(NPKPassbookPaymentSetupDelegate *)self deletionInProgressPasses];
  v7 = [v6 containsObject:v12];

  if (v7 != v4)
  {
    v8 = [(NPKPassbookPaymentSetupDelegate *)self deletionInProgressPasses];
    v9 = v8;
    if (v4)
    {
      [v8 addObject:v12];
    }

    else
    {
      [v8 removeObject:v12];
    }

    v10 = [(NPKPassbookPaymentSetupDelegate *)self deleteStatusHandlers];
    v11 = [v10 objectForKey:v12];

    if (v11)
    {
      v11[2](v11);
    }
  }
}

- (id)paymentPasses
{
  v3 = +[NSMutableArray array];
  v4 = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_132D4;
  v9[3] = &unk_2D060;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 paymentPassUniqueIDsSynchronous:1 reply:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

- (BOOL)canAddPaymentPass
{
  v3 = [(NPKPassbookPaymentSetupDelegate *)self _canAddPaymentPass];
  v4 = v3;
  [(NPKPassbookPaymentSetupDelegate *)self setLastProvidedCanAddPaymentPass:v3];
  return v4;
}

- (id)passWithPassTypeIdentifier:(id)a3 serialNumber:(id)a4
{
  v5 = PKGeneratePassUniqueID();
  v6 = [(NPKPassbookPaymentSetupDelegate *)self passWithUniqueID:v5];

  return v6;
}

- (id)peerPaymentPassUniqueID
{
  if (PKUseMockSURFServer())
  {
    v2 = PKMockPeerPaymentPassPassTypeID();
    v3 = PKMockPeerPaymentPassSerialNumber();
    v4 = PKGeneratePassUniqueID();
  }

  else
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
        v9 = [v8 peerPaymentAccount];
        v10 = [v9 associatedPassUniqueID];
        v13 = 138412290;
        v14 = v10;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: returning peer payment pass unique ID %@", &v13, 0xCu);
      }
    }

    v2 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
    v3 = [v2 peerPaymentAccount];
    v4 = [v3 associatedPassUniqueID];
  }

  v11 = v4;

  return v11;
}

- (id)passWithUniqueID:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_137B4;
  v13 = sub_137C4;
  v14 = 0;
  v5 = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_137CC;
  v8[3] = &unk_2D088;
  v8[4] = &v9;
  [v5 paymentPassWithUniqueID:v4 synchronous:1 reply:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (NSString)defaultPaymentPassIdentifier
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_137B4;
  v15 = sub_137C4;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_139B0;
  v8[3] = &unk_2D0B0;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [v4 defaultCardUniqueID:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)defaultPaymentApplicationForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_137B4;
  v17 = sub_137C4;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_13B74;
  v10[3] = &unk_2D0D8;
  v12 = &v13;
  v7 = v5;
  v11 = v7;
  [v6 defaultPaymentApplicationForPassWithUniqueID:v4 completion:v10];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (BOOL)hasPaymentPassWithUniqueID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_13CD8;
  v8[3] = &unk_2D100;
  v10 = &v11;
  v6 = v4;
  v9 = v6;
  [v5 paymentPassUniqueIDsSynchronous:1 reply:v8];

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v5;
}

- (void)setDefaultPaymentApplication:(id)a3 forPassWithUniqueID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  [v11 setDefaultPaymentApplication:v10 forPassWithUniqueID:v9 completion:v8];
}

- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 orderedByDate:(int64_t)a8 limit:(int64_t)a9 completion:(id)a10
{
  v17 = a10;
  v18 = a7;
  v19 = a6;
  v20 = a3;
  v21 = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  [v21 transactionsForTransactionSourceIdentifiers:v20 withTransactionSource:a4 withBackingData:a5 startDate:v19 endDate:v18 orderedByDate:a8 limit:a9 completion:v17];
}

- (void)setDefaultPaymentPassIdentifier:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v6 = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_13F4C;
  v8[3] = &unk_2D128;
  v9 = v5;
  v7 = v5;
  [v6 setDefaultCardUniqueID:v4 completion:v8];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (unint64_t)countOfPasses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_14058;
  v5[3] = &unk_2D150;
  v5[4] = &v6;
  [v2 countOfPassesSynchronous:1 completion:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)passes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_137B4;
  v10 = sub_137C4;
  v11 = 0;
  v2 = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1417C;
  v5[3] = &unk_2D178;
  v5[4] = &v6;
  [v2 passesSynchronous:1 completion:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)peerPaymentRegistrationStatusHasChanged:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = v4;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Notice: Got peer payment registration status change request (%d)", buf, 8u);
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_14350;
  v15[3] = &unk_2D1A0;
  v15[4] = self;
  v10 = v6;
  v16 = v10;
  v11 = objc_retainBlock(v15);
  v12 = v11;
  if (v4)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_14578;
    v13[3] = &unk_2D1F0;
    v13[4] = self;
    v14 = v11;
    [(NPKPassbookPaymentSetupDelegate *)self _registerForPeerPaymentWithCompletion:v13];
  }

  else
  {
    [(NPKPassbookPaymentSetupDelegate *)self _unregisterForPeerPaymentWithCompletion:v11];
  }
}

- (void)_registerForPeerPaymentWithCompletion:(id)a3
{
  v4 = a3;
  [(NPKPassbookPaymentSetupDelegate *)self webService];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_14A94;
  v5 = v18[3] = &unk_2C778;
  v19 = v5;
  v20 = self;
  v6 = v4;
  v21 = v6;
  v7 = objc_retainBlock(v18);
  v8 = [[PKPaymentProvisioningController alloc] initWithWebService:v5];
  [v8 setIsProvisioningForAltAccount:NPKPairedOrPairingDeviceIsTinker()];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_14B14;
  v13[3] = &unk_2D240;
  v14 = v5;
  v15 = v8;
  v16 = v7;
  v17 = v6;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  v12 = v5;
  [v11 validatePreconditions:v13];
}

- (void)_unregisterForPeerPaymentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NPKPassbookPaymentSetupDelegate *)self targetDevice];
  [v5 peerPaymentUnregisterWithCompletion:v4];
}

- (id)peerPaymentWebService
{
  v2 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  v3 = [v2 peerPaymentWebService];

  return v3;
}

- (id)peerPaymentAccount
{
  v2 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  v3 = [v2 peerPaymentAccount];

  return v3;
}

- (id)_defaultPaymentPassIdentifier
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_137B4;
  v15 = sub_137C4;
  v16 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_14F04;
  v8[3] = &unk_2D0B0;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [v4 defaultCardUniqueID:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (BOOL)_canAddPaymentPass
{
  v4 = (PKEnableDynamicSEAllocation() & 1) != 0 || (v3 = NPKMaxPaymentCards()) == 0 || [(NPKPassbookPaymentSetupDelegate *)self _numberOfPaymentPasses]< v3;
  v5 = [(NPKPassbookPaymentSetupDelegate *)self webService];
  v6 = [v5 paymentSetupSupportedInRegion] != &dword_0 + 2;

  return v6 && v4;
}

- (unint64_t)_numberOfPaymentPasses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_150B0;
  v5[3] = &unk_2D268;
  v5[4] = &v6;
  [v2 paymentPassUniqueIDsSynchronous:1 excludingDeactivated:1 reply:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end