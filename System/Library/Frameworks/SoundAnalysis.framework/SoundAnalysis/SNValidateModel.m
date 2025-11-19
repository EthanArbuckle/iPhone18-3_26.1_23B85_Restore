@interface SNValidateModel
+ (BOOL)ensureFeatureWithDescription:(id)a3 isOptional:(BOOL)a4 error:(id *)a5;
+ (BOOL)ensureFeatureWithDescription:(id)a3 isOptional:(BOOL)a4 isFreelyShapedMultiArrayWithDataType:(int64_t)a5 error:(id *)a6;
+ (BOOL)ensureModelDescription:(id)a3 hasInputFeatureNames:(id)a4 hasOutputFeatureNames:(id)a5 error:(id *)a6;
+ (BOOL)ensureMultiArrayShapeConstraint:(id)a3 hasDimensionSizeRanges:(id)a4 error:(id *)a5;
+ (BOOL)ensureMultiArrayShapeConstraint:(id)a3 hasShapeOptions:(id)a4 error:(id *)a5;
@end

@implementation SNValidateModel

+ (BOOL)ensureFeatureWithDescription:(id)a3 isOptional:(BOOL)a4 error:(id *)a5
{
  v6 = a3;
  sub_1C99979DC(v6, a4);

  return 1;
}

+ (BOOL)ensureMultiArrayShapeConstraint:(id)a3 hasDimensionSizeRanges:(id)a4 error:(id *)a5
{
  sub_1C97BD318(0, &qword_1EC3C5690);
  v6 = sub_1C9A92798();
  v7 = a3;
  sub_1C9997B64(v7, v6);

  return 1;
}

+ (BOOL)ensureMultiArrayShapeConstraint:(id)a3 hasShapeOptions:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  sub_1C9998000(v6, v7);

  return 1;
}

+ (BOOL)ensureFeatureWithDescription:(id)a3 isOptional:(BOOL)a4 isFreelyShapedMultiArrayWithDataType:(int64_t)a5 error:(id *)a6
{
  v8 = a3;
  sub_1C9998904(v8, a4, a5);

  return 1;
}

+ (BOOL)ensureModelDescription:(id)a3 hasInputFeatureNames:(id)a4 hasOutputFeatureNames:(id)a5 error:(id *)a6
{
  v7 = sub_1C9A92798();
  v8 = sub_1C9A92798();
  v9 = a3;
  sub_1C9998A18(v9, v7, v8);

  return 1;
}

@end