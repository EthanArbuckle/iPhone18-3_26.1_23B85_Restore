@interface WirelessModemBundleController
- (WirelessModemBundleController)initWithParentListController:(id)controller;
- (id)_specifiersWithSpecifierMain:(id)main;
- (id)getTetheringStatus:(id)status;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)MISStateChangedNotification:(id)notification;
- (void)dealloc;
- (void)showSetupAlert:(id)alert;
- (void)updateSpecifiersForState:(int)state andReason:(int)reason andButton:(id)button;
@end

@implementation WirelessModemBundleController

- (WirelessModemBundleController)initWithParentListController:(id)controller
{
  v33.receiver = self;
  v33.super_class = WirelessModemBundleController;
  v3 = [(WirelessModemBundleController *)&v33 initWithParentListController:controller];
  if (!v3)
  {
LABEL_28:
    v27 = v3;
    goto LABEL_29;
  }

  if (MGGetBoolAnswer())
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_MISStateChangedNotification_ name:@"MISManagerStateChangedNotification" object:0];

    v5 = WiFiManagerClientCreate();
    if (v5)
    {
      v6 = v5;
      v3->_wifiTetheringSupported = WiFiManagerClientIsTetheringSupported() != 0;
      CFRelease(v6);
    }

    v7 = objc_alloc_init(MEMORY[0x277CC37B0]);
    v8 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
    v32 = 0;
    v9 = [v7 getCurrentDataSubscriptionContextSync:&v32];
    v10 = v32;
    if (v10)
    {
      v11 = v10;
      v12 = WMSLogComponent();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [WirelessModemBundleController initWithParentListController:];
      }
    }

    v31 = 0;
    v13 = [v7 copyCarrierBundleValue:v9 key:@"CarrierName" bundleType:v8 error:&v31];
    v14 = v31;
    carrierName = v3->_carrierName;
    v3->_carrierName = v13;

    if (v14)
    {
      v16 = WMSLogComponent();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [WirelessModemBundleController initWithParentListController:];
      }
    }

    v30 = 0;
    v17 = [v7 copyCarrierBundleValue:v9 key:@"TetheringURL" bundleType:v8 error:&v30];
    v18 = v30;
    tetheringURL = v3->_tetheringURL;
    v3->_tetheringURL = v17;

    if (v18)
    {
      v20 = WMSLogComponent();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [WirelessModemBundleController initWithParentListController:];
      }
    }

    v29 = 0;
    v21 = [v7 copyCarrierBundleValue:v9 key:@"TetheringPhoneNumber" bundleType:v8 error:&v29];
    v22 = v29;
    tetheringPhoneNumber = v3->_tetheringPhoneNumber;
    v3->_tetheringPhoneNumber = v21;

    if (v22)
    {
      v24 = WMSLogComponent();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [WirelessModemBundleController initWithParentListController:];
      }
    }

    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v25 = +[MISManager sharedManager];
      [v25 authenticate];
    }

    else
    {
      dispatch_sync(MEMORY[0x277D85CD0], &__block_literal_global_0);
    }

    goto LABEL_28;
  }

  v26 = WMSLogComponent();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [WirelessModemBundleController initWithParentListController:];
  }

  v27 = 0;
LABEL_29:

  return v27;
}

void __62__WirelessModemBundleController_initWithParentListController___block_invoke()
{
  v0 = +[MISManager sharedManager];
  [v0 authenticate];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(UIAlertController *)self->_tetheringAlert dismissViewControllerAnimated:1 completion:0];
  v4.receiver = self;
  v4.super_class = WirelessModemBundleController;
  [(WirelessModemBundleController *)&v4 dealloc];
}

