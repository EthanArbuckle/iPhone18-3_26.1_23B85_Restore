@interface PHSearchRequest
- (BOOL)didSpecifyContacts;
- (NSArray)recentCalls;
- (NSArray)voicemails;
- (NSSet)specifiedContactIdentifiers;
- (PHSearchRequest)initWithDictionary:(id)dictionary;
- (id)labelForEmailAddress:(id)address;
- (id)labelForPhoneNumber:(id)number;
- (id)personFromRawAddress:(id)address;
- (id)phoneCallHistoryFromRecentCall:(id)call;
- (id)phoneVoiceMailFromVMVoicemail:(id)voicemail;
- (id)recentCallsFilterPredicate;
- (id)typedDataForRawAddress:(id)address;
- (id)voicemailFilterPredicate;
- (void)cacheContactsForVoicemails:(id)voicemails;
- (void)performWithCompletion:(id)completion;
@end

@implementation PHSearchRequest

- (PHSearchRequest)initWithDictionary:(id)dictionary
{
  v11.receiver = self;
  v11.super_class = PHSearchRequest;
  v3 = [(PHSearchRequest *)&v11 initWithDictionary:dictionary];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D79778]);
    voicemailManager = v3->_voicemailManager;
    v3->_voicemailManager = v4;

    v6 = objc_alloc_init(MEMORY[0x277CF7D40]);
    recentsManager = v3->_recentsManager;
    v3->_recentsManager = v6;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    contactsByVoicemailIdentifier = v3->_contactsByVoicemailIdentifier;
    v3->_contactsByVoicemailIdentifier = dictionary;
  }

  return v3;
}

- (NSArray)voicemails
{
  v14 = *MEMORY[0x277D85DE8];
  voicemailManager = [(PHSearchRequest *)self voicemailManager];
  isOnline = [voicemailManager isOnline];

  voicemailManager2 = [(PHSearchRequest *)self voicemailManager];
  v6 = voicemailManager2;
  if (isOnline)
  {
    v7 = &unk_2848D8F60;
  }

  else
  {
    v7 = &unk_2848D8F80;
  }

  v8 = [voicemailManager2 voicemailsPassingTest:v7];

  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = [v8 count];
    _os_log_impl(&dword_233521000, v9, OS_LOG_TYPE_DEFAULT, "Initial search to voicemail database returned %lu voicemails.", &v12, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSArray)recentCalls
{
  v56[2] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  faceTime = [(SAPhoneSearch *)self faceTime];
  if (faceTime)
  {
    faceTime2 = [(SAPhoneSearch *)self faceTime];
    bOOLValue = [faceTime2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  faceTimeAudio = [(SAPhoneSearch *)self faceTimeAudio];
  if (faceTimeAudio)
  {
    faceTimeAudio2 = [(SAPhoneSearch *)self faceTimeAudio];
    bOOLValue2 = [faceTimeAudio2 BOOLValue];
  }

  else
  {
    bOOLValue2 = 1;
  }

  faceTime3 = [(SAPhoneSearch *)self faceTime];
  if (!faceTime3)
  {
    faceTimeAudio2 = [(SAPhoneSearch *)self faceTimeAudio];
    if (!faceTimeAudio2)
    {
      v12 = 1;
LABEL_15:

      goto LABEL_16;
    }
  }

  faceTime4 = [(SAPhoneSearch *)self faceTime];
  if ([faceTime4 BOOLValue])
  {
    v12 = 0;
  }

  else
  {
    faceTimeAudio3 = [(SAPhoneSearch *)self faceTimeAudio];
    v12 = [faceTimeAudio3 BOOLValue] ^ 1;
  }

  if (!faceTime3)
  {
    goto LABEL_15;
  }

LABEL_16:

  if (bOOLValue)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7DC0]];
    [array addObject:v32];

    if (!bOOLValue2)
    {
LABEL_18:
      if (!v12)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if (!bOOLValue2)
  {
    goto LABEL_18;
  }

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7DB8]];
  [array addObject:v33];

  if (v12)
  {
LABEL_19:
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7DC8]];
    v56[0] = v14;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7DD0]];
    v56[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    [array addObjectsFromArray:v16];
  }

