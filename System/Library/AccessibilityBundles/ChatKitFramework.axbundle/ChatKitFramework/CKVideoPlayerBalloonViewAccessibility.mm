@interface CKVideoPlayerBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_isAccessibilityBalloonViewPlayingVideo;
- (BOOL)accessibilityBalloonViewPlaysInlineVideo;
- (BOOL)isAccessibilityElement;
- (id)accessibilityCustomActions;
@end

@implementation CKVideoPlayerBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKVideoPlayerBalloonView" isKindOfClass:@"CKImageBalloonView"];
  [v3 validateClass:@"CKVideoPlayerBalloonView" hasInstanceMethod:@"playerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKVideoPlayerBalloonView" hasInstanceMethod:@"startPlayingInlineVideo" withFullSignature:{"v", 0}];
}

- (BOOL)isAccessibilityElement
{
  v5.receiver = self;
  v5.super_class = CKVideoPlayerBalloonViewAccessibility;
  LOBYTE(v3) = [(CKVideoPlayerBalloonViewAccessibility *)&v5 isAccessibilityElement];
  if ([(CKVideoPlayerBalloonViewAccessibility *)self accessibilityBalloonViewPlaysInlineVideo])
  {
    return ![(CKVideoPlayerBalloonViewAccessibility *)self _isAccessibilityBalloonViewPlayingVideo];
  }

  return v3;
}

- (id)accessibilityCustomActions
{
  v16.receiver = self;
  v16.super_class = CKVideoPlayerBalloonViewAccessibility;
  v3 = [(CKVideoPlayerBalloonViewAccessibility *)&v16 accessibilityCustomActions];
  if ([(CKVideoPlayerBalloonViewAccessibility *)self accessibilityBalloonViewPlaysInlineVideo])
  {
    v4 = [v3 mutableCopy];
    if (![(CKVideoPlayerBalloonViewAccessibility *)self _isAccessibilityBalloonViewPlayingVideo])
    {
      objc_initWeak(&location, self);
      v5 = objc_alloc(MEMORY[0x29EDC78E0]);
      v6 = accessibilityLocalizedString(@"video.action.label.play");
      v10 = MEMORY[0x29EDCA5F8];
      v11 = 3221225472;
      v12 = __67__CKVideoPlayerBalloonViewAccessibility_accessibilityCustomActions__block_invoke;
      v13 = &unk_29F2B0958;
      objc_copyWeak(&v14, &location);
      v7 = [v5 initWithName:v6 actionHandler:&v10];
      [v4 addObject:{v7, v10, v11, v12, v13}];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    v8 = [v4 copy];

    v3 = v8;
  }

  return v3;
}

uint64_t __67__CKVideoPlayerBalloonViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  AXPerformSafeBlock();

  return 1;
}

- (BOOL)accessibilityBalloonViewPlaysInlineVideo
{
  v2 = [NSClassFromString(&cfstr_Ckuibehavior.isa) sharedBehaviors];
  v3 = [v2 playsInlineVideo];

  return v3;
}

- (BOOL)_isAccessibilityBalloonViewPlayingVideo
{
  v2 = [(CKVideoPlayerBalloonViewAccessibility *)self safeValueForKey:@"playerView"];
  v3 = v2 != 0;

  return v3;
}

@end