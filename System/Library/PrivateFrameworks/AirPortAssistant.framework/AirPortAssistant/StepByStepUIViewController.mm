@interface StepByStepUIViewController
- (void)dealloc;
- (void)loadView;
- (void)stepByStepUpdateProgress:(id)a3 forState:(int)a4;
- (void)syncTopoUIForTarget:(id)a3 andSource:(id)a4 andNetwork:(id)a5 connectionType:(id)a6;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation StepByStepUIViewController

- (void)dealloc
{
  objc_msgSend_setTopoLayout_(self, a2, 0);
  objc_msgSend_setSpinnerWithStatusBelowLabel_(self, v3, 0);
  objc_msgSend_setSpinnerWithStatusBelowView_(self, v4, 0);
  objc_msgSend_setSpinnerWithStatusBelowSpinner_(self, v5, 0);
  objc_msgSend_setTopoView_(self, v6, 0);
  objc_msgSend_setTableFooterContainerView_(self, v7, 0);
  objc_msgSend_setJustTextContainerView_(self, v8, 0);
  objc_msgSend_setTableHeaderContainerView_(self, v9, 0);
  v10.receiver = self;
  v10.super_class = StepByStepUIViewController;
  [(AssistantSubUIViewController *)&v10 dealloc];
}

- (void)loadView
{
  v90[1] = *MEMORY[0x277D85DE8];
  v88.receiver = self;
  v88.super_class = StepByStepUIViewController;
  [(AUUITableViewController *)&v88 loadView];
  v5 = objc_msgSend_view(self, v3, v4);
  objc_msgSend_frame(v5, v6, v7);
  v11 = objc_msgSend_topoViewWithWidth_(AssistantSubUIViewController, v8, v9, v10);
  objc_msgSend_setTopoView_(self, v12, v11);
  v87 = 0;
  v15 = objc_msgSend_view(self, v13, v14);
  objc_msgSend_frame(v15, v16, v17);
  self->justTextLabel = objc_msgSend_labelViewInContainer_width_(AssistantSubUIViewController, v18, &v87, v19);
  objc_msgSend_setJustTextContainerView_(self, v20, v87);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->justTextContainerView, v21, 0);
  justTextLabel = self->justTextLabel;
  v23 = MEMORY[0x277CCAAD0];
  v89 = @"height";
  v24 = MEMORY[0x277CCABB0];
  objc_msgSend_frame(justTextLabel, v25, v26);
  *&v28 = v27;
  v90[0] = objc_msgSend_numberWithFloat_(v24, v29, v30, v28);
  v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v90, &v89, 1);
  v33 = _NSDictionaryOfVariableBindings(&cfstr_Justtextlabel.isa, self->justTextLabel, 0);
  v35 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v23, v34, @"V:[justTextLabel(>=height)]", 0, v32, v33);
  objc_msgSend_addConstraints_(justTextLabel, v36, v35);
  v39 = objc_msgSend_view(self, v37, v38);
  objc_msgSend_frame(v39, v40, v41);
  v45 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v42, v43, v44);
  objc_msgSend_setTableHeaderContainerView_(self, v46, v45);
  v86 = 0;
  v87 = 0;
  v49 = objc_msgSend_view(self, v47, v48);
  objc_msgSend_frame(v49, v50, v51);
  v54 = objc_msgSend_labelViewInContainer_width_withSpinner_above_(AssistantSubUIViewController, v52, &v87, &v86, 1, v53);
  objc_msgSend_setSpinnerWithStatusBelowLabel_(self, v55, v54);
  objc_msgSend_setSpinnerWithStatusBelowView_(self, v56, v87);
  objc_msgSend_setSpinnerWithStatusBelowSpinner_(self, v57, v86);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->spinnerWithStatusBelowView, v58, 0);
  v61 = objc_msgSend_view(self, v59, v60);
  objc_msgSend_frame(v61, v62, v63);
  v67 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v64, v65, v66);
  objc_msgSend_setTableFooterContainerView_(self, v68, v67);
  v71 = objc_msgSend_view(self, v69, v70);
  objc_msgSend_frame(v71, v72, v73);
  v75 = v74;
  v78 = objc_msgSend_view(self, v76, v77);
  objc_msgSend_frame(v78, v79, v80);
  v84 = objc_msgSend_tableViewWithWidth_height_(AssistantSubUIViewController, v81, v82, v75, v83);
  objc_msgSend_setTableView_(self, v85, v84);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_tableView(self, a2, a3);
  objc_msgSend_setTableFooterView_(v5, v6, 0);
  v7.receiver = self;
  v7.super_class = StepByStepUIViewController;
  [(AUUITableViewController *)&v7 viewWillAppear:v3];
}

