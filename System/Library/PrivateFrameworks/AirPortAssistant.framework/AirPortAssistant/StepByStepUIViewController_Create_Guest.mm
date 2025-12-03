@interface StepByStepUIViewController_Create_Guest
- (BOOL)validateAndSetValues;
- (void)addGuestNetworkIsEnabledSection;
- (void)addGuestNetworkPasswordSection;
- (void)loadView;
- (void)setupInitialTableHeaderConfiguration;
- (void)setupTable;
- (void)switchTouchedInCellAtIndexPath:(id)path forSwitchIndex:(unint64_t)index isOn:(BOOL)on;
- (void)updateTable;
- (void)validateAndUpdateNextButton;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController_Create_Guest

- (void)loadView
{
  v40.receiver = self;
  v40.super_class = StepByStepUIViewController_Create_Guest;
  [(StepByStepUIViewController *)&v40 loadView];
  objc_msgSend_setGuestNetworkEnabled_(self, v3, 0);
  objc_msgSend_setGuestNetSecMode_(self, v4, 1);
  outResultsDict = self->super.super._outResultsDict;
  v6 = MEMORY[0x277CCABB0];
  v9 = objc_msgSend_guestNetworkEnabled(self, v7, v8);
  v11 = objc_msgSend_numberWithBool_(v6, v10, v9);
  objc_msgSend_setValue_forKey_(outResultsDict, v12, v11, @"kSBSKey_GuestNetwork_On");
  objc_msgSend_setValue_forKey_(self->super.super._outResultsDict, v13, &stru_285145FE8, @"kSBSKey_GuestNetwork_Name");
  v14 = self->super.super._outResultsDict;
  v15 = MEMORY[0x277CCABB0];
  v18 = objc_msgSend_guestNetSecMode(self, v16, v17);
  v20 = objc_msgSend_numberWithInteger_(v15, v19, v18);
  objc_msgSend_setValue_forKey_(v14, v21, v20, @"kSBSKey_GuestNetwork_Security");
  objc_msgSend_setValue_forKey_(self->super.super._outResultsDict, v22, &stru_285145FE8, @"kSBSKey_GuestNetwork_Password");
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v23, @"kNext", 0, 0);
  justTextLabel = self->super.justTextLabel;
  justTextContainerView = self->super.justTextContainerView;
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v26, @"StepByStepChoice_Create_Guest.GuestNetworkInfo%@");
  sub_23EB5E054(justTextLabel, justTextContainerView, ProductLocalizedStringWithFormat);
  v30 = objc_msgSend_tableHeaderContainerView(self, v28, v29);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v31, v30);
  v34 = objc_msgSend_tableHeaderContainerView(self, v32, v33);
  v37 = objc_msgSend_tableView(self, v35, v36);
  objc_msgSend_setTableHeaderView_(v37, v38, v34);
  objc_msgSend_setDelegate_(self, v39, self);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = objc_msgSend_valueForKey_(self->super.super._outResultsDict, a2, @"kSBSKey_GuestNetwork_On");
  v8 = objc_msgSend_BOOLValue(v5, v6, v7);
  objc_msgSend_setGuestNetworkEnabled_(self, v9, v8);
  v11 = objc_msgSend_valueForKey_(self->super.super._outResultsDict, v10, @"kSBSKey_GuestNetwork_Name");
  if (v11)
  {
    objc_msgSend_setWifiName_(self, v12, v11);
  }

  else
  {
    objc_msgSend_setWifiName_(self, v12, &stru_285145FE8);
  }

  v14 = objc_msgSend_valueForKey_(self->super.super._outResultsDict, v13, @"kSBSKey_GuestNetwork_Security");
  v17 = objc_msgSend_integerValue(v14, v15, v16);
  objc_msgSend_setGuestNetSecMode_(self, v18, v17);
  v20 = objc_msgSend_valueForKey_(self->super.super._outResultsDict, v19, @"kSBSKey_GuestNetwork_Password");
  if (v20)
  {
    objc_msgSend_setWifiPassword_(self, v21, v20);
  }

  else
  {
    objc_msgSend_setWifiPassword_(self, v21, &stru_285145FE8);
  }

  v24 = objc_msgSend_inParamDict(self, v22, v23);
  v26 = objc_msgSend_objectForKey_(v24, v25, @"kSBSKey_TargetBase");
  objc_msgSend_syncTopoUIForTarget_andSource_andNetwork_connectionType_(self, v27, v26, 0, 0, 0);
  objc_msgSend_setupTable(self, v28, v29);
  objc_msgSend_updateTable(self, v30, v31);
  objc_msgSend_validateAndUpdateNextButton(self, v32, v33);
  v34.receiver = self;
  v34.super_class = StepByStepUIViewController_Create_Guest;
  [(StepByStepUIViewController *)&v34 viewWillAppear:appearCopy];
}

