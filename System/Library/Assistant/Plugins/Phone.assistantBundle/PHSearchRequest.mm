@interface PHSearchRequest
- (BOOL)didSpecifyContacts;
- (NSArray)recentCalls;
- (NSArray)voicemails;
- (NSSet)specifiedContactIdentifiers;
- (PHSearchRequest)initWithDictionary:(id)a3;
- (id)labelForEmailAddress:(id)a3;
- (id)labelForPhoneNumber:(id)a3;
- (id)personFromRawAddress:(id)a3;
- (id)phoneCallHistoryFromRecentCall:(id)a3;
- (id)phoneVoiceMailFromVMVoicemail:(id)a3;
- (id)recentCallsFilterPredicate;
- (id)typedDataForRawAddress:(id)a3;
- (id)voicemailFilterPredicate;
- (void)cacheContactsForVoicemails:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation PHSearchRequest

- (PHSearchRequest)initWithDictionary:(id)a3
{
  v11.receiver = self;
  v11.super_class = PHSearchRequest;
  v3 = [(PHSearchRequest *)&v11 initWithDictionary:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D79778]);
    voicemailManager = v3->_voicemailManager;
    v3->_voicemailManager = v4;

    v6 = objc_alloc_init(MEMORY[0x277CF7D40]);
    recentsManager = v3->_recentsManager;
    v3->_recentsManager = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    contactsByVoicemailIdentifier = v3->_contactsByVoicemailIdentifier;
    v3->_contactsByVoicemailIdentifier = v8;
  }

  return v3;
}

- (NSArray)voicemails
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(PHSearchRequest *)self voicemailManager];
  v4 = [v3 isOnline];

  v5 = [(PHSearchRequest *)self voicemailManager];
  v6 = v5;
  if (v4)
  {
    v7 = &unk_2848D8F60;
  }

  else
  {
    v7 = &unk_2848D8F80;
  }

  v8 = [v5 voicemailsPassingTest:v7];

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
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(SAPhoneSearch *)self faceTime];
  if (v5)
  {
    v6 = [(SAPhoneSearch *)self faceTime];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 1;
  }

  v8 = [(SAPhoneSearch *)self faceTimeAudio];
  if (v8)
  {
    v2 = [(SAPhoneSearch *)self faceTimeAudio];
    v9 = [v2 BOOLValue];
  }

  else
  {
    v9 = 1;
  }

  v10 = [(SAPhoneSearch *)self faceTime];
  if (!v10)
  {
    v2 = [(SAPhoneSearch *)self faceTimeAudio];
    if (!v2)
    {
      v12 = 1;
LABEL_15:

      goto LABEL_16;
    }
  }

  v11 = [(SAPhoneSearch *)self faceTime];
  if ([v11 BOOLValue])
  {
    v12 = 0;
  }

  else
  {
    v13 = [(SAPhoneSearch *)self faceTimeAudio];
    v12 = [v13 BOOLValue] ^ 1;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_16:

  if (v7)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7DC0]];
    [v4 addObject:v32];

    if (!v9)
    {
LABEL_18:
      if (!v12)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if (!v9)
  {
    goto LABEL_18;
  }

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7DB8]];
  [v4 addObject:v33];

  if (v12)
  {
LABEL_19:
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7DC8]];
    v56[0] = v14;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7DD0]];
    v56[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
    [v4 addObjectsFromArray:v16];
  }

LABEL_20:
  v17 = [v4 count];
  v18 = PHDefaultLog();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v20 = [(SAPhoneSearch *)self outgoing];
      v21 = [v20 BOOLValue];
      v22 = [(SAPhoneSearch *)self missed];
      v23 = [v22 BOOLValue];
      v24 = [(SAPhoneSearch *)self start];
      *buf = 138413058;
      v49 = v4;
      v50 = 1024;
      v51 = v21;
      v52 = 1024;
      v53 = v23;
      v54 = 2112;
      v55 = v24;
      _os_log_impl(&dword_233521000, v18, OS_LOG_TYPE_DEFAULT, "Requested call types: %@ with search parameters: {outgoing: %d, missed: %d, startDate: %@}", buf, 0x22u);
    }

    v25 = [(SAPhoneSearch *)self outgoing];
    v26 = [v25 BOOLValue];

    v27 = [(SAPhoneSearch *)self missed];
    v28 = [v27 BOOLValue];

    v29 = [(SAPhoneSearch *)self start];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v35 = v31;

    if (v26)
    {
      if (v28)
      {
        v34 = [MEMORY[0x277CBEA60] array];
LABEL_41:

        goto LABEL_42;
      }

      v36 = [(PHSearchRequest *)self recentsManager];
      v40 = MEMORY[0x277CCAC30];
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7D80]];
      v47[0] = v38;
      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7D90]];
      v47[1] = v39;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
      v42 = [v40 predicateWithFormat:@"date > %@ AND callType IN %@ AND callStatus IN %@", v35, v4, v41];
      v34 = [v36 recentCallsWithPredicate:v42];
    }

    else
    {
      v36 = [(PHSearchRequest *)self recentsManager];
      v37 = MEMORY[0x277CCAC30];
      if (!v28)
      {
        v38 = [MEMORY[0x277CCAC30] predicateWithFormat:@"date > %@ AND callType IN %@", v35, v4];
        v34 = [v36 recentCallsWithPredicate:v38];
        goto LABEL_40;
      }

      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*MEMORY[0x277CF7DA0]];
      v39 = [v37 predicateWithFormat:@"date > %@ AND callType IN %@ AND callStatus == %@", v35, v4, v38];
      v34 = [v36 recentCallsWithPredicate:v39];
    }

