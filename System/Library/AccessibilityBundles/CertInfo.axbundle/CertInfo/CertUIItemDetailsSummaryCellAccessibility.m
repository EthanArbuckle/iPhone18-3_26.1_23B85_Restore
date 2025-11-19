@interface CertUIItemDetailsSummaryCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CertUIItemDetailsSummaryCellAccessibility

- (id)accessibilityLabel
{
  v11.receiver = self;
  v11.super_class = CertUIItemDetailsSummaryCellAccessibility;
  v3 = [(CertUIItemDetailsSummaryCellAccessibility *)&v11 accessibilityLabel];
  v4 = [(CertUIItemDetailsSummaryCellAccessibility *)self safeValueForKey:@"detailViews"];
  v5 = [MEMORY[0x29EDB8DE8] array];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __63__CertUIItemDetailsSummaryCellAccessibility_accessibilityLabel__block_invoke;
  v9[3] = &unk_29F2AFE50;
  v6 = v5;
  v10 = v6;
  [v4 enumerateObjectsUsingBlock:v9];
  if ([v6 count])
  {
    v7 = [v6 componentsJoinedByString:{@", "}];

    v3 = v7;
  }

  return v3;
}

void __63__CertUIItemDetailsSummaryCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accessibilityLabel];
  [v2 axSafelyAddObject:v3];
}

@end