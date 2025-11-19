@interface AutoPlayVideoSettingsManager
- (BOOL)isAutoPlayAllowed;
- (void)dealloc;
- (void)restoreFullScreenAudioSettings;
- (void)saveFullScreenAudioSettings;
- (void)updateAutoPlayVideoSettings;
@end

@implementation AutoPlayVideoSettingsManager

- (void)dealloc
{
  v3 = self + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkObservation;
  swift_beginAccess();
  if (*(v3 + 3))
  {
    sub_1E1300B24(v3, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v6 = *(v5 + 8);
    v7 = self;
    v6(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = self;
  }

  v9 = type metadata accessor for AutoPlayVideoSettingsManager();
  v13.receiver = self;
  v13.super_class = v9;
  [(AutoPlayVideoSettingsManager *)&v13 dealloc];
}

- (void)updateAutoPlayVideoSettings
{
  v2 = self;
  sub_1E19CC304();
}

- (BOOL)isAutoPlayAllowed
{
  v2 = self;
  v3 = sub_1E19CB738();

  return v3 & 1;
}

- (void)restoreFullScreenAudioSettings
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_1E1AEFE6C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v13 = [objc_opt_self() standardUserDefaults];
  sub_1E138085C(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1E1308058(v2, &unk_1ECEBB780);
    v14 = sub_1E1AF5DBC();
    [v13 setBool:0 forKey:v14];
  }

  else
  {
    (*(v4 + 32))(v12, v2, v3);
    sub_1E1AEFDAC();
    sub_1E1AEFE5C();
    sub_1E1302BFC(&qword_1EE1FADC0, MEMORY[0x1E6969530]);
    v15 = sub_1E1AF5D7C();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v17 = sub_1E1AF5DBC();
    [v13 setBool:(v15 & 1) == 0 forKey:v17];

    v16(v9, v3);
    v16(v12, v3);
  }
}

- (void)saveFullScreenAudioSettings
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = [objc_opt_self() standardUserDefaults];
  if (sub_1E1380C5C())
  {
    sub_1E1AEFE5C();
    v4 = sub_1E1AEFE6C();
    (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  }

  else
  {
    v5 = sub_1E1AEFE6C();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  }

  sub_1E13809B4(v2);
}

@end