LABEL_20:
  v17 = [array count];
  v18 = PHDefaultLog();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      outgoing = [(SAPhoneSearch *)self outgoing];
      bOOLValue3 = [outgoing BOOLValue];
      missed = [(SAPhoneSearch *)self missed];
      bOOLValue4 = [missed BOOLValue];
      start = [(SAPhoneSearch *)self start];
      *buf = 138413058;
      v49 = array;
      v50 = 1024;
      v51 = bOOLValue3;
      v52 = 1024;
      v53 = bOOLValue4;
      v54 = 2112;
      v55 = start;
      _os_log_impl(&dword_233521000, v18, OS_LOG_TYPE_DEFAULT, "Requested call types: %@ with search parameters: {outgoing: %d, missed: %d, startDate: %@}", buf, 0x22u);
    }

    outgoing2 = [(SAPhoneSearch *)self outgoing];
    bOOLValue5 = [outgoing2 BOOLValue];

    missed2 = [(SAPhoneSearch *)self missed];
    bOOLValue6 = [missed2 BOOLValue];

    start2 = [(SAPhoneSearch *)self start];
    v30 = start2;
    if (start2)
    {
      distantPast = start2;
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v35 = distantPast;

    if (bOOLValue5)
    {
      if (bOOLValue6)
      {
        array2 = [MEMORY[0x277CBEA60] array];
LABEL_41:

        goto LABEL_42;
      }

      recentsManager = [(PHSearchRequest *)self recentsManager];
      v40 = MEMORY[0x277CCAC30];
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7D80]];
      v47[0] = v38;
      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7D90]];
      v47[1] = v39;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
      v42 = [v40 predicateWithFormat:@"date > %@ AND callType IN %@ AND callStatus IN %@", v35, array, v41];
      array2 = [recentsManager recentCallsWithPredicate:v42];
    }

    else
    {
      recentsManager = [(PHSearchRequest *)self recentsManager];
      v37 = MEMORY[0x277CCAC30];
      if (!bOOLValue6)
      {
        v38 = [MEMORY[0x277CCAC30] predicateWithFormat:@"date > %@ AND callType IN %@", v35, array];
        array2 = [recentsManager recentCallsWithPredicate:v38];
        goto LABEL_40;
      }

      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7DA0]];
      v39 = [v37 predicateWithFormat:@"date > %@ AND callType IN %@ AND callStatus == %@", v35, array, v38];
      array2 = [recentsManager recentCallsWithPredicate:v39];
    }

LABEL_40:
    goto LABEL_41;
  }

  if (v19)
  {
    *buf = 0;
    _os_log_impl(&dword_233521000, v18, OS_LOG_TYPE_DEFAULT, "No call types requested.", buf, 2u);
  }

  array2 = [MEMORY[0x277CBEA60] array];
LABEL_42:
  v43 = PHDefaultLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [array2 count];
    *buf = 134217984;
    v49 = v44;
    _os_log_impl(&dword_233521000, v43, OS_LOG_TYPE_DEFAULT, "Initial search to recents database returned %lu calls.", buf, 0xCu);
  }

  v45 = *MEMORY[0x277D85DE8];

  return array2;
}

- (id)typedDataForRawAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy _appearsToBePhoneNumber])
  {
    phone = [MEMORY[0x277D47640] phone];
    v6 = [(PHSearchRequest *)self labelForPhoneNumber:addressCopy];
    [phone setLabel:v6];

    [phone setNumber:addressCopy];
  }

  else if ([addressCopy _appearsToBeEmail])
  {
    phone = objc_alloc_init(MEMORY[0x277D472D8]);
    v7 = [(PHSearchRequest *)self labelForEmailAddress:addressCopy];
    [phone setLabel:v7];

    [phone setEmailAddress:addressCopy];
  }

  else
  {
    phone = 0;
  }

  return phone;
}

