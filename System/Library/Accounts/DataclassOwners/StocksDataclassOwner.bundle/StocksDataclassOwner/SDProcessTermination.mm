@interface SDProcessTermination
+ (void)killProcess:(int64_t)process;
@end

@implementation SDProcessTermination

+ (void)killProcess:(int64_t)process
{
  if (process == 1)
  {
    [self _killProcessNamed:@"StocksToday" bundleID:@"com.apple.stocks.widget"];
    v4 = @"StocksWidget";
    v5 = @"com.apple.stocks.widget2";
  }

  else
  {
    if (process)
    {
      return;
    }

    v4 = @"Stocks";
    v5 = @"com.apple.stocks";
  }

  [self _killProcessNamed:v4 bundleID:v5];
}

@end