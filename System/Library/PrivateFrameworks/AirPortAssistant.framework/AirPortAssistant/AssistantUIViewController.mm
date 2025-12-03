@interface AssistantUIViewController
- (AssistantUIViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BOOL)auUIAlertCancelAction:(id)action;
- (BOOL)auUIAlertOKAction:(id)action;
- (BOOL)disablesAutomaticKeyboardDismissal;
- (id)modifyTopoUIInLayer:(id)layer withLayout:(id)layout newLayout:(id)newLayout;
- (id)newStepByStepControllerForStep:(int)step;
- (id)radioNameFromBaseStation:(id)station;
- (id)valueForItemOfType:(id)type atTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag;
- (int)callbackAskUserAQuestion:(int)question paramDict:(id)dict forController:(id)controller;
- (int)callbackAskUserForPassword:(int)password param:(id)param forController:(id)controller;
- (int)callbackAskUserForSetupCode:(int)code isRetry:(BOOL)retry forController:(id)controller;
- (int)callbackAskUserForUncertifiedForController:(id)controller;
- (void)assistantUpdateProgress:(id)progress forState:(int)state;
- (void)assistantWaitingForResourcesComplete;
- (void)assistantWaitingForResourcesStart;
- (void)baseStationConfigurationComplete:(id)complete;
- (void)callbackAskCancel;
- (void)confirmSkipWANPort;
- (void)connectionVerificationSucceededForSelector:(int)selector;
- (void)continueWithDiagsAndUsageStats;
- (void)continueWithGuestNetSettings;
- (void)continueWithPPPoESettings;
- (void)continueWithSwapCabling;
- (void)dealloc;
- (void)doneWithAssistantResult:(int)result;
- (void)handleCancelRequest:(BOOL)request;
- (void)handleNextButton:(id)button;
- (void)loadView;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)playDoneSound;
- (void)popToRootViewControllerAnimated:(BOOL)animated;
- (void)presentUIForRecommendationResult:(int)result paramDict:(id)dict;
- (void)presentUIForRecommendationStatus;
- (void)presentUIForRecommmendationTargetInfo:(id)info;
- (void)presentUIForSetupResult:(int)result baseStationInfo:(id)info withPrompt:(id)prompt;
- (void)presentUIForSetupStatusWithRecommendationDict:(id)dict;
- (void)presentUIForStepByStepNextStep:(int)step paramDict:(id)dict;
- (void)presentWaitingForWANViewWithContinueText:(BOOL)text;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)readyToGuess;
- (void)replaceSubviewsInView:(id)view newSubviews:(id)subviews withAnimation:(BOOL)animation;
- (void)setupCompleteShowPasswords:(BOOL)passwords;
- (void)showAskUserForPPPoECredentialsForStatus:(int)status paramDict:(id)dict;
- (void)showAskUserSwapCablingForStatus:(int)status paramDict:(id)dict;
- (void)showTellUserToFixTheirInternetConnection;
- (void)showTellUserToPlugInEthernetForStatus:(int)status paramDict:(id)dict;
- (void)showTellUserToResetBroadbandDeviceForStatus:(int)status paramDict:(id)dict;
- (void)showUIConfigPromptForGuestNetConfigWithParamDict:(id)dict;
- (void)showUIConfigPromptToSendDiagsUsageStatsWithParamDict:(id)dict;
- (void)showUIForSetupStatus;
- (void)skipPluginAudioCabling;
- (void)skipWANPort;
- (void)touchInCellAtIndexPath:(id)path;
@end

@implementation AssistantUIViewController

- (AssistantUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = AssistantUIViewController;
  v4 = [(AUUITableViewController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
    sub_23EB6CCD4(@"SetupRecommendations");
  }

  return v4;
}

- (void)loadView
{
  v145[1] = *MEMORY[0x277D85DE8];
  v143.receiver = self;
  v143.super_class = AssistantUIViewController;
  [(AUUITableViewController *)&v143 loadView];
  if (!objc_msgSend__assistantUIController(self, v3, v4))
  {
    v6 = objc_alloc_init(AssistantUIController);
    objc_msgSend_set_assistantUIController_(self, v7, v6);
  }

  objc_msgSend_setDelegate_(self, v5, self);
  v8 = objc_alloc(MEMORY[0x277D751E0]);
  v10 = objc_msgSend_initWithBarButtonSystemItem_target_action_(v8, v9, 1, self, sel_handleCancelButton_);
  objc_msgSend_setCancelButton_(self, v11, v10);
  v12 = objc_alloc(MEMORY[0x277D751E0]);
  v13 = sub_23EB6CD3C(@"kNext", qword_27E383800);
  v15 = objc_msgSend_initWithTitle_style_target_action_(v12, v14, v13, 2, self, sel_handleNextButton_);
  objc_msgSend_setNextButton_(self, v16, v15);
  v19 = objc_msgSend_cancelButton(self, v17, v18);
  v22 = objc_msgSend_navigationItem(self, v20, v21);
  objc_msgSend_setLeftBarButtonItem_(v22, v23, v19);
  Button = objc_msgSend_nextButton(self, v24, v25);
  v29 = objc_msgSend_navigationItem(self, v27, v28);
  objc_msgSend_setRightBarButtonItem_(v29, v30, Button);
  v33 = objc_msgSend_nextButton(self, v31, v32);
  objc_msgSend_setEnabled_(v33, v34, 0);
  v37 = objc_msgSend_cancelButton(self, v35, v36);
  objc_msgSend_setEnabled_(v37, v38, 0);
  LODWORD(v40) = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v39, self->_scanInfoRecord);
  if (!v40)
  {
    v40 = objc_msgSend_callerParamDict(self, v41, v42);
    if (v40)
    {
      v45 = objc_msgSend_callerParamDict(self, v43, v44);
      v47 = objc_msgSend_objectForKey_(v45, v46, @"wacShouldHideFindAppUI");
      if (objc_msgSend_BOOLValue(v47, v48, v49))
      {
        LODWORD(v40) = 4;
      }

      else
      {
        LODWORD(v40) = 0;
      }
    }
  }

  v50 = sub_23EB6D2F0(v40);
  v51 = sub_23EB6CD3C(v50, qword_27E383800);
  v54 = objc_msgSend_navigationItem(self, v52, v53);
  objc_msgSend_setTitle_(v54, v55, v51);
  objc_msgSend_setDelegate_(self->_assistantUIController, v56, self);
  objc_msgSend_performSelector_withObject_afterDelay_(self, v57, sel_initializeServiesDone, 0, 0.0);
  v60 = objc_msgSend_navigationController(self, v58, v59);
  objc_msgSend_setDelegate_(v60, v61, self);
  v62 = objc_alloc(MEMORY[0x277D751E0]);
  v63 = sub_23EB6CD3C(@"kBack", qword_27E383800);
  v65 = objc_msgSend_initWithTitle_style_target_action_(v62, v64, v63, 0, 0, 0);
  v68 = objc_msgSend_navigationItem(self, v66, v67);
  objc_msgSend_setBackBarButtonItem_(v68, v69, v65);
  v142 = 0;
  v72 = objc_msgSend_view(self, v70, v71);
  objc_msgSend_frame(v72, v73, v74);
  self->justTextLabel = objc_msgSend_labelViewInContainer_width_(AssistantSubUIViewController, v75, &v142, v76);
  objc_msgSend_setJustTextContainerView_(self, v77, v142);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->justTextContainerView, v78, 0);
  justTextLabel = self->justTextLabel;
  v80 = MEMORY[0x277CCAAD0];
  v144 = @"height";
  v81 = MEMORY[0x277CCABB0];
  objc_msgSend_frame(justTextLabel, v82, v83);
  *&v85 = v84;
  v145[0] = objc_msgSend_numberWithFloat_(v81, v86, v87, v85);
  v89 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v88, v145, &v144, 1);
  v90 = _NSDictionaryOfVariableBindings(&cfstr_Justtextlabel.isa, self->justTextLabel, 0);
  v92 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v80, v91, @"V:[justTextLabel(>=height)]", 0, v89, v90);
  objc_msgSend_addConstraints_(justTextLabel, v93, v92);
  v141 = 0;
  v142 = 0;
  v96 = objc_msgSend_view(self, v94, v95);
  objc_msgSend_frame(v96, v97, v98);
  self->spinnerWithStatusBelowLabel = objc_msgSend_labelViewInContainer_width_withSpinner_above_(AssistantSubUIViewController, v99, &v142, &v141, 1, v100);
  v101 = v142;
  self->spinnerWithStatusBelowSpinner = v141;
  objc_msgSend_setSpinnerWithStatusBelowView_(self, v102, v101);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(self->spinnerWithStatusBelowView, v103, 0);
  v142 = 0;
  v106 = objc_msgSend_view(self, v104, v105);
  objc_msgSend_frame(v106, v107, v108);
  v112 = objc_msgSend_topoViewWithWidth_(AssistantSubUIViewController, v109, v110, v111);
  objc_msgSend_setTopoView_(self, v113, v112);
  v116 = objc_msgSend_view(self, v114, v115);
  objc_msgSend_frame(v116, v117, v118);
  v122 = objc_msgSend_containerViewWithWidth_(AssistantSubUIViewController, v119, v120, v121);
  objc_msgSend_setTableHeaderContainerView_(self, v123, v122);
  v126 = objc_msgSend_view(self, v124, v125);
  objc_msgSend_frame(v126, v127, v128);
  v130 = v129;
  v133 = objc_msgSend_view(self, v131, v132);
  objc_msgSend_frame(v133, v134, v135);
  v139 = objc_msgSend_tableViewWithWidth_height_(AssistantSubUIViewController, v136, v137, v130, v138);
  objc_msgSend_setTableView_(self, v140, v139);
}

- (void)dealloc
{
  objc_msgSend_setPasswordAlert_(self, v3, 0);
  objc_msgSend_setAskUserQuestionAlert_(self, v4, 0);
  objc_msgSend_setConnectionVerificationAlert_(self, v5, 0);
  objc_msgSend_set_controllerContext_(self, v6, 0);
  mfiAccessoryResponseDict = self->_mfiAccessoryResponseDict;
  if (mfiAccessoryResponseDict)
  {
  }

  sub_23EB6CD10();
  objc_msgSend_setCurrentSubController_(self, v8, 0);
  objc_msgSend_setJustTextContainerView_(self, v9, 0);
  objc_msgSend_setSpinnerWithStatusBelowView_(self, v10, 0);
  objc_msgSend_setTopoView_(self, v11, 0);
  v12.receiver = self;
  v12.super_class = AssistantUIViewController;
  [(AUUITableViewController *)&v12 dealloc];
}

- (void)readyToGuess
{
  v4 = objc_msgSend_macAddress(self, a2, v2);
  if (v4 || (v7 = objc_msgSend_scanInfoRecord(self, v5, v6), (v4 = objc_msgSend_objectForKey_(v7, v8, @"BSSID")) != 0) || (v9 = objc_msgSend_scanInfoRecord(self, v5, v6), (v4 = objc_msgSend_objectForKey_(v9, v10, @"raMA")) != 0))
  {
    v11 = v4;
    v12 = objc_msgSend_scanInfoRecord(self, v5, v6);
    objc_msgSend_setTargetScanRecord_(self->_assistantUIController, v13, v12);
    objc_msgSend_setTargetMACAddress_(self->_assistantUIController, v14, v11);
    v17 = objc_msgSend_paramScanResults(self, v15, v16);
    objc_msgSend_setParamScanResults_(self->_assistantUIController, v18, v17);
    assistantUIController = self->_assistantUIController;

    MEMORY[0x2821F9670](assistantUIController, sel_startAutoGuess, v19);
  }
}

