@interface AssistantUIController
- (AssistantUIController)init;
- (BOOL)restoreNetworkIfNeeded:(BOOL)needed disassociateIfNeeded:(BOOL)ifNeeded forceQuit:(BOOL)quit;
- (id)modifyTopoUIInLayer:(id)layer withLayout:(id)layout andOwningView:(id)view targetProductID:(id)d targetDeviceKind:(id)kind targetName:(id)name targetWiFiName:(id)fiName sourceProductID:(id)self0 sourceDeviceKind:(id)self1 sourceName:(id)self2 sourceWiFiName:(id)self3 connectionType:(id)self4;
- (id)setupPromptStringForBaseInfo:(id)info andResult:(int)result;
- (int)cancelCurrentAssistantState:(BOOL)state;
- (int)doneWithAssistant:(BOOL)assistant;
- (int)startAutoGuess;
- (int)startRestoreNetwork:(id)network;
- (int)startSetupFromAutoGuessRecommendation:(id)recommendation;
- (int)startSetupFromStepByStepResults:(id)results;
- (int)startStepByStepFromAutoGuessRecommendation;
- (void)autoguessProgressComplete:(id)complete;
- (void)autoguessProgressUpdated:(int)updated paramString:(id)string;
- (void)autoguessUpdateTargetInfo:(id)info;
- (void)dealloc;
- (void)deliverSetupUIConfigResult:(int)result withOptions:(id)options;
- (void)handlePresentAutoGuessUIFromAutoGuessCompleteResult:(BOOL)result;
- (void)presentUIForConnectionVerification:(int)verification status:(int)status paramDict:(id)dict;
- (void)presentUIForConnectionVerificationResult:(int)result withOptions:(id)options;
- (void)presentUIForStepByStepNextStepResult:(int)result withOptions:(id)options;
- (void)presentUIForUIConfigPrompt:(int)prompt paramDict:(id)dict;
- (void)restoreNetworkDone:(id)done;
- (void)setupCompleteWithResult:(int)result baseStationInfo:(id)info forController:(id)controller;
- (void)setupProgressUpdated:(int)updated status:(int)status paramDict:(id)dict forController:(id)controller;
- (void)setupUIConfigConnectionStatusUpdated:(int)updated status:(int)status paramDict:(id)dict forController:(id)controller;
- (void)showUIConfigPromptResult:(int)result withOptions:(id)options;
- (void)stepByStepCompleteWithResult:(int)result paramDict:(id)dict;
- (void)stepByStepNextStep:(int)step paramDict:(id)dict;
- (void)stepByStepProgressUpdated:(int)updated status:(int)status paramString:(id)string;
@end

@implementation AssistantUIController

- (AssistantUIController)init
{
  v11.receiver = self;
  v11.super_class = AssistantUIController;
  v2 = [(AssistantUIController *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(AutoGuessController);
    objc_msgSend_setAutoGuessController_(v2, v4, v3);
    objc_msgSend_setDelegate_(v2->_autoGuessController, v5, v2);
    v2->_state = 0;
    v6 = sub_23EB6CD3C(@"untitled", @"AirPortSettings");
    v9 = objc_msgSend_UTF8String(v6, v7, v8);
    sub_23EBB63B4(v9);
  }

  return v2;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, @"com.apple.WiFiUtils.Join.Complete", 0);
  objc_msgSend_setAutoGuessController_(self, v6, 0);
  v7.receiver = self;
  v7.super_class = AssistantUIController;
  [(AssistantUIController *)&v7 dealloc];
}

- (int)startAutoGuess
{
  if (self->_state)
  {
    LODWORD(delegate) = -6709;
  }

  else if (self->_autoGuessController)
  {
    *&self->_state = 1;
    v5 = objc_msgSend_sharedInstance(WiFiUtils, a2, v2);
    if (objc_msgSend_airPortIsOn(v5, v6, v7))
    {
      if (objc_msgSend_isCurrentlyAssociatedToAnInfrastructureNetwork_(v5, v8, 0))
      {
        CurrentAssociationInfo = objc_msgSend_getCurrentAssociationInfo(v5, v8, v9);
        objc_msgSend_setLastAssociatedInfo_(self, v11, CurrentAssociationInfo);
        if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
        {
          sub_23EB75374(&dword_27E381438, "[AssistantUIController startAutoGuess]", 100, "lastAssociatedInfo: %@\n", v12, v13, v14, v15, self->_lastAssociatedInfo);
        }
      }
    }

    objc_msgSend_setTargetMACAddress_(self->_autoGuessController, v8, self->_targetMACAddress);
    objc_msgSend_setTargetScanRecord_(self->_autoGuessController, v16, self->_targetScanRecord);
    objc_msgSend_setTargetBrowseRecord_(self->_autoGuessController, v17, self->_targetBrowseRecord);
    objc_msgSend_setUiDelegate_(self->_autoGuessController, v18, self->_delegate);
    autoGuessController = self->_autoGuessController;
    if (objc_msgSend_count(self->_paramScanResults, v20, v21))
    {
      LODWORD(delegate) = objc_msgSend_runAutoGuessWithWifiScanInfos_(autoGuessController, v22, self->_paramScanResults);
    }

    else
    {
      v24 = objc_msgSend_unmergedScanInfoArray(v5, v22, v23);
      LODWORD(delegate) = objc_msgSend_runAutoGuessWithWifiScanInfos_(autoGuessController, v25, v24);
    }

    if (!delegate)
    {
      delegate = self->_delegate;
      if (delegate)
      {
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_presentUIForRecommendationStatus(self->_delegate, v26, v27);
        }

        LODWORD(delegate) = 0;
      }
    }
  }

  else
  {
    LODWORD(delegate) = -6718;
  }

  return delegate;
}

