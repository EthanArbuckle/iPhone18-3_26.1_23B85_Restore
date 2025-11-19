@interface WFRunSSHScriptAction
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)authenticateAndRunAsynchronouslyWithInput:(id)a3 session:(id)a4;
- (void)finishRunningSSHScriptWithError:(id)a3;
- (void)getContentDestinationWithCompletionHandler:(id)a3;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFRunSSHScriptAction

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CCACA8];
  v9 = a5;
  v10 = a4;
  if (v7)
  {
    v11 = WFLocalizedString(@"Allow “%1$@” to use %2$@ in an SSH script on %3$@?");
    [v8 localizedStringWithFormat:v11, v9, v7, v10];
  }

  else
  {
    v11 = WFLocalizedString(@"Allow “%1$@” to run an SSH script on %2$@?");
    [v8 localizedStringWithFormat:v11, v9, v10, v14];
  }
  v12 = ;

  return v12;
}

- (void)getContentDestinationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFRunSSHScriptAction *)self parameterValueForKey:@"WFSSHHost" ofClass:objc_opt_class()];
  if (v5)
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"ssh://%@", v5, 0];
    v8 = [v6 URLWithString:v7];

    v11 = 0;
    v9 = [MEMORY[0x277CFC568] locationWithURL:v8 error:&v11];
    v10 = v11;
    v4[2](v4, v9, v10);
  }

  else
  {
    v4[2](v4, 0, 0);
  }
}

- (void)finishRunningSSHScriptWithError:(id)a3
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 domain];
  if ([v5 isEqualToString:@"libssh2"])
  {
    v6 = [v4 code];

    if (!v6)
    {
      v7 = MEMORY[0x277CCA9B8];
      v28[0] = *MEMORY[0x277CCA450];
      v8 = WFLocalizedString(@"Run Script Over SSH could not connect to the SSH server.");
      v29[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:1];
      v10 = [v7 errorWithDomain:@"libssh2" code:0 userInfo:v9];

      goto LABEL_11;
    }
  }

  else
  {
  }

  v11 = [v4 domain];
  v12 = [v11 isEqualToString:@"NMSSH"];

  if (v12)
  {
    v28[0] = &unk_28509B0A8;
    v13 = WFLocalizedString(@"Connection timed out");
    v28[1] = &unk_28509B0C0;
    v29[0] = v13;
    v14 = WFLocalizedString(@"Channel allocation error");
    v29[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];

    v16 = [v4 code];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
    v18 = [v15 objectForKey:v17];

    if (v18)
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = [v4 domain];
      v21 = [v4 code];
      v26 = *MEMORY[0x277CCA450];
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
      v23 = [v15 objectForKey:v22];
      v27 = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v10 = [v19 errorWithDomain:v20 code:v21 userInfo:v24];
    }

    else
    {
      v10 = v4;
    }
  }

  else
  {
    v10 = v4;
  }

LABEL_11:

  [(WFRunSSHScriptAction *)self finishRunningWithError:v10];
  v25 = *MEMORY[0x277D85DE8];
}

