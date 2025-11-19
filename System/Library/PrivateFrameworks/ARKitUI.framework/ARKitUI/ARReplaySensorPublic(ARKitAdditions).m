@interface ARReplaySensorPublic(ARKitAdditions)
- (void)_subscribeToBackgroundNotifications;
@end

@implementation ARReplaySensorPublic(ARKitAdditions)

- (void)_subscribeToBackgroundNotifications
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:a1 selector:sel_interrupt name:*MEMORY[0x277D76660] object:0];
  [v2 addObserver:a1 selector:sel_endInterruption name:*MEMORY[0x277D76758] object:0];
}

@end