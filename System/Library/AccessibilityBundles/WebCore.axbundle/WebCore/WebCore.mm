id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A23B2970 table:@"Accessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t _runLoopExitObserver()
{
  v0 = WebThreadPreparer;
  if (!WebThreadPreparer)
  {
    _AXAssert();
    v0 = WebThreadPreparer;
  }

  return [v0 setPreparedThisRunLoop:0];
}

void sub_29C78AFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_29C78B28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C78B790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C78C780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose((v63 - 208), 8);
  _Block_object_dispose((v63 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_29C78CE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C78D504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C78E05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C78EADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C78F590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C790118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

id _processEquationChild(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = MEMORY[0x29EDB8EA0];
    goto LABEL_29;
  }

  v3 = [v1 safeValueForKey:@"accessibilityMathType"];
  v4 = [v3 isEqualToString:@"AXMathFenceOperator"];
  v5 = MEMORY[0x29EDB8EA0];
  if ((v4 & 1) == 0)
  {
    v6 = _axMathTypeForWebMathType_onceToken;
    v7 = v3;
    if (v6 != -1)
    {
      _processEquationChild_cold_1();
    }

    v8 = [_axMathTypeForWebMathType_Mappings objectForKey:v7];

    if (!v8)
    {
      v17 = [v2 _accessibilityProcessRootEquation];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v5;
      }

      v5 = v19;

      goto LABEL_27;
    }

    v5 = [MEMORY[0x29EDB8E00] dictionary];
    [v5 setObject:v8 forKey:@"AXMType"];
    v9 = objc_autoreleasePoolPush();
    if ([v8 isEqualToString:@"Fraction"])
    {
      v10 = [v2 safeValueForKey:@"accessibilityMathNumeratorObject"];
      v11 = _processEquationChild(v10);
      [v5 setObject:v11 forKey:@"AXMNumeratorObject"];

      v12 = [v2 safeValueForKey:@"accessibilityMathDenominatorObject"];
      v13 = _processEquationChild(v12);
      [v5 setObject:v13 forKey:@"AXMDenominatorObject"];

      v14 = [v2 safeValueForKey:@"accessibilityMathLineThickness"];
      v15 = [v14 integerValue];

      v16 = [MEMORY[0x29EDBA070] numberWithInteger:v15];
      [v5 setObject:v16 forKey:@"AXMLineThickness"];
LABEL_25:

LABEL_26:
      objc_autoreleasePoolPop(v9);
LABEL_27:

      goto LABEL_28;
    }

    if (([v8 isEqualToString:@"Fenced"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Row") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Table") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"TableRow") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"TableCell"))
    {
      v16 = _retrieveChildrenFromEquation(v2);
      [v5 setObject:v16 forKey:@"AXMChildren"];
      if (![v8 isEqualToString:@"Fenced"])
      {
        goto LABEL_25;
      }

      v20 = [v2 safeValueForKey:@"accessibilityMathFencedOpenString"];
      if (v20)
      {
        [v5 setObject:v20 forKey:@"AXMOpenOperator"];
      }

      v21 = [v2 safeValueForKey:@"accessibilityMathFencedCloseString"];
      if (v21)
      {
        [v5 setObject:v21 forKey:@"AXMCloseOperator"];
      }

      goto LABEL_23;
    }

    if ([v8 isEqualToString:@"SubSuperScript"])
    {
      v23 = [v2 safeValueForKey:@"accessibilityMathBaseObject"];
      v16 = v23;
      if (v23)
      {
        v24 = _processEquationChild(v23);
        [v5 setObject:v24 forKey:@"AXMBaseObject"];
      }

      v25 = [v2 safeValueForKey:@"accessibilityMathSubscriptObject"];
      v20 = v25;
      if (v25)
      {
        v26 = _processEquationChild(v25);
        [v5 setObject:v26 forKey:@"AXMSubscriptObject"];
      }

      v27 = [v2 safeValueForKey:@"accessibilityMathSuperscriptObject"];
      v21 = v27;
      if (!v27)
      {
        goto LABEL_23;
      }

      v28 = _processEquationChild(v27);
      v29 = @"AXMSuperscriptObject";
LABEL_53:
      [v5 setObject:v28 forKey:v29];

LABEL_23:
LABEL_24:

      goto LABEL_25;
    }

    if ([v8 isEqualToString:@"UnderOver"])
    {
      v30 = [v2 safeValueForKey:@"accessibilityMathBaseObject"];
      v16 = v30;
      if (v30)
      {
        v31 = _processEquationChild(v30);
        [v5 setObject:v31 forKey:@"AXMBaseObject"];
      }

      v32 = [v2 safeValueForKey:@"accessibilityMathUnderObject"];
      v20 = v32;
      if (v32)
      {
        v33 = _processEquationChild(v32);
        [v5 setObject:v33 forKey:@"AXMUnderObject"];
      }

      v34 = [v2 safeValueForKey:@"accessibilityMathOverObject"];
      v21 = v34;
      if (!v34)
      {
        goto LABEL_23;
      }

      v28 = _processEquationChild(v34);
      v29 = @"AXMOverObject";
      goto LABEL_53;
    }

    if ([v8 isEqualToString:@"Multiscript"])
    {
      v35 = [v2 safeValueForKey:@"accessibilityMathBaseObject"];
      v16 = v35;
      if (v35)
      {
        v36 = _processEquationChild(v35);
        [v5 setObject:v36 forKey:@"AXMBaseObject"];
      }

      v37 = [v2 safeValueForKey:@"accessibilityMathPrescripts"];
      v20 = v37;
      if (v37)
      {
        v38 = _processMultiscriptArray(v37);
        [v5 setObject:v38 forKey:@"AXMMultiscriptPrescripts"];
      }

      v39 = [v2 safeValueForKey:@"accessibilityMathPostscripts"];
      v21 = v39;
      if (!v39)
      {
        goto LABEL_23;
      }

      v28 = _processMultiscriptArray(v39);
      v29 = @"AXMMultiscriptPostscripts";
      goto LABEL_53;
    }

    if ([v8 isEqualToString:@"RootOperation"])
    {
      v40 = [v7 isEqualToString:@"AXMathSquareRoot"];
      v41 = [v2 safeArrayForKey:@"accessibilityMathRadicand"];
      v16 = v41;
      if (v41)
      {
        if (v40 && [(__CFString *)v41 count]>= 2)
        {
          v42 = _retrieveChildrenFromEquation(v2);
          v43 = [MEMORY[0x29EDB8E00] dictionary];
          [v43 setObject:@"Row" forKey:@"AXMType"];
          [v43 setObject:v42 forKey:@"AXMChildren"];
        }

        else
        {
          v42 = [(__CFString *)v16 objectAtIndex:0];
          v43 = (_processEquationChild)();
        }

        [v5 setObject:v43 forKey:@"AXMRadicandObject"];
      }

      v47 = [v2 safeValueForKey:@"accessibilityMathRootIndexObject"];
      v48 = v47;
      if (v47)
      {
        v49 = v40;
      }

      else
      {
        v49 = 1;
      }

      if ((v49 & 1) == 0)
      {
        v50 = _processEquationChild(v47);
        [v5 setObject:v50 forKey:@"AXMRootIndexObject"];
      }

      goto LABEL_25;
    }

    if (([v8 isEqualToString:@"Text"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Number") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"Identifier"))
    {
      if ([v2 accessibilityElementCount] != 1)
      {
        goto LABEL_26;
      }

      v16 = [v2 accessibilityElementAtIndex:0];
      v44 = [(__CFString *)v16 accessibilityLabel];
      v45 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
      v20 = [v44 stringByTrimmingCharactersInSet:v45];

      if (![v20 length])
      {
        goto LABEL_24;
      }

      v46 = @"AXMContent";
      goto LABEL_65;
    }

    if (![v8 isEqualToString:@"Operator"])
    {
      goto LABEL_26;
    }

    v57 = [v2 accessibilityElementCount];
    if (v57 < 1)
    {
      v16 = &stru_2A23B2970;
    }

    else
    {
      v51 = 0;
      v16 = &stru_2A23B2970;
      do
      {
        v58 = [v2 accessibilityElementAtIndex:{v51, v57}];
        v52 = [v58 accessibilityLabel];
        v53 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
        v54 = [v52 stringByTrimmingCharactersInSet:v53];

        if ([v54 length])
        {
          v55 = [(__CFString *)v16 stringByAppendingString:v54];

          v16 = v55;
        }

        ++v51;
      }

      while (v57 != v51);
    }

    if (([(__CFString *)v16 isEqualToString:@"⎛⎜⎝", v57]& 1) != 0)
    {
      v56 = CFSTR("(");
    }

    else if (([(__CFString *)v16 isEqualToString:@"⎞⎟⎠"]& 1) != 0)
    {
      v56 = @"");
    }

    else if (([(__CFString *)v16 isEqualToString:@"⎡⎢⎣"]& 1) != 0)
    {
      v56 = @"[";
    }

    else if (([(__CFString *)v16 isEqualToString:@"⎤⎥⎦"]& 1) != 0)
    {
      v56 = @"]";
    }

    else if (([(__CFString *)v16 isEqualToString:@"⎧⎨⎩"]& 1) != 0)
    {
      v56 = @"{";
    }

    else
    {
      if (![(__CFString *)v16 isEqualToString:@"⎫⎬⎭"])
      {
LABEL_95:
        [v5 setObject:v16 forKey:@"AXMContent"];
        if (![(__CFString *)v16 length])
        {
          goto LABEL_25;
        }

        v20 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{-[__CFString characterAtIndex:](v16, "characterAtIndex:", 0)}];
        v46 = @"AXMUnichar";
LABEL_65:
        [v5 setObject:v20 forKey:v46];
        goto LABEL_24;
      }

      v56 = @"}";
    }

    v16 = v56;
    goto LABEL_95;
  }

LABEL_28:

LABEL_29:

  return v5;
}

