@interface MechanismUI
- (BOOL)_checkCallerForeground;
- (BOOL)_checkUiEventValid:(int64_t)valid;
- (BOOL)_deviceIsInBioLockoutWithError:(id *)error;
- (BOOL)_fallbackButtonWouldBeVisibleInBiometryUI;
- (BOOL)_shouldRestartRemoteUIBeforePresentingDestinationController:(int64_t)controller withSourceController:(int64_t)sourceController;
- (BOOL)clientIsUsingCAPI;
- (BOOL)fallbackToIdentifier:(int64_t)identifier;
- (BOOL)passcodeShouldBeFirstMechanism;
- (BOOL)passphraseShouldBeFirstMechanism;
- (MechanismUI)initWithNonUiMechanism:(id)mechanism eventProcessing:(id)processing policy:(int64_t)policy internalInfo:(id)info request:(id)request;
- (id)_hostedSceneConfigurationForRemoteUIController:(int64_t)controller endpoint:(id)endpoint;
- (id)_nameForRemoteUIController:(int64_t)controller;
- (id)_prepareInternalInfoForRemoteController;
- (int64_t)_scheduleMechanisms;
- (void)_activateListener:(id)listener;
- (void)_connectNonUiMechanism:(id)mechanism withRemoteUi:(id)ui;
- (void)_invalidateListeners;
- (void)_restartRemoteUIBeforePresentationIfNeededForDestinationController:(int64_t)controller withSourceController:(int64_t)sourceController completionHandler:(id)handler;
- (void)_setupMechanismForHostingController:(id)controller listener:(id)listener;
- (void)_setupMechanismForRemoteViewController:(id)controller;
- (void)_showUI;
- (void)_startBackgroundMechanism;
- (void)_terminateBackgroundMechanismWithResult:(id)result error:(id)error;
- (void)_transitionToController:(int64_t)controller internalInfo:(id)info;
- (void)authMethodWithReply:(id)reply;
- (void)companionStateChanged:(id)changed newState:(BOOL)state;
- (void)connectRemoteUI:(id)i requestID:(id)d reply:(id)reply;
- (void)dealloc;
- (void)disconnectRemoteUI;
- (void)event:(int64_t)event params:(id)params reply:(id)reply;
- (void)externalizedContextWithReply:(id)reply;
- (void)finishRunWithResult:(id)result error:(id)error;
- (void)internalInfoWithReply:(id)reply;
- (void)runWithHints:(id)hints eventsDelegate:(id)delegate reply:(id)reply;
- (void)subMechanismCanRestart:(id)restart;
- (void)uiEvent:(int64_t)event options:(id)options;
- (void)uiFailureWithError:(id)error;
- (void)uiSuccessWithResult:(id)result;
- (void)willFinish;
@end

@implementation MechanismUI

- (MechanismUI)initWithNonUiMechanism:(id)mechanism eventProcessing:(id)processing policy:(int64_t)policy internalInfo:(id)info request:(id)request
{
  mechanismCopy = mechanism;
  processingCopy = processing;
  infoCopy = info;
  requestCopy = request;
  cachedExternalizationDelegate = [mechanismCopy cachedExternalizationDelegate];
  v26.receiver = self;
  v26.super_class = MechanismUI;
  v17 = [(MechanismBase *)&v26 initWithEventIdentifier:0 remoteViewController:0 cachedExternalizationDelegate:cachedExternalizationDelegate request:requestCopy];

  if (v17)
  {
    objc_storeStrong(&v17->_nonUiMechanism, mechanism);
    [(MechanismBase *)v17->_nonUiMechanism setParent:v17];
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    continueMechanisms = v17->_continueMechanisms;
    v17->_continueMechanisms = v18;

    objc_storeStrong(&v17->_eventProcessing, processing);
    v17->_policy = policy;
    objc_storeStrong(&v17->_internalInfo, info);
    v20 = [(NSDictionary *)v17->_internalInfo objectForKey:@"Options"];
    policyOptions = v17->_policyOptions;
    v17->_policyOptions = v20;

    v17->_lastControllerPresented = 0;
    v22 = objc_alloc_init(MechanismUINotificationCenter);
    notificationCenter = v17->_notificationCenter;
    v17->_notificationCenter = v22;
  }

  return v17;
}

- (void)dealloc
{
  [(MechanismUI *)self _invalidateListeners];
  v3.receiver = self;
  v3.super_class = MechanismUI;
  [(MechanismUI *)&v3 dealloc];
}

- (void)runWithHints:(id)hints eventsDelegate:(id)delegate reply:(id)reply
{
  v6.receiver = self;
  v6.super_class = MechanismUI;
  [(MechanismBase *)&v6 runWithHints:hints eventsDelegate:delegate reply:reply];
  [(MechanismUI *)self _showUI];
}

