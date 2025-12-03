@interface BTAlert
- (BOOL)isiPhone;
- (BTAlert)initWithDevice:(id)device;
- (void)dealloc;
- (void)showAlertWithResult:(id)result;
- (void)userActionResponseWithUnpairStatus:(BOOL)status;
@end

@implementation BTAlert

- (BTAlert)initWithDevice:(id)device
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = BTAlert;
  v6 = [(BTAlert *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:1];
    alert = v6->_alert;
    v6->_alert = v7;

    objc_storeStrong(&v6->_device, device);
  }

  return v6;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    alert = self->_alert;
    *buf = 138412290;
    v11 = alert;
    _os_log_impl(&dword_23C0F7000, v3, OS_LOG_TYPE_DEFAULT, "Dealloc BTAlert : %@", buf, 0xCu);
  }

  delegate = self->_delegate;
  self->_delegate = 0;

  device = self->_device;
  self->_device = 0;

  v7 = self->_alert;
  self->_alert = 0;

  [(BTAlert *)self dismiss];
  v9.receiver = self;
  v9.super_class = BTAlert;
  [(BTAlert *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)showAlertWithResult:(id)result
{
  resultCopy = result;
  objc_initWeak(location, self);
  unsignedIntValue = [resultCopy unsignedIntValue];
  if ((unsignedIntValue - 151) <= 0x1E)
  {
    if (((1 << (unsignedIntValue + 105)) & 0x40008081) != 0)
    {
      v6 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C0F7000, v6, OS_LOG_TYPE_DEFAULT, "Show alert for BT_ERROR_INVALID_LINK_KEY using UIAlertController", buf, 2u);
      }

      v7 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"ERROR_MISSING_LINK_KEY" value:&stru_284EE3458 table:@"Devices"];
      name = [(BTSDevice *)self->_device name];
      v11 = [v7 stringWithFormat:v9, name];

      v12 = MEMORY[0x277D750F8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"FORGET_DEVICE" value:&stru_284EE3458 table:@"Devices"];
      v15 = v66;
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __31__BTAlert_showAlertWithResult___block_invoke_26;
      v66[3] = &unk_278BB0758;
      objc_copyWeak(&v67, location);
      v16 = [v12 actionWithTitle:v14 style:0 handler:v66];

      [(UIAlertController *)self->_alert addAction:v16];
      goto LABEL_25;
    }

    if (unsignedIntValue == 156)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"ERROR_INCORRECT_PIN" value:&stru_284EE3458 table:@"Devices"];
      name2 = [(BTSDevice *)self->_device name];
      v11 = [v17 stringWithFormat:v19, name2];

      v21 = MEMORY[0x277D750F8];
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v22 localizedStringForKey:@"OK" value:&stru_284EE3458 table:@"Devices"];
      v15 = v69;
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __31__BTAlert_showAlertWithResult___block_invoke_3;
      v69[3] = &unk_278BB0758;
      objc_copyWeak(&v70, location);
      v16 = [v21 actionWithTitle:v23 style:0 handler:v69];

      [(UIAlertController *)self->_alert addAction:v16];