void sub_29C7936E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AXPrintMarkerRangeInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = VOTLogRotor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    _AXPrintMarkerRangeInfo_cold_1(v3, v5);
  }

  v6 = VOTLogRotor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    _AXPrintMarkerRangeInfo_cold_2(v3, v4);
  }
}

void sub_29C793A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C797DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29C798144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CGPathEnumerationCallback(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x29ED41930]();
  if (v3)
  {
    v4 = v3;
    v3[2](v3, a2);
    v3 = v4;
  }
}

uint64_t __fuzzyAccessibilityHitTest_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (*(a1 + 32) == v7)
  {
    goto LABEL_13;
  }

  v15 = v7;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!v15)
    {
      goto LABEL_13;
    }

    v12 = fuzzyAccessibilityHitTest_hitQueue;
    v13 = v15;
    goto LABEL_12;
  }

  closestDistanceFromObjectCorner(v15, *(a1 + 64), *(a1 + 72));
  v9 = v8;
  if (v8 > *(*(*(a1 + 40) + 8) + 24))
  {
    goto LABEL_13;
  }

  v10 = [v15 safeValueForKey:@"accessibilityCanFuzzyHitTest"];
  if (![v10 BOOLValue])
  {

    goto LABEL_11;
  }

  v11 = [v15 isAccessibilityElement];

  if (!v11)
  {
LABEL_11:
    v12 = fuzzyAccessibilityHitTest_hitQueue;
    v13 = v15;
LABEL_12:
    [v12 addObject:v13];
    goto LABEL_13;
  }

  *(*(*(a1 + 40) + 8) + 24) = v9;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (*(a1 + 80) == 0.0)
  {
    *a4 = 1;
  }