- (void)syncTopoUIForTarget:(id)a3 andSource:(id)a4 andNetwork:(id)a5 connectionType:(id)a6
{
  v9 = a4;
  v12 = MEMORY[0x277CCABB0];
  v13 = sub_23EB6A2C0(a3, a2, a3, a4, a5, a6, v6, v7);
  v15 = objc_msgSend_numberWithInteger_(v12, v14, v13);
  v16 = MEMORY[0x277CCABB0];
  v24 = sub_23EB6A294(a3, v17, v18, v19, v20, v21, v22, v23);
  v95 = objc_msgSend_numberWithInteger_(v16, v25, v24);
  if (v9)
  {
    v28 = MEMORY[0x277CCABB0];
    v29 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v26, v9);
    v31 = objc_msgSend_numberWithInteger_(v28, v30, v29);
    v39 = MEMORY[0x277CCABB0];
    if (v31)
    {
      v40 = v31;
      v41 = sub_23EB6A1FC(v9);
      v43 = objc_msgSend_numberWithInteger_(v39, v42, v41);
      v46 = objc_msgSend_integerValue(v40, v44, v45);
      v49 = objc_msgSend_integerValue(v43, v47, v48);
      v50 = sub_23EB6D7A8(v46, v49);
    }

    else
    {
      v51 = sub_23EB6A2C0(v9, v32, v33, v34, v35, v36, v37, v38);
      v40 = objc_msgSend_numberWithInteger_(v39, v52, v51);
      v53 = MEMORY[0x277CCABB0];
      v61 = sub_23EB6A294(v9, v54, v55, v56, v57, v58, v59, v60);
      v43 = objc_msgSend_numberWithInteger_(v53, v62, v61);
      v50 = objc_msgSend_objectForKey_(v9, v63, @"name");
    }

    v9 = v50;
  }

  else
  {
    v40 = 0;
    v43 = 0;
  }

  v64 = objc_msgSend_integerValue(v15, v26, v27);
  v72 = sub_23EB6A294(a3, v65, v66, v67, v68, v69, v70, v71);
  v73 = sub_23EB6D7A8(v64, v72);
  v76 = objc_msgSend_parentController(self, v74, v75);
  v79 = objc_msgSend__assistantUIController(v76, v77, v78);
  v82 = objc_msgSend_topoView(self, v80, v81);
  v85 = objc_msgSend_layer(v82, v83, v84);
  v88 = objc_msgSend_topoLayout(self, v86, v87);
  v91 = objc_msgSend_topoView(self, v89, v90);
  v94 = objc_msgSend_modifyTopoUIInLayer_withLayout_andOwningView_targetProductID_targetDeviceKind_targetName_targetWiFiName_sourceProductID_sourceDeviceKind_sourceName_sourceWiFiName_connectionType_(v79, v92, v85, v88, v91, v15, v95, v73, a5, v40, v43, v9, a5, a6);

  objc_msgSend_setTopoLayout_(self, v93, v94);
}

- (void)stepByStepUpdateProgress:(id)a3 forState:(int)a4
{
  if (objc_msgSend_tableView(self, a2, a3, *&a4) && objc_msgSend_tableFooterContainerView(self, v6, v7) && objc_msgSend_spinnerWithStatusBelowView(self, v8, v9) && objc_msgSend_spinnerWithStatusBelowLabel(self, v10, v11))
  {
    v14 = objc_msgSend_navigationItem(self, v12, v13);
    v17 = objc_msgSend_rightBarButtonItem(v14, v15, v16);
    objc_msgSend_setEnabled_(v17, v18, 0);
    v21 = objc_msgSend_tableView(self, v19, v20);
    if (objc_msgSend_numberOfSections(v21, v22, v23) >= 1)
    {
      v26 = objc_msgSend_tableManager(self, v24, v25);
      objc_msgSend_cleanTableViewForReuse(v26, v27, v28);
      v29 = MEMORY[0x277CBEA60];
      v32 = objc_msgSend_spinnerWithStatusBelowView(self, v30, v31);
      v34 = objc_msgSend_arrayWithObjects_(v29, v33, v32, 0);
      v37 = objc_msgSend_parentController(self, v35, v36);
      v40 = objc_msgSend_tableFooterContainerView(self, v38, v39);
      objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v37, v41, v40, v34, 1);
      v44 = objc_msgSend_tableFooterContainerView(self, v42, v43);
      v47 = objc_msgSend_tableView(self, v45, v46);
      objc_msgSend_setTableFooterView_(v47, v48, v44);
    }

    objc_msgSend_startAnimating(self->spinnerWithStatusBelowSpinner, v24, v25);
    spinnerWithStatusBelowLabel = self->spinnerWithStatusBelowLabel;
    spinnerWithStatusBelowView = self->spinnerWithStatusBelowView;
    if (objc_msgSend_length(a3, v51, v52))
    {
      objc_msgSend_setText_(spinnerWithStatusBelowLabel, v53, a3);
    }

    else
    {
      objc_msgSend_setText_(spinnerWithStatusBelowLabel, v53, @"\n");
    }

    objc_msgSend_sizeToFit(spinnerWithStatusBelowLabel, v54, v55);
    objc_msgSend_setNeedsLayout(spinnerWithStatusBelowLabel, v56, v57);
    objc_msgSend_setNeedsLayout(spinnerWithStatusBelowView, v58, v59);
    tableHeaderContainerView = self->tableHeaderContainerView;

    objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v60, tableHeaderContainerView);
  }
}

@end