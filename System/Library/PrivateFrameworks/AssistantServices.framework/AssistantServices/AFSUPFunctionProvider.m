@interface AFSUPFunctionProvider
- (AFSUPFunctionProvider)init;
- (AFSUPFunctionProvider)initWithLocale:(id)a3;
- (id)_callFunction:(id)a3 withArguments:(id)a4;
- (id)_contextDeviceName:(id)a3;
- (id)_contextRoomName:(id)a3;
- (id)_currentLongDate:(id)a3;
- (id)_currentShortDate:(id)a3;
- (id)_currentTime:(id)a3;
- (id)_currentWeekday:(id)a3;
- (id)_dateFormattedWithFormatter:(id)a3 arguments:(id)a4;
- (id)_deviceModel;
- (id)_lowercaseString:(id)a3;
- (id)_meCard;
- (id)_meCardIdentifier:(id)a3;
- (id)_peerInfoForContextIdentifier:(id)a3;
- (id)_siriUsageDescription:(id)a3;
- (id)_speechRecognitionUsageDescription:(id)a3;
- (id)_tempInWeatherUnits:(id)a3;
- (id)_userFirstName:(id)a3;
- (id)_userFullName:(id)a3;
- (id)_userLastName:(id)a3;
- (id)_userMiddleName:(id)a3;
- (id)_userNickName:(id)a3;
- (id)stringForExpression:(id)a3 containsPrivacySensitiveContents:(BOOL *)a4;
@end

@implementation AFSUPFunctionProvider

- (id)stringForExpression:(id)a3 containsPrivacySensitiveContents:(BOOL *)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  v8 = [(__CFString *)v6 length];
  v9 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (v8)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *buffer = 0u;
    v42 = 0u;
    theString = v7;
    v52 = 0;
    v53 = v8;
    CharactersPtr = CFStringGetCharactersPtr(v7);
    CStringPtr = 0;
    v50 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
    }

    v36 = v7;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v54 = 0;
    v55 = 0;
    v17 = 1;
    v51 = CStringPtr;
    while (1)
    {
      v18 = v53;
      if (v53 <= v14)
      {
        v20 = 0;
        v19 = 0;
      }

      else
      {
        if (v50)
        {
          v19 = v50[v52 + v14];
        }

        else if (v51)
        {
          v19 = v51[v52 + v14];
        }

        else
        {
          v21 = v54;
          v22 = v55 > v14 && v54 <= v14;
          if (!v22)
          {
            if (v17 - 1 >= 4)
            {
              v23 = v14 - 4;
            }

            else
            {
              v23 = 0;
            }

            if (v23 + 64 < v53)
            {
              v18 = v23 + 64;
            }

            v54 = v23;
            v55 = v18;
            v59.length = v18 - v23;
            v59.location = v52 + v23;
            CFStringGetCharacters(theString, v59, buffer);
            v21 = v54;
          }

          v19 = buffer[v14 - v21];
        }

        v20 = v19;
        if (v19 == 125)
        {
          --v16;
          v20 = 125;
          goto LABEL_33;
        }

        if (v19 == 123)
        {
          ++v16;
          v20 = 123;
LABEL_33:
          if (v15)
          {
            v25 = v11;
          }

          else
          {
            v25 = v9;
          }

          [v25 appendFormat:@"%C", v20];
          goto LABEL_37;
        }
      }

      if (v16)
      {
        goto LABEL_33;
      }

      if (v19 == 35)
      {
        v15 = 1;
      }

      else
      {
        if (v19 != 58)
        {
          goto LABEL_33;
        }

        if ([v11 length])
        {
          [v10 addObject:v11];
          v24 = objc_alloc_init(MEMORY[0x1E696AD60]);

          v16 = 0;
          v11 = v24;
        }

        else
        {
          v16 = 0;
        }
      }

LABEL_37:
      v14 = v17;
      v22 = v8 > v17++;
      if (!v22)
      {
        if ([v11 length])
        {
          [v10 addObject:v11];
        }

        v7 = v36;
        break;
      }
    }
  }

  v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v27 = v10;
  v28 = [v27 countByEnumeratingWithState:&v37 objects:v56 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v38;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [(AFSpeakableUtteranceParser *)self parseStringWithFormat:*(*(&v37 + 1) + 8 * i) error:0];
        if (v32)
        {
          [v26 addObject:v32];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v37 objects:v56 count:16];
    }

    while (v29);
  }

  v33 = [(AFSUPFunctionProvider *)self _callFunction:v9 withArguments:v26];

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)_callFunction:(id)a3 withArguments:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v6 isEqualToString:@"currentTime"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"currentTimeIn"))
  {
    v8 = [(AFSUPFunctionProvider *)self _currentTime:v7];
LABEL_4:
    v9 = v8;
    goto LABEL_5;
  }

  if (([v6 isEqualToString:@"currentDateShort"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"currentDateShortIn"))
  {
    v8 = [(AFSUPFunctionProvider *)self _currentShortDate:v7];
    goto LABEL_4;
  }

  if (([v6 isEqualToString:@"currentDateLong"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"currentDateLongIn"))
  {
    v8 = [(AFSUPFunctionProvider *)self _currentLongDate:v7];
    goto LABEL_4;
  }

  if (([v6 isEqualToString:@"currentDayOfWeek"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"currentDayOfWeekIn"))
  {
    v8 = [(AFSUPFunctionProvider *)self _currentWeekday:v7];
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"tempInWeatherUnits"])
  {
    v8 = [(AFSUPFunctionProvider *)self _tempInWeatherUnits:v7];
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"deviceModel"])
  {
    v8 = [(AFSUPFunctionProvider *)self _deviceModel];
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"lowercase"])
  {
    v8 = [(AFSUPFunctionProvider *)self _lowercaseString:v7];
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"siriUsageDescription"])
  {
    v8 = [(AFSUPFunctionProvider *)self _siriUsageDescription:v7];
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"speechRecognitionUsageDescription"])
  {
    v8 = [(AFSUPFunctionProvider *)self _speechRecognitionUsageDescription:v7];
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"contextRoomName"])
  {
    v8 = [(AFSUPFunctionProvider *)self _contextRoomName:v7];
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"contextDeviceName"])
  {
    v8 = [(AFSUPFunctionProvider *)self _contextDeviceName:v7];
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"fullName"])
  {
    v8 = [(AFSUPFunctionProvider *)self _userFullName:v7];
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"firstName"])
  {
    v8 = [(AFSUPFunctionProvider *)self _userFirstName:v7];
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"middleName"])
  {
    v8 = [(AFSUPFunctionProvider *)self _userMiddleName:v7];
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"lastName"])
  {
    v8 = [(AFSUPFunctionProvider *)self _userLastName:v7];
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"nickName"])
  {
    v8 = [(AFSUPFunctionProvider *)self _userNickName:v7];
    goto LABEL_4;
  }

  if ([v6 isEqualToString:@"internalGUID"])
  {
    v8 = [(AFSUPFunctionProvider *)self _meCardIdentifier:v7];
    goto LABEL_4;
  }

  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "[AFSUPFunctionProvider _callFunction:withArguments:]";
    v15 = 2112;
    v16 = v6;
    _os_log_error_impl(&dword_1912FE000, v12, OS_LOG_TYPE_ERROR, "%s Unhandled functor %@", &v13, 0x16u);
  }

  v9 = 0;
