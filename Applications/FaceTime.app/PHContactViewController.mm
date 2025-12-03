@interface PHContactViewController
- (id)primaryPropertyKey;
- (void)setHandle:(id)handle;
- (void)setRecentCall:(id)call;
@end

@implementation PHContactViewController

- (id)primaryPropertyKey
{
  v15.receiver = self;
  v15.super_class = PHContactViewController;
  primaryPropertyKey = [(PHContactViewController *)&v15 primaryPropertyKey];
  recentCall = [(PHContactViewController *)self recentCall];
  v5 = recentCall;
  if (recentCall)
  {
    handleType = [recentCall handleType];
    if (handleType < 2)
    {
      v8 = 0;
    }

    else
    {
      if (handleType == 2)
      {
        v7 = &CNContactPhoneNumbersKey;
      }

      else
      {
        if (handleType != 3)
        {
          goto LABEL_10;
        }

        v7 = &CNContactEmailAddressesKey;
      }

      v8 = *v7;
    }

    primaryPropertyKey = v8;
  }

LABEL_10:
  handle = [(PHContactViewController *)self handle];
  v10 = handle;
  if (!handle)
  {
    goto LABEL_19;
  }

  type = [handle type];
  if (type < 2)
  {
    v13 = 0;
  }

  else
  {
    if (type == 2)
    {
      v12 = &CNContactPhoneNumbersKey;
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_19;
      }

      v12 = &CNContactEmailAddressesKey;
    }

    v13 = *v12;
  }

  primaryPropertyKey = v13;
LABEL_19:

  return primaryPropertyKey;
}

- (void)setRecentCall:(id)call
{
  callCopy = call;
  if (self->_recentCall != callCopy)
  {
    v18 = callCopy;
    objc_storeStrong(&self->_recentCall, call);
    callerId = [(CHRecentCall *)v18 callerId];
    if (![callerId length])
    {
LABEL_15:

      callCopy = v18;
      goto LABEL_16;
    }

    handleType = [(CHRecentCall *)v18 handleType];
    if (handleType == 3)
    {
      contact = [(PHContactViewController *)self contact];
      v9 = [contact labeledValueForEmailAddress:callerId];

      v10 = &CNContactEmailAddressesKey;
    }

    else
    {
      if (handleType == 2)
      {
        isoCountryCode = [(CHRecentCall *)v18 isoCountryCode];
        v13 = [CNPhoneNumber phoneNumberWithDigits:callerId countryCode:isoCountryCode];

        if (v13)
        {
          contact2 = [(PHContactViewController *)self contact];
          v9 = [contact2 labeledValueForPhoneNumber:v13];

          v11 = CNContactPhoneNumbersKey;
        }

        else
        {
          v11 = 0;
          v9 = 0;
        }

        if (!v9)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (handleType != 1 || !callerId)
      {
        v9 = 0;
        v11 = 0;
        goto LABEL_14;
      }

      contact3 = [(PHContactViewController *)self contact];
      v9 = [contact3 labeledValueForSocialProfileWithUsername:callerId];

      v10 = &CNContactSocialProfilesKey;
    }

    v11 = *v10;
    if (v9)
    {
LABEL_13:
      identifier = [v9 identifier];
      callStatus = [(CHRecentCall *)v18 callStatus];
      [(PHContactViewController *)self highlightPropertyWithKey:v11 identifier:identifier important:callStatus == kCHCallStatusMissed];
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_16:
}

- (void)setHandle:(id)handle
{
  handleCopy = handle;
  if (self->_handle != handleCopy)
  {
    v17 = handleCopy;
    objc_storeStrong(&self->_handle, handle);
    type = [(CHHandle *)v17 type];
    if (type == 3)
    {
      contact = [(PHContactViewController *)self contact];
      value = [(CHHandle *)v17 value];
      v9 = [contact labeledValueForEmailAddress:value];

      v13 = CNContactEmailAddressesKey;
      if (!v9)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (type == 2)
    {
      value2 = [(CHHandle *)v17 value];
      value3 = [CNPhoneNumber phoneNumberWithStringValue:value2];

      if (value3)
      {
        contact2 = [(PHContactViewController *)self contact];
        v9 = [contact2 labeledValueForPhoneNumber:value3];

        v10 = &CNContactPhoneNumbersKey;
        goto LABEL_9;
      }
    }

    else
    {
      if (type != 1)
      {
        v9 = 0;
        v13 = 0;
        goto LABEL_16;
      }

      value3 = [(CHHandle *)v17 value];
      if (value3)
      {
        contact3 = [(PHContactViewController *)self contact];
        v9 = [contact3 labeledValueForSocialProfileWithUsername:value3];

        v10 = &CNContactSocialProfilesKey;
LABEL_9:
        v13 = *v10;
        goto LABEL_14;
      }
    }

    v13 = 0;
    v9 = 0;
LABEL_14:

    if (v9)
    {
LABEL_15:
      identifier = [v9 identifier];
      [(PHContactViewController *)self highlightPropertyWithKey:v13 identifier:identifier important:0];
    }

LABEL_16:

    handleCopy = v17;
  }
}

@end