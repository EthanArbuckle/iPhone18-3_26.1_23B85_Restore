@interface BSPathProviderFactory
+ (id)pathProviderForCurrentContainer;
+ (id)pathProviderForSystemContainerForCurrentProcess;
@end

@implementation BSPathProviderFactory

+ (id)pathProviderForCurrentContainer
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)pathProviderForSystemContainerForCurrentProcess
{
  v2 = objc_opt_new();

  return v2;
}

@end