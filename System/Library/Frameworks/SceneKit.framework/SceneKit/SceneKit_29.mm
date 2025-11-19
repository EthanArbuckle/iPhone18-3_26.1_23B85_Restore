uint64_t SCNCopyValueFromObjCProperty(void *a1, void *a2)
{
  v4 = objc_opt_class();
  v5 = SCNBaseTypeOfObjCProperty(v4, a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [a1 valueForKey:a2];
  if (v7)
  {
    v8 = v7;
    v9 = C3DValueCreate(v6, 1);
    Bytes = C3DValueGetBytes(v9);
    if (SCNWriteValueToTypedBytes(v8, Bytes, v6))
    {
      return v9;
    }

    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      SCNCopyValueFromObjCProperty_cold_1(a2, a1, v11);
    }

    CFRelease(v9);
    return 0;
  }

  return C3DValueCreateDefault(v6);
}

NSUInteger SCNObject_resolveInstanceMethod(objc_class *a1, SEL aSelector)
{
  v4 = NSStringFromSelector(aSelector);
  v5 = [(NSString *)v4 hasPrefix:@"set"];
  if (!v5)
  {
    result = [(NSString *)v4 length];
    if (!result)
    {
      return result;
    }

    outCount = 0;
    v13 = class_copyMethodList(a1, &outCount);
    if (v13)
    {
      v14 = v13;
      v15 = [[(NSString *)v4 substringWithRange:0 capitalizedString];
      if ([(NSString *)v4 length]< 2)
      {
        v16 = &stru_282DCC058;
      }

      else
      {
        v16 = [(NSString *)v4 substringFromIndex:1];
      }

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"is%@%@", v15, v16];
      if (outCount)
      {
        v18 = v17;
        v19 = 0;
        while (1)
        {
          Name = method_getName(v14[v19]);
          if ([v18 isEqualToString:NSStringFromSelector(Name)])
          {
            break;
          }

          if (++v19 >= outCount)
          {
            goto LABEL_13;
          }
        }

        free(v14);
        return 1;
      }

LABEL_13:
      free(v14);
    }

    result = SCNBaseTypeOfObjCProperty(a1, v4);
    if (!result)
    {
      return result;
    }

    v21 = result - 1;
    v8 = result;
    if (((0x27FFu >> v21) & 1) == 0)
    {
LABEL_17:
      v22 = scn_default_log();
      result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if (result)
      {
        SCNObject_resolveInstanceMethod_cold_1(v8, v22);
        return 0;
      }

      return result;
    }

    v12 = qword_21C2A3DC8[v21];
    v10 = off_282DC7D08[v21];
LABEL_30:
    class_addMethod(a1, aSelector, v10, (&method_encodings[2 * v12])[!v5]);
    return 1;
  }

  v6 = propertyNameForSetter(v4);
  v7 = SCNBaseTypeOfObjCProperty(a1, v6);
  v8 = v7;
  v9 = v7;
  v10 = SCNFloat_setter;
  result = 0;
  v12 = v8;
  switch(v9)
  {
    case 0u:
      return result;
    case 1u:
      goto LABEL_30;
    case 2u:
      v10 = SCNInteger_setter;
      v12 = 2;
      goto LABEL_30;
    case 3u:
      v10 = SCNBoolean_setter;
      v12 = 3;
      goto LABEL_30;
    case 4u:
      v10 = SCNChar_setter;
      v12 = 4;
      goto LABEL_30;
    case 5u:
      v10 = SCNPointer_setter;
      v12 = 5;
      goto LABEL_30;
    case 6u:
      v10 = SCNDouble_setter;
      v12 = 6;
      goto LABEL_30;
    case 7u:
      v10 = SCNC3DFloat_setter;
      v12 = 7;
      goto LABEL_30;
    case 8u:
      v10 = SCNVector2_setter;
      v12 = 8;
      goto LABEL_30;
    case 9u:
      v10 = SCNVector3_setter;
      v12 = 9;
      goto LABEL_30;
    case 0xAu:
      v10 = SCNVector4_setter;
      v12 = 10;
      goto LABEL_30;
    case 0xBu:
      v10 = SCNMatrix4x4_setter;
      v12 = 11;
      goto LABEL_30;
    case 0xEu:
      v10 = SCNShort_setter;
      v12 = 14;
      goto LABEL_30;
    default:
      goto LABEL_17;
  }

  return result;
}

uint64_t propertyNameForSetter(void *a1)
{
  v1 = [a1 UTF8String];
  v2 = strlen(v1);
  v3 = malloc_type_malloc(v2 - 3, 0x100004077774924uLL);
  v2 -= 4;
  memcpy(v3, v1 + 3, v2);
  *v3 = __tolower(*v3);
  v3[v2] = 0;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  free(v3);
  return v4;
}

uint64_t SCNFloat_setter(void *a1, SEL aSelector, float a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  *&v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];

  return [a1 setValue:v8 forUndefinedKey:v6];
}

uint64_t SCNInteger_setter(void *a1, SEL aSelector, uint64_t a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:a3];

  return [a1 setValue:v7 forUndefinedKey:v6];
}

uint64_t SCNBoolean_setter(void *a1, SEL aSelector, uint64_t a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a3];

  return [a1 setValue:v7 forUndefinedKey:v6];
}

uint64_t SCNChar_setter(void *a1, SEL aSelector, uint64_t a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  v7 = [MEMORY[0x277CCABB0] numberWithChar:a3];

  return [a1 setValue:v7 forUndefinedKey:v6];
}

uint64_t SCNDouble_setter(void *a1, SEL aSelector, double a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3];

  return [a1 setValue:v7 forUndefinedKey:v6];
}

uint64_t SCNC3DFloat_setter(void *a1, SEL aSelector, float a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  *&v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];

  return [a1 setValue:v8 forUndefinedKey:v6];
}

uint64_t SCNVector2_setter(void *a1, SEL aSelector, double a3, double a4)
{
  v7 = NSStringFromSelector(aSelector);
  v8 = propertyNameForSetter(v7);
  v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a3, a4}];

  return [a1 setValue:v9 forUndefinedKey:v8];
}

uint64_t SCNVector3_setter(void *a1, SEL aSelector, float a3, float a4, float a5)
{
  v9 = NSStringFromSelector(aSelector);
  v10 = propertyNameForSetter(v9);
  *&v11 = a3;
  *&v12 = a4;
  *&v13 = a5;
  v14 = [MEMORY[0x277CCAE60] valueWithSCNVector3:{v11, v12, v13}];

  return [a1 setValue:v14 forUndefinedKey:v10];
}

uint64_t SCNVector4_setter(void *a1, SEL aSelector, float a3, float a4, float a5, float a6)
{
  v11 = NSStringFromSelector(aSelector);
  v12 = propertyNameForSetter(v11);
  *&v13 = a3;
  *&v14 = a4;
  *&v15 = a5;
  *&v16 = a6;
  v17 = [MEMORY[0x277CCAE60] valueWithSCNVector4:{v13, v14, v15, v16}];

  return [a1 setValue:v17 forUndefinedKey:v12];
}

uint64_t SCNMatrix4x4_setter(void *a1, SEL aSelector, _OWORD *a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  v7 = a3[1];
  v10[0] = *a3;
  v10[1] = v7;
  v8 = a3[3];
  v10[2] = a3[2];
  v10[3] = v8;
  return [a1 setValue:objc_msgSend(MEMORY[0x277CCAE60] forUndefinedKey:{"valueWithSCNMatrix4:", v10), v6}];
}

uint64_t SCNShort_setter(void *a1, SEL aSelector, uint64_t a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);
  v7 = [MEMORY[0x277CCABB0] numberWithShort:a3];

  return [a1 setValue:v7 forUndefinedKey:v6];
}

uint64_t SCNPointer_setter(void *a1, SEL aSelector, uint64_t a3)
{
  v5 = NSStringFromSelector(aSelector);
  v6 = propertyNameForSetter(v5);

  return [a1 setValue:a3 forUndefinedKey:v6];
}

uint64_t SCNFloat_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 floatValue];
}

uint64_t SCNInteger_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 intValue];
}

uint64_t SCNBoolean_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 BOOLValue];
}

uint64_t SCNChar_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 charValue];
}

uint64_t SCNDouble_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 doubleValue];
}

uint64_t SCNC3DFloat_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 floatValue];
}

uint64_t SCNVector2_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 CGPointValue];
}

uint64_t SCNVector3_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 SCNVector3Value];
}

uint64_t SCNVector4_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 SCNVector4Value];
}

double SCNMatrix4x4_getter@<D0>(SEL aSelector@<X1>, void *a2@<X0>, _OWORD *a3@<X8>)
{
  v4 = [a2 valueForUndefinedKey:NSStringFromSelector(aSelector)];
  if (v4)
  {

    [v4 SCNMatrix4Value];
  }

  else
  {
    result = 0.0;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t SCNShort_getter(void *a1, SEL aSelector)
{
  v2 = [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return [v2 shortValue];
}

uint64_t SCNPointer_getter(void *a1, SEL aSelector)
{
  [a1 valueForUndefinedKey:NSStringFromSelector(aSelector)];

  return objc_opt_self();
}

void C3DShaderSourceParserParseSource(CFStringRef theString, uint64_t a2, int a3)
{
  v5 = *MEMORY[0x277CBECE8];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], theString, @"\n");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  Mutable = CFStringCreateMutable(v5, 0);
  *(a2 + 72) = 0;
  if (Count < 1)
  {
    goto LABEL_46;
  }

  v9 = 0;
  v10 = 4;
  do
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v9);
      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"//"))
      {
        goto LABEL_13;
      }

      if (a3)
      {
        if (!C3DSourceCodeHasPrefix(ValueAtIndex, @"uniform"))
        {
          goto LABEL_13;
        }

        v12 = ValueAtIndex;
        v13 = a2;
        v14 = 1;
        goto LABEL_7;
      }

      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"#pragma opaque"))
      {
        v15 = *(a2 + 72) | 1;
LABEL_12:
        *(a2 + 72) = v15;
        goto LABEL_13;
      }

      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"#pragma transparent"))
      {
        v15 = *(a2 + 72) | 2;
        goto LABEL_12;
      }

      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"uniform"))
      {
        v12 = ValueAtIndex;
        v13 = a2;
        v14 = 0;
LABEL_7:
        __analyseUniformDeclaration(v12, v13, v14);
        goto LABEL_13;
      }

      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"#pragma declaration"))
      {
        v10 = 0;
        goto LABEL_13;
      }

      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"#pragma arguments"))
      {
        if (v10 == 4 && CFStringGetLength(Mutable))
        {
          CFStringAppend(*a2, Mutable);
          CFStringReplaceAll(Mutable, &stru_282DCC058);
        }

        goto LABEL_23;
      }

      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"#pragma varyings"))
      {
        if (v10 == 4 && CFStringGetLength(Mutable))
        {
          CFStringAppend(*a2, Mutable);
          CFStringReplaceAll(Mutable, &stru_282DCC058);
        }

        v10 = 2;
        goto LABEL_13;
      }

      if (C3DSourceCodeHasPrefix(ValueAtIndex, @"#pragma body"))
      {
        break;
      }

      if (v10 <= 1)
      {
        if (v10)
        {
          __analyseArgumentDeclaration(ValueAtIndex, a2);
LABEL_23:
          v10 = 1;
          goto LABEL_13;
        }

        __analyseStandardUniformUsage(ValueAtIndex, a2);
        CFStringAppend(*a2, ValueAtIndex);
        v16 = *a2;
        goto LABEL_40;
      }

      if (v10 == 2)
      {
        __analyseVaryingDeclaration(ValueAtIndex, a2);
        goto LABEL_13;
      }

      if (v10 == 3)
      {
        __analyseStandardUniformUsage(ValueAtIndex, a2);
        CFStringAppend(*(a2 + 8), ValueAtIndex);
        v16 = *(a2 + 8);
LABEL_40:
        CFStringAppend(v16, @"\n");
        goto LABEL_13;
      }

      __analyseStandardUniformUsage(ValueAtIndex, a2);
      CFStringAppend(Mutable, ValueAtIndex);
      CFStringAppend(Mutable, @"\n");
      ++v9;
      v10 = 4;
      if (v9 == Count)
      {
        goto LABEL_46;
      }
    }

    if (v10 == 4 && CFStringGetLength(Mutable))
    {
      CFStringAppend(*a2, Mutable);
      CFStringReplaceAll(Mutable, &stru_282DCC058);
    }

    v10 = 3;
LABEL_13:
    ++v9;
  }

  while (v9 != Count);
  if (v10 == 4)
  {
LABEL_46:
    if (CFStringGetLength(Mutable))
    {
      CFStringAppend(*(a2 + 8), Mutable);
      CFStringReplaceAll(Mutable, &stru_282DCC058);
    }
  }

  CFRelease(Mutable);

  CFRelease(ArrayBySeparatingStrings);
}

void __analyseUniformDeclaration(const __CFString *a1, uint64_t a2, char a3)
{
  memset(v27, 0, 240);
  Length = CFStringGetLength(a1);
  C3DStringTokenizerInit(v27, a1, 0, Length, 1);
  C3DStringTokenizerAdvanceToNextToken(v27);
  if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(v27))
  {
    C3DStringTokenizerAdvanceToNextToken(v27);
  }

  v28.location = C3DStringTokenizerGetCurrentTokenRange(v27);
  v28.length = v6;
  if (CFStringCompareWithOptions(a1, @"uniform", v28, 0))
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __analyseUniformDeclaration_cold_1(a1, v7);
    }

    return;
  }

  if ((a3 & 1) == 0)
  {
    CFStringAppendFormat(*a2, 0, @"%@\n", a1);
  }

  if (C3DStringTokenizerAdvanceToNextToken(v27))
  {
    v24 = 0;
    alloc = *MEMORY[0x277CBECE8];
    while (1)
    {
      v8 = v24;
      if (v24)
      {
        goto LABEL_51;
      }

      if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(v27))
      {
        C3DStringTokenizerAdvanceToNextToken(v27);
      }

      v29.location = C3DStringTokenizerGetCurrentTokenRange(v27);
      v29.length = v9;
      v10 = CFStringCreateWithSubstring(alloc, a1, v29);
      v11 = v10;
      v12 = *(a2 + 76) ? C3DBaseTypeFromGLSLString(v10) : C3DBaseTypeFromMetalString(v10);
      v8 = v12;
      CFRelease(v11);
      C3DStringTokenizerAdvanceToNextToken(v27);
      if (v8)
      {
LABEL_51:
        if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(v27))
        {
          C3DStringTokenizerAdvanceToNextToken(v27);
        }

        v30.location = C3DStringTokenizerGetCurrentTokenRange(v27);
        v30.length = v13;
        v14 = CFStringCreateWithSubstring(alloc, a1, v30);
        CFDictionarySetValue(*(a2 + 24), v14, v8);
        CFRelease(v14);
      }

      if (C3DStringTokenizerAdvanceToNextToken(v27))
      {
        break;
      }

LABEL_46:
      if ((C3DStringTokenizerAdvanceToNextToken(v27) & 1) == 0)
      {
        return;
      }
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      CurrentTokenRange = C3DStringTokenizerGetCurrentTokenRange(v27);
      v21 = v19;
      if (v17)
      {
        v31.location = CurrentTokenRange;
        v31.length = v19;
        if (CFStringCompareWithOptions(a1, @"/", v31, 0) == kCFCompareEqualTo)
        {
          v22 = 0;
          v16 = !v15;
          goto LABEL_39;
        }

        v32.location = CurrentTokenRange;
        v32.length = v21;
        v22 = 0;
        v15 = CFStringCompareWithOptions(a1, @"*", v32, 0) == kCFCompareEqualTo;
        v16 = 1;
      }

      else
      {
        v33.location = CurrentTokenRange;
        v33.length = v19;
        if (CFStringCompareWithOptions(a1, @";", v33, 0) == kCFCompareEqualTo)
        {
          C3DStringTokenizerAdvanceToNextToken(v27);
          if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(v27))
          {
            C3DStringTokenizerAdvanceToNextToken(v27);
          }

          v39.location = C3DStringTokenizerGetCurrentTokenRange(v27);
          v39.length = v23;
          if (CFStringCompareWithOptions(a1, @"uniform", v39, 0) == kCFCompareEqualTo)
          {
            v24 = 0;
            goto LABEL_46;
          }

          return;
        }

        v34.location = CurrentTokenRange;
        v34.length = v21;
        if (CFStringCompareWithOptions(a1, @"/", v34, 0) == kCFCompareEqualTo)
        {
          if (v16)
          {
            return;
          }

          v16 = 0;
          v15 = 0;
          v22 = 1;
          goto LABEL_40;
        }

        v35.location = CurrentTokenRange;
        v35.length = v21;
        if (CFStringCompareWithOptions(a1, @"*", v35, 0))
        {
          v36.location = CurrentTokenRange;
          v36.length = v21;
          if (CFStringCompareWithOptions(a1, @"("), v36, 0)
          {
            v37.location = CurrentTokenRange;
            v37.length = v21;
            if (CFStringCompareWithOptions(a1, @""), v37, 0) == kCFCompareEqualTo)
            {
              v18 = 0;
LABEL_38:
              v16 = 0;
              v22 = 0;
LABEL_39:
              v15 = 0;
              goto LABEL_40;
            }

            v38.location = CurrentTokenRange;
            v38.length = v21;
            if (CFStringCompareWithOptions(a1, @",", v38, 0))
            {
              goto LABEL_38;
            }

            if ((v18 & 1) == 0)
            {
              v24 = v8;
              goto LABEL_46;
            }
          }

          v16 = 0;
          v22 = 0;
          v15 = 0;
          v18 = 1;
        }

        else
        {
          v22 = 0;
          v15 = 1;
        }
      }

LABEL_40:
      v17 = v16;
      v16 = v22;
      if ((C3DStringTokenizerAdvanceToNextToken(v27) & 1) == 0)
      {
        goto LABEL_46;
      }
    }
  }
}

uint64_t __analyseStandardUniformUsage(const __CFString *a1, uint64_t a2)
{
  memset(v18, 0, 240);
  Length = CFStringGetLength(a1);
  C3DStringTokenizerInit(v18, a1, 0, Length, 1);
  StandardUniforms = C3DShaderGetStandardUniforms();
  result = C3DStringTokenizerAdvanceToNextToken(v18);
  if (result)
  {
    v7 = 0;
    v8 = *MEMORY[0x277CBECE8];
    while (1)
    {
      if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(v18))
      {
        C3DStringTokenizerAdvanceToNextToken(v18);
      }

      CurrentTokenRange = C3DStringTokenizerGetCurrentTokenRange(v18);
      v11 = v10;
      v19.location = CurrentTokenRange;
      v19.length = v10;
      result = CFStringCompareWithOptions(a1, @"/", v19, 0);
      v12 = result == 0;
      if (!result)
      {
        if (v7)
        {
          return result;
        }

        goto LABEL_14;
      }

      v20.location = CurrentTokenRange;
      v20.length = v11;
      if (CFStringCompareWithOptions(a1, @"scn_node", v20, 0))
      {
        v21.location = CurrentTokenRange;
        v21.length = v11;
        if (CFStringCompareWithOptions(a1, @"scn_frame", v21, 0))
        {
          goto LABEL_10;
        }
      }

      C3DStringTokenizerAdvanceToNextToken(v18);
      v22.location = C3DStringTokenizerGetCurrentTokenRange(v18);
      v14 = v13;
      v22.length = v13;
      if (CFStringCompareWithOptions(a1, @".", v22, 0) == kCFCompareEqualTo)
      {
        break;
      }

LABEL_14:
      result = C3DStringTokenizerAdvanceToNextToken(v18);
      v7 = v12;
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    C3DStringTokenizerAdvanceToNextToken(v18);
    C3DStringTokenizerGetCurrentTokenRange(v18);
    v11 += v14 + v15;
LABEL_10:
    v23.location = CurrentTokenRange;
    v23.length = v11;
    v16 = CFStringCreateWithSubstring(v8, a1, v23);
    Value = CFDictionaryGetValue(StandardUniforms, v16);
    if (Value)
    {
      CFDictionarySetValue(*(a2 + 64), v16, *Value);
    }

    CFRelease(v16);
    goto LABEL_14;
  }

  return result;
}

void __analyseArgumentDeclaration(const __CFString *a1, uint64_t a2)
{
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  Length = CFStringGetLength(a1);
  C3DStringTokenizerInit(&v29, a1, 0, Length, 1);
  _C3DStringTokenizerAdvanceToNextToken(&v29, 1);
  if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(&v29))
  {
    _C3DStringTokenizerAdvanceToNextToken(&v29, 1);
  }

  v44.location = C3DStringTokenizerGetCurrentTokenRange(&v29);
  v44.length = v5;
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], a1, v44);
  _C3DStringTokenizerAdvanceToNextToken(&v29, 1);
  v45.location = C3DStringTokenizerGetCurrentTokenRange(&v29);
  v45.length = v8;
  if (CFStringCompareWithOptions(a1, @"<", v45, 0))
  {
    MutableCopy = v7;
  }

  else
  {
    MutableCopy = CFStringCreateMutableCopy(v6, 0, v7);
    do
    {
      CurrentTokenRange = C3DStringTokenizerGetCurrentTokenRange(&v29);
      v12 = v11;
      v46.location = CurrentTokenRange;
      v46.length = v11;
      v13 = CFStringCreateWithSubstring(v6, a1, v46);
      CFStringAppend(MutableCopy, v13);
      CFRelease(v13);
      v47.location = CurrentTokenRange;
      v47.length = v12;
      v14 = CFStringCompareWithOptions(a1, @">", v47, 0);
      Token = _C3DStringTokenizerAdvanceToNextToken(&v29, 1);
    }

    while (v14 && (Token & 1) != 0);
    CFRelease(v7);
  }

  if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(&v29))
  {
    _C3DStringTokenizerAdvanceToNextToken(&v29, 1);
  }

  v16 = C3DStringTokenizerGetCurrentTokenRange(&v29);
  v18 = v17;
  v48.location = v16;
  v48.length = v17;
  v19 = CFStringCreateWithSubstring(v6, a1, v48);
  if (CFStringGetLength(MutableCopy) >= 1)
  {
    v20 = *(a2 + 76) == 1 ? C3DBaseTypeFromGLSLString(MutableCopy) : C3DBaseTypeFromMetalString(MutableCopy);
    v21 = v20;
    if (v20)
    {
      v22 = v16 + v18;
      v23 = CFStringGetLength(a1);
      if (v23 > v22)
      {
        v49.location = v22;
        v49.length = v23 - v22;
        v24 = CFStringCreateWithSubstring(v6, a1, v49);
        v25 = [(__CFString *)v24 rangeOfString:@"=", v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43];
        if (v26)
        {
          v27 = [(__CFString *)v24 substringFromIndex:v25 + 1];
          v28 = C3DValueCreate(v21, 1);
          C3DValueSetValueFromString(v28, v27);
          CFDictionaryAddValue(*(a2 + 40), v19, v28);
          CFRelease(v28);
        }

        CFRelease(v24);
      }
    }
  }

  if (CFStringGetLength(v19) >= 1 && CFStringGetLength(MutableCopy) >= 1)
  {
    CFDictionaryAddValue(*(a2 + 32), v19, MutableCopy);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void __analyseVaryingDeclaration(const __CFString *a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  Length = CFStringGetLength(a1);
  C3DStringTokenizerInit(v10, a1, 0, Length, 1);
  C3DStringTokenizerAdvanceToNextToken(v10);
  if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(v10))
  {
    C3DStringTokenizerAdvanceToNextToken(v10);
  }

  v11.location = C3DStringTokenizerGetCurrentTokenRange(v10);
  v11.length = v5;
  v6 = *MEMORY[0x277CBECE8];
  v7 = CFStringCreateWithSubstring(*MEMORY[0x277CBECE8], a1, v11);
  C3DStringTokenizerAdvanceToNextToken(v10);
  if (C3DStringTokenizerIsCurrentIsTokenWhiteSpaceOnly(v10))
  {
    C3DStringTokenizerAdvanceToNextToken(v10);
  }

  v12.location = C3DStringTokenizerGetCurrentTokenRange(v10);
  v12.length = v8;
  v9 = CFStringCreateWithSubstring(v6, a1, v12);
  if (CFStringGetLength(v9) >= 1 && CFStringGetLength(v7) >= 1)
  {
    CFDictionaryAddValue(*(a2 + 48), v9, v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

CFMutableDictionaryRef C3DShaderSourceParserContextCreate@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  if (a1)
  {
    Mutable = 0;
    *a3 = 0;
    *(a3 + 8) = 0;
    v6 = *MEMORY[0x277CBECE8];
  }

  else
  {
    v6 = *MEMORY[0x277CBECE8];
    *a3 = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    *(a3 + 8) = CFStringCreateMutable(v6, 0);
    Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  *(a3 + 16) = Mutable;
  v7 = MEMORY[0x277CBF138];
  *(a3 + 24) = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], 0);
  v8 = MEMORY[0x277CBF150];
  *(a3 + 56) = CFDictionaryCreateMutable(v6, 0, v7, MEMORY[0x277CBF150]);
  *(a3 + 32) = CFDictionaryCreateMutable(v6, 0, v7, v8);
  *(a3 + 40) = CFDictionaryCreateMutable(v6, 0, v7, v8);
  *(a3 + 48) = CFDictionaryCreateMutable(v6, 0, v7, v8);
  result = CFDictionaryCreateMutable(v6, 0, v7, v8);
  *(a3 + 64) = result;
  *(a3 + 76) = a2;
  return result;
}

void C3DShaderSourceParserContextDestroy(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 56) = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 40) = 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 32) = 0;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 48) = 0;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 64) = 0;
  }
}

void _C3DBezierCurveCFFinalize(uint64_t a1)
{
  free(*(a1 + 32));
  v2 = *(a1 + 40);

  free(v2);
}

uint64_t __C3DBezierCurveGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DBezierCurveGetTypeID_typeID = result;
  return result;
}

float32x2_t *C3DBezierCurveCreateWithCGPath(const CGPath *a1)
{
  if (C3DBezierCurveGetTypeID_onceToken != -1)
  {
    C3DBezierCurveCreateWithCGPath_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DBezierCurveGetTypeID_typeID, 48);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __C3DBezierCurveCreateWithCGPath_block_invoke;
  block[3] = &unk_278301830;
  block[4] = &v28;
  block[5] = &v24;
  block[6] = Instance;
  CGPathApplyWithBlock(a1, block);
  v3 = *(v25 + 12);
  Instance[3].i32[1] = v3;
  Instance[4] = malloc_type_malloc(8 * v3, 0x100004000313F17uLL);
  Instance[5] = malloc_type_malloc(2 * *(v29 + 12), 0x1000040BDFB0063uLL);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __C3DBezierCurveCreateWithCGPath_block_invoke_2;
  v20[3] = &unk_278301858;
  v20[4] = v21;
  v20[5] = Instance;
  _C3DBezierCurveEnumerateCGPathCurveSegmentsOfType(a1, 1, v20);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __C3DBezierCurveCreateWithCGPath_block_invoke_3;
  v19[3] = &unk_278301858;
  v19[4] = v21;
  v19[5] = Instance;
  _C3DBezierCurveEnumerateCGPathCurveSegmentsOfType(a1, 2, v19);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __C3DBezierCurveCreateWithCGPath_block_invoke_4;
  v18[3] = &unk_278301858;
  v18[4] = v21;
  v18[5] = Instance;
  _C3DBezierCurveEnumerateCGPathCurveSegmentsOfType(a1, 3, v18);
  BoundingBox = CGPathGetBoundingBox(a1);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  MinX = CGRectGetMinX(BoundingBox);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MinY = CGRectGetMinY(v33);
  v9.f64[0] = MinX;
  v9.f64[1] = MinY;
  Instance[6] = vcvt_f32_f64(v9);
  v10 = x;
  v9.f64[0] = y;
  v11 = width;
  v12 = height;
  MaxX = CGRectGetMaxX(*(&v9 - 8));
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  MaxY = CGRectGetMaxY(v34);
  v14.f64[0] = MaxX;
  v14.f64[1] = MaxY;
  Instance[7] = vcvt_f32_f64(v14);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  return Instance;
}

void sub_21C17BB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 144), 8);
  _Block_object_dispose((v30 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __C3DBezierCurveCreateWithCGPath_block_invoke(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return result;
      }

      ++*(*(result + 48) + 16);
      *(*(*(result + 32) + 8) + 24) += 2;
    }

    v3 = 1;
  }

  else
  {
    switch(v2)
    {
      case 2:
        ++*(*(result + 48) + 20);
        *(*(*(result + 32) + 8) + 24) += 3;
        v3 = 2;
        break;
      case 3:
        ++*(*(result + 48) + 24);
        *(*(*(result + 32) + 8) + 24) += 4;
        v3 = 3;
        break;
      case 4:
        ++*(*(result + 48) + 16);
        v3 = 2;
        v4 = 32;
        goto LABEL_13;
      default:
        return result;
    }
  }

  v4 = 40;
LABEL_13:
  *(*(*(result + v4) + 8) + 24) += v3;
  return result;
}

void _C3DBezierCurveEnumerateCGPathCurveSegmentsOfType(const CGPath *a1, int a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = -1;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = -1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___C3DBezierCurveEnumerateCGPathCurveSegmentsOfType_block_invoke;
  v3[3] = &unk_278301880;
  v3[6] = v8;
  v3[7] = v7;
  v3[8] = v5;
  v4 = a2;
  v3[4] = a3;
  v3[5] = v10;
  CGPathApplyWithBlock(a1, v3);
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
}

void sub_21C17BD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

double __C3DBezierCurveCreateWithCGPath_block_invoke_2(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 32);
  v4 = *(*(a1 + 40) + 40);
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24)) = *a2;
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 2) = a2[1];
  *(v3 + 8 * *a2) = *a3;
  result = *(a3 + 8);
  *(*(*(a1 + 40) + 32) + 8 * a2[1]) = result;
  *(*(*(a1 + 32) + 8) + 24) += 2;
  return result;
}

double __C3DBezierCurveCreateWithCGPath_block_invoke_3(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 32);
  v4 = *(*(a1 + 40) + 40);
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24)) = *a2;
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 2) = a2[1];
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 4) = a2[2];
  *(v3 + 8 * *a2) = *a3;
  *(*(*(a1 + 40) + 32) + 8 * a2[1]) = *(a3 + 8);
  result = *(a3 + 16);
  *(*(*(a1 + 40) + 32) + 8 * a2[2]) = result;
  *(*(*(a1 + 32) + 8) + 24) += 3;
  return result;
}

