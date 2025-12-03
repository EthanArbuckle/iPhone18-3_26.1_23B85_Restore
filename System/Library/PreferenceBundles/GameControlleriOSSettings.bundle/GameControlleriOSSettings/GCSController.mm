@interface GCSController
+ (id)generateElementDictionaryFromElements:(id)elements;
+ (id)productCategoryLocalizationKeyForProductCategory:(id)category;
- (BOOL)supportsBuddyController;
- (GCColor)leftJoyConColor;
- (GCColor)rightJoyConColor;
- (GCSController)initWithController:(id)controller;
@end

@implementation GCSController

+ (id)productCategoryLocalizationKeyForProductCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:GCProductCategoryDualShock4])
  {
    v4 = @"PRODUCT_CATEGORY_DUALSHOCK4";
  }

  else if ([categoryCopy isEqualToString:GCProductCategoryDualSense])
  {
    v4 = @"PRODUCT_CATEGORY_DUALSENSE";
  }

  else
  {
    if ([categoryCopy isEqualToString:GCProductCategoryXboxOne])
    {
      goto LABEL_6;
    }

    if ([categoryCopy isEqualToString:@"Xbox Elite"])
    {
      v4 = @"PRODUCT_CATEGORY_XBOX_ELITE";
      goto LABEL_11;
    }

    if ([categoryCopy isEqualToString:@"Xbox Adaptive"])
    {
      v4 = @"PRODUCT_CATEGORY_XBOX_ADAPTIVE";
      goto LABEL_11;
    }

    if ([categoryCopy isEqualToString:@"Xbox Series X"])
    {
LABEL_6:
      v4 = @"PRODUCT_CATEGORY_XBOX_ONE";
    }

    else if ([categoryCopy isEqualToString:GCProductCategoryMFi])
    {
      v4 = @"PRODUCT_CATEGORY_MFI";
    }

    else if ([categoryCopy isEqualToString:GCProductCategoryHID])
    {
      v4 = @"PRODUCT_CATEGORY_HID";
    }

    else if ([categoryCopy containsString:@"Nintendo Switch Joy-Con"])
    {
      v4 = @"PRODUCT_CATEGORY_NINTENDO_JOY_CON";
    }

    else if ([categoryCopy isEqualToString:@"Switch Pro Controller"])
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

- (GCSController)initWithController:(id)controller
{
  controllerCopy = controller;
  vendorName = [controllerCopy vendorName];
  identifier = [controllerCopy identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  selfCopy = self;
  v47 = vendorName;
  if (isKindOfClass)
  {
    identifier2 = [controllerCopy identifier];
  }

  else
  {
    identifier2 = @"CONTROLLER";
  }

  physicalInputProfile = [controllerCopy physicalInputProfile];
  buttons = [physicalInputProfile buttons];
  v10 = [buttons objectForKeyedSubscript:GCInputButtonShare];

  physicalInputProfile2 = [controllerCopy physicalInputProfile];
  buttons2 = [physicalInputProfile2 buttons];
  v13 = [buttons2 objectForKeyedSubscript:GCInputButtonOptions];

  if (v10)
  {
    v14 = [GCSElement alloc];
    v15 = v10;
  }

  else
  {
    physicalInputProfile3 = [controllerCopy physicalInputProfile];
    buttons3 = [physicalInputProfile3 buttons];
    v18 = [buttons3 objectForKeyedSubscript:GCInputButtonOptions];

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
  physicalInputProfile4 = [controllerCopy physicalInputProfile];
  allButtons = [physicalInputProfile4 allButtons];
  v45 = [GCSController generateElementDictionaryFromElements:allButtons];

  physicalInputProfile5 = [controllerCopy physicalInputProfile];
  allDpads = [physicalInputProfile5 allDpads];
  v44 = [GCSController generateElementDictionaryFromElements:allDpads];

  physicalInputProfile6 = [controllerCopy physicalInputProfile];
  v24 = [physicalInputProfile6 objectForKeyedSubscript:GCInputButtonHome];
  unmappedSfSymbolsName = [v24 unmappedSfSymbolsName];

  v48 = v13;
  if (unmappedSfSymbolsName && ([(__CFString *)unmappedSfSymbolsName hasPrefix:@"logo"]& 1) != 0)
  {
    v43 = unmappedSfSymbolsName;
  }

  else
  {

    v43 = @"gamecontroller.fill";
  }

  haptics = [controllerCopy haptics];

  light = [controllerCopy light];

  v42 = +[GCSProfile newBaseProfile];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  components = [controllerCopy components];
  v29 = [components countByEnumeratingWithState:&v52 objects:v56 count:16];
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
          objc_enumerationMutation(components);
        }

        v34 = *(*(&v52 + 1) + 8 * i);
        if ([v34 conformsToProtocol:&OBJC_PROTOCOL___GCControllerProductInfo])
        {
          miscellaneous = [v34 miscellaneous];

          v31 = miscellaneous;
        }
      }

      v30 = [components countByEnumeratingWithState:&v52 objects:v56 count:16];
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

  detailedProductCategory = [controllerCopy detailedProductCategory];
  v38 = [GCSController productCategoryLocalizationKeyForProductCategory:detailedProductCategory];
  BYTE1(v41) = light != 0;
  LOBYTE(v41) = haptics != 0;
  v39 = [(GCSController *)selfCopy initWithName:v36 persistentIdentifier:identifier2 productCategoryKey:v38 hidden:0 shareButton:v46 buttons:v45 dpads:v44 logoSfSymbolsName:v43 supportsHaptics:v41 supportsLight:v42 baseProfile:v31 miscellaneous:?];

  return v39;
}

+ (id)generateElementDictionaryFromElements:(id)elements
{
  elementsCopy = elements;
  v4 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = elementsCopy;
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
            name = [v11 name];
            [v4 setObject:v12 forKeyedSubscript:name];
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
  selfCopy = self;
  v3 = sub_A722C(1952867692, 0xE400000000000000);

  return v3;
}

- (GCColor)rightJoyConColor
{
  selfCopy = self;
  v3 = sub_A722C(0x7468676972, 0xE500000000000000);

  return v3;
}

- (BOOL)supportsBuddyController
{
  selfCopy = self;
  productCategoryKey = [(GCSController *)selfCopy productCategoryKey];
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