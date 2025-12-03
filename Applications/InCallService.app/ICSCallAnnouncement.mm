@interface ICSCallAnnouncement
+ (id)announcementWithCall:(id)call;
- (CNContactStore)contactStore;
- (ICSCallAnnouncement)init;
- (ICSCallAnnouncement)initWithCall:(id)call;
- (NSArray)contactKeyDescriptors;
- (NSArray)contacts;
- (id)callServiceNameForCall:(id)call;
- (id)callerNameForCall:(id)call;
- (id)contactForIdentifier:(id)identifier;
- (id)contactsForDestinationID:(id)d isoCountryCode:(id)code;
- (id)text;
- (int64_t)callerNameTypeForCall:(id)call;
- (void)dealloc;
@end

@implementation ICSCallAnnouncement

+ (id)announcementWithCall:(id)call
{
  callCopy = call;
  v4 = [objc_alloc(objc_opt_class()) initWithCall:callCopy];

  return v4;
}

- (ICSCallAnnouncement)init
{
  v3 = [NSString stringWithFormat:@"%s is not available for use. To create an object instance use the designated initializer.", "[ICSCallAnnouncement init]"];
  NSLog(@"** TUAssertion failure: %@", v3);

  _TUAssertShouldCrashApplication();
  return 0;
}

- (ICSCallAnnouncement)initWithCall:(id)call
{
  callCopy = call;
  v20.receiver = self;
  v20.super_class = ICSCallAnnouncement;
  v5 = [(ICSAnnouncement *)&v20 init];
  if (v5)
  {
    handle = [callCopy handle];
    value = [handle value];
    callDestinationID = v5->_callDestinationID;
    v5->_callDestinationID = value;

    displayName = [callCopy displayName];
    callDisplayName = v5->_callDisplayName;
    v5->_callDisplayName = displayName;

    isoCountryCode = [callCopy isoCountryCode];
    callISOCountryCode = v5->_callISOCountryCode;
    v5->_callISOCountryCode = isoCountryCode;

    v13 = [(ICSCallAnnouncement *)v5 callServiceNameForCall:callCopy];
    callServiceName = v5->_callServiceName;
    v5->_callServiceName = v13;

    v15 = [(ICSCallAnnouncement *)v5 callerNameForCall:callCopy];
    v16 = [v15 copy];
    callerName = v5->_callerName;
    v5->_callerName = v16;

    v5->_callerNameType = [(ICSCallAnnouncement *)v5 callerNameTypeForCall:callCopy];
    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v5 selector:"handleContactStoreDidChangeNotification:" name:CNContactStoreDidChangeNotification object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICSCallAnnouncement;
  [(ICSCallAnnouncement *)&v4 dealloc];
}

- (NSArray)contacts
{
  contacts = self->_contacts;
  if (!contacts)
  {
    contactIdentifier = [(ICSCallAnnouncement *)self contactIdentifier];
    v5 = [contactIdentifier length];

    if (v5)
    {
      contactIdentifier2 = [(ICSCallAnnouncement *)self contactIdentifier];
      v7 = [(ICSCallAnnouncement *)self contactForIdentifier:contactIdentifier2];

      if (v7)
      {
        v15 = v7;
        v8 = [NSArray arrayWithObjects:&v15 count:1];
        v9 = self->_contacts;
        self->_contacts = v8;
      }
    }

    contacts = self->_contacts;
    if (!contacts)
    {
      callDestinationID = [(ICSCallAnnouncement *)self callDestinationID];
      callISOCountryCode = [(ICSCallAnnouncement *)self callISOCountryCode];
      v12 = [(ICSCallAnnouncement *)self contactsForDestinationID:callDestinationID isoCountryCode:callISOCountryCode];
      v13 = self->_contacts;
      self->_contacts = v12;

      contacts = self->_contacts;
    }
  }

  return contacts;
}

- (id)callerNameForCall:(id)call
{
  callCopy = call;
  callerNameFromNetwork = [callCopy callerNameFromNetwork];
  v5 = [callerNameFromNetwork length];

  if (v5)
  {
    callerNameFromNetwork2 = [callCopy callerNameFromNetwork];
LABEL_9:
    value = callerNameFromNetwork2;
    goto LABEL_10;
  }

  suggestedDisplayName = [callCopy suggestedDisplayName];
  v8 = [suggestedDisplayName length];

  if (v8)
  {
    callerNameFromNetwork2 = [callCopy suggestedDisplayName];
    goto LABEL_9;
  }

  companyName = [callCopy companyName];
  v10 = [companyName length];

  if (v10)
  {
    callerNameFromNetwork2 = [callCopy companyName];
    goto LABEL_9;
  }

  localizedLabel = [callCopy localizedLabel];
  v12 = [localizedLabel length];

  if (v12)
  {
    callerNameFromNetwork2 = [callCopy localizedLabel];
    goto LABEL_9;
  }

  remoteParticipantHandles = [callCopy remoteParticipantHandles];
  anyObject = [remoteParticipantHandles anyObject];
  value = [anyObject value];

LABEL_10:

  return value;
}

- (int64_t)callerNameTypeForCall:(id)call
{
  callCopy = call;
  callerNameFromNetwork = [callCopy callerNameFromNetwork];
  v5 = [callerNameFromNetwork length];

  if (v5)
  {
    goto LABEL_2;
  }

  suggestedDisplayName = [callCopy suggestedDisplayName];
  v8 = [suggestedDisplayName length];

  if (v8)
  {
    v6 = 1;
    goto LABEL_5;
  }

  companyName = [callCopy companyName];
  v11 = [companyName length];

  if (v11)
  {
LABEL_2:
    v6 = 0;
  }

  else
  {
    localizedLabel = [callCopy localizedLabel];
    v13 = [localizedLabel length];

    if (v13)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }
  }

LABEL_5:

  return v6;
}

