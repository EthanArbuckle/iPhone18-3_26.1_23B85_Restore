@interface NPKStockholmProvisioningController
- (BOOL)_deviceInRestrictedMode;
- (BOOL)canRegisterForPeerPayment;
- (BOOL)deviceInRestrictedMode;
- (BOOL)deviceSupportsInAppPayments;
- (BOOL)hasFelicaSecureElement;
- (BOOL)isPaymentHandoffDisabled;
- (BOOL)isRegistrationSupported;
- (BOOL)isSettingsControllerReloadNecessary;
- (BOOL)secureElementIsProductionSigned;
- (BOOL)supportsAddingPaymentPass:(id)pass;
- (BOOL)supportsInAppPaymentsForPass:(id)pass;
- (BOOL)supportsTransactionsForPass:(id)pass;
- (NPKStockholmProvisioningController)initWithPaymentSetupDelegate:(id)delegate;
- (NSString)defaultPaymentPassIdentifier;
- (NSString)deviceClass;
- (NSString)deviceName;
- (PKOSVersionRequirement)deviceVersion;
- (PKPaymentDataProviderDelegate)delegate;
- (PKPaymentWebService)paymentWebService;
- (id)_changeExpressStateInstructionViewControllerForEnablingExpressMode:(BOOL)mode paymentCardType:(int64_t)type passLocalizedDescription:(id)description cancellationHandler:(id)handler;
- (id)_currentExpressPassConfigurationForUniqueID:(id)d;
- (id)_errorAcknowledgeButtonTitle;
- (id)_errorSetExpressModeMessageWithPass:(id)pass;
- (id)_errorSetExpressModeTitle;
- (id)_unlockRequiredMessageWithPaymentPass:(id)pass;
- (id)_unlockRequiredTitle;
- (id)defaultPaymentApplicationForPassUniqueIdentifier:(id)identifier;
- (id)expressPassConfigurations;
- (id)setupBrowsableProductTypesForDevice;
- (id)setupFeaturedNetworksForDevice;
- (id)webService;
- (int64_t)apiVersion;
- (void)_accessDelegatesWithHandler:(id)handler;
- (void)_dismissInstructionViewController:(id)controller;
- (void)_handleExpressPassesConfigurationChangedNotification:(id)notification;
- (void)_handleSetExpressPassResult:(unint64_t)result forInstructionViewController:(id)controller;
- (void)_presentErrorWithTitle:(id)title message:(id)message acknowledgeButtonTitle:(id)buttonTitle visibleViewController:(id)controller dismissBlock:(id)block;
- (void)_presentInstructionViewController:(id)controller inVisibleViewController:(id)viewController;
- (void)balanceReminderThresholdForBalance:(id)balance pass:(id)pass withCompletion:(id)completion;
- (void)balancesForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)cancelAutoTopUpForPassWithUniqueIdentifier:(id)identifier balanceIdentifiers:(id)identifiers completion:(id)completion;
- (void)commutePlanReminderForCommutePlan:(id)plan pass:(id)pass withCompletion:(id)completion;
- (void)conflictingExpressPassIdentifiersForPassConfiguration:(id)configuration withCompletion:(id)completion;
- (void)deletePaymentTransactionWithIdentifier:(id)identifier;
- (void)familyMembersWithCompletion:(id)completion;
- (void)featureApplicationsForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)passUpgradeWithRequest:(id)request pass:(id)pass visibleViewController:(id)controller completion:(id)completion;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableMessageService:(BOOL)service;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableTransactionService:(BOOL)service;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateBalanceReminder:(id)reminder forBalance:(id)balance;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithBalances:(id)balances;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithCredentials:(id)credentials forPaymentApplicationIdentifier:(id)applicationIdentifier;
- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties;
- (void)photosForFamilyMembersWithDSIDs:(id)ds completion:(id)completion;
- (void)plansForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)preflightForLocalPassWithCompletion:(id)completion;
- (void)preflightWithCompletion:(id)completion;
- (void)removeExpressPassesWithUniqueIdentifiers:(id)identifiers visibleViewController:(id)controller completion:(id)completion;
- (void)setBalanceReminder:(id)reminder forBalance:(id)balance pass:(id)pass completion:(id)completion;
- (void)setCommutePlanReminder:(id)reminder forCommutePlan:(id)plan pass:(id)pass completion:(id)completion;
- (void)setDefaultPaymentApplication:(id)application forPassUniqueIdentifier:(id)identifier completion:(id)completion;
- (void)setDefaultPaymentPassIdentifier:(id)identifier;
- (void)setExpressWithPassConfiguration:(id)configuration visibleViewController:(id)controller requiresAuth:(BOOL)auth completion:(id)completion;
- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)identifier;
- (void)startServiceModeForPassWithUniqueIdentifier:(id)identifier visibleViewController:(id)controller;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier;
- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate orderedByDate:(int64_t)byDate limit:(int64_t)limit completion:(id)self0;
- (void)transitStateWithPassUniqueIdentifier:(id)identifier paymentApplication:(id)application completion:(id)completion;
- (void)updateRegionSupportIfNecessary;
@end

@implementation NPKStockholmProvisioningController

