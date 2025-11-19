@interface PPPoEViewController
- (BOOL)shouldChangeTextField:(id)a3 atIndexPath:(id)a4 forTextIndex:(unint64_t)a5 toString:(id)a6;
- (id)valueForItemOfType:(id)a3 atTypeIndex:(unint64_t)a4 inCellWithTag:(int64_t)a5;
- (void)dealloc;
- (void)loadView;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)setupInitialTableHeaderConfiguration;
- (void)touchInCellAtIndexPath:(id)a3;
@end

@implementation PPPoEViewController

- (void)setupInitialTableHeaderConfiguration
{
  objc_msgSend_setLeftNavigationButton_enable_hide_(self, a2, @"kBack", 1, 0);
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v3, @"kNext", 1, 0);
  objc_msgSend_setDelegate_(self, v4, self);
  v5 = sub_23EB6CD3C(@"PPPoESetupInfo", qword_27E383800);
  v8 = objc_msgSend_parentController(self, v6, v7);
  tableHeaderContainerView = self->tableHeaderContainerView;
  v11 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v10, self->justTextContainerView);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v8, v12, tableHeaderContainerView, v11, 1);
  sub_23EB5E054(self->justTextLabel, self->justTextContainerView, v5);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v13, self->tableHeaderContainerView);
  v14 = self->tableHeaderContainerView;
  v17 = objc_msgSend_tableView(self, v15, v16);

  objc_msgSend_setTableHeaderView_(v17, v18, v14);
}

- (void)loadView
{
  v119.receiver = self;
  v119.super_class = PPPoEViewController;
  [(AUUITableViewController *)&v119 loadView];
  v118 = 0;
  v5 = objc_msgSend_view(self, v3, v4);
  objc_msgSend_frame(v5, v6, v7);
  self->justTextLabel = objc_msgSend_labelViewInContainer_width_(AssistantSubUIViewController, v8, &v118, v9);
  objc_msgSend_setJustTextContainerView_(self, v10, v118);
  v13 = objc_msgSend_view(self, v11, v12);
  objc_msgSend_frame(v13, v14, v15);
  v19 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v16, v17, v18);
  objc_msgSend_setTableHeaderContainerView_(self, v20, v19);
  v23 = objc_msgSend_view(self, v21, v22);
  objc_msgSend_frame(v23, v24, v25);
  v27 = v26;
  v30 = objc_msgSend_view(self, v28, v29);
  objc_msgSend_frame(v30, v31, v32);
  v36 = objc_msgSend_tableViewWithWidth_height_(AssistantSubUIViewController, v33, v34, v27, v35);
  objc_msgSend_setTableView_(self, v37, v36);
  objc_msgSend_setupInitialTableHeaderConfiguration(self, v38, v39);
  v42 = objc_msgSend_tableManager(self, v40, v41);
  v46 = 0x277CBE000;
  if (objc_msgSend_indexOfSectionWithIdentifier_(v42, v43, @"PPPoEAccountInfo") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = objc_msgSend_array(MEMORY[0x277CBEB18], v44, v45);
    outResultsDict = self->super._outResultsDict;
    v49 = sub_23EB6CDF8(1885689166);
    v51 = objc_msgSend_objectForKey_(outResultsDict, v50, v49);
    if (v51)
    {
      v54 = v51;
    }

    else
    {
      v54 = &stru_285145FE8;
    }

    v55 = objc_msgSend_tableManager(self, v52, v53);
    v56 = sub_23EB6D520(1885689166);
    isSecure_keyboardType_withTag = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v55, v57, 0, v56, v54, 0, 0, 0, 1885689166);
    objc_msgSend_addObject_(v47, v59, isSecure_keyboardType_withTag);
    v60 = self->super._outResultsDict;
    v61 = sub_23EB6CDF8(1885687895);
    v63 = objc_msgSend_objectForKey_(v60, v62, v61);
    if (v63)
    {
      v66 = v63;
    }

    else
    {
      v66 = &stru_285145FE8;
    }

    v67 = objc_msgSend_tableManager(self, v64, v65);
    v68 = sub_23EB6D520(1885687895);
    v70 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v67, v69, 0, v68, v66, 0, 1, 0, 1885687895);
    objc_msgSend_addObject_(v47, v71, v70);
    v72 = self->super._outResultsDict;
    v73 = sub_23EB6CDF8(1885688654);
    v75 = objc_msgSend_objectForKey_(v72, v74, v73);
    if (v75)
    {
      v78 = v75;
    }

    else
    {
      v78 = &stru_285145FE8;
    }

    v79 = objc_msgSend_tableManager(self, v76, v77);
    v80 = sub_23EB6D520(1885688654);
    v46 = 0x277CBE000uLL;
    v82 = objc_msgSend_createRowStyleBasicEditableWithImage_labelText_currentValue_placeholderText_isSecure_keyboardType_withTag_(v79, v81, 0, v80, v78, 0, 0, 0, 1885688654);
    objc_msgSend_addObject_(v47, v83, v82);
    v86 = objc_msgSend_tableManager(self, v84, v85);
    v87 = MEMORY[0x277CBEB38];
    v88 = sub_23EB6CD3C(@"PPPoEAccountInformation", qword_27E383800);
    v90 = objc_msgSend_dictionaryWithObjectsAndKeys_(v87, v89, v47, @"sectionRows", v88, @"header", @"PPPoEAccountInfo", @"identifier", 0);
    objc_msgSend_addSectionInfo_(v86, v91, v90);
  }

  v92 = objc_msgSend_tableManager(self, v44, v45);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v92, v93, @"PPPoEConnectionInfo") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v96 = objc_msgSend_array(MEMORY[0x277CBEB18], v94, v95);
    v99 = objc_msgSend_tableManager(self, v97, v98);
    v100 = sub_23EB6D520(1651724355);
    RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v99, v101, 0, v100, @"dynamicValue", 1651724355);
    v105 = objc_msgSend_tableManager(self, v103, v104);
    objc_msgSend_setNewRow_accessoryType_(v105, v106, RowStyleBasicWithImage_text1_text2_withTag, 1);
    objc_msgSend_addObject_(v96, v107, RowStyleBasicWithImage_text1_text2_withTag);
    v110 = objc_msgSend_tableManager(self, v108, v109);
    v112 = objc_msgSend_dictionaryWithObjectsAndKeys_(*(v46 + 2872), v111, v96, @"sectionRows", @"PPPoEConnectionInfo", @"identifier", 0);
    objc_msgSend_addSectionInfo_(v110, v113, v112);
  }

  v114 = self->super._outResultsDict;
  v115 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v94, 0);
  v116 = sub_23EB6CDF8(1651724355);
  objc_msgSend_setObject_forKey_(v114, v117, v115, v116);
}

