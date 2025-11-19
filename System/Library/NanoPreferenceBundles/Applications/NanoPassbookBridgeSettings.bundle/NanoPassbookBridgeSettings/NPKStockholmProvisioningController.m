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
- (BOOL)supportsAddingPaymentPass:(id)a3;
- (BOOL)supportsInAppPaymentsForPass:(id)a3;
- (BOOL)supportsTransactionsForPass:(id)a3;
- (NPKStockholmProvisioningController)initWithPaymentSetupDelegate:(id)a3;
- (NSString)defaultPaymentPassIdentifier;
- (NSString)deviceClass;
- (NSString)deviceName;
- (PKOSVersionRequirement)deviceVersion;
- (PKPaymentDataProviderDelegate)delegate;
- (PKPaymentWebService)paymentWebService;
- (id)_changeExpressStateInstructionViewControllerForEnablingExpressMode:(BOOL)a3 paymentCardType:(int64_t)a4 passLocalizedDescription:(id)a5 cancellationHandler:(id)a6;
- (id)_currentExpressPassConfigurationForUniqueID:(id)a3;
- (id)_errorAcknowledgeButtonTitle;
- (id)_errorSetExpressModeMessageWithPass:(id)a3;
- (id)_errorSetExpressModeTitle;
- (id)_unlockRequiredMessageWithPaymentPass:(id)a3;
- (id)_unlockRequiredTitle;
- (id)defaultPaymentApplicationForPassUniqueIdentifier:(id)a3;
- (id)expressPassConfigurations;
- (id)setupBrowsableProductTypesForDevice;
- (id)setupFeaturedNetworksForDevice;
- (id)webService;
- (int64_t)apiVersion;
- (void)_accessDelegatesWithHandler:(id)a3;
- (void)_dismissInstructionViewController:(id)a3;
- (void)_handleExpressPassesConfigurationChangedNotification:(id)a3;
- (void)_handleSetExpressPassResult:(unint64_t)a3 forInstructionViewController:(id)a4;
- (void)_presentErrorWithTitle:(id)a3 message:(id)a4 acknowledgeButtonTitle:(id)a5 visibleViewController:(id)a6 dismissBlock:(id)a7;
- (void)_presentInstructionViewController:(id)a3 inVisibleViewController:(id)a4;
- (void)balanceReminderThresholdForBalance:(id)a3 pass:(id)a4 withCompletion:(id)a5;
- (void)balancesForPaymentPassWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)cancelAutoTopUpForPassWithUniqueIdentifier:(id)a3 balanceIdentifiers:(id)a4 completion:(id)a5;
- (void)commutePlanReminderForCommutePlan:(id)a3 pass:(id)a4 withCompletion:(id)a5;
- (void)conflictingExpressPassIdentifiersForPassConfiguration:(id)a3 withCompletion:(id)a4;
- (void)deletePaymentTransactionWithIdentifier:(id)a3;
- (void)familyMembersWithCompletion:(id)a3;
- (void)featureApplicationsForAccountIdentifier:(id)a3 completion:(id)a4;
- (void)passUpgradeWithRequest:(id)a3 pass:(id)a4 visibleViewController:(id)a5 completion:(id)a6;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableMessageService:(BOOL)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableTransactionService:(BOOL)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateBalanceReminder:(id)a4 forBalance:(id)a5;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithBalances:(id)a4;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithCredentials:(id)a4 forPaymentApplicationIdentifier:(id)a5;
- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4;
- (void)photosForFamilyMembersWithDSIDs:(id)a3 completion:(id)a4;
- (void)plansForPaymentPassWithUniqueIdentifier:(id)a3 completion:(id)a4;
- (void)preflightForLocalPassWithCompletion:(id)a3;
- (void)preflightWithCompletion:(id)a3;
- (void)removeExpressPassesWithUniqueIdentifiers:(id)a3 visibleViewController:(id)a4 completion:(id)a5;
- (void)setBalanceReminder:(id)a3 forBalance:(id)a4 pass:(id)a5 completion:(id)a6;
- (void)setCommutePlanReminder:(id)a3 forCommutePlan:(id)a4 pass:(id)a5 completion:(id)a6;
- (void)setDefaultPaymentApplication:(id)a3 forPassUniqueIdentifier:(id)a4 completion:(id)a5;
- (void)setDefaultPaymentPassIdentifier:(id)a3;
- (void)setExpressWithPassConfiguration:(id)a3 visibleViewController:(id)a4 requiresAuth:(BOOL)a5 completion:(id)a6;
- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)a3;
- (void)startServiceModeForPassWithUniqueIdentifier:(id)a3 visibleViewController:(id)a4;
- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4;
- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4;
- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 orderedByDate:(int64_t)a8 limit:(int64_t)a9 completion:(id)a10;
- (void)transitStateWithPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4 completion:(id)a5;
- (void)updateRegionSupportIfNecessary;
@end

