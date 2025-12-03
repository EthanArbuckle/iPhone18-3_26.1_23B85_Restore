@interface NPKPassbookPaymentSetupDelegate
+ (id)sharedSetupDelegate;
- (BOOL)_canAddPaymentPass;
- (BOOL)canAddPaymentPass;
- (BOOL)handleDeletePassRequestWithPass:(id)pass forViewController:(id)controller;
- (BOOL)hasPaymentPassWithUniqueID:(id)d;
- (BOOL)isDeletionInProgressForPass:(id)pass;
- (NPKPassbookPaymentSetupDelegate)init;
- (NPKPaymentWebServiceCompanionTargetDevice)targetDevice;
- (NSString)defaultPaymentPassIdentifier;
- (PKPaymentWebService)webService;
- (id)_defaultPaymentPassIdentifier;
- (id)defaultPaymentApplicationForPassWithUniqueID:(id)d;
- (id)passWithPassTypeIdentifier:(id)identifier serialNumber:(id)number;
- (id)passWithUniqueID:(id)d;
- (id)passes;
- (id)paymentPasses;
- (id)peerPaymentAccount;
- (id)peerPaymentPassUniqueID;
- (id)peerPaymentWebService;
- (unint64_t)_numberOfPaymentPasses;
- (unint64_t)countOfPasses;
- (void)_registerForPeerPaymentWithCompletion:(id)completion;
- (void)_setDeletionInProgress:(BOOL)progress forPassWithUniqueID:(id)d;
- (void)_unregisterForPeerPaymentWithCompletion:(id)completion;
- (void)loadWebService;
- (void)paymentSetupDidFinish:(id)finish;
- (void)paymentSetupDidShowEligibilityIssue;
- (void)paymentSetupDidShowError:(id)error;
- (void)paymentSetupRequestPasscodeUpgradeForPasscodeUpgradeFlowController:(id)controller withVisibleViewController:(id)viewController completion:(id)completion;
- (void)peerPaymentRegistrationStatusHasChanged:(BOOL)changed completion:(id)completion;
- (void)setDefaultPaymentApplication:(id)application forPassWithUniqueID:(id)d completion:(id)completion;
- (void)setDefaultPaymentPassIdentifier:(id)identifier;
- (void)setDeletionStatusHandler:(id)handler forPass:(id)pass;
- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate orderedByDate:(int64_t)byDate limit:(int64_t)limit completion:(id)self0;
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
  webService = [v2 webService];

  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = webService;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notice: Payment setup delegate returning web service %@", &v8, 0xCu);
    }
  }

  return webService;
}

- (NPKPaymentWebServiceCompanionTargetDevice)targetDevice
{
  v2 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  targetDevice = [v2 targetDevice];

  return targetDevice;
}

- (void)paymentSetupDidFinish:(id)finish
{
  finishCopy = finish;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = finishCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Payment setup finished for nav controller %@", &v12, 0xCu);
    }
  }

  webService = [(NPKPassbookPaymentSetupDelegate *)self webService];
  targetDevice = [(NPKPassbookPaymentSetupDelegate *)self targetDevice];
  context = [webService context];
  [targetDevice archiveContext:context];

  presentingViewController = [finishCopy presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)paymentSetupDidShowError:(id)error
{
  errorCopy = error;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = errorCopy;
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

- (void)paymentSetupRequestPasscodeUpgradeForPasscodeUpgradeFlowController:(id)controller withVisibleViewController:(id)viewController completion:(id)completion
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  completionCopy = completion;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_retainBlock(completionCopy);
      v16 = 138412802;
      v17 = controllerCopy;
      v18 = 2112;
      v19 = viewControllerCopy;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Notice: Payment setup request to upgrade passcode with flow controller: %@ visible view controller: %@ completion: %@", &v16, 0x20u);
    }
  }

  targetDevice = [(NPKPassbookPaymentSetupDelegate *)self targetDevice];
  [targetDevice requestPasscodeUpgradeForPasscodeUpgradeFlowController:controllerCopy withVisibleViewController:viewControllerCopy completion:completionCopy];
}