- (void)authenticateAndRunAsynchronouslyWithInput:(id)a3 session:(id)a4
{
  v60[2] = *MEMORY[0x277D85DE8];
  v48 = a3;
  v6 = a4;
  v7 = [(WFRunSSHScriptAction *)self parameterValueForKey:@"WFSSHAuthenticationType" ofClass:objc_opt_class()];
  v8 = [(WFRunSSHScriptAction *)self parameterValueForKey:@"WFSSHPassword" ofClass:objc_opt_class()];
  v9 = +[WFSSHKeyPair sharedKeyPair];
  v10 = [(WFRunSSHScriptAction *)self parameterValueForKey:@"WFSSHScript" ofClass:objc_opt_class()];
  v11 = v10;
  v12 = &stru_2850323E8;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  if ([v7 isEqualToString:@"Password"])
  {
    if (([v6 authenticateByPassword:v8] & 1) == 0)
    {
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __74__WFRunSSHScriptAction_authenticateAndRunAsynchronouslyWithInput_session___block_invoke;
      v53[3] = &unk_278C1A248;
      v54 = v8;
      [v6 authenticateByKeyboardInteractiveUsingBlock:v53];
    }

    if (([v6 isAuthorized] & 1) == 0)
    {
      v14 = [v6 lastError];
      v45 = MEMORY[0x277CCA9B8];
      v15 = [v14 domain];
      v16 = [v14 code];
      v59[0] = *MEMORY[0x277CCA470];
      v43 = WFLocalizedString(@"SSH Password Authentication Failed");
      v60[0] = v43;
      v59[1] = *MEMORY[0x277CCA450];
      v17 = WFLocalizedString(@"Please check your credentials in the Run SSH Script action and try again.");
      v60[1] = v17;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
      v42 = self;
      v18 = v6;
      v19 = v13;
      v20 = v9;
      v21 = v7;
      v23 = v22 = v8;
      v24 = [v45 errorWithDomain:v15 code:v16 userInfo:v23];

      v8 = v22;
      v7 = v21;
      v9 = v20;
      v13 = v19;
      v6 = v18;

      [v18 disconnect];
      v25 = v42;
LABEL_14:
      [(WFRunSSHScriptAction *)v25 finishRunningSSHScriptWithError:v24, v42];

      goto LABEL_15;
    }
  }

  else if ([v7 isEqualToString:@"SSH Key"])
  {
    if (!v9)
    {
      v29 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277D7CB30];
      v57[0] = *MEMORY[0x277CCA470];
      v30 = WFLocalizedString(@"SSH Key Authentication Failed");
      v58[0] = v30;
      v57[1] = *MEMORY[0x277CCA450];
      WFLocalizedString(@"No SSH key was found on this device.");
      v32 = v31 = v8;
      v58[1] = v32;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
      v34 = v33 = v13;
      v14 = [v29 errorWithDomain:v46 code:1 userInfo:v34];

      v13 = v33;
      v8 = v31;

      [v6 disconnect];
      [(WFRunSSHScriptAction *)self finishRunningWithError:v14];
      goto LABEL_15;
    }

    v26 = [v9 publicKey];
    v27 = [v9 privateKeyPEM];
    v28 = [v6 authenticateByInMemoryPublicKey:v26 privateKey:v27 andPassword:0];

    if ((v28 & 1) == 0)
    {
      v14 = [v6 lastError];
      v44 = MEMORY[0x277CCA9B8];
      v35 = [v14 domain];
      v36 = [v14 code];
      v55[0] = *MEMORY[0x277CCA470];
      v42 = WFLocalizedString(@"SSH Key Authentication Failed");
      v56[0] = v42;
      v55[1] = *MEMORY[0x277CCA450];
      WFLocalizedString(@"Make sure the SSH server has this device's public key in its list of authorized keys.");
      v47 = v13;
      v38 = v37 = v8;
      v56[1] = v38;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
      v40 = v39 = v9;
      v24 = [v44 errorWithDomain:v35 code:v36 userInfo:v40];

      v9 = v39;
      v8 = v37;
      v13 = v47;

      [v6 disconnect];
      v25 = self;
      goto LABEL_14;
    }
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __74__WFRunSSHScriptAction_authenticateAndRunAsynchronouslyWithInput_session___block_invoke_2;
  v49[3] = &unk_278C1A298;
  v50 = v6;
  v51 = v13;
  v52 = self;
  [v48 getFileRepresentation:v49 forType:0];

  v14 = v50;
LABEL_15:

  v41 = *MEMORY[0x277D85DE8];
}

void __74__WFRunSSHScriptAction_authenticateAndRunAsynchronouslyWithInput_session___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) channel];
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__WFRunSSHScriptAction_authenticateAndRunAsynchronouslyWithInput_session___block_invoke_3;
  block[3] = &unk_278C1A270;
  v11 = v3;
  v12 = v4;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v13 = v6;
  v14 = v7;
  v15 = *(a1 + 32);
  v8 = v4;
  v9 = v3;
  dispatch_async(v5, block);
}