@implementation NPKStockholmProvisioningController

- (NPKStockholmProvisioningController)initWithPaymentSetupDelegate:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = NPKStockholmProvisioningController;
  v6 = [(NPKStockholmProvisioningController *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentSetupDelegate, a3);
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

- (void)_handleExpressPassesConfigurationChangedNotification:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8390;
  v4[3] = &unk_2C750;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (id)defaultPaymentApplicationForPassUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v6 = [v5 defaultPaymentApplicationForPassWithUniqueID:v4];

  return v6;
}

- (void)setDefaultPaymentApplication:(id)a3 forPassUniqueIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_85DC;
  v13[3] = &unk_2C9F8;
  v14 = v8;
  v12 = v8;
  [v11 setDefaultPaymentApplication:v10 forPassWithUniqueID:v9 completion:v13];
}

- (void)setDefaultPaymentPassIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  [v5 setDefaultPaymentPassIdentifier:v4];
}

- (NSString)defaultPaymentPassIdentifier
{
  v2 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v3 = [v2 defaultPaymentPassIdentifier];

  return v3;
}

- (id)_currentExpressPassConfigurationForUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NPKStockholmProvisioningController *)self expressPassConfigurations];
  v6 = v5;
  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
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
          v12 = [v11 passUniqueIdentifier];
          v13 = [v12 isEqualToString:v4];

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
  v3 = [(NPKStockholmProvisioningController *)self pendingExpressPassesConfigurations];

  if (v3)
  {
    v4 = [(NPKStockholmProvisioningController *)self pendingExpressPassesConfigurations];
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Have pending expressPassesConfigurations, returning: %@", &v9, 0xCu);
      }
    }
  }

  else
  {
    v4 = NPKPairedDeviceCurrentExpressPassConfiguration();
  }

  return v4;
}

- (void)deletePaymentTransactionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Requested to delete transaction with identifier:%@", buf, 0xCu);
    }
  }

  v8 = [(NPKStockholmProvisioningController *)self connection];
  v9 = NPKPairedOrPairingDevice();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_8B40;
  v11[3] = &unk_2CA20;
  v12 = v4;
  v10 = v4;
  [v8 deletePaymentTransactionWithIdentifier:v10 fromDevice:v9 completion:v11];
}

- (void)transitStateWithPassUniqueIdentifier:(id)a3 paymentApplication:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NPKStockholmProvisioningController *)self connection];
  [v11 transitStateWithPassUniqueIdentifier:v10 paymentApplication:v9 completion:v8];
}

- (void)transactionsForTransactionSourceIdentifiers:(id)a3 withTransactionSource:(unint64_t)a4 withBackingData:(unint64_t)a5 startDate:(id)a6 endDate:(id)a7 orderedByDate:(int64_t)a8 limit:(int64_t)a9 completion:(id)a10
{
  v17 = a10;
  v18 = a7;
  v19 = a6;
  v20 = a3;
  v21 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  [v21 transactionsForTransactionSourceIdentifiers:v20 withTransactionSource:a4 withBackingData:a5 startDate:v19 endDate:v18 orderedByDate:a8 limit:a9 completion:v17];
}

