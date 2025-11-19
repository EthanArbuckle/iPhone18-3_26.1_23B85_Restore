@interface InternetViewController
- (void)addInformationalDiagramWithWANConnectedBaseProductID:(unsigned int)a3 replacementProductID:(unsigned int)a4;
- (void)addInternetNotWorkingUI;
- (void)addInternetWANPluginUI;
- (void)addSwapCablingUI;
- (void)dealloc;
- (void)determineInfoForDevice:(id)a3 deviceDiagramInfo:(id *)a4;
- (void)loadView;
- (void)presentSwapCablingCompleteUI;
- (void)setCommonTraitsForLabel:(id)a3 forSize:(double)a4;
- (void)startAnimatingCablingForView:(id)a3 startingOpacity:(float)a4 endingOpacity:(float)a5 duration:(double)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation InternetViewController

- (void)loadView
{
  v42 = 0;
  v43 = 0;
  v41.receiver = self;
  v41.super_class = InternetViewController;
  [(AUUITableViewController *)&v41 loadView];
  v5 = objc_msgSend_view(self, v3, v4);
  objc_msgSend_frame(v5, v6, v7);
  v9 = v8;
  v13 = objc_msgSend_tableViewWithWidth_height_(AssistantSubUIViewController, v10, v11, v8, v12);
  objc_msgSend_setTableView_(self, v14, v13);
  v17 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v15, v16, v9);
  objc_msgSend_setTableHeaderContainerView_(self, v18, v17);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->tableHeaderContainerView, v19, 0);
  self->spinnerWithStatusAdjacentLabel = objc_msgSend_labelViewInContainer_width_withSpinner_above_(AssistantSubUIViewController, v20, &v43, &v42, 0, v9);
  objc_msgSend_setSpinnerWithStatusAdjacentView_(self, v21, v43);
  self->spinnerWithStatusAdjacentSpinner = v42;
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->spinnerWithStatusAdjacentView, v22, 0);
  v43 = 0;
  self->descriptionLabel = objc_msgSend_labelViewInContainer_width_(AssistantSubUIViewController, v23, &v43, v9);
  objc_msgSend_setDescriptionContainerView_(self, v24, v43);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->descriptionContainerView, v25, 0);
  v28 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v26, v27, v9);
  objc_msgSend_setDiagramContainerView_(self, v29, v28);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->diagramContainerView, v30, 0);
  objc_msgSend_setLeftNavigationButton_enable_hide_(self, v31, @"kBack", 1, 0);
  v34 = objc_msgSend_internetFlow(self, v32, v33) != 3;
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v35, @"kNext", v34, 0);
  v38 = objc_msgSend_internetFlow(self, v36, v37);
  switch(v38)
  {
    case 3:
      objc_msgSend_addSwapCablingUI(self, v39, v40);
      break;
    case 2:
      objc_msgSend_addInternetNotWorkingUI(self, v39, v40);
      break;
    case 1:
      objc_msgSend_addInternetWANPluginUI(self, v39, v40);
      break;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_msgSend_layer(self->cablingImageLastFrame, a2, a3);
  objc_msgSend_removeAllAnimations(v5, v6, v7);
  v8.receiver = self;
  v8.super_class = InternetViewController;
  [(AUUITableViewController *)&v8 viewWillDisappear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = InternetViewController;
  [(InternetViewController *)&v15 viewDidAppear:a3];
  objc_msgSend_bounds(self->tableHeaderContainerView, v4, v5);
  v7 = v6;
  v9 = v8;
  v12 = objc_msgSend_tableView(self, v10, v11);
  objc_msgSend_setContentSize_(v12, v13, v14, v7, v9);
}

- (void)dealloc
{
  objc_msgSend_setSpinnerWithStatusAdjacentView_(self, a2, 0);
  objc_msgSend_setDescriptionContainerView_(self, v3, 0);
  objc_msgSend_setTableHeaderContainerView_(self, v4, 0);
  objc_msgSend_setDiagramContainerView_(self, v5, 0);
  objc_msgSend_setCablingImageLastFrame_(self, v6, 0);
  objc_msgSend_setSwapDescriptionText_(self, v7, 0);
  objc_msgSend_setSwapSourceLabelText_(self, v8, 0);
  v9.receiver = self;
  v9.super_class = InternetViewController;
  [(AssistantSubUIViewController *)&v9 dealloc];
}

- (void)presentSwapCablingCompleteUI
{
  v4 = objc_msgSend_inParamDict(self, a2, v2);
  v6 = objc_msgSend_objectForKey_(v4, v5, @"kSBSKey_TargetBase");
  v7 = sub_23EB6CD3C(@"SwapAllCablesDetectedOK", qword_27E383800);
  v8 = MEMORY[0x277CCACA8];
  v16 = sub_23EB6A2C0(v6, v9, v10, v11, v12, v13, v14, v15);
  v24 = sub_23EB6A294(v6, v17, v18, v19, v20, v21, v22, v23);
  v25 = sub_23EB6CEE0(v16, v24, 0);
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v8, v26, v7, @"%@", 0, v25);
  sub_23EB5E054(self->descriptionLabel, self->descriptionContainerView, valid);
  objc_msgSend_setText_(self->spinnerWithStatusAdjacentLabel, v28, &stru_285145FE8);
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v29, @"kNext", 1, 0);
  spinnerWithStatusAdjacentSpinner = self->spinnerWithStatusAdjacentSpinner;

  objc_msgSend_stopAnimating(spinnerWithStatusAdjacentSpinner, v30, v31);
}