- (void)baseStationConfigurationComplete:(id)complete
{
  if (objc_msgSend_doneWithAssistant_(self->_assistantUIController, a2, 0) != -6771)
  {
    v6 = objc_msgSend_assistantResult(self->_assistantUIController, v4, v5);

    MEMORY[0x2821F9670](self, sel_doneWithAssistantResult_, v6);
  }
}

- (void)callbackAskCancel
{
  if (objc_msgSend__controllerContext(self, a2, v2))
  {
    objc_msgSend_set_controllerContext_(self, v4, 0);
  }

  v6 = objc_msgSend_uiAlert(self, v4, v5);

  objc_msgSend_dismissWithNoActionAnimated_(v6, v7, 1);
}

- (BOOL)auUIAlertOKAction:(id)action
{
  v5 = objc_msgSend_tag(action, a2, action);
  v8 = 0;
  if (v5 > 4002)
  {
    switch(v5)
    {
      case 4003:
        v19 = objc_msgSend_uiAlert(self, v6, v7);
        v22 = objc_msgSend_context(v19, v20, v21);
        objc_msgSend_callbackAskUserAQuestionResult_result_(v22, v23, 5, 4294960539);
        goto LABEL_15;
      case 4004:
        v35 = objc_msgSend_uiAlert(self, v6, v7);
        v38 = objc_msgSend_context(v35, v36, v37);
        v41 = objc_msgSend_textField(action, v39, v40);
        v44 = objc_msgSend_text(v41, v42, v43);
        objc_msgSend_callbackAskUserForSetupCodeResult_password_(v38, v45, 0, v44);
        goto LABEL_15;
      case 4005:
        v14 = objc_msgSend_uiAlert(self, v6, v7);
        v17 = objc_msgSend_context(v14, v15, v16);
        objc_msgSend_callbackAskUserForUncertifiedResult_(v17, v18, 0);
        goto LABEL_15;
    }
  }

  else
  {
    switch(v5)
    {
      case 4000:
        objc_msgSend_skipWANPort(self, v6, v7);
        goto LABEL_15;
      case 4001:
        v24 = objc_msgSend_uiAlert(self, v6, v7);
        v27 = objc_msgSend_context(v24, v25, v26);
        v30 = objc_msgSend_textField(action, v28, v29);
        v33 = objc_msgSend_text(v30, v31, v32);
        objc_msgSend_callbackAskUserForPasswordResult_password_remember_(v27, v34, 0, v33, 2);
        goto LABEL_15;
      case 4002:
        v9 = objc_msgSend_uiAlert(self, v6, v7);
        v12 = objc_msgSend_context(v9, v10, v11);
        objc_msgSend_callbackAskUserAQuestionResult_result_(v12, v13, 4, 0);
LABEL_15:
        v8 = 1;
        break;
    }
  }

  objc_msgSend_setUiAlert_(self, v6, 0);
  return v8;
}

- (BOOL)auUIAlertCancelAction:(id)action
{
  v4 = objc_msgSend_tag(action, a2, action);
  v7 = 0;
  if (v4 > 4002)
  {
    switch(v4)
    {
      case 4003:
        v18 = objc_msgSend_uiAlert(self, v5, v6);
        v21 = objc_msgSend_context(v18, v19, v20);
        objc_msgSend_callbackAskUserAQuestionResult_result_(v21, v22, 5, 4294960527);
        goto LABEL_14;
      case 4004:
        v28 = objc_msgSend_uiAlert(self, v5, v6);
        v31 = objc_msgSend_context(v28, v29, v30);
        objc_msgSend_callbackAskUserForSetupCodeResult_password_(v31, v32, 4294960573, &stru_285145FE8);
        goto LABEL_14;
      case 4005:
        v13 = objc_msgSend_uiAlert(self, v5, v6);
        v16 = objc_msgSend_context(v13, v14, v15);
        objc_msgSend_callbackAskUserForUncertifiedResult_(v16, v17, 4294960573);
        goto LABEL_14;
    }
  }

  else
  {
    switch(v4)
    {
      case 4000:
LABEL_14:
        v7 = 1;
        break;
      case 4001:
        v23 = objc_msgSend_uiAlert(self, v5, v6);
        v26 = objc_msgSend_context(v23, v24, v25);
        objc_msgSend_callbackAskUserForPasswordResult_password_remember_(v26, v27, 4294960573, 0, 2);
        goto LABEL_14;
      case 4002:
        v8 = objc_msgSend_uiAlert(self, v5, v6);
        v11 = objc_msgSend_context(v8, v9, v10);
        objc_msgSend_callbackAskUserAQuestionResult_result_(v11, v12, 4, 4294960573);
        goto LABEL_14;
    }
  }

  objc_msgSend_setUiAlert_(self, v5, 0);
  return v7;
}

- (int)callbackAskUserForUncertifiedForController:(id)controller
{
  if (objc_msgSend_uiAlert(self, a2, controller))
  {
    return -6721;
  }

  sub_23EB6CCD4(@"SetupRecommendations");
  v6 = [AUUIAlert alloc];
  v8 = objc_msgSend_initWithViewController_(v6, v7, self);
  objc_msgSend_setUiAlert_(self, v9, v8);
  v10 = sub_23EB6CD3C(@"kAddHomeKitAccessoryTitle", qword_27E383800);
  objc_msgSend_setTitle_(self->uiAlert, v11, v10);
  v12 = sub_23EB6CD3C(@"kAddHomeKitAccessoryMessage", qword_27E383800);
  objc_msgSend_setMessage_(self->uiAlert, v13, v12);
  objc_msgSend_setDelegate_(self->uiAlert, v14, self);
  v15 = sub_23EB6CD3C(@"kAddHomeKitAccessoryAddAnyway", qword_27E383800);
  objc_msgSend_setOkButtonTitle_(self->uiAlert, v16, v15);
  v17 = sub_23EB6CD3C(@"kCancel", qword_27E383800);
  objc_msgSend_setCancelButtonTitle_(self->uiAlert, v18, v17);
  objc_msgSend_setContext_(self->uiAlert, v19, controller);
  objc_msgSend_setTag_(self->uiAlert, v20, 4005);
  objc_msgSend_show(self->uiAlert, v21, v22);
  return 0;
}

- (int)callbackAskUserForPassword:(int)password param:(id)param forController:(id)controller
{
  if (!param)
  {
    return -6705;
  }

  if (objc_msgSend_uiAlert(self, a2, *&password))
  {
    return -6721;
  }

  if (!password)
  {
    v10 = @"kAskUserForBasePassword";
    goto LABEL_9;
  }

  if (password == 1)
  {
    v10 = @"kAskUserForNetworkPassword";
LABEL_9:
    v11 = MEMORY[0x277CCACA8];
    v12 = sub_23EB6CD3C(v10, qword_27E383800);
    valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v11, v13, v12, @"%@", 0, param);
    v15 = [AUPasswordUIAlert alloc];
    v17 = objc_msgSend_initWithViewController_(v15, v16, self);
    objc_msgSend_setUiAlert_(self, v18, v17);
    objc_msgSend_setTitle_(self->uiAlert, v19, valid);
    objc_msgSend_setMessage_(self->uiAlert, v20, &stru_285145FE8);
    objc_msgSend_setDelegate_(self->uiAlert, v21, self);
    v22 = sub_23EB6CD3C(@"kOK", qword_27E383800);
    objc_msgSend_setOkButtonTitle_(self->uiAlert, v23, v22);
    v24 = sub_23EB6CD3C(@"kCancel", qword_27E383800);
    objc_msgSend_setCancelButtonTitle_(self->uiAlert, v25, v24);
    objc_msgSend_setContext_(self->uiAlert, v26, controller);
    objc_msgSend_setTag_(self->uiAlert, v27, 4001);
    objc_msgSend_show(self->uiAlert, v28, v29);
    return 0;
  }

  return -6705;
}

- (int)callbackAskUserForSetupCode:(int)code isRetry:(BOOL)retry forController:(id)controller
{
  retryCopy = retry;
  if (objc_msgSend_uiAlert(self, a2, *&code))
  {
    return -6721;
  }

  sub_23EB6CCD4(@"SetupRecommendations");
  if (retryCopy)
  {
    v9 = @"kAskUserForSetupCodeRetry";
  }

  else
  {
    v9 = @"kAskUserForSetupCode";
  }

  v10 = sub_23EB6CD3C(v9, qword_27E383800);
  v11 = [AUSetupCodeUIAlert alloc];
  v13 = objc_msgSend_initWithViewController_(v11, v12, self);
  objc_msgSend_setUiAlert_(self, v14, v13);
  objc_msgSend_setTitle_(self->uiAlert, v15, v10);
  objc_msgSend_setMessage_(self->uiAlert, v16, &stru_285145FE8);
  objc_msgSend_setDelegate_(self->uiAlert, v17, self);
  v18 = sub_23EB6CD3C(@"kOK", qword_27E383800);
  objc_msgSend_setOkButtonTitle_(self->uiAlert, v19, v18);
  v20 = sub_23EB6CD3C(@"kCancel", qword_27E383800);
  objc_msgSend_setCancelButtonTitle_(self->uiAlert, v21, v20);
  objc_msgSend_setContext_(self->uiAlert, v22, controller);
  objc_msgSend_setTag_(self->uiAlert, v23, 4004);
  objc_msgSend_show(self->uiAlert, v24, v25);
  return 0;
}

