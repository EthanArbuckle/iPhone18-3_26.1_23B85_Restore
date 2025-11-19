@interface CKTranscriptBalloonCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityCustomRotors;
- (id)accessibilityLabel;
- (id)automationElements;
- (void)updateCheckmarkImage;
@end

@implementation CKTranscriptBalloonCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKTranscriptBalloonCell" isKindOfClass:@"CKEditableCollectionViewCell"];
  [v3 validateClass:@"CKEditableCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"CKTranscriptBalloonCell" isKindOfClass:@"CKTranscriptMessageCell"];
  [v3 validateClass:@"CKTranscriptMessageCell" hasInstanceMethod:@"failureButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKEditableCollectionViewCell" hasInstanceMethod:@"updateCheckmarkImage" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CKTranscriptBalloonCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"UICollectionViewCell" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UICollectionViewCell" hasInstanceMethod:@"isHighlighted" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CKTranscriptBalloonCellAccessibility *)self safeValueForKey:@"_balloonView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v2 = [(CKTranscriptBalloonCellAccessibility *)self safeValueForKey:@"_balloonView"];
  v3 = [v2 _accessibilitySupportsActivateAction];

  return v3;
}

- (id)accessibilityCustomRotors
{
  v2 = [(CKTranscriptBalloonCellAccessibility *)self safeValueForKey:@"_balloonView"];
  v3 = [v2 accessibilityCustomRotors];

  return v3;
}

- (BOOL)accessibilityActivate
{
  v2 = [(CKTranscriptBalloonCellAccessibility *)self safeValueForKey:@"_balloonView"];
  v3 = [v2 accessibilityActivate];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(CKTranscriptBalloonCellAccessibility *)self safeValueForKey:@"_balloonView"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)automationElements
{
  v3 = [(CKTranscriptBalloonCellAccessibility *)self safeValueForKey:@"_balloonView"];
  v4 = [(CKTranscriptBalloonCellAccessibility *)self safeValueForKey:@"failureButton"];
  v5 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v3, v4}];

  return v5;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (![v7 _accessibilityAutomationHitTest] || (-[CKTranscriptBalloonCellAccessibility safeValueForKey:](self, "safeValueForKey:", @"_balloonView"), v8 = objc_claimAutoreleasedReturnValue(), -[CKTranscriptBalloonCellAccessibility safeValueForKey:](self, "safeValueForKey:", @"_balloonView"), v9 = objc_claimAutoreleasedReturnValue(), -[CKTranscriptBalloonCellAccessibility convertPoint:toView:](self, "convertPoint:toView:", v9, x, y), objc_msgSend(v8, "_accessibilityHitTest:withEvent:", v7), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, !v10))
  {
    v12.receiver = self;
    v12.super_class = CKTranscriptBalloonCellAccessibility;
    v10 = [(CKTranscriptBalloonCellAccessibility *)&v12 _accessibilityHitTest:v7 withEvent:x, y];
  }

  return v10;
}

- (void)updateCheckmarkImage
{
  v5.receiver = self;
  v5.super_class = CKTranscriptBalloonCellAccessibility;
  [(CKTranscriptBalloonCellAccessibility *)&v5 updateCheckmarkImage];
  v3 = [(CKTranscriptBalloonCellAccessibility *)self safeValueForKey:@"_balloonView"];
  if (([(CKTranscriptBalloonCellAccessibility *)self safeBoolForKey:@"isHighlighted"]& 1) != 0 || [(CKTranscriptBalloonCellAccessibility *)self safeBoolForKey:@"isSelected"])
  {
    v4 = MEMORY[0x29EDC7FC0];
  }

  else
  {
    v4 = MEMORY[0x29EDC7FA0];
  }

  [v3 setAccessibilityTraits:*v4];
}

@end