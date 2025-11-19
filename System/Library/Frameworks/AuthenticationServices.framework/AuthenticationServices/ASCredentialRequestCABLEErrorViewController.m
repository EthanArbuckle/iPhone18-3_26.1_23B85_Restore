@interface ASCredentialRequestCABLEErrorViewController
- (ASCredentialRequestCABLEErrorViewController)initWithError:(id)a3 applicationBundleIdentifier:(id)a4;
@end

@implementation ASCredentialRequestCABLEErrorViewController

- (ASCredentialRequestCABLEErrorViewController)initWithError:(id)a3 applicationBundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 safari_matchesErrorDomain:*MEMORY[0x1E698DF70] andCode:5])
  {
    v8 = [v6 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696A588]];
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
    v13 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"(Internal only: %@)", v6];
  }

  else
  {
    v13 = 0;
  }

  if (v7)
  {
    [ASCredentialRequestPaneHeaderConfiguration credentialProviderHeaderWithApplicationBundleID:v7 title:v12 subtitle:v13];
  }

  else
  {
    [ASCredentialRequestPaneHeaderConfiguration passwordManagerHeaderWithTitle:v12 subtitle:v13];
  }
  v14 = ;
  v17.receiver = self;
  v17.super_class = ASCredentialRequestCABLEErrorViewController;
  v15 = [(ASCredentialRequestBasicPaneViewController *)&v17 initWithConfiguration:v14];

  return v15;
}

@end