- (void)balancesForPaymentPassWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NPKStockholmProvisioningController *)self connection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_8EBC;
  v10[3] = &unk_2CA48;
  v11 = v6;
  v9 = v6;
  [v8 balancesForPaymentPassWithUniqueIdentifier:v7 completion:v10];
}

- (void)balanceReminderThresholdForBalance:(id)a3 pass:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NPKStockholmProvisioningController *)self connection];
  [v11 balanceReminderForBalance:v10 pass:v9 withCompletion:v8];
}

- (void)setBalanceReminder:(id)a3 forBalance:(id)a4 pass:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(NPKStockholmProvisioningController *)self connection];
  [v14 setBalanceReminder:v13 forBalance:v12 pass:v11 completion:v10];
}

- (void)plansForPaymentPassWithUniqueIdentifier:(id)a3 completion:(id)a4
{
  v4 = a4;
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

  if (v4)
  {
    v8 = objc_alloc_init(NSArray);
    v4[2](v4, v8);
  }
}

- (void)commutePlanReminderForCommutePlan:(id)a3 pass:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(NPKStockholmProvisioningController *)self connection];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_91F4;
  v13[3] = &unk_2CA70;
  v14 = v8;
  v12 = v8;
  [v11 commutePlanReminderForCommutePlan:v10 pass:v9 withCompletion:v13];
}

- (void)setCommutePlanReminder:(id)a3 forCommutePlan:(id)a4 pass:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(NPKStockholmProvisioningController *)self connection];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_9304;
  v16[3] = &unk_2CA98;
  v17 = v10;
  v15 = v10;
  [v14 setCommutePlanReminder:v13 forCommutePlan:v12 pass:v11 completion:v16];
}

- (BOOL)supportsTransactionsForPass:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (!NPKIsPairedDeviceStandalone())
  {
    v4 = [v3 paymentPass];
    v5 = [v4 devicePaymentApplications];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_946C;
    v9[3] = &unk_2CAC0;
    v9[4] = &v10;
    [v5 enumerateObjectsUsingBlock:v9];
LABEL_6:

    goto LABEL_7;
  }

  v4 = [v3 secureElementPass];
  if (![v4 isAccessPass])
  {
    v5 = NPKPairedDeviceSecureElementIdentifiers();
    v6 = [v4 isPrecursorPass:v5];
    *(v11 + 24) = v6 ^ 1;
    goto LABEL_6;
  }

  *(v11 + 24) = 0;
LABEL_7:

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (BOOL)supportsInAppPaymentsForPass:(id)a3
{
  v4 = a3;
  if ([(NPKStockholmProvisioningController *)self deviceSupportsInAppPayments])
  {
    v5 = [v4 paymentPass];
    v6 = [v5 deviceInAppPaymentApplications];
    v7 = [v6 count] != 0;
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
  v2 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v3 = [v2 targetDevice];

  if ([v3 deviceSupportTransitReminderSetting])
  {
    v4 = 2;
  }

  else
  {
    v4 = [v3 deviceSupportMultipleExpressPasses];
  }

  return v4;
}

- (void)conflictingExpressPassIdentifiersForPassConfiguration:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
    v9 = [v8 targetDevice];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_9868;
    v10[3] = &unk_2CA48;
    v11 = v6;
    [v9 conflictingExpressPassIdentifiersForPassConfiguration:v7 completion:v10];
  }
}

- (void)familyMembersWithCompletion:(id)a3
{
  v4 = a3;
  v6 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v5 = [v6 targetDevice];
  [v5 familyMembersWithCompletion:v4];
}

- (void)photosForFamilyMembersWithDSIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v8 = [v9 targetDevice];
  [v8 photosForFamilyMembersWithDSIDs:v7 completion:v6];
}

- (void)featureApplicationsForAccountIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v8 = [v9 targetDevice];
  [v8 featureApplicationsForAccountIdentifier:v7 completion:v6];
}

- (void)cancelAutoTopUpForPassWithUniqueIdentifier:(id)a3 balanceIdentifiers:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v11 = [v12 targetDevice];
  [v11 cancelAutoTopUpForPassWithUniqueIdentifier:v10 balanceIdentifiers:v9 completion:v8];
}

