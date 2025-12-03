@interface AFPreferences
- (id)_ad_connectionModeFromEnabledState;
@end

@implementation AFPreferences

- (id)_ad_connectionModeFromEnabledState
{
  assistantIsEnabled = [(AFPreferences *)self assistantIsEnabled];
  dictationIsEnabled = [(AFPreferences *)self dictationIsEnabled];
  v5 = dictationIsEnabled ^ 1;
  if (((assistantIsEnabled ^ 1) & 1) != 0 || v5)
  {
    if ((assistantIsEnabled ^ 1 | dictationIsEnabled))
    {
      if ((assistantIsEnabled | v5))
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