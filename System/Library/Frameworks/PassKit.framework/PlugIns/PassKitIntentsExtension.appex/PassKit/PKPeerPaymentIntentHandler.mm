@interface PKPeerPaymentIntentHandler
+ (void)connectToIMDaemonController;
- (PKIntentHandlerDelegate)delegate;
- (PKPeerPaymentIntentHandler)initWithDelegate:(id)delegate intentQueue:(id)queue;
- (id)_allHandlesForContact:(id)contact;
- (id)_canonicalizedMessagesHandleForContactHandle:(id)handle;
- (id)_contactsForPersons:(id)persons;
- (id)_mostRecentlyUsedHandle:(id)handle;
- (id)_personForContact:(id)contact handle:(id)handle otherAliases:(id)aliases customIdentifier:(id)identifier;
- (id)_personForContactUsingMostRecentlyUsedHandle:(id)handle;
- (id)_personForDictatedPhoneNumberOrEmail:(id)email;
- (id)_personsForContactsUsingMostRecentlyUsedHandle:(id)handle;
- (id)_personsForHandlesOnContactPreferringMostRecentlyUsed:(id)used;
- (id)_siriMatchResult:(id)result;
- (id)inCurrencyAmountFromPKAmount:(id)amount;
- (id)pkCurrencyAmountFromIntentAmount:(id)amount;
- (id)resolveSiriMatchesForPerson:(id)person;
- (id)siriLocale;
- (void)_sendComposition:(id)composition toRecipient:(id)recipient;
- (void)peerPaymentRegistrationStatusWithCompletion:(id)completion;
- (void)sendMessage:(id)message toRecipient:(id)recipient;
- (void)validateCurrencyAmount:(id)amount completion:(id)completion;
@end

@implementation PKPeerPaymentIntentHandler

+ (void)connectToIMDaemonController
{
  if (qword_100019830 != -1)
  {
    sub_10000BFA0();
  }
}

