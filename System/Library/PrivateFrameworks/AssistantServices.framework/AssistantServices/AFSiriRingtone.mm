@interface AFSiriRingtone
- (AFSiriRingtone)initWithContacts:(id)contacts;
- (NSString)textToSpeak;
- (id)_addPhoneticEscapeIfNotEmptyNotNil:(id)nil withStartEscape:(id)escape withEndEscape:(id)endEscape;
- (id)_bestVoiceInfoWithCurrentLocale:(id)locale;
- (id)_escapeCallDestinationIDString:(id)string forType:(int64_t)type;
- (id)_escapeCallerIDString:(id)string forType:(int64_t)type;
- (id)_generateSpokenTextForContacts:(id)contacts voiceLanguage:(id)language displayedCallerID:(id)d callerIDType:(int64_t)type callDestinationID:(id)iD callDestinationIDType:(int64_t)dType callServiceSpeakableName:(id)name;
- (id)_phoneticNamesForContact:(id)contact languageCode:(id)code;
- (id)_spokenTextForCallDestinationID:(id)d ofType:(int64_t)type callServiceSpeakableName:(id)name languageCode:(id)code;
- (id)_spokenTextForCallerID:(id)d ofType:(int64_t)type rawCaller:(id)caller rawCallerType:(int64_t)callerType languageCode:(id)code;
- (id)_spokenTextForContacts:(id)contacts callServiceSpeakableName:(id)name languageCode:(id)code;
- (id)_spokenTextForOneContact:(id)contact callServiceSpeakableName:(id)name languageCode:(id)code;
- (id)_spokenTextForThreeContacts:(id)contacts callServiceSpeakableName:(id)name languageCode:(id)code;
- (id)_spokenTextForTwoContacts:(id)contacts callServiceSpeakableName:(id)name languageCode:(id)code;
- (void)_phoneticInfoForContact:(id)contact languageCode:(id)code firstName:(id *)name middleName:(id *)middleName lastName:(id *)lastName nickname:(id *)nickname;
@end

@implementation AFSiriRingtone

- (id)_escapeCallDestinationIDString:(id)string forType:(int64_t)type
{
  stringCopy = string;
  v6 = stringCopy;
  if (type == 1)
  {
    if (softLinkIMStringIsPhoneNumber(stringCopy))
    {
      v7 = @"\x1B\\tn=phone\\%@\x1B\\tn=normal\\"";
      goto LABEL_7;
    }
  }

  else
  {
    if (type != 2)
    {
LABEL_8:
      v6 = v6;
      v9 = v6;
      goto LABEL_10;
    }

    if (softLinkIMStringIsEmail(stringCopy))
    {
      v7 = @"\x1B\\tn=email\\%@\x1B\\tn=normal\\"";
LABEL_7:
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v7, v6];

      v6 = v8;
      goto LABEL_8;
    }
  }

  v9 = &stru_1F0512680;
LABEL_10:

  return v9;
}

- (id)_escapeCallerIDString:(id)string forType:(int64_t)type
{
  stringCopy = string;
  if ((type - 1) <= 2)
  {
    stringCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:off_1E7341BF0[type - 1], stringCopy];

    stringCopy = stringCopy;
  }

  return stringCopy;
}

- (id)_addPhoneticEscapeIfNotEmptyNotNil:(id)nil withStartEscape:(id)escape withEndEscape:(id)endEscape
{
  nilCopy = nil;
  escapeCopy = escape;
  endEscapeCopy = endEscape;
  if (nilCopy && [nilCopy length])
  {
    endEscapeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", escapeCopy, nilCopy, endEscapeCopy];
  }

  else
  {
    endEscapeCopy = 0;
  }

  return endEscapeCopy;
}

