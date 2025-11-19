@interface PKPeerPaymentIntentHandler
+ (void)connectToIMDaemonController;
- (PKIntentHandlerDelegate)delegate;
- (PKPeerPaymentIntentHandler)initWithDelegate:(id)a3 intentQueue:(id)a4;
- (id)_allHandlesForContact:(id)a3;
- (id)_canonicalizedMessagesHandleForContactHandle:(id)a3;
- (id)_contactsForPersons:(id)a3;
- (id)_mostRecentlyUsedHandle:(id)a3;
- (id)_personForContact:(id)a3 handle:(id)a4 otherAliases:(id)a5 customIdentifier:(id)a6;
- (id)_personForContactUsingMostRecentlyUsedHandle:(id)a3;
- (id)_personForDictatedPhoneNumberOrEmail:(id)a3;
- (id)_personsForContactsUsingMostRecentlyUsedHandle:(id)a3;
- (id)_personsForHandlesOnContactPreferringMostRecentlyUsed:(id)a3;
- (id)_siriMatchResult:(id)a3;
- (id)inCurrencyAmountFromPKAmount:(id)a3;
- (id)pkCurrencyAmountFromIntentAmount:(id)a3;
- (id)resolveSiriMatchesForPerson:(id)a3;
- (id)siriLocale;
- (void)_sendComposition:(id)a3 toRecipient:(id)a4;
- (void)peerPaymentRegistrationStatusWithCompletion:(id)a3;
- (void)sendMessage:(id)a3 toRecipient:(id)a4;
- (void)validateCurrencyAmount:(id)a3 completion:(id)a4;
@end

@implementation PKPeerPaymentIntentHandler

+ (void)connectToIMDaemonController
{
  if (qword_100019830 != -1)
  {
    sub_10000BFA0();
  }
}

- (PKPeerPaymentIntentHandler)initWithDelegate:(id)a3 intentQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = PKPeerPaymentIntentHandler;
  v8 = [(PKPeerPaymentIntentHandler *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_intentQueue, a4);
    v10 = objc_alloc_init(CNContactStore);
    contactStore = v9->_contactStore;
    v9->_contactStore = v10;

    v12 = objc_alloc_init(PKPeerPaymentService);
    peerPaymentService = v9->_peerPaymentService;
    v9->_peerPaymentService = v12;

    v14 = +[PKPeerPaymentWebService sharedService];
    v15 = [[PKPeerPaymentController alloc] initWithPeerPaymentWebService:v14];
    peerPaymentController = v9->_peerPaymentController;
    v9->_peerPaymentController = v15;

    [(PKPeerPaymentController *)v9->_peerPaymentController setDelegate:v9];
    if (PKUseMockSURFServer())
    {
      v9->_registrationStatus = 1;
    }

    dispatch_async(&_dispatch_main_q, &stru_1000144F0);
  }

  return v9;
}

