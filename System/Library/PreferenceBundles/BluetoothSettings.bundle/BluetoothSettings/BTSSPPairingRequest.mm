@interface BTSSPPairingRequest
- (BOOL)hasLimitedSupportForHID;
- (BTSSPPairingRequest)initWithDevice:(id)device andSpecifier:(id)specifier;
- (id)sanitizeNameForAlert:(id)alert;
- (void)acceptSSP:(int64_t)p;
- (void)dealloc;
- (void)hidPairingResult:(id)result;
- (void)setPairingStyle:(int)style andPasskey:(id)passkey;
@end

@implementation BTSSPPairingRequest

- (BTSSPPairingRequest)initWithDevice:(id)device andSpecifier:(id)specifier
{
  deviceCopy = device;
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = BTSSPPairingRequest;
  v9 = [(BTSSPPairingRequest *)&v14 init];
  if (v9)
  {
    v10 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:1];
    alert = v9->_alert;
    v9->_alert = v10;

    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v9->_specifier, specifier);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_hidPairingResult_ name:*MEMORY[0x277CF3210] object:0];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (id)sanitizeNameForAlert:(id)alert
{
  alertCopy = alert;
  v4 = [MEMORY[0x277CCAC80] scannerWithString:alertCopy];
  illegalCharacterSet = [MEMORY[0x277CCA900] illegalCharacterSet];
  [v4 setCharactersToBeSkipped:illegalCharacterSet];

  string = [MEMORY[0x277CCAB68] string];
  string2 = [MEMORY[0x277CCAB68] string];
  while (1)
  {
    v8 = string2;
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v16 = string2;
    v10 = [v4 scanUpToCharactersFromSet:whitespaceAndNewlineCharacterSet intoString:&v16];
    string2 = v16;

    if (!v10)
    {
      break;
    }

    [string appendString:string2];
    whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v12 = [v4 scanCharactersFromSet:whitespaceAndNewlineCharacterSet2 intoString:0];

    if (v12)
    {
      [string appendString:@" "];
    }
  }

  if ([string length] < 0x33)
  {
    v13 = string;
  }

  else
  {
    v13 = [string substringToIndex:50];
  }

  v14 = v13;

  return v14;
}

- (void)setPairingStyle:(int)style andPasskey:(id)passkey
{
  passkeyCopy = passkey;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v81 = [v6 localizedStringForKey:@"PAIRING_TITLE" value:&stru_284EE3458 table:@"SSPAlert"];

  name = [(BluetoothDevice *)self->_device name];
  v80 = [(BTSSPPairingRequest *)self sanitizeNameForAlert:name];

  self->_pairingStyle = style;
  objc_initWeak(location, self);
  type = [(BluetoothDevice *)self->_device type];
  productId = [(BluetoothDevice *)self->_device productId];
  vendorId = [(BluetoothDevice *)self->_device vendorId];
  if (vendorId == 76)
  {
    v11 = 0;
    v12 = productId == 613 || productId == 617;
  }

  else if (vendorId == 1452)
  {
    if ((productId - 777) >= 6)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0x39u >> (productId - 9);
    }

    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v14 = 0;
  if (style > 1)
  {
    if (style == 2)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%06u", objc_msgSend(passkeyCopy, "unsignedIntValue")];
      v37 = MEMORY[0x277CCACA8];
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"PASSKEY_MESSAGE" value:&stru_284EE3458 table:@"SSPAlert"];
      v82 = [v37 stringWithFormat:v39, v80, v80];
    }

    else
    {
      if (style != 3)
      {
        v15 = 0;
        v82 = 0;
        if (style != 4)
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

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04u", objc_msgSend(passkeyCopy, "unsignedIntValue")];
      v40 = MEMORY[0x277CCACA8];
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"HID_MESSAGE" value:&stru_284EE3458 table:@"SSPAlert"];
      v82 = [v40 stringWithFormat:v39, v80];
    }

    v14 = 0;
    goto LABEL_36;
  }

  if (!style)
  {
    v41 = MEMORY[0x277CCACA8];
    v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v43 = [v42 localizedStringForKey:@"JUST_WORKS_MESSAGE" value:&stru_284EE3458 table:@"SSPAlert"];
    v82 = [v41 stringWithFormat:v43, v80];

    if ((type == 25) | (v11 | v12) & 1 && [(BTSSPPairingRequest *)self hasLimitedSupportForHID])
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
  if (style == 1)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%06u", objc_msgSend(passkeyCopy, "unsignedIntValue")];
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
    view = [v59 view];
    [view setFrame:{0.0, 0.0, 50.0, 50.0}];

    view2 = [v59 view];
    [view2 addSubview:v53];

    centerXAnchor = [v53 centerXAnchor];
    view3 = [v59 view];
    centerXAnchor2 = [view3 centerXAnchor];
    v65 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v65 setActive:1];

    topAnchor = [v53 topAnchor];
    view4 = [v59 view];
    topAnchor2 = [view4 topAnchor];
    v69 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
    [v69 setActive:1];

    bottomAnchor = [v53 bottomAnchor];
    view5 = [v59 view];
    bottomAnchor2 = [view5 bottomAnchor];
    v73 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-20.0];
    [v73 setActive:1];

    view6 = [v59 view];
    [view6 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
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

- (void)hidPairingResult:(id)result
{
  v13 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v5 = sharedBluetoothSettingsLogComponent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [resultCopy name];
    name2 = [(BluetoothDevice *)self->_device name];
    v9 = 138412546;
    v10 = name;
    v11 = 2112;
    v12 = name2;
    _os_log_impl(&dword_23C0F7000, v5, OS_LOG_TYPE_DEFAULT, "Received %@ for device %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)acceptSSP:(int64_t)p
{
  pairingStyle = self->_pairingStyle;
  if (p == 1)
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

    userInfo = [(PSSpecifier *)self->_specifier userInfo];
    [userInfo setObject:@"entered" forKey:@"PIN-ended"];
  }

  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v12 = self->_delegate;
    v13 = self->_device;

    [v12 setSSPConfirmation:p forDevice:v13];
  }

  else
  {
    userInfo2 = [(PSSpecifier *)self->_specifier userInfo];
    v15 = userInfo2;
    if (p)
    {
      v16 = @"cancelled";
    }

    else
    {
      v16 = @"accepted";
    }

    [userInfo2 setObject:v16 forKey:@"PIN-ended"];

    mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];
    [mEMORY[0x277CF3248] acceptSSP:p forDevice:self->_device];
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