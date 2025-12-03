@interface _GCMFiControllerCapabilites
+ (BOOL)isServiceAuthenticated:(id)authenticated;
- (char)initWithGamepadElements:(void *)elements keyboardElements:;
- (char)initWithServiceInfo:(char *)info;
- (id)description;
- (uint64_t)a;
- (uint64_t)b;
- (uint64_t)dpad;
- (uint64_t)home;
- (uint64_t)isExtendedGamepad;
- (uint64_t)isStandardGamepad;
- (uint64_t)l1;
- (uint64_t)l2;
- (uint64_t)l3;
- (uint64_t)l4;
- (uint64_t)leftThumbstick;
- (uint64_t)m1;
- (uint64_t)m2;
- (uint64_t)m3;
- (uint64_t)m4;
- (uint64_t)menu;
- (uint64_t)options;
- (uint64_t)r1;
- (uint64_t)r2;
- (uint64_t)r3;
- (uint64_t)r4;
- (uint64_t)record;
- (uint64_t)rightThumbstick;
- (uint64_t)snapshot;
- (uint64_t)x;
- (uint64_t)y;
@end

@implementation _GCMFiControllerCapabilites

+ (BOOL)isServiceAuthenticated:(id)authenticated
{
  authenticatedCopy = authenticated;
  v4 = [authenticatedCopy numberPropertyForKey:@"Authenticated"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v4 BOOLValue] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = isDeviceParentAuthenticated([authenticatedCopy service]);
  }

  return v5;
}

