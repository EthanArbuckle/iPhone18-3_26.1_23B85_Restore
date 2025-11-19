@interface AssistantDiagsUsageStatsUIViewController
- (void)dealloc;
- (void)handleTextLinkTap;
- (void)loadView;
- (void)setUpInitialTableFooter;
- (void)touchInCellAtIndexPath:(id)a3;
@end

@implementation AssistantDiagsUsageStatsUIViewController

- (void)setUpInitialTableFooter
{
  v4 = objc_msgSend_view(self, a2, v2);
  objc_msgSend_frame(v4, v5, v6);
  v10 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v7, v8, v9);
  v11 = [TextLinkButton alloc];
  objc_msgSend_frame(v10, v12, v13);
  v16 = objc_msgSend_initWithFrame_(v11, v14, v15);
  objc_msgSend_addSubview_(v10, v17, v16);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v16, v18, 0);
  objc_msgSend_setDelegate_(v16, v19, self);
  v20 = sub_23EB6CD3C(@"DiagsAndUsageApplePrivacyHelpTitle", @"AirPortSettings");
  objc_msgSend_setTitle_forState_(v16, v21, v20, 0);
  objc_msgSend_sizeToFit(v16, v22, v23);
  v24 = MEMORY[0x277CCAAD0];
  v25 = _NSDictionaryOfVariableBindings(&cfstr_Textlinkbutton.isa, v16, 0);
  v27 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v24, v26, @"V:|[textLinkButton]|", 0, 0, v25);
  objc_msgSend_addConstraints_(v10, v28, v27);
  v29 = MEMORY[0x277CCAAD0];
  v30 = _NSDictionaryOfVariableBindings(&cfstr_Textlinkbutton.isa, v16, 0);
  v32 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v29, v31, @"H:|[textLinkButton]|", 0, 0, v30);
  objc_msgSend_addConstraints_(v10, v33, v32);
  objc_msgSend_setLinkContainerView_(self, v34, v10);
  v37 = objc_msgSend_tableView(self, v35, v36);

  objc_msgSend_setTableFooterView_(v37, v38, v10);
}

- (void)dealloc
{
  objc_msgSend_setLinkContainerView_(self, a2, 0);
  v3.receiver = self;
  v3.super_class = AssistantDiagsUsageStatsUIViewController;
  [(AssistantSubUIViewController *)&v3 dealloc];
}

- (void)loadView
{
  v59.receiver = self;
  v59.super_class = AssistantDiagsUsageStatsUIViewController;
  [(AUUITableViewController *)&v59 loadView];
  objc_msgSend_setDelegate_(self, v3, self);
  v6 = objc_msgSend_view(self, v4, v5);
  objc_msgSend_frame(v6, v7, v8);
  v10 = v9;
  v13 = objc_msgSend_view(self, v11, v12);
  objc_msgSend_frame(v13, v14, v15);
  v19 = objc_msgSend_tableViewWithWidth_height_(AssistantSubUIViewController, v16, v17, v10, v18);
  objc_msgSend_setTableView_(self, v20, v19);
  objc_msgSend_setLeftNavigationButton_enable_hide_(self, v21, @"kBack", 1, 0);
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v22, @"kNext", 0, 0);
  v25 = objc_msgSend_tableManager(self, v23, v24);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v25, v26, @"SendDontSend") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v27, v28);
    v32 = objc_msgSend_tableManager(self, v30, v31);
    v33 = sub_23EB6CD3C(@"DiagsAndUsageSend", @"AirPortSettings");
    RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v32, v34, 0, v33, 0, 1399156324);
    objc_msgSend_addObject_(v29, v36, RowStyleBasicWithImage_text1_text2_withTag);
    v39 = objc_msgSend_tableManager(self, v37, v38);
    v40 = sub_23EB6CD3C(@"DiagsAndUsageDontSend", @"AirPortSettings");
    v42 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v39, v41, 0, v40, 0, 1315918692);
    objc_msgSend_addObject_(v29, v43, v42);
    v46 = objc_msgSend_tableManager(self, v44, v45);
    v47 = MEMORY[0x277CBEB38];
    v49 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v48, 1);
    v50 = sub_23EB6CD3C(@"DiagsAndUsageTitle", @"AirPortSettings");
    v51 = sub_23EB6CD3C(@"DiagsAndUsageHelpAppleText", @"AirPortSettings");
    v53 = objc_msgSend_dictionaryWithObjectsAndKeys_(v47, v52, v29, @"sectionRows", v49, @"sectionIsMenu", v50, @"header", v51, @"footer", @"SendDontSend", @"identifier", 0);
    objc_msgSend_addSectionInfo_(v46, v54, v53);
  }

  objc_msgSend_setUpInitialTableFooter(self, v27, v28);
  outResultsDict = self->super._outResultsDict;
  v56 = sub_23EB6CDF8(1937011781);
  if (objc_msgSend_objectForKey_(outResultsDict, v57, v56))
  {
    objc_msgSend_setRightNavigationButton_enable_hide_(self, v58, @"kNext", 1, 0);
  }
}

- (void)touchInCellAtIndexPath:(id)a3
{
  v13 = 0;
  v5 = objc_msgSend_tableManager(self, a2, a3);
  objc_msgSend_tagOfCellAtIndexPath_tag_(v5, v6, a3, &v13);
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v7, @"kNext", 1, 0);
  outResultsDict = self->super._outResultsDict;
  v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v9, v13 == 1399156324);
  v11 = sub_23EB6CDF8(1937011781);
  objc_msgSend_setValue_forKey_(outResultsDict, v12, v10, v11);
}

- (void)handleTextLinkTap
{
  v3 = [DiagsPrivacyHelpViewController alloc];
  v5 = objc_msgSend_initWithNibName_bundle_(v3, v4, 0, 0);
  v8 = objc_msgSend_navigationController(self, v6, v7);

  objc_msgSend_pushViewController_animated_(v8, v9, v5, 1);
}

@end