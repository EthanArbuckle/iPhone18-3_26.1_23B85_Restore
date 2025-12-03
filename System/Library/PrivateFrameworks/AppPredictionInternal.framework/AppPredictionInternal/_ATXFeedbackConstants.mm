@interface _ATXFeedbackConstants
+ (double)actionDecayHalfLifeSeconds;
+ (double)alphaForBundleId:(id)id;
+ (double)baseAlpha;
+ (double)baseBeta;
+ (double)betaForBundleId:(id)id;
+ (double)decayHalfLifeSeconds;
+ (double)multiplierForAppAlphasAndBetas;
@end

@implementation _ATXFeedbackConstants

+ (double)baseAlpha
{
  if (initFeedbackConstantsData_onceToken != -1)
  {
    +[_ATXFeedbackConstants baseAlpha];
  }

  return *&_ATXFeedbackConstantsData_0;
}

+ (double)baseBeta
{
  if (initFeedbackConstantsData_onceToken != -1)
  {
    +[_ATXFeedbackConstants baseAlpha];
  }

  return *&_ATXFeedbackConstantsData_1;
}

+ (double)multiplierForAppAlphasAndBetas
{
  if (initFeedbackConstantsData_onceToken != -1)
  {
    +[_ATXFeedbackConstants baseAlpha];
  }

  return *&_ATXFeedbackConstantsData_2;
}

+ (double)decayHalfLifeSeconds
{
  if (initFeedbackConstantsData_onceToken != -1)
  {
    +[_ATXFeedbackConstants baseAlpha];
  }

  return *&_ATXFeedbackConstantsData_3;
}

+ (double)actionDecayHalfLifeSeconds
{
  if (initFeedbackConstantsData_onceToken != -1)
  {
    +[_ATXFeedbackConstants baseAlpha];
  }

  return *&_ATXFeedbackConstantsData_4;
}

+ (double)alphaForBundleId:(id)id
{
  idCopy = id;
  if (initFeedbackConstantsData_onceToken != -1)
  {
    +[_ATXFeedbackConstants baseAlpha];
  }

  v4 = [_ATXFeedbackConstantsData_5 objectForKeyedSubscript:idCopy];

  if (v4 && (([_ATXFeedbackConstantsData_5 objectForKeyedSubscript:idCopy], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "doubleValue"), v7 = v6, v5, v7 > 0.0) ? (v8 = v7 < 1.0) : (v8 = 0), v8))
  {
    v9 = v7 * *&_ATXFeedbackConstantsData_2;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

+ (double)betaForBundleId:(id)id
{
  idCopy = id;
  if (initFeedbackConstantsData_onceToken != -1)
  {
    +[_ATXFeedbackConstants baseAlpha];
  }

  v4 = [_ATXFeedbackConstantsData_5 objectForKeyedSubscript:idCopy];

  if (v4 && (([_ATXFeedbackConstantsData_5 objectForKeyedSubscript:idCopy], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "doubleValue"), v7 = 1.0 - v6, v5, v7 > 0.0) ? (v8 = v7 < 1.0) : (v8 = 0), v8))
  {
    v9 = v7 * *&_ATXFeedbackConstantsData_2;
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

@end