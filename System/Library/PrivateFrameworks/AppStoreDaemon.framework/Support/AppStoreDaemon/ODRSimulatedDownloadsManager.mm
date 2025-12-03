@interface ODRSimulatedDownloadsManager
+ (void)initialize;
@end

@implementation ODRSimulatedDownloadsManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    [v2 registerDefaults:&off_1005497F0];
  }
}

@end