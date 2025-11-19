void CFArrayInsertValueAtIndex(CFMutableArrayRef theArray, CFIndex idx, const void *value)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = value;
  if (CF_IS_OBJC(0x13uLL, theArray))
  {
    v6 = *MEMORY[0x1E69E9840];

    [(__CFArray *)theArray insertObject:value atIndex:idx];
  }

  else
  {
    _CFArrayReplaceValues(theArray, idx, 0, v8, 1);
    v7 = *MEMORY[0x1E69E9840];
  }
}

Boolean CFURLCopyResourcePropertyForKey(CFURLRef url, CFStringRef key, void *propertyValueTypeRefPtr, CFErrorRef *error)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  if (!_CFURLHasFileURLScheme(url, &v15))
  {
    if (!v15)
    {
      CFLog(4, @"CFURLCopyResourcePropertyForKey failed because it was passed a URL which has no scheme", v6, v7, v8, v9, v10, v11, v14);
    }

    goto LABEL_6;
  }

  __CFURLResourceInfoPtr(url);
  if (!_FSURLCopyResourcePropertyForKey())
  {
LABEL_6:
    *propertyValueTypeRefPtr = 0;
  }

  result = 1;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableStringRef CFStringCreateMutableWithExternalCharactersNoCopy(CFAllocatorRef alloc, UniChar *chars, CFIndex numChars, CFIndex capacity, CFAllocatorRef externalCharactersAllocator)
{
  v12 = alloc;
  if (&__kCFAllocatorNull == externalCharactersAllocator)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  if (externalCharactersAllocator)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (!alloc)
  {
    v15 = _CFGetTSD(1u);
    if (v15)
    {
      v12 = v15;
    }

    else
    {
      v12 = &__kCFAllocatorSystemDefault;
    }
  }

  if (v14 == 3)
  {
    v16 = 40;
  }

  else
  {
    v16 = 32;
  }

  Instance = _CFRuntimeCreateInstance(v12, 7uLL, v16, 0, externalCharactersAllocator, v5, v6, v7);
  if (Instance)
  {
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }

    v18 = atomic_load((Instance + 8));
    v19 = v18;
    do
    {
      atomic_compare_exchange_strong((Instance + 8), &v19, v18 & 0xFFFFFFFFFFFFFF9FLL | (32 * v14));
      v20 = v19 == v18;
      v18 = v19;
    }

    while (!v20);
    v21 = atomic_load((Instance + 8));
    v22 = v21;
    do
    {
      atomic_compare_exchange_strong((Instance + 8), &v22, v21 | 0x10);
      v20 = v22 == v21;
      v21 = v22;
    }

    while (!v20);
    v23 = atomic_load((Instance + 8));
    v24 = v23;
    do
    {
      atomic_compare_exchange_strong((Instance + 8), &v24, v23 | 1);
      v20 = v24 == v23;
      v23 = v24;
    }

    while (!v20);
    *(Instance + 16) = 0;
    v25 = (Instance + 8);
    v26 = atomic_load((Instance + 8));
    v20 = (v26 & 0x60) == 0;
    v27 = 24;
    if (v20)
    {
      v27 = 16;
    }

    *(Instance + v27) = 0;
    *(Instance + 32) = xmmword_183317CE0;
    v28 = atomic_load(v25);
    if ((~v28 & 0x60) == 0)
    {
      CFRetain(v12);
      *(Instance + 48) = v12;
    }

    *(Instance + 40) |= 4uLL;
    v29 = atomic_load(v25);
    if ((~v29 & 0x60) == 0)
    {
      CFRelease(*(Instance + 48));
      CFRetain(externalCharactersAllocator);
      *(Instance + 48) = externalCharactersAllocator;
    }

    CFStringSetExternalCharactersNoCopy(Instance, chars, numChars, capacity);
  }

  return Instance;
}

uint64_t __CFToMacRoman(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 > 0x7F)
  {
    if ((a2 + 1277) >= 0x59Du)
    {
      v4 = &macRoman_from_uni;
      v5 = &unk_1833066AC;
      do
      {
        v6 = &v4[2 * ((v5 - v4) >> 3)];
        v7 = *v6;
        if (v7 <= a2)
        {
          if (v7 >= a2)
          {
            LOBYTE(a2) = *(v6 + 2);
            goto LABEL_2;
          }

          v4 = v6 + 2;
        }

        else
        {
          v5 = v6 - 2;
        }
      }

      while (v4 <= v5);
    }

    return 0;
  }

  else
  {
LABEL_2:
    *a3 = a2;
    return 1;
  }
}

Boolean CFDictionaryGetValueIfPresent(CFDictionaryRef theDict, const void *key, const void **value)
{
  v10 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x12uLL, theDict))
  {
    result = [(__CFDictionary *)theDict __getValue:value forKey:key];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    CFBasicHashFindBucket(theDict, key, &v8);
    if (*(&v9 + 1))
    {
      if (value)
      {
        *value = v9;
      }

      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 *__NSGetSizeAndAlignment(unsigned __int8 *result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  v73[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  while (2)
  {
    v10 = result;
    v12 = *result++;
    v11 = v12;
    v13 = v12;
    switch(v12)
    {
      case '""':
        result = v10 + 2;
LABEL_7:
        if (*(result - 1) == 34)
        {
          continue;
        }

        if (*(result - 1))
        {
          ++result;
          goto LABEL_7;
        }

        v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): unterminated ivar name spec at '%s' in '%s'", v9, a4);
        goto LABEL_158;
      case '#':
      case '*':
      case ':':
      case 'D':
      case 'Q':
      case 'd':
      case 'q':
        goto LABEL_120;
      case '$':
      case '%':
      case '&':
      case '\'':
      case ')':
      case ',':
      case '-':
      case '.':
      case '/':
      case ';':
      case '<':
      case '=':
      case '>':
      case '?':
      case 'A':
      case 'E':
      case 'F':
      case 'G':
      case 'H':
      case 'J':
      case 'K':
      case 'M':
      case 'P':
      case 'U':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '\\':
      case ']':
      case '_':
      case 'a':
      case 'b':
      case 'e':
      case 'g':
      case 'h':
      case 'j':
      case 'k':
      case 'm':
      case 'p':
      case 'u':
      case 'w':
      case 'x':
      case 'y':
      case 'z':
        goto LABEL_159;
      case '(':
        v22 = "union";
        v23 = 41;
        goto LABEL_60;
      case '+':
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case 'N':
      case 'O':
      case 'R':
      case 'V':
      case 'n':
      case 'o':
      case 'r':
        continue;
      case '@':
        if (a3)
        {
          *a3 = 8;
        }

        if (a2)
        {
          *a2 = 8;
        }

        v24 = *result;
        if (v24 == 34)
        {
          v46 = v10[2];
          if (v10[2])
          {
            result = v10 + 3;
            while (v46 != 34)
            {
              v47 = *result++;
              v46 = v47;
              if (!v47)
              {
                goto LABEL_132;
              }
            }

            goto LABEL_125;
          }

LABEL_132:
          v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed extended class info spec at '%s' in '%s'", v9, a4);
        }

        else
        {
          if (v24 != 63)
          {
            goto LABEL_125;
          }

          result = v10 + 2;
          if (v10[2] != 60)
          {
            goto LABEL_125;
          }

          v25 = v10[3];
          if (v10[3])
          {
            v26 = 0;
            result = v10 + 4;
            do
            {
              if (v25 == 62)
              {
                if (!v26)
                {
                  goto LABEL_125;
                }

                v27 = -1;
              }

              else
              {
                v27 = v25 == 60;
              }

              v26 += v27;
              v28 = *result++;
              v25 = v28;
            }

            while (v28);
          }

          v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed extended block spec at '%s' in '%s'", v9, a4);
        }

        goto LABEL_158;
      case 'B':
      case 'C':
      case 'c':
        if (a3)
        {
          *a3 = 1;
        }

        if (!a2)
        {
          goto LABEL_125;
        }

        v14 = 1;
        goto LABEL_124;
      case 'I':
      case 'L':
      case 'f':
      case 'i':
      case 'l':
        if (a3)
        {
          *a3 = 4;
        }

        if (!a2)
        {
          goto LABEL_125;
        }

        v14 = 4;
        goto LABEL_124;
      case 'S':
      case 's':
        if (a3)
        {
          *a3 = 2;
        }

        if (!a2)
        {
          goto LABEL_125;
        }

        v14 = 2;
        goto LABEL_124;
      case 'T':
      case 't':
        if (a3)
        {
          *a3 = 16;
        }

        if (!a2)
        {
          goto LABEL_125;
        }

        v14 = 16;
        goto LABEL_124;
      case '[':
        if (a6 >= 0x200)
        {
          goto LABEL_161;
        }

        v15 = *result;
        if (!*result)
        {
          goto LABEL_36;
        }

        v16 = 0;
        v17 = 0;
        LOBYTE(v18) = *result;
        while (1)
        {
          if (v18 == 93)
          {
            if (!v17)
            {
              if ((v15 - 48) > 9)
              {
                if (v16)
                {
                  v36 = 0;
                  goto LABEL_91;
                }

                goto LABEL_36;
              }

              v36 = 0;
              v37 = v16;
              while (v36 < 0x19999999)
              {
                v36 = 10 * v36 + (v15 - 48);
                v38 = *++result;
                LOBYTE(v15) = v38;
                --v37;
                if ((v38 - 48) >= 0xA)
                {
                  if (v37)
                  {
                    if (v36 && !is_mul_ok(v36, a7))
                    {
                      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): cumulative nesting of arrays has reached ridiculous proportions at '%s' in '%s'", v9, a4);
                      goto LABEL_158;
                    }

LABEL_91:
                    v39 = &v10[v16 + 1];
                    v40 = v36 * a7;
                    v72 = 0;
                    v73[0] = 0;
                    v41 = __NSGetSizeAndAlignment(result, v73, &v72, a4, a5, a6 + 1, v36 * a7);
                    v42 = v73[0];
                    if (!v73[0])
                    {
                      v63 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed array spec or array too large at '%s' in '%s'", v9, a4);
                      v64 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v63), 0];
                      objc_exception_throw(v64);
                    }

                    if (!v41 || v41 > v39 || *v41 != 93)
                    {
                      v61 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed array spec at '%s' in '%s'", v9, a4);
                      v62 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v61), 0];
                      objc_exception_throw(v62);
                    }

                    v43 = v72;
                    if (a3)
                    {
                      *a3 = v72;
                    }

                    result = v41 + 1;
                    if (!v43)
                    {
                      v43 = 1;
                      v72 = 1;
                    }

                    if (a2)
                    {
                      if (__CFADD__(v43, v42))
                      {
                        v65 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): array too large at '%s' in '%s'", v9, a4);
                        v66 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v65), 0];
                        objc_exception_throw(v66);
                      }

                      v44 = (v43 + v42 - 1) / v43 * v43;
                      if (v36 > 0xFFFFFFFFFFFFFFFFLL / v44)
                      {
                        v67 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): array too large at '%s' in '%s'", v9, a4);
                        v68 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v67), 0];
                        objc_exception_throw(v68);
                      }

                      if (v40 > 0xFFFFFFFFFFFFFFFFLL / v44)
                      {
                        v69 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): cumulative nested array has reached ridiculous size at '%s' in '%s'", v9, a4);
                        v70 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v69), 0];
                        objc_exception_throw(v70);
                      }

                      v14 = v44 * v36;
LABEL_124:
                      *a2 = v14;
                    }

                    goto LABEL_125;
                  }

LABEL_36:
                  v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed array spec at '%s' in '%s'", v9, a4);
                  goto LABEL_158;
                }
              }

              v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed array spec at '%s' in '%s' -- size is too large", v9, a4);
LABEL_158:
              v60 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20), 0];
              objc_exception_throw(v60);
            }

            v19 = -1;
          }

          else
          {
            v19 = v18 == 91;
          }

          v17 += v19;
          v18 = v10[v16++ + 2];
          if (!v18)
          {
            goto LABEL_36;
          }
        }

      case '^':
        if (a6 >= 0x200)
        {
          goto LABEL_161;
        }

        v21 = *result;
        if (v21 <= 0x5A)
        {
          if (v21 == 40)
          {
            v56 = v10[2];
            if (v10[2])
            {
              v57 = 0;
              result = v10 + 3;
              do
              {
                if (v56 == 41)
                {
                  if (!v57)
                  {
                    goto LABEL_120;
                  }

                  v58 = -1;
                }

                else
                {
                  v58 = v56 == 40;
                }

                v57 += v58;
                v59 = *result++;
                v56 = v59;
              }

              while (v59);
            }

            goto LABEL_156;
          }

          if (v21 == 63)
          {
            goto LABEL_42;
          }
        }

        else
        {
          switch(v21)
          {
            case '[':
              v48 = v10[2];
              if (v10[2])
              {
                v49 = 0;
                result = v10 + 3;
                do
                {
                  if (v48 == 93)
                  {
                    if (!v49)
                    {
                      goto LABEL_120;
                    }

                    v50 = -1;
                  }

                  else
                  {
                    v50 = v48 == 91;
                  }

                  v49 += v50;
                  v51 = *result++;
                  v48 = v51;
                }

                while (v51);
              }

              goto LABEL_156;
            case '{':
              v52 = v10[2];
              if (v10[2])
              {
                v53 = 0;
                result = v10 + 3;
                do
                {
                  if (v52 == 125)
                  {
                    if (!v53)
                    {
                      goto LABEL_120;
                    }

                    v54 = -1;
                  }

                  else
                  {
                    v54 = v52 == 123;
                  }

                  v53 += v54;
                  v55 = *result++;
                  v52 = v55;
                }

                while (v55);
              }

              goto LABEL_156;
            case 'v':
LABEL_42:
              result = v10 + 2;
LABEL_120:
              if (a3)
              {
                *a3 = 8;
              }

              if (a2)
              {
                v14 = 8;
                goto LABEL_124;
              }

LABEL_125:
              if (*result == 43)
              {
                ++result;
              }

              goto LABEL_127;
          }
        }

        result = (__NSGetSizeAndAlignment)();
        if (result)
        {
          goto LABEL_120;
        }

LABEL_156:
        v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed pointed-to-type spec at '%s' in '%s'", v9, a4);
        goto LABEL_158;
      case 'v':
        goto LABEL_125;
      case '{':
        v22 = "struct";
        v23 = 125;
LABEL_60:
        if (a6 >= 0x200)
        {
LABEL_161:
          v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): type encoding string '%s' contains too many nesting levels", a4);
          goto LABEL_158;
        }

        if (!*result)
        {
          goto LABEL_68;
        }

        v29 = 0;
        v30 = *result;
        v31 = result;
        while (2)
        {
          if (v23 != v30)
          {
            v32 = v30 == v13;
LABEL_67:
            v29 += v32;
            v33 = *++v31;
            v30 = v33;
            if (!v33)
            {
LABEL_68:
              v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): malformed %s spec at '%s' in '%s'", v22, v9, a4);
              goto LABEL_158;
            }

            continue;
          }

          break;
        }

        if (v29)
        {
          v32 = -1;
          goto LABEL_67;
        }

        v34 = *result;
        v35 = result;
        break;
      default:
        if (v11)
        {
LABEL_159:
          v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSGetSizeAndAlignment(): unsupported type encoding spec '%c' at '%s' in '%s'", v13, v9, a4);
          goto LABEL_158;
        }

        result = v10;
        goto LABEL_127;
    }

    break;
  }

  while (v34 <= 0x3Cu)
  {
    if (!v34 || v34 == 41)
    {
      goto LABEL_79;
    }

LABEL_76:
    if (v34)
    {
      ++v35;
    }

    v34 = *v35;
  }

  if (v34 == 61)
  {
    result = v35;
    goto LABEL_105;
  }

  if (v34 != 125)
  {
    goto LABEL_76;
  }

LABEL_79:
  if (*result != 61)
  {
    goto LABEL_106;
  }

LABEL_105:
  ++result;
LABEL_106:
  if (result >= v31)
  {
    goto LABEL_169;
  }

  do
  {
    result = (__NSGetSizeAndAlignment)();
  }

  while (result < v31);
  if (result)
  {
LABEL_169:
    if (*result)
    {
      ++result;
    }
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (result < v31)
  {
    goto LABEL_125;
  }

LABEL_127:
  v45 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_183121EF8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    if (!v2)
    {
      objc_end_catch();
      JUMPOUT(0x1831219ACLL);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

id __NSArrayGetIndexesPassingTest(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (![a1 count] || ((a3 & 0x1000000000000000) != 0 ? (v7 = objc_msgSend(a4, "firstIndex"), v8 = objc_msgSend(a4, "lastIndex")) : (v7 = 0, v8 = objc_msgSend(a1, "count") - 1), v7 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    __CFLookUpClass("NSIndexSet");
    v10 = objc_opt_new();
    v11 = *MEMORY[0x1E69E9840];

    return v10;
  }

  else
  {
    if (a3)
    {
      v9 = __CFActiveProcessorCount();
      if (v9 < 2)
      {
        a3 &= ~1uLL;
      }
    }

    else
    {
      v9 = 1;
    }

    __CFLookUpClass("NSMutableIndexSet");
    v40 = objc_opt_new();
    if ((a3 & 3) != 0)
    {
      v13 = (v8 - v7 + 1) / v9 / v9;
      if (v13 >= 0x10)
      {
        if (v13 <= 0x1000)
        {
          v14 = (v13 + 15) & 0x3FF0;
        }

        else
        {
          v14 = 4096;
        }
      }

      else
      {
        v14 = 16;
      }

      v22 = v14 + v8 - v7;
      if (a3)
      {
        v48 = 0u;
        v47 = 0u;
        v46 = 0u;
        v49 = 0;
        v45 = 850045857;
        v43[0] = 0;
        v43[1] = v43;
        v43[2] = 0x2020000000;
        v44 = 0;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ____NSArrayGetIndexesPassingTest_block_invoke;
        block[3] = &unk_1E6D823B0;
        block[8] = v43;
        block[9] = v7;
        block[10] = v14;
        block[11] = v8;
        block[4] = a1;
        block[5] = a4;
        block[6] = v40;
        block[7] = a2;
        block[12] = a3;
        block[13] = &v45;
        dispatch_apply(v22 / v14, 0, block);
        _Block_object_dispose(v43, 8);
      }

      else
      {
        v35 = v8;
        contexta = a1;
        v39 = a4;
        if (v14 <= v22)
        {
          v23 = v7;
          v24 = 0;
          v25 = v14 - 1;
          v26 = 1;
          v27 = -v7;
          v28 = v35;
          v29 = v22 / v14;
          do
          {
            if ((a3 & 2) != 0)
            {
              if (v25 >= v27 + v28)
              {
                v31 = v23;
              }

              else
              {
                v31 = 1 - v14 + v28;
              }

              v30 = v28;
            }

            else
            {
              if (v25 >= v27 + v28)
              {
                v30 = v35;
              }

              else
              {
                v30 = v25 + v24 * v14 + v23;
              }

              v31 = v7;
            }

            v32 = __NSArrayChunkIterate(contexta, a3, v31, v30, v39, a2, 0, v40, 0);
            if (v26 >= v29)
            {
              break;
            }

            ++v24;
            v28 -= v14;
            v7 += v14;
            ++v26;
          }

          while (!v32);
        }
      }
    }

    else
    {
      context = _CFAutoreleasePoolPush();
      LOBYTE(v45) = 0;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v15 = [a1 countByEnumeratingWithState:&v51 objects:v50 count:16];
      if (v15)
      {
        v16 = v15;
        v38 = a4;
        v17 = 0;
        v18 = 0;
        v19 = *v52;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v52 != v19)
            {
              objc_enumerationMutation(a1);
            }

            v21 = *(*(&v51 + 1) + 8 * i);
            if ((a3 & 0x1000000000000000) == 0 || v7 <= v17 && v17 <= v8 && [v38 containsIndex:v17])
            {
              if (__NSARRAY_IS_CALLING_OUT_TO_A_BOOL_BLOCK__(a2))
              {
                [v40 addIndex:v17];
              }

              if (v18 >= 0x3FF)
              {
                _CFAutoreleasePoolPop(context);
                context = _CFAutoreleasePoolPush();
                v18 = 0;
              }

              else
              {
                ++v18;
              }
            }

            ++v17;
          }

          v16 = [a1 countByEnumeratingWithState:&v51 objects:v50 count:16];
        }

        while (v16);
      }

      _CFAutoreleasePoolPop(context);
    }

    v33 = [v40 copy];

    v34 = *MEMORY[0x1E69E9840];
    return v33;
  }
}

