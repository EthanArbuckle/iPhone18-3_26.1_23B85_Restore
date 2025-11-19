void notificationBypass(int a1, uint64_t a2, void *a3, void *a4)
{
  if (a1 == 1060)
  {
    _handleElementDestroyed(a3);
  }

  v7 = _convertAXNotification(a1, a4);
  if (v7)
  {
    v8 = v7;
    v17 = 0;
    v9 = _convertAXNotificationForElementWithData(a1, a3, a4, &v17);
    v10 = v17;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __notificationBypass_block_invoke;
    v13[3] = &unk_278BE8550;
    v15 = v10;
    v16 = v8;
    v14 = v9;
    v11 = v10;
    v12 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v13);
  }
}

void _systemWideServerDied(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "void _systemWideServerDied(void *)";
    _os_log_impl(&dword_23D766000, v2, OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
  }

  v3 = objc_autoreleasePoolPush();
  [a1 _resetSystemWideElementAfterDelay];
  objc_autoreleasePoolPop(v3);
  v4 = *MEMORY[0x277D85DE8];
}

void _axEventHandler(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (a3 == 1060)
  {
    _handleElementDestroyed(a2);
  }

  v8 = +[AXPTranslator sharedInstance];
  v9 = [v8 runtimeDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = _convertAXNotification(a3, a4);
    if (v11)
    {
      v12 = v11;
      v21 = 0;
      v13 = _convertAXNotificationForElementWithData(a3, a2, a4, &v21);
      v14 = v21;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = ___axEventHandler_block_invoke;
      v17[3] = &unk_278BE8550;
      v19 = v14;
      v20 = v12;
      v18 = v13;
      v15 = v14;
      v16 = v13;
      dispatch_async(MEMORY[0x277D85CD0], v17);
    }
  }

  objc_autoreleasePoolPop(v7);
}

uint64_t _appLoadedAccessibilityCallback(uint64_t a1, void *a2)
{
  v3 = AXPlatformTranslationLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23D766000, v3, OS_LOG_TYPE_DEFAULT, "Received app accessibility loaded, proceeding...", v5, 2u);
  }

  return [a2 _signalAppAXReady];
}

uint64_t _convertAXPClientToiOS(uint64_t a1)
{
  if ((a1 - 2) > 9)
  {
    return 0;
  }

  else
  {
    return dword_23D77E608[a1 - 2];
  }
}