- (id)_phoneticNamesForContact:(id)contact languageCode:(id)code
{
  contactCopy = contact;
  codeCopy = code;
  if (contactCopy)
  {
    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    [(AFSiriRingtone *)self _phoneticInfoForContact:contactCopy languageCode:codeCopy firstName:&v41 middleName:&v40 lastName:&v39 nickname:&v38];
    v8 = v41;
    v9 = v40;
    v10 = v39;
    v11 = v38;
    if ([codeCopy isEqualToString:@"en-IN"])
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", 27];
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\\toi=x-sampa-internal\\"", v12];
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\\toi=orth\\"", v12];
    }

    else
    {
      v35 = @"\x1B/+";
      v36 = @"\x1B/+";
    }

    v37 = codeCopy;
    v14 = [[AFPhonemeMapper alloc] initWithLanguageCode:codeCopy];
    v15 = v14;
    if (v14)
    {
      v16 = [(AFPhonemeMapper *)v14 stringByReplacingPhonemesInString:v8];

      v17 = [(AFPhonemeMapper *)v15 stringByReplacingPhonemesInString:v9];

      v18 = [(AFPhonemeMapper *)v15 stringByReplacingPhonemesInString:v10];

      v19 = [(AFPhonemeMapper *)v15 stringByReplacingPhonemesInString:v11];

      v9 = v17;
      v10 = v18;
      v11 = v19;
      v8 = v16;
    }

    v20 = [(AFSiriRingtone *)self _addPhoneticEscapeIfNotEmptyNotNil:v8 withStartEscape:v36 withEndEscape:v35];

    v21 = [(AFSiriRingtone *)self _addPhoneticEscapeIfNotEmptyNotNil:v9 withStartEscape:v36 withEndEscape:v35];

    v22 = [(AFSiriRingtone *)self _addPhoneticEscapeIfNotEmptyNotNil:v10 withStartEscape:v36 withEndEscape:v35];

    v23 = [(AFSiriRingtone *)self _addPhoneticEscapeIfNotEmptyNotNil:v11 withStartEscape:v36 withEndEscape:v35];

    if (![v20 length])
    {
      pronunciationGivenName = [contactCopy pronunciationGivenName];

      v20 = pronunciationGivenName;
    }

    if (![v22 length])
    {
      pronunciationFamilyName = [contactCopy pronunciationFamilyName];

      v22 = pronunciationFamilyName;
    }

    if (![v20 length])
    {
      phoneticGivenName = [contactCopy phoneticGivenName];

      v20 = phoneticGivenName;
    }

    if (![v21 length])
    {
      phoneticMiddleName = [contactCopy phoneticMiddleName];

      v21 = phoneticMiddleName;
    }

    if (![v22 length])
    {
      phoneticFamilyName = [contactCopy phoneticFamilyName];

      v22 = phoneticFamilyName;
    }

    v13 = objc_alloc_init(AFSiriPhoneticContactNames);
    [(AFSiriPhoneticContactNames *)v13 setLanguageCode:v37];
    if ([v20 length])
    {
      [(AFSiriPhoneticContactNames *)v13 setGivenName:v20];
    }

    else
    {
      givenName = [contactCopy givenName];
      [(AFSiriPhoneticContactNames *)v13 setGivenName:givenName];
    }

    if ([v21 length])
    {
      [(AFSiriPhoneticContactNames *)v13 setMiddleName:v21];
    }

    else
    {
      middleName = [contactCopy middleName];
      [(AFSiriPhoneticContactNames *)v13 setMiddleName:middleName];
    }

    if ([v22 length])
    {
      [(AFSiriPhoneticContactNames *)v13 setFamilyName:v22];
    }

    else
    {
      familyName = [contactCopy familyName];
      [(AFSiriPhoneticContactNames *)v13 setFamilyName:familyName];
    }

    if ([v23 length])
    {
      [(AFSiriPhoneticContactNames *)v13 setNickname:v23];
    }

    else
    {
      nickname = [contactCopy nickname];
      [(AFSiriPhoneticContactNames *)v13 setNickname:nickname];
    }

    organizationName = [contactCopy organizationName];
    [(AFSiriPhoneticContactNames *)v13 setOrganizationName:organizationName];

    codeCopy = v37;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_phoneticInfoForContact:(id)contact languageCode:(id)code firstName:(id *)name middleName:(id *)middleName lastName:(id *)lastName nickname:(id *)nickname
{
  v9 = getCNContactPhonemeDataKey;
  codeCopy = code;
  contactCopy = contact;
  v12 = v9();
  v13 = [contactCopy valueForKey:v12];

  v42 = v13;
  if (v13)
  {
    v14 = MEMORY[0x1E696ACB0];
    v15 = [v13 dataUsingEncoding:4];
    v16 = [v14 JSONObjectWithData:v15 options:0 error:0];

    objc_opt_class();
    v17 = 0;
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = [v17 objectForKey:@"phonemeInformation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [codeCopy stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  v21 = [v19 objectForKey:v20];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    if (v21)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __94__AFSiriRingtone__phoneticInfoForContact_languageCode_firstName_middleName_lastName_nickname___block_invoke;
      v43[3] = &unk_1E7341BD0;
      v22 = v21;
      v44 = v22;
      v37 = v19;
      v23 = MEMORY[0x193AFB7B0](v43);
      v24 = *MEMORY[0x1E69C7C10];
      v25 = *MEMORY[0x1E69C7C18];
      v26 = _FullyQualifiedDomainObjectProperty(*MEMORY[0x1E69C7C10], *MEMORY[0x1E69C7C18], *MEMORY[0x1E69C80D8]);
      v27 = (v23)[2](v23, v26);

      v28 = _FullyQualifiedDomainObjectProperty(v24, v25, *MEMORY[0x1E69C80E8]);
      v29 = (v23)[2](v23, v28);

      v30 = _FullyQualifiedDomainObjectProperty(v24, v25, *MEMORY[0x1E69C80E0]);
      v21 = (v23)[2](v23, v30);

      v31 = _FullyQualifiedDomainObjectProperty(v24, v25, *MEMORY[0x1E69C80F0]);
      v32 = (v23)[2](v23, v31);

      v19 = v37;
      goto LABEL_15;
    }

    v22 = 0;
    v27 = 0;
    v29 = 0;
  }

  else
  {

    v22 = 0;
    v27 = 0;
    v29 = 0;
    v21 = 0;
  }

  v32 = 0;
LABEL_15:
  if (name)
  {
    v33 = v27;
    *name = v27;
  }

  if (middleName)
  {
    v34 = v29;
    *middleName = v29;
  }

  if (lastName)
  {
    v35 = v21;
    *lastName = v21;
  }

  if (nickname)
  {
    v36 = v32;
    *nickname = v32;
  }
}

