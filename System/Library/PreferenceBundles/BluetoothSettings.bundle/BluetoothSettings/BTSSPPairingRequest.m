@interface BTSSPPairingRequest
- (BOOL)hasLimitedSupportForHID;
- (BTSSPPairingRequest)initWithDevice:(id)a3 andSpecifier:(id)a4;
- (id)sanitizeNameForAlert:(id)a3;
- (void)acceptSSP:(int64_t)a3;
- (void)dealloc;
- (void)hidPairingResult:(id)a3;
- (void)setPairingStyle:(int)a3 andPasskey:(id)a4;
@end

@implementation BTSSPPairingRequest

- (BTSSPPairingRequest)initWithDevice:(id)a3 andSpecifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BTSSPPairingRequest;
  v9 = [(BTSSPPairingRequest *)&v14 init];
  if (v9)
  {
    v10 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:1];
    alert = v9->_alert;
    v9->_alert = v10;

    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v9->_specifier, a4);
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v9 selector:sel_hidPairingResult_ name:*MEMORY[0x277CF3210] object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  delegate = self->_delegate;
  self->_delegate = 0;

  device = self->_device;
  self->_device = 0;

  specifier = self->_specifier;
  self->_specifier = 0;

  alert = self->_alert;
  self->_alert = 0;

  v8.receiver = self;
  v8.super_class = BTSSPPairingRequest;
  [(BTSSPPairingRequest *)&v8 dealloc];
}

- (id)sanitizeNameForAlert:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAC80] scannerWithString:v3];
  v5 = [MEMORY[0x277CCA900] illegalCharacterSet];
  [v4 setCharactersToBeSkipped:v5];

  v6 = [MEMORY[0x277CCAB68] string];
  v7 = [MEMORY[0x277CCAB68] string];
  while (1)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v16 = v7;
    v10 = [v4 scanUpToCharactersFromSet:v9 intoString:&v16];
    v7 = v16;

    if (!v10)
    {
      break;
    }

    [v6 appendString:v7];
    v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v12 = [v4 scanCharactersFromSet:v11 intoString:0];

    if (v12)
    {
      [v6 appendString:@" "];
    }
  }

  if ([v6 length] < 0x33)
  {
    v13 = v6;
  }

  else
  {
    v13 = [v6 substringToIndex:50];
  }

  v14 = v13;

  return v14;
}