Class __CFLookUpClass(const char *a1)
{
  result = objc_lookUpClass(a1);
  if (!result)
  {
    if (!dlopen("/System/Library/Frameworks/Foundation.framework/Foundation", 5))
    {
      dlerror();
      CFLog(3, @"*** Error: Could not load Foundation for class %s; error is '%s'; if this seems unreasonable, perhaps seatbelt has prevented the load due to file access limitations on the process", v3, v4, v5, v6, v7, v8, a1);
    }

    result = objc_lookUpClass(a1);
    if (!result)
    {
      if (!strcmp(a1, "NSString") || !strcmp(a1, "NSMutableString"))
      {
        v9 = objc_opt_self();
        ClassPair = objc_allocateClassPair(v9, "NSString", 0x20uLL);
        objc_registerClassPair(ClassPair);
        v11 = objc_allocateClassPair(ClassPair, "NSMutableString", 0x20uLL);
        objc_registerClassPair(v11);

        return objc_lookUpClass(a1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _NSIsNSURL(uint64_t a1)
{
  if (_NSURLClass)
  {
    if (a1)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  Class = objc_getClass("NSURL");
  _NSURLClass = Class;
  if (!Class)
  {
    return Class & 1;
  }

  if (!a1)
  {
LABEL_9:
    LOBYTE(Class) = 0;
    return Class & 1;
  }

LABEL_3:
  MethodImplementation = object_getMethodImplementation();
  if (MethodImplementation == MEMORY[0x1E69E58E8])
  {
    LOBYTE(Class) = objc_opt_isKindOfClass();
    return Class & 1;
  }

  return MethodImplementation(a1, sel_isNSURL__);
}

CFComparisonResult CFStringCompareWithOptionsAndLocale(CFStringRef theString1, CFStringRef theString2, CFRange rangeToCompare, CFStringCompareFlags compareOptions, CFLocaleRef locale)
{
  length = rangeToCompare.length;
  location = rangeToCompare.location;
  v332 = *MEMORY[0x1E69E9840];
  v11 = CFStringGetLength(theString2);
  v12 = compareOptions;
  v13 = v11;
  v14 = (locale == 0) & (compareOptions >> 5);
  v300 = compareOptions;
  if (v14 == 1)
  {
    v15 = CFLocaleCopyCurrent();
    v12 = compareOptions;
    locale = v15;
  }

  v16 = v12 & 0x191;
  if (locale)
  {
    SpecialCaseHandlingLanguageIdentifierForLocale = _CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale(locale, 1);
    v12 = v300;
    v272 = SpecialCaseHandlingLanguageIdentifierForLocale;
  }

  else
  {
    v272 = 0;
  }

  v329 = 0;
  v327 = 0u;
  v328 = 0u;
  v325 = 0u;
  v326 = 0u;
  v323 = 0u;
  v324 = 0u;
  v321 = 0u;
  v322 = 0u;
  v319 = 0u;
  v320 = 0u;
  *buffer = 0u;
  *v306 = 0u;
  v307 = 0u;
  v308 = 0u;
  v309 = 0u;
  v310 = 0u;
  v311 = 0u;
  v312 = 0u;
  v313 = 0u;
  v314 = 0u;
  v315 = 0u;
  v316 = 0u;
  v317 = 0;
  v304 = 0;
  v305 = 0;
  *theSet = 0u;
  v303 = 0u;
  v18 = __CFStringFillCharacterSetInlineBuffer(theSet, v12);
  v19 = v300;
  v20 = kCFCompareEqualTo;
  if (v16)
  {
    v21 = 1;
  }

  else
  {
    v21 = v18;
  }

  v281 = v21;
  v289 = v18;
  theString = theString1;
  v274 = v14;
  if ((v300 & 0x40) != 0 || locale)
  {
    v22 = 0;
    goto LABEL_28;
  }

  v22 = 0;
  if (v18)
  {
LABEL_28:
    v30 = v20;
    BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(0x6Eu, 0);
    *&v326 = theString;
    *(&v327 + 1) = location;
    *&v328 = length;
    *(&v326 + 1) = CFStringGetCharactersPtr(theString);
    if (*(&v326 + 1))
    {
      CStringPtrInternal = 0;
    }

    else
    {
      CStringPtrInternal = _CFStringGetCStringPtrInternal(theString, 0x600u, 0, 1);
    }

    *&v327 = CStringPtrInternal;
    *(&v328 + 1) = 0;
    v329 = 0;
    *&v314 = theString2;
    *(&v315 + 1) = 0;
    *&v316 = v13;
    CharactersPtr = CFStringGetCharactersPtr(theString2);
    v45 = 0;
    *(&v314 + 1) = CharactersPtr;
    if (!CharactersPtr)
    {
      v45 = _CFStringGetCStringPtrInternal(theString2, 0x600u, 0, 1);
    }

    *&v315 = v45;
    *(&v316 + 1) = 0;
    v317 = 0;
    if (locale)
    {
      v46 = v300;
      LODWORD(v282) = ((v300 & 0x200) == 0) & (v300 >> 7);
      if ((v300 & 0x200) != 0)
      {
        v19 &= ~0x80uLL;
      }

      v47 = v22;
    }

    else
    {
      v47 = 0;
      v46 = v300;
      v282 = (v300 >> 7) & 1;
    }

    v48 = v30;
    v49 = v289;
    v50 = v281;
    v51 = 0;
    v278 = v13;
    v265 = v19;
    if (v22 >= length || v22 >= v13)
    {
      LOBYTE(v266) = 0;
      v57 = v22;
      v56 = 0;
      goto LABEL_388;
    }

    v251 = theString2;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v51 = 0;
    v266 = 0;
    v260 = 0;
    v255 = 0;
    v57 = v22;
    v58 = v47;
    cf = locale;
    v288 = length;
    while (1)
    {
      v267 = v55;
      v268 = v54;
      *v290 = v56;
      v275 = v58;
      v276 = v47;
      while (1)
      {
        v59 = v22;
        v60 = v57;
        v61 = v267;
        v62 = v268;
        v56 = *v290;
        v294 = v57;
LABEL_61:
        v63 = v60 - 4;
        if (v60 < 4)
        {
          v63 = 0;
        }

        v262 = v63;
        v261 = v63 + 64;
        v64 = v60 + 1;
        v65 = v60 - 3;
        if ((v60 + 1) < 4)
        {
          v65 = 0;
        }

        v264 = v65;
        v263 = v65 + 64;
        v66 = v61 <= 0 ? 0 : -1;
        v283 = v66;
        v285 = v60 + 1;
        v273 = v60;
        *v291 = v61;
LABEL_69:
        if (v62)
        {
          v67 = v331[v52++];
          if (v61)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v59 < 0 || (v69 = v328, v328 <= v59))
          {
            v67 = 0;
          }

          else
          {
            if (*(&v326 + 1))
            {
              v70 = *(*(&v326 + 1) + 2 * *(&v327 + 1) + 2 * v59);
            }

            else if (v327)
            {
              v70 = *(v327 + *(&v327 + 1) + v59);
            }

            else
            {
              if (v329 <= v59 || (v80 = *(&v328 + 1), *(&v328 + 1) > v59))
              {
                v81 = v59 - 4;
                if (v59 < 4)
                {
                  v81 = 0;
                }

                if (v81 + 64 < v328)
                {
                  v69 = v81 + 64;
                }

                *(&v328 + 1) = v81;
                v329 = v69;
                v333.length = v69 - v81;
                v333.location = *(&v327 + 1) + v81;
                v82 = v52;
                v83 = v48;
                v84 = v51;
                CFStringGetCharacters(v326, v333, buffer);
                v64 = v285;
                v61 = *v291;
                v57 = v294;
                v52 = v82;
                v58 = v275;
                v47 = v276;
                v50 = v281;
                v46 = v300;
                v51 = v84;
                v49 = v289;
                v48 = v83;
                v80 = *(&v328 + 1);
              }

              v70 = buffer[v59 - v80];
            }

            v67 = v70;
            if ((v46 & 1) != 0 && (v70 - 65) <= 0x19u)
            {
              if (v272 && v70 == 73)
              {
                v67 = 73;
              }

              else
              {
                if (v48)
                {
                  v85 = 1;
                }

                else
                {
                  v85 = (v46 & 0x200) == 0;
                }

                if (v85)
                {
                  v67 = v70 | 0x20;
                }
              }
            }
          }

          v305 = 1;
          if (v61)
          {
LABEL_71:
            v68 = v330[v53++];
            break;
          }
        }

        if (v60 < 0 || (v71 = v316, v316 <= v60))
        {
          v68 = 0;
        }

        else
        {
          if (*(&v314 + 1))
          {
            v72 = *(*(&v314 + 1) + 2 * *(&v315 + 1) + 2 * v60);
          }

          else if (v315)
          {
            v72 = *(v315 + *(&v315 + 1) + v60);
          }

          else
          {
            if (v317 <= v60 || (v86 = *(&v316 + 1), *(&v316 + 1) > v60))
            {
              if (v261 < v316)
              {
                v71 = v261;
              }

              *(&v316 + 1) = v262;
              v317 = v71;
              v334.length = v71 - v262;
              v334.location = *(&v315 + 1) + v262;
              v256 = v52;
              v87 = v48;
              v88 = v51;
              CFStringGetCharacters(v314, v334, v306);
              v64 = v285;
              v61 = *v291;
              v57 = v294;
              v52 = v256;
              v58 = v275;
              v47 = v276;
              v50 = v281;
              v46 = v300;
              v51 = v88;
              v49 = v289;
              v48 = v87;
              v86 = *(&v316 + 1);
            }

            v72 = v306[v60 - v86];
          }

          v68 = v72;
          if ((v46 & 1) != 0 && (v72 - 65) <= 0x19u)
          {
            if (v272 && v72 == 73)
            {
              v68 = 73;
            }

            else
            {
              if (v48)
              {
                v89 = 1;
              }

              else
              {
                v89 = (v46 & 0x200) == 0;
              }

              if (v89)
              {
                v68 = v72 | 0x20;
              }
            }
          }
        }

        v304 = 1;
        if (v61 || (v46 & 0x40) == 0 || v62)
        {
          break;
        }

        if (v67 - 48 > 9 || v68 - 48 > 9)
        {
          break;
        }

        *v290 = v56;
        v124 = 0;
        v125 = 0;
        v126 = &buffer[v59 + 1];
        v127 = 2 * v59 + 2;
        v259 = v52;
        do
        {
          v128 = v124;
          v129 = v59 + v124;
          v125 = v67 - 48 + 10 * v125;
          v22 = v129 + 1;
          if (v129 < -1)
          {
            break;
          }

          v130 = v328;
          if (v328 <= v22)
          {
            break;
          }

          if (*(&v326 + 1))
          {
            v131 = (*(&v326 + 1) + 2 * *(&v327 + 1) + v127);
          }

          else
          {
            if (v327)
            {
              v132 = *(v327 + *(&v327 + 1) + v59 + v128 + 1);
              goto LABEL_243;
            }

            if (v329 <= v22 || (v134 = *(&v328 + 1), *(&v328 + 1) > v22))
            {
              v135 = v59 + v128 - 3;
              if (v22 < 4)
              {
                v135 = 0;
              }

              v295 = v126;
              if (v135 + 64 < v328)
              {
                v130 = v135 + 64;
              }

              *(&v328 + 1) = v135;
              v329 = v130;
              v337.length = v130 - v135;
              v337.location = *(&v327 + 1) + v135;
              v136 = v48;
              v137 = v51;
              v286 = v127;
              CFStringGetCharacters(v326, v337, buffer);
              v127 = v286;
              v126 = v295;
              v46 = v300;
              v52 = v259;
              v58 = v275;
              v47 = v276;
              v50 = v281;
              v51 = v137;
              v49 = v289;
              v48 = v136;
              v134 = *(&v328 + 1);
            }

            v131 = &v126[-v134];
          }

          v132 = v131[v128];
LABEL_243:
          v67 = v132;
          v133 = (v132 - 48);
          v124 = v128 + 1;
        }

        while (v133 < 0xA);
        v138 = 0;
        v139 = 0;
        v140 = &v306[v60 + 1];
        v141 = 2 * v60 + 2;
        while (2)
        {
          v142 = v138;
          v139 = v68 - 48 + 10 * v139;
          v57 = v60 + v138 + 1;
          if (v60 >= -1)
          {
            v143 = v316;
            if (v316 > v57)
            {
              if (*(&v314 + 1))
              {
                v144 = (*(&v314 + 1) + 2 * *(&v315 + 1) + v141);
                goto LABEL_258;
              }

              if (v315)
              {
                v145 = *(v315 + *(&v315 + 1) + v60 + v142 + 1);
              }

              else
              {
                if (v317 <= v57 || (v147 = *(&v316 + 1), *(&v316 + 1) > v57))
                {
                  v148 = v60 + v142 - 3;
                  if (v57 < 4)
                  {
                    v148 = 0;
                  }

                  v284 = v141;
                  v287 = v140;
                  if (v148 + 64 < v316)
                  {
                    v143 = v148 + 64;
                  }

                  *(&v316 + 1) = v148;
                  v317 = v143;
                  v338.length = v143 - v148;
                  v338.location = *(&v315 + 1) + v148;
                  v254 = v48;
                  v149 = v51;
                  v296 = v57;
                  CFStringGetCharacters(v314, v338, v306);
                  v141 = v284;
                  v140 = v287;
                  v57 = v296;
                  v46 = v300;
                  v52 = v259;
                  v58 = v275;
                  v47 = v276;
                  v50 = v281;
                  v51 = v149;
                  v49 = v289;
                  v48 = v254;
                  v147 = *(&v316 + 1);
                }

                v144 = &v140[-v147];
LABEL_258:
                v145 = v144[v142];
              }

              v68 = v145;
              v146 = (v145 - 48);
              v138 = v142 + 1;
              if (v146 >= 0xA)
              {
                break;
              }

              continue;
            }
          }

          break;
        }

        if (v125 != v139)
        {
          v248 = v274;
          if (!cf)
          {
            v248 = 0;
          }

          if (v125 >= v139)
          {
            if (v248)
            {
              CFRelease(cf);
            }

            v74 = kCFCompareGreaterThan;
          }

          else
          {
            if (v248)
            {
              CFRelease(cf);
            }

            v74 = kCFCompareLessThan;
          }

          goto LABEL_585;
        }

        if ((v46 & 0x200) != 0 && !v48)
        {
          if (v128 + 1 < v142 + 1)
          {
            v150 = -1;
          }

          else
          {
            v150 = 1;
          }

          v151 = v266;
          if (v128 != v142)
          {
            v151 = 1;
          }

          v266 = v151;
          if (v128 == v142)
          {
            v48 = 0;
          }

          else
          {
            v48 = v150;
          }

          if (v128 != v142)
          {
            v51 = v60;
          }

          v152 = *v290;
          if (v128 != v142)
          {
            v152 = v59;
          }

          *v290 = v152;
        }

        if (v22 < v288)
        {
          v267 = 0;
          v268 = 0;
          if (v57 < v278)
          {
            continue;
          }
        }

        v22 = v59 + v128 + 1;
        v57 = v60 + v142 + 1;
        locale = cf;
        length = v288;
        v56 = *v290;
        goto LABEL_388;
      }

      if (v67 == v68)
      {
        v55 = v61;
        v57 = v60;
        v22 = v59;
        v54 = v62;
        locale = cf;
LABEL_291:
        length = v288;
        goto LABEL_292;
      }

      if ((v50 & 1) == 0)
      {
        if (!cf)
        {
          goto LABEL_611;
        }

        v74 = _CFCompareStringsWithLocale(buffer, v22, v288 - v22, v306, v57, v278 - v57, v265, cf);
        if (!v274)
        {
          goto LABEL_585;
        }

        v200 = cf;
        goto LABEL_574;
      }

      if (v67 < v68)
      {
        v74 = kCFCompareLessThan;
      }

      else
      {
        v74 = kCFCompareGreaterThan;
      }

      if (((v48 == 0) & (v46 >> 9)) != 0)
      {
        v48 = v74;
        v51 = v58;
        v56 = v47;
      }

      if (v67 > 0x7F || v68 > 0x7F)
      {
        v76 = 1;
      }

      else
      {
        v76 = v49;
      }

      if ((v76 & 1) == 0)
      {
        if (cf)
        {
          v74 = _CFCompareStringsWithLocale(buffer, v59, v288 - v59, v306, v60, v278 - v60, v265, cf);
          if (!v274)
          {
            goto LABEL_585;
          }

          v200 = cf;
          goto LABEL_574;
        }

        if ((v46 & 1) == 0)
        {
          goto LABEL_585;
        }
      }

      if ((v67 & 0xFC00) == 0xD800 && v59 >= -1)
      {
        v77 = v59 + 1;
        v78 = v328;
        if (v328 > v59 + 1)
        {
          if (*(&v326 + 1))
          {
            v79 = *(*(&v326 + 1) + 2 * *(&v327 + 1) + 2 * v77);
          }

          else if (v327)
          {
            v79 = *(v327 + *(&v327 + 1) + v77);
          }

          else
          {
            if (v329 <= v77 || (v90 = *(&v328 + 1), *(&v328 + 1) > v77))
            {
              v91 = v59 - 3;
              if (v77 < 4)
              {
                v91 = 0;
              }

              if (v91 + 64 < v328)
              {
                v78 = v91 + 64;
              }

              *(&v328 + 1) = v91;
              v329 = v78;
              v335.length = v78 - v91;
              v335.location = *(&v327 + 1) + v91;
              v257 = v52;
              v252 = v48;
              v249 = v51;
              CFStringGetCharacters(v326, v335, buffer);
              v64 = v285;
              v61 = *v291;
              v57 = v294;
              v52 = v257;
              v58 = v275;
              v47 = v276;
              v50 = v281;
              v46 = v300;
              v51 = v249;
              v49 = v289;
              v48 = v252;
              v90 = *(&v328 + 1);
            }

            v79 = buffer[v77 - v90];
          }

          if (v79 >> 10 == 55)
          {
            v67 = ((v67 << 10) & 0x36FFC00) - 56613888 + v79;
            v305 = 2;
          }
        }
      }

      if ((v68 & 0xFC00) == 0xD800 && v60 >= -1)
      {
        v92 = v316;
        if (v316 > v64)
        {
          if (*(&v314 + 1))
          {
            v93 = *(*(&v314 + 1) + 2 * *(&v315 + 1) + 2 * v64);
          }

          else if (v315)
          {
            v93 = *(v315 + *(&v315 + 1) + v64);
          }

          else
          {
            if (v317 <= v64 || (v94 = *(&v316 + 1), *(&v316 + 1) > v64))
            {
              if (v263 < v316)
              {
                v92 = v263;
              }

              *(&v316 + 1) = v264;
              v317 = v92;
              v336.length = v92 - v264;
              v336.location = *(&v315 + 1) + v264;
              v258 = v52;
              v253 = v48;
              v95 = v51;
              CFStringGetCharacters(v314, v336, v306);
              v64 = v285;
              v61 = *v291;
              v57 = v294;
              v52 = v258;
              v58 = v275;
              v47 = v276;
              v50 = v281;
              v46 = v300;
              v51 = v95;
              v49 = v289;
              v48 = v253;
              v94 = *(&v316 + 1);
            }

            v93 = v306[v64 - v94];
          }

          if (v93 >> 10 == 55)
          {
            v68 = ((v68 << 10) & 0x36FFC00) - 56613888 + v93;
            v304 = 2;
          }
        }
      }

      if (!v49)
      {
        v54 = v268;
        goto LABEL_312;
      }

      v96 = theSet[1];
      v97 = HIDWORD(theSet[1]);
      v98 = theSet[1] & 4;
      v99 = v98 >> 2;
      if (HIDWORD(theSet[1]) > v67 || v303 <= v67)
      {
        goto LABEL_194;
      }

      if (!HIWORD(v67) && (theSet[1] & 2) == 0)
      {
        if (*(&v303 + 1))
        {
          if (theSet[1])
          {
            v108 = v67 >> 8;
            v109 = *(*(&v303 + 1) + v108);
            if (!*(*(&v303 + 1) + v108))
            {
              if ((theSet[1] & 4) == 0)
              {
                goto LABEL_207;
              }

              goto LABEL_195;
            }

            LOBYTE(v99) = (theSet[1] & 4) == 0;
            if (v109 != 255)
            {
              if ((((*(*(&v303 + 1) + 32 * v109 + (v67 >> 3) + 224) >> (v67 & 7)) & 1) == 0) == (v98 == 0))
              {
                goto LABEL_207;
              }

              goto LABEL_195;
            }

LABEL_194:
            if ((v99 & 1) == 0)
            {
              goto LABEL_207;
            }

            goto LABEL_195;
          }

          v100 = v98 == 0;
          v101 = ((*(*(&v303 + 1) + (v67 >> 3)) >> (v67 & 7)) & 1) == 0;
        }

        else
        {
          v101 = (theSet[1] & 1) == 0;
          v100 = v98 != 0;
        }

        if (((v101 ^ v100) & 1) == 0)
        {
          goto LABEL_207;
        }

LABEL_195:
        if (v52 == v62 && v62 > 0)
        {
          v62 = 0;
        }

        v111 = v305;
        if (v62)
        {
          v111 = 0;
        }

        v59 += v111;
        v64 = v285;
        v53 += v283;
        length = v288;
        v61 = *v291;
        v57 = v294;
        if (v59 >= v288)
        {
          goto LABEL_417;
        }

        goto LABEL_69;
      }

      v102 = v48;
      v103 = v56;
      v104 = v51;
      v105 = v22;
      v106 = v52;
      IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(theSet[0], v67);
      v52 = v106;
      v22 = v105;
      v60 = v273;
      v58 = v275;
      v47 = v276;
      v50 = v281;
      v46 = v300;
      v51 = v104;
      v56 = v103;
      v49 = v289;
      v48 = v102;
      if (IsLongCharacterMember)
      {
        goto LABEL_195;
      }

      v96 = theSet[1];
      v97 = HIDWORD(theSet[1]);
      v98 = theSet[1] & 4;
LABEL_207:
      v112 = v98 != 0;
      if (v97 > v68 || v303 <= v68)
      {
        goto LABEL_220;
      }

      if (HIWORD(v68) || (v96 & 2) != 0)
      {
        v113 = v48;
        v114 = v56;
        v115 = v51;
        v116 = v22;
        v117 = v52;
        v118 = CFCharacterSetIsLongCharacterMember(theSet[0], v68);
        v52 = v117;
        v22 = v116;
        v60 = v273;
        v58 = v275;
        v47 = v276;
        v50 = v281;
        v46 = v300;
        v51 = v115;
        v56 = v114;
        v49 = v289;
        v48 = v113;
        if (!v118)
        {
          goto LABEL_384;
        }

        goto LABEL_221;
      }

      if (*(&v303 + 1))
      {
        if ((v96 & 1) == 0)
        {
          if ((((*(*(&v303 + 1) + (v68 >> 3)) >> (v68 & 7)) & 1) == 0) == (v98 == 0))
          {
            goto LABEL_384;
          }

          goto LABEL_221;
        }

        v121 = *(*(&v303 + 1) + (v68 >> 8));
        if (!*(*(&v303 + 1) + (v68 >> 8)))
        {
          if (!v98)
          {
            goto LABEL_384;
          }

          goto LABEL_221;
        }

        v112 = v98 == 0;
        if (v121 == 255)
        {
LABEL_220:
          if (!v112)
          {
            goto LABEL_384;
          }

          goto LABEL_221;
        }

        v120 = v98 == 0;
        v119 = ((*(*(&v303 + 1) + 32 * v121 + (v68 >> 3) + 224) >> (v68 & 7)) & 1) == 0;
      }

      else
      {
        v119 = (v96 & 1) == 0;
        v120 = v98 != 0;
      }

      if ((v119 ^ v120))
      {
LABEL_221:
        v61 = *v291;
        if (v53 == *v291 && *v291 > 0)
        {
          v61 = 0;
        }

        v123 = v304;
        if (v61)
        {
          v123 = 0;
        }

        v60 += v123;
        length = v288;
        if (v288 <= v59 || (v52 -= v62 > 0, v57 = v294, v60 >= v278))
        {
LABEL_417:
          locale = cf;
          v194 = v278;
          goto LABEL_418;
        }

        goto LABEL_61;
      }

LABEL_384:
      v57 = v60;
      v61 = *v291;
      v267 = *v291;
      v22 = v59;
      v54 = v62;
LABEL_312:
      v157 = v282 ^ 1;
      if (v22 < 1)
      {
        v157 = 1;
      }

      if (v157)
      {
        v159 = v260;
        v55 = v267;
      }

      else
      {
        v55 = v267;
        if (v62)
        {
          v158 = 0;
          if (!v61)
          {
            goto LABEL_327;
          }

LABEL_338:
          if (v158)
          {
            v57 -= v304;
          }
        }

        else
        {
          v160 = BitmapPtrForPlane;
          if (v67 >= 0x10000)
          {
            v161 = v48;
            v269 = v54;
            v162 = v56;
            v163 = v51;
            v164 = v22;
            v165 = v52;
            v297 = v57;
            v160 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(v67));
            v57 = v297;
            v46 = v300;
            v52 = v165;
            v22 = v164;
            v58 = v275;
            v47 = v276;
            v50 = v281;
            v51 = v163;
            v56 = v162;
            v55 = v267;
            v54 = v269;
            v49 = v289;
            v48 = v161;
          }

          if (v160)
          {
            v166 = (1 << (v67 & 7)) & *(v160 + (v67 >> 3));
            v158 = v166 != 0;
            if (v166)
            {
              v67 = v68;
            }
          }

          else
          {
            v158 = 0;
          }

          if (*v291)
          {
            goto LABEL_338;
          }

LABEL_327:
          v167 = BitmapPtrForPlane;
          if (v68 >= 0x10000)
          {
            v270 = v54;
            v168 = v48;
            v169 = v56;
            v170 = v51;
            v171 = v22;
            v172 = v52;
            v298 = v57;
            v167 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(v68));
            v57 = v298;
            v46 = v300;
            v52 = v172;
            v22 = v171;
            v58 = v275;
            v47 = v276;
            v50 = v281;
            v51 = v170;
            v56 = v169;
            v49 = v289;
            v48 = v168;
            v55 = v267;
            v54 = v270;
          }

          if (!v167)
          {
            goto LABEL_338;
          }

          v173 = (1 << (v68 & 7)) & *(v167 + (v68 >> 3));
          if (v173)
          {
            v174 = v67;
          }

          else
          {
            v174 = v68;
          }

          if ((v158 ^ (v173 != 0)))
          {
            v175 = v304;
            if (!v158)
            {
              v175 = 0;
            }

            v57 -= v175;
            if (v173)
            {
              v22 -= v305;
              v68 = v67;
            }
          }

          else
          {
            v68 = v174;
          }
        }

        v159 = v260;
        v61 = *v291;
      }

      if (v67 == v68)
      {
        locale = cf;
        length = v288;
        goto LABEL_362;
      }

      if (v62)
      {
        v176 = 0;
        locale = cf;
        goto LABEL_360;
      }

      if (!v255 || v255 == v22)
      {
        v299 = v57;
        v250 = v51;
        v177 = v48;
        v301 = 0;
        v178 = v52;
        v179 = __CFStringFoldCharacterClusterAtIndex(v67, buffer, v22, v265, v272, v331, &v305, &v301);
        v54 = v179;
        if (v179 > 0)
        {
          v52 = 1;
        }

        else
        {
          v52 = v178;
        }

        if (v179 > 0)
        {
          v67 = v331[0];
        }

        if (v301 == 1)
        {
          v180 = v22;
          v181 = v22;
          v182 = v52;
          RangeOfCharacterClusterAtIndex = CFStringGetRangeOfCharacterClusterAtIndex(theString, v180, 1);
          v52 = v182;
          v22 = v181;
          v255 = RangeOfCharacterClusterAtIndex + v184;
        }

        else
        {
          v255 = 0;
        }

        locale = cf;
        v58 = v275;
        v47 = v276;
        v48 = v177;
        v49 = v289;
        v51 = v250;
        v57 = v299;
        v46 = v300;
        v50 = v281;
        v55 = v267;
        v61 = *v291;
      }

      else
      {
        v54 = 0;
        locale = cf;
      }

      v176 = v54 == 0;
      if (!v54 && v55 >= 1)
      {
        if (locale)
        {
          v245 = v288 - v47;
LABEL_595:
          v246 = v278 - v58;
          v247 = v58;
          goto LABEL_596;
        }

LABEL_611:
        v199 = v67 >= v68;
        goto LABEL_612;
      }

LABEL_360:
      if (!v61)
      {
        if (v67 != v68)
        {
          v176 = 1;
        }

        if (!v176 || v260 && v260 != v57)
        {
          v55 = 0;
          goto LABEL_291;
        }

        v271 = v54;
        v185 = v52;
        *v292 = v56;
        v186 = v51;
        v187 = v48;
        v301 = 0;
        v188 = v57;
        v189 = __CFStringFoldCharacterClusterAtIndex(v68, v306, v57, v265, v272, v330, &v304, &v301);
        v190 = v330[0];
        if (v189 <= 0)
        {
          v190 = v68;
        }

        else
        {
          v53 = 1;
        }

        if (v189 && v67 == v190)
        {
          v191 = v189;
          if (v301 == 1)
          {
            v192 = CFStringGetRangeOfCharacterClusterAtIndex(v251, v188, 1);
            v159 = v192 + v193;
          }

          else
          {
            v159 = 0;
          }

          length = v288;
          v48 = v187;
          v49 = v289;
          v51 = v186;
          v46 = v300;
          v50 = v281;
          v58 = v275;
          v47 = v276;
          v52 = v185;
          v56 = *v292;
          v57 = v188;
          v54 = v271;
          v55 = v191;
          goto LABEL_362;
        }

        if (!locale)
        {
          v199 = v67 >= v190;
          goto LABEL_612;
        }

        v247 = v275;
        v47 = v276;
        v245 = v288 - v276;
        v246 = v278 - v275;
LABEL_596:
        v74 = _CFCompareStringsWithLocale(buffer, v47, v245, v306, v247, v246, v265, locale);
        if (!v274)
        {
          goto LABEL_585;
        }

        v200 = locale;
LABEL_574:
        CFRelease(v200);
        goto LABEL_585;
      }

      length = v288;
      v159 = v260;
LABEL_362:
      v260 = v159;
      if (v54 >= 1 && v55 >= 1)
      {
        while (v52 < v54 && v53 < v55)
        {
          if (v331[v52] != v330[v53])
          {
            goto LABEL_593;
          }

          ++v52;
          ++v53;
        }

        if (v52 < v54 && v53 < v55)
        {
LABEL_593:
          if (locale)
          {
            v245 = length - v47;
            goto LABEL_595;
          }

          v199 = v331[v52] >= v330[v53];
LABEL_612:
          if (v199)
          {
            v74 = kCFCompareGreaterThan;
          }

          else
          {
            v74 = kCFCompareLessThan;
          }

          goto LABEL_585;
        }
      }

LABEL_292:
      if (v52 == v54 && v54 > 0)
      {
        v54 = 0;
      }

      if (v53 == v55 && v55 > 0)
      {
        v55 = 0;
      }

      v155 = v305;
      if (v54)
      {
        v155 = 0;
      }

      v22 += v155;
      v156 = v304;
      if (v55)
      {
        v156 = 0;
      }

      v57 += v156;
      if (!(v54 | v55))
      {
        v58 = v57;
        v47 = v22;
      }

      if (v22 >= length || v57 >= v278)
      {
LABEL_388:
        v59 = v22;
        v60 = v57;
        v194 = v278;
        if ((v49 | v282) == 1)
        {
LABEL_418:
          *v293 = v56;
          v201 = v48;
          v202 = v51;
          while (v59 < length)
          {
            if (v59 < 0 || (v203 = v328, v328 <= v59))
            {
              v204 = 0;
            }

            else if (*(&v326 + 1))
            {
              v204 = *(*(&v326 + 1) + 2 * *(&v327 + 1) + 2 * v59);
            }

            else if (v327)
            {
              v204 = *(v327 + *(&v327 + 1) + v59);
            }

            else
            {
              if (v329 <= v59 || (v209 = *(&v328 + 1), *(&v328 + 1) > v59))
              {
                v210 = v59 - 4;
                if (v59 < 4)
                {
                  v210 = 0;
                }

                if (v210 + 64 < v328)
                {
                  v203 = v210 + 64;
                }

                *(&v328 + 1) = v210;
                v329 = v203;
                v339.length = v203 - v210;
                v339.location = *(&v327 + 1) + v210;
                CFStringGetCharacters(v326, v339, buffer);
                v51 = v202;
                v49 = v289;
                v48 = v201;
                v209 = *(&v328 + 1);
              }

              v204 = buffer[v59 - v209];
            }

            v205 = v204;
            if (((v204 < 0x80u) & ~v49) != 0)
            {
              break;
            }

            if (v204 >> 10 == 54 && v59 >= -1)
            {
              v206 = v59 + 1;
              v207 = v328;
              if (v328 <= v59 + 1)
              {
                v194 = v278;
              }

              else
              {
                if (*(&v326 + 1))
                {
                  v208 = *(*(&v326 + 1) + 2 * *(&v327 + 1) + 2 * v206);
                }

                else if (v327)
                {
                  v208 = *(v327 + *(&v327 + 1) + v206);
                }

                else
                {
                  if (v329 <= v206 || (v211 = *(&v328 + 1), *(&v328 + 1) > v206))
                  {
                    v212 = v59 - 3;
                    if (v206 < 4)
                    {
                      v212 = 0;
                    }

                    if (v212 + 64 < v328)
                    {
                      v207 = v212 + 64;
                    }

                    *(&v328 + 1) = v212;
                    v329 = v207;
                    v340.length = v207 - v212;
                    v340.location = *(&v327 + 1) + v212;
                    CFStringGetCharacters(v326, v340, buffer);
                    v51 = v202;
                    v49 = v289;
                    v48 = v201;
                    v211 = *(&v328 + 1);
                  }

                  v208 = buffer[v206 - v211];
                }

                v194 = v278;
                if (v208 >> 10 == 55)
                {
                  v205 = (v205 << 10) + v208 - 56613888;
                }
              }
            }

            if (!v282)
            {
              goto LABEL_458;
            }

            v213 = BitmapPtrForPlane;
            if (v205 >= 0x10000)
            {
              v213 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(v205));
              v51 = v202;
              v49 = v289;
              v48 = v201;
            }

            if (!v213 || ((*(v213 + (v205 >> 3)) >> (v205 & 7)) & 1) == 0)
            {
LABEL_458:
              if (!v49)
              {
                break;
              }

              v214 = (theSet[1] & 4) >> 2;
              if (HIDWORD(theSet[1]) > v205 || v303 <= v205)
              {
                goto LABEL_473;
              }

              if (HIWORD(v205) || (theSet[1] & 2) != 0)
              {
                v215 = CFCharacterSetIsLongCharacterMember(theSet[0], v205);
                v51 = v202;
                v49 = v289;
                v48 = v201;
                if (!v215)
                {
                  break;
                }
              }

              else if (*(&v303 + 1))
              {
                if (theSet[1])
                {
                  v216 = v205 >> 8;
                  v217 = *(*(&v303 + 1) + v216);
                  if (!*(*(&v303 + 1) + v216))
                  {
                    if ((theSet[1] & 4) == 0)
                    {
                      break;
                    }

                    goto LABEL_474;
                  }

                  LOBYTE(v214) = (theSet[1] & 4) == 0;
                  if (v217 != 255)
                  {
                    if ((((*(*(&v303 + 1) + 32 * v217 + (v205 >> 3) + 224) >> (v205 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
                    {
                      break;
                    }

                    goto LABEL_474;
                  }

LABEL_473:
                  if ((v214 & 1) == 0)
                  {
                    break;
                  }

                  goto LABEL_474;
                }

                if ((((*(*(&v303 + 1) + (v205 >> 3)) >> (v205 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
                {
                  break;
                }
              }

              else if (((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)) & 1) == 0)
              {
                break;
              }
            }

LABEL_474:
            if (v205 < 0x10000)
            {
              v218 = 1;
            }

            else
            {
              v218 = 2;
            }

            v59 += v218;
          }

          if (v60 < v194)
          {
            while (2)
            {
              if (v60 < 0 || (v219 = v316, v316 <= v60))
              {
                v220 = 0;
              }

              else if (*(&v314 + 1))
              {
                v220 = *(*(&v314 + 1) + 2 * *(&v315 + 1) + 2 * v60);
              }

              else if (v315)
              {
                v220 = *(v315 + *(&v315 + 1) + v60);
              }

              else
              {
                if (v317 <= v60 || (v225 = *(&v316 + 1), *(&v316 + 1) > v60))
                {
                  v226 = v60 - 4;
                  if (v60 < 4)
                  {
                    v226 = 0;
                  }

                  if (v226 + 64 < v316)
                  {
                    v219 = v226 + 64;
                  }

                  *(&v316 + 1) = v226;
                  v317 = v219;
                  v341.length = v219 - v226;
                  v341.location = *(&v315 + 1) + v226;
                  CFStringGetCharacters(v314, v341, v306);
                  v51 = v202;
                  v49 = v289;
                  v48 = v201;
                  v225 = *(&v316 + 1);
                }

                v220 = v306[v60 - v225];
              }

              v221 = v220;
              if (((v220 < 0x80u) & ~v49) != 0)
              {
                break;
              }

              if (v220 >> 10 == 54 && v60 >= -1)
              {
                v222 = v60 + 1;
                v223 = v316;
                if (v316 <= v60 + 1)
                {
                  v194 = v278;
                }

                else
                {
                  if (*(&v314 + 1))
                  {
                    v224 = *(*(&v314 + 1) + 2 * *(&v315 + 1) + 2 * v222);
                  }

                  else if (v315)
                  {
                    v224 = *(v315 + *(&v315 + 1) + v222);
                  }

                  else
                  {
                    if (v317 <= v222 || (v227 = *(&v316 + 1), *(&v316 + 1) > v222))
                    {
                      v228 = v60 - 3;
                      if (v222 < 4)
                      {
                        v228 = 0;
                      }

                      if (v228 + 64 < v316)
                      {
                        v223 = v228 + 64;
                      }

                      *(&v316 + 1) = v228;
                      v317 = v223;
                      v342.length = v223 - v228;
                      v342.location = *(&v315 + 1) + v228;
                      CFStringGetCharacters(v314, v342, v306);
                      v51 = v202;
                      v49 = v289;
                      v48 = v201;
                      v227 = *(&v316 + 1);
                    }

                    v224 = v306[v222 - v227];
                  }

                  v194 = v278;
                  if (v224 >> 10 == 55)
                  {
                    v221 = (v221 << 10) + v224 - 56613888;
                  }
                }
              }

              if (v282)
              {
                v229 = BitmapPtrForPlane;
                if (v221 >= 0x10000)
                {
                  v229 = CFUniCharGetBitmapPtrForPlane(0x6Eu, HIWORD(v221));
                  v51 = v202;
                  v49 = v289;
                  v48 = v201;
                }

                if (v229 && ((*(v229 + (v221 >> 3)) >> (v221 & 7)) & 1) != 0)
                {
                  goto LABEL_538;
                }
              }

              if (!v49)
              {
                break;
              }

              v230 = (theSet[1] & 4) >> 2;
              if (HIDWORD(theSet[1]) > v221 || v303 <= v221)
              {
LABEL_537:
                if ((v230 & 1) == 0)
                {
                  break;
                }
              }

              else if (HIWORD(v221) || (theSet[1] & 2) != 0)
              {
                v231 = CFCharacterSetIsLongCharacterMember(theSet[0], v221);
                v51 = v202;
                v49 = v289;
                v48 = v201;
                if (!v231)
                {
                  break;
                }
              }

              else if (*(&v303 + 1))
              {
                if ((theSet[1] & 1) == 0)
                {
                  if ((((*(*(&v303 + 1) + (v221 >> 3)) >> (v221 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
                  {
                    break;
                  }

                  goto LABEL_538;
                }

                v232 = v221 >> 8;
                v233 = *(*(&v303 + 1) + v232);
                if (*(*(&v303 + 1) + v232))
                {
                  LOBYTE(v230) = (theSet[1] & 4) == 0;
                  if (v233 == 255)
                  {
                    goto LABEL_537;
                  }

                  if ((((*(*(&v303 + 1) + 32 * v233 + (v221 >> 3) + 224) >> (v221 & 7)) & 1) == 0) == ((theSet[1] & 4) == 0))
                  {
                    break;
                  }
                }

                else if ((theSet[1] & 4) == 0)
                {
                  break;
                }
              }

              else if (((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)) & 1) == 0)
              {
                break;
              }

LABEL_538:
              if (v221 < 0x10000)
              {
                v234 = 1;
              }

              else
              {
                v234 = 2;
              }

              v60 += v234;
              if (v60 >= v194)
              {
                break;
              }

              continue;
            }
          }

          v56 = *v293;
        }

        if (locale && (v266 & 1) == 0 && v48 && v59 == length && v60 == v194)
        {
          v48 = _CFCompareStringsWithLocale(buffer, v56, length - v56, v306, v51, v194 - v51, v265, locale);
        }

        v235 = v274 ^ 1;
        if (!locale)
        {
          v235 = 1;
        }

        if ((v235 & 1) == 0)
        {
          v236 = v48;
          CFRelease(locale);
          v48 = v236;
        }

        if (v60 < v194)
        {
          v237 = -1;
        }

        else
        {
          v237 = v48;
        }

        if (v59 < length)
        {
          v74 = kCFCompareGreaterThan;
        }

        else
        {
          v74 = v237;
        }

        goto LABEL_585;
      }
    }
  }

  v23 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v23 = __CFStringComputeEightBitStringEncoding();
  }

  v24 = _CFStringGetCStringPtrInternal(theString, v23, 0, 1);
  v25 = _CFStringGetCStringPtrInternal(theString2, v23, 0, 1);
  v26 = v25;
  if (!v24 || !v25)
  {
    v20 = kCFCompareEqualTo;
    v32 = 1;
    v19 = v300;
    if ((v281 & 1) == 0 && !v24)
    {
      v22 = 0;
      if (v25)
      {
        goto LABEL_564;
      }

      v24 = CFStringGetCharactersPtr(theString);
      v33 = CFStringGetCharactersPtr(theString2);
      v26 = v33;
      v20 = kCFCompareEqualTo;
      v32 = 2;
      if (!v24)
      {
        v22 = 0;
        v19 = v300;
        goto LABEL_28;
      }

      v19 = v300;
      if (v33)
      {
        if (length >= v13)
        {
          v34 = v13;
        }

        else
        {
          v34 = length;
        }

        if (v34 < 1)
        {
          goto LABEL_46;
        }

        v35 = v24 + 2 * location;
        v36 = v35 + 2 * v34;
        v37 = v35 + 2;
        do
        {
          v38 = *v26++;
          v39 = *(v37 - 2);
          v40 = v39 - v38;
          v41 = v39 != v38 || v37 >= v36;
          v37 += 2;
        }

        while (!v41);
        if (!v40)
        {
LABEL_46:
          v40 = length - v13;
        }

        v42 = (v40 >> 63) | 1;
        v43 = v40 == 0;
        goto LABEL_582;
      }
    }

    v22 = 0;
LABEL_564:
    if (v24)
    {
      goto LABEL_565;
    }

    goto LABEL_28;
  }

  v19 = v300 & 0xFFFFFFFFFFFFFFAFLL;
  if ((v300 & 0x200) == 0 && v23 == 1536)
  {
    if (v300)
    {
      if (length >= v13)
      {
        v27 = v13;
      }

      else
      {
        v27 = length;
      }

      if (v27)
      {
        v28 = (v24 + location);
        while (1)
        {
          v29 = __ASCII_LOWERCASE_TABLE[*v28] - __ASCII_LOWERCASE_TABLE[*v26];
          if (v29)
          {
            break;
          }

          v26 = (v26 + 1);
          ++v28;
          if (!--v27)
          {
            goto LABEL_578;
          }
        }
      }

      else
      {
LABEL_578:
        v29 = length - v13;
      }

      v43 = v29 == 0;
      v241 = v29 < 0;
      goto LABEL_580;
    }

    goto LABEL_411;
  }

  if ((v300 & 0x81) == 0)
  {
LABEL_411:
    v20 = kCFCompareEqualTo;
    v22 = 0;
    goto LABEL_412;
  }

  if (length >= v13)
  {
    v195 = v13;
  }

  else
  {
    v195 = length;
  }

  v24 += location;
  if (v195 < 1)
  {
    v20 = kCFCompareEqualTo;
    v22 = 0;
    goto LABEL_587;
  }

  v22 = 0;
  v20 = kCFCompareEqualTo;
  while (1)
  {
    v196 = *(v24 + v22);
    v197 = *(v25 + v22);
    if (v196 != v197)
    {
      break;
    }

LABEL_409:
    if (v195 == ++v22)
    {
      goto LABEL_588;
    }
  }

  if (((v197 | v196) & 0x80) == 0)
  {
    if (v196 < v197)
    {
      v198 = -1;
    }

    else
    {
      v198 = 1;
    }

    if (((v20 == kCFCompareEqualTo) & (v300 >> 9)) != 0)
    {
      v20 = v198;
    }

    if (v300)
    {
      if (v196 - 65 < 0x1A)
      {
        v196 |= 0x20u;
      }

      if (v197 - 65 < 0x1A)
      {
        v197 |= 0x20u;
      }
    }

    v199 = v196 >= v197;
    if (v196 != v197)
    {
      goto LABEL_612;
    }

    goto LABEL_409;
  }

  v24 = 0;
LABEL_587:
  if (v22 != v195)
  {
LABEL_412:
    v32 = 1;
    if (!v24)
    {
      goto LABEL_28;
    }

LABEL_565:
    if (v26)
    {
      if (length >= v13)
      {
        v238 = v13;
      }

      else
      {
        v238 = length;
      }

      v239 = memcmp((v24 + v32 * location), v26, v32 * v238);
      v240 = length - v13;
      if (v239)
      {
        v240 = v239;
      }

      v43 = v240 == 0;
      v241 = v240 < 0;
LABEL_580:
      v42 = -1;
      if (!v241)
      {
        v42 = 1;
      }

LABEL_582:
      if (v43)
      {
        v74 = kCFCompareEqualTo;
      }

      else
      {
        v74 = v42;
      }

      goto LABEL_585;
    }

    goto LABEL_28;
  }

LABEL_588:
  v244 = -1;
  if (length - v13 >= 0)
  {
    v244 = 1;
  }

  if (length == v13)
  {
    v74 = v20;
  }

  else
  {
    v74 = v244;
  }

LABEL_585:
  v242 = *MEMORY[0x1E69E9840];
  return v74;
}

uint64_t _CFAutoreleasePoolAddObject(uint64_t a1, uint64_t a2)
{
  if (__CFOASafe == 1)
  {
    __CFRecordAllocationEvent();
  }

  return MEMORY[0x1EEE66820](a2);
}

CFErrorRef CFErrorCreate(CFAllocatorRef allocator, CFErrorDomain domain, CFIndex code, CFDictionaryRef userInfo)
{
  Instance = _CFRuntimeCreateInstance(allocator, 0x1BuLL, 24, 0, v4, v5, v6, v7);
  if (Instance)
  {
    Copy = CFStringCreateCopy(allocator, domain);
    Instance[2] = code;
    Instance[3] = Copy;
    if (userInfo)
    {
      EmptyDictionary = CFDictionaryCreateCopy(allocator, userInfo);
    }

    else
    {
      EmptyDictionary = _CFErrorCreateEmptyDictionary(allocator);
    }

    Instance[4] = EmptyDictionary;
    _CFErrorSetCallStackReturnAddresses(Instance, 0);
  }

  return Instance;
}

void __CFErrorDeallocate(CFTypeRef *a1)
{
  CFRelease(a1[3]);
  CFRelease(a1[4]);

  objc_removeAssociatedObjects(a1);
}

void __CFRunLoopAddItemToCommonModes(const __CFString *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = CFGetTypeID(v3);
  switch(v5)
  {
    case '-':

      CFRunLoopAddObserver(v4, v3, a1);
      break;
    case '/':

      CFRunLoopAddTimer(v4, v3, a1);
      break;
    case '.':

      CFRunLoopAddSource(v4, v3, a1);
      break;
  }
}

uint64_t __CFBinaryPlistGetOffsetForValueFromDictionary3(uint64_t a1, int a2, unint64_t a3, uint64_t a4, const __CFString *cf, unint64_t *a6, unint64_t *a7)
{
  v88 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    goto LABEL_4;
  }

  v14 = CFGetTypeID(cf);
  if (v14 < 0x14 && ((0xE0001u >> v14) & 1) != 0)
  {
    goto LABEL_4;
  }

  v15 = 0;
  if (a3 >= 8)
  {
    v18 = *(a4 + 24) - 1;
    if (v18 >= a3)
    {
      v15 = 0;
      v19 = (a1 + a3);
      if (a1 + a3 != -1)
      {
        v20 = *v19;
        if ((*v19 & 0xF0) == 0xD0)
        {
          v21 = (v19 + 1);
          v22 = v20 & 0xF;
          if ((v20 & 0xF) != 0xF)
          {
LABEL_30:
            if (!v22)
            {
              v84 = 0;
              v30 = 0;
              goto LABEL_34;
            }

            if (is_mul_ok(2 * v22, *(a4 + 7)))
            {
              v30 = 2 * v22 * *(a4 + 7);
              v84 = v22;
LABEL_34:
              v15 = 0;
              if (__CFADD__(v30, v21) || a1 + v18 < v21 + v30 - 1)
              {
                goto LABEL_5;
              }

              if (v14 == 7)
              {
                Length = CFStringGetLength(cf);
                v32 = *(a4 + 7);
                v80 = (a4 + 7);
                if (Length != -1)
                {
                  v33 = Length;
                  CStringPtr = CFStringGetCStringPtr(cf, 0);
                  v35 = v33;
                  v36 = CStringPtr;
                  if (v33 <= 15 && !CStringPtr)
                  {
                    if (CFStringGetCString(cf, buffer, 16, 0))
                    {
                      v37 = strnlen(buffer, 0x10uLL);
                      v35 = v33;
                      if (v37 == v33)
                      {
                        v36 = buffer;
                      }

                      else
                      {
                        v36 = 0;
                      }

                      if (!v22)
                      {
LABEL_127:
                        v39 = 0;
LABEL_128:
                        v69 = 0;
LABEL_129:
                        v15 = v39 & v69;
                        goto LABEL_5;
                      }
                    }

                    else
                    {
                      v36 = 0;
                      v35 = v33;
                      if (!v22)
                      {
                        goto LABEL_127;
                      }
                    }

                    goto LABEL_50;
                  }

LABEL_49:
                  if (!v22)
                  {
                    goto LABEL_127;
                  }

LABEL_50:
                  v38 = 0;
                  v75 = v22 * v32;
                  v83 = a1 + 8;
                  v77 = a1 + *(a4 + 24);
                  __n = v35;
                  v76 = ~v35;
                  v39 = 1;
                  __s2 = v36;
                  v79 = v22;
                  while (1)
                  {
                    if (v83 > v21)
                    {
                      goto LABEL_128;
                    }

                    v40 = a1 + *(a4 + 24);
                    v41 = *(a4 + 7);
                    if (v40 - v41 < v21)
                    {
                      goto LABEL_128;
                    }

                    if (*(a4 + 7) <= 1u)
                    {
                      v42 = *(a4 + 7);
                      if (!*(a4 + 7))
                      {
                        goto LABEL_65;
                      }

                      if (v41 == 1)
                      {
                        v42 = *v21;
                        goto LABEL_65;
                      }
                    }

                    else
                    {
                      switch(v41)
                      {
                        case 2:
                          v42 = __rev16(*v21);
                          goto LABEL_65;
                        case 4:
                          v42 = bswap32(*v21);
                          goto LABEL_65;
                        case 8:
                          v42 = bswap64(*v21);
                          goto LABEL_65;
                      }
                    }

                    v42 = 0;
                    v43 = *(a4 + 7);
                    v44 = v21;
                    do
                    {
                      v45 = *v44;
                      v44 = (v44 + 1);
                      v42 = v45 | (v42 << 8);
                      --v43;
                    }

                    while (v43);
LABEL_65:
                    if (*(a4 + 8) <= v42)
                    {
                      goto LABEL_128;
                    }

                    v82 = v39;
                    v46 = *(a4 + 6);
                    v47 = (v40 + v42 * v46);
                    if (*(a4 + 6) <= 1u)
                    {
                      if (!*(a4 + 6))
                      {
                        goto LABEL_78;
                      }

                      if (v46 == 1)
                      {
                        v46 = *v47;
                        goto LABEL_78;
                      }
                    }

                    else
                    {
                      switch(v46)
                      {
                        case 2:
                          v46 = __rev16(*v47);
                          goto LABEL_78;
                        case 4:
                          v46 = bswap32(*v47);
                          goto LABEL_78;
                        case 8:
                          v46 = bswap64(*v47);
                          goto LABEL_78;
                      }
                    }

                    v48 = *(a4 + 6);
                    v46 = 0;
                    do
                    {
                      v49 = *v47;
                      v47 = (v47 + 1);
                      v46 = v49 | (v46 << 8);
                      --v48;
                    }

                    while (v48);
LABEL_78:
                    if (v36)
                    {
                      v50 = *(a1 + v46);
                      if ((v50 & 0xF0) == 0x50)
                      {
                        if (__CFADD__(v46, a1) || v46 + a1 == -1)
                        {
                          goto LABEL_124;
                        }

                        v51 = v50 & 0xF;
                        v52 = (v46 + a1 + 1);
                        v53 = __n;
                        if (__n < 15 || v51 != 15)
                        {
                          goto LABEL_111;
                        }

                        if (v77 - 1 < v52)
                        {
                          goto LABEL_124;
                        }

                        v54 = (v46 + a1 + 2);
                        v55 = *v52;
                        if ((*v52 & 0xF0) != 0x10)
                        {
                          goto LABEL_124;
                        }

                        v56 = v55 & 0xF;
                        v57 = 1 << (v55 & 0xF);
                        if (__CFADD__(v57, v54) || v77 < &v54[v57])
                        {
                          goto LABEL_124;
                        }

                        if (v57 > 3u)
                        {
                          if (v57 != 4)
                          {
                            if (v57 != 8)
                            {
                              goto LABEL_102;
                            }

                            v51 = bswap64(*(v46 + a1 + 2));
                            goto LABEL_109;
                          }

                          v51 = bswap32(*(v46 + a1 + 2));
                        }

                        else
                        {
                          if (v57 != 1)
                          {
                            if (v57 == 2)
                            {
                              v51 = __rev16(*(v46 + a1 + 2));
                              goto LABEL_106;
                            }

LABEL_102:
                            if (v56 > 7)
                            {
                              v51 = 0;
                              goto LABEL_106;
                            }

                            v51 = 0;
                            v60 = v57;
                            v61 = (v46 + a1 + 2);
                            do
                            {
                              v62 = *v61++;
                              v51 = v62 | (v51 << 8);
                              --v60;
                            }

                            while (v60);
LABEL_109:
                            if ((v51 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_124;
                            }

                            v52 = &v54[v57];
                            v53 = __n;
LABEL_111:
                            if (v51 == v53)
                            {
                              if (v76 < v52 || v77 < &v52[v53])
                              {
                                goto LABEL_124;
                              }

                              v63 = v38;
                              v64 = memcmp(v52, __s2, v53);
                              v36 = __s2;
                              v38 = v63;
                              v22 = v79;
                              if (!v64)
                              {
LABEL_115:
                                v65 = (v21 + v75);
                                if (v83 <= v21 + v75)
                                {
                                  v66 = a1 + *(a4 + 24);
                                  v67 = *(a4 + 7);
                                  if (v66 - v67 >= v65)
                                  {
                                    if (*(a4 + 7) <= 1u)
                                    {
                                      v68 = *(a4 + 7);
                                      if (*(a4 + 7))
                                      {
                                        if (v67 != 1)
                                        {
                                          goto LABEL_135;
                                        }

                                        v68 = *v65;
                                      }
                                    }

                                    else
                                    {
                                      switch(v67)
                                      {
                                        case 2:
                                          v68 = __rev16(*v65);
                                          break;
                                        case 4:
                                          v68 = bswap32(*v65);
                                          break;
                                        case 8:
                                          v68 = bswap64(*v65);
                                          break;
                                        default:
LABEL_135:
                                          v68 = 0;
                                          do
                                          {
                                            v70 = *v65;
                                            v65 = (v65 + 1);
                                            v68 = v70 | (v68 << 8);
                                            --v67;
                                          }

                                          while (v67);
                                          break;
                                      }
                                    }

                                    if (*(a4 + 8) > v68)
                                    {
                                      if (a7)
                                      {
                                        v71 = *(a4 + 6);
                                        v72 = (v66 + v68 * v71);
                                        if (*(a4 + 6) <= 1u)
                                        {
                                          if (*(a4 + 6))
                                          {
                                            if (v71 != 1)
                                            {
                                              goto LABEL_149;
                                            }

                                            v71 = *v72;
                                          }
                                        }

                                        else
                                        {
                                          switch(v71)
                                          {
                                            case 2:
                                              v71 = __rev16(*v72);
                                              break;
                                            case 4:
                                              v71 = bswap32(*v72);
                                              break;
                                            case 8:
                                              v71 = bswap64(*v72);
                                              break;
                                            default:
LABEL_149:
                                              v73 = *(a4 + 6);
                                              v71 = 0;
                                              do
                                              {
                                                v74 = *v72;
                                                v72 = (v72 + 1);
                                                v71 = v74 | (v71 << 8);
                                                --v73;
                                              }

                                              while (v73);
                                              break;
                                          }
                                        }

                                        *a7 = v71;
                                      }

                                      if (a6)
                                      {
                                        *a6 = v46;
                                      }

                                      v69 = 1;
LABEL_125:
                                      v39 = v82;
                                      goto LABEL_129;
                                    }
                                  }
                                }

LABEL_124:
                                v69 = 0;
                                goto LABEL_125;
                              }
                            }

                            goto LABEL_97;
                          }

                          v51 = *v54;
                        }

LABEL_106:
                        v52 = &v54[v57];
                        goto LABEL_111;
                      }
                    }

                    v58 = v38;
                    v85 = 0;
                    v86 = 0;
                    if (!__CFBinaryPlistCreateObjectFiltered(a1, a2, v46, a4, &__kCFAllocatorSystemDefault, 0xFFFFFFFF80000000, 0, 0, 0, 0, 0, &v86, &v85) || v85 <= 0x13 && ((1 << v85) & 0xE0001) != 0)
                    {
                      if (v86)
                      {
                        CFRelease(v86);
                      }

                      goto LABEL_124;
                    }

                    v59 = CFEqual(cf, v86);
                    CFRelease(v86);
                    v36 = __s2;
                    v38 = v58;
                    v22 = v79;
                    if (v59)
                    {
                      goto LABEL_115;
                    }

                    v41 = *v80;
LABEL_97:
                    v21 = (v21 + v41);
                    v39 = ++v38 < v22;
                    if (v38 == v84)
                    {
                      goto LABEL_128;
                    }
                  }
                }

                v36 = 0;
              }

              else
              {
                v36 = 0;
                v32 = *(a4 + 7);
                v80 = (a4 + 7);
              }

              v35 = -1;
              goto LABEL_49;
            }

LABEL_4:
            v15 = 0;
            goto LABEL_5;
          }

          if (a1 + v18 < v21)
          {
            goto LABEL_4;
          }

          v23 = v19 + 2;
          v24 = *v21;
          if ((*v21 & 0xF0) != 0x10)
          {
            goto LABEL_4;
          }

          v15 = 0;
          v25 = v24 & 0xF;
          v26 = 1 << (v24 & 0xF);
          if (__CFADD__(v26, v23) || v21 + v26 > a1 + v18)
          {
            goto LABEL_5;
          }

          if (v26 > 3u)
          {
            if (v26 == 4)
            {
              v22 = bswap32(*(v21 + 1));
              goto LABEL_29;
            }

            if (v26 == 8)
            {
              v22 = bswap64(*(v21 + 1));
              goto LABEL_28;
            }
          }

          else
          {
            if (v26 == 1)
            {
              v22 = *v23;
              goto LABEL_29;
            }

            if (v26 == 2)
            {
              v22 = __rev16(*(v21 + 1));
LABEL_29:
              v21 = &v23[v26];
              goto LABEL_30;
            }
          }

          if (v25 > 7)
          {
            v22 = 0;
            goto LABEL_29;
          }

          v22 = 0;
          v27 = v26;
          v28 = v21 + 1;
          do
          {
            v29 = *v28++;
            v22 = v29 | (v22 << 8);
            --v27;
          }

          while (v27);
LABEL_28:
          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_4;
          }

          goto LABEL_29;
        }
      }
    }
  }

LABEL_5:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

CFArrayRef CFArrayCreateCopy(CFAllocatorRef allocator, CFArrayRef theArray)
{
  if (CF_IS_OBJC(0x13uLL, theArray))
  {
    goto LABEL_22;
  }

  if (__CFArrayGetCallBacks(theArray) != &kCFTypeArrayCallBacks || &__kCFAllocatorSystemDefault != allocator && (allocator || &__kCFAllocatorSystemDefault != CFAllocatorGetDefault()))
  {
    goto LABEL_7;
  }

  if (__FoundationPresent_static_init != -1)
  {
    CFArrayCreateCopy_cold_1();
  }

  if (__FoundationPresent_present)
  {
LABEL_22:
    if (_CFArrayIsMutable(theArray))
    {
      v4 = [NSArray alloc];

      return [(NSArray *)v4 initWithArray:theArray copyItems:0];
    }

    else
    {

      return [(__CFArray *)theArray copyWithZone:0];
    }
  }

  else
  {
LABEL_7:

    return __CFArrayCreateCopy0(allocator, theArray);
  }
}

__CFBundle *_CFBundleGetBundleWithIdentifier(__CFString *a1, uint64_t a2)
{
  if (a1)
  {
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      v5 = MainBundle;
      InfoDictionary = CFBundleGetInfoDictionary(MainBundle);
      if (InfoDictionary)
      {
        Value = CFDictionaryGetValue(InfoDictionary, @"CFBundleIdentifier");
        if (Value)
        {
          v8 = Value;
          v9 = CFGetTypeID(Value);
          if (v9 == CFStringGetTypeID())
          {
            if (CFEqual(v8, a1))
            {
              return v5;
            }
          }
        }
      }
    }

    os_unfair_lock_lock(&CFBundleGlobalDataLock);
    v5 = _CFBundleGetFromTablesLocked(a1);
    os_unfair_lock_unlock(&CFBundleGlobalDataLock);
    if (a2 && !v5)
    {
      v10 = _CFBundleCopyLoadedImagePathForPointer();
      if (v10)
      {
        v11 = v10;
        _CFBundleEnsureBundleExistsForImagePath(v10, 0);
        CFRelease(v11);
      }

      os_unfair_lock_lock(&CFBundleGlobalDataLock);
      v5 = _CFBundleGetFromTablesLocked(a1);
      os_unfair_lock_unlock(&CFBundleGlobalDataLock);
    }

    if (v5)
    {
      return v5;
    }

    _CFBundleEnsureBundlesUpToDateWithHint(a1);
    os_unfair_lock_lock(&CFBundleGlobalDataLock);
    v5 = _CFBundleGetFromTablesLocked(a1);
    os_unfair_lock_unlock(&CFBundleGlobalDataLock);
    if (v5)
    {
      return v5;
    }
  }

  _CFBundleEnsureAllBundlesUpToDate();
  os_unfair_lock_lock(&CFBundleGlobalDataLock);
  v13 = _CFBundleGetFromTablesLocked(a1);
  os_unfair_lock_unlock(&CFBundleGlobalDataLock);
  return v13;
}

__CFBundle *_CFBundleGetFromTablesLocked(void *key)
{
  ValueAtIndex = 0;
  if (!key || !_bundlesByIdentifier)
  {
    return ValueAtIndex;
  }

  Value = CFDictionaryGetValue(_bundlesByIdentifier, key);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v6++);
    if (CFBundleIsExecutableLoaded(ValueAtIndex))
    {
      v7 = ValueAtIndex == 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = v7;
  }

  while (v8 == 1 && v6 < v5);
  if (!v8)
  {
    return ValueAtIndex;
  }

  return CFArrayGetValueAtIndex(v3, 0);
}

Boolean CFBundleIsExecutableLoaded(CFBundleRef bundle)
{
  __CFCheckCFInfoPACSignature(bundle);
  v2 = _CFGetNonObjCTypeID(bundle);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  os_unfair_lock_lock_with_options();
  v3 = *(bundle + 52);
  os_unfair_lock_unlock(bundle + 24);
  return v3;
}

uint64_t __CFBinaryPlistParseUnicode16String(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (a3 == -1)
  {
    return 0;
  }

  v5 = *a3;
  v4 = (a3 + 1);
  v6 = v5 & 0xF;
  if (v6 != 15)
  {
    goto LABEL_22;
  }

  if (a1 + a2 < v4)
  {
    return 0;
  }

  v7 = (v4 + 1);
  if ((*v4 & 0xF0) != 0x10)
  {
    return 0;
  }

  v8 = *v4 & 0xF;
  v9 = 1 << v8;
  if (__CFADD__(1 << v8, v7) || v9 + v4 > a1 + a2)
  {
    return 0;
  }

  v10 = (1 << v8);
  if (v10 > 3)
  {
    if (v10 == 4)
    {
      v6 = bswap32(*(v4 + 1));
      goto LABEL_21;
    }

    if (v10 == 8)
    {
      v6 = bswap64(*(v4 + 1));
LABEL_20:
      if ((v6 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      return 0;
    }

LABEL_14:
    if (v8 > 7)
    {
      v6 = 0;
      goto LABEL_21;
    }

    v6 = 0;
    v11 = v9;
    v12 = (v4 + 1);
    do
    {
      v13 = *v12++;
      v6 = v13 | (v6 << 8);
      --v11;
    }

    while (v11);
    goto LABEL_20;
  }

  if (v10 == 1)
  {
    v6 = *v7;
    goto LABEL_21;
  }

  if (v10 != 2)
  {
    goto LABEL_14;
  }

  v6 = __rev16(*(v4 + 1));
LABEL_21:
  v4 = &v7[v9];
LABEL_22:
  v14 = v4 + v6 - 1;
  v15 = v14 > ~v6;
  v16 = v14 + v6;
  if (v15 || ~v6 < v4 || a1 + a2 < v16)
  {
    return 0;
  }

  return (*(a4 + 16))(a4, v4, v6);
}

CFNotificationCenterRef CFNotificationCenterGetLocalCenter(void)
{
  if (CFNotificationCenterGetLocalCenter_static_init != -1)
  {
    CFNotificationCenterGetLocalCenter_cold_1();
  }

  return __taskCenter;
}

CFArrayRef CFBundleCopyPreferredLocalizationsFromArray(CFArrayRef locArray)
{
  v2 = _CFBundleCopyUserLanguages();
  if (!v2)
  {
    v2 = CFArrayCreate(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeArrayCallBacks);
  }

  v3 = _CFBundleCopyLocalizationsForPreferences(locArray, v2, 1);
  CFRelease(v2);
  return v3;
}

const void *_CFBundleCopyBundleLocalizations(uint64_t a1, uint64_t a2)
{
  __CFCheckCFInfoPACSignature(a1);
  v4 = _CFGetNonObjCTypeID(a1);
  if (v4 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v4);
  }

  os_unfair_lock_lock_with_options();
  if (!*(a1 + 128))
  {
    os_unfair_lock_unlock((a1 + 112));
    if (CFBundleGetMainBundle() != a1)
    {
      goto LABEL_8;
    }

    if (CFBundleFollowParentLocalization_once != -1)
    {
      _CFBundleCopyBundleLocalizations_cold_1();
    }

    if (CFBundleFollowParentLocalization_followParent != 1 || (v5 = _CFBundleCopyXPCBootstrapMainBundleLanguages()) == 0)
    {
LABEL_8:
      v5 = _copyBundleLocalizationsFromResources(a1, a2);
    }

    os_unfair_lock_lock_with_options();
    if (!*(a1 + 128))
    {
      *(a1 + 120) = CFRetain(v5);
      *(a1 + 128) = 1;
      goto LABEL_12;
    }

    CFRelease(v5);
  }

  v5 = CFRetain(*(a1 + 120));
LABEL_12:
  os_unfair_lock_unlock((a1 + 112));
  return v5;
}

CFTypeRef _CFBundleCopyUserLanguages()
{
  os_unfair_lock_lock(&_CFBundleUserLanguagesLock);
  v0 = _CFBundleUserLanguages;
  if (_CFBundleUserLanguages)
  {
    goto LABEL_15;
  }

  v1 = CFPreferencesCopyAppValue(@"AppleLanguages", @"kCFPreferencesCurrentApplication");
  if (!v1)
  {
    v1 = CFPreferencesCopyAppValue(@"NSLanguages", @"kCFPreferencesCurrentApplication");
  }

  v2 = _CFBundleUserLanguages;
  if (_CFBundleUserLanguages)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (!v3)
  {
    v2 = CFRetain(v1);
    _CFBundleUserLanguages = v2;
  }

  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFArrayGetTypeID())
    {
      CFRelease(_CFBundleUserLanguages);
      _CFBundleUserLanguages = 0;
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }

  v0 = _CFBundleUserLanguages;
  if (_CFBundleUserLanguages)
  {
LABEL_15:
    v5 = CFRetain(v0);
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&_CFBundleUserLanguagesLock);
  return v5;
}

__CFArray *_CFBundleCopyLocalizationsForPreferences(const __CFArray *a1, const __CFArray *a2, int a3)
{
  if (!a1 || CFArrayGetCount(a1) < 1)
  {
    goto LABEL_10;
  }

  Mutable = _CFBundleCopyPreferredLanguagesInList(a1, 0, a2, a3, 0, 0);
  if (CFArrayGetCount(Mutable) || CFArrayGetCount(a1) < 1)
  {
    if (CFArrayGetCount(Mutable))
    {
      goto LABEL_9;
    }

    ValueAtIndex = @"en";
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  }

  CFArrayAppendValue(Mutable, ValueAtIndex);
LABEL_9:
  if (!Mutable)
  {
LABEL_10:
    Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, @"en");
  }

  return Mutable;
}

__CFArray *_CFBundleCopyPreferredLanguagesInList(const __CFArray *a1, void *a2, CFArrayRef theArray, int a4, unint64_t a5, __CFBundle *a6)
{
  v49 = *MEMORY[0x1E69E9840];
  values = a2;
  if (!a4)
  {
    goto LABEL_5;
  }

  if (CFBundleAllowMixedLocalizations_once != -1)
  {
    _CFBundleCopyPreferredLanguagesInList_cold_1();
  }

  if (CFBundleAllowMixedLocalizations_allowMixed)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  if (CFBundleFollowParentLocalization_once != -1)
  {
    _CFBundleCopyPreferredLanguagesInList_cold_2();
  }

  if (CFBundleFollowParentLocalization_followParent == 1)
  {
    v11 = _CFBundleCopyXPCBootstrapMainBundleLanguages();
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (CFArrayGetCount(v11) >= 1)
    {
      MutableArrayOfFallbackLanguages = _CFBundleCreateMutableArrayOfFallbackLanguages(a1, v11);
      if (MutableArrayOfFallbackLanguages)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_6;
  }

  MainBundle = CFBundleGetMainBundle();
  v11 = MainBundle;
  if (!MainBundle)
  {
    goto LABEL_6;
  }

  v17 = CFBundleCopyBundleURL(MainBundle);
  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = v17;
  if (a5 && CFEqual(a5, v17))
  {
    v11 = 0;
  }

  else
  {
    v11 = _CFBundleCopyLanguageSearchListInBundle(v11);
  }

  CFRelease(v18);
  if (v11)
  {
    goto LABEL_28;
  }

LABEL_6:
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    v12 = _CFBundleCreateMutableArrayOfFallbackLanguages(a1, theArray);
    if (v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
  }

  if (a2)
  {
    v13 = CFArrayCreate(&__kCFAllocatorSystemDefault, &values, 1, &kCFTypeArrayCallBacks);
    v12 = _CFBundleCreateMutableArrayOfFallbackLanguages(a1, v13);
    CFRelease(v13);
  }

LABEL_13:
  if (!v12)
  {
    *buf = @"en_US";
    v14 = CFArrayCreate(&__kCFAllocatorSystemDefault, buf, 1, &kCFTypeArrayCallBacks);
    v12 = _CFBundleCreateMutableArrayOfFallbackLanguages(a1, v14);
    CFRelease(v14);
    if (!v12)
    {
      MutableArrayOfFallbackLanguages = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
LABEL_30:
      v12 = MutableArrayOfFallbackLanguages;
    }
  }

  v19 = _CFBundleResourceLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG) && a5 | a6)
  {
    v31 = values;
    v32 = a5;
    Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
    v21 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
    v22 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
    v23 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
    v24 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
    if (a6)
    {
      CFStringAppendFormat(Mutable, 0, @"%@", a6);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"%@", v32);
    }

    _onelineFormatArray(v21, a1);
    _onelineFormatArray(v22, theArray);
    _onelineFormatArray(v23, v11);
    _onelineFormatArray(v24, v12);
    if (CFBundleAllowMixedLocalizations_once != -1)
    {
      _CFBundleCopyPreferredLanguagesInList_cold_3();
    }

    v25 = CFBundleAllowMixedLocalizations_allowMixed != 0;
    if (a6)
    {
      InfoDictionary = CFBundleGetInfoDictionary(a6);
      v27 = "";
      if (InfoDictionary && CFDictionaryGetValue(InfoDictionary, @"_CFBundleUseAppleLocalizations") == &__kCFBooleanTrue)
      {
        v27 = "(use Apple Locs)";
      }
    }

    else
    {
      v27 = "";
    }

    v28 = _CFBundleResourceLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138479619;
      *&buf[4] = Mutable;
      v35 = 2114;
      v36 = v21;
      v37 = 2114;
      v38 = v31;
      v39 = 2114;
      v40 = v22;
      v41 = 2114;
      v42 = v23;
      v43 = 2050;
      v44 = v25;
      v45 = 2082;
      v46 = v27;
      v47 = 2114;
      v48 = v24;
      _os_log_debug_impl(&dword_1830E6000, v28, OS_LOG_TYPE_DEBUG, "Language lookup at %{private}@\n\tLocalizations : %{public}@\n\tDev language  : %{public}@\n\tUser prefs    : %{public}@\n\tMain bundle   : %{public}@\n\tAllow mixed   : %{public}lu %{public}s\n\tResult        : %{public}@\n", buf, 0x52u);
    }

    CFRelease(Mutable);
    CFRelease(v21);
    CFRelease(v22);
    CFRelease(v24);
    CFRelease(v23);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v12;
}

CFURLRef CFBundleCopyBundleURL(CFBundleRef bundle)
{
  __CFCheckCFInfoPACSignature(bundle);
  v2 = _CFGetNonObjCTypeID(bundle);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  result = *(bundle + 2);
  if (result)
  {
    CFRetain(result);
    return *(bundle + 2);
  }

  return result;
}

CFBundleRef CFBundleGetMainBundle(void)
{
  v35[129] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_mainBundleLock);
  if ((_initedMainBundle & 1) == 0)
  {
    _initedMainBundle = 1;
    v0 = _CFProcessPath();
    if (v0)
    {
      v1 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v0);
      v2 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v1, kCFURLPOSIXPathStyle, 0);
      if (!v2)
      {
        if (!v1)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      v3 = v2;
      v4 = _CFBundleCopyBundleURLForExecutableURL(v2);
      if (!v4)
      {
LABEL_59:
        if (v1)
        {
          CFRelease(v1);
        }

        v1 = v3;
LABEL_62:
        CFRelease(v1);
        goto LABEL_63;
      }

      v5 = v4;
      Main = _CFBundleCreateMain(&__kCFAllocatorSystemDefault, v4);
      _mainBundle = Main;
      if (!Main)
      {
LABEL_58:
        CFRelease(v5);
        goto LABEL_59;
      }

      *(Main + 52) = 1;
      if (!*(Main + 48))
      {
        v9 = _CFBundleGrokBinaryType(v3, v7, v8);
        Main = _mainBundle;
        *(_mainBundle + 48) = v9;
        if (v9 != 1 && v9 != 6)
        {
          *(Main + 64) = 1;
        }
      }

      if (!*(Main + 56))
      {
        *(Main + 56) = -5;
        v11 = _CFBundleLoadingLogger();
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
        Main = _mainBundle;
        if (v12)
        {
          CFBundleGetMainBundle_cold_1(_mainBundle, v11, v35);
          Main = v35[0];
        }
      }

      CFBundleGetInfoDictionary(Main);
      v13 = _mainBundle;
      if (*(_mainBundle + 24))
      {
        Count = CFDictionaryGetCount(*(_mainBundle + 24));
        v13 = _mainBundle;
        if (Count)
        {
          if (*(_mainBundle + 48) == 2)
          {
            v15 = _CFBundleCopyExecutableName(_mainBundle, 0, 0);
            v16 = v15;
            if (v1)
            {
              if (v15 && CFStringHasSuffix(v1, v15))
              {
                goto LABEL_43;
              }
            }

            InfoDictFromMainExecutable = _CFBundleCreateInfoDictFromMainExecutable();
            if (InfoDictFromMainExecutable)
            {
              v18 = InfoDictFromMainExecutable;
              if (CFDictionaryGetCount(InfoDictFromMainExecutable) < 1)
              {
                CFRelease(v18);
              }

              else
              {
                v19 = _mainBundle;
                v20 = *(_mainBundle + 24);
                if (v20)
                {
                  CFRelease(v20);
                  v19 = _mainBundle;
                }

                *(v19 + 24) = v18;
              }
            }

            if (v16)
            {
LABEL_43:
              CFRelease(v16);
            }
          }

LABEL_44:
          v24 = _mainBundle;
          if (!*(_mainBundle + 24))
          {
            Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v24 = _mainBundle;
            *(_mainBundle + 24) = Mutable;
          }

          if (v1 && !*(v24 + 104))
          {
            v26 = CFRetain(v1);
            v24 = _mainBundle;
            *(_mainBundle + 104) = v26;
          }

          Value = CFDictionaryGetValue(*(v24 + 24), @"CFBundleIdentifier");
          if (Value)
          {
            v28 = Value;
            bzero(v35, 0x402uLL);
            if (!CFStringGetCString(v28, v35, 1024, 0x8000100u))
            {
              LOBYTE(v35[0]) = 0;
            }

            __CFBundleMainID = strdup(v35);
          }

          v29 = CFDictionaryGetValue(*(_mainBundle + 24), @"CFBundleShortVersionString");
          if (v29)
          {
            v30 = v29;
            bzero(v35, 0x402uLL);
            if (!CFStringGetCString(v30, v35, 1024, 0x8000100u))
            {
              LOBYTE(v35[0]) = 0;
            }

            __CFBundleShortVersionString = strdup(v35);
          }

          os_unfair_lock_unlock(&_mainBundleLock);
          InfoDictionary = CFBundleGetInfoDictionary(_mainBundle);
          _CFBundleInitPlugIn(_mainBundle, InfoDictionary, 0);
          _CFPlugInHandleDynamicRegistration(_mainBundle);
          os_unfair_lock_lock(&_mainBundleLock);
          goto LABEL_58;
        }
      }

      if (*(v13 + 53))
      {
        if (*(v13 + 53) == 3)
        {
          *(v13 + 53) = 4;
        }

        goto LABEL_37;
      }

      v21 = _CFBundleCopyExecutableName(v13, 0, 0);
      v22 = v21;
      if (v1 && v21)
      {
        if (!CFStringHasSuffix(v1, v21))
        {
          *(_mainBundle + 53) = 4;
        }
      }

      else
      {
        v13 = _mainBundle;
        *(_mainBundle + 53) = 4;
        if (!v22)
        {
          goto LABEL_37;
        }
      }

      CFRelease(v22);
      v13 = _mainBundle;
LABEL_37:
      if ((*(v13 + 48) | 4) == 6)
      {
        v23 = *(v13 + 24);
        if (v23)
        {
          CFRelease(v23);
        }

        *(_mainBundle + 24) = _CFBundleCreateInfoDictFromMainExecutable();
      }

      goto LABEL_44;
    }
  }

LABEL_63:
  v32 = _mainBundle;
  os_unfair_lock_unlock(&_mainBundleLock);
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

__CFArray *_CFBundleCreateMutableArrayOfFallbackLanguages(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = v2;
  v21 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(v2);
  v7 = malloc_type_malloc(8 * Count, 0x10040436913F5uLL);
  v8 = ___CFBundleCreateMutableArrayOfFallbackLanguages_block_invoke(v7, v5, v7);
  v9 = CFArrayGetCount(v4);
  v10 = malloc_type_malloc(8 * v9, 0x10040436913F5uLL);
  v11 = ___CFBundleCreateMutableArrayOfFallbackLanguages_block_invoke(v10, v4, v10);
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  if (v8)
  {
    if (v11)
    {
      memset(v20, 0, 512);
      v13 = ualoc_localizationsToUse();
      if (v13 >= 1)
      {
        v14 = v13;
        v15 = v20;
        do
        {
          v16 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, *v15, 0x8000100u);
          if (v16)
          {
            v17 = v16;
            CFArrayAppendValue(Mutable, v16);
            CFRelease(v17);
          }

          ++v15;
          --v14;
        }

        while (v14);
      }
    }
  }

  if (v7)
  {
    free(v7);
  }

  if (v8)
  {
    free(v8);
  }

  if (v10)
  {
    free(v10);
  }

  if (v11)
  {
    free(v11);
  }

  if (!CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t _CFExtensionIsValidToAppend(const __CFString *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  theString = a1;
  v41 = 0;
  v42 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v39 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v43 = 0;
  v44 = 0;
  v40 = CStringPtr;
  if (!Length)
  {
    goto LABEL_61;
  }

  v5 = Length - 1;
  if (Length < 1)
  {
    goto LABEL_62;
  }

  v6 = 0;
  v7 = 1 - Length;
  v8 = Length + 63;
  v9 = Length - 1;
  memset(v37, 0, sizeof(v37));
  while (1)
  {
    if (v9 >= 0x3F)
    {
      v10 = 63;
    }

    else
    {
      v10 = v9;
    }

    if (v39)
    {
      v11 = &v39[v41];
LABEL_11:
      v12 = v11[v9];
      goto LABEL_14;
    }

    if (!v40)
    {
      v17 = v44 > v9 && v6 <= v9;
      if (!v17)
      {
        v18 = -v10;
        v19 = v10 + v7;
        v20 = v8 - v10;
        v21 = v9 + v18;
        v22 = v21 + 64;
        if (v21 + 64 >= v42)
        {
          v22 = v42;
        }

        v43 = v21;
        v44 = v22;
        if (v42 < v20)
        {
          v20 = v42;
        }

        v46.location = v21 + v41;
        v46.length = v20 + v19;
        CFStringGetCharacters(theString, v46, v37);
        v6 = v43;
      }

      v11 = v37 - v6;
      goto LABEL_11;
    }

    v12 = v40[v41 + v9];
LABEL_14:
    result = 0;
    if (v12 <= 0x2029u)
    {
      break;
    }

    v14 = v12 - 8234;
    v17 = v14 > 0x3F;
    v15 = (1 << v14) & 0xF00000000000001FLL;
    if (!v17 && v15 != 0)
    {
      goto LABEL_63;
    }

LABEL_27:
    ++v7;
    --v8;
    v17 = v9-- <= 0;
    if (v17)
    {
      goto LABEL_62;
    }
  }

  if (v12 > 0x61Bu)
  {
    if (v12 - 8206 < 2 || v12 == 1564)
    {
      goto LABEL_63;
    }

    goto LABEL_27;
  }

  if (v12 == 32)
  {
    goto LABEL_63;
  }

  if (v12 != 46)
  {
    if (v12 == 47)
    {
      goto LABEL_63;
    }

    goto LABEL_27;
  }

  if (v9 >= v5)
  {
LABEL_61:
    result = 0;
    goto LABEL_63;
  }

  v23 = v9 + 64;
  v24 = -v9;
  v25 = v9 + 1;
  while (1)
  {
    v26 = v9 >= 0x40 ? 64 : v9;
    v27 = v25 - 1;
    if (v25 - 1 < 1)
    {
      break;
    }

    if (v39)
    {
      v28 = v39[v41 - 2 + v25];
    }

    else if (v40)
    {
      v28 = v40[v41 - 2 + v25];
    }

    else
    {
      if (v44 < v27 || v6 >= v27)
      {
        v29 = -v26;
        v30 = v26 + v24;
        v31 = v23 - v26;
        v32 = v25 + v29;
        v33 = v32 + 63;
        if (v32 + 63 >= v42)
        {
          v33 = v42;
        }

        v43 = v32 - 1;
        v44 = v33;
        v34.location = v32 + v41 - 1;
        if (v42 >= v31)
        {
          v35 = v31;
        }

        else
        {
          v35 = v42;
        }

        v34.length = v35 + v30;
        CFStringGetCharacters(theString, v34, v37);
        v6 = v43;
      }

      v28 = *(&v37[-1] + v25 - v6 + 6);
    }

    result = 0;
    ++v24;
    --v23;
    --v9;
    --v25;
    if (v28 == 47)
    {
      goto LABEL_63;
    }
  }

LABEL_62:
  result = 1;
LABEL_63:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

CFIndex _rangeOfLastPathComponent(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  if ((v1 & 0x20) != 0)
  {
    v3 = 0;
    v4 = 32;
    do
    {
      v5 = v4;
      v4 >>= 1;
      v3 += v1 & 1;
      v1 >>= 1;
    }

    while ((v5 & 2) == 0);
    v6 = (a1 + 56 + 16 * v3);
    v2 = *v6;
    v7 = v6[1];
    if (*v6 != -1 && v7 != 0)
    {
      result.location = 0;
      result.length = 0;
      v9 = (a1 + 24);
      v10 = atomic_load((a1 + 24));
      v11 = v7 - 1;
      if (CFStringGetCharacterAtIndex(v10, v7 - 1 + v2) != 47 || (--v7, v11))
      {
        v12 = atomic_load(v9);
        v17.location = v2;
        v17.length = v7;
        if (CFStringFindWithOptions(v12, @"/", v17, 4uLL, &result))
        {
          v2 = result.location + 1;
        }
      }
    }
  }

  else
  {
    v2 = -1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v2;
}

CFURLRef CFURLCreateCopyAppendingPathExtension(CFAllocatorRef allocator, CFURLRef url, CFStringRef extension)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCreateCopyAppendingPathExtension_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v6 = [(__CFURL *)url URLByAppendingPathExtension:extension];

    return v6;
  }

  if (CFStringGetLength(extension))
  {
    if (_CFExtensionIsValidToAppend(extension))
    {
      if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
      {
        CFURLCreateCopyAppendingPathExtension_cold_2();
      }

      if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, url))
      {
        url = [(__CFURL *)url _cfurl];
      }

      v8 = CFURLIsFileReferenceURL(url);
      if (!v8)
      {
        PathComponent = _rangeOfLastPathComponent(url);
        if (PathComponent == -1)
        {
          return 0;
        }

        goto LABEL_22;
      }

      v9 = CFURLCreateFilePathURL(allocator, url, 0);
      if (v9)
      {
        url = v9;
        PathComponent = _rangeOfLastPathComponent(v9);
        if (PathComponent == -1)
        {
          CFRelease(url);
          return 0;
        }

LABEL_22:
        v12 = PathComponent;
        v13 = v11;
        v14 = atomic_load(url + 3);
        MutableCopy = CFStringCreateMutableCopy(allocator, 0, v14);
        if (MutableCopy)
        {
          v16 = MutableCopy;
          v17 = v12 + v13;
          CFStringInsert(MutableCopy, v17, @".");
          if (_CFURLHasFileURLScheme(url, 0))
          {
            v18 = POSIXPathToURLPath(extension, 0, 0, 0);
          }

          else
          {
            v18 = CFURLCreateStringByAddingPercentEscapes(allocator, extension, 0, @";?/", *(url + 5));
          }

          v20 = v18;
          if (v18)
          {
            CFStringInsert(v16, v17 + 1, v18);
            CFRelease(v20);
            v19 = _CFURLCreateWithArbitraryString(allocator, v16, *(url + 4));
          }

          else
          {
            v19 = 0;
          }

          CFRelease(v16);
        }

        else
        {
          v19 = 0;
        }

        if (v8)
        {
          CFRelease(url);
        }

        return v19;
      }
    }

    return 0;
  }

  return CFRetain(url);
}

void CFReadStreamClose(CFReadStreamRef stream)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {

    [(__CFReadStream *)stream close];
  }

  else
  {

    _CFStreamClose(stream);
  }
}

uint64_t __CFSetLastAllocationEventName()
{
  if (__CFOASafe == 1 && __CFObjectAllocSetLastAllocEventNameFunction != 0)
  {
    return __CFObjectAllocSetLastAllocEventNameFunction();
  }

  return result;
}

CFIndex CFGetRetainCount(CFTypeRef cf)
{
  if (!cf)
  {
    CFGetRetainCount_cold_2();
  }

  if ((cf & 0x8000000000000000) != 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = atomic_load(cf + 1);
  if (!CF_IS_OBJC((v3 >> 8) & 0x3FF, cf))
  {
    v4 = atomic_load(cf + 1);
    if ((v4 & 0x800000) == 0)
    {
      v5 = atomic_load(cf + 1);
      v6 = v5 >> 44;
      if (v6)
      {
        return v6;
      }

      else
      {
        return 0xFFFFFFFFFFFFFFFLL;
      }
    }

    __CFCheckCFInfoPACSignature_Bridged(cf);
    v7 = (v4 >> 8) & 0x3FF;
    if (v7 > 0x47)
    {
      v9 = v7 - 72;
      if (v9 >= dword_1ED40C410)
      {
        v10 = 0;
        goto LABEL_19;
      }

      v10 = __CFRuntimeClassTables[v9 >> 6];
      if (!v10)
      {
LABEL_19:
        v11 = *(v10 + 80);
        if (v11 && (*v10 & 8) != 0)
        {
          if (v4 > 0xFFFFEFFFFFFFFFFFLL)
          {
            return v11(0, cf);
          }
        }

        else
        {
          __break(1u);
        }

        CFGetRetainCount_cold_1();
      }

      v8 = (v10 + 8 * (v9 & 0x3F));
    }

    else
    {
      v8 = (&__CFRuntimeBuiltinClassTable + v7);
    }

    v10 = *v8;
    goto LABEL_19;
  }

  return [cf retainCount];
}

double __cficu_ucal_getGregorianChange()
{
  ucal_getGregorianChange();
  v1 = v0;
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_getGregorianChange_cold_1();
  }

  return v1;
}

_OWORD *__ApplyUDateFormatSymbol(_OWORD *result)
{
  v1 = result;
  v2 = 0;
  v32 = *MEMORY[0x1E69E9840];
  v31 = 0;
  memset(v28, 0, sizeof(v28));
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  v29 = v3;
  v30 = 0u;
  *&v30 = 0x100000001;
  v4 = *(result + 136);
  v5 = *(result + 168);
  v27[1] = *(result + 152);
  v27[2] = v5;
  v6 = *(result + 200);
  v27[3] = *(result + 184);
  v27[4] = v6;
  v7 = *(result + 232);
  v27[5] = *(result + 216);
  v27[6] = v7;
  v8 = *(result + 264);
  v27[7] = *(result + 248);
  v27[8] = v8;
  v9 = result[21];
  v26[0] = result[20];
  v26[1] = v9;
  v10 = result[23];
  v26[2] = result[22];
  v26[3] = v10;
  v11 = result[25];
  v26[4] = result[24];
  v26[5] = v11;
  v12 = result[27];
  v26[6] = result[26];
  v26[7] = v12;
  v26[8] = result[28];
  v27[0] = v4;
  do
  {
    v13 = *(v27 + v2);
    if (v13 || (v13 = *(v26 + v2)) != 0)
    {
      result = __CFDateFormatterSetSymbolsArray(v1[2], dword_183306FD0[v2], v28[v2], v13);
    }

    ++v2;
  }

  while (v2 != 18);
  v14 = v1[35];
  if (!v14)
  {
    if (v1[62])
    {
      v14 = v1[62];
    }

    else
    {
      v14 = 0;
    }
  }

  v15 = v1[36];
  if (!v15)
  {
    v15 = v1[63];
  }

  v16 = 1;
  do
  {
    v17 = v16;
    if (v14)
    {
      Length = CFStringGetLength(v14);
      if (Length >= 768)
      {
        v20 = 768;
      }

      else
      {
        v20 = Length;
      }

      MEMORY[0x1EEE9AC00](Length, v19);
      v22 = (v25 - v21);
      if (!CFStringGetCharactersPtr(v14))
      {
        v33.location = 0;
        v33.length = v20;
        CFStringGetCharacters(v14, v33, v22);
      }

      v25[3] = 0;
      v23 = v1[2];
      result = __cficu_udat_setSymbols();
    }

    v16 = 0;
    v14 = v15;
  }

  while ((v17 & 1) != 0);
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void __CFDateFormatterSetProperty(uint64_t a1, __CFString *cf1, __CFString *theArray, int a4)
{
  v64 = *MEMORY[0x1E69E9840];
  valuePtr[1] = 0;
  if (@"kCFDateFormatterIsLenientKey" == cf1)
  {
    if (a4)
    {
      goto LABEL_62;
    }

    v7 = *(a1 + 64);
    *(a1 + 64) = 0;
    if (theArray)
    {
      v8 = CFRetain(theArray);
    }

    else
    {
      v8 = 0;
    }

    *(a1 + 64) = v8;
    goto LABEL_59;
  }

  if (@"kCFDateFormatterDoesRelativeDateFormattingKey" == cf1)
  {
    if (a4)
    {
      goto LABEL_62;
    }

    v7 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (&__kCFBooleanTrue == theArray)
    {
      v9 = theArray;
    }

    else
    {
      v9 = &__kCFBooleanFalse;
    }

    if (v9)
    {
      v9 = CFRetain(v9);
    }

    *(a1 + 72) = v9;
    goto LABEL_59;
  }

  if (@"kCFDateFormatterCalendarKey" == cf1)
  {
    if (a4)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 96);
      *(a1 + 96) = 0;
    }

    v11 = CFGetAllocator(*(a1 + 24));
    v12 = *(a1 + 24);
    CFCalendarGetIdentifier(theArray);
    CopyWithNewCalendarIdentifier = _CFLocaleCreateCopyWithNewCalendarIdentifier(v11, v12);
    v14 = *(a1 + 24);
    if (v14)
    {
      CFRelease(v14);
    }

    *(a1 + 24) = CopyWithNewCalendarIdentifier;
    if (a4)
    {
      goto LABEL_60;
    }

    *(a1 + 96) = CFDateFormatterCopyProperty(a1, @"kCFDateFormatterCalendarKey");
LABEL_59:
    __ResetUDateFormat(a1, 0);
    goto LABEL_60;
  }

  if (@"kCFDateFormatterCalendarIdentifierKey" == cf1)
  {
    if (a4)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 104);
      *(a1 + 104) = 0;
    }

    Identifier = CFLocaleGetIdentifier(*(a1 + 24));
    ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(&__kCFAllocatorSystemDefault, Identifier);
    MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, ComponentsFromLocaleIdentifier);
    CFDictionarySetValue(MutableCopy, @"calendar", theArray);
    LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(&__kCFAllocatorSystemDefault, MutableCopy);
    CFRelease(MutableCopy);
    CFRelease(ComponentsFromLocaleIdentifier);
    v20 = CFGetAllocator(*(a1 + 24));
    v21 = CFLocaleCreate(v20, LocaleIdentifierFromComponents);
    CFRelease(LocaleIdentifierFromComponents);
    CFRelease(*(a1 + 24));
    *(a1 + 24) = v21;
    if (a4)
    {
      goto LABEL_60;
    }

    *(a1 + 104) = CFDateFormatterCopyProperty(a1, @"kCFDateFormatterCalendarIdentifierKey");
    goto LABEL_59;
  }

  if (@"kCFDateFormatterTimeZoneKey" == cf1)
  {
    v7 = *(a1 + 88);
    if (v7 != theArray)
    {
      if (a4)
      {
        v10 = *(a1 + 88);
        v7 = 0;
      }

      else
      {
        v10 = 0;
        *(a1 + 88) = 0;
      }

      if (theArray)
      {
        v24 = CFRetain(theArray);
      }

      else
      {
        v24 = CFTimeZoneCopyDefault();
      }

      *(a1 + 88) = v24;
      if (v10)
      {
        CFRelease(v10);
      }

      if (!a4)
      {
        v25 = *(a1 + 88);
        *(a1 + 88) = CFDateFormatterCopyProperty(a1, @"kCFDateFormatterTimeZoneKey");
        __ResetUDateFormat(a1, 0);
        if (v25)
        {
          CFRelease(v25);
        }
      }

      goto LABEL_60;
    }

    goto LABEL_62;
  }

  if (@"kCFDateFormatterDefaultFormatKey" == cf1)
  {
    goto LABEL_62;
  }

  if (@"kCFDateFormatterTwoDigitStartDateKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 112);
      *(a1 + 112) = 0;
      if (theArray)
      {
        v22 = CFRetain(theArray);
      }

      else
      {
        v22 = 0;
      }

      *(a1 + 112) = v22;
      goto LABEL_60;
    }

    goto LABEL_62;
  }

  if (@"kCFDateFormatterDefaultDateKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 120);
      *(a1 + 120) = 0;
      if (theArray)
      {
        v23 = CFRetain(theArray);
      }

      else
      {
        v23 = 0;
      }

      *(a1 + 120) = v23;
      goto LABEL_60;
    }

    goto LABEL_62;
  }

  if (@"kCFDateFormatterGregorianStartDateKey" == cf1)
  {
    if (a4)
    {
      goto LABEL_62;
    }

    v7 = *(a1 + 128);
    *(a1 + 128) = 0;
    if (theArray)
    {
      v26 = CFRetain(theArray);
    }

    else
    {
      v26 = 0;
    }

    *(a1 + 128) = v26;
    goto LABEL_59;
  }

  if (@"kCFDateFormatterEraSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 136);
      *(a1 + 136) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 0, 0, theArray);
      *(a1 + 136) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 0, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v28 = *MEMORY[0x1E69E9840];
    v29 = 0;
  }

  else if (@"kCFDateFormatterLongEraSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 144);
      *(a1 + 144) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 7, 0, theArray);
      *(a1 + 144) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 7, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v30 = *MEMORY[0x1E69E9840];
    v29 = 7;
  }

  else if (@"kCFDateFormatterMonthSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 152);
      *(a1 + 152) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 1, 0, theArray);
      *(a1 + 152) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 1, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v31 = *MEMORY[0x1E69E9840];
    v29 = 1;
  }

  else if (@"kCFDateFormatterShortMonthSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 160);
      *(a1 + 160) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 2, 0, theArray);
      *(a1 + 160) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 2, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v32 = *MEMORY[0x1E69E9840];
    v29 = 2;
  }

  else if (@"kCFDateFormatterVeryShortMonthSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 168);
      *(a1 + 168) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 8, 0, theArray);
      *(a1 + 168) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 8, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v33 = *MEMORY[0x1E69E9840];
    v29 = 8;
  }

  else if (@"kCFDateFormatterStandaloneMonthSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 176);
      *(a1 + 176) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 10, 0, theArray);
      *(a1 + 176) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 10, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v34 = *MEMORY[0x1E69E9840];
    v29 = 10;
  }

  else if (@"kCFDateFormatterShortStandaloneMonthSymbolsKey" == cf1)
  {
    if (!a4)
    {
      v7 = *(a1 + 184);
      *(a1 + 184) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 11, 0, theArray);
      *(a1 + 184) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 11, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v35 = *MEMORY[0x1E69E9840];
    v29 = 11;
  }

  else
  {
    if (@"kCFDateFormatterVeryShortStandaloneMonthSymbolsKey" != cf1)
    {
      if (@"kCFDateFormatterWeekdaySymbolsKey" == cf1)
      {
        if (!a4)
        {
          v7 = *(a1 + 200);
          *(a1 + 200) = 0;
          __CFDateFormatterSetSymbolsArray(*(a1 + 16), 3, 1, theArray);
          *(a1 + 200) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 3, 1);
          goto LABEL_60;
        }

        v27 = *(a1 + 16);
        v38 = *MEMORY[0x1E69E9840];
        v29 = 3;
      }

      else if (@"kCFDateFormatterShortWeekdaySymbolsKey" == cf1)
      {
        if (!a4)
        {
          v7 = *(a1 + 208);
          *(a1 + 208) = 0;
          __CFDateFormatterSetSymbolsArray(*(a1 + 16), 4, 1, theArray);
          *(a1 + 208) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 4, 1);
          goto LABEL_60;
        }

        v27 = *(a1 + 16);
        v39 = *MEMORY[0x1E69E9840];
        v29 = 4;
      }

      else if (@"kCFDateFormatterVeryShortWeekdaySymbolsKey" == cf1)
      {
        if (!a4)
        {
          v7 = *(a1 + 216);
          *(a1 + 216) = 0;
          __CFDateFormatterSetSymbolsArray(*(a1 + 16), 9, 1, theArray);
          *(a1 + 216) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 9, 1);
          goto LABEL_60;
        }

        v27 = *(a1 + 16);
        v40 = *MEMORY[0x1E69E9840];
        v29 = 9;
      }

      else if (@"kCFDateFormatterStandaloneWeekdaySymbolsKey" == cf1)
      {
        if (!a4)
        {
          v7 = *(a1 + 224);
          *(a1 + 224) = 0;
          __CFDateFormatterSetSymbolsArray(*(a1 + 16), 13, 1, theArray);
          *(a1 + 224) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 13, 1);
          goto LABEL_60;
        }

        v27 = *(a1 + 16);
        v41 = *MEMORY[0x1E69E9840];
        v29 = 13;
      }

      else if (@"kCFDateFormatterShortStandaloneWeekdaySymbolsKey" == cf1)
      {
        if (!a4)
        {
          v7 = *(a1 + 232);
          *(a1 + 232) = 0;
          __CFDateFormatterSetSymbolsArray(*(a1 + 16), 14, 1, theArray);
          *(a1 + 232) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 14, 1);
          goto LABEL_60;
        }

        v27 = *(a1 + 16);
        v42 = *MEMORY[0x1E69E9840];
        v29 = 14;
      }

      else
      {
        if (@"kCFDateFormatterVeryShortStandaloneWeekdaySymbolsKey" != cf1)
        {
          if (@"kCFDateFormatterQuarterSymbolsKey" == cf1)
          {
            if (!a4)
            {
              v7 = *(a1 + 248);
              *(a1 + 248) = 0;
              __CFDateFormatterSetSymbolsArray(*(a1 + 16), 16, 0, theArray);
              *(a1 + 248) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 16, 0);
              goto LABEL_60;
            }

            v27 = *(a1 + 16);
            v44 = *MEMORY[0x1E69E9840];
            v29 = 16;
          }

          else if (@"kCFDateFormatterShortQuarterSymbolsKey" == cf1)
          {
            if (!a4)
            {
              v7 = *(a1 + 256);
              *(a1 + 256) = 0;
              __CFDateFormatterSetSymbolsArray(*(a1 + 16), 17, 0, theArray);
              *(a1 + 256) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 17, 0);
              goto LABEL_60;
            }

            v27 = *(a1 + 16);
            v45 = *MEMORY[0x1E69E9840];
            v29 = 17;
          }

          else if (@"kCFDateFormatterStandaloneQuarterSymbolsKey" == cf1)
          {
            if (!a4)
            {
              v7 = *(a1 + 264);
              *(a1 + 264) = 0;
              __CFDateFormatterSetSymbolsArray(*(a1 + 16), 18, 0, theArray);
              *(a1 + 264) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 18, 0);
              goto LABEL_60;
            }

            v27 = *(a1 + 16);
            v46 = *MEMORY[0x1E69E9840];
            v29 = 18;
          }

          else
          {
            if (@"kCFDateFormatterShortStandaloneQuarterSymbolsKey" != cf1)
            {
              if (@"kCFDateFormatterAMSymbolKey" == cf1)
              {
                if (a4)
                {
                  v7 = 0;
                }

                else
                {
                  v7 = *(a1 + 280);
                  *(a1 + 280) = 0;
                }

                Length = CFStringGetLength(theArray);
                if (Length >= 768)
                {
                  v50 = 768;
                }

                else
                {
                  v50 = Length;
                }

                MEMORY[0x1EEE9AC00](Length, v49);
                v52 = (valuePtr - v51);
                if (!CFStringGetCharactersPtr(theArray))
                {
                  v66.location = 0;
                  v66.length = v50;
                  CFStringGetCharacters(theArray, v66, v52);
                }

                v53 = *(a1 + 16);
                __cficu_udat_setSymbols();
                if (!a4)
                {
                  Copy = 0;
                  if (theArray)
                  {
                    Copy = CFStringCreateCopy(0, theArray);
                  }

                  *(a1 + 280) = Copy;
                }

                goto LABEL_60;
              }

              if (@"kCFDateFormatterPMSymbolKey" == cf1)
              {
                if (a4)
                {
                  v7 = 0;
                }

                else
                {
                  v7 = *(a1 + 288);
                  *(a1 + 288) = 0;
                }

                v55 = CFStringGetLength(theArray);
                if (v55 >= 768)
                {
                  v57 = 768;
                }

                else
                {
                  v57 = v55;
                }

                MEMORY[0x1EEE9AC00](v55, v56);
                v59 = (valuePtr - v58);
                if (!CFStringGetCharactersPtr(theArray))
                {
                  v67.location = 0;
                  v67.length = v57;
                  CFStringGetCharacters(theArray, v67, v59);
                }

                v60 = *(a1 + 16);
                __cficu_udat_setSymbols();
                if (!a4)
                {
                  v61 = 0;
                  if (theArray)
                  {
                    v61 = CFStringCreateCopy(0, theArray);
                  }

                  *(a1 + 288) = v61;
                }

                goto LABEL_60;
              }

              if (@"kCFDateFormatterAmbiguousYearStrategyKey" == cf1)
              {
                v7 = *(a1 + 296);
                *(a1 + 296) = 0;
                *(a1 + 296) = CFRetain(theArray);
              }

              else
              {
                if (@"kCFDateFormatterUsesCharacterDirectionKey" != cf1)
                {
                  if (CFEqual(cf1, @"kCFDateFormatterFormattingContextKey"))
                  {
                    if (a4)
                    {
                      v7 = 0;
                    }

                    else
                    {
                      v7 = *(a1 + 312);
                      *(a1 + 312) = 0;
                    }

                    valuePtr[0] = 0;
                    CFNumberGetValue(theArray, kCFNumberIntType, valuePtr);
                    v62 = *(a1 + 16);
                    __cficu_udat_setContext();
                    if (!a4)
                    {
                      *(a1 + 312) = CFRetain(theArray);
                    }

                    goto LABEL_60;
                  }

LABEL_62:
                  v15 = *MEMORY[0x1E69E9840];
                  return;
                }

                v7 = *(a1 + 304);
                *(a1 + 304) = CFRetain(theArray);
              }

LABEL_60:
              if (v7)
              {
                CFRelease(v7);
              }

              goto LABEL_62;
            }

            if (!a4)
            {
              v7 = *(a1 + 272);
              *(a1 + 272) = 0;
              __CFDateFormatterSetSymbolsArray(*(a1 + 16), 19, 0, theArray);
              *(a1 + 272) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 19, 0);
              goto LABEL_60;
            }

            v27 = *(a1 + 16);
            v47 = *MEMORY[0x1E69E9840];
            v29 = 19;
          }

          goto LABEL_111;
        }

        if (!a4)
        {
          v7 = *(a1 + 240);
          *(a1 + 240) = 0;
          __CFDateFormatterSetSymbolsArray(*(a1 + 16), 15, 1, theArray);
          *(a1 + 240) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 15, 1);
          goto LABEL_60;
        }

        v27 = *(a1 + 16);
        v43 = *MEMORY[0x1E69E9840];
        v29 = 15;
      }

      v37 = 1;
      goto LABEL_112;
    }

    if (!a4)
    {
      v7 = *(a1 + 192);
      *(a1 + 192) = 0;
      __CFDateFormatterSetSymbolsArray(*(a1 + 16), 12, 0, theArray);
      *(a1 + 192) = __CFDateFormatterCopySymbolsArray(*(a1 + 16), 12, 0);
      goto LABEL_60;
    }

    v27 = *(a1 + 16);
    v36 = *MEMORY[0x1E69E9840];
    v29 = 12;
  }

