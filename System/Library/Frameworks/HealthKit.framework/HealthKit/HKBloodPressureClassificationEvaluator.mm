@interface HKBloodPressureClassificationEvaluator
+ (id)categoriesForClassificationGuidelines:(int64_t)a3 error:(id *)a4;
+ (id)categoryDataForCategory:(id)a3 error:(id *)a4;
+ (id)categoryForClassificationGuidelines:(int64_t)a3 systolic:(id)a4 diastolic:(id)a5;
- (HKBloodPressureClassificationEvaluator)init;
@end

@implementation HKBloodPressureClassificationEvaluator

+ (id)categoryForClassificationGuidelines:(int64_t)a3 systolic:(id)a4 diastolic:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a4;
  v9 = a5;
  v10 = static HKBloodPressureClassificationEvaluator.__category(for:systolic:diastolic:)(a3, v8, v9);

  return v10;
}

+ (id)categoriesForClassificationGuidelines:(int64_t)a3 error:(id *)a4
{
  v5 = HKBloodPressureClassificationCategoryForGuidelines(a3);
  if (!v5)
  {
    v6 = sub_191C86F64();
    swift_willThrow();
    if (a4)
    {
      v7 = sub_191CC5FB8();

      v8 = v7;
      *a4 = v7;
    }

    else
    {
    }

    v5 = 0;
  }

  return v5;
}

+ (id)categoryDataForCategory:(id)a3 error:(id *)a4
{
  v5 = qword_1EADCA150;
  v6 = a3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = off_1EADCB9B8;
  if (*(off_1EADCB9B8 + 2) && (v8 = sub_191C402C0(v6), (v9 & 1) != 0))
  {
    v10 = *(v7[7] + 8 * v8);

    v11 = v10;
  }

  else
  {
    v12 = sub_191C40A18();
    swift_willThrow();

    if (a4)
    {
      v13 = sub_191CC5FB8();

      v14 = v13;
      v11 = 0;
      *a4 = v13;
    }

    else
    {

      v11 = 0;
    }
  }

  return v11;
}

- (HKBloodPressureClassificationEvaluator)init
{
  v3.receiver = self;
  v3.super_class = HKBloodPressureClassificationEvaluator;
  return [(HKBloodPressureClassificationEvaluator *)&v3 init];
}

@end