- (id)webService
{
  v2 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v3 = [v2 webService];

  return v3;
}

- (PKPaymentWebService)paymentWebService
{
  v2 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v3 = [v2 webService];

  return v3;
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
    v4 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
    v5 = [v4 webService];

    v6 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
    v7 = [v6 peerPaymentWebService];

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

    if ([v5 needsRegistration])
    {
      v11 = [v5 context];
      v12 = [v11 configuration];
      v13 = [v5 targetDevice];
      v14 = [v13 deviceRegion];
      LOBYTE(v3) = [v12 peerPaymentEnabledForRegion:v14];
    }

    else
    {
      if (v7 && ![v7 needsRegistration])
      {
        goto LABEL_5;
      }

      v11 = [v5 targetDevice];
      v12 = [v11 deviceRegion];
      LOBYTE(v3) = NPKShouldAllowPeerPaymentRegistrationForWebService();
    }

    goto LABEL_12;
  }

  LOBYTE(v3) = 1;
  return v3;
}

- (BOOL)deviceInRestrictedMode
{
  v3 = [(NPKStockholmProvisioningController *)self _deviceInRestrictedMode];
  v4 = v3;
  [(NPKStockholmProvisioningController *)self setLastProvidedIsRestricted:v3];
  return v4;
}

- (BOOL)secureElementIsProductionSigned
{
  v2 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v3 = [v2 webService];
  v4 = [v3 context];
  v5 = [v4 devSigned];

  return v5 ^ 1;
}

