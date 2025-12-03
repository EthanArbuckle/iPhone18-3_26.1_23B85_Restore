@interface MessageStatusIndicatorManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axIdentificationForMask:(unint64_t)mask;
- (id)_axLabelForMask:(unint64_t)mask;
- (id)_axValueForMask:(unint64_t)mask;
- (id)statusIndicatorImageWithOptionsMask:(unint64_t)mask;
- (void)_accessibilitySetImageNameForImage:(id)image options:(unint64_t)options;
@end

@implementation MessageStatusIndicatorManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MessageStatusIndicatorManager" hasInstanceMethod:@"statusIndicatorImageWithOptionsMask:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"MessageStatusIndicatorManager" hasInstanceMethod:@"statusIndicatorColorWithOptionsMask:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"MessageStatusIndicatorManager" hasInstanceMethod:@"effectiveIndicatorOptions" withFullSignature:{"Q", 0}];
}

- (id)_axLabelForMask:(unint64_t)mask
{
  maskCopy = mask;
  if ((mask & 0x40) != 0)
  {
    v14 = accessibilityLocalizedString(@"notify.message");
    v4 = __UIAXStringForVariables();

    if ((maskCopy & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 0;
  if (mask)
  {
LABEL_5:
    v15 = accessibilityLocalizedString(@"unread");
    v5 = __UIAXStringForVariables();

    v4 = v5;
  }

LABEL_6:
  if ((maskCopy & 4) != 0)
  {
    v17 = accessibilityLocalizedString(@"flagged");
    v8 = __UIAXStringForVariables();

    v4 = v8;
    if ((maskCopy & 0x10) == 0)
    {
LABEL_8:
      if ((maskCopy & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((maskCopy & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v18 = accessibilityLocalizedString(@"forwarded");
  v9 = __UIAXStringForVariables();

  v4 = v9;
  if ((maskCopy & 0x80) == 0)
  {
LABEL_9:
    if ((maskCopy & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v19 = accessibilityLocalizedString(@"muted.message");
  v10 = __UIAXStringForVariables();

  v4 = v10;
  if ((maskCopy & 8) == 0)
  {
LABEL_10:
    if ((maskCopy & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v20 = accessibilityLocalizedString(@"replied");
  v11 = __UIAXStringForVariables();

  v4 = v11;
  if ((maskCopy & 2) == 0)
  {
LABEL_11:
    if ((maskCopy & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v21 = accessibilityLocalizedString(@"vip.message");
  v12 = __UIAXStringForVariables();

  v4 = v12;
  if ((maskCopy & 0x100) == 0)
  {
LABEL_12:
    if ((maskCopy & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_22:
  v22 = accessibilityLocalizedString(@"blockedsender.message");
  v13 = __UIAXStringForVariables();

  v4 = v13;
  if ((maskCopy & 0x20) != 0)
  {
LABEL_13:
    v16 = accessibilityLocalizedString(@"attachment.message");
    v6 = __UIAXStringForVariables();

    v4 = v6;
  }

LABEL_14:

  return v4;
}

- (id)_axValueForMask:(unint64_t)mask
{
  if ((mask & 4) != 0)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__4;
    v10 = __Block_byref_object_dispose__4;
    v11 = 0;
    AXPerformSafeBlock();
    v4 = v7[5];
    _Block_object_dispose(&v6, 8);

    v3 = accessibilityLabelForFlagColor(v4);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __62__MessageStatusIndicatorManagerAccessibility__axValueForMask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) statusIndicatorColorWithOptionsMask:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_axIdentificationForMask:(unint64_t)mask
{
  v3 = (@"statusIndicatorNotify" & ((mask << 57) >> 63));
  if ((mask & 5) != 0)
  {
    v3 = @"statusIndicatorUnreadFlagged";
  }

  if ((mask & 0x10) != 0)
  {
    v3 = @"statusIndicatorForwarded";
  }

  if ((mask & 0x80) != 0)
  {
    return @"statusIndicatorMuted";
  }

  else
  {
    return v3;
  }
}

- (id)statusIndicatorImageWithOptionsMask:(unint64_t)mask
{
  v5 = [(MessageStatusIndicatorManagerAccessibility *)self safeUnsignedIntegerForKey:@"effectiveIndicatorOptions"];
  v8.receiver = self;
  v8.super_class = MessageStatusIndicatorManagerAccessibility;
  v6 = [(MessageStatusIndicatorManagerAccessibility *)&v8 statusIndicatorImageWithOptionsMask:mask];
  [(MessageStatusIndicatorManagerAccessibility *)self _accessibilitySetImageNameForImage:v6 options:v5 & mask];

  return v6;
}

- (void)_accessibilitySetImageNameForImage:(id)image options:(unint64_t)options
{
  imageCopy = image;
  v9 = [(MessageStatusIndicatorManagerAccessibility *)self _axLabelForMask:options];
  v7 = [(MessageStatusIndicatorManagerAccessibility *)self _axValueForMask:options];
  v8 = [(MessageStatusIndicatorManagerAccessibility *)self _axIdentificationForMask:options];
  [imageCopy setAccessibilityLabel:v9];
  [imageCopy setAccessibilityValue:v7];
  [imageCopy accessibilitySetIdentification:v8];
}

@end