@interface AXAuditAutomationSupport
+ (__AXUIElement)createAXElementForAuditIssue:(id)issue;
+ (id)_currentTimestamp;
+ (id)longDescriptionForAuditIssue:(id)issue;
+ (id)sharedManager;
+ (id)shortDescriptionForAuditIssue:(id)issue;
- (AXAuditAutomationDelegate)delegate;
- (AXAuditAutomationSupport)init;
- (BOOL)_initializeAXObserverIfNeeded;
- (id)_setupWarningsFromAuditTypes;
- (id)fetchScreenshot;
- (void)_captureScreenshot;
- (void)_informDelegateOfResults:(id)results error:(id)error;
- (void)_runAudit;
- (void)_runNextAuditIfNeeded;
- (void)_screenChangedNotification;
- (void)_screenChangedThrottled;
- (void)_sendResultsToDelegate:(id)delegate;
- (void)_setupAudit;
- (void)_startContinuousAudit;
- (void)auditer:(id)auditer didCompleteWithResults:(id)results;
- (void)setAuditWarningsToIgnore:(id)ignore;
- (void)startAuditWithCompletionBlock:(id)block;
- (void)startContinuousAudit;
- (void)startSingleAudit;
- (void)stopContinuousAudit;
@end

@implementation AXAuditAutomationSupport

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AXAuditAutomationSupport_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_6 != -1)
  {
    dispatch_once(&sharedManager_onceToken_6, block);
  }

  v2 = sharedManager_instance_6;

  return v2;
}

uint64_t __41__AXAuditAutomationSupport_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_instance_6 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)shortDescriptionForAuditIssue:(id)issue
{
  issueCopy = issue;
  v4 = +[AXAuditIssueDescriptionManager sharedManager];
  v5 = [v4 shortTitleForAuditIssue:issueCopy];

  return v5;
}

+ (id)longDescriptionForAuditIssue:(id)issue
{
  issueCopy = issue;
  v4 = +[AXAuditIssueDescriptionManager sharedManager];
  v5 = [v4 longDescriptionForAuditIssue:issueCopy];

  return v5;
}

+ (__AXUIElement)createAXElementForAuditIssue:(id)issue
{
  auditElement = [issue auditElement];
  createAxElementRefForXCTest = [auditElement createAxElementRefForXCTest];

  return createAxElementRefForXCTest;
}

- (AXAuditAutomationSupport)init
{
  v11.receiver = self;
  v11.super_class = AXAuditAutomationSupport;
  v2 = [(AXAuditAutomationSupport *)&v11 init];
  if (v2)
  {
    v3 = +[AXAuditPluginManager sharedManager];
    [v3 loadAuditBundles];

    v4 = dispatch_queue_create("com.apple.axAudit.automation", 0);
    auditQueue = v2->__auditQueue;
    v2->__auditQueue = v4;

    v6 = dispatch_queue_create("com.apple.accessibilityAudit.automation.background", 0);
    backgroudQueue = v2->__backgroudQueue;
    v2->__backgroudQueue = v6;

    v8 = [AXAuditThrottler throttlerWithInterval:v2 target:sel__screenChangedThrottled selector:v2->__backgroudQueue queue:1 alwaysReschedule:1.75];
    screenChangedThrottler = v2->__screenChangedThrottler;
    v2->__screenChangedThrottler = v8;
  }

  return v2;
}

+ (id)_currentTimestamp
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v2 setTimeZone:systemTimeZone];

  [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v5 = [v2 stringFromDate:v3];

  return v5;
}

- (void)_setupAudit
{
  v3 = objc_opt_new();
  [(AXAuditAutomationSupport *)self set_auditor:v3];

  _auditor = [(AXAuditAutomationSupport *)self _auditor];
  [_auditor setDelegate:self];

  v5 = +[AXAuditAutomationSupport _currentTimestamp];
  [(AXAuditAutomationSupport *)self set_auditTimestamp:v5];

  targetPid = [(AXAuditAutomationSupport *)self targetPid];
  _auditor2 = [(AXAuditAutomationSupport *)self _auditor];
  [_auditor2 setTargetPid:targetPid];

  v8 = +[AXAuditScreenshotManager sharedManager];
  [v8 clear];
}

