@interface AFSiriRingtone
- (AFSiriRingtone)initWithContacts:(id)a3;
- (NSString)textToSpeak;
- (id)_addPhoneticEscapeIfNotEmptyNotNil:(id)a3 withStartEscape:(id)a4 withEndEscape:(id)a5;
- (id)_bestVoiceInfoWithCurrentLocale:(id)a3;
- (id)_escapeCallDestinationIDString:(id)a3 forType:(int64_t)a4;
- (id)_escapeCallerIDString:(id)a3 forType:(int64_t)a4;
- (id)_generateSpokenTextForContacts:(id)a3 voiceLanguage:(id)a4 displayedCallerID:(id)a5 callerIDType:(int64_t)a6 callDestinationID:(id)a7 callDestinationIDType:(int64_t)a8 callServiceSpeakableName:(id)a9;
- (id)_phoneticNamesForContact:(id)a3 languageCode:(id)a4;
- (id)_spokenTextForCallDestinationID:(id)a3 ofType:(int64_t)a4 callServiceSpeakableName:(id)a5 languageCode:(id)a6;
- (id)_spokenTextForCallerID:(id)a3 ofType:(int64_t)a4 rawCaller:(id)a5 rawCallerType:(int64_t)a6 languageCode:(id)a7;
- (id)_spokenTextForContacts:(id)a3 callServiceSpeakableName:(id)a4 languageCode:(id)a5;
- (id)_spokenTextForOneContact:(id)a3 callServiceSpeakableName:(id)a4 languageCode:(id)a5;
- (id)_spokenTextForThreeContacts:(id)a3 callServiceSpeakableName:(id)a4 languageCode:(id)a5;
- (id)_spokenTextForTwoContacts:(id)a3 callServiceSpeakableName:(id)a4 languageCode:(id)a5;
- (void)_phoneticInfoForContact:(id)a3 languageCode:(id)a4 firstName:(id *)a5 middleName:(id *)a6 lastName:(id *)a7 nickname:(id *)a8;
@end

@implementation AFSiriRingtone

- (id)_escapeCallDestinationIDString:(id)a3 forType:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 1)
  {
    if (softLinkIMStringIsPhoneNumber(v5))
    {
      v7 = @"\x1B\\tn=phone\\%@\x1B\\tn=normal\\"";
      goto LABEL_7;
    }
  }

  else
  {
    if (a4 != 2)
    {
LABEL_8:
      v6 = v6;
      v9 = v6;
      goto LABEL_10;
    }

    if (softLinkIMStringIsEmail(v5))
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

- (id)_escapeCallerIDString:(id)a3 forType:(int64_t)a4
{
  v5 = a3;
  if ((a4 - 1) <= 2)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:off_1E7341BF0[a4 - 1], v5];

    v5 = v6;
  }

  return v5;
}