- (id)_changeExpressStateInstructionViewControllerForEnablingExpressMode:(BOOL)a3 paymentCardType:(int64_t)a4 passLocalizedDescription:(id)a5 cancellationHandler:(id)a6
{
  v8 = a3;
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc_init(NPKSetExpressPassCompanionInstructionViewController);
  [(NPKSetExpressPassCompanionInstructionViewController *)v12 setPaymentCardType:a4];
  [(NPKSetExpressPassCompanionInstructionViewController *)v12 setMessageType:!v8];
  [(NPKSetExpressPassCompanionInstructionViewController *)v12 setCardName:v10];
  objc_initWeak(&location, v12);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_9F08;
  v15[3] = &unk_2CAE8;
  objc_copyWeak(&v17, &location);
  v15[4] = self;
  v13 = v11;
  v16 = v13;
  [(NPKBridgeInstructionViewController *)v12 setCancellationHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v12;
}

- (void)_presentInstructionViewController:(id)a3 inVisibleViewController:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A030;
  v7[3] = &unk_2C750;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)_dismissInstructionViewController:(id)a3
{
  v4 = [a3 navigationController];
  v3 = [v4 presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_handleSetExpressPassResult:(unint64_t)a3 forInstructionViewController:(id)a4
{
  v5 = a4;
  v6 = [v5 cancellationHandler];
  v7 = v6;
  if (!v6)
  {
    v6 = &stru_2CB08;
  }

  v8 = objc_retainBlock(v6);

  v9 = pk_Payment_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (a3 != 1)
  {
    if (a3 == 3)
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
      v19 = v5;
      dispatch_async(&_dispatch_main_q, block);
      v14 = v19;
    }

    else
    {
      if (a3 == 2)
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
      v17 = v5;
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

- (void)setExpressWithPassConfiguration:(id)a3 visibleViewController:(id)a4 requiresAuth:(BOOL)a5 completion:(id)a6
{
  v35 = a5;
  v9 = a3;
  v36 = a4;
  v10 = a6;
  v11 = [v9 passInformation];
  v12 = [v11 passUniqueIdentifier];
  v13 = [v11 expressMode];
  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_Payment_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Notice: Request to set express pass with Unique Identifier: %@ expressMode: %@", buf, 0x16u);
    }
  }

  v17 = v12 != 0;
  if (v12)
  {
    v18 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
    v19 = [v18 passWithUniqueID:v12];
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
  if ([v11 cardType] == &dword_0 + 2)
  {
    v20 = NPKPairedDeviceExpressPassConfigurationWithCardType();
    v21 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v20;
  }

  else
  {
    v21 = [(NPKStockholmProvisioningController *)self _currentExpressPassConfigurationForUniqueID:v12];
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

  v24 = [*(*&buf[8] + 40) anyObject];

  if (v24)
  {
    v25 = [*(*&buf[8] + 40) anyObject];
    if (![v25 isNFCExpressEnabled] || objc_msgSend(v9, "isNFCExpressEnabled"))
    {
      if (![v25 isUWBExpressEnabled])
      {
LABEL_21:

        goto LABEL_22;
      }

      v26 = [v9 isUWBExpressEnabled];
      if (v26)
      {
        v17 = v26 & (v12 != 0);
        goto LABEL_21;
      }
    }

    v17 = 0;
    v35 = 0;
    goto LABEL_21;
  }

LABEL_22:
  v27 = [v11 cardType];
  v28 = [v19 localizedDescription];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_A8AC;
  v41[3] = &unk_2CB30;
  v44 = v49;
  v29 = v10;
  v45 = v47;
  v46 = buf;
  v43 = v29;
  v41[4] = self;
  v30 = v13;
  v42 = v30;
  v31 = [(NPKStockholmProvisioningController *)self _changeExpressStateInstructionViewControllerForEnablingExpressMode:v17 paymentCardType:v27 passLocalizedDescription:v28 cancellationHandler:v41];

  [(NPKStockholmProvisioningController *)self _presentInstructionViewController:v31 inVisibleViewController:v36];
  v32 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v33 = [v32 targetDevice];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_A9B8;
  v37[3] = &unk_2CB80;
  v39 = buf;
  v37[4] = self;
  v40 = v47;
  v34 = v31;
  v38 = v34;
  [v33 setExpressWithPassConfiguration:v9 requestAuthorization:v35 completion:v37];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);
}

- (void)removeExpressPassesWithUniqueIdentifiers:(id)a3 visibleViewController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v41 = a4;
  v43 = a5;
  v9 = pk_Payment_log();
  LODWORD(a4) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (a4)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Request to remove express passes with unique identifiers: %@ using ExpressPassConfiguration", &buf, 0xCu);
    }
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v8;
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
          v15 = [(NPKStockholmProvisioningController *)self expressPassConfigurations];
          *&buf = 0;
          *(&buf + 1) = &buf;
          v64 = 0x2020000000;
          v65 = 0;
          if (v13)
          {
            v16 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
            v45 = [v16 passWithUniqueID:v13];
          }

          else
          {
            v45 = 0;
          }

          v20 = [v14 passInformation];
          v21 = [v20 cardType];

          v22 = [v45 localizedDescription];
          if (v21 == &dword_0 + 1)
          {
            v23 = 3;
          }

          else
          {
            v23 = v21;
          }

          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_B230;
          v53[3] = &unk_2CBA8;
          p_buf = &buf;
          v24 = v43;
          v55 = v24;
          v25 = v15;
          v54 = v25;
          v26 = [(NPKStockholmProvisioningController *)self _changeExpressStateInstructionViewControllerForEnablingExpressMode:0 paymentCardType:v23 passLocalizedDescription:v22 cancellationHandler:v53];

          [(NPKStockholmProvisioningController *)self _presentInstructionViewController:v26 inVisibleViewController:v41];
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
          v30 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
          v31 = [v30 targetDevice];

          if (NPKIsPairedDeviceStandalone())
          {
            [v31 removeExpressPassWithUniqueIdentifier:v13 completion:v29];
          }

          else
          {
            v32 = [v14 passInformation];
            v33 = [v32 expressMode];

            v34 = pk_Payment_log();
            v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

            if (v35)
            {
              v36 = pk_Payment_log();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *v61 = v39;
                v62 = v33;
                _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Notice: Matched unique ID to express mode %@", v61, 0xCu);
              }
            }

            v37 = [[PKExpressPassInformation alloc] initForExpressMode:v33 withPassUniqueIdentifier:0 paymentApplicationIdentifier:0];
            if (v37)
            {
              v38 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v37 isNFCExpressEnabled:1 isUWBExpressEnabled:0];
              v46[0] = _NSConcreteStackBlock;
              v46[1] = 3221225472;
              v46[2] = sub_B4B4;
              v46[3] = &unk_2CBF8;
              v47 = v29;
              [v31 setExpressWithPassConfiguration:v38 requestAuthorization:0 completion:v46];
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

          (*(v43 + 2))(v43, 1, 0);
        }
      }

      v44 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v44);
  }
}