LABEL_111:
  v37 = 0;
LABEL_112:

  __CFDateFormatterSetSymbolsArray(v27, v29, v37, theArray);
}

uint64_t __cficu_ucal_clone()
{
  v0 = ucal_clone();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_clone_cold_1();
  }

  return v0;
}

void __cficu_ucal_setTimeZone()
{
  ucal_setTimeZone();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_setTimeZone_cold_1();
  }
}

uint64_t __substituteFormatStringFromPrefsDF(uint64_t result, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = 40;
  if (a2)
  {
    v2 = 32;
  }

  v3 = *(result + v2);
  v4 = 464;
  if (a2)
  {
    v4 = 472;
  }

  v5 = *(result + v4);
  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = result;
    Identifier = CFLocaleGetIdentifier(*(result + 24));
    if (!CFStringGetCStringPtr(Identifier, 0x600u))
    {
      CFStringGetCString(Identifier, v24, 768, 0x600u);
    }

    v22 = 0;
    result = __cficu_udat_open();
    if (result)
    {
      v22 = 0;
      v9 = __cficu_udat_toPattern();
      if (v9 <= 768)
      {
        v10 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v23, v9);
        v22 = 0;
        v11 = *(v7 + 16);
        v12 = __cficu_udat_toPattern();
        if (v12 <= 768)
        {
          Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
          CFStringAppendCharacters(Mutable, v23, v12);
          v21.location = 0;
          v21.length = 0;
          v27.location = 0;
          v27.length = v12;
          if (CFStringFindWithOptions(Mutable, v10, v27, 0, &v21))
          {
            CFStringReplace(Mutable, v21, v5);
            Length = CFStringGetLength(Mutable);
            v15 = Length;
            MEMORY[0x1EEE9AC00](Length, v16);
            v18 = (&v21 - ((v17 + 15) & 0x3FFFFFFF0));
            if (!CFStringGetCharactersPtr(Mutable))
            {
              v26.length = v15;
              v26.location = 0;
              CFStringGetCharacters(Mutable, v26, v18);
            }

            v22 = 0;
            v19 = *(v7 + 16);
            __cficu_udat_applyPattern();
          }

          CFRelease(Mutable);
        }

        CFRelease(v10);
      }

      result = __cficu_udat_close();
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __forwarding_prep_b___@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, void *a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>, __n128 a15@<Q5>, __n128 a16@<Q6>, __n128 a17@<Q7>)
{
  v26 = a17;
  v25 = a16;
  v24 = a15;
  v23 = a14;
  v22 = a13;
  v21 = a12;
  v20 = a11;
  v19 = a10;
  v18[8] = a9;
  v18[7] = a8;
  v18[6] = a7;
  v18[5] = a6;
  v18[4] = a5;
  v18[3] = a4;
  v18[2] = a3;
  v18[1] = a2;
  v18[0] = a1;
  return __block_forwarding___(v18);
}

