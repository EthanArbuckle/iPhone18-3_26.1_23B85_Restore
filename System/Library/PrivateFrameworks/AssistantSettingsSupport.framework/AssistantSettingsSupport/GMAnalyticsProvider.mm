@interface GMAnalyticsProvider
- (BOOL)sendAction:(int64_t)action;
@end

@implementation GMAnalyticsProvider

- (BOOL)sendAction:(int64_t)action
{
  v6 = *(&self->super.isa + OBJC_IVAR___GMAnalyticsProvider_sendFunction);
  v5 = *&self->gmAvailabilityProvider[OBJC_IVAR___GMAnalyticsProvider_sendFunction];
  v7 = swift_allocObject();
  *(v7 + 16) = action;
  *(v7 + 24) = self;
  selfCopy = self;
  LOBYTE(v5) = v6(0xD00000000000002CLL, 0x80000002414196F0, sub_2413EED1C, v7);

  return v5 & 1;
}

@end