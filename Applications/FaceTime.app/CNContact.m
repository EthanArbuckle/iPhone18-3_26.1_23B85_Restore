@interface CNContact
- (BOOL)canExceedUnifyingThreshold;
- (BOOL)mp_isBlocked;
- (id)labeledValueForEmailAddress:(id)a3;
- (id)labeledValueForPhoneNumber:(id)a3;
- (id)labeledValueForSocialProfileWithUsername:(id)a3;
- (id)labeledValueForTelephoneNumber:(id)a3;
- (void)mp_unblock;
@end

@implementation CNContact

- (BOOL)canExceedUnifyingThreshold
{
  v3 = [(CNContact *)self phoneNumbers];
  if ([v3 count] > 0x14)
  {
    v5 = 1;
  }

  else
  {
    v4 = [(CNContact *)self emailAddresses];
    if ([v4 count] <= 0x14)
    {
      v6 = [(CNContact *)self postalAddresses];
      if ([v6 count] <= 0x14)
      {
        v7 = [(CNContact *)self urlAddresses];
        if ([v7 count] <= 0x14)
        {
          v8 = [(CNContact *)self contactRelations];
          if ([v8 count] <= 0x14)
          {
            v9 = [(CNContact *)self socialProfiles];
            if ([v9 count] <= 0x14)
            {
              v10 = [(CNContact *)self instantMessageAddresses];
              v5 = [v10 count] > 0x14;
            }

            else
            {
              v5 = 1;
            }
          }

          else
          {
            v5 = 1;
          }
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (id)labeledValueForEmailAddress:(id)a3
{
  v4 = a3;
  if ([(CNContact *)self isKeyAvailable:CNContactEmailAddressesKey])
  {
    [(CNContact *)self emailAddresses];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (([v9 isSuggested] & 1) == 0)
          {
            v10 = [v9 value];
            v11 = [v10 isEqualToString:v4];

            if (v11)
            {
              v6 = v9;
              goto LABEL_14;
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)labeledValueForPhoneNumber:(id)a3
{
  v4 = a3;
  if ([(CNContact *)self isKeyAvailable:CNContactPhoneNumbersKey])
  {
    [(CNContact *)self phoneNumbers];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (([v9 isSuggested] & 1) == 0)
          {
            v10 = [v9 value];
            v11 = [v10 isLikePhoneNumber:v4];

            if (v11)
            {
              v6 = v9;
              goto LABEL_14;
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)labeledValueForSocialProfileWithUsername:(id)a3
{
  v4 = a3;
  if ([(CNContact *)self isKeyAvailable:CNContactSocialProfilesKey])
  {
    [(CNContact *)self socialProfiles];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 value];
          v11 = [v10 username];
          v12 = [v11 isEqualToString:v4];

          if (v12)
          {
            v6 = v9;

            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)labeledValueForTelephoneNumber:(id)a3
{
  v4 = a3;
  v5 = [CNPhoneNumber phoneNumberWithStringValue:v4];
  if (v5)
  {
    v6 = [(CNContact *)self labeledValueForPhoneNumber:v5];
  }

  else
  {
    v7 = sub_100003B9C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000C4C70(v4, v7);
    }

    v6 = 0;
  }

  return v6;
}

- (void)mp_unblock
{
  v2 = self;
  sub_10005D104();
}

- (BOOL)mp_isBlocked
{
  v2 = self;
  v3 = sub_10005DAC4();

  return v3 & 1;
}

@end