- (id)labelForPhoneNumber:(id)number
{
  v22[1] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v4 = +[PHAssistantServices sharedContactStore];
  v22[0] = *MEMORY[0x277CBD098];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v6 = [v4 contactForDestinationId:numberCopy keysToFetch:v5];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:numberCopy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    phoneNumbers = [v6 phoneNumbers];
    label = [phoneNumbers countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (label)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != label; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          value = [v12 value];
          v14 = [value isEqual:v7];

          if (v14)
          {
            label = [v12 label];
            goto LABEL_12;
          }
        }

        label = [phoneNumbers countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (label)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    label = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return label;
}

- (id)labelForEmailAddress:(id)address
{
  v21[1] = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v4 = +[PHAssistantServices sharedContactStore];
  v21[0] = *MEMORY[0x277CBCFC0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v6 = [v4 contactForDestinationId:addressCopy keysToFetch:v5];

  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    emailAddresses = [v6 emailAddresses];
    label = [emailAddresses countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (label)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != label; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(emailAddresses);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          value = [v11 value];
          v13 = [value isEqualToString:addressCopy];

          if (v13)
          {
            label = [v11 label];
            goto LABEL_12;
          }
        }

        label = [emailAddresses countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (label)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    label = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return label;
}

- (id)personFromRawAddress:(id)address
{
  v10[1] = *MEMORY[0x277D85DE8];
  addressCopy = address;
  person = [MEMORY[0x277D47630] person];
  if ([addressCopy length])
  {
    if ([addressCopy _appearsToBeEmail])
    {
      phone = objc_alloc_init(MEMORY[0x277D472D8]);
      [phone setEmailAddress:addressCopy];
      v10[0] = phone;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      [person setEmails:v6];
    }

    else
    {
      phone = [MEMORY[0x277D47640] phone];
      [phone setNumber:addressCopy];
      v9 = phone;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
      [person setPhones:v6];
    }
  }

  else
  {
    phone = [MEMORY[0x277CCA8D8] bundleWithPath:@"/Applications/MobilePhone.app"];
    v6 = [phone localizedStringForKey:@"UNKNOWN_CALLER" value:&stru_2848D9220 table:@"General"];
    [person setFullName:v6];
  }

  v7 = *MEMORY[0x277D85DE8];

  return person;
}

- (id)phoneVoiceMailFromVMVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  v5 = objc_alloc_init(MEMORY[0x277D47670]);
  date = [voicemailCopy date];
  [v5 setCallTime:date];

  v7 = MEMORY[0x277CCABB0];
  [voicemailCopy duration];
  v9 = [v7 numberWithUnsignedInteger:v8];
  [v5 setLength:v9];

  personAttribute = [MEMORY[0x277D47638] personAttribute];
  contactsByVoicemailIdentifier = [(PHSearchRequest *)self contactsByVoicemailIdentifier];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(voicemailCopy, "identifier")}];
  v13 = [contactsByVoicemailIdentifier objectForKeyedSubscript:v12];

  if (v13)
  {
    senderDestinationID = [MEMORY[0x277CFBC48] createSAPersonFromCNContact:v13];
    [personAttribute setObject:senderDestinationID];
  }

  else
  {
    senderDestinationID = [voicemailCopy senderDestinationID];
    v15 = [(PHSearchRequest *)self personFromRawAddress:senderDestinationID];
    [personAttribute setObject:v15];
  }

  senderDestinationID2 = [voicemailCopy senderDestinationID];
  [personAttribute setData:senderDestinationID2];

  object = [personAttribute object];
  fullName = [object fullName];
  [personAttribute setDisplayText:fullName];

  senderDestinationID3 = [voicemailCopy senderDestinationID];
  v20 = [(PHSearchRequest *)self typedDataForRawAddress:senderDestinationID3];
  [personAttribute setTypedData:v20];

  [v5 setContact:personAttribute];
  dataURL = [voicemailCopy dataURL];
  [v5 setIdentifier:dataURL];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(voicemailCopy, "isUnread")}];
  [v5 setIsNew:v22];

  return v5;
}