double __C3DBezierCurveCreateWithCGPath_block_invoke_4(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 32);
  v4 = *(*(a1 + 40) + 40);
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24)) = *a2;
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 2) = a2[1];
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 4) = a2[2];
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 6) = a2[3];
  *(v3 + 8 * *a2) = *a3;
  *(*(*(a1 + 40) + 32) + 8 * a2[1]) = *(a3 + 8);
  *(*(*(a1 + 40) + 32) + 8 * a2[2]) = *(a3 + 16);
  result = *(a3 + 24);
  *(*(*(a1 + 40) + 32) + 8 * a2[3]) = result;
  *(*(*(a1 + 32) + 8) + 24) += 4;
  return result;
}

uint64_t C3DBezierCurveGetCurveSegmentsControlPointIndices(uint64_t a1, _WORD *a2)
{
  if (a2)
  {
    *a2 = 3 * *(a1 + 20) + 2 * *(a1 + 16) + 4 * *(a1 + 24);
  }

  return *(a1 + 40);
}

double C3DBezierCurveGetBoundingBox(uint64_t a1, void *a2, double *a3)
{
  *a2 = *(a1 + 48);
  result = *(a1 + 56);
  *a3 = result;
  return result;
}

uint64_t C3DBezierCurveCreateControlPointsPositionSource(uint64_t a1)
{
  v2 = CFDataCreate(*MEMORY[0x277CBECE8], *(a1 + 32), 8 * *(a1 + 28));
  v3 = C3DMeshSourceCreate(v2, 0, *(a1 + 28), 2, 1);
  CFRelease(v2);
  return v3;
}

uint64_t C3DConstraintLookAtGetTypeID()
{
  if (C3DConstraintLookAtGetTypeID_onceToken != -1)
  {
    C3DConstraintLookAtGetTypeID_cold_1();
  }

  return C3DConstraintLookAtGetTypeID_typeID;
}

uint64_t C3DConstraintDistanceGetTypeID()
{
  if (C3DConstraintDistanceGetTypeID_onceToken != -1)
  {
    C3DConstraintDistanceGetTypeID_cold_1();
  }

  return C3DConstraintDistanceGetTypeID_typeID;
}

uint64_t C3DConstraintProceduralGetTypeID()
{
  if (C3DConstraintProceduralGetTypeID_onceToken != -1)
  {
    C3DConstraintProceduralGetTypeID_cold_1();
  }

  return C3DConstraintProceduralGetTypeID_typeID;
}

uint64_t C3DConstraintIKGetTypeID()
{
  if (C3DConstraintIKGetTypeID_onceToken != -1)
  {
    C3DConstraintIKGetTypeID_cold_1();
  }

  return C3DConstraintIKGetTypeID_typeID;
}

uint64_t C3DConstraintAccelerationGetTypeID()
{
  if (C3DConstraintAccelerationGetTypeID_onceToken != -1)
  {
    C3DConstraintAccelerationGetTypeID_cold_1();
  }

  return C3DConstraintAccelerationGetTypeID_typeID;
}

uint64_t C3DConstraintReplicatorGetTypeID()
{
  if (C3DConstraintReplicatorGetTypeID_onceToken != -1)
  {
    C3DConstraintReplicatorGetTypeID_cold_1();
  }

  return C3DConstraintReplicatorGetTypeID_typeID;
}

uint64_t C3DConstraintBillboardGetTypeID()
{
  if (C3DConstraintBillboardGetTypeID_onceToken != -1)
  {
    C3DConstraintBillboardGetTypeID_cold_1();
  }

  return C3DConstraintBillboardGetTypeID_typeID;
}

uint64_t C3DConstraintControllerInitializeConstraint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DConstraintControllerInitializeConstraint_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a2 + 80);
  if (v14)
  {
    return v14(a2, a1, a3);
  }

  else
  {
    return 1;
  }
}

uint64_t C3DConstraintApply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!a2 && (v10 = scn_default_log(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApply_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    if (a4)
    {
      return (*(*(a2 + 16) + 88))(a1, a2, a3, a4, a5);
    }
  }

  else if (a4)
  {
    return (*(*(a2 + 16) + 88))(a1, a2, a3, a4, a5);
  }

  v18 = scn_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return (*(*(a2 + 16) + 88))(a1, a2, a3, a4, a5);
}

uint64_t C3DConstraintGetTargetModelPath(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DConstraintControllerInitializeConstraint_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 96))(a1);
}

uint64_t C3DConstraintGetName(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DConstraintControllerInitializeConstraint_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

CFStringRef C3DConstraintSetName(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstraintControllerInitializeConstraint_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 64);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 64) = 0;
    }

    if (theString)
    {
      result = CFStringCreateCopy(*MEMORY[0x277CBECE8], theString);
    }

    else
    {
      result = 0;
    }

    *(a1 + 64) = result;
  }

  return result;
}

uint64_t C3DContraintAppendAuthoringInfo(uint64_t result)
{
  v1 = *(result + 112);
  if (v1)
  {
    return v1();
  }

  return result;
}

void _C3DConstraintControllerCFFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[7];

  free(v5);
}

CFStringRef _C3DConstraintControllerCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintController>");
}

CFStringRef _C3DConstraintControllerCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintController>");
}

uint64_t __C3DConstraintControllerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DConstraintControllerGetTypeID_typeID = result;
  return result;
}

void *C3DConstraintControllerCreate(const void *a1, const void *a2, const void *a3)
{
  if (C3DConstraintControllerGetTypeID_onceToken != -1)
  {
    C3DConstraintControllerCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintControllerGetTypeID_typeID, 48);
  v7 = CFRetain(a1);
  Instance[2] = v7;
  C3DConstraintControllerInitializeConstraint(Instance, v7, a2);
  Instance[4] = CFRetain(a3);
  Instance[3] = CFRetain(a2);
  return Instance;
}

void _C3DConstraintCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

void __C3DConstraintGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DConstraintGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"influenceFactor", 0x48u, 1, 0);

  C3DModelPathResolverRegisterClassEnd();
}

uint64_t C3DConstraintInit(uint64_t a1)
{
  *(a1 + 72) = 1065353216;
  *(a1 + 76) = 1;
  result = C3DWasLinkedBeforeMajorOSYear2017();
  *(a1 + 77) = result ^ 1;
  return result;
}

void __C3DConstraintLookAtGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DConstraintLookAtGetTypeID_typeID = v0;
  if (C3DConstraintGetTypeID_onceToken != -1)
  {
    __C3DConstraintLookAtGetTypeID_block_invoke_cold_1();
  }

  C3DModelPathResolverRegisterClassBegin(v0, C3DConstraintGetTypeID_typeID);
  C3DModelPathResolverRegisterProperty(@"targetOffset", 0xB0u, 10, 0);
  C3DModelPathResolverRegisterProperty(@"worldUp", 0xA0u, 10, 0);
  C3DModelPathResolverRegisterProperty(@"localFront", 0xC0u, 9, 0);

  C3DModelPathResolverRegisterClassEnd();
}

uint64_t C3DConstraintCreateLookAt(const void *a1)
{
  if (C3DConstraintLookAtGetTypeID_onceToken != -1)
  {
    C3DConstraintLookAtGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintLookAtGetTypeID_typeID, 192);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  if (a1)
  {
    v3 = CFRetain(a1);
  }

  else
  {
    v3 = 0;
  }

  *(Instance + 136) = v3;
  *(Instance + 144) = 0;
  *(Instance + 176) = xmmword_21C27F610;
  *(Instance + 192) = xmmword_21C27F900;
  *(Instance + 160) = xmmword_21C27F8C0;
  *(Instance + 88) = C3DConstraintApplyLookAt;
  *(Instance + 96) = C3DConstraintLookAtCopyTargetPath;
  return Instance;
}

uint64_t C3DConstraintApplyLookAt(float a1, uint64_t a2, uint64_t a3, __n128 *a4, uint64_t a5)
{
  if (!a3)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DConstraintApply_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(a3 + 16);
  result = *(v16 + 136);
  if (result)
  {
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    if (C3DNodeGetHasPivot(result))
    {
      memset(&v149, 0, sizeof(v149));
      C3DNodeGetLocalNoPivotMatrix(*(v16 + 136), &v149);
      Parent = C3DNodeGetParent(*(v16 + 136));
      if (Parent)
      {
        WorldMatrix = C3DNodeGetWorldMatrix(Parent);
        C3DMatrix4x4Mult(WorldMatrix, &v149, &v150);
      }

      else
      {
        v150 = v149.columns[0];
        v151 = v149.columns[1];
        v152 = v149.columns[2];
        v153 = v149.columns[3];
      }
    }

    else
    {
      v20 = C3DNodeGetWorldMatrix(*(v16 + 136));
      v21 = v20[3];
      v23 = *v20;
      v22 = v20[1];
      v152 = v20[2];
      v153 = v21;
      v150 = v23;
      v151 = v22;
    }

    v24 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v150, COERCE_FLOAT(*(v16 + 176))), v151, *(v16 + 176), 1), v152, *(v16 + 176), 2), v153, *(v16 + 176), 3);
    v25 = *(MEMORY[0x277D860B8] + 48);
    v148 = v25;
    v133 = v24;
    if (*(v16 + 144) == 1)
    {
      v137 = v25;
      result = C3DNodeGetParent(a4);
      if (!result)
      {
        return result;
      }

      v26 = C3DNodeGetWorldMatrix(result);
      memset(&v149, 0, sizeof(v149));
      C3DMatrix4x4Invert(v26, &v149);
      v144 = v149.columns[0];
      v145 = v149.columns[1];
      v146 = v149.columns[2];
      v147 = v149.columns[3];
      *v27.i64 = C3DVector3MultMatrix4x4(&v144, v133);
      v134 = v27;
      v130 = v149;
      v131 = *(v16 + 160);
      *v28.i64 = C3DNodeGetPosition(a4);
      v29 = vcgtq_f32(vdupq_n_s32(0x3727C5ACu), vabdq_f32(v134, v28));
      v29.i32[3] = v29.i32[2];
      if ((vminvq_u32(v29) & 0x80000000) != 0)
      {
        v87 = v137;
      }

      else
      {
        v30 = vsubq_f32(v134, v28);
        v31 = vmulq_f32(v30, v30);
        *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
        *v31.f32 = vrsqrte_f32(v32);
        *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32)));
        v33 = vmulq_n_f32(v30, vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32))).f32[0]);
        v34 = *(v16 + 192);
        v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), vnegq_f32(v34)), v33, vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL));
        v36 = vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL);
        v37 = vmulq_f32(v34, v33);
        v38 = vmulq_f32(v34, v34);
        v39 = vmulq_f32(v33, v33);
        v40 = vadd_f32(vzip1_s32(*&vextq_s8(v38, v38, 8uLL), *&vextq_s8(v39, v39, 8uLL)), vadd_f32(vzip1_s32(*v38.i8, *v39.i8), vzip2_s32(*v38.i8, *v39.i8)));
        v36.f32[3] = (v37.f32[2] + vaddv_f32(*v37.f32)) + sqrtf(vmuls_lane_f32(v40.f32[0], v40, 1));
        v41 = vmulq_f32(v36, v36);
        *v41.i8 = vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
        v42 = vdupq_lane_s32(vadd_f32(*v41.i8, vdup_lane_s32(*v41.i8, 1)), 0);
        v43 = vrsqrteq_f32(v42);
        v44 = vmulq_f32(v43, vrsqrtsq_f32(v42, vmulq_f32(v43, v43)));
        v45 = vbslq_s8(vceqzq_f32(v42), v36, vmulq_f32(vmulq_f32(v44, vrsqrtsq_f32(v42, vmulq_f32(v44, v44))), v36));
        v46 = vuzp1q_s32(v45, v45);
        v47 = v137;
        if (v40.f32[1] > 0.000000001)
        {
          v48 = v45;
          v48.i32[3] = v45.i32[0];
          v49 = vnegq_f32(v48);
          v50 = vuzp1q_s32(v49, v49);
          v50.i32[0] = v49.i32[1];
          v51 = vextq_s8(v46, v45, 0xCuLL);
          v52 = vzip1q_s32(v49, v49);
          v52.i32[0] = v49.i32[2];
          v135 = v46;
          v49.i32[3] = v45.i32[3];
          v129 = v40.u32[1];
          v53 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v49, 3), v49, 4uLL), xmmword_21C27F8C0), xmmword_21C27FD00), 0, v49), xmmword_21C27FD00, vmulq_f32(v52, xmmword_21C27F7E0)), xmmword_21C2A22A0, v50);
          v54 = vuzp1q_s32(v53, v53);
          v54.i32[0] = v53.i32[1];
          v55 = vzip1q_s32(v53, v53);
          v55.i32[0] = v53.i32[2];
          v56 = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v48, vextq_s8(vdupq_laneq_s32(v53, 3), v53, 4uLL)), xmmword_21C27FD00), v53, v45, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v45, v45, 0xCuLL), v45, 8uLL), v55)), v54, v51);
          v57 = vmulq_f32(v33, v56);
          v57.f32[0] = v57.f32[2] + vaddv_f32(*v57.f32);
          v58 = vmlsq_lane_f32(v56, v33, *v57.f32, 0);
          v59 = vmulq_f32(v58, v58);
          v59.f32[0] = v59.f32[2] + vaddv_f32(*v59.f32);
          v60 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v59.f32[0] != 0.0)), 0x1FuLL));
          v60.i32[3] = 0;
          v61 = vdupq_lane_s32(*v59.f32, 0);
          v62 = vrsqrteq_f32(v61);
          v63 = vmulq_f32(v62, vrsqrtsq_f32(v61, vmulq_f32(v62, v62)));
          v64 = vbslq_s8(vcltzq_s32(v60), vmulq_f32(v58, vmulq_f32(v63, vrsqrtsq_f32(v61, vmulq_f32(v63, v63)))), v58);
          v65 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v130.columns[0], v131.f32[0]), v130.columns[1], *v131.f32, 1), v130.columns[2], v131, 2), v130.columns[3], v131, 3);
          v66 = vmulq_f32(v65, v65);
          v55.f32[0] = v66.f32[2] + vaddv_f32(*v66.f32);
          *v66.f32 = vrsqrte_f32(v55.u32[0]);
          *v66.f32 = vmul_f32(*v66.f32, vrsqrts_f32(v55.u32[0], vmul_f32(*v66.f32, *v66.f32)));
          v67 = vmulq_n_f32(v65, vmul_f32(*v66.f32, vrsqrts_f32(v55.u32[0], vmul_f32(*v66.f32, *v66.f32))).f32[0]);
          v68 = vmulq_f32(v33, v67);
          v68.f32[0] = v68.f32[2] + vaddv_f32(*v68.f32);
          v69 = vmlsq_lane_f32(v67, v33, *v68.f32, 0);
          v70 = vmulq_f32(v69, v69);
          v70.f32[0] = v70.f32[2] + vaddv_f32(*v70.f32);
          v71 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v70.f32[0] != 0.0)), 0x1FuLL));
          v71.i32[3] = 0;
          v72 = vdupq_lane_s32(*v70.f32, 0);
          v73 = vrsqrteq_f32(v72);
          v74 = vmulq_f32(v73, vrsqrtsq_f32(v72, vmulq_f32(v73, v73)));
          v75 = vbslq_s8(vcltzq_s32(v71), vmulq_f32(vmulq_f32(v74, vrsqrtsq_f32(v72, vmulq_f32(v74, v74))), v69), v69);
          v76 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL), vnegq_f32(v64)), v75, vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL));
          v77 = vmulq_f32(v33, vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL));
          v78 = v77.f32[2] + vaddv_f32(*v77.f32);
          v79 = vmulq_f32(v64, v75);
          v80 = v79.f32[2] + vaddv_f32(*v79.f32);
          if (v80 >= 1.0)
          {
            v80 = 1.0;
          }

          if (v80 <= -1.0)
          {
            v80 = -1.0;
          }

          v132 = v33;
          v138 = v45;
          v81 = acosf(v80);
          if (v78 <= 0.0)
          {
            v81 = -v81;
          }

          v82 = __sincosf_stret(v81 * 0.5);
          v46 = v135;
          v45 = v138;
          v83 = vrsqrte_f32(v129);
          v84 = vmul_f32(v83, vrsqrts_f32(v129, vmul_f32(v83, v83)));
          v47 = vmulq_n_f32(vmulq_n_f32(v132, vmul_f32(v84, vrsqrts_f32(v129, vmul_f32(v84, v84))).f32[0]), v82.__sinval);
          v47.i32[3] = LODWORD(v82.__cosval);
        }

        v85 = v47;
        v85.i32[3] = v47.i32[0];
        v86 = vzip1q_s32(v45, v45);
        v86.i32[0] = v45.i32[2];
        v46.i32[0] = v45.i32[1];
        v148 = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v45, 3), v45, 4uLL), v85), xmmword_21C27FD00), v45, v47, 3), xmmword_21C27FD00, vmulq_f32(v86, vextq_s8(vextq_s8(v47, v47, 0xCuLL), v47, 8uLL))), v46, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
        v87 = v148;
      }
    }

    else
    {
      v88 = C3DNodeGetWorldMatrix(a4);
      memset(&v149, 0, sizeof(v149));
      C3DMatrix4x4Invert(v88, &v149);
      v144 = v149.columns[0];
      v145 = v149.columns[1];
      v146 = v149.columns[2];
      v147 = v149.columns[3];
      *v89.i64 = C3DVector3MultMatrix4x4(&v144, v133);
      v90 = vmulq_f32(v89, v89);
      *&v91 = v90.f32[2] + vaddv_f32(*v90.f32);
      *v90.f32 = vrsqrte_f32(v91);
      *v90.f32 = vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32)));
      v92 = vmulq_n_f32(v89, vmul_f32(*v90.f32, vrsqrts_f32(v91, vmul_f32(*v90.f32, *v90.f32))).f32[0]);
      v93 = *(v16 + 192);
      v94 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v92, v92), v92, 0xCuLL), vnegq_f32(v93)), v92, vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL));
      v95 = vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL);
      v96 = vmulq_f32(v93, v92);
      v95.f32[3] = (v96.f32[2] + vaddv_f32(*v96.f32)) + 1.0;
      v97 = vmulq_f32(v95, v95);
      *v97.i8 = vadd_f32(*v97.i8, *&vextq_s8(v97, v97, 8uLL));
      v98 = vdupq_lane_s32(vadd_f32(*v97.i8, vdup_lane_s32(*v97.i8, 1)), 0);
      v99 = vrsqrteq_f32(v98);
      v100 = vmulq_f32(v99, vrsqrtsq_f32(v98, vmulq_f32(v99, v99)));
      v139 = vbslq_s8(vceqzq_f32(v98), v95, vmulq_f32(vmulq_f32(v100, vrsqrtsq_f32(v98, vmulq_f32(v100, v100))), v95));
      C3DNodeGetQuaternion(a4);
      v102 = v101;
      v102.i32[3] = v101.i32[0];
      v103 = v139;
      v104 = vzip1q_s32(v103, v103);
      v104.i32[0] = v139.i32[2];
      v105 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v102, vextq_s8(vdupq_laneq_s32(v139, 3), v139, 4uLL)), xmmword_21C27FD00), v139, v101, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v101, v101, 0xCuLL), v101, 8uLL), v104));
      v106 = vuzp1q_s32(v103, v103);
      v106.i32[0] = v139.i32[1];
      v87 = vmlsq_f32(v105, v106, vextq_s8(vuzp1q_s32(v101, v101), v101, 0xCuLL));
      v148 = v87;
    }

    if (a1 != 1.0)
    {
      v140 = v87;
      C3DNodeGetQuaternion(a4);
      _Q4 = v107;
      _Q0 = vmulq_f32(v107, v140);
      _S1 = v140.i32[2];
      __asm { FMLA            S0, S1, V4.S[2] }

      _S2 = v140.i32[3];
      v115 = -(_Q0.f32[0] + (_Q4.f32[3] * v140.f32[3]));
      __asm { FMLA            S0, S2, V4.S[3] }

      v117.i64[0] = 0;
      v118 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v117, _Q0), 0), vnegq_f32(v140), v140);
      if (_Q0.f32[0] < 0.0)
      {
        _Q0.f32[0] = v115;
      }

      if (1.0 - _Q0.f32[0] <= 0.00100000005)
      {
        v124 = 1.0 - a1;
        v125 = a1;
      }

      else
      {
        v136 = v118;
        v141 = _Q4;
        v119 = acosf(_Q0.f32[0]);
        v120 = sinf(v119);
        v121 = sinf((1.0 - a1) * v119);
        v122 = v119 * a1;
        v143 = v121 / v120;
        v123 = sinf(v122);
        _Q4 = v141;
        v124 = v143;
        v118 = v136;
        v125 = v123 / v120;
      }

      v148 = vmlaq_n_f32(vmulq_n_f32(v118, v125), _Q4, v124);
    }

    Target = C3DModelTargetGetTarget(a5);
    TargetAddress = C3DModelTargetGetTargetAddress(a5);
    v128 = C3DSizeOfBaseType(10);
    C3DSetValue(Target, TargetAddress, &v148, v128, 3, 0);
    return 1;
  }

  return result;
}

void C3DConstraintLookAtSetGimbalLockEnabled(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 144) = a2;
}

__n128 C3DConstraintLookAtSetTargetOffset(__n128 *a1, __n128 result)
{
  if (!a1)
  {
    v12 = result;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    result = v12;
    if (v4)
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      result = v12;
    }
  }

  result.n128_u32[3] = a1[11].n128_u32[3];
  a1[11] = result;
  return result;
}

__n128 C3DConstraintLookAtSetUpVector(__n128 *a1, __n128 result)
{
  if (!a1)
  {
    v12 = result;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    result = v12;
    if (v4)
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      result = v12;
    }
  }

  result.n128_u32[3] = a1[10].n128_u32[3];
  a1[10] = result;
  return result;
}

void C3DConstraintLookAtSetLocalFront(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  a1[12] = a2;
}

uint64_t __C3DConstraintBillboardGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DConstraintBillboardGetTypeID_typeID = result;
  return result;
}

uint64_t C3DConstraintCreateBillboard()
{
  if (C3DConstraintBillboardGetTypeID_onceToken != -1)
  {
    C3DConstraintBillboardGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintBillboardGetTypeID_typeID, 128);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *(Instance + 88) = C3DConstraintApplyBillboard;
  *(Instance + 96) = C3DConstraintBillboardCopyTargetPath;
  *(Instance + 140) = C3DWasLinkedBeforeMajorOSYear2018() ^ 1;
  *(Instance + 136) = 7;
  return Instance;
}

BOOL C3DConstraintApplyBillboard(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  PointOfView = C3DEngineContextGetPointOfView(a1);
  if (PointOfView)
  {
    v19 = *(a2 + 16);
    if (*(v19 + 136))
    {
      memset(v24, 0, sizeof(v24));
      C3DConstraintBillboardMatrixForNode(a1, v19, a3, v24, a5);
      Target = C3DModelTargetGetTarget(a4);
      TargetAddress = C3DModelTargetGetTargetAddress(a4);
      v22 = C3DSizeOfBaseType(11);
      C3DSetValue(Target, TargetAddress, v24, v22, *(a4 + 34), *(a4 + 35));
    }
  }

  return PointOfView != 0;
}

BOOL C3DConstraintBillboardMatrixForNode(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float a5)
{
  PointOfView = C3DEngineContextGetPointOfView(a1);
  if (PointOfView)
  {
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    C3DNodeGetLocalNoPivotMatrix(a3, &v116);
    WorldMatrix = C3DNodeGetWorldMatrix(a3);
    v11 = WorldMatrix[3];
    v13 = *WorldMatrix;
    v12 = WorldMatrix[1];
    v114 = WorldMatrix[2];
    v115 = v11;
    v112 = v13;
    v113 = v12;
    v111.i32[2] = 0;
    v111.i64[0] = 0;
    v14 = C3DWasLinkedBeforeMajorOSYear2017();
    v15 = v14;
    if (v14)
    {
      v112 = v116;
      v113 = v117;
      v114 = v118;
      v115 = v119;
    }

    else if (*(a2 + 140) == 1)
    {
      C3DMatrix4x4GetAffineTransforms(&v116, 0, 0, &v111);
    }

    v16 = C3DNodeGetWorldMatrix(PointOfView);
    v17 = *v16;
    v18 = v16[2];
    v108 = v16[1];
    v109 = v18;
    v107 = v17;
    v110 = 0uLL;
    v19 = *(a2 + 136);
    if (v19 > 2)
    {
      if (v19 > 4)
      {
        if (v19 == 5)
        {
          v121 = v107;
          v122 = v108;
          v123 = v109;
          v124 = v110;
          C3DVector3MultMatrix4x4(&v121, v107);
          v121 = v107;
          v122 = v108;
          v123 = v109;
          v124 = v110;
          C3DVector3MultMatrix4x4(&v121, xmmword_21C27F600);
          v71 = vextq_s8(vuzp1q_s32(v108, v108), v108, 0xCuLL);
          v72 = vmlaq_f32(vmulq_f32(v108, xmmword_21C2A3E40), xmmword_21C27F600, v71);
          v73 = vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL);
          v74 = vmulq_f32(v72, v72);
          *&v75 = v74.f32[1] + (v74.f32[2] + v74.f32[0]);
          *v74.f32 = vrsqrte_f32(v75);
          *v74.f32 = vmul_f32(*v74.f32, vrsqrts_f32(v75, vmul_f32(*v74.f32, *v74.f32)));
          v76 = vmulq_n_f32(v73, vmul_f32(*v74.f32, vrsqrts_f32(v75, vmul_f32(*v74.f32, *v74.f32))).f32[0]);
          v77 = vmlaq_f32(vmulq_f32(v71, vnegq_f32(v76)), v108, vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL));
          v78 = vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL);
          v79 = vmulq_f32(v77, v77);
          *&v80 = v79.f32[1] + (v79.f32[2] + v79.f32[0]);
          *v79.f32 = vrsqrte_f32(v80);
          *v79.f32 = vmul_f32(*v79.f32, vrsqrts_f32(v80, vmul_f32(*v79.f32, *v79.f32)));
          v81 = vmulq_n_f32(v78, vmul_f32(*v79.f32, vrsqrts_f32(v80, vmul_f32(*v79.f32, *v79.f32))).f32[0]);
          v76.i32[3] = v107.i32[3];
          v81.i32[3] = v109.i32[3];
          v107 = v76;
          v109 = v81;
        }

        else if (v19 == 6)
        {
          v121 = v107;
          v122 = v108;
          v123 = v109;
          v124 = v110;
          C3DVector3MultMatrix4x4(&v121, v108);
          v121 = v107;
          v122 = v108;
          v123 = v109;
          v124 = v110;
          C3DVector3MultMatrix4x4(&v121, xmmword_21C27F910);
          v48 = vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL);
          v49 = vmlaq_f32(vmulq_f32(v48, xmmword_21C2A3E40), xmmword_21C27F8C0, v109);
          v50 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
          v51 = vmulq_f32(v49, v49);
          *&v52 = v51.f32[1] + (v51.f32[2] + v51.f32[0]);
          *v51.f32 = vrsqrte_f32(v52);
          *v51.f32 = vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32)));
          v53 = vmulq_n_f32(v50, vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32))).f32[0]);
          v54 = vmlaq_f32(vmulq_f32(v48, vnegq_f32(v53)), v109, vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL));
          v55 = vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL);
          v56 = vmulq_f32(v54, v54);
          *&v57 = v56.f32[1] + (v56.f32[2] + v56.f32[0]);
          *v56.f32 = vrsqrte_f32(v57);
          *v56.f32 = vmul_f32(*v56.f32, vrsqrts_f32(v57, vmul_f32(*v56.f32, *v56.f32)));
          v58 = vmulq_n_f32(v55, vmul_f32(*v56.f32, vrsqrts_f32(v57, vmul_f32(*v56.f32, *v56.f32))).f32[0]);
          v58.i32[3] = *(&v107 | 0xC);
          v53.i32[3] = v108.i32[3];
          v107 = v58;
          v108 = v53;
        }
      }

      else
      {
        v121 = v107;
        v122 = v108;
        v123 = v109;
        v124 = v110;
        if (v19 == 3)
        {
          C3DVector3MultMatrix4x4(&v121, v107);
          v121 = v107;
          v122 = v108;
          v123 = v109;
          v124 = v110;
          C3DVector3MultMatrix4x4(&v121, xmmword_21C27F8C0);
          v60 = vextq_s8(vuzp1q_s32(v109, v109), v109, 0xCuLL);
          v61 = vmlaq_f32(vmulq_f32(v60, xmmword_21C2A3E60), xmmword_21C27F600, v109);
          v62 = vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL);
          v63 = vmulq_f32(v61, v61);
          *&v64 = v63.f32[1] + (v63.f32[2] + v63.f32[0]);
          *v63.f32 = vrsqrte_f32(v64);
          *v63.f32 = vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32)));
          v65 = vmulq_n_f32(v62, vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32))).f32[0]);
          v66 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL), vnegq_f32(v109)), v65, v60);
          v67 = vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL);
          v68 = vmulq_f32(v66, v66);
          *&v69 = v68.f32[1] + (v68.f32[2] + v68.f32[0]);
          *v68.f32 = vrsqrte_f32(v69);
          *v68.f32 = vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32)));
          v70 = vmulq_n_f32(v67, vmul_f32(*v68.f32, vrsqrts_f32(v69, vmul_f32(*v68.f32, *v68.f32))).f32[0]);
          v65.i32[3] = v107.i32[3];
          v70.i32[3] = v108.i32[3];
          v107 = v65;
          v108 = v70;
        }

        else
        {
          *v20.i64 = C3DVector3MultMatrix4x4(&v121, xmmword_21C27F910);
          v104 = v20;
          v121 = v107;
          v122 = v108;
          v123 = v109;
          v124 = v110;
          *v21.i64 = C3DVector3MultMatrix4x4(&v121, xmmword_21C27F600);
          v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(v104)), v21, vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL));
          v23 = vmulq_f32(v22, v22);
          *&v24 = v23.f32[1] + (v23.f32[2] + v23.f32[0]);
          *v23.f32 = vrsqrte_f32(v24);
          *v23.f32 = vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32)));
          v25 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), vmul_f32(*v23.f32, vrsqrts_f32(v24, vmul_f32(*v23.f32, *v23.f32))).f32[0]);
          v26 = xmmword_21C27F600;
          v27 = vmlaq_f32(vmulq_f32(v25, xmmword_21C2A3E40), xmmword_21C27F600, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
          v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
          v29 = vmulq_f32(v27, v27);
          v22.f32[0] = v29.f32[1] + (v29.f32[2] + v29.f32[0]);
          *v29.f32 = vrsqrte_f32(v22.u32[0]);
          *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v22.u32[0], vmul_f32(*v29.f32, *v29.f32)));
          v30 = vmulq_n_f32(v28, vmul_f32(*v29.f32, vrsqrts_f32(v22.u32[0], vmul_f32(*v29.f32, *v29.f32))).f32[0]);
          v31 = vmulq_f32(v30, xmmword_21C2A3E60);
          v32 = vmlaq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), xmmword_21C27F910, v30);
          v33 = vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL);
          v30.i32[3] = *(&v107 | 0xC);
          v33.i32[3] = v108.i32[3];
          v107 = v30;
          v108 = v33;
          HIDWORD(v26) = v109.i32[3];
          v109 = v26;
        }
      }

      goto LABEL_22;
    }

    switch(v19)
    {
      case 0:
        v59 = &v116;
LABEL_33:
        v101 = v59[1];
        *a4 = *v59;
        a4[1] = v101;
        v102 = v59[3];
        a4[2] = v59[2];
        a4[3] = v102;
        return PointOfView != 0;
      case 1:
        v121 = v107;
        v122 = v108;
        v123 = v109;
        v124 = v110;
        *v82.i64 = C3DVector3MultMatrix4x4(&v121, xmmword_21C27F8C0);
        v106 = v82;
        v121 = v107;
        v122 = v108;
        v123 = v109;
        v124 = v110;
        *v83.i64 = C3DVector3MultMatrix4x4(&v121, xmmword_21C27F910);
        v84 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v106, v106), v106, 0xCuLL), vnegq_f32(v83)), v106, vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL));
        v85 = vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL);
        v86 = vmulq_f32(v84, v84);
        *&v87 = v86.f32[1] + (v86.f32[2] + v86.f32[0]);
        *v86.f32 = vrsqrte_f32(v87);
        *v86.f32 = vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32)));
        v88 = vmulq_n_f32(v85, vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32))).f32[0]);
        v89 = vmulq_f32(v88, xmmword_21C2A3E50);
        v90 = vmlaq_f32(vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL), xmmword_21C27F8C0, v88);
        v91 = vmulq_f32(v90, v90);
        *&v92 = v91.f32[1] + (v91.f32[2] + v91.f32[0]);
        v93 = vextq_s8(vuzp1q_s32(v90, v90), v90, 0xCuLL);
        *v90.f32 = vrsqrte_f32(v92);
        *v90.f32 = vmul_f32(*v90.f32, vrsqrts_f32(v92, vmul_f32(*v90.f32, *v90.f32)));
        v94 = vmulq_n_f32(v93, vmul_f32(*v90.f32, vrsqrts_f32(v92, vmul_f32(*v90.f32, *v90.f32))).f32[0]);
        v95 = vmulq_f32(v94, xmmword_21C2A3E50);
        v96 = vmlaq_f32(vextq_s8(vuzp1q_s32(v95, v95), v95, 0xCuLL), xmmword_21C27F8C0, v94);
        v47 = vextq_s8(vuzp1q_s32(v96, v96), v96, 0xCuLL);
        v97 = xmmword_21C27F910;
        HIDWORD(v97) = *(&v107 | 0xC);
        v94.i32[3] = v108.i32[3];
        v107 = v97;
        v108 = v94;
        break;
      case 2:
        v121 = v107;
        v122 = v108;
        v123 = v109;
        v124 = v110;
        *v34.i64 = C3DVector3MultMatrix4x4(&v121, xmmword_21C27F910);
        v105 = v34;
        v121 = v107;
        v122 = v108;
        v123 = v109;
        v124 = v110;
        *v35.i64 = C3DVector3MultMatrix4x4(&v121, xmmword_21C27F8C0);
        v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vnegq_f32(v105)), v35, vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL));
        v37 = vmulq_f32(v36, v36);
        *&v38 = v37.f32[1] + (v37.f32[2] + v37.f32[0]);
        *v37.f32 = vrsqrte_f32(v38);
        *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32)));
        v39 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), vmul_f32(*v37.f32, vrsqrts_f32(v38, vmul_f32(*v37.f32, *v37.f32))).f32[0]);
        v40 = vmulq_f32(v39, xmmword_21C2A3E40);
        v41 = vmlaq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), xmmword_21C27F600, v39);
        v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
        v43 = vmulq_f32(v41, v41);
        v36.f32[0] = v43.f32[1] + (v43.f32[2] + v43.f32[0]);
        *v43.f32 = vrsqrte_f32(v36.u32[0]);
        *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v36.u32[0], vmul_f32(*v43.f32, *v43.f32)));
        v44 = vmulq_n_f32(v42, vmul_f32(*v43.f32, vrsqrts_f32(v36.u32[0], vmul_f32(*v43.f32, *v43.f32))).f32[0]);
        v45 = xmmword_21C27F8C0;
        v46 = vmlaq_f32(vmulq_f32(v44, xmmword_21C2A3E50), xmmword_21C27F8C0, vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL));
        v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
        v44.i32[3] = *(&v107 | 0xC);
        HIDWORD(v45) = v108.i32[3];
        v107 = v44;
        v108 = v45;
        break;
      default:
LABEL_22:
        v110 = v115;
        if (a5 != 1.0)
        {
          C3DMatrix4x4Interpolate(&v112, &v107, &v107, a5);
        }

        v112 = v107;
        v113 = v108;
        v114 = v109;
        v115 = v110;
        if (v15)
        {
          goto LABEL_32;
        }

        Parent = C3DNodeGetParent(a3);
        v99 = Parent ? C3DNodeGetWorldMatrix(Parent) : MEMORY[0x277D860B8];
        v125 = __invert_f4(*v99);
        v100 = 0;
        v120[0] = v112;
        v120[1] = v113;
        v120[2] = v114;
        v120[3] = v115;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        do
        {
          *(&v121 + v100 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v125.columns[0], COERCE_FLOAT(*&v120[v100])), v125.columns[1], *v120[v100].f32, 1), v125.columns[2], v120[v100], 2), v125.columns[3], v120[v100], 3);
          ++v100;
        }

        while (v100 != 4);
        v112 = v121;
        v113 = v122;
        v114 = v123;
        v115 = v119;
        if (*(a2 + 140) != 1)
        {
LABEL_32:
          v59 = &v112;
        }

        else
        {
          *(v121.i64 + 4) = 0;
          v121.i32[0] = 0;
          v120[0] = 0uLL;
          v59 = &v112;
          C3DMatrix4x4GetAffineTransforms(&v112, &v121, v120, 0);
          C3DMatrix4x4MakeAffine(&v112, &v121, v120, &v111);
        }

        goto LABEL_33;
    }

    v47.i32[3] = v109.i32[3];
    v109 = v47;
    goto LABEL_22;
  }

  return PointOfView != 0;
}

uint64_t C3DConstraintConstantScaleGetTypeID()
{
  if (C3DConstraintConstantScaleGetTypeID_onceToken != -1)
  {
    C3DConstraintConstantScaleGetTypeID_cold_1();
  }

  return C3DConstraintConstantScaleGetTypeID_typeID;
}

void _C3DConstraintConstantScaleCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

CFStringRef _C3DConstraintConstantScaleCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintConstantScale>");
}

CFStringRef _C3DConstraintConstantScaleCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintConstantScale>");
}

uint64_t __C3DConstraintConstantScaleGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DConstraintConstantScaleGetTypeID_typeID = result;
  return result;
}

uint64_t C3DConstraintCreateConstantScale()
{
  if (C3DConstraintConstantScaleGetTypeID_onceToken != -1)
  {
    C3DConstraintConstantScaleGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintConstantScaleGetTypeID_typeID, 128);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *(Instance + 88) = C3DConstraintApplyConstantScale;
  *(Instance + 96) = C3DConstraintConstantScaleCopyTargetPath;
  *(Instance + 136) = 1065353216;
  return Instance;
}

uint64_t C3DConstraintApplyConstantScale(__n128 *a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float a5)
{
  v9 = *(a2 + 16);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  C3DNodeGetMatrix(a3, &v34);
  v33[0] = v34;
  v33[1] = v35;
  v33[2] = v36;
  v33[3] = v37;
  if (*(v9 + 140))
  {
    result = C3DEngineContextGetPointOfView(a1);
    if (!result)
    {
      return result;
    }

    v11 = result;
    result = C3DNodeGetCamera(result);
    if (!result)
    {
      return result;
    }

    result = C3DCameraGetProjectionInfosPtr(result);
    if (!result)
    {
      return result;
    }

    v12 = result;
    if (*result)
    {
      Viewport.n128_u64[0] = *(result + 48);
      Viewport.n128_f32[0] = Viewport.n128_f64[0];
    }

    else
    {
      WorldMatrix = C3DNodeGetWorldMatrix(v11);
      memset(&v29, 0, sizeof(v29));
      C3DMatrix4x4Invert(WorldMatrix, &v29);
      v32.i32[2] = 0;
      v32.i64[0] = 0;
      C3DNodeGetWorldPosition(a3, &v32);
      v14 = vmulq_f32(vaddq_f32(v29.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29.columns[0], v32.f32[0]), v29.columns[1], *v32.f32, 1), v29.columns[2], v32, 2)), xmmword_21C27F900);
      v15 = v14.f32[2] + vaddv_f32(*v14.f32);
      EffectiveFov = C3DProjectionInfosGetEffectiveFov(v12);
      v17 = 1.0 / (tan(EffectiveFov * 3.14159265 / 180.0 * 0.5) + v15);
      Viewport = C3DEngineContextGetViewport(a1);
      Viewport.n128_u32[0] = Viewport.n128_u32[3];
      if ((*v12 & 0x20) != 0)
      {
        Viewport.n128_f32[0] = Viewport.n128_f32[2];
      }

      Viewport.n128_f32[0] = Viewport.n128_f32[0] * v17;
    }

    if (Viewport.n128_f32[0] == 0.0)
    {
      return 0;
    }

    Viewport.n128_f32[0] = *(v9 + 136) / Viewport.n128_f32[0];
    v29.columns[0] = vdupq_lane_s32(Viewport.n128_u64[0], 0);
    v32.i32[2] = 0;
    v32.i64[0] = 0;
    v31 = 0uLL;
    C3DMatrix4x4GetAffineTransforms(v33, &v32, &v31, 0);
    v25 = &v29;
    goto LABEL_15;
  }

  Parent = C3DNodeGetParent(a3);
  if (!Parent)
  {
    v32.i32[2] = 0;
    v32.i64[0] = 0;
    v31 = 0uLL;
    C3DMatrix4x4GetAffineTransforms(v33, &v32, &v31, 0);
    *&v24 = C3DNodeGetScale(a3);
    v30 = v24;
    v25 = &v30;
LABEL_15:
    C3DMatrix4x4MakeAffine(v33, &v32, &v31, v25);
    goto LABEL_16;
  }

  v20 = Parent;
  v21 = C3DNodeGetWorldMatrix(Parent);
  C3DMatrix4x4Mult(v33, v21, v33);
  v32.i32[2] = 0;
  v32.i64[0] = 0;
  v31 = 0uLL;
  C3DMatrix4x4GetAffineTransforms(v33, &v32, &v31, 0);
  *&v22 = C3DNodeGetScale(a3);
  v30 = v22;
  C3DMatrix4x4MakeAffine(v33, &v32, &v31, &v30);
  memset(&v29, 0, sizeof(v29));
  v23 = C3DNodeGetWorldMatrix(v20);
  C3DMatrix4x4Invert(v23, &v29);
  C3DMatrix4x4Mult(v33, &v29, v33);
LABEL_16:
  if (a5 != 1.0)
  {
    C3DMatrix4x4Interpolate(&v34, v33, v33, a5);
  }

  Target = C3DModelTargetGetTarget(a4);
  TargetAddress = C3DModelTargetGetTargetAddress(a4);
  v28 = C3DSizeOfBaseType(11);
  C3DSetValue(Target, TargetAddress, v33, v28, *(a4 + 34), *(a4 + 35));
  return 1;
}

void _C3DConstraintProceduralCFFinalize(uint64_t a1)
{
  _Block_release(*(a1 + 136));
  v2 = *(a1 + 144);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

CFStringRef _C3DConstraintProceduralCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintProcedural>");
}

CFStringRef _C3DConstraintProceduralCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintProcedural>");
}

uint64_t __C3DConstraintProceduralGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DConstraintProceduralGetTypeID_typeID = result;
  return result;
}

uint64_t C3DConstraintCreateProcedural(const void *a1, const void *a2)
{
  if (C3DConstraintProceduralGetTypeID_onceToken != -1)
  {
    C3DConstraintProceduralGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintProceduralGetTypeID_typeID, 136);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *(Instance + 136) = _Block_copy(a1);
  *(Instance + 144) = CFRetain(a2);
  *(Instance + 88) = C3DConstraintApplyProcedural;
  *(Instance + 96) = C3DConstraintProceduralCopyTargetPath;
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  return Instance;
}

void *C3DConstraintProceduralCreateCopy(uint64_t a1)
{
  if (C3DConstraintProceduralGetTypeID_onceToken != -1)
  {
    C3DConstraintProceduralGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintProceduralGetTypeID_typeID, 136);
  Instance[17] = _Block_copy(*(a1 + 136));
  Instance[18] = CFRetain(*(a1 + 144));
  Instance[11] = C3DConstraintApplyProcedural;
  Instance[12] = C3DConstraintProceduralCopyTargetPath;
  return Instance;
}

void __C3DConstraintIKGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DConstraintIKGetTypeID_typeID = v0;
  if (C3DConstraintGetTypeID_onceToken != -1)
  {
    __C3DConstraintLookAtGetTypeID_block_invoke_cold_1();
  }

  C3DModelPathResolverRegisterClassBegin(v0, C3DConstraintGetTypeID_typeID);
  C3DModelPathResolverRegisterProperty(@"targetPosition", 0x90u, 9, 0);

  C3DModelPathResolverRegisterClassEnd();
}

uint64_t C3DConstraintCreateIK()
{
  if (C3DConstraintIKGetTypeID_onceToken != -1)
  {
    C3DConstraintIKGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintIKGetTypeID_typeID, 176);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *(Instance + 88) = C3DConstraintApplyIK;
  *(Instance + 96) = C3DConstraintIKCopyTargetPath;
  return Instance;
}

BOOL C3DConstraintApplyIK(float a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 16);
  v5 = v4[8].n128_u64[1];
  if (!v5)
  {
    return 0;
  }

  v7 = v4[10].n128_u64[0];
  if (v7)
  {
LABEL_3:
    v86 = v4[10].n128_i64[1];
    v8 = C3DGetScene(v5);
    if (v8 && (ModelValueStorage = C3DSceneGetModelValueStorage(v8)) != 0)
    {
      v10 = ModelValueStorage;
      v11 = 0;
    }

    else
    {
      v12 = scn_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        C3DConstraintApplyIK_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
      }

      v10 = 0;
      v11 = 1;
    }

    if (a1 != 1.0 && v86 >= 1)
    {
      v20 = v86;
      v21 = v7;
      do
      {
        C3DModelValueStorageUpdateNodePresentationValueInNeeded(v10, *v21);
        C3DNodeGetQuaternion(*v21);
        *(v21 + 2) = v22;
        v21 += 6;
        --v20;
      }

      while (v20);
    }

    v23 = 0;
    v24 = v86 - 1;
    v90 = 0u;
    v87 = 0u;
    do
    {
      v25 = (v7 + 8);
      if (v86 >= 2)
      {
        do
        {
          v26 = *v7;
          v27 = v25[-1].i64[0];
          if (!v23)
          {
            C3DModelValueStorageUpdateNodePresentationValueInNeeded(v10, v25[-1].i64[0]);
          }

          v28.n128_f64[0] = C3DNodeGetPosition(v26);
          v91 = v28;
          Parent = C3DNodeGetParent(v26);
          *v30.i64 = convertPositionToNode(Parent, v27, v91);
          v90 = v30;
          *v31.i64 = convertPositionToNode(0, v27, v4[9]);
          v32 = v31;
          v33 = vmulq_f32(v90, v90);
          *&v34 = v33.f32[2] + vaddv_f32(*v33.f32);
          *v33.f32 = vrsqrte_f32(v34);
          *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32)));
          v35 = vmulq_n_f32(v90, vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32))).f32[0]);
          v36 = vmulq_f32(v32, v32);
          *&v37 = v36.f32[2] + vaddv_f32(*v36.f32);
          *v36.f32 = vrsqrte_f32(v37);
          *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)));
          v89 = v35;
          v87 = v32;
          v88 = vmulq_n_f32(v32, vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32))).f32[0]);
          v38 = vmulq_f32(v35, v88);
          v39 = v38.f32[2] + vaddv_f32(*v38.f32);
          v40 = v39 > 1.0 || v39 < -1.0;
          if (v39 <= 1.0 && v39 < -1.0)
          {
            v41 = -1.0;
          }

          else
          {
            v41 = 1.0;
          }

          if (v40)
          {
            v39 = v41;
          }

          v42 = acosf(v39);
          if ((v4[11].n128_u8[8] & 1) != 0 || v42 > 0.00001)
          {
            v43 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL), vnegq_f32(v89)), v88, vextq_s8(vuzp1q_s32(v89, v89), v89, 0xCuLL));
            v44 = vmulq_f32(v43, v43);
            v44.f32[0] = v44.f32[1] + (v44.f32[2] + v44.f32[0]);
            v45 = vdupq_lane_s32(*v44.f32, 0);
            v46 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
            v47 = vrsqrteq_f32(v45);
            v48 = vmulq_f32(v47, vrsqrtsq_f32(v45, vmulq_f32(v47, v47)));
            v49 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v44.f32[0] != 0.0)), 0x1FuLL));
            v49.i32[3] = 0;
            v50 = vbslq_s8(vcltzq_s32(v49), vmulq_f32(v46, vmulq_f32(v48, vrsqrtsq_f32(v45, vmulq_f32(v48, v48)))), v46);
            v97[0] = 0u;
            *&v50.i32[3] = v42;
            v96 = v50;
            C3DQuaternionMakeAxisAngle(v97, &v96);
            v95 = 0u;
            C3DNodeGetQuaternion(v27);
            v95 = v51;
            v94 = 0u;
            C3DQuaternionMult(&v95, v97, &v94);
            C3DQuaternionNormalize(&v94);
            v52 = v25[-1].f32[2];
            if (v52 < 3.14159265)
            {
              v93 = 0uLL;
              *v53.i64 = C3DQuaternionGetRotationBetweenQuaternions(*v25, v94);
              v93 = v53;
              C3DQuaternionNormalize(&v93);
              v54 = acosf(v93.f32[3]);
              v60 = fabsf(v54 + v54);
              if (v60 > v52)
              {
                v92 = v94;
                C3DQuaternionSlerp(v25, &v92, &v94, v52 / v60, *v94.i64, v55, v56, v57, v58, v59);
                C3DQuaternionNormalize(&v94);
              }
            }

            C3DNodeSetQuaternion(v27, v94);
          }

          if ((v11 & 1) == 0)
          {
            C3DModelValueStorageUpdateTimestampOfNode(v10, v27);
          }

          v25 += 3;
          --v24;
        }

        while (v24);
      }

      v61 = vsubq_f32(v90, v87);
      v62 = vmulq_f32(v61, v61);
      v63 = sqrtf(v62.f32[2] + vaddv_f32(*v62.f32)) < 0.9 || ++v23 == 10;
      v24 = v86 - 1;
    }

    while (!v63);
    result = 1;
    if (a1 != 1.0 && v86 >= 2)
    {
      v65 = (v7 + 10);
      do
      {
        v66 = v65[-2].i64[0];
        v97[0] = 0uLL;
        C3DNodeGetQuaternion(v66);
        v97[0] = v67;
        C3DQuaternionSlerp(v65, v97, v97, a1, v68, v69, v70, v71, v72, v73);
        C3DQuaternionNormalize(v97);
        C3DNodeSetQuaternion(v66, v97[0]);
        v65 += 3;
        --v24;
      }

      while (v24);
      return 1;
    }

    return result;
  }

  v74 = a4;
  if (v5 == a4)
  {
    if ((_C3DConstraintIKSetupJoints_done_75 & 1) == 0)
    {
      _C3DConstraintIKSetupJoints_done_75 = 1;
      v84 = scn_default_log();
      result = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      C3DConstraintApplyIK_cold_3(v84);
    }

    return 0;
  }

  v75 = 0;
  v76 = 0;
  v77 = a4;
  while (v77)
  {
    ++v76;
    v77 = C3DNodeGetParent(v77);
    v75 += 48;
    if (v77 == v5)
    {
      v78 = malloc_type_malloc(v75, 0x102004031CE6520uLL);
      v79 = 0;
      v4[10].n128_u64[0] = v78;
      v4[10].n128_u64[1] = v76;
      do
      {
        v80 = v4[10].n128_u64[0];
        *(v80 + v79 + 8) = 1078530011;
        v81 = v4[11].n128_u64[0];
        if (v81)
        {
          Value = CFDictionaryGetValue(v81, v74);
          v80 = v4[10].n128_u64[0];
          if (Value)
          {
            *(v80 + v79 + 8) = Value;
          }
        }

        *(v80 + v79) = v74;
        C3DNodeGetQuaternion(v74);
        *(v4[10].n128_u64[0] + v79 + 16) = v83;
        v74 = C3DNodeGetParent(v74);
        v79 += 48;
        --v76;
      }

      while (v76);
      v7 = v4[10].n128_u64[0];
      goto LABEL_3;
    }
  }

  if (_C3DConstraintIKSetupJoints_done)
  {
    return 0;
  }

  _C3DConstraintIKSetupJoints_done = 1;
  v85 = scn_default_log();
  result = os_log_type_enabled(v85, OS_LOG_TYPE_ERROR);
  if (result)
  {
    C3DConstraintApplyIK_cold_2(v85);
    return 0;
  }

  return result;
}

void C3DConstraintIKSetChainRoot(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 136) = a2;
  v12 = *(a1 + 160);
  if (v12)
  {
    free(v12);
    *(a1 + 160) = 0;
  }
}

void C3DConstraintIKSetTarget(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  a1[9] = a2;
}

void C3DConstraintIKSetMaxRotationForNode(uint64_t a1, void *key, float a3)
{
  Mutable = *(a1 + 176);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    *(a1 + 176) = Mutable;
  }

  CFDictionarySetValue(Mutable, key, LODWORD(a3));
  *(a1 + 184) = 1;
  v7 = *(a1 + 160);
  if (v7)
  {
    v8 = *(a1 + 168);
    v9 = v8 - 1;
    if (v8 >= 1)
    {
      v10 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v11 = vdupq_n_s64(v9);
      v12 = xmmword_21C27F630;
      v13 = xmmword_21C27F640;
      v14 = (v7 + 104);
      v15 = vdupq_n_s64(4uLL);
      do
      {
        v16 = vmovn_s64(vcgeq_u64(v11, v13));
        if (vuzp1_s16(v16, *v11.i8).u8[0])
        {
          *(v14 - 24) = a3;
        }

        if (vuzp1_s16(v16, *&v11).i8[2])
        {
          *(v14 - 12) = a3;
        }

        if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
        {
          *v14 = a3;
          v14[12] = a3;
        }

        v12 = vaddq_s64(v12, v15);
        v13 = vaddq_s64(v13, v15);
        v14 += 48;
        v10 -= 4;
      }

      while (v10);
    }
  }
}

double convertPositionToNode(float32x4_t *a1, float32x4_t *a2, __n128 a3)
{
  v19 = a3;
  if (a1 != a2)
  {
    memset(v18, 0, sizeof(v18));
    C3DMatrix4x4MakeTranslation(v18, &v19);
    WorldMatrix = C3DNodeGetWorldMatrix(a2);
    v6 = WorldMatrix[3];
    v8 = *WorldMatrix;
    v7 = WorldMatrix[1];
    v17.columns[2] = WorldMatrix[2];
    v17.columns[3] = v6;
    v17.columns[0] = v8;
    v17.columns[1] = v7;
    C3DMatrix4x4Invert(&v17, &v17);
    if (a1)
    {
      Identity = C3DNodeGetWorldMatrix(a1);
    }

    else
    {
      Identity = C3DMatrix4x4GetIdentity();
    }

    v10 = *Identity;
    v11 = Identity[1];
    v12 = Identity[3];
    v16[2] = Identity[2];
    v16[3] = v12;
    v16[0] = v10;
    v16[1] = v11;
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    C3DMatrix4x4Mult(v16, &v17, v14);
    C3DMatrix4x4Mult(v18, v14, v14);
    a3.n128_u64[0] = v15;
  }

  return a3.n128_f64[0];
}

void __C3DConstraintDistanceGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DConstraintDistanceGetTypeID_typeID = v0;
  if (C3DConstraintGetTypeID_onceToken != -1)
  {
    __C3DConstraintLookAtGetTypeID_block_invoke_cold_1();
  }

  C3DModelPathResolverRegisterClassBegin(v0, C3DConstraintGetTypeID_typeID);
  C3DModelPathResolverRegisterProperty(@"minimumDistance", 0x90u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"maximumDistance", 0x94u, 1, 0);

  C3DModelPathResolverRegisterClassEnd();
}

void C3DConstraintDistanceSetTargetDirection(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  a1[11] = a2;
}

void C3DConstraintDistanceSetKeepTargetDirection(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 152) = a2;
}

void C3DConstraintDistanceSetMinimumDistance(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 144) = a2;
}

void C3DConstraintDistanceSetMaximumDistance(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 148) = a2;
}

BOOL C3DConstraintApplyDistance(float a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5)
{
  if (!a3)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(a3 + 16);
  v17 = *(v16 + 136);
  if (v17)
  {
    v116.i32[2] = 0;
    v116.i64[0] = 0;
    v115.i32[2] = 0;
    v115.i64[0] = 0;
    C3DNodeGetWorldPosition(v17, &v116);
    C3DNodeGetWorldPosition(a4, &v115);
    v19 = vsubq_f32(v115, v116);
    v20 = vmulq_f32(v19, v19);
    v20.f32[0] = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
    v111 = v20;
    if (v20.f32[0] == 0.0)
    {
      v21.f32[0] = arc4random();
      v108 = v21;
      *&v22 = arc4random();
      v106 = v22;
      v23 = arc4random();
      v18.i64[1] = *(&v106 + 1);
      v26 = v108;
      v26.i32[1] = v106;
      v26.f32[2] = v23;
      v24 = vmulq_f32(v26, v26);
      v25 = v26;
      v26.f32[0] = v24.f32[2] + vaddv_f32(*v24.f32);
      *v24.f32 = vrsqrte_f32(v26.u32[0]);
      *v24.f32 = vmul_f32(*v24.f32, vrsqrts_f32(v26.u32[0], vmul_f32(*v24.f32, *v24.f32)));
      *v18.f32 = vmul_f32(*v24.f32, *v24.f32);
      *v26.f32 = vrsqrts_f32(v26.u32[0], *v18.f32);
      v27 = vmulq_n_f32(v25, vmul_f32(*v24.f32, *v26.f32).f32[0]);
    }

    else
    {
      v26 = vdupq_lane_s32(*v20.f32, 0);
      v27 = vdivq_f32(v19, v26);
    }

    if (*(v16 + 152) == 1)
    {
      v28 = MEMORY[0x277D860B8];
      v114 = 0uLL;
      v109 = v27;
      C3DNodeGetWorldOrientation(*(v16 + 136), &v114);
      v29 = v114;
      v30 = vnegq_f32(v114);
      v31 = v30;
      v31.i32[3] = v114.i32[3];
      v32 = vmulq_f32(v31, v31);
      *v32.i8 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
      v33 = vdupq_lane_s32(vadd_f32(*v32.i8, vdup_lane_s32(*v32.i8, 1)), 0);
      v34 = vrsqrteq_f32(v33);
      v35 = vmulq_f32(v34, vrsqrtsq_f32(v33, vmulq_f32(v34, v34)));
      v36 = vbslq_s8(vceqzq_f32(v33), v31, vmulq_f32(v31, vmulq_f32(v35, vrsqrtsq_f32(v33, vmulq_f32(v35, v35)))));
      v37 = vnegq_f32(v109);
      v38 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
      v39 = vnegq_f32(v36);
      v40 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), v39), v38, v109);
      v41 = vaddq_f32(v40, v40);
      v42 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
      v43 = vmlaq_laneq_f32(v37, v42, v36, 3);
      v44 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), v39), v42, v38);
      v45 = vaddq_f32(v43, vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL));
      v46 = *(v16 + 176);
      v47 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
      v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), vnegq_f32(v45)), v46, v47);
      v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
      v50 = vmulq_f32(v46, v45);
      v51 = vmulq_f32(v45, v45);
      v52 = vmulq_f32(v46, v46);
      *v52.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v52, v52, 8uLL), *&vextq_s8(v51, v51, 8uLL)), vadd_f32(vzip1_s32(*v52.i8, *v51.i8), vzip2_s32(*v52.i8, *v51.i8)));
      v49.f32[3] = (v50.f32[2] + vaddv_f32(*v50.f32)) + sqrtf(vmul_lane_f32(*v52.i8, *v52.i8, 1).f32[0]);
      v53 = vmulq_f32(v49, v49);
      *v53.i8 = vadd_f32(*v53.i8, *&vextq_s8(v53, v53, 8uLL));
      v54 = vdupq_lane_s32(vadd_f32(*v53.i8, vdup_lane_s32(*v53.i8, 1)), 0);
      v55 = vrsqrteq_f32(v54);
      _Q2 = vmulq_f32(v55, vrsqrtsq_f32(v54, vmulq_f32(v55, v55)));
      _Q3 = vrsqrtsq_f32(v54, vmulq_f32(_Q2, _Q2));
      v58 = vbslq_s8(vceqzq_f32(v54), v49, vmulq_f32(vmulq_f32(_Q2, _Q3), v49));
      _Q5 = v28[3];
      _Q1 = vmulq_f32(_Q5, v58);
      _Q2.i32[0] = v58.i32[2];
      __asm { FMLA            S1, S2, V5.S[2] }

      _Q3.i32[0] = v58.i32[3];
      v64 = -(_Q1.f32[0] + (_Q5.f32[3] * v58.f32[3]));
      __asm { FMLA            S1, S3, V5.S[3] }

      _Q3.i64[0] = 0;
      v66 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(_Q3, _Q1), 0), vnegq_f32(v58), v58);
      if (_Q1.f32[0] >= 0.0)
      {
        v67 = _Q1.f32[0];
      }

      else
      {
        v67 = v64;
      }

      if (1.0 - v67 <= 0.00100000005)
      {
        v71 = 1.0 - a1;
        v72 = a1;
      }

      else
      {
        v107 = v30;
        v110 = v114;
        v104 = v47;
        v105 = v31;
        v102 = v28[3];
        v103 = v45;
        v101 = v66;
        v68 = acosf(v67);
        v69 = sinf(v68);
        v100 = sinf((1.0 - a1) * v68) / v69;
        v70 = sinf(v68 * a1);
        v71 = v100;
        v66 = v101;
        _Q5 = v102;
        v45 = v103;
        v47 = v104;
        v31 = v105;
        v30 = v107;
        v29 = v110;
        v72 = v70 / v69;
      }

      v73 = vmlaq_n_f32(vmulq_n_f32(v66, v72), _Q5, v71);
      v74 = vnegq_f32(v73);
      v75 = vzip1q_s32(v74, v74);
      v75.i32[0] = v74.i32[2];
      v76 = vuzp1q_s32(v74, v74);
      v76.i32[0] = v74.i32[1];
      v77 = v74;
      v77.i32[3] = v73.i32[3];
      v78 = v45;
      v78.i32[3] = v45.i32[0];
      v79 = vmlaq_f32(vmlaq_f32(vmulq_f32(vmulq_f32(v78, vextq_s8(vdupq_laneq_s32(v77, 3), v77, 4uLL)), xmmword_21C27FD00), 0, v77), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v45, v45, 0xCuLL), v45, 8uLL), v75));
      v80 = v73;
      v80.i32[3] = v73.i32[0];
      v81 = vmlsq_f32(v79, v76, v47);
      v82 = vzip1q_s32(v81, v81);
      v82.i32[0] = v81.i32[2];
      v83 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v80, vextq_s8(vdupq_laneq_s32(v81, 3), v81, 4uLL)), xmmword_21C27FD00), v81, v73, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v73, v73, 0xCuLL), v73, 8uLL), v82));
      v84 = vuzp1q_s32(v81, v81);
      v84.i32[0] = v81.i32[1];
      v85 = vnegq_f32(vmlsq_f32(v83, v84, vextq_s8(vuzp1q_s32(v73, v73), v73, 0xCuLL)));
      v86 = vextq_s8(vextq_s8(v85, v85, 0xCuLL), v85, 8uLL);
      v87 = vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL);
      v85.i32[3] = v85.i32[0];
      v88 = vzip1q_s32(v30, v30);
      v88.i32[0] = v30.i32[2];
      v89 = vmlaq_f32(vmlaq_f32(vmulq_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v31, 3), v31, 4uLL), v85), xmmword_21C27FD00), 0, v31), xmmword_21C27FD00, vmulq_f32(v88, v86));
      v90 = vuzp1q_s32(v30, v30);
      v90.i32[0] = v30.i32[1];
      v26 = vmlsq_f32(v89, v90, v87);
      v91 = v29;
      v91.i32[3] = v29.i32[0];
      v92 = vzip1q_s32(v26, v26);
      v92.i32[0] = v26.i32[2];
      v93 = vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v91, vextq_s8(vdupq_laneq_s32(v26, 3), v26, 4uLL)), xmmword_21C27FD00), v26, v29, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v29, v29, 0xCuLL), v29, 8uLL), v92));
      v18 = vuzp1q_s32(v26, v26);
      v18.i32[0] = v26.i32[1];
      v27 = vmlsq_f32(v93, v18, vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL));
    }

    v26.i32[0] = *(v16 + 144);
    v18.i32[0] = *(v16 + 148);
    v113 = vmlaq_n_f32(v115, vsubq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v26, v111), 0), vmlaq_n_f32(v116, v27, v26.f32[0]), vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v111, v18), 0), vmlaq_n_f32(v116, v27, v18.f32[0]), vmlaq_n_f32(v116, v27, v111.f32[0]))), v115), a1);
    Parent = C3DNodeGetParent(a4);
    if (Parent)
    {
      WorldMatrix = C3DNodeGetWorldMatrix(Parent);
    }

    else
    {
      WorldMatrix = MEMORY[0x277D860B8];
    }

    v117 = __invert_f4(*WorldMatrix);
    v114 = vaddq_f32(v117.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v117.columns[1], *v113.f32, 1), v117.columns[0], v113.f32[0]), v117.columns[2], v113, 2));
    Target = C3DModelTargetGetTarget(a5);
    TargetAddress = C3DModelTargetGetTargetAddress(a5);
    v98 = C3DSizeOfBaseType(9);
    C3DSetValue(Target, TargetAddress, &v114, v98, 6, 0);
  }

  return v17 != 0;
}