- (void)MISStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__WirelessModemBundleController_MISStateChangedNotification___block_invoke;
  v6[3] = &unk_278BB50C8;
  v7 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __61__WirelessModemBundleController_MISStateChangedNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"State"];
  v4 = [v3 unsignedIntValue];

  v5 = [*(a1 + 32) userInfo];
  v6 = [v5 objectForKeyedSubscript:@"Reason"];
  v7 = [v6 unsignedIntValue];

  v8 = [*(a1 + 32) userInfo];
  v9 = [v8 objectForKeyedSubscript:@"PreviousState"];
  v10 = [v9 unsignedIntValue];

  if (v10 == 1020)
  {
    if (v4 < 0x3FD)
    {
      return;
    }

    v11 = WMSLogComponent();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __61__WirelessModemBundleController_MISStateChangedNotification___block_invoke_cold_3();
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + *MEMORY[0x277D3FBE0]));
    [WeakRetained reloadSpecifiers];
    goto LABEL_14;
  }

  if (v4 != 1020)
  {
    if (![*(*(a1 + 40) + 48) count])
    {
      goto LABEL_15;
    }

    v15 = *(a1 + 40);
    v16 = [v15[6] objectAtIndexedSubscript:0];
    [v15 updateSpecifiersForState:v4 andReason:v7 andButton:v16];

    v17 = WMSLogComponent();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __61__WirelessModemBundleController_MISStateChangedNotification___block_invoke_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + *MEMORY[0x277D3FBE0]));
    v18 = [*(*(a1 + 40) + 48) objectAtIndexedSubscript:0];
    [WeakRetained reloadSpecifier:v18 animated:1];

LABEL_14:
LABEL_15:
    if (v4 >= 0x3FE)
    {
      [*(*(a1 + 40) + 16) dismissViewControllerAnimated:1 completion:0];
    }

    return;
  }

  v13 = WMSLogComponent();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __61__WirelessModemBundleController_MISStateChangedNotification___block_invoke_cold_2();
  }

  v14 = objc_loadWeakRetained((*(a1 + 40) + *MEMORY[0x277D3FBE0]));
  [v14 removeContiguousSpecifiers:*(*(a1 + 40) + 48) animated:1];
}

- (void)showSetupAlert:(id)alert
{
  alertCopy = alert;
  v5 = alertCopy;
  if (self->_tetheringAlert)
  {
    goto LABEL_17;
  }

  v40 = alertCopy;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SETUP_ALERT_TITLE" value:&stru_284EED640 table:@"WirelessModemSettings"];

  v8 = self->_carrierName;
  tetheringPhoneNumber = self->_tetheringPhoneNumber;
  tetheringURL = self->_tetheringURL;
  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = v12;
  if (tetheringPhoneNumber)
  {
    if (tetheringURL)
    {
      v14 = [v12 localizedStringForKey:@"SETUP_ALERT_MESSAGE_ALL_INFO" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v15 = self->_tetheringPhoneNumber;
      v37 = self->_tetheringURL;
    }

    else
    {
      v14 = [v12 localizedStringForKey:@"SETUP_ALERT_MESSAGE_NO_URL" value:&stru_284EED640 table:@"WirelessModemSettings"];
      v15 = self->_tetheringPhoneNumber;
    }

    v36 = v15;
    goto LABEL_9;
  }

  if (!tetheringURL)
  {
    v14 = [v12 localizedStringForKey:@"SETUP_ALERT_MESSAGE_NO_INFO" value:&stru_284EED640 table:@"WirelessModemSettings"];
LABEL_9:
    [v11 stringWithFormat:v14, v8, v36, v37];
    goto LABEL_10;
  }

  v14 = [v12 localizedStringForKey:@"SETUP_ALERT_MESSAGE_NO_NUMBER" value:&stru_284EED640 table:@"WirelessModemSettings"];
  [v11 stringWithFormat:v14, self->_tetheringURL, v36, v37];
  v16 = LABEL_10:;
  v38 = v8;

  v17 = WMSLogComponent();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [(WirelessModemBundleController *)v7 showSetupAlert:v16, v17];
  }

  v39 = v7;
  v18 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v16 preferredStyle:1];
  tetheringAlert = self->_tetheringAlert;
  self->_tetheringAlert = v18;

  v20 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"SETUP_ALERT_WEB_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __48__WirelessModemBundleController_showSetupAlert___block_invoke;
  v42[3] = &unk_278BB50F0;
  v42[4] = self;
  v23 = [v20 actionWithTitle:v22 style:0 handler:v42];

  v24 = MEMORY[0x277D750F8];
  v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:@"SETUP_ALERT_CALL_BUTTON" value:&stru_284EED640 table:@"WirelessModemSettings"];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __48__WirelessModemBundleController_showSetupAlert___block_invoke_62;
  v41[3] = &unk_278BB50F0;
  v41[4] = self;
  v27 = [v24 actionWithTitle:v26 style:0 handler:v41];

  v28 = self->_tetheringURL;
  if (self->_tetheringPhoneNumber)
  {
    [(UIAlertController *)self->_tetheringAlert addAction:v27];
  }

  if (v28)
  {
    [(UIAlertController *)self->_tetheringAlert addAction:v23];
  }

  v29 = self->_tetheringAlert;
  v30 = MEMORY[0x277D750F8];
  v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v31 localizedStringForKey:@"CANCEL" value:&stru_284EED640 table:@"WirelessModemSettings"];
  v33 = [v30 actionWithTitle:v32 style:1 handler:0];
  [(UIAlertController *)v29 addAction:v33];

  v5 = v40;