- (int)startSetupFromAutoGuessRecommendation:(id)recommendation
{
  if (self->_state != 2)
  {
    return -6709;
  }

  if (self->_setupController)
  {
    return -6721;
  }

  v6 = objc_msgSend_primaryRecommendationDictionaryFromCompletionDict_(AutoGuessController, a2, self->_guessCompleteDict);
  if (!v6)
  {
    return -6727;
  }

  v8 = v6;
  v9 = objc_msgSend_objectForKey_(v6, v7, @"BSAutoGuess_UnconfiguredNetwork");
  v11 = objc_msgSend_scanInfoDeviceKind_(WiFiUtils, v10, v9);
  v14 = off_278C663C0;
  if ((v11 - 3) >= 2)
  {
    v14 = off_278C663C8;
  }

  v15 = objc_msgSend_setupController(*v14, v12, v13);
  objc_msgSend_setSetupController_(self, v16, v15);
  setupController = self->_setupController;
  if (!setupController)
  {
    return -6728;
  }

  self->_state = 5;
  v20 = objc_msgSend_setupDelegates(setupController, v17, v18);
  objc_msgSend_addObject_(v20, v21, self);
  objc_msgSend_setUiConfigDelegate_(self->_setupController, v22, self);
  objc_msgSend_setUiDelegate_(self->_setupController, v23, self->_delegate);
  setupOptions = self->_setupOptions;
  v26 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v25, 1);
  objc_msgSend_setObject_forKey_(setupOptions, v27, v26, @"kBSAutoGuessSetupOptionKey_RecommendationIsAutomatic");
  if (recommendation)
  {
    v29 = objc_msgSend_objectForKey_(recommendation, v28, @"kSBSKey_BaseName");
    if (v29)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v30, v29, @"kBSAutoGuessSetupOptionKey_BaseName");
    }

    v31 = objc_msgSend_objectForKey_(recommendation, v30, @"kSBSKey_BasePassword");
    if (v31)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v32, v31, @"kBSAutoGuessSetupOptionKey_BasePassword");
    }

    v33 = objc_msgSend_objectForKey_(recommendation, v32, @"kSBSKey_AirPlayPassword");
    if (v33)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v34, v33, @"kBSAutoGuessSetupOptionKey_AirPlayPassword");
    }

    v35 = objc_msgSend_objectForKey_(recommendation, v34, @"kSBSKey_NetworkName");
    if (v35)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v36, v35, @"kBSAutoGuessSetupOptionKey_NetworkName");
    }

    v37 = objc_msgSend_objectForKey_(recommendation, v36, @"kSBSKey_NetworkPassword");
    if (v37)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v38, v37, @"kBSAutoGuessSetupOptionKey_NetworkPassword");
    }

    v39 = objc_msgSend_objectForKey_(recommendation, v38, @"kSBSKey_SourceNetwork");
    if (v39)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v40, v39, @"kBSAutoGuessSetupOptionKey_SourceNetwork");
    }

    v41 = objc_msgSend_objectForKey_(recommendation, v40, @"kSBSKey_SourceBase");
    if (v41)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v42, v41, @"kBSAutoGuessSetupOptionKey_SourceBase");
    }

    v43 = objc_msgSend_objectForKey_(v8, v42, @"BSAutoGuess_UnconfiguredNetwork");
    if (v43)
    {
      objc_msgSend_setObject_forKey_(self->_setupOptions, v28, v43, @"BSAutoGuess_UnconfiguredNetwork");
    }
  }

  result = objc_msgSend_setupFromAutoguessRecommendation_withOptions_(self->_setupController, v28, v8, self->_setupOptions);
  if (!result)
  {
    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      objc_msgSend_presentUIForSetupStatusWithRecommendationDict_(self->_delegate, v44, v8);
    }

    v46 = self->_setupController;

    return objc_msgSend_updateSettingsAsync(v46, v44, v45);
  }

  return result;
}

- (int)startStepByStepFromAutoGuessRecommendation
{
  if (self->_state != 2)
  {
    return -6709;
  }

  if (self->_stepByStepController)
  {
    return -6721;
  }

  v4 = objc_msgSend_primaryRecommendationDictionaryFromCompletionDict_(AutoGuessController, a2, self->_guessCompleteDict);
  if (!v4)
  {
    return -6727;
  }

  v7 = v4;
  v8 = objc_msgSend_stepByStepController(StepByStepController, v5, v6);
  objc_msgSend_setStepByStepController_(self, v9, v8);
  stepByStepController = self->_stepByStepController;
  if (!stepByStepController)
  {
    return -6728;
  }

  self->_state = 3;
  objc_msgSend_setDelegate_(stepByStepController, v10, self);
  objc_msgSend_setUiDelegate_(self->_stepByStepController, v12, self->_delegate);
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_msgSend_presentUIForStepByStepStart(self->_delegate, v13, v14);
  }

  v15 = objc_msgSend_restoreRecommendationDictionaryFromCompletionDict_(AutoGuessController, v13, self->_guessCompleteDict);
  objc_msgSend_setRestoreRecommendation_(self->_stepByStepController, v16, v15);
  v18 = self->_stepByStepController;
  setupOptions = self->_setupOptions;

  return objc_msgSend_setupFromAutoguessRecommendation_withOptions_(v18, v17, v7, setupOptions);
}

