@interface NSError
- (BOOL)amsd_isCKThrottledError;
@end

@implementation NSError

- (BOOL)amsd_isCKThrottledError
{
  if (([(NSError *)self ams_hasDomain:CKErrorDomain code:7]& 1) != 0)
  {
    return 1;
  }

  return [(NSError *)self ams_hasDomain:CKErrorDomain code:6];
}

@end