- (NPKStockholmProvisioningController)initWithPaymentSetupDelegate:(id)delegate
{
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = NPKStockholmProvisioningController;
  v6 = [(NPKStockholmProvisioningController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentSetupDelegate, delegate);
    v8 = +[NSHashTable pk_weakObjectsHashTableUsingPointerPersonality];
    dataProviderDelegates = v7->_dataProviderDelegates;
    v7->_dataProviderDelegates = v8;

    v10 = objc_alloc_init(NPKCompanionAgentConnection);
    connection = v7->_connection;
    v7->_connection = v10;

    [(NPKCompanionAgentConnection *)v7->_connection setDelegate:v7];
    v12 = objc_alloc_init(PKPaymentOptionsDefaults);
    defaults = v7->_defaults;
    v7->_defaults = v12;

    v14 = +[NSNotificationCenter defaultCenter];
    v15 = NPKNotificationForExpressPassesInformationChange();
    [v14 addObserver:v7 selector:"_handleExpressPassesConfigurationChangedNotification:" name:v15 object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    v17 = NPKNotificationForExpressPassConfigurationChange();
    [v16 addObserver:v7 selector:"_handleExpressPassesConfigurationChangedNotification:" name:v17 object:0];
  }

  return v7;
}

- (void)_handleExpressPassesConfigurationChangedNotification:(id)notification
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8390;
  v4[3] = &unk_2C750;
  v4[4] = self;
  notificationCopy = notification;
  v3 = notificationCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (id)defaultPaymentApplicationForPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v6 = [paymentSetupDelegate defaultPaymentApplicationForPassWithUniqueID:identifierCopy];

  return v6;
}

- (void)setDefaultPaymentApplication:(id)application forPassUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  applicationCopy = application;
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_85DC;
  v13[3] = &unk_2C9F8;
  v14 = completionCopy;
  v12 = completionCopy;
  [paymentSetupDelegate setDefaultPaymentApplication:applicationCopy forPassWithUniqueID:identifierCopy completion:v13];
}

- (void)setDefaultPaymentPassIdentifier:(id)identifier
{
  identifierCopy = identifier;
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  [paymentSetupDelegate setDefaultPaymentPassIdentifier:identifierCopy];
}

- (NSString)defaultPaymentPassIdentifier
{
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  defaultPaymentPassIdentifier = [paymentSetupDelegate defaultPaymentPassIdentifier];

  return defaultPaymentPassIdentifier;
}

- (id)_currentExpressPassConfigurationForUniqueID:(id)d
{
  dCopy = d;
  expressPassConfigurations = [(NPKStockholmProvisioningController *)self expressPassConfigurations];
  v6 = expressPassConfigurations;
  if (expressPassConfigurations)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = expressPassConfigurations;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          passUniqueIdentifier = [v11 passUniqueIdentifier];
          v13 = [passUniqueIdentifier isEqualToString:dCopy];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)expressPassConfigurations
{
  pendingExpressPassesConfigurations = [(NPKStockholmProvisioningController *)self pendingExpressPassesConfigurations];

  if (pendingExpressPassesConfigurations)
  {
    pendingExpressPassesConfigurations2 = [(NPKStockholmProvisioningController *)self pendingExpressPassesConfigurations];
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = pendingExpressPassesConfigurations2;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Have pending expressPassesConfigurations, returning: %@", &v9, 0xCu);
      }
    }
  }

  else
  {
    pendingExpressPassesConfigurations2 = NPKPairedDeviceCurrentExpressPassConfiguration();
  }

  return pendingExpressPassesConfigurations2;
}

- (void)deletePaymentTransactionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = identifierCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Requested to delete transaction with identifier:%@", buf, 0xCu);
    }
  }

  connection = [(NPKStockholmProvisioningController *)self connection];
  v9 = NPKPairedOrPairingDevice();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_8B40;
  v11[3] = &unk_2CA20;
  v12 = identifierCopy;
  v10 = identifierCopy;
  [connection deletePaymentTransactionWithIdentifier:v10 fromDevice:v9 completion:v11];
}

- (void)transitStateWithPassUniqueIdentifier:(id)identifier paymentApplication:(id)application completion:(id)completion
{
  completionCopy = completion;
  applicationCopy = application;
  identifierCopy = identifier;
  connection = [(NPKStockholmProvisioningController *)self connection];
  [connection transitStateWithPassUniqueIdentifier:identifierCopy paymentApplication:applicationCopy completion:completionCopy];
}

- (void)transactionsForTransactionSourceIdentifiers:(id)identifiers withTransactionSource:(unint64_t)source withBackingData:(unint64_t)data startDate:(id)date endDate:(id)endDate orderedByDate:(int64_t)byDate limit:(int64_t)limit completion:(id)self0
{
  completionCopy = completion;
  endDateCopy = endDate;
  dateCopy = date;
  identifiersCopy = identifiers;
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  [paymentSetupDelegate transactionsForTransactionSourceIdentifiers:identifiersCopy withTransactionSource:source withBackingData:data startDate:dateCopy endDate:endDateCopy orderedByDate:byDate limit:limit completion:completionCopy];
}

- (void)balancesForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  connection = [(NPKStockholmProvisioningController *)self connection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_8EBC;
  v10[3] = &unk_2CA48;
  v11 = completionCopy;
  v9 = completionCopy;
  [connection balancesForPaymentPassWithUniqueIdentifier:identifierCopy completion:v10];
}

- (void)balanceReminderThresholdForBalance:(id)balance pass:(id)pass withCompletion:(id)completion
{
  completionCopy = completion;
  passCopy = pass;
  balanceCopy = balance;
  connection = [(NPKStockholmProvisioningController *)self connection];
  [connection balanceReminderForBalance:balanceCopy pass:passCopy withCompletion:completionCopy];
}

- (void)setBalanceReminder:(id)reminder forBalance:(id)balance pass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  passCopy = pass;
  balanceCopy = balance;
  reminderCopy = reminder;
  connection = [(NPKStockholmProvisioningController *)self connection];
  [connection setBalanceReminder:reminderCopy forBalance:balanceCopy pass:passCopy completion:completionCopy];
}

- (void)plansForPaymentPassWithUniqueIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[NPKStockholmProvisioningController plansForPaymentPassWithUniqueIdentifier:completion:]";
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Warning: %s this method is not implemented yet. returning empty set", &v9, 0xCu);
    }
  }

  if (completionCopy)
  {
    v8 = objc_alloc_init(NSArray);
    completionCopy[2](completionCopy, v8);
  }
}

