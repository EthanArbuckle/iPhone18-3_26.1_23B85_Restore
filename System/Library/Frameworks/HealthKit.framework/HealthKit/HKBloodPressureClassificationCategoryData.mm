@interface HKBloodPressureClassificationCategoryData
- (HKBloodPressureClassificationCategoryData)init;
- (HKBloodPressureClassificationCategoryData)initWithClassificationGuidelines:(int64_t)guidelines identifier:(id)identifier systolicRange:(id)range diastolicRange:(id)diastolicRange rangeRelationship:(int64_t)relationship;
- (NSString)description;
@end

@implementation HKBloodPressureClassificationCategoryData

- (HKBloodPressureClassificationCategoryData)initWithClassificationGuidelines:(int64_t)guidelines identifier:(id)identifier systolicRange:(id)range diastolicRange:(id)diastolicRange rangeRelationship:(int64_t)relationship
{
  identifierCopy = identifier;
  rangeCopy = range;
  diastolicRangeCopy = diastolicRange;
  v14 = sub_191BF7828(guidelines, identifierCopy, rangeCopy, diastolicRangeCopy, relationship);

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
  selfCopy = self;
  HKBloodPressureClassificationCategoryData.description.getter();

  v3 = sub_191CC6778();

  return v3;
}

@end