LABEL_17:
  v34 = WMSLogComponent();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    [WirelessModemBundleController showSetupAlert:];
  }

  WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277D3FBE0]));
  [WeakRetained presentViewController:self->_tetheringAlert animated:1 completion:0];
}

uint64_t __48__WirelessModemBundleController_showSetupAlert___block_invoke(uint64_t a1)
{
  v2 = WMSLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __48__WirelessModemBundleController_showSetupAlert___block_invoke_cold_1();
  }

  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:*(*(a1 + 32) + 32)];
  [v3 openURL:v4 withCompletionHandler:0];

  return [*(*(a1 + 32) + 16) dismissViewControllerAnimated:1 completion:0];
}

uint64_t __48__WirelessModemBundleController_showSetupAlert___block_invoke_62(uint64_t a1)
{
  v2 = WMSLogComponent();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __48__WirelessModemBundleController_showSetupAlert___block_invoke_62_cold_1();
  }

  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = MEMORY[0x277CBEBC0];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"tel:%@", *(*(a1 + 32) + 24)];
  v6 = [v4 URLWithString:v5];
  [v3 openURL:v6 withCompletionHandler:0];

  return [*(*(a1 + 32) + 16) dismissViewControllerAnimated:1 completion:0];
}

- (id)getTetheringStatus:(id)status
{
  v10 = 0;
  v3 = +[MISManager sharedManager];
  [v3 getState:&v10 andReason:0];

  v4 = v10;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4 == 1023)
  {
    v7 = @"ON";
  }

  else
  {
    v7 = @"OFF";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_284EED640 table:@"WirelessModemSettings"];

  return v8;
}