uint64_t C3DConstraintCreateDistance()
{
  if (C3DConstraintDistanceGetTypeID_onceToken != -1)
  {
    C3DConstraintCreateDistance_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintDistanceGetTypeID_typeID, 176);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *(Instance + 136) = 0;
  *(Instance + 144) = 0x7F7FFFFF00000000;
  *(Instance + 152) = 0;
  *(Instance + 176) = xmmword_21C27F900;
  *(Instance + 156) = vdup_n_s32(0x43B40000u);
  *(Instance + 88) = C3DConstraintApplyDistance;
  *(Instance + 96) = C3DConstraintDistanceCopyTargetPath;
  return Instance;
}

void __C3DConstraintAccelerationGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DConstraintAccelerationGetTypeID_typeID = v0;
  if (C3DConstraintGetTypeID_onceToken != -1)
  {
    __C3DConstraintLookAtGetTypeID_block_invoke_cold_1();
  }

  C3DModelPathResolverRegisterClassBegin(v0, C3DConstraintGetTypeID_typeID);
  C3DModelPathResolverRegisterProperty(@"maximumLinearAcceleration", 0x8Cu, 1, 0);
  C3DModelPathResolverRegisterProperty(@"maximumLinearVelocity", 0x88u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"decelerationDistance", 0x90u, 1, 0);
  C3DModelPathResolverRegisterProperty(@"damping", 0x94u, 1, 0);

  C3DModelPathResolverRegisterClassEnd();
}

void C3DConstraintAccelerationSetMaximumPositionVelocity(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 136) = a2;
}

void C3DConstraintAccelerationSetMaximumPositionAcceleration(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 140) = a2;
}

uint64_t C3DConstraintAccelerationInit(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  if (!a1)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DConstraintControllerInitializeConstraint_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = malloc_type_calloc(1uLL, 0x60uLL, 0x100004084AB7CDAuLL);
  *(a2 + 56) = v13;
  v16.n128_u32[2] = 0;
  v16.n128_u64[0] = 0;
  C3DNodeGetWorldPosition(a3, &v16);
  *v13 = v16;
  v13[1] = 0u;
  v15 = 0uLL;
  C3DNodeGetWorldOrientation(a3, &v15);
  v13[2] = v15;
  v13[3] = 0u;
  return 1;
}

uint64_t C3DConstraintApplyAcceleration(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float a5)
{
  if (!a2)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = *(a2 + 56);
  SystemTime = C3DEngineContextGetSystemTime(a1);
  if (SystemTime != *(v17 + 72))
  {
    Parent = C3DNodeGetParent(a3);
    if (Parent)
    {
      WorldMatrix = C3DNodeGetWorldMatrix(Parent);
    }

    else
    {
      WorldMatrix = MEMORY[0x277D860B8];
    }

    v68 = __invert_f4(*WorldMatrix);
    v61 = v68.columns[0];
    v62 = v68.columns[1];
    v63 = v68.columns[3];
    v64 = v68.columns[2];
    if (*(v17 + 80) == 1)
    {
      *v68.columns[0].i64 = SystemTime - *(v17 + 72);
      v68.columns[0].f32[0] = *v68.columns[0].i64;
    }

    else
    {
      v68.columns[0].i32[0] = 1015580809;
    }

    v60 = *v68.columns[0].f32;
    v21 = *(a2 + 16);
    *(v67.i64 + 4) = 0;
    v67.i32[0] = 0;
    C3DNodeGetWorldPosition(a3, &v67);
    if ((*(v17 + 80) & 1) == 0)
    {
      *v17 = v67;
      *(v17 + 80) = 1;
    }

    *(v17 + 72) = C3DEngineContextGetSystemTime(a1);
    v22 = v21[34];
    v23 = v21[35];
    v24 = v67;
    v25 = *v17;
    v26 = *(v17 + 16);
    v27 = vsubq_f32(v67, *v17);
    v28 = vdupq_lane_s32(v60, 0);
    v29 = vdivq_f32(v27, v28);
    v30 = vdivq_f32(vsubq_f32(v29, v26), v28);
    v31 = vmulq_f32(v30, v30);
    v32 = v31.f32[2] + vaddv_f32(*v31.f32);
    if (sqrtf(v32) > v23)
    {
      v33 = v32;
      v34 = vrsqrte_f32(LODWORD(v32));
      v35 = vmul_f32(v34, vrsqrts_f32(LODWORD(v33), vmul_f32(v34, v34)));
      v29 = vmlaq_f32(v26, v28, vmulq_n_f32(vmulq_n_f32(v30, vmul_f32(v35, vrsqrts_f32(LODWORD(v33), vmul_f32(v35, v35))).f32[0]), v23));
    }

    v36 = vmulq_f32(v29, v29);
    v37 = v36.f32[2] + vaddv_f32(*v36.f32);
    if (sqrtf(v37) > v22)
    {
      v38 = v37;
      v39 = vrsqrte_f32(LODWORD(v37));
      v40 = vmul_f32(v39, vrsqrts_f32(LODWORD(v38), vmul_f32(v39, v39)));
      v29 = vmulq_n_f32(vmulq_n_f32(v29, vmul_f32(v40, vrsqrts_f32(LODWORD(v38), vmul_f32(v40, v40))).f32[0]), v22);
    }

    v41 = v21[36];
    v42 = vmulq_n_f32(v29, 1.0 - v21[37]);
    if (v41 != 0.0)
    {
      v43 = vmulq_f32(v27, v27);
      v44 = sqrtf(v43.f32[2] + vaddv_f32(*v43.f32));
      v45 = vmulq_f32(v42, v42);
      v46 = v45.f32[2] + vaddv_f32(*v45.f32);
      v47 = sqrtf(v46);
      if (v44 >= v41)
      {
        *(v17 + 64) = v47;
      }

      else
      {
        v48 = v44 / v41;
        if (v48 >= 1.0)
        {
          v49 = 1.0;
        }

        else
        {
          v49 = v48 * v48;
        }

        v50 = v49 * *(v17 + 64);
        if (v47 > v50)
        {
          v51 = v46;
          v52 = vrsqrte_f32(LODWORD(v46));
          v53 = vmul_f32(v52, vrsqrts_f32(LODWORD(v51), vmul_f32(v52, v52)));
          v42 = vmulq_n_f32(vmulq_n_f32(v42, vmul_f32(v53, vrsqrts_f32(LODWORD(v51), vmul_f32(v53, v53))).f32[0]), v50);
        }
      }
    }

    v54 = vmlaq_n_f32(v25, v42, *v60.i32);
    if (a5 != 0.0)
    {
      v55 = vmlaq_n_f32(v24, vsubq_f32(v54, v24), a5);
      v42 = vdivq_f32(vsubq_f32(v55, v25), v28);
      v54 = v55;
    }

    *v17 = v54;
    *(v17 + 16) = v42;
    v66 = vaddq_f32(v63, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v61, v54.f32[0]), v62, *v54.f32, 1), v64, v54, 2));
    Target = C3DModelTargetGetTarget(a4);
    TargetAddress = C3DModelTargetGetTargetAddress(a4);
    v58 = C3DSizeOfBaseType(9);
    C3DSetValue(Target, TargetAddress, &v66, v58, 6, 0);
  }

  return 1;
}

uint64_t C3DConstraintCreateAcceleration()
{
  if (C3DConstraintAccelerationGetTypeID_onceToken != -1)
  {
    C3DConstraintAccelerationGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintAccelerationGetTypeID_typeID, 136);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *(Instance + 136) = xmmword_21C2A3E70;
  *(Instance + 88) = C3DConstraintApplyAcceleration;
  *(Instance + 96) = C3DConstraintAccelerationCopyTargetPath;
  *(Instance + 80) = C3DConstraintAccelerationInit;
  return Instance;
}

void __C3DConstraintReplicatorGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DConstraintReplicatorGetTypeID_typeID = v0;
  if (C3DConstraintGetTypeID_onceToken != -1)
  {
    __C3DConstraintLookAtGetTypeID_block_invoke_cold_1();
  }

  C3DModelPathResolverRegisterClassBegin(v0, C3DConstraintGetTypeID_typeID);
  C3DModelPathResolverRegisterProperty(@"orientationOffset", 0xC0u, 10, 3);
  C3DModelPathResolverRegisterProperty(@"positionOffset", 0xA0u, 9, 6);
  C3DModelPathResolverRegisterProperty(@"scaleOffset", 0xB0u, 9, 7);

  C3DModelPathResolverRegisterClassEnd();
}

void C3DConstraintReplicatorSetPositionEnabled(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 144) = *(a1 + 144) & 0xFE | a2;
}

void C3DConstraintReplicatorSetOrientationEnabled(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 144) = *(a1 + 144) & 0xFD | v12;
}

void C3DConstraintReplicatorSetScaleEnabled(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 144) = *(a1 + 144) & 0xFB | v12;
}

void C3DConstraintReplicatorSetPositionOffset(__n128 *a1, __n128 a2)
{
  if (!a1)
  {
    v12 = a2;
    v3 = scn_default_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    a2 = v12;
    if (v4)
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
      a2 = v12;
    }
  }

  a1[10] = a2;
}

float32x4_t *C3DConstraintApplyReplicator(float a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5)
{
  if (!a3)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(a3 + 16);
  if (!*(v16 + 136))
  {
    return 0;
  }

  Parent = C3DNodeGetParent(a4);
  result = C3DNodeGetWorldMatrix(a4);
  if (!result)
  {
    return result;
  }

  v19 = result;
  v20 = MEMORY[0x277D860B8];
  if (Parent)
  {
    WorldMatrix = C3DNodeGetWorldMatrix(Parent);
  }

  else
  {
    WorldMatrix = MEMORY[0x277D860B8];
  }

  v196 = __invert_f4(*WorldMatrix);
  v191 = v196.columns[1];
  v192 = v196.columns[0];
  v22 = *(v16 + 144);
  v189 = v196.columns[3];
  v190 = v196.columns[2];
  if ((v22 & 1) == 0)
  {
    v188 = v19[3];
    if ((*(v16 + 144) & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_19:
    v45 = *v19;
    v44 = v19[1];
    v46 = v19[2];
    v47 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL), vnegq_f32(v44)), v46, vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL));
    v48 = vmulq_f32(*v19, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
    _NF = (v48.f32[2] + vaddv_f32(*v48.f32)) < 0.0;
    v49 = 1.0;
    if (_NF)
    {
      v49 = -1.0;
    }

    v50 = vmulq_f32(v45, v45);
    v51 = vmulq_f32(v44, v44);
    v52 = vadd_f32(vzip1_s32(*v50.i8, *v51.i8), vzip2_s32(*v50.i8, *v51.i8));
    v53 = vextq_s8(v50, v50, 8uLL);
    *v53.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v53.f32, *&vextq_s8(v51, v51, 8uLL)), v52));
    v54 = vmulq_f32(v46, v46);
    v53.i32[2] = sqrtf(v54.f32[2] + vaddv_f32(*v54.f32));
    v55 = vmulq_n_f32(v53, v49);
    v56 = vceqzq_f32(v55);
    v56.i32[3] = v56.i32[2];
    if ((vmaxvq_u32(v56) & 0x80000000) != 0 || (v57 = vmvnq_s8(vorrq_s8(vcltzq_f32(v55), vcgezq_f32(v55))), v57.i32[3] = v57.i32[2], (vmaxvq_u32(v57) & 0x80000000) != 0))
    {
      v64 = v20[3];
      v65 = v64;
      if ((v22 & 4) != 0)
      {
        goto LABEL_61;
      }

LABEL_77:
      v156 = v19[1];
      v157 = v19[2];
      v158 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v157, v157), v157, 0xCuLL), vnegq_f32(v156)), v157, vextq_s8(vuzp1q_s32(v156, v156), v156, 0xCuLL));
      v159 = vmulq_f32(vextq_s8(vuzp1q_s32(v158, v158), v158, 0xCuLL), *v19);
      _NF = (v159.f32[2] + vaddv_f32(*v159.f32)) < 0.0;
      v160 = 1.0;
      if (_NF)
      {
        v160 = -1.0;
      }

      v161 = vmulq_f32(*v19, *v19);
      v162 = vmulq_f32(v156, v156);
      v163 = vadd_f32(vzip1_s32(*v161.i8, *v162.i8), vzip2_s32(*v161.i8, *v162.i8));
      v164 = vextq_s8(v161, v161, 8uLL);
      *v164.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v164.f32, *&vextq_s8(v162, v162, 8uLL)), v163));
      v165 = vmulq_f32(v157, v157);
      v164.i32[2] = sqrtf(v165.f32[2] + vaddv_f32(*v165.f32));
      v136 = vmulq_n_f32(v164, v160);
      goto LABEL_80;
    }

    v58 = vdivq_f32(v45, vdupq_lane_s32(*v55.f32, 0));
    v59 = vdivq_f32(v44, vdupq_lane_s32(*v55.f32, 1));
    v60 = vdivq_f32(v46, vdupq_laneq_s32(v55, 2));
    v61 = v60.f32[2] + (*v58.i32 + v59.f32[1]);
    if (v61 > 0.0)
    {
      *v60.f32 = vsub_f32(*&vzip2q_s32(v59, vuzp1q_s32(v59, v60)), *&vtrn2q_s32(v60, vzip2q_s32(v60, v58)));
      v60.f32[2] = *&v58.i32[1] - v59.f32[0];
      v62 = v61 + 1.0;
      v60.f32[3] = v61 + 1.0;
      goto LABEL_60;
    }

    if (*v58.i32 <= v59.f32[1] || *v58.i32 <= v60.f32[2])
    {
      if (v59.f32[1] > v60.f32[2])
      {
        v71 = v59;
        v71.f32[1] = (v59.f32[1] + 1.0) - *v58.i32;
        v71.i32[3] = v60.i32[0];
        v72 = vzip2q_s32(vzip1q_s32(v58, v60), vtrn1q_s32(v60, v58));
        v59 = vaddq_f32(v59, v72);
        v73 = vsubq_f32(v71, v72);
        v60 = vtrn2q_s32(vrev64q_s32(v59), v73);
        v62 = *&v73.i32[1];
        goto LABEL_60;
      }

      *v60.f32 = vadd_f32(*v60.f32, *&vzip2q_s32(v58, v59));
      v62 = ((v60.f32[2] + 1.0) - *v58.i32) - v59.f32[1];
      v60.f32[2] = v62;
      v79 = *&v58.i32[1] - v59.f32[0];
    }

    else
    {
      v62 = ((*v58.i32 + 1.0) - v59.f32[1]) - v60.f32[2];
      *&v77 = v59.f32[0] + *&v58.i32[1];
      v78 = v60.f32[0] + *&v58.i32[2];
      v79 = v59.f32[2] - v60.f32[1];
      v60.i64[0] = __PAIR64__(v77, LODWORD(v62));
      v60.f32[2] = v78;
    }

    v60.f32[3] = v79;
LABEL_60:
    v59.i32[0] = 0;
    v110 = vmulq_n_f32(v60, 0.5 / sqrtf(v62));
    v111 = vmvnq_s8(vceqq_f32(v110, v110));
    v111.i32[0] = vmaxvq_u32(v111);
    v64 = v20[3];
    v65 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v59, v111), 0), v64, v110);
    if ((v22 & 4) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_77;
  }

  v195.i32[2] = 0;
  v195.i64[0] = 0;
  C3DNodeGetWorldPosition(*(v16 + 136), &v195);
  v194[0].n128_u32[2] = 0;
  v194[0].n128_u64[0] = 0;
  C3DNodeGetWorldPosition(a4, v194);
  v188 = vmlaq_n_f32(v194[0], vsubq_f32(vaddq_f32(v195, *(v16 + 160)), v194[0]), a1);
  v22 = *(v16 + 144);
  if ((v22 & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v23 = C3DNodeGetWorldMatrix(*(v16 + 136));
  v25 = *v23;
  v24 = v23[1];
  v26 = v23[2];
  v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v24)), v26, vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL));
  v28 = vmulq_f32(*v23, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL));
  _NF = (v28.f32[2] + vaddv_f32(*v28.f32)) < 0.0;
  v30 = 1.0;
  if (_NF)
  {
    v30 = -1.0;
  }

  v31 = vmulq_f32(v25, v25);
  v32 = vmulq_f32(v24, v24);
  v33 = vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8));
  v34 = vextq_s8(v31, v31, 8uLL);
  *v34.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v34.f32, *&vextq_s8(v32, v32, 8uLL)), v33));
  v35 = vmulq_f32(v26, v26);
  v34.i32[2] = sqrtf(v35.f32[2] + vaddv_f32(*v35.f32));
  v36 = vmulq_n_f32(v34, v30);
  v37 = vceqzq_f32(v36);
  v37.i32[3] = v37.i32[2];
  if ((vmaxvq_u32(v37) & 0x80000000) != 0 || (v38 = vmvnq_s8(vorrq_s8(vcltzq_f32(v36), vcgezq_f32(v36))), v38.i32[3] = v38.i32[2], (vmaxvq_u32(v38) & 0x80000000) != 0))
  {
    v63 = v20[3];
    v186 = v63;
    goto LABEL_45;
  }

  v39 = vdivq_f32(v25, vdupq_lane_s32(*v36.f32, 0));
  v40 = vdivq_f32(v24, vdupq_lane_s32(*v36.f32, 1));
  v41 = vdivq_f32(v26, vdupq_laneq_s32(v36, 2));
  v42 = v41.f32[2] + (*v39.i32 + v40.f32[1]);
  if (v42 <= 0.0)
  {
    if (*v39.i32 <= v40.f32[1] || *v39.i32 <= v41.f32[2])
    {
      if (v40.f32[1] > v41.f32[2])
      {
        v67 = v40;
        v67.f32[1] = (v40.f32[1] + 1.0) - *v39.i32;
        v67.i32[3] = v41.i32[0];
        v68 = vzip2q_s32(vzip1q_s32(v39, v41), vtrn1q_s32(v41, v39));
        v40 = vaddq_f32(v40, v68);
        v69 = vsubq_f32(v67, v68);
        v41 = vtrn2q_s32(vrev64q_s32(v40), v69);
        v43 = *&v69.i32[1];
        goto LABEL_44;
      }

      *v41.f32 = vadd_f32(*v41.f32, *&vzip2q_s32(v39, v40));
      v43 = ((v41.f32[2] + 1.0) - *v39.i32) - v40.f32[1];
      v41.f32[2] = v43;
      v76 = *&v39.i32[1] - v40.f32[0];
    }

    else
    {
      v43 = ((*v39.i32 + 1.0) - v40.f32[1]) - v41.f32[2];
      *&v74 = v40.f32[0] + *&v39.i32[1];
      v75 = v41.f32[0] + *&v39.i32[2];
      v76 = v40.f32[2] - v41.f32[1];
      v41.i64[0] = __PAIR64__(v74, LODWORD(v43));
      v41.f32[2] = v75;
    }

    v41.f32[3] = v76;
    goto LABEL_44;
  }

  *v41.f32 = vsub_f32(*&vzip2q_s32(v40, vuzp1q_s32(v40, v41)), *&vtrn2q_s32(v41, vzip2q_s32(v41, v39)));
  v41.f32[2] = *&v39.i32[1] - v40.f32[0];
  v43 = v42 + 1.0;
  v41.f32[3] = v42 + 1.0;
LABEL_44:
  v40.i32[0] = 0;
  v80 = vmulq_n_f32(v41, 0.5 / sqrtf(v43));
  v81 = vmvnq_s8(vceqq_f32(v80, v80));
  v81.i32[0] = vmaxvq_u32(v81);
  v186 = v20[3];
  v63 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v40, v81), 0), v186, v80);
LABEL_45:
  v183 = v63;
  v82 = C3DNodeGetWorldMatrix(a4);
  v84 = *v82;
  v83 = v82[1];
  v85 = v82[2];
  v86 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL), vnegq_f32(v83)), v85, vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL));
  v87 = vmulq_f32(*v82, vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL));
  _NF = (v87.f32[2] + vaddv_f32(*v87.f32)) < 0.0;
  v88 = 1.0;
  if (_NF)
  {
    v88 = -1.0;
  }

  v89 = vmulq_f32(v84, v84);
  v90 = vmulq_f32(v83, v83);
  v91 = vadd_f32(vzip1_s32(*v89.i8, *v90.i8), vzip2_s32(*v89.i8, *v90.i8));
  v92 = vextq_s8(v89, v89, 8uLL);
  *v92.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v92.f32, *&vextq_s8(v90, v90, 8uLL)), v91));
  v93 = vmulq_f32(v85, v85);
  v92.i32[2] = sqrtf(v93.f32[2] + vaddv_f32(*v93.f32));
  v94 = vmulq_n_f32(v92, v88);
  v95 = vceqzq_f32(v94);
  v95.i32[3] = v95.i32[2];
  v64 = v186;
  _Q6 = v186;
  if ((vmaxvq_u32(v95) & 0x80000000) == 0)
  {
    v97 = vmvnq_s8(vorrq_s8(vcltzq_f32(v94), vcgezq_f32(v94)));
    v97.i32[3] = v97.i32[2];
    _Q6 = v186;
    if ((vmaxvq_u32(v97) & 0x80000000) == 0)
    {
      v98 = vdivq_f32(v84, vdupq_lane_s32(*v94.f32, 0));
      v99 = vdivq_f32(v83, vdupq_lane_s32(*v94.f32, 1));
      v100 = vdivq_f32(v85, vdupq_laneq_s32(v94, 2));
      v101 = v100.f32[2] + (*v98.i32 + v99.f32[1]);
      if (v101 > 0.0)
      {
        *v100.f32 = vsub_f32(*&vzip2q_s32(v99, vuzp1q_s32(v99, v100)), *&vtrn2q_s32(v100, vzip2q_s32(v100, v98)));
        v100.f32[2] = *&v98.i32[1] - v99.f32[0];
        v102 = v101 + 1.0;
        v100.f32[3] = v101 + 1.0;
LABEL_70:
        v99.i32[0] = 0;
        v137 = vmulq_n_f32(v100, 0.5 / sqrtf(v102));
        v138 = vmvnq_s8(vceqq_f32(v137, v137));
        v138.i32[0] = vmaxvq_u32(v138);
        _Q6 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v99, v138), 0), v186, v137);
        goto LABEL_71;
      }

      if (*v98.i32 <= v99.f32[1] || *v98.i32 <= v100.f32[2])
      {
        if (v99.f32[1] > v100.f32[2])
        {
          v104 = v99;
          v104.f32[1] = (v99.f32[1] + 1.0) - *v98.i32;
          v104.i32[3] = v100.i32[0];
          v105 = vzip2q_s32(vzip1q_s32(v98, v100), vtrn1q_s32(v100, v98));
          v99 = vaddq_f32(v99, v105);
          v106 = vsubq_f32(v104, v105);
          v100 = vtrn2q_s32(vrev64q_s32(v99), v106);
          v102 = *&v106.i32[1];
          goto LABEL_70;
        }

        *v100.f32 = vadd_f32(*v100.f32, *&vzip2q_s32(v98, v99));
        v102 = ((v100.f32[2] + 1.0) - *v98.i32) - v99.f32[1];
        v100.f32[2] = v102;
        v109 = *&v98.i32[1] - v99.f32[0];
      }

      else
      {
        v102 = ((*v98.i32 + 1.0) - v99.f32[1]) - v100.f32[2];
        *&v107 = v99.f32[0] + *&v98.i32[1];
        v108 = v100.f32[0] + *&v98.i32[2];
        v109 = v99.f32[2] - v100.f32[1];
        v100.i64[0] = __PAIR64__(v107, LODWORD(v102));
        v100.f32[2] = v108;
      }

      v100.f32[3] = v109;
      goto LABEL_70;
    }
  }

LABEL_71:
  v139 = *(v16 + 192);
  v140 = v183;
  v140.i32[3] = v183.i32[0];
  v141 = vzip1q_s32(v139, v139);
  v141.i32[0] = *(v16 + 200);
  _Q3 = vuzp1q_s32(v139, v139);
  _Q3.i32[0] = HIDWORD(*(v16 + 192));
  v143 = vmlsq_f32(vmlaq_f32(vmlaq_laneq_f32(vmulq_f32(vmulq_f32(v140, vextq_s8(vdupq_laneq_s32(v139, 3), v139, 4uLL)), xmmword_21C27FD00), v139, v183, 3), xmmword_21C27FD00, vmulq_f32(vextq_s8(vextq_s8(v183, v183, 0xCuLL), v183, 8uLL), v141)), _Q3, vextq_s8(vuzp1q_s32(v183, v183), v183, 0xCuLL));
  _Q0 = vmulq_f32(_Q6, v143);
  _S2 = v143.i32[2];
  __asm { FMLA            S0, S2, V6.S[2] }

  _Q3.i32[0] = v143.i32[3];
  v148 = -(_Q0.f32[0] + (_Q6.f32[3] * v143.f32[3]));
  __asm { FMLA            S0, S3, V6.S[3] }

  _Q3.i64[0] = 0;
  v150 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(_Q3, _Q0), 0), vnegq_f32(v143), v143);
  if (_Q0.f32[0] < 0.0)
  {
    _Q0.f32[0] = v148;
  }

  if (1.0 - _Q0.f32[0] <= 0.00100000005)
  {
    v154 = 1.0 - a1;
    v155 = a1;
  }

  else
  {
    v182 = v150;
    v185 = _Q6;
    v151 = acosf(_Q0.f32[0]);
    v152 = sinf(v151);
    v180 = sinf((1.0 - a1) * v151) / v152;
    v153 = sinf(v151 * a1);
    v154 = v180;
    v150 = v182;
    _Q6 = v185;
    v64 = v186;
    v155 = v153 / v152;
  }

  v65 = vmlaq_n_f32(vmulq_n_f32(v150, v155), _Q6, v154);
  if ((*(v16 + 144) & 4) == 0)
  {
    goto LABEL_77;
  }