LABEL_5:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_peerInfoForContextIdentifier:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__13160;
  v27 = __Block_byref_object_dispose__13161;
  v28 = objc_alloc_init(AFSettingsConnection);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__13160;
  v21 = __Block_byref_object_dispose__13161;
  v22 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = v24[5];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__AFSUPFunctionProvider__peerInfoForContextIdentifier___block_invoke;
  v13[3] = &unk_1E7344040;
  v15 = &v17;
  v7 = v5;
  v14 = v7;
  v16 = &v23;
  [v6 getOriginDeviceInfoForContextIdentifier:v4 completion:v13];
  v8 = dispatch_time(0, 250000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[AFSUPFunctionProvider _peerInfoForContextIdentifier:]";
      v31 = 2048;
      v32 = 0x406F400000000000;
      _os_log_error_impl(&dword_1912FE000, v9, OS_LOG_TYPE_ERROR, "%s Timed out fetching peerInfo after waiting %0.1g milliseconds", buf, 0x16u);
    }
  }

  v10 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void __55__AFSUPFunctionProvider__peerInfoForContextIdentifier___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (id)_contextDeviceName:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 firstObject];
    v6 = [(AFSUPFunctionProvider *)self _peerInfoForContextIdentifier:v5];

    v7 = [v6 name];
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315394;
      v13 = "[AFSUPFunctionProvider _contextDeviceName:]";
      v14 = 2112;
      v15 = v7;
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s Computed value: %@", &v12, 0x16u);
    }
  }

  else
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[AFSUPFunctionProvider _contextDeviceName:]";
      _os_log_error_impl(&dword_1912FE000, v9, OS_LOG_TYPE_ERROR, "%s Missing argument for contextDeviceName", &v12, 0xCu);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_contextRoomName:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 firstObject];
    v6 = [(AFSUPFunctionProvider *)self _peerInfoForContextIdentifier:v5];

    v7 = [v6 roomName];
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315394;
      v13 = "[AFSUPFunctionProvider _contextRoomName:]";
      v14 = 2112;
      v15 = v7;
      _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s Computed value: %@", &v12, 0x16u);
    }
  }

  else
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[AFSUPFunctionProvider _contextRoomName:]";
      _os_log_error_impl(&dword_1912FE000, v9, OS_LOG_TYPE_ERROR, "%s Missing argument for contextRoomName", &v12, 0xCu);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_speechRecognitionUsageDescription:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = _AFLocalizedValueForInfoPlistKey(v4, @"NSSpeechRecognitionUsageDescription");
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[AFSUPFunctionProvider _speechRecognitionUsageDescription:]";
      _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s No argument for speechRecognitionUsageDescription", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_siriUsageDescription:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = _AFLocalizedValueForInfoPlistKey(v4, @"NSSiriUsageDescription");
  }

  else
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[AFSUPFunctionProvider _siriUsageDescription:]";
      _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s ERROR: No argument for siriUsageDescription", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_meCardIdentifier:(id)a3
{
  v3 = [(AFSUPFunctionProvider *)self _meCard];
  v4 = [v3 internalGUID];

  return v4;
}