uint64_t _convertAXError(int a1)
{
  v1 = a1 + 25218;
  result = 1;
  switch(v1)
  {
    case 0:
      result = 18;
      break;
    case 1:
    case 18:
      result = 6;
      break;
    case 2:
      result = 10;
      break;
    case 3:
      result = 17;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 16;
      break;
    case 6:
      result = 15;
      break;
    case 7:
      result = 2;
      break;
    case 8:
      result = 12;
      break;
    case 9:
      result = 11;
      break;
    case 10:
      result = 14;
      break;
    case 11:
      result = 13;
      break;
    case 12:
      return result;
    case 13:
      result = 3;
      break;
    case 14:
      result = 5;
      break;
    case 15:
      result = 9;
      break;
    case 16:
      result = 8;
      break;
    case 17:
      result = 7;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t _convertAXPActionToiOS(uint64_t a1)
{
  if ((a1 - 1) > 0x10)
  {
    return 2021;
  }

  else
  {
    return dword_23D77E630[a1 - 1];
  }
}

const __CFUUID *_AXPConvertOutgoingValueWithDesiredType(void *a1, uint64_t a2)
{
  v46[7] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v7 = 0;
    goto LABEL_26;
  }

  v3 = a1;
  v4 = CFUUIDGetTypeID();
  if (v4 == CFGetTypeID(v3))
  {
    v5 = CFUUIDCreateString(*MEMORY[0x277CBECE8], v3);
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];

    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    v6 = v3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    v10 = [(__CFUUID *)v9 mutableCopy];
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v44[3] = 0;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = ___convertAXAttributedStringToAXString_block_invoke;
    v40[3] = &unk_278BE8598;
    v11 = v9;
    v41 = v11;
    v12 = v10;
    v42 = v12;
    v43 = v44;
    [(__CFUUID *)v11 enumerateAttributesUsingBlock:v40];
    v46[0] = @"NSParagraphStyle";
    v46[1] = @"NSFont";
    v46[2] = @"NSShadow";
    v46[3] = @"NSColor";
    v46[4] = @"NSTextAlternatives";
    v46[5] = @"NSTextEffect";
    v46[6] = @"NSOriginalFont";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:7];
    [v12 removeAttributes:v13];

    v14 = v42;
    v15 = v12;

    _Block_object_dispose(v44, 8);
    if (a2 && objc_opt_class() == a2 && [v15 hasAttributes])
    {
      v16 = [v15 attributedString];
    }

    else
    {
      v16 = [v15 string];
    }

    v7 = v16;

    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = ___AXPConvertOutgoingValueWithDesiredType_block_invoke;
    v39[3] = &__block_descriptor_40_e8__16__0_8lu32l8;
    v39[4] = a2;
    v8 = [(__CFUUID *)v6 ax_flatMappedArrayUsingBlock:v39];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [(__CFUUID *)v6 allKeys];
    if ([v19 count])
    {
      v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v21)
      {
        v22 = *v36;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v35 + 1) + 8 * i);
            v25 = _AXPConvertOutgoingValueWithDesiredType([(__CFUUID *)v6 objectForKey:v24], a2);
            if (v25)
            {
              [(__CFUUID *)v7 setObject:v25 forKeyedSubscript:v24];
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v35 objects:v45 count:16];
        }

        while (v21);
      }
    }

    else
    {
      v7 = v6;
    }

    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (v26 = CFURLGetTypeID(), v26 == CFGetTypeID(v6)) || (v27 = CGColorGetTypeID(), v27 == CFGetTypeID(v6)) || (v28 = CGPathGetTypeID(), v28 == CFGetTypeID(v6)))
  {
LABEL_8:
    v8 = v6;
  }

  else
  {
    TypeID = AXValueGetTypeID();
    if (TypeID != CFGetTypeID(v6))
    {
      v30 = AXUIElementGetTypeID();
      if (v30 == CFGetTypeID(v6))
      {
        v31 = +[AXPTranslator_iOS sharedInstance];
        v7 = [v31 translationObjectFromPlatformElement:v6];
      }

      else
      {
        v32 = MEMORY[0x277CBEAD8];
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Illegal outgoing type: %@[%@]", objc_opt_class(), v6];
        v34 = [v32 exceptionWithName:@"Illegal outgoing type" reason:v33 userInfo:0];

        [v34 raise];
        v7 = 0;
      }

      goto LABEL_25;
    }

    v8 = _AXPConvertAXValueRefToNSValue(v6);
  }

LABEL_9:
  v7 = v8;
LABEL_25:

LABEL_26:
  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

