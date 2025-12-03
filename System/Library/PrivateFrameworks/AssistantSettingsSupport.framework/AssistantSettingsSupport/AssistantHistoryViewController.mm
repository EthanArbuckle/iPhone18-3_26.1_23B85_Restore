@interface AssistantHistoryViewController
- (AssistantHistoryDelegate)delegate;
- (AssistantHistoryViewController)init;
- (id)_deletionResponseAlertForFailure;
- (id)specifiers;
- (int64_t)_getDataSharingOptInStatus;
- (void)_animateSpinnerIn;
- (void)_deleteSiriHistory;
- (void)_endIndicatorViewSpinning;
- (void)_handleDeleteSiriHistoryButtonPress;
- (void)_presentAboutAssistantSheet;
- (void)_presentErrorAlert;
- (void)_presentPrivacySheet;
- (void)_startIndicatorViewSpinning;
@end

@implementation AssistantHistoryViewController

- (AssistantHistoryViewController)init
{
  v8.receiver = self;
  v8.super_class = AssistantHistoryViewController;
  v2 = [(AssistantHistoryViewController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CEF3A8]);
    settingsConnection = v2->_settingsConnection;
    v2->_settingsConnection = v3;

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"ASSISTANT_HISTORY_LABEL" value:&stru_285317CF0 table:@"AssistantSettings"];
    [(AssistantHistoryViewController *)v2 setTitle:v6];
  }

  return v2;
}

