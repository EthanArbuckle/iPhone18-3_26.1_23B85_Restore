@interface SNValidateModel
+ (BOOL)ensureFeatureWithDescription:(id)description isOptional:(BOOL)optional error:(id *)error;
+ (BOOL)ensureFeatureWithDescription:(id)description isOptional:(BOOL)optional isFreelyShapedMultiArrayWithDataType:(int64_t)type error:(id *)error;
+ (BOOL)ensureModelDescription:(id)description hasInputFeatureNames:(id)names hasOutputFeatureNames:(id)featureNames error:(id *)error;
+ (BOOL)ensureMultiArrayShapeConstraint:(id)constraint hasDimensionSizeRanges:(id)ranges error:(id *)error;
+ (BOOL)ensureMultiArrayShapeConstraint:(id)constraint hasShapeOptions:(id)options error:(id *)error;
@end

@implementation SNValidateModel

+ (BOOL)ensureFeatureWithDescription:(id)description isOptional:(BOOL)optional error:(id *)error
{
  descriptionCopy = description;
  sub_1C99979DC(descriptionCopy, optional);

  return 1;
}

+ (BOOL)ensureMultiArrayShapeConstraint:(id)constraint hasDimensionSizeRanges:(id)ranges error:(id *)error
{
  sub_1C97BD318(0, &qword_1EC3C5690);
  v6 = sub_1C9A92798();
  constraintCopy = constraint;
  sub_1C9997B64(constraintCopy, v6);

  return 1;
}

+ (BOOL)ensureMultiArrayShapeConstraint:(id)constraint hasShapeOptions:(id)options error:(id *)error
{
  constraintCopy = constraint;
  optionsCopy = options;
  sub_1C9998000(constraintCopy, optionsCopy);

  return 1;
}

+ (BOOL)ensureFeatureWithDescription:(id)description isOptional:(BOOL)optional isFreelyShapedMultiArrayWithDataType:(int64_t)type error:(id *)error
{
  descriptionCopy = description;
  sub_1C9998904(descriptionCopy, optional, type);

  return 1;
}

+ (BOOL)ensureModelDescription:(id)description hasInputFeatureNames:(id)names hasOutputFeatureNames:(id)featureNames error:(id *)error
{
  v7 = sub_1C9A92798();
  v8 = sub_1C9A92798();
  descriptionCopy = description;
  sub_1C9998A18(descriptionCopy, v7, v8);

  return 1;
}

@end