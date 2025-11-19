@interface NTKGladiusLightSpillCoordinator
- (_TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator)init;
- (_TtP29NTKGladiusFaceBundleCompanion45NTKGladiusLightSpillCoordinatorUpdateDelegate_)updateDelegate;
- (void)handleDialPaletteChangeWithHourStartColors:(id)a3 minuteStartColor:(id)a4 minuteEndColor:(id)a5 hourEndColor:(id)a6 hourTextColor:(id)a7;
- (void)lowFrequencyLightingTimerFired;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)startSecondHandLightingAnimationAtDate:(id)a3;
- (void)stopSecondHandLightingAnimation;
- (void)updateLightingOverride;
@end

@implementation NTKGladiusLightSpillCoordinator

- (_TtP29NTKGladiusFaceBundleCompanion45NTKGladiusLightSpillCoordinatorUpdateDelegate_)updateDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)handleDialPaletteChangeWithHourStartColors:(id)a3 minuteStartColor:(id)a4 minuteEndColor:(id)a5 hourEndColor:(id)a6 hourTextColor:(id)a7
{
  sub_11B60(0, &qword_29F98, UIColor_ptr);
  v12 = sub_129E0();
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = self;
  sub_D3E4(v12, v13, v14, v15, v16);
}

- (void)startSecondHandLightingAnimationAtDate:(id)a3
{
  v4 = sub_12920();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12910();
  v9 = self;
  sub_D734(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)lowFrequencyLightingTimerFired
{
  v2 = self;
  sub_E6E8();
}

- (void)stopSecondHandLightingAnimation
{
  v2 = self;
  sub_EAC0();
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7 = sub_AABC(&unk_29F50, &qword_16DC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v25[-v12];
  v14 = sub_AABC(&qword_29D88, qword_16D70);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v25[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v25[-v19];
  if (a3)
  {
    sub_12910();
    v21 = sub_12920();
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }

  else
  {
    v22 = sub_12920();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  }

  v23 = OBJC_IVAR____TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator_dateOverride;
  swift_beginAccess();
  sub_BB0C(self + v23, v11, &unk_29F50, &qword_16DC0);
  sub_BB0C(v20, v18, &qword_29D88, qword_16D70);
  v24 = self;
  sub_BE14(v11, v18, v13, a4);
  sub_BB74(v20, &qword_29D88, qword_16D70);
  swift_beginAccess();
  sub_BA9C(v13, self + v23);
  swift_endAccess();
}

- (void)updateLightingOverride
{
  v2 = self;
  sub_F044();
}

- (_TtC29NTKGladiusFaceBundleCompanion31NTKGladiusLightSpillCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end