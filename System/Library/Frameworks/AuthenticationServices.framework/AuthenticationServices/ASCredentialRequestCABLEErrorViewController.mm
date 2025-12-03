@interface ASCredentialRequestCABLEErrorViewController
- (ASCredentialRequestCABLEErrorViewController)initWithError:(id)error applicationBundleIdentifier:(id)identifier;
@end

@implementation ASCredentialRequestCABLEErrorViewController

- (ASCredentialRequestCABLEErrorViewController)initWithError:(id)error applicationBundleIdentifier:(id)identifier
{
  errorCopy = error;
  identifierCopy = identifier;
  if ([errorCopy safari_matchesErrorDomain:*MEMORY[0x1E698DF70] andCode:5])
  {
    userInfo = [errorCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A588]];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = descriptionForErrorCode();
    }

    v12 = v11;
  }

  else
  {
    v12 = _WBSLocalizedString();
  }

  if ([MEMORY[0x1E69C8880] hasInternalContent])
  {
    errorCopy = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"(Internal only: %@)", errorCopy];
  }

  else
  {
    errorCopy = 0;
  }

  if (identifierCopy)
  {
    [ASCredentialRequestPaneHeaderConfiguration credentialProviderHeaderWithApplicationBundleID:identifierCopy title:v12 subtitle:errorCopy];
  }

  else
  {
    [ASCredentialRequestPaneHeaderConfiguration passwordManagerHeaderWithTitle:v12 subtitle:errorCopy];
  }
  v14 = ;
  v17.receiver = self;
  v17.super_class = ASCredentialRequestCABLEErrorViewController;
  v15 = [(ASCredentialRequestBasicPaneViewController *)&v17 initWithConfiguration:v14];

  return v15;
}

@end