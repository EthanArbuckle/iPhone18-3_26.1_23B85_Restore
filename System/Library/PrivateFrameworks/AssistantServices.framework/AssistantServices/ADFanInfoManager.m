@interface ADFanInfoManager
- (void)dealloc;
- (void)getCurrentFanInfo:(id)a3;
@end

@implementation ADFanInfoManager

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ADFanInfoManager;
  [(ADFanInfoManager *)&v2 dealloc];
}

- (void)getCurrentFanInfo:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

@end