- (id)_addPhoneticEscapeIfNotEmptyNotNil:(id)a3 withStartEscape:(id)a4 withEndEscape:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7 && [v7 length])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v8, v7, v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_phoneticNamesForContact:(id)a3 languageCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    [(AFSiriRingtone *)self _phoneticInfoForContact:v6 languageCode:v7 firstName:&v41 middleName:&v40 lastName:&v39 nickname:&v38];
    v8 = v41;
    v9 = v40;
    v10 = v39;
    v11 = v38;
    if ([v7 isEqualToString:@"en-IN"])
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

    v37 = v7;
    v14 = [[AFPhonemeMapper alloc] initWithLanguageCode:v7];
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
      v24 = [v6 pronunciationGivenName];

      v20 = v24;
    }

    if (![v22 length])
    {
      v25 = [v6 pronunciationFamilyName];

      v22 = v25;
    }

    if (![v20 length])
    {
      v26 = [v6 phoneticGivenName];

      v20 = v26;
    }

    if (![v21 length])
    {
      v27 = [v6 phoneticMiddleName];

      v21 = v27;
    }

    if (![v22 length])
    {
      v28 = [v6 phoneticFamilyName];

      v22 = v28;
    }

    v13 = objc_alloc_init(AFSiriPhoneticContactNames);
    [(AFSiriPhoneticContactNames *)v13 setLanguageCode:v37];
    if ([v20 length])
    {
      [(AFSiriPhoneticContactNames *)v13 setGivenName:v20];
    }

    else
    {
      v29 = [v6 givenName];
      [(AFSiriPhoneticContactNames *)v13 setGivenName:v29];
    }

    if ([v21 length])
    {
      [(AFSiriPhoneticContactNames *)v13 setMiddleName:v21];
    }

    else
    {
      v30 = [v6 middleName];
      [(AFSiriPhoneticContactNames *)v13 setMiddleName:v30];
    }

    if ([v22 length])
    {
      [(AFSiriPhoneticContactNames *)v13 setFamilyName:v22];
    }

    else
    {
      v31 = [v6 familyName];
      [(AFSiriPhoneticContactNames *)v13 setFamilyName:v31];
    }

    if ([v23 length])
    {
      [(AFSiriPhoneticContactNames *)v13 setNickname:v23];
    }

    else
    {
      v32 = [v6 nickname];
      [(AFSiriPhoneticContactNames *)v13 setNickname:v32];
    }

    v33 = [v6 organizationName];
    [(AFSiriPhoneticContactNames *)v13 setOrganizationName:v33];

    v7 = v37;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_phoneticInfoForContact:(id)a3 languageCode:(id)a4 firstName:(id *)a5 middleName:(id *)a6 lastName:(id *)a7 nickname:(id *)a8
{
  v9 = getCNContactPhonemeDataKey;
  v10 = a4;
  v11 = a3;
  v12 = v9();
  v13 = [v11 valueForKey:v12];

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

  v20 = [v10 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

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
  if (a5)
  {
    v33 = v27;
    *a5 = v27;
  }

  if (a6)
  {
    v34 = v29;
    *a6 = v29;
  }

  if (a7)
  {
    v35 = v21;
    *a7 = v21;
  }

  if (a8)
  {
    v36 = v32;
    *a8 = v32;
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

- (id)_spokenTextForCallDestinationID:(id)a3 ofType:(int64_t)a4 callServiceSpeakableName:(id)a5 languageCode:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(AFSiriRingtone *)self _escapeCallDestinationIDString:a3 forType:a4];
  if ([v10 length])
  {
    if ((a4 - 1) > 1)
    {
      v14 = AFRingtoneLocalizedString(@"RAW_CALLER_WITH_SERVICE", v11);
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v14, v12, v10];

      if (v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v13 = v10;
      if (v13)
      {
        goto LABEL_7;
      }
    }
  }

  v13 = v12;
LABEL_7:

  return v13;
}

- (id)_spokenTextForCallerID:(id)a3 ofType:(int64_t)a4 rawCaller:(id)a5 rawCallerType:(int64_t)a6 languageCode:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = [(AFSiriRingtone *)self _escapeCallerIDString:a3 forType:a4];
  v15 = [(AFSiriRingtone *)self _escapeCallDestinationIDString:v13 forType:a6];

  if (![v15 length] || (AFRingtoneLocalizedString(@"CALLER_ID_WITH_RAW_CALLER", v12), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithFormat:", v16, v14, v15), v16, !v17))
  {
    v17 = v14;
  }

  v18 = v17;

  return v17;
}

- (id)_spokenTextForContacts:(id)a3 callServiceSpeakableName:(id)a4 languageCode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] > 3)
  {
    v12 = [v8 objectAtIndex:0];
    v13 = [(AFSiriRingtone *)self _phoneticNamesForContact:v12 languageCode:v10];
    v14 = [v13 spokenName];
    v15 = [v8 objectAtIndex:1];
    v30 = [(AFSiriRingtone *)self _phoneticNamesForContact:v15 languageCode:v10];
    v16 = [v30 spokenName];
    v17 = v16;
    v11 = 0;
    if (v14 && v16)
    {
      v27 = AFRingtoneLocalizedString(@"MORE_THAN_THREE_CONTACTS", v10);
      v29 = v12;
      v18 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v26 = [v10 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
      v19 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v26];
      v25 = v18;
      [v18 setLocale:v19];

      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      v28 = v15;
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count") - 2}];
      [v18 stringFromNumber:v21];
      v23 = v22 = v13;
      v11 = [v20 initWithFormat:v27, v14, v17, v23];

      v13 = v22;
      v15 = v28;

      v12 = v29;
    }

    if (v14 && !v11)
    {
      v11 = [(AFSiriRingtone *)self _spokenTextForOneContact:v12 callServiceSpeakableName:v9 languageCode:v10];
    }

    if (!v11 && v17)
    {
      v11 = [(AFSiriRingtone *)self _spokenTextForOneContact:v15 callServiceSpeakableName:v9 languageCode:v10];
    }
  }

  else
  {
    v11 = [(AFSiriRingtone *)self _spokenTextForThreeContacts:v8 callServiceSpeakableName:v9 languageCode:v10];
  }

  return v11;
}