- (void)startServiceModeForPassWithUniqueIdentifier:(id)a3 visibleViewController:(id)a4
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
      *buf = 138412546;
      v25 = v6;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Bridge got request to turn on service mode for pass %@; visible view controller %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_alloc_init(NPKEnableTransitServiceModeInstructionViewController);
    v12 = [[UINavigationController alloc] initWithRootViewController:v11];
    v13 = [v12 navigationBar];
    BPSApplyStyleToNavBar();

    v14 = v7;
    [v14 presentViewController:v12 animated:1 completion:0];
    objc_initWeak(buf, v11);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_B790;
    v22[3] = &unk_2CC20;
    objc_copyWeak(&v23, buf);
    v22[4] = self;
    [(NPKBridgeInstructionViewController *)v11 setCancellationHandler:v22];
    v15 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
    v16 = [v15 targetDevice];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_B83C;
    v19[3] = &unk_2CC70;
    v17 = v11;
    v20 = v17;
    v18 = v14;
    v21 = v18;
    [v16 enableServiceModeForPassWithUniqueIdentifier:v6 completion:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

- (void)passUpgradeWithRequest:(id)a3 pass:(id)a4 visibleViewController:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = pk_General_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = pk_General_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v11 uniqueID];
      *buf = 138412546;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v12;
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
  v18 = v13;
  v47 = v18;
  v48 = buf;
  v19 = objc_retainBlock(v46);
  v20 = objc_alloc_init(NPKSetExpressPassCompanionInstructionViewController);
  objc_initWeak(&location, v20);
  -[NPKSetExpressPassCompanionInstructionViewController setPaymentCardType:](v20, "setPaymentCardType:", [v11 cardType]);
  [(NPKSetExpressPassCompanionInstructionViewController *)v20 setMessageType:0];
  v21 = [v11 localizedDescription];
  [(NPKSetExpressPassCompanionInstructionViewController *)v20 setCardName:v21];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_BE40;
  v39[3] = &unk_2CCC0;
  v22 = v11;
  v40 = v22;
  v23 = v19;
  v43 = v23;
  objc_copyWeak(&v44, &location);
  v41 = self;
  v31 = v10;
  v42 = v31;
  [(NPKBridgeInstructionViewController *)v20 setCancellationHandler:v39];
  [(NPKStockholmProvisioningController *)self _presentInstructionViewController:v20 inVisibleViewController:v12];
  v24 = v12;
  v25 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v26 = [v25 targetDevice];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_BFE4;
  v32[3] = &unk_2CD38;
  v27 = v22;
  v33 = v27;
  objc_copyWeak(&v38, &location);
  v28 = v24;
  v34 = v28;
  v35 = self;
  v29 = v18;
  v36 = v29;
  v30 = v23;
  v37 = v30;
  [v26 remotePassUpgradeWithRequest:v31 pass:v27 requireAuthorization:1 notifyUserOnPairedDevice:0 updateBlock:v32];

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

