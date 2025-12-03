@interface CRLUserDefaults
+ (NSDictionary)defaultDefaults;
+ (void)registerUserDefaults;
@end

@implementation CRLUserDefaults

+ (NSDictionary)defaultDefaults
{
  if (defaultDefaults_onceToken != -1)
  {
    +[CRLUserDefaults defaultDefaults];
  }

  v3 = defaultDefaults_defaultDefaults;

  return v3;
}

void __34__CRLUserDefaults_defaultDefaults__block_invoke(id a1)
{
  v6[0] = @"CRLSnapToGrid";
  v6[1] = @"CRLDisplayEdgeGuides";
  v7[0] = &__kCFBooleanFalse;
  v7[1] = &__kCFBooleanFalse;
  v6[2] = @"CRLDisplayCenterGuides";
  v6[3] = @"CRLDisplaySpacingGuides";
  v7[2] = &__kCFBooleanTrue;
  v7[3] = &__kCFBooleanTrue;
  v6[4] = @"CRLDisplaySizingGuides";
  v6[5] = @"CRLUseHapticFeedbackWhenSnapping";
  v6[6] = @"CRLEncryptSharePlayData";
  v6[7] = @"CRLDeleteBoardCleanupTolerance";
  v7[6] = &__kCFBooleanTrue;
  v7[7] = &off_9078;
  v7[4] = &__kCFBooleanTrue;
  v7[5] = &__kCFBooleanTrue;
  v6[8] = @"CRLDeletedBoardTTL";
  v6[9] = @"CRLSelectAndScrollWithApplePencil";
  v7[8] = &off_9090;
  v7[9] = &__kCFBooleanFalse;
  v6[10] = @"CRLMathRecognitionMode";
  v6[11] = @"CRLAppAnalyticsResetIdentifier";
  v7[10] = &off_90A8;
  v7[11] = &__kCFBooleanFalse;
  v6[12] = @"enableOSSignpost";
  v6[13] = @"CRLMultiSelectionShouldDisplaySingleBoundsUserDefault";
  v7[12] = &__kCFBooleanFalse;
  v7[13] = &__kCFBooleanTrue;
  v6[14] = @"CRLRulerUnitTypeUserDefault";
  v1 = +[NSLocale currentLocale];
  if ([v1 usesMetricSystem])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = [NSNumber numberWithUnsignedInteger:v2];
  v6[15] = @"CRL3DObjectCompression";
  v7[14] = v3;
  v7[15] = &__kCFBooleanFalse;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:16];
  v5 = defaultDefaults_defaultDefaults;
  defaultDefaults_defaultDefaults = v4;
}

+ (void)registerUserDefaults
{
  v4 = +[NSUserDefaults standardUserDefaults];
  defaultDefaults = [self defaultDefaults];
  [v4 registerDefaults:defaultDefaults];
}

@end