@interface WFSpeakTextAction
- (id)voicePickerParameter;
- (void)cancel;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFSpeakTextAction

- (void)initializeParameters
{
  v4.receiver = self;
  v4.super_class = WFSpeakTextAction;
  [(WFSpeakTextAction *)&v4 initializeParameters];
  v3 = [(WFSpeakTextAction *)self voicePickerParameter];
  [v3 setAction:self];
}

- (void)cancel
{
  v3 = [(WFSpeakTextAction *)self runningOperation];
  [v3 cancel];

  [(WFSpeakTextAction *)self setRunningOperation:0];
  v4.receiver = self;
  v4.super_class = WFSpeakTextAction;
  [(WFSpeakTextAction *)&v4 cancel];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__WFSpeakTextAction_runAsynchronouslyWithInput___block_invoke;
  v3[3] = &unk_278C225B0;
  v3[4] = self;
  [a3 getStringRepresentation:v3];
}

void __48__WFSpeakTextAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v77[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 length];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [v8 userInterface];
    if ([v9 isRunningWithSiriUI])
    {
      v10 = [objc_alloc(MEMORY[0x277D7A108]) initWithUtterance:v5];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __48__WFSpeakTextAction_runAsynchronouslyWithInput___block_invoke_2;
      v66[3] = &unk_278C1CD18;
      v66[4] = *(a1 + 32);
      v11 = [v9 performSiriRequest:v10 completionHandler:v66];

      if (v11)
      {
        goto LABEL_30;
      }
    }

    v12 = [*(a1 + 32) parameterValueForKey:@"WFSpeakTextRate" ofClass:objc_opt_class()];
    [v12 floatValue];
    v14 = v13;

    v15 = [*(a1 + 32) parameterValueForKey:@"WFSpeakTextPitch" ofClass:objc_opt_class()];
    [v15 floatValue];
    v17 = v16;

    v18 = [*(a1 + 32) parameterValueForKey:@"WFSpeakTextWait" ofClass:objc_opt_class()];
    v56 = [v18 BOOLValue];

    v19 = [*(a1 + 32) parameterValueForKey:@"WFSpeakTextLanguage" ofClass:objc_opt_class()];
    v20 = *(a1 + 32);
    if (!v19)
    {
      v22 = MEMORY[0x277CCA9B8];
      v76 = *MEMORY[0x277CCA450];
      v60 = WFLocalizedString(@"Please select a language to use when speaking.");
      v77[0] = v60;
      v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:&v76 count:1];
      v58 = [v22 errorWithDomain:*MEMORY[0x277CCA5B8] code:5 userInfo:v59];
      [v20 finishRunningWithError:v58];
LABEL_29:

LABEL_30:
      goto LABEL_31;
    }

    v60 = [v20 parameterValueForKey:@"WFSpeakTextVoice" ofClass:objc_opt_class()];
    v21 = [WFSpeechSynthesisVoice voicesForLanguageCode:v19];
    v59 = [v21 if_map:&__block_literal_global_20699];

    if ([v59 containsObject:v60])
    {
      [WFSpeechSynthesisVoice voiceForIdentifier:v60];
    }

    else
    {
      [WFSpeechSynthesisVoice defaultVoiceForLanguageCode:v19];
    }
    v58 = ;
    v57 = [getAVAudioSessionClass() sharedInstance];
    v23 = [*(a1 + 32) userInterface];
    v24 = [v23 userInterfaceType];

    if ([v24 isEqualToString:*MEMORY[0x277CFC710]])
    {
      v25 = [MEMORY[0x277CFC248] sharedContext];
      v26 = [v25 applicationState] == 2;

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
      if (!v24)
      {
        goto LABEL_17;
      }
    }

    if (([v24 isEqualToString:*MEMORY[0x277CFC708]] & 1) == 0 && ((objc_msgSend(v24, "isEqualToString:", *MEMORY[0x277CFC700]) | v26) & 1) == 0 && !objc_msgSend(v24, "isEqualToString:", *MEMORY[0x277CFC718]))
    {
      v55 = getAVAudioSessionCategoryPlayback();
      v72 = 0;
      v73 = &v72;
      v74 = 0x2020000000;
      v45 = getAVAudioSessionModeDefaultSymbolLoc_ptr;
      v75 = getAVAudioSessionModeDefaultSymbolLoc_ptr;
      if (!getAVAudioSessionModeDefaultSymbolLoc_ptr)
      {
        location = MEMORY[0x277D85DD0];
        v68 = 3221225472;
        v69 = __getAVAudioSessionModeDefaultSymbolLoc_block_invoke;
        v70 = &unk_278C222B8;
        v71 = &v72;
        v46 = AVFoundationLibrary_20644();
        v47 = dlsym(v46, "AVAudioSessionModeDefault");
        *(v71[1] + 24) = v47;
        getAVAudioSessionModeDefaultSymbolLoc_ptr = *(v71[1] + 24);
        v45 = v73[3];
      }

      _Block_object_dispose(&v72, 8);
      if (!v45)
      {
        goto LABEL_39;
      }

      v48 = *v45;
      v64 = 0;
      v49 = v48;
      v50 = [v57 setCategory:v55 mode:v49 routeSharingPolicy:1 options:0 error:&v64];
      v34 = v64;

      if (v50)
      {
LABEL_21:
        v35 = v34;
        v63 = v34;
        v36 = [v57 setActive:1 error:&v63];
        v34 = v63;

        if (v36)
        {
          v37 = objc_opt_new();
          v38 = *(a1 + 32);
          if (v56)
          {
            v39 = [v38 progress];
            [v37 setProgress:v39];

            [*(a1 + 32) setRunningOperation:v37];
            LODWORD(v40) = v14;
            LODWORD(v41) = v17;
            [v37 speakTextUsingSynthesizer:v5 voice:v58 rate:v40 pitch:v41];
            objc_initWeak(&location, *(a1 + 32));
            v61[0] = MEMORY[0x277D85DD0];
            v61[1] = 3221225472;
            v61[2] = __48__WFSpeakTextAction_runAsynchronouslyWithInput___block_invoke_2_209;
            v61[3] = &unk_278C1C248;
            objc_copyWeak(&v62, &location);
            [v37 addCompletionHandlerIfRunning:v61];
            objc_destroyWeak(&v62);
            objc_destroyWeak(&location);
          }

          else
          {
            [v38 setExtendedOperation:v37];
            LODWORD(v42) = v14;
            LODWORD(v43) = v17;
            [v37 speakTextUsingSynthesizer:v5 voice:v58 rate:v42 pitch:v43];
            [*(a1 + 32) finishRunningWithError:0];
          }
        }

        else
        {
          [*(a1 + 32) finishRunningWithError:v34];
        }

        goto LABEL_28;
      }

      [*(a1 + 32) finishRunningWithError:v34];
LABEL_28:

      goto LABEL_29;
    }

