@interface UNPushNotificationRequestBuilder
- (UNPushNotificationRequestBuilder)initWithIdentifier:(id)identifier payload:(id)payload bundleIdentifier:(id)bundleIdentifier;
- (id)_sanitizeAPSDictionary:(id)dictionary;
- (id)_sanitizeAlert:(id)alert;
- (id)_sanitizeFlag:(id)flag;
- (id)_sanitizeInterruptionLevelString:(id)string;
- (id)_sanitizeLocalizationArgumentsArray:(id)array;
- (id)_sanitizeRelevanceScore:(id)score;
- (id)_sanitizeSound:(id)sound;
- (id)_sanitizeStringArray:(id)array;
- (id)_sanitizeTopicIdentifier:(id)identifier;
- (id)_sanitizeUnsignedInteger:(id)integer;
- (id)_sanitizeVolume:(id)volume;
- (id)buildNotificationRequest;
- (id)buildSafePayload;
- (unint64_t)_interruptionLevelForString:(id)string;
@end

@implementation UNPushNotificationRequestBuilder

- (UNPushNotificationRequestBuilder)initWithIdentifier:(id)identifier payload:(id)payload bundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  payloadCopy = payload;
  bundleIdentifierCopy = bundleIdentifier;
  v19.receiver = self;
  v19.super_class = UNPushNotificationRequestBuilder;
  v11 = [(UNPushNotificationRequestBuilder *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [payloadCopy copy];
    payload = v11->_payload;
    v11->_payload = v14;

    v16 = [bundleIdentifierCopy copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v16;
  }

  return v11;
}

- (id)buildNotificationRequest
{
  v75[1] = *MEMORY[0x1E69E9840];
  buildSafePayload = [(UNPushNotificationRequestBuilder *)self buildSafePayload];
  if (!buildSafePayload)
  {
    v5 = 0;
    goto LABEL_54;
  }

  v73 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:self->_bundleIdentifier];
  bundleURL = [v73 bundleURL];
  if (bundleURL)
  {
    Unique = _CFBundleCreateUnique();
  }

  else
  {
    Unique = 0;
  }

  v6 = objc_alloc_init(UNMutableNotificationContent);
  [(UNMutableNotificationContent *)v6 setUserInfo:self->_payload];
  v7 = [buildSafePayload un_safeCastObjectForKey:@"aps" class:objc_opt_class()];
  v8 = [v7 objectForKey:@"alert"];
  cf = Unique;
  v71 = v8;
  if (v8)
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = UNSafeCast(v10, v9);
    if (v11)
    {
      [(UNMutableNotificationContent *)v6 setBody:v11];
    }

    else
    {
      v65 = buildSafePayload;
      v12 = v9;
      v13 = [v12 un_safeCastObjectForKey:@"body" class:objc_opt_class()];
      v69 = [v12 un_safeCastObjectForKey:@"loc-key" class:objc_opt_class()];
      if (v69 && Unique)
      {
        v14 = [v12 un_safeCastObjectForKey:@"loc-args" class:objc_opt_class()];
        v15 = [UNLocalizedStringFactory localizedUserNotificationStringForKey:v69 arguments:v14 cfBundle:Unique defaultValue:v13];
        v16 = v13;
        v13 = v15;
      }

      [(UNMutableNotificationContent *)v6 setBody:v13];
      v17 = [v12 un_safeCastObjectForKey:@"subtitle" class:objc_opt_class()];
      v67 = [v12 un_safeCastObjectForKey:@"subtitle-loc-key" class:objc_opt_class()];
      v64 = v13;
      if (v67 && Unique)
      {
        [v12 un_safeCastObjectForKey:@"subtitle-loc-args" class:objc_opt_class()];
        v19 = v18 = v17;
        v20 = [UNLocalizedStringFactory localizedUserNotificationStringForKey:v67 arguments:v19 cfBundle:Unique defaultValue:v18];

        v17 = v20;
      }

      [(UNMutableNotificationContent *)v6 setSubtitle:v17];
      v21 = [v12 un_safeCastObjectForKey:@"title" class:objc_opt_class()];
      v22 = [v12 un_safeCastObjectForKey:@"title-loc-key" class:objc_opt_class()];
      v63 = v17;
      if (v22 && cf)
      {
        v23 = [v12 un_safeCastObjectForKey:@"title-loc-args" class:objc_opt_class()];
        v24 = [UNLocalizedStringFactory localizedUserNotificationStringForKey:v22 arguments:v23 cfBundle:cf defaultValue:v21];

        v21 = v24;
      }

      [(UNMutableNotificationContent *)v6 setTitle:v21];
      v25 = [v12 un_safeCastObjectForKey:@"summary-arg" class:objc_opt_class()];
      [(UNMutableNotificationContent *)v6 setSummaryArgument:v25];

      v26 = [v12 un_safeCastObjectForKey:@"summary-arg-count" class:objc_opt_class()];
      -[UNMutableNotificationContent setSummaryArgumentCount:](v6, "setSummaryArgumentCount:", [v26 unsignedIntegerValue]);

      v27 = [v12 un_safeCastObjectForKey:@"launch-image" class:objc_opt_class()];
      [(UNMutableNotificationContent *)v6 setLaunchImageName:v27];

      buildSafePayload = v65;
    }
  }

  v28 = [v7 un_safeCastObjectForKey:@"badge" class:objc_opt_class()];
  [(UNMutableNotificationContent *)v6 setBadge:v28];

  v29 = [v7 un_safeCastObjectForKey:@"category" class:objc_opt_class()];
  [(UNMutableNotificationContent *)v6 setCategoryIdentifier:v29];

  v30 = [v7 un_safeCastObjectForKey:@"thread-id" class:objc_opt_class()];
  [(UNMutableNotificationContent *)v6 setThreadIdentifier:v30];

  v31 = [v7 un_safeCastObjectForKey:@"target-content-id" class:objc_opt_class()];
  [(UNMutableNotificationContent *)v6 setTargetContentIdentifier:v31];

  v32 = [v7 objectForKey:@"interruption-level"];
  v70 = v32;
  if (v32)
  {
    v33 = [(UNPushNotificationRequestBuilder *)self _interruptionLevelForString:v32];
  }

  else
  {
    v33 = 1;
  }

  [(UNMutableNotificationContent *)v6 setInterruptionLevel:v33];
  v34 = [v7 objectForKey:@"relevance-score"];
  v35 = v34;
  if (v34)
  {
    [v34 doubleValue];
    [(UNMutableNotificationContent *)v6 setRelevanceScore:?];
  }

  v68 = v35;
  v36 = [v7 un_safeCastObjectForKey:@"filter-criteria" class:objc_opt_class()];
  [(UNMutableNotificationContent *)v6 setFilterCriteria:v36];

  v37 = [v7 objectForKey:@"sound"];
  if (v37)
  {
    v38 = objc_opt_class();
    v39 = UNSafeCast(v38, v37);
    if (v39)
    {
      v40 = v39;
      bOOLValue = 0;
      v42 = 0;
    }

    else
    {
      v66 = buildSafePayload;
      v43 = v37;
      v40 = [v43 un_safeCastObjectForKey:@"name" class:objc_opt_class()];
      v44 = [v43 un_safeCastObjectForKey:@"critical" class:objc_opt_class()];
      bOOLValue = [v44 BOOLValue];

      v42 = [v43 un_safeCastObjectForKey:@"volume" class:objc_opt_class()];

      if (!v40)
      {
        v46 = v33 == 3;
        buildSafePayload = v66;
        goto LABEL_38;
      }

      buildSafePayload = v66;
    }

    v45 = [v40 isEqualToString:@"default"];
    v46 = v33 == 3;
    if (!v45)
    {
      v47 = bOOLValue ^ 1;
      if (v33 == 3)
      {
        v47 = 0;
      }

      if (v47)
      {
        v48 = [UNNotificationSound soundNamed:v40];
        goto LABEL_43;
      }

      if (v42)
      {
        [v42 floatValue];
        v48 = [UNNotificationSound criticalSoundNamed:v40 withAudioVolume:?];
LABEL_43:
        v49 = v48;
        [(UNMutableNotificationContent *)v6 setSound:v48];

LABEL_44:
        goto LABEL_45;
      }

      v62 = [UNNotificationSound criticalSoundNamed:v40];
LABEL_59:
      v42 = v62;
      [(UNMutableNotificationContent *)v6 setSound:v62];
      goto LABEL_44;
    }

LABEL_38:
    if (!v46 && !bOOLValue)
    {
      v48 = +[UNNotificationSound defaultSound];
      goto LABEL_43;
    }

    if (v42)
    {
      [v42 floatValue];
      v48 = [UNNotificationSound defaultCriticalSoundWithAudioVolume:?];
      goto LABEL_43;
    }

    v62 = +[UNNotificationSound defaultCriticalSound];
    goto LABEL_59;
  }