id __94__AFSiriRingtone__phoneticInfoForContact_languageCode_firstName_middleName_lastName_nickname___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKey:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if ([v6 length])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_spokenTextForCallDestinationID:(id)d ofType:(int64_t)type callServiceSpeakableName:(id)name languageCode:(id)code
{
  nameCopy = name;
  codeCopy = code;
  v12 = [(AFSiriRingtone *)self _escapeCallDestinationIDString:d forType:type];
  if ([nameCopy length])
  {
    if ((type - 1) > 1)
    {
      v14 = AFRingtoneLocalizedString(@"RAW_CALLER_WITH_SERVICE", codeCopy);
      nameCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v14, v12, nameCopy];

      if (nameCopy)
      {
        goto LABEL_7;
      }
    }

    else
    {
      nameCopy = nameCopy;
      if (nameCopy)
      {
        goto LABEL_7;
      }
    }
  }

  nameCopy = v12;
LABEL_7:

  return nameCopy;
}

- (id)_spokenTextForCallerID:(id)d ofType:(int64_t)type rawCaller:(id)caller rawCallerType:(int64_t)callerType languageCode:(id)code
{
  codeCopy = code;
  callerCopy = caller;
  v14 = [(AFSiriRingtone *)self _escapeCallerIDString:d forType:type];
  v15 = [(AFSiriRingtone *)self _escapeCallDestinationIDString:callerCopy forType:callerType];

  if (![v15 length] || (AFRingtoneLocalizedString(@"CALLER_ID_WITH_RAW_CALLER", codeCopy), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithFormat:", v16, v14, v15), v16, !v17))
  {
    v17 = v14;
  }

  v18 = v17;

  return v17;
}

- (id)_spokenTextForContacts:(id)contacts callServiceSpeakableName:(id)name languageCode:(id)code
{
  contactsCopy = contacts;
  nameCopy = name;
  codeCopy = code;
  if ([contactsCopy count] > 3)
  {
    v12 = [contactsCopy objectAtIndex:0];
    v13 = [(AFSiriRingtone *)self _phoneticNamesForContact:v12 languageCode:codeCopy];
    spokenName = [v13 spokenName];
    v15 = [contactsCopy objectAtIndex:1];
    v30 = [(AFSiriRingtone *)self _phoneticNamesForContact:v15 languageCode:codeCopy];
    spokenName2 = [v30 spokenName];
    v17 = spokenName2;
    v11 = 0;
    if (spokenName && spokenName2)
    {
      v27 = AFRingtoneLocalizedString(@"MORE_THAN_THREE_CONTACTS", codeCopy);
      v29 = v12;
      v18 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v26 = [codeCopy stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
      v19 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v26];
      v25 = v18;
      [v18 setLocale:v19];

      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      v28 = v15;
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(contactsCopy, "count") - 2}];
      [v18 stringFromNumber:v21];
      v23 = v22 = v13;
      v11 = [v20 initWithFormat:v27, spokenName, v17, v23];

      v13 = v22;
      v15 = v28;

      v12 = v29;
    }

    if (spokenName && !v11)
    {
      v11 = [(AFSiriRingtone *)self _spokenTextForOneContact:v12 callServiceSpeakableName:nameCopy languageCode:codeCopy];
    }

    if (!v11 && v17)
    {
      v11 = [(AFSiriRingtone *)self _spokenTextForOneContact:v15 callServiceSpeakableName:nameCopy languageCode:codeCopy];
    }
  }

  else
  {
    v11 = [(AFSiriRingtone *)self _spokenTextForThreeContacts:contactsCopy callServiceSpeakableName:nameCopy languageCode:codeCopy];
  }

  return v11;
}