LABEL_61:
  v187 = v65;
  v112 = C3DNodeGetWorldMatrix(*(v16 + 136));
  v113 = v112[1];
  v114 = v112[2];
  v115 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL), vnegq_f32(v113)), v114, vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL));
  v116 = vextq_s8(vuzp1q_s32(v115, v115), v115, 0xCuLL);
  v117 = vmulq_f32(v116, *v112);
  v118 = vmulq_f32(*v112, *v112);
  v119 = vmulq_f32(v113, v113);
  *v116.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v118, v118, 8uLL), *&vextq_s8(v119, v119, 8uLL)), vadd_f32(vzip1_s32(*v118.i8, *v119.i8), vzip2_s32(*v118.i8, *v119.i8))));
  v120 = vmulq_f32(v114, v114);
  v116.i32[2] = sqrtf(v120.f32[2] + vaddv_f32(*v120.f32));
  v181 = v116;
  v184 = v117;
  v121 = C3DNodeGetWorldMatrix(a4);
  v65 = v187;
  v122 = v121[1];
  v123 = v121[2];
  v124 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v123, v123), v123, 0xCuLL), vnegq_f32(v122)), v123, vextq_s8(vuzp1q_s32(v122, v122), v122, 0xCuLL));
  v125 = vmulq_f32(vextq_s8(vuzp1q_s32(v124, v124), v124, 0xCuLL), *v121);
  v126 = vcltz_f32(vadd_f32(vzip1_s32(*&vextq_s8(v125, v125, 8uLL), *&vextq_s8(v184, v184, 8uLL)), vadd_f32(vzip1_s32(*v125.i8, *v184.i8), vzip2_s32(*v125.i8, *v184.i8))));
  if (v126.i8[4])
  {
    v127 = -1.0;
  }

  else
  {
    v127 = 1.0;
  }

  v128 = vmulq_n_f32(v181, v127);
  if (v126.i8[0])
  {
    v129 = -1.0;
  }

  else
  {
    v129 = 1.0;
  }

  v130 = vmulq_f32(*v121, *v121);
  v131 = vmulq_f32(v122, v122);
  v132 = vadd_f32(vzip1_s32(*v130.i8, *v131.i8), vzip2_s32(*v130.i8, *v131.i8));
  v133 = vextq_s8(v130, v130, 8uLL);
  *v133.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v133.f32, *&vextq_s8(v131, v131, 8uLL)), v132));
  v134 = vmulq_f32(v123, v123);
  v133.i32[2] = sqrtf(v134.f32[2] + vaddv_f32(*v134.f32));
  v135 = vmulq_n_f32(v133, v129);
  v136 = vmlaq_n_f32(v135, vsubq_f32(vmulq_f32(*(v16 + 176), v128), v135), a1);
  v64 = v20[3];
LABEL_80:
  v166 = 0;
  v167 = *v20;
  v168 = v20[1];
  v169 = vmulq_f32(v65, v65);
  v170 = vaddq_f32(v169, v169);
  v171 = vmulq_laneq_f32(v65, v65, 3);
  v172 = vmuls_lane_f32(v65.f32[0], *v65.f32, 1);
  v167.f32[0] = (1.0 - v170.f32[1]) - v170.f32[2];
  v173 = vmuls_lane_f32(v65.f32[1], v65, 2);
  v167.f32[1] = (v172 + v171.f32[2]) + (v172 + v171.f32[2]);
  v174 = vmuls_lane_f32(v65.f32[0], v65, 2);
  v167.f32[2] = (v174 - v171.f32[1]) + (v174 - v171.f32[1]);
  v168.f32[0] = (v172 - v171.f32[2]) + (v172 - v171.f32[2]);
  v170.f32[0] = 1.0 - v170.f32[0];
  v168.f32[1] = v170.f32[0] - v170.f32[2];
  v168.f32[2] = (v173 + v171.f32[0]) + (v173 + v171.f32[0]);
  v175 = v20[2];
  v175.f32[0] = (v174 + v171.f32[1]) + (v174 + v171.f32[1]);
  v175.f32[1] = (v173 - v171.f32[0]) + (v173 - v171.f32[0]);
  v175.f32[2] = v170.f32[0] - v170.f32[1];
  v176 = vaddq_f32(v188, v64);
  v176.i32[3] = v64.i32[3];
  v194[0] = vmulq_n_f32(v167, v136.f32[0]);
  v194[1] = vmulq_lane_f32(v168, *v136.f32, 1);
  v194[2] = vmulq_laneq_f32(v175, v136, 2);
  v194[3] = v176;
  memset(&v195, 0, 64);
  do
  {
    *(&v195 + v166 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v192, COERCE_FLOAT(*&v194[v166])), v191, v194[v166].n128_u64[0], 1), v190, v194[v166], 2), v189, v194[v166], 3);
    ++v166;
  }

  while (v166 != 4);
  Target = C3DModelTargetGetTarget(a5);
  TargetAddress = C3DModelTargetGetTargetAddress(a5);
  v179 = C3DSizeOfBaseType(11);
  C3DSetValue(Target, TargetAddress, &v195, v179, *(a5 + 34), *(a5 + 35));
  return 1;
}

uint64_t C3DConstraintCreateReplicator()
{
  if (C3DConstraintReplicatorGetTypeID_onceToken != -1)
  {
    C3DConstraintReplicatorGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintReplicatorGetTypeID_typeID, 192);
  *(Instance + 72) = 1065353216;
  *(Instance + 76) = 1;
  *(Instance + 77) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *(Instance + 144) = 7;
  __asm { FMOV            V1.4S, #1.0 }

  *(Instance + 160) = 0u;
  *(Instance + 176) = _Q1;
  *(Instance + 192) = *(MEMORY[0x277D860B8] + 48);
  *(Instance + 88) = C3DConstraintApplyReplicator;
  *(Instance + 96) = C3DConstraintReplicatorCopyTargetPath;
  return Instance;
}

void _C3DConstraintLookAtCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

void _C3DConstraintBillboardCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

void _C3DConstraintIKCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 176) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

void _C3DConstraintDistanceCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

CFStringRef _C3DConstraintDistanceCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintDistance>");
}

CFStringRef _C3DConstraintDistanceCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintDistance>");
}

void _C3DConstraintAccelerationCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }
}

CFStringRef _C3DConstraintAccelerationCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintAcceleration>");
}

CFStringRef _C3DConstraintAccelerationCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintAcceleration>");
}

void _C3DConstraintReplicatorCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 136) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }
}

CFStringRef _C3DConstraintReplicatorCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintReplicator>");
}

CFStringRef _C3DConstraintReplicatorCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintReplicator>");
}

C3D::DrawNodesPass *C3D::ManipulatorPass::ManipulatorPass(C3D::ManipulatorPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  v5 = 0;
  v7 = 0u;
  v8 = 0x20000;
  memset(v4, 0, sizeof(v4));
  v6 = -1;
  BYTE8(v7) = 1;
  result = C3D::DrawNodesPass::DrawNodesPass(this, a2, a3, v4);
  *result = &unk_282DC7EE8;
  return result;
}

void C3D::ManipulatorPass::setup(C3D::ManipulatorPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 2u);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 8) = "COLOR";
  C3D::Pass::parentColorDesc(this, &v6);
  *(v2 + 16) = v6;
  *(v2 + 32) = v7;
  *(v2 + 66) = *(v2 + 66) & 0xFF78 | 0x85;
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v3 + 8) = "COLOR";
  *(v3 + 65) = 0;
  C3D::Pass::parentColorDesc(this, &v6);
  *(v3 + 16) = v6;
  *(v3 + 32) = v7;
  *(v3 + 66) = *(v3 + 66) & 0xFFFC | 1;
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
  *(v4 + 8) = "DEPTH";
  C3D::Pass::parentDepthDesc(this, &v6);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  v5 = *(v4 + 66) & 0xFFFC;
  *(v4 + 64) = 2;
  *(v4 + 66) = v5 | 0xA;
  *(this + 296) = 0;
  *(this + 31) = C3DEngineContextGetPointOfView(*(this + 2));
  *(this + 303) = 256;
  *(this + 119) = 1;
  *(this + 5368) = 0;
  *(this + 11) = 4;
  C3D::DrawNodesPass::setup(this);
}

void C3D::ManipulatorPass::compile(C3D::ManipulatorPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v4 = *(v3 + 28);
  v5 = C3D::Pass::resource(this);
  v6 = [*C3D::PassResource::outputAtIndex(v5 1u)];
  v7 = [(SCNMTLRenderContext *)RenderContext reverseZ]| (2 * *(v3 + 31));
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v4)));
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ v6)));
  v10 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xF05FE8936EBFFF1DLL * (v9 ^ (v9 >> 47))) ^ ((0xF05FE8936EBFFF1DLL * (v9 ^ (v9 >> 47))) >> 47))));
  v11 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v10 ^ (v10 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v10 ^ (v10 >> 47))) >> 47));
  *(this + 670) = v11;
  if (!v11)
  {
    operator new();
  }

  C3D::DrawNodesPass::compile(this);
}

void C3D::ManipulatorPass::execute(uint64_t a1, SCNMTLRenderCommandEncoder **a2)
{
  if (*(a1 + 5368) == 1)
  {
    [(*a2)->var24[1] setDepthStencilState:{C3D::SmartPtr<SCNMTLRenderPipeline *, C3D::detail::NSRetainFct, C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5360) + 16)}];
    v4 = *a2;
    v5 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5360) + 24) :"state" detail:? :?NSRetainFct];
    if (v4->var23 != v5)
    {
      v4->var23 = v5;
      [v4->var24[1] setRenderPipelineState:v5];
    }

    v6 = *a2;
    v7 = C3D::Pass::inputTextureAtIndex(a1, 0);
    SCNMTLRenderCommandEncoder::setFragmentTexture(v6, v7, 0);
    SCNMTLRenderCommandEncoder::drawFullScreenTriangle(*a2);
  }

  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16));
  v9 = C3DRasterizerStatesDefault();
  v10 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v11 = [(SCNMTLRenderContext *)RenderContext reverseZ];
  [(*a2)->var24[1] setDepthStencilState:{-[SCNMTLResourceManager renderResourceForRasterizerState:reverseZ:](v10, v9, v11)}];
  [SCNMTLRenderContext setRasterizerStates:?];

  C3D::DrawNodesPass::execute(a1, a2);
}

uint64_t C3D::ManipulatorPass::setColorInput(C3D::ManipulatorPass *this, const C3D::PassIODescriptor *a2)
{
  v4 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  v5 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v6 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  result = [(SCNMTLRenderContext *)RenderContext sampleCount];
  if (result < 2)
  {
    *(v5 + 31) = 0;
    *(v5 + 24) = 2;
    *(v6 + 31) = 0;
    *(v6 + 24) = 2;
  }

  else
  {
    v9 = *(a2 + 31);
    *(v5 + 31) = [(SCNMTLRenderContext *)RenderContext sampleCount];
    *(v5 + 24) = 4;
    result = [(SCNMTLRenderContext *)RenderContext sampleCount];
    *(v6 + 31) = result;
    *(v6 + 24) = 4;
    if (v9 <= 1)
    {
      v10 = *(a2 + 1);
      v11 = *(a2 + 2);
      v12 = *(a2 + 3);
      *(v4 + 64) = *(a2 + 4);
      v13 = *a2;
      *(v4 + 32) = v11;
      *(v4 + 48) = v12;
      *v4 = v13;
      *(v4 + 16) = v10;
      *(v4 + 66) &= ~0x80u;
      *(v5 + 66) &= 0xFFFCu;
      *(this + 5368) = 1;
    }
  }

  if ((*(v4 + 66) & 0x80) != 0)
  {
    *(v4 + 31) = *(v5 + 31);
    *(v4 + 24) = *(v5 + 24);
  }

  return result;
}

void C3D::ManipulatorPassResource::~ManipulatorPassResource(C3D::ManipulatorPassResource *this)
{
  *this = &unk_282DC7F78;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC7F78;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

void _C3DConstraintManagerCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef _C3DConstraintManagerCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintManagerRef>");
}

CFStringRef _C3DConstraintManagerCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintManagerRef>");
}

uint64_t __C3DConstraintManagerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DConstraintManagerGetTypeID_typeID = result;
  return result;
}

uint64_t C3DConstraintManagerCreate(uint64_t a1)
{
  if (C3DConstraintManagerGetTypeID_onceToken != -1)
  {
    C3DConstraintManagerCreate_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DConstraintManagerGetTypeID_typeID, 24);
  *(result + 24) = a1;
  return result;
}

void C3DConstraintManagerSetConstraintsForKey(uint64_t a1, const __CFArray *a2, float32x4_t *a3, const char *a4)
{
  v6 = a1;
  v101 = *MEMORY[0x277D85DE8];
  if (!a1 && (v7 = scn_default_log(), os_log_type_enabled(v7, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else if (a4)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  if (!v6)
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_1(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  v31 = *(v6 + 16);
  if (!v31)
  {
    v31 = C3DOrderedDictionaryCreate();
    *(v6 + 16) = v31;
  }

  Value = C3DOrderedDictionaryGetValue(v31, a4);
  v93 = v6;
  v91 = a4;
  if (Value)
  {
    v33 = Value;
    CurrentlyCommittedDuration = C3DTransactionGetCurrentlyCommittedDuration();
    if (CurrentlyCommittedDuration > 0.0)
    {
      v35 = CurrentlyCommittedDuration;
      Count = CFArrayGetCount(v33);
      ModelValueStorage = C3DSceneGetModelValueStorage(*(v6 + 24));
      Mutable = CFSetCreateMutable(0, Count, 0);
      if (Count >= 1)
      {
        v38 = 0;
        v39 = v35;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v33, v38);
          v41 = *(ValueAtIndex + 4);
          TargetAddress = C3DModelTargetGetTargetAddress(v41);
          if (!CFSetContainsValue(Mutable, TargetAddress))
          {
            if (C3DModelTargetGetBaseType(v41) == 11)
            {
              CFSetAddValue(Mutable, TargetAddress);
              AnimationManager = C3DSceneGetAnimationManager(*(v93 + 24));
              memset(&buf, 0, sizeof(buf));
              v98 = 0u;
              v99 = 0u;
              v96 = 0u;
              v97 = 0u;
              v43 = *TargetAddress;
              v44 = TargetAddress[1];
              v45 = TargetAddress[3];
              v98 = TargetAddress[2];
              v99 = v45;
              v96 = v43;
              v97 = v44;
              C3DModelValueStorageUpdatePresentationValueFromModelValue(ModelValueStorage, *(ValueAtIndex + 5));
              C3DAnimationManagerApplyAnimationsForTarget(AnimationManager, v41);
              memset(&v95.columns[2], 0, 32);
              memset(&v95, 0, 32);
              v46 = *TargetAddress;
              v47 = *(TargetAddress + 1);
              v48 = *(TargetAddress + 3);
              v95.columns[2] = TargetAddress[2];
              v95.columns[3] = v48;
              v95.columns[0] = v46;
              v95.columns[1] = v47;
              C3DMatrix4x4Invert(&v95, &buf);
              C3DMatrix4x4Mult(&buf, &v96, &buf);
              v49 = C3DValueCreate(11, 1);
              v50 = C3DValueCreate(11, 1);
              C3DValueInitFrom(v49, &buf);
              Identity = C3DMatrix4x4GetIdentity();
              C3DValueInitFrom(v50, Identity);
              v52 = C3DSimpleAnimationCreate();
              C3DAnimationSetAdditive(v52, 1);
              C3DAnimationSetRemoveOnCompletion(v52, 1);
              C3DAnimationSetDuration(v52, v39);
              C3DTransactionGetCurrentlyCommittedTimingFunction();
              C3DAnimationSetTimingFunction(v52, v53);
              C3DSimpleAnimationSetStartValue(v52, v49);
              C3DSimpleAnimationSetEndValue(v52, v50);
              CFRelease(v49);
              CFRelease(v50);
              C3DAnimationManagerAddAnimationForKey(AnimationManager, v52, v41, *(ValueAtIndex + 3), @"__controller");
              CFRelease(v52);
            }

            else
            {
              v54 = scn_default_log();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                BaseType = C3DModelTargetGetBaseType(v41);
                buf.columns[0].i32[0] = 67109120;
                buf.columns[0].i32[1] = BaseType;
                _os_log_impl(&dword_21BEF7000, v54, OS_LOG_TYPE_DEFAULT, "Warning: unsupported ease out for contraint applied on base type %d", &buf, 8u);
              }
            }
          }

          ++v38;
        }

        while (Count != v38);
      }

      CFRelease(Mutable);
      a4 = v91;
      v6 = v93;
    }

    v56 = C3DOrderedDictionaryGetValue(*(v6 + 16), a4);
    if (v56)
    {
      v57 = v56;
      v58 = CFArrayGetCount(v56);
      v59 = C3DSceneGetModelValueStorage(*(v6 + 24));
      if (v58 >= 1)
      {
        v60 = v59;
        for (i = 0; i != v58; ++i)
        {
          v62 = CFArrayGetValueAtIndex(v57, i);
          C3DModelValueStorageUpdatePresentationValueFromModelValue(v60, v62[5]);
          C3DModelValueStorageReleaseModelValue(v60, v62[5]);
        }
      }

      C3DOrderedDictionaryRemoveValue(*(v6 + 16), a4);
    }
  }

  if (a2)
  {
    if (!a3)
    {
      v63 = scn_default_log();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
      {
        _C3DAnimationManagerAddAnimationNode_cold_3(v63, v64, v65, v66, v67, v68, v69, v70);
      }
    }

    v71 = CFArrayGetCount(a2);
    v72 = CFArrayCreateMutable(0, v71, MEMORY[0x277CBF128]);
    v73 = C3DSceneGetModelValueStorage(*(v6 + 24));
    if (v71 >= 1)
    {
      v74 = v73;
      for (j = 0; j != v71; ++j)
      {
        v76 = CFArrayGetValueAtIndex(a2, j);
        TargetModelPath = C3DConstraintGetTargetModelPath(v76);
        if (!TargetModelPath)
        {
          v78 = scn_default_log();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
          {
            C3DConstraintManagerSetConstraintsForKey_cold_5(&buf, (buf.columns[0].i64 + 4), v78);
          }
        }

        v79 = C3DCFTypeCopyModelInfoAtPath(a3, TargetModelPath, 0);
        v80 = C3DConstraintControllerCreate(v76, a3, v79);
        v80[5] = C3DModelValueStorageAddAndRetainModelValue(v74, v79);
        CFArrayAppendValue(v72, v80);
        CFRelease(v80);
        CFRelease(v79);
        if ((C3DTransactionGetDisableActions() & 1) != 0 || (v81 = C3DTransactionGetCurrentlyCommittedDuration(), v81 <= 0.0))
        {
          *(v80 + 12) = 1065353216;
        }

        else
        {
          v82 = v81;
          v83 = C3DSceneGetAnimationManager(*(v6 + 24));
          v96.i32[0] = 1065353216;
          v84 = C3DValueCreate(1, 1);
          C3DValueInitFrom(v84, &v96);
          v85 = C3DSimpleAnimationCreate();
          C3DAnimationSetCommitWhenDone(v85, 1);
          v86 = v82;
          C3DAnimationSetDuration(v85, v86);
          C3DTransactionGetCurrentlyCommittedTimingFunction();
          C3DAnimationSetTimingFunction(v85, v87);
          C3DSimpleAnimationSetEndValue(v85, v84);
          CFRelease(v84);
          v88 = C3DModelTargetCreate(v80, (v80 + 6), 1, 0);
          C3DAnimationManagerAddAnimationForKey(v83, v85, v88, v80, @"__controller");
          v89 = v85;
          v6 = v93;
          CFRelease(v89);
          CFRelease(v88);
        }
      }
    }

    C3DOrderedDictionarySetValue(*(v6 + 16), v91, v72);
    CFRelease(v72);
  }
}

BOOL C3DConstraintManagerApply(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    C3DOrderedDictionaryApplyFunction(*(a1 + 16), _C3DConstraintManagerApplyFunc, a1);
  }

  return v10 != 0;
}

void _C3DConstraintManagerApplyFunc(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  ModelValueStorage = C3DSceneGetModelValueStorage(*(a3 + 24));
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
      v10 = *(ValueAtIndex + 2);
      if (*(v10 + 76) != 1)
      {
        goto LABEL_14;
      }

      v11 = ValueAtIndex[12] * *(v10 + 72);
      if (v11 <= 0.0)
      {
        goto LABEL_14;
      }

      Incremental = C3DConstraintGetIncremental(v10);
      if (Incremental)
      {
        break;
      }

      if (!C3DNodeGetHasPhysicsBody(*(ValueAtIndex + 3)) || !C3DNodePhysicsBodyIsDynamic(*(ValueAtIndex + 3)))
      {
        C3DModelValueStorageUpdatePresentationValueInNeeded(ModelValueStorage, *(ValueAtIndex + 5));
LABEL_12:
        if ((Incremental & C3DConstraintApply(v4, ValueAtIndex, *(ValueAtIndex + 3), *(ValueAtIndex + 4), v11)) == 1)
        {
          C3DModelValueStorageUpdateModelValueFromPresentationValue(ModelValueStorage, *(ValueAtIndex + 5));
        }

        goto LABEL_14;
      }

      if ((C3DNodePhysicsBodyIsAtRest(*(ValueAtIndex + 3)) & 1) == 0)
      {
        break;
      }

LABEL_14:
      if (v7 == ++v8)
      {
        return;
      }
    }

    C3DModelValueStorageUpdateTimestamp(ModelValueStorage, *(ValueAtIndex + 5));
    goto LABEL_12;
  }
}

CFIndex __C3DConstraintManagerAppendAuthoringInfo(int a1, CFArrayRef theArray)
{
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    v4 = result;
    for (i = 0; i != v4; ++i)
    {
      result = *(CFArrayGetValueAtIndex(theArray, i) + 2);
      if (*(result + 76) == 1 && *(result + 72) > 0.0)
      {
        result = C3DContraintAppendAuthoringInfo(result);
      }
    }
  }

  return result;
}

void *C3DConstraintManagerAppendAuthoringInfo(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result)
  {
    v13[0] = a2;
    v13[1] = a1;
    return C3DOrderedDictionaryApplyFunction(result, __C3DConstraintManagerAppendAuthoringInfo, v13);
  }

  return result;
}

C3D::DrawNodesPass *C3D::MainPass::MainPass(C3D::MainPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  *&v10.var0 = 16843009;
  *&v10.var4 = 1;
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v6 = xmmword_21C27FD10;
  v7 = 1;
  v8 = 0;
  v9 = 2;
  result = C3D::ScenePass::ScenePass(this, a2, a3, &v10, v4);
  *result = &unk_282DC7FB8;
  *(result + 681) = 0;
  *(result + 5365) = 1;
  return result;
}

uint64_t C3D::MainPass::setup(C3D::MainPass *this)
{
  Scene = C3DEngineContextGetScene(*(this + 2));
  PointOfView = C3DEngineContextGetPointOfView(*(this + 2));
  if (!PointOfView)
  {
    if ((C3DEngineContextIsTemporalAntialiasingEnabled(*(this + 2)) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  Camera = C3DNodeGetCamera(PointOfView);
  if (C3DEngineContextIsTemporalAntialiasingEnabled(*(this + 2)))
  {
    goto LABEL_7;
  }

  if (!Camera)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = 0;
  if (C3DCameraGetMotionBlurIntensity(Camera) > 0.0)
  {
LABEL_8:
    *(this + 149) |= 8u;
  }

LABEL_10:
  C3D::Pass::parentColorDesc(*(this + 1), &v36);
  if (v37 == 2)
  {
    v6 = 1;
  }

  else
  {
    C3D::Pass::parentColorDesc(*(this + 1), v35);
    v6 = v35[8] == 4;
  }

  v7 = C3DSceneGetWantsSSR(Scene) & v6;
  if (v7 == 1)
  {
    *(this + 149) |= 0x106u;
  }

  if (v6 && (RenderCallbacks = C3DEngineContextGetRenderCallbacks(*(this + 2))) != 0 && (v9 = *(RenderCallbacks + 40)) != 0 && v9(*(this + 2)))
  {
    v10 = *(this + 3);
    v36 = this;
    v11 = C3D::RenderGraph::createPass<C3D::MainPassCustomPostProcessPass,C3D::MainPass *>(v10, &v36);
    v12 = v11;
    v13 = *(this + 680);
    if (v13 != this)
    {
      C3D::Pass::addDependency(v11, v13);
    }

    C3D::Pass::addDependency(v12, this);
    *(this + 680) = v12;
    if (*(v12 + 240) == 1)
    {
      *(this + 149) |= 0x80u;
    }
  }

  else
  {
    v12 = 0;
  }

  *(this + 119) = 1;
  *(this + 306) = C3DEngineContextGetViewpointCoordinateSpace(*(this + 2));
  C3D::ScenePass::setup(this);
  if (v12)
  {
    v34 = v5;
    v16 = *(v12 + 31);
    v17 = *(v12 + 240);
    v18 = C3D::Pass::outputBufferParameterNamed(this, "COLOR");
    if (v17)
    {
      v19 = C3D::Pass::outputBufferParameterNamed(this, "COLOR1");
      v20 = C3D::Pass::inputBufferParameterNamed(v12, "COLOR");
      v21 = C3D::Pass::inputBufferParameterNamed(v12, "COLOR1");
      v22 = v19 != 0;
      if (v19 && v16)
      {
        *(v19 + 28) = v16;
        v22 = 1;
      }
    }

    else
    {
      v20 = C3D::Pass::inputBufferParameterNamed(v12, "COLOR");
      v22 = 0;
      v21 = 0;
      v19 = 0;
    }

    *(v20 + 31) = 0;
    *(v20 + 24) = SCNMTLTextureTypeNonMultisampledEquivalent(*(v18 + 24));
    if (v21)
    {
      *(v21 + 31) = 0;
      *(v21 + 24) = SCNMTLTextureTypeNonMultisampledEquivalent(*(v19 + 24));
    }

    v23 = C3D::Pass::outputBufferParameterNamed(v12, "COLOR");
    *(v23 + 16) = COERCE_FLOAT(*(this + 676));
    *(v23 + 18) = *(this + 1353);
    v5 = v34;
    if (*(v12 + 272) == 1)
    {
      v24 = *(v12 + 16);
      *(v18 + 66) |= 0x40u;
      *(v18 + 48) = v24;
      if (v22)
      {
        *(v19 + 66) |= 0x40u;
        *(v19 + 48) = v24;
      }

      *(this + 303) = 0;
    }
  }

  if (v7)
  {
    *(this + 680) = C3D::SSRPassesCreateIfNeeded(*(this + 3), this, v14);
  }

  if (v5)
  {
    *(this + 149) |= 8u;
    v25 = *(this + 3);
    v36 = this;
    v26 = C3D::RenderGraph::createPass<C3D::TemporalAAPass,C3D::MainPass *>(v25, &v36);
    v27 = v26;
    v28 = *(this + 680);
    if (v28 != this)
    {
      C3D::Pass::addDependency(v26, v28);
    }

    C3D::Pass::addDependency(v27, this);
    *(this + 680) = v27;
  }

  *(this + 681) = 0;
  if (v6)
  {
    v36 = 0;
    IfNeeded = C3D::PostProcessPassesCreateIfNeeded(*(this + 3), this, &v36, v15);
    *(this + 681) = IfNeeded;
    v30 = v36;
    if (!v36)
    {
      v30 = *(this + 680);
    }

    *(this + 680) = v30;
    if (IfNeeded)
    {
      if (IfNeeded[12])
      {
        v31 = 0;
      }

      else
      {
        v31 = IfNeeded[10] ^ 1;
      }
    }

    else
    {
      v31 = 1;
    }

    result = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
    v33 = *(result + 66) & 0xFFF7 | (8 * v31);
  }

  else
  {
    result = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
    v33 = *(result + 66) | 8;
  }

  *(result + 66) = v33;
  return result;
}

C3D::MainPassCustomPostProcessPass *C3D::RenderGraph::createPass<C3D::MainPassCustomPostProcessPass,C3D::MainPass *>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 288, 16, 0);
  C3D::MainPassCustomPostProcessPass::MainPassCustomPostProcessPass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

C3D::ComputePass *C3D::RenderGraph::createPass<C3D::TemporalAAPass,C3D::MainPass *>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 128, 8, 0);
  C3D::ComputePass::ComputePass(Aligned, a1, *a2);
  *v5 = &unk_282DC54C0;
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

void C3D::MainPass::compile(C3D::MainPass *this, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int128 a28, uint64_t a29, float a30, float a31, float a32, float a33, float a34, float a35, int8x8_t a36, float a37, int a38, float a39, int a40, float a41, float a42, float a43, float a44, float a45, float a46, float a47, float a48, float a49, uint64_t a50, float32x2_t a51, float a52, int a53, int a54, unsigned int a55, unsigned int a56, unint64_t a57, float a58, int a59, float a60, float a61, float a62, float32x4_t a63)
{
  C3D::ScenePass::compile(this);
  v69 = *(this + 681);
  if (v69)
  {
    v70 = *(this + 2);

    C3D::PostProcessPassesComputeUniforms(v70, v69, this, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
  }
}

BOOL C3DModelPathResolveCommonProfileProperty(char *cf, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  C3DModelTargetSetTarget(a5, cf);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
  v13 = _pathComponentForString(ValueAtIndex);
  if (v13 > 71)
  {
    if (v13 == 72)
    {
      ImageTransform = C3DEffectSlotGetImageTransform(cf);
      if (!ImageTransform)
      {
        memset(v22, 0, sizeof(v22));
        C3DMatrix4x4MakeIdentity(v22);
        C3DEffectSlotSetImageTransform(cf, v22);
        ImageTransform = C3DEffectSlotGetImageTransform(cf);
      }

      _C3DModelPathResolveMatrix(ImageTransform, a2, a3 + 1, a4, a5);
      return 1;
    }

    if (v13 != 73)
    {
      if (v13 == 74)
      {
        *(a5 + 24) = cf + 72;
        result = 1;
        *(a5 + 32) = 1;
        return result;
      }

      goto LABEL_18;
    }

    TextureSampler = C3DEffectSlotGetTextureSampler(cf);
    if (TextureSampler)
    {
      v21 = TextureSampler;
      C3DModelTargetSetTarget(a5, TextureSampler);
      BorderColor = C3DTextureSamplerGetBorderColor(v21);
      goto LABEL_24;
    }

    return 1;
  }

  if ((v13 - 68) < 2)
  {
    BorderColor = C3DEffectSlotGetColor(cf);
LABEL_24:
    _C3DModelPathResolveColor4(BorderColor, a2, a3 + 1, a4, a5);
    return 1;
  }

  if (v13 == 70)
  {
    C3DEffectSlotGetTexture(cf);
    if (a3 + 1 < a4)
    {
      v16 = CFArrayGetValueAtIndex(a2, a3 + 1);
      _pathComponentForString(v16);
      if (a6)
      {
        v17 = scn_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          C3DModelPathResolveCommonProfileProperty_cold_1();
        }
      }
    }

    return 1;
  }

LABEL_18:
  if (a6)
  {
    v19 = scn_default_log();
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    C3DModelPathResolveCommonProfileProperty_cold_2();
  }

  return 0;
}

const void *_pathComponentForString(void *key)
{
  if (_pathComponentForString_onceToken != -1)
  {
    _pathComponentForString_cold_1();
  }

  return CFDictionaryGetValue(_pathComponentForString__pathComponents, key);
}

void _C3DModelPathResolveColor4(uint64_t a1, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    *(a5 + 24) = a1;
    *(a5 + 32) = 13;
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v8 = _pathComponentForString(ValueAtIndex);
  *(a5 + 32) = 1;
  if (v8 > 19)
  {
    if (v8 == 20)
    {
      v9 = a1 + 8;
      goto LABEL_14;
    }

    if (v8 == 21)
    {
      v9 = a1 + 12;
      goto LABEL_14;
    }
  }

  else
  {
    if (v8 == 18)
    {
      *(a5 + 24) = a1;
      return;
    }

    if (v8 == 19)
    {
      v9 = a1 + 4;
LABEL_14:
      *(a5 + 24) = v9;
      return;
    }
  }

  v10 = scn_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    _C3DModelPathResolveColor4_cold_1();
  }
}