- (id)specifiers
{
  v2 = *MEMORY[0x277D3FC48];
  v3 = *(&self->super.super.super.super.super.isa + v2);
  if (v3)
  {
    v4 = v3;
    goto LABEL_33;
  }

  _getDataSharingOptInStatus = [(AssistantHistoryViewController *)self _getDataSharingOptInStatus];
  v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v55 = v2;
  if (+[AssistantUtilities deviceIsiPhone])
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"DELETE_SIRI_HISTORY_FOOTER_EXPLANATION_IPHONE_RPI_ON";
  }

  else if (+[AssistantUtilities deviceIsiPad])
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"DELETE_SIRI_HISTORY_FOOTER_EXPLANATION_IPAD_RPI_ON";
  }

  else
  {
    v9 = +[AssistantUtilities deviceIsVision];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    if (v9)
    {
      v8 = @"DELETE_SIRI_HISTORY_FOOTER_EXPLANATION_VISION_RPI_ON";
    }

    else
    {
      v8 = @"DELETE_SIRI_HISTORY_FOOTER_EXPLANATION_RPI_ON";
    }
  }

  v10 = [v6 localizedStringForKey:v8 value:&stru_285317CF0 table:@"AssistantSettings"];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SIRI_REQUESTS_ABOUT_LINK_TEXT" value:&stru_285317CF0 table:?];

  v13 = NSStringFromSelector(sel__presentAboutAssistantSheet);
  v58 = v10;
  v14 = [v10 stringByAppendingString:v12];
  v15 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DELETE_SIRI_HISTORY"];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"DELETE_SIRI_HISTORY" value:&stru_285317CF0 table:@"AssistantSettings"];
  [v15 setProperty:v17 forKey:*MEMORY[0x277D3FF88]];

  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v52 = *MEMORY[0x277D3FF48];
  [v15 setProperty:v19 forKey:?];

  v51 = *MEMORY[0x277D3FF70];
  [v15 setProperty:v14 forKey:?];
  v54 = v12;
  v60.location = [v14 rangeOfString:v12];
  v20 = NSStringFromRange(v60);
  v21 = *MEMORY[0x277D3FF58];
  [v15 setProperty:v20 forKey:*MEMORY[0x277D3FF58]];

  v22 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  v50 = *MEMORY[0x277D3FF68];
  [v15 setProperty:v22 forKey:?];

  v56 = v13;
  v23 = v13;
  v24 = *MEMORY[0x277D3FF50];
  [v15 setProperty:v23 forKey:?];
  [v57 addObject:v15];
  v25 = MEMORY[0x277D3FAD8];
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"DELETE_SIRI_HISTORY" value:&stru_285317CF0 table:@"AssistantSettings"];
  v28 = [v25 deleteButtonSpecifierWithName:v27 target:self action:sel__handleDeleteSiriHistoryButtonPress];

  [v57 addObject:v28];
  v53 = v28;
  if (!+[AssistantUtilities isRpiOnDeviceDeletionEnabled])
  {
    v48 = v21;
    if ((_getDataSharingOptInStatus - 2) >= 2 && _getDataSharingOptInStatus)
    {
      if (_getDataSharingOptInStatus != 1)
      {
LABEL_31:
        v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v31 = [v38 localizedStringForKey:@"DELETE_SIRI_HISTORY_FOOTER_LINK" value:&stru_285317CF0 table:@"AssistantSettings"];

        v30 = NSStringFromSelector(sel__presentPrivacySheet);

        v32 = v58;
        v39 = [v58 stringByAppendingString:v31];

        v40 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DELETE_SIRI_HISTORY_SUB_TEXT"];
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        [v40 setProperty:v42 forKey:v52];

        [v40 setProperty:v39 forKey:v51];
        v61.location = [v39 rangeOfString:v31];
        v43 = NSStringFromRange(v61);
        [v40 setProperty:v43 forKey:v48];

        v44 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
        [v40 setProperty:v44 forKey:v50];

        [v40 setProperty:v30 forKey:v24];
        [v57 addObject:v40];

        v29 = v39;
        goto LABEL_32;
      }

      if (+[AssistantUtilities deviceIsiPhone])
      {
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = v33;
        v35 = @"DELETE_SIRI_HISTORY_FOOTER_EXPLANATION_IPHONE_OPTEDIN";
LABEL_30:
        v58 = [v33 localizedStringForKey:v35 value:&stru_285317CF0 table:@"AssistantSettings"];

        goto LABEL_31;
      }

      if (+[AssistantUtilities deviceIsiPod])
      {
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = v33;
        v35 = @"DELETE_SIRI_HISTORY_FOOTER_EXPLANATION_IPOD_OPTEDIN";
        goto LABEL_30;
      }

      v37 = +[AssistantUtilities deviceIsVision];
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v37)
      {
        v35 = @"DELETE_SIRI_HISTORY_FOOTER_EXPLANATION_VISION_OPTEDIN";
      }

      else
      {
        v35 = @"DELETE_SIRI_HISTORY_FOOTER_EXPLANATION_IPAD_OPTEDIN";
      }
    }

    else
    {

      if (+[AssistantUtilities deviceIsiPhone])
      {
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = v33;
        v35 = @"DELETE_SIRI_HISTORY_FOOTER_EXPLANATION_IPHONE_OPTEDOUT";
        goto LABEL_30;
      }

      if (+[AssistantUtilities deviceIsiPod])
      {
        v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = v33;
        v35 = @"DELETE_SIRI_HISTORY_FOOTER_EXPLANATION_IPOD_OPTEDOUT";
        goto LABEL_30;
      }

      v36 = +[AssistantUtilities deviceIsVision];
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      if (v36)
      {
        v35 = @"DELETE_SIRI_HISTORY_FOOTER_EXPLANATION_VISION_OPTEDOUT";
      }

      else
      {
        v35 = @"DELETE_SIRI_HISTORY_FOOTER_EXPLANATION_IPAD_OPTEDOUT";
      }
    }

    v33 = v34;
    goto LABEL_30;
  }

  v30 = v56;
  v29 = v14;
  v31 = v54;
  v32 = v58;
LABEL_32:
  v45 = *(&self->super.super.super.super.super.isa + v55);
  *(&self->super.super.super.super.super.isa + v55) = v57;
  v46 = v57;

  v4 = *(&self->super.super.super.super.super.isa + v55);