- (id)callServiceNameForCall:(id)call
{
  callCopy = call;
  provider = [callCopy provider];
  if ([provider isFaceTimeProvider])
  {
    isVideo = [callCopy isVideo];
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (isVideo)
    {
      v8 = @"ANNOUNCEMENT_FACETIME_VIDEO";
    }

    else
    {
      v8 = @"ANNOUNCEMENT_FACETIME_AUDIO";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_100361FD0 table:@"InCallService"];
  }

  else
  {
    if ([provider isTelephonyProvider])
    {
      v9 = 0;
      goto LABEL_13;
    }

    v10 = @"ANNOUNCEMENT_CALL_PROVIDER_NAME_%@_CALL_TYPE_VIDEO";
    if (([callCopy isVideo] & 1) == 0 && !objc_msgSend(callCopy, "isThirdPartyVideo"))
    {
      v10 = @"ANNOUNCEMENT_CALL_PROVIDER_NAME_%@_CALL_TYPE_AUDIO";
    }

    v7 = +[NSBundle mainBundle];
    v11 = [v7 localizedStringForKey:v10 value:&stru_100361FD0 table:@"InCallService"];
    localizedName = [provider localizedName];
    v9 = [NSString stringWithFormat:v11, localizedName];
  }

LABEL_13:

  return v9;
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = +[CNContactStore contactStore];
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (id)text
{
  contactIdentifier = [(ICSCallAnnouncement *)self contactIdentifier];

  if (contactIdentifier)
  {
    contactIdentifier = [(ICSCallAnnouncement *)self callDisplayName];
  }

  if (![contactIdentifier length])
  {
    callerName = [(ICSCallAnnouncement *)self callerName];

    contactIdentifier = callerName;
  }

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"%@ call from %@." value:&stru_100361FD0 table:@"InCallService"];
  callServiceName = [(ICSCallAnnouncement *)self callServiceName];
  v8 = [NSString stringWithFormat:v6, callServiceName, contactIdentifier];

  return v8;
}

- (NSArray)contactKeyDescriptors
{
  v4[0] = CNContactGivenNameKey;
  v4[1] = CNContactMiddleNameKey;
  v4[2] = CNContactFamilyNameKey;
  v4[3] = CNContactNicknameKey;
  v4[4] = CNContactPhoneticGivenNameKey;
  v4[5] = CNContactPhoneticMiddleNameKey;
  v4[6] = CNContactPhoneticFamilyNameKey;
  v4[7] = CNContactOrganizationNameKey;
  v4[8] = CNContactPhonemeDataKey;
  v4[9] = CNContactPronunciationGivenNameKey;
  v4[10] = CNContactPronunciationFamilyNameKey;
  v2 = [NSArray arrayWithObjects:v4 count:11];

  return v2;
}

- (id)contactForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Retrieving contact matching the specified contact identifier (%@).", buf, 0xCu);
  }

  contactStore = [(ICSCallAnnouncement *)self contactStore];
  if (contactStore)
  {
    contactKeyDescriptors = [(ICSCallAnnouncement *)self contactKeyDescriptors];
    v18 = 0;
    v8 = [contactStore unifiedContactWithIdentifier:identifierCopy keysToFetch:contactKeyDescriptors error:&v18];
    v9 = v18;

    if (v9 && [v9 code] != 200)
    {
      v10 = sub_100004F84();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100256F80(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)contactsForDestinationID:(id)d isoCountryCode:(id)code
{
  dCopy = d;
  codeCopy = code;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = dCopy;
    v34 = 2112;
    v35 = codeCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Retrieving contact matching the specified identifier (%@) and ISO country code (%@).", buf, 0x16u);
  }

  contactStore = [(ICSCallAnnouncement *)self contactStore];
  if (!contactStore)
  {
    v11 = 0;
    goto LABEL_26;
  }

  if (![dCopy destinationIdIsEmailAddress])
  {
    if (![dCopy destinationIdIsPhoneNumber])
    {
      goto LABEL_22;
    }

    if (![codeCopy length] || (objc_msgSend(codeCopy, "lowercaseString"), v12 = objc_claimAutoreleasedReturnValue(), +[CNPhoneNumber phoneNumberWithDigits:countryCode:](CNPhoneNumber, "phoneNumberWithDigits:countryCode:", dCopy, v12), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
    {
      v13 = [CNPhoneNumber phoneNumberWithStringValue:dCopy];
    }

    v10 = [CNContact predicateForContactsMatchingPhoneNumber:v13];

    if (!v10)
    {
      goto LABEL_22;
    }

LABEL_13:
    contactKeyDescriptors = [(ICSCallAnnouncement *)self contactKeyDescriptors];
    v31 = 0;
    v11 = [contactStore unifiedContactsMatchingPredicate:v10 keysToFetch:contactKeyDescriptors error:&v31];
    v15 = v31;

    if (![v11 count])
    {
      v16 = sub_100004F84();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v10;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Did not find any contacts matching the predicate (%@).", buf, 0xCu);
      }
    }

    if (v15)
    {
      v17 = sub_100004F84();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100256F80(v15, v17, v18, v19, v20, v21, v22, v23);
      }
    }

    goto LABEL_25;
  }

  v10 = [CNContact predicateForContactsMatchingEmailAddress:dCopy];
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_22:
  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100256FEC(dCopy, v10, v24, v25, v26, v27, v28, v29);
  }

  v11 = 0;
LABEL_25:

LABEL_26:

  return v11;
}

@end