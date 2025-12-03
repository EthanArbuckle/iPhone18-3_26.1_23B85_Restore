@interface MFMailComposeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)presentSearchResults:(id)results;
- (id)_accessibilityComposeElementsForSorting;
- (id)_searchResultsTable;
- (id)dragSource:(id)source draggableItemsAtPoint:(CGPoint)point;
- (int64_t)_accessibilityCompareElement:(id)element toElement:(id)toElement;
- (unint64_t)_axIndexOfRecipient:(id)recipient inArray:(id)array;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)dropTarget:(id)target dragDidMoveToPoint:(CGPoint)point;
- (void)dropTarget:(id)target dragEnteredAtPoint:(CGPoint)point;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation MFMailComposeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceMethod:@"_searchResultsTable" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceVariable:@"_toField" withType:"MFMailComposeToField"];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceVariable:@"_ccField" withType:"MFMailComposeRecipientTextView"];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceVariable:@"_bccField" withType:"MFMailComposeRecipientTextView"];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceVariable:@"_fromField" withType:"MFComposeFromView"];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceVariable:@"_subjectField" withType:"MFComposeSubjectView"];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceVariable:@"_headerView" withType:"UIView"];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceMethod:@"composeWebView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFMailComposeRecipientTextView" hasInstanceVariable:@"_textView" withType:"_CNAtomTextView"];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceMethod:@"presentSearchResults:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceMethod:@"scrollViewDidScroll:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceMethod:@"composeViewDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceVariable:@"_imageSizeField" withType:"MFComposeImageSizeView"];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceMethod:@"dropTarget:dragEnteredAtPoint:" withFullSignature:{"v", "@", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceMethod:@"dropTarget:dragDidMoveToPoint:" withFullSignature:{"v", "@", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"MFMailComposeView" hasInstanceMethod:@"dragSource:draggableItemsAtPoint:" withFullSignature:{"@", "@", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"_placeholderAttachmentRange" withFullSignature:{"{_NSRange=QQ}", 0}];
  [validationsCopy validateClass:@"MFMailComposeToField" isKindOfClass:@"MFMailComposeRecipientTextView"];
  [validationsCopy validateClass:@"MFMailComposeRecipientTextView" isKindOfClass:@"CNComposeRecipientTextView"];
  [validationsCopy validateClass:@"MFMailComposeRecipientTextView" hasInstanceVariable:@"_labelView" withType:"CNComposeHeaderLabelView"];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"placeholderAttachment" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"recipients" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFDropTarget"];
  [validationsCopy validateClass:@"CNComposeRecipientTextView" hasInstanceMethod:@"addButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFDropTarget" hasInstanceMethod:@"targetView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MFComposeRecipient" hasInstanceMethod:@"uncommentedAddress" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WKContentView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v23 = *MEMORY[0x29EDCA608];
  v21.receiver = self;
  v21.super_class = MFMailComposeViewAccessibility;
  [(MFMailComposeViewAccessibility *)&v21 _accessibilityLoadAccessibilityInformation];
  v3 = [(MFMailComposeViewAccessibility *)self safeValueForKey:@"_toField"];
  v4 = [v3 safeValueForKey:@"_textView"];
  [v4 setAccessibilityIdentifier:@"toField"];
  v5 = [(MFMailComposeViewAccessibility *)self safeValueForKey:@"_ccField"];
  v6 = [v5 safeValueForKey:@"_textView"];

  [v6 setAccessibilityIdentifier:@"ccField"];
  v7 = [(MFMailComposeViewAccessibility *)self safeValueForKey:@"_bccField"];
  v8 = [v7 safeValueForKey:@"_textView"];

  [v8 setAccessibilityIdentifier:@"bccField"];
  v9 = [(MFMailComposeViewAccessibility *)self safeValueForKey:@"_searchResultsTable"];
  [v9 setAccessibilityIdentifier:@"MessageRecipientSearchTable"];

  _accessibilityComposeElementsForSorting = [(MFMailComposeViewAccessibility *)self _accessibilityComposeElementsForSorting];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [_accessibilityComposeElementsForSorting countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(_accessibilityComposeElementsForSorting);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        [v15 _accessibilitySetUsesScrollParentForOrdering:0];
        [v15 _enumerateDescendentViews:&__block_literal_global_2];
      }

      v12 = [_accessibilityComposeElementsForSorting countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x29EDCA608];
}