- (id)description
{
  selfCopy = self;
  v3 = MEMORY[0x1E696AEC0];
  if (self)
  {
    v4 = *(self + 20) & 0xF;
    buttonPresent = self->_buttonPresent;
    if (v4 == 15)
    {
      v6 = 0;
      if (~buttonPresent & 0x3E) == 0 && (buttonPresent)
      {
        v6 = *(self + 23) & 1;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v4 == 15;
    isExtendedGamepad = [(_GCMFiControllerCapabilites *)self isExtendedGamepad];
    v9 = *(selfCopy + 23);
    v10 = (v9 >> 2) & 1;
    v11 = (v9 >> 4) & 1;
    v12 = v9 & 1;
    v13 = (v9 >> 6) & 1;
    v14 = *(selfCopy + 24) & 1;
    thumbstickPresent = selfCopy->_thumbstickPresent;
    v16 = (buttonPresent >> 1) & 1;
    v17 = (buttonPresent >> 2) & 1;
    v18 = (buttonPresent >> 3) & 1;
    v19 = (~thumbstickPresent & 3) == 0;
    v20 = (buttonPresent >> 4) & 1;
    v21 = (buttonPresent >> 5) & 1;
    v22 = (buttonPresent >> 6) & 1;
    v23 = (~thumbstickPresent & 0x24) == 0;
    v24 = (buttonPresent >> 7) & 1;
    v25 = buttonPresent & 1;
    v26 = (buttonPresent >> 8) & 1;
    v27 = (buttonPresent >> 9) & 1;
    v28 = (buttonPresent >> 10) & 1;
    v29 = (buttonPresent >> 11) & 1;
    selfCopy = ((buttonPresent >> 12) & 1);
    v30 = (buttonPresent >> 13) & 1;
    v31 = (buttonPresent >> 14) & 1;
    v32 = (buttonPresent >> 15) & 1;
  }

  else
  {
    isExtendedGamepad = [(_GCMFiControllerCapabilites *)0 isExtendedGamepad];
    v31 = 0;
    v28 = 0;
    v26 = 0;
    v22 = 0;
    v20 = 0;
    v17 = 0;
    v25 = 0;
    v19 = 0;
    v14 = 0;
    v11 = 0;
    v12 = 0;
    v6 = 0;
    v10 = 0;
    v13 = 0;
    v7 = 0;
    v23 = 0;
    v16 = 0;
    v18 = 0;
    v21 = 0;
    v24 = 0;
    v27 = 0;
    v29 = 0;
    v30 = 0;
    v32 = 0;
  }

  return [v3 stringWithFormat:@"{\n\tisStandard:%d\n\tisExtended:%d\n\tHOME present:%d\n\tMENU present:%d\n\tOPTIONS present:%d\n\tRECORD present:%d\n\tSNAPSHOT present:%d\n\tdpad present:%d\n\tleftThumbstick present:%d\n\trightThumbstick present:%d\n\tA present:%d\n\tB present:%d\n\tX present:%d\n\tY present:%d\n\tL1 present:%d\n\tR1 present:%d\n\tL2 present:%d\n\tR2 present:%d\n\tL3 present:%d\n\tR3 present:%d\n\tL4 present:%d\n\tR4 present:%d\n\tM1 present:%d\n\tM2 present:%d\n\tM3 present:%d\n\tM4 present:%d\n}", v6, isExtendedGamepad, v12, v10, v11, v13, v14, v7, v19, v23, v25, v16, v17, v18, v20, v21, v22, v24, v26, v27, v28, v29, selfCopy, v30, v31, v32];
}

- (char)initWithGamepadElements:(void *)elements keyboardElements:
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a2;
  elementsCopy = elements;
  if (self)
  {
    v51.receiver = self;
    v51.super_class = _GCMFiControllerCapabilites;
    self = objc_msgSendSuper2(&v51, sel_init);
    objc_opt_class();
    v39 = elementsCopy;
    v40 = v5;
    if (objc_opt_isKindOfClass())
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v5;
      v7 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v48;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v48 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v47 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [v11 objectForKeyedSubscript:@"UsagePage"];
              v13 = [v11 objectForKeyedSubscript:@"Usage"];
              unsignedShortValue = [v12 unsignedShortValue];
              unsignedShortValue2 = [v13 unsignedShortValue];
              if (unsignedShortValue == 1)
              {
                if (unsignedShortValue2 > 0x35 || ((1 << unsignedShortValue2) & 0x27000000000000) == 0)
                {
                  v17 = unsignedShortValue2 + 112;
                  if ((unsignedShortValue2 - 144) < 4)
                  {
                    self[20] |= 1 << v17;
                    self[20] |= 16 * (__73___GCMFiControllerProfile_determineCapabilitiesWithServiceInfo_initInfo___block_invoke(unsignedShortValue2, v11) << v17);
                  }
                }

                else
                {
                  self[21] |= 1 << (unsignedShortValue2 - 48);
                  self[22] |= __73___GCMFiControllerProfile_determineCapabilitiesWithServiceInfo_initInfo___block_invoke(unsignedShortValue2, v11) << (unsignedShortValue2 - 48);
                }
              }

              else if (unsignedShortValue == 9 && unsignedShortValue2 <= 0x10)
              {
                *(self + 3) |= 1 << (unsignedShortValue2 - 1);
                *(self + 4) |= __73___GCMFiControllerProfile_determineCapabilitiesWithServiceInfo_initInfo___block_invoke(unsignedShortValue2, v11) << (unsignedShortValue2 - 1);
              }
            }
          }

          v8 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v8);
      }

      elementsCopy = v39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v19 = elementsCopy;
      v20 = [v19 countByEnumeratingWithState:&v43 objects:v52 count:16];
      v21 = 0x1E695D000uLL;
      if (!v20)
      {
        goto LABEL_53;
      }

      v22 = v20;
      v23 = *v44;
      obja = v19;
      while (1)
      {
        v24 = 0;
        do
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v43 + 1) + 8 * v24);
          v26 = *(v21 + 3872);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = [v25 objectForKeyedSubscript:@"UsagePage"];
            v28 = [v25 objectForKeyedSubscript:@"Usage"];
            unsignedShortValue3 = [v27 unsignedShortValue];
            unsignedShortValue4 = [v28 unsignedShortValue];
            if (unsignedShortValue3 != 12)
            {
              goto LABEL_48;
            }

            if (unsignedShortValue4 == 101)
            {
              v31 = -3;
              v32 = 2;
              v33 = 1;
              v34 = self + 24;
            }

            else
            {
              switch(unsignedShortValue4)
              {
                case 0xB2:
                  v31 = 127;
                  v32 = 0x80;
                  v33 = 64;
                  break;
                case 0x204:
                  v31 = -9;
                  v32 = 8;
                  v33 = 4;
                  break;
                case 0x223:
                  v31 = -3;
                  v32 = 2;
                  v33 = 1;
                  break;
                case 0x209:
                  v31 = -33;
                  v32 = 32;
                  v33 = 16;
                  break;
                default:
LABEL_48:

                  goto LABEL_49;
              }

              v34 = self + 23;
            }

            *v34 |= v33;
            if (__73___GCMFiControllerProfile_determineCapabilitiesWithServiceInfo_initInfo___block_invoke(unsignedShortValue4, v25))
            {
              v35 = v32;
            }

            else
            {
              v35 = 0;
            }

            *v34 = *v34 & v31 | v35;
            v21 = 0x1E695D000;
            v19 = obja;
            goto LABEL_48;
          }

LABEL_49:
          ++v24;
        }

        while (v22 != v24);
        v36 = [v19 countByEnumeratingWithState:&v43 objects:v52 count:16];
        v22 = v36;
        if (!v36)
        {
LABEL_53:

          elementsCopy = v39;
          v5 = v40;
          break;
        }
      }
    }
  }

  v37 = *MEMORY[0x1E69E9840];
  return self;
}

