@interface UIAccessibilityFunCamElement
- (void)accessibilityElementDidBecomeFocused;
- (void)accessibilityElementDidLoseFocus;
- (void)updateElementFrame;
@end

@implementation UIAccessibilityFunCamElement

- (void)accessibilityElementDidBecomeFocused
{
  if ([(UIAccessibilityFunCamElement *)self tracked])
  {
    objc_initWeak(&location, self);
    v3 = [(UIAccessibilityFunCamElement *)self timer];

    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x29EDBD6A0]);
      [(UIAccessibilityFunCamElement *)self setTimer:v4];
    }

    v5 = [(UIAccessibilityFunCamElement *)self timer];
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __68__UIAccessibilityFunCamElement_accessibilityElementDidBecomeFocused__block_invoke;
    v6[3] = &unk_29F2ABD30;
    objc_copyWeak(&v7, &location);
    [v5 afterDelay:v6 processBlock:0.1];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __68__UIAccessibilityFunCamElement_accessibilityElementDidBecomeFocused__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateElementFrame];
}

- (void)accessibilityElementDidLoseFocus
{
  v2 = [(UIAccessibilityFunCamElement *)self timer];
  [v2 cancel];
}

- (void)updateElementFrame
{
  v3 = [(UIAccessibilityFunCamElement *)self timer];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDBD6A0]);
    [(UIAccessibilityFunCamElement *)self setTimer:v4];
  }

  if ([(UIAccessibilityFunCamElement *)self accessibilityElementIsFocused])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7428], self);
    objc_initWeak(&location, self);
    v5 = [(UIAccessibilityFunCamElement *)self timer];
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __50__UIAccessibilityFunCamElement_updateElementFrame__block_invoke;
    v6[3] = &unk_29F2ABD30;
    objc_copyWeak(&v7, &location);
    [v5 afterDelay:v6 processBlock:0.1];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __50__UIAccessibilityFunCamElement_updateElementFrame__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateElementFrame];
}

@end