- (void)setupInitialTableHeaderConfiguration
{
  v4 = MEMORY[0x277CBEA60];
  v5 = objc_msgSend_justTextContainerView(self, a2, v2);
  v8 = objc_msgSend_topoView(self, v6, v7);
  v10 = objc_msgSend_arrayWithObjects_(v4, v9, v5, v8, 0);
  v13 = objc_msgSend_parentController(self, v11, v12);
  v16 = objc_msgSend_tableHeaderContainerView(self, v14, v15);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v13, v17, v16, v10, 1);
  v20 = objc_msgSend_tableHeaderContainerView(self, v18, v19);
  v23 = objc_msgSend_tableView(self, v21, v22);

  objc_msgSend_setTableHeaderView_(v23, v24, v20);
}

- (BOOL)validateAndSetValues
{
  v4 = objc_msgSend_tableManager(self, a2, v2);
  ValueForFirstItemOfType_inCellWithTag = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v4, v5, @"editTextView", 1196314221);
  v9 = objc_msgSend_UTF8String(ValueForFirstItemOfType_inCellWithTag, v7, v8);
  v10 = sub_23EB6BB98(v9);
  if (v10)
  {
    objc_msgSend_setWifiName_(self, v11, ValueForFirstItemOfType_inCellWithTag);
    if (objc_msgSend_guestNetSecMode(self, v12, v13) != 7)
    {
LABEL_6:
      LOBYTE(v10) = 1;
      return v10;
    }

    v16 = objc_msgSend_tableManager(self, v14, v15);
    v18 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v16, v17, @"editTextView", 1196314743);
    v21 = objc_msgSend_tableManager(self, v19, v20);
    v23 = objc_msgSend_getValueForFirstItemOfType_inCellWithTag_(v21, v22, @"editTextView", 1196314710);
    v26 = objc_msgSend_tableManager(self, v24, v25);
    v10 = objc_msgSend_verifyStr1_forTag1_matchesStr2_forTag2_(v26, v27, v18, 1196314743, v23, 1196314710);
    if (v10)
    {
      v30 = objc_msgSend_UTF8String(v18, v28, v29);
      v10 = sub_23EB6BBDC(v30);
      if (v10)
      {
        objc_msgSend_setWifiPassword_(self, v31, v18);
        goto LABEL_6;
      }
    }
  }

  return v10;
}

- (void)switchTouchedInCellAtIndexPath:(id)path forSwitchIndex:(unint64_t)index isOn:(BOOL)on
{
  onCopy = on;
  v15 = 0;
  v8 = objc_msgSend_tableManager(self, a2, path, index);
  if (objc_msgSend_tagOfCellAtIndexPath_tag_(v8, v9, path, &v15))
  {
    if (v15 == 1196314707)
    {
      if (onCopy)
      {
        objc_msgSend_setGuestNetSecMode_(self, v10, 7);
      }

      else
      {
        objc_msgSend_setGuestNetSecMode_(self, v10, 1);
      }
    }

    else
    {
      if (v15 != 1196315511)
      {
        return;
      }

      objc_msgSend_setGuestNetworkEnabled_(self, v10, onCopy);
    }

    objc_msgSend_updateTable(self, v11, v12);
    objc_msgSend_validateAndUpdateNextButton(self, v13, v14);
  }
}

