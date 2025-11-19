@interface GCSController
+ (id)generateElementDictionaryFromElements:(id)a3;
+ (id)productCategoryLocalizationKeyForProductCategory:(id)a3;
- (BOOL)supportsBuddyController;
- (GCColor)leftJoyConColor;
- (GCColor)rightJoyConColor;
- (GCSController)initWithController:(id)a3;
@end

@implementation GCSController

+ (id)productCategoryLocalizationKeyForProductCategory:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:GCProductCategoryDualShock4])
  {
    v4 = @"PRODUCT_CATEGORY_DUALSHOCK4";
  }

  else if ([v3 isEqualToString:GCProductCategoryDualSense])
  {
    v4 = @"PRODUCT_CATEGORY_DUALSENSE";
  }

  else
  {
    if ([v3 isEqualToString:GCProductCategoryXboxOne])
    {
      goto LABEL_6;
    }

    if ([v3 isEqualToString:@"Xbox Elite"])
    {
      v4 = @"PRODUCT_CATEGORY_XBOX_ELITE";
      goto LABEL_11;
    }

    if ([v3 isEqualToString:@"Xbox Adaptive"])
    {
      v4 = @"PRODUCT_CATEGORY_XBOX_ADAPTIVE";
      goto LABEL_11;
    }

    if ([v3 isEqualToString:@"Xbox Series X"])
    {
LABEL_6:
      v4 = @"PRODUCT_CATEGORY_XBOX_ONE";
    }

    else if ([v3 isEqualToString:GCProductCategoryMFi])
    {
      v4 = @"PRODUCT_CATEGORY_MFI";
    }

    else if ([v3 isEqualToString:GCProductCategoryHID])
    {
      v4 = @"PRODUCT_CATEGORY_HID";
    }

    else if ([v3 containsString:@"Nintendo Switch Joy-Con"])
    {
      v4 = @"PRODUCT_CATEGORY_NINTENDO_JOY_CON";
    }

    else if ([v3 isEqualToString:@"Switch Pro Controller"])
    {
      v4 = @"PRODUCT_CATEGORY_NINTENDO_PRO_CONTROLLER";
    }

    else
    {
      v4 = @"PRODUCT_CATEGORY_GENERIC_CONTROLLER";
    }
  }

LABEL_11:

  return v4;
}

- (GCSController)initWithController:(id)a3
{
  v4 = a3;
  v5 = [v4 vendorName];
  v6 = [v4 identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v50 = self;
  v47 = v5;
  if (isKindOfClass)
  {
    v51 = [v4 identifier];
  }

  else
  {
    v51 = @"CONTROLLER";
  }

  v8 = [v4 physicalInputProfile];
  v9 = [v8 buttons];
  v10 = [v9 objectForKeyedSubscript:GCInputButtonShare];

  v11 = [v4 physicalInputProfile];
  v12 = [v11 buttons];
  v13 = [v12 objectForKeyedSubscript:GCInputButtonOptions];

  if (v10)
  {
    v14 = [GCSElement alloc];
    v15 = v10;
  }

  else
  {
    v16 = [v4 physicalInputProfile];
    v17 = [v16 buttons];
    v18 = [v17 objectForKeyedSubscript:GCInputButtonOptions];

    if (!v18)
    {
      v46 = 0;
      goto LABEL_9;
    }

    v14 = [GCSElement alloc];
    v15 = v13;
  }

  v46 = [v14 initWithElement:v15];
LABEL_9:
  v19 = [v4 physicalInputProfile];
  v20 = [v19 allButtons];
  v45 = [GCSController generateElementDictionaryFromElements:v20];

  v21 = [v4 physicalInputProfile];
  v22 = [v21 allDpads];
  v44 = [GCSController generateElementDictionaryFromElements:v22];

  v23 = [v4 physicalInputProfile];
  v24 = [v23 objectForKeyedSubscript:GCInputButtonHome];
  v25 = [v24 unmappedSfSymbolsName];

  v48 = v13;
  if (v25 && ([(__CFString *)v25 hasPrefix:@"logo"]& 1) != 0)
  {
    v43 = v25;
  }

  else
  {

    v43 = @"gamecontroller.fill";
  }

  v26 = [v4 haptics];

  v27 = [v4 light];

  v42 = +[GCSProfile newBaseProfile];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v28 = [v4 components];
  v29 = [v28 countByEnumeratingWithState:&v52 objects:v56 count:16];
  v49 = v10;
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = *v53;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v53 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v34 = *(*(&v52 + 1) + 8 * i);
        if ([v34 conformsToProtocol:&OBJC_PROTOCOL___GCControllerProductInfo])
        {
          v35 = [v34 miscellaneous];

          v31 = v35;
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v30);
  }

  else
  {
    v31 = 0;
  }

  if (v47)
  {
    v36 = v47;
  }

  else
  {
    v36 = @"GAME_CONTROLLER_DEFAULT_NAME";
  }

  v37 = [v4 detailedProductCategory];
  v38 = [GCSController productCategoryLocalizationKeyForProductCategory:v37];
  BYTE1(v41) = v27 != 0;
  LOBYTE(v41) = v26 != 0;
  v39 = [(GCSController *)v50 initWithName:v36 persistentIdentifier:v51 productCategoryKey:v38 hidden:0 shareButton:v46 buttons:v45 dpads:v44 logoSfSymbolsName:v43 supportsHaptics:v41 supportsLight:v42 baseProfile:v31 miscellaneous:?];

  return v39;
}

+ (id)generateElementDictionaryFromElements:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 remappable])
        {
          v11 = [[GCSElement alloc] initWithElement:v10];
          v12 = v11;
          if (v11)
          {
            v13 = [v11 name];
            [v4 setObject:v12 forKeyedSubscript:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (GCColor)leftJoyConColor
{
  v2 = self;
  v3 = sub_A722C(1952867692, 0xE400000000000000);

  return v3;
}

- (GCColor)rightJoyConColor
{
  v2 = self;
  v3 = sub_A722C(0x7468676972, 0xE500000000000000);

  return v3;
}

- (BOOL)supportsBuddyController
{
  v2 = self;
  v3 = [(GCSController *)v2 productCategoryKey];
  v4 = sub_D7C18();
  v6 = v5;

  if (v4 == 0xD000000000000021 && 0x80000000000E6750 == v6)
  {

    v9 = 0;
  }

  else
  {
    v8 = sub_D8118();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

@end