LABEL_33:

  return v4;
}

- (int64_t)_getDataSharingOptInStatus
{
  v27 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v3 = dispatch_semaphore_create(0);
  settingsConnection = self->_settingsConnection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__AssistantHistoryViewController__getDataSharingOptInStatus__block_invoke;
  v14[3] = &unk_278CD14A8;
  v16 = &v17;
  v5 = v3;
  v15 = v5;
  [(AFSettingsConnection *)settingsConnection getSiriDataSharingOptInStatusWithCompletion:v14];
  v6 = dispatch_time(0, 50000000);
  v7 = dispatch_semaphore_wait(v5, v6);
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v18[3];
    v10 = AFSiriDataSharingOptInStatusGetName();
    *buf = 136315650;
    v22 = "[AssistantHistoryViewController _getDataSharingOptInStatus]";
    v23 = 2048;
    v24 = v7;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_2413B9000, v8, OS_LOG_TYPE_DEFAULT, "%s #siriDataSharingOptInStatus dataSharingOptInFechCompletedIn:%lu optInStatus:%@", buf, 0x20u);
  }

  v11 = v18[3];
  _Block_object_dispose(&v17, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void __60__AssistantHistoryViewController__getDataSharingOptInStatus__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5 && os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __60__AssistantHistoryViewController__getDataSharingOptInStatus__block_invoke_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_handleDeleteSiriHistoryButtonPress
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  LODWORD(currentDevice) = +[AssistantUtilities isRpiOnDeviceDeletionEnabled];
  v5 = +[AssistantUtilities deviceIsiPhone];
  if (!currentDevice)
  {
    if (v5)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"DELETE_SIRI_HISTORY_ALERT_SHEET_MESSAGE_IPHONE";
      goto LABEL_17;
    }

    if (+[AssistantUtilities deviceIsiPod])
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"DELETE_SIRI_HISTORY_ALERT_SHEET_MESSAGE_IPOD";
      goto LABEL_17;
    }

    v10 = +[AssistantUtilities deviceIsVision];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v10)
    {
      v8 = @"DELETE_SIRI_HISTORY_ALERT_SHEET_MESSAGE_VISION";
    }

    else
    {
      v8 = @"DELETE_SIRI_HISTORY_ALERT_SHEET_MESSAGE_IPAD";
    }

LABEL_16:
    v6 = v7;
    goto LABEL_17;
  }

  if (!v5)
  {
    if (+[AssistantUtilities deviceIsiPad])
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"DELETE_SIRI_HISTORY_ALERT_SHEET_MESSAGE_IPAD_RPI_ON";
      goto LABEL_17;
    }

    v9 = +[AssistantUtilities deviceIsVision];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v9)
    {
      v8 = @"DELETE_SIRI_HISTORY_ALERT_SHEET_MESSAGE_VISION_RPI_ON";
    }

    else
    {
      v8 = @"DELETE_SIRI_HISTORY_ALERT_SHEET_MESSAGE_RPI_ON";
    }

    goto LABEL_16;
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  v8 = @"DELETE_SIRI_HISTORY_ALERT_SHEET_MESSAGE_IPHONE_RPI_ON";
LABEL_17:
  v11 = [v6 localizedStringForKey:v8 value:&stru_285317CF0 table:@"AssistantSettings"];

  v12 = MEMORY[0x277D75110];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"DELETE_SIRI_HISTORY" value:&stru_285317CF0 table:@"AssistantSettings"];
  v15 = [v12 alertControllerWithTitle:v14 message:v11 preferredStyle:sf_isiPad];

  objc_initWeak(&location, self);
  v16 = MEMORY[0x277D750F8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"DELETE_SIRI_HISTORY_ACTION" value:&stru_285317CF0 table:@"AssistantSettings"];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __69__AssistantHistoryViewController__handleDeleteSiriHistoryButtonPress__block_invoke;
  v27 = &unk_278CD14D0;
  objc_copyWeak(&v28, &location);
  v19 = [v16 actionWithTitle:v18 style:2 handler:&v24];

  [v15 addAction:{v19, v24, v25, v26, v27}];
  v20 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"DELETE_SIRI_HISTORY_ALERT_SHEET_CANCEL" value:&stru_285317CF0 table:@"AssistantSettings"];
  v23 = [v20 actionWithTitle:v22 style:1 handler:0];

  [v15 addAction:v23];
  [(AssistantHistoryViewController *)self presentViewController:v15 animated:1 completion:0];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __69__AssistantHistoryViewController__handleDeleteSiriHistoryButtonPress__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deleteSiriHistory];
}