uint64_t __block_forwarding___(id *a1)
{
  v2 = *a1;
  Class = object_getClass(*a1);
  Name = class_getName(Class);
  if (!strncmp(Name, "_NSZombie_", 0xAuLL))
  {
    __block_forwarding____cold_3(v2, v5, v6, v7, v8, v9, v10, v11);
  }

  v12 = _Block_signature(v2);
  if (!v12)
  {
    __block_forwarding____cold_2(v2, v13, v14, v15, v16, v17, v18, v19);
  }

  v20 = [(NSInvocation *)NSBlockInvocation _invocationWithMethodSignature:[NSMethodSignature signatureWithObjCTypes:v12] frame:a1];
  [v20 setTarget:0];
  v21 = v2[4];
  [v20[3] numberOfArguments];
  v22 = *(v20 + 14);
  v23 = v20[3];
  objc_opt_class();
  v24 = [v20[3] frameLength];
  if (v24)
  {
    if ((v24 & 7) != 0)
    {
      goto LABEL_14;
    }

    v26 = v20[1];
    v27 = 8;
    do
    {
      v28 = *v26++;
      --v27;
    }

    while (v27);
  }

  v20[6] = v25;
  if (!v21)
  {
    __break(1u);
LABEL_14:
    __block_forwarding____cold_1();
  }

  v29 = *(v21 + 16);

  return v29(v21, v20);
}