LABEL_45:
  v50 = [v7 objectForKey:@"topic-id"];
  if (v50)
  {
    v51 = objc_opt_class();
    v52 = UNSafeCast(v51, v50);
    if (!v52)
    {
      v75[0] = v50;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
    }

    v53 = [(UNPushNotificationRequestBuilder *)self _sanitizeStringArray:v52];
    if (v53)
    {
      v54 = [MEMORY[0x1E695DFD8] setWithArray:v53];
      [(UNMutableNotificationContent *)v6 setTopicIdentifiers:v54];
    }
  }

  v55 = [v7 un_safeCastObjectForKey:@"content-available" class:objc_opt_class()];
  v56 = [v55 isEqual:&unk_1F309CBE8];

  v57 = [v7 un_safeCastObjectForKey:@"mutable-content" class:objc_opt_class()];
  v58 = [v57 isEqual:&unk_1F309CBE8];

  v59 = [UNPushNotificationTrigger triggerWithContentAvailable:v56 mutableContent:v58];
  v5 = [UNNotificationRequest requestWithIdentifier:self->_identifier content:v6 trigger:v59];
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_54:
  v60 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)buildSafePayload
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = [(NSDictionary *)self->_payload un_safeCastObjectForKey:@"aps" class:objc_opt_class()];
  v4 = [(UNPushNotificationRequestBuilder *)self _sanitizeAPSDictionary:?];
  [dictionary un_safeSetObject:v4 forKey:@"aps"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [(NSDictionary *)self->_payload allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (([v10 isEqualToString:@"aps"] & 1) == 0)
        {
          v11 = [(NSDictionary *)self->_payload objectForKey:v10];
          [dictionary setObject:v11 forKey:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  un_nonEmptyCopy = [dictionary un_nonEmptyCopy];

  v13 = *MEMORY[0x1E69E9840];

  return un_nonEmptyCopy;
}

- (id)_sanitizeAPSDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v30 = [dictionaryCopy objectForKey:@"alert"];
  v29 = [(UNPushNotificationRequestBuilder *)self _sanitizeAlert:?];
  [dictionary un_safeSetObject:? forKey:?];
  v28 = [dictionaryCopy un_safeCastObjectForKey:@"badge" class:objc_opt_class()];
  [dictionary un_safeSetObject:v28 & ~(objc_msgSend(v28 forKey:{"integerValue") >> 63), @"badge"}];
  v27 = [dictionaryCopy objectForKey:@"sound"];
  v26 = [(UNPushNotificationRequestBuilder *)self _sanitizeSound:?];
  [dictionary un_safeSetObject:? forKey:?];
  v25 = [dictionaryCopy objectForKey:@"content-available"];
  v24 = [(UNPushNotificationRequestBuilder *)self _sanitizeFlag:?];
  [dictionary un_safeSetObject:? forKey:?];
  v23 = [dictionaryCopy objectForKey:@"mutable-content"];
  v22 = [(UNPushNotificationRequestBuilder *)self _sanitizeFlag:?];
  [dictionary un_safeSetObject:? forKey:?];
  v6 = [dictionaryCopy un_safeCastObjectForKey:@"category" class:objc_opt_class()];
  v21 = v6;
  if ([v6 length])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [dictionary un_safeSetObject:v7 forKey:@"category"];
  v8 = [dictionaryCopy un_safeCastObjectForKey:@"thread-id" class:objc_opt_class()];
  v20 = v8;
  if ([v8 length])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [dictionary un_safeSetObject:v9 forKey:@"thread-id"];
  v19 = [dictionaryCopy un_safeCastObjectForKey:@"target-content-id" class:objc_opt_class()];
  [dictionary un_safeSetObject:? forKey:?];
  v10 = [dictionaryCopy objectForKey:@"topic-id"];
  v11 = [(UNPushNotificationRequestBuilder *)self _sanitizeTopicIdentifier:v10];
  [dictionary un_safeSetObject:v11 forKey:@"topic-id"];
  v12 = [dictionaryCopy un_safeCastObjectForKey:@"interruption-level" class:objc_opt_class()];
  v13 = [(UNPushNotificationRequestBuilder *)self _sanitizeInterruptionLevelString:v12];
  if (v13)
  {
    [dictionary un_safeSetObject:v13 forKey:@"interruption-level"];
  }

  v14 = [dictionaryCopy objectForKey:@"relevance-score"];
  v15 = [(UNPushNotificationRequestBuilder *)self _sanitizeRelevanceScore:v14];
  [dictionary un_safeSetObject:v15 forKey:@"relevance-score"];
  v16 = [dictionaryCopy un_safeCastObjectForKey:@"filter-criteria" class:objc_opt_class()];
  [dictionary un_safeSetObject:v16 forKey:@"filter-criteria"];
  un_nonEmptyCopy = [dictionary un_nonEmptyCopy];

  return un_nonEmptyCopy;
}

- (id)_sanitizeAlert:(id)alert
{
  alertCopy = alert;
  v5 = objc_opt_class();
  v6 = UNSafeCast(v5, alertCopy);
  v7 = v6;
  if (v6)
  {
    if ([v6 length])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    un_nonEmptyCopy = v8;
  }

  else
  {
    v10 = objc_opt_class();
    v11 = UNSafeCast(v10, alertCopy);
    if (v11)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v13 = [v11 un_safeCastObjectForKey:@"body" class:objc_opt_class()];
      v46 = v13;
      if ([v13 length])
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      [dictionary un_safeSetObject:v14 forKey:@"body"];
      v15 = [v11 un_safeCastObjectForKey:@"loc-key" class:objc_opt_class()];
      v45 = v15;
      if (![v15 length])
      {
        v15 = 0;
      }

      [dictionary un_safeSetObject:v15 forKey:@"loc-key"];
      if (v15)
      {
        v16 = [v11 un_safeCastObjectForKey:@"loc-args" class:objc_opt_class()];
        v17 = [(UNPushNotificationRequestBuilder *)self _sanitizeLocalizationArgumentsArray:v16];
        [dictionary un_safeSetObject:v17 forKey:@"loc-args"];
      }

      v18 = [v11 un_safeCastObjectForKey:@"action-loc-key" class:objc_opt_class()];
      v44 = v18;
      if ([v18 length])
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      [dictionary un_safeSetObject:v19 forKey:@"action-loc-key"];
      v20 = [v11 un_safeCastObjectForKey:@"launch-image" class:objc_opt_class()];
      v43 = v20;
      if ([v20 length])
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      [dictionary un_safeSetObject:v21 forKey:@"launch-image"];
      v22 = [v11 un_safeCastObjectForKey:@"subtitle" class:objc_opt_class()];
      v42 = v22;
      if ([v22 length])
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      [dictionary un_safeSetObject:v23 forKey:@"subtitle"];
      v24 = [v11 un_safeCastObjectForKey:@"subtitle-loc-key" class:objc_opt_class()];
      v41 = v24;
      if ([v24 length])
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      [dictionary un_safeSetObject:v25 forKey:@"subtitle-loc-key"];
      if (v25)
      {
        v26 = [v11 un_safeCastObjectForKey:@"subtitle-loc-args" class:objc_opt_class()];
        v27 = [(UNPushNotificationRequestBuilder *)self _sanitizeLocalizationArgumentsArray:v26];
        [dictionary un_safeSetObject:v27 forKey:@"subtitle-loc-args"];
      }

      v28 = [v11 un_safeCastObjectForKey:@"title" class:objc_opt_class()];
      v40 = v28;
      if ([v28 length])
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      [dictionary un_safeSetObject:v29 forKey:@"title"];
      v30 = [v11 un_safeCastObjectForKey:@"title-loc-key" class:objc_opt_class()];
      selfCopy = self;
      if ([v30 length])
      {
        v32 = v30;
      }

      else
      {
        v32 = 0;
      }

      [dictionary un_safeSetObject:v32 forKey:@"title-loc-key"];
      if (v32)
      {
        v33 = [v11 un_safeCastObjectForKey:@"title-loc-args" class:objc_opt_class()];
        v34 = [(UNPushNotificationRequestBuilder *)selfCopy _sanitizeLocalizationArgumentsArray:v33];
        [dictionary un_safeSetObject:v34 forKey:@"title-loc-args"];
      }

      v35 = [v11 un_safeCastObjectForKey:@"summary-arg" class:objc_opt_class()];
      if ([v35 length])
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      [dictionary un_safeSetObject:v36 forKey:@"summary-arg"];
      v37 = [v11 un_safeCastObjectForKey:@"summary-arg-count" class:objc_opt_class()];
      v38 = [(UNPushNotificationRequestBuilder *)selfCopy _sanitizeUnsignedInteger:v37];
      [dictionary un_safeSetObject:v38 forKey:@"summary-arg-count"];
      un_nonEmptyCopy = [dictionary un_nonEmptyCopy];
    }

    else
    {
      un_nonEmptyCopy = 0;
    }
  }

  return un_nonEmptyCopy;
}

- (id)_sanitizeSound:(id)sound
{
  soundCopy = sound;
  v5 = objc_opt_class();
  v6 = UNSafeCast(v5, soundCopy);
  v7 = v6;
  if (v6)
  {
    if ([v6 length])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    un_nonEmptyCopy = v8;
  }

  else
  {
    v10 = objc_opt_class();
    v11 = UNSafeCast(v10, soundCopy);
    if (v11)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v19 = [v11 objectForKey:@"critical"];
      v13 = [(UNPushNotificationRequestBuilder *)self _sanitizeFlag:v19];
      [dictionary un_safeSetObject:v13 forKey:@"critical"];
      v14 = [v11 un_safeCastObjectForKey:@"name" class:objc_opt_class()];
      if ([v14 length])
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      [dictionary un_safeSetObject:v15 forKey:@"name"];
      v16 = [v11 objectForKey:@"volume"];
      v17 = [(UNPushNotificationRequestBuilder *)self _sanitizeVolume:v16];
      [dictionary un_safeSetObject:v17 forKey:@"volume"];
      un_nonEmptyCopy = [dictionary un_nonEmptyCopy];
    }

    else
    {
      un_nonEmptyCopy = 0;
    }
  }

  return un_nonEmptyCopy;
}

