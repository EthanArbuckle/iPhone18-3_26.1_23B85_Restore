@interface EKCalendar(ATX)
- (uint64_t)atx_isAllowedCalendar;
@end

@implementation EKCalendar(ATX)

- (uint64_t)atx_isAllowedCalendar
{
  if ([a1 type] == 3 || (objc_msgSend(a1, "isSubscribed") & 1) != 0)
  {
    return 0;
  }

  v3 = [a1 source];
  v4 = [v3 isDelegate];

  return v4 ^ 1u;
}

@end