LABEL_17:
    v27 = getAVAudioSessionCategoryPlayback();
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v28 = getAVAudioSessionModeVoicePromptSymbolLoc_ptr;
    v75 = getAVAudioSessionModeVoicePromptSymbolLoc_ptr;
    if (!getAVAudioSessionModeVoicePromptSymbolLoc_ptr)
    {
      location = MEMORY[0x277D85DD0];
      v68 = 3221225472;
      v69 = __getAVAudioSessionModeVoicePromptSymbolLoc_block_invoke;
      v70 = &unk_278C222B8;
      v71 = &v72;
      v29 = AVFoundationLibrary_20644();
      v30 = dlsym(v29, "AVAudioSessionModeVoicePrompt");
      *(v71[1] + 24) = v30;
      getAVAudioSessionModeVoicePromptSymbolLoc_ptr = *(v71[1] + 24);
      v28 = v73[3];
    }

    _Block_object_dispose(&v72, 8);
    if (!v28)
    {
      v51 = [MEMORY[0x277CCA890] currentHandler];
      v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVAudioSessionMode getAVAudioSessionModeVoicePrompt(void)"];
      [v51 handleFailureInFunction:v52 file:@"WFSpeakTextAction.m" lineNumber:22 description:{@"%s", dlerror()}];

      while (1)
      {
        __break(1u);
LABEL_39:
        v53 = [MEMORY[0x277CCA890] currentHandler];
        v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"AVAudioSessionMode getAVAudioSessionModeDefault(void)"];
        [v53 handleFailureInFunction:v54 file:@"WFSpeakTextAction.m" lineNumber:23 description:{@"%s", dlerror()}];
      }
    }

    v31 = *v28;
    v65 = 0;
    v32 = v31;
    v33 = [v57 setCategory:v27 mode:v32 options:19 error:&v65];
    v34 = v65;

    if (v33)
    {
      goto LABEL_21;
    }

    [*(a1 + 32) finishRunningWithError:v34];
    goto LABEL_28;
  }

  [v8 finishRunningWithError:v6];
LABEL_31:

  v44 = *MEMORY[0x277D85DE8];
}

void __48__WFSpeakTextAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = *(a1 + 32);
    v5 = [v3 error];
    [v4 finishRunningWithError:v5];

    v6 = v3;
  }

  else
  {

    v7 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315394;
      v12 = "[WFSpeakTextAction runAsynchronouslyWithInput:]_block_invoke_2";
      v13 = 2112;
      v14 = objc_opt_class();
      v8 = v14;
      _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_FAULT, "%s Received unexpected interaction response of type %@", &v11, 0x16u);
    }

    v9 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA9B8] wfUnsupportedUserInterfaceError];
    [v9 finishRunningWithError:v6];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __48__WFSpeakTextAction_runAsynchronouslyWithInput___block_invoke_2_209(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRunningOperation:0];
  [WeakRetained finishRunningWithError:v3];
}

- (id)voicePickerParameter
{
  v4 = [(WFSpeakTextAction *)self parameterForKey:@"WFSpeakTextVoice"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"WFSpeakTextAction.m" lineNumber:57 description:@"Parameter should be of type WFSpeakTextVoicePickerParameter"];
  }

  return v4;
}

@end