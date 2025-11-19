@interface VoiceOverDelayUntilSpeakController
- (VoiceOverDelayUntilSpeakController)initWithCoder:(id)a3;
- (VoiceOverDelayUntilSpeakController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)numericalPreferenceValue;
- (id)localizedFooterText;
- (id)localizedTitle;
- (void)setNumericalPreferenceValueFromUser:(double)a3;
@end

@implementation VoiceOverDelayUntilSpeakController

- (double)numericalPreferenceValue
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 voiceOverDelayUntilSpeakUnderTouch];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)a3
{
  v4 = [objc_opt_self() sharedInstance];
  [v4 setVoiceOverDelayUntilSpeakUnderTouch:a3];
}

- (id)localizedFooterText
{
  v2 = sub_19BFB4();
  v3 = sub_19BFB4();
  v4 = settingsLocString(v2, v3);

  if (v4)
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)localizedTitle
{
  v2 = sub_19BFB4();
  v3 = sub_19BFB4();
  v4 = settingsLocString(v2, v3);

  if (v4)
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (VoiceOverDelayUntilSpeakController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_19BFE4();
    v8 = a4;
    a3 = sub_19BFB4();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(VoiceOverDelayUntilSpeakController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (VoiceOverDelayUntilSpeakController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(VoiceOverDelayUntilSpeakController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end