- (int)callbackAskUserAQuestion:(int)question paramDict:(id)dict forController:(id)controller
{
  if (self->_controllerContext)
  {
    return -6721;
  }

  if (question == 5)
  {
    if (dict)
    {
      v47 = objc_msgSend_objectForKey_(dict, a2, @"kAssistantCallbackAskUserParamKey_MessageKey");
      v48 = sub_23EB6CD3C(v47, qword_27E383800);
      v50 = objc_msgSend_objectForKey_(dict, v49, @"kAssistantCallbackAskUserParamKey_OKKey");
      v51 = sub_23EB6CD3C(v50, qword_27E383800);
      v53 = objc_msgSend_objectForKey_(dict, v52, @"kAssistantCallbackAskUserParamKey_CancelKey");
      v54 = sub_23EB6CD3C(v53, qword_27E383800);
      v55 = [AUUIAlert alloc];
      v57 = objc_msgSend_initWithViewController_(v55, v56, self);
      objc_msgSend_setUiAlert_(self, v58, v57);
      objc_msgSend_setTitle_(self->uiAlert, v59, v48);
      objc_msgSend_setMessage_(self->uiAlert, v60, &stru_285145FE8);
      objc_msgSend_setDelegate_(self->uiAlert, v61, self);
      objc_msgSend_setOkButtonTitle_(self->uiAlert, v62, v51);
      objc_msgSend_setCancelButtonTitle_(self->uiAlert, v63, v54);
      objc_msgSend_setContext_(self->uiAlert, v64, controller);
      objc_msgSend_setTag_(self->uiAlert, v65, 4003);
      objc_msgSend_show(self->uiAlert, v66, v67);
      return 0;
    }
  }

  else
  {
    if (question != 4)
    {
      if (question == 3)
      {
        objc_msgSend_callbackAskUserAQuestionResult_result_(controller, a2, *&question, 0);
      }

      return 0;
    }

    if (dict)
    {
      v9 = objc_msgSend_objectForKey_(dict, a2, @"kAssistantCallbackAskUserParamKey_Warning_MessageKey");
      v11 = objc_msgSend_objectForKey_(dict, v10, @"kAssistantCallbackAskUserParamKey_Warning_MessageParam1");
      v13 = objc_msgSend_objectForKey_(dict, v12, @"kAssistantCallbackAskUserParamKey_Warning_MessageParam2");
      v14 = MEMORY[0x277CCACA8];
      v15 = sub_23EB6CD3C(v9, qword_27E383800);
      valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v14, v16, v15, @"%@%@", 0, v11, v13);
      v19 = objc_msgSend_objectForKey_(dict, v18, @"kAssistantCallbackAskUserParamKey_Warning_PromptKey");
      v21 = objc_msgSend_objectForKey_(dict, v20, @"kAssistantCallbackAskUserParamKey_Warning_PromptParam1");
      v23 = objc_msgSend_objectForKey_(dict, v22, @"kAssistantCallbackAskUserParamKey_Warning_PromptParam2");
      v24 = MEMORY[0x277CCACA8];
      v25 = sub_23EB6CD3C(v19, qword_27E383800);
      v27 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v24, v26, v25, @"%@%@", 0, v21, v23);
      v29 = objc_msgSend_objectForKey_(dict, v28, @"kAssistantCallbackAskUserParamKey_OKKey");
      if (!v29)
      {
        v29 = @"kOK";
      }

      v30 = sub_23EB6CD3C(v29, qword_27E383800);
      v32 = objc_msgSend_objectForKey_(dict, v31, @"kAssistantCallbackAskUserParamKey_CancelKey");
      if (v32)
      {
        v32 = sub_23EB6CD3C(v32, qword_27E383800);
      }

      if (v32)
      {
        v33 = v30;
      }

      else
      {
        v33 = 0;
      }

      if (v32)
      {
        v30 = v32;
      }

      v34 = [AUUIAlert alloc];
      v36 = objc_msgSend_initWithViewController_(v34, v35, self);
      objc_msgSend_setUiAlert_(self, v37, v36);
      objc_msgSend_setTitle_(self->uiAlert, v38, v27);
      objc_msgSend_setMessage_(self->uiAlert, v39, valid);
      objc_msgSend_setDelegate_(self->uiAlert, v40, self);
      objc_msgSend_setOkButtonTitle_(self->uiAlert, v41, v33);
      objc_msgSend_setCancelButtonTitle_(self->uiAlert, v42, v30);
      objc_msgSend_setContext_(self->uiAlert, v43, controller);
      objc_msgSend_setTag_(self->uiAlert, v44, 4002);
      objc_msgSend_show(self->uiAlert, v45, v46);
      return 0;
    }
  }

  return -6705;
}

- (void)playDoneSound
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();
  v5 = objc_msgSend_bundleForClass_(v2, v4, v3);
  v7 = objc_msgSend_pathForResource_ofType_(v5, v6, @"burn complete.aif", &stru_285145FE8);
  v8 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBED08], v7, kCFURLPOSIXPathStyle, 0);
  outSystemSoundID = 0;
  v9 = AudioServicesCreateSystemSoundID(v8, &outSystemSoundID);
  CFRelease(v8);
  if (!v9)
  {
    AudioServicesAddSystemSoundCompletion(outSystemSoundID, 0, 0, sub_23EB56F7C, 0);
    AudioServicesPlayAlertSound(outSystemSoundID);
  }
}

- (void)showTellUserToResetBroadbandDeviceForStatus:(int)status paramDict:(id)dict
{
  v5 = [InternetViewController alloc];
  v7 = objc_msgSend_initWithNibName_bundle_(v5, v6, 0, 0);
  v10 = objc_msgSend_guessCompleteDict(self->_assistantUIController, v8, v9);
  v12 = objc_msgSend_unconfiguredBaseStationFromGuessCompleteDict_(AutoGuessController, v11, v10);
  if (v12)
  {
    v14 = v12;
    objc_msgSend_setCurrentSubController_(self, v13, v7);
    v17 = objc_msgSend_currentSubController(self, v15, v16);
    objc_msgSend_setInParamDict_(v17, v18, v14);
    v21 = objc_msgSend_currentSubController(self, v19, v20);
    objc_msgSend_setParentController_(v21, v22, self);

    self->_currentUIConfigStep = 1;
    objc_msgSend_presentInternetDisconnectedUI(v7, v23, v24);
    objc_msgSend_setDelegate_(v7, v25, self);

    objc_msgSend_pushViewController_animated_(self, v26, v7, 1);
  }
}

- (void)showAskUserForPPPoECredentialsForStatus:(int)status paramDict:(id)dict
{
  v5 = [PPPoEViewController alloc];
  v7 = objc_msgSend_initWithNibName_bundle_(v5, v6, 0, 0);
  objc_msgSend_setCurrentSubController_(self, v8, v7);
  v11 = objc_msgSend_currentSubController(self, v9, v10);
  objc_msgSend_setParentController_(v11, v12, self);

  self->_currentUIConfigStep = 3;

  objc_msgSend_pushViewController_animated_(self, v13, v7, 1);
}

- (void)showUIConfigPromptToSendDiagsUsageStatsWithParamDict:(id)dict
{
  v4 = [AssistantDiagsUsageStatsUIViewController alloc];
  v6 = objc_msgSend_initWithNibName_bundle_(v4, v5, 0, 0);
  objc_msgSend_setCurrentSubController_(self, v7, v6);
  v10 = objc_msgSend_currentSubController(self, v8, v9);
  objc_msgSend_setParentController_(v10, v11, self);

  self->_currentUIConfigStep = 7;

  objc_msgSend_pushViewController_animated_(self, v12, v6, 1);
}

- (void)showUIConfigPromptForGuestNetConfigWithParamDict:(id)dict
{
  v5 = objc_msgSend_newStepByStepControllerForStep_(self, a2, 3);
  if (v5)
  {
    v7 = v5;
    v8 = MEMORY[0x277CBEAC0];
    v9 = objc_msgSend_objectForKey_(dict, v6, @"kBSConfigurationUIConfig_TargetBaseKey");
    v11 = objc_msgSend_objectForKey_(dict, v10, @"kBSConfigurationUIConfig_BaseNameKey");
    v13 = objc_msgSend_objectForKey_(dict, v12, @"kBSConfigurationUIConfig_NetworkameKey");
    v15 = objc_msgSend_dictionaryWithObjectsAndKeys_(v8, v14, v9, @"kSBSKey_TargetBase", v11, @"kSBSKey_BaseName", v13, @"kSBSKey_NetworkName", 0);
    objc_msgSend_setInParamDict_(v7, v16, v15);
    objc_msgSend_setCurrentSubController_(self, v17, v7);
    v20 = objc_msgSend_currentSubController(self, v18, v19);
    objc_msgSend_setParentController_(v20, v21, self);

    self->_currentUIConfigStep = 8;

    objc_msgSend_pushViewController_animated_(self, v22, v7, 1);
  }
}

- (void)showTellUserToPlugInEthernetForStatus:(int)status paramDict:(id)dict
{
  v5 = [InternetViewController alloc];
  v7 = objc_msgSend_initWithNibName_bundle_(v5, v6, 0, 0);
  v10 = objc_msgSend_guessCompleteDict(self->_assistantUIController, v8, v9);
  v12 = objc_msgSend_unconfiguredBaseStationFromGuessCompleteDict_(AutoGuessController, v11, v10);
  if (v12)
  {
    v14 = v12;
    objc_msgSend_setCurrentSubController_(self, v13, v7);
    v17 = objc_msgSend_currentSubController(self, v15, v16);
    objc_msgSend_setInParamDict_(v17, v18, v14);
    v21 = objc_msgSend_currentSubController(self, v19, v20);
    objc_msgSend_setParentController_(v21, v22, self);

    self->_currentUIConfigStep = 1;
    objc_msgSend_presentInternetWANPluginUI(v7, v23, v24);
    objc_msgSend_setDelegate_(v7, v25, self);

    objc_msgSend_pushViewController_animated_(self, v26, v7, 1);
  }
}

- (void)showAskUserSwapCablingForStatus:(int)status paramDict:(id)dict
{
  if (status == -6771)
  {
    v5 = objc_msgSend_currentSubController(self, a2, *&status, dict);

    MEMORY[0x2821F9670](v5, sel_presentSwapCablingCompleteUI, v6);
  }

  else
  {
    v8 = [InternetViewController alloc];
    v10 = objc_msgSend_initWithNibName_bundle_(v8, v9, 0, 0);
    v12 = objc_msgSend_objectForKey_(dict, v11, @"kBSConfigurationSwapCabling_TargetBase");
    if (v12)
    {
      v14 = v12;
      v15 = objc_msgSend_objectForKey_(dict, v13, @"kBSConfigurationSwapCabling_SourceBase");
      if (v15)
      {
        v17 = v15;
        objc_msgSend_setCurrentSubController_(self, v16, v10);
        v19 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEAC0], v18, v14, @"kSBSKey_TargetBase", v17, @"kSBSKey_SourceBase", 0);
        v22 = objc_msgSend_currentSubController(self, v20, v21);
        objc_msgSend_setInParamDict_(v22, v23, v19);
        v26 = objc_msgSend_currentSubController(self, v24, v25);
        objc_msgSend_setParentController_(v26, v27, self);

        self->_currentUIConfigStep = 5;
        objc_msgSend_presentSwapCablingUI(v10, v28, v29);
        objc_msgSend_setDelegate_(v10, v30, self);

        objc_msgSend_pushViewController_animated_(self, v31, v10, 1);
      }
    }
  }
}

- (void)showTellUserToFixTheirInternetConnection
{
  v3 = [InternetViewController alloc];
  v5 = objc_msgSend_initWithNibName_bundle_(v3, v4, 0, 0);
  objc_msgSend_setCurrentSubController_(self, v6, v5);
  v9 = objc_msgSend_currentSubController(self, v7, v8);
  objc_msgSend_setParentController_(v9, v10, self);

  objc_msgSend_pushViewController_animated_(self, v11, v5, 1);
}