- (int64_t)_accessibilityCompareElement:(id)element toElement:(id)toElement
{
  elementCopy = element;
  toElementCopy = toElement;
  _accessibilityComposeElementsForSorting = [(MFMailComposeViewAccessibility *)self _accessibilityComposeElementsForSorting];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = [_accessibilityComposeElementsForSorting indexOfObject:elementCopy];
  if (v29[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 3221225472;
    v25[2] = __73__MFMailComposeViewAccessibility__accessibilityCompareElement_toElement___block_invoke;
    v25[3] = &unk_29F2D1A38;
    v27 = &v28;
    v26 = _accessibilityComposeElementsForSorting;
    v9 = [elementCopy _accessibilityFindAncestor:v25 startWithSelf:0];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = [_accessibilityComposeElementsForSorting indexOfObject:toElementCopy];
  if (v22[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = MEMORY[0x29EDCA5F8];
    v16 = 3221225472;
    v17 = __73__MFMailComposeViewAccessibility__accessibilityCompareElement_toElement___block_invoke_2;
    v18 = &unk_29F2D1A38;
    v20 = &v21;
    v19 = _accessibilityComposeElementsForSorting;
    v10 = [toElementCopy _accessibilityFindAncestor:&v15 startWithSelf:0];
  }

  v11 = [MEMORY[0x29EDBA070] numberWithInteger:{v29[3], v15, v16, v17, v18}];
  v12 = [MEMORY[0x29EDBA070] numberWithInteger:v22[3]];
  v13 = [v11 compare:v12];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v28, 8);

  return v13;
}

- (id)_accessibilityComposeElementsForSorting
{
  v3 = [(MFMailComposeViewAccessibility *)self safeUIViewForKey:@"_toField"];
  v15 = MEMORY[0x29EDB8D80];
  v17 = v3;
  v18 = [v3 safeUIViewForKey:@"_textView"];
  v4 = [v3 safeUIViewForKey:@"addButton"];
  v5 = [(MFMailComposeViewAccessibility *)self safeUIViewForKey:@"_headerView"];
  v6 = [(MFMailComposeViewAccessibility *)self safeUIViewForKey:@"_ccField"];
  v7 = [(MFMailComposeViewAccessibility *)self safeUIViewForKey:@"_bccField"];
  v8 = [(MFMailComposeViewAccessibility *)self safeUIViewForKey:@"_fromField"];
  v9 = [(MFMailComposeViewAccessibility *)self safeUIViewForKey:@"_imageSizeField"];
  v10 = [(MFMailComposeViewAccessibility *)self safeUIViewForKey:@"_subjectField"];
  v11 = [(MFMailComposeViewAccessibility *)self safeUIViewForKey:@"composeWebView"];
  v12 = [v11 _accessibilityFindSubviewDescendant:&__block_literal_global_404];
  v13 = [(MFMailComposeViewAccessibility *)self safeUIViewForKey:@"_searchResultsTable"];
  v16 = [v15 axArrayByIgnoringNilElementsWithCount:{10, v18, v4, v5, v6, v7, v8, v9, v10, v12, v13}];

  return v16;
}

uint64_t __73__MFMailComposeViewAccessibility__accessibilityComposeElementsForSorting__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Wkcontentview.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_searchResultsTable
{
  v4.receiver = self;
  v4.super_class = MFMailComposeViewAccessibility;
  _searchResultsTable = [(MFMailComposeViewAccessibility *)&v4 _searchResultsTable];
  [_searchResultsTable setAccessibilityIdentifier:@"MessageRecipientSearchTable"];

  return _searchResultsTable;
}

- (BOOL)presentSearchResults:(id)results
{
  v5.receiver = self;
  v5.super_class = MFMailComposeViewAccessibility;
  v3 = [(MFMailComposeViewAccessibility *)&v5 presentSearchResults:results];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return v3;
}

- (void)scrollViewDidScroll:(id)scroll
{
  v3.receiver = self;
  v3.super_class = MFMailComposeViewAccessibility;
  [(MFMailComposeViewAccessibility *)&v3 scrollViewDidScroll:scroll];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (id)dragSource:(id)source draggableItemsAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  sourceCopy = source;
  v12 = 0;
  objc_opt_class();
  v11.receiver = self;
  v11.super_class = MFMailComposeViewAccessibility;
  v8 = [(MFMailComposeViewAccessibility *)&v11 dragSource:sourceCopy draggableItemsAtPoint:x, y];
  v9 = __UIAccessibilityCastAsClass();

  if (v12 == 1)
  {
    abort();
  }

  if (v9)
  {
    [(MFMailComposeViewAccessibility *)self _accessibilitySetRetainedValue:v9 forKey:@"_axDragItems"];
  }

  return v9;
}

- (void)dropTarget:(id)target dragEnteredAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  targetCopy = target;
  v21.receiver = self;
  v21.super_class = MFMailComposeViewAccessibility;
  [(MFMailComposeViewAccessibility *)&v21 dropTarget:targetCopy dragEnteredAtPoint:x, y];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v8 = [targetCopy safeValueForKey:@"targetView"];
    NSClassFromString(&cfstr_Mfmailcomposer.isa);
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 safeValueForKey:@"_labelView"];
      v10 = v9;
      if (v9)
      {
        accessibilityLabel = [v9 accessibilityLabel];
        whitespaceCharacterSet = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
        v13 = [accessibilityLabel stringByTrimmingCharactersInSet:whitespaceCharacterSet];

        punctuationCharacterSet = [MEMORY[0x29EDB9F50] punctuationCharacterSet];
        v15 = [v13 stringByTrimmingCharactersInSet:punctuationCharacterSet];

        v16 = MEMORY[0x29EDBA0F8];
        v17 = accessibilityLocalizedString(@"dragged.address.to");
        v18 = [v16 stringWithFormat:v17, v15];

        v19 = *MEMORY[0x29EDC7EA8];
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v18);
        date = [MEMORY[0x29EDB8DB0] date];
        [(MFMailComposeViewAccessibility *)self _accessibilitySetRetainedValue:date forKey:@"_axDragEnteredDate"];
      }

      else
      {
        v19 = *MEMORY[0x29EDC7EA8];
      }

      UIAccessibilityPostNotification(v19, *MEMORY[0x29EDBDAA8]);
    }
  }
}