void __74__WFRunSSHScriptAction_authenticateAndRunAsynchronouslyWithInput_session___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) data];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v2)
  {
    [v3 executeCommandAsynchronously:v4];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) data];
    v19 = 0;
    v7 = [v5 writeData:v6 error:&v19 timeout:&unk_28509B090];
    v8 = v19;

    if (v7)
    {
      if ([*(a1 + 40) sendEOF])
      {
        [*(a1 + 40) waitEOF];
      }

      v9 = *(a1 + 40);
      v18 = v8;
      v10 = [v9 readResponseWithError:&v18 timeout:&unk_28509B090 userInfo:0];
      v11 = v18;

      if (!v10)
      {
        [*(a1 + 64) disconnect];
        [*(a1 + 56) finishRunningSSHScriptWithError:v11];
        v8 = v11;
        goto LABEL_15;
      }

      v8 = v11;
      goto LABEL_11;
    }

LABEL_9:
    [*(a1 + 56) finishRunningSSHScriptWithError:v8];
    goto LABEL_15;
  }

  v17 = 0;
  v12 = [v3 execute:v4 error:&v17];
  v8 = v17;
  if (v8)
  {
    [*(a1 + 64) disconnect];
    goto LABEL_9;
  }

  v10 = [*(a1 + 40) lastResponse];
LABEL_11:
  [*(a1 + 64) disconnect];
  v13 = [v10 length];
  v14 = *(a1 + 56);
  if (v13)
  {
    v15 = [v14 output];
    v16 = [MEMORY[0x277CFC3C8] fileWithData:v10 ofType:0 proposedFilename:0];
    [v15 addFile:v16];

    v14 = *(a1 + 56);
  }

  [v14 finishRunningSSHScriptWithError:0];

