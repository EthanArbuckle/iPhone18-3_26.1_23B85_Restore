@interface ADFanInfoManager
- (void)dealloc;
- (void)getCurrentFanInfo:(id)info;
@end

@implementation ADFanInfoManager

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ADFanInfoManager;
  [(ADFanInfoManager *)&v2 dealloc];
}

- (void)getCurrentFanInfo:(id)info
{
  if (info)
  {
    (*(info + 2))(info, 0);
  }
}

@end