- (void)handleNextButton:(id)button
{
  v4 = objc_msgSend_state(self->_assistantUIController, a2, button);
  if (v4 > 5)
  {
    if (v4 == 7)
    {
      currentUIConfigStep = self->_currentUIConfigStep;
      if (currentUIConfigStep == 8)
      {

        MEMORY[0x2821F9670](self, sel_continueWithGuestNetSettings, v6);
      }

      else if (currentUIConfigStep == 7)
      {

        MEMORY[0x2821F9670](self, sel_continueWithDiagsAndUsageStats, v6);
      }
    }

    else if (v4 == 6)
    {
      v20 = self->_currentUIConfigStep;
      if (v20 > 4)
      {
        if (v20 == 5)
        {

          MEMORY[0x2821F9670](self, sel_continueWithSwapCabling, v6);
        }

        else if (v20 == 6)
        {

          MEMORY[0x2821F9670](self, sel_skipPluginAudioCabling, v6);
        }
      }

      else if (v20 == 1)
      {

        MEMORY[0x2821F9670](self, sel_confirmSkipWANPort, v6);
      }

      else if (v20 == 3)
      {

        MEMORY[0x2821F9670](self, sel_continueWithPPPoESettings, v6);
      }
    }
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v7 = objc_msgSend_navigationController(self, v5, v6);
        v16 = objc_msgSend_topViewController(v7, v8, v9);
        if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
        {
          sub_23EB75374(&dword_27E381018, "[AssistantUIViewController handleNextButton:]", 100, "GOING FORWARD from current controller %@\n", v12, v13, v14, v15, v16);
        }

        assistantUIController = self->_assistantUIController;
        v19 = objc_msgSend_outResultsDict(v16, v10, v11);

        objc_msgSend_presentUIForStepByStepNextStepResult_withOptions_(assistantUIController, v18, 0, v19);
      }

      return;
    }

    v21 = objc_msgSend_navigationController(self, v5, v6);
    v24 = objc_msgSend_topViewController(v21, v22, v23);
    v27 = objc_msgSend_tableManager(v24, v25, v26);
    v30 = objc_msgSend_tableManager(v24, v28, v29);
    v32 = objc_msgSend_indexOfSectionWithIdentifier_(v30, v31, @"ActionTableSection");
    v34 = objc_msgSend_tagOfSelectedRowInMenuSection_(v27, v33, v32);
    self->_selectedActionTag = v34;
    if (v34 == 1349675373)
    {
      goto LABEL_22;
    }

    if (v34 != 1299149413)
    {
      if (v34)
      {
        return;
      }

LABEL_22:
      v37 = objc_msgSend_outResultsDict(v24, v35, v36);

      MEMORY[0x2821F9670](self, sel_startSetup_, v37);
      return;
    }

    v39 = self->_assistantUIController;

    MEMORY[0x2821F9670](v39, sel_startStepByStepFromAutoGuessRecommendation, v36);
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  self->_goingBack = 0;
  if (objc_msgSend_currentSubController(self, a2, controller, viewController, animated) && objc_msgSend_currentSubController(self, v8, v9) != viewController)
  {
    v14 = objc_msgSend_viewControllers(controller, v8, v9);
    v17 = objc_msgSend_currentSubController(self, v15, v16);
    self->_goingBack = objc_msgSend_indexOfObject_(v14, v18, v17) == 0x7FFFFFFFFFFFFFFFLL;
  }

  if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
  {
    sub_23EB75374(&dword_27E381018, "[AssistantUIViewController navigationController:didShowViewController:animated:]", 100, "%@\n", v10, v11, v12, v13, viewController);
  }

  if (objc_msgSend_state(self->_assistantUIController, v8, v9) == 3)
  {
    if (!self->_goingBack)
    {
      goto LABEL_26;
    }

    objc_msgSend_presentUIForStepByStepNextStepResult_withOptions_(self->_assistantUIController, v19, 4294960527, 0);
LABEL_19:
    if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
    {
      v23 = objc_msgSend_currentSubController(self, v19, v20);
      sub_23EB75374(&dword_27E381018, "[AssistantUIViewController navigationController:didShowViewController:animated:]", 100, "GOING BACKWARD from %@ to %@\n", v24, v25, v26, v27, v23);
    }

    goto LABEL_26;
  }

  if (objc_msgSend_state(self->_assistantUIController, v19, v20) == 6)
  {
    if (!self->_goingBack)
    {
      goto LABEL_26;
    }

    currentUIConfigStep = self->_currentUIConfigStep;
    if ((currentUIConfigStep - 3) < 4 || currentUIConfigStep == 1)
    {
      objc_msgSend_presentUIForConnectionVerificationResult_withOptions_(self->_assistantUIController, v19, 4294960527, 0);
    }

    goto LABEL_19;
  }

  if (objc_msgSend_state(self->_assistantUIController, v19, v20) == 7 && self->_goingBack)
  {
    objc_msgSend_showUIConfigPromptResult_withOptions_(self->_assistantUIController, v19, 4294960527, 0);
    objc_msgSend_showUIForSetupStatus(self, v28, v29);
  }

LABEL_26:
  v30 = objc_msgSend_tableManager(self, v19, v20);

  MEMORY[0x2821F9670](v30, sel_hideKeyboard, v31);
}

- (void)touchInCellAtIndexPath:(id)path
{
  v4 = objc_msgSend_section(path, a2, path);
  v7 = objc_msgSend_tableManager(self, v5, v6);
  if (v4 == objc_msgSend_indexOfSectionWithIdentifier_(v7, v8, @"ShowPasswords"))
  {
    v11 = !self->showingPasswordsAtEnd;

    MEMORY[0x2821F9670](self, sel_setupCompleteShowPasswords_, v11);
  }

  else
  {
    v12 = objc_msgSend_tableManager(self, v9, v10);
    if (v4 == objc_msgSend_indexOfSectionWithIdentifier_(v12, v13, @"FindAppTableSection"))
    {
      mfiAccessoryResponseDict = self->_mfiAccessoryResponseDict;

      sub_23EC18B48(mfiAccessoryResponseDict);
    }
  }
}

- (void)assistantWaitingForResourcesStart
{
  v3 = objc_msgSend_cancelButton(self, a2, v2);

  objc_msgSend_setEnabled_(v3, v4, 1);
}

- (void)assistantWaitingForResourcesComplete
{
  v3 = objc_msgSend_cancelButton(self, a2, v2);

  objc_msgSend_setEnabled_(v3, v4, 0);
}

- (void)assistantUpdateProgress:(id)progress forState:(int)state
{
  if (state > 4)
  {
    if (state != 5)
    {
      if (state == 6)
      {
        goto LABEL_14;
      }

      if (state != 8)
      {
        return;
      }

      if (objc_msgSend_settingUpStatusText(self, a2, progress))
      {
        justTextLabel = self->justTextLabel;
        justTextContainerView = self->justTextContainerView;
        v13 = objc_msgSend_settingUpStatusText(self, a2, progress);
        sub_23EB5E054(justTextLabel, justTextContainerView, v13);
        objc_msgSend_setSettingUpStatusText_(self, v14, 0);
      }
    }

    if (!objc_msgSend_length(progress, a2, progress))
    {
      return;
    }

    goto LABEL_14;
  }

  if ((state - 3) < 2)
  {
    if (objc_msgSend_length(progress, a2, progress))
    {
      objc_msgSend_currentSubController(self, v6, v7);
      if (objc_opt_respondsToSelector())
      {
        v10 = objc_msgSend_currentSubController(self, v8, v9);

        MEMORY[0x2821F9670](v10, sel_stepByStepUpdateProgress_forState_, progress);
      }
    }

    return;
  }

  if (state != 1)
  {
    return;
  }

LABEL_14:
  sub_23EB5E054(self->spinnerWithStatusBelowLabel, self->spinnerWithStatusBelowView, progress);
  tableHeaderContainerView = self->tableHeaderContainerView;

  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v15, tableHeaderContainerView);
}

- (void)doneWithAssistantResult:(int)result
{
  v7 = *&result;
  if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
  {
    sub_23EB75374(&dword_27E381018, "[AssistantUIViewController doneWithAssistantResult:]", 100, " result %d\n", v3, v4, v5, v6, v7);
  }

  v9 = self->_assistantUIController;
  objc_msgSend_set_assistantUIController_(self, v10, 0);
  v13 = objc_msgSend_uiAlert(self, v11, v12);
  objc_msgSend_dismissWithNoActionAnimated_(v13, v14, 1);
  if (self->_assistantDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_assistantCompleteWithResult_(self->_assistantDelegate, v15, v7);
      self->_assistantDelegate = 0;
    }
  }
}

- (void)presentUIForRecommendationStatus
{
  v4 = objc_msgSend_tableManager(self, a2, v2);
  objc_msgSend_cleanTableViewForReuse(v4, v5, v6);
  justTextLabel = self->justTextLabel;
  justTextContainerView = self->justTextContainerView;
  v9 = sub_23EB6CD3C(@"CheckingOutYourNetwork", qword_27E383800);
  sub_23EB5E054(justTextLabel, justTextContainerView, v9);
  spinnerWithStatusBelowLabel = self->spinnerWithStatusBelowLabel;
  spinnerWithStatusBelowView = self->spinnerWithStatusBelowView;
  v12 = sub_23EB6CD3C(@"kIntializingServicesString", qword_27E383800);
  sub_23EB5E054(spinnerWithStatusBelowLabel, spinnerWithStatusBelowView, v12);
  if (!objc_msgSend_subviews(self->tableHeaderContainerView, v13, v14))
  {
    tableHeaderContainerView = self->tableHeaderContainerView;
    v18 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], v15, self->justTextContainerView, self->spinnerWithStatusBelowView, 0);
    objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(self, v19, tableHeaderContainerView, v18, 1);
  }

  v20 = self->tableHeaderContainerView;
  v21 = objc_msgSend_tableView(self, v15, v16);
  objc_msgSend_setTableHeaderView_(v21, v22, v20);
  Button = objc_msgSend_nextButton(self, v23, v24);
  objc_msgSend_setEnabled_(Button, v26, 0);
  v29 = objc_msgSend_cancelButton(self, v27, v28);
  objc_msgSend_setEnabled_(v29, v30, 1);
  spinnerWithStatusBelowSpinner = self->spinnerWithStatusBelowSpinner;

  objc_msgSend_startAnimating(spinnerWithStatusBelowSpinner, v31, v32);
}

- (void)presentUIForRecommmendationTargetInfo:(id)info
{
  if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
  {
    sub_23EB75374(&dword_27E381018, "[AssistantUIViewController presentUIForRecommmendationTargetInfo:]", 100, "targetInfo: %@\n", v3, v4, v5, v6, info);
  }

  v9 = objc_msgSend_objectForKey_(info, a2, @"kRecommendationTargetInfoKey_ProductID");
  v11 = objc_msgSend_objectForKey_(info, v10, @"kRecommendationTargetInfoKey_DeviceKind");
  v16 = objc_msgSend_integerValue(v11, v12, v13);
  if ((v16 - 3) > 1)
  {
    v19 = objc_msgSend_integerValue(v9, v14, v15);
    v17 = sub_23EB6D7A8(v19, v16);
  }

  else
  {
    v17 = objc_msgSend_objectForKey_(info, v14, @"kRecommendationTargetInfoKey_BaseName");
  }

  v20 = v17;
  v21 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v18, self->justTextContainerView);
  v23 = v21;
  if ((v16 - 2) >= 3)
  {
    objc_msgSend_addObject_(v21, v22, self->topoView);
  }

  objc_msgSend_addObject_(v23, v22, self->spinnerWithStatusBelowView);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(self, v24, self->tableHeaderContainerView, v23, 1);
  tableHeaderContainerView = self->tableHeaderContainerView;
  v28 = objc_msgSend_tableView(self, v26, v27);
  objc_msgSend_setTableHeaderView_(v28, v29, tableHeaderContainerView);
  assistantUIController = self->_assistantUIController;
  v33 = objc_msgSend_layer(self->topoView, v31, v32);
  v36 = objc_msgSend_topoLayout(self, v34, v35);
  v39 = objc_msgSend_topoView(self, v37, v38);
  v42 = objc_msgSend_modifyTopoUIInLayer_withLayout_andOwningView_targetProductID_targetDeviceKind_targetName_targetWiFiName_sourceProductID_sourceDeviceKind_sourceName_sourceWiFiName_connectionType_(assistantUIController, v40, v33, v36, v39, v9, v11, v20, 0, 0, 0, 0, 0, 0);

  objc_msgSend_setTopoLayout_(self, v41, v42);
}