- (char)initWithServiceInfo:(char *)info
{
  v3 = a2;
  v4 = v3;
  if (info)
  {
    v5 = [v3 numberPropertyForKey:@"PrimaryUsagePage"];
    v6 = [v4 numberPropertyForKey:@"PrimaryUsage"];
    v7 = v6;
    infoCopy = 0;
    if (v5 && v6)
    {
      unsignedShortValue = [v5 unsignedShortValue];
      unsignedShortValue2 = [v7 unsignedShortValue];
      if (unsignedShortValue == 1 && unsignedShortValue2 == 5)
      {
        v13 = [v4 numberPropertyForKey:@"GameControllerType"];
        v14 = v13;
        if (v13)
        {
          unsignedIntValue = [v13 unsignedIntValue];
        }

        else
        {
          unsignedIntValue = -1;
        }

        *(info + 2) = unsignedIntValue;
        v16 = [v4 dictionaryPropertyForKey:@"GameControllerPointer"];
        v17 = [v4 dictionaryPropertyForKey:@"Keyboard"];
        v18 = [v16 objectForKeyedSubscript:@"Elements"];
        v19 = [v17 objectForKeyedSubscript:@"Elements"];
        info = [(_GCMFiControllerCapabilites *)info initWithGamepadElements:v18 keyboardElements:v19];

        infoCopy = info;
      }

      else
      {
        infoCopy = 0;
      }
    }
  }

  else
  {
    infoCopy = 0;
  }

  return infoCopy;
}

- (uint64_t)isExtendedGamepad
{
  if (result)
  {
    v1 = result;
    if (*(result + 8) == 1 && (*(result + 23) & 1) != 0)
    {
      return 1;
    }

    else if ((~*(result + 20) & 0xF) != 0)
    {
      return 0;
    }

    else
    {
      result = 0;
      v2 = *(v1 + 12);
      if (~v2 & 0x3E) == 0 && (v2)
      {
        result = 0;
        if (~v2 & 0xC0) == 0 && (*(v1 + 23))
        {
          return (~*(v1 + 21) & 0x27) == 0;
        }
      }
    }
  }

  return result;
}

- (uint64_t)home
{
  if (self)
  {
    return OUTLINED_FUNCTION_1_25(*(self + 23) & 1);
  }

  else
  {
    return OUTLINED_FUNCTION_1_25(0);
  }
}

- (uint64_t)isStandardGamepad
{
  if (!self || (~*(self + 20) & 0xF) != 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = 0;
    v2 = *(self + 12);
    if (~v2 & 0x3E) == 0 && (v2)
    {
      v1 = *(self + 23);
    }
  }

  return v1 & 1;
}

- (uint64_t)l2
{
  if (self)
  {
    return OUTLINED_FUNCTION_0_31(COERCE_DOUBLE(vand_s8(vshr_n_u32(*(self + 12), 6uLL), 0x100000001)));
  }

  else
  {
    return OUTLINED_FUNCTION_0_31(0.0);
  }
}

- (uint64_t)r2
{
  if (!self)
  {
    return OUTLINED_FUNCTION_1_25(0);
  }

  v1 = *(self + 16) >> 7;
  return OUTLINED_FUNCTION_1_25(*(self + 12) >> 7);
}

- (uint64_t)leftThumbstick
{
  if (!self)
  {
    return OUTLINED_FUNCTION_1_25(0);
  }

  v1 = (~*(self + 22) & 3) == 0;
  return OUTLINED_FUNCTION_1_25((~*(self + 21) & 3) == 0);
}

- (uint64_t)rightThumbstick
{
  if (!self)
  {
    return OUTLINED_FUNCTION_1_25(0);
  }

  v1 = (~*(self + 22) & 0x24) == 0;
  return OUTLINED_FUNCTION_1_25((~*(self + 21) & 0x24) == 0);
}

- (uint64_t)dpad
{
  if (self)
  {
    return OUTLINED_FUNCTION_1_25((~*(self + 20) & 0xF) == 0);
  }

  else
  {
    return OUTLINED_FUNCTION_1_25(0);
  }
}

- (uint64_t)a
{
  if (!self)
  {
    return OUTLINED_FUNCTION_1_25(0);
  }

  v1 = *(self + 16) & 1;
  return OUTLINED_FUNCTION_1_25(*(self + 12) & 1);
}