- (id)_userNickName:(id)a3
{
  v3 = [(AFSUPFunctionProvider *)self _meCard];
  v4 = [v3 nickName];

  return v4;
}

- (id)_userLastName:(id)a3
{
  v3 = [(AFSUPFunctionProvider *)self _meCard];
  v4 = [v3 lastName];

  return v4;
}

- (id)_userMiddleName:(id)a3
{
  v3 = [(AFSUPFunctionProvider *)self _meCard];
  v4 = [v3 middleName];

  return v4;
}

- (id)_userFirstName:(id)a3
{
  v3 = [(AFSUPFunctionProvider *)self _meCard];
  v4 = [v3 firstName];

  return v4;
}

- (id)_userFullName:(id)a3
{
  v3 = [(AFSUPFunctionProvider *)self _meCard];
  v4 = [v3 fullName];

  return v4;
}

- (id)_meCard
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__13160;
  v26 = __Block_byref_object_dispose__13161;
  v27 = objc_alloc_init(AFSettingsConnection);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13160;
  v20 = __Block_byref_object_dispose__13161;
  v21 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = v23[5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __32__AFSUPFunctionProvider__meCard__block_invoke;
  v12[3] = &unk_1E7344018;
  v14 = &v16;
  v4 = v2;
  v13 = v4;
  v15 = &v22;
  [v3 getMeCard:v12];
  v5 = dispatch_time(0, 2000000000);
  v6 = dispatch_semaphore_wait(v4, v5);
  v7 = AFSiriLogContextConnection;
  if (v6 && os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "[AFSUPFunctionProvider _meCard]";
    v30 = 2048;
    v31 = 0x4000000000000000;
    _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s Timed out fetching meCard  after waiting %0.1g seconds", buf, 0x16u);
    v7 = AFSiriLogContextConnection;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (v17[5])
    {
      v8 = @"a meCard";
    }

    else
    {
      v8 = @"(null)";
    }

    *buf = 136315394;
    v29 = "[AFSUPFunctionProvider _meCard]";
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s Got %@", buf, 0x16u);
  }

  v9 = v17[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __32__AFSUPFunctionProvider__meCard__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[AFSUPFunctionProvider _meCard]_block_invoke";
      v16 = 2112;
      v17 = v6;
      _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s Error fetching meCard %@", &v14, 0x16u);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_deviceModel
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_lowercaseString:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
    v5 = +[AFPreferences sharedPreferences];
    v6 = [v5 languageCode];
    v7 = v6;
    v8 = @"en-US";
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v9];
    v11 = [v4 lowercaseStringWithLocale:v10];
  }

  else
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[AFSUPFunctionProvider _lowercaseString:]";
      _os_log_error_impl(&dword_1912FE000, v12, OS_LOG_TYPE_ERROR, "%s No argument for initLowercase", &v15, 0xCu);
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_tempInWeatherUnits:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  CFPreferencesAppSynchronize(@"com.apple.weather");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"Celsius", @"com.apple.weather", 0);
  if ([v3 count])
  {
    v5 = [v3 objectAtIndex:0];
    v6 = v5;
    v7 = v5;
    if (!AppBooleanValue)
    {
      [v5 floatValue];
      v9 = &off_1914CF000;
      v10 = v8 * 1.8;
      LODWORD(v9) = llroundf(v10 + 32.0);
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v9];
    }
  }

  else
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "[AFSUPFunctionProvider _tempInWeatherUnits:]";
      _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s No argument for weather units.", buf, 0xCu);
    }

    v7 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_currentWeekday:(id)a3
{
  dateFormatter = self->_dateFormatter;
  v5 = a3;
  [(NSDateFormatter *)dateFormatter setDateFormat:@"eeee"];
  v6 = [(AFSUPFunctionProvider *)self _dateFormattedWithFormatter:self->_dateFormatter arguments:v5];

  return v6;
}

