@interface CKBalloonTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
- (unint64_t)accessibilityTraits;
- (void)startSelectionForColor:(char)color;
@end

@implementation CKBalloonTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKBalloonTextView" isKindOfClass:@"UITextView"];
  [validationsCopy validateClass:@"UITextView" hasInstanceMethod:@"selectedRange" withFullSignature:{"{_NSRange=QQ}", 0}];
  [validationsCopy validateClass:@"CKBalloonTextView" hasInstanceMethod:@"_selectedRange" withFullSignature:{"{_NSRange=QQ}", 0}];
  [validationsCopy validateClass:@"UITextView" hasInstanceMethod:@"accessibilityContainsOneLink" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIMenu" hasInstanceMethod:@"options" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"_menuForChatItem:withParentChatItem:menuAppearance:" withFullSignature:{"@", "@", "@", "q", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"_parentChatItemForIndexPath:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"CKBalloonTextView" hasInstanceMethod:@"startSelectionForColor:" withFullSignature:{"v", "c", 0}];
  [validationsCopy validateClass:@"UITextView" hasInstanceMethod:@"isSelectable" withFullSignature:{"B", 0}];
}

- (id)accessibilityHint
{
  if ([(CKBalloonTextViewAccessibility *)self safeBoolForKey:@"isSelectable"])
  {
    v2 = accessibilityLocalizedString(@"balloon.select.hint");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (unint64_t)accessibilityTraits
{
  if ([(CKBalloonTextViewAccessibility *)self safeBoolForKey:@"isSelectable"])
  {
    v5.receiver = self;
    v5.super_class = CKBalloonTextViewAccessibility;
    return *MEMORY[0x29EDC7528] | [(CKBalloonTextViewAccessibility *)&v5 accessibilityTraits]| *MEMORY[0x29EDC7598];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CKBalloonTextViewAccessibility;
    return [(CKBalloonTextViewAccessibility *)&v4 accessibilityTraits];
  }
}

- (void)startSelectionForColor:(char)color
{
  v3.receiver = self;
  v3.super_class = CKBalloonTextViewAccessibility;
  [(CKBalloonTextViewAccessibility *)&v3 startSelectionForColor:color];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end