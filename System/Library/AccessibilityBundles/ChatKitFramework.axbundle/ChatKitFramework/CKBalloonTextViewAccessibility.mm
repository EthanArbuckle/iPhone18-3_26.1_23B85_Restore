@interface CKBalloonTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (unint64_t)accessibilityTraits;
- (void)startSelectionForColor:(char)a3;
@end

@implementation CKBalloonTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKBalloonTextView" isKindOfClass:@"UITextView"];
  [v3 validateClass:@"UITextView" hasInstanceMethod:@"selectedRange" withFullSignature:{"{_NSRange=QQ}", 0}];
  [v3 validateClass:@"CKBalloonTextView" hasInstanceMethod:@"_selectedRange" withFullSignature:{"{_NSRange=QQ}", 0}];
  [v3 validateClass:@"UITextView" hasInstanceMethod:@"accessibilityContainsOneLink" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIMenu" hasInstanceMethod:@"options" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CKChatController" hasInstanceMethod:@"_menuForChatItem:withParentChatItem:menuAppearance:" withFullSignature:{"@", "@", "@", "q", 0}];
  [v3 validateClass:@"CKChatController" hasInstanceMethod:@"_parentChatItemForIndexPath:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"CKBalloonTextView" hasInstanceMethod:@"startSelectionForColor:" withFullSignature:{"v", "c", 0}];
  [v3 validateClass:@"UITextView" hasInstanceMethod:@"isSelectable" withFullSignature:{"B", 0}];
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

- (void)startSelectionForColor:(char)a3
{
  v3.receiver = self;
  v3.super_class = CKBalloonTextViewAccessibility;
  [(CKBalloonTextViewAccessibility *)&v3 startSelectionForColor:a3];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end