- (void)finishRunWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  [(MechanismUI *)self _terminateBackgroundMechanismWithResult:resultCopy error:errorCopy];
  if (resultCopy)
  {
    if ([(NSMutableArray *)self->_continueMechanisms count])
    {
      v8 = [resultCopy objectForKeyedSubscript:@"Result"];
      [(MechanismBase *)self yieldPartialResult:v8];

      v9 = [(NSMutableArray *)self->_continueMechanisms objectAtIndexedSubscript:0];
      [(MechanismUI *)self _connectNonUiMechanism:v9 withRemoteUi:self->_remoteUI];
      nonUiMechanism = self->_nonUiMechanism;
      self->_nonUiMechanism = v9;
      v11 = v9;

      [(NSMutableArray *)self->_continueMechanisms removeObjectAtIndex:0];
LABEL_11:
      [(MechanismUI *)self _showUI];
      goto LABEL_27;
    }

LABEL_20:
    [(MechanismPearl *)self->_preservedPearlMechanism cancelByParent:self onSuccess:resultCopy != 0];
    if ([MEMORY[0x277CD47F0] error:errorCopy hasCode:-4 subcode:12])
    {
      v29 = [(NSDictionary *)self->_policyOptions objectForKeyedSubscript:&unk_284B78780];
      bOOLValue = [v29 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        if ([(MechanismUI *)self _fallbackButtonWouldBeVisibleInBiometryUI])
        {
          request = [(MechanismBase *)self request];
          v32 = [request log];

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            [(MechanismUI *)v32 finishRunWithResult:v33 error:v34, v35, v36, v37, v38, v39];
          }

          v40 = MEMORY[0x277CD47F0];
          userInfo = [errorCopy userInfo];
          v42 = [v40 errorWithCode:-3 userInfo:userInfo];

          errorCopy = v42;
        }
      }
    }

    request2 = [(MechanismBase *)self request];
    analytics = [request2 analytics];
    [analytics authenticationResult:objc_msgSend(errorCopy event:{"code"), -[MechanismBase eventIdentifier](self->_nonUiMechanism, "eventIdentifier")}];

    v45.receiver = self;
    v45.super_class = MechanismUI;
    [(MechanismBase *)&v45 finishRunWithResult:resultCopy error:errorCopy];
    goto LABEL_27;
  }

  if (!self->_fallbackMechanism)
  {
    goto LABEL_20;
  }

  fallbackReason = self->_fallbackReason;
  self->_fallbackReason = 0;

  if (([MEMORY[0x277CD47F0] error:errorCopy hasCode:-1] & 1) != 0 || (objc_msgSend(MEMORY[0x277CD47F0], "error:hasCode:", errorCopy, -1018) & 1) != 0 || (objc_msgSend(MEMORY[0x277CD47F0], "error:hasCode:", errorCopy, -8) & 1) != 0 || (objc_msgSend(MEMORY[0x277CD47F0], "error:hasCode:", errorCopy, -3) & 1) != 0 || objc_msgSend(MEMORY[0x277CD47F0], "error:hasCode:subcode:", errorCopy, -4, 18))
  {
    objc_storeStrong(&self->_nonUiMechanism, self->_fallbackMechanism);
    fallbackMechanism = self->_fallbackMechanism;
    self->_fallbackMechanism = 0;

    goto LABEL_11;
  }

  if (([MEMORY[0x277CD47F0] error:errorCopy hasCode:-4 subcode:12] & 1) == 0 && (objc_msgSend(MEMORY[0x277CD47F0], "error:hasCode:subcode:", errorCopy, -4, 14) & 1) == 0 && !objc_msgSend(MEMORY[0x277CD47F0], "error:hasCode:subcode:", errorCopy, -4, 13))
  {
    goto LABEL_20;
  }

  request3 = [(MechanismBase *)self request];
  v15 = [request3 log];

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [MechanismUI finishRunWithResult:v15 error:?];
  }

  objc_storeStrong(&self->_nonUiMechanism, self->_fallbackMechanism);
  v16 = self->_fallbackMechanism;
  self->_fallbackMechanism = 0;

  objc_storeStrong(&self->_fallbackReason, error);
  request4 = [(MechanismBase *)self request];
  v18 = [request4 log];

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [(MechanismUI *)v18 finishRunWithResult:v19 error:v20, v21, v22, v23, v24, v25];
  }

  v26 = +[RemoteUIManager sharedInstance];
  remoteUI = self->_remoteUI;
  uiDisappeared = self->_uiDisappeared;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __41__MechanismUI_finishRunWithResult_error___block_invoke;
  v46[3] = &unk_278A62920;
  v46[4] = self;
  [v26 dismissRemoteUI:remoteUI uiMechanism:self uiDisappeared:uiDisappeared shouldIdle:0 reply:v46];

LABEL_27:
}

uint64_t __41__MechanismUI_finishRunWithResult_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) request];
  v3 = [v2 log];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __41__MechanismUI_finishRunWithResult_error___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return [*(a1 + 32) _showUI];
}

- (BOOL)_fallbackButtonWouldBeVisibleInBiometryUI
{
  if ([(MechanismPearl *)self->_preservedPearlMechanism hasUI])
  {
    v3 = [(NSDictionary *)self->_policyOptions objectForKeyedSubscript:&unk_284B78798];
    v4 = v3;
    if (v3)
    {
      LOBYTE(v5) = [v3 BOOLValue];
    }

    else
    {
      policy = self->_policy;
      if (policy)
      {
        if (policy == 1)
        {
          v8 = [(NSDictionary *)self->_internalInfo objectForKeyedSubscript:@"CApiOrigin"];
          v5 = [v8 BOOLValue] ^ 1;
        }

        else
        {
          LOBYTE(v5) = 1;
        }
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)willFinish
{
  v10 = *MEMORY[0x277D85DE8];
  request = [(MechanismBase *)self request];
  v4 = [request log];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_238B95000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ willFinish", &v8, 0xCu);
  }

  notificationCenter = [(MechanismUI *)self notificationCenter];
  [notificationCenter postNotificationUIDidDisappear];

  v6 = +[RemoteUIManager sharedInstance];
  [v6 dismissRemoteUI:self->_remoteUI uiMechanism:self uiDisappeared:self->_uiDisappeared shouldIdle:0 reply:&__block_literal_global_0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_terminateBackgroundMechanismWithResult:(id)result error:(id)error
{
  backgroundMechanism = self->_backgroundMechanism;
  self->_backgroundMechanism = 0;
  v7 = backgroundMechanism;
  errorCopy = error;
  resultCopy = result;

  [(MechanismBase *)v7 finishRunWithResult:resultCopy error:errorCopy];
}

- (void)connectRemoteUI:(id)i requestID:(id)d reply:(id)reply
{
  iCopy = i;
  dCopy = d;
  replyCopy = reply;
  if (dCopy)
  {
    v12 = MEMORY[0x277CCABB0];
    request = [(MechanismBase *)self request];
    v14 = [v12 numberWithUnsignedInt:{objc_msgSend(request, "identifier")}];
    v15 = [v14 isEqual:dCopy];

    if ((v15 & 1) == 0)
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = MEMORY[0x277CCABB0];
      request2 = [(MechanismBase *)self request];
      v23 = [v21 numberWithUnsignedInt:{objc_msgSend(request2, "identifier")}];
      dCopy = [v20 stringWithFormat:@"Request mismatch: %@ != %@", v23, dCopy];

      backoffCounter = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E88] subcode:*MEMORY[0x277D23EC8] debugDescription:dCopy];
      request3 = [(MechanismBase *)self request];
      v26 = [request3 log];

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [MechanismUI connectRemoteUI:backoffCounter requestID:v26 reply:?];
      }

      (*(replyCopy + 2))(replyCopy, 0, 0, backoffCounter);
      goto LABEL_9;
    }
  }

  remoteUI = self->_remoteUI;
  if (!remoteUI)
  {
    objc_storeStrong(&self->_remoteUI, i);
    [(MechanismUI *)self _connectNonUiMechanism:self->_backgroundMechanism withRemoteUi:self->_remoteUI];
    dCopy = +[MechanismContext sharedInstance];
    backoffCounter = [dCopy backoffCounter];
    (*(replyCopy + 2))(replyCopy, self, backoffCounter, 0);
LABEL_9:

    goto LABEL_10;
  }

  v17 = MEMORY[0x277CD47F0];
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ already connected while %@ attempted to connect.", remoteUI, iCopy];
  v19 = [v17 internalErrorWithMessage:dCopy];
  (*(replyCopy + 2))(replyCopy, 0, 0, v19);

LABEL_10:
}

- (void)disconnectRemoteUI
{
  notificationCenter = [(MechanismUI *)self notificationCenter];
  [notificationCenter postNotificationUIDidDisappear];

  remoteUI = self->_remoteUI;
  self->_remoteUI = 0;
}