- (BOOL)supportsAddingPaymentPass:(id)a3
{
  v3 = a3;
  v4 = [v3 devicePrimaryPaymentApplication];
  [v4 paymentNetworkIdentifier];

  if (!NPKPairedOrPairingDeviceSupportsCredentialType())
  {
LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  if ([v3 isStoredValuePass])
  {
    v5 = NPKPairedDeviceSecureElementIdentifiers();
    v6 = [v5 count];

    if (v6 == &dword_0 + 2)
    {
      if ([v3 isSuicaPass])
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v7 = [v3 paymentApplications];
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v22 + 1) + 8 * v11) supportedTransitNetworkIdentifiers];
          v13 = [v12 containsObject:@"transit.felica.suica"];

          if ((v13 & 1) == 0)
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
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

        v17 = pk_Payment_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v3 uniqueID];
          *buf = 138412290;
          v27 = v21;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Notice: Adding non-Suica payment pass to dualSE Apple Watch not supported for pass with uniqueID: %@", buf, 0xCu);
        }

        goto LABEL_23;
      }

      v15 = pk_Payment_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

      if (v16)
      {
        v7 = pk_Payment_log();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
LABEL_24:
          v14 = 0;
LABEL_26:

          goto LABEL_19;
        }

        v17 = [v3 uniqueID];
        *buf = 138412290;
        v27 = v17;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Adding non-Suica payment pass to dualSE Apple Watch not supported for pass with uniqueID: %@", buf, 0xCu);
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
  v2 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v3 = [v2 webService];

  v4 = [v3 targetDevice];
  v5 = [v4 deviceRegion];

  v6 = [v3 context];
  v7 = [v6 configuration];
  v8 = [v7 paymentSetupBrowsableProductTypesForRegion:v5];

  return v8;
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableTransactionService:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = @"disabled";
  if (v4)
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
      v19 = v6;
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
  v16 = v6;
  v17 = v4;
  v12 = v6;
  v13 = v8;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v14];
}

- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4
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
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: transaction source identifier %@ received transaction %@", buf, 0x16u);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_D034;
  v13[3] = &unk_2CD88;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v13];
}

- (void)transactionSourceIdentifier:(id)a3 didRemoveTransactionWithIdentifier:(id)a4
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
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: transaction source identifier %@ removed transaction with identifier %@", buf, 0x16u);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_D29C;
  v13[3] = &unk_2CD88;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v13];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithTransitPassProperties:(id)a4
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
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: pass with unique ID %@ updated with transit pass properties %@", buf, 0x16u);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_D504;
  v13[3] = &unk_2CD88;
  v14 = v7;
  v15 = v6;
  v11 = v6;
  v12 = v7;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v13];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithBalances:(id)a4
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
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: pass with unique ID %@ updated with balances %@", buf, 0x16u);
    }
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_D78C;
  v13[3] = &unk_2CD88;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v13];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateBalanceReminder:(id)a4 forBalance:(id)a5
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
      *buf = 138412802;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: pass with unique ID %@ updated with balance reminder %@ balance %@", buf, 0x20u);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_DA20;
  v17[3] = &unk_2CDB0;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v17];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didUpdateWithCredentials:(id)a4 forPaymentApplicationIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412802;
      v14 = v8;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: did update with credentials %@ for pass with unique ID %@ paymentApplicationIdentifier %@", &v13, 0x20u);
    }
  }
}

- (void)sharesDidUpdateWithPaymentPassWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: shares did update for pass with unique ID %@", buf, 0xCu);
    }
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_DD9C;
  v9[3] = &unk_2CDD8;
  v10 = v4;
  v8 = v4;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v9];
}

- (void)paymentPassWithUniqueIdentifier:(id)a3 didEnableMessageService:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v6;
      v16 = 1024;
      v17 = v4;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Notice: Provisioning controller: pass with unique ID %@ did enable message service %d", buf, 0x12u);
    }
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_DFEC;
  v11[3] = &unk_2CE00;
  v12 = v6;
  v13 = v4;
  v10 = v6;
  [(NPKStockholmProvisioningController *)self _accessDelegatesWithHandler:v11];
}

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [PKPaymentProvisioningController alloc];
  v6 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v7 = [v6 webService];
  v8 = [v5 initWithWebService:v7];

  [v8 setIsProvisioningForAltAccount:NPKPairedOrPairingDeviceIsTinker()];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_E158;
  v11[3] = &unk_2CE28;
  v12 = v8;
  v13 = v4;
  v9 = v8;
  v10 = v4;
  [v9 preflightWithCompletion:v11];
}

- (id)setupFeaturedNetworksForDevice
{
  v2 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v3 = [v2 webService];

  v4 = [v3 targetDevice];
  v5 = [v4 deviceRegion];

  v6 = [v3 context];
  v7 = [v6 configuration];
  v8 = [v7 paymentSetupFeaturedNetworksForRegion:v5];

  return v8;
}

