@interface ASCredentialRequestSecurityKeyStringUtilities
+ (NSString)activateSecurityKeyAgainMessageText;
+ (id)_basicAssertionMessageTextWithServiceName:(id)name serviceType:(unint64_t)type;
+ (id)_multipleAllowedSecurityKeysMessageTextWithServiceName:(id)name serviceType:(unint64_t)type;
+ (id)_registerSecurityKeyMessageTextWithServiceName:(id)name serviceType:(unint64_t)type;
+ (id)messageWithMode:(int64_t)mode serviceName:(id)name serviceType:(unint64_t)type;
+ (id)messageWithPresentationContext:(id)context;
+ (id)titleWithMode:(int64_t)mode;
+ (id)titleWithPresentationContext:(id)context;
+ (int64_t)modeForPresentationContext:(id)context;
@end

@implementation ASCredentialRequestSecurityKeyStringUtilities

+ (id)titleWithPresentationContext:(id)context
{
  contextCopy = context;
  overrideTitle = [contextCopy overrideTitle];
  v6 = [overrideTitle length];

  if (v6)
  {
    overrideTitle2 = [contextCopy overrideTitle];
  }

  else
  {
    v8 = [self modeForPresentationContext:contextCopy];

    overrideTitle2 = [self titleWithMode:v8];
  }

  return overrideTitle2;
}

+ (id)titleWithMode:(int64_t)mode
{
  if ((mode - 1) < 2 || !mode)
  {
    self = _WBSLocalizedString();
  }

  return self;
}

+ (id)messageWithPresentationContext:(id)context
{
  contextCopy = context;
  overrideSubtitle = [contextCopy overrideSubtitle];
  v6 = [overrideSubtitle length];

  if (v6)
  {
    overrideSubtitle2 = [contextCopy overrideSubtitle];
  }

  else
  {
    v8 = [self modeForPresentationContext:contextCopy];
    serviceName = [contextCopy serviceName];
    overrideSubtitle2 = [self messageWithMode:v8 serviceName:serviceName serviceType:{objc_msgSend(contextCopy, "serviceType")}];
  }

  return overrideSubtitle2;
}

+ (id)messageWithMode:(int64_t)mode serviceName:(id)name serviceType:(unint64_t)type
{
  nameCopy = name;
  if (mode == 2)
  {
    v10 = [self _multipleAllowedSecurityKeysMessageTextWithServiceName:nameCopy serviceType:type];
  }

  else if (mode == 1)
  {
    v10 = [self _basicAssertionMessageTextWithServiceName:nameCopy serviceType:type];
  }

  else
  {
    if (mode)
    {
      goto LABEL_8;
    }

    v10 = [self _registerSecurityKeyMessageTextWithServiceName:nameCopy serviceType:type];
  }

  v5 = v10;
LABEL_8:

  return v5;
}

+ (NSString)activateSecurityKeyAgainMessageText
{
  currentDevice = [MEMORY[0x1E69C8860] currentDevice];
  [currentDevice deviceClass];

  v3 = _WBSLocalizedString();

  return v3;
}

+ (int64_t)modeForPresentationContext:(id)context
{
  contextCopy = context;
  if ([contextCopy isRegistrationRequest])
  {
    v4 = 0;
  }

  else
  {
    allowedCredentialsForSecurityKeyAssertion = [contextCopy allowedCredentialsForSecurityKeyAssertion];
    v6 = [allowedCredentialsForSecurityKeyAssertion count];

    if (v6 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  return v4;
}

+ (id)_registerSecurityKeyMessageTextWithServiceName:(id)name serviceType:(unint64_t)type
{
  nameCopy = name;
  currentDevice = [MEMORY[0x1E69C8860] currentDevice];
  deviceClass = [currentDevice deviceClass];

  if (deviceClass == 1)
  {
    if (type == 1)
    {
      v8 = MEMORY[0x1E696AEC0];
    }

    else
    {
      if (type)
      {
        goto LABEL_11;
      }

      v8 = MEMORY[0x1E696AEC0];
    }
  }

  else if (type == 1)
  {
    v8 = MEMORY[0x1E696AEC0];
  }

  else
  {
    if (type)
    {
      goto LABEL_11;
    }

    v8 = MEMORY[0x1E696AEC0];
  }

  v9 = _WBSLocalizedString();
  currentDevice = [v8 localizedStringWithFormat:v9, nameCopy];

LABEL_11:

  return currentDevice;
}

+ (id)_multipleAllowedSecurityKeysMessageTextWithServiceName:(id)name serviceType:(unint64_t)type
{
  nameCopy = name;
  currentDevice = [MEMORY[0x1E69C8860] currentDevice];
  deviceClass = [currentDevice deviceClass];

  if (deviceClass == 1)
  {
    if (type == 1)
    {
      v8 = MEMORY[0x1E696AEC0];
    }

    else
    {
      if (type)
      {
        goto LABEL_11;
      }

      v8 = MEMORY[0x1E696AEC0];
    }
  }

  else if (type == 1)
  {
    v8 = MEMORY[0x1E696AEC0];
  }

  else
  {
    if (type)
    {
      goto LABEL_11;
    }

    v8 = MEMORY[0x1E696AEC0];
  }

  v9 = _WBSLocalizedString();
  currentDevice = [v8 localizedStringWithFormat:v9, nameCopy];

LABEL_11:

  return currentDevice;
}

+ (id)_basicAssertionMessageTextWithServiceName:(id)name serviceType:(unint64_t)type
{
  nameCopy = name;
  currentDevice = [MEMORY[0x1E69C8860] currentDevice];
  deviceClass = [currentDevice deviceClass];

  if (deviceClass == 1)
  {
    if (type == 1)
    {
      v8 = MEMORY[0x1E696AEC0];
    }

    else
    {
      if (type)
      {
        goto LABEL_11;
      }

      v8 = MEMORY[0x1E696AEC0];
    }
  }

  else if (type == 1)
  {
    v8 = MEMORY[0x1E696AEC0];
  }

  else
  {
    if (type)
    {
      goto LABEL_11;
    }

    v8 = MEMORY[0x1E696AEC0];
  }

  v9 = _WBSLocalizedString();
  currentDevice = [v8 localizedStringWithFormat:v9, nameCopy];

LABEL_11:

  return currentDevice;
}

@end