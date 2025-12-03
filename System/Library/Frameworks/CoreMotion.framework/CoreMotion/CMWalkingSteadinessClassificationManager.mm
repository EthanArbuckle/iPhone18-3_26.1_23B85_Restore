@interface CMWalkingSteadinessClassificationManager
+ (BOOL)classificationForScore:(double)score classification:(int64_t *)classification;
+ (BOOL)isWalkingSteadinessAvailable;
+ (double)maximumScoreForClassification:(int64_t)classification;
+ (double)minimumScoreForClassification:(int64_t)classification;
+ (id)classificationDataFromStruct:(CLWalkingSteadinessClassificationData *)struct;
+ (int)mapClassificationTypeFromFrameworkToClassifier:(int64_t)classifier;
@end

@implementation CMWalkingSteadinessClassificationManager

+ (BOOL)isWalkingSteadinessAvailable
{
  if (sub_19B4215D8())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    sub_19B421798();
    return (sub_19B421620() >> 54) & 1;
  }

  return v2;
}

+ (BOOL)classificationForScore:(double)score classification:(int64_t *)classification
{
  v6 = sub_19B6B3F30(v12, score);
  if (v6)
  {
    v11[0] = v12[0];
    v11[1] = v12[1];
    v7 = objc_msgSend_classificationDataFromStruct_(CMWalkingSteadinessClassificationManager, v5, v11);
    *classification = objc_msgSend_classificationType(v7, v8, v9);
  }

  return v6;
}

+ (double)minimumScoreForClassification:(int64_t)classification
{
  LODWORD(v4) = objc_msgSend_mapClassificationTypeFromFrameworkToClassifier_(CMWalkingSteadinessClassificationManager, a2, classification) - 1;
  if (v4 >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v4;
  }

  v5 = (&unk_19B7BBD20 + 32 * v4);
  v6 = v5[1];
  v11[0] = *v5;
  v11[1] = v6;
  v7 = objc_msgSend_classificationDataFromStruct_(CMWalkingSteadinessClassificationManager, v3, v11);
  objc_msgSend_lowerBound(v7, v8, v9);
  return result;
}

+ (double)maximumScoreForClassification:(int64_t)classification
{
  LODWORD(v4) = objc_msgSend_mapClassificationTypeFromFrameworkToClassifier_(CMWalkingSteadinessClassificationManager, a2, classification) - 1;
  if (v4 >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v4;
  }

  v5 = (&unk_19B7BBD20 + 32 * v4);
  v6 = v5[1];
  v11[0] = *v5;
  v11[1] = v6;
  v7 = objc_msgSend_classificationDataFromStruct_(CMWalkingSteadinessClassificationManager, v3, v11);
  objc_msgSend_upperBound(v7, v8, v9);
  return result;
}

+ (id)classificationDataFromStruct:(CLWalkingSteadinessClassificationData *)struct
{
  var0 = struct->var0;
  var1 = struct->var1;
  var3 = struct->var3;
  v6 = 1;
  if (var3 == 2)
  {
    v6 = 2;
  }

  if (var3 == 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  v8 = [CMWalkingSteadinessClassificationData alloc];
  v10 = objc_msgSend_initWithLowerBound_upperBound_classificationType_(v8, v9, v7, var0, var1);

  return v10;
}

+ (int)mapClassificationTypeFromFrameworkToClassifier:(int64_t)classifier
{
  if (classifier == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (classifier == 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

@end