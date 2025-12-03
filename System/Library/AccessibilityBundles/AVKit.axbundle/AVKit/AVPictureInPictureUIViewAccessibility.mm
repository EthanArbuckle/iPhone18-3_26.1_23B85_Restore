@interface AVPictureInPictureUIViewAccessibility
- (BOOL)_accessibilityIsUsingRemoteParentActivateAction;
- (CGPoint)accessibilityActivationPoint;
@end

@implementation AVPictureInPictureUIViewAccessibility

- (CGPoint)accessibilityActivationPoint
{
  accessibilityIdentifier = [(AVPictureInPictureUIViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"PIPUIView"];

  if (v4)
  {
    v5 = [(AVPictureInPictureUIViewAccessibility *)self _accessibilityValueForKey:@"AXPIPConvertedBoundsKey"];
    v6 = v5;
    if (v5)
    {
      [v5 floatValue];
      v8 = v7;
    }

    else
    {
      objc_opt_class();
      v13 = __UIAccessibilityCastAsClass();
      [(UIView *)v13 bounds];
      v20 = UIAccessibilityConvertFrameToScreenCoordinates(v19, v13);
      v20.origin.x = v20.size.width * 0.5;
      v8 = v20.size.width * 0.5;
      *&v20.origin.x = v8;
      v14 = [MEMORY[0x29EDBA070] numberWithFloat:{v20.origin.x, v20.origin.y}];
      [(AVPictureInPictureUIViewAccessibility *)self _accessibilitySetRetainedValue:v14 forKey:@"AXPIPConvertedBoundsKey"];
    }

    v10 = v8;
    v12 = 1.0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = AVPictureInPictureUIViewAccessibility;
    [(AVPictureInPictureUIViewAccessibility *)&v17 accessibilityActivationPoint];
    v10 = v9;
    v12 = v11;
  }

  v15 = v10;
  v16 = v12;
  result.y = v16;
  result.x = v15;
  return result;
}

- (BOOL)_accessibilityIsUsingRemoteParentActivateAction
{
  accessibilityIdentifier = [(AVPictureInPictureUIViewAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"PIPUIView"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = AVPictureInPictureUIViewAccessibility;
  return [(AVPictureInPictureUIViewAccessibility *)&v6 _accessibilityIsUsingRemoteParentActivateAction];
}

@end