- (void)_connectNonUiMechanism:(id)mechanism withRemoteUi:(id)ui
{
  mechanismCopy = mechanism;
  if ([mechanismCopy requiresUiWithEventProcessing:self->_eventProcessing])
  {
    v5 = [mechanismCopy findMechanismWithEventIdentifier:1];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = [mechanismCopy findMechanismWithEventIdentifier:7];
      if (!v6)
      {
        v7 = [mechanismCopy findMechanismWithEventIdentifier:12];
        v8 = v7;
        if (v7)
        {
          [v7 setRemoteUiDelegate:self->_remoteUI];
        }

        goto LABEL_6;
      }
    }

    [v6 setRemoteUiDelegate:self->_remoteUI];
LABEL_6:
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)_checkCallerForeground
{
  v3 = [(NSDictionary *)self->_internalInfo objectForKey:@"BackgroundUi"];

  if (!v3)
  {
    request = [(MechanismBase *)self request];
    isPurposeApplePay = [request isPurposeApplePay];

    if ((isPurposeApplePay & 1) == 0)
    {
      v8 = [(NSDictionary *)self->_internalInfo objectForKey:@"CallerId"];
      if (v8)
      {
        v9 = MEMORY[0x277CD4808];
        v10 = [(NSDictionary *)self->_internalInfo objectForKeyedSubscript:@"ProcessId"];
        v6 = [v9 callerRunningOnForeground:v8 pid:{objc_msgSend(v10, "unsignedIntValue")}];
        if ((v6 & 1) == 0)
        {
          if (self->_remoteUI)
          {
            v11 = MEMORY[0x277CD4808];
            v12 = LACUserInterfaceBundleIdentifierDefault();
            LOBYTE(v11) = [v11 callerRunningOnForeground:v12 pid:0];

            if (v11)
            {
              goto LABEL_9;
            }
          }

          else
          {
          }

          v10 = [MEMORY[0x277CD47F0] errorWithCode:-4 message:@"Caller moved to background."];
          [(MechanismUI *)self finishRunWithResult:0 error:v10];
        }

        goto LABEL_13;
      }

LABEL_9:
      v6 = 1;
LABEL_13:

      return v6;
    }
  }

  return 1;
}

- (void)uiEvent:(int64_t)event options:(id)options
{
  v47 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  request = [(MechanismBase *)self request];
  v8 = [request log];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromRemoteUIEventAndOptions();
    *buf = 138543874;
    selfCopy = self;
    v43 = 1024;
    eventCopy = event;
    v45 = 2112;
    v46 = v9;
    _os_log_impl(&dword_238B95000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ has received UI event %d (%@)", buf, 0x1Cu);
  }

  if ([(MechanismUI *)self _checkUiEventValid:event])
  {
    [(MechanismBase *)self->_backgroundMechanism handleUIEvent:event params:optionsCopy];
  }

  if (event > 6)
  {
    if (event <= 8)
    {
      if (event == 7)
      {
        if (!self->_preservedPearlMechanism)
        {
          goto LABEL_46;
        }

        self->_matchCanceledByPasscodeUi = 1;
        preservedPearlMechanism = self->_preservedPearlMechanism;
        preCompanion = [MEMORY[0x277CD47F0] errorWithCode:-2 message:@"User started typing passcode."];
        [(MechanismPearl *)preservedPearlMechanism failAuthenticationWithError:preCompanion];
        goto LABEL_42;
      }

      request2 = [(MechanismBase *)self request];
      isRecoveringFromBiolockout = [request2 isRecoveringFromBiolockout];

      if ((isRecoveringFromBiolockout & 1) == 0)
      {
        mEMORY[0x277D240B8] = [MEMORY[0x277D240B8] sharedInstance];
        v17 = [optionsCopy objectForKeyedSubscript:@"uptime"];
        [mEMORY[0x277D240B8] updatePasscodeSuccessAgeWithUptime:v17];
      }
    }

    else if (event != 9)
    {
      if (event == 10)
      {
        request3 = [(MechanismBase *)self request];
        v36 = [request3 log];

        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          backgroundMechanism = self->_backgroundMechanism;
          *buf = 138543362;
          selfCopy = backgroundMechanism;
          _os_log_impl(&dword_238B95000, v36, OS_LOG_TYPE_DEFAULT, "Pausing %{public}@ to allow auth cancelation in Wallet", buf, 0xCu);
        }

        [(MechanismBase *)self->_backgroundMechanism pause:1 forEvent:[(MechanismBase *)self->_backgroundMechanism eventIdentifier] error:0];
      }

      else if (event == 14)
      {
        [(MechanismBase *)self succeedAuthenticationWithDefaultResult];
      }

      goto LABEL_46;
    }

    nonUiMechanism = self->_nonUiMechanism;
    v39 = &unk_284B787C8;
    v19 = event == 8;
    v20 = event != 8;
    v21 = v19;
    v22 = [MEMORY[0x277CCABB0] numberWithInt:{v21, v39}];
    v40 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    [(MechanismBase *)nonUiMechanism noResponseEventWithParams:v23];

    request4 = [(MechanismBase *)self request];
    analytics = [request4 analytics];
    [analytics authenticationAttempt:v20 event:2];

    goto LABEL_28;
  }

  if (event <= 1)
  {
    if (event)
    {
      if (event != 1)
      {
        goto LABEL_46;
      }

      self->_uiDisappeared = 1;
      if (self->_ignoreUiDisappear)
      {
        goto LABEL_46;
      }

      v11 = MEMORY[0x277CD47F0];
      v12 = @"UI canceled by system.";
      v13 = -4;
      goto LABEL_41;
    }

    request5 = [(MechanismBase *)self request];
    analytics2 = [request5 analytics];
    [analytics2 authenticationStartedForEvent:{-[MechanismBase eventIdentifier](self->_nonUiMechanism, "eventIdentifier")}];

    self->_uiDisappeared = 0;
    self->_ignoreUiDisappear = 0;
    if (![(MechanismUI *)self _checkCallerForeground])
    {
      goto LABEL_46;
    }

    [(MechanismUI *)self _startBackgroundMechanism];
    preCompanion = [(MechanismPearl *)self->_preservedPearlMechanism preCompanion];
    if (([preCompanion isCredentialValid] & 1) != 0 || (-[MechanismBase policyOptions](self, "policyOptions"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "objectForKeyedSubscript:", &unk_284B787B0), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "BOOLValue"), v29, v28, v30))
    {
      [(MechanismPearl *)self->_preservedPearlMechanism restartWithEventIdentifier:7 lastAttempt:1];
    }

