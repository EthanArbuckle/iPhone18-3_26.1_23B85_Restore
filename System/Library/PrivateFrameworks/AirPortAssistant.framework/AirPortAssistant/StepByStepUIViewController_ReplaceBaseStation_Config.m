@interface StepByStepUIViewController_ReplaceBaseStation_Config
- (BOOL)shouldChangeTextField:(id)a3 atIndexPath:(id)a4 forTextIndex:(unint64_t)a5 toString:(id)a6;
- (void)dealloc;
- (void)loadView;
- (void)prepareParams;
- (void)primaryActionSelected:(BOOL)a3;
- (void)selectedDeviceUpdated;
- (void)setupDevices;
- (void)setupEditableBaseStationName;
- (void)setupHeaderAndFooter;
- (void)validateAndUpdateNextButton;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation StepByStepUIViewController_ReplaceBaseStation_Config

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = StepByStepUIViewController_ReplaceBaseStation_Config;
  [(StepByStepUIViewController_DevicePicker *)&v12 loadView];
  v11 = 0;
  v5 = objc_msgSend_view(self, v3, v4);
  objc_msgSend_frame(v5, v6, v7);
  self->justTextLabel2 = objc_msgSend_labelViewInContainer_width_(AssistantSubUIViewController, v8, &v11, v9);
  objc_msgSend_setJustTextContainerView2_(self, v10, v11);
}

- (void)dealloc
{
  objc_msgSend_setJustTextContainerView2_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = StepByStepUIViewController_ReplaceBaseStation_Config;
  [(StepByStepUIViewController *)&v3 dealloc];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_tableFooterContainerView(self, a2, a3);
  v8 = objc_msgSend_tableView(self, v6, v7);
  objc_msgSend_setTableFooterView_(v8, v9, v5);
  v10.receiver = self;
  v10.super_class = StepByStepUIViewController_ReplaceBaseStation_Config;
  [(StepByStepUIViewController_DevicePicker *)&v10 viewWillAppear:v3];
}

- (void)setupEditableBaseStationName
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  v7 = objc_msgSend_inParamDict(self, v5, v6);
  v9 = objc_msgSend_objectForKey_(v7, v8, @"kSBSKey_TargetBase");
  v17 = sub_23EB6A2C0(v9, v10, v11, v12, v13, v14, v15, v16);
  v20 = objc_msgSend_inParamDict(self, v18, v19);
  v22 = objc_msgSend_objectForKey_(v20, v21, @"kSBSKey_TargetBase");
  v30 = sub_23EB6A294(v22, v23, v24, v25, v26, v27, v28, v29);
  v31 = sub_23EB6D75C(v17, v30);
  objc_msgSend_setPersonalizedBaseName_(self, v32, v31);
  v35 = objc_msgSend_personalizedBaseName(self, v33, v34);
  if (!objc_msgSend_length(v35, v36, v37))
  {
    v40 = sub_23EB6D7A8(v17, v30);
    objc_msgSend_setPersonalizedBaseName_(self, v41, v40);
  }

  v42 = objc_msgSend_outResultsDict(self, v38, v39);
  v45 = objc_msgSend_personalizedBaseName(self, v43, v44);
  objc_msgSend_setValue_forKey_(v42, v46, v45, @"kSBSKey_BaseName");
  v49 = objc_msgSend_tableManager(self, v47, v48);
  v50 = sub_23EB6CD3C(@"CustomBaseName", qword_27E383800);
  v53 = objc_msgSend_personalizedBaseName(self, v51, v52);
  v54 = sub_23EB6CD3C(@"CustomBaseNamePlaceholder", qword_27E383800);
  isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v49, v55, 0, v50, v53, v54, 0, 0, 1937329773);
  objc_msgSend_addObject_(v4, v57, isSecure_keyboardType_withTag);
  v60 = objc_msgSend_tableManager(self, v58, v59);
  v63 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v61, v4, @"sectionRows", @"WiFiName", @"identifier", 0);

  objc_msgSend_addSectionInfo_(v60, v62, v63);
}

- (void)setupHeaderAndFooter
{
  v4 = objc_msgSend_tableManager(self, a2, v2);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v4, v5, @"WiFiName") == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_setupEditableBaseStationName(self, v6, v7);
  }

  v8 = objc_msgSend_parentController(self, v6, v7);
  v11 = objc_msgSend_tableHeaderContainerView(self, v9, v10);
  v12 = MEMORY[0x277CBEA60];
  v15 = objc_msgSend_justTextContainerView(self, v13, v14);
  v18 = objc_msgSend_topoView(self, v16, v17);
  v20 = objc_msgSend_arrayWithObjects_(v12, v19, v15, v18, 0);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v8, v21, v11, v20, 0);
  v24 = objc_msgSend_tableHeaderContainerView(self, v22, v23);
  v27 = objc_msgSend_tableView(self, v25, v26);
  objc_msgSend_setTableHeaderView_(v27, v28, v24);
  v31 = objc_msgSend_parentController(self, v29, v30);
  v34 = objc_msgSend_tableFooterContainerView(self, v32, v33);
  v35 = MEMORY[0x277CBEA60];
  v38 = objc_msgSend_justTextContainerView2(self, v36, v37);
  v40 = objc_msgSend_arrayWithObjects_(v35, v39, v38, 0);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v31, v41, v34, v40, 0);
  v44 = objc_msgSend_tableFooterContainerView(self, v42, v43);
  v47 = objc_msgSend_tableView(self, v45, v46);

  objc_msgSend_setTableFooterView_(v47, v48, v44);
}

