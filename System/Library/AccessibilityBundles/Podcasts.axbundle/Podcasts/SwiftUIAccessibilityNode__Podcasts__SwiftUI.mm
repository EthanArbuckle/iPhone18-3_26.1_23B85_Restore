@interface SwiftUIAccessibilityNode__Podcasts__SwiftUI
- (BOOL)_accessibilityHitTestShouldFallbackToNearestChild;
@end

@implementation SwiftUIAccessibilityNode__Podcasts__SwiftUI

- (BOOL)_accessibilityHitTestShouldFallbackToNearestChild
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __96__SwiftUIAccessibilityNode__Podcasts__SwiftUI__accessibilityHitTestShouldFallbackToNearestChild__block_invoke;
  v11 = &unk_29F2EA2F8;
  selfCopy = self;
  v13 = &v14;
  AXPerformSafeBlock();
  v3 = v15[5];
  _Block_object_dispose(&v14, 8);

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SwiftUIAccessibilityNode__Podcasts__SwiftUI;
    _accessibilityExpandedStatus = [(SwiftUIAccessibilityNode__Podcasts__SwiftUI *)&v7 _accessibilityExpandedStatus];

    return _accessibilityExpandedStatus != 0;
  }

  return bOOLValue;
}

@end