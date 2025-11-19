@interface GCGenericDeviceModel(DeviceDelegate)
+ (__CFString)defaultSymbolNameForElement:()DeviceDelegate;
+ (id)defaultLocalizedNameForElement:()DeviceDelegate;
+ (uint64_t)elementsMakeValidExtendedGamepad:()DeviceDelegate;
+ (uint64_t)elementsMakeValidGamepad:()DeviceDelegate;
- (BOOL)physicalDeviceSupportsMotion:()DeviceDelegate;
- (GCHapticCapabilityGraph)physicalDeviceGetHapticCapabilityGraph:()DeviceDelegate;
- (GCMotion)logicalDevice:()DeviceDelegate makeControllerMotionWithIdentifier:;
- (_GCControllerInputComponentDescription)logicalDevice:()DeviceDelegate makeControllerInputDescriptionWithIdentifier:bindings:;
- (id)logicalDevice:()DeviceDelegate makeControllerPhysicalInputProfileDescriptionWithIdentifier:bindings:;
- (id)physicalDeviceGetHapticCapabilities:()DeviceDelegate;
- (id)respondsToSelector:()DeviceDelegate;
- (uint64_t)logicalDevice:()DeviceDelegate getSystemButtonName:sfSymbolName:needsMFiCompatibility:;
- (uint64_t)logicalDeviceControllerIsAttachedToHost:()DeviceDelegate;
@end

@implementation GCGenericDeviceModel(DeviceDelegate)

- (BOOL)physicalDeviceSupportsMotion:()DeviceDelegate
{
  v1 = [a1 driver];
  v2 = [v1 motion];
  v3 = v2 != 0;

  return v3;
}

- (id)physicalDeviceGetHapticCapabilities:()DeviceDelegate
{
  v1 = [a1 driver];
  v2 = [v1 rumble];

  if (v2)
  {
    v3 = [v2 actuators];
    v4 = [v3 gc_arrayByTransformingElementsWithOptions:0 usingBlock:&__block_literal_global_45];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GCHapticCapabilityGraph)physicalDeviceGetHapticCapabilityGraph:()DeviceDelegate
{
  v4 = a3;
  v5 = [a1 physicalDeviceGetHapticCapabilities:v4];
  v6 = [GCHapticCapabilityGraph alloc];
  v7 = [a1 driver];
  v8 = [v7 rumble];
  v9 = [v8 nodes];
  v10 = [(GCHapticCapabilityGraph *)v6 initWithActuators:v5 nodes:v9];

  return v10;
}

- (uint64_t)logicalDeviceControllerIsAttachedToHost:()DeviceDelegate
{
  v1 = [a1 isFormFitting];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)logicalDevice:()DeviceDelegate getSystemButtonName:sfSymbolName:needsMFiCompatibility:
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = [a1 physicalInput];
  v8 = v7;
  if (v7)
  {
    [v7 elements];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v35 = 0u;
    v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v28 = a4;
      v29 = a5;
      v30 = v8;
      v11 = *v33;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v13 names];
            v15 = [v14 firstObject];
            v16 = [v13 localizedNameKey];
            v17 = v16;
            if (v16)
            {
              v18 = v16;
            }

            else
            {
              v18 = [objc_opt_class() defaultLocalizedNameForElement:v15];
            }

            v19 = v18;

            v20 = [v13 symbolName];
            v21 = v20;
            if (v20)
            {
              v22 = v20;
            }

            else
            {
              v22 = [objc_opt_class() defaultSymbolNameForElement:v15];
            }

            v23 = v22;

            if ([v15 isEqualToString:@"Button Home"])
            {
              *v28 = [objc_alloc(MEMORY[0x1E69A06C8]) initWithKey:v19 sourceBundle:0];
              v25 = v23;
              *v29 = v23;

              v24 = 1;
              goto LABEL_21;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v24 = 0;
LABEL_21:
      v8 = v30;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)logicalDevice:()DeviceDelegate makeControllerPhysicalInputProfileDescriptionWithIdentifier:bindings:
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [a1 physicalInput];
  v10 = v9;
  if (!v9)
  {
    v35 = 0;
    goto LABEL_35;
  }

  v43 = v8;
  v44 = v7;
  v42 = v9;
  v11 = [v9 elements];
  v46 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v11;
  v48 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v48)
  {
    goto LABEL_29;
  }

  v47 = *v50;
  do
  {
    v12 = 0;
    do
    {
      if (*v50 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v49 + 1) + 8 * v12);
      v14 = [v13 names];
      v15 = [v14 firstObject];
      v16 = [MEMORY[0x1E695DFD8] setWithArray:v14];
      v17 = [v16 gc_setByRemovingObject:v15];

      v18 = [v13 localizedNameKey];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = [objc_opt_class() defaultLocalizedNameForElement:v15];
      }

      v21 = v20;

      v22 = [v13 symbolName];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = [objc_opt_class() defaultSymbolNameForElement:v15];
      }

      v25 = v24;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v15 isEqualToString:@"Button Home"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"Button Options"))
        {
          v26 = 49152;
        }

        else if ([v15 isEqualToString:@"Button Menu"])
        {
          v26 = 0x4000;
        }

        else if ([v15 isEqualToString:@"Button Share"])
        {
          v26 = 0x4000;
        }

        else
        {
          v26 = 2;
        }

        v27 = [v13 isAnalog];
        v28 = [v27 BOOLValue];

        v29 = -[GCDeviceButtonInputDescription initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceExtendedEventField:]([GCDeviceButtonInputDescription alloc], "initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceExtendedEventField:", v15, v17, v26, v21, v25, v28 ^ 1u, [v13 sourcePressedValueExtendedEventFieldIndex]);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_21;
        }

        v30 = [v13 isAnalog];
        v31 = [v30 BOOLValue];

        v29 = -[GCDeviceDirectionPadDescription initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceUpExtendedEventField:sourceDownExtendedEventField:sourceLeftExtendedEventField:sourceRightExtendedEventField:]([GCDeviceDirectionPadDescription alloc], "initWithName:additionalAliases:attributes:nameLocalizationKey:symbolName:sourceAttributes:sourceUpExtendedEventField:sourceDownExtendedEventField:sourceLeftExtendedEventField:sourceRightExtendedEventField:", v15, v17, 2, v21, v25, v31 ^ 1u, [v13 sourceUpExtendedEventFieldIndex], objc_msgSend(v13, "sourceDownExtendedEventFieldIndex"), objc_msgSend(v13, "sourceLeftExtendedEventFieldIndex"), objc_msgSend(v13, "sourceRightExtendedEventFieldIndex"));
      }

      v32 = v29;
      [v46 addObject:v29];