- (void)dropTarget:(id)target dragDidMoveToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  targetCopy = target;
  v39.receiver = self;
  v39.super_class = MFMailComposeViewAccessibility;
  [(MFMailComposeViewAccessibility *)&v39 dropTarget:targetCopy dragDidMoveToPoint:x, y];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v8 = [targetCopy safeValueForKey:@"targetView"];
    NSClassFromString(&cfstr_Mfmailcomposer.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_30:

      goto LABEL_31;
    }

    v9 = [v8 safeValueForKey:@"placeholderAttachment"];
    if (!v9)
    {
LABEL_29:

      goto LABEL_30;
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x3010000000;
    v36 = &unk_29BF79E13;
    v37 = 0;
    v38 = 0;
    v32 = v8;
    AXPerformSafeBlock();
    v10 = v34[4];

    _Block_object_dispose(&v33, 8);
    v11 = [(MFMailComposeViewAccessibility *)self _accessibilityValueForKey:@"_axDragItems"];
    v31 = [v32 safeValueForKey:@"recipients"];
    v12 = [(MFMailComposeViewAccessibility *)self _accessibilityIntegerValueForKey:@"_axDragPlaceholderIndex"];
    if ([v11 count] && v10 != 0x7FFFFFFFFFFFFFFFLL && v10 != v12)
    {
      [(MFMailComposeViewAccessibility *)self _accessibilitySetIntegerValue:v10 forKey:@"_axDragPlaceholderIndex"];
      firstObject = [v11 firstObject];
      v14 = [(MFMailComposeViewAccessibility *)self _axIndexOfRecipient:firstObject inArray:v31];

      v15 = [v11 count];
      v16 = v14 == 0x7FFFFFFFFFFFFFFFLL ? 0 : v14;
      if ([v31 count])
      {
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = 0;
        }

        else
        {
          v17 = v15;
        }

        if (v10 <= v17 + v16)
        {
          if (v10)
          {
            v19 = 0;
          }

          else
          {
            v19 = v14 == 0x7FFFFFFFFFFFFFFFLL;
          }

          v18 = @"moved.address.before";
          if (v19 || v10 < v16)
          {
LABEL_22:
            v20 = [v31 objectAtIndex:v10];
            v21 = MEMORY[0x29EDBA0F8];
            v22 = accessibilityLocalizedString(v18);
            v23 = [v20 safeValueForKey:@"displayString"];
            v24 = [v21 stringWithFormat:v22, v23];

            if (v24)
            {
              v25 = [(MFMailComposeViewAccessibility *)self _accessibilityValueForKey:@"_axDragEnteredDate"];
              if (v25 && ([MEMORY[0x29EDB8DB0] date], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "timeIntervalSinceDate:", v25), v28 = v27, v26, v28 <= 1.0))
              {
                v29 = *MEMORY[0x29EDC7EA8];
              }

              else
              {
                v29 = *MEMORY[0x29EDC7EA8];
                UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v24);
                date = [MEMORY[0x29EDB8DB0] date];
                [(MFMailComposeViewAccessibility *)self _accessibilitySetRetainedValue:date forKey:@"_axDragEnteredDate"];
              }

              UIAccessibilityPostNotification(v29, *MEMORY[0x29EDBDAA8]);
            }
          }
        }

        else if (v10 <= [v31 count])
        {
          --v10;
          v18 = @"moved.address.after";
          goto LABEL_22;
        }
      }
    }

    goto LABEL_29;
  }