- (void)setPairingStyle:(int)a3 andPasskey:(id)a4
{
  v79 = a4;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v81 = [v6 localizedStringForKey:@"PAIRING_TITLE" value:&stru_284EE3458 table:@"SSPAlert"];

  v7 = [(BluetoothDevice *)self->_device name];
  v80 = [(BTSSPPairingRequest *)self sanitizeNameForAlert:v7];

  self->_pairingStyle = a3;
  objc_initWeak(location, self);
  v8 = [(BluetoothDevice *)self->_device type];
  v9 = [(BluetoothDevice *)self->_device productId];
  v10 = [(BluetoothDevice *)self->_device vendorId];
  if (v10 == 76)
  {
    v11 = 0;
    v12 = v9 == 613 || v9 == 617;
  }

  else if (v10 == 1452)
  {
    if ((v9 - 777) >= 6)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0x39u >> (v9 - 9);
    }

    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v14 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%06u", objc_msgSend(v79, "unsignedIntValue")];
      v37 = MEMORY[0x277CCACA8];
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"PASSKEY_MESSAGE" value:&stru_284EE3458 table:@"SSPAlert"];
      v82 = [v37 stringWithFormat:v39, v80, v80];
    }

    else
    {
      if (a3 != 3)
      {
        v15 = 0;
        v82 = 0;
        if (a3 != 4)
        {
          goto LABEL_36;
        }

        v16 = MEMORY[0x277CCACA8];
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = [v17 localizedStringForKey:@"JUST_WORKS_MESSAGE" value:&stru_284EE3458 table:@"SSPAlert"];
        v82 = [v16 stringWithFormat:v18, v80];

        if ([(BTSSPPairingRequest *)self hasLimitedSupportForHID])
        {
          v19 = MGGetBoolAnswer();
          v20 = @"WIFI_JUST_WORKS_MESSAGE_HID_OLD";
          if (v19)
          {
            v20 = @"WLAN_JUST_WORKS_MESSAGE_HID_OLD";
          }

          v21 = v20;
          v22 = MEMORY[0x277CCACA8];
          v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v24 = [v23 localizedStringForKey:v21 value:&stru_284EE3458 table:@"SSPAlert"];
          v25 = [v22 stringWithFormat:v24, v80];

          v82 = v25;
        }

        v26 = MEMORY[0x277D750F8];
        v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v28 = [v27 localizedStringForKey:@"PAIR_BUTTON" value:&stru_284EE3458 table:@"SSPAlert"];
        v29 = v85;
        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = __50__BTSSPPairingRequest_setPairingStyle_andPasskey___block_invoke_3;
        v85[3] = &unk_278BB0758;
        objc_copyWeak(&v86, location);
        v30 = [v26 actionWithTitle:v28 style:0 handler:v85];
        goto LABEL_35;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04u", objc_msgSend(v79, "unsignedIntValue")];
      v40 = MEMORY[0x277CCACA8];
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"HID_MESSAGE" value:&stru_284EE3458 table:@"SSPAlert"];
      v82 = [v40 stringWithFormat:v39, v80];
    }

    v14 = 0;
    goto LABEL_36;
  }

  if (!a3)
  {
    v41 = MEMORY[0x277CCACA8];
    v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v43 = [v42 localizedStringForKey:@"JUST_WORKS_MESSAGE" value:&stru_284EE3458 table:@"SSPAlert"];
    v82 = [v41 stringWithFormat:v43, v80];

    if ((v8 == 25) | (v11 | v12) & 1 && [(BTSSPPairingRequest *)self hasLimitedSupportForHID])
    {
      v44 = MGGetBoolAnswer();
      v45 = @"WIFI";
      if (v44)
      {
        v45 = @"WLAN";
      }

      v46 = v45;
      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_JUST_WORKS_MESSAGE_HID_OLD", v46];
      v48 = MEMORY[0x277CCACA8];
      v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v50 = [v49 localizedStringForKey:v47 value:&stru_284EE3458 table:@"SSPAlert"];
      v51 = [v48 stringWithFormat:v50, v80];

      v82 = v51;
    }

    v52 = MEMORY[0x277D750F8];
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"PAIR_BUTTON" value:&stru_284EE3458 table:@"SSPAlert"];
    v29 = v89;
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __50__BTSSPPairingRequest_setPairingStyle_andPasskey___block_invoke;
    v89[3] = &unk_278BB0758;
    objc_copyWeak(&v90, location);
    v30 = [v52 actionWithTitle:v28 style:0 handler:v89];
LABEL_35:
    v14 = v30;

    objc_destroyWeak(v29 + 4);
    v15 = 0;
    goto LABEL_36;
  }

  v15 = 0;
  v82 = 0;
  if (a3 == 1)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%06u", objc_msgSend(v79, "unsignedIntValue")];
    v31 = MEMORY[0x277CCACA8];
    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"NUMERIC_MESSAGE" value:&stru_284EE3458 table:@"SSPAlert"];
    v82 = [v31 stringWithFormat:v33, v80, v80];

    v34 = MEMORY[0x277D750F8];
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v36 = [v35 localizedStringForKey:@"PAIR_BUTTON" value:&stru_284EE3458 table:@"SSPAlert"];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __50__BTSSPPairingRequest_setPairingStyle_andPasskey___block_invoke_2;
    v87[3] = &unk_278BB0758;
    objc_copyWeak(&v88, location);
    v14 = [v34 actionWithTitle:v36 style:0 handler:v87];

    objc_destroyWeak(&v88);
  }

