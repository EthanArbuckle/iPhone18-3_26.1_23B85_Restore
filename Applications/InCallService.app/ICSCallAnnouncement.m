@interface ICSCallAnnouncement
+ (id)announcementWithCall:(id)a3;
- (CNContactStore)contactStore;
- (ICSCallAnnouncement)init;
- (ICSCallAnnouncement)initWithCall:(id)a3;
- (NSArray)contactKeyDescriptors;
- (NSArray)contacts;
- (id)callServiceNameForCall:(id)a3;
- (id)callerNameForCall:(id)a3;
- (id)contactForIdentifier:(id)a3;
- (id)contactsForDestinationID:(id)a3 isoCountryCode:(id)a4;
- (id)text;
- (int64_t)callerNameTypeForCall:(id)a3;
- (void)dealloc;
@end

@implementation ICSCallAnnouncement

+ (id)announcementWithCall:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithCall:v3];

  return v4;
}

- (ICSCallAnnouncement)init
{
  v3 = [NSString stringWithFormat:@"%s is not available for use. To create an object instance use the designated initializer.", "[ICSCallAnnouncement init]"];
  NSLog(@"** TUAssertion failure: %@", v3);

  _TUAssertShouldCrashApplication();
  return 0;
}

- (ICSCallAnnouncement)initWithCall:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ICSCallAnnouncement;
  v5 = [(ICSAnnouncement *)&v20 init];
  if (v5)
  {
    v6 = [v4 handle];
    v7 = [v6 value];
    callDestinationID = v5->_callDestinationID;
    v5->_callDestinationID = v7;

    v9 = [v4 displayName];
    callDisplayName = v5->_callDisplayName;
    v5->_callDisplayName = v9;

    v11 = [v4 isoCountryCode];
    callISOCountryCode = v5->_callISOCountryCode;
    v5->_callISOCountryCode = v11;

    v13 = [(ICSCallAnnouncement *)v5 callServiceNameForCall:v4];
    callServiceName = v5->_callServiceName;
    v5->_callServiceName = v13;

    v15 = [(ICSCallAnnouncement *)v5 callerNameForCall:v4];
    v16 = [v15 copy];
    callerName = v5->_callerName;
    v5->_callerName = v16;

    v5->_callerNameType = [(ICSCallAnnouncement *)v5 callerNameTypeForCall:v4];
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
    v4 = [(ICSCallAnnouncement *)self contactIdentifier];
    v5 = [v4 length];

    if (v5)
    {
      v6 = [(ICSCallAnnouncement *)self contactIdentifier];
      v7 = [(ICSCallAnnouncement *)self contactForIdentifier:v6];

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
      v10 = [(ICSCallAnnouncement *)self callDestinationID];
      v11 = [(ICSCallAnnouncement *)self callISOCountryCode];
      v12 = [(ICSCallAnnouncement *)self contactsForDestinationID:v10 isoCountryCode:v11];
      v13 = self->_contacts;
      self->_contacts = v12;

      contacts = self->_contacts;
    }
  }

  return contacts;
}

- (id)callerNameForCall:(id)a3
{
  v3 = a3;
  v4 = [v3 callerNameFromNetwork];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 callerNameFromNetwork];
LABEL_9:
    v13 = v6;
    goto LABEL_10;
  }

  v7 = [v3 suggestedDisplayName];
  v8 = [v7 length];

  if (v8)
  {
    v6 = [v3 suggestedDisplayName];
    goto LABEL_9;
  }

  v9 = [v3 companyName];
  v10 = [v9 length];

  if (v10)
  {
    v6 = [v3 companyName];
    goto LABEL_9;
  }

  v11 = [v3 localizedLabel];
  v12 = [v11 length];

  if (v12)
  {
    v6 = [v3 localizedLabel];
    goto LABEL_9;
  }

  v15 = [v3 remoteParticipantHandles];
  v16 = [v15 anyObject];
  v13 = [v16 value];

LABEL_10:

  return v13;
}