- (int)cancelCurrentAssistantState:(BOOL)state
{
  stateCopy = state;
  autoGuessController = self->_autoGuessController;
  if (autoGuessController && self->_state == 1)
  {
    v6 = objc_msgSend_cancelAutoGuess(autoGuessController, a2, state);
    if (v6 == -6720)
    {
      self->_state = 10;
      v7 = self->_autoGuessController;
      objc_msgSend_setAutoGuessController_(self, v8, 0);
LABEL_17:
      v6 = 0;
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  setupController = self->_setupController;
  if (!setupController)
  {
LABEL_11:
    stepByStepController = self->_stepByStepController;
    if (stepByStepController && self->_state == 3)
    {
      v6 = objc_msgSend_cancelStepByStep(stepByStepController, a2, state);
      if (!v6)
      {
        self->_state = 10;
        v14 = self->_stepByStepController;
        objc_msgSend_setStepByStepController_(self, v15, 0);
      }

      goto LABEL_18;
    }

    self->_state = 10;
    if (self->_assistantResult)
    {
      v6 = 0;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  state = self->_state;
  switch(state)
  {
    case 7:
      objc_msgSend_showUIConfigPromptResult_withOptions_(self, a2, 4294960573, 0);
      break;
    case 6:
      objc_msgSend_presentUIForConnectionVerificationResult_withOptions_(self, a2, 4294960573, 0);
      break;
    case 5:
      v6 = objc_msgSend_cancelSetup(setupController, a2, state);
      if (v6 == -6720)
      {
        self->_state = 10;
        v11 = self->_setupController;
        objc_msgSend_setSetupController_(self, v12, 0);
        goto LABEL_17;
      }

LABEL_18:
      self->_assistantResult = -6723;
      goto LABEL_22;
    default:
      goto LABEL_11;
  }

  v6 = 4294960525;
LABEL_22:
  v16 = objc_msgSend_sharedInstance(WiFiUtils, a2, state);
  objc_msgSend_cancelAsync(v16, v17, v18);
  if (stateCopy)
  {
    if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
    {
      sub_23EB75374(&dword_27E381438, "[AssistantUIController cancelCurrentAssistantState:]", 100, "forcing cancel state cancel err: %m\n", v21, v22, v23, v24, v6);
    }

    *&self->_state = 0xFFFFE5BD0000000ALL;
    if (self->_autoGuessController)
    {
      v25 = objc_msgSend_autoGuessController(self, v19, v20);
      objc_msgSend_setDelegate_(v25, v26, 0);
    }

    if (self->_stepByStepController)
    {
      v27 = objc_msgSend_stepByStepController(self, v19, v20);
      objc_msgSend_setDelegate_(v27, v28, 0);
    }

    if (self->_setupController)
    {
      v29 = objc_msgSend_setupController(self, v19, v20);
      objc_msgSend_setUiConfigDelegate_(v29, v30, 0);
      v33 = objc_msgSend_setupController(self, v31, v32);
      v36 = objc_msgSend_setupDelegates(v33, v34, v35);
      objc_msgSend_removeObject_(v36, v37, self);
    }

    LODWORD(v6) = 0;
  }

  return v6;
}

- (int)doneWithAssistant:(BOOL)assistant
{
  state = self->_state;
  if ((state - 9) > 1)
  {
    return -6709;
  }

  self->_state = 11;
  if (state == 9 || !objc_msgSend_restoreNetworkIfNeeded_disassociateIfNeeded_forceQuit_(self, a2, 1, 1, assistant))
  {
    if (dword_27E381438 <= 100)
    {
      if (dword_27E381438 == -1)
      {
        v8 = 0;
        if (!sub_23EB74AC8(&dword_27E381438, 0x64u))
        {
          return v8;
        }
      }

      else
      {
        v8 = 0;
      }

      v9 = "No restore needed - done\n";
LABEL_17:
      sub_23EB75374(&dword_27E381438, "[AssistantUIController doneWithAssistant:]", 100, v9, v3, v4, v5, v6, v11);
      return v8;
    }

    return 0;
  }

  else if (dword_27E381438 > 100)
  {
    return -6771;
  }

  else
  {
    if (dword_27E381438 != -1)
    {
      v8 = -6771;
LABEL_16:
      v9 = "Holding up done, until restore is complete\n";
      goto LABEL_17;
    }

    v8 = -6771;
    if (sub_23EB74AC8(&dword_27E381438, 0x64u))
    {
      goto LABEL_16;
    }
  }

  return v8;
}

- (id)modifyTopoUIInLayer:(id)layer withLayout:(id)layout andOwningView:(id)view targetProductID:(id)d targetDeviceKind:(id)kind targetName:(id)name targetWiFiName:(id)fiName sourceProductID:(id)self0 sourceDeviceKind:(id)self1 sourceName:(id)self2 sourceWiFiName:(id)self3 connectionType:(id)self4
{
  if (layout)
  {
    layoutCopy = layout;
    if (layer)
    {
      objc_msgSend_setContainerLayer_(layout, a2, layer);
    }
  }

  else
  {
    if (!layer)
    {
      return 0;
    }

    v20 = [NetTopoMiniStaticLayout alloc];
    layoutCopy = objc_msgSend_initWithContainerLayer_andOptions_(v20, v21, layer, 4);
  }

  objc_msgSend_setNetTopoMiniStaticLayout_(view, a2, layoutCopy);
  v24 = 4;
  if (iD)
  {
    if (sub_23EC13544(view, v22, v23) == 1)
    {
      v24 = 2;
    }

    else
    {
      v24 = 4;
    }
  }

  objc_msgSend_setLayoutOptions_(layoutCopy, v22, v24);
  objc_msgSend_setOwningView_(layoutCopy, v25, view);
  v29 = objc_msgSend_array(MEMORY[0x277CBEB18], v26, v27);
  if (iD)
  {
    v30 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v28, off_27E3830B0[0], off_27E3830A8[0], iD, off_27E3830B8[0], deviceKind, off_27E3830C0[0], 0);
    v32 = v30;
    if (wiFiName)
    {
      objc_msgSend_setObject_forKey_(v30, v31, wiFiName, off_27E3830C8[0]);
    }

    if (sourceName)
    {
      objc_msgSend_setObject_forKey_(v32, v31, sourceName, off_27E3830D0[0]);
    }

    objc_msgSend_addObject_(v29, v31, v32);
  }

  v33 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x277CBEB38], v28, off_27E3830B0[0], off_27E3830A8[0], d, off_27E3830B8[0], kind, off_27E3830C0[0], 0);
  v35 = v33;
  if (fiName)
  {
    objc_msgSend_setObject_forKey_(v33, v34, fiName, off_27E3830C8[0]);
  }

  if (name)
  {
    objc_msgSend_setObject_forKey_(v35, v34, name, off_27E3830D0[0]);
  }

  if (iD)
  {
    objc_msgSend_setObject_forKey_(v35, v34, type, off_27E3830D8[0]);
  }

  objc_msgSend_addObject_(v29, v34, v35);
  objc_msgSend_createLayoutForDevices_(layoutCopy, v36, v29);
  return layoutCopy;
}

- (void)deliverSetupUIConfigResult:(int)result withOptions:(id)options
{
  v5 = *&result;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_setupUIConfigResult_withOptions_(self->_setupController, v7, v5, options);
  }

  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    MEMORY[0x2821F9670](delegate, sel_showUIConfigPromptPostHook, v8);
  }
}

- (void)presentUIForConnectionVerificationResult:(int)result withOptions:(id)options
{
  if (self->_setupController)
  {
    if (self->_state == 6)
    {
      objc_msgSend_deliverSetupUIConfigResult_withOptions_(self, a2, *&result, options);
    }
  }
}

- (void)showUIConfigPromptResult:(int)result withOptions:(id)options
{
  if (self->_setupController)
  {
    if (self->_state == 7)
    {
      objc_msgSend_deliverSetupUIConfigResult_withOptions_(self, a2, *&result, options);
      self->_state = 5;
    }
  }
}

- (void)presentUIForStepByStepNextStepResult:(int)result withOptions:(id)options
{
  v8 = *&result;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController presentUIForStepByStepNextStepResult:withOptions:]", 100, "result: %ld options: %@\n", v4, v5, v6, v7, v8);
  }

  if (self->_state == 3)
  {
    stepByStepController = self->_stepByStepController;

    MEMORY[0x2821F9670](stepByStepController, sel_stepByStepNextStepResult_withOptions_, v8);
  }
}

