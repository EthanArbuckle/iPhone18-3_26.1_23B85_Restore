@interface AppInstallInfo
- (void)dealloc;
@end

@implementation AppInstallInfo

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AppInstallInfo;
  [(AppInstallInfo *)&v2 dealloc];
}

@end