LABEL_36:
  [(UIAlertController *)self->_alert setTitle:v81];
  [(UIAlertController *)self->_alert setMessage:v82];
  if (v15)
  {
    v53 = objc_alloc_init(MEMORY[0x277D756B8]);
    v54 = objc_alloc(MEMORY[0x277CCAB48]);
    v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\r\n", v15];
    v56 = [v54 initWithString:v55];

    v57 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
    v58 = [v15 length];
    [v56 addAttribute:*MEMORY[0x277D740A8] value:v57 range:{0, v58}];

    [v53 setAttributedText:v56];
    [v53 setNumberOfLines:0];
    [v53 setTextAlignment:1];
    [v53 setBaselineAdjustment:1];
    [v53 setAdjustsFontSizeToFitWidth:1];
    [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
    v59 = objc_alloc_init(MEMORY[0x277D75D28]);
    v60 = [v59 view];
    [v60 setFrame:{0.0, 0.0, 50.0, 50.0}];

    v61 = [v59 view];
    [v61 addSubview:v53];

    v62 = [v53 centerXAnchor];
    v63 = [v59 view];
    v64 = [v63 centerXAnchor];
    v65 = [v62 constraintEqualToAnchor:v64];
    [v65 setActive:1];

    v66 = [v53 topAnchor];
    v67 = [v59 view];
    v68 = [v67 topAnchor];
    v69 = [v66 constraintEqualToAnchor:v68 constant:20.0];
    [v69 setActive:1];

    v70 = [v53 bottomAnchor];
    v71 = [v59 view];
    v72 = [v71 bottomAnchor];
    v73 = [v70 constraintEqualToAnchor:v72 constant:-20.0];
    [v73 setActive:1];

    v74 = [v59 view];
    [v74 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
    [v59 setPreferredContentSize:?];

    [(UIAlertController *)self->_alert setContentViewController:v59];
  }

  v75 = MEMORY[0x277D750F8];
  v76 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v77 = [v76 localizedStringForKey:@"CANCEL_BUTTON" value:&stru_284EE3458 table:@"SSPAlert"];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __50__BTSSPPairingRequest_setPairingStyle_andPasskey___block_invoke_4;
  v83[3] = &unk_278BB0758;
  objc_copyWeak(&v84, location);
  v78 = [v75 actionWithTitle:v77 style:0 handler:v83];

  [(UIAlertController *)self->_alert addAction:v78];
  if (v14)
  {
    [(UIAlertController *)self->_alert addAction:v14];
  }

  objc_destroyWeak(&v84);
  objc_destroyWeak(location);
}

void __50__BTSSPPairingRequest_setPairingStyle_andPasskey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptSSP:0];
}

void __50__BTSSPPairingRequest_setPairingStyle_andPasskey___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptSSP:0];
}

void __50__BTSSPPairingRequest_setPairingStyle_andPasskey___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptSSP:0];
}

void __50__BTSSPPairingRequest_setPairingStyle_andPasskey___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptSSP:1];
}

- (void)hidPairingResult:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v7 = [(BluetoothDevice *)self->_device name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Received %@ for device %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)acceptSSP:(int64_t)a3
{
  pairingStyle = self->_pairingStyle;
  if (a3 == 1)
  {
    if (pairingStyle == 4 || pairingStyle == 3)
    {
      device = self->_device;

      [(BluetoothDevice *)device setPIN:0];
      return;
    }
  }

  else if (pairingStyle == 4)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v8 = self->_device;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04u", objc_msgSend(v7, "unsignedIntValue")];
    [(BluetoothDevice *)v8 setPIN:v9];

    v10 = [(PSSpecifier *)self->_specifier userInfo];
    [v10 setObject:@"entered" forKey:@"PIN-ended"];
  }

  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v12 = self->_delegate;
    v13 = self->_device;

    [v12 setSSPConfirmation:a3 forDevice:v13];
  }

  else
  {
    v14 = [(PSSpecifier *)self->_specifier userInfo];
    v15 = v14;
    if (a3)
    {
      v16 = @"cancelled";
    }

    else
    {
      v16 = @"accepted";
    }

    [v14 setObject:v16 forKey:@"PIN-ended"];

    v17 = [MEMORY[0x277CF3248] sharedInstance];
    [v17 acceptSSP:a3 forDevice:self->_device];
  }
}

- (BOOL)hasLimitedSupportForHID
{
  v4 = *MEMORY[0x277D85DE8];
  result = MGIsDeviceOneOfType();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

@end