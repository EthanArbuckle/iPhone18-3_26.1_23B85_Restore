@interface EKDayOccurrenceResizeHandleViewAccessibility
- (BOOL)_axIsEndHandle;
- (BOOL)_axIsStartHandle;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation EKDayOccurrenceResizeHandleViewAccessibility

- (BOOL)_axIsStartHandle
{
  accessibilityIdentifier = [(EKDayOccurrenceResizeHandleViewAccessibility *)self accessibilityIdentifier];
  v3 = [accessibilityIdentifier isEqualToString:@"StartHandle"];

  return v3;
}

- (BOOL)_axIsEndHandle
{
  accessibilityIdentifier = [(EKDayOccurrenceResizeHandleViewAccessibility *)self accessibilityIdentifier];
  v3 = [accessibilityIdentifier isEqualToString:@"EndHandle"];

  return v3;
}

- (id)accessibilityLabel
{
  if ([(EKDayOccurrenceResizeHandleViewAccessibility *)self _axIsStartHandle])
  {
    v3 = @"resize.handle.start.label";
LABEL_5:
    v4 = accessibilityLocalizedString(v3);
    goto LABEL_7;
  }

  if ([(EKDayOccurrenceResizeHandleViewAccessibility *)self _axIsEndHandle])
  {
    v3 = @"resize.handle.end.label";
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (id)accessibilityHint
{
  if ([(EKDayOccurrenceResizeHandleViewAccessibility *)self _axIsStartHandle])
  {
    v3 = @"resize.handle.start.hint";
LABEL_5:
    v4 = accessibilityLocalizedString(v3);
    goto LABEL_7;
  }

  if ([(EKDayOccurrenceResizeHandleViewAccessibility *)self _axIsEndHandle])
  {
    v3 = @"resize.handle.end.hint";
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (CGPoint)accessibilityActivationPoint
{
  [(EKDayOccurrenceResizeHandleViewAccessibility *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetMidY(v12);
  [(EKDayOccurrenceResizeHandleViewAccessibility *)self _axIsEndHandle];

  UIAccessibilityPointForPoint();
  result.y = v8;
  result.x = v7;
  return result;
}

@end