LABEL_40:
    goto LABEL_41;
  }

  if (v19)
  {
    *buf = 0;
    _os_log_impl(&dword_233521000, v18, OS_LOG_TYPE_DEFAULT, "No call types requested.", buf, 2u);
  }

  v34 = [MEMORY[0x277CBEA60] array];
LABEL_42:
  v43 = PHDefaultLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [v34 count];
    *buf = 134217984;
    v49 = v44;
    _os_log_impl(&dword_233521000, v43, OS_LOG_TYPE_DEFAULT, "Initial search to recents database returned %lu calls.", buf, 0xCu);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)typedDataForRawAddress:(id)a3
{
  v4 = a3;
  if ([v4 _appearsToBePhoneNumber])
  {
    v5 = [MEMORY[0x277D47640] phone];
    v6 = [(PHSearchRequest *)self labelForPhoneNumber:v4];
    [v5 setLabel:v6];

    [v5 setNumber:v4];
  }

  else if ([v4 _appearsToBeEmail])
  {
    v5 = objc_alloc_init(MEMORY[0x277D472D8]);
    v7 = [(PHSearchRequest *)self labelForEmailAddress:v4];
    [v5 setLabel:v7];

    [v5 setEmailAddress:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)labelForPhoneNumber:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[PHAssistantServices sharedContactStore];
  v22[0] = *MEMORY[0x277CBD098];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v6 = [v4 contactForDestinationId:v3 keysToFetch:v5];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v3];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v6 phoneNumbers];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 value];
          v14 = [v13 isEqual:v7];

          if (v14)
          {
            v9 = [v12 label];
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
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
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)labelForEmailAddress:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[PHAssistantServices sharedContactStore];
  v21[0] = *MEMORY[0x277CBCFC0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v6 = [v4 contactForDestinationId:v3 keysToFetch:v5];

  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v6 emailAddresses];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 value];
          v13 = [v12 isEqualToString:v3];

          if (v13)
          {
            v8 = [v11 label];
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
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
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)personFromRawAddress:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D47630] person];
  if ([v3 length])
  {
    if ([v3 _appearsToBeEmail])
    {
      v5 = objc_alloc_init(MEMORY[0x277D472D8]);
      [v5 setEmailAddress:v3];
      v10[0] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      [v4 setEmails:v6];
    }

    else
    {
      v5 = [MEMORY[0x277D47640] phone];
      [v5 setNumber:v3];
      v9 = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
      [v4 setPhones:v6];
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/Applications/MobilePhone.app"];
    v6 = [v5 localizedStringForKey:@"UNKNOWN_CALLER" value:&stru_2848D9220 table:@"General"];
    [v4 setFullName:v6];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)phoneVoiceMailFromVMVoicemail:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D47670]);
  v6 = [v4 date];
  [v5 setCallTime:v6];

  v7 = MEMORY[0x277CCABB0];
  [v4 duration];
  v9 = [v7 numberWithUnsignedInteger:v8];
  [v5 setLength:v9];

  v10 = [MEMORY[0x277D47638] personAttribute];
  v11 = [(PHSearchRequest *)self contactsByVoicemailIdentifier];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  v13 = [v11 objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [MEMORY[0x277CFBC48] createSAPersonFromCNContact:v13];
    [v10 setObject:v14];
  }

  else
  {
    v14 = [v4 senderDestinationID];
    v15 = [(PHSearchRequest *)self personFromRawAddress:v14];
    [v10 setObject:v15];
  }

  v16 = [v4 senderDestinationID];
  [v10 setData:v16];

  v17 = [v10 object];
  v18 = [v17 fullName];
  [v10 setDisplayText:v18];

  v19 = [v4 senderDestinationID];
  v20 = [(PHSearchRequest *)self typedDataForRawAddress:v19];
  [v10 setTypedData:v20];

  [v5 setContact:v10];
  v21 = [v4 dataURL];
  [v5 setIdentifier:v21];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isUnread")}];
  [v5 setIsNew:v22];

  return v5;
}

