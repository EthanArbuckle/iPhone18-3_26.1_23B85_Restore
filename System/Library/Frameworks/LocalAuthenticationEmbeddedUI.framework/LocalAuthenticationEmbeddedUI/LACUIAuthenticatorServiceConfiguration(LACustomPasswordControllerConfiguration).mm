@interface LACUIAuthenticatorServiceConfiguration(LACustomPasswordControllerConfiguration)
- (id)initWithCustomPasswordConfiguration:()LACustomPasswordControllerConfiguration context:;
@end

@implementation LACUIAuthenticatorServiceConfiguration(LACustomPasswordControllerConfiguration)

- (id)initWithCustomPasswordConfiguration:()LACustomPasswordControllerConfiguration context:
{
  v6 = a3;
  externalizedContext = [a4 externalizedContext];
  v8 = [self initWithContext:externalizedContext requirement:3];

  cancelButtonTitle = [v6 cancelButtonTitle];
  [v8 setCancelButtonTitle:cancelButtonTitle];

  [v8 setPasscodeLength:{objc_msgSend(v6, "passwordType")}];
  prompt = [v6 prompt];
  [v8 setPrompt:prompt];

  verifyPrompt = [v6 verifyPrompt];
  [v8 setVerifyPrompt:verifyPrompt];

  mode = [v6 mode];
  if (mode <= 1)
  {
    [v8 setMode:mode];
  }

  style = [v6 style];
  rawValue = [style rawValue];

  if (!rawValue)
  {
    v15 = 0;
    goto LABEL_7;
  }

  if (rawValue == 1)
  {
    v15 = 1;
LABEL_7:
    [v8 setStyle:rawValue];
    [v8 setHeaderHidden:v15];
  }

  return v8;
}

@end