LABEL_13:

  return MEMORY[0x2A1C71098]();
}

uint64_t closestDistanceFromObjectCorner(void *a1, CGFloat a2, CGFloat a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = [a1 safeValueForKey:@"accessibilityElementRect"];
  [v5 rectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v34.origin.x = v7;
  v34.origin.y = v9;
  v34.size.width = v11;
  v34.size.height = v13;
  v33.x = a2;
  v33.y = a3;
  result = CGRectContainsPoint(v34, v33);
  if ((result & 1) == 0)
  {
    MEMORY[0x2A1C7C4A8](0.0);
    *v21 = v9;
    v15 = v21;
    *&v21[1] = v7 + v11;
    *&v21[2] = v9;
    *&v21[3] = v7;
    *&v21[4] = v9 + v13;
    *&v21[5] = v7 + v11;
    *&v21[6] = v9 + v13;
    v22 = v7 + v11 * 0.5;
    v23 = v9;
    v24 = v22;
    v25 = v9 + v13;
    v26 = v7;
    v27 = v9 + v13 * 0.5;
    v28 = v7 + v11;
    v29 = v27;
    v30 = v22;
    v31 = v27;
    v16 = 1.79769313e308;
    v17 = 9;
    v18 = 1.79769313e308;
    v19 = 1.79769313e308;
    do
    {
      result = AX_CGPointGetDistanceToPoint();
      if (v20 >= v16)
      {
        if (v20 >= v18)
        {
          if (v20 < v19)
          {
            v19 = v20;
          }
        }

        else
        {
          v18 = v20;
        }
      }

      else
      {
        v16 = v20;
      }

      v15 += 2;
      --v17;
    }

    while (v17);
  }

  return result;
}

id _retrieveChildrenFromEquation(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x29EDB8DE8] array];
  v3 = [v1 accessibilityElementCount];
  if (v3 >= 1)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [v1 accessibilityElementAtIndex:i];
      v7 = _processEquationChild();

      if ([v7 count])
      {
        [v2 addObject:v7];
      }
    }
  }

  return v2;
}