- (void)setupTable
{
  v4 = objc_msgSend_tableManager(self, a2, v2);
  objc_msgSend_cleanTableViewForReuse(v4, v5, v6);
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
  v12 = objc_msgSend_tableManager(self, v10, v11);
  v13 = sub_23EB6CD3C(@"StepByStepChoice_Create_Guest.GuestNetSwitchLabel", qword_27E383800);
  v16 = objc_msgSend_guestNetworkEnabled(self, v14, v15);
  v18 = objc_msgSend_createRowStyleBasicOnOffWithImage_labelText_isOn_withTag_(v12, v17, 0, v13, v16, 1196315511);
  objc_msgSend_addObject_(v9, v19, v18);
  v22 = objc_msgSend_tableManager(self, v20, v21);
  v24 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v23, v9, @"sectionRows", @"GuestNetworkSwitch", @"identifier", 0);
  objc_msgSend_addSectionInfo_(v22, v25, v24);

  objc_msgSend_setupInitialTableHeaderConfiguration(self, v26, v27);
}

- (void)updateTable
{
  if (objc_msgSend_guestNetworkEnabled(self, a2, v2))
  {
    objc_msgSend_addGuestNetworkIsEnabledSection(self, v4, v5);
    if (objc_msgSend_guestNetSecMode(self, v6, v7) != 1)
    {

      MEMORY[0x2821F9670](self, sel_addGuestNetworkPasswordSection, v9);
      return;
    }
  }

  else
  {
    v10 = objc_msgSend_tableManager(self, v4, v5);
    objc_msgSend_deleteSectionWithIdentifier_(v10, v11, @"GuestNetworkWiFiName");
    v14 = objc_msgSend_tableManager(self, v12, v13);
    objc_msgSend_deleteSectionWithIdentifier_(v14, v15, @"GuestNetworkWPASwitch");
  }

  v16 = objc_msgSend_tableManager(self, v8, v9);

  objc_msgSend_deleteSectionWithIdentifier_(v16, v17, @"GuestNetworkPassword");
}

- (void)addGuestNetworkIsEnabledSection
{
  v4 = objc_msgSend_tableManager(self, a2, v2);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v4, v5, @"GuestNetworkWiFiName") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
    v11 = objc_msgSend_tableManager(self, v9, v10);
    v12 = sub_23EB6CD3C(@"CustomWiFiName", qword_27E383800);
    v13 = sub_23EB6CD3C(@"CustomWiFiNamePlaceholder", qword_27E383800);
    isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v11, v14, 0, v12, &stru_285145FE8, v13, 0, 0, 1196314221);
    v17 = sub_23EB5E230(1651722062, v16);
    if (v17)
    {
      objc_msgSend_setObject_forKey_(isSecure_keyboardType_withTag, v18, v17, @"nsFormatter");
    }

    objc_msgSend_addObject_(v8, v18, isSecure_keyboardType_withTag);
    v21 = objc_msgSend_tableManager(self, v19, v20);
    v23 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v22, v8, @"sectionRows", @"GuestNetworkWiFiName", @"identifier", 0);
    objc_msgSend_addSectionInfo_(v21, v24, v23);
  }

  v25 = objc_msgSend_tableManager(self, v6, v7);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v25, v26, @"GuestNetworkWPASwitch") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v27, v28);
    v32 = objc_msgSend_tableManager(self, v30, v31);
    v33 = sub_23EB6CD3C(@"StepByStepChoice_Create_Guest.GuestNetWPASwitchLabel", qword_27E383800);
    v36 = objc_msgSend_guestNetSecMode(self, v34, v35) != 1;
    v38 = objc_msgSend_createRowStyleBasicOnOffWithImage_labelText_isOn_withTag_(v32, v37, 0, v33, v36, 1196314707);
    objc_msgSend_addObject_(v29, v39, v38);
    v42 = objc_msgSend_tableManager(self, v40, v41);
    v45 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v43, v29, @"sectionRows", @"GuestNetworkWPASwitch", @"identifier", 0);

    objc_msgSend_addSectionInfo_(v42, v44, v45);
  }
}