LABEL_42:

    goto LABEL_46;
  }

  if (event == 2)
  {
    if (![(MechanismUI *)self _checkUiEventValid:2])
    {
      goto LABEL_46;
    }

    preCompanion = [MEMORY[0x277CD47F0] errorWithCode:-2 message:@"Canceled by user."];
    v32 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v33 = v32;
    if (v32)
    {
      v34 = v32;

      preCompanion = v34;
    }

    [(MechanismUI *)self finishRunWithResult:0 error:preCompanion];

    goto LABEL_42;
  }

  if (event == 3)
  {
    if (![(MechanismUI *)self _checkUiEventValid:3])
    {
      goto LABEL_46;
    }

    v11 = MEMORY[0x277CD47F0];
    v12 = @"Fallback authentication mechanism selected.";
    v13 = -3;
LABEL_41:
    preCompanion = [v11 errorWithCode:v13 message:v12];
    [(MechanismUI *)self finishRunWithResult:0 error:preCompanion];
    goto LABEL_42;
  }

  if (event == 6 && [(MechanismUI *)self _checkUiEventValid:6])
  {
    request4 = [(MechanismUI *)self findMechanismToRetryWithEventIdentifier:7];
    [request4 restartWithEventIdentifier:7 lastAttempt:0];
LABEL_28:
  }