LABEL_25:
      objc_destroyWeak(v15 + 4);
      goto LABEL_26;
    }
  }

  if (unsignedIntValue == 1)
  {
    if (![(BTSDevice *)self->_device paired])
    {
      v47 = MEMORY[0x277CCACA8];
      v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v49 = [v48 localizedStringForKey:@"ERROR_PAIRING_TIMEOUT" value:&stru_284EE3458 table:@"Devices"];
      v50 = MEMORY[0x277CCACA8];
      v51 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v52 = [v51 localizedStringForKey:@"ERROR_GEN_PAIRING_FAILURE" value:&stru_284EE3458 table:@"Devices"];
      name3 = [(BTSDevice *)self->_device name];
      v54 = [v50 stringWithFormat:v52, name3];
      v11 = [v47 stringWithFormat:@"%@ %@", v49, v54];

      v55 = MEMORY[0x277D750F8];
      v56 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v57 = [v56 localizedStringForKey:@"OK" value:&stru_284EE3458 table:@"Devices"];
      v15 = v64;
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __31__BTAlert_showAlertWithResult___block_invoke_2_36;
      v64[3] = &unk_278BB0758;
      objc_copyWeak(&v65, location);
      v16 = [v55 actionWithTitle:v57 style:0 handler:v64];

      [(UIAlertController *)self->_alert addAction:v16];
      goto LABEL_25;
    }
  }

  else if (unsignedIntValue == 109)
  {
    v24 = MEMORY[0x277CCACA8];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"ERROR_UNSUPPORTED_DEVICE" value:&stru_284EE3458 table:@"Devices"];
    name4 = [(BTSDevice *)self->_device name];
    v11 = [v24 stringWithFormat:v26, name4];

    paired = [(BTSDevice *)self->_device paired];
    v29 = MEMORY[0x277D750F8];
    if (paired)
    {
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"FORGET_DEVICE" value:&stru_284EE3458 table:@"Devices"];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __31__BTAlert_showAlertWithResult___block_invoke;
      v73[3] = &unk_278BB0758;
      v32 = &v74;
      objc_copyWeak(&v74, location);
      v33 = [v29 actionWithTitle:v31 style:2 handler:v73];
    }

    else
    {
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"OK" value:&stru_284EE3458 table:@"Devices"];
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __31__BTAlert_showAlertWithResult___block_invoke_2;
      v71[3] = &unk_278BB0758;
      v32 = &v72;
      objc_copyWeak(&v72, location);
      v33 = [v29 actionWithTitle:v31 style:0 handler:v71];
    }

    v16 = v33;

    objc_destroyWeak(v32);
    [(UIAlertController *)self->_alert addAction:v16];
    goto LABEL_26;
  }

  if ([(BTSDevice *)self->_device paired])
  {
    device = self->_device;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (-[BTSDevice classicDevice](self->_device, "classicDevice"), v35 = objc_claimAutoreleasedReturnValue(), v36 = [v35 isProController], v35, v36))
    {
      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"ERROR_PRO_CONTROLLER_CONNECTION_FAILURE" value:&stru_284EE3458 table:@"Devices"];
    }

    else
    {
      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = [v37 localizedStringForKey:@"ERROR_GEN_CONNECTION_FAILURE" value:&stru_284EE3458 table:@"Devices"];
    }
  }

  else
  {
    v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v38 = [v37 localizedStringForKey:@"ERROR_GEN_PAIRING_FAILURE" value:&stru_284EE3458 table:@"Devices"];
  }

  v39 = v38;

  v40 = MEMORY[0x277CCACA8];
  v63 = 0;
  name5 = [(BTSDevice *)self->_device name];
  v11 = [v40 stringWithValidatedFormat:v39 validFormatSpecifiers:@"%@" error:&v63, name5];
  v42 = v63;

  if (v11)
  {
    v43 = MEMORY[0x277D750F8];
    v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v45 = [v44 localizedStringForKey:@"OK" value:&stru_284EE3458 table:@"Devices"];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __31__BTAlert_showAlertWithResult___block_invoke_47;
    v61[3] = &unk_278BB0758;
    objc_copyWeak(&v62, location);
    v16 = [v43 actionWithTitle:v45 style:0 handler:v61];

    [(UIAlertController *)self->_alert addAction:v16];
    objc_destroyWeak(&v62);

LABEL_26:
    alert = self->_alert;
    if ([(BTSDevice *)self->_device paired])
    {
      v59 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v59 localizedStringForKey:@"CONNECTION_FAILED_TITLE" value:&stru_284EE3458 table:@"Devices"];
    }

    else
    {
      v59 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v59 localizedStringForKey:@"PAIRING_FAILED_TITLE" value:&stru_284EE3458 table:@"Devices"];
    }
    v60 = ;
    [(UIAlertController *)alert setTitle:v60];

    [(UIAlertController *)self->_alert setMessage:v11];
    [(BTAlertDelegate *)self->_delegate showAlert:self->_alert];
    goto LABEL_30;
  }

  v46 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    [(BTAlert *)v42 showAlertWithResult:v46];
  }

  v16 = 0;
  v11 = 0;
LABEL_30:
  objc_destroyWeak(location);
}

void __31__BTAlert_showAlertWithResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained userActionResponseWithUnpairStatus:1];
}

void __31__BTAlert_showAlertWithResult___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained userActionResponseWithUnpairStatus:0];
}

void __31__BTAlert_showAlertWithResult___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained userActionResponseWithUnpairStatus:0];
}

void __31__BTAlert_showAlertWithResult___block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained userActionResponseWithUnpairStatus:1];
}

void __31__BTAlert_showAlertWithResult___block_invoke_2_36(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained userActionResponseWithUnpairStatus:0];
}

void __31__BTAlert_showAlertWithResult___block_invoke_47(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained userActionResponseWithUnpairStatus:0];
}

- (void)userActionResponseWithUnpairStatus:(BOOL)status
{
  if (status)
  {
    [(BTSDevice *)self->_device unpair];
  }

  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    [(BTAlertDelegate *)delegate performSelector:sel_alertSheetDismissed_ withObject:self];
  }
}

- (BOOL)isiPhone
{
  v2 = MGGetStringAnswer();
  v3 = [v2 isEqualToString:@"iPhone"];

  return v3;
}

- (void)showAlertWithResult:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = 0;
  _os_log_error_impl(&dword_23C0F7000, a2, OS_LOG_TYPE_ERROR, "bad format string for alert (%@): %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end