- (uint64_t)b
{
  if (self)
  {
    return OUTLINED_FUNCTION_0_31(COERCE_DOUBLE(vand_s8(vshr_n_u32(*(self + 12), 1uLL), 0x100000001)));
  }

  else
  {
    return OUTLINED_FUNCTION_0_31(0.0);
  }
}

- (uint64_t)x
{
  if (self)
  {
    return OUTLINED_FUNCTION_0_31(COERCE_DOUBLE(vand_s8(vshr_n_u32(*(self + 12), 2uLL), 0x100000001)));
  }

  else
  {
    return OUTLINED_FUNCTION_0_31(0.0);
  }
}

- (uint64_t)y
{
  if (self)
  {
    return OUTLINED_FUNCTION_0_31(COERCE_DOUBLE(vand_s8(vshr_n_u32(*(self + 12), 3uLL), 0x100000001)));
  }

  else
  {
    return OUTLINED_FUNCTION_0_31(0.0);
  }
}

- (uint64_t)l1
{
  if (self)
  {
    return OUTLINED_FUNCTION_0_31(COERCE_DOUBLE(vand_s8(vshr_n_u32(*(self + 12), 4uLL), 0x100000001)));
  }

  else
  {
    return OUTLINED_FUNCTION_0_31(0.0);
  }
}

- (uint64_t)r1
{
  if (self)
  {
    return OUTLINED_FUNCTION_0_31(COERCE_DOUBLE(vand_s8(vshr_n_u32(*(self + 12), 5uLL), 0x100000001)));
  }

  else
  {
    return OUTLINED_FUNCTION_0_31(0.0);
  }
}

- (uint64_t)menu
{
  if (self)
  {
    return OUTLINED_FUNCTION_1_25((*(self + 23) >> 2) & 1);
  }

  else
  {
    return OUTLINED_FUNCTION_1_25(0);
  }
}

- (uint64_t)options
{
  if (self)
  {
    return OUTLINED_FUNCTION_1_25((*(self + 23) >> 4) & 1);
  }

  else
  {
    return OUTLINED_FUNCTION_1_25(0);
  }
}

- (uint64_t)record
{
  if (self)
  {
    return OUTLINED_FUNCTION_1_25((*(self + 23) >> 6) & 1);
  }

  else
  {
    return OUTLINED_FUNCTION_1_25(0);
  }
}

- (uint64_t)snapshot
{
  if (self)
  {
    return OUTLINED_FUNCTION_1_25(*(self + 24) & 1);
  }

  else
  {
    return OUTLINED_FUNCTION_1_25(0);
  }
}

- (uint64_t)l3
{
  if (!self)
  {
    return OUTLINED_FUNCTION_1_25(0);
  }

  v1 = *(self + 17) & 1;
  return OUTLINED_FUNCTION_1_25(*(self + 13) & 1);
}

- (uint64_t)r3
{
  if (!self)
  {
    return OUTLINED_FUNCTION_2_18(0);
  }

  v1 = (*(self + 12) >> 9) & 1;
  return OUTLINED_FUNCTION_2_18((*(self + 16) >> 9) & 1);
}

- (uint64_t)l4
{
  if (!self)
  {
    return OUTLINED_FUNCTION_2_18(0);
  }

  v1 = (*(self + 12) >> 10) & 1;
  return OUTLINED_FUNCTION_2_18((*(self + 16) >> 10) & 1);
}

- (uint64_t)r4
{
  if (!self)
  {
    return OUTLINED_FUNCTION_2_18(0);
  }

  v1 = (*(self + 12) >> 11) & 1;
  return OUTLINED_FUNCTION_2_18((*(self + 16) >> 11) & 1);
}

- (uint64_t)m1
{
  if (!self)
  {
    return OUTLINED_FUNCTION_2_18(0);
  }

  v1 = (*(self + 12) >> 12) & 1;
  return OUTLINED_FUNCTION_2_18((*(self + 16) >> 12) & 1);
}

- (uint64_t)m2
{
  if (!self)
  {
    return OUTLINED_FUNCTION_2_18(0);
  }

  v1 = (*(self + 12) >> 13) & 1;
  return OUTLINED_FUNCTION_2_18((*(self + 16) >> 13) & 1);
}

- (uint64_t)m3
{
  if (!self)
  {
    return OUTLINED_FUNCTION_2_18(0);
  }

  v1 = (*(self + 12) >> 14) & 1;
  return OUTLINED_FUNCTION_2_18((*(self + 16) >> 14) & 1);
}

- (uint64_t)m4
{
  if (!self)
  {
    return OUTLINED_FUNCTION_2_18(0);
  }

  v1 = (*(self + 12) >> 15) & 1;
  return OUTLINED_FUNCTION_2_18((*(self + 16) >> 15) & 1);
}

@end