LABEL_46:

  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)_checkUiEventValid:(int64_t)valid
{
  v10 = *MEMORY[0x277D85DE8];
  uiTransitioning = self->_uiTransitioning;
  if (uiTransitioning)
  {
    validCopy = valid;
    request = [(MechanismBase *)self request];
    v6 = [request log];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = validCopy;
      _os_log_impl(&dword_238B95000, v6, OS_LOG_TYPE_DEFAULT, "Ignoring event %d, because UI is transitioning.", v9, 8u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return !uiTransitioning;
}

- (void)uiSuccessWithResult:(id)result
{
  v29 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  request = [(MechanismBase *)self request];
  v6 = [request log];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_238B95000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ has received UI success", &v23, 0xCu);
  }

  v7 = [resultCopy objectForKeyedSubscript:@"Result"];
  [(MechanismBase *)self yieldPartialResult:v7];

  preCompanion = [(MechanismBase *)self->_backgroundMechanism preCompanion];
  if ([preCompanion eventIdentifier] != 5)
  {
    goto LABEL_7;
  }

  policyOptions = [(MechanismBase *)self policyOptions];
  v10 = [policyOptions objectForKeyedSubscript:&unk_284B787B0];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    preCompanion2 = [(MechanismBase *)self->_backgroundMechanism preCompanion];
    checkCredentialValid = [preCompanion2 checkCredentialValid];

    if ((checkCredentialValid & 1) == 0)
    {
      preCompanion = [MEMORY[0x277CD47F0] errorWithCode:-1023 message:@"Double press is required."];
      [(MechanismBase *)self failAuthenticationWithError:preCompanion];
LABEL_7:
    }
  }

  postCompanion = [(MechanismBase *)self->_backgroundMechanism postCompanion];

  if (postCompanion)
  {
    self->_ignoreUiDisappear = 1;
    request2 = [(MechanismBase *)self request];
    v16 = [request2 log];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      backgroundMechanism = self->_backgroundMechanism;
      postCompanion2 = [(MechanismBase *)backgroundMechanism postCompanion];
      v23 = 138412802;
      selfCopy2 = self;
      v25 = 2112;
      v26 = backgroundMechanism;
      v27 = 2112;
      v28 = postCompanion2;
      _os_log_impl(&dword_238B95000, v16, OS_LOG_TYPE_DEFAULT, "%@ will continue with %@ post-companion %@", &v23, 0x20u);
    }

    postCompanion3 = [(MechanismBase *)self->_backgroundMechanism postCompanion];
    internalOptions = [(MechanismBase *)self->_backgroundMechanism internalOptions];
    eventsDelegate = [(MechanismBase *)self->_backgroundMechanism eventsDelegate];
    [postCompanion3 runWithHints:internalOptions eventsDelegate:eventsDelegate reply:&__block_literal_global_69];
  }

  else
  {
    [(MechanismUI *)self finishRunWithResult:resultCopy error:0];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)uiFailureWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  request = [(MechanismBase *)self request];
  v6 = [request log];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = errorCopy;
    _os_log_impl(&dword_238B95000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ has received UI failure: %{public}@", &v10, 0x16u);
  }

  if (self->_fallbackReason)
  {
    request2 = [(MechanismBase *)self request];
    v8 = [request2 log];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_238B95000, v8, OS_LOG_TYPE_INFO, "ignoring UI failure, will show fallback UI", &v10, 2u);
    }

    self->_ignoreUiDisappear = 1;
  }

  else
  {
    [(MechanismUI *)self finishRunWithResult:0 error:errorCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)internalInfoWithReply:(id)reply
{
  internalInfo = self->_internalInfo;
  additionalControllerInternalInfo = self->_additionalControllerInternalInfo;
  replyCopy = reply;
  v6 = [(NSDictionary *)internalInfo dictionaryByMergingWith:additionalControllerInternalInfo];
  replyCopy[2](replyCopy, v6);
}

- (void)externalizedContextWithReply:(id)reply
{
  nonUiMechanism = self->_nonUiMechanism;
  replyCopy = reply;
  cachedExternalizationDelegate = [(MechanismBase *)nonUiMechanism cachedExternalizationDelegate];
  [cachedExternalizationDelegate externalizedContextWithReply:replyCopy];
}

- (void)authMethodWithReply:(id)reply
{
  v4 = MEMORY[0x277CD47F0];
  replyCopy = reply;
  v6 = [v4 internalErrorWithMessage:@"No auth blob on mechanism."];
  (*(reply + 2))(replyCopy, 0, v6);
}

- (void)_showUI
{
  v70 = *MEMORY[0x277D85DE8];
  _scheduleMechanisms = [(MechanismUI *)self _scheduleMechanisms];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ will run %@ on background and connect with remote controller %d", self, self->_backgroundMechanism, _scheduleMechanisms];
  if ([(NSMutableArray *)self->_continueMechanisms count])
  {
    v5 = [(MechanismUI *)v4 stringByAppendingFormat:@", then continue with %@", self->_continueMechanisms];

    v4 = v5;
  }

  if (self->_fallbackMechanism)
  {
    v6 = [(MechanismUI *)v4 stringByAppendingFormat:@", then fallback to %@", self->_fallbackMechanism];

    v4 = v6;
  }

  request = [(MechanismBase *)self request];
  v8 = [request log];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = v4;
    _os_log_impl(&dword_238B95000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v54 = v4;

  preservedPearlMechanism = self->_preservedPearlMechanism;
  if (preservedPearlMechanism)
  {
    biolockout = [(MechanismPearl *)preservedPearlMechanism biolockout];
    preCompanion = [(MechanismPearl *)self->_preservedPearlMechanism preCompanion];
    preCompanion2 = preCompanion;
    if ((biolockout & 1) == 0)
    {
      if (([preCompanion isCredentialValid] & 1) != 0 || (-[MechanismBase policyOptions](self, "policyOptions"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKeyedSubscript:", &unk_284B787B0), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "BOOLValue"), v14, v13, v15))
      {
        request2 = [(MechanismBase *)self request];
        v17 = [request2 log];

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = self->_preservedPearlMechanism;
          *buf = 138543618;
          selfCopy = self;
          v68 = 2114;
          v69 = v18;
          _os_log_impl(&dword_238B95000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ will preserve and retry %{public}@ as the small glyph on top of the passcode screen", buf, 0x16u);
        }

        v19 = [&unk_284B78A98 dictionaryByMergingWith:self->_additionalControllerInternalInfo];
        additionalControllerInternalInfo = self->_additionalControllerInternalInfo;
        self->_additionalControllerInternalInfo = v19;
      }
    }
  }

  else
  {
    preCompanion2 = [0 preCompanion];
  }

  backgroundMechanism = self->_backgroundMechanism;
  if (backgroundMechanism)
  {
    v52 = _scheduleMechanisms;
    v53 = preCompanion2;
    internalOptions = [(MechanismBase *)self internalOptions];
    v23 = [internalOptions objectForKeyedSubscript:@"AuditToken"];
    internalOptions2 = [(MechanismBase *)self internalOptions];
    v25 = [internalOptions2 objectForKeyedSubscript:@"Options"];
    v26 = [v25 objectForKey:&unk_284B787E0];
    v27 = self->_fallbackMechanism != 0;
    policyOptions = [(MechanismBase *)self policyOptions];
    v29 = [policyOptions objectForKeyedSubscript:&unk_284B787F8];
    v61 = 0;
    LODWORD(v27) = [(MechanismBase *)backgroundMechanism isTCCAllowedWithAuditTokenData:v23 optionAuditTokenData:v26 forcePrompt:v27 auditTokenUsage:v29 error:&v61];
    backgroundMechanism = v61;

    if (!v27)
    {
      [(MechanismBase *)self failAuthenticationWithError:backgroundMechanism];
      v37 = v54;
      preCompanion2 = v53;
      goto LABEL_41;
    }

    _scheduleMechanisms = v52;
    v30 = self->_backgroundMechanism;
    preCompanion2 = v53;
  }

  else
  {
    v30 = 0;
  }

  if ([(MechanismBase *)v30 eventIdentifier]== 7)
  {
    v31 = self->_fallbackMechanism != 0;
    v32 = self->_backgroundMechanism;
    [(MechanismBase *)v32 setHasFallback:v31];
    [(MechanismBase *)v32 setHasUI:_scheduleMechanisms != 0];
  }

  if ([(MechanismBase *)self->_backgroundMechanism eventIdentifier]== 1)
  {
    [(MechanismBase *)self->_backgroundMechanism setHasUI:_scheduleMechanisms != 0];
  }

  fallbackReason = self->_fallbackReason;
  if (fallbackReason)
  {
    v64 = @"FallbackReason";
    v65 = fallbackReason;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v35 = [v34 dictionaryByMergingWith:self->_additionalControllerInternalInfo];
    v36 = self->_additionalControllerInternalInfo;
    self->_additionalControllerInternalInfo = v35;
LABEL_25:

    goto LABEL_26;
  }

  if (_scheduleMechanisms != 2 || ![(NSMutableArray *)self->_continueMechanisms count])
  {
    goto LABEL_32;
  }

  v60 = 0;
  v38 = [(MechanismUI *)self _deviceIsInBioLockoutWithError:&v60];
  v39 = v60;
  v34 = v39;
  if (v38)
  {
    v62[0] = @"FallbackReason";
    v62[1] = @"ContinueEvent";
    v63[0] = v39;
    v40 = MEMORY[0x277CCABB0];
    firstObject = [(NSMutableArray *)self->_continueMechanisms firstObject];
    v42 = [v40 numberWithInteger:{objc_msgSend(firstObject, "eventIdentifier")}];
    v63[1] = v42;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];

    v43 = [v36 dictionaryByMergingWith:self->_additionalControllerInternalInfo];
    v44 = self->_additionalControllerInternalInfo;
    self->_additionalControllerInternalInfo = v43;

    goto LABEL_25;
  }

LABEL_26:

LABEL_32:
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __22__MechanismUI__showUI__block_invoke;
  v59[3] = &unk_278A629B8;
  v59[4] = self;
  v45 = MEMORY[0x23EE73C30](v59);
  v46 = [(MechanismBase *)self->_backgroundMechanism requiresHostingControllerUiWithEventProcessing:self->_eventProcessing];
  v47 = self->_backgroundMechanism;
  if (v46)
  {
    remoteViewController = [(MechanismBase *)v47 remoteViewController];
    v49 = +[RemoteUIManager sharedInstance];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __22__MechanismUI__showUI__block_invoke_4;
    v56[3] = &unk_278A629E0;
    v56[4] = self;
    v57 = v45;
    v58 = remoteViewController;
    [v49 anonymousListenerForHostedController:remoteViewController mechanism:self reply:v56];
  }

  else if ([(MechanismBase *)v47 requiresRemoteViewControllerUiWithEventProcessing:self->_eventProcessing])
  {
    [(MechanismUI *)self _setupMechanismForRemoteViewController:self->_backgroundMechanism];
    v45[2](v45, 0);
  }

  else
  {
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __22__MechanismUI__showUI__block_invoke_5;
    v55[3] = &unk_278A62990;
    v55[4] = self;
    v55[5] = _scheduleMechanisms;
    v50 = MEMORY[0x23EE73C30](v55);
    if ([(MechanismBase *)self->_backgroundMechanism precedesUI])
    {
      [(MechanismBase *)self->_backgroundMechanism setShowUIBlock:v50];
      [(MechanismUI *)self _startBackgroundMechanism];
    }

    else
    {
      v50[2](v50);
    }
  }

  v37 = v54;

LABEL_41:
  v51 = *MEMORY[0x277D85DE8];
}

void __22__MechanismUI__showUI__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = +[RemoteUIManager sharedInstance];
  [v4 dismissRemoteUI:*(*(a1 + 32) + 240) uiMechanism:MEMORY[0x277D85DD0] uiDisappeared:3221225472 shouldIdle:__22__MechanismUI__showUI__block_invoke_2 reply:{&unk_278A62990, *(a1 + 32), a2}];
}

uint64_t __22__MechanismUI__showUI__block_invoke_2(uint64_t a1)
{
  v2 = +[RemoteUIManager sharedInstance];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __22__MechanismUI__showUI__block_invoke_3;
  v9 = &unk_278A62968;
  v10 = v4;
  [v2 prepareForHostedController:v3 mechanism:? reply:?];

  return [*(a1 + 32) _startBackgroundMechanism];
}

uint64_t __22__MechanismUI__showUI__block_invoke_3(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) finishRunWithResult:0 error:a3];
  }

  return result;
}