- (void)addGuestNetworkPasswordSection
{
  v4 = objc_msgSend_tableManager(self, a2, v2);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v4, v5, @"GuestNetworkPassword") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
    v11 = objc_msgSend_tableManager(self, v9, v10);
    v12 = sub_23EB6CD3C(@"PasswordLabel", qword_27E383800);
    v15 = objc_msgSend_wifiPassword(self, v13, v14);
    v16 = sub_23EB6CD3C(@"CreatePasswordPlaceholder", qword_27E383800);
    isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v11, v17, 0, v12, v15, v16, 1, 0, 1196314743);
    v22 = sub_23EB5E230(1651722064, v19);
    if (v22)
    {
      objc_msgSend_setObject_forKey_(isSecure_keyboardType_withTag, v20, v22, @"nsFormatter");
    }

    v23 = objc_msgSend_tableManager(self, v20, v21);
    objc_msgSend_setNewRow_verifierAccessoryType_(v23, v24, isSecure_keyboardType_withTag, 0);
    objc_msgSend_addObject_(v8, v25, isSecure_keyboardType_withTag);
    v28 = objc_msgSend_tableManager(self, v26, v27);
    v29 = sub_23EB6CD3C(@"VerifyLabel", qword_27E383800);
    v32 = objc_msgSend_wifiPassword(self, v30, v31);
    v33 = sub_23EB6CD3C(@"VerifyPlaceholder", qword_27E383800);
    v35 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v28, v34, 0, v29, v32, v33, 1, 0, 1196314710);
    v38 = v35;
    if (v22)
    {
      objc_msgSend_setObject_forKey_(v35, v36, v22, @"nsFormatter");
    }

    v39 = objc_msgSend_tableManager(self, v36, v37);
    objc_msgSend_setNewRow_verifierAccessoryType_(v39, v40, v38, 0);
    objc_msgSend_addObject_(v8, v41, v38);
    v44 = objc_msgSend_tableManager(self, v42, v43);
    v45 = MEMORY[0x277CBEB38];
    v46 = sub_23EB6CD3C(@"WiFiPasswordRequirement", qword_27E383800);
    v49 = objc_msgSend_dictionaryWithObjectsAndKeys_(v45, v47, v8, @"sectionRows", v46, @"footer", @"GuestNetworkPassword", @"identifier", 0);

    objc_msgSend_addSectionInfo_(v44, v48, v49);
  }
}

- (void)validateAndUpdateNextButton
{
  outResultsDict = self->super.super._outResultsDict;
  v5 = MEMORY[0x277CCABB0];
  v6 = objc_msgSend_guestNetworkEnabled(self, a2, v2);
  v8 = objc_msgSend_numberWithBool_(v5, v7, v6);
  objc_msgSend_setValue_forKey_(outResultsDict, v9, v8, @"kSBSKey_GuestNetwork_On");
  if (!objc_msgSend_guestNetworkEnabled(self, v10, v11))
  {
LABEL_5:
    v30 = 1;
    goto LABEL_7;
  }

  if (objc_msgSend_validateAndSetValues(self, v12, v13))
  {
    v14 = self->super.super._outResultsDict;
    v15 = objc_msgSend_wifiName(self, v12, v13);
    objc_msgSend_setValue_forKey_(v14, v16, v15, @"kSBSKey_GuestNetwork_Name");
    v17 = self->super.super._outResultsDict;
    v18 = MEMORY[0x277CCABB0];
    v21 = objc_msgSend_guestNetSecMode(self, v19, v20);
    v23 = objc_msgSend_numberWithInteger_(v18, v22, v21);
    objc_msgSend_setValue_forKey_(v17, v24, v23, @"kSBSKey_GuestNetwork_Security");
    if (objc_msgSend_guestNetSecMode(self, v25, v26) != 1)
    {
      v27 = self->super.super._outResultsDict;
      v28 = objc_msgSend_wifiPassword(self, v12, v13);
      objc_msgSend_setValue_forKey_(v27, v29, v28, @"kSBSKey_GuestNetwork_Password");
    }

    goto LABEL_5;
  }

  v30 = 0;
LABEL_7:
  v31 = objc_msgSend_navigationItem(self, v12, v13);
  v34 = objc_msgSend_rightBarButtonItem(v31, v32, v33);

  objc_msgSend_setEnabled_(v34, v35, v30);
}

@end