void _C3DModelPathResolveMatrix(uint64_t a1, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    *(a5 + 24) = a1;
    *(a5 + 32) = 11;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
    v8 = _pathComponentForString(ValueAtIndex);
    *(a5 + 32) = 7;
    v9 = v8 - 22;
    if (v8 - 22 >= 0x10)
    {
      v12 = scn_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        _C3DModelPathResolveMatrix_cold_1();
      }
    }

    else
    {
      v10 = byte_21C2A3EA0[v9];
      v11 = qword_21C2A3EB0[v9];
      *(a5 + 35) = v10;
      *(a5 + 24) = a1 + 4 * v11;
    }
  }
}

uint64_t C3DModelDescriptionResolveRootComponentInPath(const __CFArray *a1, const void *a2, uint64_t a3, _BYTE *a4)
{
  if (a1 && CFArrayGetCount(a1) >= 2 && (ValueAtIndex = CFArrayGetValueAtIndex(a1, 0), Length = CFStringGetLength(ValueAtIndex), Length >= 2) && (v10 = Length, CFStringGetCharacterAtIndex(ValueAtIndex, 0) == 47))
  {
    if (a4)
    {
      *a4 = 1;
    }

    v15.length = v10 - 1;
    v15.location = 1;
    v11 = CFStringCreateWithSubstring(0, ValueAtIndex, v15);
    if (!a3 || (EntryWithUniqueID = C3DLibraryGetEntryWithUniqueID(a3, v11)) == 0 && (EntryWithUniqueID = C3DLibraryGetEntryWithDocumentID(a3, v11)) == 0)
    {
      EntryWithUniqueID = C3DSearchByID(a2, v11);
    }

    v13 = EntryWithUniqueID;
    CFRelease(v11);
  }

  else
  {
    v13 = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  return v13;
}

void _C3DModelPathResolveTransform(uint64_t a1, CFArrayRef theArray, int a3, int a4, uint64_t a5, int a6)
{
  *(a5 + 34) = 8;
  *(a5 + 37) = 1;
  if (a3 >= a4)
  {
    *(a5 + 24) = a1;
    *(a5 + 32) = 11;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
    v13 = _pathComponentForString(ValueAtIndex);
    if ((v13 - 22) < 0x10)
    {
      v14 = a1;
      v15 = theArray;
      v16 = a3;
LABEL_4:
      _C3DModelPathResolveMatrix(v14, v15, v16, a4, a5);
LABEL_5:
      *(a5 + 24) = a1;
      return;
    }

    if (v13 <= 7)
    {
      switch(v13)
      {
        case 5:
          v16 = a3 + 1;
          v14 = a1;
          v15 = theArray;
          goto LABEL_4;
        case 6:
          v21 = 0;
          v20 = 0;
          _C3DModelPathResolveVector3(&v20, theArray, a3 + 1, a4, a5);
          *(a5 + 34) = 6;
          goto LABEL_5;
        case 7:
          v18 = a3 + 1;
          v17 = theArray;
          goto LABEL_15;
      }
    }

    else
    {
      if ((v13 - 12) < 2)
      {
        v17 = theArray;
        v18 = a3;
LABEL_15:
        _C3DModelPathResolveRotation(v17, v18, a4, a5);
        goto LABEL_5;
      }

      if (v13 == 8)
      {
        *(a5 + 34) = 7;
        *(a5 + 32) = 9;
        *(a5 + 35) = _C3DModelPathResolveVectorComponentIndex(theArray, a3 + 1, a4, a5);
        goto LABEL_5;
      }
    }

    if (a6)
    {
      v19 = scn_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        _C3DModelPathResolveTransform_cold_1();
      }
    }
  }
}

uint64_t C3DCFTypeCopyModelInfoAtSplittedPath(float32x4_t *a1, const __CFArray *SubarrayWithRange, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = a1;
  v14 = 0;
  v8 = C3DModelTargetCreate(0, 0, 0, 0);
  v9 = C3DModelDescriptionResolveRootComponentInPath(SubarrayWithRange, v7, a3, &v14);
  if (v9)
  {
    v7 = v9;
  }

  Count = CFArrayGetCount(SubarrayWithRange);
  v11 = Count;
  if (v14 == 1)
  {
    v11 = Count - 1;
    SubarrayWithRange = C3DCFArrayGetSubarrayWithRange(SubarrayWithRange, 1, Count - 1);
  }

  v12 = CFGetTypeID(v7);
  _C3DModelPathResolverRegistryResolvePathWithClassName(v7, v12, SubarrayWithRange, 0, v11, v8, a4);
  if (*(v8 + 24))
  {
    *(v8 + 36) = C3DSizeOfBaseType(*(v8 + 32));
  }

  return v8;
}

const void *_C3DModelPathResolverRegistryResolvePath(const void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v11 = result;
    v12 = CFGetTypeID(result);

    return _C3DModelPathResolverRegistryResolvePathWithClassName(v11, v12, a2, a3, a4, a5, a6);
  }

  return result;
}

const __CFString *C3DCFTypeCopyModelInfoAtPath(float32x4_t *a1, CFStringRef theString, uint64_t a3)
{
  result = C3DCreatePathComponentsFromString(theString);
  if (result)
  {
    v6 = result;
    v7 = C3DCFTypeCopyModelInfoAtSplittedPath(a1, result, 0, a3);
    CFRelease(v6);
    return v7;
  }

  return result;
}

uint64_t C3DCFTypeCopyModelInfoForKeyAndSubscriptIndex(const void *a1, const __CFString *a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = C3DModelTargetCreate(0, 0, 0, 0);
  v9 = CFGetTypeID(a1);
  _C3DModelPathResolverRegistryResolveKeyAndSubscriptIndexWithClassName(a1, v9, a2, a3, v8, a4);
  if (*(v8 + 24))
  {
    *(v8 + 36) = C3DSizeOfBaseType(*(v8 + 32));
  }

  return v8;
}

uint64_t C3DCFTypeCopyModelInfoForKeyAndSubscriptKey(const void *a1, const __CFString *a2, void *a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = C3DModelTargetCreate(0, 0, 0, 0);
  v9 = CFGetTypeID(a1);
  _C3DModelPathResolverRegistryResolveKeyAndSubscriptKeyWithClassName(a1, v9, a2, a3, v8, a4);
  if (*(v8 + 24))
  {
    *(v8 + 36) = C3DSizeOfBaseType(*(v8 + 32));
  }

  return v8;
}

const void *_C3DModelPathResolverRegistryGetType(void *key)
{
  Mutable = _modelPathResolverRegistry;
  if (!_modelPathResolverRegistry)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
    _modelPathResolverRegistry = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
    CFDictionarySetValue(_modelPathResolverRegistry, key, Value);
  }

  return Value;
}

uint64_t _C3DModelPathResolverRegistryResolveSubPath(CFArrayRef theArray, int a2, int a3, uint64_t a4)
{
  result = 0;
  v7 = *(a4 + 32);
  if (v7 > 0xA)
  {
    if (v7 == 11)
    {
      _C3DModelPathResolveMatrix(*(a4 + 24), theArray, a2, a3, a4);
    }

    else
    {
      if (v7 != 13)
      {
        return result;
      }

      _C3DModelPathResolveColor4(*(a4 + 24), theArray, a2, a3, a4);
    }
  }

  else if (v7 == 9)
  {
    _C3DModelPathResolveVector3(*(a4 + 24), theArray, a2, a3, a4);
  }

  else
  {
    if (v7 != 10)
    {
      return result;
    }

    if (a2 >= a3)
    {
      *(a4 + 32) = 10;
    }

    else
    {
      v8 = *(a4 + 24);
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, a2);
      v10 = _pathComponentForString(ValueAtIndex);
      *(a4 + 32) = 7;
      if (v10 > 15)
      {
        if (v10 == 16)
        {
          v11 = v8 + 8;
          goto LABEL_22;
        }

        if (v10 == 17)
        {
          v11 = v8 + 12;
          goto LABEL_22;
        }

LABEL_18:
        v12 = scn_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          _C3DModelPathResolverRegistryResolveSubPath_cold_1();
        }

        return 1;
      }

      if (v10 != 14)
      {
        if (v10 == 15)
        {
          v11 = v8 + 4;
LABEL_22:
          *(a4 + 24) = v11;
          return 1;
        }

        goto LABEL_18;
      }

      *(a4 + 24) = v8;
    }
  }

  return 1;
}

void _C3DModelPathResolveVector3(uint64_t a1, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    *(a5 + 24) = a1;
    *(a5 + 32) = 9;
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v8 = _pathComponentForString(ValueAtIndex);
  *(a5 + 32) = 7;
  switch(v8)
  {
    case 0xEu:
      *(a5 + 24) = a1;
      break;
    case 0xFu:
      *(a5 + 24) = a1 + 4;
      v9 = 1;
      goto LABEL_8;
    case 0x10u:
      *(a5 + 24) = a1 + 8;
      v9 = 2;
LABEL_8:
      *(a5 + 35) = v9;
      return;
    default:
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        _C3DModelPathResolveVector3_cold_1();
      }

      break;
  }
}

uint64_t _C3DModelPathResolverRegistryResolvePathWithClassName(float32x4_t *a1, void *a2, const __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (C3DEntityGetTypeID() == a2)
  {
    if (_C3DModelPathResolveEntity(a1, a3, a4, a5, a6))
    {
      return 1;
    }
  }

  else if (C3DNodeGetTypeID() == a2)
  {
    if (_C3DModelPathResolveNode(a1, a3, a4, a5, a6, a7))
    {
      return 1;
    }
  }

  else
  {
    if (C3DMaterialGetTypeID() != a2)
    {
      if (C3DLightGetTypeID() == a2)
      {
        if (!a1)
        {
          goto LABEL_24;
        }

        if ((_C3DModelPathResolveEntity(a1, a3, a4, a5, a6) & 1) == 0)
        {
          C3DModelTargetSetTarget(a6, a1);
          if (a4 >= a5)
          {
            *(a6 + 24) = 0;
            *(a6 + 32) = 0;
            return 1;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(a3, a4);
          v15 = _pathComponentForString(ValueAtIndex);
          if (v15 > 82)
          {
            if (v15 > 84)
            {
              if (v15 == 85)
              {
                v16 = 1;
                *(a6 + 32) = 1;
                v30 = a1 + 15;
              }

              else
              {
                if (v15 != 86)
                {
                  goto LABEL_24;
                }

                v16 = 1;
                *(a6 + 32) = 1;
                v30 = (a1 + 248);
              }
            }

            else
            {
              v16 = 1;
              *(a6 + 32) = 1;
              if (v15 == 83)
              {
                v30 = (a1 + 92);
              }

              else
              {
                v30 = (a1 + 244);
              }
            }
          }

          else
          {
            if (v15 <= 80)
            {
              if (v15 == 78)
              {
                v16 = 1;
                Gobo = C3DLightGetGobo(a1, 1);
              }

              else
              {
                if (v15 != 79)
                {
                  goto LABEL_24;
                }

                v16 = 1;
                Gobo = C3DLightGetProbeEnvironment(a1, 1);
              }

              C3DModelPathResolveCommonProfileProperty(Gobo, a3, a4 + 1, a5, a6, a7);
              return v16;
            }

            v16 = 1;
            *(a6 + 32) = 1;
            if (v15 == 81)
            {
              v30 = (a1 + 84);
            }

            else
            {
              v30 = (a1 + 88);
            }
          }

          *(a6 + 24) = v30;
          return v16;
        }
      }

      else
      {
        if (C3DMorpherGetTypeID() == a2)
        {
          OverrideMaterial = C3DGeometryGetOverrideMaterial(a1);
        }

        else
        {
          if (C3DMorphGetTypeID() != a2)
          {
            if (C3DGeometryGetTypeID() == a2)
            {
              if (_C3DModelPathResolveGeometry(a1, a3, a4, a5, a6, a7))
              {
                return 1;
              }
            }

            else if (C3DGenericSourceGetTypeID() == a2)
            {
              if (_C3DModelPathResolveGenericSource(a1, a3, a4, a5, a6))
              {
                return 1;
              }
            }

            else if (C3DSceneGetTypeID() == a2)
            {
              if (_C3DModelPathResolveScene(a1, a3, a4, a5, a6, a7))
              {
                return 1;
              }
            }

            else if (C3DFXTechniqueGetTypeID() == a2 && _C3DModelPathResolveTechnique(a1, a3, a4, a5, a6))
            {
              return 1;
            }

            goto LABEL_24;
          }

          OverrideMaterial = a1;
        }

        if (!_C3DModelPathResolveMorph(OverrideMaterial, a3, a4, a5, a6, a7))
        {
          goto LABEL_24;
        }
      }

      return 1;
    }

    if (_C3DModelPathResolveMaterial(a1, a3, a4, a5, a6, a7))
    {
      return 1;
    }
  }

LABEL_24:
  os_unfair_lock_lock(&_modelPathResolverRegistryLock);
  Type = _C3DModelPathResolverRegistryGetType(a2);
  if (a4 >= a5 || (v20 = Type) == 0)
  {
    os_unfair_lock_unlock(&_modelPathResolverRegistryLock);
LABEL_34:
    v16 = 0;
    if (!a7 || a4 + 1 != a5)
    {
      return v16;
    }

    v28 = scn_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      _C3DModelPathResolverRegistryResolvePathWithClassName_cold_1();
    }

    return 0;
  }

  v21 = CFArrayGetValueAtIndex(a3, a4);
  Value = CFDictionaryGetValue(v20, v21);
  os_unfair_lock_unlock(&_modelPathResolverRegistryLock);
  if (!Value)
  {
    v29 = CFDictionaryGetValue(v20, @"superClass");
    if (v29 && (_C3DModelPathResolverRegistryResolvePathWithClassName(a1, v29, a3, a4, a5, a6, a7) & 1) != 0)
    {
      return 1;
    }

    goto LABEL_34;
  }

  C3DModelTargetSetTarget(a6, a1);
  v23 = *(Value + 4);
  *(a6 + 32) = v23;
  *(a6 + 34) = Value[10];
  v24 = (a1 + *Value);
  *(a6 + 24) = v24;
  v25 = (a4 + 1);
  if (v25 >= a5)
  {
    return 1;
  }

  if (v23 == 5)
  {
    if (a1)
    {
      v26 = *v24;

      return _C3DModelPathResolverRegistryResolvePath(v26, a3, v25, a5, a6, a7);
    }

    return 0;
  }

  return _C3DModelPathResolverRegistryResolveSubPath(a3, a4 + 1, a5, a6);
}

uint64_t _C3DModelPathResolveEntity(void *a1, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v11 = _pathComponentForString(ValueAtIndex);
  if (v11 == 90)
  {
    if (a3 + 1 < a4)
    {
      v17 = CFArrayGetValueAtIndex(theArray, a3 + 1);
      result = C3DGetScene(a1);
      if (result)
      {
        AnimationManager = C3DSceneGetAnimationManager(result);
        result = C3DAnimationManagerGetAnimationNodeForKey(AnimationManager, a1, v17);
        if (result)
        {
          *(a5 + 24) = result + 52;
          C3DModelTargetSetTarget(a5, result);
          result = 1;
          *(a5 + 32) = 1;
          *(a5 + 34) = 0;
        }
      }

      return result;
    }

    return 0;
  }

  if (v11 != 89)
  {
    result = C3DEntityIsTypeSupportingShaderModifiers(a1);
    if (result)
    {
      C3DEntityGetShaderModifiers(a1);

      return C3DEntityResolveKeypathInKeyValueStore(a1, theArray, a3, a5);
    }

    return result;
  }

  if (a3 + 1 >= a4)
  {
    return 0;
  }

  v12 = CFArrayGetValueAtIndex(theArray, a3 + 1);
  ValueForKey = C3DEntityGetValueForKey(a1, v12);
  if (ValueForKey)
  {
    v14 = ValueForKey;
    v15 = CFGetTypeID(ValueForKey);
    if (v15 == C3DValueGetTypeID())
    {
      C3DModelTargetSetTarget(a5, v14);
      *(a5 + 24) = C3DValueGetBytes(v14);
      *(a5 + 32) = C3DValueGetType(v14);
      *(a5 + 34) = 0;
      return 1;
    }
  }

  v19 = scn_default_log();
  result = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
  if (result)
  {
    _C3DModelPathResolveEntity_cold_1(v19, v20, v21, v22, v23, v24, v25, v26);
    return 0;
  }

  return result;
}

uint64_t _C3DModelPathResolveNode(float32x4_t *a1, const __CFArray *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  if (_C3DModelPathResolveEntity(a1, a2, a3, a4, a5))
  {
    return 1;
  }

  C3DModelTargetSetTarget(a5, a1);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
  v13 = _pathComponentForString(ValueAtIndex);
  if (v13 > 8)
  {
    if (v13 > 37)
    {
      if (v13 > 74)
      {
        if (v13 == 75)
        {
          Light = C3DNodeGetLight(a1);
        }

        else
        {
          if (v13 != 88)
          {
            goto LABEL_27;
          }

          Light = C3DNodeGetMorpher(a1);
        }
      }

      else if (v13 == 38)
      {
        Light = C3DNodeGetCamera(a1);
      }

      else
      {
        if (v13 != 39)
        {
          goto LABEL_27;
        }

        Light = C3DNodeGetGeometry(a1);
      }

      _C3DModelPathResolverRegistryResolvePath(Light, a2, (a3 + 1), a4, a5, a6);
      return 1;
    }

    if ((v13 - 12) >= 2)
    {
      if (v13 == 9)
      {
        *(a5 + 34) = 8;
        v22 = a1[12].i64[0];
        if (!v22)
        {
          v28 = 0u;
          v29 = 0u;
          *cf = 0u;
          v27 = 0u;
          C3DMatrix4x4MakeIdentity(cf);
          C3DNodeSetPivotMatrix(a1, cf);
          v22 = a1[12].i64[0];
        }

        _C3DModelPathResolveMatrix(v22, a2, a3 + 1, a4, a5);
        return 1;
      }

      if (v13 == 10 && a3 + 1 < a4)
      {
        FiltersParamController = C3DNodeGetFiltersParamController(a1);
        if (FiltersParamController)
        {
          _C3DModelPathResolveDynamicParameter(FiltersParamController, a2, a3 + 1, a4, a5, a6);
          return 1;
        }
      }

      goto LABEL_27;
    }

    goto LABEL_14;
  }

  if (v13 > 4)
  {
LABEL_14:
    v15 = a1;
    v16 = a2;
    v17 = a3;
LABEL_15:
    _C3DModelPathResolveNodeTransform(v15, v16, v17, a4, a5, a6);
    return 1;
  }

  switch(v13)
  {
    case 1:
      v17 = a3 + 1;
      v15 = a1;
      v16 = a2;
      goto LABEL_15;
    case 2:
      *(a5 + 24) = a1 + 204;
      v21 = 1;
      *(a5 + 32) = 1;
      return v21;
    case 3:
      *(a5 + 24) = a1 + 200;
      *(a5 + 32) = 3;
      return 1;
  }

LABEL_27:
  cf[0] = 0;
  v25 = 0;
  if (!_C3DModelPathResolveArray(a2, a3, a4, &v25, cf))
  {
LABEL_42:
    if (a6)
    {
      v23 = scn_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        _C3DModelPathResolveNode_cold_1();
      }
    }

    return 0;
  }

  if (_pathComponentForString(cf[0]) != 11)
  {
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_42;
  }

  ChildNodesCount = C3DNodeGetChildNodesCount(a1);
  if (ChildNodesCount <= v25)
  {
    v21 = 0;
  }

  else
  {
    ChildNodeAtIndex = C3DNodeGetChildNodeAtIndex(a1, v25);
    v21 = _C3DModelPathResolveNode(ChildNodeAtIndex, a2, (a3 + 1), a4, a5, a6);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v21;
}

uint64_t _C3DModelPathResolveMaterial(uint64_t result, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  if (result)
  {
    v11 = result;
    if (_C3DModelPathResolveEntity(result, a2, a3, a4, a5))
    {
      return 1;
    }

    C3DModelTargetSetTarget(a5, v11);
    if (a3 >= a4)
    {
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;
      return 1;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    v13 = _pathComponentForString(ValueAtIndex);
    CommonProfile = C3DMaterialGetCommonProfile(v11);
    if (v13 == 42)
    {
      _C3DModelPathResolveCommonProfile(CommonProfile, a2, a3 + 1, a4, a5, a6);
      return 1;
    }

    return _C3DModelPathResolveCommonProfile(CommonProfile, a2, a3, a4, a5, a6);
  }

  return result;
}

BOOL _C3DModelPathResolveMorph(_BOOL8 result, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  if (!result)
  {
    return result;
  }

  v11 = result;
  if (_C3DModelPathResolveEntity(result, a2, a3, a4, a5))
  {
    return 1;
  }

  C3DModelTargetSetTarget(a5, v11);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
  v13 = _pathComponentForString(ValueAtIndex);
  v14 = CFStringFind(ValueAtIndex, @"weights", 0);
  if (v14.length <= 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  if (v14.length > 0 || v13 == 87)
  {
    WeightsSource = C3DMorphGetWeightsSource(v11);
    v18 = CFStringFind(ValueAtIndex, @"[", 0);
    if (v18.length >= 1)
    {
      v19 = CFStringFind(ValueAtIndex, @"]", 0);
      if (v19.length >= 1 && v19.location > v18.location + 2)
      {
        v24.location = v18.location + 2;
        v24.length = v19.location - (v18.location + 2);
        v20 = CFStringCreateWithSubstring(0, ValueAtIndex, v24);
        IndexOfTargetWithName = C3DMorphGetIndexOfTargetWithName(v11, v20);
        if (IndexOfTargetWithName != -1)
        {
          v22 = IndexOfTargetWithName;
          C3DModelTargetSetTarget(a5, WeightsSource);
          Accessor = C3DGenericSourceGetAccessor(WeightsSource);
          *(a5 + 24) = C3DSourceAccessorGetMutableValuePtrAtIndex(Accessor, v22);
          *(a5 + 32) = C3DSourceAccessorGetComponentsValueType(Accessor);
          if (v20)
          {
            CFRelease(v20);
          }

          return 1;
        }

        if (v20)
        {
          CFRelease(v20);
        }
      }
    }

    if (WeightsSource)
    {
      _C3DModelPathResolveGenericSource(WeightsSource, a2, a3 + v15 + 1, a4, a5);
    }

    return 1;
  }

  if (a6)
  {
    v16 = scn_default_log();
    result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DModelPathResolveMorph_cold_1();
  }

  return 0;
}

uint64_t _C3DModelPathResolveGeometry(CFTypeRef cf, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  if (!cf)
  {
    return 0;
  }

  C3DModelTargetSetTarget(a5, cf);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
  if (_pathComponentForString(ValueAtIndex) == 40)
  {
    if (C3DGeometryGetMaterialsCount(cf) >= 1)
    {
      MaterialAtIndex = C3DGeometryGetMaterialAtIndex(cf, 0);
      _C3DModelPathResolveMaterial(MaterialAtIndex, a2, a3 + 1, a4, a5, a6);
    }

    return 1;
  }

  cfa = 0;
  v18 = 0;
  v14 = 0;
  if (_C3DModelPathResolveArray(a2, a3, a4, &v18, &cfa))
  {
    if (_pathComponentForString(cfa) == 41 && (MaterialsCount = C3DGeometryGetMaterialsCount(cf), MaterialsCount > v18))
    {
      v17 = C3DGeometryGetMaterialAtIndex(cf, v18);
      v14 = _C3DModelPathResolveMaterial(v17, a2, a3 + 1, a4, a5, a6);
    }

    else
    {
      v14 = 0;
    }

    if (cfa)
    {
      CFRelease(cfa);
    }
  }

  return v14;
}

uint64_t _C3DModelPathResolveGenericSource(CFTypeRef cf, const __CFArray *a2, int a3, int a4, uint64_t a5)
{
  C3DModelTargetSetTarget(a5, cf);
  if (!cf)
  {
    return 0;
  }

  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  v13 = 0;
  v10 = _C3DModelPathResolveArray(a2, a3, a4, &v13, 0);
  if (v10)
  {
    Accessor = C3DGenericSourceGetAccessor(cf);
    *(a5 + 24) = C3DSourceAccessorGetMutableValuePtrAtIndex(Accessor, v13);
    *(a5 + 32) = C3DSourceAccessorGetComponentsValueType(Accessor);
  }

  return v10;
}

uint64_t _C3DModelPathResolveScene(CFTypeRef cf, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  C3DModelTargetSetTarget(a5, cf);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    v13 = _pathComponentForString(ValueAtIndex);
    if (v13 == 91)
    {
      v14 = 1;
      BackgroundEffectSlot = C3DSceneGetBackgroundEffectSlot(cf, 1);
    }

    else
    {
      if (v13 != 92)
      {
        return 0;
      }

      v14 = 1;
      BackgroundEffectSlot = C3DSceneGetLightingEnvironmentEffectSlot(cf, 1);
    }

    C3DModelPathResolveCommonProfileProperty(BackgroundEffectSlot, a2, a3 + 1, a4, a5, a6);
  }

  return v14;
}

BOOL _C3DModelPathResolveTechnique(const void *a1, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  C3DModelTargetSetTarget(a5, a1);
  ValueAnimatableAddressForSymbol = C3DFXTechniqueGetValueAnimatableAddressForSymbol(a1, ValueAtIndex, (a5 + 32));
  *(a5 + 24) = ValueAnimatableAddressForSymbol;
  return ValueAnimatableAddressForSymbol != 0;
}

BOOL _C3DModelPathResolverRegistryResolveKeyAndSubscriptIndexWithClassName(uint64_t a1, CFTypeID a2, const __CFString *a3, uint64_t a4, uint64_t a5, int a6)
{
  if (C3DMorpherGetTypeID() == a2)
  {
    OverrideMaterial = C3DGeometryGetOverrideMaterial(a1);
LABEL_5:

    return _C3DModelPathResolveMorphKeyAndSubscriptIndex(OverrideMaterial, a3, a4, a5, a6);
  }

  if (C3DMorphGetTypeID() == a2)
  {
    OverrideMaterial = a1;
    goto LABEL_5;
  }

  v14 = CFCopyTypeIDDescription(a2);
  v15 = scn_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    _C3DModelPathResolverRegistryResolveKeyAndSubscriptIndexWithClassName_cold_1();
  }

  CFRelease(v14);
  return 0;
}

BOOL _C3DModelPathResolveMorphKeyAndSubscriptIndex(_BOOL8 cf, const __CFString *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (cf)
  {
    v9 = cf;
    C3DModelTargetSetTarget(a4, cf);
    if (CFStringCompare(a2, @"weights", 0))
    {
      if (a5)
      {
        v10 = scn_default_log();
        cf = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
        if (!cf)
        {
          return cf;
        }

        _C3DModelPathResolveMorphKeyAndSubscriptIndex_cold_1();
      }

      return 0;
    }

    else
    {
      WeightsSource = C3DMorphGetWeightsSource(v9);
      C3DModelTargetSetTarget(a4, WeightsSource);
      Accessor = C3DGenericSourceGetAccessor(WeightsSource);
      *(a4 + 24) = C3DSourceAccessorGetMutableValuePtrAtIndex(Accessor, a3);
      *(a4 + 32) = C3DSourceAccessorGetComponentsValueType(Accessor);
      return 1;
    }
  }

  return cf;
}

BOOL _C3DModelPathResolverRegistryResolveKeyAndSubscriptKeyWithClassName(uint64_t a1, CFTypeID a2, const __CFString *a3, void *a4, uint64_t a5, int a6)
{
  if (C3DMorpherGetTypeID() == a2)
  {
    OverrideMaterial = C3DGeometryGetOverrideMaterial(a1);
LABEL_5:

    return _C3DModelPathResolveMorphKeyAndSubscriptKey(OverrideMaterial, a3, a4, a5, a6);
  }

  if (C3DMorphGetTypeID() == a2)
  {
    OverrideMaterial = a1;
    goto LABEL_5;
  }

  v14 = CFCopyTypeIDDescription(a2);
  v15 = scn_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    _C3DModelPathResolverRegistryResolveKeyAndSubscriptIndexWithClassName_cold_1();
  }

  CFRelease(v14);
  return 0;
}

BOOL _C3DModelPathResolveMorphKeyAndSubscriptKey(_BOOL8 cf, const __CFString *a2, void *a3, uint64_t a4, int a5)
{
  if (cf)
  {
    v9 = cf;
    C3DModelTargetSetTarget(a4, cf);
    if (CFStringCompare(a2, @"weights", 0))
    {
      if (!a5)
      {
        return 0;
      }
    }

    else
    {
      WeightsSource = C3DMorphGetWeightsSource(v9);
      C3DModelTargetSetTarget(a4, WeightsSource);
      IndexOfTargetWithName = C3DMorphGetIndexOfTargetWithName(v9, a3);
      if (IndexOfTargetWithName != -1)
      {
        v13 = IndexOfTargetWithName;
        Accessor = C3DGenericSourceGetAccessor(WeightsSource);
        *(a4 + 24) = C3DSourceAccessorGetMutableValuePtrAtIndex(Accessor, v13);
        *(a4 + 32) = C3DSourceAccessorGetComponentsValueType(Accessor);
        return 1;
      }

      if ((a5 & 1) == 0)
      {
        return 0;
      }
    }

    v10 = scn_default_log();
    cf = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!cf)
    {
      return cf;
    }

    _C3DModelPathResolveMorphKeyAndSubscriptKey_cold_1();
    return 0;
  }

  return cf;
}