uint64_t __22__MechanismUI__showUI__block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _setupMechanismForHostingController:*(*(a1 + 32) + 256) listener:a2];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __22__MechanismUI__showUI__block_invoke_5(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v3 + 8))
  {
    v4 = [v2 _prepareInternalInfoForRemoteController];
    v5 = _os_feature_enabled_impl();
    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [v6 request];
      v8 = [v7 log];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238B95000, v8, OS_LOG_TYPE_DEFAULT, "Experimental path to add landscape support for TouchID", buf, 2u);
      }

      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = v10[46];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __22__MechanismUI__showUI__block_invoke_107;
      v21[3] = &unk_278A62A08;
      v21[4] = v10;
      v23 = v9;
      v22 = v4;
      [v10 _restartRemoteUIBeforePresentationIfNeededForDestinationController:v9 withSourceController:v11 completionHandler:v21];
    }

    else
    {
      [v6 _transitionToController:*(a1 + 40) internalInfo:v4];
    }

    goto LABEL_9;
  }

  if (v2[32])
  {
    v4 = +[RemoteUIManager sharedInstance];
    v12 = *(a1 + 32);
    v13 = *(v12 + 240);
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __22__MechanismUI__showUI__block_invoke_6;
    v28 = &unk_278A62920;
    v29 = v12;
    [v4 dismissRemoteUI:v13 uiMechanism:? uiDisappeared:? shouldIdle:? reply:?];
LABEL_9:

    return;
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = v2[31];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v20 = [v14 stringWithFormat:@"Default UI for %@", v17];

  v18 = *(a1 + 32);
  v19 = [MEMORY[0x277CD47F0] errorPlatformDoesNotSupportAction:v20];
  [v18 failAuthenticationWithError:v19];
}

uint64_t __22__MechanismUI__showUI__block_invoke_107(uint64_t a1)
{
  *(*(a1 + 32) + 368) = *(a1 + 48);
  v1 = *(a1 + 40);
  return [*(a1 + 32) _transitionToController:? internalInfo:?];
}

- (int64_t)_scheduleMechanisms
{
  v3 = objc_alloc_init(MechanismScheduler);
  v4 = [(MechanismScheduler *)v3 scheduleMechanismUIWithState:self];

  return v4;
}

- (id)_prepareInternalInfoForRemoteController
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(PolicyOptionsSanitizer);
  v4 = [(PolicyOptionsSanitizer *)v3 additionalInternalInfoForMechanismUIWithState:self];

  v5 = [v4 objectForKey:@"Options"];
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_policyOptions];
    [v6 addEntriesFromDictionary:v5];
    v21 = @"Options";
    v22[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v8 = [v7 dictionaryByMergingWith:self->_additionalControllerInternalInfo];
    additionalControllerInternalInfo = self->_additionalControllerInternalInfo;
    self->_additionalControllerInternalInfo = v8;
  }

  v10 = [v4 objectForKey:@"DTOOptions"];
  if ([v10 count])
  {
    v19 = @"DTOOptions";
    v20 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v12 = [v11 dictionaryByMergingWith:self->_additionalControllerInternalInfo];
    v13 = self->_additionalControllerInternalInfo;
    self->_additionalControllerInternalInfo = v12;
  }

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_internalInfo];
  v15 = v14;
  if (self->_additionalControllerInternalInfo)
  {
    v16 = [v14 dictionaryByMergingWith:?];

    v15 = v16;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_restartRemoteUIBeforePresentationIfNeededForDestinationController:(int64_t)controller withSourceController:(int64_t)sourceController completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(MechanismUI *)self _shouldRestartRemoteUIBeforePresentingDestinationController:controller withSourceController:sourceController])
  {
    request = [(MechanismBase *)self request];
    v10 = [request log];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238B95000, v10, OS_LOG_TYPE_DEFAULT, "Restarting RemoteUI", buf, 2u);
    }

    v11 = +[RemoteUIManager sharedInstance];
    remoteUI = self->_remoteUI;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __121__MechanismUI__restartRemoteUIBeforePresentationIfNeededForDestinationController_withSourceController_completionHandler___block_invoke;
    v13[3] = &unk_278A62A30;
    v13[4] = self;
    v14 = handlerCopy;
    [v11 dismissRemoteUI:remoteUI uiMechanism:self uiDisappeared:0 shouldIdle:0 reply:v13];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

uint64_t __121__MechanismUI__restartRemoteUIBeforePresentationIfNeededForDestinationController_withSourceController_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 240);
  *(v2 + 240) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (BOOL)_shouldRestartRemoteUIBeforePresentingDestinationController:(int64_t)controller withSourceController:(int64_t)sourceController
{
  if (controller != 2 || sourceController != 1 || !self->_remoteUI || !objc_opt_class())
  {
    return 0;
  }

  v4 = MEMORY[0x277D24098];

  return [v4 isIdiomPhone];
}

- (void)_startBackgroundMechanism
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138412546;
  selfCopy = self;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_238B95000, log, OS_LOG_TYPE_DEBUG, "%@ is starting %@ on background", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __40__MechanismUI__startBackgroundMechanism__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (*(v7 + 256))
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __40__MechanismUI__startBackgroundMechanism__block_invoke_2;
    v28[3] = &unk_278A62A58;
    v28[4] = v7;
    v8 = MEMORY[0x23EE73C30](v28);
    v9 = *(a1 + 32);
    if (*(v9 + 352) == 1)
    {
      *(v9 + 352) = 0;
      v10 = [*(a1 + 32) request];
      v11 = [v10 log];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        *buf = 138412290;
        v30 = v12;
        v13 = "%@ was canceled by passcode UI, ignoring result";
LABEL_9:
        _os_log_impl(&dword_238B95000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
      }
    }

    else
    {
      if (*(a1 + 40) == *(v9 + 360))
      {
        if (!v5)
        {
          if (![MEMORY[0x277CD47F0] error:v6 hasCode:-1023])
          {
            goto LABEL_11;
          }

          v21 = [*(a1 + 32) policyOptions];
          v22 = [v21 objectForKeyedSubscript:&unk_284B787B0];
          v23 = [v22 BOOLValue];

          if (!v23)
          {
            goto LABEL_11;
          }

          v9 = *(a1 + 32);
        }

        *(v9 + 353) = 1;
        v17 = [*(a1 + 32) request];
        v18 = [v17 log];

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_238B95000, v18, OS_LOG_TYPE_DEFAULT, "Signaling Pearl match to passcode UI", buf, 2u);
        }

        v19 = *(a1 + 32);
        v20 = *(v19 + 240);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __40__MechanismUI__startBackgroundMechanism__block_invoke_121;
        v24[3] = &unk_278A62A80;
        v24[4] = v19;
        v27 = v8;
        v25 = v5;
        v26 = v6;
        [v20 mechanismEvent:2 reply:v24];

        goto LABEL_11;
      }

      if (*(v9 + 353) != 1)
      {
        (v8)[2](v8, v5, v6);
        goto LABEL_11;
      }

      v14 = [v9 request];
      v11 = [v14 log];

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 40);
        *buf = 138412290;
        v30 = v15;
        v13 = "%@ already matched, ignoring result.";
        goto LABEL_9;
      }
    }