- (id)_spokenTextForThreeContacts:(id)contacts callServiceSpeakableName:(id)name languageCode:(id)code
{
  contactsCopy = contacts;
  nameCopy = name;
  codeCopy = code;
  if ([contactsCopy count] > 2)
  {
    v12 = [contactsCopy objectAtIndex:0];
    v13 = [(AFSiriRingtone *)self _phoneticNamesForContact:v12 languageCode:codeCopy];
    spokenName = [v13 spokenName];
    v15 = [contactsCopy objectAtIndex:1];
    v29 = [(AFSiriRingtone *)self _phoneticNamesForContact:v15 languageCode:codeCopy];
    spokenName2 = [v29 spokenName];
    v17 = spokenName2;
    v11 = 0;
    if (spokenName && spokenName2)
    {
      v27 = AFRingtoneLocalizedString(@"THREE_CONTACTS", codeCopy);
      v28 = v12;
      v18 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v26 = [codeCopy stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
      v19 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v26];
      v25 = v18;
      [v18 setLocale:v19];

      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      [v18 stringFromNumber:&unk_1F056CD80];
      v21 = v15;
      v23 = v22 = v13;
      v11 = [v20 initWithFormat:v27, spokenName, v17, v23];

      v13 = v22;
      v15 = v21;

      v12 = v28;
    }

    if (spokenName && !v11)
    {
      v11 = [(AFSiriRingtone *)self _spokenTextForOneContact:v12 callServiceSpeakableName:nameCopy languageCode:codeCopy];
    }

    if (!v11 && v17)
    {
      v11 = [(AFSiriRingtone *)self _spokenTextForOneContact:v15 callServiceSpeakableName:nameCopy languageCode:codeCopy];
    }
  }

  else
  {
    v11 = [(AFSiriRingtone *)self _spokenTextForTwoContacts:contactsCopy callServiceSpeakableName:nameCopy languageCode:codeCopy];
  }

  return v11;
}

