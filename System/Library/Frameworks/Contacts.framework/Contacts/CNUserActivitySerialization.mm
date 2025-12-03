@interface CNUserActivitySerialization
+ (id)allAvailableServerUUIDsForContact:(id)contact;
+ (id)descriptorForRequiredKeys;
+ (id)distinctEmailAddressesForContact:(id)contact;
+ (id)distinctPhoneNumbersForContact:(id)contact;
+ (id)userActivityPayloadWithContacts:(id)contacts shouldUnify:(BOOL)unify;
+ (id)userActivityTitleWithContacts:(id)contacts;
@end

@implementation CNUserActivitySerialization

+ (id)descriptorForRequiredKeys
{
  v8[9] = *MEMORY[0x1E69E9840];
  v3 = [CNContactFormatter descriptorForRequiredKeysForStyle:0, @"identifier", @"externalUUID", @"emailAddresses", @"phoneNumbers", @"contactType", @"givenName", @"familyName", @"organizationName"];
  v8[8] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:9];

  v5 = [self description];
  v6 = [CNContact descriptorWithKeyDescriptors:v4 description:v5];

  return v6;
}

+ (id)userActivityPayloadWithContacts:(id)contacts shouldUnify:(BOOL)unify
{
  unifyCopy = unify;
  v27[1] = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  if ([contactsCopy count] == 1)
  {
    firstObject = [contactsCopy firstObject];
    descriptorForRequiredKeys = [self descriptorForRequiredKeys];
    v27[0] = descriptorForRequiredKeys;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v10 = [firstObject areKeysAvailable:v9];

    if (v10)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v12 = [self allAvailableServerUUIDsForContact:firstObject];
      [dictionary _cn_setNonNilObject:v12 forKey:@"carddav-uuids"];

      v13 = [self distinctEmailAddressesForContact:firstObject];
      [dictionary _cn_setNonNilObject:v13 forKey:@"email-addresses"];

      v14 = [self distinctPhoneNumbersForContact:firstObject];
      [dictionary _cn_setNonNilObject:v14 forKey:@"phone-numbers"];

      v15 = [self isContactACompany:firstObject];
      v16 = sNilStringIfEmpty;
      if (v15)
      {
        organizationName = [firstObject organizationName];
        v18 = v16[2](v16, organizationName);
        [dictionary _cn_setNonNilObject:v18 forKey:@"organization-name"];

        [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"is-organization"];
      }

      else
      {
        givenName = [firstObject givenName];
        v21 = v16[2](v16, givenName);
        [dictionary _cn_setNonNilObject:v21 forKey:@"first-name"];

        v22 = sNilStringIfEmpty;
        familyName = [firstObject familyName];
        v24 = v22[2](v22, familyName);
        [dictionary _cn_setNonNilObject:v24 forKey:@"last-name"];
      }

      if ((*(*MEMORY[0x1E6996548] + 16))())
      {
        v19 = MEMORY[0x1E695E0F8];
      }

      else
      {
        [dictionary setObject:&unk_1F09874E0 forKeyedSubscript:@"version"];
        v25 = [self fullNameForContact:firstObject];
        [dictionary setObject:v25 forKeyedSubscript:@"contact-name"];

        if (unifyCopy)
        {
          [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"unified"];
        }

        v19 = dictionary;
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

+ (id)userActivityTitleWithContacts:(id)contacts
{
  contactsCopy = contacts;
  if ([contactsCopy count] == 1)
  {
    firstObject = [contactsCopy firstObject];
    v6 = [self fullNameForContact:firstObject];
  }

  else
  {
    v6 = &stru_1F094DAB0;
  }

  return v6;
}

+ (id)allAvailableServerUUIDsForContact:(id)contact
{
  v13[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v4 = *MEMORY[0x1E6996530];
  linkedContacts = [contactCopy linkedContacts];
  if ((*(v4 + 16))(v4, linkedContacts))
  {
    v13[0] = contactCopy;
    linkedContacts2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    linkedContacts2 = [contactCopy linkedContacts];
  }

  v7 = linkedContacts2;

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

+ (id)distinctEmailAddressesForContact:(id)contact
{
  contactCopy = contact;
  v4 = *MEMORY[0x1E6996530];
  emailAddresses = [contactCopy emailAddresses];
  v6 = (*(v4 + 16))(v4, emailAddresses);

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    emailAddresses2 = [contactCopy emailAddresses];
    v9 = +[CNLabeledValue Value];
    v10 = [emailAddresses2 _cn_map:v9];

    _cn_distinctObjects = [v10 _cn_distinctObjects];

    isNotEmpty = [MEMORY[0x1E6996840] IsNotEmpty];
    v13 = [_cn_distinctObjects _cn_filter:isNotEmpty];

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

+ (id)distinctPhoneNumbersForContact:(id)contact
{
  contactCopy = contact;
  v4 = *MEMORY[0x1E6996530];
  phoneNumbers = [contactCopy phoneNumbers];
  v6 = (*(v4 + 16))(v4, phoneNumbers);

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    phoneNumbers2 = [contactCopy phoneNumbers];
    v9 = +[CNLabeledValue Value];
    v10 = [phoneNumbers2 _cn_map:v9];
    v11 = +[CNPhoneNumber StringValue];
    v12 = [v10 _cn_map:v11];

    _cn_distinctObjects = [v12 _cn_distinctObjects];

    isNotEmpty = [MEMORY[0x1E6996840] IsNotEmpty];
    v15 = [_cn_distinctObjects _cn_filter:isNotEmpty];

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