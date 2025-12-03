@interface CNMutableContact
+ (id)contactForHandle:(id)handle isoCountryCode:(id)code metadataCache:(id)cache;
+ (id)contactForRecentCall:(id)call metadataCache:(id)cache;
+ (id)suggestedContactForHandle:(id)handle isoCountryCode:(id)code metadataCache:(id)cache;
@end

@implementation CNMutableContact

+ (id)contactForHandle:(id)handle isoCountryCode:(id)code metadataCache:(id)cache
{
  handleCopy = handle;
  codeCopy = code;
  cacheCopy = cache;
  v11 = objc_alloc_init(CNMutableContact);
  value = [handleCopy value];
  if ([value length])
  {
    if (cacheCopy)
    {
      v13 = [self suggestedContactForHandle:handleCopy isoCountryCode:codeCopy metadataCache:cacheCopy];
      v14 = v13;
      if (v13)
      {
        v15 = v13;

        v11 = v15;
      }

      v16 = [[TUMetadataDestinationID alloc] initWithDestinationID:value isoCountryCode:codeCopy];
      if (v16)
      {
        v17 = [cacheCopy metadataForDestinationID:v16];
        v18 = [v17 metadataForProvider:objc_opt_class()];
        if (v18)
        {
          [v11 setOrganizationName:v18];
        }
      }
    }

    v19 = value;
    type = [handleCopy type];
    if (type == 2)
    {
      v21 = [CNPhoneNumber phoneNumberWithDigits:v19 countryCode:codeCopy];
    }

    else
    {
      if (type != 1)
      {
        goto LABEL_15;
      }

      v21 = [[CNSocialProfile alloc] initWithUrlString:0 username:v19 userIdentifier:0 service:0];
    }

    v22 = v21;

    v19 = v22;
LABEL_15:
    v23 = [CNLabeledValue labeledValueWithLabel:0 value:v19];
    type2 = [handleCopy type];
    if (type2 == 3)
    {
      v27 = v23;
      v25 = [NSArray arrayWithObjects:&v27 count:1];
      [v11 setEmailAddresses:v25];
    }

    else if (type2 == 2)
    {
      v28 = v23;
      v25 = [NSArray arrayWithObjects:&v28 count:1];
      [v11 setPhoneNumbers:v25];
    }

    else
    {
      if (type2 != 1)
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

+ (id)contactForRecentCall:(id)call metadataCache:(id)cache
{
  callCopy = call;
  cacheCopy = cache;
  v8 = [TUHandle handleForCHRecentCall:callCopy];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_23;
  }

  isoCountryCode = [callCopy isoCountryCode];
  if ([v8 type] == 2)
  {
    if (![isoCountryCode length])
    {
      [callCopy callStatus];
      v11 = TUCountryCodeForIncomingCall();

      isoCountryCode = v11;
    }

    if ([isoCountryCode length])
    {
      v12 = TUHomeCountryCode();
      if (([isoCountryCode isEqualToString:v12] & 1) == 0)
      {
        value = [v8 value];
        v14 = TUNumberToDial();

        v15 = [[TUHandle alloc] initWithType:objc_msgSend(v8 value:{"type"), v14}];
        v8 = v15;
      }
    }
  }

  v10 = [self contactForHandle:v8 isoCountryCode:isoCountryCode metadataCache:cacheCopy];
  imageURL = [callCopy imageURL];

  if (!imageURL)
  {
    [v10 setContactType:{objc_msgSend(callCopy, "callDirectoryIdentityType") == 2}];
    if ([v10 contactType])
    {
      fullName = [callCopy fullName];
      [v10 setOrganizationName:fullName];
    }

    else
    {
      fullName = [callCopy parsedNamesStrippingEmoji];
      if ([fullName count] < 3)
      {
        if ([fullName count])
        {
          firstObject = [fullName firstObject];
          [v10 setGivenName:firstObject];
        }

        if ([fullName count] < 2)
        {
          goto LABEL_21;
        }

        lastObject = [fullName lastObject];
        [v10 setFamilyName:lastObject];
      }

      else
      {
        lastObject = [callCopy fullName];
        [v10 setGivenName:lastObject];
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  name = [callCopy name];
  [v10 setOrganizationName:name];

  [v10 setContactType:1];
LABEL_22:

LABEL_23:

  return v10;
}

+ (id)suggestedContactForHandle:(id)handle isoCountryCode:(id)code metadataCache:(id)cache
{
  handleCopy = handle;
  codeCopy = code;
  cacheCopy = cache;
  [cacheCopy providers];
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
    value = [handleCopy value];
    v14 = [v16 newestSuggestedContactForDestinationID:value];

    if (!v14)
    {
      v11 = 0;
      goto LABEL_17;
    }

    v11 = [v14 mutableCopy];
    v18 = [TUMetadataDestinationID alloc];
    value2 = [handleCopy value];
    v15 = [v18 initWithDestinationID:value2 isoCountryCode:codeCopy];

    if (v15)
    {
      v20 = [cacheCopy metadataForDestinationID:v15];
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