LABEL_11:
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __40__MechanismUI__startBackgroundMechanism__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 256);
  *(v5 + 256) = 0;
  v7 = a3;
  v8 = a2;

  [*(a1 + 32) finishRunWithResult:v8 error:v7];
}

uint64_t __40__MechanismUI__startBackgroundMechanism__block_invoke_121(void *a1)
{
  v2 = *(a1[4] + 256);
  v3 = [MEMORY[0x277CD47F0] errorWithCode:-4 message:@"Canceled by biometry match."];
  [v2 failAuthenticationWithError:v3];

  v4 = a1[6];
  v5 = a1[5];
  v6 = *(a1[7] + 16);

  return v6();
}

- (void)_transitionToController:(int64_t)controller internalInfo:(id)info
{
  infoCopy = info;
  if ([(MechanismUI *)self _checkCallerForeground])
  {
    if (self->_remoteUI)
    {
      self->_uiTransitioning = 1;
      remoteUI = self->_remoteUI;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __52__MechanismUI__transitionToController_internalInfo___block_invoke_4;
      v10[3] = &unk_278A62968;
      v10[4] = self;
      [(LACRemoteUI *)remoteUI transitionToController:controller internalInfo:infoCopy completionHandler:v10];
    }

    else
    {
      v8 = +[RemoteUIManager sharedInstance];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __52__MechanismUI__transitionToController_internalInfo___block_invoke;
      v14[3] = &unk_278A62AD0;
      v14[4] = self;
      v9 = __52__MechanismUI__transitionToController_internalInfo___block_invoke(v14);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __52__MechanismUI__transitionToController_internalInfo___block_invoke_2;
      v11[3] = &unk_278A62AF8;
      v11[4] = self;
      controllerCopy = controller;
      v12 = infoCopy;
      [v8 showUIWithParams:v9 reply:v11];
    }
  }
}

RemoteUIParams *__52__MechanismUI__transitionToController_internalInfo___block_invoke(uint64_t a1)
{
  v2 = [[RemoteUIParams alloc] initWithMechanism:*(a1 + 32)];
  v3 = [*(a1 + 32) notificationCenter];
  [(RemoteUIParams *)v2 setNotificationCenter:v3];

  return v2;
}

uint64_t __52__MechanismUI__transitionToController_internalInfo___block_invoke_2(void *a1, int a2, uint64_t a3)
{
  v5 = a1[4];
  if (a2)
  {
    v6 = v5[30];
    v8 = a1[5];
    v7 = a1[6];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__MechanismUI__transitionToController_internalInfo___block_invoke_3;
    v10[3] = &unk_278A62968;
    v10[4] = v5;
    return [v6 transitionToController:v7 internalInfo:v8 completionHandler:v10];
  }

  else
  {

    return [v5 finishRunWithResult:0 error:a3];
  }
}

uint64_t __52__MechanismUI__transitionToController_internalInfo___block_invoke_3(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) finishRunWithResult:0 error:a3];
  }

  return result;
}

uint64_t __52__MechanismUI__transitionToController_internalInfo___block_invoke_4(uint64_t result, char a2, uint64_t a3)
{
  *(*(result + 32) + 337) = 0;
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) finishRunWithResult:0 error:a3];
  }

  return result;
}

- (id)_nameForRemoteUIController:(int64_t)controller
{
  if ((controller - 2) > 2)
  {
    return 0;
  }

  else
  {
    return off_278A62B40[controller - 2];
  }
}

- (id)_hostedSceneConfigurationForRemoteUIController:(int64_t)controller endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if ((controller - 2) > 2)
  {
    v12 = 0;
  }

  else
  {
    v7 = **(&unk_278A62B58 + controller - 2);
    v8 = objc_alloc(MEMORY[0x277D23FF0]);
    v9 = MEMORY[0x277CCABB0];
    request = [(MechanismBase *)self request];
    v11 = [v9 numberWithUnsignedInt:{objc_msgSend(request, "identifier")}];
    v12 = [v8 initWithAngelIdentifier:@"com.apple.LocalAuthenticationUIService" sceneIdentifier:v7 endpoint:endpointCopy requestId:v11];
  }

  return v12;
}

- (void)_setupMechanismForRemoteViewController:(id)controller
{
  v17 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  request = [(MechanismBase *)self request];
  v6 = [request log];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = controllerCopy;
    _os_log_impl(&dword_238B95000, v6, OS_LOG_TYPE_DEFAULT, "RemoteViewController requested by: %{public}@", buf, 0xCu);
  }

  v7 = -[MechanismUI _nameForRemoteUIController:](self, "_nameForRemoteUIController:", [controllerCopy remoteViewController]);
  v8 = v7;
  if (v7)
  {
    v13[0] = &unk_284B78810;
    v13[1] = &unk_284B78828;
    v14[0] = @"com.apple.CoreAuthUI";
    v14[1] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [controllerCopy setActivationParams:v9];
  }

  else
  {
    v10 = MEMORY[0x277CD47F0];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"default UI for event %d", objc_msgSend(controllerCopy, "eventIdentifier")];
    v11 = [v10 errorPlatformDoesNotSupportAction:v9];
    [(MechanismBase *)self failAuthenticationWithError:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setupMechanismForHostingController:(id)controller listener:(id)listener
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  listenerCopy = listener;
  request = [(MechanismBase *)self request];
  v9 = [request log];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = controllerCopy;
    _os_log_impl(&dword_238B95000, v9, OS_LOG_TYPE_DEFAULT, "Hosted scene requested by: %{public}@", buf, 0xCu);
  }

  remoteViewController = [controllerCopy remoteViewController];
  endpoint = [listenerCopy endpoint];
  v12 = [(MechanismUI *)self _hostedSceneConfigurationForRemoteUIController:remoteViewController endpoint:endpoint];

  if (v12)
  {
    v18 = &unk_284B78840;
    v19 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [controllerCopy setActivationParams:v13];

    [(MechanismUI *)self _activateListener:listenerCopy];
  }

  else
  {
    v14 = MEMORY[0x277CD47F0];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"default UI for event %d", objc_msgSend(controllerCopy, "eventIdentifier")];
    v16 = [v14 errorPlatformDoesNotSupportAction:v15];
    [(MechanismBase *)self failAuthenticationWithError:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)subMechanismCanRestart:(id)restart
{
  v13 = *MEMORY[0x277D85DE8];
  restartCopy = restart;
  request = [(MechanismBase *)self request];
  v6 = [request log];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = restartCopy;
    _os_log_impl(&dword_238B95000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ will restart %{public}@", &v9, 0x16u);
  }

  retryMechanism = self->_retryMechanism;
  self->_retryMechanism = restartCopy;

  v8 = *MEMORY[0x277D85DE8];
}

