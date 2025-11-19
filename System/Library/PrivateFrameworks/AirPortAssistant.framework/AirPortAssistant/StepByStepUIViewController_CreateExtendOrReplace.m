@interface StepByStepUIViewController_CreateExtendOrReplace
- (void)handleSelectorChoiceWithTag:(unint64_t)a3;
- (void)loadView;
- (void)setupInitialTableHeaderConfiguration;
- (void)setupTable;
- (void)touchInCellAtIndexPath:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation StepByStepUIViewController_CreateExtendOrReplace

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

- (void)setupTable
{
  objc_msgSend_setDelegate_(self, a2, self);
  v5 = objc_msgSend_inParamDict(self, v3, v4);
  v7 = objc_msgSend_objectForKey_(v5, v6, @"kSBSKey_SelectorChoice");
  if (v7)
  {
    v10 = objc_msgSend_integerValue(v7, v8, v9);
    v12 = objc_msgSend_selectorChoiceToMatrixTag_(StepByStepUtilities, v11, v10);
LABEL_5:
    v20 = v12;
    goto LABEL_6;
  }

  v15 = objc_msgSend_inParamDict(self, v8, v9);
  v17 = objc_msgSend_objectForKey_(v15, v16, @"kSBSKey_AutoGuessRecommendation");
  if (objc_msgSend_length(v17, v18, v19))
  {
    v12 = objc_msgSend_autoGuessRecommendationToMatrixTag_(StepByStepUtilities, v13, v17);
    goto LABEL_5;
  }

  v20 = 1131570529;
LABEL_6:
  v21 = objc_msgSend_tableManager(self, v13, v14);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v21, v22, @"CERR") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = objc_msgSend_tableManager(self, v26, v27);
    v29 = sub_23EB6CD3C(@"kCreateNetworkLabel", qword_27E383800);
    RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v28, v30, 0, v29, 0, 1131570529);
    objc_msgSend_addObject_(v25, v32, RowStyleBasicWithImage_text1_text2_withTag);
    v35 = objc_msgSend_tableManager(self, v33, v34);
    v36 = sub_23EB6CD3C(@"AddToExistingNetwork", qword_27E383800);
    v38 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v35, v37, 0, v36, 0, 1165522021);
    objc_msgSend_addObject_(v25, v39, v38);
    v42 = objc_msgSend_tableManager(self, v40, v41);
    v43 = sub_23EB6CD3C(@"kReplaceABaseStationLabel", qword_27E383800);
    v45 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v42, v44, 0, v43, 0, 1382379628);
    objc_msgSend_addObject_(v25, v46, v45);
    v49 = objc_msgSend_inParamDict(self, v47, v48);
    if (objc_msgSend_objectForKey_(v49, v50, @"kSBSKey_RestoreRecommendation"))
    {
      v53 = objc_msgSend_tableManager(self, v51, v52);
      v54 = sub_23EB6CD3C(@"kRestorePreviousConfig", qword_27E383800);
      v56 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v53, v55, 0, v54, 0, 1382380404);
      objc_msgSend_addObject_(v25, v57, v56);
    }

    v58 = objc_msgSend_tableManager(self, v51, v52);
    v59 = MEMORY[0x277CBEB38];
    v61 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v60, 1);
    v63 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v62, v20);
    v65 = objc_msgSend_dictionaryWithObjectsAndKeys_(v59, v64, v25, @"sectionRows", v61, @"sectionIsMenu", v63, @"selectedMenuItemTag", @"CERR", @"identifier", 0);
    objc_msgSend_addSectionInfo_(v58, v66, v65);
  }

  v67 = objc_msgSend_tableManager(self, v23, v24);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v67, v68, @"CERRFooter") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v72 = objc_msgSend_tableManager(self, v70, v71);
    v74 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v73, v69, @"sectionRows", &stru_285145FE8, @"footer", @"CERRFooter", @"identifier", 0);
    objc_msgSend_addSectionInfo_(v72, v75, v74);
  }

  MEMORY[0x2821F9670](self, sel_handleSelectorChoiceWithTag_, v20);
}