- (void)_runAudit
{
  v41 = *MEMORY[0x277D85DE8];
  if ([(AXAuditAutomationSupport *)self targetPid])
  {
    AXAuditCurrentApplications();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v3 = v38 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v36;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v35 + 1) + 8 * v7);
        v9 = AXAuditPidForElement(v8);
        if ([(AXAuditAutomationSupport *)self targetPid]== v9)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v35 objects:v40 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v10 = v8;

      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_10:
    }
  }

  v10 = [MEMORY[0x277CCA9B8] _axAudit_error:-902 description:{@"Invalid target app %i", -[AXAuditAutomationSupport targetPid](self, "targetPid")}];
  if (v10)
  {
    [(AXAuditAutomationSupport *)self _informDelegateOfResults:0 error:v10];
  }

  else
  {
LABEL_14:
    v28 = v10;
    [(AXAuditAutomationSupport *)self _setupAudit];
    _completionBlock = [(AXAuditAutomationSupport *)self _completionBlock];

    if (_completionBlock)
    {
      v12 = +[AXAuditPluginManager sharedManager];
      _auditQueue = [(AXAuditAutomationSupport *)self _auditQueue];
      _auditor = [(AXAuditAutomationSupport *)self _auditor];
      [_auditor setAuditQueue:_auditQueue];
    }

    v15 = [MEMORY[0x277CBEB58] set];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    auditTypes = [(AXAuditAutomationSupport *)self auditTypes];
    v17 = [auditTypes countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(auditTypes);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          _auditor2 = [(AXAuditAutomationSupport *)self _auditor];
          allSupportedAuditTypes = [_auditor2 allSupportedAuditTypes];
          v24 = [allSupportedAuditTypes containsObject:v21];

          if (v24)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [auditTypes countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v18);
    }

    _auditQueue2 = [(AXAuditAutomationSupport *)self _auditQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__AXAuditAutomationSupport__runAudit__block_invoke;
    block[3] = &unk_278BE2CA8;
    block[4] = self;
    v30 = v15;
    v26 = v15;
    dispatch_async(_auditQueue2, block);

    v10 = v28;
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __37__AXAuditAutomationSupport__runAudit__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _captureScreenshot];
  v3 = [*(a1 + 32) _auditor];
  v2 = [*(a1 + 40) allObjects];
  [v3 startWithAuditTypes:v2];
}

- (id)_setupWarningsFromAuditTypes
{
  [(AXAuditAutomationSupport *)self setAuditWarningsToIgnore:0];
  [(AXAuditAutomationSupport *)self setAuditWarningsToCapture:0];
  return 0;
}

- (void)startAuditWithCompletionBlock:(id)block
{
  [(AXAuditAutomationSupport *)self set_completionBlock:block];
  _setupWarningsFromAuditTypes = [(AXAuditAutomationSupport *)self _setupWarningsFromAuditTypes];
  v5 = _setupWarningsFromAuditTypes;
  if (_setupWarningsFromAuditTypes)
  {
    [(AXAuditAutomationSupport *)self _informDelegateOfResults:0 error:_setupWarningsFromAuditTypes];
  }

  else
  {
    [(AXAuditAutomationSupport *)self startSingleAudit];
  }
}

- (void)_informDelegateOfResults:(id)results error:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  errorCopy = error;
  delegate = [(AXAuditAutomationSupport *)self delegate];

  if (delegate)
  {
    delegate2 = [(AXAuditAutomationSupport *)self delegate];
    [delegate2 automationSupport:self didFindResults:resultsCopy success:errorCopy == 0];
  }

  _completionBlock = [(AXAuditAutomationSupport *)self _completionBlock];

  if (_completionBlock)
  {
    v25 = errorCopy;
    v11 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = resultsCopy;
    v12 = resultsCopy;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        v16 = 0;
        do
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v31 + 1) + 8 * v16);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          allIssues = [v17 allIssues];
          v19 = [allIssues countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v28;
            do
            {
              v22 = 0;
              do
              {
                if (*v28 != v21)
                {
                  objc_enumerationMutation(allIssues);
                }

                [v11 addObject:*(*(&v27 + 1) + 8 * v22++)];
              }

              while (v20 != v22);
              v20 = [allIssues countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v20);
          }

          ++v16;
        }

        while (v16 != v14);
        v14 = [v12 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v14);
    }

    _completionBlock2 = [(AXAuditAutomationSupport *)self _completionBlock];
    errorCopy = v25;
    (_completionBlock2)[2](_completionBlock2, v11, v25);

    [(AXAuditAutomationSupport *)self set_completionBlock:0];
    resultsCopy = v26;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_runNextAuditIfNeeded
{
  if ([(AXAuditAutomationSupport *)self _singleAuditPendingCount]< 1)
  {
    if ([(AXAuditAutomationSupport *)self _runningContinuousAudit])
    {

      [(AXAuditAutomationSupport *)self _startContinuousAudit];
    }
  }

  else
  {

    [(AXAuditAutomationSupport *)self _runAudit];
  }
}

- (void)_startContinuousAudit
{
  if (![(AXAuditAutomationSupport *)self _registeredForNotifications])
  {
    [(AXAuditAutomationSupport *)self _runAudit];

    [(AXAuditAutomationSupport *)self _registerForAXNotifications:1];
  }
}