- (id)_sanitizeTopicIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_opt_class();
  v6 = UNSafeCast(v5, identifierCopy);
  v7 = v6;
  if (v6)
  {
    if ([v6 length])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v10 = objc_opt_class();
    v11 = UNSafeCast(v10, identifierCopy);
    if (v11)
    {
      v9 = [(UNPushNotificationRequestBuilder *)self _sanitizeStringArray:v11];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_sanitizeStringArray:(id)array
{
  arrayCopy = array;
  v4 = [arrayCopy un_safeArrayContainingClass:objc_opt_class()];

  v5 = [v4 un_filter:&__block_literal_global_6];
  un_nonEmptyCopy = [v5 un_nonEmptyCopy];

  return un_nonEmptyCopy;
}

- (id)_sanitizeLocalizationArgumentsArray:(id)array
{
  v3 = MEMORY[0x1E695DFD8];
  arrayCopy = array;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__UNPushNotificationRequestBuilder__sanitizeLocalizationArgumentsArray___block_invoke;
  v10[3] = &unk_1E7CFFB80;
  v11 = v6;
  v7 = v6;
  v8 = [arrayCopy un_map:v10];

  return v8;
}

__CFString *__72__UNPushNotificationRequestBuilder__sanitizeLocalizationArgumentsArray___block_invoke(uint64_t a1, void *a2)
{
  v2 = UNSafeCastAny(*(a1 + 32), a2);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F308F460;
  }

  v5 = v4;

  return v4;
}

- (id)_sanitizeFlag:(id)flag
{
  flagCopy = flag;
  v4 = objc_opt_class();
  v5 = UNSafeCast(v4, flagCopy);

  if (v5)
  {
    integerValue = [v5 integerValue];
    v7 = (v5 & ~(integerValue >> 63));
    if (integerValue < 0)
    {
      v9 = 0;
    }

    else
    {
      if ([v5 integerValue] <= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = [MEMORY[0x1E696AD98] numberWithInteger:1];
      }

      v9 = v8;
    }
  }

  else if (flagCopy)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_sanitizeVolume:(id)volume
{
  volumeCopy = volume;
  v4 = objc_opt_class();
  v5 = UNSafeCast(v4, volumeCopy);

  if (!v5)
  {
    v9 = 0;
    goto LABEL_10;
  }

  [v5 floatValue];
  if (v6 >= 0.0)
  {
    [v5 floatValue];
    if (*&v8 <= 1.0)
    {
      v10 = v5;
      goto LABEL_9;
    }

    v7 = MEMORY[0x1E696AD98];
    LODWORD(v8) = 1.0;
  }

  else
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = 0.0;
  }

  v10 = [v7 numberWithFloat:v8];
LABEL_9:
  v9 = v10;
LABEL_10:

  return v9;
}

- (id)_sanitizeUnsignedInteger:(id)integer
{
  integerCopy = integer;
  v4 = objc_opt_class();
  v5 = UNSafeCast(v4, integerCopy);

  if (v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "unsignedIntegerValue")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_sanitizeInterruptionLevelString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && (([stringCopy isEqualToString:@"passive"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"active") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"time-sensitive") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"critical")))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_interruptionLevelForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"passive"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"active"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"time-sensitive"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"critical"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_sanitizeRelevanceScore:(id)score
{
  scoreCopy = score;
  v4 = objc_opt_class();
  v5 = UNSafeCast(v4, scoreCopy);

  if (!v5)
  {
    v9 = 0;
    goto LABEL_10;
  }

  [v5 doubleValue];
  if (v6 >= 0.0)
  {
    [v5 doubleValue];
    if (v10 <= 1.0)
    {
      v11 = v5;
      goto LABEL_9;
    }

    v7 = MEMORY[0x1E696AD98];
    v8 = 1.0;
  }

  else
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = 0.0;
  }

  v11 = [v7 numberWithDouble:v8];
LABEL_9:
  v9 = v11;
LABEL_10:

  return v9;
}

@end