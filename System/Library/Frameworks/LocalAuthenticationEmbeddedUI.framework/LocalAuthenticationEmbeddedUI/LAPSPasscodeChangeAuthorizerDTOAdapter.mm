@interface LAPSPasscodeChangeAuthorizerDTOAdapter
- (LAPSPasscodeChangeAuthorizerDTOAdapter)initWithOptions:(id)options;
- (void)_authorizeOperationWithIdentifier:(id)identifier options:(id)options completion:(id)completion;
- (void)_authorizePasscodeChangeWithCompletion:(id)completion;
- (void)_authorizePasscodeRemovalWithCompletion:(id)completion;
- (void)authorizeWithCompletion:(id)completion;
@end

@implementation LAPSPasscodeChangeAuthorizerDTOAdapter

- (LAPSPasscodeChangeAuthorizerDTOAdapter)initWithOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = LAPSPasscodeChangeAuthorizerDTOAdapter;
  v6 = [(LAPSPasscodeChangeAuthorizerDTOAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
  }

  return v7;
}

- (void)authorizeWithCompletion:(id)completion
{
  completionCopy = completion;
  useCase = [(LAPSPasscodeChangeAuthorizationOptions *)self->_options useCase];
  if (useCase <= 1)
  {
    if (useCase)
    {
      v5 = useCase == 1;
      v6 = completionCopy;
      if (!v5)
      {
        goto LABEL_13;
      }

      [(LAPSPasscodeChangeAuthorizerDTOAdapter *)self _authorizePasscodeRemovalWithCompletion:completionCopy];
    }

    else
    {
      [(LAPSPasscodeChangeAuthorizerDTOAdapter *)self _authorizePasscodeChangeWithCompletion:completionCopy];
    }

LABEL_12:
    v6 = completionCopy;
    goto LABEL_13;
  }

  if (useCase == 2)
  {
    [(LAPSPasscodeChangeAuthorizerDTOAdapter *)self _authorizePasscodeRecoveryWithCompletion:completionCopy];
    goto LABEL_12;
  }

  v5 = useCase == 3;
  v6 = completionCopy;
  if (v5)
  {
    [(LAPSPasscodeChangeAuthorizerDTOAdapter *)self _authorizePasscodeVerificationWithCompletion:completionCopy];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_authorizePasscodeChangeWithCompletion:(id)completion
{
  v15[6] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (_os_feature_enabled_impl())
  {
    v14[0] = &unk_284B875B8;
    v5 = +[LALocalizedString passcodeChangeLocalizedReason];
    v15[0] = v5;
    v14[1] = &unk_284B875D0;
    v6 = +[LALocalizedString passcodeChangeRatchetBeginTitle];
    v15[1] = v6;
    v14[2] = &unk_284B875E8;
    v7 = +[LALocalizedString passcodeChangeRatchetCountdownText];
    v15[2] = v7;
    v14[3] = &unk_284B87600;
    calloutReason = [(LAPSPasscodeChangeAuthorizationOptions *)self->_options calloutReason];
    v9 = calloutReason;
    if (!calloutReason)
    {
      v9 = +[LALocalizedString passcodeChangeRatchetCalloutReason];
    }

    v15[3] = v9;
    v14[4] = &unk_284B87618;
    calloutURL = [(LAPSPasscodeChangeAuthorizationOptions *)self->_options calloutURL];
    v11 = calloutURL;
    if (!calloutURL)
    {
      v11 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=PASSCODE&path=12"];
    }

    v14[5] = &unk_284B87630;
    v15[4] = v11;
    v15[5] = MEMORY[0x277CBEC38];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];
    [(LAPSPasscodeChangeAuthorizerDTOAdapter *)self _authorizeOperationWithIdentifier:@"com.apple.LocalAuthentication.passcode.change" options:v12 completion:completionCopy];

    if (!calloutURL)
    {
    }

    if (!calloutReason)
    {
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_authorizePasscodeRemovalWithCompletion:(id)completion
{
  v15[6] = *MEMORY[0x277D85DE8];
  v14[0] = &unk_284B875B8;
  completionCopy = completion;
  v5 = +[LALocalizedString passcodeRemovalLocalizedReason];
  v15[0] = v5;
  v14[1] = &unk_284B875D0;
  v6 = +[LALocalizedString passcodeRemovalRatchetBeginTitle];
  v15[1] = v6;
  v14[2] = &unk_284B875E8;
  v7 = +[LALocalizedString passcodeRemovalRatchetCountdownText];
  v15[2] = v7;
  v14[3] = &unk_284B87600;
  calloutReason = [(LAPSPasscodeChangeAuthorizationOptions *)self->_options calloutReason];
  v9 = calloutReason;
  if (!calloutReason)
  {
    v9 = +[LALocalizedString passcodeRemovalRatchetCalloutReason];
  }

  v15[3] = v9;
  v14[4] = &unk_284B87618;
  calloutURL = [(LAPSPasscodeChangeAuthorizationOptions *)self->_options calloutURL];
  v11 = calloutURL;
  if (!calloutURL)
  {
    v11 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=PASSCODE&path=8"];
  }

  v14[5] = &unk_284B87630;
  v15[4] = v11;
  v15[5] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];
  [(LAPSPasscodeChangeAuthorizerDTOAdapter *)self _authorizeOperationWithIdentifier:@"com.apple.LocalAuthentication.passcode.removal" options:v12 completion:completionCopy];

  if (!calloutURL)
  {
  }

  if (!calloutReason)
  {
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_authorizeOperationWithIdentifier:(id)identifier options:(id)options completion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x277CD47A8];
  optionsCopy = options;
  identifierCopy = identifier;
  v11 = [[v8 alloc] initWithIdentifier:identifierCopy];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__LAPSPasscodeChangeAuthorizerDTOAdapter__authorizeOperationWithIdentifier_options_completion___block_invoke;
  v14[3] = &unk_278A65328;
  v15 = v11;
  v16 = completionCopy;
  v12 = v11;
  v13 = completionCopy;
  [v12 armWithOptions:optionsCopy completion:v14];
}

@end