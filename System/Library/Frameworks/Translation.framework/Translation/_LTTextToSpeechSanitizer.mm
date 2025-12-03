@interface _LTTextToSpeechSanitizer
+ (BOOL)stringContainsRedaction:(id)redaction;
+ (id)_regularExpression;
+ (id)_stringReplacingRedactionsInString:(id)string withMarker:(id)marker;
+ (id)stringReplacingRedactionsWithBeepMarker:(id)marker;
@end

@implementation _LTTextToSpeechSanitizer

+ (id)stringReplacingRedactionsWithBeepMarker:(id)marker
{
  v3 = [self _stringReplacingRedactionsInString:marker withMarker:@"_LT_Placeholder_##$#$#$"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_LT_Placeholder_##$#$#$" withString:@"\x1B\\mrk=play=beep.wav\\""];

  return v4;
}

+ (BOOL)stringContainsRedaction:(id)redaction
{
  redactionCopy = redaction;
  _regularExpression = [self _regularExpression];
  if (_regularExpression)
  {
    v6 = [_regularExpression rangeOfFirstMatchInString:redactionCopy options:0 range:{0, objc_msgSend(redactionCopy, "length")}] != 0x7FFFFFFFFFFFFFFFLL;
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

+ (id)_stringReplacingRedactionsInString:(id)string withMarker:(id)marker
{
  v22 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  markerCopy = marker;
  if ([stringCopy rangeOfString:@"*"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = _LTOSLogTTS();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_23AAF5000, v8, OS_LOG_TYPE_INFO, "Not attempting to sanitize string because it has no asterisks", &v18, 2u);
    }

    v9 = stringCopy;
  }

  else
  {
    _regularExpression = [self _regularExpression];
    if (_regularExpression)
    {
      v11 = [stringCopy mutableCopy];
      v12 = [_regularExpression replaceMatchesInString:v11 options:0 range:0 withTemplate:{objc_msgSend(v11, "length"), markerCopy}];
      v13 = _LTOSLogTTS();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        v18 = 134218240;
        v19 = v12;
        v20 = 2048;
        v21 = [stringCopy length];
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

      v9 = stringCopy;
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