- (id)_spokenTextForThreeContacts:(id)a3 callServiceSpeakableName:(id)a4 languageCode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] > 2)
  {
    v12 = [v8 objectAtIndex:0];
    v13 = [(AFSiriRingtone *)self _phoneticNamesForContact:v12 languageCode:v10];
    v14 = [v13 spokenName];
    v15 = [v8 objectAtIndex:1];
    v29 = [(AFSiriRingtone *)self _phoneticNamesForContact:v15 languageCode:v10];
    v16 = [v29 spokenName];
    v17 = v16;
    v11 = 0;
    if (v14 && v16)
    {
      v27 = AFRingtoneLocalizedString(@"THREE_CONTACTS", v10);
      v28 = v12;
      v18 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v26 = [v10 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
      v19 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v26];
      v25 = v18;
      [v18 setLocale:v19];

      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      [v18 stringFromNumber:&unk_1F056CD80];
      v21 = v15;
      v23 = v22 = v13;
      v11 = [v20 initWithFormat:v27, v14, v17, v23];

      v13 = v22;
      v15 = v21;

      v12 = v28;
    }

    if (v14 && !v11)
    {
      v11 = [(AFSiriRingtone *)self _spokenTextForOneContact:v12 callServiceSpeakableName:v9 languageCode:v10];
    }

    if (!v11 && v17)
    {
      v11 = [(AFSiriRingtone *)self _spokenTextForOneContact:v15 callServiceSpeakableName:v9 languageCode:v10];
    }
  }

  else
  {
    v11 = [(AFSiriRingtone *)self _spokenTextForTwoContacts:v8 callServiceSpeakableName:v9 languageCode:v10];
  }

  return v11;
}