- (void)commutePlanReminderForCommutePlan:(id)plan pass:(id)pass withCompletion:(id)completion
{
  completionCopy = completion;
  passCopy = pass;
  planCopy = plan;
  connection = [(NPKStockholmProvisioningController *)self connection];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_91F4;
  v13[3] = &unk_2CA70;
  v14 = completionCopy;
  v12 = completionCopy;
  [connection commutePlanReminderForCommutePlan:planCopy pass:passCopy withCompletion:v13];
}

- (void)setCommutePlanReminder:(id)reminder forCommutePlan:(id)plan pass:(id)pass completion:(id)completion
{
  completionCopy = completion;
  passCopy = pass;
  planCopy = plan;
  reminderCopy = reminder;
  connection = [(NPKStockholmProvisioningController *)self connection];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_9304;
  v16[3] = &unk_2CA98;
  v17 = completionCopy;
  v15 = completionCopy;
  [connection setCommutePlanReminder:reminderCopy forCommutePlan:planCopy pass:passCopy completion:v16];
}

- (BOOL)supportsTransactionsForPass:(id)pass
{
  passCopy = pass;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (!NPKIsPairedDeviceStandalone())
  {
    paymentPass = [passCopy paymentPass];
    devicePaymentApplications = [paymentPass devicePaymentApplications];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_946C;
    v9[3] = &unk_2CAC0;
    v9[4] = &v10;
    [devicePaymentApplications enumerateObjectsUsingBlock:v9];
LABEL_6:

    goto LABEL_7;
  }

  paymentPass = [passCopy secureElementPass];
  if (![paymentPass isAccessPass])
  {
    devicePaymentApplications = NPKPairedDeviceSecureElementIdentifiers();
    v6 = [paymentPass isPrecursorPass:devicePaymentApplications];
    *(v11 + 24) = v6 ^ 1;
    goto LABEL_6;
  }

  *(v11 + 24) = 0;
LABEL_7:

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (BOOL)supportsInAppPaymentsForPass:(id)pass
{
  passCopy = pass;
  if ([(NPKStockholmProvisioningController *)self deviceSupportsInAppPayments])
  {
    paymentPass = [passCopy paymentPass];
    deviceInAppPaymentApplications = [paymentPass deviceInAppPaymentApplications];
    v7 = [deviceInAppPaymentApplications count] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isPaymentHandoffDisabled
{
  v2 = [[NPSDomainAccessor alloc] initWithDomain:@".GlobalPreferences"];
  v3 = [v2 BOOLForKey:PKHandoffPaymentsDisabledKey];

  return v3;
}

- (NSString)deviceClass
{
  v2 = NPKPairedOrPairingDevice();
  v3 = NPKDeviceClassFromDevice();

  return v3;
}

- (PKOSVersionRequirement)deviceVersion
{
  v2 = NPKPairedOrPairingDevice();
  v3 = NPKDeviceOSVersionRequirementFromDevice();

  return v3;
}

- (int64_t)apiVersion
{
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  targetDevice = [paymentSetupDelegate targetDevice];

  if ([targetDevice deviceSupportTransitReminderSetting])
  {
    deviceSupportMultipleExpressPasses = 2;
  }

  else
  {
    deviceSupportMultipleExpressPasses = [targetDevice deviceSupportMultipleExpressPasses];
  }

  return deviceSupportMultipleExpressPasses;
}

- (void)conflictingExpressPassIdentifiersForPassConfiguration:(id)configuration withCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    configurationCopy = configuration;
    paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
    targetDevice = [paymentSetupDelegate targetDevice];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_9868;
    v10[3] = &unk_2CA48;
    v11 = completionCopy;
    [targetDevice conflictingExpressPassIdentifiersForPassConfiguration:configurationCopy completion:v10];
  }
}

- (void)familyMembersWithCompletion:(id)completion
{
  completionCopy = completion;
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  targetDevice = [paymentSetupDelegate targetDevice];
  [targetDevice familyMembersWithCompletion:completionCopy];
}

- (void)photosForFamilyMembersWithDSIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  targetDevice = [paymentSetupDelegate targetDevice];
  [targetDevice photosForFamilyMembersWithDSIDs:dsCopy completion:completionCopy];
}

- (void)featureApplicationsForAccountIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  targetDevice = [paymentSetupDelegate targetDevice];
  [targetDevice featureApplicationsForAccountIdentifier:identifierCopy completion:completionCopy];
}

- (void)cancelAutoTopUpForPassWithUniqueIdentifier:(id)identifier balanceIdentifiers:(id)identifiers completion:(id)completion
{
  completionCopy = completion;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  targetDevice = [paymentSetupDelegate targetDevice];
  [targetDevice cancelAutoTopUpForPassWithUniqueIdentifier:identifierCopy balanceIdentifiers:identifiersCopy completion:completionCopy];
}

- (id)webService
{
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  webService = [paymentSetupDelegate webService];

  return webService;
}

- (PKPaymentWebService)paymentWebService
{
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  webService = [paymentSetupDelegate webService];

  return webService;
}

- (BOOL)deviceSupportsInAppPayments
{
  v2 = NPKPairedOrPairingDevice();
  v3 = v2 != 0;

  return v3;
}