- (id)pkCurrencyAmountFromIntentAmount:(id)a3
{
  v3 = a3;
  v4 = [v3 amount];
  v5 = [v3 currencyCode];

  if (v4 && [v5 length] && (+[NSDecimalNumber notANumber](NSDecimalNumber, "notANumber"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqualToNumber:", v6), v6, (v7 & 1) == 0))
  {
    v8 = [[PKCurrencyAmount alloc] initWithAmount:v4 currency:v5 exponent:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)inCurrencyAmountFromPKAmount:(id)a3
{
  v3 = a3;
  v4 = [INCurrencyAmount alloc];
  v5 = [v3 amount];
  v6 = [v3 currency];

  v7 = [v4 initWithAmount:v5 currencyCode:v6];

  return v7;
}

- (id)resolveSiriMatchesForPerson:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = +[INPersonResolutionResult needsValue];
LABEL_7:
    v9 = v8;
    v10 = [(PKPeerPaymentIntentHandler *)self _siriMatchResult:v8];
    goto LABEL_33;
  }

  v6 = [v4 customIdentifier];

  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User resolved disambiguation of aliases by selecting person: %@", &v27, 0xCu);
    }

    v8 = [INPersonResolutionResult successWithResolvedPerson:v5];
    goto LABEL_7;
  }

  v9 = [v5 siriMatches];
  v11 = [(PKPeerPaymentIntentHandler *)self _contactsForPersons:v9];
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 134217984;
    v28 = [v11 count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found %lu matching contacts", &v27, 0xCu);
  }

  if ([v11 count])
  {
    if ([v11 count] == 1)
    {
      v13 = [v11 firstObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412290;
        v28 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resolved contact: %@", &v27, 0xCu);
      }

      v14 = [(PKPeerPaymentIntentHandler *)self _personsForHandlesOnContactPreferringMostRecentlyUsed:v13];
      if ([v14 count] == 1)
      {
        v15 = [v14 firstObject];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412290;
          v28 = v15;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resolved alias: %@", &v27, 0xCu);
        }

        v16 = [INPersonResolutionResult successWithResolvedPerson:v15];
        v10 = [(PKPeerPaymentIntentHandler *)self _siriMatchResult:v16];

        goto LABEL_32;
      }

      v21 = [v14 count];
      v22 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (!v21)
      {
        if (v22)
        {
          LOWORD(v27) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Contact has no phone numbers or email addresses", &v27, 2u);
        }

        v26 = +[INPersonResolutionResult unsupported];
        v10 = [(PKPeerPaymentIntentHandler *)self _siriMatchResult:v26];

        [v10 setIsPersonWithNoHandle:1];
        goto LABEL_32;
      }

      if (v22)
      {
        v23 = [v14 count];
        v27 = 134217984;
        v28 = v23;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Asking user to disambiguate among %lu aliases for contact", &v27, 0xCu);
      }

      v18 = [INPersonResolutionResult disambiguationWithPeopleToDisambiguate:v14];
      goto LABEL_29;
    }

    v13 = [(PKPeerPaymentIntentHandler *)self _personsForContactsUsingMostRecentlyUsedHandle:v11];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v13 count];
      v27 = 134217984;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Asking user to disambiguate among %lu contacts", &v27, 0xCu);
    }

    v20 = [INPersonResolutionResult disambiguationWithPeopleToDisambiguate:v13];
LABEL_31:
    v14 = v20;
    v10 = [(PKPeerPaymentIntentHandler *)self _siriMatchResult:v20];
    goto LABEL_32;
  }

  v17 = [v5 personHandle];
  v13 = [v17 value];

  if (![v13 length])
  {
    v20 = +[INPersonResolutionResult unsupported];
    goto LABEL_31;
  }

  v14 = [(PKPeerPaymentIntentHandler *)self _personForDictatedPhoneNumberOrEmail:v13];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resolved person from dictated phone number or email: %@", &v27, 0xCu);
  }

  v18 = [INPersonResolutionResult successWithResolvedPerson:v14];
LABEL_29:
  v24 = v18;
  v10 = [(PKPeerPaymentIntentHandler *)self _siriMatchResult:v18];

LABEL_32:
LABEL_33:

  return v10;
}

- (id)_siriMatchResult:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKSiriMatchesPersonResolutionResult);
  [(PKSiriMatchesPersonResolutionResult *)v4 setPersonResolutionResult:v3];

  return v4;
}

- (void)validateCurrencyAmount:(id)a3 completion:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [(PKPeerPaymentIntentHandler *)self peerPaymentService];
  if (!v20 || !v7)
  {
    (*(v6 + 2))(v6, 0, 0, 0, 1);
    goto LABEL_12;
  }

  v8 = [v20 currency];
  v9 = [v20 amount];
  v10 = [v7 account];
  v11 = [v10 currentBalance];
  v12 = [v11 currency];

  v13 = [v10 sendToUserFeatureDescriptor];
  v14 = [v13 minimumAmount];
  v15 = [v13 maximumAmount];
  v19 = v8;
  if (v12)
  {
    v16 = [v12 caseInsensitiveCompare:{v8, v8}] != 0;
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_9:
    v17 = 0;
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  v16 = 0;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = [v9 compare:{v14, v19}] == -1;
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_6:
  v18 = [v9 compare:{v15, v19}] == 1;
LABEL_11:
  (*(v6 + 2))(v6, v16, v17, v18, 0);

LABEL_12:
}