- (void)preflightForLocalPassWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [PKPaymentProvisioningController alloc];
  v6 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v7 = [v6 webService];
  v8 = [v5 initWithWebService:v7];

  [v8 setIsProvisioningForAltAccount:NPKPairedOrPairingDeviceIsTinker()];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_E3E4;
  v11[3] = &unk_2CE28;
  v12 = v8;
  v13 = v4;
  v9 = v8;
  v10 = v4;
  [v9 validatePreconditionsAndRegister:v11];
}

- (BOOL)isRegistrationSupported
{
  v2 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v3 = [v2 webService];

  if (v3)
  {
    v4 = [v3 paymentSetupSupportedInRegion] != &dword_0 + 2;
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
      v9 = [v8 localeIdentifier];
      v10 = +[NSLocale currentLocale];
      v11 = [v10 regionCode];
      v13[0] = 67109634;
      v13[1] = v4;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
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

  v6 = [(NPKStockholmProvisioningController *)self paymentSetupDelegate];
  v7 = [v6 webService];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_E750;
  v9[3] = &unk_2CA20;
  v10 = v7;
  v8 = v7;
  [PKPaymentRegistrationUtilities configureWebServiceIfNecessary:v8 completion:v9];
}

- (BOOL)isSettingsControllerReloadNecessary
{
  v3 = [(NPKStockholmProvisioningController *)self _deviceInRestrictedMode];
  if (v3 != [(NPKStockholmProvisioningController *)self lastProvidedIsRestricted])
  {
    return 1;
  }

  v5 = [(NPKStockholmProvisioningController *)self pendingExpressPassesConfigurations];
  v4 = v5 == 0;

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

- (void)_accessDelegatesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(NPKStockholmProvisioningController *)self dataProviderDelegates];
  v6 = [v5 allObjects];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_E98C;
  v8[3] = &unk_2CE50;
  v9 = v4;
  v7 = v4;
  [v6 enumerateObjectsUsingBlock:v8];
}

- (id)_unlockRequiredTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"EXPRESS_TRANSIT_SET_CARD_UNLOCK_REQUIRED_TITLE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];

  return v3;
}

- (id)_unlockRequiredMessageWithPaymentPass:(id)a3
{
  v3 = [a3 localizedDescription];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  if (v3)
  {
    v5 = [v4 localizedStringForKey:@"EXPRESS_TRANSIT_SET_CARD_UNLOCK_REQUIRED_MESSAGE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
    v6 = [NSString stringWithFormat:v5, v3];
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

- (id)_errorSetExpressModeMessageWithPass:(id)a3
{
  v3 = [a3 localizedDescription];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  if (v3)
  {
    v5 = [v4 localizedStringForKey:@"EXPRESS_ACCESS_SET_CARD_ERROR_MESSAGE" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
    v6 = [NSString stringWithFormat:v5, v3];
  }

  else
  {
    v6 = [v4 localizedStringForKey:@"EXPRESS_ACCESS_SET_CARD_ERROR_MESSAGE_NO_CARD_NAME" value:&stru_2D300 table:@"NanoPassbookBridgeSettings-Companion_ICE"];
  }

  return v6;
}

- (void)_presentErrorWithTitle:(id)a3 message:(id)a4 acknowledgeButtonTitle:(id)a5 visibleViewController:(id)a6 dismissBlock:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = a5;
  v16 = pk_General_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Notice: presenting error with Title:%@ message:%@ visibleViewController:%@", buf, 0x20u);
    }
  }

  v19 = [UIAlertController alertControllerWithTitle:v11 message:v12 preferredStyle:1];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_EF54;
  v24[3] = &unk_2CE78;
  v25 = v11;
  v26 = v12;
  v27 = v14;
  v20 = v14;
  v21 = v12;
  v22 = v11;
  v23 = [UIAlertAction actionWithTitle:v15 style:1 handler:v24];

  [v19 addAction:v23];
  [v13 presentViewController:v19 animated:1 completion:0];
}

- (PKPaymentDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end