LABEL_21:
      ++v12;
    }

    while (v48 != v12);
    v33 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    v48 = v33;
  }

  while (v33);
LABEL_29:

  if ([objc_opt_class() elementsMakeValidExtendedGamepad:v46])
  {
    v34 = off_1E84182A8;
  }

  else
  {
    v36 = [objc_opt_class() elementsMakeValidGamepad:v46];
    v34 = off_1E84182B8;
    if (v36)
    {
      v34 = off_1E84182B0;
    }
  }

  v8 = v43;
  v7 = v44;
  v10 = v42;
  v37 = *v34;
  v38 = objc_alloc(objc_opt_class());
  v39 = [v46 allObjects];
  v35 = [v38 initWithIdentifier:v44 elements:v39 bindings:v43];

LABEL_35:
  v40 = *MEMORY[0x1E69E9840];

  return v35;
}

- (_GCControllerInputComponentDescription)logicalDevice:()DeviceDelegate makeControllerInputDescriptionWithIdentifier:bindings:
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [a1 physicalInput];
  if (v9)
  {
    v50 = v8;
    v51 = v7;
    v49 = v9;
    v10 = [v9 elements];
    v54 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (!v11)
    {
      goto LABEL_22;
    }

    v12 = v11;
    v13 = 0x1E69A0000uLL;
    v14 = *v56;
    while (1)
    {
      v15 = 0;
      v52 = v12;
      do
      {
        if (*v56 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v55 + 1) + 8 * v15);
        v17 = *(v13 + 1752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v13;
          v19 = v16;
          v20 = [v19 sourceTouchedValueExtendedEventFieldIndex];
          v21 = objc_opt_new();
          v22 = [v19 identifier];
          [v21 setIdentifier:v22];

          v23 = MEMORY[0x1E695DFD8];
          v24 = [v19 names];
          v25 = [v23 setWithArray:v24];
          [v21 setAliases:v25];

          v26 = [v19 localizedNameKey];
          [v21 setLocalizedName:v26];

          v27 = [v19 symbolName];
          if (v27)
          {
            v28 = MEMORY[0x1E69A06C0];
            v29 = [v19 symbolName];
            v30 = [v28 symbolWithSFSymbolsName:v29];
            [v21 setSymbol:v30];

            v12 = v52;
          }

          else
          {
            [v21 setSymbol:0];
          }

          v41 = [v19 isAnalog];
          [v21 setAnalog:{objc_msgSend(v41, "BOOLValue")}];

          [v19 pressedThreshold];
          *&v42 = v42;
          [v21 setPressedThreshold:v42];
          [v21 setEventPressedValueField:{objc_msgSend(v19, "sourcePressedValueExtendedEventFieldIndex")}];
          if ((v20 & 0x8000000000000000) == 0)
          {
            [v21 setSupportsTouch:1];
            [v19 touchedThreshold];
            *&v43 = v43;
            [v21 setTouchedThreshold:v43];
            [v21 setEventTouchValueField:{objc_msgSend(v19, "sourceTouchedValueExtendedEventFieldIndex")}];
          }

          v13 = v18;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_20;
          }

          v31 = v16;
          v21 = objc_opt_new();
          v32 = [v31 identifier];
          [v21 setIdentifier:v32];

          v33 = MEMORY[0x1E695DFD8];
          v34 = [v31 names];
          v35 = [v33 setWithArray:v34];
          [v21 setAliases:v35];

          v36 = [v31 localizedNameKey];
          [v21 setLocalizedName:v36];

          v37 = [v31 symbolName];
          if (v37)
          {
            v38 = MEMORY[0x1E69A06C0];
            v39 = [v31 symbolName];
            v40 = [v38 symbolWithSFSymbolsName:v39];
            [v21 setSymbol:v40];

            v12 = v52;
          }

          else
          {
            [v21 setSymbol:0];
          }

          v44 = [v31 isAnalog];
          [v21 setAnalog:{objc_msgSend(v44, "BOOLValue")}];

          [v21 setEventUpValueField:{objc_msgSend(v31, "sourceUpExtendedEventFieldIndex")}];
          [v21 setEventRightValueField:{objc_msgSend(v31, "sourceRightExtendedEventFieldIndex")}];
          [v21 setEventDownValueField:{objc_msgSend(v31, "sourceDownExtendedEventFieldIndex")}];
          [v21 setEventLeftValueField:{objc_msgSend(v31, "sourceLeftExtendedEventFieldIndex")}];
        }

        [v54 addObject:v21];

LABEL_20:
        ++v15;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (!v12)
      {
LABEL_22:

        v45 = objc_opt_new();
        [v45 setElements:v54];
        v8 = v50;
        v7 = v51;
        v46 = [[_GCControllerInputComponentDescription alloc] initWithIdentifier:v51 controllerInputs:v45 bindings:v50];

        v9 = v49;
        goto LABEL_24;
      }
    }
  }

  v46 = 0;