uint64_t C3DCFTypeGetAddressForKey(float32x4_t *a1, const void *a2)
{
  if (C3DCFTypeGetAddressForKey_onceToken != -1)
  {
    C3DCFTypeGetAddressForKey_cold_1();
  }

  v4 = pthread_getspecific(C3DCFTypeGetAddressForKey_addressForKeyLocalStorage);
  if (!v4)
  {
    v4 = malloc_type_calloc(0x10uLL, 1uLL, 0x42591EDCuLL);
    *v4 = C3DModelTargetCreate(0, 0, 0, 0);
    v4[1] = CFArrayCreateMutable(0, 1, 0);
    pthread_setspecific(C3DCFTypeGetAddressForKey_addressForKeyLocalStorage, v4);
  }

  v5 = *v4;
  v6 = v4[1];
  *(v5 + 24) = 0;
  CFArraySetValueAtIndex(v6, 0, a2);
  v7 = CFGetTypeID(a1);
  v8 = _C3DModelPathResolverRegistryResolvePathWithClassName(a1, v7, v6, 0, 1, v5, 0);
  v9 = 0;
  if (v8)
  {
    v9 = *(v5 + 24);
  }

  C3DModelTargetSetTarget(v5, 0);
  return v9;
}

void __threadDied(CFTypeRef *a1)
{
  if (a1)
  {
    CFRelease(*a1);
    CFRelease(a1[1]);
  }

  free(a1);
}

void C3DModelPathResolverRegisterClassBegin(void *a1, const void *a2)
{
  os_unfair_lock_lock(&_modelPathResolverRegistryLock);
  Type = _C3DModelPathResolverRegistryGetType(a1);
  _currentClassRegistry = Type;
  if (a2)
  {

    CFDictionaryAddValue(Type, @"superClass", a2);
  }
}

void C3DModelPathResolverRegisterProperty(const void *a1, unsigned int a2, __int16 a3, char a4)
{
  if (!_currentClassRegistry)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DModelPathResolverRegisterProperty_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = malloc_type_malloc(0x10uLL, 0x10000401E18E2A0uLL);
  v16[4] = a3;
  *v16 = a2;
  *(v16 + 10) = a4;
  if (CFDictionaryGetCountOfKey(_currentClassRegistry, a1))
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      C3DModelPathResolverRegisterProperty_cold_2(a1, v17);
    }
  }

  CFDictionarySetValue(_currentClassRegistry, a1, v16);
}

void ___pathComponentForString_block_invoke()
{
  _pathComponentForString__pathComponents = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 110, MEMORY[0x277CBF138], 0);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"transform", 1);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"opacity", 2);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"hidden", 3);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"attributes", 4);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"matrix", 5);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"translation", 6);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"position", 6);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"rotation", 7);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"orientation", 0xD);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"scale", 8);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"eulerAngles", 0xC);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"quaternion", 0xD);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"pivot", 9);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"filters", 0xA);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"nodes", 0xB);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"childNodes", 0xB);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"x", 0xE);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"y", 0xF);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"z", 0x10);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"w", 0x11);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"(0)", 0xE);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"(1)", 0xF);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"(2)", 0x10);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"(3)", 0x11);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"r", 0x12);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"g", 0x13);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"b", 0x14);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"a", 0x15);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m11", 0x16);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m12", 0x1A);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m13", 0x1E);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m14", 0x22);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m21", 0x17);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m22", 0x1B);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m23", 0x1F);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m24", 0x23);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m31", 0x18);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m32", 0x1C);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m33", 0x20);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m34", 0x24);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m41", 0x19);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m42", 0x1D);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m43", 0x21);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"m44", 0x25);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"camera", 0x26);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"geometry", 0x27);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"firstMaterial", 0x28);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"materials", 0x29);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"commonProfile", 0x2A);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"diffuse", 0x2B);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"ambient", 0x2C);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"specular", 0x2D);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"emission", 0x2E);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"reflective", 0x2F);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"normal", 0x30);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"ambientOcclusion", 0x31);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"selfIllumination", 0x32);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"metalness", 0x33);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"roughness", 0x34);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"selfIlluminationOcclusion", 0x39);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"clearCoat", 0x35);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"clearCoatRoughness", 0x36);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"clearCoatNormal", 0x37);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"displacement", 0x38);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"transparent", 0x3A);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"multiply", 0x3B);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"shininess", 0x3C);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"transparency", 0x3D);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"fresnelExponent", 0x3E);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"shaderModifiers", 0x43);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"doubleSided", 0x3F);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"litPerPixel", 0x40);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"cullMode", 0x41);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"lockAmbientWithDiffuse", 0x42);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"color", 0x44);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"contents", 0x45);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"texture", 0x46);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"image", 0x47);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"contentsTransform", 0x48);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"borderColor", 0x49);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"intensity", 0x4A);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"light", 0x4B);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"shadowColor", 0x4C);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"shadowRadius", 0x4D);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"attenuationStart", 0x51);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"attenuationEnd", 0x52);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"attenuationFalloffExponent", 0x53);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"spotInnerAngle", 0x54);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"spotOuterAngle", 0x55);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"spotFalloffExponent", 0x56);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"weights", 0x57);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"morpher", 0x58);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"background", 0x5B);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"environment", 0x5C);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"gobo", 0x4E);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"probeEnvironment", 0x4F);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"ies", 0x50);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"customProperty", 0x59);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"animations", 0x5A);
  CFDictionaryAddValue(_pathComponentForString__pathComponents, @"euler", 0xC);
  v0 = _pathComponentForString__pathComponents;

  CFDictionaryAddValue(v0, @"axisAngle", 7);
}

void _C3DModelPathResolveRotation(const __CFArray *a1, int a2, int a3, uint64_t a4)
{
  *(a4 + 34) = 4;
  if (a2 >= a3)
  {
    *(a4 + 24) = 0;
    *(a4 + 32) = 10;
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v9 = _pathComponentForString(ValueAtIndex);
  if (v9 <= 13)
  {
    switch(v9)
    {
      case 7:
        *(a4 + 32) = 10;
        *(a4 + 35) = _C3DModelPathResolveVectorComponentIndex(a1, a2 + 1, a3, a4);
LABEL_18:
        v11 = 4;
        goto LABEL_22;
      case 12:
        *(a4 + 32) = 9;
        *(a4 + 35) = _C3DModelPathResolveVectorComponentIndex(a1, a2 + 1, a3, a4);
        v11 = 5;
        goto LABEL_22;
      case 13:
        *(a4 + 32) = 10;
        *(a4 + 35) = _C3DModelPathResolveVectorComponentIndex(a1, a2 + 1, a3, a4);
        v11 = 3;
LABEL_22:
        *(a4 + 34) = v11;
        return;
    }
  }

  else
  {
    if (v9 <= 15)
    {
      if (v9 != 14)
      {
        v10 = 17039367;
LABEL_20:
        *(a4 + 32) = v10;
        return;
      }

      *(a4 + 32) = 7;
      goto LABEL_18;
    }

    if (v9 == 16)
    {
      v10 = 33816583;
      goto LABEL_20;
    }

    if (v9 == 17)
    {
      v10 = 50593799;
      goto LABEL_20;
    }
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    _C3DModelPathResolveRotation_cold_1();
  }
}

uint64_t _C3DModelPathResolveVectorComponentIndex(const __CFArray *a1, int a2, int a3, uint64_t a4)
{
  if (a2 >= a3)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v6 = _pathComponentForString(ValueAtIndex);
  *(a4 + 32) = 7;
  if (v6 - 15 >= 3)
  {
    return 0;
  }

  else
  {
    return v6 - 14;
  }
}

void _C3DModelPathResolveNodeTransform(char *cf, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  C3DModelTargetSetTarget(a5, cf);
  *(a5 + 34) = 8;
  *(a5 + 37) = 1;
  if (a3 >= a4)
  {
    *(a5 + 24) = cf + 96;
    *(a5 + 32) = 11;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    _pathComponentForString(ValueAtIndex);

    _C3DModelPathResolveTransform((cf + 96), a2, a3, a4, a5, a6);
  }
}

void _C3DModelPathResolveDynamicParameter(const void *a1, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v18.location = a3;
  v18.length = a4 - a3;
  CFArrayAppendArray(Mutable, a2, v18);
  v13 = CFStringCreateByCombiningStrings(0, Mutable, @".");
  ParamDescription = C3DAnimatableParamControllerGetParamDescription(a1, v13);
  if (ParamDescription)
  {
    v15 = ParamDescription;
    C3DModelTargetSetTarget(a5, a1);
    *(a5 + 32) = *(v15 + 32);
    *(a5 + 24) = *(v15 + 24);
    *(a5 + 34) = *(v15 + 34);
    CFRelease(Mutable);
  }

  else if (a6)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _C3DModelPathResolveDynamicParameter_cold_1();
    }
  }

  CFRelease(v13);
}

uint64_t _C3DModelPathResolveArray(const __CFArray *a1, int a2, int a3, SInt32 *a4, CFStringRef *a5)
{
  if (a2 >= a3)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v8 = CFStringFind(ValueAtIndex, @"[", 0);
  if (v8.length < 1)
  {
    goto LABEL_14;
  }

  v9 = CFStringFind(ValueAtIndex, @"]", 0);
  if (v9.length < 1 || v9.location <= v8.location)
  {
    goto LABEL_14;
  }

  v32.location = 0;
  v32.length = v8.location;
  v10 = CFStringCreateWithSubstring(0, ValueAtIndex, v32);
  v33.location = v8.location + 1;
  v33.length = v9.location - (v8.location + 1);
  v11 = CFStringCreateWithSubstring(0, ValueAtIndex, v33);
  if (v10 || (v12 = scn_default_log(), !os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    if (!v11)
    {
      goto LABEL_8;
    }

LABEL_18:
    if (CFStringGetLength(v11) && CFStringGetCharacterAtIndex(v11, 0) - 48 < 0xA)
    {
      *a4 = CFStringGetIntValue(v11);
      if (a5)
      {
        *a5 = v10;
      }

      else if (v10)
      {
        CFRelease(v10);
      }

      v28 = 1;
      v10 = v11;
      goto LABEL_29;
    }

    CFRelease(v11);
LABEL_24:
    v28 = 0;
    if (!v10)
    {
      return v28;
    }

    goto LABEL_29;
  }

  _C3DModelPathResolveArray_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
  if (v11)
  {
    goto LABEL_18;
  }

LABEL_8:
  v20 = scn_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    _C3DModelPathResolveArray_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
    if (v10)
    {
      goto LABEL_10;
    }
  }

  else if (v10)
  {
LABEL_10:
    v28 = 0;
LABEL_29:
    CFRelease(v10);
    return v28;
  }

LABEL_14:
  v29 = CFStringFind(ValueAtIndex, @"("), 0;
  if (v29.length < 1)
  {
    return 0;
  }

  v30 = CFStringFind(ValueAtIndex, @""), 0);
  v28 = 0;
  if (v30.length >= 1 && v30.location > v29.location)
  {
    v34.location = 0;
    v34.length = v29.location;
    v10 = CFStringCreateWithSubstring(0, ValueAtIndex, v34);
    v35.location = v29.location + 1;
    v35.length = v30.location - (v29.location + 1);
    v11 = CFStringCreateWithSubstring(0, ValueAtIndex, v35);
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  return v28;
}

uint64_t _C3DModelPathResolveCommonProfile(char *cf, const __CFArray *a2, int a3, int a4, uint64_t a5, int a6)
{
  C3DModelTargetSetTarget(a5, cf);
  if (a3 < a4)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
    switch(_pathComponentForString(ValueAtIndex))
    {
      case '+':
        v13 = 1;
        v14 = cf;
        v15 = 2;
        goto LABEL_31;
      case ',':
        v13 = 1;
        v14 = cf;
        v15 = 1;
        goto LABEL_31;
      case '-':
        v13 = 1;
        v14 = cf;
        v15 = 3;
        goto LABEL_31;
      case '.':
        v13 = 1;
        v14 = cf;
        v15 = 0;
        goto LABEL_31;
      case '/':
        v13 = 1;
        v14 = cf;
        v15 = 4;
        goto LABEL_31;
      case '0':
        v13 = 1;
        v14 = cf;
        v15 = 7;
        goto LABEL_31;
      case '1':
        v13 = 1;
        v14 = cf;
        v15 = 8;
        goto LABEL_31;
      case '2':
        v13 = 1;
        v14 = cf;
        v15 = 9;
        goto LABEL_31;
      case '3':
        v13 = 1;
        v14 = cf;
        v15 = 10;
        goto LABEL_31;
      case '4':
        v13 = 1;
        v14 = cf;
        v15 = 11;
        goto LABEL_31;
      case '5':
        v13 = 1;
        v14 = cf;
        v15 = 12;
        goto LABEL_31;
      case '6':
        v13 = 1;
        v14 = cf;
        v15 = 13;
        goto LABEL_31;
      case '7':
        v13 = 1;
        v14 = cf;
        v15 = 14;
        goto LABEL_31;
      case '8':
        v13 = 1;
        v14 = cf;
        v15 = 15;
        goto LABEL_31;
      case '9':
        v13 = 1;
        *(a5 + 32) = 1;
        v16 = cf + 176;
        goto LABEL_29;
      case ':':
        v13 = 1;
        v14 = cf;
        v15 = 5;
        goto LABEL_31;
      case ';':
        v13 = 1;
        v14 = cf;
        v15 = 6;
LABEL_31:
        EffectSlot = C3DEffectCommonProfileGetEffectSlot(v14, v15, 1);
        C3DModelPathResolveCommonProfileProperty(EffectSlot, a2, a3 + 1, a4, a5, a6);
        return v13;
      case '<':
        v13 = 1;
        *(a5 + 32) = 1;
        v16 = cf + 160;
        goto LABEL_29;
      case '=':
        v13 = 1;
        *(a5 + 32) = 1;
        v16 = cf + 164;
        goto LABEL_29;
      case '>':
        v13 = 1;
        *(a5 + 32) = 1;
        v16 = cf + 172;
LABEL_29:
        *(a5 + 24) = v16;
        return v13;
      case '@':
        *(a5 + 32) = 3;
        v17 = cf + 192;
        goto LABEL_34;
      case 'B':
        *(a5 + 32) = 3;
        v17 = cf + 193;
LABEL_34:
        *(a5 + 24) = v17;
        return 1;
      default:
        if (a6)
        {
          v18 = scn_default_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            _C3DModelPathResolveCommonProfile_cold_1();
          }
        }

        return 0;
    }
  }

  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  return 1;
}

void _C3DModelTargetCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef _C3DModelTargetCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DModelTarget>");
}

CFStringRef _C3DModelTargetCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DModelTarget>");
}

uint64_t __C3DModelTargetGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DModelTargetGetTypeID_typeID = result;
  return result;
}

uint64_t C3DModelTargetCreate(const void *a1, uint64_t a2, int a3, char a4)
{
  if (C3DModelTargetGetTypeID_onceToken != -1)
  {
    C3DModelTargetCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DModelTargetGetTypeID_typeID, 24);
  v9 = Instance;
  if (a1)
  {
    C3DModelTargetSetTarget(Instance, a1);
  }

  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 34) = a4;
  *(v9 + 36) = C3DSizeOfBaseType(a3);
  return v9;
}

CFTypeRef C3DModelTargetSetTarget(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 16) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t C3DModelTargetCreateCopy(uint64_t a1)
{
  if (C3DModelTargetGetTypeID_onceToken != -1)
  {
    C3DModelTargetCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DModelTargetGetTypeID_typeID, 24);
  C3DModelTargetSetTarget(Instance, *(a1 + 16));
  *(Instance + 24) = *(a1 + 24);
  *(Instance + 37) = *(a1 + 37);
  *(Instance + 32) = *(a1 + 32);
  *(Instance + 34) = *(a1 + 34);
  *(Instance + 35) = *(a1 + 35);
  return Instance;
}

uint64_t C3DModelTargetGetTarget(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

uint64_t C3DModelTargetGetTargetAddress(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

void *C3DModelTargetGetValue(uint64_t a1, void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DModelTargetGetValue_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v22 = *(a1 + 36);
  TypeSemantic = C3DModelTargetGetTypeSemantic(a1);
  ComponentIndex = C3DModelTargetGetComponentIndex(a1);
  return C3DGetValue(v20, v21, a2, v22, TypeSemantic, ComponentIndex);
}

uint64_t C3DModelTargetGetTypeSemantic(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 34);
}

uint64_t C3DModelTargetGetComponentIndex(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 35);
}

uint64_t C3DModelTargetGetBaseType(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationForKey_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

uint64_t C3DPreferencesGetInteger(int a1)
{
  if (C3DPreferencesGetInteger_onceToken != -1)
  {
    C3DPreferencesGetInteger_cold_1();
  }

  return C3DPreferencesGetInteger_prefs[a1];
}

void SCNVideoTextureSourceDiscardVideoData(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 8) = 0;
  }

  v3 = [*(a1 + 16) iosurface];
  if (v3)
  {
    IOSurfaceDecrementUseCount(v3);
  }

  *(a1 + 16) = 0;
}

void SCNVideoTextureSourceRelease(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 40) = 0;
  }

  SCNVideoTextureSourceDiscardVideoData(a1);
}

void SCNVideoTextureSourceCreateMetalTexture(uint64_t a1, uint64_t a2, __CVMetalTextureCache *a3)
{
  v6 = *(a1 + 8);
  v7 = [(SCNMTLRenderContext *)a2 disableLinearRendering];
  v8 = [(SCNMTLRenderContext *)a2 wantsWideGamut];
  PixelFormatType = CVPixelBufferGetPixelFormatType(v6);
  if (PixelFormatType > 875836533)
  {
    if (PixelFormatType <= 1380401728)
    {
      if (PixelFormatType == 875836534)
      {
LABEL_38:
        if (v8)
        {
          v37 = 552;
          if (v7)
          {
            v11 = 552;
          }

          else
          {
            v11 = 553;
          }

          v12 = MTLPixelFormatX24_Stencil8|MTLPixelFormatBGRG422;
LABEL_61:
          v15 = C3DColorSpaceExtendedSRGB();
          goto LABEL_62;
        }

        v37 = 70;
        if (v7)
        {
          v11 = 70;
        }

        else
        {
          v11 = 71;
        }

        v12 = MTLPixelFormatX24_Stencil8|MTLPixelFormatBGRG422;
        goto LABEL_55;
      }

      if (PixelFormatType == 1111970369)
      {
        if (!v8)
        {
          v37 = 80;
          if (v7)
          {
            v11 = 80;
          }

          else
          {
            v11 = 81;
          }

          v38 = C3DColorSpaceSRGB();
          v12 = MTLPixelFormatBGRA8Unorm;
          goto LABEL_63;
        }

        v37 = 552;
        if (v7)
        {
          v11 = 552;
        }

        else
        {
          v11 = 553;
        }

        v12 = MTLPixelFormatBGRA8Unorm;
        goto LABEL_61;
      }
    }

    else
    {
      switch(PixelFormatType)
      {
        case 1380401729:
          if (!v8)
          {
            v37 = 70;
            if (v7)
            {
              v11 = 70;
            }

            else
            {
              v11 = 71;
            }

            v38 = C3DColorSpaceSRGB();
            v12 = MTLPixelFormatRGBA8Unorm;
            goto LABEL_63;
          }

          v37 = 552;
          if (v7)
          {
            v11 = 552;
          }

          else
          {
            v11 = 553;
          }

          v12 = MTLPixelFormatRGBA8Unorm;
          goto LABEL_61;
        case 1380410945:
          if (v8)
          {
            v37 = 125;
            if (v7)
            {
              v35 = C3DColorSpaceExtendedSRGB();
            }

            else
            {
              v35 = C3DColorSpaceExtendedLinearSRGB();
            }
          }

          else
          {
            v37 = 125;
            if (v7)
            {
              v35 = C3DColorSpaceSRGB();
            }

            else
            {
              v35 = C3DColorSpaceLinearSRGB();
            }
          }

          v38 = v35;
          v11 = 125;
          v12 = MTLPixelFormatRGBA32Float;
          goto LABEL_63;
        case 1380411457:
          if (v8)
          {
            v37 = 115;
            if (v7)
            {
              v13 = C3DColorSpaceExtendedSRGB();
            }

            else
            {
              v13 = C3DColorSpaceExtendedLinearSRGB();
            }
          }

          else
          {
            v37 = 115;
            if (v7)
            {
              v13 = C3DColorSpaceSRGB();
            }

            else
            {
              v13 = C3DColorSpaceLinearSRGB();
            }
          }

          v38 = v13;
          v11 = 115;
          v12 = MTLPixelFormatRGBA16Float;
          goto LABEL_63;
      }
    }

LABEL_98:
    LOBYTE(image) = HIBYTE(PixelFormatType);
    BYTE1(image) = BYTE2(PixelFormatType);
    BYTE2(image) = BYTE1(PixelFormatType);
    *(&image + 3) = PixelFormatType;
    v36 = scn_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      SCNVideoTextureSourceCreateMetalTexture_cold_3();
    }

    return;
  }

  if (PixelFormatType <= 875704933)
  {
    if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
    {
      if (v8)
      {
        v37 = 552;
        if (v7)
        {
          v11 = 552;
        }

        else
        {
          v11 = 553;
        }

        v12 = MTLPixelFormatDepth32Float_Stencil8|MTLPixelFormatGBGR422;
        goto LABEL_61;
      }

      v37 = 70;
      if (v7)
      {
        v11 = 70;
      }

      else
      {
        v11 = 71;
      }

      v12 = MTLPixelFormatDepth32Float_Stencil8|MTLPixelFormatGBGR422;
      goto LABEL_55;
    }

    goto LABEL_98;
  }

  if (PixelFormatType != 875704934 && PixelFormatType != 875704950)
  {
    if (PixelFormatType == 875836518)
    {
      goto LABEL_38;
    }

    goto LABEL_98;
  }

  if (v8)
  {
    v37 = 552;
    if (v7)
    {
      v11 = 552;
    }

    else
    {
      v11 = 553;
    }

    v12 = MTLPixelFormatX24_Stencil8|MTLPixelFormatGBGR422;
    goto LABEL_61;
  }

  v37 = 70;
  if (v7)
  {
    v11 = 70;
  }

  else
  {
    v11 = 71;
  }

  v12 = MTLPixelFormatX24_Stencil8|MTLPixelFormatGBGR422;
LABEL_55:
  v15 = C3DColorSpaceSRGB();
LABEL_62:
  v38 = v15;
LABEL_63:
  Width = CVPixelBufferGetWidth(v6);
  Height = CVPixelBufferGetHeight(v6);
  v18 = *(a1 + 40);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 40) = 0;
  }

  v19 = CVBufferCopyAttachments(v6, kCVAttachmentMode_ShouldPropagate);
  if (v19)
  {
    v20 = v19;
    v21 = a3;
    ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v19);
    if (ColorSpaceFromAttachments)
    {
      v23 = ColorSpaceFromAttachments;
      v24 = *(a1 + 40);
      if (v24 != v23)
      {
        if (v24)
        {
          CFRelease(v24);
          *(a1 + 40) = 0;
        }

        *(a1 + 40) = CFRetain(v23);
      }

      CFRelease(v23);
    }

    CFRelease(v20);
    a3 = v21;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_76;
  }

  if ((CGColorSpaceEqualToColorSpaceIgnoringRange() & 1) == 0)
  {
    image = 0;
    if (CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], a3, v6, 0, v12, Width, Height, 0, &image))
    {
      v26 = scn_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_80;
      }

      return;
    }

    Texture = CVMetalTextureGetTexture(image);
    v30 = *(a1 + 24);
    v31 = *(a1 + 32);
    if (!v30 || [*(a1 + 24) pixelFormat] != v11 || objc_msgSend(v30, "width") != Width || objc_msgSend(v30, "height") != Height)
    {

      v32 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v11 width:Width height:Height mipmapped:0];
      [v32 setStorageMode:2];
      [v32 setUsage:3];
      if (v11 != v37)
      {
        [v32 setUsage:{objc_msgSend(v32, "usage") | 0x10}];
      }

      v33 = [-[SCNMTLRenderContext device](a2) newTextureWithDescriptor:v32];
      v30 = v33;
      *(a1 + 24) = v33;
      if (v11 == v37)
      {
        v34 = v33;
      }

      else
      {
        v34 = [v33 newTextureViewWithPixelFormat:v37];
      }

      v31 = v34;
      *(a1 + 32) = v34;
    }

    [-[SCNMTLRenderContext resourceManager](a2) colorMatchSourceTexture:Texture sourceColorSpace:*(a1 + 40) destinationColorSpace:v38 destinationTexture:v31 renderContext:a2];
    *(a1 + 16) = v30;
LABEL_103:
    CFRelease(image);
    return;
  }

  if (!*(a1 + 40))
  {
LABEL_76:
    if (([(SCNMTLRenderContext *)a2 disableLinearRendering]& 1) == 0)
    {
      v12 = SCNMTLPixelFormatSRGBVariant(v12);
    }
  }

  image = 0;
  if (!CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], a3, v6, 0, v12, Width, Height, 0, &image))
  {
    v27 = CVMetalTextureGetTexture(image);
    v28 = [v27 iosurface];
    if (v28)
    {
      IOSurfaceIncrementUseCount(v28);
    }

    *(a1 + 16) = v27;

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    goto LABEL_103;
  }

  v25 = scn_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
LABEL_80:
    SCNVideoTextureSourceCreateMetalTexture_cold_1();
  }
}

uint64_t kSCNGenericVideoSourceCallbackCreateTextureProxy(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v6[0] = xmmword_282DC8118;
  v6[1] = *&off_282DC8128;
  v4 = C3DTextureProxyCreate();
  C3DTextureProxySetCallbacks(v4, v6);
  C3DTextureProxySetSource(v4, a3);
  return v4;
}

uint64_t kSCNCaptureDeviceSourceCallbackGetCaptureDeviceInfo(uint64_t result, _BYTE *a2, void *a3, void *a4)
{
  *a2 = *(result + 104);
  *a3 = *(result + 112);
  *a4 = *(result + 120);
  return result;
}

uint64_t kSCNCaptureDeviceOutputConsumerSourceCallbackGetCaptureDeviceInfo(uint64_t result, _BYTE *a2, void *a3, void *a4)
{
  *a2 = *(result + 88);
  *a3 = *(result + 96);
  *a4 = *(result + 104);
  return result;
}

void _C3DModelValueStorageItemCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

uint64_t __C3DModelValueStorageItemGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DModelValueStorageItemGetTypeID_typeID = result;
  return result;
}

uint64_t C3DModelValueStorageCreateItem(const void *a1)
{
  if (C3DModelValueStorageItemGetTypeID_onceToken != -1)
  {
    C3DModelValueStorageCreateItem_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DModelValueStorageItemGetTypeID_typeID, 144);
  if (Instance)
  {
    *(Instance + 24) = CFRetain(a1);
    *(Instance + 16) = 1;
    BaseType = C3DModelTargetGetBaseType(a1);
    *(Instance + 128) = BaseType;
    *(Instance + 130) = C3DSizeOfBaseType(BaseType);
  }

  return Instance;
}

uint64_t C3DModelValueStorageItemRelease(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DModelValueStorageItemRelease_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 16) - 1;
  *(a1 + 16) = v10;
  return v10;
}

void _C3DModelValueStorageCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef _C3DModelValueStorageCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DModelValueStorage>");
}

CFStringRef _C3DModelValueStorageCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DModelValueStorage>");
}

uint64_t __C3DModelValueStorageGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DModelValueStorageGetTypeID_typeID = result;
  return result;
}

uint64_t C3DModelValueStorageCreate()
{
  if (C3DModelValueStorageGetTypeID_onceToken != -1)
  {
    C3DModelValueStorageCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DModelValueStorageGetTypeID_typeID, 32);
  if (Instance)
  {
    *(Instance + 16) = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  }

  return Instance;
}

uint64_t C3DModelValueStorageAddAndRetainModelValue(uint64_t a1, const void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  TargetAddress = C3DModelTargetGetTargetAddress(a2);
  v21 = TargetAddress;
  if (*(a1 + 24) == TargetAddress)
  {
    Item = *(a1 + 32);
    if (Item)
    {
      goto LABEL_8;
    }

LABEL_10:
    Item = C3DModelValueStorageCreateItem(a2);
    Target = C3DModelTargetGetTarget(a2);
    CFDictionaryAddValue(*(a1 + 16), v21, Item);
    *(Item + 136) = C3DGetValueGetter(Target);
    v24 = C3DGetValueSetter(Target);
    *(Item + 144) = v24;
    if (*(Item + 136))
    {
      if (v24)
      {
LABEL_18:
        C3DModelValueStorageUpdateModelValueFromPresentationValue(a1, Item);
        CFRelease(Item);
        *(a1 + 24) = v21;
        *(a1 + 32) = Item;
        return Item;
      }
    }

    else
    {
      v25 = scn_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        C3DModelValueStorageAddAndRetainModelValue_cold_3(v25, v26, v27, v28, v29, v30, v31, v32);
      }

      if (*(Item + 144))
      {
        goto LABEL_18;
      }
    }

    v33 = scn_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      C3DModelValueStorageAddAndRetainModelValue_cold_4(v33, v34, v35, v36, v37, v38, v39, v40);
    }

    goto LABEL_18;
  }

  *(a1 + 24) = TargetAddress;
  Item = CFDictionaryGetValue(*(a1 + 16), TargetAddress);
  *(a1 + 32) = Item;
  if (!Item)
  {
    goto LABEL_10;
  }

LABEL_8:
  ++*(Item + 16);
  return Item;
}

void C3DModelValueStorageUpdateModelValueFromPresentationValue(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v3 = scn_default_log(), os_log_type_enabled(v3, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
LABEL_4:
      v11 = *(a2 + 24);
      if (*(v11 + 37) == 1)
      {
        v12 = CFGetTypeID(*(v11 + 16));
        if (v12 != C3DNodeGetTypeID())
        {
          v13 = scn_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            C3DModelValueStorageUpdateModelValueFromPresentationValue_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
          }
        }

        Transform = C3DNodeGetTransform(*(v11 + 16));
        v22 = Transform[1];
        *(a2 + 32) = *Transform;
        *(a2 + 48) = v22;
        v23 = Transform[5];
        v25 = Transform[2];
        v24 = Transform[3];
        *(a2 + 96) = Transform[4];
        *(a2 + 112) = v23;
        *(a2 + 64) = v25;
        *(a2 + 80) = v24;
      }

      else
      {
        v26 = *(a2 + 136);
        Target = C3DModelTargetGetTarget(*(a2 + 24));
        TargetAddress = C3DModelTargetGetTargetAddress(v11);
        v26(Target, TargetAddress, a2 + 32, *(a2 + 130), *(v11 + 34), *(v11 + 35));
      }

      return;
    }
  }

  else if (a2)
  {
    goto LABEL_4;
  }

  v29 = scn_default_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    C3DModelValueStorageItemRelease_cold_1(v29, v30, v31, v32, v33, v34, v35, v36);
  }
}

void C3DModelValueStorageReleaseModelValueAndRestorePresentationValueIfNeeded(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DModelValueStorageItemRelease_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (*(a2 + 16) == 1)
  {
    C3DModelValueStorageUpdatePresentationValueFromModelValue(a1, a2);
  }

  C3DModelValueStorageReleaseModelValue(a1, a2);
}

