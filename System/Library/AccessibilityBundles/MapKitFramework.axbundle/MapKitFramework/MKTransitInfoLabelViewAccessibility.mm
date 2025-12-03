@interface MKTransitInfoLabelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axLabelFromLabelItems:(id)items;
- (id)accessibilityLabel;
@end

@implementation MKTransitInfoLabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GEOPDTransitLabel"];
  [validationsCopy validateClass:@"GEOPDTransitLabel" hasInstanceMethod:@"hasLabelArtwork" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"GEOPDTransitLabel" hasInstanceMethod:@"labelArtwork" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GEOPBTransitArtwork" hasInstanceMethod:@"hasAccessibilityString" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"GEOPBTransitArtwork" hasInstanceMethod:@"accessibilityString" withFullSignature:{"@", 0}];
}

- (id)_axLabelFromLabelItems:(id)items
{
  v26 = *MEMORY[0x29EDCA608];
  itemsCopy = items;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [itemsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_40;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v22;
  do
  {
    v8 = 0;
    do
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(itemsCopy);
      }

      v9 = *(*(&v21 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
        if ([v10 dataType] == 1)
        {
          dataValue = [v10 dataValue];
          if (dataValue > 3)
          {
            if (dataValue > 5)
            {
              if (dataValue == 6)
              {
                v12 = @"ACCESS_TYPE_RAMP";
              }

              else
              {
                if (dataValue != 7)
                {
                  _AXAssert();
                  v15 = 0;
                  goto LABEL_32;
                }

                v12 = @"ACCESS_TYPE_STAIR";
              }
            }

            else if (dataValue == 4)
            {
              v12 = @"ACCESS_TYPE_UP_ESCALATOR";
            }

            else
            {
              v12 = @"ACCESS_TYPE_DOWN_ESCALATOR";
            }
          }

          else if (dataValue > 1)
          {
            if (dataValue == 2)
            {
              v12 = @"ACCESS_TYPE_ELEVATOR";
            }

            else
            {
              v12 = @"ACCESS_TYPE_ESCALATOR";
            }
          }

          else if (dataValue)
          {
            v12 = @"ACCESS_TYPE_EASEMENT";
          }

          else
          {
            v12 = @"ACCESS_TYPE_DOOR";
          }

          v15 = AXMapKitLocString(v12);
LABEL_32:
          v16 = __AXStringForVariables();

          v6 = v16;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = __AXStringForVariables();

          v6 = v13;
          goto LABEL_34;
        }

        NSClassFromString(&cfstr_Geopdtransitla.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          _AXLogWithFacility();
          goto LABEL_34;
        }

        if (![v9 safeBoolForKey:@"hasLabelArtwork"])
        {
          goto LABEL_34;
        }

        v10 = [v9 safeValueForKey:@"labelArtwork"];
        if ([v10 safeBoolForKey:@"hasAccessibilityString"])
        {
          v20 = [v10 safeValueForKey:@"accessibilityString"];
          v14 = __AXStringForVariables();

          v6 = v14;
        }
      }

LABEL_34:
      ++v8;
    }

    while (v5 != v8);
    v17 = [itemsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    v5 = v17;
  }

  while (v17);
LABEL_40:

  v18 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)accessibilityLabel
{
  labelItems = [(MKTransitInfoLabelViewAccessibility *)self labelItems];
  if (labelItems)
  {
    v4 = [(MKTransitInfoLabelViewAccessibility *)self _axLabelFromLabelItems:labelItems];
  }

  else
  {
    _AXAssert();
    v4 = 0;
  }

  return v4;
}

@end