@interface HKMCPregnancyDatesFactory
+ (BOOL)isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:(id)a3;
+ (BOOL)isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:(id)a3 pregnancyEndDate:(id)a4;
+ (id)calculatePhysiologicalWashoutFromPregnancySample:(id)a3;
+ (id)calculatePregnancyStartForEstimatedDueDate:(id)a3;
+ (id)gestationalAgeInComponentsOnDate:(id)a3 pregnancyStartDate:(id)a4 startTimeZoneName:(id)a5;
- (HKMCPregnancyDatesFactory)init;
- (HKMCPregnancyDatesFactory)initWithPregnancySample:(id)a3 state:(int64_t)a4;
@end

@implementation HKMCPregnancyDatesFactory

- (HKMCPregnancyDatesFactory)initWithPregnancySample:(id)a3 state:(int64_t)a4
{
  *(&self->super.isa + OBJC_IVAR___HKMCPregnancyDatesFactory_pregnancySample) = a3;
  *(&self->super.isa + OBJC_IVAR___HKMCPregnancyDatesFactory_state) = a4;
  v6.receiver = self;
  v6.super_class = HKMCPregnancyDatesFactory;
  v4 = a3;
  return [(HKMCPregnancyDatesFactory *)&v6 init];
}

+ (id)calculatePregnancyStartForEstimatedDueDate:(id)a3
{
  v3 = sub_191CC6148();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  sub_191CC60F8();
  sub_191CC6098();
  v13 = *(v4 + 8);
  v13(v9, v3);
  v14 = sub_191CC60A8();
  v13(v12, v3);

  return v14;
}

+ (id)gestationalAgeInComponentsOnDate:(id)a3 pregnancyStartDate:(id)a4 startTimeZoneName:(id)a5
{
  v5 = sub_191CC6148();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v29 - v13;
  sub_191C1C2CC(0, &qword_1EADCADC0, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v29 - v18;
  sub_191CC60F8();
  sub_191CC60F8();
  v20 = sub_191CC67B8();
  static HKMCPregnancyDatesFactory.gestationalAgeInComponents(on:pregnancyStart:startTimeZoneName:)(v14, v11, v20, v21, v19);

  v22 = *(v6 + 8);
  v22(v11, v5);
  v22(v14, v5);
  v23 = sub_191CC5DC8();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v19, 1, v23);
  v26 = 0;
  if (v25 != 1)
  {
    v27 = sub_191CC5D48();
    (*(v24 + 8))(v19, v23);
    v26 = v27;
  }

  return v26;
}

+ (BOOL)isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:(id)a3
{
  v4 = sub_191CC6148();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  sub_191CC60F8();
  v14 = sub_191CC60A8();
  sub_191CC6138();
  v15 = sub_191CC60A8();
  v16 = *(v5 + 8);
  v16(v10, v4);
  LOBYTE(a1) = [a1 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:v14 pregnancyEndDate:v15];

  v16(v13, v4);
  return a1;
}

+ (BOOL)isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:(id)a3 pregnancyEndDate:(id)a4
{
  v4 = sub_191CC6148();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - v12;
  sub_191CC60F8();
  sub_191CC60F8();
  v14 = _sSo25HKMCPregnancyDatesFactoryC9HealthKitE42isPregnancyDurationPhysiologicallyPossible03forG5Start12pregnancyEndSb10Foundation4DateV_AItFZ_0(v13, v10);
  v15 = *(v5 + 8);
  v15(v10, v4);
  v15(v13, v4);
  return v14;
}

+ (id)calculatePhysiologicalWashoutFromPregnancySample:(id)a3
{
  sub_191C1C2CC(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v16 - v7;
  v9 = a3;
  static HKMCPregnancyDatesFactory.calculatePhysiologicalWashout(fromPregnancySample:)(v9, v8);

  v10 = sub_191CC6148();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_191CC60A8();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

- (HKMCPregnancyDatesFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end