id _AXPiOSParameterFromPlatformParameter(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 objectForKey:@"parameter"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _AXPConvertAXValueRefToNSValue(const __AXValue *a1)
{
  Type = AXValueGetType(a1);
  v3 = 0;
  if (Type <= kAXValueTypeCGSize)
  {
    if (Type == kAXValueTypeCGPoint)
    {
      v5 = 0uLL;
      if (AXValueGetValue(a1, kAXValueTypeCGPoint, &v5))
      {
        v3 = [MEMORY[0x277CCAE60] valueWithPoint:v5];
        goto LABEL_17;
      }
    }

    else
    {
      if (Type != kAXValueTypeCGSize)
      {
        goto LABEL_17;
      }

      v5 = 0uLL;
      if (AXValueGetValue(a1, kAXValueTypeCGSize, &v5))
      {
        v3 = [MEMORY[0x277CCAE60] valueWithSize:v5];
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (Type == kAXValueTypeCGRect)
  {
    v5 = 0u;
    v6 = 0u;
    if (AXValueGetValue(a1, kAXValueTypeCGRect, &v5))
    {
      v3 = [MEMORY[0x277CCAE60] valueWithRect:{v5, v6}];
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (Type != kAXValueTypeCFRange)
  {
    goto LABEL_17;
  }

  v5 = 0uLL;
  if (!AXValueGetValue(a1, kAXValueTypeCFRange, &v5))
  {
LABEL_16:
    v3 = 0;
    goto LABEL_17;
  }

  v3 = 0;
  if ((v5 & 0x8000000000000000) == 0 && (*(&v5 + 1) & 0x8000000000000000) == 0)
  {
    v3 = [MEMORY[0x277CCAE60] valueWithRange:?];
  }

LABEL_17:

  return v3;
}

void sub_23D76BFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _AXPElementIsTabButton(void *a1, uint64_t a2)
{
  v3 = a1;
  if ((*MEMORY[0x277CE6D00] & ~a2) != 0 && (*MEMORY[0x277CE6D68] & ~a2) != 0 && (*MEMORY[0x277CE6D70] & ~a2) != 0)
  {
    goto LABEL_8;
  }

  v4 = [MEMORY[0x277CE6BA0] elementWithUIElement:v3];
  if ([v4 rowRange] == 0x7FFFFFFF)
  {

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v5 = [v4 elementParent];
  v6 = [v5 containerType];

  if (v6 != 2048)
  {
    goto LABEL_8;
  }

  v7 = 1;
LABEL_9:

  return v7;
}

void sub_23D770050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_23D770344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_23D771B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23D77294C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _AXPAXUIElementReplaceWithRemotePid(uint64_t a1, void *a2, uint64_t a3)
{
  result = 0;
  if (a1 && a2)
  {
    *a2 = 0;
    _AXUIElementIDForElement();
    if (v7 == 9999)
    {
      v8 = _AXUIElementIDForElement();
      *a2 = MEMORY[0x23EEEB800](a3, v8, v9);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _handleElementDestroyed(uint64_t a1)
{
  if (a1)
  {
    v2 = MEMORY[0x277CE6BB0];
    v3 = objc_opt_new();
    v4 = [v2 uiElementWithAXElement:a1 cache:v3];

    v5 = objc_opt_new();
    v6 = _AXUIElementIDForElement();
    [v5 setUid:{v6, v7}];
    [v5 setPid:{objc_msgSend(v4, "pid")}];
    v8 = +[AXPTranslator_iOS sharedInstance];
    v9 = v8[15];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___handleElementDestroyed_block_invoke;
    block[3] = &unk_278BE8288;
    v12 = v5;
    v10 = v5;
    dispatch_sync(v9, block);
  }
}

uint64_t _convertAXNotification(int a1, void *a2)
{
  if (a1 > 1016)
  {
    if (a1 > 1052)
    {
      if (a1 > 1059)
      {
        switch(a1)
        {
          case 5550:
            return 9;
          case 4002:
            return 7;
          case 1060:
            return 2;
        }

        return 0;
      }

      if (a1 != 1053)
      {
        if (a1 != 1054)
        {
          return 0;
        }

        return 8;
      }

      return 3;
    }

    if (a1 <= 1019)
    {
      if (a1 == 1017)
      {
        return 6;
      }

      if (a1 != 1018)
      {
        return 0;
      }

      return 3;
    }

    if (a1 != 1020)
    {
      if (a1 == 1044)
      {
        return 15;
      }

      return 0;
    }

    return 4;
  }

  if (a1 <= 1006)
  {
    if (a1 <= 1004)
    {
      if (a1 == 1000)
      {
        return 5;
      }

      if (a1 != 1001)
      {
        return 0;
      }

      return 4;
    }

    if (a1 != 1005)
    {
      if (AXPIsCatalyst())
      {
        return 11;
      }

      else
      {
        return 5;
      }
    }

    if (!a2)
    {
      return 8;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 8;
    }

    v4 = [a2 objectForKey:*MEMORY[0x277CE6E88]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 isEqualToString:*MEMORY[0x277CE6E78]])
      {
        v2 = 13;
LABEL_48:

        return v2;
      }

      if ([v4 isEqualToString:*MEMORY[0x277CE6E80]])
      {
        v2 = 14;
        goto LABEL_48;
      }
    }

    return 8;
  }

  if (a1 > 1008)
  {
    if (a1 == 1009)
    {
      return 12;
    }

    if (a1 != 1012)
    {
      return 0;
    }

    return 8;
  }

  if (a1 == 1007)
  {
    return 10;
  }

  else
  {
    return 1;
  }
}

id _convertAXNotificationForElementWithData(int a1, void *a2, void *a3, void *a4)
{
  if (!a4)
  {
    _convertAXNotificationForElementWithData_cold_1();
  }

  v8 = _AXPConvertOutgoingValueWithDesiredType(a3, 0);
  *a4 = _AXPConvertOutgoingValueWithDesiredType(a2, 0);
  if (a1 > 1019)
  {
    if (a1 == 1053)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v8 objectForKey:*MEMORY[0x277CE6D88]];
        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v10;
            *a4 = v10;

            v8 = 0;
          }
        }

        goto LABEL_15;
      }

      goto LABEL_20;
    }

    if (a1 != 1020)
    {
      goto LABEL_20;
    }
  }

  else if ((a1 - 1000) >= 2)
  {
    if (a1 == 1008)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [a3 objectForKey:@"data"];

        if (v9)
        {
          v10 = [a3 objectForKey:@"data"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 attributeValueForKey:*MEMORY[0x277CE6C70]];
            v12 = [v11 BOOLValue];

            if (v12)
            {
              v13 = 0;
            }

            else
            {
              v18 = [v8 mutableCopy];
              v19 = objc_opt_class();
              v20 = _AXPConvertOutgoingValueWithDesiredType(v10, v19);
              [v18 setObject:v20 forKeyedSubscript:@"data"];

              v13 = [v18 copy];
              v8 = v18;
            }

            v8 = v13;
          }

          goto LABEL_15;
        }
      }
    }

    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = MEMORY[0x277CE6D88];
    v15 = [v8 objectForKey:*MEMORY[0x277CE6D88]];

    if (v15)
    {
      [v8 objectForKey:*v14];
      v8 = v10 = v8;
LABEL_15:
    }
  }

LABEL_20:

  return v8;
}