LABEL_24:

  v47 = *MEMORY[0x1E69E9840];

  return v46;
}

- (GCMotion)logicalDevice:()DeviceDelegate makeControllerMotionWithIdentifier:
{
  v5 = a4;
  v6 = [[GCMotion alloc] initWithIdentifier:v5];

  v7 = [a1 driver];
  v8 = [v7 motion];
  v9 = [v8 gyroXExpression];
  if (v9)
  {
    v10 = [a1 driver];
    v11 = [v10 motion];
    v12 = [v11 gyroYExpression];
    if (v12)
    {
      v13 = [a1 driver];
      v14 = [v13 motion];
      v15 = [v14 gyroZExpression];
      [(GCMotion *)v6 _setHasRotationRate:v15 != 0];
    }

    else
    {
      [(GCMotion *)v6 _setHasRotationRate:0];
    }
  }

  else
  {
    [(GCMotion *)v6 _setHasRotationRate:0];
  }

  [(GCMotion *)v6 _setHasAttitude:0];

  return v6;
}

- (id)respondsToSelector:()DeviceDelegate
{
  if (sel_logicalDeviceControllerIsAttachedToHost_ == a3)
  {
    v4 = [a1 isFormFitting];
    v3 = v4 != 0;
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &off_1F4EAE190;
    return objc_msgSendSuper2(&v6, sel_respondsToSelector_);
  }

  return v3;
}

