@interface StepByStepUIViewController_ExtendWired_Connections
- (void)loadView;
@end

@implementation StepByStepUIViewController_ExtendWired_Connections

- (void)loadView
{
  objc_msgSend_setInternetFlow_(self, a2, 3);
  v5 = objc_msgSend_inParamDict(self, v3, v4);
  v7 = objc_msgSend_objectForKey_(v5, v6, @"kSBSKey_Step");
  if (objc_msgSend_integerValue(v7, v8, v9) == 13)
  {
    v12 = sub_23EB6CD3C(@"StepByStepStatus_ReplaceOtherConnections.PlugInWANCable", qword_27E383800);
    objc_msgSend_setSwapDescriptionText_(self, v13, v12);
    v14 = sub_23EB6CD3C(@"StepByStepStatus_ReplaceOtherConnections.SourceDevice", qword_27E383800);
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v16 = objc_msgSend_inParamDict(self, v10, v11);
    v18 = objc_msgSend_objectForKey_(v16, v17, @"kSBSKey_SourceBase");
    objc_msgSend_determineInfoForDevice_deviceDiagramInfo_(self, v19, v18, &v31);
    v20 = sub_23EB6CD3C(@"StepByStepStatus_ExtendWiredNetworkConnections.PlugInWANCable", qword_27E383800);
    objc_msgSend_setSwapDescriptionText_(self, v21, v20);
    v14 = sub_23EB6CEE0(v32, SHIDWORD(v33), 0);
  }

  objc_msgSend_setSwapSourceLabelText_(self, v15, v14);
  v24 = objc_msgSend_inParamDict(self, v22, v23);
  v26 = objc_msgSend_objectForKey_(v24, v25, @"kSBSKey_Mode");
  if (objc_msgSend_integerValue(v26, v27, v28) == 2)
  {
    objc_msgSend_setLeftNavigationButton_enable_hide_(self, v29, @"kCancel", 1, 0);
  }

  v30.receiver = self;
  v30.super_class = StepByStepUIViewController_ExtendWired_Connections;
  [(InternetViewController *)&v30 loadView];
}

@end