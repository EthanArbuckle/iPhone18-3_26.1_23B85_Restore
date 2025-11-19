@interface BMStoreEvent(Extras)
- (id)eventTime;
@end

@implementation BMStoreEvent(Extras)

- (id)eventTime
{
  v2 = objc_alloc(MEMORY[0x277CBEAA8]);
  [a1 timestamp];
  v3 = [v2 initWithTimeIntervalSinceReferenceDate:?];

  return v3;
}

@end