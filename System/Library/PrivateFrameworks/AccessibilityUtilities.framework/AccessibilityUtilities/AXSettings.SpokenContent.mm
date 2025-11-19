@interface AXSettings.SpokenContent
- (float)quickSpeakSpeakingRate;
- (float)quickSpeakSpeakingRateForLanguage:(id)a3;
- (void)setForLanguage:(NSString *)a3 voiceSelection:(AXCVoiceSelection *)a4 completionHandler:(id)a5;
- (void)setQuickSpeakSpeakingRate:(float)a3;
- (void)setQuickSpeakSpeakingRate:(float)a3 forLanguage:(id)a4;
- (void)setWithVoiceId:(NSString *)a3 forLanguage:(NSString *)a4 completionHandler:(id)a5;
- (void)speechVoiceIdentifierForLanguage:(NSString *)a3 exists:(BOOL *)a4 completionHandler:(id)a5;
- (void)voiceSelectionForLanguage:(NSString *)a3 completionHandler:(id)a4;
@end

@implementation AXSettings.SpokenContent

- (void)speechVoiceIdentifierForLanguage:(NSString *)a3 exists:(BOOL *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_18B2C9A74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_18B2F9590;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_18B2F9598;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_18B29CF64(0, 0, v11, &unk_18B2F95A0, v16);
}

- (void)voiceSelectionForLanguage:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_18B2C9A74();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_18B2F9570;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_18B2F9578;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_18B29CF64(0, 0, v9, &unk_18B2F9580, v14);
}

- (void)setForLanguage:(NSString *)a3 voiceSelection:(AXCVoiceSelection *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_18B2C9A74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_18B2F9550;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_18B2F9558;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_18B29CF64(0, 0, v11, &unk_18B2F9560, v16);
}

- (void)setWithVoiceId:(NSString *)a3 forLanguage:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B64E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_18B2C9A74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_18B2F9530;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_18B2F9F70;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_18B29CF64(0, 0, v11, &unk_18B2F9540, v16);
}

- (void)setQuickSpeakSpeakingRate:(float)a3 forLanguage:(id)a4
{
  if (a4)
  {
    v6 = sub_18B2C9894();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = self;
  *(v9 + 24) = v6;
  *(v9 + 32) = v8;
  *(v9 + 40) = a3;
  v10 = self;
  sub_18B2C95A4();
}

- (float)quickSpeakSpeakingRateForLanguage:(id)a3
{
  if (a3)
  {
    v4 = sub_18B2C9894();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_18B22AE50(v4, v6);

  return v8;
}

- (float)quickSpeakSpeakingRate
{
  v2 = self;
  v3 = sub_18B22AE50(0, 0);

  return v3;
}

- (void)setQuickSpeakSpeakingRate:(float)a3
{
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = self;
  *(v5 + 40) = a3;
  v6 = self;
  sub_18B2C95A4();
}

@end