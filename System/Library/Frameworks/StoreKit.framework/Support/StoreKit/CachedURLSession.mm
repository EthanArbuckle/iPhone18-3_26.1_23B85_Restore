@interface CachedURLSession
+ (id)cachedSession:(id)session maximumWatchCellularTransferSize:(id)size;
@end

@implementation CachedURLSession

+ (id)cachedSession:(id)session maximumWatchCellularTransferSize:(id)size
{
  sizeCopy = size;
  sessionCopy = session;
  v7 = objc_opt_new();
  [v7 setSession:sessionCopy];

  [v7 setMaximumWatchCellularTransferSize:sizeCopy];

  return v7;
}

@end