- (void)determineInfoForDevice:(id)a3 deviceDiagramInfo:(id *)a4
{
  a4->var1 = sub_23EB6A2C0(a3, a2, a3, a4, v4, v5, v6, v7);
  a4->var2 = sub_23EB6B128(a3, v10, v11, v12, v13, v14, v15, v16);
  a4->var4 = sub_23EB6A294(a3, v17, v18, v19, v20, v21, v22, v23);
  v24 = sub_23EB4BDDC(a4->var1);
  a4->var3 = v24;
  a4->var0 = 1;
  if (v24)
  {
    a4->var0 = sub_23EB4BDAC(a4->var1);
  }
}

- (void)startAnimatingCablingForView:(id)a3 startingOpacity:(float)a4 endingOpacity:(float)a5 duration:(double)a6
{
  v10 = objc_msgSend_layer(a3, a2, a3);
  *&v11 = a4;
  objc_msgSend_setOpacity_(v10, v12, v13, v11);
  v15 = objc_msgSend_animationWithKeyPath_(MEMORY[0x277CD9E10], v14, @"opacity");
  LODWORD(v16) = 2139095040;
  objc_msgSend_setRepeatCount_(v15, v17, v18, v16);
  objc_msgSend_setAutoreverses_(v15, v19, 1);
  objc_msgSend_setDuration_(v15, v20, v21, a6);
  *&v22 = a5;
  v25 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v23, v24, v22);
  objc_msgSend_setToValue_(v15, v26, v25);
  v29 = objc_msgSend_layer(a3, v27, v28);

  MEMORY[0x2821F9670](v29, sel_addAnimation_forKey_, v15);
}