- (void)autoguessUpdateTargetInfo:(id)info
{
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController autoguessUpdateTargetInfo:]", 100, "targetInfo: %@ \n", v3, v4, v5, v6, info);
  }

  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    MEMORY[0x2821F9670](delegate, sel_presentUIForRecommmendationTargetInfo_, info);
  }
}

- (void)autoguessProgressUpdated:(int)updated paramString:(id)string
{
  v9 = *&updated;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController autoguessProgressUpdated:paramString:]", 100, "selector: %d paramString: %@\n", v4, v5, v6, v7, v9);
  }

  v11 = &stru_285145FE8;
  if (v9 <= 14)
  {
    if (v9 <= 6)
    {
      if (v9 == 3)
      {
        v12 = qword_27E383800;
        v13 = @"kProgress_Browsing";
        goto LABEL_31;
      }

      if (v9 != 5 || !string)
      {
        goto LABEL_33;
      }

      v14 = MEMORY[0x277CCACA8];
      v15 = qword_27E383800;
      v16 = @"kProgress_NetworkJoin";
    }

    else
    {
      switch(v9)
      {
        case 7:
          if (!string)
          {
            goto LABEL_33;
          }

          v14 = MEMORY[0x277CCACA8];
          v15 = qword_27E383800;
          v16 = @"kProgress_WaitingForBase";
          break;
        case 9:
          if (!string)
          {
            goto LABEL_33;
          }

          v14 = MEMORY[0x277CCACA8];
          v15 = qword_27E383800;
          v16 = @"kProgress_NetworkSearch";
          break;
        case 0xB:
          v12 = qword_27E383800;
          v13 = @"kProgress_WaitingForResources";
LABEL_31:
          valid = sub_23EB6CD3C(v13, v12);
          goto LABEL_32;
        default:
          goto LABEL_33;
      }
    }

    v17 = sub_23EB6CD3C(v16, v15);
    valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v14, v18, v17, @"%@", 0, string);
LABEL_32:
    v11 = valid;
    goto LABEL_33;
  }

  if (v9 <= 16)
  {
    v12 = qword_27E383800;
    if (v9 == 15)
    {
      v13 = @"kIntializingServicesString";
    }

    else
    {
      v13 = @"kProgress_ExaminingRestoreProfile";
    }

    goto LABEL_31;
  }

  switch(v9)
  {
    case 0x11:
      v12 = qword_27E383800;
      v13 = @"kProgress_ExaminingOtherBaseStations";
      goto LABEL_31;
    case 0x12:
      v12 = qword_27E383800;
      v13 = @"kProgress_ExaminingNewBaseStation";
      goto LABEL_31;
    case 0x13:
      v12 = qword_27E383800;
      v13 = @"kCancelingServicesString";
      goto LABEL_31;
  }

LABEL_33:
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    MEMORY[0x2821F9670](delegate, sel_assistantUpdateProgress_forState_, v11);
  }
}

- (void)autoguessProgressComplete:(id)complete
{
  objc_msgSend_setGuessCompleteDict_(self, a2, complete);
  Instrumentation = objc_msgSend_lastInstrumentation(self->_autoGuessController, v4, v5);
  objc_msgSend_setLastAutoguessInstrumentation_(self, v7, Instrumentation);
  v8 = self->_autoGuessController;
  objc_msgSend_setAutoGuessController_(self, v9, 0);
  if (objc_msgSend_restoreNetworkIfNeeded_disassociateIfNeeded_forceQuit_(self, v10, 1, 0, 0) && dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController autoguessProgressComplete:]", 100, "Restoring network \n", v12, v13, v14, v15, v16);
  }

  objc_msgSend_handlePresentAutoGuessUIFromAutoGuessCompleteResult_(self, v11, 1);
}

- (void)setupProgressUpdated:(int)updated status:(int)status paramDict:(id)dict forController:(id)controller
{
  v9 = *&updated;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController setupProgressUpdated:status:paramDict:forController:]", 100, "selector: %d status: %ld paramDict: %@\n", dict, controller, v6, v7, v9);
  }

  v11 = objc_msgSend_objectForKey_(dict, a2, @"BSAssistantProgressKey_StringParameter");
  v16 = v11;
  switch(v9)
  {
    case 5:
      if (!v11)
      {
        goto LABEL_30;
      }

      v20 = MEMORY[0x277CCACA8];
      v21 = qword_27E383800;
      v22 = @"kProgress_NetworkJoin";
      goto LABEL_41;
    case 7:
      if (!v11)
      {
        goto LABEL_30;
      }

      v20 = MEMORY[0x277CCACA8];
      v21 = qword_27E383800;
      v22 = @"kProgress_WaitingForBase";
      goto LABEL_41;
    case 9:
      if (!v11)
      {
        goto LABEL_30;
      }

      v20 = MEMORY[0x277CCACA8];
      v21 = qword_27E383800;
      v22 = @"kProgress_NetworkSearch";
      goto LABEL_41;
    case 11:
      v30 = MEMORY[0x277CCACA8];
      v31 = sub_23EB6CD3C(@"kProgress_WaitingForResources", qword_27E383800);
      valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v30, v32, v31, @"%@", 0, v16);
      if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        objc_msgSend_assistantWaitingForResourcesStart(self->_delegate, v33, v34);
      }

      goto LABEL_43;
    case 12:
      if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        objc_msgSend_assistantWaitingForResourcesComplete(self->_delegate, v35, v36);
      }

      goto LABEL_30;
    case 14:
      v18 = qword_27E383800;
      v19 = @"kProgress_Start";
      goto LABEL_14;
    case 15:
      if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v25 = objc_msgSend_objectForKey_(dict, v24, @"BSAssistantProgressKey_DictionaryParameter");
        v27 = objc_msgSend_objectForKey_(v25, v26, @"kBSConfigurationSetupComplete_RemovedBase");
        objc_msgSend_performSelector_withObject_(self->_delegate, v28, sel_setRemovedBaseStation_, v27);
      }

      goto LABEL_30;
    case 18:
      if (!v11)
      {
        goto LABEL_30;
      }

      v20 = MEMORY[0x277CCACA8];
      v21 = qword_27E383800;
      v22 = @"kProgress_ReadSettings";
      goto LABEL_41;
    case 20:
      if (!v11)
      {
        goto LABEL_30;
      }

      v20 = MEMORY[0x277CCACA8];
      v21 = qword_27E383800;
      v22 = @"kProgress_WriteSettings";
      goto LABEL_41;
    case 21:
      if (!v11)
      {
        goto LABEL_30;
      }

      v20 = MEMORY[0x277CCACA8];
      v21 = qword_27E383800;
      v22 = @"kProgress_BaseReady";