- (void)presentUIForRecommendationResult:(int)result paramDict:(id)dict
{
  if (result == -6723)
  {

    MEMORY[0x2821F9670](self, sel_doneWithAssistantResult_, 4294960573);
  }

  else
  {
    self->_goingBack = 0;
    v7 = objc_msgSend_navigationController(self, a2, *&result);
    if (objc_msgSend_topViewController(v7, v8, v9) != self)
    {
      v12 = objc_msgSend_navigationController(self, v10, v11);
      v15 = objc_msgSend_topViewController(v12, v13, v14);
      objc_msgSend_setCurrentSubController_(self, v16, v15);
    }

    v17 = objc_msgSend_navigationController(self, v10, v11);
    v20 = objc_msgSend_topViewController(v17, v18, v19);
    if (dict)
    {
      if (v20 == self)
      {
        objc_msgSend_setRecommendationParamDict_(self, v21, dict);
        v23 = objc_msgSend_objectForKey_(dict, v22, @"promptString");
        if (v23)
        {
          v26 = v23;
          v27 = objc_msgSend_cancelButton(self, v24, v25);
          objc_msgSend_setEnabled_(v27, v28, 1);
          objc_msgSend_stopAnimating(self->spinnerWithStatusBelowSpinner, v29, v30);
          objc_msgSend_setText_(self->spinnerWithStatusBelowLabel, v31, &stru_285145FE8);
          sub_23EB5E054(self->spinnerWithStatusBelowLabel, self->spinnerWithStatusBelowView, &stru_285145FE8);
          sub_23EB5E054(self->justTextLabel, self->justTextContainerView, v26);
          objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v32, self->tableHeaderContainerView);
          tableHeaderContainerView = self->tableHeaderContainerView;
          v36 = objc_msgSend_tableView(self, v34, v35);
          objc_msgSend_setTableHeaderView_(v36, v37, tableHeaderContainerView);
          Button = objc_msgSend_nextButton(self, v38, v39);
          objc_msgSend_setEnabled_(Button, v41, 0);
          if (!result)
          {
            v70 = 0;
            v44 = objc_msgSend_guessCompleteDict(self->_assistantUIController, v42, v43);
            v46 = objc_msgSend_primaryRecommendationDictionaryFromCompletionDict_(AutoGuessController, v45, v44);
            v49 = objc_msgSend_sharedInstance(WiFiUtils, v47, v48);
            v52 = objc_msgSend_unmergedScanInfoArray(v49, v50, v51);
            if (!sub_23EBD9E90(v46, v52, &v70, v53, v54, v55, v56, v57))
            {
              if (v70)
              {
                v59 = objc_msgSend_objectForKey_(v70, v58, @"kSBSKey_Step");
                v62 = objc_msgSend_integerValue(v59, v60, v61);
                v64 = objc_msgSend_newStepByStepControllerForStep_(self, v63, v62);
                if (v64)
                {
                  v66 = v64;
                  objc_msgSend_setParentController_(v64, v65, self);
                  objc_msgSend_setInParamDict_(v66, v67, v70);

                  objc_msgSend_pushViewController_animated_(self, v68, v66, 0);
                  objc_msgSend_setCurrentSubController_(self, v69, v66);
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)presentUIForStepByStepNextStep:(int)step paramDict:(id)dict
{
  v9 = *&step;
  if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
  {
    sub_23EB75374(&dword_27E381018, "[AssistantUIViewController presentUIForStepByStepNextStep:paramDict:]", 100, "step: %d\n", v4, v5, v6, v7, v9);
  }

  if (self->_goingBack)
  {
    v11 = objc_msgSend_navigationController(self, a2, *&step);
    v14 = objc_msgSend_topViewController(v11, v12, v13);
    objc_msgSend_setCurrentSubController_(self, v15, v14);
    self->_goingBack = 0;
    if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
    {
      v18 = "going BACKWARD to %@\n";
LABEL_24:
      v58 = objc_msgSend_currentSubController(self, v16, v17);
      sub_23EB75374(&dword_27E381018, "[AssistantUIViewController presentUIForStepByStepNextStep:paramDict:]", 100, v18, v59, v60, v61, v62, v58);
    }
  }

  else
  {
    v19 = objc_msgSend_newStepByStepControllerForStep_(self, a2, v9);
    objc_msgSend_setParentController_(v19, v20, self);
    objc_msgSend_setInParamDict_(v19, v21, dict);
    v24 = objc_msgSend_currentSubController(self, v22, v23);
    v27 = objc_msgSend_inParamDict(v24, v25, v26);
    v29 = objc_msgSend_objectForKey_(v27, v28, @"kSBSKey_CannotBeBackedInto");
    if (objc_msgSend_BOOLValue(v29, v30, v31))
    {
      v34 = objc_msgSend_navigationController(self, v32, v33);
      objc_msgSend_popViewControllerAnimated_(v34, v35, 0);
    }

    if (objc_msgSend_currentSubController(self, v32, v33) && (v38 = objc_msgSend_currentSubController(self, v36, v37), v41 = objc_msgSend_inParamDict(v38, v39, v40), v43 = objc_msgSend_objectForKey_(v41, v42, @"kSBSKey_Step"), objc_msgSend_integerValue(v43, v44, v45) == v9))
    {
      v47 = objc_msgSend_navigationController(self, v36, v46);
      objc_msgSend_popViewControllerAnimated_(v47, v48, 0);
      if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
      {
        sub_23EB75374(&dword_27E381018, "[AssistantUIViewController presentUIForStepByStepNextStep:paramDict:]", 100, "REPLACING step with same step %d\n", v49, v50, v51, v52, v9);
      }

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    objc_msgSend_setCurrentSubController_(self, v36, v19);

    v56 = objc_msgSend_currentSubController(self, v54, v55);
    objc_msgSend_pushViewController_animated_(self, v57, v56, v53);
    if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
    {
      v18 = "going FORWARD to %@\n";
      goto LABEL_24;
    }
  }
}

- (id)modifyTopoUIInLayer:(id)layer withLayout:(id)layout newLayout:(id)newLayout
{
  v6 = objc_msgSend_topoDevicesDescriptor(newLayout, a2, layer);
  v9 = objc_msgSend_count(v6, v7, v8);
  if (v9 == 2)
  {
    v21 = objc_msgSend_objectAtIndex_(v6, v10, 0);
    v23 = objc_msgSend_valueForKey_(v21, v22, off_27E3830B8[0]);
    v25 = objc_msgSend_valueForKey_(v21, v24, off_27E3830C0[0]);
    v27 = objc_msgSend_valueForKey_(v21, v26, off_27E3830C8[0]);
    v29 = objc_msgSend_valueForKey_(v21, v28, off_27E3830D0[0]);
    v31 = objc_msgSend_objectAtIndex_(v6, v30, 1);
    v14 = objc_msgSend_valueForKey_(v31, v32, off_27E3830B8[0]);
    v16 = objc_msgSend_valueForKey_(v31, v33, off_27E3830C0[0]);
    v18 = objc_msgSend_valueForKey_(v31, v34, off_27E3830C8[0]);
    v20 = objc_msgSend_valueForKey_(v31, v35, off_27E3830D0[0]);
    v37 = objc_msgSend_valueForKey_(v31, v36, off_27E3830D8[0]);
  }

  else
  {
    if (v9 == 1)
    {
      v12 = objc_msgSend_objectAtIndex_(v6, v10, 0);
      v14 = objc_msgSend_valueForKey_(v12, v13, off_27E3830B8[0]);
      v16 = objc_msgSend_valueForKey_(v12, v15, off_27E3830C0[0]);
      v18 = objc_msgSend_valueForKey_(v12, v17, off_27E3830C8[0]);
      v20 = objc_msgSend_valueForKey_(v12, v19, off_27E3830D0[0]);
    }

    else
    {
      v14 = 0;
      v16 = 0;
      v20 = 0;
      v18 = 0;
    }

    v23 = 0;
    v25 = 0;
    v29 = 0;
    v27 = 0;
    v37 = 0;
  }

  selfCopy = self;
  assistantUIController = self->_assistantUIController;
  v40 = objc_msgSend_topoView(selfCopy, v10, v11);
  return objc_msgSend_modifyTopoUIInLayer_withLayout_andOwningView_targetProductID_targetDeviceKind_targetName_targetWiFiName_sourceProductID_sourceDeviceKind_sourceName_sourceWiFiName_connectionType_(assistantUIController, v41, layer, layout, v40, v14, v16, v20, v18, v23, v25, v29, v27, v37);
}

- (void)connectionVerificationSucceededForSelector:(int)selector
{
  v4 = objc_msgSend_uiAlert(self, a2, *&selector);
  objc_msgSend_dismissWithNoActionAnimated_(v4, v5, 1);

  objc_msgSend_showUIForSetupStatus(self, v6, v7);
}

- (void)presentUIForSetupStatusWithRecommendationDict:(id)dict
{
  v5 = objc_msgSend_objectForKey_(dict, a2, @"BSAutoGuess_Recommendation");
  if (!v5)
  {
    return;
  }

  v7 = v5;
  v8 = objc_msgSend_objectForKey_(dict, v6, @"BSAutoGuess_UnconfiguredBase");
  v10 = objc_msgSend_objectForKey_(dict, v9, @"BSAutoGuess_UnconfiguredNetwork");
  if (v8)
  {
    v18 = sub_23EB6A2C0(v8, v11, v12, v13, v14, v15, v16, v17);
    v26 = sub_23EB6A294(v8, v19, v20, v21, v22, v23, v24, v25);
    v27 = v18;
  }

  else
  {
    v28 = v10;
    v29 = objc_msgSend_scanInfoAppleProductID_(WiFiUtils, v11, v10);
    v26 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v30, v28);
    v27 = v29;
  }

  v31 = sub_23EB6CE6C(v27, v26);
  v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v32, @"%1$@.InProcess%2$@", v7, v31);
  valid = sub_23EB6CD3C(v33, qword_27E383800);
  v37 = objc_msgSend_setupOptions(self->_assistantUIController, v35, v36);
  v39 = objc_msgSend_objectForKey_(v37, v38, @"kBSAutoGuessSetupOptionKey_ExtendOption_JoinApple");
  if (objc_msgSend_BOOLValue(v39, v40, v41))
  {
    v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v42, @"%1$@.InProcess%2$@", @"BSSetupRecommend_OfferJoinNetwork", v31);
  }

  if ((objc_msgSend_isEqualToString_(v7, v42, @"BSSetupRecommend_OfferExtendWirelessly") & 1) == 0 && !objc_msgSend_isEqualToString_(v7, v43, @"BSSetupRecommend_AskUserChooseBaseWireless"))
  {
    if ((objc_msgSend_isEqualToString_(v7, v43, @"BSSetupRecommend_OfferExtendOverEthernet") & 1) != 0 || objc_msgSend_isEqualToString_(v7, v59, @"BSSetupRecommend_AskUserChooseBaseWired"))
    {
      v60 = objc_msgSend_objectForKey_(dict, v59, @"BSAutoGuess_SourceBase");
      if (v60)
      {
LABEL_18:
        v58 = objc_msgSend_valueForKey_(v60, v61, @"name");
        goto LABEL_19;
      }

      v63 = objc_msgSend_setupOptions(self->_assistantUIController, v61, v62);
      v60 = objc_msgSend_objectForKey_(v63, v64, @"kBSAutoGuessSetupOptionKey_SourceBase");
    }

    else
    {
      if ((objc_msgSend_isEqualToString_(v7, v59, @"BSSetupRecommend_OfferCreate") & 1) != 0 || objc_msgSend_isEqualToString_(v7, v108, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable"))
      {
        v110 = objc_msgSend_setupOptions(self->_assistantUIController, v108, v109);
        if (!objc_msgSend_objectForKey_(v110, v111, @"kBSAutoGuessSetupOptionKey_NetworkName"))
        {
          return;
        }

        goto LABEL_21;
      }

      if ((objc_msgSend_isEqualToString_(v7, v108, @"BSSetupRecommend_OfferJoinNetwork") & 1) != 0 || objc_msgSend_isEqualToString_(v7, v112, @"BSSetupRecommend_AskUserChooseNetworkToJoin"))
      {
        v114 = objc_msgSend_setupOptions(self->_assistantUIController, v112, v113);
        v116 = objc_msgSend_objectForKey_(v114, v115, @"kBSAutoGuessSetupOptionKey_SourceNetwork");
        if (!v116)
        {
          v116 = objc_msgSend_objectForKey_(dict, v117, @"BSAutoGuess_SourceNetwork");
          if (!v116)
          {
            return;
          }
        }

        v58 = objc_msgSend_scanInfoNetworkName_(WiFiUtils, v117, v116);
        goto LABEL_19;
      }

      if (objc_msgSend_isEqualToString_(v7, v112, @"BSSetupRecommend_OfferRestore") & 1) != 0 || (objc_msgSend_isEqualToString_(v7, v68, @"BSSetupRecommend_OfferReplaceConfiguration"))
      {
        goto LABEL_21;
      }

      if (!objc_msgSend_isEqualToString_(v7, v68, @"BSSetupRecommend_OfferReplace"))
      {
        return;
      }

      v60 = objc_msgSend_objectForKey_(dict, v118, @"BSAutoGuess_SourceBase");
    }

    if (!v60)
    {
      return;
    }

    goto LABEL_18;
  }

  v44 = objc_msgSend_objectForKey_(dict, v43, @"BSAutoGuess_SourceBase");
  if (!v44)
  {
    v47 = objc_msgSend_setupOptions(self->_assistantUIController, v45, v46);
    v44 = objc_msgSend_objectForKey_(v47, v48, @"kBSAutoGuessSetupOptionKey_SourceBase");
    if (!v44)
    {
      return;
    }
  }

  v49 = v44;
  v57 = objc_msgSend_valueForKey_(v44, v45, @"raNm");
  if (v57)
  {
    goto LABEL_20;
  }

  v58 = sub_23EB6AE14(v49, v50, v51, v52, v53, v54, v55, v56);
LABEL_19:
  v57 = v58;
LABEL_20:
  v65 = MEMORY[0x277CCACA8];
  v66 = sub_23EB6CD3C(v33, qword_27E383800);
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v65, v67, v66, @"%@", 0, v57);
LABEL_21:
  objc_msgSend_setSettingUpStatusText_(self, v68, valid);
  v71 = objc_msgSend_navigationController(self, v69, v70);
  v74 = objc_msgSend_topViewController(v71, v72, v73);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v77 = objc_msgSend_topoLayout(v74, v75, v76);
    v80 = objc_msgSend_topoLayout(self, v78, v79);
    v83 = objc_msgSend_layer(self->topoView, v81, v82);
    objc_msgSend_modifyTopoUIInLayer_withLayout_newLayout_(self, v84, v83, v80, v77);
    if (objc_opt_respondsToSelector())
    {
      justTextLabel = self->justTextLabel;
      justTextContainerView = self->justTextContainerView;
      v87 = objc_msgSend_performSelector_(v74, v75, sel_justTextLabel);
      v90 = objc_msgSend_text(v87, v88, v89);
      sub_23EB5E054(justTextLabel, justTextContainerView, v90);
    }
  }

  objc_msgSend_showUIForSetupStatus(self, v75, v76);
  v91 = sub_23EB6CD3C(@"kDone", qword_27E383800);
  Button = objc_msgSend_nextButton(self, v92, v93);
  objc_msgSend_setTitle_(Button, v95, v91);
  v98 = objc_msgSend_nextButton(self, v96, v97);
  objc_msgSend_setStyle_(v98, v99, 2);
  v102 = objc_msgSend_nextButton(self, v100, v101);
  objc_msgSend_setEnabled_(v102, v103, 0);
  v106 = objc_msgSend_cancelButton(self, v104, v105);

  objc_msgSend_setEnabled_(v106, v107, 0);
}

- (void)presentUIForSetupResult:(int)result baseStationInfo:(id)info withPrompt:(id)prompt
{
  sub_23EB5E054(self->justTextLabel, self->justTextContainerView, &stru_285145FE8);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v9, self->tableHeaderContainerView);
  if (result == -6769)
  {
LABEL_11:
    v41 = objc_msgSend_cancelButton(self, v10, v11);
    objc_msgSend_setEnabled_(v41, v42, 1);
    objc_msgSend_stopAnimating(self->spinnerWithStatusBelowSpinner, v43, v44);
    spinnerWithStatusBelowLabel = self->spinnerWithStatusBelowLabel;
    spinnerWithStatusBelowView = self->spinnerWithStatusBelowView;

    sub_23EB5E054(spinnerWithStatusBelowLabel, spinnerWithStatusBelowView, &stru_285145FE8);
    return;
  }

  if (result)
  {
    if (result == -6723)
    {
      objc_msgSend_handleCancelButton_(self, v10, 0);
    }

    else
    {
      sub_23EB5E054(self->justTextLabel, self->justTextContainerView, prompt);
      objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v40, self->tableHeaderContainerView);
    }

    goto LABEL_11;
  }

  v12 = objc_msgSend_objectForKey_(info, v10, @"kSetupBaseStationInfoKey_RecommendationInfo");
  v14 = objc_msgSend_objectForKey_(v12, v13, @"BSAutoGuess_Recommendation");
  if (objc_msgSend_isEqualToString_(v14, v15, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable"))
  {
    infoCopy = info;
    v164 = sub_23EB6CD3C(@"TextualSentenceConcatenator", qword_27E383800);
    v17 = objc_msgSend_objectForKey_(v12, v16, @"BSAutoGuess_SourceBase");
    v25 = sub_23EB6AE14(v17, v18, v19, v20, v21, v22, v23, v24);
    v28 = objc_msgSend_setupOptions(self->_assistantUIController, v26, v27);
    v30 = objc_msgSend_objectForKey_(v28, v29, @"kBSAutoGuessSetupOptionKey_BaseName");
    v33 = objc_msgSend_length(v25, v31, v32);
    v36 = objc_msgSend_length(v30, v34, v35);
    if (v33 && v36 && !objc_msgSend_isEqualToString_(v25, v37, v30))
    {
      v47 = sub_23EB6CD3C(@"RestoreDefaultsReplacedNamed", @"AirPortSettings");
      valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v48, v47, @"%@", 0, v25);
    }

    else
    {
      valid = sub_23EB6CD3C(@"RestoreDefaultsReplaced", @"AirPortSettings");
    }

    prompt = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v39, v164, @"%@%@", 0, prompt, valid);
    info = infoCopy;
  }

  sub_23EB5E054(self->justTextLabel, self->justTextContainerView, prompt);
  objc_msgSend_readjustSubviewsInContainer_(AssistantUIViewController, v49, self->tableHeaderContainerView);
  v52 = objc_msgSend_tableManager(self, v50, v51);
  objc_msgSend_cleanTableViewForReuse(v52, v53, v54);
  v56 = objc_msgSend_objectForKey_(info, v55, @"kSetupBaseStationInfoKey_BrowseRecord");
  v59 = sub_23EB6A1FC(v56) != 2 && sub_23EB6A1FC(v56) != 3 && sub_23EB6A1FC(v56) != 4;
  v60 = objc_msgSend_callerParamDict(self, v57, v58);
  if (v60)
  {
    v63 = objc_msgSend_callerParamDict(self, v61, v62);
    v65 = objc_msgSend_objectForKey_(v63, v64, @"wacShouldHideFindAppUI");
    LODWORD(v60) = objc_msgSend_BOOLValue(v65, v66, v67);
  }

  if (((v59 | v60) & 1) == 0)
  {
    v68 = objc_msgSend_objectForKey_(info, v61, @"kSetupBaseStationInfoKey_MFiAccessoryResponse");
    self->_mfiAccessoryResponseDict = v68;
    if (v68)
    {
      if (sub_23EC18B08(v68))
      {
        v69 = objc_msgSend_array(MEMORY[0x277CBEB18], v61, v62);
        v72 = objc_msgSend_tableManager(self, v70, v71);
        v73 = sub_23EB6CD3C(@"FindAppForAccessory", @"AirPortSettings");
        RowStyleBasicWholeCellButton_withTag = objc_msgSend_createRowStyleBasicWholeCellButton_withTag_(v72, v74, v73, 1097887809);
        objc_msgSend_addObject_(v69, v76, RowStyleBasicWholeCellButton_withTag);
        v79 = objc_msgSend_tableManager(self, v77, v78);
        v81 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v80, v69, @"sectionRows", @"FindAppTableSection", @"identifier", 0);
        objc_msgSend_addSectionInfo_(v79, v82, v81);
      }
    }
  }

  v83 = objc_msgSend_array(MEMORY[0x277CBEB18], v61, v62);
  v86 = objc_msgSend_text(self->justTextLabel, v84, v85);
  if (objc_msgSend_length(v86, v87, v88))
  {
    objc_msgSend_addObject_(v83, v89, self->justTextContainerView);
  }

  if (v59)
  {
    objc_msgSend_addObject_(v83, v89, self->topoView);
  }

  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(self, v89, self->tableHeaderContainerView, v83, 1);
  tableHeaderContainerView = self->tableHeaderContainerView;
  v93 = objc_msgSend_tableView(self, v91, v92);
  objc_msgSend_setTableHeaderView_(v93, v94, tableHeaderContainerView);
  v95 = sub_23EB6CD3C(@"kDone", qword_27E383800);
  Button = objc_msgSend_nextButton(self, v96, v97);
  objc_msgSend_setTitle_(Button, v99, v95);
  v102 = objc_msgSend_nextButton(self, v100, v101);
  objc_msgSend_setStyle_(v102, v103, 2);
  v106 = objc_msgSend_nextButton(self, v104, v105);
  objc_msgSend_setEnabled_(v106, v107, 1);
  v110 = objc_msgSend_nextButton(self, v108, v109);
  objc_msgSend_setAction_(v110, v111, sel_baseStationConfigurationComplete_);
  v112 = sub_23EB6CD3C(@"SetupCompleteTitle", qword_27E383800);
  v115 = objc_msgSend_navigationItem(self, v113, v114);
  objc_msgSend_setTitle_(v115, v116, v112);
  v119 = objc_msgSend_navigationItem(self, v117, v118);
  objc_msgSend_setLeftBarButtonItem_(v119, v120, 0);
  v122 = objc_msgSend_objectForKey_(info, v121, @"kSetupBaseStationInfoKey_GeneralInfo");
  v123 = sub_23EB6CDF8(1937330263);
  v127 = objc_msgSend_objectForKey_(v122, v124, v123);
  if (v127)
  {
    v128 = objc_msgSend_setupOptions(self->_assistantUIController, v125, v126);
    objc_msgSend_setObject_forKey_(v128, v129, v127, @"kBSAutoGuessSetupOptionKey_BasePassword");
  }

  v130 = objc_msgSend_objectForKey_(info, v125, @"kSetupBaseStationInfoKey_RadioInfo");
  v131 = sub_23EB6CDF8(1651725131);
  if (objc_msgSend_objectForKey_(v130, v132, v131))
  {
    v135 = objc_msgSend_setupOptions(self->_assistantUIController, v133, v134);
    v137 = objc_msgSend_objectForKey_(info, v136, @"kSetupBaseStationInfoKey_RadioInfo");
    v138 = sub_23EB6CDF8(1651725131);
    v140 = objc_msgSend_objectForKey_(v137, v139, v138);
    objc_msgSend_setObject_forKey_(v135, v141, v140, @"kBSAutoGuessSetupOptionKey_NetworkPassword");
  }

  if (objc_msgSend_objectForKey_(info, v133, @"kSetupBaseStationInfoKey_DiskInfo"))
  {
    v144 = objc_msgSend_objectForKey_(info, v142, @"kSetupBaseStationInfoKey_DiskInfo");
    v145 = sub_23EB6CDF8(1718842224);
    v147 = objc_msgSend_objectForKey_(v144, v146, v145);
    if (v147)
    {
      v127 = v147;
    }

    v150 = objc_msgSend_setupOptions(self->_assistantUIController, v148, v149);
    objc_msgSend_setObject_forKey_(v150, v151, v127, @"kBSAutoGuessSetupOptionKey_DiskSharing_Password");
  }

  else
  {
    v153 = objc_msgSend_setupOptions(self->_assistantUIController, v142, v143);
    objc_msgSend_removeObjectForKey_(v153, v154, @"kBSAutoGuessSetupOptionKey_DiskSharing_Password");
  }

  v155 = objc_msgSend_objectForKey_(info, v152, @"kSetupBaseStationInfoKey_GuestNetworkInfo");
  v156 = sub_23EB6CDF8(1651722064);
  v158 = objc_msgSend_objectForKey_(v155, v157, v156);
  if (v158)
  {
    v161 = v158;
    v162 = objc_msgSend_setupOptions(self->_assistantUIController, v159, v160);

    objc_msgSend_setObject_forKey_(v162, v163, v161, @"kBSAutoGuessSetupOptionKey_GuestNetwork_Password");
  }
}

- (id)valueForItemOfType:(id)type atTypeIndex:(unint64_t)index inCellWithTag:(int64_t)tag
{
  if (tag > 1196314742)
  {
    if (tag == 1196314743)
    {
      v5 = @"kBSAutoGuessSetupOptionKey_GuestNetwork_Password";
      goto LABEL_11;
    }

    if (tag == 1464225889)
    {
      v5 = @"kBSAutoGuessSetupOptionKey_NetworkPassword";
      goto LABEL_11;
    }

    return &stru_285145FE8;
  }

  if (tag == 1113673825)
  {
    v5 = @"kBSAutoGuessSetupOptionKey_BasePassword";
    goto LABEL_11;
  }

  if (tag != 1147752545)
  {
    return &stru_285145FE8;
  }

  v5 = @"kBSAutoGuessSetupOptionKey_DiskSharing_Password";
LABEL_11:
  v7 = objc_msgSend_setupOptions(self->_assistantUIController, a2, type, index);

  return objc_msgSend_objectForKey_(v7, v8, v5);
}

- (void)presentWaitingForWANViewWithContinueText:(BOOL)text
{
  v4 = [InternetViewController alloc];
  v6 = objc_msgSend_initWithNibName_bundle_(v4, v5, 0, 0);
  v9 = objc_msgSend_guessCompleteDict(self->_assistantUIController, v7, v8);
  v11 = objc_msgSend_unconfiguredBaseStationFromGuessCompleteDict_(AutoGuessController, v10, v9);
  if (v11)
  {
    v13 = v11;
    objc_msgSend_setCurrentSubController_(self, v12, v6);
    v16 = objc_msgSend_currentSubController(self, v14, v15);
    objc_msgSend_setInParamDict_(v16, v17, v13);
    v20 = objc_msgSend_currentSubController(self, v18, v19);
    objc_msgSend_setParentController_(v20, v21, self);

    self->_currentUIConfigStep = 1;
    objc_msgSend_presentInternetWANPluginUI(v6, v22, v23);
    objc_msgSend_setDelegate_(v6, v24, self);

    objc_msgSend_pushViewController_animated_(self, v25, v6, 1);
  }
}

- (void)replaceSubviewsInView:(id)view newSubviews:(id)subviews withAnimation:(BOOL)animation
{
  subviewsCopy = subviews;
  v80 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_count(subviews, a2, view);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v10 = objc_msgSend_subviews(view, v8, v9);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v75, v79, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v76;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v76 != v16)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_removeFromSuperview(*(*(&v75 + 1) + 8 * i), v13, v14);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v75, v79, 16);
    }

    while (v15);
  }

  if (v7)
  {
    Object = objc_msgSend_firstObject(subviewsCopy, v13, v14);
    LODWORD(v19) = 1148846080;
    objc_msgSend_setContentCompressionResistancePriority_forAxis_(Object, v20, 1, v19);
    objc_msgSend_addSubview_(view, v21, Object);
    v22 = MEMORY[0x277CCAAD0];
    v23 = _NSDictionaryOfVariableBindings(&cfstr_Cursubview.isa, Object, 0);
    v25 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v22, v24, @"H:|[curSubview]|", 0, 0, v23);
    objc_msgSend_addConstraints_(view, v26, v25);
    v27 = MEMORY[0x277CCAAD0];
    v28 = _NSDictionaryOfVariableBindings(&cfstr_Cursubview.isa, Object, 0);
    v30 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v27, v29, @"V:|[curSubview]", 0, 0, v28);
    objc_msgSend_addConstraints_(view, v31, v30);
    v32 = *MEMORY[0x277D76C80];
    v33 = *(MEMORY[0x277D76C80] + 8);
    objc_msgSend_systemLayoutSizeFittingSize_(Object, v34, v35, *MEMORY[0x277D76C80], v33);
    v37 = v36 + 0.0;
    if ((v7 - 1) >= 2)
    {
      v38 = v7 - 2;
      v39 = 1;
      v40 = Object;
      do
      {
        Object = objc_msgSend_objectAtIndex_(subviewsCopy, v13, v39);
        objc_msgSend_addSubview_(view, v41, Object);
        v42 = subviewsCopy;
        v43 = MEMORY[0x277CCAAD0];
        v44 = _NSDictionaryOfVariableBindings(&cfstr_Cursubview.isa, Object, 0);
        v46 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v43, v45, @"H:|[curSubview]|", 0, 0, v44);
        objc_msgSend_addConstraints_(view, v47, v46);
        v48 = MEMORY[0x277CCAAD0];
        v49 = _NSDictionaryOfVariableBindings(&cfstr_Previoussubvie.isa, v40, Object, 0);
        v50 = v48;
        subviewsCopy = v42;
        v52 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v50, v51, @"V:[previousSubview][curSubview]", 0, 0, v49);
        objc_msgSend_addConstraints_(view, v53, v52);
        objc_msgSend_systemLayoutSizeFittingSize_(Object, v54, v55, v32, v33);
        v37 = v37 + v56;
        ++v39;
        v40 = Object;
        --v38;
      }

      while (v38);
      goto LABEL_15;
    }

    if (v7 != 1)
    {
LABEL_15:
      v57 = objc_msgSend_lastObject(subviewsCopy, v13, v14);
      objc_msgSend_addSubview_(view, v58, v57);
      v59 = MEMORY[0x277CCAAD0];
      v60 = _NSDictionaryOfVariableBindings(&cfstr_Cursubview.isa, v57, 0);
      v62 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v59, v61, @"H:|[curSubview]|", 0, 0, v60);
      objc_msgSend_addConstraints_(view, v63, v62);
      v64 = MEMORY[0x277CCAAD0];
      v65 = _NSDictionaryOfVariableBindings(&cfstr_Previoussubvie.isa, Object, v57, 0);
      v67 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v64, v66, @"V:[previousSubview][curSubview]|", 0, 0, v65);
      objc_msgSend_addConstraints_(view, v68, v67);
      objc_msgSend_systemLayoutSizeFittingSize_(v57, v69, v70, v32, v33);
    }
  }

  objc_msgSend_frame(view, v13, v14);
  objc_msgSend_setFrame_(view, v71, v72);
  objc_msgSend_setNeedsLayout(view, v73, v74);
}