- (id)_currentShortDate:(id)a3
{
  dateFormatter = self->_dateFormatter;
  v5 = a3;
  [(NSDateFormatter *)dateFormatter setDateStyle:1];
  [(NSDateFormatter *)self->_dateFormatter setTimeStyle:0];
  v6 = [(AFSUPFunctionProvider *)self _dateFormattedWithFormatter:self->_dateFormatter arguments:v5];

  return v6;
}

- (id)_currentLongDate:(id)a3
{
  dateFormatter = self->_dateFormatter;
  v5 = a3;
  [(NSDateFormatter *)dateFormatter setDateStyle:3];
  [(NSDateFormatter *)self->_dateFormatter setTimeStyle:0];
  v6 = [(AFSUPFunctionProvider *)self _dateFormattedWithFormatter:self->_dateFormatter arguments:v5];

  return v6;
}

- (id)_currentTime:(id)a3
{
  timeFormatter = self->_timeFormatter;
  v5 = a3;
  [(NSDateFormatter *)timeFormatter setDateStyle:0];
  [(NSDateFormatter *)self->_timeFormatter setTimeStyle:1];
  v6 = MEMORY[0x1E696AB78];
  v7 = [MEMORY[0x1E695DF58] currentLocale];
  v8 = [v6 dateFormatFromTemplate:@"jjmma" options:0 locale:v7];

  v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"Hk"];
  v10 = [v8 rangeOfCharacterFromSet:v9];

  v11 = MEMORY[0x1E696AB78];
  v12 = [(NSDateFormatter *)self->_timeFormatter locale];
  v13 = [v11 dateFormatFromTemplate:@"hhmma" options:0 locale:v12];

  v14 = MEMORY[0x1E696AB78];
  v15 = [(NSDateFormatter *)self->_timeFormatter locale];
  v16 = [v14 dateFormatFromTemplate:@"HHmm" options:0 locale:v15];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  [(NSDateFormatter *)self->_timeFormatter setDateFormat:v17];
  v18 = [(AFSUPFunctionProvider *)self _dateFormattedWithFormatter:self->_timeFormatter arguments:v5];

  return v18;
}

- (id)_dateFormattedWithFormatter:(id)a3 arguments:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 count];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 objectAtIndex:0];
    v10 = [MEMORY[0x1E695DFE8] timeZoneWithName:v9];
    if (!v10)
    {
      v10 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:v9];
    }

    [v5 setTimeZone:v10];

    if (v8 != 1)
    {
      v11 = MEMORY[0x1E695DEE8];
      v12 = [v6 objectAtIndex:1];
      v13 = [v11 calendarWithIdentifier:v12];
      goto LABEL_8;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E695DFE8] localTimeZone];
    [v5 setTimeZone:v14];
  }

  v13 = [MEMORY[0x1E695DEE8] currentCalendar];
  v12 = [v5 locale];
  [v13 setLocale:v12];
LABEL_8:

  [v5 setCalendar:v13];
  v15 = [MEMORY[0x1E695DF00] date];
  v16 = [v5 stringFromDate:v15];

  return v16;
}

- (AFSUPFunctionProvider)initWithLocale:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AFSUPFunctionProvider;
  v5 = [(AFSpeakableUtteranceParser *)&v11 initWithLocale:v4];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = v5->_dateFormatter;
    v5->_dateFormatter = v6;

    [(NSDateFormatter *)v5->_dateFormatter setLocale:v4];
    v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
    timeFormatter = v5->_timeFormatter;
    v5->_timeFormatter = v8;

    [(NSDateFormatter *)v5->_timeFormatter setLocale:v4];
  }

  return v5;
}

- (AFSUPFunctionProvider)init
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [(AFSUPFunctionProvider *)self initWithLocale:v3];

  return v4;
}

@end