- (void)prepareParams
{
  v4 = objc_msgSend_inParamDict(self, a2, v2);
  v6 = objc_msgSend_objectForKey_(v4, v5, @"kSBSKey_SelectorChoice");
  if (v6)
  {
    objc_msgSend_setObject_forKey_(self->super.super.super._outResultsDict, v7, v6, @"kSBSKey_SelectorChoice");
    v10 = objc_msgSend_inParamDict(self, v8, v9);
    v12 = objc_msgSend_objectForKey_(v10, v11, @"kSBSKey_Mode");
    if (objc_msgSend_integerValue(v12, v13, v14) == 2)
    {

      objc_msgSend_setLeftNavigationButton_enable_hide_(self, v15, @"kCancel", 1, 0);
    }
  }
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
    v13 = off_27E3830F0;

    MEMORY[0x2821F9670](self, sel_setConnectionMedium_, v13);
  }
}

- (void)selectedDeviceUpdated
{
  v3 = objc_msgSend_nameForNetworkOrDevice_(StepByStepUtilities, a2, self->super._selectedDevice);
  v5 = objc_msgSend_objectForKey_(self->super._sourceBase, v4, @"raNm");
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v6, @"StepByStepStatus_ReplaceBaseStation%@");
  justTextLabel = self->super.super.justTextLabel;
  justTextContainerView = self->super.super.justTextContainerView;
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v10, ProductLocalizedStringWithFormat, @"%@", 0, v3);
  sub_23EB5E054(justTextLabel, justTextContainerView, valid);
  v14 = objc_msgSend_tableHeaderContainerView(self, v12, v13);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v15, v14);
  v18 = objc_msgSend_tableHeaderContainerView(self, v16, v17);
  v21 = objc_msgSend_tableView(self, v19, v20);
  objc_msgSend_setTableHeaderView_(v21, v22, v18);
  v25 = objc_msgSend_inParamDict(self, v23, v24);
  v27 = objc_msgSend_objectForKey_(v25, v26, @"kSBSKey_SelectorChoice");
  v30 = objc_msgSend_integerValue(v27, v28, v29);
  v32 = objc_msgSend_selectorChoiceToReplaceOption_(StepByStepUtilities, v31, v30);
  v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v33, @"ReplaceBaseRecommendOption.%@", v32);
  v42 = sub_23EB6CD3C(v34, qword_27E383800);
  switch(v30)
  {
    case 0x137:
      v44 = MEMORY[0x277CCACA8];
      v45 = sub_23EB6A2C0(self->super._targetBase, v35, v36, v37, v38, v39, v40, v41);
      v53 = sub_23EB6A294(self->super._targetBase, v46, v47, v48, v49, v50, v51, v52);
      v58 = sub_23EB6CEE0(v45, v53, 0);
      v43 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v44, v54, v42, @"%@%@", 0, v3, v58);
      goto LABEL_7;
    case 0x138:
      v43 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v35, v42, @"%@%@", 0, v3, v5);
      goto LABEL_7;
    case 0x139:
      v43 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v35, v42, @"%@", 0, v3);
LABEL_7:
      v55 = v43;
      goto LABEL_9;
  }

  v55 = &stru_285145FE8;
LABEL_9:
  sub_23EB5E054(self->justTextLabel2, self->justTextContainerView2, v55);
  tableHeaderContainerView = self->super.super.tableHeaderContainerView;

  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v56, tableHeaderContainerView);
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

- (BOOL)shouldChangeTextField:(id)a3 atIndexPath:(id)a4 forTextIndex:(unint64_t)a5 toString:(id)a6
{
  v8 = objc_msgSend_outResultsDict(self, a2, a3, a4, a5);
  objc_msgSend_setValue_forKey_(v8, v9, a6, @"kSBSKey_BaseName");
  objc_msgSend_validateAndUpdateNextButton(self, v10, v11);
  return 1;
}

- (void)primaryActionSelected:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_tableManager(self, a2, a3);
  if (v3)
  {
    if (objc_msgSend_indexOfSectionWithIdentifier_(v5, v6, @"WiFiName") == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_setupEditableBaseStationName(self, v7, v8);
    }

    v11 = objc_msgSend_tableFooterContainerView(self, v7, v8);
  }

  else
  {
    objc_msgSend_deleteSectionWithIdentifier_(v5, v6, @"WiFiName");
    v11 = 0;
  }

  v12 = objc_msgSend_tableView(self, v9, v10);

  objc_msgSend_setTableFooterView_(v12, v13, v11);
}

@end