- (BOOL)canRegisterForPeerPayment
{
  if ((PKUseMockSURFServer() & 1) == 0)
  {
    paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
    webService = [paymentSetupDelegate webService];

    paymentSetupDelegate2 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
    peerPaymentWebService = [paymentSetupDelegate2 peerPaymentWebService];

    v8 = NPKPairedOrPairingDevice();
    v9 = [[NSUUID alloc] initWithUUIDString:@"4CAAF5A2-6DD3-43EE-B2D8-C3D8C4997856"];
    v3 = [v8 supportsCapability:v9];

    if (!v3)
    {
LABEL_12:

      return v3;
    }

    v10 = PKPeerPaymentServiceOverrideURL();

    if (v10)
    {
LABEL_5:
      LOBYTE(v3) = 1;
      goto LABEL_12;
    }

    if ([webService needsRegistration])
    {
      context = [webService context];
      configuration = [context configuration];
      targetDevice = [webService targetDevice];
      deviceRegion = [targetDevice deviceRegion];
      LOBYTE(v3) = [configuration peerPaymentEnabledForRegion:deviceRegion];
    }

    else
    {
      if (peerPaymentWebService && ![peerPaymentWebService needsRegistration])
      {
        goto LABEL_5;
      }

      context = [webService targetDevice];
      configuration = [context deviceRegion];
      LOBYTE(v3) = NPKShouldAllowPeerPaymentRegistrationForWebService();
    }

    goto LABEL_12;
  }

  LOBYTE(v3) = 1;
  return v3;
}

- (BOOL)deviceInRestrictedMode
{
  _deviceInRestrictedMode = [(NPKStockholmProvisioningController *)self _deviceInRestrictedMode];
  v4 = _deviceInRestrictedMode;
  [(NPKStockholmProvisioningController *)self setLastProvidedIsRestricted:_deviceInRestrictedMode];
  return v4;
}

- (BOOL)secureElementIsProductionSigned
{
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  webService = [paymentSetupDelegate webService];
  context = [webService context];
  devSigned = [context devSigned];

  return devSigned ^ 1;
}

- (id)_changeExpressStateInstructionViewControllerForEnablingExpressMode:(BOOL)mode paymentCardType:(int64_t)type passLocalizedDescription:(id)description cancellationHandler:(id)handler
{
  modeCopy = mode;
  descriptionCopy = description;
  handlerCopy = handler;
  v12 = objc_alloc_init(NPKSetExpressPassCompanionInstructionViewController);
  [(NPKSetExpressPassCompanionInstructionViewController *)v12 setPaymentCardType:type];
  [(NPKSetExpressPassCompanionInstructionViewController *)v12 setMessageType:!modeCopy];
  [(NPKSetExpressPassCompanionInstructionViewController *)v12 setCardName:descriptionCopy];
  objc_initWeak(&location, v12);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_9F08;
  v15[3] = &unk_2CAE8;
  objc_copyWeak(&v17, &location);
  v15[4] = self;
  v13 = handlerCopy;
  v16 = v13;
  [(NPKBridgeInstructionViewController *)v12 setCancellationHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v12;
}

- (void)_presentInstructionViewController:(id)controller inVisibleViewController:(id)viewController
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A030;
  v7[3] = &unk_2C750;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v5 = viewControllerCopy;
  v6 = controllerCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)_dismissInstructionViewController:(id)controller
{
  navigationController = [controller navigationController];
  presentingViewController = [navigationController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_handleSetExpressPassResult:(unint64_t)result forInstructionViewController:(id)controller
{
  controllerCopy = controller;
  cancellationHandler = [controllerCopy cancellationHandler];
  v7 = cancellationHandler;
  if (!cancellationHandler)
  {
    cancellationHandler = &stru_2CB08;
  }

  v8 = objc_retainBlock(cancellationHandler);

  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (result != 1)
  {
    if (result == 3)
    {
      if (v10)
      {
        v13 = pk_Payment_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Notice: setDefaultExpressPassIdentifier unlock required", buf, 2u);
        }
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_A3A0;
      block[3] = &unk_2C6C0;
      v19 = controllerCopy;
      dispatch_async(&_dispatch_main_q, block);
      v14 = v19;
    }

    else
    {
      if (result == 2)
      {
        if (v10)
        {
          v11 = pk_Payment_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v12 = "Notice: setDefaultExpressPassIdentifier cancelled handler called";
LABEL_17:
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
            goto LABEL_18;
          }

          goto LABEL_18;
        }

        goto LABEL_19;
      }

      if (v10)
      {
        v15 = pk_Payment_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Notice: setDefaultExpressPassIdentifier error handler called", buf, 2u);
        }
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_A3A8;
      v16[3] = &unk_2C6C0;
      v17 = controllerCopy;
      dispatch_async(&_dispatch_main_q, v16);
      v14 = v17;
    }

    goto LABEL_26;
  }

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Notice: setDefaultExpressPassIdentifier success handler called";
      goto LABEL_17;
    }

LABEL_18:
  }

LABEL_19:
  v8->invoke(v8);
LABEL_26:
}

- (void)setExpressWithPassConfiguration:(id)configuration visibleViewController:(id)controller requiresAuth:(BOOL)auth completion:(id)completion
{
  authCopy = auth;
  configurationCopy = configuration;
  controllerCopy = controller;
  completionCopy = completion;
  passInformation = [configurationCopy passInformation];
  passUniqueIdentifier = [passInformation passUniqueIdentifier];
  expressMode = [passInformation expressMode];
  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_Payment_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = passUniqueIdentifier;
      *&buf[12] = 2112;
      *&buf[14] = expressMode;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Notice: Request to set express pass with Unique Identifier: %@ expressMode: %@", buf, 0x16u);
    }
  }

  v17 = passUniqueIdentifier != 0;
  if (passUniqueIdentifier)
  {
    paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
    v19 = [paymentSetupDelegate passWithUniqueID:passUniqueIdentifier];
  }

  else
  {
    v19 = 0;
  }

  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v50 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v52 = sub_A894;
  v53 = sub_A8A4;
  v54 = 0;
  if ([passInformation cardType] == &dword_0 + 2)
  {
    v20 = NPKPairedDeviceExpressPassConfigurationWithCardType();
    v21 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v20;
  }

  else
  {
    v21 = [(NPKStockholmProvisioningController *)self _currentExpressPassConfigurationForUniqueID:passUniqueIdentifier];
    if (v21)
    {
      [NSSet setWithObject:v21];
    }

    else
    {
      +[NSSet set];
    }
    v22 = ;
    v23 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v22;
  }

  anyObject = [*(*&buf[8] + 40) anyObject];

  if (anyObject)
  {
    anyObject2 = [*(*&buf[8] + 40) anyObject];
    if (![anyObject2 isNFCExpressEnabled] || objc_msgSend(configurationCopy, "isNFCExpressEnabled"))
    {
      if (![anyObject2 isUWBExpressEnabled])
      {
LABEL_21:

        goto LABEL_22;
      }

      isUWBExpressEnabled = [configurationCopy isUWBExpressEnabled];
      if (isUWBExpressEnabled)
      {
        v17 = isUWBExpressEnabled & (passUniqueIdentifier != 0);
        goto LABEL_21;
      }
    }

    v17 = 0;
    authCopy = 0;
    goto LABEL_21;
  }

