@interface ARReplaySensorPublic(ARKitAdditions)
- (void)_subscribeToBackgroundNotifications;
@end

@implementation ARReplaySensorPublic(ARKitAdditions)

- (void)_subscribeToBackgroundNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_interrupt name:*MEMORY[0x277D76660] object:0];
  [defaultCenter addObserver:self selector:sel_endInterruption name:*MEMORY[0x277D76758] object:0];
}

@end