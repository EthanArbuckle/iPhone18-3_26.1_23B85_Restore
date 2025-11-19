@interface LAPSPasscodeChangeAuthorizerDTOAdapter
- (LAPSPasscodeChangeAuthorizerDTOAdapter)initWithOptions:(id)a3;
- (void)_authorizeOperationWithIdentifier:(id)a3 options:(id)a4 completion:(id)a5;
- (void)_authorizePasscodeChangeWithCompletion:(id)a3;
- (void)_authorizePasscodeRemovalWithCompletion:(id)a3;
- (void)authorizeWithCompletion:(id)a3;
@end

@implementation LAPSPasscodeChangeAuthorizerDTOAdapter

- (LAPSPasscodeChangeAuthorizerDTOAdapter)initWithOptions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAPSPasscodeChangeAuthorizerDTOAdapter;
  v6 = [(LAPSPasscodeChangeAuthorizerDTOAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
  }

  return v7;
}

- (void)authorizeWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(LAPSPasscodeChangeAuthorizationOptions *)self->_options useCase];
  if (v4 <= 1)
  {
    if (v4)
    {
      v5 = v4 == 1;
      v6 = v7;
      if (!v5)
      {
        goto LABEL_13;
      }

      [(LAPSPasscodeChangeAuthorizerDTOAdapter *)self _authorizePasscodeRemovalWithCompletion:v7];
    }

    else
    {
      [(LAPSPasscodeChangeAuthorizerDTOAdapter *)self _authorizePasscodeChangeWithCompletion:v7];
    }

LABEL_12:
    v6 = v7;
    goto LABEL_13;
  }

  if (v4 == 2)
  {
    [(LAPSPasscodeChangeAuthorizerDTOAdapter *)self _authorizePasscodeRecoveryWithCompletion:v7];
    goto LABEL_12;
  }

  v5 = v4 == 3;
  v6 = v7;
  if (v5)
  {
    [(LAPSPasscodeChangeAuthorizerDTOAdapter *)self _authorizePasscodeVerificationWithCompletion:v7];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_authorizePasscodeChangeWithCompletion:(id)a3
{
  v15[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
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
    v8 = [(LAPSPasscodeChangeAuthorizationOptions *)self->_options calloutReason];
    v9 = v8;
    if (!v8)
    {
      v9 = +[LALocalizedString passcodeChangeRatchetCalloutReason];
    }

    v15[3] = v9;
    v14[4] = &unk_284B87618;
    v10 = [(LAPSPasscodeChangeAuthorizationOptions *)self->_options calloutURL];
    v11 = v10;
    if (!v10)
    {
      v11 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=PASSCODE&path=12"];
    }

    v14[5] = &unk_284B87630;
    v15[4] = v11;
    v15[5] = MEMORY[0x277CBEC38];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];
    [(LAPSPasscodeChangeAuthorizerDTOAdapter *)self _authorizeOperationWithIdentifier:@"com.apple.LocalAuthentication.passcode.change" options:v12 completion:v4];

    if (!v10)
    {
    }

    if (!v8)
    {
    }
  }

  else
  {
    v4[2](v4, 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_authorizePasscodeRemovalWithCompletion:(id)a3
{
  v15[6] = *MEMORY[0x277D85DE8];
  v14[0] = &unk_284B875B8;
  v4 = a3;
  v5 = +[LALocalizedString passcodeRemovalLocalizedReason];
  v15[0] = v5;
  v14[1] = &unk_284B875D0;
  v6 = +[LALocalizedString passcodeRemovalRatchetBeginTitle];
  v15[1] = v6;
  v14[2] = &unk_284B875E8;
  v7 = +[LALocalizedString passcodeRemovalRatchetCountdownText];
  v15[2] = v7;
  v14[3] = &unk_284B87600;
  v8 = [(LAPSPasscodeChangeAuthorizationOptions *)self->_options calloutReason];
  v9 = v8;
  if (!v8)
  {
    v9 = +[LALocalizedString passcodeRemovalRatchetCalloutReason];
  }

  v15[3] = v9;
  v14[4] = &unk_284B87618;
  v10 = [(LAPSPasscodeChangeAuthorizationOptions *)self->_options calloutURL];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=PASSCODE&path=8"];
  }

  v14[5] = &unk_284B87630;
  v15[4] = v11;
  v15[5] = MEMORY[0x277CBEC38];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:6];
  [(LAPSPasscodeChangeAuthorizerDTOAdapter *)self _authorizeOperationWithIdentifier:@"com.apple.LocalAuthentication.passcode.removal" options:v12 completion:v4];

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_authorizeOperationWithIdentifier:(id)a3 options:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CD47A8];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithIdentifier:v10];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__LAPSPasscodeChangeAuthorizerDTOAdapter__authorizeOperationWithIdentifier_options_completion___block_invoke;
  v14[3] = &unk_278A65328;
  v15 = v11;
  v16 = v7;
  v12 = v11;
  v13 = v7;
  [v12 armWithOptions:v9 completion:v14];
}

@end