LABEL_22:
  cardType = [passInformation cardType];
  localizedDescription = [v19 localizedDescription];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_A8AC;
  v41[3] = &unk_2CB30;
  v44 = v49;
  v29 = completionCopy;
  v45 = v47;
  v46 = buf;
  v43 = v29;
  v41[4] = self;
  v30 = expressMode;
  v42 = v30;
  v31 = [(NPKStockholmProvisioningController *)self _changeExpressStateInstructionViewControllerForEnablingExpressMode:v17 paymentCardType:cardType passLocalizedDescription:localizedDescription cancellationHandler:v41];

  [(NPKStockholmProvisioningController *)self _presentInstructionViewController:v31 inVisibleViewController:controllerCopy];
  paymentSetupDelegate2 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  targetDevice = [paymentSetupDelegate2 targetDevice];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_A9B8;
  v37[3] = &unk_2CB80;
  v39 = buf;
  v37[4] = self;
  v40 = v47;
  v34 = v31;
  v38 = v34;
  [targetDevice setExpressWithPassConfiguration:configurationCopy requestAuthorization:authCopy completion:v37];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);
}

- (void)removeExpressPassesWithUniqueIdentifiers:(id)identifiers visibleViewController:(id)controller completion:(id)completion
{
  identifiersCopy = identifiers;
  controllerCopy = controller;
  completionCopy = completion;
  v9 = pk_Payment_log();
  LODWORD(controller) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (controller)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifiersCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Request to remove express passes with unique identifiers: %@ using ExpressPassConfiguration", &buf, 0xCu);
    }
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = identifiersCopy;
  v44 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v44)
  {
    v42 = *v58;
    *&v11 = 138412290;
    v39 = v11;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v58 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v57 + 1) + 8 * i);
        v14 = [(NPKStockholmProvisioningController *)self _currentExpressPassConfigurationForUniqueID:v13, v39];
        if (v14)
        {
          expressPassConfigurations = [(NPKStockholmProvisioningController *)self expressPassConfigurations];
          *&buf = 0;
          *(&buf + 1) = &buf;
          v64 = 0x2020000000;
          v65 = 0;
          if (v13)
          {
            paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
            v45 = [paymentSetupDelegate passWithUniqueID:v13];
          }

          else
          {
            v45 = 0;
          }

          passInformation = [v14 passInformation];
          cardType = [passInformation cardType];

          localizedDescription = [v45 localizedDescription];
          if (cardType == &dword_0 + 1)
          {
            v23 = 3;
          }

          else
          {
            v23 = cardType;
          }

          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_B230;
          v53[3] = &unk_2CBA8;
          p_buf = &buf;
          v24 = completionCopy;
          v55 = v24;
          v25 = expressPassConfigurations;
          v54 = v25;
          v26 = [(NPKStockholmProvisioningController *)self _changeExpressStateInstructionViewControllerForEnablingExpressMode:0 paymentCardType:v23 passLocalizedDescription:localizedDescription cancellationHandler:v53];

          [(NPKStockholmProvisioningController *)self _presentInstructionViewController:v26 inVisibleViewController:controllerCopy];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_B2FC;
          v48[3] = &unk_2CBD0;
          v52 = &buf;
          v48[4] = self;
          v27 = v25;
          v49 = v27;
          v51 = v24;
          v28 = v26;
          v50 = v28;
          v29 = objc_retainBlock(v48);
          paymentSetupDelegate2 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
          targetDevice = [paymentSetupDelegate2 targetDevice];

          if (NPKIsPairedDeviceStandalone())
          {
            [targetDevice removeExpressPassWithUniqueIdentifier:v13 completion:v29];
          }

          else
          {
            passInformation2 = [v14 passInformation];
            expressMode = [passInformation2 expressMode];

            v34 = pk_Payment_log();
            v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

            if (v35)
            {
              v36 = pk_Payment_log();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *v61 = v39;
                v62 = expressMode;
                _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Notice: Matched unique ID to express mode %@", v61, 0xCu);
              }
            }

            v37 = [[PKExpressPassInformation alloc] initForExpressMode:expressMode withPassUniqueIdentifier:0 paymentApplicationIdentifier:0];
            if (v37)
            {
              v38 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v37 isNFCExpressEnabled:1 isUWBExpressEnabled:0];
              v46[0] = _NSConcreteStackBlock;
              v46[1] = 3221225472;
              v46[2] = sub_B4B4;
              v46[3] = &unk_2CBF8;
              v47 = v29;
              [targetDevice setExpressWithPassConfiguration:v38 requestAuthorization:0 completion:v46];
            }

            else
            {
              v38 = +[NSSet set];
              (v29[2])(v29, 0, v38);
            }
          }

          _Block_object_dispose(&buf, 8);
        }

        else
        {
          v17 = pk_Payment_log();
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

          if (v18)
          {
            v19 = pk_Payment_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = v39;
              *(&buf + 4) = v13;
              _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Notice: No current express pass information for unique ID %@", &buf, 0xCu);
            }
          }

          (*(completionCopy + 2))(completionCopy, 1, 0);
        }
      }

      v44 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v44);
  }
}

