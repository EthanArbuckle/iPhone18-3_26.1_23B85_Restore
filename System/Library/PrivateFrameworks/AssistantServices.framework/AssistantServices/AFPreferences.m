@interface AFPreferences
- (id)_ad_connectionModeFromEnabledState;
@end

@implementation AFPreferences

- (id)_ad_connectionModeFromEnabledState
{
  v3 = [(AFPreferences *)self assistantIsEnabled];
  v4 = [(AFPreferences *)self dictationIsEnabled];
  v5 = v4 ^ 1;
  if (((v3 ^ 1) & 1) != 0 || v5)
  {
    if ((v3 ^ 1 | v4))
    {
      if ((v3 | v5))
      {
        v7 = 0;
        goto LABEL_10;
      }

      v6 = &SAConnectionModeDictationValue;
    }

    else
    {
      v6 = &SAConnectionModeAssistantValue;
    }
  }

  else
  {
    v6 = &SAConnectionModeAssistantAndDictationValue;
  }

  v7 = *v6;
LABEL_10:

  return v7;
}

@end