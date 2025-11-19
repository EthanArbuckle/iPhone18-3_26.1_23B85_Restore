@interface WFShazamMediaAction
- (void)finishRunningWithError:(id)a3;
- (void)finishRunningWithMatch:(id)a3 error:(id)a4;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)session:(id)a3 didFindMatch:(id)a4;
- (void)session:(id)a3 didNotFindMatchForSignature:(id)a4 error:(id)a5;
- (void)startShazam;
@end

@implementation WFShazamMediaAction

- (void)session:(id)a3 didNotFindMatchForSignature:(id)a4 error:(id)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = getWFActionsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[WFShazamMediaAction session:didNotFindMatchForSignature:error:]";
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_DEFAULT, "%s Shazam session did not match for signature with error: %{public}@", &v9, 0x16u);
  }

  [(WFShazamMediaAction *)self finishRunningWithError:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 didFindMatch:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = getWFActionsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[WFShazamMediaAction session:didFindMatch:]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_23DE30000, v6, OS_LOG_TYPE_DEFAULT, "%s Shazam action session did find match: %@", &v8, 0x16u);
  }

  [(WFShazamMediaAction *)self finishRunningWithMatch:v5 error:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)finishRunningWithError:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = getWFActionsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[WFShazamMediaAction finishRunningWithError:]";
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_impl(&dword_23DE30000, v5, OS_LOG_TYPE_ERROR, "%s Shazam action finished with incoming error: %{public}@", buf, 0x16u);
    }
  }

  if ([v4 wf_isUserCancelledError])
  {
    v6 = [(WFShazamMediaAction *)self managedSession];
    [v6 stopMatchingAmbientAudioSnippet];
  }

  if (!v4)
  {
    v7 = 0;
    goto LABEL_21;
  }

  if (([v4 wf_isUserCancelledError] & 1) == 0 && (objc_msgSend(v4, "wf_isUnsupportedUserInterfaceError") & 1) == 0)
  {
    v8 = [v4 domain];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v9 = getSHErrorDomainSymbolLoc_ptr;
    v40 = getSHErrorDomainSymbolLoc_ptr;
    if (!getSHErrorDomainSymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSHErrorDomainSymbolLoc_block_invoke;
      v48 = &unk_278C222B8;
      v49 = &v37;
      v10 = ShazamKitLibrary();
      v11 = dlsym(v10, "SHErrorDomain");
      *(v49[1] + 24) = v11;
      getSHErrorDomainSymbolLoc_ptr = *(v49[1] + 24);
      v9 = v38[3];
    }

    _Block_object_dispose(&v37, 8);
    if (!v9)
    {
      v34 = [MEMORY[0x277CCA890] currentHandler];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSHErrorDomain(void)"];
      [v34 handleFailureInFunction:v35 file:@"WFShazamMediaAction.m" lineNumber:23 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v12 = *v9;
    if ([v8 isEqualToString:v12])
    {
      v13 = [v4 code] == 202;

      if (v13)
      {
        v14 = WFLocalizedString(@"Shazam server could not be contacted");
        v15 = WFLocalizedString(@"Try again when network conditions improve.");
        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CCA450];
        v45[0] = *MEMORY[0x277CCA470];
        v45[1] = v17;
        v46[0] = v14;
        v46[1] = v15;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
        v19 = [v16 errorWithDomain:@"WFShazamMediaActionErrorDomain" code:-2 userInfo:v18];
LABEL_20:
        v7 = v19;

        goto LABEL_21;
      }
    }

    else
    {
    }

    v14 = WFLocalizedString(@"Uh oh, something went wrong with Shazam");
    v15 = WFLocalizedString(@"Please try again.");
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v43[0] = *MEMORY[0x277CCA470];
    v43[1] = v21;
    v44[0] = v14;
    v44[1] = v15;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
    v19 = [v20 errorWithDomain:@"WFShazamMediaActionErrorDomain" code:0 userInfo:v18];
    goto LABEL_20;
  }

  v7 = v4;
LABEL_21:
  v22 = [(WFShazamMediaAction *)self parameterValueForKey:@"WFShazamMediaActionErrorIfNotRecognized" ofClass:objc_opt_class()];
  v23 = [v22 BOOLValue];

  if (v23)
  {
    v24 = [(WFShazamMediaAction *)self output];
    v25 = ([v24 numberOfItems] | v7) == 0;

    if (v25)
    {
      v26 = WFLocalizedString(@"No Result");
      v27 = WFLocalizedString(@"Shazam didn't recognize any media.");
      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      v41[0] = *MEMORY[0x277CCA470];
      v41[1] = v29;
      v42[0] = v26;
      v42[1] = v27;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
      v7 = [v28 errorWithDomain:@"WFShazamMediaActionErrorDomain" code:-1 userInfo:v30];
    }
  }

  if (v7)
  {
    v31 = getWFActionsLogObject();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[WFShazamMediaAction finishRunningWithError:]";
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_impl(&dword_23DE30000, v31, OS_LOG_TYPE_ERROR, "%s Shazam action finished with outgoing error: %{public}@", buf, 0x16u);
    }
  }

  v32 = +[WFRecordingStatusManager sharedManager];
  [v32 setRecording:0];

  v36.receiver = self;
  v36.super_class = WFShazamMediaAction;
  [(WFShazamMediaAction *)&v36 finishRunningWithError:v7];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)finishRunningWithMatch:(id)a3 error:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 mediaItems];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = [[WFShazamMedia alloc] initWithMediaItem:v8];
    if (v9)
    {
      v10 = v9;
      v11 = getWFActionsLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315394;
        v15 = "[WFShazamMediaAction finishRunningWithMatch:error:]";
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_23DE30000, v11, OS_LOG_TYPE_DEFAULT, "%s Shazam action found match: %@", &v14, 0x16u);
      }

      v12 = [(WFShazamMediaAction *)self output];
      [v12 addObject:v10];
    }
  }

  [(WFShazamMediaAction *)self finishRunningWithError:v6];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)startShazam
{
  v3 = +[WFRecordingStatusManager sharedManager];
  [v3 setRecording:1];

  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = getSHManagedSessionClass_softClass;
  v11 = getSHManagedSessionClass_softClass;
  if (!getSHManagedSessionClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getSHManagedSessionClass_block_invoke;
    v7[3] = &unk_278C222B8;
    v7[4] = &v8;
    __getSHManagedSessionClass_block_invoke(v7);
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  v6 = [[v4 alloc] initWithPartnerName:@"shortcuts"];
  [v6 setDelegate:self];
  [(WFShazamMediaAction *)self setManagedSession:v6];
  [v6 matchAmbientAudioSnippet];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = [(WFShazamMediaAction *)self userInterface];
  v5 = [v4 isRunningWithSiriUI];

  if (v5)
  {
    v8 = [MEMORY[0x277CCA9B8] wfUnsupportedUserInterfaceError];
    [(WFShazamMediaAction *)self finishRunningWithError:v8];
  }

  else
  {
    v6 = [(WFShazamMediaAction *)self parameterValueForKey:@"WFShazamMediaActionShowWhenRun" ofClass:objc_opt_class()];
    v7 = [v6 BOOLValue];

    if (v7 && ([(WFShazamMediaAction *)self prefersBackgroundExecutionForSpotlight]& 1) == 0)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __50__WFShazamMediaAction_runAsynchronouslyWithInput___block_invoke;
      v9[3] = &unk_278C19338;
      v9[4] = self;
      [(WFShazamMediaAction *)self requestInterfacePresentationWithCompletionHandler:v9];
    }

    [(WFShazamMediaAction *)self startShazam];
  }
}

uint64_t __50__WFShazamMediaAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __50__WFShazamMediaAction_runAsynchronouslyWithInput___block_invoke_2;
  v3[3] = &unk_278C221F8;
  v3[4] = *(a1 + 32);
  return [a2 showWithCompletionHandler:v3];
}

uint64_t __50__WFShazamMediaAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) finishRunningWithError:a2];
  }

  return result;
}

@end