CFDictionaryRef CFURLCopyResourcePropertiesForKeys(CFURLRef url, CFArrayRef keys, CFErrorRef *error)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (!_CFURLHasFileURLScheme(url, &v14))
  {
    if (!v14)
    {
      CFLog(4, @"CFURLCopyResourcePropertiesForKeys failed because it was passed a URL which has no scheme", v4, v5, v6, v7, v8, v9, v13);
    }

    goto LABEL_6;
  }

  __CFURLResourceInfoPtr(url);
  result = _FSURLCopyResourcePropertiesForKeys();
  if (!result)
  {
LABEL_6:
    v11 = CFGetAllocator(url);
    result = CFDictionaryCreate(v11, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void CFDictionaryRemoveAllValues(CFMutableDictionaryRef theDict)
{
  if (CF_IS_OBJC(0x12uLL, theDict))
  {

    [(__CFDictionary *)theDict removeAllObjects];
  }

  else
  {
    v8 = atomic_load(theDict + 1);
    if ((v8 & 0x40) != 0)
    {
      CFLog(3, @"%s(): immutable collection %p given to mutating function", v2, v3, v4, v5, v6, v7, "void CFDictionaryRemoveAllValues(CFMutableDictionaryRef)");
    }

    v9 = atomic_load(theDict + 1);
    if (v9)
    {
      if (!__CF_KVO_WillChangeKeysSelector_hc)
      {
        __CF_KVO_WillChangeKeysSelector_hc = sel_registerName("_willChangeValuesForKeys:");
      }

      Count = CFDictionaryGetCount(theDict);
      v12 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      CFDictionaryGetKeysAndValues(theDict, v12, 0);
      v10 = CFSetCreate(&__kCFAllocatorSystemDefault, v12, Count, &kCFTypeSetCallBacks);
      free(v12);
      [theDict __CF_KVO_WillChangeKeysSelector_hc];
    }

    else
    {
      v10 = 0;
    }

    CFBasicHashRemoveAllValues(theDict);
    v13 = atomic_load(theDict + 1);
    if (v13)
    {
      v14 = __CF_KVO_DidChangeKeysSelector_hc;
      if (!__CF_KVO_DidChangeKeysSelector_hc)
      {
        v14 = sel_registerName("_didChangeValuesForKeys:");
        __CF_KVO_DidChangeKeysSelector_hc = v14;
      }

      [theDict v14];
      if (v10)
      {

        CFRelease(v10);
      }
    }
  }
}

void __ResetUDateFormat(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = v2;
  v145[192] = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  if (*(v5 + 16))
  {
    __cficu_udat_close();
  }

  *(v5 + 16) = 0;
  v143[0] = 0;
  v7 = *(v5 + 24);
  if (v7)
  {
    Identifier = CFLocaleGetIdentifier(v7);
  }

  else
  {
    Identifier = &stru_1EF068AA8;
  }

  CFStringGetCString(Identifier, v143, 768, 0x600u);
  v142[0] = 0;
  v10 = (v5 + 88);
  v9 = *(v5 + 88);
  if (v9)
  {
    Name = CFTimeZoneGetName(v9);
    if (!Name)
    {
      v12 = _CFOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __ResetUDateFormat_cold_1(v10, v12);
      }

      goto LABEL_211;
    }
  }

  else
  {
    Name = @"GMT";
  }

  if (CFStringGetLength(Name) <= 768)
  {
    Length = CFStringGetLength(Name);
  }

  else
  {
    Length = 768;
  }

  v146.location = 0;
  v146.length = Length;
  CFStringGetCharacters(Name, v146, v142);
  v14 = *(v5 + 40);
  if (v14 <= 3)
  {
    v15 = dword_183306FC0[v14];
  }

  v16 = 0;
  v17 = *(v5 + 32);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v16 = 0;
    }

    else if (v17 == 3)
    {
      v16 = 0;
    }
  }

  else if (v17)
  {
    if (v17 == 1)
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  v18 = *(v5 + 72);
  v19 = *(v5 + 80);
  if (v18)
  {
    v20 = v18 == &__kCFBooleanTrue;
  }

  else
  {
    v20 = 0;
  }

  v21 = !v20;
  if (v19)
  {
    v22 = v19 == &__kCFBooleanTrue;
  }

  else
  {
    v22 = 0;
  }

  if (!v22 && v4 == 0)
  {
    v24 = v21;
  }

  else
  {
    v24 = 1;
  }

  v140 = 0;
  v25 = __cficu_udat_open();
  if (v25)
  {
    v26 = v25;
    if ((v21 & 1) == 0)
    {
      __cficu_udat_setContext();
    }

    v138 = v16;
    v27 = *(v5 + 64);
    __cficu_udat_setLenient();
    if (!*(v5 + 40) && !*(v5 + 32))
    {
      __cficu_udat_applyPattern();
    }

    if (v21 && *(v5 + 80) == &__kCFBooleanTrue)
    {
      v28 = CFStringGetLength(*(v5 + 48));
      v30 = v28;
      v31 = 2 * v28;
      if ((2 * v28) < 0x101)
      {
        if (v28 < 1)
        {
          v32 = 0;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v28, v29);
          v32 = &v137[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
          bzero(v32, v31);
        }
      }

      else
      {
        v32 = malloc_type_malloc(2 * v28, 0x1000040BDFB0063uLL);
      }

      if (!CFStringGetCharactersPtr(*(v5 + 48)))
      {
        v147.location = 0;
        v147.length = v30;
        CFStringGetCharacters(*(v5 + 48), v147, v32);
      }

      __cficu_udat_applyPattern();
      if (v31 >= 0x101)
      {
        free(v32);
      }
    }

    Value = CFLocaleGetValue(*(v5 + 24), @"calendar");
    if (Value && CFEqual(Value, @"gregorian"))
    {
      v140 = 0;
      __cficu_udat_set2DigitYearStart();
    }

    *(v5 + 16) = v26;
    AppleICUDateTimeSymbolsPref = _CFLocaleGetAppleICUDateTimeSymbolsPref(*(v5 + 24), v34);
    if (AppleICUDateTimeSymbolsPref)
    {
      v37 = AppleICUDateTimeSymbolsPref;
      v38 = CFGetTypeID(AppleICUDateTimeSymbolsPref);
      if (v38 == CFDictionaryGetTypeID())
      {
        CFDictionaryApplyFunction(v37, __CFDateFormatterStoreSymbolPrefs, v5);
      }
    }

    AppleFirstWeekdayPref = _CFLocaleGetAppleFirstWeekdayPref(*(v5 + 24), v36);
    if (AppleFirstWeekdayPref)
    {
      v41 = AppleFirstWeekdayPref;
      v42 = CFGetTypeID(AppleFirstWeekdayPref);
      if (v42 == CFDictionaryGetTypeID())
      {
        v43 = *(v5 + 512);
        if (v43)
        {
          CFRelease(v43);
        }

        *(v5 + 512) = CFRetain(v41);
      }
    }

    AppleMinDaysInFirstWeekPref = _CFLocaleGetAppleMinDaysInFirstWeekPref(*(v5 + 24), v40);
    if (AppleMinDaysInFirstWeekPref)
    {
      v46 = AppleMinDaysInFirstWeekPref;
      v47 = CFGetTypeID(AppleMinDaysInFirstWeekPref);
      if (v47 == CFDictionaryGetTypeID())
      {
        v48 = *(v5 + 520);
        if (v48)
        {
          CFRelease(v48);
        }

        *(v5 + 520) = CFRetain(v46);
      }
    }

    AppleICUForce24HourTimePref = _CFLocaleGetAppleICUForce24HourTimePref(*(v5 + 24), v45);
    if (AppleICUForce24HourTimePref)
    {
      v51 = AppleICUForce24HourTimePref;
      v52 = CFGetTypeID(AppleICUForce24HourTimePref);
      if (v52 == CFBooleanGetTypeID())
      {
        v53 = *(v5 + 480);
        if (v53)
        {
          CFRelease(v53);
        }

        *(v5 + 480) = CFRetain(v51);
      }
    }

    AppleICUForce12HourTimePref = _CFLocaleGetAppleICUForce12HourTimePref(*(v5 + 24), v50);
    if (AppleICUForce12HourTimePref)
    {
      v56 = AppleICUForce12HourTimePref;
      v57 = CFGetTypeID(AppleICUForce12HourTimePref);
      if (v57 == CFBooleanGetTypeID())
      {
        v58 = *(v5 + 488);
        if (v58)
        {
          CFRelease(v58);
        }

        *(v5 + 488) = CFRetain(v56);
      }
    }

    AppleICUDateFormatStringsPref = _CFLocaleGetAppleICUDateFormatStringsPref(*(v5 + 24), v55);
    if (AppleICUDateFormatStringsPref)
    {
      v61 = AppleICUDateFormatStringsPref;
      v62 = CFGetTypeID(AppleICUDateFormatStringsPref);
      if (v62 == CFDictionaryGetTypeID())
      {
        v63 = *(v5 + 40) - 1;
        v64 = v63 > 3 ? @"0" : off_1E6D7D920[v63];
        v65 = CFDictionaryGetValue(v61, v64);
        if (v65)
        {
          v66 = v65;
          v67 = CFGetTypeID(v65);
          if (v67 == CFStringGetTypeID())
          {
            v68 = *(v5 + 464);
            if (v68)
            {
              CFRelease(v68);
            }

            *(v5 + 464) = CFRetain(v66);
          }
        }
      }
    }

    AppleICUTimeFormatStringsPref = _CFLocaleGetAppleICUTimeFormatStringsPref(*(v5 + 24), v60);
    if (AppleICUTimeFormatStringsPref)
    {
      v70 = AppleICUTimeFormatStringsPref;
      v71 = CFGetTypeID(AppleICUTimeFormatStringsPref);
      if (v71 == CFDictionaryGetTypeID())
      {
        v72 = *(v5 + 32) - 1;
        v73 = v72 > 3 ? @"0" : off_1E6D7D920[v72];
        v74 = CFDictionaryGetValue(v70, v73);
        if (v74)
        {
          v75 = v74;
          v76 = CFGetTypeID(v74);
          if (v76 == CFStringGetTypeID())
          {
            v77 = *(v5 + 472);
            if (v77)
            {
              CFRelease(v77);
            }

            *(v5 + 472) = CFRetain(v75);
          }
        }
      }
    }

    v78 = *(v5 + 104);
    if (!v78)
    {
      v78 = CFLocaleGetValue(*(v5 + 24), @"calendar");
    }

    v144[0] = 0;
    v79 = *(v5 + 16);
    __cficu_udat_getCalendar();
    if (!*(v5 + 96) && !*(v5 + 104) || (v80 = CFLocaleGetIdentifier(*(v5 + 24)), (UCalendar = __CFCalendarCreateUCalendar(0, v80, *(v5 + 88))) == 0))
    {
      UCalendar = __cficu_ucal_clone();
    }

    if (*(v5 + 64))
    {
      v144[0] = 0;
      __cficu_ucal_setAttribute();
    }

    v82 = *v10;
    v139 = v6;
    if (v82)
    {
      v144[0] = 0;
      v83 = CFTimeZoneGetName(v82);
      v84 = CFStringGetLength(v83);
      if (v84 >= 768)
      {
        v85 = 768;
      }

      else
      {
        v85 = v84;
      }

      v148.location = 0;
      v148.length = v85;
      CFStringGetCharacters(v83, v148, v145);
      __cficu_ucal_setTimeZone();
    }

    v86 = *(v5 + 128);
    if (v86)
    {
      v144[0] = 0;
      CFDateGetAbsoluteTime(v86);
    }

    else
    {
      if (!v78 || !CFEqual(v78, @"gregorian"))
      {
LABEL_119:
        v87 = *(v5 + 96);
        if (v87)
        {
          CFCalendarGetFirstWeekday(v87);
        }

        else
        {
          v92 = *(v5 + 512);
          if (!v92 || (v93 = CFDictionaryGetValue(v92, v78)) == 0 || (v94 = v93, v95 = CFGetTypeID(v93), v95 != CFNumberGetTypeID()) || (v145[0] = 0, !CFNumberGetValue(v94, kCFNumberCFIndexType, v145)))
          {
LABEL_122:
            v88 = *(v5 + 96);
            if (v88)
            {
              CFCalendarGetMinimumDaysInFirstWeek(v88);
            }

            else
            {
              v96 = *(v5 + 520);
              if (!v96 || (v97 = CFDictionaryGetValue(v96, v78)) == 0 || (v98 = v97, v99 = CFGetTypeID(v97), v99 != CFNumberGetTypeID()) || (v145[0] = 0, !CFNumberGetValue(v98, kCFNumberCFIndexType, v145)))
              {
LABEL_125:
                v89 = *(v5 + 16);
                __cficu_udat_setCalendar();
                __cficu_ucal_close(UCalendar);
                if (v24)
                {
                  __substituteFormatStringFromPrefsDF(v5, 0);
                  __substituteFormatStringFromPrefsDF(v5, 1);
                  __ApplyUDateFormatSymbol(v5);
                  v6 = v139;
                }

                else
                {
                  v6 = v139;
                  if (*(v5 + 40))
                  {
                    v90 = *(v5 + 464);
                    if (!v90 || (CFStringGetLength(v90) > 767 ? (v91 = 768) : (v91 = CFStringGetLength(*(v5 + 464))), v149.location = 0, v149.length = v91, CFStringGetCharacters(*(v5 + 464), v149, v145), v91 == -1))
                    {
                      v144[0] = 0;
                      v100 = *(v5 + 16);
                      __cficu_udat_toPatternRelativeDate();
                    }

                    if (!*(v5 + 32) || (v101 = *(v5 + 472)) == 0 || (CFStringGetLength(v101) > 767 ? (v102 = 768) : (v102 = CFStringGetLength(*(v5 + 472))), v150.location = 0, v150.length = v102, CFStringGetCharacters(*(v5 + 472), v150, v144), v102 == -1))
                    {
                      *v141 = 0;
                      v103 = *(v5 + 16);
                      __cficu_udat_toPatternRelativeTime();
                    }

                    *v141 = 0;
                    v104 = *(v5 + 16);
                    __cficu_udat_applyPatternRelative();
                  }

                  else
                  {
                    __substituteFormatStringFromPrefsDF(v5, 0);
                    __substituteFormatStringFromPrefsDF(v5, 1);
                  }

                  __ApplyUDateFormatSymbol(v5);
                  if (*(v5 + 40))
                  {
                    v140 = 0;
                    v105 = __cficu_udat_toPatternRelativeDate();
                    if (v138)
                    {
                      v106 = 0;
                    }

                    else
                    {
                      v106 = __cficu_udat_toPatternRelativeTime();
                    }

                    if (v140 <= 0 && v105 <= 768 && v106 <= 768)
                    {
                      v115 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v144, v106);
                      ForcedString = __CFDateFormatterCreateForcedString(v5, v115);
                      v117 = CFStringGetLength(ForcedString);
                      if (v117 <= 768)
                      {
                        v151.location = 0;
                        v151.length = v117;
                        CFStringGetCharacters(ForcedString, v151, v144);
                        v140 = 0;
                        __cficu_udat_applyPatternRelative();
                        v140 = 0;
                        v118 = __cficu_udat_toPattern();
                        if (v140 <= 0)
                        {
                          v119 = v118;
                          if (v118 <= 768)
                          {
                            v120 = *(v5 + 48);
                            if (v120)
                            {
                              CFRelease(v120);
                            }

                            *(v5 + 48) = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v141, v119);
                          }
                        }
                      }

                      CFRelease(ForcedString);
                      CFRelease(v115);
                      v6 = v139;
                    }

                    goto LABEL_185;
                  }
                }

                v140 = 0;
                v107 = __cficu_udat_toPattern();
                if (v140 <= 0 && v107 <= 768)
                {
                  v108 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v145, v107);
                  v109 = __CFDateFormatterCreateForcedString(v5, v108);
                  v110 = CFStringGetLength(v109);
                  if (v110 <= 1024)
                  {
                    v112 = v110;
                    v113 = 2 * v110;
                    if ((2 * v110) < 0x101)
                    {
                      if (v110 < 1)
                      {
                        v114 = 0;
                      }

                      else
                      {
                        MEMORY[0x1EEE9AC00](v110, v111);
                        v114 = &v137[-((v113 + 15) & 0xFFFFFFFFFFFFFFF0)];
                        bzero(v114, v113);
                      }
                    }

                    else
                    {
                      v114 = malloc_type_malloc(2 * v110, 0x1000040BDFB0063uLL);
                    }

                    if (!CFStringGetCharactersPtr(v109))
                    {
                      v152.location = 0;
                      v152.length = v112;
                      CFStringGetCharacters(v109, v152, v114);
                    }

                    v121 = *(v5 + 16);
                    __cficu_udat_applyPattern();
                    v122 = *(v5 + 48);
                    if (v122)
                    {
                      CFRelease(v122);
                    }

                    v123 = CFGetAllocator(v5);
                    *(v5 + 48) = CFStringCreateCopy(v123, v109);
                    if (v113 >= 0x101)
                    {
                      free(v114);
                    }
                  }

                  CFRelease(v109);
                  CFRelease(v108);
                }

LABEL_185:
                v124 = *(v5 + 56);
                if (v124)
                {
                  CFRelease(v124);
                }

                v125 = *(v5 + 48);
                if (v125)
                {
                  v125 = CFRetain(v125);
                }

                *(v5 + 56) = v125;
                v126 = *(v5 + 64);
                if (v126)
                {
                  __CFDateFormatterSetProperty(v5, @"kCFDateFormatterIsLenientKey", v126, 1);
                }

                v127 = *(v5 + 72);
                if (v127)
                {
                  __CFDateFormatterSetProperty(v5, @"kCFDateFormatterDoesRelativeDateFormattingKey", v127, 1);
                }

                v128 = *(v5 + 96);
                if (v128)
                {
                  __CFDateFormatterSetProperty(v5, @"kCFDateFormatterCalendarKey", v128, 1);
                }

                v129 = *(v5 + 104);
                if (v129)
                {
                  __CFDateFormatterSetProperty(v5, @"kCFDateFormatterCalendarIdentifierKey", v129, 1);
                }

                if (*v10)
                {
                  __CFDateFormatterSetProperty(v5, @"kCFDateFormatterTimeZoneKey", *v10, 1);
                }

                v130 = *(v5 + 112);
                if (v130)
                {
                  __CFDateFormatterSetProperty(v5, @"kCFDateFormatterTwoDigitStartDateKey", v130, 1);
                }

                v131 = *(v5 + 120);
                if (v131)
                {
                  __CFDateFormatterSetProperty(v5, @"kCFDateFormatterDefaultDateKey", v131, 1);
                }

                v132 = *(v5 + 128);
                if (v132)
                {
                  __CFDateFormatterSetProperty(v5, @"kCFDateFormatterGregorianStartDateKey", v132, 1);
                }

                v133 = *(v5 + 296);
                if (v133)
                {
                  __CFDateFormatterSetProperty(v5, @"kCFDateFormatterAmbiguousYearStrategyKey", v133, 1);
                }

                v134 = *(v5 + 304);
                if (v134)
                {
                  __CFDateFormatterSetProperty(v5, @"kCFDateFormatterUsesCharacterDirectionKey", v134, 1);
                }

                v135 = *(v5 + 312);
                if (v135)
                {
                  __CFDateFormatterSetProperty(v5, @"kCFDateFormatterFormattingContextKey", v135, 1);
                }

                goto LABEL_211;
              }

              v144[0] = 0;
            }

            __cficu_ucal_setAttribute();
            goto LABEL_125;
          }

          v144[0] = 0;
        }

        __cficu_ucal_setAttribute();
        goto LABEL_122;
      }

      v144[0] = 0;
      __cficu_ucal_getGregorianChange();
      v144[0] = 0;
    }

    __cficu_ucal_setGregorianChange();
    goto LABEL_119;
  }