- (void)addSwapCablingUI
{
  v4 = objc_msgSend_inParamDict(self, a2, v2);
  v6 = objc_msgSend_objectForKey_(v4, v5, @"kSBSKey_TargetBase");
  v9 = objc_msgSend_inParamDict(self, v7, v8);
  v11 = objc_msgSend_objectForKey_(v9, v10, @"kSBSKey_SourceBase");
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  objc_msgSend_determineInfoForDevice_deviceDiagramInfo_(self, v12, v6, &v41);
  objc_msgSend_determineInfoForDevice_deviceDiagramInfo_(self, v13, v11, &v38);
  v16 = objc_msgSend_swapDescriptionText(self, v14, v15);
  if (!objc_msgSend_length(v16, v17, v18))
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = sub_23EB6CD3C(@"SwapAllCables", qword_27E383800);
    v23 = sub_23EB6CEE0(v39, SHIDWORD(v40), 0);
    v25 = sub_23EB6D18C(v11, 1, v24);
    v26 = sub_23EB6CEE0(v42, SHIDWORD(v43), 0);
    valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v21, v27, v22, @"%@%@%@", 0, v23, v25, v26);
    objc_msgSend_setSwapDescriptionText_(self, v29, valid);
  }

  descriptionLabel = self->descriptionLabel;
  descriptionContainerView = self->descriptionContainerView;
  v32 = objc_msgSend_swapDescriptionText(self, v19, v20);
  sub_23EB5E054(descriptionLabel, descriptionContainerView, v32);
  objc_msgSend_startAnimating(self->spinnerWithStatusAdjacentSpinner, v33, v34);
  v35 = sub_23EB6CD3C(@"SwapCablesWaiting", qword_27E383800);
  objc_msgSend_setText_(self->spinnerWithStatusAdjacentLabel, v36, v35);
  objc_msgSend_addInformationalDiagramWithWANConnectedBaseProductID_replacementProductID_(self, v37, v39, v42);
}

- (void)addInternetWANPluginUI
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v4 = objc_msgSend_inParamDict(self, a2, v2);
  objc_msgSend_determineInfoForDevice_deviceDiagramInfo_(self, v5, v4, &v26);
  v6 = MEMORY[0x277CCACA8];
  v7 = sub_23EB6CE6C(v27, SHIDWORD(v28));
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v6, v8, @"InternetNoWorkie%@", @"%@", 0, v7);
  v10 = sub_23EB6CD3C(@"TextualSentenceConcatenator", qword_27E383800);
  v11 = MEMORY[0x277CCACA8];
  v12 = sub_23EB6CD3C(valid, qword_27E383800);
  v13 = sub_23EB6CD3C(@"PlugInWANCableForInternet", qword_27E383800);
  v15 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v11, v14, v10, @"%@%@", 0, v12, v13);
  v16 = sub_23EB6CD3C(@"TextualSentenceConcatenator2NewLines", qword_27E383800);
  v17 = MEMORY[0x277CCACA8];
  v18 = sub_23EB6CD3C(@"ContinueWithoutInternet", qword_27E383800);
  v20 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v17, v19, v16, @"%@%@", 0, v15, v18);
  sub_23EB5E054(self->descriptionLabel, self->descriptionContainerView, v20);
  objc_msgSend_startAnimating(self->spinnerWithStatusAdjacentSpinner, v21, v22);
  v23 = sub_23EB6CD3C(@"WaitingForWANPlugin", qword_27E383800);
  objc_msgSend_setText_(self->spinnerWithStatusAdjacentLabel, v24, v23);
  objc_msgSend_addInformationalDiagramWithWANConnectedBaseProductID_replacementProductID_(self, v25, v27, 0);
}

