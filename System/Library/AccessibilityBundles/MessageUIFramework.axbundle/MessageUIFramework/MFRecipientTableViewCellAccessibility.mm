@interface MFRecipientTableViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation MFRecipientTableViewCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(MFRecipientTableViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  _accessibilityViewIsVisible = [v3 _accessibilityViewIsVisible];
  accessibilityLabel = 0;
  if (_accessibilityViewIsVisible)
  {
    accessibilityLabel = [v3 accessibilityLabel];
  }

  v22 = accessibilityLabel;
  v16 = 0;
  v6 = [(MFRecipientTableViewCellAccessibility *)self safeValueForKey:@"detailLabel"];
  v7 = __UIAccessibilitySafeClass();

  if ([v7 _accessibilityViewIsVisible])
  {
    attributedText = [v7 attributedText];
    v9 = [attributedText length];
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __59__MFRecipientTableViewCellAccessibility_accessibilityLabel__block_invoke;
    v13[3] = &unk_29F2D1A88;
    v10 = attributedText;
    v14 = v10;
    v15 = &v17;
    [v10 enumerateAttribute:@"mf_tintType" inRange:0 options:v9 usingBlock:{0, v13}];
  }

  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __59__MFRecipientTableViewCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) string];
  v12 = [v7 substringWithRange:{a3, a4}];

  if ([v12 length])
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = __UIAXStringForVariables();
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

@end