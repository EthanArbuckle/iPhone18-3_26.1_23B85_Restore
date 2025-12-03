@interface StepByStepUIViewController_ExtendWireless_Config
- (BOOL)shouldChangeTextField:(id)field atIndexPath:(id)path forTextIndex:(unint64_t)index toString:(id)string;
- (StepByStepUIViewController_ExtendWireless_Config)initWithNibName:(id)name bundle:(id)bundle;
- (id)deviceTableLabel;
- (void)primaryActionSelected:(BOOL)selected;
- (void)selectedDeviceUpdated;
- (void)setupAndShowEditableBaseStationName;
- (void)setupDevices;
- (void)setupHeaderAndFooter;
- (void)validateAndUpdateNextButton;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController_ExtendWireless_Config

- (StepByStepUIViewController_ExtendWireless_Config)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = StepByStepUIViewController_ExtendWireless_Config;
  result = [(StepByStepUIViewController_DevicePicker *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->connectionType = &off_27E3830E8[0]->isa;
    result->unlocalizedStatusString = @"StepByStepStatus_ExtendWireless%@";
    result->isReallyJoin = 0;
  }

  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = objc_msgSend_inParamDict(self, a2, appear);
  v7 = objc_msgSend_valueForKey_(v5, v6, @"kSBSKey_SelectorChoice");
  if (v7 && objc_msgSend_integerValue(v7, v8, v9) == 212)
  {
    self->isReallyJoin = 1;
    self->unlocalizedStatusString = @"PrimarySetupRecommendation_Join.Specific";
  }

  v10.receiver = self;
  v10.super_class = StepByStepUIViewController_ExtendWireless_Config;
  [(StepByStepUIViewController_DevicePicker *)&v10 viewWillAppear:appearCopy];
}

- (void)setupAndShowEditableBaseStationName
{
  v4 = objc_msgSend_tableManager(self, a2, v2);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v4, v5, @"WiFiName") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
    v11 = objc_msgSend_inParamDict(self, v9, v10);
    v13 = objc_msgSend_objectForKey_(v11, v12, @"kSBSKey_TargetBase");
    v21 = sub_23EB6A2C0(v13, v14, v15, v16, v17, v18, v19, v20);
    v24 = objc_msgSend_inParamDict(self, v22, v23);
    v26 = objc_msgSend_objectForKey_(v24, v25, @"kSBSKey_TargetBase");
    v34 = sub_23EB6A294(v26, v27, v28, v29, v30, v31, v32, v33);
    v35 = sub_23EB6D75C(v21, v34);
    objc_msgSend_setPersonalizedBaseName_(self, v36, v35);
    v39 = objc_msgSend_personalizedBaseName(self, v37, v38);
    if (!objc_msgSend_length(v39, v40, v41))
    {
      v44 = sub_23EB6D7A8(v21, v34);
      objc_msgSend_setPersonalizedBaseName_(self, v45, v44);
    }

    v46 = objc_msgSend_outResultsDict(self, v42, v43);
    v49 = objc_msgSend_personalizedBaseName(self, v47, v48);
    objc_msgSend_setValue_forKey_(v46, v50, v49, @"kSBSKey_BaseName");
    v53 = objc_msgSend_tableManager(self, v51, v52);
    v54 = sub_23EB6CD3C(@"CustomBaseName", qword_27E383800);
    v57 = objc_msgSend_personalizedBaseName(self, v55, v56);
    v58 = sub_23EB6CD3C(@"CustomBaseNamePlaceholder", qword_27E383800);
    isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v53, v59, 0, v54, v57, v58, 0, 0, 1937329773);
    objc_msgSend_addObject_(v8, v61, isSecure_keyboardType_withTag);
    v64 = objc_msgSend_tableManager(self, v62, v63);
    v67 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v65, v8, @"sectionRows", @"WiFiName", @"identifier", 0);

    objc_msgSend_addSectionInfo_(v64, v66, v67);
  }
}

- (void)setupHeaderAndFooter
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

  MEMORY[0x2821F9670](self, sel_setupAndShowEditableBaseStationName, v25);
}

- (void)primaryActionSelected:(BOOL)selected
{
  if (selected)
  {

    MEMORY[0x2821F9670](self, sel_setupAndShowEditableBaseStationName, selected);
  }

  else
  {
    v4 = objc_msgSend_tableManager(self, a2, selected);

    objc_msgSend_deleteSectionWithIdentifier_(v4, v5, @"WiFiName");
  }
}

- (void)selectedDeviceUpdated
{
  v3 = objc_msgSend_nameForNetworkOrDevice_(StepByStepUtilities, a2, self->super._selectedDevice);
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v4, self->unlocalizedStatusString);
  justTextLabel = self->super.super.justTextLabel;
  v9 = objc_msgSend_justTextContainerView(self, v7, v8);
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v10, ProductLocalizedStringWithFormat, @"%@", 0, v3);
  sub_23EB5E054(justTextLabel, v9, valid);
  v14 = objc_msgSend_tableHeaderContainerView(self, v12, v13);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v15, v14);
  v18 = objc_msgSend_tableHeaderContainerView(self, v16, v17);
  v21 = objc_msgSend_tableView(self, v19, v20);

  objc_msgSend_setTableHeaderView_(v21, v22, v18);
}

- (id)deviceTableLabel
{
  if (self->isReallyJoin)
  {
    v2 = @"StepByStepStatus_ExtendWireless_Config.DeviceToJoin";
  }

  else
  {
    v2 = @"StepByStepStatus_ExtendWireless_Config.DeviceToExtend";
  }

  return sub_23EB6CD3C(v2, qword_27E383800);
}

- (void)setupDevices
{
  v4 = MEMORY[0x277CBEB18];
  v5 = objc_msgSend_inParamDict(self, a2, v2);
  v7 = objc_msgSend_objectForKey_(v5, v6, @"kSBSKey_BrowseRecordList");
  v9 = objc_msgSend_arrayWithArray_(v4, v8, v7);
  if (v9)
  {
    v11 = objc_msgSend_sortedArrayUsingSelector_(v9, v10, sel_ssidAndBaseNameLocalizedCaseInsensitiveCompare_);
    objc_msgSend_setSortedDevices_(self, v12, v11);
    self->super._selectedDevice = self->super._sourceBase;
    connectionType = self->connectionType;

    MEMORY[0x2821F9670](self, sel_setConnectionMedium_, connectionType);
  }
}

- (void)validateAndUpdateNextButton
{
  v4 = objc_msgSend_outResultsDict(self, a2, v2);
  if (objc_msgSend_valueForKey_(v4, v5, @"kSBSKey_SourceBase"))
  {
    v8 = objc_msgSend_outResultsDict(self, v6, v7);
    v10 = objc_msgSend_valueForKey_(v8, v9, @"kSBSKey_BaseName");
    v13 = objc_msgSend_length(v10, v11, v12) != 0;
    v16 = objc_msgSend_navigationItem(self, v14, v15);
    v19 = objc_msgSend_rightBarButtonItem(v16, v17, v18);

    objc_msgSend_setEnabled_(v19, v20, v13);
  }
}

- (BOOL)shouldChangeTextField:(id)field atIndexPath:(id)path forTextIndex:(unint64_t)index toString:(id)string
{
  v8 = objc_msgSend_outResultsDict(self, a2, field, path, index);
  objc_msgSend_setValue_forKey_(v8, v9, string, @"kSBSKey_BaseName");
  objc_msgSend_validateAndUpdateNextButton(self, v10, v11);
  return 1;
}

@end