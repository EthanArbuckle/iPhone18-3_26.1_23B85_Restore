@interface SDProcessTermination
+ (void)killProcess:(int64_t)a3;
@end

@implementation SDProcessTermination

+ (void)killProcess:(int64_t)a3
{
  if (a3 == 1)
  {
    [a1 _killProcessNamed:@"StocksToday" bundleID:@"com.apple.stocks.widget"];
    v4 = @"StocksWidget";
    v5 = @"com.apple.stocks.widget2";
  }

  else
  {
    if (a3)
    {
      return;
    }

    v4 = @"Stocks";
    v5 = @"com.apple.stocks";
  }

  [a1 _killProcessNamed:v4 bundleID:v5];
}

@end