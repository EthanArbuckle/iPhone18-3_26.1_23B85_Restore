@interface SiriUIReviewItemCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SiriUIReviewItemCellAccessibility

- (id)accessibilityLabel
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SiriUIReviewItemCellAccessibility *)self safeValueForKey:@"_ratingView"];
  accessibilityLabel = [v4 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    [array addObject:accessibilityLabel];
  }

  v6 = [(SiriUIReviewItemCellAccessibility *)self safeValueForKey:@"_authorLabel"];
  accessibilityLabel2 = [v6 accessibilityLabel];

  if ([accessibilityLabel2 length])
  {
    [array addObject:accessibilityLabel2];
  }

  v8 = [(SiriUIReviewItemCellAccessibility *)self safeValueForKey:@"_commentLabel"];
  accessibilityLabel3 = [v8 accessibilityLabel];

  if ([accessibilityLabel3 length])
  {
    [array addObject:accessibilityLabel3];
  }

  v10 = [array componentsJoinedByString:{@", "}];

  return v10;
}

@end