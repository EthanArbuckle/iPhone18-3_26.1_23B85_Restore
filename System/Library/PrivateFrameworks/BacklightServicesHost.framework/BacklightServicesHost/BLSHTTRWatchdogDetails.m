@interface BLSHTTRWatchdogDetails
- (BLSHTTRWatchdogDetails)init;
@end

@implementation BLSHTTRWatchdogDetails

- (BLSHTTRWatchdogDetails)init
{
  v5.receiver = self;
  v5.super_class = BLSHTTRWatchdogDetails;
  v2 = [(BLSHTTRWatchdogDetails *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BLSHTTRWatchdogDetails *)v2 setShowTTRAlert:0];
  }

  return v3;
}

@end