- (id)_spokenTextForTwoContacts:(id)contacts callServiceSpeakableName:(id)name languageCode:(id)code
{
  contactsCopy = contacts;
  nameCopy = name;
  codeCopy = code;
  v11 = [contactsCopy count];
  firstObject = [contactsCopy firstObject];
  if (v11 <= 1)
  {
    v13 = [(AFSiriRingtone *)self _spokenTextForOneContact:firstObject callServiceSpeakableName:nameCopy languageCode:codeCopy];
    goto LABEL_17;
  }

  v14 = [(AFSiriRingtone *)self _phoneticNamesForContact:firstObject languageCode:codeCopy];
  givenName = [v14 givenName];
  familyName = [v14 familyName];
  spokenName = [v14 spokenName];
  lastObject = [contactsCopy lastObject];
  v16 = [AFSiriRingtone _phoneticNamesForContact:"_phoneticNamesForContact:languageCode:" languageCode:?];
  familyName2 = [v16 familyName];
  spokenName2 = [v16 spokenName];
  v18 = spokenName2;
  if (!givenName || !spokenName2 || !familyName || !familyName2 || ![familyName isEqualToString:familyName2] || (AFRingtoneLocalizedString(@"TWO_CONTACTS_SHARED_FAMILY_NAME", codeCopy), v24 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithFormat:", v24, givenName, v18), v24, !v13))
  {
    if (!spokenName || !v18 || (AFRingtoneLocalizedString(@"TWO_CONTACTS", codeCopy), v25 = givenName, v19 = objc_claimAutoreleasedReturnValue(), v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v19, spokenName, v18], v19, givenName = v25, !v13))
    {
      v20 = [(AFSiriRingtone *)self _spokenTextForOneContact:firstObject callServiceSpeakableName:nameCopy languageCode:codeCopy];
      if (!v20)
      {
        selfCopy = self;
        v21 = lastObject;
        v13 = [(AFSiriRingtone *)selfCopy _spokenTextForOneContact:lastObject callServiceSpeakableName:nameCopy languageCode:codeCopy];
        goto LABEL_16;
      }

      v13 = v20;
    }
  }

  v21 = lastObject;
LABEL_16:

LABEL_17:

  return v13;
}

- (id)_spokenTextForOneContact:(id)contact callServiceSpeakableName:(id)name languageCode:(id)code
{
  nameCopy = name;
  codeCopy = code;
  v10 = [(AFSiriRingtone *)self _phoneticNamesForContact:contact languageCode:codeCopy];
  spokenName = [v10 spokenName];
  v12 = spokenName;
  if (spokenName)
  {
    if (nameCopy)
    {
      v13 = AFRingtoneLocalizedString(@"CONTACT_WITH_TYPE", codeCopy);
      nameCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v13, v12, nameCopy];
    }

    else
    {
      nameCopy = spokenName;
    }
  }

  else
  {
    nameCopy = 0;
  }

  return nameCopy;
}

