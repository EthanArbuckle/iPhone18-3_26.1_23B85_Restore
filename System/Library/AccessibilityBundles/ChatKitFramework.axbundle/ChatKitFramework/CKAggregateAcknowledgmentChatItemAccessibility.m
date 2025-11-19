@interface CKAggregateAcknowledgmentChatItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CKAggregateAcknowledgmentChatItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKAggregateAcknowledgmentChatItem" hasInstanceMethod:@"acknowledgments" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKAggregateAcknowledgmentChatItem" hasInstanceMethod:@"includesMultiple" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKAggregateAcknowledgmentChatItem" hasInstanceMethod:@"includesFromMe" withFullSignature:{"B", 0}];
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
    v8 = [v4 lastObject];
    if ([v8 safeBoolForKey:@"isFromMe"])
    {
      v12 = 0;
      v7 = 0;
      goto LABEL_10;
    }

    v7 = [v8 accessibilityLabel];
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"multiple.reactions.description");
  v7 = [v5 localizedStringWithFormat:v6, objc_msgSend(v4, "count")];

  v8 = [v4 lastObject];
  if ([v8 safeBoolForKey:@"isFromMe"])
  {
    goto LABEL_9;
  }

  v9 = MEMORY[0x29EDBA0F8];
  v10 = accessibilityLocalizedString(@"acknowledgment.latest.format");
  v11 = [v8 accessibilityLabel];
  v12 = [v9 localizedStringWithFormat:v10, v11];

LABEL_10:
  if ([(CKAggregateAcknowledgmentChatItemAccessibility *)self safeBoolForKey:@"includesFromMe"])
  {
    if ([(CKAggregateAcknowledgmentChatItemAccessibility *)self safeBoolForKey:@"includesMultiple"])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = [v4 reverseObjectEnumerator];
      v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v23 + 1) + 8 * i);
            if ([v19 safeBoolForKey:@"isFromMe"])
            {
              v20 = v19;
              goto LABEL_24;
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v20 = 0;
LABEL_24:
    }

    else
    {
      v20 = [v4 firstObject];
    }
  }

  else
  {
    v20 = 0;
  }

  v22 = [v20 accessibilityLabel];
  v13 = __AXStringForVariables();

LABEL_26:

  return v13;
}

@end