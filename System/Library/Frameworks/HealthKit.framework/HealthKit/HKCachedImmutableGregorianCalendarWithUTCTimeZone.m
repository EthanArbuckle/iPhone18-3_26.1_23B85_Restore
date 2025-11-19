@interface HKCachedImmutableGregorianCalendarWithUTCTimeZone
@end

@implementation HKCachedImmutableGregorianCalendarWithUTCTimeZone

uint64_t ___HKCachedImmutableGregorianCalendarWithUTCTimeZone_block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithUTCTimeZone];
  v1 = _HKCachedImmutableGregorianCalendarWithUTCTimeZone_gregorianCalendarWithUTCTimeZone;
  _HKCachedImmutableGregorianCalendarWithUTCTimeZone_gregorianCalendarWithUTCTimeZone = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end