- (void)companionStateChanged:(id)changed newState:(BOOL)state
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (state)
  {
    v10 = @"Result";
    v8[0] = &unk_284B78858;
    v8[1] = &unk_284B78870;
    v9[0] = MEMORY[0x277CBEC38];
    v9[1] = MEMORY[0x277CBEC38];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    v11[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [(MechanismBase *)self succeedAuthenticationWithResult:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)fallbackToIdentifier:(int64_t)identifier
{
  eventIdentifier = [(MechanismBase *)self->_fallbackMechanism eventIdentifier];
  if (eventIdentifier == identifier)
  {
    objc_storeStrong(&self->_nonUiMechanism, self->_fallbackMechanism);
    fallbackMechanism = self->_fallbackMechanism;
    self->_fallbackMechanism = 0;

    silentFailure = [(MechanismBase *)self->_backgroundMechanism silentFailure];
    if (silentFailure)
    {
      objc_storeStrong(&self->_fallbackReason, silentFailure);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __36__MechanismUI_fallbackToIdentifier___block_invoke;
    v15[3] = &unk_278A62B20;
    v8 = silentFailure;
    v16 = v8;
    v9 = __36__MechanismUI_fallbackToIdentifier___block_invoke(v15);
    if ([(MechanismBase *)self->_backgroundMechanism eventIdentifier]== 7)
    {
      backgroundMechanism = self->_backgroundMechanism;
      v11 = backgroundMechanism;
      v12 = v11;
      if (v11)
      {
        [(MechanismBase *)v11 setNoRestartWithDoublePress:1];
        if (v9)
        {
          objc_storeStrong(&self->_preservedPearlMechanism, backgroundMechanism);
          [(MechanismPearl *)self->_preservedPearlMechanism setEventsDelegate:self];
          preCompanion = [(MechanismPearl *)self->_preservedPearlMechanism preCompanion];
          [preCompanion setEventsDelegate:self];
        }

        else
        {
          [(MechanismBase *)v12 pause:1 forEvent:7 error:0];
        }
      }
    }

    else
    {
      v12 = 0;
    }

    [(MechanismUI *)self _showUI];
  }

  return eventIdentifier == identifier;
}

BOOL __36__MechanismUI_fallbackToIdentifier___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return 0;
  }

  v2 = [MEMORY[0x277D240D0] sharedInstance];
  v3 = [v2 isActive];

  result = 1;
  if (v3)
  {
    v4 = [MEMORY[0x277D24050] sharedInstance];
    v5 = [v4 isDynamicIslandAvailable];

    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

- (void)event:(int64_t)event params:(id)params reply:(id)reply
{
  paramsCopy = params;
  replyCopy = reply;
  if (event == 5)
  {
    v15 = [paramsCopy objectForKeyedSubscript:&unk_284B788A0];
    v10 = v15;
    if (v15)
    {
      remoteUI = self->_remoteUI;
      if ([v15 BOOLValue])
      {
        v17 = 12;
      }

      else
      {
        v17 = 13;
      }

      [(LACRemoteUI *)remoteUI mechanismEvent:v17 reply:&__block_literal_global_171];
      eventsDelegate = [(MechanismBase *)self eventsDelegate];
      [eventsDelegate event:5 params:paramsCopy reply:&__block_literal_global_174];
    }

    goto LABEL_16;
  }

  if (event != 7)
  {
    goto LABEL_17;
  }

  v9 = [paramsCopy objectForKeyedSubscript:&unk_284B78888];
  v10 = v9;
  if (v9)
  {
    integerValue = [v9 integerValue];
    switch(integerValue)
    {
      case 3:
        v12 = self->_remoteUI;
        v13 = &__block_literal_global_164;
        v14 = 1;
        goto LABEL_15;
      case 1:
        v12 = self->_remoteUI;
        v13 = &__block_literal_global_166;
        v14 = 4;
        goto LABEL_15;
      case 0:
        v12 = self->_remoteUI;
        v13 = &__block_literal_global_162;
        v14 = 3;
LABEL_15:
        [(LACRemoteUI *)v12 mechanismEvent:v14 reply:v13];
        break;
    }
  }

LABEL_16:

LABEL_17:
}

- (BOOL)clientIsUsingCAPI
{
  v2 = [(NSDictionary *)self->_internalInfo objectForKeyedSubscript:@"CApiOrigin"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)passphraseShouldBeFirstMechanism
{
  v2 = [(NSDictionary *)self->_policyOptions objectForKey:&unk_284B788B8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)passcodeShouldBeFirstMechanism
{
  if ([(MechanismUI *)self _deviceIsInBioLockoutWithError:0])
  {
    return 1;
  }

  policyOptions = self->_policyOptions;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23FA8]];
  v6 = [(NSDictionary *)policyOptions objectForKey:v5];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (BOOL)_deviceIsInBioLockoutWithError:(id *)error
{
  mEMORY[0x277D24010] = [MEMORY[0x277D24010] sharedInstance];
  v6 = [(NSDictionary *)self->_internalInfo objectForKeyedSubscript:@"UserId"];
  request = [(MechanismBase *)self request];
  LOBYTE(error) = [mEMORY[0x277D24010] isLockedOutForUser:v6 request:request error:error];

  return error;
}

- (void)_activateListener:(id)listener
{
  listenerCopy = listener;
  anonymousListeners = self->_anonymousListeners;
  v8 = listenerCopy;
  if (!anonymousListeners)
  {
    v6 = objc_opt_new();
    v7 = self->_anonymousListeners;
    self->_anonymousListeners = v6;

    listenerCopy = v8;
    anonymousListeners = self->_anonymousListeners;
  }

  [(NSMutableArray *)anonymousListeners addObject:listenerCopy];
  [v8 activate];
}

- (void)_invalidateListeners
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_anonymousListeners;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)finishRunWithResult:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 240);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_238B95000, a2, OS_LOG_TYPE_DEBUG, "fallback due to power/thermal (_remoteUi: %@)", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)connectRemoteUI:(uint64_t)a1 requestID:(NSObject *)a2 reply:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_238B95000, a2, OS_LOG_TYPE_ERROR, "Connection failed with error %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end