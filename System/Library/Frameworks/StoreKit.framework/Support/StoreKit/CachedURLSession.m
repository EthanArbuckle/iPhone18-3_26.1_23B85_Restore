@interface CachedURLSession
+ (id)cachedSession:(id)a3 maximumWatchCellularTransferSize:(id)a4;
@end

@implementation CachedURLSession

+ (id)cachedSession:(id)a3 maximumWatchCellularTransferSize:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setSession:v6];

  [v7 setMaximumWatchCellularTransferSize:v5];

  return v7;
}

@end