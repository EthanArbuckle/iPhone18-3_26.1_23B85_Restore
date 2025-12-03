@interface HKBloodPressureClassificationEvaluator
+ (id)categoriesForClassificationGuidelines:(int64_t)guidelines error:(id *)error;
+ (id)categoryDataForCategory:(id)category error:(id *)error;
+ (id)categoryForClassificationGuidelines:(int64_t)guidelines systolic:(id)systolic diastolic:(id)diastolic;
- (HKBloodPressureClassificationEvaluator)init;
@end

@implementation HKBloodPressureClassificationEvaluator

+ (id)categoryForClassificationGuidelines:(int64_t)guidelines systolic:(id)systolic diastolic:(id)diastolic
{
  swift_getObjCClassMetadata();
  systolicCopy = systolic;
  diastolicCopy = diastolic;
  v10 = static HKBloodPressureClassificationEvaluator.__category(for:systolic:diastolic:)(guidelines, systolicCopy, diastolicCopy);

  return v10;
}

+ (id)categoriesForClassificationGuidelines:(int64_t)guidelines error:(id *)error
{
  v5 = HKBloodPressureClassificationCategoryForGuidelines(guidelines);
  if (!v5)
  {
    v6 = sub_191C86F64();
    swift_willThrow();
    if (error)
    {
      v7 = sub_191CC5FB8();

      v8 = v7;
      *error = v7;
    }

    else
    {
    }

    v5 = 0;
  }

  return v5;
}

+ (id)categoryDataForCategory:(id)category error:(id *)error
{
  v5 = qword_1EADCA150;
  categoryCopy = category;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = off_1EADCB9B8;
  if (*(off_1EADCB9B8 + 2) && (v8 = sub_191C402C0(categoryCopy), (v9 & 1) != 0))
  {
    v10 = *(v7[7] + 8 * v8);

    v11 = v10;
  }

  else
  {
    v12 = sub_191C40A18();
    swift_willThrow();

    if (error)
    {
      v13 = sub_191CC5FB8();

      v14 = v13;
      v11 = 0;
      *error = v13;
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