LABEL_41:
      v37 = sub_23EB6CD3C(v22, v21);
      v23 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v20, v38, v37, @"%@", 0, v16);
      goto LABEL_42;
    case 22:
      self->_state = 6;
      if (!v11)
      {
        goto LABEL_30;
      }

      v18 = qword_27E383800;
      v19 = @"kProgress_VerifyConnection";
      goto LABEL_14;
    case 23:
    case 25:
      v17 = 5;
      goto LABEL_29;
    case 24:
      self->_state = 6;
      if (!v11)
      {
        goto LABEL_30;
      }

      v18 = qword_27E383800;
      v19 = @"kProgress_PluginConnection";
LABEL_14:
      v23 = sub_23EB6CD3C(v19, v18);
LABEL_42:
      valid = v23;
      goto LABEL_43;
    case 26:
      v17 = 8;
LABEL_29:
      self->_state = v17;
      goto LABEL_30;
    default:
      if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
      {
        sub_23EB75374(&dword_27E381438, "[AssistantUIController setupProgressUpdated:status:paramDict:forController:]", 100, "\n", v12, v13, v14, v15, v40);
      }

LABEL_30:
      valid = &stru_285145FE8;
LABEL_43:
      if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        delegate = self->_delegate;

        MEMORY[0x2821F9670](delegate, sel_assistantUpdateProgress_forState_, valid);
      }

      return;
  }
}

- (void)setupCompleteWithResult:(int)result baseStationInfo:(id)info forController:(id)controller
{
  self->_assistantResult = result;
  if (result == -6723)
  {
    resultCopy = 4294960527;
  }

  else
  {
    resultCopy = result;
  }

  if (resultCopy != -6769)
  {
    if (resultCopy)
    {
      self->_state = 10;
    }

    else
    {
      self->_state = 9;
      objc_msgSend_setLastAssociatedInfo_(self, a2, 0, info, controller);
    }
  }

  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = objc_msgSend_setupPromptStringForBaseInfo_andResult_(self, a2, info, resultCopy);
    objc_msgSend_presentUIForSetupResult_baseStationInfo_withPrompt_(self->_delegate, v9, resultCopy, info, v8);
  }

  Instrumentation = objc_msgSend_lastInstrumentation(self->_setupController, a2, *&result);
  objc_msgSend_setLastSetupInstrumentation_(self, v11, Instrumentation);
  v12 = self->_setupController;
  objc_msgSend_setSetupController_(self, v13, 0);
  objc_msgSend_setStepByStepController_(self, v14, 0);
  if (resultCopy == -6769)
  {

    objc_msgSend_handlePresentAutoGuessUIFromAutoGuessCompleteResult_(self, v15, 0);
  }
}

- (void)setupUIConfigConnectionStatusUpdated:(int)updated status:(int)status paramDict:(id)dict forController:(id)controller
{
  v9 = *&updated;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController setupUIConfigConnectionStatusUpdated:status:paramDict:forController:]", 100, " selector: %d status: %ld paramDict: %@\n", dict, controller, v6, v7, v9);
  }

  if (status)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_showUIConfigPromptPreHook(self->_delegate, v11, v12);
    }

    MEMORY[0x2821F9670](self, sel_presentUIForConnectionVerification_status_paramDict_, v9);
  }

  else if (self->_state == 6)
  {
    self->_connectionStatusSelectorAwaitingResolution = 0;
    if (self->_delegate)
    {
      if (objc_opt_respondsToSelector())
      {
        delegate = self->_delegate;

        MEMORY[0x2821F9670](delegate, sel_connectionVerificationSucceededForSelector_, v9);
      }
    }
  }
}

- (void)stepByStepProgressUpdated:(int)updated status:(int)status paramString:(id)string
{
  v9 = *&updated;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController stepByStepProgressUpdated:status:paramString:]", 100, "selector: %d paramString: %@\n", string, v5, v6, v7, v9);
  }

  v11 = &stru_285145FE8;
  if (v9 <= 4)
  {
    if (v9 == 1)
    {
      v15 = qword_27E383800;
      v16 = @"kPerformingWiFiScanString";
    }

    else
    {
      if (v9 != 3)
      {
        goto LABEL_22;
      }

      v15 = qword_27E383800;
      v16 = @"kProgress_Browsing";
    }

    valid = sub_23EB6CD3C(v16, v15);
    goto LABEL_21;
  }

  if (v9 == 9)
  {
    if (string)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = qword_27E383800;
      v14 = @"kProgress_NetworkSearch";
      goto LABEL_18;
    }
  }

  else if (v9 == 7)
  {
    if (string)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = qword_27E383800;
      v14 = @"kProgress_WaitingForBase";
      goto LABEL_18;
    }
  }

  else if (v9 == 5 && string)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = qword_27E383800;
    v14 = @"kProgress_NetworkJoin";
LABEL_18:
    v17 = sub_23EB6CD3C(v14, v13);
    valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v12, v18, v17, @"%@", 0, string);
LABEL_21:
    v11 = valid;
  }

LABEL_22:
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    MEMORY[0x2821F9670](delegate, sel_assistantUpdateProgress_forState_, v11);
  }
}

- (void)stepByStepCompleteWithResult:(int)result paramDict:(id)dict
{
  if (result == -6769)
  {
    goto LABEL_8;
  }

  v6 = *&result;
  if (result == -6723)
  {
    v7 = 10;
  }

  else
  {
    v7 = 4;
  }

  self->_state = v7;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_presentUIForStepByStepResult_(self->_delegate, a2, v6);
  }

  if (v6)
  {
LABEL_8:
    objc_msgSend_handlePresentAutoGuessUIFromAutoGuessCompleteResult_(self, a2, 0);
    v8 = self->_stepByStepController;

    objc_msgSend_setStepByStepController_(self, v9, 0);
  }

  else if (dict)
  {

    MEMORY[0x2821F9670](self, sel_startSetupFromStepByStepResults_, dict);
  }
}

- (void)stepByStepNextStep:(int)step paramDict:(id)dict
{
  if (self->_delegate)
  {
    v5 = *&step;
    if (objc_opt_respondsToSelector())
    {
      delegate = self->_delegate;

      MEMORY[0x2821F9670](delegate, sel_presentUIForStepByStepNextStep_paramDict_, v5);
    }
  }
}

