@interface _LSDefaultFeatureFlagResolver
+ (id)sharedInstance;
@end

@implementation _LSDefaultFeatureFlagResolver

+ (id)sharedInstance
{
  if (+[_LSDefaultFeatureFlagResolver sharedInstance]::onceToken != -1)
  {
    +[_LSDefaultFeatureFlagResolver sharedInstance];
  }

  v3 = +[_LSDefaultFeatureFlagResolver sharedInstance]::resolver;

  return v3;
}

@end