- (id)_contactsForPersons:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v21 + 1) + 8 * i) contactIdentifier];
          [v5 safelyAddObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v28 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
    v13 = [CNContact predicateForContactsWithIdentifiers:v12];

    v27[0] = CNContactNamePrefixKey;
    v27[1] = CNContactGivenNameKey;
    v27[2] = CNContactMiddleNameKey;
    v27[3] = CNContactFamilyNameKey;
    v27[4] = CNContactNameSuffixKey;
    v27[5] = CNContactNicknameKey;
    v27[6] = CNContactPhoneNumbersKey;
    v27[7] = CNContactEmailAddressesKey;
    v14 = [NSArray arrayWithObjects:v27 count:8];
    contactStore = self->_contactStore;
    v20 = 0;
    v16 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v13 keysToFetch:v14 error:&v20];
    v17 = v20;
    if (v17)
    {
      v18 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Error fetching contacts: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_personsForContactsUsingMostRecentlyUsedHandle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PKPeerPaymentIntentHandler *)self _personForContactUsingMostRecentlyUsedHandle:*(*(&v14 + 1) + 8 * i), v14];
        [v5 safelyAddObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)_personsForHandlesOnContactPreferringMostRecentlyUsed:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentIntentHandler *)self _allHandlesForContact:v4];
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = [v5 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found %lu handles for contact", buf, 0xCu);
  }

  v7 = [(PKPeerPaymentIntentHandler *)self _mostRecentlyUsedHandle:v5];
  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v8)
    {
      *buf = 138412290;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User has most recently interacted with handle: %@", buf, 0xCu);
    }

    [v5 removeObject:v7];
    v9 = [v4 identifier];
    v10 = [(PKPeerPaymentIntentHandler *)self _personForContact:v4 handle:v7 otherAliases:v5 customIdentifier:v9];
    v27 = v10;
    v11 = [NSArray arrayWithObjects:&v27 count:1];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User has not recently interacted with any of the handles", buf, 2u);
    }

    v9 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v5;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [v4 identifier];
          v19 = [(PKPeerPaymentIntentHandler *)self _personForContact:v4 handle:v17 otherAliases:0 customIdentifier:v18];
          [v9 addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    v11 = [v9 copy];
    v5 = v21;
  }

  return v11;
}

- (id)_allHandlesForContact:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = v3;
  v5 = [v3 phoneNumbers];
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = INPersonHandleLabelForCNLabeledValue();
        v12 = [INPersonHandle alloc];
        v13 = [v10 value];
        v14 = [v13 stringValue];
        v15 = [v12 initWithValue:v14 type:2 label:v11];

        [v4 addObject:v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [v27 emailAddresses];
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * j);
        v22 = INPersonHandleLabelForCNLabeledValue();
        v23 = [INPersonHandle alloc];
        v24 = [v21 value];
        v25 = [v23 initWithValue:v24 type:1 label:v22];

        [v4 addObject:v25];
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }

  return v4;
}

- (id)_personForContactUsingMostRecentlyUsedHandle:(id)a3
{
  v4 = a3;
  v5 = [(PKPeerPaymentIntentHandler *)self _allHandlesForContact:v4];
  v6 = [(PKPeerPaymentIntentHandler *)self _mostRecentlyUsedHandle:v5];
  if (v6)
  {
    v7 = v6;
    [v5 removeObject:v6];
  }

  else if ([v5 count])
  {
    v7 = [v5 firstObject];
    [v5 removeObjectAtIndex:0];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Contact %@ has no phone numbers or email addresses, using an empty person handle", &v12, 0xCu);
    }

    v7 = [[INPersonHandle alloc] initWithValue:0 type:0];
  }

  if (![v5 count])
  {

    v5 = 0;
  }

  v9 = [v4 identifier];
  v10 = [(PKPeerPaymentIntentHandler *)self _personForContact:v4 handle:v7 otherAliases:v5 customIdentifier:v9];

  return v10;
}