- (int)startSetupFromStepByStepResults:(id)results
{
  if (self->_setupController)
  {
    return -6721;
  }

  v32[3] = v8;
  v32[4] = v9;
  v31 = 0;
  v32[0] = 0;
  result = sub_23EBD9210(results, v32, &v31, v3, v4, v5, v6, v7);
  if (!result)
  {
    if (v32[0])
    {
      v12 = v32[0];
      v13 = v31;
      v16 = objc_msgSend_setupController(AUSetupController, v14, v15);
      objc_msgSend_setSetupController_(self, v17, v16);
      setupController = self->_setupController;
      if (setupController)
      {
        self->_state = 5;
        v21 = objc_msgSend_setupDelegates(setupController, v18, v19);
        objc_msgSend_addObject_(v21, v22, self);
        objc_msgSend_setUiConfigDelegate_(self->_setupController, v23, self);
        objc_msgSend_setUiDelegate_(self->_setupController, v24, self->_delegate);
        v26 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v25, v31);
        objc_msgSend_setSetupOptions_(self, v27, v26);
        result = objc_msgSend_setupFromAutoguessRecommendation_withOptions_(self->_setupController, v28, v32[0], v31);
        if (!result)
        {
          if (self->_delegate)
          {
            if (objc_opt_respondsToSelector())
            {
              objc_msgSend_presentUIForSetupStatusWithRecommendationDict_(self->_delegate, v29, v32[0]);
            }
          }

          return objc_msgSend_updateSettingsAsync(self->_setupController, v29, v30);
        }
      }

      else
      {
        return -6728;
      }
    }

    else
    {
      return -6727;
    }
  }

  return result;
}

- (void)presentUIForConnectionVerification:(int)verification status:(int)status paramDict:(id)dict
{
  v8 = *&status;
  v9 = *&verification;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) presentUIForConnectionVerification:status:paramDict:]", 100, " selector: %d status: %ld paramDict: %@\n", dict, v5, v6, v7, v9);
  }

  self->_connectionStatusSelectorAwaitingResolution = v9;
  if (v9 <= 2)
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        return;
      }

      if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
      {
        sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) presentUIForConnectionVerification:status:paramDict:]", 100, "%s: eBSConfigurationUIConfigSelector_DHCPOrPPPoESeen\n", dict, v5, v6, v7, "[AssistantUIController(Private) presentUIForConnectionVerification:status:paramDict:]");
      }

LABEL_19:
      if (objc_opt_respondsToSelector())
      {
        delegate = self->_delegate;

        MEMORY[0x2821F9670](delegate, sel_showTellUserToResetBroadbandDeviceForStatus_paramDict_, v8);
      }

      return;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = self->_delegate;

      MEMORY[0x2821F9670](v14, sel_showTellUserToPlugInEthernetForStatus_paramDict_, v8);
    }
  }

  else
  {
    if (v9 != 3)
    {
      if (v9 != 4)
      {
        if (v9 == 5 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v11 = self->_delegate;

          MEMORY[0x2821F9670](v11, sel_showAskUserSwapCablingForStatus_paramDict_, v8);
        }

        return;
      }

      goto LABEL_19;
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = self->_delegate;

      MEMORY[0x2821F9670](v13, sel_showAskUserForPPPoECredentialsForStatus_paramDict_, v8);
    }
  }
}

- (void)presentUIForUIConfigPrompt:(int)prompt paramDict:(id)dict
{
  self->_state = 7;
  if (prompt == 8)
  {
    if (objc_opt_respondsToSelector())
    {
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_showUIConfigPromptPreHook(self->_delegate, v9, v10);
      }

      delegate = self->_delegate;

      MEMORY[0x2821F9670](delegate, sel_showUIConfigPromptForGuestNetConfigWithParamDict_, dict);
    }
  }

  else if (prompt == 7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_showUIConfigPromptPreHook(self->_delegate, v6, v7);
    }

    v8 = self->_delegate;

    MEMORY[0x2821F9670](v8, sel_showUIConfigPromptToSendDiagsUsageStatsWithParamDict_, dict);
  }
}

- (void)handlePresentAutoGuessUIFromAutoGuessCompleteResult:(BOOL)result
{
  resultCopy = result;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) handlePresentAutoGuessUIFromAutoGuessCompleteResult:]", 100, "\n", v3, v4, v5, v6, v54);
  }

  v9 = 0x277CBE000uLL;
  if (!self->_guessCompleteDict)
  {
    v21 = 0;
    v23 = 0;
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 4294960591;
    goto LABEL_35;
  }

  if (resultCopy)
  {
    v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, result);
    objc_msgSend_setSetupOptions_(self, v11, v10);
  }

  if (!self->_setupOptions)
  {
    v21 = 0;
    v23 = 0;
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 4294960568;
    goto LABEL_35;
  }

  v12 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, result);
  if (objc_msgSend_BOOLForKey_(v12, v13, @"skipConnectionTesting"))
  {
    setupOptions = self->_setupOptions;
    v16 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v14, 1);
    objc_msgSend_setObject_forKey_(setupOptions, v17, v16, @"kBSAutoGuessSetupOptionKey_SkipInternetTests");
  }

  v18 = objc_msgSend_primaryRecommendationDictionaryFromCompletionDict_(AutoGuessController, v14, self->_guessCompleteDict);
  v21 = objc_msgSend_objectForKey_(v18, v19, @"BSAutoGuess_Recommendation");
  if (v18)
  {
    v22 = objc_msgSend_objectForKey_(v18, v20, @"BSAutoGuess_Recommendation");
  }

  else
  {
    v22 = 0;
  }

  v28 = objc_msgSend_valueForKey_(v18, v20, @"BSAutoGuess_UnconfiguredBase");
  v30 = objc_msgSend_objectForKey_(v28, v29, @"syFl");
  if (v30)
  {
    v26 = (objc_msgSend_integerValue(v30, v31, v32) >> 10) & 1;
  }

  else
  {
    v26 = 0;
  }

  v25 = objc_msgSend_restoreOfferFromCompletionDict_(AutoGuessController, v31, self->_guessCompleteDict);
  v23 = objc_msgSend_recommendationStringFromCompletionDict_(AutoGuessController, v33, self->_guessCompleteDict);
  if (!v23)
  {
    goto LABEL_33;
  }

  v34 = objc_msgSend_objectForKey_(self->_guessCompleteDict, a2, @"fullGuessResults");
  v36 = objc_msgSend_objectForKey_(v34, v35, @"BSAutoGuessComplete_ErrorResult");
  v39 = objc_msgSend_integerValue(v36, v37, v38);
  v27 = v39;
  if (v39)
  {
    v24 = 0;
    self->_state = 10;
    self->_assistantResult = v39;
LABEL_34:
    v9 = 0x277CBE000uLL;
    goto LABEL_35;
  }

  *&self->_state = 2;
  if (!v21)
  {
    v24 = 0;
    v27 = 4294960569;
    goto LABEL_34;
  }

  if (!objc_msgSend_isEqualToString_(v21, a2, @"BSSetupRecommend_OfferCreate"))
  {
    if (objc_msgSend_isEqualToString_(v21, a2, @"BSSetupRecommend_OfferJoinNetwork"))
    {
      v55 = 0;
      v42 = objc_msgSend_objectForKey_(v18, a2, @"BSAutoGuess_SourceNetwork");
      if (v42)
      {
        v43 = v42;
        if (objc_msgSend_networkIsSecure_secMode_isEnterprise_(WiFiUtils, a2, v42, 0, &v55) && (v55 & 1) == 0)
        {
          NetworkPassword = objc_msgSend_getNetworkPassword_(WiFiUtils, a2, v43);
          v24 = 1;
          if (NetworkPassword)
          {
            v9 = 0x277CBE000;
            if (resultCopy)
            {
              objc_msgSend_setObject_forKey_(self->_setupOptions, a2, NetworkPassword, @"kBSAutoGuessSetupOptionKey_NetworkPassword");
              v24 = 1;
            }

            goto LABEL_49;
          }
        }

        else
        {
          v24 = 1;
        }
      }

      else
      {
        v24 = 0;
      }

      v9 = 0x277CBE000;
LABEL_49:
      v27 = 0;
      goto LABEL_35;
    }

LABEL_33:
    v24 = 0;
    v27 = 0;
    goto LABEL_34;
  }

  v9 = 0x277CBE000;
  if (resultCopy)
  {
    v40 = sub_23EB6D820();
    objc_msgSend_setObject_forKey_(self->_setupOptions, v41, v40, @"kBSAutoGuessSetupOptionKey_NetworkName");
  }

  v27 = 0;
  v24 = 3;