- (void)startSingleAudit
{
  runningContinuousAudit = [(AXAuditAutomationSupport *)self runningContinuousAudit];
  [(AXAuditAutomationSupport *)self set_singleAuditPendingCount:[(AXAuditAutomationSupport *)self _singleAuditPendingCount]+ 1];
  if (!runningContinuousAudit)
  {

    [(AXAuditAutomationSupport *)self _runNextAuditIfNeeded];
  }
}

- (void)startContinuousAudit
{
  [(AXAuditAutomationSupport *)self set_runningContinuousAudit:1];

  [(AXAuditAutomationSupport *)self _runNextAuditIfNeeded];
}

- (void)stopContinuousAudit
{
  if ([(AXAuditAutomationSupport *)self _runningContinuousAudit])
  {
    [(AXAuditAutomationSupport *)self set_runningContinuousAudit:0];

    [(AXAuditAutomationSupport *)self _stopContinuousAudit];
  }
}

- (void)_captureScreenshot
{
  _auditTimestamp = [(AXAuditAutomationSupport *)self _auditTimestamp];
  v2 = +[AXAuditPluginManager sharedManager];
  platformPlugin = [v2 platformPlugin];
  v4 = [platformPlugin screenshotInfoForTransportWithFrame:{0.0, 0.0, 0.0, 0.0}];

  if (v4)
  {
    v5 = +[AXAuditScreenshotManager sharedManager];
    [v5 addScreenshotWithInfo:v4 timestamp:_auditTimestamp completion:&__block_literal_global_25];
  }
}

- (id)fetchScreenshot
{
  v2 = +[AXAuditPluginManager sharedManager];
  platformPlugin = [v2 platformPlugin];
  v4 = [platformPlugin screenshotInfoForTransportWithFrame:{0.0, 0.0, 0.0, 0.0}];

  return v4;
}

- (void)auditer:(id)auditer didCompleteWithResults:(id)results
{
  resultsCopy = results;
  _completionBlock = [(AXAuditAutomationSupport *)self _completionBlock];

  if (_completionBlock)
  {
    _auditTimestamp = [(AXAuditAutomationSupport *)self _auditTimestamp];
    updateTimestampOfResults(resultsCopy, _auditTimestamp);

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__AXAuditAutomationSupport_auditer_didCompleteWithResults___block_invoke;
    block[3] = &unk_278BE2CD0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    [(AXAuditAutomationSupport *)self _sendResultsToDelegate:resultsCopy];
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__AXAuditAutomationSupport_auditer_didCompleteWithResults___block_invoke_2;
    v8[3] = &unk_278BE2CA8;
    v8[4] = self;
    v9 = resultsCopy;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

uint64_t __59__AXAuditAutomationSupport_auditer_didCompleteWithResults___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _singleAuditPendingCount];
  if (result >= 1)
  {
    v3 = *(a1 + 32);
    v4 = [v3 _singleAuditPendingCount] - 1;

    return [v3 set_singleAuditPendingCount:v4];
  }

  return result;
}

void __59__AXAuditAutomationSupport_auditer_didCompleteWithResults___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) set_auditor:0];
  if ([*(a1 + 32) _singleAuditPendingCount] > 0 || objc_msgSend(*(a1 + 32), "_runningContinuousAudit"))
  {
    v2 = [*(a1 + 32) delegate];

    if (v2)
    {
      v3 = *(a1 + 40);
      v4 = [*(a1 + 32) _auditTimestamp];
      updateTimestampOfResults(v3, v4);

      if ([*(a1 + 32) _singleAuditPendingCount] >= 1)
      {
        [*(a1 + 32) set_singleAuditPendingCount:{objc_msgSend(*(a1 + 32), "_singleAuditPendingCount") - 1}];
      }

      [*(a1 + 32) _sendResultsToDelegate:*(a1 + 40)];
      if (([*(a1 + 32) _runningContinuousAudit] & 1) == 0)
      {
        v5 = *(a1 + 32);

        [v5 _runNextAuditIfNeeded];
      }
    }
  }
}