- (id)_personForContact:(id)a3 handle:(id)a4 otherAliases:(id)a5 customIdentifier:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v12 nameComponents];
  v14 = [v12 pkFullyQualifiedName];
  v15 = [INPerson alloc];
  v16 = [v12 identifier];

  v17 = [v15 initWithPersonHandle:v11 nameComponents:v13 displayName:v14 image:0 contactIdentifier:v16 customIdentifier:v9 aliases:v10 suggestionType:1];

  return v17;
}

- (id)_personForDictatedPhoneNumberOrEmail:(id)a3
{
  v3 = a3;
  v4 = [PKPeerPaymentCounterpartHandleFormatter formatCounterpartHandle:v3];
  if ([v3 containsString:@"@"])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [[INPersonHandle alloc] initWithValue:v3 type:v5];

  v7 = [[INPerson alloc] initWithPersonHandle:v6 nameComponents:0 displayName:v4 image:0 contactIdentifier:0 customIdentifier:0];

  return v7;
}

- (void)sendMessage:(id)a3 toRecipient:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = [v6 underlyingMessage];
  v9 = [v6 memo];
  v10 = [CKComposition compositionWithMSMessage:v8 appExtensionIdentifier:PKPeerPaymentMessagesExtensionBundleIdentifier];
  if ([v9 length])
  {
    v11 = [[NSAttributedString alloc] initWithString:v9];
    v12 = [v10 compositionByAppendingText:v11];

    v10 = v12;
  }

  v13 = PKLogFacilityTypeGetObject();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v14)
    {
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sending composition: %@", &v15, 0xCu);
    }

    [(PKPeerPaymentIntentHandler *)self _sendComposition:v10 toRecipient:v7];
  }

  else
  {
    if (v14)
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Could not construct composition for peer payment message: %@", &v15, 0xCu);
    }
  }
}

- (void)_sendComposition:(id)a3 toRecipient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v5;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending composition %@ to recipient %@", buf, 0x16u);
  }

  [objc_opt_class() connectToIMDaemonController];
  v31 = v6;
  v8 = [NSArray arrayWithObjects:&v31 count:1];
  v9 = CKMakeHandlesFromRecipients();
  v10 = [v9 firstObject];

  v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v11)
    {
      *buf = 138412290;
      v33 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resolved recipient IMHandle: %@", buf, 0xCu);
    }

    v12 = +[IMChatRegistry sharedRegistry];
    v13 = [v12 chatWithHandle:v10];

    [v13 join];
    v14 = [[CKConversation alloc] initWithChat:v13];
    [v14 refreshServiceForSending];
    v15 = [v14 messagesFromComposition:v5];
    if ([v15 count])
    {
      v23 = v10;
      v24 = v6;
      v25 = v5;
      v16 = +[IMService iMessageService];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v27;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v27 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v26 + 1) + 8 * i);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v33 = v22;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending IMMessage: %@", buf, 0xCu);
            }

            [v14 sendMessage:v22 onService:v16 newComposition:0];
          }

          v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v19);
      }

      v6 = v24;
      v5 = v25;
      v10 = v23;
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v33 = v5;
        v34 = 2112;
        v35 = v14;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not create IMMessages with composition: %@ conversation %@", buf, 0x16u);
      }

      v16 = v7;
    }

    v7 = v13;
  }

  else if (v11)
  {
    *buf = 138412290;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not resolve IMHandle for recipient %@", buf, 0xCu);
  }
}

