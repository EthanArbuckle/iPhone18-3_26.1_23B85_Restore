@interface VoiceOverDelayUntilSpeakController
- (VoiceOverDelayUntilSpeakController)initWithCoder:(id)coder;
- (VoiceOverDelayUntilSpeakController)initWithNibName:(id)name bundle:(id)bundle;
- (double)numericalPreferenceValue;
- (id)localizedFooterText;
- (id)localizedTitle;
- (void)setNumericalPreferenceValueFromUser:(double)user;
@end

@implementation VoiceOverDelayUntilSpeakController

- (double)numericalPreferenceValue
{
  sharedInstance = [objc_opt_self() sharedInstance];
  [sharedInstance voiceOverDelayUntilSpeakUnderTouch];
  v4 = v3;

  return v4;
}

- (void)setNumericalPreferenceValueFromUser:(double)user
{
  sharedInstance = [objc_opt_self() sharedInstance];
  [sharedInstance setVoiceOverDelayUntilSpeakUnderTouch:user];
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

- (VoiceOverDelayUntilSpeakController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_19BFE4();
    bundleCopy = bundle;
    name = sub_19BFB4();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(VoiceOverDelayUntilSpeakController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (VoiceOverDelayUntilSpeakController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(VoiceOverDelayUntilSpeakController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end