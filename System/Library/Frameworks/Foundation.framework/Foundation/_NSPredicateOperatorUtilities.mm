@interface _NSPredicateOperatorUtilities
+ (BOOL)doRegexForString:(id)string pattern:(id)pattern likeProtect:(BOOL)protect flags:(unint64_t)flags context:(id *)context;
+ (__CFLocale)retainedLocale;
+ (id)newStringFrom:(id)from usingUnicodeTransforms:(unint64_t)transforms;
+ (int64_t)copyRegexFindSafePattern:(id)pattern toBuffer:(unsigned __int16 *)buffer;
@end

@implementation _NSPredicateOperatorUtilities

+ (__CFLocale)retainedLocale
{
  v2 = qword_1ED43FCB8;
  if (!qword_1ED43FCB8)
  {
    objc_sync_enter(self);
    if ((_MergedGlobals_131 & 1) == 0)
    {
      _MergedGlobals_131 = 1;
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterAddObserver(LocalCenter, 0, _localeDidChange, *MEMORY[0x1E695E6E0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v5 = *MEMORY[0x1E695E8A8];
    ValueAtIndex = CFPreferencesCopyAppValue(@"AppleCollationOrder", *MEMORY[0x1E695E8A8]);
    if (ValueAtIndex || (v10 = CFPreferencesCopyAppValue(@"AppleLanguages", v5), (v11 = v10) != 0) && (ValueAtIndex = CFArrayGetValueAtIndex(v10, 0), CFRetain(ValueAtIndex), CFRelease(v11), ValueAtIndex))
    {
      v7 = *MEMORY[0x1E695E480];
      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(*MEMORY[0x1E695E480], ValueAtIndex);
      if (!CanonicalLanguageIdentifierFromString)
      {
        CanonicalLanguageIdentifierFromString = &stru_1EEEFDF90;
        CFRetain(&stru_1EEEFDF90);
      }

      v9 = 0;
    }

    else
    {
      CFRetain(&stru_1EEEFDF90);
      ValueAtIndex = 0;
      v7 = *MEMORY[0x1E695E480];
      CanonicalLanguageIdentifierFromString = &stru_1EEEFDF90;
      v9 = 1;
    }

    ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(v7, CanonicalLanguageIdentifierFromString);
    v13 = *MEMORY[0x1E695E6F0];
    if (CFDictionaryContainsKey(ComponentsFromLocaleIdentifier, *MEMORY[0x1E695E6F0]))
    {
      Value = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, v13);
    }

    else
    {
      Value = &stru_1EEEFDF90;
    }

    if (Value)
    {
      v15 = Value;
    }

    else
    {
      v15 = &stru_1EEEFDF90;
    }

    v16 = CFLocaleCreate(0, v15);
    v2 = v16;
    v17 = 0;
    atomic_compare_exchange_strong(&qword_1ED43FCB8, &v17, v16);
    if (v17)
    {
      CFRelease(v16);
      v2 = qword_1ED43FCB8;
    }

    if ((v9 & 1) == 0)
    {
      CFRelease(ValueAtIndex);
    }

    CFRelease(CanonicalLanguageIdentifierFromString);
    CFRelease(ComponentsFromLocaleIdentifier);
    objc_sync_exit(self);
  }

  CFRetain(v2);
  return v2;
}

+ (id)newStringFrom:(id)from usingUnicodeTransforms:(unint64_t)transforms
{
  v16[1] = *MEMORY[0x1E69E9840];
  if ([from length] >> 30)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid string length (too long)" userInfo:0]);
  }

  if ((transforms & 2) != 0)
  {
    v6 = ((transforms << 63) >> 63) & 1 | 0x180;
  }

  else
  {
    v6 = ((transforms << 63) >> 63) & 0x101;
  }

  Length = CFStringGetLength(from);
  v8 = Length > 899;
  MEMORY[0x1EEE9AC00](Length);
  v10 = (v16 - v9);
  if (v11 < 900)
  {
    v12 = 1024;
  }

  else
  {
    v12 = Length + 200;
    v10 = malloc_type_malloc(2 * (Length + 200), 0x1000040BDFB0063uLL);
  }

  v17.location = 0;
  v17.length = Length;
  CFStringGetCharacters(from, v17, v10);
  v10[Length] = 0;
  if ((transforms & 4) != 0)
  {
    if (Length < 900)
    {
      return CFStringCreateWithCharacters(0, v10, Length);
    }
  }

  else
  {
    MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(*MEMORY[0x1E695E480], v10, Length, v12, *MEMORY[0x1E695E498]);
    v14 = MutableWithExternalCharactersNoCopy;
    if ((transforms & 3) != 0)
    {
      CFStringFold(MutableWithExternalCharactersNoCopy, v6, 0);
    }

    CFStringNormalize(v14, kCFStringNormalizationFormKC);
    if (CFStringGetCharactersPtr(v14) != v10)
    {
      if (Length >= 900)
      {
        free(v10);
      }

      Length = CFStringGetLength(v14);
      v8 = 1;
      v10 = malloc_type_malloc(2 * Length + 2, 0x1000040BDFB0063uLL);
      v18.location = 0;
      v18.length = Length;
      CFStringGetCharacters(v14, v18, v10);
    }

    CFRelease(v14);
    v10[Length] = 0;
    if (!v8)
    {
      return CFStringCreateWithCharacters(0, v10, Length);
    }
  }

  return CFStringCreateWithCharactersNoCopy(0, v10, Length, *MEMORY[0x1E695E488]);
}

+ (BOOL)doRegexForString:(id)string pattern:(id)pattern likeProtect:(BOOL)protect flags:(unint64_t)flags context:(id *)context
{
  protectCopy = protect;
  v51 = *MEMORY[0x1E69E9840];
  patternCopy = pattern;
  v12 = [pattern length];
  if (v12 >> 30 || (v13 = v12, v14 = [string length], v14 >> 30))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid string or pattern length (too long)" userInfo:0]);
  }

  v44 = flags & 2;
  v45 = flags & 1;
  if ((flags & 2) != 0)
  {
    v15 = ((flags << 63) >> 63) & 1 | 0x180;
  }

  else
  {
    v15 = ((flags << 63) >> 63) & 0x101;
  }

  status = U_ZERO_ERROR;
  context->var2 = 3;
  if (!context->var1)
  {
    v43[1] = v43;
    v49 = v13;
    MEMORY[0x1EEE9AC00](v14);
    v17 = (v43 - v16);
    v48 = 0;
    if (v13 >= 0x1C2)
    {
      v18 = v13 + 200;
      v17 = malloc_type_malloc(2 * (v13 + 200), 0x1000040BDFB0063uLL);
      v48 = 1;
    }

    else
    {
      v18 = 1024;
    }

    v47 = v17;
    if ((flags & 4) != 0)
    {
      v52.location = 0;
      v52.length = v13;
      CFStringGetCharacters(patternCopy, v52, v17);
      v17[v13] = 0;
      context->var0 = CFStringCreateWithCharacters(0, v17, v13);
      if (protectCopy)
      {
        [self copyRegexFindSafePattern:patternCopy toBuffer:v17];
        LODWORD(v13) = u_strlen(v17);
        v49 = v13;
      }
    }

    else
    {
      _doPatternNormalization(patternCopy, &v47, &v48, protectCopy, context, v15, &v49, v18, kCFStringNormalizationFormKC);
      v17 = v47;
      LODWORD(v13) = v49;
    }

    v19 = uregex_open(v17, v13, 0x28u, 0, &status);
    v20 = status;
    if (status < U_ILLEGAL_ARGUMENT_ERROR || (flags & 4) != 0)
    {
      if (status < U_ILLEGAL_ARGUMENT_ERROR)
      {
        v22 = 3;
        goto LABEL_24;
      }
    }

    else
    {

      context->var0 = 0;
      _doPatternNormalization(patternCopy, &v47, &v48, protectCopy, context, v15, &v49, v18, kCFStringNormalizationFormC);
      if (v19)
      {
        uregex_close(v19);
      }

      status = U_ZERO_ERROR;
      v19 = uregex_open(v47, v49, 0x28u, 0, &status);
      if (status < U_ILLEGAL_ARGUMENT_ERROR)
      {
        v22 = 2;
LABEL_24:
        context->var1 = v19;
        context->var2 = v22;
        if (v48 == 1)
        {
          free(v47);
        }

        goto LABEL_26;
      }

      status = v20;
    }

    v39 = [NSString stringWithFormat:@"Can't open pattern %s (string %@, pattern %@, case %ld, canon %ld)", u_errorName(v20), string, patternCopy, v45, v44];
    uregex_close(v19);
    if (v48 == 1)
    {
      free(v47);
    }

    v40 = MEMORY[0x1E695DF30];
    if (status == U_REGEX_RULE_SYNTAX)
    {
      v41 = [NSString stringWithFormat:@"Can't do regex matching, reason: (%@)", v39];
      objc_exception_throw([v40 exceptionWithName:*MEMORY[0x1E695D940] reason:v41 userInfo:0]);
    }

    v42 = [NSString stringWithFormat:@"Can't do regex matching, reason: %@", v39];
    objc_exception_throw([v40 exceptionWithName:*MEMORY[0x1E695D930] reason:v42 userInfo:0]);
  }

LABEL_26:
  Length = CFStringGetLength(string);
  v24 = Length > 899;
  MEMORY[0x1EEE9AC00](Length);
  v26 = (v43 - v25);
  if (v27 < 900)
  {
    v28 = 1024;
  }

  else
  {
    v28 = Length + 200;
    v26 = malloc_type_malloc(2 * (Length + 200), 0x1000040BDFB0063uLL);
  }

  v53.location = 0;
  v53.length = Length;
  CFStringGetCharacters(string, v53, v26);
  v26[Length] = 0;
  if (((flags >> 2) & 1) == 0)
  {
    MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(*MEMORY[0x1E695E480], v26, Length, v28, *MEMORY[0x1E695E498]);
    v30 = MutableWithExternalCharactersNoCopy;
    if ((flags & 3) != 0)
    {
      CFStringFold(MutableWithExternalCharactersNoCopy, v15, 0);
    }

    CFStringNormalize(v30, context->var2);
    if (CFStringGetCharactersPtr(v30) == v26)
    {
      LODWORD(Length) = CFStringGetLength(v30);
    }

    else
    {
      if (Length >= 900)
      {
        free(v26);
      }

      Length = CFStringGetLength(v30);
      v31 = malloc_type_malloc(2 * Length + 2, 0x1000040BDFB0063uLL);
      v24 = 1;
      v54.location = 0;
      v54.length = Length;
      CFStringGetCharacters(v30, v54, v31);
      v31[Length] = 0;
      v26 = v31;
    }

    CFRelease(v30);
  }

  uregex_setText(context->var1, v26, Length, &status);
  v32 = status;
  if (status > U_ZERO_ERROR)
  {
    v35 = @"Can't setText %s (string %@, pattern %@, case %ld, canon %ld)";
    goto LABEL_46;
  }

  v33 = uregex_matches(context->var1, 0, &status);
  v32 = status;
  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v35 = @"Can't do match %s (string %@, pattern %@, case %ld, canon %ld)";
LABEL_46:
    v36 = [NSString stringWithFormat:v35, u_errorName(v32), string, patternCopy, v45, v44];
    if (v24)
    {
      free(v26);
    }

    v37 = MEMORY[0x1E695DF30];
    v38 = [NSString stringWithFormat:@"Can't do regex matching, reason: %@", v36];
    objc_exception_throw([v37 exceptionWithName:*MEMORY[0x1E695D930] reason:v38 userInfo:0]);
  }

  if (v24)
  {
    free(v26);
  }

  return v33 != 0;
}

