@interface UIResponder(FirstResponderFinder)
+ (id)_ms_currentFirstResponder;
@end

@implementation UIResponder(FirstResponderFinder)

+ (id)_ms_currentFirstResponder
{
  objc_storeWeak(&currentFirstResponder, 0);
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  [v0 sendAction:sel__ms_findFirstResponder_ to:0 from:0 forEvent:0];

  WeakRetained = objc_loadWeakRetained(&currentFirstResponder);

  return WeakRetained;
}

@end