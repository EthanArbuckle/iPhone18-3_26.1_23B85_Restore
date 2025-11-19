@interface CNMutableContact
+ (id)contactForHandle:(id)a3 isoCountryCode:(id)a4 metadataCache:(id)a5;
+ (id)contactForRecentCall:(id)a3 metadataCache:(id)a4;
+ (id)suggestedContactForHandle:(id)a3 isoCountryCode:(id)a4 metadataCache:(id)a5;
@end

@implementation CNMutableContact

+ (id)contactForHandle:(id)a3 isoCountryCode:(id)a4 metadataCache:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(CNMutableContact);
  v12 = [v8 value];
  if ([v12 length])
  {
    if (v10)
    {
      v13 = [a1 suggestedContactForHandle:v8 isoCountryCode:v9 metadataCache:v10];
      v14 = v13;
      if (v13)
      {
        v15 = v13;

        v11 = v15;
      }

      v16 = [[TUMetadataDestinationID alloc] initWithDestinationID:v12 isoCountryCode:v9];
      if (v16)
      {
        v17 = [v10 metadataForDestinationID:v16];
        v18 = [v17 metadataForProvider:objc_opt_class()];
        if (v18)
        {
          [v11 setOrganizationName:v18];
        }
      }
    }

    v19 = v12;
    v20 = [v8 type];
    if (v20 == 2)
    {
      v21 = [CNPhoneNumber phoneNumberWithDigits:v19 countryCode:v9];
    }

    else
    {
      if (v20 != 1)
      {
        goto LABEL_15;
      }

      v21 = [[CNSocialProfile alloc] initWithUrlString:0 username:v19 userIdentifier:0 service:0];
    }

    v22 = v21;

    v19 = v22;
LABEL_15:
    v23 = [CNLabeledValue labeledValueWithLabel:0 value:v19];
    v24 = [v8 type];
    if (v24 == 3)
    {
      v27 = v23;
      v25 = [NSArray arrayWithObjects:&v27 count:1];
      [v11 setEmailAddresses:v25];
    }

    else if (v24 == 2)
    {
      v28 = v23;
      v25 = [NSArray arrayWithObjects:&v28 count:1];
      [v11 setPhoneNumbers:v25];
    }

    else
    {
      if (v24 != 1)
      {
LABEL_22:

        goto LABEL_23;
      }

      v29 = v23;
      v25 = [NSArray arrayWithObjects:&v29 count:1];
      [v11 setSocialProfiles:v25];
    }

    goto LABEL_22;
  }

LABEL_23:

  return v11;
}

+ (id)contactForRecentCall:(id)a3 metadataCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [TUHandle handleForCHRecentCall:v6];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_23;
  }

  v9 = [v6 isoCountryCode];
  if ([v8 type] == 2)
  {
    if (![v9 length])
    {
      [v6 callStatus];
      v11 = TUCountryCodeForIncomingCall();

      v9 = v11;
    }

    if ([v9 length])
    {
      v12 = TUHomeCountryCode();
      if (([v9 isEqualToString:v12] & 1) == 0)
      {
        v13 = [v8 value];
        v14 = TUNumberToDial();

        v15 = [[TUHandle alloc] initWithType:objc_msgSend(v8 value:{"type"), v14}];
        v8 = v15;
      }
    }
  }

  v10 = [a1 contactForHandle:v8 isoCountryCode:v9 metadataCache:v7];
  v16 = [v6 imageURL];

  if (!v16)
  {
    [v10 setContactType:{objc_msgSend(v6, "callDirectoryIdentityType") == 2}];
    if ([v10 contactType])
    {
      v18 = [v6 fullName];
      [v10 setOrganizationName:v18];
    }

    else
    {
      v18 = [v6 parsedNamesStrippingEmoji];
      if ([v18 count] < 3)
      {
        if ([v18 count])
        {
          v20 = [v18 firstObject];
          [v10 setGivenName:v20];
        }

        if ([v18 count] < 2)
        {
          goto LABEL_21;
        }

        v19 = [v18 lastObject];
        [v10 setFamilyName:v19];
      }

      else
      {
        v19 = [v6 fullName];
        [v10 setGivenName:v19];
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v17 = [v6 name];
  [v10 setOrganizationName:v17];

  [v10 setContactType:1];
LABEL_22:

LABEL_23:

  return v10;
}

+ (id)suggestedContactForHandle:(id)a3 isoCountryCode:(id)a4 metadataCache:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v9 providers];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v27 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(v10);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = objc_opt_class();
    v17 = [v7 value];
    v14 = [v16 newestSuggestedContactForDestinationID:v17];

    if (!v14)
    {
      v11 = 0;
      goto LABEL_17;
    }

    v11 = [v14 mutableCopy];
    v18 = [TUMetadataDestinationID alloc];
    v19 = [v7 value];
    v15 = [v18 initWithDestinationID:v19 isoCountryCode:v8];

    if (v15)
    {
      v20 = [v9 metadataForDestinationID:v15];
      v21 = [v20 metadataForProvider:objc_opt_class()];
      if ([v21 length])
      {
        [v11 setContactType:1];
        [v11 setOrganizationName:v21];
      }
    }
  }

  else
  {
LABEL_9:
    v14 = 0;
    v15 = v10;
  }

LABEL_17:
  v22 = v11;

  return v11;
}

@end