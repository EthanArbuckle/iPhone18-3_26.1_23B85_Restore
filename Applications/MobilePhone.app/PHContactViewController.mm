@interface PHContactViewController
- (id)primaryPropertyKey;
- (void)setHandle:(id)a3;
- (void)setRecentCall:(id)a3;
@end

@implementation PHContactViewController

- (id)primaryPropertyKey
{
  v15.receiver = self;
  v15.super_class = PHContactViewController;
  v3 = [(PHContactViewController *)&v15 primaryPropertyKey];
  v4 = [(PHContactViewController *)self recentCall];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 handleType];
    if (v6 < 2)
    {
      v8 = 0;
    }

    else
    {
      if (v6 == 2)
      {
        v7 = &CNContactPhoneNumbersKey;
      }

      else
      {
        if (v6 != 3)
        {
          goto LABEL_10;
        }

        v7 = &CNContactEmailAddressesKey;
      }

      v8 = *v7;
    }

    v3 = v8;
  }

LABEL_10:
  v9 = [(PHContactViewController *)self handle];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_19;
  }

  v11 = [v9 type];
  if (v11 < 2)
  {
    v13 = 0;
  }

  else
  {
    if (v11 == 2)
    {
      v12 = &CNContactPhoneNumbersKey;
    }

    else
    {
      if (v11 != 3)
      {
        goto LABEL_19;
      }

      v12 = &CNContactEmailAddressesKey;
    }

    v13 = *v12;
  }

  v3 = v13;
LABEL_19:

  return v3;
}

- (void)setRecentCall:(id)a3
{
  v5 = a3;
  if (self->_recentCall != v5)
  {
    v18 = v5;
    objc_storeStrong(&self->_recentCall, a3);
    v6 = [(CHRecentCall *)v18 callerId];
    if (![v6 length])
    {
LABEL_15:

      v5 = v18;
      goto LABEL_16;
    }

    v7 = [(CHRecentCall *)v18 handleType];
    if (v7 == 3)
    {
      v15 = [(PHContactViewController *)self contact];
      v9 = [v15 labeledValueForEmailAddress:v6];

      v10 = &CNContactEmailAddressesKey;
    }

    else
    {
      if (v7 == 2)
      {
        v12 = [(CHRecentCall *)v18 isoCountryCode];
        v13 = [CNPhoneNumber phoneNumberWithDigits:v6 countryCode:v12];

        if (v13)
        {
          v14 = [(PHContactViewController *)self contact];
          v9 = [v14 labeledValueForPhoneNumber:v13];

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

      if (v7 != 1 || !v6)
      {
        v9 = 0;
        v11 = 0;
        goto LABEL_14;
      }

      v8 = [(PHContactViewController *)self contact];
      v9 = [v8 labeledValueForSocialProfileWithUsername:v6];

      v10 = &CNContactSocialProfilesKey;
    }

    v11 = *v10;
    if (v9)
    {
LABEL_13:
      v16 = [v9 identifier];
      v17 = [(CHRecentCall *)v18 callStatus];
      [(PHContactViewController *)self highlightPropertyWithKey:v11 identifier:v16 important:v17 == kCHCallStatusMissed];
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_16:
}

- (void)setHandle:(id)a3
{
  v5 = a3;
  if (self->_handle != v5)
  {
    v17 = v5;
    objc_storeStrong(&self->_handle, a3);
    v6 = [(CHHandle *)v17 type];
    if (v6 == 3)
    {
      v14 = [(PHContactViewController *)self contact];
      v15 = [(CHHandle *)v17 value];
      v9 = [v14 labeledValueForEmailAddress:v15];

      v13 = CNContactEmailAddressesKey;
      if (!v9)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v6 == 2)
    {
      v11 = [(CHHandle *)v17 value];
      v7 = [CNPhoneNumber phoneNumberWithStringValue:v11];

      if (v7)
      {
        v12 = [(PHContactViewController *)self contact];
        v9 = [v12 labeledValueForPhoneNumber:v7];

        v10 = &CNContactPhoneNumbersKey;
        goto LABEL_9;
      }
    }

    else
    {
      if (v6 != 1)
      {
        v9 = 0;
        v13 = 0;
        goto LABEL_16;
      }

      v7 = [(CHHandle *)v17 value];
      if (v7)
      {
        v8 = [(PHContactViewController *)self contact];
        v9 = [v8 labeledValueForSocialProfileWithUsername:v7];

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
      v16 = [v9 identifier];
      [(PHContactViewController *)self highlightPropertyWithKey:v13 identifier:v16 important:0];
    }

LABEL_16:

    v5 = v17;
  }
}

@end