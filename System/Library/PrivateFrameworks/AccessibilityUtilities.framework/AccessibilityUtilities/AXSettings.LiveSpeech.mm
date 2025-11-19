@interface AXSettings.LiveSpeech
- (id)liveSpeechVoiceIdentifierForKeyboardID:(id)a3;
@end

@implementation AXSettings.LiveSpeech

- (id)liveSpeechVoiceIdentifierForKeyboardID:(id)a3
{
  v4 = sub_18B2C9894();
  v6 = v5;
  v7 = self;
  sub_18B272764(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_18B2C9864();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end