- (id)phoneCallHistoryFromRecentCall:(id)call
{
  callCopy = call;
  callHistory = [MEMORY[0x277D47648] callHistory];
  date = [callCopy date];
  [callHistory setCallTime:date];

  callStatus = [callCopy callStatus];
  v8 = *MEMORY[0x277CF7DA8] & callStatus;
  [callCopy duration];
  v10 = v9;
  personAttribute = [MEMORY[0x277D47638] personAttribute];
  callerId = [callCopy callerId];
  contactIdentifier = [callCopy contactIdentifier];

  if (!contactIdentifier)
  {
    goto LABEL_3;
  }

  v14 = +[PHAssistantServices sharedContactStore];
  [callCopy contactIdentifier];
  v16 = v15 = v8;
  descriptorsForRequiredKeys = [MEMORY[0x277CFBC48] descriptorsForRequiredKeys];
  v18 = [v14 contactForIdentifier:v16 keysToFetch:descriptorsForRequiredKeys];

  v8 = v15;
  v19 = [MEMORY[0x277CFBC48] createSAPersonFromCNContact:v18];

  if (!v19)
  {
LABEL_3:
    v19 = [(PHSearchRequest *)self personFromRawAddress:callerId];
  }

  [personAttribute setObject:v19];
  fullName = [v19 fullName];
  [personAttribute setDisplayText:fullName];

  [personAttribute setData:callerId];
  v21 = [(PHSearchRequest *)self typedDataForRawAddress:callerId];
  [personAttribute setTypedData:v21];

  [callHistory setContact:personAttribute];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:v8 != 0];
  [callHistory setOutgoing:v22];

  v23 = v10 == 0.0 && v8 == 0;
  v24 = [MEMORY[0x277CCABB0] numberWithInt:v23];
  [callHistory setMissed:v24];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(callCopy, "callerIdIsBlocked")}];
  [callHistory setBlocked:v25];

  callType = [callCopy callType];
  if (callType)
  {
    v27 = callType;
    v28 = [MEMORY[0x277CCABB0] numberWithInt:callType == *MEMORY[0x277CF7DC0]];
    [callHistory setFaceTime:v28];

    v29 = [MEMORY[0x277CCABB0] numberWithInt:v27 == *MEMORY[0x277CF7DB8]];
    [callHistory setFaceTimeAudio:v29];
  }

  return callHistory;
}

- (BOOL)didSpecifyContacts
{
  contacts = [(SAPhoneSearch *)self contacts];
  v3 = contacts != 0;

  return v3;
}

