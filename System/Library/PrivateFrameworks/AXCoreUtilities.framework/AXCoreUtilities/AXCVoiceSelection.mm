@interface AXCVoiceSelection
- (AXCVoiceSelection)init;
- (AXCVoiceSelection)initWithVoiceId:(id)a3 rate:(id)a4 pitch:(id)a5 volume:(id)a6 voiceSettings:(id)a7 effects:(id)a8;
- (AXCVoiceSelection)initWithVoiceId:(id)a3 rate:(id)a4 pitch:(id)a5 volume:(id)a6 voiceSettings:(id)a7 effects:(id)a8 boundLanguage:(id)a9;
- (NSArray)effects;
- (NSDictionary)voiceSettings;
- (NSNumber)pitch;
- (NSNumber)rate;
- (NSNumber)volume;
- (void)encodeWithCoder:(id)a3;
- (void)setEffects:(id)a3;
- (void)setVoiceSettings:(id)a3;
@end

@implementation AXCVoiceSelection

- (AXCVoiceSelection)initWithVoiceId:(id)a3 rate:(id)a4 pitch:(id)a5 volume:(id)a6 voiceSettings:(id)a7 effects:(id)a8 boundLanguage:(id)a9
{
  v10 = a7;
  if (a3)
  {
    v14 = sub_19166B748();
    v16 = v15;
    v17 = a9;
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = 0;
  v16 = 0;
  v17 = a9;
  if (a7)
  {
LABEL_3:
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    v10 = sub_19166B678();
  }

LABEL_4:
  if (a8)
  {
    type metadata accessor for AXAudioEffectConfiguration(0);
    a8 = sub_19166BA08();
  }

  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = v17;
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

  v26 = sub_19159F740(v14, v16, v18, v19, v20, v10, a8, v23, v25);

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

- (void)setVoiceSettings:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    v3 = sub_19166B678();
  }

  v5 = OBJC_IVAR___AXCVoiceSelection_voiceSettings;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
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

- (void)setEffects:(id)a3
{
  v3 = a3;
  if (a3)
  {
    type metadata accessor for AXAudioEffectConfiguration(0);
    v3 = sub_19166BA08();
  }

  v5 = OBJC_IVAR___AXCVoiceSelection_effects;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
}

- (AXCVoiceSelection)initWithVoiceId:(id)a3 rate:(id)a4 pitch:(id)a5 volume:(id)a6 voiceSettings:(id)a7 effects:(id)a8
{
  v9 = a7;
  if (a3)
  {
    v13 = sub_19166B748();
    v15 = v14;
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  v15 = 0;
  if (a7)
  {
LABEL_3:
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    v9 = sub_19166B678();
  }

LABEL_4:
  if (a8)
  {
    type metadata accessor for AXAudioEffectConfiguration(0);
    a8 = sub_19166BA08();
  }

  return AXCVoiceSelection.init(voiceId:rate:pitch:volume:voiceSettings:effects:)(v13, v15, a4, a5, a6, v9, a8);
}

- (AXCVoiceSelection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  AXCVoiceSelection.encode(with:)(v4);
}

@end