- (void)startServiceModeForPassWithUniqueIdentifier:(id)identifier visibleViewController:(id)controller
{
  identifierCopy = identifier;
  controllerCopy = controller;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = identifierCopy;
      v26 = 2112;
      v27 = controllerCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Bridge got request to turn on service mode for pass %@; visible view controller %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_alloc_init(NPKEnableTransitServiceModeInstructionViewController);
    v12 = [[UINavigationController alloc] initWithRootViewController:v11];
    navigationBar = [v12 navigationBar];
    BPSApplyStyleToNavBar();

    v14 = controllerCopy;
    [v14 presentViewController:v12 animated:1 completion:0];
    objc_initWeak(buf, v11);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_B790;
    v22[3] = &unk_2CC20;
    objc_copyWeak(&v23, buf);
    v22[4] = self;
    [(NPKBridgeInstructionViewController *)v11 setCancellationHandler:v22];
    paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
    targetDevice = [paymentSetupDelegate targetDevice];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_B83C;
    v19[3] = &unk_2CC70;
    v17 = v11;
    v20 = v17;
    v18 = v14;
    v21 = v18;
    [targetDevice enableServiceModeForPassWithUniqueIdentifier:identifierCopy completion:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

- (void)passUpgradeWithRequest:(id)request pass:(id)pass visibleViewController:(id)controller completion:(id)completion
{
  requestCopy = request;
  passCopy = pass;
  controllerCopy = controller;
  completionCopy = completion;
  v14 = pk_General_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_General_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412546;
      *&buf[4] = uniqueID;
      *&buf[12] = 2112;
      *&buf[14] = controllerCopy;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Notice: Bridge got request to upgrade pass with uniqueID:%@ visisble view controller:%@", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v50 = 0;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_BD54;
  v46[3] = &unk_2CC98;
  v18 = completionCopy;
  v47 = v18;
  v48 = buf;
  v19 = objc_retainBlock(v46);
  v20 = objc_alloc_init(NPKSetExpressPassCompanionInstructionViewController);
  objc_initWeak(&location, v20);
  -[NPKSetExpressPassCompanionInstructionViewController setPaymentCardType:](v20, "setPaymentCardType:", [passCopy cardType]);
  [(NPKSetExpressPassCompanionInstructionViewController *)v20 setMessageType:0];
  localizedDescription = [passCopy localizedDescription];
  [(NPKSetExpressPassCompanionInstructionViewController *)v20 setCardName:localizedDescription];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_BE40;
  v39[3] = &unk_2CCC0;
  v22 = passCopy;
  v40 = v22;
  v23 = v19;
  v43 = v23;
  objc_copyWeak(&v44, &location);
  selfCopy = self;
  v31 = requestCopy;
  v42 = v31;
  [(NPKBridgeInstructionViewController *)v20 setCancellationHandler:v39];
  [(NPKStockholmProvisioningController *)self _presentInstructionViewController:v20 inVisibleViewController:controllerCopy];
  v24 = controllerCopy;
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  targetDevice = [paymentSetupDelegate targetDevice];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_BFE4;
  v32[3] = &unk_2CD38;
  v27 = v22;
  v33 = v27;
  objc_copyWeak(&v38, &location);
  v28 = v24;
  v34 = v28;
  selfCopy2 = self;
  v29 = v18;
  v36 = v29;
  v30 = v23;
  v37 = v30;
  [targetDevice remotePassUpgradeWithRequest:v31 pass:v27 requireAuthorization:1 notifyUserOnPairedDevice:0 updateBlock:v32];

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v44);

  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);
}

- (NSString)deviceName
{
  v2 = NPKPairedOrPairingDevice();
  v3 = [v2 valueForProperty:NRDevicePropertyName];

  return v3;
}