- (void)_deleteSiriHistory
{
  [(AssistantHistoryViewController *)self _startIndicatorViewSpinning];
  objc_initWeak(&location, self);
  settingsConnection = self->_settingsConnection;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__AssistantHistoryViewController__deleteSiriHistory__block_invoke;
  v4[3] = &unk_278CD14F8;
  objc_copyWeak(&v5, &location);
  [(AFSettingsConnection *)settingsConnection deleteSiriHistoryWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __52__AssistantHistoryViewController__deleteSiriHistory__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _endIndicatorViewSpinning];
    if (v3)
    {
      v6 = +[AssistantUtilities isRpiOnDeviceDeletionEnabled];
      v7 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR);
      if (v6)
      {
        if (v7)
        {
          __52__AssistantHistoryViewController__deleteSiriHistory__block_invoke_cold_2();
        }
      }

      else
      {
        if (v7)
        {
          __52__AssistantHistoryViewController__deleteSiriHistory__block_invoke_cold_1();
        }

        [v5 _presentErrorAlert];
      }
    }

    else
    {
      v9 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[AssistantHistoryViewController _deleteSiriHistory]_block_invoke";
        _os_log_impl(&dword_2413B9000, v9, OS_LOG_TYPE_DEFAULT, "%s #siriDataSharingOptIn: Siri History Deletion Request successful", &v12, 0xCu);
      }

      v10 = [v5 delegate];
      [v10 deleteHistorySuccessfulFromViewController:v5];
    }
  }

  else
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __52__AssistantHistoryViewController__deleteSiriHistory__block_invoke_cold_3(v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_startIndicatorViewSpinning
{
  v20[2] = *MEMORY[0x277D85DE8];
  allValues = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC30]) allValues];
  v4 = allValues;
  if (self->_deleteButtonCell)
  {
    [(AssistantHistoryViewController *)self _animateSpinnerIn];
  }

  else if ([allValues count] == 1)
  {
    v5 = [v4 objectAtIndex:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v4 objectAtIndex:0];
      deleteButtonCell = self->_deleteButtonCell;
      self->_deleteButtonCell = v7;

      v9 = objc_alloc_init(MEMORY[0x277D750E8]);
      indicatorView = self->_indicatorView;
      self->_indicatorView = v9;

      [(UIActivityIndicatorView *)self->_indicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIActivityIndicatorView *)self->_indicatorView setHidesWhenStopped:0];
      [(UIActivityIndicatorView *)self->_indicatorView setAlpha:0.0];
      [(PSDeleteButtonCell *)self->_deleteButtonCell addSubview:self->_indicatorView];
      centerXAnchor = [(UIActivityIndicatorView *)self->_indicatorView centerXAnchor];
      centerXAnchor2 = [(PSDeleteButtonCell *)self->_deleteButtonCell centerXAnchor];
      v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

      centerYAnchor = [(UIActivityIndicatorView *)self->_indicatorView centerYAnchor];
      centerYAnchor2 = [(PSDeleteButtonCell *)self->_deleteButtonCell centerYAnchor];
      v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

      v17 = self->_deleteButtonCell;
      v20[0] = v13;
      v20[1] = v16;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
      [(PSDeleteButtonCell *)v17 addConstraints:v18];

      [(AssistantHistoryViewController *)self _animateSpinnerIn];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_animateSpinnerIn
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__AssistantHistoryViewController__animateSpinnerIn__block_invoke;
  v2[3] = &unk_278CD1520;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __51__AssistantHistoryViewController__animateSpinnerIn__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D75D18];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __51__AssistantHistoryViewController__animateSpinnerIn__block_invoke_2;
  v2[3] = &unk_278CD1520;
  objc_copyWeak(&v3, (a1 + 32));
  [v1 animateWithDuration:v2 animations:0.3];
  objc_destroyWeak(&v3);
}

