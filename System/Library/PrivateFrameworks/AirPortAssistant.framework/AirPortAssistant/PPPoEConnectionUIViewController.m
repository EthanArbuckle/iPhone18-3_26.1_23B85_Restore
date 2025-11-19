@interface PPPoEConnectionUIViewController
- (void)loadView;
- (void)touchInCellAtIndexPath:(id)a3;
@end

@implementation PPPoEConnectionUIViewController

- (void)loadView
{
  v85.receiver = self;
  v85.super_class = PPPoEConnectionUIViewController;
  [(AUUITableViewController *)&v85 loadView];
  v5 = objc_msgSend_view(self, v3, v4);
  objc_msgSend_frame(v5, v6, v7);
  v9 = v8;
  v12 = objc_msgSend_view(self, v10, v11);
  objc_msgSend_frame(v12, v13, v14);
  v18 = objc_msgSend_tableViewWithWidth_height_(AssistantSubUIViewController, v15, v16, v9, v17);
  objc_msgSend_setTableView_(self, v19, v18);
  v22 = objc_msgSend_parentController(self, v20, v21);
  objc_msgSend_setParentController_(self, v23, v22);
  objc_msgSend_setDelegate_(self, v24, self);
  v27 = objc_msgSend_view(self, v25, v26);
  objc_msgSend_frame(v27, v28, v29);
  v33 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v30, v31, v32);
  objc_msgSend_setTableHeaderView_(v18, v34, v33);
  objc_msgSend_setLeftNavigationButton_enable_hide_(self, v35, @"kBack", 1, 0);
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v36, @"kNext", 0, 1);
  v37 = sub_23EB6CDF8(1651724355);
  v41 = objc_msgSend_objectForKey_(self->super._outResultsDict, v38, v37);
  if (!v41)
  {
    v41 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v39, 0);
  }

  v42 = objc_msgSend_tableManager(self, v39, v40);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v42, v43, @"PPPoEAccountInfo") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v46 = objc_msgSend_array(MEMORY[0x277CBEB18], v44, v45);
    v49 = objc_msgSend_tableManager(self, v47, v48);
    v50 = sub_23EB6D620(1651724355, 0);
    RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v49, v51, 0, v50, 0, 0);
    objc_msgSend_addObject_(v46, v53, RowStyleBasicWithImage_text1_text2_withTag);
    v56 = objc_msgSend_tableManager(self, v54, v55);
    v57 = sub_23EB6D620(1651724355, 1);
    v59 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v56, v58, 0, v57, 0, 1);
    objc_msgSend_addObject_(v46, v60, v59);
    v63 = objc_msgSend_tableManager(self, v61, v62);
    v64 = sub_23EB6D620(1651724355, 2);
    v66 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v63, v65, 0, v64, 0, 2);
    objc_msgSend_addObject_(v46, v67, v66);
    v70 = objc_msgSend_tableManager(self, v68, v69);
    v71 = MEMORY[0x277CBEB38];
    v72 = sub_23EB6D520(1651724355);
    v74 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v73, 1);
    v76 = objc_msgSend_dictionaryWithObjectsAndKeys_(v71, v75, v46, @"sectionRows", @"PPPoEConnectionSelectionInfo", @"identifier", v72, @"header", v74, @"sectionIsMenu", v41, @"selectedMenuItemTag", 0);
    objc_msgSend_addSectionInfo_(v70, v77, v76);
  }

  v78 = objc_msgSend_tableManager(self, v44, v45);
  v81 = objc_msgSend_integerValue(v41, v79, v80);
  v83 = objc_msgSend_indexPathOfCellWithTag_(v78, v82, v81);
  objc_msgSend_touchInCellAtIndexPath_(self, v84, v83);
}

- (void)touchInCellAtIndexPath:(id)a3
{
  v4 = objc_msgSend_tableManager(self, a2, a3);
  v6 = objc_msgSend_indexOfSectionWithIdentifier_(v4, v5, @"PPPoEConnectionSelectionInfo");
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = v6;
    v11 = objc_msgSend_tableManager(self, v7, v8);
    v9 = objc_msgSend_tagOfSelectedRowInMenuSection_(v11, v12, v10);
  }

  outResultsDict = self->super._outResultsDict;
  v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v7, v9);
  v16 = sub_23EB6CDF8(1651724355);

  objc_msgSend_setObject_forKey_(outResultsDict, v15, v14, v16);
}

@end