- (id)phoneCallHistoryFromRecentCall:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D47648] callHistory];
  v6 = [v4 date];
  [v5 setCallTime:v6];

  v7 = [v4 callStatus];
  v8 = *MEMORY[0x277CF7DA8] & v7;
  [v4 duration];
  v10 = v9;
  v11 = [MEMORY[0x277D47638] personAttribute];
  v12 = [v4 callerId];
  v13 = [v4 contactIdentifier];

  if (!v13)
  {
    goto LABEL_3;
  }

  v14 = +[PHAssistantServices sharedContactStore];
  [v4 contactIdentifier];
  v16 = v15 = v8;
  v17 = [MEMORY[0x277CFBC48] descriptorsForRequiredKeys];
  v18 = [v14 contactForIdentifier:v16 keysToFetch:v17];

  v8 = v15;
  v19 = [MEMORY[0x277CFBC48] createSAPersonFromCNContact:v18];

  if (!v19)
  {
LABEL_3:
    v19 = [(PHSearchRequest *)self personFromRawAddress:v12];
  }

  [v11 setObject:v19];
  v20 = [v19 fullName];
  [v11 setDisplayText:v20];

  [v11 setData:v12];
  v21 = [(PHSearchRequest *)self typedDataForRawAddress:v12];
  [v11 setTypedData:v21];

  [v5 setContact:v11];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:v8 != 0];
  [v5 setOutgoing:v22];

  v23 = v10 == 0.0 && v8 == 0;
  v24 = [MEMORY[0x277CCABB0] numberWithInt:v23];
  [v5 setMissed:v24];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "callerIdIsBlocked")}];
  [v5 setBlocked:v25];

  v26 = [v4 callType];
  if (v26)
  {
    v27 = v26;
    v28 = [MEMORY[0x277CCABB0] numberWithInt:v26 == *MEMORY[0x277CF7DC0]];
    [v5 setFaceTime:v28];

    v29 = [MEMORY[0x277CCABB0] numberWithInt:v27 == *MEMORY[0x277CF7DB8]];
    [v5 setFaceTimeAudio:v29];
  }

  return v5;
}

- (BOOL)didSpecifyContacts
{
  v2 = [(SAPhoneSearch *)self contacts];
  v3 = v2 != 0;

  return v3;
}

- (NSSet)specifiedContactIdentifiers
{
  v26 = *MEMORY[0x277D85DE8];
  specifiedContactIdentifiers = self->_specifiedContactIdentifiers;
  if (!specifiedContactIdentifiers)
  {
    v4 = MEMORY[0x277CBEB58];
    v5 = [(SAPhoneSearch *)self contacts];
    v6 = [v4 setWithCapacity:{objc_msgSend(v5, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [(SAPhoneSearch *)self contacts];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 identifier];

          if (v13)
          {
            v14 = MEMORY[0x277CFBC50];
            v15 = [v12 identifier];
            v16 = [v14 contactIDFromAssistantID:v15];
            [v6 addObject:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

- (void)cacheContactsForVoicemails:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CFBC48] descriptorsForRequiredKeys];
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
        v11 = [v9 contactUsingContactStore:v10 withKeysToFetch:v4];
        v12 = [(PHSearchRequest *)self contactsByVoicemailIdentifier];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "identifier")}];
        [v12 setObject:v11 forKeyedSubscript:v13];

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

- (void)performWithCompletion:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(SAPhoneSearch *)self voiceMail];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [(PHSearchRequest *)self voicemailFilterPredicate];
    v9 = [(PHSearchRequest *)self voicemails];
    [(PHSearchRequest *)self cacheContactsForVoicemails:v9];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v44 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          if ([v8 evaluateWithObject:v15])
          {
            v16 = [(PHSearchRequest *)self phoneVoiceMailFromVMVoicemail:v15];
            [v5 addObject:v16];

            v17 = [(SAPhoneSearch *)self last];
            if ([v17 BOOLValue] && objc_msgSend(v5, "count"))
            {

              goto LABEL_27;
            }

            v18 = [v5 count];

            if (v18 > 0x19)
            {
              goto LABEL_27;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v37 objects:v44 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:
    v19 = v10;
LABEL_28:
  }

  else
  {
    v8 = [(PHSearchRequest *)self recentCallsFilterPredicate];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = [(PHSearchRequest *)self recentCalls];
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v43 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v33 + 1) + 8 * j);
          if ([v8 evaluateWithObject:v24])
          {
            v25 = [(PHSearchRequest *)self phoneCallHistoryFromRecentCall:v24];
            [v5 addObject:v25];

            v10 = [(SAPhoneSearch *)self last];
            if ([v10 BOOLValue] && objc_msgSend(v5, "count"))
            {
              goto LABEL_28;
            }

            v26 = [v5 count];

            if (v26 > 0x19)
            {
              goto LABEL_29;
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v21);
    }
  }

LABEL_29:

  v27 = PHDefaultLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v5 count];
    *buf = 134217984;
    v42 = v28;
    _os_log_impl(&dword_233521000, v27, OS_LOG_TYPE_DEFAULT, "After filtering, results contains %lu objects.", buf, 0xCu);
  }

  v29 = [MEMORY[0x277D47668] searchCompleted];
  [v29 setPhoneSearchResults:v5];
  v30 = [v29 dictionary];
  v31 = [v30 copy];
  v4[2](v4, v31);

  v32 = *MEMORY[0x277D85DE8];
}

@end