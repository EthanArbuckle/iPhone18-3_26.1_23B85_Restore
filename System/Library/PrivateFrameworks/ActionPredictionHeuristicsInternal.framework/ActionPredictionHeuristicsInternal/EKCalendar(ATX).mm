@interface EKCalendar(ATX)
- (uint64_t)atx_isAllowedCalendar;
@end

@implementation EKCalendar(ATX)

- (uint64_t)atx_isAllowedCalendar
{
  if ([self type] == 3 || (objc_msgSend(self, "isSubscribed") & 1) != 0)
  {
    return 0;
  }

  source = [self source];
  isDelegate = [source isDelegate];

  return isDelegate ^ 1u;
}

@end