- (BOOL)handleDeletePassRequestWithPass:(id)pass forViewController:(id)controller
{
  passCopy = pass;
  controllerCopy = controller;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = passCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Payment setup delegate: got delete request for pass %@", buf, 0xCu);
    }
  }

  paymentPass = [passCopy paymentPass];
  isPeerPaymentPass = [paymentPass isPeerPaymentPass];

  if (isPeerPaymentPass)
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

  uniqueID = [passCopy uniqueID];
  navigationController = [controllerCopy navigationController];
  objc_initWeak(buf, navigationController);

  [(NPKPassbookPaymentSetupDelegate *)self _setDeletionInProgress:1 forPassWithUniqueID:uniqueID];
  companionAgentConnection = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  uniqueID2 = [passCopy uniqueID];
  v20 = NPKPairedOrPairingDevice();
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_12D58;
  v24[3] = &unk_2D010;
  v21 = passCopy;
  v25 = v21;
  objc_copyWeak(&v28, buf);
  selfCopy = self;
  v22 = uniqueID;
  v27 = v22;
  [companionAgentConnection removePaymentPassWithUniqueID:uniqueID2 forDevice:v20 waitForConfirmation:isPeerPaymentPass ^ 1 completion:v24];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);

  return 1;
}

- (BOOL)isDeletionInProgressForPass:(id)pass
{
  passCopy = pass;
  deletionInProgressPasses = [(NPKPassbookPaymentSetupDelegate *)self deletionInProgressPasses];
  uniqueID = [passCopy uniqueID];

  LOBYTE(passCopy) = [deletionInProgressPasses containsObject:uniqueID];
  return passCopy;
}

- (void)setDeletionStatusHandler:(id)handler forPass:(id)pass
{
  handlerCopy = handler;
  passCopy = pass;
  deleteStatusHandlers = [(NPKPassbookPaymentSetupDelegate *)self deleteStatusHandlers];
  if (handlerCopy)
  {
    uniqueID2 = objc_retainBlock(handlerCopy);
    uniqueID = [passCopy uniqueID];

    [deleteStatusHandlers setObject:uniqueID2 forKey:uniqueID];
  }

  else
  {
    uniqueID2 = [passCopy uniqueID];

    [deleteStatusHandlers removeObjectForKey:uniqueID2];
  }
}

- (void)_setDeletionInProgress:(BOOL)progress forPassWithUniqueID:(id)d
{
  progressCopy = progress;
  dCopy = d;
  deletionInProgressPasses = [(NPKPassbookPaymentSetupDelegate *)self deletionInProgressPasses];
  v7 = [deletionInProgressPasses containsObject:dCopy];

  if (v7 != progressCopy)
  {
    deletionInProgressPasses2 = [(NPKPassbookPaymentSetupDelegate *)self deletionInProgressPasses];
    v9 = deletionInProgressPasses2;
    if (progressCopy)
    {
      [deletionInProgressPasses2 addObject:dCopy];
    }

    else
    {
      [deletionInProgressPasses2 removeObject:dCopy];
    }

    deleteStatusHandlers = [(NPKPassbookPaymentSetupDelegate *)self deleteStatusHandlers];
    v11 = [deleteStatusHandlers objectForKey:dCopy];

    if (v11)
    {
      v11[2](v11);
    }
  }
}

- (id)paymentPasses
{
  v3 = +[NSMutableArray array];
  companionAgentConnection = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_132D4;
  v9[3] = &unk_2D060;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [companionAgentConnection paymentPassUniqueIDsSynchronous:1 reply:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

- (BOOL)canAddPaymentPass
{
  _canAddPaymentPass = [(NPKPassbookPaymentSetupDelegate *)self _canAddPaymentPass];
  v4 = _canAddPaymentPass;
  [(NPKPassbookPaymentSetupDelegate *)self setLastProvidedCanAddPaymentPass:_canAddPaymentPass];
  return v4;
}

- (id)passWithPassTypeIdentifier:(id)identifier serialNumber:(id)number
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
    peerPaymentAccount2 = PKMockPeerPaymentPassSerialNumber();
    associatedPassUniqueID2 = PKGeneratePassUniqueID();
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
        peerPaymentAccount = [v8 peerPaymentAccount];
        associatedPassUniqueID = [peerPaymentAccount associatedPassUniqueID];
        v13 = 138412290;
        v14 = associatedPassUniqueID;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: returning peer payment pass unique ID %@", &v13, 0xCu);
      }
    }

    v2 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
    peerPaymentAccount2 = [v2 peerPaymentAccount];
    associatedPassUniqueID2 = [peerPaymentAccount2 associatedPassUniqueID];
  }

  v11 = associatedPassUniqueID2;

  return v11;
}

