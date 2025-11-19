@interface ASTLinking
+ (BOOL)isAXRuntimeFrameworkAvailable;
+ (BOOL)isCheckerBoardServicesFrameworkAvailable;
+ (BOOL)isCoreAnalyticsFrameworkAvailable;
@end

@implementation ASTLinking

+ (BOOL)isAXRuntimeFrameworkAvailable
{
  if (isAXRuntimeFrameworkAvailable_axRuntimeFramework != -1)
  {
    +[ASTLinking isAXRuntimeFrameworkAvailable];
  }

  return isAXRuntimeFrameworkAvailable_isAXRuntimeFrameworkAvailable;
}

void *__43__ASTLinking_isAXRuntimeFrameworkAvailable__block_invoke()
{
  result = dlopen([@"/System/Library/PrivateFrameworks/AXRuntime.framework/AXRuntime" UTF8String], 1);
  isAXRuntimeFrameworkAvailable_isAXRuntimeFrameworkAvailable = result != 0;
  return result;
}

+ (BOOL)isCoreAnalyticsFrameworkAvailable
{
  if (isCoreAnalyticsFrameworkAvailable_coreAnalyticsFramework != -1)
  {
    +[ASTLinking isCoreAnalyticsFrameworkAvailable];
  }

  return isCoreAnalyticsFrameworkAvailable_isCoreAnalyticsFrameworkAvailable;
}

void *__47__ASTLinking_isCoreAnalyticsFrameworkAvailable__block_invoke()
{
  result = dlopen([@"/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics" UTF8String], 1);
  isCoreAnalyticsFrameworkAvailable_isCoreAnalyticsFrameworkAvailable = result != 0;
  return result;
}

+ (BOOL)isCheckerBoardServicesFrameworkAvailable
{
  if (isCheckerBoardServicesFrameworkAvailable_checkerBoardServicesFramework != -1)
  {
    +[ASTLinking isCheckerBoardServicesFrameworkAvailable];
  }

  return isCheckerBoardServicesFrameworkAvailable_isCheckerBoardServicesFrameworkAvailable;
}

void *__54__ASTLinking_isCheckerBoardServicesFrameworkAvailable__block_invoke()
{
  result = dlopen([@"/System/Library/PrivateFrameworks/CheckerBoardServices.framework/CheckerBoardServices" UTF8String], 1);
  isCheckerBoardServicesFrameworkAvailable_isCheckerBoardServicesFrameworkAvailable = result != 0;
  return result;
}

@end