LABEL_31:
}

uint64_t __64__MFMailComposeViewAccessibility_dropTarget_dragDidMoveToPoint___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _placeholderAttachmentRange];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = result;
  *(v3 + 40) = v4;
  return result;
}

- (unint64_t)_axIndexOfRecipient:(id)recipient inArray:(id)array
{
  recipientCopy = recipient;
  arrayCopy = array;
  v7 = NSClassFromString(&cfstr_Mfcomposerecip.isa);
  v8 = [arrayCopy count];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (recipientCopy && v8 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __62__MFMailComposeViewAccessibility__axIndexOfRecipient_inArray___block_invoke;
    v11[3] = &unk_29F2D1A60;
    v14 = v7;
    v12 = recipientCopy;
    v13 = &v15;
    [arrayCopy enumerateObjectsUsingBlock:v11];
    v9 = v16[3];

    _Block_object_dispose(&v15, 8);
  }

  return v9;
}

void __62__MFMailComposeViewAccessibility__axIndexOfRecipient_inArray___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 48);
  v12 = v7;
  if (objc_opt_isKindOfClass())
  {
    v9 = [v12 safeStringForKey:@"uncommentedAddress"];
    v10 = [*(a1 + 32) safeStringForKey:@"uncommentedAddress"];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }
}

@end