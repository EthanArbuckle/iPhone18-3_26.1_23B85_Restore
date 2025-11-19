@interface _LTTextToSpeechSanitizer
+ (BOOL)stringContainsRedaction:(id)a3;
+ (id)_regularExpression;
+ (id)_stringReplacingRedactionsInString:(id)a3 withMarker:(id)a4;
+ (id)stringReplacingRedactionsWithBeepMarker:(id)a3;
@end

@implementation _LTTextToSpeechSanitizer

+ (id)stringReplacingRedactionsWithBeepMarker:(id)a3
{
  v3 = [a1 _stringReplacingRedactionsInString:a3 withMarker:@"_LT_Placeholder_##$#$#$"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_LT_Placeholder_##$#$#$" withString:@"\x1B\\mrk=play=beep.wav\\""];

  return v4;
}

+ (BOOL)stringContainsRedaction:(id)a3
{
  v4 = a3;
  v5 = [a1 _regularExpression];
  if (v5)
  {
    v6 = [v5 rangeOfFirstMatchInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = _LTOSLogTTS();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_LTTextToSpeechSanitizer stringContainsRedaction:v7];
    }

    v6 = 0;
  }

  return v6;
}

+ (id)_stringReplacingRedactionsInString:(id)a3 withMarker:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 rangeOfString:@"*"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = _LTOSLogTTS();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_23AAF5000, v8, OS_LOG_TYPE_INFO, "Not attempting to sanitize string because it has no asterisks", &v18, 2u);
    }

    v9 = v6;
  }

  else
  {
    v10 = [a1 _regularExpression];
    if (v10)
    {
      v11 = [v6 mutableCopy];
      v12 = [v10 replaceMatchesInString:v11 options:0 range:0 withTemplate:{objc_msgSend(v11, "length"), v7}];
      v13 = _LTOSLogTTS();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        v18 = 134218240;
        v19 = v12;
        v20 = 2048;
        v21 = [v6 length];
        _os_log_impl(&dword_23AAF5000, v14, OS_LOG_TYPE_INFO, "Replaced %zu censored words with beep marker in TTS string of length %zu", &v18, 0x16u);
      }

      v9 = [v11 copy];
    }

    else
    {
      v15 = _LTOSLogTTS();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [_LTTextToSpeechSanitizer _stringReplacingRedactionsInString:v15 withMarker:?];
      }

      v9 = v6;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_regularExpression
{
  if (_regularExpression_onceToken[0] != -1)
  {
    +[_LTTextToSpeechSanitizer _regularExpression];
  }

  v3 = _regularExpression_regularExpression;

  return v3;
}

@end