- (void)addInformationalDiagramWithWANConnectedBaseProductID:(unsigned int)a3 replacementProductID:(unsigned int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v7 = [InfoDiagramView alloc];
  objc_msgSend_frame(self->diagramContainerView, v8, v9);
  v11 = objc_msgSend_initWithFrame_wanConnectedBaseProductID_replacementProductID_(v7, v10, v5, v4);
  if (objc_msgSend_swapSourceLabelText(self, v12, v13))
  {
    v16 = objc_msgSend_swapSourceLabelText(self, v14, v15);
    objc_msgSend_setWANConnectedBaseLabelString_(v11, v17, v16);
  }

  objc_msgSend_addSubview_(self->diagramContainerView, v14, v11);
  diagramContainerView = self->diagramContainerView;
  v19 = MEMORY[0x277CCAAD0];
  v20 = _NSDictionaryOfVariableBindings(&cfstr_Diagramcontain.isa, diagramContainerView, 0);
  v22 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v19, v21, @"V:[diagramContainerView(100@250)]", 0, 0, v20);
  objc_msgSend_addConstraints_(diagramContainerView, v23, v22);
  v24 = self->diagramContainerView;
  v25 = MEMORY[0x277CCAAD0];
  v26 = _NSDictionaryOfVariableBindings(&cfstr_Infoview.isa, v11, 0);
  v28 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v25, v27, @"V:|-10-[infoView]-10-|", 512, 0, v26);
  objc_msgSend_addConstraints_(v24, v29, v28);
  v30 = self->diagramContainerView;
  v32 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v31, v11, 9, 0, v30, 9, 1.0, 0.0);
  objc_msgSend_addConstraint_(v30, v33, v32);
  v34 = self->diagramContainerView;
  v35 = MEMORY[0x277CCAAD0];
  v36 = _NSDictionaryOfVariableBindings(&cfstr_Infoview.isa, v11, 0);
  v38 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v35, v37, @"H:|-(>=10)-[infoView]-(>=10)-|", 0, 0, v36);
  objc_msgSend_addConstraints_(v34, v39, v38);
  objc_msgSend_setNeedsLayout(self->diagramContainerView, v40, v41);
  v44 = objc_msgSend_parentController(self, v42, v43);
  tableHeaderContainerView = self->tableHeaderContainerView;
  v47 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v46, self->spinnerWithStatusAdjacentView, self->diagramContainerView, self->descriptionContainerView, 0);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v44, v48, tableHeaderContainerView, v47, 1);
  v49 = self->tableHeaderContainerView;
  v52 = objc_msgSend_tableView(self, v50, v51);
  objc_msgSend_setTableHeaderView_(v52, v53, v49);
  v56 = objc_msgSend_tableView(self, v54, v55);
  v57 = MEMORY[0x277CCAAD0];
  v58 = _NSDictionaryOfVariableBindings(&cfstr_Tableheadercon.isa, self->tableHeaderContainerView, 0);
  v60 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v57, v59, @"V:|[tableHeaderContainerView]", 0, 0, v58);
  objc_msgSend_addConstraints_(v56, v61, v60);
  v64 = objc_msgSend_tableView(self, v62, v63);
  v65 = MEMORY[0x277CCAAD0];
  v66 = _NSDictionaryOfVariableBindings(&cfstr_Tableheadercon.isa, self->tableHeaderContainerView, 0);
  v68 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v65, v67, @"H:|[tableHeaderContainerView]|", 0, 0, v66);
  objc_msgSend_addConstraints_(v64, v69, v68);
  v72 = objc_msgSend_tableView(self, v70, v71);
  v73 = MEMORY[0x277CCAAD0];
  v74 = self->tableHeaderContainerView;
  v77 = objc_msgSend_tableView(self, v75, v76);
  v79 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v73, v78, v74, 7, 0, v77, 7, 1.0, 0.0);
  objc_msgSend_addConstraint_(v72, v80, v79);
  cablingImageLastFrame = self->cablingImageLastFrame;

  MEMORY[0x2821F9670](self, sel_startAnimatingCablingForView_startingOpacity_endingOpacity_duration_, cablingImageLastFrame);
}

- (void)setCommonTraitsForLabel:(id)a3 forSize:(double)a4
{
  objc_msgSend_setTextAlignment_(a3, a2, 1);
  objc_msgSend_setLineBreakMode_(a3, v6, 0);
  v9 = objc_msgSend__secondaryLabelColor(MEMORY[0x277D75348], v7, v8);
  objc_msgSend_setTextColor_(a3, v10, v9);
  objc_msgSend_setNumberOfLines_(a3, v11, 0);
  v15 = objc_msgSend_systemFontOfSize_(MEMORY[0x277D74300], v12, v13, a4);

  objc_msgSend_setFont_(a3, v14, v15);
}