- (id)newStepByStepControllerForStep:(int)step
{
  v3 = &off_278C66C98;
  v4 = 15;
  while (*(v3 - 2) != step)
  {
    v3 += 2;
    if (!--v4)
    {
      return 0;
    }
  }

  v6 = objc_alloc(NSClassFromString(*v3));

  return objc_msgSend_initWithNibName_bundle_(v6, v7, 0, 0);
}

- (void)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = objc_msgSend_navigationController(self, a2, animated);
  v8 = v5;
  if (animatedCopy)
  {
    v9 = objc_msgSend_viewControllers(v5, v6, v7);
    if (objc_msgSend_count(v9, v10, v11) >= 2)
    {
      v13 = objc_msgSend_objectAtIndex_(v9, v12, 0);
      v14 = MEMORY[0x277CBEB18];
      v17 = objc_msgSend_topViewController(v8, v15, v16);
      v19 = objc_msgSend_arrayWithObject_(v14, v18, v17);
      objc_msgSend_setViewControllers_animated_(v8, v20, v19, 0);
      objc_msgSend_removeAllObjects(v19, v21, v22);
      objc_msgSend_addObject_(v19, v23, v13);
      objc_msgSend_setViewControllers_animated_(v8, v24, v19, 1);
    }
  }

  else
  {
    objc_msgSend_popToRootViewControllerAnimated_(v5, v6, 0);
  }

  objc_msgSend_setCurrentSubController_(self, v12, 0);
  self->_goingBack = 0;
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = objc_msgSend_navigationController(self, a2, controller);

  objc_msgSend_pushViewController_animated_(v6, v7, controller, animatedCopy);
}