void __notificationBypass_block_invoke(void *a1)
{
  v2 = +[AXPTranslator sharedInstance];
  [v2 handleNotification:a1[6] data:a1[4] associatedObject:a1[5]];
}

void ___handleElementDestroyed_block_invoke(uint64_t a1)
{
  v2 = +[AXPTranslator_iOS sharedInstance];
  [v2 _removeCacheEntriesForElement:*(a1 + 32)];
}

void ___axEventHandler_block_invoke(void *a1)
{
  v3 = +[AXPTranslator sharedInstance];
  v2 = [v3 runtimeDelegate];
  [v2 handleNotification:a1[6] data:a1[4] associatedObject:a1[5]];
}

void ___convertAXAttributedStringToAXString_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v7 = [v22 objectForKeyedSubscript:*MEMORY[0x277CE6BF8]];
  if ([v7 BOOLValue])
  {
    goto LABEL_4;
  }

  v8 = [v22 objectForKeyedSubscript:*MEMORY[0x277CE6C00]];
  if ([v8 BOOLValue])
  {

LABEL_4:
LABEL_5:
    v9 = [*(a1 + 32) string];
    v10 = [v9 substringWithRange:{a3, a4}];
    v11 = _convertDurationTime(v10);
    goto LABEL_6;
  }

  v12 = MEMORY[0x277CE6BF0];
  v13 = [v22 objectForKeyedSubscript:*MEMORY[0x277CE6BF0]];
  if ([v13 BOOLValue])
  {
    v14 = [*(a1 + 32) string];
    v15 = [v14 substringWithRange:{a3, a4}];
    v16 = [v15 componentsSeparatedByString:@":"];
    v17 = [v16 count];

    v12 = MEMORY[0x277CE6BF0];
    if (v17 == 3)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v18 = [v22 objectForKeyedSubscript:*v12];
  v19 = [v18 BOOLValue];

  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = MEMORY[0x277CCACA8];
  v9 = [*(a1 + 32) string];
  v10 = [v9 substringWithRange:{a3, a4}];
  v21 = [v20 stringWithFormat:@"%@:00", v10];
  v11 = _convertDurationTime(v21);

LABEL_6:
  if (v11)
  {
    [*(a1 + 40) replaceCharactersInRange:*(*(*(a1 + 48) + 8) + 24) + a3 withString:{a4, v11}];
    *(*(*(a1 + 48) + 8) + 24) += [v11 length] - a4;
  }

LABEL_8:
}