- (NSSet)specifiedContactIdentifiers
{
  v26 = *MEMORY[0x277D85DE8];
  specifiedContactIdentifiers = self->_specifiedContactIdentifiers;
  if (!specifiedContactIdentifiers)
  {
    v4 = MEMORY[0x277CBEB58];
    contacts = [(SAPhoneSearch *)self contacts];
    v6 = [v4 setWithCapacity:{objc_msgSend(contacts, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    contacts2 = [(SAPhoneSearch *)self contacts];
    v8 = [contacts2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(contacts2);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          identifier = [v12 identifier];

          if (identifier)
          {
            v14 = MEMORY[0x277CFBC50];
            identifier2 = [v12 identifier];
            v16 = [v14 contactIDFromAssistantID:identifier2];
            [v6 addObject:v16];
          }
        }

        v9 = [contacts2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v17 = [v6 copy];
    v18 = self->_specifiedContactIdentifiers;
    self->_specifiedContactIdentifiers = v17;

    specifiedContactIdentifiers = self->_specifiedContactIdentifiers;
  }

  v19 = *MEMORY[0x277D85DE8];

  return specifiedContactIdentifiers;
}

- (void)cacheContactsForVoicemails:(id)voicemails
{
  v21 = *MEMORY[0x277D85DE8];
  descriptorsForRequiredKeys = [MEMORY[0x277CFBC48] descriptorsForRequiredKeys];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(PHSearchRequest *)self voicemails];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = +[PHAssistantServices sharedContactStore];
        v11 = [v9 contactUsingContactStore:v10 withKeysToFetch:descriptorsForRequiredKeys];
        contactsByVoicemailIdentifier = [(PHSearchRequest *)self contactsByVoicemailIdentifier];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "identifier")}];
        [contactsByVoicemailIdentifier setObject:v11 forKeyedSubscript:v13];

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)voicemailFilterPredicate
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2335269EC;
  v4[3] = &unk_2789DD8A0;
  v4[4] = self;
  v2 = [MEMORY[0x277CCAC30] predicateWithBlock:v4];

  return v2;
}

- (id)recentCallsFilterPredicate
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_233526C4C;
  v4[3] = &unk_2789DD8C8;
  v4[4] = self;
  v2 = [MEMORY[0x277CCAC30] predicateWithBlock:v4];

  return v2;
}

- (void)performWithCompletion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  voiceMail = [(SAPhoneSearch *)self voiceMail];
  bOOLValue = [voiceMail BOOLValue];

  if (bOOLValue)
  {
    voicemailFilterPredicate = [(PHSearchRequest *)self voicemailFilterPredicate];
    voicemails = [(PHSearchRequest *)self voicemails];
    [(PHSearchRequest *)self cacheContactsForVoicemails:voicemails];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    last2 = voicemails;
    v11 = [last2 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v38;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(last2);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          if ([voicemailFilterPredicate evaluateWithObject:v15])
          {
            v16 = [(PHSearchRequest *)self phoneVoiceMailFromVMVoicemail:v15];
            [array addObject:v16];

            last = [(SAPhoneSearch *)self last];
            if ([last BOOLValue] && objc_msgSend(array, "count"))
            {

              goto LABEL_27;
            }

            v18 = [array count];

            if (v18 > 0x19)
            {
              goto LABEL_27;
            }
          }
        }

        v12 = [last2 countByEnumeratingWithState:&v37 objects:v44 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:
    recentCalls = last2;
LABEL_28:
  }

  else
  {
    voicemailFilterPredicate = [(PHSearchRequest *)self recentCallsFilterPredicate];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    recentCalls = [(PHSearchRequest *)self recentCalls];
    v20 = [recentCalls countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(recentCalls);
          }

          v24 = *(*(&v33 + 1) + 8 * j);
          if ([voicemailFilterPredicate evaluateWithObject:v24])
          {
            v25 = [(PHSearchRequest *)self phoneCallHistoryFromRecentCall:v24];
            [array addObject:v25];

            last2 = [(SAPhoneSearch *)self last];
            if ([last2 BOOLValue] && objc_msgSend(array, "count"))
            {
              goto LABEL_28;
            }

            v26 = [array count];

            if (v26 > 0x19)
            {
              goto LABEL_29;
            }
          }
        }

        v21 = [recentCalls countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v21);
    }
  }

LABEL_29:

  v27 = PHDefaultLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [array count];
    *buf = 134217984;
    v42 = v28;
    _os_log_impl(&dword_233521000, v27, OS_LOG_TYPE_DEFAULT, "After filtering, results contains %lu objects.", buf, 0xCu);
  }

  searchCompleted = [MEMORY[0x277D47668] searchCompleted];
  [searchCompleted setPhoneSearchResults:array];
  dictionary = [searchCompleted dictionary];
  v31 = [dictionary copy];
  completionCopy[2](completionCopy, v31);

  v32 = *MEMORY[0x277D85DE8];
}

@end