LABEL_211:
  objc_autoreleasePoolPop(v6);
  v136 = *MEMORY[0x1E69E9840];
}

void __cficu_ucal_setGregorianChange()
{
  ucal_setGregorianChange();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_setGregorianChange_cold_1();
  }
}

uint64_t __cficu_ucal_close(uint64_t a1)
{
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_close_cold_1();
  }

  return MEMORY[0x1EEE65258](a1);
}

CFTypeRef __CFDateFormatterCreateForcedString(void *a1, const __CFString *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v6 = 0;
    goto LABEL_26;
  }

  v4 = a1[61];
  if (v4)
  {
    v5 = (CFBooleanGetValue(v4) != 0) << 29;
  }

  else
  {
    v5 = 0;
  }

  v7 = a1[60];
  if (v7 && CFBooleanGetValue(v7))
  {
    v5 = 0x40000000;
LABEL_10:
    if (__CFDateFormatterCreateForcedString_onceToken != -1)
    {
      __CFDateFormatterCreateForcedString_cold_1();
    }

    result = xmmword_183306FB0;
    v8 = __CFDateFormatterCreateForcedString_hourCharacters;
    v27.length = CFStringGetLength(a2);
    v27.location = 0;
    if (CFStringFindCharacterFromSet(a2, v8, v27, 0, &result) && result.location != -1)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v9 = a1[3];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = ____CFDateFormatterCreateForcedString_block_invoke_2;
      v14[3] = &unk_1E6D7D900;
      v14[5] = &v20;
      v14[6] = a2;
      v15 = v5;
      v14[4] = &v16;
      v10 = useTemplatePatternGenerator(v9, v14);
      v6 = v21[3];
      if (v10)
      {
        if (v6)
        {
          if (v17[6] > 0)
          {
LABEL_25:
            _Block_object_dispose(&v16, 8);
            _Block_object_dispose(&v20, 8);
            goto LABEL_26;
          }

          goto LABEL_23;
        }
      }

      else if (v6)
      {
LABEL_23:
        CFRelease(v21[3]);
      }

      v6 = CFRetain(a2);
      goto LABEL_25;
    }

    v6 = CFRetain(a2);