uint64_t C3DModelValueStorageUpdatePresentationValueFromModelValue(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DModelValueStorageItemRelease_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  TargetAddress = C3DModelTargetGetTargetAddress(*(a2 + 24));
  *(a2 + 152) = *(a1 + 40);
  v21 = *(a2 + 24);
  v22 = *(v21 + 37);
  v23 = *(a2 + 144);
  Target = C3DModelTargetGetTarget(v21);
  if (v22 == 1)
  {
    v25 = a2 + 32;
    v26 = TargetAddress;
    v27 = 96;
    v28 = 8;
    v29 = 0;
  }

  else
  {
    v27 = *(a2 + 130);
    v30 = *(a2 + 24);
    v28 = *(v30 + 34);
    v29 = *(v30 + 35);
    v25 = a2 + 32;
    v26 = TargetAddress;
  }

  return v23(Target, v26, v25, v27, v28, v29);
}

void C3DModelValueStorageReleaseModelValue(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DModelValueStorageItemRelease_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  TargetAddress = C3DModelTargetGetTargetAddress(*(a2 + 24));
  if (!C3DModelValueStorageItemRelease(a2))
  {
    CFDictionaryRemoveValue(*(a1 + 16), TargetAddress);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

const void *C3DModelValueStorageGetModelValueIfAny(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  TargetAddress = C3DModelTargetGetTargetAddress(a2);
  if (*(a1 + 24) == TargetAddress)
  {
    return *(a1 + 32);
  }

  *(a1 + 24) = TargetAddress;
  result = CFDictionaryGetValue(*(a1 + 16), TargetAddress);
  *(a1 + 32) = result;
  return result;
}

const void *C3DModelValueStorageGetModelValueForAddressIfAny(uint64_t a1, void *key)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DModelValueStorageGetModelValueForAddressIfAny_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (*(a1 + 24) == key)
  {
    return *(a1 + 32);
  }

  *(a1 + 24) = key;
  result = CFDictionaryGetValue(*(a1 + 16), key);
  *(a1 + 32) = result;
  return result;
}

void C3DModelValueStorageUpdateItemModelValueWithValue(__n128 *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DModelValueStorageItemRelease_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      C3DModelValueStorageUpdateItemModelValueWithValue_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v30 = *(a1[1].n128_u64[1] + 37);
  Bytes = C3DValueGetBytes(a3);
  if (v30 == 1)
  {
    v32 = C3DSizeOfBaseType(*(a2 + 32));
    C3DTransformSetValue(a1 + 2, Bytes, v32, *(a2 + 34), *(a2 + 35), v33);
  }

  else
  {
    memcpy(&a1[2], Bytes, a1[8].n128_i16[1]);
  }
}

void C3DModelValueStorageUpdateModelValueWithValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerAddAnimationNode_cold_3(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  ModelValueIfAny = C3DModelValueStorageGetModelValueIfAny(a1, a2);
  if (ModelValueIfAny)
  {
    C3DModelValueStorageUpdateItemModelValueWithValue(ModelValueIfAny, a2, a3);
  }
}

void *C3DModelValueStorageUpdateTimestampOfNode(uint64_t a1, uint64_t a2)
{
  Transform = C3DNodeGetTransform(a2);
  if (*(a1 + 24) == Transform)
  {
    result = *(a1 + 32);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    *(a1 + 24) = Transform;
    result = CFDictionaryGetValue(*(a1 + 16), Transform);
    *(a1 + 32) = result;
    if (!result)
    {
      return result;
    }
  }

  result[19] = *(a1 + 40);
  return result;
}

void C3DModelValueStorageUpdateNodePresentationValueInNeeded(uint64_t a1, uint64_t a2)
{
  Transform = C3DNodeGetTransform(a2);
  if (*(a1 + 24) == Transform)
  {
    Value = *(a1 + 32);
    if (!Value)
    {
      return;
    }
  }

  else
  {
    *(a1 + 24) = Transform;
    Value = CFDictionaryGetValue(*(a1 + 16), Transform);
    *(a1 + 32) = Value;
    if (!Value)
    {
      return;
    }
  }

  C3DModelValueStorageUpdatePresentationValueInNeeded(a1, Value);
}

void C3DModelValueStorageUpdatePresentationValueInNeeded(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DConstraintApplyIK_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DModelValueStorageItemRelease_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a1 + 40);
  if (*(a2 + 152) != v20)
  {
    *(a2 + 152) = v20;
    TargetAddress = C3DModelTargetGetTargetAddress(*(a2 + 24));
    v22 = *(a2 + 24);
    if (*(v22 + 37) == 1)
    {
      memset(v27, 0, sizeof(v27));
      C3DTransformGetMatrix(a2 + 32, v27);
      v23 = *(a2 + 144);
      Target = C3DModelTargetGetTarget(*(a2 + 24));
      v23(Target, TargetAddress, v27, 64, 8, 0);
    }

    else
    {
      v25 = *(a2 + 144);
      v26 = C3DModelTargetGetTarget(v22);
      v25(v26, TargetAddress, a2 + 32, *(a2 + 130), *(*(a2 + 24) + 34), *(*(a2 + 24) + 35));
    }
  }
}

uint64_t C3DModelValueStorageUpdatePresentationValueWithBytes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  TargetAddress = C3DModelTargetGetTargetAddress(a2[3]);
  a2[19] = *(a1 + 40);
  v15 = a2[18];
  Target = C3DModelTargetGetTarget(a2[3]);

  return v15(Target, TargetAddress, a5, a6, a3, a4);
}

uint64_t C3DModelValueStorageUpdatePresentationValueWithTransform(uint64_t a1, uint64_t *a2, __n128 *a3, int a4)
{
  result = a2[3];
  v8 = *(result + 24);
  a2[19] = *(a1 + 40);
  if (a4 == 7)
  {
    v23 = a2[18];
    Target = C3DModelTargetGetTarget(result);

    return v23(Target, v8, a3, 96, 8, 0);
  }

  v10 = a4;
  if (a4)
  {
    Position = C3DTransformGetPosition(a3);
    v11 = a2[18];
    v12 = C3DModelTargetGetTarget(a2[3]);
    result = v11(v12, v8, &Position, 16, 6, 0);
    if ((v10 & 4) == 0)
    {
LABEL_7:
      if ((v10 & 2) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((a4 & 4) == 0)
  {
    goto LABEL_7;
  }

  Position = C3DTransformGetScale(a3);
  v13 = a2[18];
  v14 = C3DModelTargetGetTarget(a2[3]);
  result = v13(v14, v8, &Position, 16, 7, 0);
  if ((v10 & 2) == 0)
  {
    return result;
  }

LABEL_11:
  result = C3DTransformGetRotationType(a3);
  switch(result)
  {
    case 2:
      C3DTransformGetAxisAngle(a3);
      Position = v20;
      v21 = a2[18];
      v22 = C3DModelTargetGetTarget(a2[3]);
      return v21(v22, v8, &Position, 16, 4, 0);
    case 1:
      Position = C3DTransformGetEuler(a3);
      v18 = a2[18];
      v19 = C3DModelTargetGetTarget(a2[3]);
      return v18(v19, v8, &Position, 16, 5, 0);
    case 0:
      C3DTransformGetQuaternion(a3);
      Position = v15;
      v16 = a2[18];
      v17 = C3DModelTargetGetTarget(a2[3]);
      return v16(v17, v8, &Position, 16, 3, 0);
  }

  return result;
}

void C3DModelValueStoragePrepareNextFrame(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DConstraintApplyIK_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  ++*(a1 + 40);
}

uint64_t __C3DAvoidOccluderConstraintDelegateShouldAvoidOccluderCallback(void *a1, id *a2, id *a3)
{
  v6 = [a1 delegate];
  ObjCWrapper = C3DEntityGetObjCWrapper(a2);
  v8 = C3DEntityGetObjCWrapper(a3);
  if (!ObjCWrapper || !v8)
  {
    return 1;
  }

  return [v6 avoidOccluderConstraint:a1 shouldAvoidOccluder:ObjCWrapper forNode:v8];
}

uint64_t ___Z25C3DTransformTreeGetTypeIDv_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DTransformTreeGetTypeID(void)::typeID = result;
  return result;
}

uint64_t C3DTransformTreeCreate(uint64_t a1)
{
  if (C3DTransformTreeGetTypeID(void)::onceToken != -1)
  {
    C3DTransformTreeCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DTransformTreeGetTypeID(void)::typeID, 64);
  *(Instance + 16) = a1;
  *(Instance + 24) = 0;
  *(Instance + 32) = 0;
  *(Instance + 40) = 0;
  *(Instance + 48) = -1;
  *(Instance + 56) = 0;
  *(Instance + 64) = 0;
  *(Instance + 72) = 0;
  __C3DTransformTree::_setLevelCount(Instance, 1);
  return Instance;
}

uint64_t C3DTransformTreeAddNode(__C3DTransformTree *this, __C3DNode *a2, int a3)
{
  if (!this)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DTransformTreeAddNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  return __C3DTransformTree::add(this, a2, a3);
}

uint64_t __C3DTransformTree::add(__C3DTransformTree *this, __C3DNode *a2, int a3)
{
  if (a3 == -1)
  {
    v6 = -1;
    v7 = -1;
  }

  else
  {
    v5 = (*(this + 3) + 8 * a3);
    v6 = *v5;
    v7 = v5[1];
  }

  v8 = v6;
  v9 = v6 + 1;
  if (v9 >= *(this + 16))
  {
    __C3DTransformTree::_setLevelCount(this, v6 + 2);
  }

  v10 = *(this + 7) + 80 * v9;
  v11 = *(v10 + 72);
  if (v11 == *(v10 + 76))
  {
    C3DTransformLevel::allocateData((*(this + 7) + 80 * v9), 2 * v11, 0);
    v11 = *(v10 + 72);
  }

  v12 = *(v10 + 24);
  v13 = v11;
  v14 = (v12 + 4 * v11);
  if (v11)
  {
    v15 = v11;
    v16 = *(v10 + 24);
    do
    {
      v17 = v15 >> 1;
      v18 = &v16[v15 >> 1];
      v20 = *v18;
      v19 = v18 + 1;
      v15 += ~(v15 >> 1);
      if (v7 < v20)
      {
        v15 = v17;
      }

      else
      {
        v16 = v19;
      }
    }

    while (v15);
  }

  else
  {
    v16 = *(v10 + 24);
  }

  if (v16 == v14)
  {
    v21 = 4 * v13;
  }

  else
  {
    v21 = v16 - v12;
    __C3DTransformTree::_offset(this, v9 | (((v16 - v12) >> 2) << 32), v8 | (v7 << 32), 1);
  }

  v22 = v21 >> 2;
  if ((v21 >> 2) == -1)
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::add(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  ++*(v10 + 72);
  *(*(v10 + 40) + 8 * v22) = a2;
  *(*(v10 + 56) + 4 * v22) = *(a2 + 54);
  v31 = *(v10 + 32);
  *(*(v10 + 24) + 4 * v22) = v7;
  *(v31 + 4 * v22) = -1;
  C3DNodeGetMatrix(a2, v39);
  v32 = v39[1];
  v33 = v39[2];
  v34 = v39[3];
  v35 = (*(v10 + 16) + ((v21 >> 2) << 6));
  *v35 = v39[0];
  v35[1] = v32;
  v35[2] = v33;
  v35[3] = v34;
  __C3DTransformTree::updateWorldTransformOnInsertion(this, v9 | (v22 << 32));
  v36 = __C3DTransformTree::_newHandle(this, v9 | (v22 << 32));
  *(*(v10 + 48) + 4 * v22) = v36;
  if (v8 != -1)
  {
    v37 = *(*(this + 7) + 80 * v8 + 32);
    if (*(v37 + 4 * v7) == -1)
    {
      *(v37 + 4 * v7) = v22;
    }
  }

  __C3DTransformTree::_fixupParentAndSiblings(this, v9 | (v22 << 32), v8 | (v7 << 32), -1);
  ++*(this + 18);
  return v36;
}

void C3DTransformTreeRemoveNode(__C3DTransformTree *this, uint64_t a2)
{
  if (!this)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DTransformTreeAddNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  __C3DTransformTree::remove(this, a2);
}

void __C3DTransformTree::remove(__C3DTransformTree *this, uint64_t a2)
{
  v2 = a2;
  *(&v97[1] + 4) = *MEMORY[0x277D85DE8];
  if (a2 == -1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::remove();
    }
  }

  v5 = (*(this + 3) + 8 * v2);
  v6 = *v5;
  v7 = v5[1];
  ++*(this + 18);
  if (v7 == -1)
  {
    v36 = *(this + 12);
    *v5 = -1;
    v5[1] = v36;
    *(this + 12) = v2;
    return;
  }

  os_unfair_lock_lock(this + 19);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v80 - ((v10 + 15) & 0x7FFFFFFF0);
  v12 = *(this + 16);
  MEMORY[0x28223BE20](v9);
  v14 = &v80 - v13;
  if (v12 >= 1)
  {
    memset_pattern16(v11, &unk_21C2A3F30, 4 * v12);
    memset_pattern16(v14, &unk_21C2A3F40, 4 * v12);
  }

  v82 = v11;
  v83 = v14;
  *&v11[4 * v6] = v7;
  *&v14[4 * v6] = v7;
  v15 = v6 + 1;
  LODWORD(v16) = v12;
  if ((v6 + 1) < v12)
  {
    LODWORD(FirstChildInRange) = v6;
    v18 = v7;
    while (1)
    {
      v19 = FirstChildInRange | (v7 << 32);
      v20 = v6 | (v18 << 32);
      FirstChildInRange = __C3DTransformTree::_findFirstChildInRange(this, v19, v20);
      v7 = HIDWORD(FirstChildInRange);
      LastChildInRange = __C3DTransformTree::_findLastChildInRange(this, v19, v20);
      v18 = HIDWORD(LastChildInRange);
      if (HIDWORD(FirstChildInRange) == 0xFFFFFFFF && v18 == 0xFFFFFFFF)
      {
        break;
      }

      v6 = LastChildInRange;
      if (v7 == 0xFFFFFFFF)
      {
        v23 = scn_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          __C3DTransformTree::remove(v96, v97, v23);
        }
      }

      if (v18 == 0xFFFFFFFF)
      {
        v24 = scn_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          __C3DTransformTree::remove(v94, &v95, v24);
        }
      }

      if (v6 != FirstChildInRange)
      {
        v25 = scn_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          __C3DTransformTree::remove(v92, &v93, v25);
        }
      }

      if (v18 < SHIDWORD(FirstChildInRange))
      {
        v26 = scn_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          __C3DTransformTree::remove(v90, &v91, v26);
        }
      }

      v27 = v83;
      v28 = *&v82[4 * FirstChildInRange];
      if (v28 >= SHIDWORD(FirstChildInRange))
      {
        v29 = HIDWORD(FirstChildInRange);
      }

      else
      {
        v29 = *&v82[4 * FirstChildInRange];
      }

      *&v82[4 * FirstChildInRange] = v29;
      v30 = *&v27[4 * v6];
      if (v30 <= v18)
      {
        v30 = v18;
      }

      *&v27[4 * v6] = v30;
      v31 = *&v27[4 * FirstChildInRange];
      if (v29 <= v31)
      {
        v32 = *(this + 3);
        if (v28 >= FirstChildInRange >> 32)
        {
          v28 = FirstChildInRange >> 32;
        }

        v33 = (*(*(this + 7) + 80 * FirstChildInRange + 40) + 8 * v28);
        v34 = v31 - v29 + 1;
        do
        {
          v35 = *v33++;
          *(v32 + 8 * *(v35 + 88)) = -1;
          --v34;
        }

        while (v34);
      }

      ++v15;
      LODWORD(v16) = *(this + 16);
      if (v15 >= v16)
      {
        goto LABEL_39;
      }
    }

    LODWORD(v16) = *(this + 16);
  }

LABEL_39:
  if (v16 < 1)
  {
    v74 = 0;
    goto LABEL_98;
  }

  v80 = &v80;
  v81 = v2;
  v37 = 0;
  do
  {
    v38 = v37;
    v39 = *(this + 7) + 80 * v37;
    v40 = v82;
    v41 = *&v83[4 * v37];
    v42 = *&v82[4 * v37];
    if (v41 >= v42)
    {
      v43 = v41 - v42 + 1;
      C3DTransformLevel::moveData((*(this + 7) + 80 * v37), v41 + 1, ~(v41 - v42));
      v44 = (v39 + 72);
      v45 = *(v39 + 72) - v43;
      *(v39 + 72) = v45;
      if (v41 - v42 == -1)
      {
        v43 = 0;
      }

      else
      {
        v46 = *(v39 + 64);
        if (v46.i32[0] <= v46.i32[1])
        {
          if (v42 <= *(v39 + 64))
          {
            *(v39 + 64) = vmax_s32(vsub_s32(v46, vdup_n_s32(v43)), 0);
          }

          else if (v41 <= v46.i32[1])
          {
            v47 = v45 - 1;
            if (v46.i32[1] < v47)
            {
              v47 = HIDWORD(*(v39 + 64));
            }

            *(v39 + 68) = v47;
          }
        }
      }
    }

    else
    {
      v43 = 0;
      v44 = (v39 + 72);
    }

    v48 = v83;
    ++v37;
    if (v38 + 1 < *(this + 16))
    {
      v49 = *&v83[4 * v37];
      v50 = *&v40[4 * v37];
      if (v49 >= v50 && *v44 >= 1)
      {
        v51 = 0;
        v52 = *(this + 7) + 80 * v37;
        v53 = *(v39 + 32);
        v54 = v49 + 1;
        while (1)
        {
          v55 = *(v53 + 4 * v51);
          if (v55 > v49)
          {
            break;
          }

          if (v55 >= v50)
          {
            if (v54 >= *(v52 + 72) || (v56 = v50, v51 != *(*(v52 + 24) + 4 * v54)))
            {
              v56 = -1;
            }

            goto LABEL_62;
          }

LABEL_63:
          if (++v51 >= *v44)
          {
            goto LABEL_64;
          }
        }

        v56 = v50 + ~v49 + v55;
LABEL_62:
        *(v53 + 4 * v51) = v56;
        goto LABEL_63;
      }
    }

LABEL_64:
    if (v38)
    {
      v57 = 4 * v38 - 4;
      v58 = *&v48[v57];
      v59 = *&v40[v57];
      if (v58 >= v59)
      {
        LODWORD(v60) = v42 == 0x7FFFFFFF ? 0 : v42;
        v61 = *v44;
        if (v60 < *v44)
        {
          v62 = v59 + ~v58;
          v63 = *(v39 + 24);
          v60 = v60;
          do
          {
            v64 = *(v63 + 4 * v60);
            if (v64 >= v59)
            {
              *(v63 + 4 * v60) = v62 + v64;
              v61 = *v44;
            }

            ++v60;
          }

          while (v60 < v61);
        }
      }
    }

    if (v43 >= 1)
    {
      if (v42 == 0x7FFFFFFF)
      {
        v65 = scn_default_log();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
        {
          __C3DTransformTree::remove(v88, &v89, v65);
        }
      }

      v66 = *v44;
      if (v42 < *v44)
      {
        v67 = *(this + 3);
        v68 = v42;
        do
        {
          v69 = *(*(v39 + 40) + 8 * v68);
          v70 = (v67 + 8 * *(v69 + 88));
          if (*v70 != -1)
          {
            if (v38 != *v70)
            {
              v71 = scn_default_log();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
              {
                __C3DTransformTree::remove(v86, &v87, v71);
              }
            }

            if (*(*(this + 3) + 8 * *(v69 + 88) + 4) < v42)
            {
              v72 = scn_default_log();
              if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
              {
                __C3DTransformTree::remove(v84, &v85, v72);
              }
            }

            v67 = *(this + 3);
            v73 = v67 + 8 * *(v69 + 88);
            *(v73 + 4) -= v43;
            v66 = *v44;
          }

          ++v68;
        }

        while (v68 < v66);
      }
    }

    v16 = *(this + 16);
  }

  while (v37 < v16);
  if (v16 < 1)
  {
    v74 = 0;
    LODWORD(v2) = v81;
  }

  else
  {
    v74 = 0;
    v75 = (*(this + 7) + 72);
    v76 = *(this + 16);
    LODWORD(v2) = v81;
    do
    {
      v77 = *v75;
      v75 += 20;
      if (v77)
      {
        ++v74;
      }

      --v76;
    }

    while (v76);
  }

LABEL_98:
  if (v74 < v16)
  {
    __C3DTransformTree::_setLevelCount(this, v74);
  }

  v78 = (*(this + 3) + 8 * v2);
  v79 = *(this + 12);
  *v78 = -1;
  v78[1] = v79;
  *(this + 12) = v2;
  os_unfair_lock_unlock(this + 19);
}

void C3DTransformTreeUpdateNodeTransform(__C3DTransformTree *this, int a2, simd_float4x4 *a3)
{
  if (!this)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DTransformTreeAddNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  __C3DTransformTree::update(this, a2, a3);
}

void __C3DTransformTree::update(__C3DTransformTree *this, int a2, const simd_float4x4 *a3)
{
  if (a2 == -1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::remove();
    }
  }

  v7 = (*(this + 3) + 8 * a2);
  v8 = v7[1];
  if (v8 != -1)
  {
    v9 = *v7;
    os_unfair_lock_lock(this + 19);
    *(this + 68) = 1;
    if (v9 >= *(this + 16))
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        __C3DTransformTree::update(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    v18 = *(this + 7) + 80 * v9;
    v19 = a3->columns[1];
    v20 = a3->columns[2];
    v21 = a3->columns[3];
    v22 = *(v18 + 16) + (v8 << 6);
    *v22 = a3->columns[0];
    *(v22 + 16) = v19;
    *(v22 + 32) = v20;
    *(v22 + 48) = v21;
    if (v8 < *(v18 + 64))
    {
      *(v18 + 64) = v8;
    }

    if (v8 > *(v18 + 68))
    {
      *(v18 + 68) = v8;
    }

    os_unfair_lock_unlock(this + 19);
  }
}

void C3DTransformTreeUpdateCullingHandle(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DTransformTreeAddNode_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (a2 == -1)
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::remove();
    }
  }

  v15 = (*(a1 + 24) + 8 * a2);
  v16 = v15[1];
  if (v16 != -1)
  {
    v17 = *v15;
    if (*v15 >= *(a1 + 64))
    {
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        C3DTransformTreeUpdateCullingHandle_cold_3(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }

    *(*(*(a1 + 56) + 80 * v17 + 56) + 4 * v16) = a3;
  }
}

uint64_t C3DTransformTreeGetWorldTransformPtr(__C3DTransformTree *this, int a2)
{
  if (!this)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DTransformTreeAddNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 == -1)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::remove();
    }
  }

  v13 = *(*(this + 3) + 8 * a2);
  if (*(this + 68) == 1)
  {
    __C3DTransformTree::updateWorldTransforms(this);
  }

  if (HIDWORD(v13) == 0xFFFFFFFF)
  {
    LODWORD(v14) = 0;
  }

  else
  {
    v14 = HIDWORD(v13);
  }

  if (HIDWORD(v13) == 0xFFFFFFFF)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  if (v13 == 0xFFFFFFFFLL)
  {
    LODWORD(v16) = v14;
  }

  else
  {
    v16 = HIDWORD(v13);
  }

  if (v13 == 0xFFFFFFFFLL)
  {
    v17 = v15;
  }

  else
  {
    v17 = v13;
  }

  return *(*(this + 7) + 80 * v17) + (v16 << 6);
}

uint64_t C3DTransformTreeGetLastFrameWorldTransformPtr(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DTransformTreeAddNode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2 == -1)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __C3DTransformTree::remove();
    }
  }

  v13 = *(*(a1 + 24) + 8 * a2);
  v14 = HIDWORD(v13);
  if (HIDWORD(v13) == 0xFFFFFFFF)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  if (HIDWORD(v13) == 0xFFFFFFFF)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v16 = HIDWORD(v13);
  }

  if (v13 == 0xFFFFFFFFLL)
  {
    LODWORD(v13) = v15;
    LODWORD(v14) = v16;
  }

  return *(*(a1 + 56) + 80 * v13 + 8) + (v14 << 6);
}

void C3DTransformTreeNextFrame(__C3DTransformTree *this)
{
  if (!this)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTransformTreeAddNode_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  __C3DTransformTree::nextFrame(this);
}

void __C3DTransformTree::nextFrame(__C3DTransformTree *this)
{
  __C3DTransformTree::updateWorldTransforms(this);
  if (*(this + 16) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      memcpy(*(*(this + 7) + v2 + 8), *(*(this + 7) + v2), *(*(this + 7) + v2 + 72) << 6);
      ++v3;
      v2 += 80;
    }

    while (v3 < *(this + 16));
  }
}

void __C3DTransformTree::updateWorldTransforms(__C3DTransformTree *this)
{
  os_unfair_lock_lock(this + 19);
  *(this + 68) = 0;
  if (*(this + 16))
  {
    v2 = C3DGetScene(**(*(this + 7) + 40));
    if (v2)
    {
      CullingSystem = C3DSceneGetCullingSystem(v2);
      v4 = *(this + 16);
      if (v4 >= 1)
      {
        v5 = CullingSystem;
        v6 = 0;
        v7 = *(this + 7);
        v8 = vneg_f32(0xFFFFFFFFLL);
        while (1)
        {
          v9 = *(this + 7) + 80 * v6;
          v10 = *(v9 + 68);
          v11 = *(v9 + 64);
          if (v10 >= v11)
          {
            break;
          }

LABEL_23:
          ++v6;
          v7 = v9;
          if (v6 >= v4)
          {
            goto LABEL_27;
          }
        }

        if (v6)
        {
          v12 = *v7;
          v13 = *(v9 + 24);
          v14 = v10 + 1;
          v15 = *v9 + (v11 << 6);
          v16 = *(v9 + 16) + (v11 << 6);
          v17 = 0uLL;
          v18 = -1;
          v19 = 0uLL;
          v20 = 0uLL;
          v21 = 0uLL;
          do
          {
            v22 = *(v13 + 4 * v11);
            if (v18 != v22)
            {
              v23 = (v12 + (v22 << 6));
              v17 = *v23;
              v19 = v23[1];
              v20 = v23[2];
              v21 = v23[3];
              v18 = *(v13 + 4 * v11);
            }

            for (i = 0; i != 64; i += 16)
            {
              *(v15 + i) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v19, *(v16 + i), 1), v17, COERCE_FLOAT(*(v16 + i))), v20, *(v16 + i), 2), v21, *(v16 + i), 3);
            }

            ++v11;
            v15 += 64;
            v16 += 64;
          }

          while (v14 != v11);
          if (!v5)
          {
            goto LABEL_15;
          }
        }

        else
        {
          memcpy((*v9 + (v11 << 6)), (*(v9 + 16) + (v11 << 6)), (v10 - v11 + 1) << 6);
          if (!v5)
          {
            goto LABEL_15;
          }
        }

        C3DCullingSystemUpdateWorldTransforms(v5, (*(v9 + 56) + 4 * *(v9 + 64)), (*v9 + (*(v9 + 64) << 6)), *(v9 + 68) - *(v9 + 64) + 1);
LABEL_15:
        if (v6 != *(this + 16) - 1)
        {
          v25 = *(this + 7) + 80 * v6;
          v26 = v6 | (*(v9 + 64) << 32);
          v27 = v6 | (*(v9 + 68) << 32);
          v28 = __C3DTransformTree::_findFirstChildInRange(this, v26, v27) >> 32;
          if (v28 != 0xFFFFFFFF && *(v25 + 144) > v28)
          {
            *(v25 + 144) = v28;
          }

          v29 = __C3DTransformTree::_findLastChildInRange(this, v26, v27) >> 32;
          if (v29 != 0xFFFFFFFF && *(v25 + 148) < v29)
          {
            *(v25 + 148) = v29;
          }
        }

        *(v9 + 64) = v8;
        v4 = *(this + 16);
        goto LABEL_23;
      }
    }
  }

LABEL_27:

  os_unfair_lock_unlock(this + 19);
}

void __C3DTransformTree::~__C3DTransformTree(__C3DTransformTree *this)
{
  if (*(this + 16) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      C3DTransformLevel::deallocateData((*(this + 7) + v2));
      ++v3;
      v2 += 80;
    }

    while (v3 < *(this + 16));
  }

  free(*(this + 7));
  *(this + 7) = 0;
  *(this + 16) = 0;
  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

void C3DTransformLevel::deallocateData(void **this)
{
  free(*this);
  free(this[1]);
  free(this[2]);
  free(this[3]);
  free(this[4]);
  free(this[5]);
  free(this[6]);
  v2 = this[7];

  free(v2);
}

void __C3DTransformTree::_setLevelCount(__C3DTransformTree *this, int a2)
{
  if (*(this + 16) != a2)
  {
    v4 = malloc_type_calloc(0x50uLL, a2, 0x10B00402DE868D6uLL);
    v5 = v4;
    v6 = *(this + 16);
    if (v6 >= a2)
    {
      if (a2 < 1)
      {
        v20 = 0;
      }

      else
      {
        v14 = 0;
        do
        {
          v15 = &v4[v14];
          v16 = (*(this + 7) + v14);
          *v15 = *v16;
          v17 = v16[1];
          v18 = v16[2];
          v19 = v16[4];
          *(v15 + 3) = v16[3];
          *(v15 + 4) = v19;
          *(v15 + 1) = v17;
          *(v15 + 2) = v18;
          v14 += 80;
        }

        while (80 * a2 != v14);
        v6 = *(this + 16);
        v20 = a2;
      }

      if (v20 < v6)
      {
        v23 = 80 * v20;
        do
        {
          C3DTransformLevel::deallocateData((*(this + 7) + v23));
          v23 += 80;
          ++v20;
        }

        while (*(this + 16) > v20);
      }
    }

    else
    {
      if (v6 < 1)
      {
        LODWORD(v8) = 0;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = &v4[v7];
          v10 = (*(this + 7) + v7);
          *v9 = *v10;
          v11 = v10[1];
          v12 = v10[2];
          v13 = v10[4];
          *(v9 + 3) = v10[3];
          *(v9 + 4) = v13;
          *(v9 + 1) = v11;
          *(v9 + 2) = v12;
          ++v8;
          v7 += 80;
        }

        while (v8 < *(this + 16));
      }

      if (v8 < a2)
      {
        v21 = &v4[80 * v8];
        v22 = a2 - v8;
        do
        {
          C3DTransformLevel::allocateData(v21, 0x80u, 1);
          v21 += 10;
          --v22;
        }

        while (v22);
      }
    }

    free(*(this + 7));
    *(this + 7) = v5;
    *(this + 16) = a2;
  }
}