- (void)addInternetNotWorkingUI
{
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v4 = objc_msgSend_inParamDict(self, a2, v2);
  v6 = objc_msgSend_objectForKey_(v4, v5, @"kSBSKey_TargetBase");
  objc_msgSend_determineInfoForDevice_deviceDiagramInfo_(self, v7, v6, &v79);
  v8 = MEMORY[0x277CCACA8];
  v9 = sub_23EB6CE6C(v80, SHIDWORD(v81));
  v11 = objc_msgSend_stringWithFormat_(v8, v10, @"InternetNoWorkie%@", v9);
  v12 = sub_23EB6CD3C(@"TextualSentenceConcatenator2NewLines", qword_27E383800);
  v13 = MEMORY[0x277CCACA8];
  v14 = sub_23EB6CD3C(v11, qword_27E383800);
  v15 = sub_23EB6CD3C(@"NoInternet1", qword_27E383800);
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v13, v16, v12, @"%@%@", 0, v14, v15);
  v18 = MEMORY[0x277CCACA8];
  v19 = sub_23EB6CD3C(@"NoInternet1.1", qword_27E383800);
  v21 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v18, v20, v12, @"%@%@", 0, valid, v19);
  v22 = MEMORY[0x277CCACA8];
  v23 = sub_23EB6CD3C(@"NoInternet2", qword_27E383800);
  v25 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v22, v24, v12, @"%@%@", 0, v21, v23);
  v26 = MEMORY[0x277CCACA8];
  v27 = sub_23EB6CD3C(@"NoInternet3", qword_27E383800);
  v29 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v26, v28, v12, @"%@%@", 0, v25, v27);
  v30 = MEMORY[0x277CCACA8];
  v31 = sub_23EB6CD3C(@"ContinueWithoutInternet", qword_27E383800);
  v33 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v30, v32, v12, @"%@%@", 0, v29, v31);
  sub_23EB5E054(self->descriptionLabel, self->descriptionContainerView, v33);
  objc_msgSend_startAnimating(self->spinnerWithStatusAdjacentSpinner, v34, v35);
  v36 = sub_23EB6CD3C(@"WaitingForInternetAccess", qword_27E383800);
  objc_msgSend_setText_(self->spinnerWithStatusAdjacentLabel, v37, v36);
  sub_23EB7C020(self->diagramContainerView, v38, v39);
  v42 = objc_msgSend_parentController(self, v40, v41);
  tableHeaderContainerView = self->tableHeaderContainerView;
  v45 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v44, self->spinnerWithStatusAdjacentView, self->diagramContainerView, self->descriptionContainerView, 0);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v42, v46, tableHeaderContainerView, v45, 1);
  v47 = self->tableHeaderContainerView;
  v50 = objc_msgSend_tableView(self, v48, v49);
  objc_msgSend_setTableHeaderView_(v50, v51, v47);
  v54 = objc_msgSend_tableView(self, v52, v53);
  v55 = MEMORY[0x277CCAAD0];
  v56 = _NSDictionaryOfVariableBindings(&cfstr_Tableheadercon.isa, self->tableHeaderContainerView, 0);
  v58 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v55, v57, @"V:|[tableHeaderContainerView]", 0, 0, v56);
  objc_msgSend_addConstraints_(v54, v59, v58);
  v62 = objc_msgSend_tableView(self, v60, v61);
  v63 = MEMORY[0x277CCAAD0];
  v64 = _NSDictionaryOfVariableBindings(&cfstr_Tableheadercon.isa, self->tableHeaderContainerView, 0);
  v66 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v63, v65, @"H:|[tableHeaderContainerView]|", 0, 0, v64);
  objc_msgSend_addConstraints_(v62, v67, v66);
  v70 = objc_msgSend_tableView(self, v68, v69);
  v71 = MEMORY[0x277CCAAD0];
  v72 = self->tableHeaderContainerView;
  v75 = objc_msgSend_tableView(self, v73, v74);
  v77 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v71, v76, v72, 7, 0, v75, 7, 1.0, 0.0);
  objc_msgSend_addConstraint_(v70, v78, v77);
}

@end