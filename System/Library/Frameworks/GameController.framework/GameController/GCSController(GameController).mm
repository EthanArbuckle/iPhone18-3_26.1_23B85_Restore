@interface GCSController(GameController)
+ (__CFString)productCategoryLocalizationKeyForProductCategory:()GameController;
+ (id)generateElementDictionaryFromElements:()GameController;
- (id)initWithController:()GameController;
@end

@implementation GCSController(GameController)

+ (__CFString)productCategoryLocalizationKeyForProductCategory:()GameController
{
  v3 = a3;
  if ([v3 isEqualToString:@"DualShock 4"])
  {
    v4 = @"PRODUCT_CATEGORY_DUALSHOCK4";
  }

  else if ([v3 isEqualToString:@"DualSense"])
  {
    v4 = @"PRODUCT_CATEGORY_DUALSENSE";
  }

  else
  {
    if ([v3 isEqualToString:@"Xbox One"])
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

    else if ([v3 isEqualToString:@"MFi"])
    {
      v4 = @"PRODUCT_CATEGORY_MFI";
    }

    else if ([v3 isEqualToString:@"HID"])
    {
      v4 = @"PRODUCT_CATEGORY_HID";
    }

    else if ([v3 isEqualToString:@"Switch JoyCon"])
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

- (id)initWithController:()GameController
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a3;
  vendorName = [v3 vendorName];
  identifier = [v3 identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v54 = vendorName;
  if (isKindOfClass)
  {
    identifier2 = [v3 identifier];
  }

  else
  {
    identifier2 = @"CONTROLLER";
  }

  physicalInputProfile = [v3 physicalInputProfile];
  buttons = [physicalInputProfile buttons];
  v9 = [buttons objectForKeyedSubscript:@"Button Share"];

  physicalInputProfile2 = [v3 physicalInputProfile];
  buttons2 = [physicalInputProfile2 buttons];
  v12 = [buttons2 objectForKeyedSubscript:@"Button Options"];

  if (v9)
  {
    v13 = objc_alloc(MEMORY[0x1E69A0738]);
    v14 = v9;
  }

  else
  {
    physicalInputProfile3 = [v3 physicalInputProfile];
    buttons3 = [physicalInputProfile3 buttons];
    v17 = [buttons3 objectForKeyedSubscript:@"Button Options"];

    if (!v17)
    {
      v49 = 0;
      goto LABEL_9;
    }

    v13 = objc_alloc(MEMORY[0x1E69A0738]);
    v14 = v12;
  }

  v49 = [v13 initWithElement:v14];
LABEL_9:
  v18 = MEMORY[0x1E69A0728];
  physicalInputProfile4 = [v3 physicalInputProfile];
  allButtons = [physicalInputProfile4 allButtons];
  v48 = [v18 generateElementDictionaryFromElements:allButtons];

  v21 = MEMORY[0x1E69A0728];
  physicalInputProfile5 = [v3 physicalInputProfile];
  allDpads = [physicalInputProfile5 allDpads];
  v47 = [v21 generateElementDictionaryFromElements:allDpads];

  physicalInputProfile6 = [v3 physicalInputProfile];
  v25 = [physicalInputProfile6 objectForKeyedSubscript:@"Button Home"];
  unmappedSfSymbolsName = [v25 unmappedSfSymbolsName];

  v51 = v9;
  if (!unmappedSfSymbolsName || ([(__CFString *)unmappedSfSymbolsName hasPrefix:@"logo"]& 1) == 0)
  {

    unmappedSfSymbolsName = @"gamecontroller.fill";
  }

  v46 = unmappedSfSymbolsName;
  haptics = [v3 haptics];

  light = [v3 light];

  newBaseProfile = [MEMORY[0x1E69A0748] newBaseProfile];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  components = [v3 components];
  v30 = [components countByEnumeratingWithState:&v55 objects:v59 count:16];
  v50 = v12;
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    v33 = *v56;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v56 != v33)
        {
          objc_enumerationMutation(components);
        }

        v35 = *(*(&v55 + 1) + 8 * i);
        if ([v35 conformsToProtocol:&unk_1F4EA0998])
        {
          miscellaneous = [v35 miscellaneous];

          v32 = miscellaneous;
        }
      }

      v31 = [components countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v31);
  }

  else
  {
    v32 = 0;
  }

  v37 = light != 0;

  v38 = MEMORY[0x1E69A0728];
  detailedProductCategory = [v3 detailedProductCategory];
  v40 = [v38 productCategoryLocalizationKeyForProductCategory:detailedProductCategory];
  BYTE1(v44) = v37;
  LOBYTE(v44) = haptics != 0;
  v41 = [self initWithName:v54 persistentIdentifier:identifier2 productCategoryKey:v40 hidden:0 shareButton:v49 buttons:v48 dpads:v47 logoSfSymbolsName:v46 supportsHaptics:v44 supportsLight:newBaseProfile baseProfile:v32 miscellaneous:?];

  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

+ (id)generateElementDictionaryFromElements:()GameController
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 remappable])
        {
          v11 = [objc_alloc(MEMORY[0x1E69A0738]) initWithElement:v10];
          v12 = v11;
          if (v11)
          {
            name = [v11 name];
            [v4 setObject:v12 forKeyedSubscript:name];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

@end