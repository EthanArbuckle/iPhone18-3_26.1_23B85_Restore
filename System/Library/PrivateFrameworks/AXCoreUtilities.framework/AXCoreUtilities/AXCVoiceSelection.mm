@interface AXCVoiceSelection
- (AXCVoiceSelection)init;
- (AXCVoiceSelection)initWithVoiceId:(id)id rate:(id)rate pitch:(id)pitch volume:(id)volume voiceSettings:(id)settings effects:(id)effects;
- (AXCVoiceSelection)initWithVoiceId:(id)id rate:(id)rate pitch:(id)pitch volume:(id)volume voiceSettings:(id)settings effects:(id)effects boundLanguage:(id)language;
- (NSArray)effects;
- (NSDictionary)voiceSettings;
- (NSNumber)pitch;
- (NSNumber)rate;
- (NSNumber)volume;
- (void)encodeWithCoder:(id)coder;
- (void)setEffects:(id)effects;
- (void)setVoiceSettings:(id)settings;
@end

@implementation AXCVoiceSelection

- (AXCVoiceSelection)initWithVoiceId:(id)id rate:(id)rate pitch:(id)pitch volume:(id)volume voiceSettings:(id)settings effects:(id)effects boundLanguage:(id)language
{
  settingsCopy = settings;
  if (id)
  {
    v14 = sub_19166B748();
    v16 = v15;
    languageCopy2 = language;
    if (!settingsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  v16 = 0;
  languageCopy2 = language;
  if (settings)
  {
LABEL_3:
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    settingsCopy = sub_19166B678();
  }

LABEL_4:
  if (effects)
  {
    type metadata accessor for AXAudioEffectConfiguration(0);
    effects = sub_19166BA08();
  }

  rateCopy = rate;
  pitchCopy = pitch;
  volumeCopy = volume;
  v21 = languageCopy2;
  if (v21)
  {
    v22 = v21;
    v23 = sub_19166B748();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = sub_19159F740(v14, v16, rateCopy, pitchCopy, volumeCopy, settingsCopy, effects, v23, v25);

  return v26;
}

- (NSNumber)rate
{
  v3 = OBJC_IVAR___AXCVoiceSelection_rate;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)volume
{
  v3 = OBJC_IVAR___AXCVoiceSelection_volume;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)pitch
{
  v3 = OBJC_IVAR___AXCVoiceSelection_pitch;
  swift_beginAccess();
  return *(self + v3);
}

- (NSDictionary)voiceSettings
{
  v3 = OBJC_IVAR___AXCVoiceSelection_voiceSettings;
  swift_beginAccess();
  if (*(self + v3))
  {
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);

    v4 = sub_19166B668();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setVoiceSettings:(id)settings
{
  settingsCopy = settings;
  if (settings)
  {
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    settingsCopy = sub_19166B678();
  }

  v5 = OBJC_IVAR___AXCVoiceSelection_voiceSettings;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = settingsCopy;
}

- (NSArray)effects
{
  v3 = OBJC_IVAR___AXCVoiceSelection_effects;
  swift_beginAccess();
  if (*(self + v3))
  {
    type metadata accessor for AXAudioEffectConfiguration(0);

    v4 = sub_19166B9F8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEffects:(id)effects
{
  effectsCopy = effects;
  if (effects)
  {
    type metadata accessor for AXAudioEffectConfiguration(0);
    effectsCopy = sub_19166BA08();
  }

  v5 = OBJC_IVAR___AXCVoiceSelection_effects;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = effectsCopy;
}

- (AXCVoiceSelection)initWithVoiceId:(id)id rate:(id)rate pitch:(id)pitch volume:(id)volume voiceSettings:(id)settings effects:(id)effects
{
  settingsCopy = settings;
  if (id)
  {
    v13 = sub_19166B748();
    v15 = v14;
    if (!settingsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  v15 = 0;
  if (settings)
  {
LABEL_3:
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    settingsCopy = sub_19166B678();
  }

LABEL_4:
  if (effects)
  {
    type metadata accessor for AXAudioEffectConfiguration(0);
    effects = sub_19166BA08();
  }

  return AXCVoiceSelection.init(voiceId:rate:pitch:volume:voiceSettings:effects:)(v13, v15, rate, pitch, volume, settingsCopy, effects);
}

- (AXCVoiceSelection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AXCVoiceSelection.encode(with:)(coderCopy);
}

@end