- (void)peerPaymentRegistrationStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_registrationStatus && self->_hasAccountResolution)
  {
    accountResolution = self->_accountResolution;
    (*(v4 + 2))(v4);
  }

  else
  {
    v7 = [(PKPeerPaymentController *)self->_peerPaymentController peerPaymentPass];
    v8 = [(PKPeerPaymentController *)self->_peerPaymentController account];
    v9 = PKPeerPaymentAccountResolutionForAccountAndPeerPaymentPass();
    self->_accountResolution = v9;
    self->_hasAccountResolution = 1;
    peerPaymentService = self->_peerPaymentService;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100002FE8;
    v11[3] = &unk_100014540;
    v11[4] = self;
    v12 = v5;
    v13 = v9;
    [(PKPeerPaymentService *)peerPaymentService registrationStatusWithCompletion:v11];
  }
}

- (id)_mostRecentlyUsedHandle:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v26 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v7)
    {
      v8 = *v45;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v45 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v44 + 1) + 8 * i);
          v11 = [v10 value];
          v12 = [(PKPeerPaymentIntentHandler *)self _canonicalizedMessagesHandleForContactHandle:v11];
          if (v12)
          {
            [v5 setObject:v10 forKeyedSubscript:v12];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v7);
    }

    v27 = [v5 allKeys];
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = sub_100003544;
    v42 = sub_100003554;
    v43 = 0;
    if ([v27 count])
    {
      v32 = _NSConcreteStackBlock;
      v33 = 3221225472;
      v34 = sub_10000355C;
      v35 = &unk_100014568;
      v37 = &v38;
      v36 = v27;
      IMDPersistencePerformBlock();
    }

    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v39[5] count];
      v15 = v39[5];
      *buf = 134218242;
      v50 = v14;
      v51 = 2112;
      v52 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found recent chats with %lu handles for contact: %@", buf, 0x16u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v39[5];
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v48 count:16];
    if (v17)
    {
      v18 = *v29;
LABEL_17:
      v19 = 0;
      while (1)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v28 + 1) + 8 * v19);
        v21 = PKPeerPaymentExistingiMessageChatForRecipientAddress();
        v22 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          break;
        }

        if (v22)
        {
          *buf = 138412290;
          v50 = v20;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Chat with %@ was NOT on an iMessage thread", buf, 0xCu);
        }

        if (v17 == ++v19)
        {
          v17 = [v16 countByEnumeratingWithState:&v28 objects:v48 count:16];
          if (v17)
          {
            goto LABEL_17;
          }

          goto LABEL_25;
        }
      }

      if (v22)
      {
        *buf = 138412290;
        v50 = v20;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Chat with %@ was on an iMessage thread", buf, 0xCu);
      }

      v24 = v20;
      if (v24)
      {
        v23 = [v5 objectForKeyedSubscript:v24];
        v16 = v24;
        goto LABEL_30;
      }

      v23 = 0;
    }

    else
    {
LABEL_25:
      v23 = 0;
LABEL_30:
    }

    _Block_object_dispose(&v38, 8);

    v4 = v26;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_canonicalizedMessagesHandleForContactHandle:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_7;
  }

  if (![v3 hasPrefix:@"+"])
  {
    if (![v4 _appearsToBePhoneNumber])
    {
      [v4 _appearsToBeEmail];
      v5 = IMNormalizeFormattedString();
      goto LABEL_9;
    }

    v6 = IMPhoneNumberRefCopyForPhoneNumber();
    if (v6)
    {
      v7 = v6;
      v8 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
      CFRelease(v7);
      goto LABEL_10;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_10;
  }

  v5 = IMCanonicalizeFormattedString();
LABEL_9:
  v8 = v5;
LABEL_10:

  return v8;
}

- (id)siriLocale
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 languageCode];

  v4 = [v3 length];
  v5 = PKLogFacilityTypeGetObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Using Siri language code: %@", &v10, 0xCu);
    }

    v7 = [NSLocale localeWithLocaleIdentifier:v3];
  }

  else
  {
    if (v6)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Siri language code could not be determined, using device locale instead.", &v10, 2u);
    }

    v7 = +[NSLocale pk_preferredLocale];
  }

  v8 = v7;

  return v8;
}

- (PKIntentHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end