@interface StepByStepUIViewController_Restore_Config
- (void)dealloc;
- (void)loadView;
- (void)setupInitialTableHeaderConfiguration;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StepByStepUIViewController_Restore_Config

- (void)loadView
{
  v43.receiver = self;
  v43.super_class = StepByStepUIViewController_Restore_Config;
  [(StepByStepUIViewController *)&v43 loadView];
  v42 = 0;
  v5 = objc_msgSend_view(self, v3, v4);
  objc_msgSend_frame(v5, v6, v7);
  self->restoreRecommendationLabel = objc_msgSend_labelViewInContainer_width_(AssistantSubUIViewController, v8, &v42, v9);
  objc_msgSend_setRestoreRecommendationContainerView_(self, v10, v42);
  v42 = 0;
  v13 = objc_msgSend_view(self, v11, v12);
  objc_msgSend_frame(v13, v14, v15);
  self->dontRestoreRecommendationLabel = objc_msgSend_labelViewInContainer_width_(AssistantSubUIViewController, v16, &v42, v17);
  objc_msgSend_setDontRestoreRecommendationContainerView_(self, v18, v42);
  v21 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v19, v20, 0.5, 0.0, 0.0, 1.0);
  objc_msgSend_setTextColor_(self->dontRestoreRecommendationLabel, v22, v21);
  v25 = objc_msgSend_tableHeaderContainerView(self, v23, v24);
  v28 = objc_msgSend_tableView(self, v26, v27);
  objc_msgSend_setTableHeaderView_(v28, v29, v25);
  v32 = objc_msgSend_tableView(self, v30, v31);
  v33 = MEMORY[0x277CCAAD0];
  tableHeaderContainerView = self->super.tableHeaderContainerView;
  v37 = objc_msgSend_tableView(self, v35, v36);
  v39 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v33, v38, tableHeaderContainerView, 7, 0, v37, 7, 1.0, 0.0);
  objc_msgSend_addConstraint_(v32, v40, v39);
  objc_msgSend_setRightNavigationButton_enable_hide_(self, v41, @"kNext", 1, 0);
}

- (void)dealloc
{
  objc_msgSend_setRestoreRecommendationContainerView_(self, a2, 0);
  objc_msgSend_setDontRestoreRecommendationContainerView_(self, v3, 0);
  v4.receiver = self;
  v4.super_class = StepByStepUIViewController_Restore_Config;
  [(StepByStepUIViewController *)&v4 dealloc];
}

- (void)setupInitialTableHeaderConfiguration
{
  v4 = MEMORY[0x277CBEA60];
  v5 = objc_msgSend_justTextContainerView(self, a2, v2);
  v10 = objc_msgSend_topoView(self, v6, v7);
  if (self->dontRestore)
  {
    v11 = objc_msgSend_dontRestoreRecommendationContainerView(self, v8, v9);
  }

  else
  {
    v11 = objc_msgSend_restoreRecommendationContainerView(self, v8, v9);
  }

  v13 = objc_msgSend_arrayWithObjects_(v4, v12, v5, v10, v11, 0);
  v16 = objc_msgSend_parentController(self, v14, v15);
  v19 = objc_msgSend_tableHeaderContainerView(self, v17, v18);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(v16, v20, v19, v13, 1);
  v23 = objc_msgSend_tableHeaderContainerView(self, v21, v22);
  v26 = objc_msgSend_tableView(self, v24, v25);

  objc_msgSend_setTableHeaderView_(v26, v27, v23);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v5 = objc_msgSend_inParamDict(self, a2, appear);
  v7 = objc_msgSend_objectForKey_(v5, v6, @"kSBSKey_TargetBase");
  objc_msgSend_syncTopoUIForTarget_andSource_andNetwork_connectionType_(self, v8, v7, 0, 0, 0);
  justTextLabel = self->super.justTextLabel;
  justTextContainerView = self->super.justTextContainerView;
  ProductLocalizedStringWithFormat = objc_msgSend_getProductLocalizedStringWithFormat_(self, v11, @"StepByStepStatus_Restore%@");
  sub_23EB5E054(justTextLabel, justTextContainerView, ProductLocalizedStringWithFormat);
  v15 = objc_msgSend_tableHeaderContainerView(self, v13, v14);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v16, v15);
  v19 = objc_msgSend_inParamDict(self, v17, v18);
  v21 = objc_msgSend_objectForKey_(v19, v20, @"kSBSKey_RestoreRecommendation");
  v24 = objc_msgSend_inParamDict(self, v22, v23);
  v27 = objc_msgSend_inParamDict(self, v25, v26);
  v29 = objc_msgSend_objectForKey_(v27, v28, @"kSBSKey_Step");
  v32 = objc_msgSend_integerValue(v29, v30, v31);
  objc_msgSend_formatRecommendation_fromParamDict_forStep_restoreString_restoreSpecificString_dontRecommendString_(StepByStepUtilities, v33, v21, v24, v32, &v50, &v49, &v48);
  v36 = objc_msgSend_length(v48, v34, v35);
  self->dontRestore = v36 != 0;
  if (v36)
  {
    dontRestoreRecommendationLabel = self->dontRestoreRecommendationLabel;
    dontRestoreRecommendationContainerView = self->dontRestoreRecommendationContainerView;
    v41 = v48;
  }

  else
  {
    v42 = objc_msgSend_length(v49, v37, v38);
    dontRestoreRecommendationContainerView = self->restoreRecommendationContainerView;
    if (v42)
    {
      v43 = &v49;
    }

    else
    {
      v43 = &v50;
    }

    v41 = *v43;
    dontRestoreRecommendationLabel = self->restoreRecommendationLabel;
  }

  sub_23EB5E054(dontRestoreRecommendationLabel, dontRestoreRecommendationContainerView, v41);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v44, self->super.tableHeaderContainerView);
  objc_msgSend_setupInitialTableHeaderConfiguration(self, v45, v46);
  v47.receiver = self;
  v47.super_class = StepByStepUIViewController_Restore_Config;
  [(StepByStepUIViewController *)&v47 viewWillAppear:appearCopy];
}

@end