- (void)confirmSkipWANPort
{
  v4 = objc_msgSend_guessCompleteDict(self->_assistantUIController, a2, v2);
  v6 = objc_msgSend_unconfiguredBaseStationFromGuessCompleteDict_(AutoGuessController, v5, v4);
  v9 = objc_msgSend_currentSubController(self, v7, v8);
  if (v9 && objc_msgSend_internetFlow(v9, v10, v11) == 1)
  {
    v12 = @"ConnectionVerificationMessage1";
  }

  else
  {
    v12 = @"ConnectionVerificationMessage2";
  }

  v13 = sub_23EB6CD3C(v12, qword_27E383800);
  v14 = MEMORY[0x277CCACA8];
  v22 = sub_23EB6A2C0(v6, v15, v16, v17, v18, v19, v20, v21);
  v30 = sub_23EB6A294(v6, v23, v24, v25, v26, v27, v28, v29);
  v31 = sub_23EB6CEE0(v22, v30, 0);
  valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v14, v32, v13, @"%@", 0, v31);
  v34 = [AUUIAlert alloc];
  v36 = objc_msgSend_initWithViewController_(v34, v35, self);
  objc_msgSend_setUiAlert_(self, v37, v36);
  v38 = sub_23EB6CD3C(@"NoInternetConnection", qword_27E383800);
  objc_msgSend_setTitle_(self->uiAlert, v39, v38);
  objc_msgSend_setMessage_(self->uiAlert, v40, valid);
  objc_msgSend_setDelegate_(self->uiAlert, v41, self);
  v42 = sub_23EB6CD3C(@"ContinueAnyway", qword_27E383800);
  objc_msgSend_setOkButtonTitle_(self->uiAlert, v43, v42);
  v44 = sub_23EB6CD3C(@"ReviewSettings", qword_27E383800);
  objc_msgSend_setCancelButtonTitle_(self->uiAlert, v45, v44);
  objc_msgSend_setTag_(self->uiAlert, v46, 4000);
  objc_msgSend_setStackButtons_(self->uiAlert, v47, 1);
  uiAlert = self->uiAlert;

  objc_msgSend_show(uiAlert, v48, v49);
}