- (id)_spokenTextForTwoContacts:(id)a3 callServiceSpeakableName:(id)a4 languageCode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 count];
  v12 = [v8 firstObject];
  if (v11 <= 1)
  {
    v13 = [(AFSiriRingtone *)self _spokenTextForOneContact:v12 callServiceSpeakableName:v9 languageCode:v10];
    goto LABEL_17;
  }

  v14 = [(AFSiriRingtone *)self _phoneticNamesForContact:v12 languageCode:v10];
  v15 = [v14 givenName];
  v29 = [v14 familyName];
  v28 = [v14 spokenName];
  v26 = [v8 lastObject];
  v16 = [AFSiriRingtone _phoneticNamesForContact:"_phoneticNamesForContact:languageCode:" languageCode:?];
  v27 = [v16 familyName];
  v17 = [v16 spokenName];
  v18 = v17;
  if (!v15 || !v17 || !v29 || !v27 || ![v29 isEqualToString:v27] || (AFRingtoneLocalizedString(@"TWO_CONTACTS_SHARED_FAMILY_NAME", v10), v24 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithFormat:", v24, v15, v18), v24, !v13))
  {
    if (!v28 || !v18 || (AFRingtoneLocalizedString(@"TWO_CONTACTS", v10), v25 = v15, v19 = objc_claimAutoreleasedReturnValue(), v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v19, v28, v18], v19, v15 = v25, !v13))
    {
      v20 = [(AFSiriRingtone *)self _spokenTextForOneContact:v12 callServiceSpeakableName:v9 languageCode:v10];
      if (!v20)
      {
        v22 = self;
        v21 = v26;
        v13 = [(AFSiriRingtone *)v22 _spokenTextForOneContact:v26 callServiceSpeakableName:v9 languageCode:v10];
        goto LABEL_16;
      }

      v13 = v20;
    }
  }

  v21 = v26;
LABEL_16:

LABEL_17:

  return v13;
}

- (id)_spokenTextForOneContact:(id)a3 callServiceSpeakableName:(id)a4 languageCode:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(AFSiriRingtone *)self _phoneticNamesForContact:a3 languageCode:v9];
  v11 = [v10 spokenName];
  v12 = v11;
  if (v11)
  {
    if (v8)
    {
      v13 = AFRingtoneLocalizedString(@"CONTACT_WITH_TYPE", v9);
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v13, v12, v8];
    }

    else
    {
      v14 = v11;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_generateSpokenTextForContacts:(id)a3 voiceLanguage:(id)a4 displayedCallerID:(id)a5 callerIDType:(int64_t)a6 callDestinationID:(id)a7 callDestinationIDType:(int64_t)a8 callServiceSpeakableName:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a9;
  if (![v15 count] || (-[AFSiriRingtone _spokenTextForContacts:callServiceSpeakableName:languageCode:](self, "_spokenTextForContacts:callServiceSpeakableName:languageCode:", v15, v19, v16), (v20 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (![v19 length] && ((a6 - 3) < 2 || a8 == 1))
    {
      v21 = AFRingtoneLocalizedString(@"UNKNOWN_CALLER", v16);
      goto LABEL_11;
    }

    if (v17)
    {
      v21 = [(AFSiriRingtone *)self _spokenTextForCallerID:v17 ofType:a6 rawCaller:v18 rawCallerType:a8 languageCode:v16];
LABEL_11:
      v20 = v21;
      goto LABEL_12;
    }

    if (v18)
    {
      v21 = [(AFSiriRingtone *)self _spokenTextForCallDestinationID:v18 ofType:a8 callServiceSpeakableName:v19 languageCode:v16];
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

- (AFSiriRingtone)initWithContacts:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = AFSiriRingtone;
  v5 = [(AFSiriRingtone *)&v21 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [v4 copy];
  contacts = v5->_contacts;
  v5->_contacts = v6;

  v8 = +[AFConnection outputVoice];
  v9 = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [v9 objectForKey:*MEMORY[0x1E695D9B0]];
  v11 = [(AFVoiceInfo *)v8 languageCode];
  v5->_languageMismatch = [v11 hasPrefix:v10] ^ 1;

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
      v14 = [(AFSiriRingtone *)v5 _bestVoiceInfoWithCurrentLocale:v9];

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

  v17 = [(AFVoiceInfo *)v5->_voiceInfo languageCode];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"en-US";
  }

  objc_storeStrong(&v5->_voiceLanguage, v19);

LABEL_12:
  return v5;
}

- (id)_bestVoiceInfoWithCurrentLocale:(id)a3
{
  v3 = a3;
  v4 = VSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences();
  if (![v4 length])
  {
    v5 = [v3 objectForKey:*MEMORY[0x1E695D9B0]];
    v6 = v5;
    v7 = @"en";
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;

    v9 = [v3 objectForKey:*MEMORY[0x1E695D978]];
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