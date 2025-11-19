@interface ASCredentialRequestSecurityKeyViewController
- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)a3 mode:(int64_t)a4 serviceName:(id)a5 serviceType:(unint64_t)a6 overrideTitle:(id)a7 overrideSubtitle:(id)a8;
- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)a3 mode:(int64_t)a4 serviceName:(id)a5 serviceType:(unint64_t)a6 presentingError:(int64_t)a7 overrideTitle:(id)a8 overrideSubtitle:(id)a9 overrideNoCredentialsErrorTitle:(id)a10 overrideNoCredentialsErrorMessage:(id)a11;
- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)a3 mode:(int64_t)a4 serviceName:(id)a5 serviceType:(unint64_t)a6 reinsertSecurityKey:(BOOL)a7;
- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)a3 title:(id)a4 subtitle:(id)a5;
- (ASCredentialRequestSecurityKeyViewController)initWithPresentationContext:(id)a3 presentingError:(int64_t)a4;
- (ASCredentialRequestSecurityKeyViewController)initWithPresentationContext:(id)a3 reinsertSecurityKey:(BOOL)a4;
@end

@implementation ASCredentialRequestSecurityKeyViewController

- (ASCredentialRequestSecurityKeyViewController)initWithPresentationContext:(id)a3 reinsertSecurityKey:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 useAlternativeSecurityKeysIcon];
  v8 = [ASCredentialRequestSecurityKeyStringUtilities modeForPresentationContext:v6];
  if (v4)
  {
    +[ASCredentialRequestSecurityKeyStringUtilities activateSecurityKeyAgainMessageText];
  }

  else
  {
    [v6 overrideSubtitle];
  }
  v9 = ;
  v10 = [v6 serviceName];
  v11 = [v6 serviceType];
  v12 = [v6 overrideTitle];
  v13 = [(ASCredentialRequestSecurityKeyViewController *)self initWithPreferredIcon:v7 mode:v8 serviceName:v10 serviceType:v11 overrideTitle:v12 overrideSubtitle:v9];

  return v13;
}

- (ASCredentialRequestSecurityKeyViewController)initWithPresentationContext:(id)a3 presentingError:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 useAlternativeSecurityKeysIcon];
  v7 = [ASCredentialRequestSecurityKeyStringUtilities modeForPresentationContext:v5];
  v8 = [v5 serviceName];
  v9 = [v5 serviceType];
  v10 = [v5 overrideTitle];
  v11 = [v5 overrideSubtitle];
  v12 = [v5 overrideNoCredentialsErrorTitle];
  v13 = [v5 overrideNoCredentialsErrorMessage];

  v14 = [(ASCredentialRequestSecurityKeyViewController *)self initWithPreferredIcon:v6 mode:v7 serviceName:v8 serviceType:v9 presentingError:a4 overrideTitle:v10 overrideSubtitle:v11 overrideNoCredentialsErrorTitle:v12 overrideNoCredentialsErrorMessage:v13];
  return v14;
}

- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)a3 mode:(int64_t)a4 serviceName:(id)a5 serviceType:(unint64_t)a6 reinsertSecurityKey:(BOOL)a7
{
  if (a7)
  {
    v11 = a5;
    v12 = +[ASCredentialRequestSecurityKeyStringUtilities activateSecurityKeyAgainMessageText];
    v13 = [(ASCredentialRequestSecurityKeyViewController *)self initWithPreferredIcon:a3 mode:a4 serviceName:v11 serviceType:a6 overrideTitle:0 overrideSubtitle:v12];

    v14 = v13;
  }

  else
  {
    v15 = a5;
    v16 = [(ASCredentialRequestSecurityKeyViewController *)self initWithPreferredIcon:a3 mode:a4 serviceName:v15 serviceType:a6 overrideTitle:0 overrideSubtitle:0];

    v14 = v16;
  }

  return v14;
}

- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)a3 mode:(int64_t)a4 serviceName:(id)a5 serviceType:(unint64_t)a6 presentingError:(int64_t)a7 overrideTitle:(id)a8 overrideSubtitle:(id)a9 overrideNoCredentialsErrorTitle:(id)a10 overrideNoCredentialsErrorMessage:(id)a11
{
  v16 = a5;
  v17 = a8;
  v18 = a10;
  v19 = a11;
  if (a7 == 5)
  {
    v20 = v18;
    if (![v20 length])
    {
      v21 = _WBSLocalizedString();

      v20 = v21;
    }

    v22 = v19;
    if (![v22 length])
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = _WBSLocalizedString();
      v25 = [v23 localizedStringWithFormat:v24, v16];

      v22 = v25;
    }
  }

  else
  {
    if ([v17 length])
    {
      v26 = v17;
    }

    else
    {
      v26 = [ASCredentialRequestSecurityKeyStringUtilities titleWithMode:a4];
    }

    v20 = v26;
    v22 = descriptionForErrorCode();
  }

  v27 = [(ASCredentialRequestSecurityKeyViewController *)self initWithPreferredIcon:a3 title:v20 subtitle:v22];

  return v27;
}

- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)a3 mode:(int64_t)a4 serviceName:(id)a5 serviceType:(unint64_t)a6 overrideTitle:(id)a7 overrideSubtitle:(id)a8
{
  v14 = a5;
  v15 = a7;
  v16 = a8;
  if ([v15 length])
  {
    v17 = v15;
  }

  else
  {
    v17 = [ASCredentialRequestSecurityKeyStringUtilities titleWithMode:a4];
  }

  v18 = v17;
  if ([v16 length])
  {
    v19 = v16;
  }

  else
  {
    v19 = [ASCredentialRequestSecurityKeyStringUtilities messageWithMode:a4 serviceName:v14 serviceType:a6];
  }

  v20 = v19;
  v21 = [(ASCredentialRequestSecurityKeyViewController *)self initWithPreferredIcon:a3 title:v18 subtitle:v19];

  return v21;
}

- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)a3 title:(id)a4 subtitle:(id)a5
{
  v6 = [ASCredentialRequestPaneHeaderConfiguration securityKeyHeaderWithIcon:a3 title:a4 subtitle:a5];
  v9.receiver = self;
  v9.super_class = ASCredentialRequestSecurityKeyViewController;
  v7 = [(ASCredentialRequestBasicPaneViewController *)&v9 initWithConfiguration:v6];

  return v7;
}

@end