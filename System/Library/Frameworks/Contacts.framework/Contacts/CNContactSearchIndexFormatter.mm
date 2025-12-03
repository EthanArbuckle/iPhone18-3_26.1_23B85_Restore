@interface CNContactSearchIndexFormatter
- (id)auxiliaryIndexStringForContact:(id)contact;
- (id)nameExpansionsForContact:(id)contact;
- (id)stringForObjectValue:(id)value;
- (id)stringFromContact:(id)contact;
@end

@implementation CNContactSearchIndexFormatter

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CNContactSearchIndexFormatter *)self stringFromContact:valueCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)stringFromContact:(id)contact
{
  v19 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  string = [MEMORY[0x1E696AD60] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = +[CN allContactProperties];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) stringForIndexingForContact:contactCopy];
        if (v11)
        {
          [string appendString:v11];
          [string appendString:@" "];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(CNContactSearchIndexFormatter *)self auxiliaryIndexStringForContact:contactCopy];
  if (v12)
  {
    [string appendString:v12];
  }

  return string;
}

- (id)auxiliaryIndexStringForContact:(id)contact
{
  v3 = [(CNContactSearchIndexFormatter *)self nameExpansionsForContact:contact];
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E696AD60] stringWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)nameExpansionsForContact:(id)contact
{
  contactCopy = contact;
  familyName = [contactCopy familyName];

  if (familyName)
  {
    familyName2 = [contactCopy familyName];
    v10 = CNStringContainsKoreanCharacters();

    if (v10)
    {
      goto LABEL_11;
    }
  }

  givenName = [contactCopy givenName];

  if (givenName)
  {
    givenName2 = [contactCopy givenName];
    v13 = CNStringContainsKoreanCharacters();

    if (v13)
    {
      goto LABEL_11;
    }
  }

  middleName = [contactCopy middleName];

  if (middleName)
  {
    middleName2 = [contactCopy middleName];
    v16 = CNStringContainsKoreanCharacters();

    if (v16)
    {
      goto LABEL_11;
    }
  }

  nameSuffix = [contactCopy nameSuffix];

  if (nameSuffix)
  {
    nameSuffix2 = [contactCopy nameSuffix];
    v19 = CNStringContainsKoreanCharacters();

    if (v19)
    {
      goto LABEL_11;
    }
  }

  namePrefix = [contactCopy namePrefix];

  if (namePrefix)
  {
    namePrefix2 = [contactCopy namePrefix];
    v22 = CNStringContainsKoreanCharacters();

    if (v22)
    {
LABEL_11:
      namePrefix = 0;
      v23 = 0;
      while (1)
      {
        if (v23 <= 0x10 && ((1 << v23) & 0x10116) != 0)
        {
          goto LABEL_14;
        }

        if (v23)
        {
          namePrefix3 = [contactCopy namePrefix];
          if (!namePrefix3)
          {
LABEL_31:

            goto LABEL_14;
          }
        }

        if ((v23 & 2) != 0)
        {
          givenName3 = [contactCopy givenName];
          if (!givenName3)
          {
            if (v23)
            {
              goto LABEL_31;
            }

            goto LABEL_14;
          }
        }

        if ((v23 & 4) != 0)
        {
          middleName3 = [contactCopy middleName];
          if (!middleName3)
          {
            v24 = 1;
LABEL_35:

            goto LABEL_36;
          }
        }

        if ((v23 & 8) == 0)
        {
          break;
        }

        familyName3 = [contactCopy familyName];
        if (familyName3)
        {
          if (v23 < 0x10)
          {
            v24 = 0;
LABEL_29:

            goto LABEL_34;
          }

LABEL_28:
          nameSuffix3 = [contactCopy nameSuffix];
          v24 = nameSuffix3 == 0;

          if ((v23 & 8) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_29;
        }

        v24 = 1;
LABEL_34:
        if ((v23 & 4) != 0)
        {
          goto LABEL_35;
        }

LABEL_36:
        if ((v23 & 2) != 0)
        {

          if ((v23 & 1) == 0)
          {
LABEL_38:
            if (!v24)
            {
              goto LABEL_42;
            }

            goto LABEL_14;
          }
        }

        else if ((v23 & 1) == 0)
        {
          goto LABEL_38;
        }

        if (!v24)
        {
LABEL_42:
          if (namePrefix)
          {
            if ((v23 & 1) == 0)
            {
              goto LABEL_44;
            }

LABEL_52:
            namePrefix4 = [contactCopy namePrefix];
            [namePrefix appendString:namePrefix4];

            if ((v23 & 8) != 0)
            {
              goto LABEL_53;
            }

LABEL_45:
            if ((v23 & 4) == 0)
            {
              goto LABEL_46;
            }

LABEL_54:
            middleName4 = [contactCopy middleName];
            [namePrefix appendString:middleName4];

            if ((v23 & 2) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            namePrefix = [MEMORY[0x1E696AD60] string];
            if (v23)
            {
              goto LABEL_52;
            }

LABEL_44:
            if ((v23 & 8) == 0)
            {
              goto LABEL_45;
            }

LABEL_53:
            familyName4 = [contactCopy familyName];
            [namePrefix appendString:familyName4];

            if ((v23 & 4) != 0)
            {
              goto LABEL_54;
            }

LABEL_46:
            if ((v23 & 2) == 0)
            {
LABEL_48:
              if (v23 >= 0x10)
              {
                nameSuffix4 = [contactCopy nameSuffix];
                [namePrefix appendString:nameSuffix4];
              }

              [namePrefix appendString:@" "];
              goto LABEL_14;
            }
          }

          givenName4 = [contactCopy givenName];
          [namePrefix appendString:givenName4];

          goto LABEL_48;
        }

LABEL_14:
        if (++v23 == 32)
        {
          goto LABEL_57;
        }
      }

      if (v23 < 0x10)
      {
        v24 = 0;
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    namePrefix = 0;
  }

LABEL_57:

  return namePrefix;
}

@end