LABEL_35:
  v44 = *(v9 + 2872);
  v45 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, v24);
  v47 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v46, v26);
  v49 = objc_msgSend_dictionaryWithObjectsAndKeys_(v44, v48, v45, @"passwordUIFlags", v47, @"pppoeDetected", 0);
  v51 = v49;
  if (v23)
  {
    objc_msgSend_setObject_forKey_(v49, v50, v23, @"promptString");
  }

  if (v25)
  {
    objc_msgSend_setObject_forKey_(v51, v50, v25, @"restoreOffer");
  }

  if (v22)
  {
    objc_msgSend_setObject_forKey_(v51, v50, v22, @"actionKey");
  }

  if (v21)
  {
    objc_msgSend_setObject_forKey_(v51, v50, v21, @"primaryRecommendation");
  }

  if (self->_delegate)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_presentUIForRecommendationResult_paramDict_(self->_delegate, v52, v27, v51);
    }
  }
}

- (id)setupPromptStringForBaseInfo:(id)info andResult:(int)result
{
  if (!info || result)
  {
    v54 = qword_27E383800;

    return sub_23EB6CD3C(@"kSetup_SetupRecommendationErrorGeneric", v54);
  }

  else
  {
    v6 = objc_msgSend_objectForKey_(info, a2, @"kSetupBaseStationInfoKey_RecommendationInfo");
    v8 = objc_msgSend_objectForKey_(v6, v7, @"BSAutoGuess_Recommendation");
    v10 = objc_msgSend_objectForKey_(info, v9, @"kSetupBaseStationInfoKey_GeneralInfo");
    v11 = sub_23EB6CDF8(1937326416);
    v13 = objc_msgSend_objectForKey_(v10, v12, v11);
    v14 = sub_23EB6CDF8(1937329773);
    v16 = objc_msgSend_objectForKey_(v10, v15, v14);
    v18 = objc_msgSend_objectForKey_(v6, v17, @"BSAutoGuess_SourceBase");
    v20 = objc_msgSend_objectForKey_(v18, v19, @"name");
    v23 = objc_msgSend_setupOptions(self, v21, v22);
    v25 = objc_msgSend_objectForKey_(v23, v24, @"kBSAutoGuessSetupOptionKey_ExtendOption_JoinApple");
    v28 = objc_msgSend_BOOLValue(v25, v26, v27);
    v31 = objc_msgSend_objectForKey_(info, v29, @"kSetupBaseStationInfoKey_BrowseRecord");
    if (v28)
    {
      v8 = @"BSSetupRecommend_OfferJoinNetwork";
      isEqualToString = objc_msgSend_isEqualToString_(@"BSSetupRecommend_OfferJoinNetwork", v30, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable");
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(v8, v30, @"BSSetupRecommend_OfferReplaceSourceIsUnconfigurable");
    }

    v34 = isEqualToString;
    if ((objc_msgSend_isEqualToString_(v8, v33, @"BSSetupRecommend_OfferCreate") & 1) != 0 || v34)
    {
      v55 = objc_msgSend_valueForKey_(self->_setupOptions, v35, @"kBSAutoGuessSetupOptionKey_NetworkName");
      v57 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v56, @"%@.Complete", v8);
      v51 = sub_23EB6CD3C(v57, qword_27E383800);
      if (v55)
      {
        return objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v58, v51, @"%@", 0, v55);
      }
    }

    else if ((objc_msgSend_isEqualToString_(v8, v35, @"BSSetupRecommend_OfferJoinNetwork") & 1) != 0 || objc_msgSend_isEqualToString_(v8, v36, @"BSSetupRecommend_AskUserChooseNetworkToJoin"))
    {
      v37 = objc_msgSend_objectForKey_(info, v36, @"kSetupBaseStationInfoKey_RadioInfo");
      v38 = sub_23EB6CDF8(1918979693);
      v16 = objc_msgSend_objectForKey_(v37, v39, v38);
      v41 = objc_msgSend_objectForKey_(info, v40, @"kSetupBaseStationInfoKey_BrowseRecord");
      v42 = sub_23EB6A1FC(v41);
      v43 = MEMORY[0x277CCACA8];
      v46 = objc_msgSend_integerValue(v13, v44, v45);
      v47 = sub_23EB6CE6C(v46, v42);
      v49 = objc_msgSend_stringWithFormat_(v43, v48, @"%@.Complete%@", v8, v47);
      v51 = sub_23EB6CD3C(v49, qword_27E383800);
      if (v16)
      {
        v52 = MEMORY[0x277CCACA8];
        return objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v52, v50, v51, @"%@", 0, v16);
      }
    }

    else
    {
      v59 = objc_msgSend_isEqualToString_(v8, v36, @"BSSetupRecommend_OfferRestore");
      v60 = MEMORY[0x277CCACA8];
      v63 = objc_msgSend_integerValue(v13, v61, v62);
      v71 = sub_23EB6A294(v31, v64, v65, v66, v67, v68, v69, v70);
      v72 = sub_23EB6CE6C(v63, v71);
      v74 = objc_msgSend_stringWithFormat_(v60, v73, @"%@.Complete%@", v8, v72);
      v51 = sub_23EB6CD3C(v74, qword_27E383800);
      if (!v59 && v20)
      {
        return objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x277CCACA8], v50, v51, @"%@", 0, v20);
      }

      if (v16)
      {
        v52 = MEMORY[0x277CCACA8];
        return objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v52, v50, v51, @"%@", 0, v16);
      }
    }

    return v51;
  }
}