- (BOOL)hasFelicaSecureElement
{
  v2 = NPKPairedOrPairingDevice();
  v3 = [[NSUUID alloc] initWithUUIDString:@"6C4614A2-1ECC-4405-9FEE-B5F0A5666961"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

- (BOOL)supportsAddingPaymentPass:(id)pass
{
  passCopy = pass;
  devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
  [devicePrimaryPaymentApplication paymentNetworkIdentifier];

  if (!NPKPairedOrPairingDeviceSupportsCredentialType())
  {
LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  if ([passCopy isStoredValuePass])
  {
    v5 = NPKPairedDeviceSecureElementIdentifiers();
    v6 = [v5 count];

    if (v6 == &dword_0 + 2)
    {
      if ([passCopy isSuicaPass])
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        paymentApplications = [passCopy paymentApplications];
        v8 = [paymentApplications countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (!v8)
        {
          v14 = 1;
          goto LABEL_26;
        }

        v9 = v8;
        v10 = *v23;
LABEL_7:
        v11 = 0;
        while (1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(paymentApplications);
          }

          supportedTransitNetworkIdentifiers = [*(*(&v22 + 1) + 8 * v11) supportedTransitNetworkIdentifiers];
          v13 = [supportedTransitNetworkIdentifiers containsObject:@"transit.felica.suica"];

          if ((v13 & 1) == 0)
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [paymentApplications countByEnumeratingWithState:&v22 objects:v28 count:16];
            v14 = 1;
            if (v9)
            {
              goto LABEL_7;
            }

            goto LABEL_26;
          }
        }

        v19 = pk_Payment_log();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

        if (!v20)
        {
          goto LABEL_24;
        }

        uniqueID2 = pk_Payment_log();
        if (os_log_type_enabled(uniqueID2, OS_LOG_TYPE_DEFAULT))
        {
          uniqueID = [passCopy uniqueID];
          *buf = 138412290;
          v27 = uniqueID;
          _os_log_impl(&dword_0, uniqueID2, OS_LOG_TYPE_DEFAULT, "Notice: Adding non-Suica payment pass to dualSE Apple Watch not supported for pass with uniqueID: %@", buf, 0xCu);
        }

        goto LABEL_23;
      }

      v15 = pk_Payment_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        paymentApplications = pk_Payment_log();
        if (!os_log_type_enabled(paymentApplications, OS_LOG_TYPE_DEFAULT))
        {
LABEL_24:
          v14 = 0;
LABEL_26:

          goto LABEL_19;
        }

        uniqueID2 = [passCopy uniqueID];
        *buf = 138412290;
        v27 = uniqueID2;
        _os_log_impl(&dword_0, paymentApplications, OS_LOG_TYPE_DEFAULT, "Notice: Adding non-Suica payment pass to dualSE Apple Watch not supported for pass with uniqueID: %@", buf, 0xCu);
LABEL_23:

        goto LABEL_24;
      }

      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_19:

  return v14;
}

- (id)setupBrowsableProductTypesForDevice
{
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  webService = [paymentSetupDelegate webService];

  targetDevice = [webService targetDevice];
  deviceRegion = [targetDevice deviceRegion];

  context = [webService context];
  configuration = [context configuration];
  v8 = [configuration paymentSetupBrowsableProductTypesForRegion:deviceRegion];

  return v8;
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableTransactionService:(BOOL)service
{
  serviceCopy = service;
  identifierCopy = identifier;
  v7 = @"disabled";
  if (serviceCopy)
  {
    v7 = @"enabled";
  }

  v8 = v7;
  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_Payment_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = identifierCopy;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: pass with unique ID %@ %@ transaction service", buf, 0x16u);
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_CDB8;
  v14[3] = &unk_2CD60;
  v15 = v8;
  v16 = identifierCopy;
  v17 = serviceCopy;
  v12 = identifierCopy;
  v13 = v8;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v14];
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = transactionCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: transaction source identifier %@ received transaction %@", buf, 0x16u);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_D034;
  v13[3] = &unk_2CD88;
  v14 = identifierCopy;
  v15 = transactionCopy;
  v11 = transactionCopy;
  v12 = identifierCopy;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v13];
}

- (void)transactionSourceIdentifier:(id)identifier didRemoveTransactionWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = withIdentifierCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: transaction source identifier %@ removed transaction with identifier %@", buf, 0x16u);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_D29C;
  v13[3] = &unk_2CD88;
  v14 = identifierCopy;
  v15 = withIdentifierCopy;
  v11 = withIdentifierCopy;
  v12 = identifierCopy;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v13];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithTransitPassProperties:(id)properties
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = propertiesCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: pass with unique ID %@ updated with transit pass properties %@", buf, 0x16u);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_D504;
  v13[3] = &unk_2CD88;
  v14 = propertiesCopy;
  v15 = identifierCopy;
  v11 = identifierCopy;
  v12 = propertiesCopy;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v13];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithBalances:(id)balances
{
  identifierCopy = identifier;
  balancesCopy = balances;
  v8 = pk_Payment_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = balancesCopy;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: pass with unique ID %@ updated with balances %@", buf, 0x16u);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_D78C;
  v13[3] = &unk_2CD88;
  v14 = identifierCopy;
  v15 = balancesCopy;
  v11 = balancesCopy;
  v12 = identifierCopy;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v13];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateBalanceReminder:(id)reminder forBalance:(id)balance
{
  identifierCopy = identifier;
  reminderCopy = reminder;
  balanceCopy = balance;
  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v22 = identifierCopy;
      v23 = 2112;
      v24 = reminderCopy;
      v25 = 2112;
      v26 = balanceCopy;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: pass with unique ID %@ updated with balance reminder %@ balance %@", buf, 0x20u);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_DA20;
  v17[3] = &unk_2CDB0;
  v18 = identifierCopy;
  v19 = reminderCopy;
  v20 = balanceCopy;
  v14 = balanceCopy;
  v15 = reminderCopy;
  v16 = identifierCopy;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v17];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didUpdateWithCredentials:(id)credentials forPaymentApplicationIdentifier:(id)applicationIdentifier
{
  identifierCopy = identifier;
  credentialsCopy = credentials;
  applicationIdentifierCopy = applicationIdentifier;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = credentialsCopy;
      v15 = 2112;
      v16 = identifierCopy;
      v17 = 2112;
      v18 = applicationIdentifierCopy;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: did update with credentials %@ for pass with unique ID %@ paymentApplicationIdentifier %@", &v13, 0x20u);
    }
  }
}

- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = identifierCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: shares did update for pass with unique ID %@", buf, 0xCu);
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_DD9C;
  v9[3] = &unk_2CDD8;
  v10 = identifierCopy;
  v8 = identifierCopy;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v9];
}

- (void)paymentPassWithUniqueIdentifier:(id)identifier didEnableMessageService:(BOOL)service
{
  serviceCopy = service;
  identifierCopy = identifier;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = identifierCopy;
      v16 = 1024;
      v17 = serviceCopy;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: pass with unique ID %@ did enable message service %d", buf, 0x12u);
    }
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_DFEC;
  v11[3] = &unk_2CE00;
  v12 = identifierCopy;
  v13 = serviceCopy;
  v10 = identifierCopy;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v11];
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [PKPaymentProvisioningController alloc];
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  webService = [paymentSetupDelegate webService];
  v8 = [v5 initWithWebService:webService];

  [v8 setIsProvisioningForAltAccount:NPKPairedOrPairingDeviceIsTinker()];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_E158;
  v11[3] = &unk_2CE28;
  v12 = v8;
  v13 = completionCopy;
  v9 = v8;
  v10 = completionCopy;
  [v9 preflightWithCompletion:v11];
}

