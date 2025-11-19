@interface HKBloodPressureClassificationCategoryData
- (HKBloodPressureClassificationCategoryData)init;
- (HKBloodPressureClassificationCategoryData)initWithClassificationGuidelines:(int64_t)a3 identifier:(id)a4 systolicRange:(id)a5 diastolicRange:(id)a6 rangeRelationship:(int64_t)a7;
- (NSString)description;
@end

@implementation HKBloodPressureClassificationCategoryData

- (HKBloodPressureClassificationCategoryData)initWithClassificationGuidelines:(int64_t)a3 identifier:(id)a4 systolicRange:(id)a5 diastolicRange:(id)a6 rangeRelationship:(int64_t)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_191BF7828(a3, v11, v12, v13, a7);

  return v14;
}

- (HKBloodPressureClassificationCategoryData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  HKBloodPressureClassificationCategoryData.description.getter();

  v3 = sub_191CC6778();

  return v3;
}

@end