id _convertDurationTime(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getAXLocalizeDurationTimeSymbolLoc_ptr;
  v10 = getAXLocalizeDurationTimeSymbolLoc_ptr;
  if (!getAXLocalizeDurationTimeSymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getAXLocalizeDurationTimeSymbolLoc_block_invoke;
    v6[3] = &unk_278BE85C0;
    v6[4] = &v7;
    __getAXLocalizeDurationTimeSymbolLoc_block_invoke(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = _convertDurationTime_cold_1();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  v3 = v2(v1);

  return v3;
}

void *__getAXLocalizeDurationTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278BE85E0;
    v8 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AXLocalizeDurationTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXLocalizeDurationTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _AXPConvertAXAttribute(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"kAXLabelAttribute"])
  {
    if ([v1 caseInsensitiveCompare:@"kAXHintAttribute"])
    {
      if ([v1 caseInsensitiveCompare:@"kAXFrameAttribute"])
      {
        if ([v1 caseInsensitiveCompare:@"kAXTraitsAttribute"])
        {
          if ([v1 caseInsensitiveCompare:@"kAXSelectedTextRangeAttribute"])
          {
            if ([v1 caseInsensitiveCompare:@"kAXValueAttribute"])
            {
              if ([v1 caseInsensitiveCompare:@"kAXCenterPointAttribute"])
              {
                if ([v1 caseInsensitiveCompare:@"kAXLanguageAttribute"])
                {
                  if ([v1 caseInsensitiveCompare:@"kAXScrollStatusAttribute"])
                  {
                    if ([v1 caseInsensitiveCompare:@"kAXTextOperationsAttribute"])
                    {
                      if ([v1 caseInsensitiveCompare:@"kAXTextOperationsOperatorAttribute"])
                      {
                        if ([v1 caseInsensitiveCompare:@"kAXTouchContainerAttribute"])
                        {
                          if ([v1 caseInsensitiveCompare:@"kAXVisibleElementInListAttribute"])
                          {
                            if ([v1 caseInsensitiveCompare:@"kAXNextContainerAttribute"])
                            {
                              if ([v1 caseInsensitiveCompare:@"kAXPreviousContainerAttribute"])
                              {
                                if ([v1 caseInsensitiveCompare:@"kAXIsElementAttribute"])
                                {
                                  if ([v1 caseInsensitiveCompare:@"kAXApplicationAttribute"])
                                  {
                                    if ([v1 caseInsensitiveCompare:@"kAXAssistiveTechnologyFocusedAttribute"])
                                    {
                                      if ([v1 caseInsensitiveCompare:@"kAXSupportsActivateActionAttribute"])
                                      {
                                        if ([v1 caseInsensitiveCompare:@"kAXURLAttribute"])
                                        {
                                          if ([v1 caseInsensitiveCompare:@"kAXWindowContextIdAttribute"])
                                          {
                                            if ([v1 caseInsensitiveCompare:@"kAXFirstSiblingAttribute"])
                                            {
                                              if ([v1 caseInsensitiveCompare:@"kAXLastSiblingAttribute"])
                                              {
                                                if ([v1 caseInsensitiveCompare:@"kAXLinkedElementAttribute"])
                                                {
                                                  if ([v1 caseInsensitiveCompare:@"kAXIsVisibleAttribute"])
                                                  {
                                                    if ([v1 caseInsensitiveCompare:@"kAXHeaderElementsAttribute"])
                                                    {
                                                      v2 = 0;
                                                    }

                                                    else
                                                    {
                                                      v2 = 2026;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v2 = 2025;
                                                  }
                                                }

                                                else
                                                {
                                                  v2 = 2024;
                                                }
                                              }

                                              else
                                              {
                                                v2 = 2023;
                                              }
                                            }

                                            else
                                            {
                                              v2 = 2022;
                                            }
                                          }

                                          else
                                          {
                                            v2 = 2021;
                                          }
                                        }

                                        else
                                        {
                                          v2 = 2020;
                                        }
                                      }

                                      else
                                      {
                                        v2 = 2019;
                                      }
                                    }

                                    else
                                    {
                                      v2 = 2018;
                                    }
                                  }

                                  else
                                  {
                                    v2 = 2017;
                                  }
                                }

                                else
                                {
                                  v2 = 2016;
                                }
                              }

                              else
                              {
                                v2 = 2015;
                              }
                            }

                            else
                            {
                              v2 = 2014;
                            }
                          }

                          else
                          {
                            v2 = 2013;
                          }
                        }

                        else
                        {
                          v2 = 2012;
                        }
                      }

                      else
                      {
                        v2 = 2011;
                      }
                    }

                    else
                    {
                      v2 = 2010;
                    }
                  }

                  else
                  {
                    v2 = 2009;
                  }
                }

                else
                {
                  v2 = 2008;
                }
              }

              else
              {
                v2 = 2007;
              }
            }

            else
            {
              v2 = 2006;
            }
          }

          else
          {
            v2 = 2005;
          }
        }

        else
        {
          v2 = 2004;
        }
      }

      else
      {
        v2 = 2003;
      }
    }

    else
    {
      v2 = 2002;
    }
  }

  else
  {
    v2 = 2001;
  }

  return v2;
}

void sub_23D77447C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23D774ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23D775590(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_23D7759F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id AXPConvertValue(void *a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = AXPConvertValue(*(*(&v26 + 1) + 8 * i), a2);
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v3;
      v12 = v3;
      v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v12, "count")}];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = [v12 allKeys];
      v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v27;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v26 + 1) + 8 * j);
            v19 = [v12 objectForKeyedSubscript:v18];
            v20 = AXPConvertValue(v19, a2);

            [v5 setObject:v20 forKeyedSubscript:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v15);
      }

      v3 = v25;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = +[AXPTranslator sharedInstance];
        v22 = [v21 platformTranslator];
        v5 = [v22 platformElementFromTranslation:v3];
      }

      else
      {
        v5 = v3;
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t AXPIsCatalyst()
{
  if (AXPIsCatalyst_onceToken != -1)
  {
    AXPIsCatalyst_cold_1();
  }

  return 0;
}

uint64_t AXPIsiOSAppOnMac()
{
  if (AXPIsiOSAppOnMac_onceToken != -1)
  {
    AXPIsiOSAppOnMac_cold_1();
  }

  return 0;
}

uint64_t AXPLinkedOnOrAfterGozul()
{
  if (AXPLinkedOnOrAfterGozul_onceToken != -1)
  {
    AXPLinkedOnOrAfterGozul_cold_1();
  }

  return AXPLinkedOnOrAfterGozul_isLinkedOnOrAfterGozul;
}

uint64_t __AXPLinkedOnOrAfterGozul_block_invoke()
{
  result = dyld_program_sdk_at_least();
  AXPLinkedOnOrAfterGozul_isLinkedOnOrAfterGozul = result;
  return result;
}

uint64_t AXPIsGoodOldAppleCatalystApp()
{
  if (AXPIsGoodOldAppleCatalystApp_onceToken != -1)
  {
    AXPIsGoodOldAppleCatalystApp_cold_1();
  }

  return AXPIsGoodOldAppleCatalystApp_isGoodOldApp;
}

void __AXPIsGoodOldAppleCatalystApp_block_invoke()
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.findmy", @"com.apple.Home", @"com.apple.MobileSMS", @"com.apple.news", @"com.apple.PlaygroundsMac", @"com.apple.VoiceMemos", 0}];
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if ([v3 containsObject:v1])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasPrefix:@"com.apple.WebKit.WebContent"];
  }

  AXPIsGoodOldAppleCatalystApp_isGoodOldApp = v2;
}