- (void)updateSpecifiersForState:(int)state andReason:(int)reason andButton:(id)button
{
  buttonCopy = button;
  v7 = *MEMORY[0x277D3FEA8];
  [buttonCopy setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FEA8]];
  v8 = *MEMORY[0x277D3FF38];
  [buttonCopy setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
  v9 = buttonCopy;
  if (state != 1020)
  {
    if (state != 1021 || reason == 2)
    {
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"MAIN_SPEC_PROVISIONED" value:&stru_284EED640 table:@"WirelessModemSettings"];
      [buttonCopy setName:v13];

      v14 = MEMORY[0x277D3FC90];
      *&buttonCopy[*MEMORY[0x277D3FC90]] = 2;
      *&buttonCopy[*MEMORY[0x277D3FCA8]] = sel_getTetheringStatus_;
      *&buttonCopy[*MEMORY[0x277D3FC98]] = objc_opt_class();
      v9 = buttonCopy;
      if (reason == 4 && (+[MISManager sharedManager](MISManager, "sharedManager"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 didUserPreventData], v15, v9 = buttonCopy, v16))
      {
        v17 = MEMORY[0x277CBEC28];
        v18 = buttonCopy;
        v19 = v8;
      }

      else
      {
        if (state != 1021)
        {
          goto LABEL_13;
        }

        *&v9[*v14] = 6;
        v17 = MEMORY[0x277CBEC38];
        v18 = buttonCopy;
        v19 = v7;
      }

      [v18 setProperty:v17 forKey:v19];
      v9 = buttonCopy;
    }

    else
    {
      if (reason == 4)
      {
        [buttonCopy setProperty:MEMORY[0x277CBEC28] forKey:v8];
      }

      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"MAIN_SPEC_UNPROVISIONED" value:&stru_284EED640 table:@"WirelessModemSettings"];
      [buttonCopy setName:v11];

      *&buttonCopy[*MEMORY[0x277D3FC90]] = 13;
      [buttonCopy setButtonAction:sel_showSetupAlert_];
      v9 = buttonCopy;
      *&buttonCopy[*MEMORY[0x277D3FCA8]] = 0;
      *&buttonCopy[*MEMORY[0x277D3FC98]] = 0;
    }
  }

LABEL_13:
}

- (id)_specifiersWithSpecifierMain:(id)main
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  specifiers = self->_specifiers;
  self->_specifiers = v4;

  v14 = 0;
  v6 = +[MISManager sharedManager];
  [v6 getState:&v14 + 4 andReason:&v14];

  v7 = WMSLogComponent();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(WirelessModemBundleController *)&v14 + 1 _specifiersWithSpecifierMain:v7];
  }

  v16[0] = @"ph-mis-state";
  v15[0] = @"type";
  v15[1] = @"value";
  if ((HIDWORD(v14) - 1020) > 3)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_278BB5138[HIDWORD(v14) - 1020];
  }

  v16[1] = v8;
  v15[2] = @"context";
  if (v14 > 6)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_278BB5158[v14];
  }

  v16[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  WMSubmitUIEventMetric(v10);

  if (HIDWORD(v14) != 1020)
  {
    v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:&stru_284EED640 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v11 setProperty:@"INTERNET_TETHERING" forKey:*MEMORY[0x277D3FFB8]];
    [(WirelessModemBundleController *)self updateSpecifiersForState:HIDWORD(v14) andReason:v14 andButton:v11];
    [(NSMutableArray *)self->_specifiers addObject:v11];
  }

  v12 = self->_specifiers;

  return v12;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = [(WirelessModemBundleController *)self _specifiersWithSpecifierMain:specifierCopy];
    v6 = v13[5];
    v13[5] = v5;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__WirelessModemBundleController_specifiersWithSpecifier___block_invoke;
    block[3] = &unk_278BB5118;
    v11 = &v12;
    block[4] = self;
    v10 = specifierCopy;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __57__WirelessModemBundleController_specifiersWithSpecifier___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _specifiersWithSpecifierMain:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (void)initWithParentListController:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithParentListController:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithParentListController:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithParentListController:.cold.5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)showSetupAlert:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = "[WirelessModemBundleController showSetupAlert:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_23C15F000, log, OS_LOG_TYPE_ERROR, "%s: title %@ message %@", &v3, 0x20u);
}

- (void)showSetupAlert:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __48__WirelessModemBundleController_showSetupAlert___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __48__WirelessModemBundleController_showSetupAlert___block_invoke_62_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_specifiersWithSpecifierMain:(os_log_t)log .cold.1(int *a1, int *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_error_impl(&dword_23C15F000, log, OS_LOG_TYPE_ERROR, "Initial MIS state: %u, reason: %u", v5, 0xEu);
}

@end