void __51__AssistantHistoryViewController__animateSpinnerIn__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[183] titleLabel];
    [v2 setAlpha:0.0];

    [v3[184] setAlpha:1.0];
    [v3[184] startAnimating];
    WeakRetained = v3;
  }
}

- (void)_endIndicatorViewSpinning
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__AssistantHistoryViewController__endIndicatorViewSpinning__block_invoke;
  v2[3] = &unk_278CD1520;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __59__AssistantHistoryViewController__endIndicatorViewSpinning__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D75D18];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__AssistantHistoryViewController__endIndicatorViewSpinning__block_invoke_2;
  v2[3] = &unk_278CD1520;
  objc_copyWeak(&v3, (a1 + 32));
  [v1 animateWithDuration:v2 animations:0.3];
  objc_destroyWeak(&v3);
}

void __59__AssistantHistoryViewController__endIndicatorViewSpinning__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[184] stopAnimating];
    [v3[184] setAlpha:0.0];
    v2 = [v3[183] titleLabel];
    [v2 setAlpha:1.0];

    WeakRetained = v3;
  }
}

- (void)_presentErrorAlert
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52__AssistantHistoryViewController__presentErrorAlert__block_invoke;
  v2[3] = &unk_278CD1520;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __52__AssistantHistoryViewController__presentErrorAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _deletionResponseAlertForFailure];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 presentViewController:v4 animated:1 completion:0];
}

- (id)_deletionResponseAlertForFailure
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"DELETE_SIRI_HISTORY_ALERT_FAILURE_TITLE" value:&stru_285317CF0 table:@"AssistantSettings"];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DELETE_SIRI_HISTORY_ALERT_FAILURE_MESSAGE" value:&stru_285317CF0 table:@"AssistantSettings"];

  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:v3 message:v5 preferredStyle:1];
  v7 = MEMORY[0x277D750F8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"DELETE_SIRI_HISTORY_ALERT_DISMISS" value:&stru_285317CF0 table:@"AssistantSettings"];
  v10 = [v7 actionWithTitle:v9 style:0 handler:0];

  [v6 addAction:v10];

  return v6;
}

- (void)_presentPrivacySheet
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.improvesiridictation"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)_presentAboutAssistantSheet
{
  v3 = [MEMORY[0x277D37678] presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.siri"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (AssistantHistoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __60__AssistantHistoryViewController__getDataSharingOptInStatus__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2413B9000, v0, v1, "%s #siriDataSharingOptInStatus: Status fetch failed with error:%@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__AssistantHistoryViewController__deleteSiriHistory__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2413B9000, v0, v1, "%s #siriDataSharingOptIn: Siri History Deletion Request failed with error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__AssistantHistoryViewController__deleteSiriHistory__block_invoke_cold_2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2413B9000, v0, v1, "%s #RPI on-device Siri History Deletion Request failed. Skipping showing alert. error: %@.", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__AssistantHistoryViewController__deleteSiriHistory__block_invoke_cold_3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[AssistantHistoryViewController _deleteSiriHistory]_block_invoke";
  _os_log_error_impl(&dword_2413B9000, log, OS_LOG_TYPE_ERROR, "%s #siriDataSharingOptIn: weakSelf nil'd out while waiting for deletion completion", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end