- (void)dealloc
{
  objc_msgSend_setPppoeConnectionUIViewController_(self, a2, 0);
  objc_msgSend_setTableHeaderContainerView_(self, v3, 0);
  objc_msgSend_setJustTextContainerView_(self, v4, 0);
  v5.receiver = self;
  v5.super_class = PPPoEViewController;
  [(AssistantSubUIViewController *)&v5 dealloc];
}

- (id)valueForItemOfType:(id)a3 atTypeIndex:(unint64_t)a4 inCellWithTag:(int64_t)a5
{
  if (a5 != 1651724355)
  {
    return &stru_285145FE8;
  }

  outResultsDict = self->super._outResultsDict;
  v7 = sub_23EB6CDF8(1651724355);
  v9 = objc_msgSend_objectForKey_(outResultsDict, v8, v7);
  v12 = objc_msgSend_integerValue(v9, v10, v11);

  return sub_23EB6D620(1651724355, v12);
}

- (BOOL)shouldChangeTextField:(id)a3 atIndexPath:(id)a4 forTextIndex:(unint64_t)a5 toString:(id)a6
{
  v15 = 0;
  v9 = objc_msgSend_tableManager(self, a2, a3, a4, a5);
  if (objc_msgSend_tagOfCellAtIndexPath_tag_(v9, v10, a4, &v15))
  {
    if (!a6)
    {
      a6 = &stru_285145FE8;
    }

    outResultsDict = self->super._outResultsDict;
    v12 = sub_23EB6CDF8(v15);
    objc_msgSend_setObject_forKey_(outResultsDict, v13, a6, v12);
  }

  return 1;
}

- (void)touchInCellAtIndexPath:(id)a3
{
  v37 = 0;
  v5 = objc_msgSend_tableManager(self, a2, a3);
  if (objc_msgSend_tagOfCellAtIndexPath_tag_(v5, v6, a3, &v37) && v37 == 1651724355)
  {
    v7 = sub_23EB6CDF8(1651724355);
    v10 = objc_msgSend_objectForKey_(self->super._outResultsDict, v8, v7);
    if (!v10)
    {
      v10 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v9, 0);
    }

    v11 = [PPPoEConnectionUIViewController alloc];
    v13 = objc_msgSend_initWithNibName_bundle_(v11, v12, 0, 0);
    objc_msgSend_setPppoeConnectionUIViewController_(self, v14, v13);
    v17 = objc_msgSend_outResultsDict(self->pppoeConnectionUIViewController, v15, v16);
    objc_msgSend_setObject_forKey_(v17, v18, v10, v7);
    v21 = objc_msgSend_tableManager(self, v19, v20);
    objc_msgSend_endEditing(v21, v22, v23);
    v26 = objc_msgSend_navigationController(self, v24, v25);
    self->previousNavDelegate = objc_msgSend_delegate(v26, v27, v28);
    v31 = objc_msgSend_navigationController(self, v29, v30);
    objc_msgSend_setDelegate_(v31, v32, self);
    v35 = objc_msgSend_navigationController(self, v33, v34);
    objc_msgSend_pushViewController_animated_(v35, v36, self->pppoeConnectionUIViewController, 1);
  }
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  if (self->pppoeConnectionUIViewController != a4)
  {
    v6 = sub_23EB6CDF8(1651724355);
    v9 = objc_msgSend_outResultsDict(self->pppoeConnectionUIViewController, v7, v8);
    v11 = objc_msgSend_objectForKey_(v9, v10, v6);
    if (v11)
    {
      objc_msgSend_setObject_forKey_(self->super._outResultsDict, v12, v11, v6);
      v15 = objc_msgSend_tableView(self, v13, v14);
      objc_msgSend_reloadData(v15, v16, v17);
      previousNavDelegate = self->previousNavDelegate;
      v21 = objc_msgSend_navigationController(self, v19, v20);

      objc_msgSend_setDelegate_(v21, v22, previousNavDelegate);
    }
  }
}

@end