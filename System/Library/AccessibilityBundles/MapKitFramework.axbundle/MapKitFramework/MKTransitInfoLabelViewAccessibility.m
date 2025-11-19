@interface MKTransitInfoLabelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axLabelFromLabelItems:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MKTransitInfoLabelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GEOPDTransitLabel"];
  [v3 validateClass:@"GEOPDTransitLabel" hasInstanceMethod:@"hasLabelArtwork" withFullSignature:{"B", 0}];
  [v3 validateClass:@"GEOPDTransitLabel" hasInstanceMethod:@"labelArtwork" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GEOPBTransitArtwork" hasInstanceMethod:@"hasAccessibilityString" withFullSignature:{"B", 0}];
  [v3 validateClass:@"GEOPBTransitArtwork" hasInstanceMethod:@"accessibilityString" withFullSignature:{"@", 0}];
}

- (id)_axLabelFromLabelItems:(id)a3
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v21 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
        if ([v10 dataType] == 1)
        {
          v11 = [v10 dataValue];
          if (v11 > 3)
          {
            if (v11 > 5)
            {
              if (v11 == 6)
              {
                v12 = @"ACCESS_TYPE_RAMP";
              }

              else
              {
                if (v11 != 7)
                {
                  _AXAssert();
                  v15 = 0;
                  goto LABEL_32;
                }

                v12 = @"ACCESS_TYPE_STAIR";
              }
            }

            else if (v11 == 4)
            {
              v12 = @"ACCESS_TYPE_UP_ESCALATOR";
            }

            else
            {
              v12 = @"ACCESS_TYPE_DOWN_ESCALATOR";
            }
          }

          else if (v11 > 1)
          {
            if (v11 == 2)
            {
              v12 = @"ACCESS_TYPE_ELEVATOR";
            }

            else
            {
              v12 = @"ACCESS_TYPE_ESCALATOR";
            }
          }

          else if (v11)
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
    v17 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v5 = v17;
  }

  while (v17);
LABEL_40:

  v18 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)accessibilityLabel
{
  v3 = [(MKTransitInfoLabelViewAccessibility *)self labelItems];
  if (v3)
  {
    v4 = [(MKTransitInfoLabelViewAccessibility *)self _axLabelFromLabelItems:v3];
  }

  else
  {
    _AXAssert();
    v4 = 0;
  }

  return v4;
}

@end