LABEL_26:
    v13 = *MEMORY[0x1E69E9840];
    return v6;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  v11 = *MEMORY[0x1E69E9840];

  return CFRetain(a2);
}

void sub_1831297A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void CFDateFormatterSetFormat(CFDateFormatterRef formatter, CFStringRef formatString)
{
  v15[1] = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(formatter);
  v4 = _CFGetNonObjCTypeID(formatter);
  if (v4 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v4);
  }

  ForcedString = __CFDateFormatterCreateForcedString(formatter, formatString);
  Length = CFStringGetLength(ForcedString);
  if (*(formatter + 6) != ForcedString)
  {
    v8 = Length;
    if (Length <= 1024)
    {
      if (*(formatter + 10) != &__kCFBooleanTrue && *(formatter + 9) == &__kCFBooleanTrue)
      {
        __ResetUDateFormat(formatter, 1);
      }

      v9 = 2 * v8;
      if ((2 * v8) < 0x101)
      {
        if (v8 < 1)
        {
          v10 = 0;
        }

        else
        {
          MEMORY[0x1EEE9AC00](Length, v7);
          v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v10, 2 * v8);
        }
      }

      else
      {
        v10 = malloc_type_malloc(2 * v8, 0x1000040BDFB0063uLL);
      }

      if (!CFStringGetCharactersPtr(ForcedString))
      {
        v16.location = 0;
        v16.length = v8;
        CFStringGetCharacters(ForcedString, v16, v10);
      }

      v11 = *(formatter + 2);
      __cficu_udat_applyPattern();
      v12 = *(formatter + 6);
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = CFGetAllocator(formatter);
      *(formatter + 6) = CFStringCreateCopy(v13, ForcedString);
      *(formatter + 10) = &__kCFBooleanTrue;
      if (v9 >= 0x101)
      {
        free(v10);
      }
    }
  }

  if (ForcedString)
  {
    CFRelease(ForcedString);
  }

  v14 = *MEMORY[0x1E69E9840];
}

CFStringRef CFDateFormatterCreateStringWithDate(CFAllocatorRef allocator, CFDateFormatterRef formatter, CFDateRef date)
{
  v5 = allocator;
  if (!allocator)
  {
    v6 = _CFGetTSD(1u);
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = &__kCFAllocatorSystemDefault;
    }
  }

  __CFCheckCFInfoPACSignature(formatter);
  v7 = _CFGetNonObjCTypeID(formatter);
  if (v7 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v7);
  }

  AbsoluteTime = CFDateGetAbsoluteTime(date);

  return CFDateFormatterCreateStringWithAbsoluteTime(v5, formatter, AbsoluteTime);
}

CFStringRef CFDateFormatterCreateStringWithAbsoluteTime(CFAllocatorRef allocator, CFDateFormatterRef formatter, CFAbsoluteTime at)
{
  v4 = allocator;
  v18[192] = *MEMORY[0x1E69E9840];
  if (!allocator)
  {
    v5 = _CFGetTSD(1u);
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v4 = &__kCFAllocatorSystemDefault;
    }
  }

  __CFCheckCFInfoPACSignature(formatter);
  v6 = _CFGetNonObjCTypeID(formatter);
  if (v6 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v6);
  }

  v7 = *(formatter + 2);
  v8 = __cficu_udat_format();
  v9 = v8;
  if (v8 >= 769)
  {
    Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 2 * (v8 + 2), 0x1000040BDFB0063, 0);
    v11 = *(formatter + 2);
    v9 = __cficu_udat_format();
  }

  else
  {
    Typed = 0;
  }

  if (Typed)
  {
    v14 = Typed;
  }

  else
  {
    v14 = &v17;
  }

  if (*(formatter + 38) == &__kCFBooleanTrue && (Identifier = CFLocaleGetIdentifier(*(formatter + 3)), CFLocaleGetLanguageCharacterDirection(Identifier) == kCFLocaleLanguageDirectionRightToLeft))
  {
    *v14 = 8207;
    ++v9;
  }

  else if (Typed)
  {
    v14 = Typed + 1;
  }

  else
  {
    v14 = v18;
  }

  v16 = CFStringCreateWithCharacters(v4, v14, v9);
  if (Typed)
  {
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v16;
}

void __CFDateFormatterDeallocate(void *a1)
{
  if (a1[2])
  {
    __cficu_udat_close();
  }

  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[11];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[12];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[14];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[15];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[16];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[17];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[18];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[19];
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = a1[20];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = a1[21];
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = a1[22];
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = a1[23];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = a1[24];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = a1[25];
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = a1[26];
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = a1[27];
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = a1[28];
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = a1[29];
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = a1[30];
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = a1[31];
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = a1[32];
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = a1[33];
  if (v29)
  {
    CFRelease(v29);
  }

  v30 = a1[34];
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = a1[35];
  if (v31)
  {
    CFRelease(v31);
  }

  v32 = a1[36];
  if (v32)
  {
    CFRelease(v32);
  }

  v33 = a1[37];
  if (v33)
  {
    CFRelease(v33);
  }

  v34 = a1[38];
  if (v34)
  {
    CFRelease(v34);
  }

  v35 = a1[39];
  if (v35)
  {
    CFRelease(v35);
  }

  v36 = a1[40];
  if (v36)
  {
    CFRelease(v36);
  }

  v37 = a1[42];
  if (v37)
  {
    CFRelease(v37);
  }

  v38 = a1[43];
  if (v38)
  {
    CFRelease(v38);
  }

  v39 = a1[48];
  if (v39)
  {
    CFRelease(v39);
  }

  v40 = a1[49];
  if (v40)
  {
    CFRelease(v40);
  }

  v41 = a1[41];
  if (v41)
  {
    CFRelease(v41);
  }

  v42 = a1[44];
  if (v42)
  {
    CFRelease(v42);
  }

  v43 = a1[50];
  if (v43)
  {
    CFRelease(v43);
  }

  v44 = a1[45];
  if (v44)
  {
    CFRelease(v44);
  }

  v45 = a1[46];
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = a1[47];
  if (v46)
  {
    CFRelease(v46);
  }

  v47 = a1[51];
  if (v47)
  {
    CFRelease(v47);
  }

  v48 = a1[52];
  if (v48)
  {
    CFRelease(v48);
  }

  v49 = a1[53];
  if (v49)
  {
    CFRelease(v49);
  }

  v50 = a1[54];
  if (v50)
  {
    CFRelease(v50);
  }

  v51 = a1[55];
  if (v51)
  {
    CFRelease(v51);
  }

  v52 = a1[57];
  if (v52)
  {
    CFRelease(v52);
  }

  v53 = a1[58];
  if (v53)
  {
    CFRelease(v53);
  }

  v54 = a1[59];
  if (v54)
  {
    CFRelease(v54);
  }

  v55 = a1[60];
  if (v55)
  {
    CFRelease(v55);
  }

  v56 = a1[61];
  if (v56)
  {
    CFRelease(v56);
  }

  v57 = a1[62];
  if (v57)
  {
    CFRelease(v57);
  }

  v58 = a1[63];
  if (v58)
  {
    CFRelease(v58);
  }

  v59 = a1[64];
  if (v59)
  {
    CFRelease(v59);
  }

  v60 = a1[65];
  if (v60)
  {

    CFRelease(v60);
  }
}

uint64_t _getFlags(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

  v1 = 0;
  v2 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ a1;
  v4 = v3 & 7;
  do
  {
    if (v4 == *(MEMORY[0x1E69E5900] + v1))
    {
      break;
    }

    ++v1;
  }

  while (v1 != 7);
  if ((~v1 & 7) == 0 && ((v1 | v3) & 0x7F80000000000000) == 0x600000000000000)
  {
    v5 = v4 == 7;
    v6 = 0xFFFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = 0xFFFFFFFFFFFFFLL;
    }

    v7 = __CFGetSignatureROMEntryAtIndex(v6 & (v3 >> 3)) + 2;
  }

  else
  {
LABEL_12:
    v7 = (a1 + 24);
  }

  return *v7;
}

uint64_t __NSI0(uint64_t result, double *a2, int a3, double *a4, int a5)
{
  v5 = a5 + (a3 << 8);
  if ((*(result + 34) & 0x200) != 0)
  {
    if (v5 > 2055)
    {
      if (v5 <= 4099)
      {
        if (v5 != 2056 && v5 != 2064)
        {
          goto LABEL_85;
        }

LABEL_44:
        v9 = *a2;
LABEL_46:
        *a4 = v9;
        return result;
      }

      if (v5 != 4100)
      {
        if (v5 != 4104 && v5 != 4112)
        {
          goto LABEL_85;
        }

        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (v5 > 1039)
    {
      if (v5 != 1040)
      {
        if (v5 != 2052)
        {
          goto LABEL_85;
        }

LABEL_41:
        v8 = *a2;
LABEL_61:
        *a4 = v8;
        return result;
      }
    }

    else
    {
      if (v5 == 1028)
      {
        v8 = *a2;
        goto LABEL_61;
      }

      if (v5 != 1032)
      {
        goto LABEL_85;
      }
    }

    v9 = *a2;
    goto LABEL_46;
  }

  if ((*(result + 34) & 0x100) != 0)
  {
    if (v5 <= 1024)
    {
      if (v5 <= 512)
      {
        if (v5 > 259)
        {
          if (v5 != 260)
          {
            if (v5 == 264)
            {
              *&v7 = *a2;
              goto LABEL_74;
            }

            goto LABEL_85;
          }

          LODWORD(v11) = *a2;
          goto LABEL_84;
        }

        if (v5 != 257)
        {
          if (v5 == 258)
          {
            LOWORD(v6) = *a2;
            goto LABEL_55;
          }

          goto LABEL_85;
        }

LABEL_59:
        LOBYTE(v10) = *a2;
LABEL_76:
        *a4 = LOBYTE(v10);
        return result;
      }

      if (v5 > 515)
      {
        if (v5 != 516)
        {
          if (v5 == 520)
          {
            *&v7 = *a2;
            goto LABEL_74;
          }

          goto LABEL_85;
        }

        LODWORD(v11) = *a2;
        goto LABEL_84;
      }

LABEL_52:
      if (v5 != 513)
      {
        if (v5 == 514)
        {
          LOWORD(v6) = *a2;
          goto LABEL_55;
        }

        goto LABEL_85;
      }

      goto LABEL_59;
    }

    if (v5 <= 2048)
    {
      if (v5 > 1027)
      {
        if (v5 != 1028)
        {
          if (v5 == 1032)
          {
            *&v7 = *a2;
            goto LABEL_74;
          }

          goto LABEL_85;
        }

LABEL_79:
        v11 = *a2;
        goto LABEL_84;
      }

LABEL_32:
      if (v5 == 1025)
      {
        v10 = *a2;
        goto LABEL_76;
      }

      if (v5 == 1026)
      {
        v6 = *a2;
        goto LABEL_55;
      }

      goto LABEL_85;
    }

LABEL_35:
    if (v5 <= 2051)
    {
      if (v5 == 2049)
      {
        *a4 = *a2;
        return result;
      }

      if (v5 == 2050)
      {
        *a4 = *a2;
        return result;
      }

      goto LABEL_85;
    }

    if (v5 == 2052)
    {
      *a4 = *a2;
      return result;
    }

    if (v5 != 2056)
    {
      goto LABEL_85;
    }

    v7 = *a2;
    goto LABEL_74;
  }

  if (v5 > 1024)
  {
    if (v5 <= 2048)
    {
      if (v5 > 1027)
      {
        if (v5 != 1028)
        {
          if (v5 != 1032)
          {
            goto LABEL_85;
          }

          *&v7 = *a2;
LABEL_74:
          *a4 = v7;
          return result;
        }

        goto LABEL_79;
      }

      goto LABEL_32;
    }

    goto LABEL_35;
  }

  if (v5 > 512)
  {
    if (v5 > 515)
    {
      if (v5 != 516)
      {
        if (v5 != 520)
        {
          goto LABEL_85;
        }

        *&v7 = *a2;
        goto LABEL_74;
      }

      LODWORD(v11) = *a2;
LABEL_84:
      *a4 = v11;
      return result;
    }

    goto LABEL_52;
  }

  if (v5 <= 259)
  {
    if (v5 != 257)
    {
      if (v5 == 258)
      {
        LOWORD(v6) = *a2;
LABEL_55:
        *a4 = LOWORD(v6);
        return result;
      }

      goto LABEL_85;
    }

    goto LABEL_59;
  }

  if (v5 == 260)
  {
    LODWORD(v11) = *a2;
    goto LABEL_84;
  }

  if (v5 == 264)
  {
    *&v7 = *a2;
    goto LABEL_74;
  }

LABEL_85:
  __break(1u);
  return result;
}

uint64_t __NSMS6(uint64_t a1, uint64_t a2)
{
  v2 = a1 != 0;
  v3 = a2 != 0;
  if (!(a1 | a2))
  {
    return 1;
  }

  v4 = a2;
  v5 = a1;
  while (1)
  {
    result = 0;
    if (!v2 || !v3)
    {
      break;
    }

    if (*(v5 + 36) != 64 || *(v4 + 36) != 64)
    {
      result = __NSMS6(*v5, *v4);
      if (result)
      {
        result = __NSMS6(*(v5 + 8), *(v4 + 8));
        if (result)
        {
          return strcmp((v5 + 37), (v4 + 37)) == 0;
        }
      }

      return result;
    }

    v7 = *(v5 + 34);
    v8 = *(v4 + 34);
    if (((v8 ^ v7) & 0x8000) != 0)
    {
      return 0;
    }

    v9 = *v5;
    if (*v5)
    {
      v10 = *v4;
      if (*v4)
      {
        if ((v8 & v7 & 0x8000) != 0)
        {
          if ((__NSMS6(v9, v10) & 1) == 0)
          {
            return 0;
          }
        }

        else if (strcmp((v9 + 37), (v10 + 37)))
        {
          return 0;
        }
      }
    }

    v5 = *(v5 + 8);
    v4 = *(v4 + 8);
    v2 = v5 != 0;
    v3 = v4 != 0;
    if (!(v5 | v4))
    {
      return 1;
    }
  }

  return result;
}

unint64_t *_CFURLCreateWithRangesAndFlags(CFStringRef theString, void *a2, unsigned int a3, unsigned int a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  if ((a4 & 1) == 0)
  {
    goto LABEL_14;
  }

  v13 = a2[1];
  switch(v13)
  {
    case 5:
      HasPrefix = CFStringHasPrefix(theString, @"https");
      v15 = 0x40000000;
      break;
    case 4:
      if (CFStringHasPrefix(theString, @"http"))
      {
        v16 = 0x20000000;
LABEL_13:
        v9 = v16 & 0xE0000000 | v9 & 0x1FFFFFFF;
        goto LABEL_14;
      }

      if (CFStringHasPrefix(theString, @"file"))
      {
        v16 = 1610612736;
        goto LABEL_13;
      }

      HasPrefix = CFStringHasPrefix(theString, @"data");
      v15 = 0x80000000;
      break;
    case 3:
      HasPrefix = CFStringHasPrefix(theString, @"ftp");
      v15 = -1610612736;
      break;
    default:
      goto LABEL_14;
  }

  v17 = v15 & 0xE0000000 | v9 & 0x1FFFFFFF;
  if (HasPrefix)
  {
    v9 = v17;
  }

LABEL_14:
  v18 = 16 * a3;
  Instance = _CFRuntimeCreateInstance(0, 0x1DuLL, v18 + 40, 0, a5, a6, a7, a8);
  v20 = Instance;
  if (Instance)
  {
    *(Instance + 4) = v9;
    *(Instance + 5) = 134217984;
    memcpy(Instance + 7, a2, v18);
    atomic_store(CFStringCreateCopy(0, theString), v20 + 3);
    if (a5)
    {
      v21 = CFRetain(a5);
    }

    else
    {
      v21 = 0;
    }

    v20[4] = v21;
  }

  return v20;
}

uint64_t __CFSearchSignatureROM(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 <= 1024)
  {
    v4 = __CFStrHashEightBit2(a1, a2);
    v5 = MethodSignatureROMTableHashData[v4 & 0x3FFF];
    v2 = (v5 >> 3) - 1;
    v6 = v5 & 7;
    v7 = (&MethodSignatureROMTable + 3 * (MethodSignatureROMTableHashData[v4 & 0x3FFF] >> 3) + 1);
    while (v6)
    {
      v8 = *v7;
      v7 += 3;
      ++v2;
      --v6;
      if (!strcmp(a1, v8))
      {
        return v2;
      }
    }
  }

  return -1;
}

__n128 *___forwarding___(__n128 *a1, uint64_t a2)
{
  v82[32] = *MEMORY[0x1E69E9840];
  v4 = a1->n128_u64[0];
  v5 = a1->n128_u64[1];
  v6 = MEMORY[0x1E69E5910];
  v7 = MEMORY[0x1E69E5900];
  if ((a1->n128_u64[0] & 0x8000000000000000) != 0)
  {
    v8 = 0;
    v9 = *MEMORY[0x1E69E5910];
    if ((~v4 & 0xC000000000000007) == 0)
    {
      LOBYTE(v9) = 0;
    }

    v10 = (v9 ^ v4) & 7;
    while (v10 != *(MEMORY[0x1E69E5900] + v8))
    {
      if (++v8 == 7)
      {
        goto LABEL_10;
      }
    }

    if (!v8)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  while (1)
  {
    Class = object_getClass(v4);
    Name = class_getName(Class);
    if (!class_respondsToSelector(Class, sel_forwardingTargetForSelector_))
    {
      break;
    }

    v13 = [v4 forwardingTargetForSelector:v5];
    if (!v13 || v13 == v4)
    {
      break;
    }

    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    v14 = 0;
    v15 = *v6;
    if ((~v13 & 0xC000000000000007) == 0)
    {
      LOBYTE(v15) = 0;
    }

    v16 = (v15 ^ v13) & 7;
    while (v16 != *(v7 + v14))
    {
      if (++v14 == 7)
      {
        goto LABEL_19;
      }
    }

    if (v14)
    {
LABEL_19:
      v17 = 0;
      a1->n128_u64[0] = v13;
      goto LABEL_20;
    }

    v4 = v13;
LABEL_9:
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      ___forwarding____cold_1(v4, a1, v82);
      v17 = v82[0];
      goto LABEL_20;
    }
  }

  if (!strncmp(Name, "_NSZombie_", 0xAuLL))
  {
    ___forwarding____cold_6(v4, Name, v5);
  }

  if (!class_respondsToSelector(Class, sel_methodSignatureForSelector_))
  {
    Superclass = class_getSuperclass(Class);
    object_getClassName(v4);
    if (Superclass)
    {
      CFLog(4, @"*** NSForwarding: warning: object %p of class '%s' does not implement methodSignatureForSelector: -- trouble ahead", v60, v61, v62, v63, v64, v65, v4);
    }

    else
    {
      object_getClassName(v4);
      CFLog(4, @"*** NSForwarding: warning: object %p of class '%s' does not implement methodSignatureForSelector: -- did you forget to declare the superclass of '%s'?", v66, v67, v68, v69, v70, v71, v4);
    }

LABEL_61:
    v72 = sel_getName(v5);
    if (sel_getUid(v72) != v5)
    {
      CFLog(4, @"*** NSForwarding: warning: selector (%p) for message '%s' does not match selector known to Objective C runtime (%p)-- abort", v73, v74, v75, v76, v77, v78, v5);
    }

    v79 = object_getClass(v4);
    if (class_respondsToSelector(v79, sel_doesNotRecognizeSelector_))
    {
      [v4 doesNotRecognizeSelector:v5];
      __break(1u);
    }

    ___forwarding____cold_5(v4);
  }

  v20 = [v4 methodSignatureForSelector:v5];
  if (!v20)
  {
    goto LABEL_61;
  }

  v21 = v20;
  v22 = [v20 _frameDescriptor];
  if (((*(*v22 + 34) >> 6) & 1) != a2)
  {
    v23 = sel_getName(v5);
    *(*v22 + 34);
    CFLog(4, @"*** NSForwarding: warning: method signature and compiler disagree on struct-return-edness of '%s'.  Signature thinks it does%s return a struct, and compiler thinks it does%s.", v24, v25, v26, v27, v28, v29, v23);
  }

  v30 = object_getClass(v4);
  v31 = class_respondsToSelector(v30, sel__forwardStackInvocation_);
  v32 = v31;
  if (!v31)
  {
    v48 = object_getClass(v4);
    if (!class_respondsToSelector(v48, sel_forwardInvocation_))
    {
      ___forwarding____cold_2(v82, v4);
    }

    v36 = [NSInvocation _invocationWithMethodSignature:v21 frame:a1];
    [*(v36 + 3) numberOfArguments];
    v49 = *(v36 + 14);
    v50 = *(v36 + 3);
    objc_opt_class();
    v51 = [*(v36 + 3) frameLength];
    if (v51)
    {
      if ((v51 & 7) != 0)
      {
        ___forwarding____cold_3();
      }

      v53 = *(v36 + 1);
      v54 = 8;
      do
      {
        v55 = *v53++;
        --v54;
      }

      while (v54);
    }

    if (v52 == *(v36 + 6))
    {
      [v4 forwardInvocation:v36];
      v33 = 0;
      goto LABEL_44;
    }

LABEL_59:
    _NSIPoisoned();
  }

  v81 = v31;
  objc_opt_self();
  v33 = [v21 frameLength] + 320;
  InstanceSize = class_getInstanceSize(NSInvocation);
  v36 = &v80[-((MEMORY[0x1EEE9AC00](InstanceSize, v35) + 15) & 0xFFFFFFFFFFFFFFF0)];
  bzero(v36, InstanceSize);
  bzero(v36, InstanceSize);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v80[-v39];
  bzero(&v80[-v39], v33);
  objc_constructInstance(NSInvocation, v36);
  [(NSInvocation *)v36 _initWithMethodSignature:v21 frame:a1 buffer:v40 size:v33];
  [*(v36 + 3) numberOfArguments];
  v41 = *(v36 + 14);
  v42 = *(v36 + 3);
  objc_opt_class();
  v43 = [*(v36 + 3) frameLength];
  if (v43)
  {
    if ((v43 & 7) != 0)
    {
      ___forwarding____cold_4();
    }

    v45 = *(v36 + 1);
    v46 = 8;
    v32 = v81;
    do
    {
      v47 = *v45++;
      --v46;
    }

    while (v46);
  }

  else
  {
    v32 = v81;
  }

  if (v44 != *(v36 + 6))
  {
    goto LABEL_59;
  }

  [v4 _forwardStackInvocation:v36];
LABEL_44:
  if (v36[60] && (*(*v22 + 34) & 0x80) != 0)
  {
    v56 = *v22;
    memmove(*(a1->n128_u64 + *(v56 + 28) + *(v56 + 32)), *(*(v36 + 1) + *(v56 + 28) + *(v56 + 32)), *(*v56 + 16));
  }

  v57 = [v21 methodReturnType];
  v58 = *v57;
  if (v58 == 118 || v58 == 86 && v57[1] == 118)
  {
    if (v32)
    {
    }

    v17 = &___forwarding____placeholder;
  }

  else
  {
    v17 = *(v36 + 2);
    if (v32)
    {
      v17 = [+[NSData dataWithBytes:length:](NSData bytes:*(v36 + 2)];
    }
  }

LABEL_20:
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t __invoking___(uint64_t (*a1)(unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, __n128, __n128, __n128, __n128, __n128, __n128, __n128, __n128), uint64_t a2, __n128 *a3, uint64_t a4)
{
  v27 = a2;
  v4 = a4 - 224;
  v5 = a3 + 14;
  v6 = ((&v27 - a4 + 224) & 0xFFFFFFFFFFFFFFF0);
  while (v4)
  {
    v7 = v5->n128_u64[0];
    v5 = (v5 + 8);
    v4 -= 8;
    *v6++ = v7;
  }

  v8 = a3[4].n128_u64[0];
  result = a1(a3->n128_u64[0], a3->n128_u64[1], a3[1].n128_u64[0], a3[1].n128_u64[1], a3[2].n128_u64[0], a3[2].n128_u64[1], a3[3].n128_u64[0], a3[3].n128_u64[1], a3[5], a3[6], a3[7], a3[8], a3[9], a3[10], a3[11], a3[12]);
  v10 = v27;
  *(v27 + 192) = v11;
  *(v10 + 176) = v12;
  *(v10 + 160) = v13;
  *(v10 + 144) = v14;
  *(v10 + 128) = v15;
  *(v10 + 112) = v16;
  *(v10 + 96) = v17;
  *(v10 + 80) = v18;
  *(v10 + 64) = v19;
  *(v10 + 56) = v20;
  *(v10 + 48) = v21;
  *(v10 + 40) = v22;
  *(v10 + 32) = v23;
  *(v10 + 24) = v24;
  *(v10 + 16) = v25;
  *(v10 + 8) = v26;
  *v10 = result;
  return result;
}

_UNKNOWN **__CFGetSignatureROMEntryAtIndex(unint64_t a1)
{
  if (a1 >> 2 >= 0xD35)
  {
    __CFGetSignatureROMEntryAtIndex_cold_1();
  }

  return &MethodSignatureROMTable + 3 * a1;
}

uint64_t _getFrameDescriptor(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

  v1 = 0;
  v2 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ a1;
  v4 = v3 & 7;
  do
  {
    if (v4 == *(MEMORY[0x1E69E5900] + v1))
    {
      break;
    }

    ++v1;
  }

  while (v1 != 7);
  if ((~v1 & 7) == 0 && ((v1 | v3) & 0x7F80000000000000) == 0x600000000000000)
  {
    v5 = v4 == 7;
    v6 = 0xFFFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = 0xFFFFFFFFFFFFFLL;
    }

    v7 = __CFGetSignatureROMEntryAtIndex(v6 & (v3 >> 3));
  }

  else
  {
LABEL_12:
    v7 = (a1 + 8);
  }

  return *v7;
}

void __NSICreateBackingForArgumentIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((*(a2 + 34) & 0x80) != 0)
  {
    v8 = *(a1 + 40);
    if (!v8)
    {
      Mutable = CFDataCreateMutable(&__kCFAllocatorSystemDefault, [*(a1 + 24) numberOfArguments] + 1);
      if (!Mutable)
      {
        __NSICreateBackingForArgumentIfNeeded_cold_2();
      }

      v10 = Mutable;
      *(a1 + 40) = CFDataGetMutableBytePtr(Mutable);
      v11 = *(a1 + 32);
      if (!v11)
      {
        v11 = objc_opt_new();
        *(a1 + 32) = v11;
        if (!v11)
        {
          __NSICreateBackingForArgumentIfNeeded_cold_1();
        }
      }

      [v11 addObject:v10];
      CFRelease(v10);
      v8 = *(a1 + 40);
    }

    v12 = v8 + a3;
    if ((*(v8 + a3 + 1) & 1) == 0)
    {
      v13 = CFDataCreateMutable(&__kCFAllocatorSystemDefault, 0);
      v14 = v13;
      if (a4)
      {
        v15 = *(*(a1 + 8) + *(a2 + 28) + *(a2 + 32));
        if (v15)
        {
          CFDataAppendBytes(v13, v15, *(*a2 + 16));
LABEL_14:
          v17 = *(a1 + 32);
          if (!v17)
          {
            v17 = objc_opt_new();
            *(a1 + 32) = v17;
          }

          [v17 addObject:v14];
          *(*(a1 + 8) + *(a2 + 28)) = CFDataGetMutableBytePtr(v14);
          *(v12 + 1) = 1;
          return;
        }

        v16 = *(*a2 + 16);
      }

      else
      {
        v16 = *(*a2 + 16);
      }

      CFDataSetLength(v13, v16);
      goto LABEL_14;
    }
  }
}

uint64_t __NSI2(uint64_t result, uint64_t a2, double *a3, char a4)
{
  if (!result)
  {
    return result;
  }

  v5 = a3;
  v7 = result;
  while (1)
  {
    v8 = (a4 & 1) != 0 ? *(v7 + 28) + *(v7 + 32) : *(v7 + 20);
    v9 = *(v7 + 34);
    if ((v9 & 0x80) == 0)
    {
      break;
    }

    a4 = 0;
    v7 = *v7;
    a2 = *(a2 + v8);
    if (!v7)
    {
      return result;
    }
  }

  if ((*(v7 + 34) & 0x400) == 0 && (v9 & 0x1800) != 0x800)
  {
    if ((*(v7 + 34) & 0x2000) != 0)
    {
      *(a2 + v8) = *(a3 + *(v7 + 20));
      return result;
    }

    if ((v9 & 0x1800) == 0x1800)
    {
      LOWORD(v10) = 8;
      if ((a4 & 1) == 0)
      {
LABEL_14:
        v11 = *(v7 + 20);
        LOWORD(v12) = *(v7 + 16);
LABEL_22:
        v14 = (a2 + v11);
        v15 = v12;
        bzero(v14, v12);

        return __NSI0(v7, v5, v10, v14, v15);
      }
    }

    else
    {
      v10 = *(v7 + 16);
      v5 = (a3 + *(v7 + 20));
      if ((a4 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v11 = *(v7 + 28) + *(v7 + 32);
    v12 = *(v7 + 24) + *(v7 + 33);
    goto LABEL_22;
  }

  v13 = *v7;
  if (!v13)
  {
    v16 = "array";
    if ((v9 & 0x400) != 0)
    {
      v16 = "struct";
    }

    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s with unknown contents found while setting argument", v16);
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17), 0];
    objc_exception_throw(v18);
  }

  do
  {
    result = __NSI2(v13, a2, v5, a4 & 1);
    v13 = *(v13 + 8);
  }

  while (v13);
  return result;
}

uint64_t __NSI1(uint64_t result, uint64_t a2, char *a3, char a4)
{
  if (result)
  {
    v5 = a3;
    v7 = result;
    while (1)
    {
      v8 = (a4 & 1) != 0 ? *(v7 + 28) + *(v7 + 32) : *(v7 + 20);
      v9 = *(v7 + 34);
      if ((v9 & 0x80) == 0)
      {
        break;
      }

      a4 = 0;
      v7 = *v7;
      a2 = *(a2 + v8);
      if (!v7)
      {
        return result;
      }
    }

    if ((*(v7 + 34) & 0x400) != 0 || (v9 & 0x1800) == 0x800)
    {
      v12 = *v7;
      if (!v12)
      {
        v15 = "array";
        if ((v9 & 0x400) != 0)
        {
          v15 = "struct";
        }

        v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s with unknown contents found while getting argument", v15);
        v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16), 0];
        objc_exception_throw(v17);
      }

      do
      {
        result = __NSI1(v12, a2, v5, a4 & 1);
        v12 = *(v12 + 8);
      }

      while (v12);
    }

    else if ((*(v7 + 34) & 0x2000) != 0)
    {
      *&a3[*(v7 + 20)] = *(a2 + v8);
    }

    else
    {
      if (a4)
      {
        v10 = *(v7 + 28) + *(v7 + 32);
        v11 = *(v7 + 24) + *(v7 + 33);
      }

      else
      {
        v11 = *(v7 + 16);
        v10 = *(v7 + 20);
      }

      v13 = (a2 + v10);
      if ((v9 & 0x1800) == 0x1800)
      {
        LOWORD(v14) = 8;
      }

      else
      {
        v14 = *(v7 + 16);
        v5 = &a3[*(v7 + 20)];
      }

      bzero(v5, v14);

      return __NSI0(v7, v13, v11, v5, v14);
    }
  }

  return result;
}