LABEL_15:
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v83[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (WFRunOpenSSLCpuidSetupIfNeeded_onceToken != -1)
  {
    dispatch_once(&WFRunOpenSSLCpuidSetupIfNeeded_onceToken, &__block_literal_global_9191);
  }

  v5 = [(WFRunSSHScriptAction *)self parameterValueForKey:@"WFSSHHost" ofClass:objc_opt_class()];
  v6 = [(WFRunSSHScriptAction *)self parameterValueForKey:@"WFSSHPort" ofClass:objc_opt_class()];
  v7 = [v6 integerValue];

  v8 = [(WFRunSSHScriptAction *)self parameterValueForKey:@"WFSSHUser" ofClass:objc_opt_class()];
  v9 = v8;
  v10 = &stru_2850323E8;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [NMSSHSession connectToHost:v5 port:v7 withUsername:v11];
  [v12 setDelegate:self];
  if ([v12 isConnected])
  {
    v13 = +[WFSSHKeyPair knownHostFileURL];
    v14 = [v13 path];

    v83[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];
    v16 = [v12 knownHostStatusInFiles:v15];

    if (v16)
    {
      if (v16 == 1)
      {
        v59 = v14;
        v17 = [(WFRunSSHScriptAction *)self workflow];
        v18 = [v17 environment];

        if (v18 == 1)
        {
          v19 = MEMORY[0x277CCA9B8];
          v20 = *MEMORY[0x277D7CB30];
          v81[0] = *MEMORY[0x277CCA470];
          v21 = WFLocalizedString(@"SSH Authentication Failed");
          v82[0] = v21;
          v81[1] = *MEMORY[0x277CCA450];
          v22 = WFLocalizedString(@"The SSH server has a fingerprint that is different from the fingerprint that was saved when the SSH action was last run.");
          v82[1] = v22;
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
          v24 = [v19 errorWithDomain:v20 code:1 userInfo:v23];

          [v12 disconnect];
          [(WFRunSSHScriptAction *)self finishRunningWithError:v24];

          v14 = v59;
LABEL_17:

          goto LABEL_18;
        }

        v55 = [v12 fingerprint:0];
        v57 = [MEMORY[0x277CFC218] alertWithPreferredStyle:0];
        v28 = WFLocalizedString(@"Remote Host Identification Has Changed");
        [v57 setTitle:v28];

        v29 = MEMORY[0x277CCACA8];
        v30 = WFLocalizedString(@"IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\n\nThis could indicate a man-in-the-middle attack, or it is possible that the host has changed.\n\nThe host key's fingerprint is %@.\n\nAre you sure you want to continue connecting?");
        v31 = [v29 stringWithFormat:v30, v55];
        [v57 setMessage:v31];

        v32 = MEMORY[0x277CFC220];
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __51__WFRunSSHScriptAction_runAsynchronouslyWithInput___block_invoke;
        v78[3] = &unk_278C21508;
        v33 = v12;
        v79 = v33;
        v80 = self;
        v34 = [v32 cancelButtonWithHandler:v78];
        [v57 addButton:v34];

        v35 = MEMORY[0x277CFC220];
        v36 = WFLocalizedString(@"Continue Anyway");
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __51__WFRunSSHScriptAction_runAsynchronouslyWithInput___block_invoke_2;
        v71[3] = &unk_278C1B140;
        v72 = v33;
        v73 = v5;
        v77 = v7;
        v74 = v59;
        v75 = self;
        v76 = v4;
        v37 = [v35 buttonWithTitle:v36 style:2 handler:v71];
        [v57 addButton:v37];

        v14 = v59;
        v38 = [(WFRunSSHScriptAction *)self userInterface];
        [v38 presentAlert:v57];

        v39 = v55;
LABEL_16:

        goto LABEL_17;
      }

      v26 = [(WFRunSSHScriptAction *)self workflow];
      v27 = [v26 environment];

      if (v27 != 1)
      {
        v58 = [v12 fingerprint:0];
        v40 = [MEMORY[0x277CFC218] alertWithPreferredStyle:0];
        WFLocalizedString(@"Unknown Host");
        v41 = v60 = v14;
        v56 = v4;
        v42 = v40;
        [v40 setTitle:v41];

        v43 = MEMORY[0x277CCACA8];
        v44 = WFLocalizedString(@"The authenticity of host '%@' can't be established because it has not been seen before by this device.\n\nThe host's key fingerprint is %@.\n\nAre you sure you want to continue connecting?");
        v45 = [v43 stringWithFormat:v44, v5, v58];
        v46 = v42;
        [v42 setMessage:v45];

        v47 = MEMORY[0x277CFC220];
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __51__WFRunSSHScriptAction_runAsynchronouslyWithInput___block_invoke_3;
        v68[3] = &unk_278C21508;
        v48 = v12;
        v69 = v48;
        v70 = self;
        v49 = [v47 cancelButtonWithHandler:v68];
        [v42 addButton:v49];

        v50 = MEMORY[0x277CFC220];
        v4 = v56;
        v51 = WFLocalizedString(@"Connect");
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __51__WFRunSSHScriptAction_runAsynchronouslyWithInput___block_invoke_4;
        v61[3] = &unk_278C1B140;
        v62 = v48;
        v63 = v5;
        v67 = v7;
        v64 = v60;
        v65 = self;
        v66 = v56;
        v52 = [v50 buttonWithTitle:v51 style:0 preferred:1 handler:v61];
        [v46 addButton:v52];

        v14 = v60;
        v53 = [(WFRunSSHScriptAction *)self userInterface];
        [v53 presentAlert:v46];

        v39 = v58;
        goto LABEL_16;
      }

      [v12 addKnownHostName:v5 port:v7 toFile:v14 withSalt:0];
    }

    [(WFRunSSHScriptAction *)self authenticateAndRunAsynchronouslyWithInput:v4 session:v12];
    goto LABEL_17;
  }

  v25 = [v12 lastError];
  [(WFRunSSHScriptAction *)self finishRunningSSHScriptWithError:v25];

LABEL_18:
  v54 = *MEMORY[0x277D85DE8];
}

void __51__WFRunSSHScriptAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1)
{
  [*(a1 + 32) disconnect];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishRunningWithError:v3];
}

uint64_t __51__WFRunSSHScriptAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addKnownHostName:*(a1 + 40) port:*(a1 + 72) toFile:*(a1 + 48) withSalt:0];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);

  return [v2 authenticateAndRunAsynchronouslyWithInput:v3 session:v4];
}

void __51__WFRunSSHScriptAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) disconnect];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishRunningWithError:v3];
}

uint64_t __51__WFRunSSHScriptAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) addKnownHostName:*(a1 + 40) port:*(a1 + 72) toFile:*(a1 + 48) withSalt:0];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);

  return [v2 authenticateAndRunAsynchronouslyWithInput:v3 session:v4];
}

@end