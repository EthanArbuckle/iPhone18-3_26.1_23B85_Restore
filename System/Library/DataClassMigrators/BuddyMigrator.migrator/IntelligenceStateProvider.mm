@interface IntelligenceStateProvider
- (BOOL)canEnableIntelligence;
- (BOOL)shouldShowForSummarization;
- (BOOL)wasOfferedIntelligence;
- (_TtC13BuddyMigrator25IntelligenceStateProvider)init;
- (id)stashableNotificationOnboardingDefaults;
- (void)applyStashedIsIntelligenceEnabled:(BOOL)a3;
- (void)applyStashedNotificationOnboardingDefaults:(id)a3;
- (void)isIntelligenceEnabledWithCompletionHandler:(id)a3;
@end

@implementation IntelligenceStateProvider

- (void)isIntelligenceEnabledWithCompletionHandler:(id)a3
{
  v5 = sub_ED0C(&qword_30030, "&w");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_193D0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D100;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D1C0;
  v14[5] = v13;
  v15 = self;
  sub_17E1C(0, 0, v9, &unk_1D110, v14);
}

- (void)applyStashedIsIntelligenceEnabled:(BOOL)a3
{
  sub_19300();
  v3 = sub_192F0();
  sub_192C0();
}

- (BOOL)wasOfferedIntelligence
{
  v2 = self;
  sub_D544();
  if (v3)
  {
    sub_19300();
    v4 = sub_192F0();
    sub_192E0();
  }

  v5 = sub_192D0();
  v6 = sub_192D0();

  return v5 != v6;
}

- (BOOL)shouldShowForSummarization
{
  v2 = objc_opt_self();

  return [v2 shouldShowExperience:0 forClient:0];
}

- (id)stashableNotificationOnboardingDefaults
{
  v2 = _s13BuddyMigrator25IntelligenceStateProviderC39stashableNotificationOnboardingDefaults10Foundation4DataVSgyF_0();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    isa = sub_191B0().super.isa;
    sub_EDCC(v5, v6);
    v4 = isa;
  }

  return v4;
}

- (void)applyStashedNotificationOnboardingDefaults:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_191C0();
  v7 = v6;

  _s13BuddyMigrator25IntelligenceStateProviderC42applyStashedNotificationOnboardingDefaultsyy10Foundation4DataVF_0();
  sub_ED78(v5, v7);
}

- (BOOL)canEnableIntelligence
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator25IntelligenceStateProvider_generativeModelProvider);
  v4 = v3[3];
  v5 = v3[4];
  sub_ECC8(v3, v4);
  v6 = *(v5 + 8);
  v7 = self;
  v8 = v6(v4, v5);
  sub_ED0C(&qword_2FF60, &qword_1D078);
  v9 = sub_191D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D050;
  (*(v10 + 104))(v13 + v12, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.notOptedIn(_:), v9);
  v14 = sub_D8E4(v13, v8);

  swift_setDeallocating();
  v15 = *(v13 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v16 = v14[2];

  return v16 == 0;
}

- (_TtC13BuddyMigrator25IntelligenceStateProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end