+ (int64_t)copyRegexFindSafePattern:(id)pattern toBuffer:(unsigned __int16 *)buffer
{
  v49 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(pattern);
  v46 = 0u;
  v44 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  theString[0] = pattern;
  v48 = 0;
  v47 = Length;
  CharactersPtr = CFStringGetCharactersPtr(pattern);
  theString[1] = CharactersPtr;
  if (CharactersPtr)
  {
    *(&v47 + 1) = 0;
    v48 = 0;
    *&v46 = 0;
    if (Length >= 1)
    {
      v8 = 0;
      v9 = *(CharactersPtr + Length - 1);
LABEL_15:
      if (v9 == 92)
      {
        if (Length == 1)
        {
          goto LABEL_76;
        }

        v16 = Length - 2;
        v17 = v47;
        if (v47 <= Length - 2)
        {
          goto LABEL_76;
        }

        if (theString[1])
        {
          v18 = *(&theString[1]->isa + *(&v46 + 1) + v16);
        }

        else if (v46)
        {
          v18 = *(v46 + *(&v46 + 1) + v16);
        }

        else
        {
          if (v8 > v16 || v48 <= v16)
          {
            v19 = Length - 6;
            if (v16 < 4)
            {
              v19 = 0;
            }

            if (v19 + 64 < v47)
            {
              v17 = v19 + 64;
            }

            *(&v47 + 1) = v19;
            v48 = v17;
            v50.length = v17 - v19;
            v50.location = *(&v46 + 1) + v19;
            CFStringGetCharacters(theString[0], v50, &v37);
            v8 = *(&v47 + 1);
          }

          v18 = *(&v37 + v16 - v8);
        }

        if (v18 != 92)
        {
LABEL_76:
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"The backslash is a wildcard char userInfo:{and cannot appear unescaped at the end of a string.", 0, v37, v38, v39, v40, v41, v42, v43, v44}]);
        }
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      v12 = 0;
      v23 = 64;
      while (1)
      {
        if (v22 >= 4)
        {
          v24 = 4;
        }

        else
        {
          v24 = v22;
        }

        v25 = v47;
        if (v47 <= v22)
        {
          v27 = 0;
          goto LABEL_40;
        }

        if (theString[1])
        {
          break;
        }

        if (!v46)
        {
          if (v48 <= v22 || v8 > v22)
          {
            v33 = v24 + v20;
            v34 = v23 - v24;
            v35 = v22 - v24;
            v36 = v35 + 64;
            if (v35 + 64 >= v47)
            {
              v36 = v47;
            }

            *(&v47 + 1) = v35;
            v48 = v36;
            if (v47 >= v34)
            {
              v25 = v34;
            }

            v51.location = v35 + *(&v46 + 1);
            v51.length = v25 + v33;
            CFStringGetCharacters(theString[0], v51, &v37);
            v8 = *(&v47 + 1);
          }

          v26 = &v37 - 2 * v8;
          goto LABEL_38;
        }

        v27 = *(v46 + *(&v46 + 1) + v22);
LABEL_44:
        if (v27 <= 0x2Au)
        {
          if (v27 - 40 < 2 || v27 == 36)
          {
LABEL_60:
            v21 = 0;
            v31 = &buffer[v12];
            *v31 = 92;
            v12 += 2;
            v31[1] = v27;
            goto LABEL_61;
          }

          if (v27 == 42)
          {
            v29 = &buffer[v12];
            if (v21)
            {
              v30 = 92;
            }

            else
            {
              v30 = 46;
            }

            *v29 = v30;
            v29[1] = 42;
            v12 += 2;
            v21 = 0;
            goto LABEL_61;
          }
        }

        else
        {
          v28 = v27 - 43;
          if (v28 <= 0x33)
          {
            if (((1 << (v27 - 43)) & 0x9000000000019) != 0)
            {
              goto LABEL_60;
            }

            if (v28 == 20)
            {
              if (v21)
              {
                v21 = 0;
                *&buffer[v12] = 4128860;
                v12 += 2;
                goto LABEL_61;
              }

              v21 = 0;
              buffer[v12] = 46;
              goto LABEL_41;
            }

            if (v28 == 49)
            {
              if (v21)
              {
                *&buffer[v12] = 6029404;
                v12 += 2;
              }

              v21 ^= 1u;
              goto LABEL_61;
            }
          }

          if (v27 - 123 < 3)
          {
            goto LABEL_60;
          }
        }

LABEL_40:
        v21 = 0;
        buffer[v12] = v27;
LABEL_41:
        ++v12;
LABEL_61:
        ++v22;
        --v20;
        ++v23;
        if (Length == v22)
        {
          goto LABEL_8;
        }
      }

      v26 = theString[1] + 2 * *(&v46 + 1);
LABEL_38:
      v27 = *&v26[2 * v22];
      goto LABEL_44;
    }
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(pattern, 0x600u);
    *(&v47 + 1) = 0;
    v48 = 0;
    *&v46 = CStringPtr;
    if (Length > 0)
    {
      v11 = Length - 1;
      if (CStringPtr)
      {
        v8 = 0;
        v9 = CStringPtr[v11];
      }

      else
      {
        if (Length >= 5)
        {
          v14.location = Length - 5;
        }

        else
        {
          v14.location = 0;
        }

        v15 = v14.location + 64;
        if (v14.location + 64 >= Length)
        {
          v15 = Length;
        }

        *(&v47 + 1) = v14.location;
        v48 = v15;
        v14.length = v15 - v14.location;
        CFStringGetCharacters(pattern, v14, &v37);
        v8 = *(&v47 + 1);
        v9 = *(&v37 + v11 - *(&v47 + 1));
      }

      goto LABEL_15;
    }
  }

  v12 = 0;
LABEL_8:
  buffer[v12] = 0;
  return v12;
}

@end