- (void)loadView
{
  v20.receiver = self;
  v20.super_class = StepByStepUIViewController_CreateExtendOrReplace;
  [(StepByStepUIViewController *)&v20 loadView];
  v5 = objc_msgSend_view(self, v3, v4);
  objc_msgSend_frame(v5, v6, v7);
  v9 = v8;
  v12 = objc_msgSend_view(self, v10, v11);
  objc_msgSend_frame(v12, v13, v14);
  v18 = objc_msgSend_tableViewWithWidth_height_(AssistantSubUIViewController, v15, v16, v9, v17);
  objc_msgSend_setTableView_(self, v19, v18);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  objc_msgSend_setRightNavigationButton_enable_hide_(self, a2, @"kNext", 0, 0);
  objc_msgSend_setupTable(self, v5, v6);
  justTextLabel = self->super.justTextLabel;
  justTextContainerView = self->super.justTextContainerView;
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v9, @"StepByStepStatus_CreateExtendReplace%@");
  sub_23EB5E054(justTextLabel, justTextContainerView, ProductLocalizedStringWithFormat);
  v13 = objc_msgSend_tableHeaderContainerView(self, v11, v12);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v14, v13);
  v17 = objc_msgSend_tableHeaderContainerView(self, v15, v16);
  v20 = objc_msgSend_tableView(self, v18, v19);
  objc_msgSend_setTableHeaderView_(v20, v21, v17);
  objc_msgSend_setupInitialTableHeaderConfiguration(self, v22, v23);
  v26 = objc_msgSend_inParamDict(self, v24, v25);
  v28 = objc_msgSend_objectForKey_(v26, v27, @"kSBSKey_TargetBase");
  objc_msgSend_syncTopoUIForTarget_andSource_andNetwork_connectionType_(self, v29, v28, 0, 0, 0);
  v30.receiver = self;
  v30.super_class = StepByStepUIViewController_CreateExtendOrReplace;
  [(StepByStepUIViewController *)&v30 viewWillAppear:v3];
}

- (void)touchInCellAtIndexPath:(id)a3
{
  v5 = objc_msgSend_tableManager(self, a2, a3);
  v8 = objc_msgSend_section(a3, v6, v7);
  v10 = objc_msgSend_tagOfSelectedRowInMenuSection_(v5, v9, v8);

  MEMORY[0x2821F9670](self, sel_handleSelectorChoiceWithTag_, v10);
}

- (void)handleSelectorChoiceWithTag:(unint64_t)a3
{
  v5 = objc_msgSend_matrixTagToSelectorChoice_(StepByStepUtilities, a2, a3);
  outResultsDict = self->super.super._outResultsDict;
  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v7, v5);
  objc_msgSend_setObject_forKey_(outResultsDict, v9, v8, @"kSBSKey_SelectorChoice");
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v10, @"kNext", 1, 0);
  v13 = &stru_285145FE8;
  if (a3 > 1382379627)
  {
    if (a3 == 1382379628)
    {
      ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v11, @"ReplaceFooter%@");
    }

    else
    {
      if (a3 != 1382380404)
      {
        goto LABEL_11;
      }

      ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v11, @"RestoreFooter%@");
    }
  }

  else if (a3 == 1131570529)
  {
    ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v11, @"CreateFooter%@");
  }

  else
  {
    if (a3 != 1165522021)
    {
      goto LABEL_11;
    }

    ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v11, @"AddToFooter%@");
  }

  v13 = ProductLocalizedStringWithFormat;
LABEL_11:
  v15 = objc_msgSend_tableManager(self, v11, v12);

  MEMORY[0x2821F9670](v15, sel_updateFooter_forSectionWithIdentifier_, v13);
}

@end