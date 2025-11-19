@interface ASCredentialRequestSecurityKeyStringUtilities
+ (NSString)activateSecurityKeyAgainMessageText;
+ (id)_basicAssertionMessageTextWithServiceName:(id)a3 serviceType:(unint64_t)a4;
+ (id)_multipleAllowedSecurityKeysMessageTextWithServiceName:(id)a3 serviceType:(unint64_t)a4;
+ (id)_registerSecurityKeyMessageTextWithServiceName:(id)a3 serviceType:(unint64_t)a4;
+ (id)messageWithMode:(int64_t)a3 serviceName:(id)a4 serviceType:(unint64_t)a5;
+ (id)messageWithPresentationContext:(id)a3;
+ (id)titleWithMode:(int64_t)a3;
+ (id)titleWithPresentationContext:(id)a3;
+ (int64_t)modeForPresentationContext:(id)a3;
@end

@implementation ASCredentialRequestSecurityKeyStringUtilities

+ (id)titleWithPresentationContext:(id)a3
{
  v4 = a3;
  v5 = [v4 overrideTitle];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v4 overrideTitle];
  }

  else
  {
    v8 = [a1 modeForPresentationContext:v4];

    v7 = [a1 titleWithMode:v8];
  }

  return v7;
}

+ (id)titleWithMode:(int64_t)a3
{
  if ((a3 - 1) < 2 || !a3)
  {
    a1 = _WBSLocalizedString();
  }

  return a1;
}

+ (id)messageWithPresentationContext:(id)a3
{
  v4 = a3;
  v5 = [v4 overrideSubtitle];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v4 overrideSubtitle];
  }

  else
  {
    v8 = [a1 modeForPresentationContext:v4];
    v9 = [v4 serviceName];
    v7 = [a1 messageWithMode:v8 serviceName:v9 serviceType:{objc_msgSend(v4, "serviceType")}];
  }

  return v7;
}

+ (id)messageWithMode:(int64_t)a3 serviceName:(id)a4 serviceType:(unint64_t)a5
{
  v9 = a4;
  if (a3 == 2)
  {
    v10 = [a1 _multipleAllowedSecurityKeysMessageTextWithServiceName:v9 serviceType:a5];
  }

  else if (a3 == 1)
  {
    v10 = [a1 _basicAssertionMessageTextWithServiceName:v9 serviceType:a5];
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v10 = [a1 _registerSecurityKeyMessageTextWithServiceName:v9 serviceType:a5];
  }

  v5 = v10;
LABEL_8:

  return v5;
}

+ (NSString)activateSecurityKeyAgainMessageText
{
  v2 = [MEMORY[0x1E69C8860] currentDevice];
  [v2 deviceClass];

  v3 = _WBSLocalizedString();

  return v3;
}

+ (int64_t)modeForPresentationContext:(id)a3
{
  v3 = a3;
  if ([v3 isRegistrationRequest])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 allowedCredentialsForSecurityKeyAssertion];
    v6 = [v5 count];

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

+ (id)_registerSecurityKeyMessageTextWithServiceName:(id)a3 serviceType:(unint64_t)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E69C8860] currentDevice];
  v7 = [v6 deviceClass];

  if (v7 == 1)
  {
    if (a4 == 1)
    {
      v8 = MEMORY[0x1E696AEC0];
    }

    else
    {
      if (a4)
      {
        goto LABEL_11;
      }

      v8 = MEMORY[0x1E696AEC0];
    }
  }

  else if (a4 == 1)
  {
    v8 = MEMORY[0x1E696AEC0];
  }

  else
  {
    if (a4)
    {
      goto LABEL_11;
    }

    v8 = MEMORY[0x1E696AEC0];
  }

  v9 = _WBSLocalizedString();
  v6 = [v8 localizedStringWithFormat:v9, v5];

LABEL_11:

  return v6;
}

+ (id)_multipleAllowedSecurityKeysMessageTextWithServiceName:(id)a3 serviceType:(unint64_t)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E69C8860] currentDevice];
  v7 = [v6 deviceClass];

  if (v7 == 1)
  {
    if (a4 == 1)
    {
      v8 = MEMORY[0x1E696AEC0];
    }

    else
    {
      if (a4)
      {
        goto LABEL_11;
      }

      v8 = MEMORY[0x1E696AEC0];
    }
  }

  else if (a4 == 1)
  {
    v8 = MEMORY[0x1E696AEC0];
  }

  else
  {
    if (a4)
    {
      goto LABEL_11;
    }

    v8 = MEMORY[0x1E696AEC0];
  }

  v9 = _WBSLocalizedString();
  v6 = [v8 localizedStringWithFormat:v9, v5];

LABEL_11:

  return v6;
}

+ (id)_basicAssertionMessageTextWithServiceName:(id)a3 serviceType:(unint64_t)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E69C8860] currentDevice];
  v7 = [v6 deviceClass];

  if (v7 == 1)
  {
    if (a4 == 1)
    {
      v8 = MEMORY[0x1E696AEC0];
    }

    else
    {
      if (a4)
      {
        goto LABEL_11;
      }

      v8 = MEMORY[0x1E696AEC0];
    }
  }

  else if (a4 == 1)
  {
    v8 = MEMORY[0x1E696AEC0];
  }

  else
  {
    if (a4)
    {
      goto LABEL_11;
    }

    v8 = MEMORY[0x1E696AEC0];
  }

  v9 = _WBSLocalizedString();
  v6 = [v8 localizedStringWithFormat:v9, v5];

LABEL_11:

  return v6;
}

@end