uint64_t AXPIsSwiftPlaygrounds()
{
  if (AXPIsSwiftPlaygrounds_onceToken != -1)
  {
    AXPIsSwiftPlaygrounds_cold_1();
  }

  return AXPIsSwiftPlaygrounds_isSwiftPlaygrounds;
}

void __AXPIsSwiftPlaygrounds_block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  AXPIsSwiftPlaygrounds_isSwiftPlaygrounds = [v0 isEqualToString:@"com.apple.PlaygroundsMac"];
}

BOOL AXPNilOrEmptyString(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    v2 = ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && [v1 length] == 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_23D777798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return objc_opt_class();
}

__CFString *_AXPNotificationToString(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return 0;
  }

  else
  {
    return off_278BE87B8[a1];
  }
}

__CFString *_AXPActionToString(uint64_t a1)
{
  if ((a1 - 1) > 0x10)
  {
    return 0;
  }

  else
  {
    return off_278BE8838[a1 - 1];
  }
}

__CFString *_AXPAttributeToString(unint64_t a1)
{
  if (a1 > 0x81)
  {
    return 0;
  }

  else
  {
    return off_278BE88C0[a1];
  }
}

uint64_t _convertDurationTime_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __30__AXPRemoteCacheManager_start__block_invoke_2_cold_1(v0);
}