@interface SiriUIReviewItemCellAccessibility
- (id)accessibilityLabel;
@end

@implementation SiriUIReviewItemCellAccessibility

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SiriUIReviewItemCellAccessibility *)self safeValueForKey:@"_ratingView"];
  v5 = [v4 accessibilityLabel];

  if ([v5 length])
  {
    [v3 addObject:v5];
  }

  v6 = [(SiriUIReviewItemCellAccessibility *)self safeValueForKey:@"_authorLabel"];
  v7 = [v6 accessibilityLabel];

  if ([v7 length])
  {
    [v3 addObject:v7];
  }

  v8 = [(SiriUIReviewItemCellAccessibility *)self safeValueForKey:@"_commentLabel"];
  v9 = [v8 accessibilityLabel];

  if ([v9 length])
  {
    [v3 addObject:v9];
  }

  v10 = [v3 componentsJoinedByString:{@", "}];

  return v10;
}

@end