@interface ASCredentialRequestSecurityKeyViewController
- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)icon mode:(int64_t)mode serviceName:(id)name serviceType:(unint64_t)type overrideTitle:(id)title overrideSubtitle:(id)subtitle;
- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)icon mode:(int64_t)mode serviceName:(id)name serviceType:(unint64_t)type presentingError:(int64_t)error overrideTitle:(id)title overrideSubtitle:(id)subtitle overrideNoCredentialsErrorTitle:(id)self0 overrideNoCredentialsErrorMessage:(id)self1;
- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)icon mode:(int64_t)mode serviceName:(id)name serviceType:(unint64_t)type reinsertSecurityKey:(BOOL)key;
- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)icon title:(id)title subtitle:(id)subtitle;
- (ASCredentialRequestSecurityKeyViewController)initWithPresentationContext:(id)context presentingError:(int64_t)error;
- (ASCredentialRequestSecurityKeyViewController)initWithPresentationContext:(id)context reinsertSecurityKey:(BOOL)key;
@end

@implementation ASCredentialRequestSecurityKeyViewController

- (ASCredentialRequestSecurityKeyViewController)initWithPresentationContext:(id)context reinsertSecurityKey:(BOOL)key
{
  keyCopy = key;
  contextCopy = context;
  useAlternativeSecurityKeysIcon = [contextCopy useAlternativeSecurityKeysIcon];
  v8 = [ASCredentialRequestSecurityKeyStringUtilities modeForPresentationContext:contextCopy];
  if (keyCopy)
  {
    +[ASCredentialRequestSecurityKeyStringUtilities activateSecurityKeyAgainMessageText];
  }

  else
  {
    [contextCopy overrideSubtitle];
  }
  v9 = ;
  serviceName = [contextCopy serviceName];
  serviceType = [contextCopy serviceType];
  overrideTitle = [contextCopy overrideTitle];
  v13 = [(ASCredentialRequestSecurityKeyViewController *)self initWithPreferredIcon:useAlternativeSecurityKeysIcon mode:v8 serviceName:serviceName serviceType:serviceType overrideTitle:overrideTitle overrideSubtitle:v9];

  return v13;
}

- (ASCredentialRequestSecurityKeyViewController)initWithPresentationContext:(id)context presentingError:(int64_t)error
{
  contextCopy = context;
  useAlternativeSecurityKeysIcon = [contextCopy useAlternativeSecurityKeysIcon];
  v7 = [ASCredentialRequestSecurityKeyStringUtilities modeForPresentationContext:contextCopy];
  serviceName = [contextCopy serviceName];
  serviceType = [contextCopy serviceType];
  overrideTitle = [contextCopy overrideTitle];
  overrideSubtitle = [contextCopy overrideSubtitle];
  overrideNoCredentialsErrorTitle = [contextCopy overrideNoCredentialsErrorTitle];
  overrideNoCredentialsErrorMessage = [contextCopy overrideNoCredentialsErrorMessage];

  v14 = [(ASCredentialRequestSecurityKeyViewController *)self initWithPreferredIcon:useAlternativeSecurityKeysIcon mode:v7 serviceName:serviceName serviceType:serviceType presentingError:error overrideTitle:overrideTitle overrideSubtitle:overrideSubtitle overrideNoCredentialsErrorTitle:overrideNoCredentialsErrorTitle overrideNoCredentialsErrorMessage:overrideNoCredentialsErrorMessage];
  return v14;
}

- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)icon mode:(int64_t)mode serviceName:(id)name serviceType:(unint64_t)type reinsertSecurityKey:(BOOL)key
{
  if (key)
  {
    nameCopy = name;
    v12 = +[ASCredentialRequestSecurityKeyStringUtilities activateSecurityKeyAgainMessageText];
    v13 = [(ASCredentialRequestSecurityKeyViewController *)self initWithPreferredIcon:icon mode:mode serviceName:nameCopy serviceType:type overrideTitle:0 overrideSubtitle:v12];

    v14 = v13;
  }

  else
  {
    nameCopy2 = name;
    v16 = [(ASCredentialRequestSecurityKeyViewController *)self initWithPreferredIcon:icon mode:mode serviceName:nameCopy2 serviceType:type overrideTitle:0 overrideSubtitle:0];

    v14 = v16;
  }

  return v14;
}

- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)icon mode:(int64_t)mode serviceName:(id)name serviceType:(unint64_t)type presentingError:(int64_t)error overrideTitle:(id)title overrideSubtitle:(id)subtitle overrideNoCredentialsErrorTitle:(id)self0 overrideNoCredentialsErrorMessage:(id)self1
{
  nameCopy = name;
  titleCopy = title;
  errorTitleCopy = errorTitle;
  messageCopy = message;
  if (error == 5)
  {
    v20 = errorTitleCopy;
    if (![v20 length])
    {
      v21 = _WBSLocalizedString();

      v20 = v21;
    }

    v22 = messageCopy;
    if (![v22 length])
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = _WBSLocalizedString();
      nameCopy = [v23 localizedStringWithFormat:v24, nameCopy];

      v22 = nameCopy;
    }
  }

  else
  {
    if ([titleCopy length])
    {
      v26 = titleCopy;
    }

    else
    {
      v26 = [ASCredentialRequestSecurityKeyStringUtilities titleWithMode:mode];
    }

    v20 = v26;
    v22 = descriptionForErrorCode();
  }

  v27 = [(ASCredentialRequestSecurityKeyViewController *)self initWithPreferredIcon:icon title:v20 subtitle:v22];

  return v27;
}

- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)icon mode:(int64_t)mode serviceName:(id)name serviceType:(unint64_t)type overrideTitle:(id)title overrideSubtitle:(id)subtitle
{
  nameCopy = name;
  titleCopy = title;
  subtitleCopy = subtitle;
  if ([titleCopy length])
  {
    v17 = titleCopy;
  }

  else
  {
    v17 = [ASCredentialRequestSecurityKeyStringUtilities titleWithMode:mode];
  }

  v18 = v17;
  if ([subtitleCopy length])
  {
    v19 = subtitleCopy;
  }

  else
  {
    v19 = [ASCredentialRequestSecurityKeyStringUtilities messageWithMode:mode serviceName:nameCopy serviceType:type];
  }

  v20 = v19;
  v21 = [(ASCredentialRequestSecurityKeyViewController *)self initWithPreferredIcon:icon title:v18 subtitle:v19];

  return v21;
}

- (ASCredentialRequestSecurityKeyViewController)initWithPreferredIcon:(int64_t)icon title:(id)title subtitle:(id)subtitle
{
  v6 = [ASCredentialRequestPaneHeaderConfiguration securityKeyHeaderWithIcon:icon title:title subtitle:subtitle];
  v9.receiver = self;
  v9.super_class = ASCredentialRequestSecurityKeyViewController;
  v7 = [(ASCredentialRequestBasicPaneViewController *)&v9 initWithConfiguration:v6];

  return v7;
}

@end