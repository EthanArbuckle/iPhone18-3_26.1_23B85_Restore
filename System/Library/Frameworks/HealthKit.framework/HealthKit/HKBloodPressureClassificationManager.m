@interface HKBloodPressureClassificationManager
- (BOOL)hypertensiveEscalationForClassificationGuidelines:(int64_t)a3 systolic:(id)a4 diastolic:(id)a5 age:(id)a6;
- (BOOL)isClassificationAgeGated;
- (HKBloodPressureClassificationManager)init;
- (HKBloodPressureClassificationManager)initWithHealthStore:(id)a3;
- (id)categoriesForClassificationGuidelines:(int64_t)a3 error:(id *)a4;
- (id)categoryDataForCategory:(id)a3 error:(id *)a4;
- (id)categoryForClassificationGuidelines:(int64_t)a3 systolic:(id)a4 diastolic:(id)a5 age:(id)a6;
- (int64_t)defaultClassificationGuidelinesForCountryCode:(id)a3;
- (void)classificationGuidelinesOnDate:(id)a3 completionHandler:(id)a4;
- (void)currentClassificationGuidelinesWithCompletionHandler:(id)a3;
- (void)didUpdateKeyValueDomain:(id)a3;
- (void)preferredClassificationGuidelinesWithCompletionHandler:(id)a3;
- (void)removePreferredClassificationGuidelinesWithCompletionHandler:(id)a3;
- (void)updatePreferredClassificationGuidelines:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation HKBloodPressureClassificationManager

- (HKBloodPressureClassificationManager)initWithHealthStore:(id)a3
{
  v3 = a3;
  v4 = sub_191C3B838(v3);

  return v4;
}

- (BOOL)isClassificationAgeGated
{
  v2 = self;
  sub_191C34EF8();
  if (v3)
  {

    return 1;
  }

  else
  {
    v5 = sub_191CC6B98();
    v6 = [v5 integerValue];

    return v6 < 18;
  }
}

- (int64_t)defaultClassificationGuidelinesForCountryCode:(id)a3
{
  sub_191CC67B8();
  v4 = self;
  v5 = _sSo36HKBloodPressureClassificationManagerC9HealthKitE07defaultC10Guidelines3forSo0abcH0VSS_tF_0();

  return v5;
}

- (void)preferredClassificationGuidelinesWithCompletionHandler:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v16 - v9;
  v11 = _Block_copy(a3);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_191CC6A38();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = sub_191C3D770;
  v14[6] = v12;
  v14[7] = ObjectType;
  v15 = self;
  sub_191C35DD0(0, 0, v10, &unk_191DD4620, v14);
}

- (void)currentClassificationGuidelinesWithCompletionHandler:(id)a3
{
  v5 = sub_191CC6148();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a3);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  sub_191CC6138();
  v14 = sub_191CC60A8();
  (*(v6 + 8))(v10, v5);
  aBlock[4] = sub_191C3D770;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C3640C;
  aBlock[3] = &block_descriptor_71;
  v15 = _Block_copy(aBlock);

  [(HKBloodPressureClassificationManager *)v13 classificationGuidelinesOnDate:v14 completionHandler:v15];

  _Block_release(v15);
}

- (void)classificationGuidelinesOnDate:(id)a3 completionHandler:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v28 - v9;
  v28 = &v28 - v9;
  v11 = sub_191CC6148();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v28 - v18;
  v20 = _Block_copy(a4);
  sub_191CC60F8();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = sub_191CC6A38();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  (*(v12 + 16))(v16, v19, v11);
  v23 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = self;
  (*(v12 + 32))(&v25[v23], v16, v11);
  v26 = &v25[v24];
  *v26 = sub_191C3CDC0;
  v26[1] = v21;
  *&v25[(v24 + 23) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
  v27 = self;

  sub_191C35DD0(0, 0, v28, &unk_191DD4618, v25);

  (*(v12 + 8))(v19, v11);
}

- (void)updatePreferredClassificationGuidelines:(int64_t)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_191C3D754;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  HKBloodPressureClassificationManager.updatePreferredClassificationGuidelines(_:completionHandler:)(a3, v6, v7);
  sub_191C3C4D4(v6);
}

- (void)removePreferredClassificationGuidelinesWithCompletionHandler:(id)a3
{
  ObjectType = swift_getObjectType();
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v16 - v9;
  v11 = _Block_copy(a3);
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_191C3CDB8;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_191CC6A38();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = v11;
  v14[6] = v12;
  v14[7] = ObjectType;
  v15 = self;
  sub_191C38EC8(0, 0, v10, &unk_191DD4610, v14);
}

- (id)categoriesForClassificationGuidelines:(int64_t)a3 error:(id *)a4
{
  sub_191C3C5B8(a3);
  type metadata accessor for HKBloodPressureClassificationCategory(0);
  v4 = sub_191CC68D8();

  return v4;
}

- (id)categoryForClassificationGuidelines:(int64_t)a3 systolic:(id)a4 diastolic:(id)a5 age:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = self;
  v14 = _sSo36HKBloodPressureClassificationManagerC9HealthKitE10__category3for8systolic9diastolic3ageSo0abC8CategoryaSo0abC10GuidelinesV_So10HKQuantityCANSo8NSNumberCSgtF_0(a3, v10, v11, a6);

  return v14;
}

- (id)categoryDataForCategory:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_191C3CA88(v5);

  return v7;
}

- (BOOL)hypertensiveEscalationForClassificationGuidelines:(int64_t)a3 systolic:(id)a4 diastolic:(id)a5 age:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = self;
  LOBYTE(a6) = HKBloodPressureClassificationManager.hypertensiveEscalation(for:systolic:diastolic:age:)(a3, v10, v11, a6);

  return a6 & 1;
}

- (HKBloodPressureClassificationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didUpdateKeyValueDomain:(id)a3
{
  v4 = a3;
  v5 = self;
  HKBloodPressureClassificationManager.keyValueDomain(didUpdate:)(v4);
}

@end