- (int64_t)callerNameTypeForCall:(id)a3
{
  v3 = a3;
  v4 = [v3 callerNameFromNetwork];
  v5 = [v4 length];

  if (v5)
  {
    goto LABEL_2;
  }

  v7 = [v3 suggestedDisplayName];
  v8 = [v7 length];

  if (v8)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v10 = [v3 companyName];
  v11 = [v10 length];

  if (v11)
  {
LABEL_2:
    v6 = 0;
  }

  else
  {
    v12 = [v3 localizedLabel];
    v13 = [v12 length];

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

- (id)callServiceNameForCall:(id)a3
{
  v3 = a3;
  v4 = [v3 provider];
  if ([v4 isFaceTimeProvider])
  {
    v5 = [v3 isVideo];
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (v5)
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
    if ([v4 isTelephonyProvider])
    {
      v9 = 0;
      goto LABEL_13;
    }

    v10 = @"ANNOUNCEMENT_CALL_PROVIDER_NAME_%@_CALL_TYPE_VIDEO";
    if (([v3 isVideo] & 1) == 0 && !objc_msgSend(v3, "isThirdPartyVideo"))
    {
      v10 = @"ANNOUNCEMENT_CALL_PROVIDER_NAME_%@_CALL_TYPE_AUDIO";
    }

    v7 = +[NSBundle mainBundle];
    v11 = [v7 localizedStringForKey:v10 value:&stru_100361FD0 table:@"InCallService"];
    v12 = [v4 localizedName];
    v9 = [NSString stringWithFormat:v11, v12];
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
  v3 = [(ICSCallAnnouncement *)self contactIdentifier];

  if (v3)
  {
    v3 = [(ICSCallAnnouncement *)self callDisplayName];
  }

  if (![v3 length])
  {
    v4 = [(ICSCallAnnouncement *)self callerName];

    v3 = v4;
  }

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"%@ call from %@." value:&stru_100361FD0 table:@"InCallService"];
  v7 = [(ICSCallAnnouncement *)self callServiceName];
  v8 = [NSString stringWithFormat:v6, v7, v3];

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

- (id)contactForIdentifier:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Retrieving contact matching the specified contact identifier (%@).", buf, 0xCu);
  }

  v6 = [(ICSCallAnnouncement *)self contactStore];
  if (v6)
  {
    v7 = [(ICSCallAnnouncement *)self contactKeyDescriptors];
    v18 = 0;
    v8 = [v6 unifiedContactWithIdentifier:v4 keysToFetch:v7 error:&v18];
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

- (id)contactsForDestinationID:(id)a3 isoCountryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004F84();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v6;
    v34 = 2112;
    v35 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Retrieving contact matching the specified identifier (%@) and ISO country code (%@).", buf, 0x16u);
  }

  v9 = [(ICSCallAnnouncement *)self contactStore];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_26;
  }

  if (![v6 destinationIdIsEmailAddress])
  {
    if (![v6 destinationIdIsPhoneNumber])
    {
      goto LABEL_22;
    }

    if (![v7 length] || (objc_msgSend(v7, "lowercaseString"), v12 = objc_claimAutoreleasedReturnValue(), +[CNPhoneNumber phoneNumberWithDigits:countryCode:](CNPhoneNumber, "phoneNumberWithDigits:countryCode:", v6, v12), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
    {
      v13 = [CNPhoneNumber phoneNumberWithStringValue:v6];
    }

    v10 = [CNContact predicateForContactsMatchingPhoneNumber:v13];

    if (!v10)
    {
      goto LABEL_22;
    }

LABEL_13:
    v14 = [(ICSCallAnnouncement *)self contactKeyDescriptors];
    v31 = 0;
    v11 = [v9 unifiedContactsMatchingPredicate:v10 keysToFetch:v14 error:&v31];
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

  v10 = [CNContact predicateForContactsMatchingEmailAddress:v6];
  if (v10)
  {
    goto LABEL_13;
  }

LABEL_22:
  v10 = sub_100004F84();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100256FEC(v6, v10, v24, v25, v26, v27, v28, v29);
  }

  v11 = 0;
LABEL_25:

LABEL_26:

  return v11;
}

@end