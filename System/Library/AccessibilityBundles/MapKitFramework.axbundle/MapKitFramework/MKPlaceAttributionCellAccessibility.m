@interface MKPlaceAttributionCellAccessibility
- (id)accessibilityLabel;
@end

@implementation MKPlaceAttributionCellAccessibility

- (id)accessibilityLabel
{
  LOBYTE(v16) = 0;
  objc_opt_class();
  v3 = [(MKPlaceAttributionCellAccessibility *)self safeValueForKey:@"_label"];
  v4 = __UIAccessibilityCastAsClass();

  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [v4 attributedText];
  v6 = [v5 copy];

  if (![v6 length])
  {
LABEL_8:

LABEL_9:
    v11 = [v4 accessibilityLabel];
    goto LABEL_10;
  }

  v7 = [v6 attribute:@"AXAttributeDisplayName" atIndex:0 effectiveRange:0];
  if (![v7 length])
  {
LABEL_7:

    goto LABEL_8;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = &unk_29BEF66A2;
  v20 = xmmword_29BEF5CF0;
  v8 = [v6 length];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __57__MKPlaceAttributionCellAccessibility_accessibilityLabel__block_invoke;
  v15[3] = &unk_29F2CB1E0;
  v15[4] = &v16;
  [v6 enumerateAttributesInRange:0 options:v8 usingBlock:{0, v15}];
  v9 = v17[4];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || (v10 = v17[5], v10 + v9 > [v6 length]))
  {
    _Block_object_dispose(&v16, 8);
    goto LABEL_7;
  }

  v13 = [v6 string];
  v14 = [v13 copy];

  v11 = [v14 stringByReplacingCharactersInRange:v17[4] withString:{v17[5], v7}];

  _Block_object_dispose(&v16, 8);
LABEL_10:

  return v11;
}

void __57__MKPlaceAttributionCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = [a2 objectForKey:*MEMORY[0x29EDC7628]];

  if (v9)
  {
    v10 = *(*(a1 + 32) + 8);
    *(v10 + 32) = a3;
    *(v10 + 40) = a4;
    *a5 = 1;
  }
}

@end