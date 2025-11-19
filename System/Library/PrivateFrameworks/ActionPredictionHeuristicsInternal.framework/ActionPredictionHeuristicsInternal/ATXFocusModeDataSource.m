@interface ATXFocusModeDataSource
- (ATXFocusModeDataSource)initWithDevice:(id)a3;
- (void)isFocusModeActive:(id)a3;
@end

@implementation ATXFocusModeDataSource

- (ATXFocusModeDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXFocusModeDataSource;
  v6 = [(ATXFocusModeDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)isFocusModeActive:(id)a3
{
  v3 = a3;
  v4 = +[ATXHeuristicResultCache sharedInstance];
  v7 = 0;
  v5 = [v4 isFocusModeActiveWithError:&v7];
  v6 = v7;

  v3[2](v3, v5, v6);
}

@end