- (BOOL)restoreNetworkIfNeeded:(BOOL)needed disassociateIfNeeded:(BOOL)ifNeeded forceQuit:(BOOL)quit
{
  quitCopy = quit;
  ifNeededCopy = ifNeeded;
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) restoreNetworkIfNeeded:disassociateIfNeeded:forceQuit:]", 100, "_lastAssociatedInfo: %@\n", quit, v5, v6, v7, self->_lastAssociatedInfo);
  }

  v11 = objc_msgSend_sharedInstance(WiFiUtils, a2, needed);
  v14 = objc_msgSend_airPortIsOn(v11, v12, v13);
  if (v14)
  {
    isCurrentlyAssociatedToAnInfrastructureNetwork = objc_msgSend_isCurrentlyAssociatedToAnInfrastructureNetwork_(v11, v15, 0);
    lastAssociatedInfo = self->_lastAssociatedInfo;
    if (lastAssociatedInfo)
    {
      v26 = objc_msgSend_objectForKey_(lastAssociatedInfo, v16, @"SSID_STR");
      if (isCurrentlyAssociatedToAnInfrastructureNetwork)
      {
        CurrentAssociationInfo = objc_msgSend_getCurrentAssociationInfo(v11, v20, v21);
        v29 = objc_msgSend_objectForKey_(CurrentAssociationInfo, v28, @"SSID_STR");
      }

      else
      {
        v29 = &stru_285145FE8;
      }

      if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
      {
        sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) restoreNetworkIfNeeded:disassociateIfNeeded:forceQuit:]", 100, "curName: %@ oldName: %@\n", v22, v23, v24, v25, v29);
      }

      isEqualToString = objc_msgSend_isEqualToString_(v26, v20, v29);
      if ((isEqualToString & 1) == 0 && !quitCopy)
      {
        LOBYTE(v14) = objc_msgSend_startRestoreNetwork_(self, v16, v26) == 0;
        return v14;
      }

      if (isEqualToString)
      {
        goto LABEL_11;
      }
    }

    else if (((ifNeededCopy || quitCopy) & isCurrentlyAssociatedToAnInfrastructureNetwork & 1) == 0)
    {
LABEL_11:
      LOBYTE(v14) = 0;
      return v14;
    }

    objc_msgSend_disassociateSync(v11, v16, v17);
    goto LABEL_11;
  }

  return v14;
}

- (int)startRestoreNetwork:(id)network
{
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) startRestoreNetwork:]", 100, "\n", v3, v4, v5, v6, v26);
  }

  if (!network)
  {
    return -6705;
  }

  v9 = objc_msgSend_sharedInstance(WiFiUtils, a2, network);
  v11 = objc_msgSend_objectForKey_(self->_lastAssociatedInfo, v10, @"BSSID");
  if (v11 && (v13 = objc_msgSend_scanInfoForMACAddress_(v9, v12, v11)) != 0 || (v13 = objc_msgSend_scanInfoForName_wifiType_(v9, v12, network, 3)) != 0)
  {
    v18 = v13;
    v27 = 0;
    if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
    {
      sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) startRestoreNetwork:]", 100, " restoring with scan info \n", v14, v15, v16, v17, v26);
    }

    if (objc_msgSend_networkIsSecure_secMode_isEnterprise_(WiFiUtils, v12, v18, 0, &v27) && (v27 & 1) == 0)
    {
      NetworkPassword = objc_msgSend_getNetworkPassword_(WiFiUtils, v19, v18);
      if (!NetworkPassword)
      {
        return -16;
      }
    }

    else
    {
      NetworkPassword = 0;
    }

    result = objc_msgSend_joinNetworkWithScanInfoAsync_password_rememberChoice_(v9, v19, v18, NetworkPassword, 1);
    if (!result)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
    {
      sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) startRestoreNetwork:]", 100, " restoring with name only \n", v14, v15, v16, v17, v26);
    }

    result = objc_msgSend_joinNetworkWithNameAsync_password_rememberChoice_(v9, v12, network, 0, 1);
    if (!result)
    {
LABEL_24:
      v24 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v22, v23);
      objc_msgSend_addObserver_selector_name_object_(v24, v25, self, sel_restoreNetworkDone_, @"com.apple.WiFiUtils.Join.Complete", 0);
      return 0;
    }
  }

  return result;
}

- (void)restoreNetworkDone:(id)done
{
  if (dword_27E381438 <= 100 && (dword_27E381438 != -1 || sub_23EB74AC8(&dword_27E381438, 0x64u)))
  {
    sub_23EB75374(&dword_27E381438, "[AssistantUIController(Private) restoreNetworkDone:]", 100, "\n", v3, v4, v5, v6, v22);
  }

  v9 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, done);
  objc_msgSend_removeObserver_name_object_(v9, v10, self, @"com.apple.WiFiUtils.Join.Complete", 0);
  v13 = objc_msgSend_userInfo(done, v11, v12);
  v15 = objc_msgSend_objectForKey_(v13, v14, @"WiFiUtils_OSStatus");
  if (v15)
  {
    objc_msgSend_integerValue(v15, v16, v17);
  }

  if (self->_state == 11 && self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;
    v21 = objc_msgSend_assistantResult(self, v18, v19);

    MEMORY[0x2821F9670](delegate, sel_doneWithAssistantResult_, v21);
  }
}

@end