- (void)skipWANPort
{
  objc_msgSend_presentUIForConnectionVerificationResult_withOptions_(self->_assistantUIController, a2, 4294960539, 0);

  objc_msgSend_showUIForSetupStatus(self, v3, v4);
}

- (void)continueWithPPPoESettings
{
  assistantUIController = self->_assistantUIController;
  v5 = objc_msgSend_currentSubController(self, a2, v2);
  v8 = objc_msgSend_outResultsDict(v5, v6, v7);
  objc_msgSend_presentUIForConnectionVerificationResult_withOptions_(assistantUIController, v9, 0, v8);

  objc_msgSend_showUIForSetupStatus(self, v10, v11);
}

- (void)continueWithDiagsAndUsageStats
{
  assistantUIController = self->_assistantUIController;
  v5 = objc_msgSend_currentSubController(self, a2, v2);
  v8 = objc_msgSend_outResultsDict(v5, v6, v7);
  objc_msgSend_showUIConfigPromptResult_withOptions_(assistantUIController, v9, 0, v8);

  objc_msgSend_showUIForSetupStatus(self, v10, v11);
}

- (void)continueWithGuestNetSettings
{
  v11 = 0;
  v4 = objc_msgSend_currentSubController(self, a2, v2);
  v7 = objc_msgSend_outResultsDict(v4, v5, v6);
  sub_23EBD8FF8(v7, &v11);
  objc_msgSend_showUIConfigPromptResult_withOptions_(self->_assistantUIController, v8, 0, v11);

  objc_msgSend_showUIForSetupStatus(self, v9, v10);
}

- (void)continueWithSwapCabling
{
  objc_msgSend_presentUIForConnectionVerificationResult_withOptions_(self->_assistantUIController, a2, 4294960525, 0);

  objc_msgSend_showUIForSetupStatus(self, v3, v4);
}

- (void)skipPluginAudioCabling
{
  objc_msgSend_presentUIForConnectionVerificationResult_withOptions_(self->_assistantUIController, a2, 4294960539, 0);

  objc_msgSend_showUIForSetupStatus(self, v3, v4);
}

- (void)showUIForSetupStatus
{
  if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
  {
    sub_23EB75374(&dword_27E381018, "[AssistantUIViewController(private) showUIForSetupStatus]", 100, "\n", v3, v4, v5, v6, v52);
  }

  v8 = objc_msgSend_currentSubController(self, a2, v2);
  v11 = objc_msgSend_tableManager(v8, v9, v10);
  objc_msgSend_cleanTableViewForReuse(v11, v12, v13);
  objc_msgSend_popToRootViewControllerAnimated_(self, v14, 0);
  v17 = objc_msgSend_guessCompleteDict(self->_assistantUIController, v15, v16);
  if (v17)
  {
    v19 = objc_msgSend_primaryRecommendationDictionaryFromCompletionDict_(AutoGuessController, v18, v17);
    v21 = objc_msgSend_valueForKey_(v19, v20, @"BSAutoGuess_UnconfiguredBase");
  }

  else
  {
    v19 = 0;
    v21 = objc_msgSend_valueForKey_(0, v18, @"BSAutoGuess_UnconfiguredBase");
  }

  if (v21)
  {
    v29 = sub_23EB6A294(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  else
  {
    v30 = objc_msgSend_valueForKey_(v19, v22, @"BSAutoGuess_UnconfiguredNetwork");
    v29 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v31, v30);
  }

  v32 = v29;
  v33 = sub_23EB6D2F0(v29);
  v34 = sub_23EB6CD3C(v33, qword_27E383800);
  v37 = objc_msgSend_navigationItem(self, v35, v36);
  objc_msgSend_setTitle_(v37, v38, v34);
  v40 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v39, self->justTextContainerView);
  v42 = v40;
  if ((v32 - 2) >= 3)
  {
    objc_msgSend_addObject_(v40, v41, self->topoView);
  }

  objc_msgSend_addObject_(v42, v41, self->spinnerWithStatusBelowView);
  objc_msgSend_replaceSubviewsInView_newSubviews_withAnimation_(self, v43, self->tableHeaderContainerView, v42, 1);
  tableHeaderContainerView = self->tableHeaderContainerView;
  v47 = objc_msgSend_tableView(self, v45, v46);
  objc_msgSend_setTableHeaderView_(v47, v48, tableHeaderContainerView);
  spinnerWithStatusBelowSpinner = self->spinnerWithStatusBelowSpinner;

  objc_msgSend_startAnimating(spinnerWithStatusBelowSpinner, v49, v50);
}

- (BOOL)disablesAutomaticKeyboardDismissal
{
  v3.receiver = self;
  v3.super_class = AssistantUIViewController;
  [(AssistantUIViewController *)&v3 disablesAutomaticKeyboardDismissal];
  return 0;
}

- (void)setupCompleteShowPasswords:(BOOL)passwords
{
  if (!passwords)
  {
    goto LABEL_13;
  }

  v4 = objc_msgSend_tableManager(self, a2, passwords);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v4, v5, @"ShowPasswords") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = objc_msgSend_tableManager(self, v6, v7);
    objc_msgSend_deleteSectionWithIdentifier_(v8, v9, @"ShowPasswords");
  }

  v10 = objc_msgSend_tableManager(self, v6, v7);
  if (objc_msgSend_indexOfSectionWithIdentifier_(v10, v11, @"PasswordsTableSection") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, passwords);
    v15 = objc_msgSend_tableManager(self, v13, v14);
    v16 = sub_23EB6CD3C(@"WiFiPasswordLabel", qword_27E383800);
    RowStyleBasicWithImage_text1_text2_withTag = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v15, v17, 0, v16, @"dynamicValue", 1464225889);
    objc_msgSend_addObject_(v12, v19, RowStyleBasicWithImage_text1_text2_withTag);
    v22 = objc_msgSend_tableManager(self, v20, v21);
    v23 = sub_23EB6CD3C(@"BasePasswordLabel", qword_27E383800);
    v25 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v22, v24, 0, v23, @"dynamicValue", 1113673825);
    objc_msgSend_addObject_(v12, v26, v25);
    v29 = objc_msgSend_setupOptions(self->_assistantUIController, v27, v28);
    if (objc_msgSend_valueForKey_(v29, v30, @"kBSAutoGuessSetupOptionKey_DiskSharing_Password") && objc_msgSend_valueForItemOfType_atTypeIndex_inCellWithTag_(self, v31, @"editTextView", 0, 1147752545))
    {
      v33 = objc_msgSend_tableManager(self, v31, v32);
      v34 = sub_23EB6CD3C(@"DiskPasswordLabel", qword_27E383800);
      v36 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v33, v35, 0, v34, @"dynamicValue", 1147752545);
      objc_msgSend_addObject_(v12, v37, v36);
    }

    if (objc_msgSend_valueForItemOfType_atTypeIndex_inCellWithTag_(self, v31, @"editTextView", 0, 1196314743))
    {
      v40 = objc_msgSend_tableManager(self, v38, v39);
      v41 = sub_23EB6CD3C(@"GuestNetPasswordLabel", qword_27E383800);
      v43 = objc_msgSend_createRowStyleBasicWithImage_text1_text2_withTag_(v40, v42, 0, v41, @"dynamicValue", 1196314743);
      objc_msgSend_addObject_(v12, v44, v43);
    }

    v45 = objc_msgSend_tableManager(self, v38, v39);
    v48 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v46, v12, @"sectionRows", @"PasswordsTableSection", @"identifier", 0);

    objc_msgSend_addSectionInfo_(v45, v47, v48);
  }

  else
  {
LABEL_13:
    v49 = objc_msgSend_tableManager(self, a2, passwords);

    objc_msgSend_deleteSectionWithIdentifier_(v49, v50, @"PasswordsTableSection");
  }
}

- (void)handleCancelRequest:(BOOL)request
{
  requestCopy = request;
  objc_msgSend_setEnabled_(self->cancelButton, a2, 0);
  objc_msgSend_setEnabled_(self->nextButton, v5, 0);
  v12 = objc_msgSend_cancelCurrentAssistantState_(self->_assistantUIController, v6, requestCopy);
  if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
  {
    sub_23EB75374(&dword_27E381018, "[AssistantUIViewController(private) handleCancelRequest:]", 100, "cancelCurrentAssistantState err: %m\n", v8, v9, v10, v11, v12);
  }

  if (requestCopy || v12 != -6771)
  {
    v19 = objc_msgSend_doneWithAssistant_(self->_assistantUIController, v7, requestCopy);
    if (dword_27E381018 <= 100 && (dword_27E381018 != -1 || sub_23EB74AC8(&dword_27E381018, 0x64u)))
    {
      sub_23EB75374(&dword_27E381018, "[AssistantUIViewController(private) handleCancelRequest:]", 100, "doneWithAssistant err: %m\n", v15, v16, v17, v18, v19);
    }

    if (requestCopy || v19 != -6771)
    {
      v20 = objc_msgSend_assistantResult(self->_assistantUIController, v13, v14);

      MEMORY[0x2821F9670](self, sel_doneWithAssistantResult_, v20);
    }
  }
}

- (id)radioNameFromBaseStation:(id)station
{
  if (station)
  {
    return objc_msgSend_objectForKey_(station, a2, @"raNm");
  }

  else
  {
    return 0;
  }
}

@end