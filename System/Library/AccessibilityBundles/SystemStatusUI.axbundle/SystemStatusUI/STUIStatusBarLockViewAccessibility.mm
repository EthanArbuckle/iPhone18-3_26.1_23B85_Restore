@interface STUIStatusBarLockViewAccessibility
- (unint64_t)accessibilityTraits;
- (void)animateUnlockWithCompletionBlock:(id)block;
@end

@implementation STUIStatusBarLockViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = STUIStatusBarLockViewAccessibility;
  return *MEMORY[0x29EDC7580] | [(STUIStatusBarLockViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC74F8];
}

- (void)animateUnlockWithCompletionBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __71__STUIStatusBarLockViewAccessibility_animateUnlockWithCompletionBlock___block_invoke;
  v7[3] = &unk_29F306EC0;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = STUIStatusBarLockViewAccessibility;
  v5 = blockCopy;
  [(STUIStatusBarLockViewAccessibility *)&v6 animateUnlockWithCompletionBlock:v7];
}

void __71__STUIStatusBarLockViewAccessibility_animateUnlockWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, a2);
  }

  if (v2)
  {
    v4 = *MEMORY[0x29EDC7ED8];

    UIAccessibilityPostNotification(v4, 0);
  }
}

@end