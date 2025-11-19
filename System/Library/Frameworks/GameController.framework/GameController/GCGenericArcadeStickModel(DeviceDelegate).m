@interface GCGenericArcadeStickModel(DeviceDelegate)
- (_GCControllerInputComponentDescription)logicalDevice:()DeviceDelegate makeControllerInputDescriptionWithIdentifier:bindings:;
@end

@implementation GCGenericArcadeStickModel(DeviceDelegate)

- (_GCControllerInputComponentDescription)logicalDevice:()DeviceDelegate makeControllerInputDescriptionWithIdentifier:bindings:
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [a1 physicalInput];
  if (v9)
  {
    v44 = v8;
    v45 = v7;
    v43 = v9;
    v10 = [v9 elements];
    v11 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = v12;
    v14 = *v48;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v47 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
          v18 = objc_opt_new();
          v19 = [v17 identifier];
          [v18 setIdentifier:v19];

          v20 = MEMORY[0x1E695DFD8];
          v21 = [v17 names];
          v22 = [v20 setWithArray:v21];
          [v18 setAliases:v22];

          v23 = [v17 localizedNameKey];
          [v18 setLocalizedName:v23];

          v24 = [v17 symbolName];
          if (v24)
          {
            v25 = MEMORY[0x1E69A06C0];
            v26 = [v17 symbolName];
            v27 = [v25 symbolWithSFSymbolsName:v26];
            [v18 setSymbol:v27];
          }

          else
          {
            [v18 setSymbol:0];
          }

          v38 = [v17 isAnalog];
          [v18 setAnalog:{objc_msgSend(v38, "BOOLValue")}];

          [v18 setEventPressedValueField:{objc_msgSend(v17, "sourcePressedValueExtendedEventFieldIndex")}];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v28 = v16;
          v18 = objc_opt_new();
          v29 = [v28 identifier];
          [v18 setIdentifier:v29];

          v30 = MEMORY[0x1E695DFD8];
          v31 = [v28 names];
          v32 = [v30 setWithArray:v31];
          [v18 setAliases:v32];

          v33 = [v28 localizedNameKey];
          [v18 setLocalizedName:v33];

          v34 = [v28 symbolName];
          if (v34)
          {
            v35 = MEMORY[0x1E69A06C0];
            v36 = [v28 symbolName];
            v37 = [v35 symbolWithSFSymbolsName:v36];
            [v18 setSymbol:v37];
          }

          else
          {
            [v18 setSymbol:0];
          }

          [v18 setAnalog:0];
          [v18 setEventUpValueField:{objc_msgSend(v28, "sourceUpExtendedEventFieldIndex")}];
          [v18 setEventRightValueField:{objc_msgSend(v28, "sourceRightExtendedEventFieldIndex")}];
          [v18 setEventDownValueField:{objc_msgSend(v28, "sourceDownExtendedEventFieldIndex")}];
          [v18 setEventLeftValueField:{objc_msgSend(v28, "sourceLeftExtendedEventFieldIndex")}];
        }

        [v11 addObject:v18];
      }

      v13 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (!v13)
      {
LABEL_20:

        v39 = objc_opt_new();
        [v39 setElements:v11];
        v8 = v44;
        v7 = v45;
        v40 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:v45 controllerInputs:v39 bindings:v44];

        v9 = v43;
        goto LABEL_22;
      }
    }
  }

  v40 = 0;
LABEL_22:

  v41 = *MEMORY[0x1E69E9840];

  return v40;
}

@end