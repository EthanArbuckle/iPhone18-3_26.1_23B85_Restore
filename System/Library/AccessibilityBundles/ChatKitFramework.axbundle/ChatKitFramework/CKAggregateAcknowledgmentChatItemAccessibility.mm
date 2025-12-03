@interface CKAggregateAcknowledgmentChatItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CKAggregateAcknowledgmentChatItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKAggregateAcknowledgmentChatItem" hasInstanceMethod:@"acknowledgments" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKAggregateAcknowledgmentChatItem" hasInstanceMethod:@"includesMultiple" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKAggregateAcknowledgmentChatItem" hasInstanceMethod:@"includesFromMe" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v29 = *MEMORY[0x29EDCA608];
  v27 = 0;
  objc_opt_class();
  v3 = [(CKAggregateAcknowledgmentChatItemAccessibility *)self safeValueForKey:@"acknowledgments"];
  v4 = __UIAccessibilityCastAsClass();

  if (![v4 count])
  {
    v13 = 0;
    goto LABEL_26;
  }

  if (![(CKAggregateAcknowledgmentChatItemAccessibility *)self safeBoolForKey:@"includesMultiple"])
  {
    lastObject = [v4 lastObject];
    if ([lastObject safeBoolForKey:@"isFromMe"])
    {
      v12 = 0;
      accessibilityLabel = 0;
      goto LABEL_10;
    }

    accessibilityLabel = [lastObject accessibilityLabel];
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"multiple.reactions.description");
  accessibilityLabel = [v5 localizedStringWithFormat:v6, objc_msgSend(v4, "count")];

  lastObject = [v4 lastObject];
  if ([lastObject safeBoolForKey:@"isFromMe"])
  {
    goto LABEL_9;
  }

  v9 = MEMORY[0x29EDBA0F8];
  v10 = accessibilityLocalizedString(@"acknowledgment.latest.format");
  accessibilityLabel2 = [lastObject accessibilityLabel];
  v12 = [v9 localizedStringWithFormat:v10, accessibilityLabel2];

LABEL_10:
  if ([(CKAggregateAcknowledgmentChatItemAccessibility *)self safeBoolForKey:@"includesFromMe"])
  {
    if ([(CKAggregateAcknowledgmentChatItemAccessibility *)self safeBoolForKey:@"includesMultiple"])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      reverseObjectEnumerator = [v4 reverseObjectEnumerator];
      v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v19 = *(*(&v23 + 1) + 8 * i);
            if ([v19 safeBoolForKey:@"isFromMe"])
            {
              firstObject = v19;
              goto LABEL_24;
            }
          }

          v16 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      firstObject = 0;
LABEL_24:
    }

    else
    {
      firstObject = [v4 firstObject];
    }
  }

  else
  {
    firstObject = 0;
  }

  accessibilityLabel3 = [firstObject accessibilityLabel];
  v13 = __AXStringForVariables();

LABEL_26:

  return v13;
}

@end