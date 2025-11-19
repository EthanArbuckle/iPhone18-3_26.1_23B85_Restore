@interface MusicApplicationUIScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityDrawsFocusRingWhenChildrenFocused;
- (double)_accessibilityScrollHeightDistance;
- (id)_accessibilityScrollStatus;
@end

@implementation MusicApplicationUIScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.JSVerticalStackViewModelViewController"];
  [v3 validateClass:@"MusicApplication.NowPlayingLyricsViewController"];
  [v3 validateClass:@"MusicApplication.NowPlayingLyricsViewController" hasInstanceMethod:@"cardHeight" withFullSignature:{"d", 0}];
  [v3 validateClass:@"MusicCoreUI.SyncedLyricsViewController"];
  [v3 validateClass:@"MusicCoreUI.SyncedLyricsViewController" hasSwiftField:@"scrollView" withSwiftType:"UIScrollView"];
  [v3 validateClass:@"MusicCoreUI.SyncedLyricsViewController" hasSwiftField:@"lineViews" withSwiftType:"Array<SyncedLyricsLineView>"];
}

- (BOOL)_accessibilityDrawsFocusRingWhenChildrenFocused
{
  v2 = [(MusicApplicationUIScrollViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_16 startWithSelf:1];
  v3 = v2 != 0;

  return v3;
}

uint64_t __92__MusicApplicationUIScrollViewAccessibility__accessibilityDrawsFocusRingWhenChildrenFocused__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2E2DD0](@"MusicApplication.JSVerticalStackViewModelViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_accessibilityScrollStatus
{
  v32 = *MEMORY[0x29EDCA608];
  v3 = [(MusicApplicationUIScrollViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"AXSyncedLyricsScrollView"];

  if (v4)
  {
    v5 = [(MusicApplicationUIScrollViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_312 startWithSelf:1];
    v6 = [v5 _accessibilityViewController];

    if (v6)
    {
      v30 = 0;
      objc_opt_class();
      v7 = [v6 safeSwiftValueForKey:@"scrollView"];
      v8 = __UIAccessibilityCastAsClass();

      v9 = [v6 safeSwiftArrayForKey:@"lineViews"];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v27;
        v14 = INFINITY;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            [v8 contentOffset];
            v18 = v17;
            [v16 frame];
            v20 = vabdd_f64(v18, v19);
            if (v20 < v14)
            {
              v21 = v16;

              v12 = v21;
              v14 = v20;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v11);
        if (v12)
        {
          v22 = [v12 accessibilityLabel];

          goto LABEL_17;
        }
      }
    }
  }

  v25.receiver = self;
  v25.super_class = MusicApplicationUIScrollViewAccessibility;
  v22 = [(MusicApplicationUIScrollViewAccessibility *)&v25 _accessibilityScrollStatus];
LABEL_17:
  v23 = *MEMORY[0x29EDCA608];

  return v22;
}

uint64_t __71__MusicApplicationUIScrollViewAccessibility__accessibilityScrollStatus__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2E2DD0](@"MusicCoreUI.SyncedLyricsViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (double)_accessibilityScrollHeightDistance
{
  v3 = [(MusicApplicationUIScrollViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"AXSyncedLyricsScrollView"];

  if (v4 && (-[MusicApplicationUIScrollViewAccessibility _accessibilityFindAncestor:startWithSelf:](self, "_accessibilityFindAncestor:startWithSelf:", &__block_literal_global_316, 1), v5 = objc_claimAutoreleasedReturnValue(), [v5 _accessibilityViewController], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    objc_opt_class();
    v7 = __UIAccessibilityCastAsClass();
    [(MusicApplicationUIScrollViewAccessibility *)self contentOffset];
    v8 = [v7 view];
    [v8 bounds];

    [v7 safeSwiftCGFloatForKey:@"containerHeight"];
    v10 = v9;
    if (v9 <= 0.0)
    {
      v11 = [v7 view];
      [v11 frame];
      v10 = v12;
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = MusicApplicationUIScrollViewAccessibility;
    [(MusicApplicationUIScrollViewAccessibility *)&v15 _accessibilityScrollHeightDistance];
    return v13;
  }

  return v10;
}

uint64_t __79__MusicApplicationUIScrollViewAccessibility__accessibilityScrollHeightDistance__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2E2DD0](@"MusicCoreUI.SyncedLyricsViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end