- (id)_generateSpokenTextForContacts:(id)contacts voiceLanguage:(id)language displayedCallerID:(id)d callerIDType:(int64_t)type callDestinationID:(id)iD callDestinationIDType:(int64_t)dType callServiceSpeakableName:(id)name
{
  contactsCopy = contacts;
  languageCopy = language;
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  if (![contactsCopy count] || (-[AFSiriRingtone _spokenTextForContacts:callServiceSpeakableName:languageCode:](self, "_spokenTextForContacts:callServiceSpeakableName:languageCode:", contactsCopy, nameCopy, languageCopy), (v20 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (![nameCopy length] && ((type - 3) < 2 || dType == 1))
    {
      v21 = AFRingtoneLocalizedString(@"UNKNOWN_CALLER", languageCopy);
      goto LABEL_11;
    }

    if (dCopy)
    {
      v21 = [(AFSiriRingtone *)self _spokenTextForCallerID:dCopy ofType:type rawCaller:iDCopy rawCallerType:dType languageCode:languageCopy];
LABEL_11:
      v20 = v21;
      goto LABEL_12;
    }

    if (iDCopy)
    {
      v21 = [(AFSiriRingtone *)self _spokenTextForCallDestinationID:iDCopy ofType:dType callServiceSpeakableName:nameCopy languageCode:languageCopy];
      goto LABEL_11;
    }

    v20 = 0;
  }

LABEL_12:

  return v20;
}

- (NSString)textToSpeak
{
  v3 = [(AFSiriRingtone *)self _generateSpokenTextForContacts:self->_contacts voiceLanguage:self->_voiceLanguage displayedCallerID:self->_displayedCallerID callerIDType:self->_callerIDType callDestinationID:self->_callDestinationID callDestinationIDType:self->_callDestinationIDType callServiceSpeakableName:self->_callServiceSpeakableName];
  v4 = v3;
  if (self->_shouldAppendAutoAnswerTip)
  {
    v5 = AFRingtoneLocalizedString(@"AUTO_ANSWER", self->_voiceLanguage);
    v6 = [v4 stringByAppendingString:@"\x1B\\pause=2000\\""];
    v7 = [v6 stringByAppendingString:v5];
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

- (AFSiriRingtone)initWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v21.receiver = self;
  v21.super_class = AFSiriRingtone;
  v5 = [(AFSiriRingtone *)&v21 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [contactsCopy copy];
  contacts = v5->_contacts;
  v5->_contacts = v6;

  v8 = +[AFConnection outputVoice];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [currentLocale objectForKey:*MEMORY[0x1E695D9B0]];
  languageCode = [(AFVoiceInfo *)v8 languageCode];
  v5->_languageMismatch = [languageCode hasPrefix:v10] ^ 1;

  if (v5->_languageMismatch)
  {
    v12 = +[AFPreferences sharedPreferences];
    v13 = [v12 assistantIsEnabled] ^ 1;

    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
    if (!v8)
    {
LABEL_7:
      v14 = [(AFSiriRingtone *)v5 _bestVoiceInfoWithCurrentLocale:currentLocale];

      v8 = v14;
      goto LABEL_8;
    }
  }

  if (v13)
  {
    goto LABEL_7;
  }

LABEL_8:
  voiceInfo = v5->_voiceInfo;
  v5->_voiceInfo = v8;
  v16 = v8;

  languageCode2 = [(AFVoiceInfo *)v5->_voiceInfo languageCode];
  v18 = languageCode2;
  if (languageCode2)
  {
    v19 = languageCode2;
  }

  else
  {
    v19 = @"en-US";
  }

  objc_storeStrong(&v5->_voiceLanguage, v19);

LABEL_12:
  return v5;
}

- (id)_bestVoiceInfoWithCurrentLocale:(id)locale
{
  localeCopy = locale;
  v4 = VSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences();
  if (![v4 length])
  {
    v5 = [localeCopy objectForKey:*MEMORY[0x1E695D9B0]];
    v6 = v5;
    v7 = @"en";
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;

    v9 = [localeCopy objectForKey:*MEMORY[0x1E695D978]];
    v10 = v9;
    v11 = @"US";
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", v8, v12];
    v4 = v13;
  }

  v14 = [[AFVoiceInfo alloc] initWithLanguageCode:v4];

  return v14;
}

@end