+ (uint64_t)elementsMakeValidExtendedGamepad:()DeviceDelegate
{
  v3 = a3;
  v4 = [v3 member:@"Button A"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 member:@"Button B"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 member:@"Button X"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v3 member:@"Button Y"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v3 member:@"Direction Pad"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v3 member:@"Left Thumbstick"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = [v3 member:@"Right Thumbstick"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v11 = [v3 member:@"Left Shoulder"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v20 = v11;
                  v12 = [v3 member:@"Right Shoulder"];
                  objc_opt_class();
                  v21 = v12;
                  if (objc_opt_isKindOfClass())
                  {
                    v13 = [v3 member:@"Left Trigger"];
                    objc_opt_class();
                    v19 = v13;
                    if (objc_opt_isKindOfClass())
                    {
                      v14 = [v3 member:@"Right Trigger"];
                      objc_opt_class();
                      v18 = v14;
                      if (objc_opt_isKindOfClass())
                      {
                        v15 = [v3 member:{@"Button Menu", v14, v19}];
                        objc_opt_class();
                        isKindOfClass = objc_opt_isKindOfClass();
                      }

                      else
                      {
                        isKindOfClass = 0;
                      }

                      v11 = v20;
                    }

                    else
                    {
                      isKindOfClass = 0;
                      v11 = v20;
                    }
                  }

                  else
                  {
                    isKindOfClass = 0;
                    v11 = v20;
                  }
                }

                else
                {
                  isKindOfClass = 0;
                }
              }

              else
              {
                isKindOfClass = 0;
              }
            }

            else
            {
              isKindOfClass = 0;
            }
          }

          else
          {
            isKindOfClass = 0;
          }
        }

        else
        {
          isKindOfClass = 0;
        }
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (uint64_t)elementsMakeValidGamepad:()DeviceDelegate
{
  v3 = a3;
  v4 = [v3 member:@"Button A"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 member:@"Button B"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 member:@"Button X"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v3 member:@"Button Y"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v3 member:@"Direction Pad"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [v3 member:@"Left Shoulder"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = [v3 member:@"Right Shoulder"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v11 = [v3 member:@"Button Menu"];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();
              }

              else
              {
                isKindOfClass = 0;
              }
            }

            else
            {
              isKindOfClass = 0;
            }
          }

          else
          {
            isKindOfClass = 0;
          }
        }

        else
        {
          isKindOfClass = 0;
        }
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (id)defaultLocalizedNameForElement:()DeviceDelegate
{
  v3 = a3;
  if (([v3 isEqualToString:@"Button A"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Button B") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Button X") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Button Y") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Direction Pad") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Left Thumbstick") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Right Thumbstick") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Left Shoulder") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Right Shoulder") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Left Trigger") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Right Trigger") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Left Thumbstick Button") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Right Thumbstick Button") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Button Home") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Button Menu") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"Button Options") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"Button Share"))
  {
    v4 = _GCFConvertStringToLocalizedString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (__CFString)defaultSymbolNameForElement:()DeviceDelegate
{
  v3 = a3;
  if ([v3 isEqualToString:@"Button A"])
  {
    v4 = @"a.circle";
  }

  else if ([v3 isEqualToString:@"Button B"])
  {
    v4 = @"b.circle";
  }

  else if ([v3 isEqualToString:@"Button X"])
  {
    v4 = @"y.circle";
  }

  else if ([v3 isEqualToString:@"Button Y"])
  {
    v4 = @"x.circle";
  }

  else if ([v3 isEqualToString:@"Direction Pad"])
  {
    v4 = @"dpad";
  }

  else if ([v3 isEqualToString:@"Left Thumbstick"])
  {
    v4 = @"l.joystick";
  }

  else if ([v3 isEqualToString:@"Right Thumbstick"])
  {
    v4 = @"r.joystick";
  }

  else if ([v3 isEqualToString:@"Left Shoulder"])
  {
    v4 = @"l1.rectangle.roundedbottom";
  }

  else if ([v3 isEqualToString:@"Right Shoulder"])
  {
    v4 = @"r1.rectangle.roundedbottom";
  }

  else if ([v3 isEqualToString:@"Left Trigger"])
  {
    v4 = @"l2.rectangle.roundedtop";
  }

  else if ([v3 isEqualToString:@"Right Trigger"])
  {
    v4 = @"r2.rectangle.roundedtop";
  }

  else if ([v3 isEqualToString:@"Left Thumbstick Button"])
  {
    v4 = @"l.joystick.press.down";
  }

  else if ([v3 isEqualToString:@"Right Thumbstick Button"])
  {
    v4 = @"r.joystick.press.down";
  }

  else if ([v3 isEqualToString:@"Button Home"])
  {
    v4 = @"house.circle";
  }

  else if ([v3 isEqualToString:@"Button Menu"])
  {
    v4 = @"line.horizontal.3.circle";
  }

  else if ([v3 isEqualToString:@"Button Options"])
  {
    v4 = @"ellipsis.circle";
  }

  else if ([v3 isEqualToString:@"Button Share"])
  {
    v4 = @"square.and.arrow.up";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)physicalDeviceGetHapticCapabilityGraph:()DeviceDelegate .cold.1(NSObject *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    v5 = 138412290;
    v6 = a2;
    _os_log_fault_impl(&dword_1D2CD5000, a1, OS_LOG_TYPE_FAULT, "Caught exception decoding GCHapticCapabilityGraph: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end