@interface CNUserActivitySerialization
+ (id)allAvailableServerUUIDsForContact:(id)a3;
+ (id)descriptorForRequiredKeys;
+ (id)distinctEmailAddressesForContact:(id)a3;
+ (id)distinctPhoneNumbersForContact:(id)a3;
+ (id)userActivityPayloadWithContacts:(id)a3 shouldUnify:(BOOL)a4;
+ (id)userActivityTitleWithContacts:(id)a3;
@end

@implementation CNUserActivitySerialization

+ (id)descriptorForRequiredKeys
{
  v8[9] = *MEMORY[0x1E69E9840];
  v3 = [CNContactFormatter descriptorForRequiredKeysForStyle:0, @"identifier", @"externalUUID", @"emailAddresses", @"phoneNumbers", @"contactType", @"givenName", @"familyName", @"organizationName"];
  v8[8] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:9];

  v5 = [a1 description];
  v6 = [CNContact descriptorWithKeyDescriptors:v4 description:v5];

  return v6;
}

+ (id)userActivityPayloadWithContacts:(id)a3 shouldUnify:(BOOL)a4
{
  v4 = a4;
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count] == 1)
  {
    v7 = [v6 firstObject];
    v8 = [a1 descriptorForRequiredKeys];
    v27[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v10 = [v7 areKeysAvailable:v9];

    if (v10)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
      v12 = [a1 allAvailableServerUUIDsForContact:v7];
      [v11 _cn_setNonNilObject:v12 forKey:@"carddav-uuids"];

      v13 = [a1 distinctEmailAddressesForContact:v7];
      [v11 _cn_setNonNilObject:v13 forKey:@"email-addresses"];

      v14 = [a1 distinctPhoneNumbersForContact:v7];
      [v11 _cn_setNonNilObject:v14 forKey:@"phone-numbers"];

      v15 = [a1 isContactACompany:v7];
      v16 = sNilStringIfEmpty;
      if (v15)
      {
        v17 = [v7 organizationName];
        v18 = v16[2](v16, v17);
        [v11 _cn_setNonNilObject:v18 forKey:@"organization-name"];

        [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"is-organization"];
      }

      else
      {
        v20 = [v7 givenName];
        v21 = v16[2](v16, v20);
        [v11 _cn_setNonNilObject:v21 forKey:@"first-name"];

        v22 = sNilStringIfEmpty;
        v23 = [v7 familyName];
        v24 = v22[2](v22, v23);
        [v11 _cn_setNonNilObject:v24 forKey:@"last-name"];
      }

      if ((*(*MEMORY[0x1E6996548] + 16))())
      {
        v19 = MEMORY[0x1E695E0F8];
      }

      else
      {
        [v11 setObject:&unk_1F09874E0 forKeyedSubscript:@"version"];
        v25 = [a1 fullNameForContact:v7];
        [v11 setObject:v25 forKeyedSubscript:@"contact-name"];

        if (v4)
        {
          [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"unified"];
        }

        v19 = v11;
      }
    }

    else
    {
      v19 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v19 = MEMORY[0x1E695E0F8];
  }

  return v19;
}

+ (id)userActivityTitleWithContacts:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = [a1 fullNameForContact:v5];
  }

  else
  {
    v6 = &stru_1F094DAB0;
  }

  return v6;
}

+ (id)allAvailableServerUUIDsForContact:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E6996530];
  v5 = [v3 linkedContacts];
  if ((*(v4 + 16))(v4, v5))
  {
    v13[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v6 = [v3 linkedContacts];
  }

  v7 = v6;

  v8 = [v7 _cn_map:sContactServerUUID];
  v9 = [v8 _cn_filter:*MEMORY[0x1E6996550]];

  if ((*(v4 + 16))(v4, v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v10;
}

+ (id)distinctEmailAddressesForContact:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E6996530];
  v5 = [v3 emailAddresses];
  v6 = (*(v4 + 16))(v4, v5);

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v3 emailAddresses];
    v9 = +[CNLabeledValue Value];
    v10 = [v8 _cn_map:v9];

    v11 = [v10 _cn_distinctObjects];

    v12 = [MEMORY[0x1E6996840] IsNotEmpty];
    v13 = [v11 _cn_filter:v12];

    if ((*(v4 + 16))(v4, v13))
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    v7 = v14;
  }

  return v7;
}

+ (id)distinctPhoneNumbersForContact:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E6996530];
  v5 = [v3 phoneNumbers];
  v6 = (*(v4 + 16))(v4, v5);

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v3 phoneNumbers];
    v9 = +[CNLabeledValue Value];
    v10 = [v8 _cn_map:v9];
    v11 = +[CNPhoneNumber StringValue];
    v12 = [v10 _cn_map:v11];

    v13 = [v12 _cn_distinctObjects];

    v14 = [MEMORY[0x1E6996840] IsNotEmpty];
    v15 = [v13 _cn_filter:v14];

    if ((*(v4 + 16))(v4, v15))
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    v7 = v16;
  }

  return v7;
}

@end