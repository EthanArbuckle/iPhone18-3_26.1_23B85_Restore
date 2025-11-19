@interface UndoButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)undoFrom:(id)a3;
@end

@implementation UndoButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Measure.UndoButton" hasInstanceMethod:@"undoButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Measure.UndoButton" hasInstanceMethod:@"undoFrom:" withFullSignature:{"v", "@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v2 = [(UndoButtonAccessibility *)self safeValueForKey:@"undoButton"];
  v3 = [v2 accessibilityTraits];
  v4 = *MEMORY[0x29EDC7F70] | v3;
  v5 = *MEMORY[0x29EDC7FC8];

  return v4 | v5;
}

- (void)undoFrom:(id)a3
{
  v4 = a3;
  v5 = AXMeasureAccessibilityStateObserver();
  [v5 axHasConfirmedRectangle];

  v8.receiver = self;
  v8.super_class = UndoButtonAccessibility;
  [(UndoButtonAccessibility *)&v8 undoFrom:v4];

  v6 = accessibilityLocalizedString(@"DID_UNDO_LAST_POINT");
  v7 = accessibilityLocalizedString(@"DID_UNDO_POINT");
  AXMeasureAnnounceUpdatedMeasurement(v6, v7);
}

@end