- (id)setupFeaturedNetworksForDevice
{
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  webService = [paymentSetupDelegate webService];

  targetDevice = [webService targetDevice];
  deviceRegion = [targetDevice deviceRegion];

  context = [webService context];
  configuration = [context configuration];
  v8 = [configuration paymentSetupFeaturedNetworksForRegion:deviceRegion];

  return v8;
}

- (void)preflightForLocalPassWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [PKPaymentProvisioningController alloc];
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  webService = [paymentSetupDelegate webService];
  v8 = [v5 initWithWebService:webService];

  [v8 setIsProvisioningForAltAccount:NPKPairedOrPairingDeviceIsTinker()];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_E3E4;
  v11[3] = &unk_2CE28;
  v12 = v8;
  v13 = completionCopy;
  v9 = v8;
  v10 = completionCopy;
  [v9 validatePreconditionsAndRegister:v11];
}

- (BOOL)isRegistrationSupported
{
  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  webService = [paymentSetupDelegate webService];

  if (webService)
  {
    v4 = [webService paymentSetupSupportedInRegion] != &dword_0 + 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[NSLocale currentLocale];
      localeIdentifier = [v8 localeIdentifier];
      v10 = +[NSLocale currentLocale];
      regionCode = [v10 regionCode];
      v13[0] = 67109634;
      v13[1] = v4;
      v14 = 2112;
      v15 = localeIdentifier;
      v16 = 2112;
      v17 = regionCode;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Registration supported result %d locale %@ country code %@", v13, 0x1Cu);
    }
  }

  return v4;
}

- (void)updateRegionSupportIfNecessary
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Notice: Updating region support", buf, 2u);
    }
  }

  paymentSetupDelegate = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  webService = [paymentSetupDelegate webService];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_E750;
  v9[3] = &unk_2CA20;
  v10 = webService;
  v8 = webService;
  [PKPaymentRegistrationUtilities configureWebServiceIfNecessary:v8 completion:v9];
}

- (BOOL)isSettingsControllerReloadNecessary
{
  _deviceInRestrictedMode = [(NPKStockholmProvisioningController *)self _deviceInRestrictedMode];
  if (_deviceInRestrictedMode != [(NPKStockholmProvisioningController *)self lastProvidedIsRestricted])
  {
    return 1;
  }

  pendingExpressPassesConfigurations = [(NPKStockholmProvisioningController *)self pendingExpressPassesConfigurations];
  v4 = pendingExpressPassesConfigurations == 0;

  return v4;
}

- (BOOL)_deviceInRestrictedMode
{
  v2 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nanopassbook"];
  v3 = pk_General_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = [v2 BOOLForKey:@"InRestrictedMode"];
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Notice: inRestrictedMode %d", v8, 8u);
    }
  }

  v6 = [v2 BOOLForKey:@"InRestrictedMode"];

  return v6;
}

- (void)_accessDelegatesWithHandler:(id)handler
{
  handlerCopy = handler;
  dataProviderDelegates = [(NPKStockholmProvisioningController *)self dataProviderDelegates];
  allObjects = [dataProviderDelegates allObjects];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_E98C;
  v8[3] = &unk_2CE50;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [allObjects enumerateObjectsUsingBlock:v8];
}

- (id)_unlockRequiredTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"EXPRESS_TRANSIT_SET_CARD_UNLOCK_REQUIRED_TITLE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];

  return v3;
}

- (id)_unlockRequiredMessageWithPaymentPass:(id)pass
{
  localizedDescription = [pass localizedDescription];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  if (localizedDescription)
  {
    v5 = [v4 localizedStringForKey:@"EXPRESS_TRANSIT_SET_CARD_UNLOCK_REQUIRED_MESSAGE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
    v6 = [NSString stringWithFormat:v5, localizedDescription];
  }

  else
  {
    v6 = [v4 localizedStringForKey:@"EXPRESS_TRANSIT_SET_CARD_UNLOCK_REQUIRED_MESSAGE_NO_CARD_NAME" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
  }

  return v6;
}

- (id)_errorAcknowledgeButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"EXPRESS_TRANSIT_ERROR_ACKNOWLEDGE_BUTTON_TITLE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];

  return v3;
}

- (id)_errorSetExpressModeTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"EXPRESS_TRANSIT_SET_CARD_ERROR_TITLE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];

  return v3;
}

- (id)_errorSetExpressModeMessageWithPass:(id)pass
{
  localizedDescription = [pass localizedDescription];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  if (localizedDescription)
  {
    v5 = [v4 localizedStringForKey:@"EXPRESS_ACCESS_SET_CARD_ERROR_MESSAGE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
    v6 = [NSString stringWithFormat:v5, localizedDescription];
  }

  else
  {
    v6 = [v4 localizedStringForKey:@"EXPRESS_ACCESS_SET_CARD_ERROR_MESSAGE_NO_CARD_NAME" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
  }

  return v6;
}

- (void)_presentErrorWithTitle:(id)title message:(id)message acknowledgeButtonTitle:(id)buttonTitle visibleViewController:(id)controller dismissBlock:(id)block
{
  titleCopy = title;
  messageCopy = message;
  controllerCopy = controller;
  blockCopy = block;
  buttonTitleCopy = buttonTitle;
  v16 = pk_General_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v29 = titleCopy;
      v30 = 2112;
      v31 = messageCopy;
      v32 = 2112;
      v33 = controllerCopy;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Notice: presenting error with Title:%@ message:%@ visibleViewController:%@", buf, 0x20u);
    }
  }

  v19 = [UIAlertController alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_EF54;
  v24[3] = &unk_2CE78;
  v25 = titleCopy;
  v26 = messageCopy;
  v27 = blockCopy;
  v20 = blockCopy;
  v21 = messageCopy;
  v22 = titleCopy;
  v23 = [UIAlertAction actionWithTitle:buttonTitleCopy style:1 handler:v24];

  [v19 addAction:v23];
  [controllerCopy presentViewController:v19 animated:1 completion:0];
}

- (PKPaymentDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end