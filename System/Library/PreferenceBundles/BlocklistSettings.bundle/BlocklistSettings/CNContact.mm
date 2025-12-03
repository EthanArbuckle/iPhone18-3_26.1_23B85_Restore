@interface CNContact
- (BOOL)canExceedUnifyingThreshold;
- (id)labeledValueForEmailAddress:(id)address;
- (id)labeledValueForPhoneNumber:(id)number;
- (id)labeledValueForSocialProfileWithUsername:(id)username;
- (id)labeledValueForTelephoneNumber:(id)number;
@end

@implementation CNContact

- (BOOL)canExceedUnifyingThreshold
{
  phoneNumbers = [(CNContact *)self phoneNumbers];
  if ([phoneNumbers count] > 0x14)
  {
    v5 = 1;
  }

  else
  {
    emailAddresses = [(CNContact *)self emailAddresses];
    if ([emailAddresses count] <= 0x14)
    {
      postalAddresses = [(CNContact *)self postalAddresses];
      if ([postalAddresses count] <= 0x14)
      {
        urlAddresses = [(CNContact *)self urlAddresses];
        if ([urlAddresses count] <= 0x14)
        {
          contactRelations = [(CNContact *)self contactRelations];
          if ([contactRelations count] <= 0x14)
          {
            socialProfiles = [(CNContact *)self socialProfiles];
            if ([socialProfiles count] <= 0x14)
            {
              instantMessageAddresses = [(CNContact *)self instantMessageAddresses];
              v5 = [instantMessageAddresses count] > 0x14;
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

- (id)labeledValueForEmailAddress:(id)address
{
  addressCopy = address;
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
            value = [v9 value];
            v11 = [value isEqualToString:addressCopy];

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

- (id)labeledValueForPhoneNumber:(id)number
{
  numberCopy = number;
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
            value = [v9 value];
            v11 = [value isLikePhoneNumber:numberCopy];

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

- (id)labeledValueForSocialProfileWithUsername:(id)username
{
  usernameCopy = username;
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
          value = [v9 value];
          username = [value username];
          v12 = [username isEqualToString:usernameCopy];

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

- (id)labeledValueForTelephoneNumber:(id)number
{
  numberCopy = number;
  v5 = [CNPhoneNumber phoneNumberWithStringValue:numberCopy];
  if (v5)
  {
    v6 = [(CNContact *)self labeledValueForPhoneNumber:v5];
  }

  else
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_E778(numberCopy, v7);
    }

    v6 = 0;
  }

  return v6;
}

@end