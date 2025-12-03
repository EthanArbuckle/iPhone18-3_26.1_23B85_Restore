@interface CKTranscriptBalloonCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityCustomRotors;
- (id)accessibilityLabel;
- (id)automationElements;
- (void)updateCheckmarkImage;
@end

@implementation CKTranscriptBalloonCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKTranscriptBalloonCell" isKindOfClass:@"CKEditableCollectionViewCell"];
  [validationsCopy validateClass:@"CKEditableCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"CKTranscriptBalloonCell" isKindOfClass:@"CKTranscriptMessageCell"];
  [validationsCopy validateClass:@"CKTranscriptMessageCell" hasInstanceMethod:@"failureButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKEditableCollectionViewCell" hasInstanceMethod:@"updateCheckmarkImage" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CKTranscriptBalloonCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"UICollectionViewCell" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UICollectionViewCell" hasInstanceMethod:@"isHighlighted" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CKTranscriptBalloonCellAccessibility *)self safeValueForKey:@"_balloonView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v2 = [(CKTranscriptBalloonCellAccessibility *)self safeValueForKey:@"_balloonView"];
  _accessibilitySupportsActivateAction = [v2 _accessibilitySupportsActivateAction];

  return _accessibilitySupportsActivateAction;
}

- (id)accessibilityCustomRotors
{
  v2 = [(CKTranscriptBalloonCellAccessibility *)self safeValueForKey:@"_balloonView"];
  accessibilityCustomRotors = [v2 accessibilityCustomRotors];

  return accessibilityCustomRotors;
}

- (BOOL)accessibilityActivate
{
  v2 = [(CKTranscriptBalloonCellAccessibility *)self safeValueForKey:@"_balloonView"];
  accessibilityActivate = [v2 accessibilityActivate];

  return accessibilityActivate;
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

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (![eventCopy _accessibilityAutomationHitTest] || (-[CKTranscriptBalloonCellAccessibility safeValueForKey:](self, "safeValueForKey:", @"_balloonView"), v8 = objc_claimAutoreleasedReturnValue(), -[CKTranscriptBalloonCellAccessibility safeValueForKey:](self, "safeValueForKey:", @"_balloonView"), v9 = objc_claimAutoreleasedReturnValue(), -[CKTranscriptBalloonCellAccessibility convertPoint:toView:](self, "convertPoint:toView:", v9, x, y), objc_msgSend(v8, "_accessibilityHitTest:withEvent:", eventCopy), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, !v10))
  {
    v12.receiver = self;
    v12.super_class = CKTranscriptBalloonCellAccessibility;
    v10 = [(CKTranscriptBalloonCellAccessibility *)&v12 _accessibilityHitTest:eventCopy withEvent:x, y];
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