- (id)passWithUniqueID:(id)d
{
  dCopy = d;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_137B4;
  v13 = sub_137C4;
  v14 = 0;
  companionAgentConnection = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_137CC;
  v8[3] = &unk_2D088;
  v8[4] = &v9;
  [companionAgentConnection paymentPassWithUniqueID:dCopy synchronous:1 reply:v8];

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
  companionAgentConnection = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_139B0;
  v8[3] = &unk_2D0B0;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [companionAgentConnection defaultCardUniqueID:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)defaultPaymentApplicationForPassWithUniqueID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_137B4;
  v17 = sub_137C4;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  companionAgentConnection = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_13B74;
  v10[3] = &unk_2D0D8;
  v12 = &v13;
  v7 = v5;
  v11 = v7;
  [companionAgentConnection defaultPaymentApplicationForPassWithUniqueID:dCopy completion:v10];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (BOOL)hasPaymentPassWithUniqueID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  companionAgentConnection = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_13CD8;
  v8[3] = &unk_2D100;
  v10 = &v11;
  v6 = dCopy;
  v9 = v6;
  [companionAgentConnection paymentPassUniqueIDsSynchronous:1 reply:v8];

  LOBYTE(companionAgentConnection) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return companionAgentConnection;
}

- (void)setDefaultPaymentApplication:(id)application forPassWithUniqueID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  applicationCopy = application;
  companionAgentConnection = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  [companionAgentConnection setDefaultPaymentApplication:applicationCopy forPassWithUniqueID:dCopy completion:completionCopy];
}

- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate orderedByDate:(int64_t)byDate limit:(int64_t)limit completion:(id)self0
{
  completionCopy = completion;
  endDateCopy = endDate;
  dateCopy = date;
  identifiersCopy = identifiers;
  companionAgentConnection = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  [companionAgentConnection transactionsForTransactionSourceIdentifiers:identifiersCopy withTransactionSource:source withBackingData:data startDate:dateCopy endDate:endDateCopy orderedByDate:byDate limit:limit completion:completionCopy];
}

- (void)setDefaultPaymentPassIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = dispatch_semaphore_create(0);
  companionAgentConnection = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_13F4C;
  v8[3] = &unk_2D128;
  v9 = v5;
  v7 = v5;
  [companionAgentConnection setDefaultCardUniqueID:identifierCopy completion:v8];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (unint64_t)countOfPasses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  companionAgentConnection = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_14058;
  v5[3] = &unk_2D150;
  v5[4] = &v6;
  [companionAgentConnection countOfPassesSynchronous:1 completion:v5];

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
  companionAgentConnection = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1417C;
  v5[3] = &unk_2D178;
  v5[4] = &v6;
  [companionAgentConnection passesSynchronous:1 completion:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)peerPaymentRegistrationStatusHasChanged:(BOOL)changed completion:(id)completion
{
  changedCopy = changed;
  completionCopy = completion;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = changedCopy;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Notice: Got peer payment registration status change request (%d)", buf, 8u);
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_14350;
  v15[3] = &unk_2D1A0;
  v15[4] = self;
  v10 = completionCopy;
  v16 = v10;
  v11 = objc_retainBlock(v15);
  v12 = v11;
  if (changedCopy)
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

- (void)_registerForPeerPaymentWithCompletion:(id)completion
{
  completionCopy = completion;
  [(NPKPassbookPaymentSetupDelegate *)self webService];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_14A94;
  v5 = v18[3] = &unk_2C778;
  v19 = v5;
  selfCopy = self;
  v6 = completionCopy;
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

- (void)_unregisterForPeerPaymentWithCompletion:(id)completion
{
  completionCopy = completion;
  targetDevice = [(NPKPassbookPaymentSetupDelegate *)self targetDevice];
  [targetDevice peerPaymentUnregisterWithCompletion:completionCopy];
}

- (id)peerPaymentWebService
{
  v2 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  peerPaymentWebService = [v2 peerPaymentWebService];

  return peerPaymentWebService;
}

- (id)peerPaymentAccount
{
  v2 = +[NPKSharedWebServiceProvider sharedWebServiceProvider];
  peerPaymentAccount = [v2 peerPaymentAccount];

  return peerPaymentAccount;
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
  companionAgentConnection = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_14F04;
  v8[3] = &unk_2D0B0;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [companionAgentConnection defaultCardUniqueID:v8];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (BOOL)_canAddPaymentPass
{
  v4 = (PKEnableDynamicSEAllocation() & 1) != 0 || (v3 = NPKMaxPaymentCards()) == 0 || [(NPKPassbookPaymentSetupDelegate *)self _numberOfPaymentPasses]< v3;
  webService = [(NPKPassbookPaymentSetupDelegate *)self webService];
  v6 = [webService paymentSetupSupportedInRegion] != &dword_0 + 2;

  return v6 && v4;
}

- (unint64_t)_numberOfPaymentPasses
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  companionAgentConnection = [(NPKPassbookPaymentSetupDelegate *)self companionAgentConnection];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_150B0;
  v5[3] = &unk_2D268;
  v5[4] = &v6;
  [companionAgentConnection paymentPassUniqueIDsSynchronous:1 excludingDeactivated:1 reply:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end