- (void)_sendResultsToDelegate:(id)delegate
{
  v57 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  auditWarningsToCapture = [(AXAuditAutomationSupport *)self auditWarningsToCapture];
  v6 = [auditWarningsToCapture count];

  elementIdentifiersToIgnore = [(AXAuditAutomationSupport *)self elementIdentifiersToIgnore];
  v40 = [elementIdentifiersToIgnore count];
  v41 = v6;

  if (v6 | v40)
  {
    selfCopy = self;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v29 = delegateCopy;
    obj = delegateCopy;
    v32 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (!v32)
    {
      goto LABEL_38;
    }

    v31 = *v51;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v51 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v8;
        v9 = *(*(&v50 + 1) + 8 * v8);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        caseResults = [v9 caseResults];
        v36 = [caseResults countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v36)
        {
          v35 = *v47;
          do
          {
            v10 = 0;
            do
            {
              if (*v47 != v35)
              {
                objc_enumerationMutation(caseResults);
              }

              v37 = *(*(&v46 + 1) + 8 * v10);
              v38 = v10;
              auditIssues = [v37 auditIssues];
              v12 = objc_opt_new();
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v13 = auditIssues;
              v14 = [v13 countByEnumeratingWithState:&v42 objects:v54 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v43;
                do
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v43 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v42 + 1) + 8 * i);
                    if (v41)
                    {
                      issueClassification = [*(*(&v42 + 1) + 8 * i) issueClassification];
                      v20 = [MEMORY[0x277CCABB0] numberWithLong:issueClassification];
                      auditWarningsToCapture2 = [(AXAuditAutomationSupport *)selfCopy auditWarningsToCapture];
                      v22 = [auditWarningsToCapture2 containsObject:v20];

                      if (v22)
                      {
                        v23 = v40 == 0;
                      }

                      else
                      {
                        v23 = 1;
                      }

                      if (v23)
                      {
                        if (v22)
                        {
                          goto LABEL_31;
                        }

                        continue;
                      }
                    }

                    else if (!v40)
                    {
                      goto LABEL_31;
                    }

                    auditElement = [v18 auditElement];
                    accessibilityIdentifier = [auditElement accessibilityIdentifier];
                    if (![accessibilityIdentifier length])
                    {

LABEL_31:
                      [v12 addObject:v18];
                      continue;
                    }

                    elementIdentifiersToIgnore2 = [(AXAuditAutomationSupport *)selfCopy elementIdentifiersToIgnore];
                    v27 = [elementIdentifiersToIgnore2 containsObject:accessibilityIdentifier];

                    if ((v27 & 1) == 0)
                    {
                      goto LABEL_31;
                    }
                  }

                  v15 = [v13 countByEnumeratingWithState:&v42 objects:v54 count:16];
                }

                while (v15);
              }

              [v37 setAuditIssues:v12];
              v10 = v38 + 1;
            }

            while (v38 + 1 != v36);
            v36 = [caseResults countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v36);
        }

        v8 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (!v32)
      {
LABEL_38:

        [(AXAuditAutomationSupport *)selfCopy _informDelegateOfResults:obj error:0];
        delegateCopy = v29;
        goto LABEL_39;
      }
    }
  }

  [(AXAuditAutomationSupport *)self _informDelegateOfResults:delegateCopy error:0];
LABEL_39:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_screenChangedThrottled
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AXAuditAutomationSupport__screenChangedThrottled__block_invoke;
  block[3] = &unk_278BE2CD0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)setAuditWarningsToIgnore:(id)ignore
{
  objc_storeStrong(&self->_auditWarningsToIgnore, ignore);
  ignoreCopy = ignore;
  v6 = +[AXAuditIssueDescriptionManager allAuditIssueClassificationCodes];
  v8 = [v6 mutableCopy];

  [v8 removeObjectsInArray:ignoreCopy];
  v7 = [v8 copy];
  [(AXAuditAutomationSupport *)self setAuditWarningsToCapture:v7];
}

- (void)_screenChangedNotification
{
  _screenChangedThrottler = [(AXAuditAutomationSupport *)self _screenChangedThrottler];
  [_screenChangedThrottler scheduleNow];
}

- (BOOL)_initializeAXObserverIfNeeded
{
  if ([(AXAuditAutomationSupport *)self _axEventObserver])
  {
    goto LABEL_5;
  }

  AXUIElementRegisterSystemWideServerDeathCallback();
  pid = 0;
  AXUIElementGetPid([MEMORY[0x277CE6BB0] systemWideAXUIElement], &pid);
  if (![(AXAuditAutomationSupport *)self _axEventObserver])
  {
    v7 = 0;
    if (AXObserverCreate(pid, _axNotificationHandler, &v7))
    {
      LOBYTE(RunLoopSource) = 0;
      return RunLoopSource;
    }

    [(AXAuditAutomationSupport *)self set_axEventObserver:v7];
  }

  RunLoopSource = AXObserverGetRunLoopSource([(AXAuditAutomationSupport *)self _axEventObserver]);
  if (RunLoopSource)
  {
    v4 = RunLoopSource;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v4, *MEMORY[0x277CBF058]);
LABEL_5:
    LOBYTE(RunLoopSource) = 1;
  }

  return RunLoopSource;
}

- (AXAuditAutomationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end