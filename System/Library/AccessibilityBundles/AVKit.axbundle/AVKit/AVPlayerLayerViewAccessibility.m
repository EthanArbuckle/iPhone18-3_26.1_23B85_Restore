@interface AVPlayerLayerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axCanZoomIn;
- (BOOL)_axCanZoomOut;
- (BOOL)_axHasVideo;
- (BOOL)_axIsZoomable;
- (BOOL)accessibilityZoomInAtPoint:(CGPoint)a3;
- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)_axZoomableView;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AVPlayerLayerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"__AVPlayerLayerView" hasInstanceMethod:@"playerController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVPlayerController" hasInstanceMethod:@"contentDimensions" withFullSignature:{"{CGSize=dd}", 0}];
  [v3 validateClass:@"AVPlayerController" hasInstanceMethod:@"hasEnabledAudio" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AVPlayerController" hasInstanceMethod:@"hasEnabledVideo" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AVPlayerController" hasInstanceMethod:@"isReadyToPlay" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AVPlaybackContentZoomingView"];
  [v3 validateClass:@"AVPlaybackContentZoomingView" isKindOfClass:@"UIScrollView"];
  [v3 validateClass:@"AVPlaybackContentZoomingView" hasInstanceMethod:@"isZoomingEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIScrollView" hasInstanceMethod:@"minimumZoomScale" withFullSignature:{"d", 0}];
  [v3 validateClass:@"UIScrollView" hasInstanceMethod:@"maximumZoomScale" withFullSignature:{"d", 0}];
  [v3 validateClass:@"UIScrollView" hasInstanceMethod:@"zoomScale" withFullSignature:{"d", 0}];
}

- (BOOL)_axHasVideo
{
  v2 = [(AVPlayerLayerViewAccessibility *)self safeValueForKey:@"playerController"];
  v3 = [v2 safeValueForKey:@"contentDimensions"];
  [v3 sizeValue];
  if (v5 == *MEMORY[0x29EDB90E8] && v4 == *(MEMORY[0x29EDB90E8] + 8))
  {
    v7 = 0;
  }

  else
  {
    v7 = [v2 safeBoolForKey:@"hasEnabledVideo"];
  }

  return v7;
}

- (id)_axZoomableView
{
  objc_opt_class();
  v3 = [(AVPlayerLayerViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_1 startWithSelf:0];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

uint64_t __49__AVPlayerLayerViewAccessibility__axZoomableView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2C6300](@"AVPlaybackContentZoomingView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsZoomable
{
  v2 = [(AVPlayerLayerViewAccessibility *)self _axZoomableView];
  v3 = [v2 safeBoolForKey:@"isZoomingEnabled"];
  [v2 safeCGFloatForKey:@"minimumZoomScale"];
  v5 = v4;
  [v2 safeCGFloatForKey:@"maximumZoomScale"];
  if (v6 > v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  if (v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_axCanZoomIn
{
  v2 = [(AVPlayerLayerViewAccessibility *)self _axZoomableView];
  [v2 safeCGFloatForKey:@"zoomScale"];
  v4 = v3 == 1.0;

  return v4;
}

- (BOOL)_axCanZoomOut
{
  v2 = [(AVPlayerLayerViewAccessibility *)self _axZoomableView];
  [v2 safeCGFloatForKey:@"zoomScale"];
  v4 = v3 != 1.0;

  return v4;
}

- (id)accessibilityLabel
{
  v3 = [(AVPlayerLayerViewAccessibility *)self accessibilityUserDefinedLabel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(AVPlayerLayerViewAccessibility *)self safeValueForKey:@"playerController"];
    v7 = @"media.background.view.label";
    if ([v6 safeBoolForKey:@"isReadyToPlay"])
    {
      if ([(AVPlayerLayerViewAccessibility *)self _axHasVideo])
      {
        v7 = @"video.background.view.label";
      }

      else if ([v6 safeBoolForKey:@"hasEnabledAudio"])
      {
        v7 = @"audio.background.view.label";
      }
    }

    v5 = accessibilityLocalizedString(v7);
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = AVPlayerLayerViewAccessibility;
  v3 = [(AVPlayerLayerViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(AVPlayerLayerViewAccessibility *)self _axIsZoomable];
  v5 = *MEMORY[0x29EDBDBF8];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (CGPoint)accessibilityActivationPoint
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [(UIView *)v2 bounds];
  v8 = UIAccessibilityConvertFrameToScreenCoordinates(v7, v2);
  *&v8.origin.x = v8.size.width * 0.5;
  v3 = *&v8.origin.x;

  v4 = 0.0;
  v5 = v3;
  result.y = v4;
  result.x = v5;
  return result;
}

- (BOOL)accessibilityZoomInAtPoint:(CGPoint)a3
{
  v4 = [(AVPlayerLayerViewAccessibility *)self _axCanZoomIn];
  if (v4)
  {
    v9 = [(AVPlayerLayerViewAccessibility *)self _axZoomableView];
    v5 = v9;
    AXPerformSafeBlock();
    v6 = *MEMORY[0x29EDC7EA8];
    [v5 safeCGFloatForKey:@"zoomScale"];
    v7 = AXFormatMagnificationFactor();
    UIAccessibilityPostNotification(v6, v7);
  }

  return v4;
}

- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)a3
{
  v4 = [(AVPlayerLayerViewAccessibility *)self _axCanZoomOut];
  if (v4)
  {
    v9 = [(AVPlayerLayerViewAccessibility *)self _axZoomableView];
    v5 = v9;
    AXPerformSafeBlock();
    v6 = *MEMORY[0x29EDC7EA8];
    [v5 safeCGFloatForKey:@"zoomScale"];
    v7 = AXFormatMagnificationFactor();
    UIAccessibilityPostNotification(v6, v7);
  }

  return v4;
}

@end