uint64_t __CFRunLoopDoSource1(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v2;
  v21 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  CFRetain(v10);
  pthread_mutex_unlock((v12 + 16));
  pthread_mutex_unlock((v13 + 16));
  pthread_mutex_lock((v10 + 16));
  v14 = atomic_load((v10 + 8));
  if ((v14 & 8) != 0)
  {
    atomic_store(0, (v10 + 88));
    pthread_mutex_unlock((v10 + 16));
    v16 = *(v10 + 168);
    v17 = *(v10 + 112);
    if (v13 && !*(v13 + 2713))
    {
      v18 = 0;
    }

    else
    {
      v18 = _CFAutoreleasePoolPush();
    }

    kdebug_trace();
    __CFRUNLOOP_IS_CALLING_OUT_TO_A_SOURCE1_PERFORM_FUNCTION__(v16, v8, v6, v4, v17);
    kdebug_trace();
    __CFRunLoopPerCalloutARPEnd(v18);
    if ((__CF_FORK_STATE & 2) == 0)
    {
      __CF_USED();
    }

    if (__CF_FORK_STATE)
    {
      __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
    }

    v15 = 1;
  }

  else
  {
    pthread_mutex_unlock((v10 + 16));
    v15 = 0;
  }

  CFRelease(v10);
  pthread_mutex_lock((v13 + 16));
  pthread_mutex_lock((v12 + 16));
  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t (*__CFRUNLOOP_IS_CALLING_OUT_TO_A_SOURCE1_PERFORM_FUNCTION__(uint64_t (*result)(uint64_t, uint64_t, __objc2_class **, uint64_t), uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t, uint64_t, __objc2_class **, uint64_t), uint64_t a5))(uint64_t, uint64_t, __objc2_class **, uint64_t)
{
  if (result)
  {
    result = result(a2, a3, &__kCFAllocatorSystemDefault, a5);
    *a4 = result;
  }

  return result;
}

void *__CFRunLoopPerCalloutARPEnd(void *result)
{
  v2 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = _CFAutoreleasePoolPop(result);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void __CFRunLoopCollectSources0(CFTypeRef cf, CFTypeRef *a2)
{
  if (!*(cf + 13))
  {
    v3 = atomic_load(cf + 1);
    if ((v3 & 8) != 0)
    {
      if (atomic_load_explicit(cf + 11, memory_order_acquire))
      {
        if (*a2)
        {
          v5 = CFGetTypeID(*a2);
          v6 = *a2;
          if (v5 == 46)
          {
            Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
            *a2 = Mutable;
            CFArrayAppendValue(Mutable, v6);
            CFArrayAppendValue(*a2, cf);

            CFRelease(v6);
          }

          else
          {
            v8 = *a2;

            CFArrayAppendValue(v8, cf);
          }
        }

        else
        {
          *a2 = CFRetain(cf);
        }
      }
    }
  }
}

void __CFRunLoopDoObservers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v6 = *(a2 + 112);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v9 = Count;
      v37 = &v35;
      MEMORY[0x1EEE9AC00](Count, v8);
      v12 = &v35 - v11;
      if (v10 >= 0x200)
      {
        v13 = 512;
      }

      else
      {
        v13 = v10;
      }

      bzero(&v35 - v11, v13);
      v36 = v12;
      if (v9 >= 0x401)
      {
        v12 = malloc_type_malloc(8 * v9, 0x2004093837F09uLL);
      }

      v14 = 0;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 112), i);
        if ((ValueAtIndex[12] & a3) != 0)
        {
          v17 = atomic_load(ValueAtIndex + 1);
          if ((v17 & 8) != 0)
          {
            v18 = atomic_load(ValueAtIndex + 1);
            if ((v18 & 1) == 0 || (v19 = atomic_load(ValueAtIndex + 1), (v19 & 4) != 0))
            {
              *&v12[8 * v14++] = CFRetain(ValueAtIndex);
            }
          }
        }
      }

      if (v14 > 0)
      {
        v43 = *(a1 + 84);
        pthread_mutex_unlock((a2 + 16));
        pthread_mutex_unlock((a1 + 16));
        v20 = 0;
        v38 = v14;
        v39 = v14;
        v40 = v12;
        v41 = a2;
        do
        {
          v21 = *&v12[8 * v20];
          pthread_mutex_lock((v21 + 16));
          v22 = atomic_load((v21 + 8));
          if ((v22 & 8) != 0)
          {
            v23 = atomic_load((v21 + 8));
            v42 = v23;
            v24 = *(v21 + 112);
            v25 = *(v21 + 128);
            if (v24 == __CFRunLoopObserverWithHandlerPerform && *(v25 + 16))
            {
              v26 = *(v25 + 16);
            }

            v27 = *(v21 + 104);
            atomic_load((v21 + 8));
            v28 = atomic_load((v21 + 8));
            v29 = v28;
            do
            {
              atomic_compare_exchange_strong((v21 + 8), &v29, v28 | 1);
              v30 = v29 == v28;
              v28 = v29;
            }

            while (!v30);
            pthread_mutex_unlock((v21 + 16));
            kdebug_trace();
            if (a1 && !*(a1 + 2713))
            {
              v31 = 0;
            }

            else
            {
              v31 = _CFAutoreleasePoolPush();
            }

            v14 = v39;
            __CFRUNLOOP_IS_CALLING_OUT_TO_AN_OBSERVER_CALLBACK_FUNCTION__(v24, v21, a3, v25);
            __CFRunLoopPerCalloutARPEnd(v31);
            kdebug_trace();
            if ((v42 & 2) == 0)
            {
              CFRunLoopObserverInvalidate(v21);
            }

            v32 = atomic_load((v21 + 8));
            v33 = v32;
            v12 = v40;
            a2 = v41;
            do
            {
              atomic_compare_exchange_strong((v21 + 8), &v33, v32 & 0xFFFFFFFFFFFFFFFELL);
              v30 = v33 == v32;
              v32 = v33;
            }

            while (!v30);
          }

          else
          {
            pthread_mutex_unlock((v21 + 16));
          }

          CFRelease(v21);
          ++v20;
        }

        while (v20 != v14);
        pthread_mutex_lock((a1 + 16));
        pthread_mutex_lock((a2 + 16));
      }

      if (v12 != v36)
      {
        free(v12);
      }
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

CFRunLoopRef CFRunLoopGetMain(void)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (CFRunLoopGetMain_onceToken != -1)
  {
    CFRunLoopGetMain_cold_1();
  }

  return _MergedGlobals_1;
}

double __CFRunLoopServiceMachPort(mach_port_name_t rcv_name, mach_msg_header_t **a2, mach_port_t *a3, mach_msg_timeout_t timeout, voucher_mach_msg_state_t *a5, id *a6)
{
  v11 = 0;
  v12 = 3072;
  while (1)
  {
    v13 = *a2;
    v13->msgh_remote_port = 0;
    v13->msgh_local_port = rcv_name;
    v13->msgh_bits = 0;
    v13->msgh_size = v12;
    v13->msgh_id = 0;
    if (timeout == -1)
    {
      v14 = 117442566;
    }

    else
    {
      v14 = 117442822;
    }

    v15 = mach_msg(v13, v14, 0, v13->msgh_size, rcv_name, timeout, 0);
    voucher_mach_msg_revert(*a5);
    v16 = voucher_mach_msg_adopt(v13);
    *a5 = v16;
    if (a6)
    {
      if (v16 == -1)
      {
        v18 = 0;
      }

      else
      {
        v18 = voucher_copy();
      }

      *a6 = v18;
    }

    if (v15 != 268451844)
    {
      break;
    }

    msgh_size = v13->msgh_size;
    if (v11)
    {
      v20 = *a2;
    }

    else
    {
      v20 = 0;
      *a2 = 0;
    }

    v12 = (msgh_size + 71) & 0xFFFFFFFC;
    *a2 = __CFSafelyReallocateTyped(v20, (msgh_size + 68 + 3) & 0x1FFFFFFFCLL, 2696643642, 0);
    v11 = 1;
    if (a6)
    {
      if (*a6)
      {
      }
    }
  }

  if (v15 == 268451843)
  {
    if (v11)
    {
      free(v13);
    }

    msgh_local_port = 0;
    *a2 = 0;
  }

  else
  {
    if (v15)
    {
      __CFRunLoopServiceMachPort_cold_1(v15);
    }

    msgh_local_port = v13->msgh_local_port;
  }

  *a3 = msgh_local_port;
  return result;
}

CFAbsoluteTime CFAbsoluteTimeGetCurrent(void)
{
  v3 = *MEMORY[0x1E69E9840];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  v0 = *MEMORY[0x1E69E9840];
  return __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
}

uint64_t __CFRunLoopDoSources0(uint64_t a1, uint64_t a2, int a3)
{
  cf[1] = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  cf[0] = 0;
  v6 = *(a2 + 96);
  if (v6 && CFSetGetCount(v6) >= 1 && (CFSetApplyFunction(*(a2 + 96), __CFRunLoopCollectSources0, cf), cf[0]))
  {
    pthread_mutex_unlock((a2 + 16));
    pthread_mutex_unlock((a1 + 16));
    if (CFGetTypeID(cf[0]) == 46)
    {
      v7 = __CFRunLoopDoSource0(a1, cf[0]);
    }

    else
    {
      Count = CFArrayGetCount(cf[0]);
      v15.location = 0;
      v15.length = Count;
      CFArraySortValues(cf[0], v15, __CFRunLoopSourceComparator, 0);
      if (Count < 1)
      {
        v7 = 0;
      }

      else
      {
        v9 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(cf[0], v9);
          v11 = __CFRunLoopDoSource0(a1, ValueAtIndex);
          v7 = v11;
          if (a3)
          {
            if (v11)
            {
              break;
            }
          }

          if (Count == ++v9)
          {
            goto LABEL_19;
          }
        }

        v7 = 1;
      }
    }

LABEL_19:
    CFRelease(cf[0]);
    pthread_mutex_lock((a1 + 16));
    pthread_mutex_lock((a2 + 16));
  }

  else
  {
    v7 = 0;
  }

  kdebug_trace();
  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

CFRunLoopMode CFRunLoopCopyCurrentMode(CFRunLoopRef rl)
{
  __CFCheckCFInfoPACSignature(rl);
  v2 = _CFGetNonObjCTypeID(rl);
  if (v2 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((rl + 16));
  v3 = *(rl + 332);
  if (v3)
  {
    v4 = CFRetain(*(v3 + 80));
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock((rl + 16));
  return v4;
}

BOOL _CFRunLoopCurrentIsMain()
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v0 = pthread_main_thread_np();
  return v0 == pthread_self();
}

unint64_t __CFTimeIntervalToTSR(double a1)
{
  if (CFDateGetTypeID_initOnce != -1)
  {
    __CFTimeIntervalToTSR_cold_1();
  }

  if (*&__CFTSRRate * a1 <= 4.61168602e18)
  {
    return (*&__CFTSRRate * a1);
  }

  else
  {
    return 0x3FFFFFFFFFFFFFFFLL;
  }
}

double __CFTSRToTimeInterval(unint64_t a1)
{
  if (CFDateGetTypeID_initOnce != -1)
  {
    __CFTSRToTimeInterval_cold_1();
  }

  return *&__CF1_TSRRate * a1;
}

BOOL isEqualToTaggedPointer(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  __s1[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E5910];
  v5 = *MEMORY[0x1E69E5910];
  if ((~a2 & 0xC000000000000007) != 0)
  {
    v6 = *MEMORY[0x1E69E5910];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 ^ a2;
  do
  {
    if ((v7 & 7) == *(MEMORY[0x1E69E5900] + v3))
    {
      break;
    }

    ++v3;
  }

  while (v3 != 7);
  v8 = v3 | v7;
  v9 = v3 & 7;
  v10 = (v8 >> 55) + 8;
  if (v9 == 7)
  {
    LODWORD(v9) = v10;
  }

  if (v9 == 22)
  {
    v22 = *MEMORY[0x1E69E9840];

    return isEqualToString(a1, a2);
  }

  else
  {
    if (v9)
    {
      result = 0;
    }

    else
    {
      v11 = a1 & 0xC000000000000007;
      if ((a1 & 0xC000000000000007) == 0xC000000000000007)
      {
        LODWORD(v5) = 7;
      }

      v12 = ((v5 ^ a1) >> 3) & 0xF;
      v24 = 0;
      Contents = _CFIndirectTaggedPointerStringGetContents(a2, &v24);
      result = 0;
      if (v12 == v24)
      {
        __s1[0] = 0;
        __s1[1] = 0;
        v15 = *v4;
        if (v11 == 0xC000000000000007)
        {
          v15 = 0;
        }

        v16 = v15 ^ a1;
        v17 = (~(v15 ^ a1) & 7) == 0;
        v18 = 0xFFFFFFFFFFFFFFFLL;
        if (v17)
        {
          v18 = 0xFFFFFFFFFFFFFLL;
        }

        v19 = (v16 >> 3) & 0xF;
        v20 = (v18 & (v16 >> 3)) >> 4;
        if (v19 < 8)
        {
          __s1[0] = v20;
        }

        else
        {
          v21 = (v16 >> 3) & 0xF;
          if (v19 >= 0xA)
          {
            do
            {
              *(&v24 + v21 + 1) = sixBitToCharLookup[v20 & 0x1F];
              v20 >>= 5;
              --v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              *(&v24 + v21 + 1) = sixBitToCharLookup[v20 & 0x3F];
              v20 >>= 6;
              --v21;
            }

            while (v21);
          }
        }

        result = memcmp(__s1, Contents, v19) == 0;
      }
    }

    v23 = *MEMORY[0x1E69E9840];
  }

  return result;
}