id _processMultiscriptArray(void *a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v1 = a1;
  v15 = [MEMORY[0x29EDB8DE8] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v1;
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        v7 = [v6 objectForKey:@"AXMSubscriptObject"];
        v8 = _processEquationChild();
        v9 = [v6 objectForKey:@"AXMSuperscriptObject"];
        v10 = _processEquationChild();
        v11 = [MEMORY[0x29EDB8E00] dictionary];
        v12 = v11;
        if (v7)
        {
          [v11 setObject:v8 forKey:@"AXMSubscriptObject"];
          [v12 setObject:v10 forKey:@"AXMSuperscriptObject"];
        }

        [v15 addObject:v12];
      }

      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  return v15;
}

void ___axMathTypeForWebMathType_block_invoke()
{
  v0 = _axMathTypeForWebMathType_Mappings;
  _axMathTypeForWebMathType_Mappings = &unk_2A23B6EA0;
}

void _AXUIInstallBaseCategories()
{
  if (_AXUIInstallBaseCategories_onceToken != -1)
  {
    _AXUIInstallBaseCategories_cold_1();
  }
}

id AXWebNotificationWithName(void *a1)
{
  v1 = a1;
  v2 = _NotificationMap();
  v3 = [v2 valueForKey:v1];

  return v3;
}

id _NotificationMap()
{
  if (_NotificationMap_onceToken != -1)
  {
    _NotificationMap_cold_1();
  }

  v1 = _NotificationMap_notificationsMap;

  return v1;
}

id AXWebNotificationName(void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = a1;
  _NotificationMap();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v2 objectForKeyedSubscript:{v6, v10}];
        v8 = [v7 isEqual:v1];

        if (v8)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

void _AXPrintMarkerRangeInfo_cold_1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v3[0] = 67109120;
  v3[1] = [a1 count];
  _os_log_debug_impl(&dword_29C788000, a2, OS_LOG_TYPE_DEBUG, "startRange.count = %d", v3, 8u);
}

void _AXPrintMarkerRangeInfo_cold_2(void *a1, void *a2)
{
  v4 = [a1 firstObject];
  [a2 positionForTextMarker:v4];
  v5 = [a1 lastObject];
  [a2 positionForTextMarker:v5];
  v6 = [a2 stringForTextMarkers:a1];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x18u);
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2A1C59AA8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2A1C59AB0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59B60](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x2A1C5B3F0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}