- (PKPeerPaymentIntentHandler)initWithDelegate:(id)delegate intentQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = PKPeerPaymentIntentHandler;
  v8 = [(PKPeerPaymentIntentHandler *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_intentQueue, queue);
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

- (id)pkCurrencyAmountFromIntentAmount:(id)amount
{
  amountCopy = amount;
  amount = [amountCopy amount];
  currencyCode = [amountCopy currencyCode];

  if (amount && [currencyCode length] && (+[NSDecimalNumber notANumber](NSDecimalNumber, "notANumber"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(amount, "isEqualToNumber:", v6), v6, (v7 & 1) == 0))
  {
    v8 = [[PKCurrencyAmount alloc] initWithAmount:amount currency:currencyCode exponent:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)inCurrencyAmountFromPKAmount:(id)amount
{
  amountCopy = amount;
  v4 = [INCurrencyAmount alloc];
  amount = [amountCopy amount];
  currency = [amountCopy currency];

  v7 = [v4 initWithAmount:amount currencyCode:currency];

  return v7;
}

- (id)resolveSiriMatchesForPerson:(id)person
{
  personCopy = person;
  v5 = personCopy;
  if (!personCopy)
  {
    v8 = +[INPersonResolutionResult needsValue];
LABEL_7:
    siriMatches = v8;
    v10 = [(PKPeerPaymentIntentHandler *)self _siriMatchResult:v8];
    goto LABEL_33;
  }

  customIdentifier = [personCopy customIdentifier];

  if (customIdentifier)
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

  siriMatches = [v5 siriMatches];
  v11 = [(PKPeerPaymentIntentHandler *)self _contactsForPersons:siriMatches];
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
      firstObject = [v11 firstObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412290;
        v28 = firstObject;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resolved contact: %@", &v27, 0xCu);
      }

      v14 = [(PKPeerPaymentIntentHandler *)self _personsForHandlesOnContactPreferringMostRecentlyUsed:firstObject];
      if ([v14 count] == 1)
      {
        firstObject2 = [v14 firstObject];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412290;
          v28 = firstObject2;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resolved alias: %@", &v27, 0xCu);
        }

        v16 = [INPersonResolutionResult successWithResolvedPerson:firstObject2];
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

    firstObject = [(PKPeerPaymentIntentHandler *)self _personsForContactsUsingMostRecentlyUsedHandle:v11];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [firstObject count];
      v27 = 134217984;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Asking user to disambiguate among %lu contacts", &v27, 0xCu);
    }

    v20 = [INPersonResolutionResult disambiguationWithPeopleToDisambiguate:firstObject];
LABEL_31:
    v14 = v20;
    v10 = [(PKPeerPaymentIntentHandler *)self _siriMatchResult:v20];
    goto LABEL_32;
  }

  personHandle = [v5 personHandle];
  firstObject = [personHandle value];

  if (![firstObject length])
  {
    v20 = +[INPersonResolutionResult unsupported];
    goto LABEL_31;
  }

  v14 = [(PKPeerPaymentIntentHandler *)self _personForDictatedPhoneNumberOrEmail:firstObject];
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

- (id)_siriMatchResult:(id)result
{
  resultCopy = result;
  v4 = objc_alloc_init(PKSiriMatchesPersonResolutionResult);
  [(PKSiriMatchesPersonResolutionResult *)v4 setPersonResolutionResult:resultCopy];

  return v4;
}

- (void)validateCurrencyAmount:(id)amount completion:(id)completion
{
  amountCopy = amount;
  completionCopy = completion;
  peerPaymentService = [(PKPeerPaymentIntentHandler *)self peerPaymentService];
  if (!amountCopy || !peerPaymentService)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 1);
    goto LABEL_12;
  }

  currency = [amountCopy currency];
  amount = [amountCopy amount];
  account = [peerPaymentService account];
  currentBalance = [account currentBalance];
  currency2 = [currentBalance currency];

  sendToUserFeatureDescriptor = [account sendToUserFeatureDescriptor];
  minimumAmount = [sendToUserFeatureDescriptor minimumAmount];
  maximumAmount = [sendToUserFeatureDescriptor maximumAmount];
  v19 = currency;
  if (currency2)
  {
    v16 = [currency2 caseInsensitiveCompare:{currency, currency}] != 0;
    if (minimumAmount)
    {
      goto LABEL_5;
    }

LABEL_9:
    v17 = 0;
    if (maximumAmount)
    {
      goto LABEL_6;
    }

LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  v16 = 0;
  if (!minimumAmount)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = [amount compare:{minimumAmount, v19}] == -1;
  if (!maximumAmount)
  {
    goto LABEL_10;
  }

LABEL_6:
  v18 = [amount compare:{maximumAmount, v19}] == 1;
LABEL_11:
  (*(completionCopy + 2))(completionCopy, v16, v17, v18, 0);

LABEL_12:
}

- (id)_contactsForPersons:(id)persons
{
  personsCopy = persons;
  if ([personsCopy count])
  {
    v5 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = personsCopy;
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

          contactIdentifier = [*(*(&v21 + 1) + 8 * i) contactIdentifier];
          [v5 safelyAddObject:contactIdentifier];
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

- (id)_personsForContactsUsingMostRecentlyUsedHandle:(id)handle
{
  handleCopy = handle;
  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = handleCopy;
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

- (id)_personsForHandlesOnContactPreferringMostRecentlyUsed:(id)used
{
  usedCopy = used;
  v5 = [(PKPeerPaymentIntentHandler *)self _allHandlesForContact:usedCopy];
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
    identifier = [usedCopy identifier];
    v10 = [(PKPeerPaymentIntentHandler *)self _personForContact:usedCopy handle:v7 otherAliases:v5 customIdentifier:identifier];
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

    identifier = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
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
          identifier2 = [usedCopy identifier];
          v19 = [(PKPeerPaymentIntentHandler *)self _personForContact:usedCopy handle:v17 otherAliases:0 customIdentifier:identifier2];
          [identifier addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    v11 = [identifier copy];
    v5 = v21;
  }

  return v11;
}

- (id)_allHandlesForContact:(id)contact
{
  contactCopy = contact;
  v4 = objc_alloc_init(NSMutableArray);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = contactCopy;
  phoneNumbers = [contactCopy phoneNumbers];
  v6 = [phoneNumbers countByEnumeratingWithState:&v32 objects:v37 count:16];
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
          objc_enumerationMutation(phoneNumbers);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = INPersonHandleLabelForCNLabeledValue();
        v12 = [INPersonHandle alloc];
        value = [v10 value];
        stringValue = [value stringValue];
        v15 = [v12 initWithValue:stringValue type:2 label:v11];

        [v4 addObject:v15];
      }

      v7 = [phoneNumbers countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  emailAddresses = [v27 emailAddresses];
  v17 = [emailAddresses countByEnumeratingWithState:&v28 objects:v36 count:16];
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
          objc_enumerationMutation(emailAddresses);
        }

        v21 = *(*(&v28 + 1) + 8 * j);
        v22 = INPersonHandleLabelForCNLabeledValue();
        v23 = [INPersonHandle alloc];
        value2 = [v21 value];
        v25 = [v23 initWithValue:value2 type:1 label:v22];

        [v4 addObject:v25];
      }

      v18 = [emailAddresses countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }

  return v4;
}

- (id)_personForContactUsingMostRecentlyUsedHandle:(id)handle
{
  handleCopy = handle;
  v5 = [(PKPeerPaymentIntentHandler *)self _allHandlesForContact:handleCopy];
  v6 = [(PKPeerPaymentIntentHandler *)self _mostRecentlyUsedHandle:v5];
  if (v6)
  {
    firstObject = v6;
    [v5 removeObject:v6];
  }

  else if ([v5 count])
  {
    firstObject = [v5 firstObject];
    [v5 removeObjectAtIndex:0];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = handleCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Contact %@ has no phone numbers or email addresses, using an empty person handle", &v12, 0xCu);
    }

    firstObject = [[INPersonHandle alloc] initWithValue:0 type:0];
  }

  if (![v5 count])
  {

    v5 = 0;
  }

  identifier = [handleCopy identifier];
  v10 = [(PKPeerPaymentIntentHandler *)self _personForContact:handleCopy handle:firstObject otherAliases:v5 customIdentifier:identifier];

  return v10;
}

- (id)_personForContact:(id)contact handle:(id)handle otherAliases:(id)aliases customIdentifier:(id)identifier
{
  identifierCopy = identifier;
  aliasesCopy = aliases;
  handleCopy = handle;
  contactCopy = contact;
  nameComponents = [contactCopy nameComponents];
  pkFullyQualifiedName = [contactCopy pkFullyQualifiedName];
  v15 = [INPerson alloc];
  identifier = [contactCopy identifier];

  v17 = [v15 initWithPersonHandle:handleCopy nameComponents:nameComponents displayName:pkFullyQualifiedName image:0 contactIdentifier:identifier customIdentifier:identifierCopy aliases:aliasesCopy suggestionType:1];

  return v17;
}

- (id)_personForDictatedPhoneNumberOrEmail:(id)email
{
  emailCopy = email;
  v4 = [PKPeerPaymentCounterpartHandleFormatter formatCounterpartHandle:emailCopy];
  if ([emailCopy containsString:@"@"])
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [[INPersonHandle alloc] initWithValue:emailCopy type:v5];

  v7 = [[INPerson alloc] initWithPersonHandle:v6 nameComponents:0 displayName:v4 image:0 contactIdentifier:0 customIdentifier:0];

  return v7;
}

- (void)sendMessage:(id)message toRecipient:(id)recipient
{
  messageCopy = message;
  recipientCopy = recipient;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  underlyingMessage = [messageCopy underlyingMessage];
  memo = [messageCopy memo];
  v10 = [CKComposition compositionWithMSMessage:underlyingMessage appExtensionIdentifier:PKPeerPaymentMessagesExtensionBundleIdentifier];
  if ([memo length])
  {
    v11 = [[NSAttributedString alloc] initWithString:memo];
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

    [(PKPeerPaymentIntentHandler *)self _sendComposition:v10 toRecipient:recipientCopy];
  }

  else
  {
    if (v14)
    {
      v15 = 138412290;
      v16 = messageCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Could not construct composition for peer payment message: %@", &v15, 0xCu);
    }
  }
}

- (void)_sendComposition:(id)composition toRecipient:(id)recipient
{
  compositionCopy = composition;
  recipientCopy = recipient;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = compositionCopy;
    v34 = 2112;
    v35 = recipientCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending composition %@ to recipient %@", buf, 0x16u);
  }

  [objc_opt_class() connectToIMDaemonController];
  v31 = recipientCopy;
  v8 = [NSArray arrayWithObjects:&v31 count:1];
  v9 = CKMakeHandlesFromRecipients();
  firstObject = [v9 firstObject];

  v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (firstObject)
  {
    if (v11)
    {
      *buf = 138412290;
      v33 = firstObject;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resolved recipient IMHandle: %@", buf, 0xCu);
    }

    v12 = +[IMChatRegistry sharedRegistry];
    v13 = [v12 chatWithHandle:firstObject];

    [v13 join];
    v14 = [[CKConversation alloc] initWithChat:v13];
    [v14 refreshServiceForSending];
    v15 = [v14 messagesFromComposition:compositionCopy];
    if ([v15 count])
    {
      v23 = firstObject;
      v24 = recipientCopy;
      v25 = compositionCopy;
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

      recipientCopy = v24;
      compositionCopy = v25;
      firstObject = v23;
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v33 = compositionCopy;
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
    v33 = recipientCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not resolve IMHandle for recipient %@", buf, 0xCu);
  }
}

- (void)peerPaymentRegistrationStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_registrationStatus && self->_hasAccountResolution)
  {
    accountResolution = self->_accountResolution;
    (*(completionCopy + 2))(completionCopy);
  }

  else
  {
    peerPaymentPass = [(PKPeerPaymentController *)self->_peerPaymentController peerPaymentPass];
    account = [(PKPeerPaymentController *)self->_peerPaymentController account];
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

- (id)_mostRecentlyUsedHandle:(id)handle
{
  handleCopy = handle;
  if ([handleCopy count])
  {
    v5 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(handleCopy, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v26 = handleCopy;
    v6 = handleCopy;
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
          value = [v10 value];
          v12 = [(PKPeerPaymentIntentHandler *)self _canonicalizedMessagesHandleForContactHandle:value];
          if (v12)
          {
            [v5 setObject:v10 forKeyedSubscript:v12];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v7);
    }

    allKeys = [v5 allKeys];
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = sub_100003544;
    v42 = sub_100003554;
    v43 = 0;
    if ([allKeys count])
    {
      v32 = _NSConcreteStackBlock;
      v33 = 3221225472;
      v34 = sub_10000355C;
      v35 = &unk_100014568;
      v37 = &v38;
      v36 = allKeys;
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

    handleCopy = v26;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_canonicalizedMessagesHandleForContactHandle:(id)handle
{
  handleCopy = handle;
  v4 = handleCopy;
  if (!handleCopy)
  {
    goto LABEL_7;
  }

  if (![handleCopy hasPrefix:@"+"])
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
  languageCode = [v2 languageCode];

  v4 = [languageCode length];
  v5 = PKLogFacilityTypeGetObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v10 = 138412290;
      v11 = languageCode;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Using Siri language code: %@", &v10, 0xCu);
    }

    v7 = [NSLocale localeWithLocaleIdentifier:languageCode];
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