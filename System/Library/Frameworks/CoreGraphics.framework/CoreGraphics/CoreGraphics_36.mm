uint64_t add_horizontal_advance(uint64_t result, unint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = result;
  if (a2 > 0xFF)
  {
    result = add_advance(*(result + 2056), a2, 0, a3, a5, a6, a7, a8, a9);
    if ((result & 1) == 0)
    {
      v12 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040BC834EA0uLL);
      result = __CFSetLastAllocationEventName();
      if (v12)
      {
        *(v12 + 2) = a2;
        v12[3] = a3;
        v12[4] = 0.0;
        v12[7] = 0.0;
        *v12 = *(v11 + 2056);
        *(v12 + 1) = a2;
        *(v11 + 2056) = v12;
      }
    }
  }

  else
  {
    *(result + 8 * a2) = a3;
  }

  return result;
}

uint64_t add_vertical_advance(uint64_t a1, unint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *&v16 = a4;
  *(&v16 + 1) = a5;
  result = add_advance(*(a1 + 2080), a2, &v16, a3, a7, a8, a9, a10, a11);
  if ((result & 1) == 0)
  {
    v15 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A0040BC834EA0uLL);
    result = __CFSetLastAllocationEventName();
    if (v15)
    {
      *(v15 + 2) = a2;
      *(v15 + 3) = a3;
      *(v15 + 40) = v16;
      *(v15 + 4) = 0;
      *(v15 + 7) = 0;
      *v15 = *(a1 + 2080);
      *(v15 + 1) = a2;
      *(a1 + 2080) = v15;
    }
  }

  return result;
}

void CGPDFAdvancesRelease(void ***a1)
{
  if (a1)
  {
    advance_subset_release(a1[257]);
    advance_subset_release(a1[260]);

    free(a1);
  }
}

void advance_subset_release(void **a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      free(v1[4]);
      free(v1[7]);
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t add_advance(uint64_t result, unint64_t a2, double *a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result)
  {
    v12 = 0;
    do
    {
      v13 = *(result + 8);
      v14 = a2 >= v13;
      v15 = a2 - v13;
      if (!v14)
      {
        break;
      }

      v16 = *(result + 16);
      if (v16 >= a2)
      {
        v21 = *(result + 32);
        v22 = (v21 + 8 * v15);
        if (!v21)
        {
          v22 = (result + 24);
        }

        if (*v22 != a4)
        {
          pdf_error("advance for index %zu already specified.", a2);
          return 0;
        }

        return 1;
      }

      if (v16 + 1 == a2)
      {
        v12 = result;
      }

      result = *result;
    }

    while (result);
    if (!v12)
    {
      return 0;
    }

    v17 = *(v12 + 16);
    if (v17 + 1 != a2)
    {
      _CGHandleAssert("add_advance_to_subset", 418, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Text/Advances/CGPDFAdvances.c", "index == subset->last + 1", "index: %zu  last: %zu", a7, a8, a9, a2);
    }

    v18 = *(v12 + 32);
    if (v18)
    {
      v20 = (v12 + 8);
      v19 = *(v12 + 8);
      if ((v17 - v19 - 255) < 0xFFFFFFFFFFFFFEFFLL)
      {
        return 0;
      }
    }

    else
    {
      if (*(v12 + 24) == a4 && (!a3 || !*(v12 + 56) && *(v12 + 40) == *a3 && *(v12 + 48) == a3[1]))
      {
        *(v12 + 16) = a2;
        return 1;
      }

      v20 = (v12 + 8);
      if ((v17 - *(v12 + 8) - 255) < 0xFFFFFFFFFFFFFEFFLL)
      {
        return 0;
      }

      result = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
      if (!result)
      {
        return result;
      }

      v18 = result;
      v23 = 0;
      v24 = (v12 + 24);
      v25 = vld1q_dup_f64(v24);
      do
      {
        *(result + v23) = v25;
        v23 += 16;
      }

      while (v23 != 2048);
      v19 = *v20;
    }

    v26 = a2 - v19;
    v18[a2 - v19] = a4;
    v27 = *(v12 + 56);
    if (a3)
    {
      if (!v27)
      {
        v27 = malloc_type_malloc(0x1000uLL, 0x1000040451B5BE8uLL);
        if (!v27)
        {
          free(v18);
          return 0;
        }

        for (i = 0; i != 256; ++i)
        {
          v27[i] = *(v12 + 40);
        }

        v26 = a2 - *v20;
      }

      v27[v26] = *a3;
    }

    *(v12 + 32) = v18;
    *(v12 + 56) = v27;
    ++*(v12 + 16);
    return 1;
  }

  return result;
}

double CGPDFAdvancesGetHorizontalAdvance(uint64_t a1, unint64_t a2)
{
  if (a2 > 0xFF)
  {
    v3 = *(a1 + 2056);
    if (v3)
    {
      while (1)
      {
        v4 = v3[1];
        v5 = a2 >= v4;
        v6 = a2 - v4;
        if (v5 && v3[2] >= a2)
        {
          break;
        }

        v3 = *v3;
        if (!v3)
        {
          goto LABEL_8;
        }
      }

      v7 = v3[4];
      v8 = (v7 + 8 * v6);
      v2 = v3 + 3;
      if (v7)
      {
        v2 = v8;
      }
    }

    else
    {
LABEL_8:
      v2 = (a1 + 2048);
    }
  }

  else
  {
    v2 = (a1 + 8 * a2);
  }

  return *v2;
}

double CGPDFAdvancesGetVerticalAdvance(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 2080);
  if (v5)
  {
    while (1)
    {
      v6 = v5[1];
      v7 = a2 >= v6;
      v8 = a2 - v6;
      if (v7 && v5[2] >= a2)
      {
        break;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v13 = v5[7];
    v14 = (v13 + 16 * v8);
    if (!v13)
    {
      v14 = v5 + 5;
    }

    *a3 = *v14;
    v15 = v5[4];
    if (v15)
    {
      v11 = (v15 + 8 * (a2 - v5[1]));
    }

    else
    {
      v11 = v5 + 3;
    }
  }

  else
  {
LABEL_6:
    HorizontalAdvance = CGPDFAdvancesGetHorizontalAdvance(a1, a2);
    v10 = *(a1 + 2072);
    *a3 = HorizontalAdvance * 0.5;
    *(a3 + 8) = v10;
    v11 = (a1 + 2064);
  }

  return *v11;
}

uint64_t CGPDFAdvancesValidate(uint64_t result)
{
  v1 = result;
  v2 = *(result + 2056);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = v2;
      result = validate_subset(72, v4++, v2, v3);
      v2 = *v5;
      v3 = v5;
    }

    while (*v5);
  }

  v6 = *(v1 + 2080);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v6;
      result = validate_subset(86, v8++, v6, v7);
      v6 = *v9;
      v7 = v9;
    }

    while (*v9);
  }

  return result;
}

uint64_t validate_subset(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a3 + 8);
  if (v8 <= 0xFF)
  {
    result = fprintf(*MEMORY[0x1E69E9848], "%s: subset %zu (%c): first = %zu; last = %zu\n", "CGPDFAdvancesValidate", a2, result, *(a3 + 8), *(a3 + 16));
    v8 = *(a3 + 8);
  }

  v9 = *(a3 + 16);
  if (v8 > v9)
  {
    result = fprintf(*MEMORY[0x1E69E9848], "%s: subset %zu (%c): first = %zu; last = %zu\n", "CGPDFAdvancesValidate", a2, v7, v8, v9);
  }

  if (a4)
  {
    v10 = *(a4 + 16);
    if (v10 >= *(a3 + 8))
    {
      return fprintf(*MEMORY[0x1E69E9848], "%s: subset %zu (%c): first = %zu, last = %zu; subset %zu (%c): first = %zu, last = %zu\n", "CGPDFAdvancesValidate", a2 - 1, v7, *(a4 + 8), v10, a2, v7, *(a3 + 8), *(a3 + 16));
    }
  }

  return result;
}

uint64_t CGPDFAdvancesPrint(uint64_t a1, FILE *__stream)
{
  fwrite("Subset 0:\n", 0xAuLL, 1uLL, __stream);
  for (i = 0; i != 256; ++i)
  {
    result = fprintf(__stream, "%lu: %g\n", i, *(a1 + 8 * i));
  }

  v6 = *(a1 + 2056);
  if (v6)
  {
    v7 = 1;
    do
    {
      v8 = v7 + 1;
      result = print_subset(__stream, 72, v6, v7);
      v6 = *v6;
      v7 = v8;
    }

    while (v6);
  }

  v9 = *(a1 + 2080);
  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = v10 + 1;
      result = print_subset(__stream, 86, v9, v10);
      v9 = *v9;
      v10 = v11;
    }

    while (v9);
  }

  return result;
}

uint64_t print_subset(FILE *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a2;
  result = fprintf(a1, "Subset %zu (%c):\n", a4, a2);
  v11 = a3[4];
  if (v5 == 72)
  {
    v12 = a3[1];
    if (v11)
    {
      for (; v12 <= a3[2]; ++v12)
      {
        result = fprintf(a1, "%zu: %g\n", v12, *(a3[4] - 8 * a3[1] + 8 * v12));
      }
    }

    else
    {
      return fprintf(a1, "%zu - %zu: %g\n");
    }
  }

  else if (v11)
  {
    v13 = a3[1];
    if (v13 <= a3[2])
    {
      v14 = 16 * v13;
      do
      {
        v15 = a3[1];
        v16 = *(a3[4] - 8 * v15 + 8 * v13);
        v17 = (a3[7] - 16 * v15 + v14);
        result = fprintf(a1, "%zu: %g (%g %g)\n", v13++, v16, *v17, v17[1]);
        v14 += 16;
      }

      while (v13 <= a3[2]);
    }
  }

  else
  {
    if (a3[7])
    {
      _CGHandleAssert("print_subset", 233, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Text/Advances/CGPDFAdvances.c", "s->offsets == NULL", "NULL offsets", v8, v9, v10, v18);
    }

    return fprintf(a1, "%zu - %zu: %g (%g %g)\n");
  }

  return result;
}

void show_steps(void *cf, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!cf)
  {
    goto LABEL_9;
  }

  v10 = CFGetTypeID(cf);
  if (CGColorConversionInfoGetTypeID_predicate != -1)
  {
    dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
  }

  if (v10 == kCGColorConverterRuntimeID && (color_conversion_step_info = create_color_conversion_step_info(cf, a2)) != 0)
  {
    v12 = color_conversion_step_info;
    CGLog(4, "%@", a3, a4, a5, a6, a7, a8, color_conversion_step_info);

    CFRelease(v12);
  }

  else
  {
LABEL_9:
    CGLog(4, "Nothing to show for <%p> CGColorConversionInfo", a3, a4, a5, a6, a7, a8, cf);
  }
}

uint64_t create_color_conversion_step_info(void *a1, unsigned int a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __create_color_conversion_step_info_block_invoke;
  v11[3] = &unk_1E6E179F0;
  v11[4] = &v13;
  v11[5] = a1;
  v12 = a2;
  v9[4] = &v13;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __create_color_conversion_step_info_block_invoke_2;
  v10[3] = &unk_1E6E17A18;
  v10[4] = &v13;
  v8[4] = &v13;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __create_color_conversion_step_info_block_invoke_3;
  v9[3] = &unk_1E6E17A40;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __create_color_conversion_step_info_block_invoke_4;
  v8[3] = &unk_1E6E17A68;
  if (CGColorConversionInfoIterateFunctionsWithCallbacks(a1, a2, v11, v10, v9, v8, 2u, 0))
  {
    v2 = v14;
    v3 = v14[3];
    if (v3)
    {
      Length = CFStringGetLength(v3);
      v2 = v14;
      if (Length >= 1)
      {
        CFStringAppend(v14[3], @"*********************************************************************************\n");
        v2 = v14;
      }
    }
  }

  else
  {
    fwrite("CGColorConversionInfoIterateFunctionsWithCallbacks failed!\n", 0x3BuLL, 1uLL, *MEMORY[0x1E69E9848]);
    v2 = v14;
    v5 = v14[3];
    if (v5)
    {
      CFRelease(v5);
      v2 = v14;
    }

    v2[3] = 0;
  }

  v6 = v2[3];
  _Block_object_dispose(&v13, 8);
  return v6;
}

__CFString *__create_color_conversion_step_info_block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v6 = CFGetAllocator(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = CFStringCreateMutable(v6, 0);
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    CFStringAppend(result, @"\n*************************************************************************\n");
    v8 = *(a1 + 48);
    if (v8 > 2)
    {
      v9 = "(?)";
    }

    else
    {
      v9 = off_1E6E17AA8[v8];
    }

    CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @"CGColorConversionInfo show steps for %s\n", v9);
    CFStringAppend(*(*(*(a1 + 32) + 8) + 24), @"*************************************************************************\n");
    v10 = CFCopyDescription(*(a1 + 40));
    CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @"CGColorConversionInfo info:\n %@", v10);
    CFRelease(v10);
    v11 = *(*(*(a1 + 32) + 8) + 24);
    v12 = *(a2 + 4);
    v13 = *(a2 + 12);
    v14 = *(a2 + 20);
    v15 = *(a2 + 28);
    v16 = *(a2 + 36);
    v17 = *(a2 + 44);
    CFStringAppendFormat(v11, 0, @"    %d stages\n", v12);
    CFStringAppendFormat(v11, 0, @"    %d input components\n", v13);
    CFStringAppendFormat(v11, 0, @"    %d output components\n", v14);
    CFStringAppendFormat(v11, 0, @"    %d TRCs\n", v15);
    CFStringAppendFormat(v11, 0, @"    %d Matrices\n", v16);
    CFStringAppendFormat(v11, 0, @"    %d NxM Transforms\n", v17);
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
    if (MutableCopy)
    {
      v19 = MutableCopy;
      Value = CFDictionaryGetValue(MutableCopy, @"com.apple.cmm.ProfileSequence");
      if (Value)
      {
        v21 = Value;
        v22 = CFGetTypeID(Value);
        if (v22 == CFArrayGetTypeID())
        {
          v23 = CFArrayCreateMutableCopy(0, 0, v21);
          if (v23)
          {
            v24 = v23;
            Count = CFArrayGetCount(v23);
            if (Count)
            {
              v26 = Count;
              for (i = 0; i != v26; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v24, i);
                if (ValueAtIndex)
                {
                  v29 = ValueAtIndex;
                  v30 = CFGetTypeID(ValueAtIndex);
                  if (v30 == CFDictionaryGetTypeID())
                  {
                    v31 = CFDictionaryCreateMutableCopy(0, 0, v29);
                    if (v31)
                    {
                      v32 = v31;
                      v33 = CFDictionaryGetValue(v31, @"ColorSyncProfile");
                      if (v33)
                      {
                        v34 = v33;
                        if (copy_hints_description_cglibrarypredicate != -1)
                        {
                          dispatch_once(&copy_hints_description_cglibrarypredicate, &__block_literal_global_2974);
                        }

                        v35 = copy_hints_description_f(v34);
                        if (v35)
                        {
                          v36 = v35;
                          Mutable = CFStringCreateMutable(0, 0);
                          if (Mutable)
                          {
                            v38 = Mutable;
                            CFStringAppendFormat(Mutable, 0, @"<%p> %@", v34, v36);
                            CFDictionarySetValue(v32, @"ColorSyncProfile", v38);
                            CFRelease(v38);
                          }

                          CFRelease(v36);
                        }
                      }

                      CFArraySetValueAtIndex(v24, i, v32);
                      CFRelease(v32);
                    }
                  }
                }
              }
            }

            CFDictionarySetValue(v19, @"com.apple.cmm.ProfileSequence", v24);
            CFRelease(v24);
          }
        }
      }

      v39 = CFCopyDescription(v19);
      CFRelease(v19);
    }

    else
    {
      v39 = 0;
    }

    CFStringAppendFormat(*(*(*(a1 + 32) + 8) + 24), 0, @"ColorSync Profile Sequence info:\n%@\n", v39);
    CFRelease(v39);
    CFStringAppend(*(*(*(a1 + 32) + 8) + 24), @"----------------------------------------\n");
    CFStringAppend(*(*(*(a1 + 32) + 8) + 24), @"               STAGES \n");
    CFStringAppend(*(*(*(a1 + 32) + 8) + 24), @"----------------------------------------\n");
    return (*(*(*(a1 + 32) + 8) + 24) != 0);
  }

  return result;
}

uint64_t __create_color_conversion_step_info_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(*(a1 + 32) + 8) + 24);
  v8 = *(a2 + 52);
  CFStringAppendFormat(v7, 0, @"Stage = %ld, %ld TRCs\n", a3, a4);
  if (a4 >= 1)
  {
    v9 = 0;
    do
    {
      v26 = 0.0;
      v24 = 0u;
      v25 = 0u;
      CGColorTRCGetFunction(*(v8 + 8 * *(a5 + 8 * v9)), &v24);
      v10 = *(v8 + 8 * *(a5 + 8 * v9));
      if (CGColorTRCGetGammaID_cglibrarypredicate != -1)
      {
        dispatch_once(&CGColorTRCGetGammaID_cglibrarypredicate, &__block_literal_global_8);
      }

      v11 = CGColorTRCGetGammaID_f(v10);
      v12 = v24;
      if ((v24 - 6) >= 5 && v24 >= 5)
      {
        v14 = "NO";
      }

      else
      {
        v14 = "YES";
      }

      if (v24 == -1)
      {
        CFStringAppend(v7, @"kCGColorTRCParametricInv709_1886_EOTF_Type: handled\n");
      }

      if (v11 >= 0x12)
      {
        __assert_rtn("gamma_id_by_name", "CGColorConversionInfoShow.c", 228, "0");
      }

      CFStringAppendFormat(v7, 0, @"    TRC channel %d --> TRCs[%ld], parametric = %s gammaID = %s\n", v9, *(a5 + 8 * v9), v14, off_1E6E17AC0[v11]);
      Properties = CGColorFunctionGetProperties(*(v8 + 8 * *(a5 + 8 * v9)));
      if (v12 <= 4)
      {
        if (v12 <= 1)
        {
          if (v12)
          {
            if (v12 == 1)
            {
              CFStringAppendFormat(v7, 0, @"\t\tType1: Y = (%g*X+%g)^%g [X >= %g],  Y = 0 [X < %g]\n", *(&v24 + 2), *(&v24 + 3), *(&v24 + 1), (-*(&v24 + 3) / *(&v24 + 2)), (-*(&v24 + 3) / *(&v24 + 2)), v21, v22, v23);
            }
          }

          else
          {
            CFStringAppendFormat(v7, 0, @"\t\tType0: Y = X^% 3.10f \n", *(&v24 + 1), v17, v18, v19, v20, v21, v22, v23);
          }
        }

        else if (v12 == 2)
        {
          CFStringAppendFormat(v7, 0, @"\t\tType2: Y = (%g*X+%g)^%g + % 3.10f [X >= %g],  Y = %g [X < %g]\n", *(&v24 + 2), *(&v24 + 3), *(&v24 + 1), *&v25, (-*(&v24 + 3) / *(&v24 + 2)), *&v25, (-*(&v24 + 3) / *(&v24 + 2)), v23);
        }

        else if (v12 == 3)
        {
          CFStringAppendFormat(v7, 0, @"\t\tType3: Y = (%g*X+%g)^%g [X >= %g],  Y = %g*X [X < %g]\n", *(&v24 + 2), *(&v24 + 3), *(&v24 + 1), *(&v25 + 1), *&v25, *(&v25 + 1), v22, v23);
        }

        else
        {
          CFStringAppendFormat(v7, 0, @"\t\tType4: Y = (%g*X+%g)^%g + %g [X >= %g], Y = %g*X + %g [X < %g]\n", *(&v24 + 2), *(&v24 + 3), *(&v24 + 1), *(&v25 + 2), *(&v25 + 1), *&v25, *(&v25 + 3), *(&v25 + 1));
        }
      }

      else if (v12 > 7)
      {
        switch(v12)
        {
          case 8:
            CFStringAppendFormat(v7, 0, @"\t\tHLG_InvOETF_Type: Y = Reference_HLG_InvOETF(X)  [a = %g, b = %g, c = %g, d = %g, e = %g, f = %g]\n", *(&v24 + 2), *(&v24 + 3), *&v25, *(&v25 + 1), *(&v25 + 2), *(&v25 + 3), v22, v23);
            break;
          case 9:
            CFStringAppendFormat(v7, 0, @"\t\tHLG_OETF_Type: Y = Reference_HLG_OETF(X)  [a = %g, b = %g, c = %g, d = %g e = %g]\n", *(&v24 + 2), *(&v24 + 3), *&v25, *(&v25 + 1), *(&v25 + 2), v21, v22, v23);
            break;
          case 10:
            CFStringAppendFormat(v7, 0, @"\t\tEXRToneMap_Type: Y = EXR Tone Mapping Gamma(X)  [defog = %g, exposure_scale = %g, kneeLow = %g, kneeHigh = %g, intermediate_gamma = %g, intensity_scale = %g]\n", *(&v24 + 2), *(&v24 + 3), *&v25, *(&v25 + 1), *(&v25 + 2), *(&v25 + 3), v22, v23);
            break;
        }
      }

      else if (v12 == 5)
      {
        CFStringAppendFormat(v7, 0, @"\t\tTable: entries = %zu\n", *(&v24 + 4));
        CFStringAppendFormat(v7, 0, @"\t\t\tColorSyncBoundaryExtension neg: slope = %g intercept = %g\n", *(&v25 + 3), v26);
        CFStringAppendFormat(v7, 0, @"\t\t\tColorSyncBoundaryExtension pos: slope = %g intercept = %g\n", *(&v25 + 1), *(&v25 + 2), v18, v19, v20, v21, v22, v23);
      }

      else if (v12 == 6)
      {
        CFStringAppendFormat(v7, 0, @"\t\tPQ_EOTF_Type: Y = Reference_PQ_EOTF(X)  [a = %g, b = %g, c = %g, d = %g, e = %g, f = %g]\n", *(&v24 + 2), *(&v24 + 3), *&v25, *(&v25 + 1), *(&v25 + 2), *(&v25 + 3), v22, v23);
      }

      else
      {
        CFStringAppendFormat(v7, 0, @"\t\tPQ_InvEOTF_Type: Y = Reference_PQ_InvEOTF(X)  [a = %g, b = %g, c = %g, d = %g, e = %g, f = %g, g = %g]\n", *(&v24 + 2), *(&v24 + 3), *&v25, *(&v25 + 1), *(&v25 + 2), *(&v25 + 3), v26, v23);
      }

      append_properties_info(v7, Properties);
      append_range_info(v7, *(v8 + 8 * *(a5 + 8 * v9++)));
    }

    while (a4 != v9);
  }

  return 1;
}

uint64_t __create_color_conversion_step_info_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = *(a2 + 60);
  memset(v13, 0, sizeof(v13));
  v8 = v13;
  CGColorMatrixGetMatrix(*(v7 + 8 * a4), v13);
  Properties = CGColorFunctionGetProperties(*(v7 + 8 * a4));
  CFStringAppendFormat(v6, 0, @"Stage = %ld, matrix index = %ld\n", a3, a4);
  for (i = 0; i != 3; ++i)
  {
    CFStringAppend(v6, @"\t");
    for (j = 0; j != 16; j += 4)
    {
      CFStringAppendFormat(v6, 0, @"% 3.10f ", *(v8 + j));
    }

    CFStringAppend(v6, @"\n");
    ++v8;
  }

  append_properties_info(v6, Properties);
  append_range_info(v6, *(v7 + 8 * a4));
  return 1;
}

uint64_t __create_color_conversion_step_info_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = *(a2 + 68);
  memset(v22, 0, 36);
  CGColorNxMTransformGetTransform(*(v7 + 8 * a4), v22);
  v8 = *(v7 + 8 * a4);
  if (CGColorNxMTransformGetVersion_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorNxMTransformGetVersion_cglibrarypredicate, &__block_literal_global_32);
  }

  Version_f = CGColorNxMTransformGetVersion_f(v8);
  Properties = CGColorFunctionGetProperties(*(v7 + 8 * a4));
  v11 = v22[0];
  v12 = "?";
  if (LODWORD(v22[0]) <= 0xB)
  {
    v12 = off_1E6E17B50[LODWORD(v22[0])];
  }

  CFStringAppendFormat(v6, 0, @"Stage = %ld, %zu inputs x %zu outputs %s index = %ld\n", a3, *(v22 + 4), v12, a4);
  if (v11 > 9)
  {
    if (v11 != 10)
    {
      if (v11 == 11)
      {
        CFStringAppendFormat(v6, 0, @"\tFlex Luminance Scaling params:\n\t\tsource headroom = % 3.10f\n\t\ttarget headroom = % 3.10f\n\t\tcoefficients[0] = % 3.10f\n\t\tcoefficients[1] = % 3.10f\n\t\tcoefficients[2] = % 3.10f\n\t\tcoefficients[3] = % 3.10f\n\t\tcoefficients[4] = % 3.10f\n\t\tFlexGTCTableCount = %zu\n\t\tFlexGTCTable = %p\n", **(&v22[1] + 12), *(*(&v22[1] + 12) + 4), *(*(&v22[1] + 12) + 8), *(*(&v22[1] + 12) + 12), *(*(&v22[1] + 12) + 16), *(*(&v22[1] + 12) + 20), *(*(&v22[1] + 12) + 24), *(*(&v22[1] + 12) + 28), *(&v22[1] + 12) + 36);
        goto LABEL_27;
      }

      if (v11 == 12)
      {
        CFStringAppendFormat(v6, 0, @"\tLuminance scaling params: \n\t\tgamma = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n", **(&v22[1] + 12), *(*(&v22[1] + 12) + 4), *(*(&v22[1] + 12) + 8), *(*(&v22[1] + 12) + 12), *(*(&v22[1] + 12) + 16));
        goto LABEL_27;
      }

LABEL_22:
      if (v11 > 6)
      {
        CFStringAppendFormat(v6, 0, @"\t\tUnknown format\n\n", v17, v18, v19, v20, v21);
      }

      else
      {
        CFStringAppendFormat(v6, 0, @"\t\tGrid point count = %zu\n\n", *(&v22[1] + 4), v18, v19, v20, v21);
      }

      goto LABEL_27;
    }

    if (Version_f == 2)
    {
      CFStringAppendFormat(v6, 0, @"\tReference White Tone Mapping params:\n\t\tversion = % d\n\t\tluminance scale = % 3.10f\n\t\tslope = % 3.10f\n\t\tsource headroom = % 3.10f\n\t\ttarget hearoom = % 3.10f\n\t\textension offset = % 3.10f\n\t\textension weight = % 3.10f\n\t\toutput gamma = % 3.10f\n\t\tcofficient a = % 3.10f\n\t\tcofficient b = % 3.10f\n\t\tcofficient c = % 3.10f\n\t\tcofficient d = % 3.10f\n\t\tcofficient e = % 3.10f\n", **(&v22[1] + 12), *(*(&v22[1] + 12) + 4), *(*(&v22[1] + 12) + 8), *(*(&v22[1] + 12) + 12), *(*(&v22[1] + 12) + 16), *(*(&v22[1] + 12) + 20), *(*(&v22[1] + 12) + 24), *(*(&v22[1] + 12) + 28), *(*(&v22[1] + 12) + 48), *(*(&v22[1] + 12) + 52), *(*(&v22[1] + 12) + 56), *(*(&v22[1] + 12) + 60), *(*(&v22[1] + 12) + 64));
    }

    else
    {
      CFStringAppendFormat(v6, 0, @"\tReference White Tone Mapping (version 0) params:\n\t\tluminance scale = % 3.10f\n\t\tadjusted source headroom = % 3.10f\n\t\ttarget headroom = % 3.10f\n\t\ttarget reference white = % 3.10f\n\t\tcofficient a = % 3.10f\n\t\tcofficient b = % 3.10f\n\t\tcofficient c = % 3.10f\n\t\tcofficient d = % 3.10f\n\t\tcofficient e = % 3.10f\n", **(&v22[1] + 12), *(*(&v22[1] + 12) + 4), *(*(&v22[1] + 12) + 8), *(*(&v22[1] + 12) + 12), *(*(&v22[1] + 12) + 20), *(*(&v22[1] + 12) + 24), *(*(&v22[1] + 12) + 28), *(*(&v22[1] + 12) + 32), *(*(&v22[1] + 12) + 36));
    }
  }

  else
  {
    if (v11 != 7)
    {
      if (v11 == 8)
      {
        CFStringAppendFormat(v6, 0, @"\tHLG Scene Referred Mapping params: \n\t\tgamma = % 3.10f gain = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n", **(&v22[1] + 12), *(*(&v22[1] + 12) + 4), *(*(&v22[1] + 12) + 8), *(*(&v22[1] + 12) + 12), *(*(&v22[1] + 12) + 16), *(*(&v22[1] + 12) + 20));
        goto LABEL_27;
      }

      if (v11 == 9)
      {
        CFStringAppendFormat(v6, 0, @"\tPQ tone mapping params:\n\t\tparams->pq_eotf.m1 = % 3.10f\n\t\tparams->pq_eotf.m2 = % 3.10f\n\n\t\tparams->pq_eotf.c1 = % 3.10f\n\t\tparams->pq_eotf.c2 = % 3.10f\n\t\tparams->pq_eotf.c3 = % 3.10f\n\n\t\tparams->pq_eetf.masterPeakInv = % 3.10f\n\t\tparams->pq_eetf.masterBlackInv = % 3.10f\n\t\tparams->pq_eetf.maxLum = % 3.10f\n\t\tparams->pq_eetf.minLum = % 3.10f\n\t\tparams->pq_eetf.KneeStart = % 3.10f\n\t\tparams->pq_eetf.KneeStartScale = % 3.10f\n\t\tparams->pq_eetf.optical_scale = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n", **(&v22[1] + 12), *(*(&v22[1] + 12) + 4), *(*(&v22[1] + 12) + 8), *(*(&v22[1] + 12) + 12), *(*(&v22[1] + 12) + 16), *(*(&v22[1] + 12) + 20), *(*(&v22[1] + 12) + 24), *(*(&v22[1] + 12) + 28), *(*(&v22[1] + 12) + 32), *(*(&v22[1] + 12) + 36), *(*(&v22[1] + 12) + 40), *(*(&v22[1] + 12) + 44), *(*(&v22[1] + 12) + 56), *(*(&v22[1] + 12) + 60), *(*(&v22[1] + 12) + 64), *(*(&v22[1] + 12) + 68));
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    v13 = *(*(&v22[1] + 12) + 24);
    v14 = "HLG Inverted OOTF";
    if (v13 != 1)
    {
      v14 = "?";
    }

    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = "HLG OOTF";
    }

    CFStringAppendFormat(v6, 0, @"\tHLG Luminance scaling (%s) params: \n\t\tgamma = % 3.10f gain = % 3.10f\n\t\tparams->luminance_coefficients[0] = % 3.10f\n\t\tparams->luminance_coefficients[1] = % 3.10f\n\t\tparams->luminance_coefficients[2] = % 3.10f\n\t\tparams->luminance_coefficients[3] = % 3.10f\n", v15, **(&v22[1] + 12), *(*(&v22[1] + 12) + 4), *(*(&v22[1] + 12) + 8), *(*(&v22[1] + 12) + 12), *(*(&v22[1] + 12) + 16), *(*(&v22[1] + 12) + 20));
  }

LABEL_27:
  append_properties_info(v6, Properties);
  append_range_info(v6, *(v7 + 8 * a4));
  return 1;
}

void append_properties_info(__CFString *a1, char a2)
{
  v2 = "Yes";
  if (a2)
  {
    v3 = "Yes";
  }

  else
  {
    v3 = "No";
  }

  if ((a2 & 2) != 0)
  {
    v4 = "Yes";
  }

  else
  {
    v4 = "No";
  }

  if ((a2 & 4) != 0)
  {
    v5 = "Yes";
  }

  else
  {
    v5 = "No";
  }

  if ((a2 & 0x10) != 0)
  {
    v6 = "Yes";
  }

  else
  {
    v6 = "No";
  }

  if ((a2 & 8) == 0)
  {
    v2 = "No";
  }

  CFStringAppendFormat(a1, 0, @"\t\tProperties:\n\t\t\t\tkCGColorFunctionSignedReflectionTRC   = %s\n\t\t\t\tkCGColorFunctionOutputClamp           = %s\n\t\t\t\tkCGColorFunctionInputClamp            = %s\n\t\t\t\tkCGColorMatrixOnlyFirstChannelOutput  = %s\n\t\t\t\tkCGColorMatrixOnlyFirstChannelInput   = %s\n\n", v3, v4, v5, v6, v2);
}

void append_range_info(__CFString *a1, const void *a2)
{
  InputRange = CGColorFunctionGetInputRange(a2);
  v6 = v5;
  OutputRange = CGColorFunctionGetOutputRange(a2);
  v9 = v8;
  CFStringAppendFormat(a1, 0, @"\t\tInput range: [");
  if (InputRange == -3.4028e38)
  {
    CFStringAppendFormat(a1, 0, @"-FLT_MAX,");
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"%+g,", InputRange);
  }

  if (v6 == 3.4028e38)
  {
    CFStringAppendFormat(a1, 0, @" +FLT_MAX]", v10);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @" %+g]", v6);
  }

  CFStringAppendFormat(a1, 0, @" Output range: [");
  if (OutputRange == -3.4028e38)
  {
    CFStringAppendFormat(a1, 0, @"-FLT_MAX,", v11);
  }

  else
  {
    CFStringAppendFormat(a1, 0, @"%+g,", OutputRange);
  }

  if (v9 == 3.4028e38)
  {

    CFStringAppendFormat(a1, 0, @" +FLT_MAX]\n");
  }

  else
  {
    CFStringAppendFormat(a1, 0, @" %+g]\n", v9);
  }
}

uint64_t (*__copy_hints_description_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyDescriptionString");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_2986;
  }

  copy_hints_description_f = v1;
  return result;
}

void dump_steps_to_file(void *cf, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v31 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    goto LABEL_15;
  }

  v12 = CFGetTypeID(cf);
  if (CGColorConversionInfoGetTypeID_predicate != -1)
  {
    dispatch_once(&CGColorConversionInfoGetTypeID_predicate, &__block_literal_global_1190);
  }

  if (v12 == kCGColorConverterRuntimeID && (color_conversion_step_info = create_color_conversion_step_info(cf, a2)) != 0)
  {
    v14 = color_conversion_step_info;
    if (v9 && strlen(v9) >= 3)
    {
      bzero(__str, 0x401uLL);
      if (*v9 == 42 && v9[1] == 47)
      {
        if (CGGetTempDirPath_predicate != -1)
        {
          dispatch_once(&CGGetTempDirPath_predicate, &__block_literal_global_119);
        }

        v29 = v9 + 2;
        v9 = __str;
        snprintf(__str, 0x400uLL, "%s%s", &CGGetTempDirPath_tempDirPath, v29);
      }

      CStringPtr = CFStringGetCStringPtr(v14, 0x8000100u);
      if (CStringPtr)
      {
        v16 = CStringPtr;
        v17 = 0;
      }

      else
      {
        Length = CFStringGetLength(v14);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v17 = malloc_type_calloc(MaximumSizeForEncoding, 1uLL, 0x62034410uLL);
        if (v17 && CFStringGetCString(v14, v17, MaximumSizeForEncoding, 0x8000100u))
        {
          v16 = v17;
        }

        else
        {
          v16 = "";
        }
      }

      v26 = fopen(v9, "w");
      if (v26)
      {
        v27 = v26;
        v28 = strlen(v16);
        fwrite(v16, 1uLL, v28, v27);
        fclose(v27);
      }

      if (v17)
      {
        free(v17);
      }
    }

    CGLog(1, "%s %s %s", a3, a4, a5, a6, a7, a8, v8);
    CFRelease(v14);
  }

  else
  {
LABEL_15:
    CGLog(1, "Nothing to show for <%p> CGColorConversionInfo", a3, a4, a5, a6, a7, a8, cf);
    CGLog(1, "%s %s %s", v18, v19, v20, v21, v22, v23, v8);
  }
}

BOOL has_crypt_filter(CGPDFDictionary *a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  value[5] = v2;
  value[6] = v3;
  __s1 = 0;
  value[0] = 0;
  if (!CGPDFDictionaryGetObject(a1, "Filter", value) || !value[0])
  {
    return 0;
  }

  v5 = *(value[0] + 2);
  if (v5 != 7)
  {
    if (v5 == 5)
    {
      return strcmp(*(value[0] + 4), "Crypt") == 0;
    }

    return 0;
  }

  v6 = *(value[0] + 4);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v6 + 3) - *(v6 + 2);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = v7 >> 3;
  while (!CGPDFArrayGetName(v6, v8, &__s1) || strcmp(__s1, "Crypt"))
  {
    result = 0;
    if (v9 == ++v8)
    {
      return result;
    }
  }

  return 1;
}

__CFArray *pdf_filter_chain_create_description(uint64_t a1, int a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (a1)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 16);
    if (v6 && (*(a1 + 41) & 1) == 0 && *(v6 + 40) && !has_crypt_filter(*(a1 + 48), a2))
    {
      CGCFArrayAppendInteger(Mutable, 10);
    }
  }

  else
  {
    v5 = 0;
  }

  filter_object = get_filter_object(v5, a2);
  if (filter_object)
  {
    value = 0;
    v8 = *(filter_object + 2);
    if (v8 == 5)
    {
      v14 = filter_kind_from_name(*(filter_object + 4));
      if (v14)
      {
        CGCFArrayAppendInteger(Mutable, v14);
      }
    }

    else if (v8 == 7)
    {
      v9 = *(filter_object + 4);
      if (v9)
      {
        v10 = *(v9 + 3) - *(v9 + 2);
        if (v10)
        {
          v11 = 0;
          v12 = v10 >> 3;
          do
          {
            if (!CGPDFArrayGetName(v9, v11, &value))
            {
              break;
            }

            v13 = filter_kind_from_name(value);
            if (v13)
            {
              CGCFArrayAppendInteger(Mutable, v13);
            }

            ++v11;
          }

          while (v12 != v11);
        }
      }
    }
  }

  return Mutable;
}

__n128 CGUpdateConvolveKernelRed(uint64_t a1)
{
  if (redConvolveKernel)
  {
    free(redConvolveKernel);
  }

  v2 = malloc_type_malloc(0x26uLL, 0x1000040BDFB0063uLL);
  redConvolveKernel = v2;
  v3 = *(a1 + 30);
  result = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = result;
  *(v2 + 30) = v3;
  return result;
}

__n128 CGUpdateConvolveKernelGreen(uint64_t a1)
{
  if (greenConvolveKernel)
  {
    free(greenConvolveKernel);
  }

  v2 = malloc_type_malloc(0x26uLL, 0x1000040BDFB0063uLL);
  greenConvolveKernel = v2;
  v3 = *(a1 + 30);
  result = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = result;
  *(v2 + 30) = v3;
  return result;
}

__n128 CGUpdateConvolveKernelBlue(uint64_t a1)
{
  if (blueConvolveKernel)
  {
    free(blueConvolveKernel);
  }

  v2 = malloc_type_malloc(0x26uLL, 0x1000040BDFB0063uLL);
  blueConvolveKernel = v2;
  v3 = *(a1 + 30);
  result = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = result;
  *(v2 + 30) = v3;
  return result;
}

__n128 CGUpdateConvolveKernelMonochrome(uint64_t a1)
{
  if (monochromeConvolveKernel)
  {
    free(monochromeConvolveKernel);
  }

  v2 = malloc_type_malloc(0x26uLL, 0x1000040BDFB0063uLL);
  monochromeConvolveKernel = v2;
  v3 = *(a1 + 30);
  result = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 1) = result;
  *(v2 + 30) = v3;
  return result;
}

const void *__CGSScanConvolveAndIntegrateRGB_block_invoke()
{
  v5 = 0;
  if (get_BOOLean_property("CGFontUseCustomConvolveKernels", copy_application_property_value, &v5) && v5)
  {
    if (redConvolveKernel)
    {
      CGSScanConvolveAndIntegrateRGB_redKernel = redConvolveKernel;
    }

    if (greenConvolveKernel)
    {
      CGSScanConvolveAndIntegrateRGB_greenKernel = greenConvolveKernel;
    }

    if (blueConvolveKernel)
    {
      CGSScanConvolveAndIntegrateRGB_blueKernel = blueConvolveKernel;
    }
  }

  v4 = 0;
  result = get_BOOLean_property("CGFontUseMonochromeKernel", copy_local_domain_value, &v4);
  if (result && v4)
  {
    if (v5 && monochromeConvolveKernel != 0)
    {
      v1 = monochromeConvolveKernel;
    }

    else
    {
      v1 = mKernel;
    }

    if (v5 && monochromeConvolveKernel != 0)
    {
      v2 = greenConvolveKernel;
    }

    else
    {
      v2 = mKernel;
    }

    if (v5 && monochromeConvolveKernel != 0)
    {
      v3 = blueConvolveKernel;
    }

    else
    {
      v3 = mKernel;
    }

    CGSScanConvolveAndIntegrateRGB_redKernel = v1;
    CGSScanConvolveAndIntegrateRGB_greenKernel = v2;
    CGSScanConvolveAndIntegrateRGB_blueKernel = v3;
  }

  return result;
}

uint64_t get_password(const __CFString *a1, UInt8 *a2)
{
  Length = CFStringGetLength(a1);
  if (Length)
  {
    v5 = Length;
    if (Length >= 33)
    {
      pdf_error("password truncated to 32 bytes.");
      v5 = 32;
    }

    v8.location = 0;
    v8.length = v5;
    Bytes = CFStringGetBytes(a1, v8, 0x600u, 0, 0, a2, 32, 0);
    if (Bytes < v5)
    {
      pdf_error("password cannot be converted to ASCII.");
      return 0;
    }

    a2[Bytes] = 0;
  }

  else
  {
    *a2 = 0;
  }

  return 1;
}

CGDataConsumerRef PDFSecurityHandlerCreateEncryptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x103004023086722uLL);
  __CFSetLastAllocationEventName();
  if (!v6)
  {
    return 0;
  }

  *v6 = a2;
  pdf_cryptor = get_pdf_cryptor(a1, v3);
  v6[5] = pdf_cryptor;
  if (!pdf_cryptor)
  {
    encryptor_close(v6);
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 16), @"kCGPDFContextEncryptionCipher");
  if (Value && ((v9 = Value, CFEqual(Value, @"kCGPDFContextEncryptionCipherAESv2")) || CFEqual(v9, @"kCGPDFContextEncryptionCipherAESv3")))
  {
    v6[3] = 16;
    *(v6 + 32) = 1;
  }

  else
  {
    v6[3] = 0;
  }

  return CGDataConsumerCreate(v6, &PDFSecurityHandlerCreateEncryptor_callbacks);
}

char *get_pdf_cryptor(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(*(a1 + 16), @"kCGPDFContextEncryptionCipher");
  if (Value)
  {
    v5 = CFEqual(Value, @"kCGPDFContextEncryptionCipherAESv2");
    v6 = v5 != 0;
    v7 = 5;
    if (v5)
    {
      v7 = 9;
    }
  }

  else
  {
    v6 = 0;
    v7 = 5;
  }

  v8 = *(a1 + 128);
  result = malloc_type_malloc(v7 + (v8 >> 3), 0x100004077774924uLL);
  if (result)
  {
    v10 = result;
    v11 = v8 >> 3;
    memcpy(result, (a1 + 92), v11);
    v12 = &v10[v11];
    *v12 = a2;
    v12[2] = BYTE2(a2);
    *(v12 + 3) = 0;
    v13 = v11 + 5;
    if (v6)
    {
      *&v10[v13] = 1416380787;
      v13 = v11 + 9;
    }

    CGGetMD5DigestOfBytes(v15, v10, v13);
    free(v10);
    if (v6)
    {
      return CGCryptorCreateAES(v15, 0x10uLL, (a1 + 108), 1);
    }

    else
    {
      if (v13 >= 0x10)
      {
        v14 = 16;
      }

      else
      {
        v14 = v13;
      }

      return CGCryptorCreateRC4(v15, v14);
    }
  }

  return result;
}

void encryptor_close(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 40);
    if (!*(v2 + 32))
    {
      v6[0] = 0;
      v6[1] = 0;
      v5 = 0;
      CGCryptorDrain(v2, v6, 0x10uLL, &v5);
      CGDataConsumerPutBytes(*a1, v6, v5);
    }

    v3 = *a1;
    if (*a1 && (*(v3 + 56) & 1) == 0)
    {
      v4 = *(v3 + 80);
      if (v4)
      {
        v4(*(v3 + 16));
      }
    }

    CGCryptorRelease(*(a1 + 40));
    free(*(a1 + 8));
    free(a1);
  }
}

uint64_t *encryptor_flush(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (*result)
    {
      if ((*(v1 + 56) & 1) == 0)
      {
        v2 = *(v1 + 80);
        if (v2)
        {
          return v2(*(v1 + 16));
        }
      }
    }
  }

  return result;
}

size_t encryptor_write(uint64_t a1, const void *a2, size_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a3;
  v6 = *(a1 + 24) + a3;
  v7 = *(a1 + 8);
  if (*(a1 + 16) < v6)
  {
    v8 = malloc_type_realloc(*(a1 + 8), v6, 0xC0037986uLL);
    *(a1 + 8) = v8;
    if (!v8)
    {
      v3 = 0;
      *(a1 + 16) = 0;
      return v3;
    }

    v7 = v8;
    *(a1 + 16) = v6;
  }

  v10 = 0;
  CGCryptorProcessBytes(*(a1 + 40), a2, v3, v7, v6, &v10);
  if (*(a1 + 32) == 1)
  {
    CGDataConsumerPutBytes(*a1, *(*(a1 + 40) + 40), 16);
    *(a1 + 32) = 0;
  }

  CGDataConsumerPutBytes(*a1, *(a1 + 8), v10);
  return v3;
}

uint64_t add_bf_range(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, void *a6)
{
  if (a2 == a4)
  {
    v8 = !*a6 || a3 > a5;
    if (!v8 && (*a6 & 1) == 0)
    {
      v10 = 0;
      v11 = a6[1];
      v12 = *a6 >> 1;
      do
      {
        v11[v10] = bswap32(v11[v10]) >> 16;
        ++v10;
      }

      while (v12 != v10);
      v13 = *(result + 48);
      if (v13)
      {
        if ((a2 - 3) >= 0xFEu)
        {
          result = check_dimension(a2, a3, a5);
          if (result)
          {
            v14 = *(v13 + 16);
            if (!v14)
            {
              operator new();
            }

            return cmap_bf_set_add_range(v14, a3, a5, v12, v11);
          }
        }
      }
    }
  }

  return result;
}

uint64_t yy_stack_print(__int16 *a1, unint64_t a2)
{
  v4 = MEMORY[0x1E69E9848];
  fwrite("Stack now", 9uLL, 1uLL, *MEMORY[0x1E69E9848]);
  while (a1 <= a2)
  {
    v5 = *a1++;
    fprintf(*v4, " %d", v5);
  }

  v6 = *v4;

  return fputc(10, v6);
}

uint64_t yysyntax_error(_BYTE *a1, int a2, unsigned int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = yypact[a2];
  if (v3 >= -30)
  {
    if (a3 > 0x126)
    {
      v5 = 2;
    }

    else
    {
      v5 = yytranslate[a3];
    }

    v7 = yytname[v5];
    v8 = yytnamerr(0, v7);
    v38 = 0u;
    v37 = 0u;
    v9 = 115 - v3;
    v36 = v7;
    strcpy(v35, "syntax error, unexpected %s");
    v10 = -v3 & (v3 >> 31);
    if (115 - v3 >= 42)
    {
      v9 = 42;
    }

    if (v10 < v9)
    {
      v11 = 0;
      v12 = v3;
      v13 = &v35[27];
      v14 = v10;
      v15 = v9;
      v16 = v8;
      v17 = ", expecting %s";
      v18 = 1;
      v34 = v8;
      while (1)
      {
        if (v14 == 1 || v14 != yycheck[v14 + v12])
        {
          v20 = v16;
        }

        else
        {
          if (v18 == 5)
          {
            v35[27] = 0;
            v18 = 1;
            v20 = v34;
            goto LABEL_21;
          }

          v19 = yytname[v14];
          (&v36)[v18] = v19;
          v20 = yytnamerr(0, v19) + v16;
          --v13;
          do
          {
            v21 = *v17++;
            *++v13 = v21;
          }

          while (v21);
          ++v18;
          v11 |= v20 < v16;
          v17 = " or %s";
        }

        ++v14;
        v16 = v20;
        if (v14 == v15)
        {
          goto LABEL_21;
        }
      }
    }

    v11 = 0;
    v18 = 1;
    v20 = v8;
LABEL_21:
    v22 = 0;
    do
    {
      v23 = v22;
    }

    while (v35[v22++]);
    v6 = v23 + v20;
    v25 = __CFADD__(v23, v20);
    if (v11 | v25)
    {
      return -1;
    }

    if (!a1)
    {
      return v6;
    }

    v27 = 0;
    for (i = v35; ; i += v32)
    {
      v29 = *i;
      *a1 = v29;
      if (v29 != 37)
      {
        break;
      }

      if (i[1] != 115 || v27 >= v18)
      {
        goto LABEL_38;
      }

      v33 = v27 + 1;
      v31 = yytnamerr(a1, (&v36)[v27]);
      v32 = 2;
      v27 = v33;
LABEL_40:
      a1 += v31;
    }

    if (!v29)
    {
      return v6;
    }

LABEL_38:
    v31 = 1;
    v32 = 1;
    goto LABEL_40;
  }

  return 0;
}

void yydestruct(const char *a1, int a2, void **a3)
{
  if (cmap_yydebug)
  {
    v5 = "Deleting";
    if (a1)
    {
      v5 = a1;
    }

    v6 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "%s ", v5);
    v7 = *v6;
    if (a2 >= 42)
    {
      fprintf(v7, "nterm %s (");
    }

    else
    {
      fprintf(v7, "token %s (");
    }

    fputc(41, v7);
    fputc(10, *v6);
  }

  if (a2 <= 0x27 && ((1 << a2) & 0xB000000000) != 0)
  {
    v8 = *a3;

    free(v8);
  }
}

uint64_t yytnamerr(uint64_t a1, _BYTE *a2)
{
  if (*a2 != 34)
  {
LABEL_13:
    if (a1)
    {
      v9 = a1 - 1;
      do
      {
        v10 = *a2++;
        *++v9 = v10;
      }

      while (v10);
      return v9 - a1;
    }

    else
    {
      v11 = 0;
        ;
      }

      return v11 - 1;
    }
  }

  v2 = 0;
  v3 = a2;
  for (i = a2; ; v3 = i)
  {
    v6 = *++i;
    v5 = v6;
    if (v6 > 91)
    {
      if (v5 == 92)
      {
        v8 = v3[2];
        v7 = v3 + 2;
        if (v8 != 92)
        {
          goto LABEL_13;
        }

        i = v7;
      }

      goto LABEL_10;
    }

    if (v5 == 34)
    {
      break;
    }

    if (v5 == 39 || v5 == 44)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (a1)
    {
      *(a1 + v2) = v5;
    }

    ++v2;
  }

  if (a1)
  {
    *(a1 + v2) = 0;
  }

  return v2;
}

uint64_t decomposes(unsigned int a1, _DWORD *a2, _DWORD *a3)
{
  result = 0;
  __key = a1;
  if (a1 >= 0xA0 && a1 != 65292)
  {
    result = bsearch(&__key, &rows, 0xF0EuLL, 0xCuLL, compare);
    if (result)
    {
      *a2 = *(result + 8);
      *a3 = *(result + 4);
      return 1;
    }
  }

  return result;
}

uint64_t compare(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *PDFStreamCreateWithObjectNumber(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x50uLL, 0x1030040E0CD80B6uLL);
  __CFSetLastAllocationEventName();
  if (v4)
  {
    *v4 = a1;
    v4[1] = a2;
    v4[3] = 0;
    v4[9] = 0;
    v4[6] = 0;
    v4[7] = 0;
    *(v4 + 32) = 0;
    if (*(a1 + 73) == 1)
    {
      PDFStreamSetFilter(v4, "FlateDecode");
    }
  }

  return v4;
}

void PDFStreamSetFilter(uint64_t a1, char *__s)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    free(v4);
  }

  if (__s)
  {
    v5 = strlen(__s);
    v6 = malloc_type_malloc(v5 + 1, 0x2099F3ACuLL);
    __CFSetLastAllocationEventName();
    *(a1 + 72) = v6;
    if (v6)
    {
      strcpy(v6, __s);
      *(a1 + 64) = strcmp(__s, "FlateDecode") == 0;
      return;
    }
  }

  else
  {
    *(a1 + 72) = 0;
  }

  *(a1 + 64) = 0;
}

void PDFStreamRelease(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      CFRelease(v5);
    }

    free(*(a1 + 72));

    free(a1);
  }
}

CGDataConsumerRef PDFStreamBeginData(CGDataConsumerRef result)
{
  if (result)
  {
    v1 = result;
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    *(v1 + 4) = Mutable;
    v3 = CGDataConsumerCreateWithCFData(Mutable);
    *(v1 + 5) = v3;
    *(v1 + 3) = v3;
    *(v1 + 7) = 0;
    result = *(*v1 + 56);
    if (result && (*(v1 + 65) != 1 || *(result + 136) == 1))
    {
      result = PDFSecurityHandlerCreateEncryptor(result, v3, *(v1 + 1));
      v3 = result;
      *(v1 + 7) = result;
      *(v1 + 3) = result;
    }

    *(v1 + 6) = 0;
    if (*(v1 + 64) == 1)
    {
      result = CGDataConsumerCreateFlateEncoder(v3);
      *(v1 + 6) = result;
      *(v1 + 3) = result;
    }
  }

  return result;
}

uint64_t PDFStreamEndData(void *a1)
{
  CGDataConsumerClose(a1[6]);
  result = CGDataConsumerClose(a1[7]);
  v3 = a1[3];
  if (v3)
  {
    v3 = *(v3 + 40);
  }

  a1[2] = v3;
  return result;
}

_BYTE *PDFStreamEnd(CFDataRef *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  Length = CFDataGetLength(a1[4]);
  PDFDocumentPrintf(v2, "/Length %O", v5, v6, v7, v8, v9, v10, Length);
  if (a1[9])
  {
    PDFDocumentPrintf(*a1, "/Filter /%N", v11, v12, v13, v14, v15, v16, a1[9]);
  }

  PDFDocumentPrintf(*a1, ">>\n", v11, v12, v13, v14, v15, v16, v46);
  PDFDocumentPrintf(*a1, "stream\n", v17, v18, v19, v20, v21, v22, v47);
  BytePtr = CFDataGetBytePtr(a1[4]);
  v24 = CFDataGetLength(a1[4]);
  CGDataConsumerPutBytes(v3, BytePtr, v24);
  PDFDocumentPrintf(*a1, "\n", v25, v26, v27, v28, v29, v30, v48);
  PDFDocumentPrintf(*a1, "endstream\n", v31, v32, v33, v34, v35, v36, v49);
  v44 = *a1;

  return PDFDocumentEndObject(v44, v37, v38, v39, v40, v41, v42, v43);
}

atomic_uint *color_space_retain(uint64_t a1, atomic_uint *a2)
{
  result = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t PDFColorSpaceSetEmitDefinitions(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      do
      {
        *(v1 + 16) = 0;
        v3 = *(v2 + 8);
        v4.length = CFArrayGetCount(v3);
        v4.location = 0;
        CFArrayApplyFunction(v3, v4, emit_color_space_definition, 0);
        CGOrderedSetRelease(v2);
        v2 = *(v1 + 16);
      }

      while (v2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void emit_color_space_definition(uint64_t a1)
{
  v306 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  Type = CGColorSpaceGetType(*(a1 + 24));
  if (Type <= 7)
  {
    if (Type <= 4)
    {
      if (Type == 3)
      {
        v204 = *(a1 + 16);
        if (!v204)
        {
          _CGHandleAssert("emit_CalGray", 137, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number", v6, v7, v8, v291);
        }

        PDFDocumentBeginObject(*(a1 + 8), v204, v3, v4, v5, v6, v7, v8);
        *&v303 = 0;
        v301 = 0u;
        v302 = 0u;
        v300 = 0u;
        CGColorSpaceGetCalibratedGrayData(*(a1 + 24), v205, v206, v207, &v300);
        PDFDocumentPrintf(*(a1 + 8), "[/CalGray <<", v208, v209, v210, v211, v212, v213, v291);
        emit_array(*(a1 + 8), "/WhitePoint", &v300, 3, v214, v215, v216, v217, v297);
        if (*(&v301 + 1) != 0.0 || *&v302 != 0.0 || *(&v302 + 1) != 0.0)
        {
          emit_array(*(a1 + 8), "/BlackPoint", &v301 + 8, 3, v109, v110, v111, v112, v294);
        }

        if (*&v303 != 1.0)
        {
          PDFDocumentPrintf(*(a1 + 8), "/Gamma %f", v107, v108, v109, v110, v111, v112, v303);
        }

        v202 = *(a1 + 8);
        v203 = ">>]";
        goto LABEL_69;
      }

      if (Type != 4)
      {
        return;
      }

      v93 = *(a1 + 16);
      if (!v93)
      {
        _CGHandleAssert("emit_CalRGB", 165, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number", v6, v7, v8, v291);
      }

      PDFDocumentBeginObject(*(a1 + 8), v93, v3, v4, v5, v6, v7, v8);
      memset(v305, 0, sizeof(v305));
      v303 = 0u;
      v304 = 0u;
      v301 = 0u;
      v302 = 0u;
      v300 = 0u;
      CGColorSpaceGetCalibratedRGBData(*(a1 + 24), v94, v95, v96, &v300);
      PDFDocumentPrintf(*(a1 + 8), "[ /CalRGB <<", v97, v98, v99, v100, v101, v102, v291);
      emit_array(*(a1 + 8), "/WhitePoint", &v300, 3, v103, v104, v105, v106, v293);
      if (*(&v301 + 1) != 0.0 || *&v302 != 0.0 || *(&v302 + 1) != 0.0)
      {
        emit_array(*(a1 + 8), "/BlackPoint", &v301 + 8, 3, v109, v110, v111, v112, v294);
      }

      if (*&v303 != 1.0 || *(&v303 + 1) != 1.0 || *&v304 != 1.0)
      {
        emit_array(*(a1 + 8), "/Gamma", &v303, 3, v109, v110, v111, v112, v294);
      }

      if (*(&v304 + 1) == 1.0)
      {
        v283 = 0;
        while (v283 != 8)
        {
          v284 = v283 + 1;
          v285 = *(v305 + v283);
          v286 = *&color_space_state_create_calibrated_rgb_default_matrix[++v283];
          if (v285 != v286)
          {
            if ((v284 - 1) <= 7)
            {
              goto LABEL_31;
            }

            goto LABEL_60;
          }
        }

        goto LABEL_60;
      }

LABEL_31:
      v113 = *(a1 + 8);
      v114 = "/Matrix";
      v115 = &v304 + 8;
      v116 = 9;
    }

    else
    {
      if (Type != 5)
      {
        if (Type != 6)
        {
          if (!*(a1 + 16))
          {
            _CGHandleAssert("emit_Indexed", 278, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number", v6, v7, v8, v291);
          }

          v9 = *(a1 + 8);
          BaseColorSpace = CGColorSpaceGetBaseColorSpace(*(a1 + 24));
          v11 = PDFDocumentResolveColorSpace(v9, BaseColorSpace);
          v12 = PDFDocumentAddColorSpace(*(a1 + 8), v11);
          PDFDocumentBeginObject(*(a1 + 8), *(a1 + 16), v13, v14, v15, v16, v17, v18);
          PDFDocumentPrintf(*(a1 + 8), "[ /Indexed", v19, v20, v21, v22, v23, v24, v291);
          PDFColorSpaceEmitReference(v12, v25, v26, v27, v28, v29, v30, v31);
          v38 = *(a1 + 24);
          if (v38 && (v39 = *(v38 + 24), *(v39 + 28) == 5))
          {
            v40 = *(*(v39 + 96) + 8);
          }

          else
          {
            v40 = -1;
          }

          PDFDocumentPrintf(*(a1 + 8), "%z", v32, v33, v34, v35, v36, v37, v40);
          v225 = CGColorSpaceCopyColorTable(*(a1 + 24));
          v226 = *(a1 + 8);
          Length = CFDataGetLength(v225);
          CFDataGetBytePtr(v225);
          PDFDocumentPrintf(v226, "%X", v228, v229, v230, v231, v232, v233, Length);
          CFRelease(v225);
          goto LABEL_81;
        }

        goto LABEL_16;
      }

      v188 = *(a1 + 16);
      if (!v188)
      {
        _CGHandleAssert("emit_Lab", 194, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number", v6, v7, v8, v291);
      }

      PDFDocumentBeginObject(*(a1 + 8), v188, v3, v4, v5, v6, v7, v8);
      v304 = 0u;
      v305[0] = 0u;
      v302 = 0u;
      v303 = 0u;
      v300 = 0u;
      v301 = 0u;
      CGColorSpaceGetLabData(*(a1 + 24), v189, v190, v191, &v300);
      PDFDocumentPrintf(*(a1 + 8), "[ /Lab <<", v192, v193, v194, v195, v196, v197, v291);
      emit_array(*(a1 + 8), "/WhitePoint", &v300, 3, v198, v199, v200, v201, v296);
      if (*(&v301 + 1) != 0.0 || *&v302 != 0.0 || *(&v302 + 1) != 0.0)
      {
        emit_array(*(a1 + 8), "/BlackPoint", &v301 + 8, 3, v109, v110, v111, v112, v294);
      }

      if (*&v303 == -100.0)
      {
        v287 = 0;
        while (v287 != 3)
        {
          v288 = v287 + 1;
          v289 = *(&v303 + v287 + 1);
          v290 = *(&xmmword_184565920 + ++v287);
          if (v289 != v290)
          {
            if ((v288 - 1) <= 2)
            {
              goto LABEL_58;
            }

            goto LABEL_60;
          }
        }

        goto LABEL_60;
      }

LABEL_58:
      v113 = *(a1 + 8);
      v114 = "/Range";
      v115 = &v303;
      v116 = 4;
    }

    emit_array(v113, v114, v115, v116, v109, v110, v111, v112, v294);
LABEL_60:
    v202 = *(a1 + 8);
    v203 = ">> ]";
LABEL_69:
    PDFDocumentPrintf(v202, v203, v107, v108, v109, v110, v111, v112, v294);
    PDFDocumentEndObject(*(a1 + 8), v218, v219, v220, v221, v222, v223, v224);
    return;
  }

  if ((Type - 10) >= 2)
  {
    if (Type != 8)
    {
      if (Type != 9)
      {
        return;
      }

      if (!*(a1 + 16))
      {
        _CGHandleAssert("emit_Pattern", 341, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number", v6, v7, v8, v291);
      }

      v41 = CGColorSpaceGetBaseColorSpace(*(a1 + 24));
      if (!v41)
      {
        return;
      }

      v48 = v41;
      PDFDocumentBeginObject(*(a1 + 8), *(a1 + 16), v42, v43, v44, v45, v46, v47);
      PDFDocumentPrintf(*(a1 + 8), "[ /Pattern", v49, v50, v51, v52, v53, v54, v291);
      v55 = PDFDocumentResolveColorSpace(*(a1 + 8), v48);
      v56 = PDFDocumentAddColorSpace(*(a1 + 8), v55);
      PDFColorSpaceEmitReference(v56, v57, v58, v59, v60, v61, v62, v63);
LABEL_81:
      v274 = *(a1 + 8);
      goto LABEL_82;
    }

    v163 = *(a1 + 16);
    if (!v163)
    {
      _CGHandleAssert("emit_DeviceN", 301, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number", v6, v7, v8, v291);
    }

    PDFDocumentBeginObject(*(a1 + 8), v163, v3, v4, v5, v6, v7, v8);
    Names = CGColorSpaceGetNames(*(a1 + 24), v164, v165, v166, v167, v168, v169, v170);
    v178 = *(a1 + 24);
    if (v178)
    {
      v179 = *(*(v178 + 24) + 48);
      v180 = *(a1 + 8);
      if (v179 == 1)
      {
        PDFDocumentPrintf(v180, "[ /Separation", v171, v172, v173, v174, v175, v176, v291);
        PDFDocumentPrintf(*(a1 + 8), "/%N", v181, v182, v183, v184, v185, v186, *Names);
        v187 = 0;
LABEL_78:
        v248 = *(a1 + 8);
        AlternateColorSpace = CGColorSpaceGetAlternateColorSpace(*(a1 + 24));
        v250 = PDFDocumentResolveColorSpace(v248, AlternateColorSpace);
        v251 = PDFDocumentAddColorSpace(*(a1 + 8), v250);
        PDFColorSpaceEmitReference(v251, v252, v253, v254, v255, v256, v257, v258);
        v259 = *(a1 + 8);
        TintTransform = CGColorSpaceGetTintTransform(*(a1 + 24), v260, v261, v262, v263, v264, v265, v266);
        v268 = PDFDocumentAddFunction(v259, TintTransform);
        PDFDocumentPrintReference(*(a1 + 8), "%R", v268[6], v269, v270, v271, v272, v273);
        v274 = *(a1 + 8);
        if (!v187 || (*(v274 + 91) & 1) == 0)
        {
LABEL_82:
          PDFDocumentPrintf(v274, "]", v64, v65, v66, v67, v68, v69, v292);
          v282 = *(a1 + 8);

          PDFDocumentEndObject(v282, v275, v276, v277, v278, v279, v280, v281);
          return;
        }

        PDFDocumentPrintf(v274, "<< >>", v64, v65, v66, v67, v68, v69, v292);
        goto LABEL_81;
      }
    }

    else
    {
      v179 = 0;
      v180 = *(a1 + 8);
    }

    PDFDocumentPrintf(v180, "[ /DeviceN", v171, v172, v173, v174, v175, v176, v291);
    PDFDocumentPrintf(*(a1 + 8), "[ ", v234, v235, v236, v237, v238, v239, v298);
    if (v179)
    {
      v246 = v179;
      do
      {
        v247 = *Names++;
        PDFDocumentPrintf(*(a1 + 8), "/%N", v240, v241, v242, v243, v244, v245, v247);
        --v246;
      }

      while (v246);
    }

    PDFDocumentPrintf(*(a1 + 8), "]", v240, v241, v242, v243, v244, v245, v299);
    v187 = v179 > 1;
    goto LABEL_78;
  }

LABEL_16:
  *&v300 = 0;
  *&v301 = 0;
  *(&v300 + 1) = 0x3FF0000000000000;
  *(&v301 + 1) = 0x3FF0000000000000;
  *&v302 = 0;
  *(&v302 + 1) = 0x3FF0000000000000;
  if (!*(a1 + 16))
  {
    _CGHandleAssert("emit_ICCBased", 225, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/PDF/ColorSpaces/PDFColorSpace.c", "cs->object_number != PDFObjectNumberInvalid", "invalid PDF object number", v6, v7, v8, v291);
  }

  v70 = *(a1 + 8);
  v71 = PDFXRefTableAddObject(*(v70 + 504));
  v72 = PDFStreamCreateWithObjectNumber(v70, v71);
  PDFDocumentBeginObject(*v72, v72[1], v73, v74, v75, v76, v77, v78);
  PDFDocumentPrintf(*v72, "<<", v79, v80, v81, v82, v83, v84, v291);
  v91 = *(a1 + 24);
  if (v91)
  {
    v92 = *(*(v91 + 24) + 48);
  }

  else
  {
    v92 = 0;
  }

  PDFDocumentPrintf(*(a1 + 8), "/N %z", v85, v86, v87, v88, v89, v90, v92);
  v117 = CGColorSpaceGetAlternateColorSpace(*(a1 + 24));
  if (v117)
  {
    v125 = PDFDocumentAddColorSpace(*(a1 + 8), v117);
    if (v125)
    {
      v126 = v125;
      PDFDocumentPrintf(*(a1 + 8), "/Alternate", v119, v120, v121, v122, v123, v124, v295);
      PDFColorSpaceEmitReference(v126, v127, v128, v129, v130, v131, v132, v133);
    }
  }

  v134 = CGColorSpaceICCGetRange(*(a1 + 24), v118, v119, v120, v121, v122, v123, v124);
  if (v92)
  {
    v139 = v134;
    if (v92 == 3 && *v134 == -INFINITY && v134[1] == INFINITY)
    {
      v139 = &v300;
    }

    v140 = v139 + 1;
    v141 = v92;
    while (*(v140 - 1) == 0.0 && *v140 == 1.0)
    {
      v140 += 2;
      if (!--v141)
      {
        goto LABEL_47;
      }
    }

    emit_array(*(a1 + 8), "/Range", v139, 2 * v92, v135, v136, v137, v138, v295);
  }

LABEL_47:
  PDFStreamBeginData(v72);
  v142 = CGColorSpaceCopyICCData(*(a1 + 24));
  BytePtr = CFDataGetBytePtr(v142);
  v144 = CFDataGetLength(v142);
  CGDataConsumerPutBytes(v72[3], BytePtr, v144);
  CFRelease(v142);
  PDFStreamEndData(v72);
  PDFStreamEnd(v72);
  PDFDocumentBeginObject(*(a1 + 8), *(a1 + 16), v145, v146, v147, v148, v149, v150);
  PDFDocumentPrintReference(*(a1 + 8), "[ /ICCBased %R ]", v72[1], v151, v152, v153, v154, v155);
  PDFDocumentEndObject(*(a1 + 8), v156, v157, v158, v159, v160, v161, v162);
  PDFStreamRelease(v72);
}

__CFString *font_copy_format_description(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<CGFont (%p): ", a1);
  if (a1)
  {
    v4 = (*(a1[2] + 160))(a1[14]);
    if (v4)
    {
      v5 = v4;
      CFStringAppend(Mutable, v4);
      CFRelease(v5);
    }
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

CFTypeID CGFontGetTypeID(void)
{
  if (_block_invoke_once_3400 != -1)
  {
    dispatch_once(&_block_invoke_once_3400, &__block_literal_global_8_3401);
  }

  return CGFontGetTypeID_font_type_id;
}

void *CGFontCreateWithPlatformFontAndVariation(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  Default = CGFontFinderGetDefault();
  if (!Default || (Default = CGFontFinderCreateFontWithPlatformFont(Default, a1), (v12 = Default) == 0))
  {
    v13 = CGFontCreate(Default, v5, v6, v7, v8, v9, v10, v11);
    v12 = v13;
    if (v13)
    {
      VTable = CGFontGetVTable(v13, v14, v15, v16, v17, v18, v19, v20);
      v22 = (*(VTable + 16))(a1, a2);
      v12[14] = v22;
      if (!v22)
      {
        CFRelease(v12);
        return 0;
      }
    }
  }

  return v12;
}

void CGFontRelease(CGFontRef font)
{
  if (font)
  {
    CFRelease(font);
  }
}

void *CGFontCreateWithParserFont(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v9 = CGFontCreate(a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = v9;
  if (v9)
  {
    VTable = CGFontGetVTable(v9, v10, v11, v12, v13, v14, v15, v16);
    v19 = (*(VTable + 8))(a1);
    v17[14] = v19;
    if (!v19)
    {
      CFRelease(v17);
      return 0;
    }
  }

  return v17;
}

CGFontRef CGFontCreateWithDataProvider(CGDataProviderRef provider)
{
  if (sInLockdownModeForFonts)
  {
    goto LABEL_5;
  }

  if (read_entitlements_once != -1)
  {
    dispatch_once(&read_entitlements_once, &__block_literal_global_11458);
  }

  if (sHasLockdownModeForFontsEntitlement == 1)
  {
LABEL_5:
    CGPostError("Attempt to create CGFont from data in Lockdown Mode for Fonts", v1, v2, v3, v4, v5, v6, v7, v13);
    return 0;
  }

  if (!provider)
  {
    return 0;
  }

  v11 = CGFontCreate(provider, v1, v2, v3, v4, v5, v6, v7);
  v9 = v11;
  if (v11)
  {
    v12 = (*(*(v11 + 16) + 32))(provider);
    v9[14] = v12;
    if (!v12)
    {
      CFRelease(v9);
      return 0;
    }
  }

  return v9;
}

void *CGFontCreateWithPDFFontDataAndZapfData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sInLockdownModeForFonts)
  {
    goto LABEL_5;
  }

  if (read_entitlements_once != -1)
  {
    dispatch_once(&read_entitlements_once, &__block_literal_global_11458);
  }

  if (sHasLockdownModeForFontsEntitlement == 1)
  {
LABEL_5:
    CGPostError("Attempt to create CGFont from data in Lockdown Mode for Fonts", a2, a3, a4, a5, a6, a7, a8, v14);
    return 0;
  }

  if (!a1)
  {
    return 0;
  }

  v12 = CGFontCreate(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v12;
  if (v12)
  {
    v13 = (*(*(v12 + 16) + 40))(a1, a2);
    v10[14] = v13;
    if (!v13)
    {
      CFRelease(v10);
      return 0;
    }
  }

  return v10;
}

CGFontRef CGFontCreateWithFontName(CFStringRef name)
{
  initialize_font_database_once();
  if (!name)
  {
    return 0;
  }

  Default = CGFontFinderGetDefault();
  if (Default)
  {
    FontWithName = CGFontFinderCreateFontWithName(Default, name);
    if (FontWithName)
    {
      return FontWithName;
    }
  }

  FontWithName = CGFontDBCopyFontWithName(0, name);
  if (FontWithName)
  {
    return FontWithName;
  }

  v12 = CGFontCreate(0, v4, v5, v6, v7, v8, v9, v10);
  v11 = v12;
  if (!v12)
  {
    return v11;
  }

  VTable = CGFontGetVTable(v12, v13, v14, v15, v16, v17, v18, v19);
  v21 = (*(VTable + 24))(name);
  *(v11 + 14) = v21;
  if (v21)
  {
    return v11;
  }

  CFRelease(v11);
  Length = CFStringGetLength(name);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x600u);
  v24 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x8035DC8EuLL);
  if (!CFStringGetCString(name, v24, MaximumSizeForEncoding + 1, 0x600u))
  {
LABEL_12:
    free(v24);
    return 0;
  }

  v25 = substitution_fonts;
  v26 = 5;
  while (strcmp(v24, *v25))
  {
    v25 += 3;
    if (!--v26)
    {
      goto LABEL_12;
    }
  }

  free(v24);
  v28 = v25[1];

  return CGFontCreateWithName(v28);
}

CGFontRef CGFontCreateWithName(char *cStr)
{
  if (!cStr)
  {
    return 0;
  }

  v1 = CFStringCreateWithCString(0, cStr, 0x600u);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CGFontCreateWithFontName(v1);
  CFRelease(v2);
  return v3;
}

CGFontRef CGFontRetain(CGFontRef font)
{
  if (font)
  {
    CFRetain(font);
  }

  return font;
}

CFTypeRef CGFontCreateMatchingFont(const char *a1, const char *a2, int a3, int a4, double a5)
{
  v5 = 0;
  if (a1 && a2 && (a3 & 0x80000000) == 0)
  {
    if (strcmp(a1, "Adobe"))
    {
      return 0;
    }

    v11 = strcmp(a2, "Japan1");
    if (v11)
    {
      goto LABEL_8;
    }

    v24 = 103.0;
    if (a4)
    {
      v24 = 102.5;
    }

    v25 = &Japanese_sans_serifed;
    if (a4)
    {
      v25 = &Japanese_serifed;
    }

    v11 = CGFontCreateWithName(v25[2 * (v24 <= a5)]);
    v5 = v11;
    if (!v11)
    {
LABEL_8:
      VTable = CGFontGetVTable(v11, v12, v13, v14, v15, v16, v17, v18);
      v20 = (*(VTable + 200))(a1, a2);
      if (!v20)
      {
        return 0;
      }

      FontsWithURL = CGFontCreateFontsWithURL(v20);
      if (!FontsWithURL)
      {
        return 0;
      }

      v22 = FontsWithURL;
      if (CFArrayGetCount(FontsWithURL))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
        v5 = CFRetain(ValueAtIndex);
      }

      else
      {
        v5 = 0;
      }

      CFRelease(v22);
    }
  }

  return v5;
}

void *CGFontCreateCopy(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v9 = CGFontCreate(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    v10 = (*(a1[2] + 88))(a1[14]);
    v9[14] = v10;
    if (v10)
    {
      CGFontSetEncodingVector(v9, atomic_load_explicit(a1 + 4, memory_order_acquire));
      return v9;
    }

    CFRelease(v9);
    return 0;
  }

  return v9;
}

__CFArray *CGFontCreateFontsFromData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sInLockdownModeForFonts)
  {
    goto LABEL_5;
  }

  if (read_entitlements_once != -1)
  {
    dispatch_once(&read_entitlements_once, &__block_literal_global_11458);
  }

  if (sHasLockdownModeForFontsEntitlement == 1)
  {
LABEL_5:
    CGPostError("Attempt to create CGFont from data in Lockdown Mode for Fonts", a2, a3, a4, a5, a6, a7, a8, v14);
    return 0;
  }

  VTable = CGFontGetVTable(a1, a2, a3, a4, a5, a6, a7, a8);
  v11 = (*(VTable + 64))(a1);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  fonts_with_private_data_array = create_fonts_with_private_data_array(v11, 1);
  CFRelease(v12);
  return fonts_with_private_data_array;
}

void CGFontApplyFunction(uint64_t (*a1)(const void *, uint64_t), uint64_t a2)
{
  if (a1)
  {
    initialize_font_database_once();
    Default = CGFontFinderGetDefault();
    if (Default)
    {

      CGFontFinderApplyFunction(Default, a1, a2);
    }

    else
    {
      CGFontDBApplyFunction(0, a1, a2);
      v13 = *(CGFontGetVTable(v5, v6, v7, v8, v9, v10, v11, v12) + 80);

      v13(a1, a2);
    }
  }
}

uint64_t rgb555_sample_cmyk32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v88 = *(result + 80);
  v89 = *(result + 88);
  v102 = *(result + 120);
  v103 = *(result + 112);
  v8 = (*(result + 152) - 4);
  v92 = *(result + 144) - 1;
  v9 = 0xFF00000000;
  if (v6)
  {
    v9 = 0;
  }

  v96 = v9;
  v10 = *(result + 260) - 1;
  v100 = *(result + 24);
  v98 = *(result + 32);
  v11 = *(result + 256);
  v87 = *(result + 188);
  v94 = *(result + 28);
  v95 = (v6 + (v11 - 1) + (v10 * v94));
  v101 = v98 + (v10 * v100) + 4 * v11 - 8;
  v90 = *(result + 72);
  v91 = *(result + 64);
  v99 = result;
  v97 = *(result + 40);
  while (1)
  {
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        v24 = a3;
        v15 = a4;
        v16 = v91;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v89;
        v20 = v19 - a3 + (v18 >> 1);
        v15 = a4;
        v16 = v91;
        if (v20 < 1)
        {
          goto LABEL_40;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v87 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v12 = *(result + 216);
      v13 = v90 - *(result + 224);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v91;
      if (v14 < 1)
      {
        goto LABEL_40;
      }

      if (v14 >= v12)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v14) >> 32;
      }

      v23 = v87 | v17;
      v24 = v13 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v88)
      {
        v29 = (a2 >> 26) & 0x3C;
        v28 = a2;
      }

      else
      {
        v30 = *(result + 192);
        v31 = *(result + 200) + v88;
        v32 = v31 - a2 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_40;
        }

        if (v32 < v30)
        {
          v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
        }

        v28 = v31 - 0x1000000;
        v29 = 28;
      }
    }

    else
    {
      v25 = *(result + 192);
      v26 = v16 - *(result + 200);
      v27 = a2 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_40;
      }

      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v87;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
    }

    if (v23 >= 0x400000)
    {
      break;
    }

LABEL_40:
    v42 = v15 - 1;
    a2 += v103;
    a3 += v102;
    ++v8;
    *++v92 = 0;
LABEL_41:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v33 = v24 >> 32;
  v34 = v28 >> 32;
  v35 = v98 + SHIDWORD(v24) * v100 + 4 * (v28 >> 32);
  v36 = *(result + 32);
  v37 = v101;
  if (v101 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = *v37;
  if (v6)
  {
    v39 = v6 + v33 * v94 + v34;
    v40 = *(result + 40);
    v41 = v95;
    v93 = v39;
    if (v95 >= v39)
    {
      v41 = v39;
    }

    if (v41 >= v40)
    {
      v40 = v41;
    }

    v38 |= *v40 << 32;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v93 = 0;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  v43 = *(v7 + (v29 | v22));
LABEL_63:
  v52 = v43 & 0xF;
  v53 = HIBYTE(v43) & 3;
  if (v52 == 1)
  {
    v81 = (v35 + SBYTE1(v43) * v100);
    if (v101 < v81)
    {
      v81 = v101;
    }

    if (v81 >= v36)
    {
      v36 = v81;
    }

    v82 = *v36;
    if (v6)
    {
      v83 = (v93 + SBYTE1(v43) * v94);
      if (v95 < v83)
      {
        v83 = v95;
      }

      if (v83 < *(result + 40))
      {
        v83 = *(result + 40);
      }

      v82 |= *v83 << 32;
    }

    v84 = interpolate_cif10a[v53];
    v85 = v53 + 1;
    v73 = v38 - ((v84 & v38) >> v85);
    v80 = (v84 & v82) >> v85;
  }

  else
  {
    if (v52 == 2)
    {
      v75 = (v35 + ((HIWORD(v43) << 56) >> 54));
      if (v101 < v75)
      {
        v75 = v101;
      }

      if (v75 >= v36)
      {
        v36 = v75;
      }

      v76 = *v36;
      if (v6)
      {
        v77 = (v93 + SBYTE2(v43));
        if (v95 < v77)
        {
          v77 = v95;
        }

        if (v77 < *(result + 40))
        {
          v77 = *(result + 40);
        }

        v76 |= *v77 << 32;
      }

      v78 = (v43 >> 28) & 3;
      v79 = interpolate_cif10a[v78];
      v72 = v78 + 1;
      v73 = v38 - ((v79 & v38) >> v72);
      v74 = v79 & v76;
    }

    else
    {
      if (v52 != 3)
      {
        goto LABEL_45;
      }

      v54 = HIWORD(v43) << 56;
      v55 = (v35 + (v54 >> 54));
      if (v101 < v55)
      {
        v55 = v101;
      }

      if (v55 < v36)
      {
        v55 = v36;
      }

      v56 = *v55;
      v57 = v35 + SBYTE1(v43) * v100;
      if (v101 >= v57)
      {
        v58 = (v35 + SBYTE1(v43) * v100);
      }

      else
      {
        v58 = v101;
      }

      if (v58 < v36)
      {
        v58 = v36;
      }

      v59 = *v58;
      v60 = (v57 + (v54 >> 54));
      if (v101 < v60)
      {
        v60 = v101;
      }

      if (v60 >= v36)
      {
        v36 = v60;
      }

      v61 = *v36;
      if (v6)
      {
        v62 = (v93 + SBYTE2(v43));
        v63 = *(result + 40);
        if (v95 < v62)
        {
          v62 = v95;
        }

        if (v62 < v63)
        {
          v62 = v63;
        }

        v56 |= *v62 << 32;
        v64 = v93 + SBYTE1(v43) * v94;
        if (v95 >= v64)
        {
          v65 = (v93 + SBYTE1(v43) * v94);
        }

        else
        {
          v65 = v95;
        }

        if (v65 < v63)
        {
          v65 = v63;
        }

        v59 |= *v65 << 32;
        v66 = (v64 + SBYTE2(v43));
        if (v95 < v66)
        {
          v66 = v95;
        }

        if (v66 < v63)
        {
          v66 = v63;
        }

        v61 |= *v66 << 32;
      }

      v67 = interpolate_cif10a[v53];
      v68 = v53 + 1;
      v69 = v38 - ((v67 & v38) >> v68) + ((v67 & v59) >> v68);
      v70 = (v43 >> 28) & 3;
      v71 = interpolate_cif10a[v70];
      v72 = v70 + 1;
      v73 = v69 - ((v69 & v71) >> v72);
      v74 = (v56 - ((v67 & v56) >> v68) + ((v67 & v61) >> v68)) & v71;
    }

    v80 = v74 >> v72;
  }

  v38 = v73 + v80;
LABEL_45:
  v44 = 0;
  v45 = v23 >> 22;
  ++v8;
  v86 = v15;
  v46 = v15 - 1;
  a3 += v102;
  v47 = v89 - a3;
  a2 += v103;
  v48 = v88 - a2;
  while (1)
  {
    CMYK32(v8, v38 | v96);
    *(v92 + 1 + v44) = v45;
    result = v99;
    v6 = v97;
    if (v46 == v44)
    {
      return result;
    }

    if ((v47 | v48 | (a3 - v90) | (a2 - v91)) < 0)
    {
      v92 += v44 + 1;
      v42 = ~v44 + v86;
      goto LABEL_41;
    }

    v35 = v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32);
    v36 = *(v99 + 32);
    v49 = v101;
    if (v101 >= v35)
    {
      v49 = (v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32));
    }

    if (v49 < v36)
    {
      v49 = *(v99 + 32);
    }

    v38 = *v49;
    if (v97)
    {
      v50 = *(v99 + 40);
      v51 = v95;
      v93 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      if (v95 >= v93)
      {
        v51 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      }

      if (v51 >= v50)
      {
        v50 = v51;
      }

      v38 |= *v50 << 32;
    }

    if (v7)
    {
      v43 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v43 & 0xF) != 0)
      {
        v92 += v44 + 1;
        v15 = ~v44 + v86;
        v23 = -1;
        goto LABEL_63;
      }
    }

    ++v44;
    ++v8;
    a3 += v102;
    v47 -= v102;
    a2 += v103;
    v48 -= v103;
    LOBYTE(v45) = -1;
  }
}

_DWORD *CMYK32(_DWORD *result, uint64_t a2)
{
  v2 = BYTE4(a2) - (BYTE3(a2) + a2);
  v3 = BYTE4(a2) - (BYTE2(a2) + a2);
  *result = (((v2 & ~(v2 >> 31)) << 7) & 0x7C00 | (HIDWORD(a2) << 24) | (32 * (((v3 & ~(v3 >> 31)) >> 3) & 0x1F))) + (((BYTE4(a2) - (BYTE1(a2) + a2)) & ~((BYTE4(a2) - (BYTE1(a2) + a2)) >> 31)) >> 3);
  return result;
}

uint64_t rgb555_sample_CMYK32(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(result + 40);
  v7 = *(result + 176);
  v88 = *(result + 80);
  v89 = *(result + 88);
  v102 = *(result + 120);
  v103 = *(result + 112);
  v8 = (*(result + 152) - 4);
  v92 = *(result + 144) - 1;
  v9 = 0xFF00000000;
  if (v6)
  {
    v9 = 0;
  }

  v96 = v9;
  v10 = *(result + 260) - 1;
  v100 = *(result + 24);
  v98 = *(result + 32);
  v11 = *(result + 256);
  v87 = *(result + 188);
  v94 = *(result + 28);
  v95 = (v6 + (v11 - 1) + (v10 * v94));
  v101 = v98 + (v10 * v100) + 4 * v11 - 8;
  v90 = *(result + 72);
  v91 = *(result + 64);
  v99 = result;
  v97 = *(result + 40);
  while (1)
  {
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v22 = (a3 >> 22) & 0x3C0;
        v23 = 0x3FFFFFFF;
        v24 = a3;
        v15 = a4;
        v16 = v91;
      }

      else
      {
        v18 = *(result + 216);
        v19 = *(result + 224) + v89;
        v20 = v19 - a3 + (v18 >> 1);
        v15 = a4;
        v16 = v91;
        if (v20 < 1)
        {
          goto LABEL_40;
        }

        if (v20 >= v18)
        {
          LODWORD(v21) = 0x3FFFFFFF;
        }

        else
        {
          v21 = (*(result + 232) * v20) >> 32;
        }

        v23 = v87 | v21;
        v24 = v19 - 0x1000000;
        v22 = 448;
      }
    }

    else
    {
      v12 = *(result + 216);
      v13 = v90 - *(result + 224);
      v14 = a3 - v13 + (v12 >> 1);
      v15 = a4;
      v16 = v91;
      if (v14 < 1)
      {
        goto LABEL_40;
      }

      if (v14 >= v12)
      {
        LODWORD(v17) = 0x3FFFFFFF;
      }

      else
      {
        v17 = (*(result + 232) * v14) >> 32;
      }

      v23 = v87 | v17;
      v24 = v13 + 0x1000000;
      v22 = 512;
    }

    if (a2 >= v16)
    {
      if (a2 <= v88)
      {
        v29 = (a2 >> 26) & 0x3C;
        v28 = a2;
      }

      else
      {
        v30 = *(result + 192);
        v31 = *(result + 200) + v88;
        v32 = v31 - a2 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_40;
        }

        if (v32 < v30)
        {
          v23 = ((v23 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v87;
        }

        v28 = v31 - 0x1000000;
        v29 = 28;
      }
    }

    else
    {
      v25 = *(result + 192);
      v26 = v16 - *(result + 200);
      v27 = a2 - v26 + (v25 >> 1);
      if (v27 < 1)
      {
        goto LABEL_40;
      }

      if (v27 < v25)
      {
        v23 = ((v23 >> 15) * (((*(result + 208) * v27) >> 32) >> 15)) | v87;
      }

      v28 = v26 + 0x1000000;
      v29 = 32;
    }

    if (v23 >= 0x400000)
    {
      break;
    }

LABEL_40:
    v42 = v15 - 1;
    a2 += v103;
    a3 += v102;
    ++v8;
    *++v92 = 0;
LABEL_41:
    a4 = v42;
    if (!v42)
    {
      return result;
    }
  }

  v33 = v24 >> 32;
  v34 = v28 >> 32;
  v35 = v98 + SHIDWORD(v24) * v100 + 4 * (v28 >> 32);
  v36 = *(result + 32);
  v37 = v101;
  if (v101 >= v35)
  {
    v37 = v35;
  }

  if (v37 < v36)
  {
    v37 = *(result + 32);
  }

  v38 = bswap32(*v37);
  if (v6)
  {
    v39 = v6 + v33 * v94 + v34;
    v40 = *(result + 40);
    v41 = v95;
    v93 = v39;
    if (v95 >= v39)
    {
      v41 = v39;
    }

    if (v41 >= v40)
    {
      v40 = v41;
    }

    v38 |= *v40 << 32;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v93 = 0;
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  v43 = *(v7 + (v29 | v22));
LABEL_63:
  v52 = v43 & 0xF;
  v53 = HIBYTE(v43) & 3;
  if (v52 == 1)
  {
    v81 = (v35 + SBYTE1(v43) * v100);
    if (v101 < v81)
    {
      v81 = v101;
    }

    if (v81 >= v36)
    {
      v36 = v81;
    }

    v82 = bswap32(*v36);
    if (v6)
    {
      v83 = (v93 + SBYTE1(v43) * v94);
      if (v95 < v83)
      {
        v83 = v95;
      }

      if (v83 < *(result + 40))
      {
        v83 = *(result + 40);
      }

      v82 |= *v83 << 32;
    }

    v84 = interpolate_cif10a[v53];
    v85 = v53 + 1;
    v73 = v38 - ((v84 & v38) >> v85);
    v80 = (v84 & v82) >> v85;
  }

  else
  {
    if (v52 == 2)
    {
      v75 = (v35 + ((HIWORD(v43) << 56) >> 54));
      if (v101 < v75)
      {
        v75 = v101;
      }

      if (v75 >= v36)
      {
        v36 = v75;
      }

      v76 = bswap32(*v36);
      if (v6)
      {
        v77 = (v93 + SBYTE2(v43));
        if (v95 < v77)
        {
          v77 = v95;
        }

        if (v77 < *(result + 40))
        {
          v77 = *(result + 40);
        }

        v76 |= *v77 << 32;
      }

      v78 = (v43 >> 28) & 3;
      v79 = interpolate_cif10a[v78];
      v72 = v78 + 1;
      v73 = v38 - ((v79 & v38) >> v72);
      v74 = v79 & v76;
    }

    else
    {
      if (v52 != 3)
      {
        goto LABEL_45;
      }

      v54 = HIWORD(v43) << 56;
      v55 = (v35 + (v54 >> 54));
      if (v101 < v55)
      {
        v55 = v101;
      }

      if (v55 < v36)
      {
        v55 = v36;
      }

      v56 = bswap32(*v55);
      v57 = v35 + SBYTE1(v43) * v100;
      if (v101 >= v57)
      {
        v58 = (v35 + SBYTE1(v43) * v100);
      }

      else
      {
        v58 = v101;
      }

      if (v58 < v36)
      {
        v58 = v36;
      }

      v59 = bswap32(*v58);
      v60 = (v57 + (v54 >> 54));
      if (v101 < v60)
      {
        v60 = v101;
      }

      if (v60 >= v36)
      {
        v36 = v60;
      }

      v61 = bswap32(*v36);
      if (v6)
      {
        v62 = (v93 + SBYTE2(v43));
        v63 = *(result + 40);
        if (v95 < v62)
        {
          v62 = v95;
        }

        if (v62 < v63)
        {
          v62 = v63;
        }

        v56 |= *v62 << 32;
        v64 = v93 + SBYTE1(v43) * v94;
        if (v95 >= v64)
        {
          v65 = (v93 + SBYTE1(v43) * v94);
        }

        else
        {
          v65 = v95;
        }

        if (v65 < v63)
        {
          v65 = v63;
        }

        v59 |= *v65 << 32;
        v66 = (v64 + SBYTE2(v43));
        if (v95 < v66)
        {
          v66 = v95;
        }

        if (v66 < v63)
        {
          v66 = v63;
        }

        v61 |= *v66 << 32;
      }

      v67 = interpolate_cif10a[v53];
      v68 = v53 + 1;
      v69 = v38 - ((v67 & v38) >> v68) + ((v67 & v59) >> v68);
      v70 = (v43 >> 28) & 3;
      v71 = interpolate_cif10a[v70];
      v72 = v70 + 1;
      v73 = v69 - ((v69 & v71) >> v72);
      v74 = (v56 - ((v67 & v56) >> v68) + ((v67 & v61) >> v68)) & v71;
    }

    v80 = v74 >> v72;
  }

  v38 = v73 + v80;
LABEL_45:
  v44 = 0;
  v45 = v23 >> 22;
  ++v8;
  v86 = v15;
  v46 = v15 - 1;
  a3 += v102;
  v47 = v89 - a3;
  a2 += v103;
  v48 = v88 - a2;
  while (1)
  {
    CMYK32(v8, v38 | v96);
    *(v92 + 1 + v44) = v45;
    result = v99;
    v6 = v97;
    if (v46 == v44)
    {
      return result;
    }

    if ((v47 | v48 | (a3 - v90) | (a2 - v91)) < 0)
    {
      v92 += v44 + 1;
      v42 = ~v44 + v86;
      goto LABEL_41;
    }

    v35 = v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32);
    v36 = *(v99 + 32);
    v49 = v101;
    if (v101 >= v35)
    {
      v49 = (v98 + SHIDWORD(a3) * v100 + 4 * (a2 >> 32));
    }

    if (v49 < v36)
    {
      v49 = *(v99 + 32);
    }

    v38 = bswap32(*v49);
    if (v97)
    {
      v50 = *(v99 + 40);
      v51 = v95;
      v93 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      if (v95 >= v93)
      {
        v51 = v97 + SHIDWORD(a3) * v94 + (a2 >> 32);
      }

      if (v51 >= v50)
      {
        v50 = v51;
      }

      v38 |= *v50 << 32;
    }

    if (v7)
    {
      v43 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v43 & 0xF) != 0)
      {
        v92 += v44 + 1;
        v15 = ~v44 + v86;
        v23 = -1;
        goto LABEL_63;
      }
    }

    ++v44;
    ++v8;
    a3 += v102;
    v47 -= v102;
    a2 += v103;
    v48 -= v103;
    LOBYTE(v45) = -1;
  }
}

uint64_t rgb555_sample_argb32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v75 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v74 = *(result + 188);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = v13 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_37;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v74 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v74 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v74;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v75)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v75;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v74;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 4 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 4 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = *v39;
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_53:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v71 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v71)
      {
        v71 = v15;
      }

      if (v71 < v38)
      {
        v71 = v38;
      }

      v72 = interpolate_8888_21865[v50];
      v73 = v50 + 1;
      v65 = v40 - ((v72 & v40) >> v73);
      v70 = (v72 & *v71) >> v73;
LABEL_81:
      v40 = v65 + v70;
      break;
    case 2:
      v67 = (v37 + ((HIWORD(v41) << 56) >> 54));
      if (v15 < v67)
      {
        v67 = v15;
      }

      if (v67 < v38)
      {
        v67 = v38;
      }

      v68 = (v41 >> 28) & 3;
      v69 = interpolate_8888_21865[v68];
      v64 = v68 + 1;
      v65 = v40 - ((v69 & v40) >> v64);
      v66 = v69 & *v67;
LABEL_75:
      v70 = v66 >> v64;
      goto LABEL_81;
    case 3:
      v51 = HIWORD(v41) << 56;
      v52 = (v37 + (v51 >> 54));
      if (v15 < v52)
      {
        v52 = v15;
      }

      if (v52 < v38)
      {
        v52 = v38;
      }

      v53 = *v52;
      v54 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v54)
      {
        v55 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v55 = v15;
      }

      if (v55 < v38)
      {
        v55 = v38;
      }

      v56 = *v55;
      v57 = (v54 + (v51 >> 54));
      if (v15 < v57)
      {
        v57 = v15;
      }

      if (v57 < v38)
      {
        v57 = v38;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v60 = v40 - ((v58 & v40) >> v59) + ((v58 & v56) >> v59);
      v61 = v53 - ((v58 & v53) >> v59) + ((v58 & *v57) >> v59);
      v62 = (v41 >> 28) & 3;
      v63 = interpolate_8888_21865[v62];
      v64 = v62 + 1;
      v65 = v60 - ((v60 & v63) >> v64);
      v66 = v61 & v63;
      goto LABEL_75;
  }

LABEL_39:
  v42 = 0;
  v43 = 0;
  v44 = v25 >> 22;
  a3 += v10;
  v45 = v8 - a3;
  a2 += v9;
  v46 = v75 - a2;
  while (1)
  {
    *(v11 + 4 + 4 * v43) = (v40 | v14) & 0xF8000000 | (v40 >> 9) & 0x7C00 | (v40 >> 6) & 0xFFE0 | (v40 >> 3) | ((v40 | v14) >> 29 << 24);
    *(v12 + 1 + v43) = v44;
    if (a4 - 1 == v43)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v7) | (a2 - v6)) & 0x8000000000000000) != 0)
    {
      v12 += v43 + 1;
      v11 = v11 - v42 + 4;
      a4 += ~v43;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v47 = v13 + SHIDWORD(a3) * v4;
    v37 = v47 + 4 * (a2 >> 32);
    v38 = *(result + 32);
    if (v15 >= v37)
    {
      v48 = (v47 + 4 * (a2 >> 32));
    }

    else
    {
      v48 = v15;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = *v48;
    if (v5)
    {
      v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v43 + 1;
        v11 = v11 - v42 + 4;
        a4 += ~v43;
        v25 = -1;
        goto LABEL_53;
      }
    }

    ++v43;
    v42 -= 4;
    a3 += v10;
    v45 -= v10;
    a2 += v9;
    v46 -= v9;
    LOBYTE(v44) = -1;
  }
}

uint64_t rgb555_sample_ARGB32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 64);
  v7 = *(result + 72);
  v8 = *(result + 88);
  v72 = *(result + 80);
  v9 = *(result + 112);
  v10 = *(result + 120);
  v71 = *(result + 188);
  v11 = *(result + 152) - 4;
  v12 = *(result + 144) - 1;
  v13 = *(result + 32);
  if (*(result + 40))
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = v13 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  while (1)
  {
LABEL_5:
    if (a3 >= v7)
    {
      if (a3 <= v8)
      {
        v24 = (a3 >> 22) & 0x3C0;
        v25 = 0x3FFFFFFF;
        HIDWORD(v26) = HIDWORD(a3);
      }

      else
      {
        v20 = *(result + 216);
        v21 = *(result + 224) + v8;
        v22 = v21 - a3 + (v20 >> 1);
        if (v22 < 1)
        {
          goto LABEL_37;
        }

        if (v22 >= v20)
        {
          LODWORD(v23) = 0x3FFFFFFF;
        }

        else
        {
          v23 = (*(result + 232) * v22) >> 32;
        }

        v25 = v71 | v23;
        v26 = v21 - 0x1000000;
        v24 = 448;
      }
    }

    else
    {
      v16 = *(result + 216);
      v17 = v7 - *(result + 224);
      v18 = a3 - v17 + (v16 >> 1);
      if (v18 < 1)
      {
        goto LABEL_37;
      }

      if (v18 >= v16)
      {
        LODWORD(v19) = 0x3FFFFFFF;
      }

      else
      {
        v19 = (*(result + 232) * v18) >> 32;
      }

      v25 = v71 | v19;
      v26 = v17 + 0x1000000;
      v24 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v27 = *(result + 192);
    v28 = v6 - *(result + 200);
    v29 = a2 - v28 + (v27 >> 1);
    if (v29 >= 1)
    {
      if (v29 < v27)
      {
        v25 = ((v25 >> 15) * (((*(result + 208) * v29) >> 32) >> 15)) | v71;
      }

      v30 = v28 + 0x1000000;
      v31 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v9;
    a3 += v10;
    v11 += 4;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v72)
  {
    v31 = (a2 >> 26) & 0x3C;
    v30 = a2;
    goto LABEL_29;
  }

  v32 = *(result + 192);
  v33 = *(result + 200) + v72;
  v34 = v33 - a2 + (v32 >> 1);
  if (v34 < 1)
  {
    goto LABEL_37;
  }

  if (v34 < v32)
  {
    v25 = ((v25 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v71;
  }

  v30 = v33 - 0x1000000;
  v31 = 28;
LABEL_29:
  if (v25 < 0x400000)
  {
    goto LABEL_37;
  }

  v35 = v13 + SHIDWORD(v26) * v4;
  v36 = v30 >> 32;
  v37 = v35 + 4 * v36;
  v38 = *(result + 32);
  if (v15 >= v37)
  {
    v39 = (v35 + 4 * v36);
  }

  else
  {
    v39 = v15;
  }

  if (v39 < v38)
  {
    v39 = *(result + 32);
  }

  v40 = bswap32(*v39);
  if (!v5)
  {
    goto LABEL_39;
  }

  v41 = *(v5 + (v31 | v24));
LABEL_53:
  v49 = v41 & 0xF;
  v50 = HIBYTE(v41) & 3;
  switch(v49)
  {
    case 1:
      v68 = (v37 + SBYTE1(v41) * v4);
      if (v15 < v68)
      {
        v68 = v15;
      }

      if (v68 < v38)
      {
        v68 = v38;
      }

      v69 = interpolate_8888_21865[v50];
      v70 = v50 + 1;
      v66 = v40 - ((v69 & v40) >> v70);
      v67 = (bswap32(*v68) & v69) >> v70;
LABEL_81:
      v40 = v66 + v67;
      break;
    case 2:
      v64 = (v37 + ((HIWORD(v41) << 56) >> 54));
      if (v15 < v64)
      {
        v64 = v15;
      }

      if (v64 < v38)
      {
        v64 = v38;
      }

      v60 = bswap32(*v64);
      v61 = (v41 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v62 & v40;
LABEL_75:
      v65 = v61 + 1;
      v66 = v40 - (v63 >> v65);
      v67 = (v60 & v62) >> v65;
      goto LABEL_81;
    case 3:
      v51 = HIWORD(v41) << 56;
      v52 = (v37 + (v51 >> 54));
      if (v15 < v52)
      {
        v52 = v15;
      }

      if (v52 < v38)
      {
        v52 = v38;
      }

      v53 = bswap32(*v52);
      v54 = v37 + SBYTE1(v41) * v4;
      if (v15 >= v54)
      {
        v55 = (v37 + SBYTE1(v41) * v4);
      }

      else
      {
        v55 = v15;
      }

      if (v55 < v38)
      {
        v55 = v38;
      }

      v56 = bswap32(*v55);
      v57 = (v54 + (v51 >> 54));
      if (v15 < v57)
      {
        v57 = v15;
      }

      if (v57 < v38)
      {
        v57 = v38;
      }

      v58 = interpolate_8888_21865[v50];
      v59 = v50 + 1;
      v40 = v40 - ((v58 & v40) >> v59) + ((v58 & v56) >> v59);
      v60 = v53 - ((v58 & v53) >> v59) + ((bswap32(*v57) & v58) >> v59);
      v61 = (v41 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v40 & v62;
      goto LABEL_75;
  }

LABEL_39:
  v42 = 0;
  v43 = 0;
  v44 = v25 >> 22;
  a3 += v10;
  v45 = v8 - a3;
  a2 += v9;
  v46 = v72 - a2;
  while (1)
  {
    *(v11 + 4 + 4 * v43) = (v40 | v14) & 0xF8000000 | (v40 >> 9) & 0x7C00 | (v40 >> 6) & 0xFFE0 | (v40 >> 3) | ((v40 | v14) >> 29 << 24);
    *(v12 + 1 + v43) = v44;
    if (a4 - 1 == v43)
    {
      return result;
    }

    if (((v45 | v46 | (a3 - v7) | (a2 - v6)) & 0x8000000000000000) != 0)
    {
      v12 += v43 + 1;
      v11 = v11 - v42 + 4;
      a4 += ~v43;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v47 = v13 + SHIDWORD(a3) * v4;
    v37 = v47 + 4 * (a2 >> 32);
    v38 = *(result + 32);
    if (v15 >= v37)
    {
      v48 = (v47 + 4 * (a2 >> 32));
    }

    else
    {
      v48 = v15;
    }

    if (v48 < v38)
    {
      v48 = *(result + 32);
    }

    v40 = bswap32(*v48);
    if (v5)
    {
      v41 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v41 & 0xF) != 0)
      {
        v12 += v43 + 1;
        v11 = v11 - v42 + 4;
        a4 += ~v43;
        v25 = -1;
        goto LABEL_53;
      }
    }

    ++v43;
    v42 -= 4;
    a3 += v10;
    v45 -= v10;
    a2 += v9;
    v46 -= v9;
    LOBYTE(v44) = -1;
  }
}

uint64_t rgb555_sample_rgba32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v75 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v73 = *(result + 188);
  v10 = *(result + 152) - 4;
  v11 = *(result + 144) - 1;
  v12 = *(result + 32);
  if (*(result + 40))
  {
    v13 = 0;
  }

  else
  {
    v13 = 255;
  }

  v14 = v12 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v74 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v7;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_37;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v73 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_37;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v73 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v74)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v74 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v73;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 4;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v75)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_29;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v75;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_37;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v73;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_29:
  if (v24 < 0x400000)
  {
    goto LABEL_37;
  }

  v34 = v12 + SHIDWORD(v25) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 4 * v35;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v34 + 4 * v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = *v38;
  if (!v5)
  {
    goto LABEL_39;
  }

  v40 = *(v5 + (v30 | v23));
LABEL_53:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  switch(v48)
  {
    case 1:
      v70 = (v36 + SBYTE1(v40) * v4);
      if (v14 < v70)
      {
        v70 = v14;
      }

      if (v70 < v37)
      {
        v70 = v37;
      }

      v71 = interpolate_8888_21865[v49];
      v72 = v49 + 1;
      v64 = v39 - ((v71 & v39) >> v72);
      v69 = (v71 & *v70) >> v72;
LABEL_81:
      v39 = v64 + v69;
      break;
    case 2:
      v66 = (v36 + ((HIWORD(v40) << 56) >> 54));
      if (v14 < v66)
      {
        v66 = v14;
      }

      if (v66 < v37)
      {
        v66 = v37;
      }

      v67 = (v40 >> 28) & 3;
      v68 = interpolate_8888_21865[v67];
      v63 = v67 + 1;
      v64 = v39 - ((v68 & v39) >> v63);
      v65 = v68 & *v66;
LABEL_75:
      v69 = v65 >> v63;
      goto LABEL_81;
    case 3:
      v50 = HIWORD(v40) << 56;
      v51 = (v36 + (v50 >> 54));
      if (v14 < v51)
      {
        v51 = v14;
      }

      if (v51 < v37)
      {
        v51 = v37;
      }

      v52 = *v51;
      v53 = v36 + SBYTE1(v40) * v4;
      if (v14 >= v53)
      {
        v54 = (v36 + SBYTE1(v40) * v4);
      }

      else
      {
        v54 = v14;
      }

      if (v54 < v37)
      {
        v54 = v37;
      }

      v55 = *v54;
      v56 = (v53 + (v50 >> 54));
      if (v14 < v56)
      {
        v56 = v14;
      }

      if (v56 < v37)
      {
        v56 = v37;
      }

      v57 = interpolate_8888_21865[v49];
      v58 = v49 + 1;
      v59 = v39 - ((v57 & v39) >> v58) + ((v57 & v55) >> v58);
      v60 = v52 - ((v57 & v52) >> v58) + ((v57 & *v56) >> v58);
      v61 = (v40 >> 28) & 3;
      v62 = interpolate_8888_21865[v61];
      v63 = v61 + 1;
      v64 = v59 - ((v59 & v62) >> v63);
      v65 = v60 & v62;
      goto LABEL_75;
  }

LABEL_39:
  v41 = 0;
  v42 = 0;
  v43 = v24 >> 22;
  a3 += v9;
  v44 = v7 - a3;
  a2 += v8;
  v45 = v75 - a2;
  while (1)
  {
    *(v10 + 4 + 4 * v42) = (v39 >> 17) & 0x7C00 | (v39 >> 14) & 0x3E0 | (v39 >> 11) & 0xFFFFFF | (((v39 | v13) >> 3) << 27) | ((((v39 | v13) >> 5) & 7) << 24);
    *(v11 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v6) | (a2 - v74)) & 0x8000000000000000) != 0)
    {
      v11 += v42 + 1;
      v10 = v10 - v41 + 4;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v46 = v12 + SHIDWORD(a3) * v4;
    v36 = v46 + 4 * (a2 >> 32);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v47 = (v46 + 4 * (a2 >> 32));
    }

    else
    {
      v47 = v14;
    }

    if (v47 < v37)
    {
      v47 = *(result + 32);
    }

    v39 = *v47;
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v11 += v42 + 1;
        v10 = v10 - v41 + 4;
        a4 += ~v42;
        v24 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 4;
    a3 += v9;
    v44 -= v9;
    a2 += v8;
    v45 -= v8;
    LOBYTE(v43) = -1;
  }
}

uint64_t rgb555_sample_RGBA32(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 24);
  v5 = *(result + 176);
  v6 = *(result + 72);
  v7 = *(result + 88);
  v72 = *(result + 80);
  v8 = *(result + 112);
  v9 = *(result + 120);
  v70 = *(result + 188);
  v10 = *(result + 152) - 4;
  v11 = *(result + 144) - 1;
  v12 = *(result + 32);
  if (*(result + 40))
  {
    v13 = 0;
  }

  else
  {
    v13 = 255;
  }

  v14 = v12 + ((*(result + 260) - 1) * v4) + 4 * *(result + 256) - 4;
  v71 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v6)
    {
      if (a3 <= v7)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v7;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_37;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v24 = v70 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v6 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_37;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v24 = v70 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v71)
    {
      break;
    }

    v26 = *(result + 192);
    v27 = v71 - *(result + 200);
    v28 = a2 - v27 + (v26 >> 1);
    if (v28 >= 1)
    {
      if (v28 < v26)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v28) >> 32) >> 15)) | v70;
      }

      v29 = v27 + 0x1000000;
      v30 = 32;
      goto LABEL_29;
    }

LABEL_37:
    --a4;
    a2 += v8;
    a3 += v9;
    v10 += 4;
    *++v11 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v72)
  {
    v30 = (a2 >> 26) & 0x3C;
    v29 = a2;
    goto LABEL_29;
  }

  v31 = *(result + 192);
  v32 = *(result + 200) + v72;
  v33 = v32 - a2 + (v31 >> 1);
  if (v33 < 1)
  {
    goto LABEL_37;
  }

  if (v33 < v31)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v70;
  }

  v29 = v32 - 0x1000000;
  v30 = 28;
LABEL_29:
  if (v24 < 0x400000)
  {
    goto LABEL_37;
  }

  v34 = v12 + SHIDWORD(v25) * v4;
  v35 = v29 >> 32;
  v36 = v34 + 4 * v35;
  v37 = *(result + 32);
  if (v14 >= v36)
  {
    v38 = (v34 + 4 * v35);
  }

  else
  {
    v38 = v14;
  }

  if (v38 < v37)
  {
    v38 = *(result + 32);
  }

  v39 = bswap32(*v38);
  if (!v5)
  {
    goto LABEL_39;
  }

  v40 = *(v5 + (v30 | v23));
LABEL_53:
  v48 = v40 & 0xF;
  v49 = HIBYTE(v40) & 3;
  switch(v48)
  {
    case 1:
      v67 = (v36 + SBYTE1(v40) * v4);
      if (v14 < v67)
      {
        v67 = v14;
      }

      if (v67 < v37)
      {
        v67 = v37;
      }

      v68 = interpolate_8888_21865[v49];
      v69 = v49 + 1;
      v65 = v39 - ((v68 & v39) >> v69);
      v66 = (bswap32(*v67) & v68) >> v69;
LABEL_81:
      v39 = v65 + v66;
      break;
    case 2:
      v63 = (v36 + ((HIWORD(v40) << 56) >> 54));
      if (v14 < v63)
      {
        v63 = v14;
      }

      if (v63 < v37)
      {
        v63 = v37;
      }

      v59 = bswap32(*v63);
      v60 = (v40 >> 28) & 3;
      v61 = interpolate_8888_21865[v60];
      v62 = v61 & v39;
LABEL_75:
      v64 = v60 + 1;
      v65 = v39 - (v62 >> v64);
      v66 = (v59 & v61) >> v64;
      goto LABEL_81;
    case 3:
      v50 = HIWORD(v40) << 56;
      v51 = (v36 + (v50 >> 54));
      if (v14 < v51)
      {
        v51 = v14;
      }

      if (v51 < v37)
      {
        v51 = v37;
      }

      v52 = bswap32(*v51);
      v53 = v36 + SBYTE1(v40) * v4;
      if (v14 >= v53)
      {
        v54 = (v36 + SBYTE1(v40) * v4);
      }

      else
      {
        v54 = v14;
      }

      if (v54 < v37)
      {
        v54 = v37;
      }

      v55 = bswap32(*v54);
      v56 = (v53 + (v50 >> 54));
      if (v14 < v56)
      {
        v56 = v14;
      }

      if (v56 < v37)
      {
        v56 = v37;
      }

      v57 = interpolate_8888_21865[v49];
      v58 = v49 + 1;
      v39 = v39 - ((v57 & v39) >> v58) + ((v57 & v55) >> v58);
      v59 = v52 - ((v57 & v52) >> v58) + ((bswap32(*v56) & v57) >> v58);
      v60 = (v40 >> 28) & 3;
      v61 = interpolate_8888_21865[v60];
      v62 = v39 & v61;
      goto LABEL_75;
  }

LABEL_39:
  v41 = 0;
  v42 = 0;
  v43 = v24 >> 22;
  a3 += v9;
  v44 = v7 - a3;
  a2 += v8;
  v45 = v72 - a2;
  while (1)
  {
    *(v10 + 4 + 4 * v42) = (v39 >> 17) & 0x7C00 | (v39 >> 14) & 0x3E0 | (v39 >> 11) & 0xFFFFFF | (((v39 | v13) >> 3) << 27) | ((((v39 | v13) >> 5) & 7) << 24);
    *(v11 + 1 + v42) = v43;
    if (a4 - 1 == v42)
    {
      return result;
    }

    if (((v44 | v45 | (a3 - v6) | (a2 - v71)) & 0x8000000000000000) != 0)
    {
      v11 += v42 + 1;
      v10 = v10 - v41 + 4;
      a4 += ~v42;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v46 = v12 + SHIDWORD(a3) * v4;
    v36 = v46 + 4 * (a2 >> 32);
    v37 = *(result + 32);
    if (v14 >= v36)
    {
      v47 = (v46 + 4 * (a2 >> 32));
    }

    else
    {
      v47 = v14;
    }

    if (v47 < v37)
    {
      v47 = *(result + 32);
    }

    v39 = bswap32(*v47);
    if (v5)
    {
      v40 = *(v5 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v40 & 0xF) != 0)
      {
        v11 += v42 + 1;
        v10 = v10 - v41 + 4;
        a4 += ~v42;
        v24 = -1;
        goto LABEL_53;
      }
    }

    ++v42;
    v41 -= 4;
    a3 += v9;
    v44 -= v9;
    a2 += v8;
    v45 -= v8;
    LOBYTE(v43) = -1;
  }
}

uint64_t rgb555_sample_RGB24(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 24);
  v6 = *(result + 176);
  v7 = *(result + 72);
  v8 = *(result + 80);
  v9 = *(result + 88);
  v10 = *(result + 112);
  v11 = *(result + 120);
  v76 = *(result + 188);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  v14 = v4 + (3 * *(result + 256)) + ((*(result + 260) - 1) * v5) - 3;
  v77 = *(result + 64);
  while (1)
  {
LABEL_2:
    if (a3 >= v7)
    {
      if (a3 <= v9)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        HIDWORD(v25) = HIDWORD(a3);
        v26 = v8;
        v27 = v77;
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v9;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_34;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v26 = v8;
        v27 = v77;
        v24 = v76 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v7 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_34;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v26 = v8;
      v27 = v77;
      v24 = v76 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v27)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v27 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v76;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v10;
    a3 += v11;
    v12 += 4;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v26)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_26;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v26;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_34;
  }

  if (v35 < v33)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v76;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_26:
  if (v24 < 0x400000)
  {
    goto LABEL_34;
  }

  v36 = v4 + SHIDWORD(v25) * v5;
  v37 = 3 * (v31 >> 32);
  v38 = v36 + v37;
  v39 = *(result + 32);
  if (v14 >= v36 + v37)
  {
    v40 = (v36 + v37);
  }

  else
  {
    v40 = v14;
  }

  if (v40 < v39)
  {
    v40 = *(result + 32);
  }

  v41 = (v40[1] << 16) | (*v40 << 24) | (v40[2] << 8) | 0xFF;
  if (!v6)
  {
    goto LABEL_36;
  }

  v42 = *(v6 + (v32 | v23));
LABEL_50:
  v54 = v42 & 0xF;
  v55 = HIBYTE(v42) & 3;
  switch(v54)
  {
    case 1:
      v73 = (v38 + SBYTE1(v42) * v5);
      if (v14 < v73)
      {
        v73 = v14;
      }

      if (v73 < v39)
      {
        v73 = v39;
      }

      v74 = interpolate_8888_21865[v55];
      v75 = v55 + 1;
      v71 = v41 - ((v74 & v41) >> v75);
      v72 = (((v73[1] << 16) | (*v73 << 24) | (v73[2] << 8) | 0xFF) & v74) >> v75;
LABEL_78:
      v41 = v71 + v72;
      break;
    case 2:
      v69 = (v38 + 3 * SBYTE2(v42));
      if (v14 < v69)
      {
        v69 = v14;
      }

      if (v69 < v39)
      {
        v69 = v39;
      }

      v65 = (v69[1] << 16) | (*v69 << 24) | (v69[2] << 8) | 0xFF;
      v66 = (v42 >> 28) & 3;
      v67 = interpolate_8888_21865[v66];
      v68 = v67 & v41;
LABEL_72:
      v70 = v66 + 1;
      v71 = v41 - (v68 >> v70);
      v72 = (v65 & v67) >> v70;
      goto LABEL_78;
    case 3:
      v56 = 3 * SBYTE2(v42);
      v57 = (v38 + v56);
      if (v14 < v38 + v56)
      {
        v57 = v14;
      }

      if (v57 < v39)
      {
        v57 = v39;
      }

      v58 = (v57[1] << 16) | (*v57 << 24) | (v57[2] << 8) | 0xFF;
      v59 = v38 + SBYTE1(v42) * v5;
      if (v14 >= v59)
      {
        v60 = (v38 + SBYTE1(v42) * v5);
      }

      else
      {
        v60 = v14;
      }

      if (v60 < v39)
      {
        v60 = v39;
      }

      v61 = (v60[1] << 16) | (*v60 << 24) | (v60[2] << 8) | 0xFF;
      v62 = (v59 + v56);
      if (v14 < v62)
      {
        v62 = v14;
      }

      if (v62 < v39)
      {
        v62 = v39;
      }

      v63 = interpolate_8888_21865[v55];
      v64 = v55 + 1;
      v41 = v41 - ((v63 & v41) >> v64) + ((v61 & v63) >> v64);
      v65 = v58 - ((v63 & v58) >> v64) + ((((v62[1] << 16) | (*v62 << 24) | (v62[2] << 8) | 0xFF) & v63) >> v64);
      v66 = (v42 >> 28) & 3;
      v67 = interpolate_8888_21865[v66];
      v68 = v41 & v67;
      goto LABEL_72;
  }

LABEL_36:
  v43 = 0;
  v44 = 0;
  v45 = v24 >> 22;
  a3 += v11;
  v46 = v9 - a3;
  a2 += v10;
  v47 = v8 - a2;
  while (1)
  {
    v48 = vdupq_n_s32(v41);
    v49 = vshlq_u32(v48, xmmword_18439C800);
    v49.i32[3] = vshlq_u32(v48, xmmword_18439C810).i32[3];
    v50 = vandq_s8(v49, xmmword_18439C820);
    v51 = vorr_s8(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
    *(v12 + 4 + 4 * v44) = v51.i32[0] | (v41 << 19) & 0x7000000 | v51.i32[1];
    *(v13 + 1 + v44) = v45;
    if (a4 - 1 == v44)
    {
      return result;
    }

    if (((v46 | v47 | (a3 - v7) | (a2 - v77)) & 0x8000000000000000) != 0)
    {
      v13 += v44 + 1;
      v12 = v12 - v43 + 4;
      a4 += ~v44;
      if (a4)
      {
        goto LABEL_2;
      }

      return result;
    }

    v52 = v4 + SHIDWORD(a3) * v5;
    v38 = v52 + 3 * (a2 >> 32);
    v39 = *(result + 32);
    if (v14 >= v38)
    {
      v53 = (v52 + 3 * (a2 >> 32));
    }

    else
    {
      v53 = v14;
    }

    if (v53 < v39)
    {
      v53 = *(result + 32);
    }

    v41 = (v53[1] << 16) | (*v53 << 24) | (v53[2] << 8) | 0xFF;
    if (v6)
    {
      v42 = *(v6 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v42 & 0xF) != 0)
      {
        v13 += v44 + 1;
        v12 = v12 - v43 + 4;
        a4 += ~v44;
        v24 = -1;
        goto LABEL_50;
      }
    }

    ++v44;
    v43 -= 4;
    a3 += v11;
    v46 -= v11;
    a2 += v10;
    v47 -= v10;
    LOBYTE(v45) = -1;
  }
}

uint64_t rgb555_sample_rgb555(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v134 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v133 = *(result + 112);
    if (v5 > v6)
    {
      v133 = v5 % v6;
    }
  }

  else
  {
    v133 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 40);
  v135 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v132 = v11;
  }

  else
  {
    v132 = 0;
  }

  v131 = *(result + 80);
  v129 = *(result + 88);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v127 = *(result + 188);
  v17 = (v9 + (v16 - 1) + (v15 * v134));
  v18 = v135 + (v15 * v4) + 2 * v16 - 4;
  v128 = *(result + 64);
  v130 = *(result + 72);
  do
  {
    if (a3 < v130)
    {
      v19 = *(result + 216);
      v20 = v130 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      if (v21 < 1)
      {
        goto LABEL_61;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v33 = v131;
      v30 = v127 | v23;
      v31 = v20 + 0x1000000;
      v28 = a3 - v31;
      v29 = 512;
      goto LABEL_27;
    }

    v22 = a4;
    if (a3 > v129)
    {
      v24 = *(result + 216);
      v25 = *(result + 224) + v129;
      v26 = v25 - a3 + (v24 >> 1);
      if (v26 < 1)
      {
        goto LABEL_61;
      }

      if (v26 >= v24)
      {
        LODWORD(v27) = 0x3FFFFFFF;
      }

      else
      {
        v27 = (*(result + 232) * v26) >> 32;
      }

      v33 = v131;
      v30 = v127 | v27;
      v31 = v25 - 0x1000000;
      v28 = a3 - v31;
      v29 = 448;
LABEL_27:
      v32 = v128;
      goto LABEL_28;
    }

    v28 = 0;
    v29 = (a3 >> 22) & 0x3C0;
    v30 = 0x3FFFFFFF;
    v31 = a3;
    v32 = v128;
    v33 = v131;
LABEL_28:
    if (a2 >= v32)
    {
      if (a2 <= v33)
      {
        v38 = 0;
        v39 = (a2 >> 26) & 0x3C;
        v37 = a2;
      }

      else
      {
        v40 = *(result + 192);
        v41 = *(result + 200) + v33;
        v42 = v41 - a2 + (v40 >> 1);
        if (v42 < 1)
        {
          goto LABEL_61;
        }

        if (v42 < v40)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v127;
        }

        v37 = v41 - 0x1000000;
        v38 = a2 - (v41 - 0x1000000);
        v39 = 28;
      }
    }

    else
    {
      v34 = *(result + 192);
      v35 = v32 - *(result + 200);
      v36 = a2 - v35 + (v34 >> 1);
      if (v36 < 1)
      {
        goto LABEL_61;
      }

      if (v36 < v34)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v127;
      }

      v37 = v35 + 0x1000000;
      v38 = a2 - (v35 + 0x1000000);
      v39 = 32;
    }

    if (v30 >= 0x400000)
    {
      if (v6)
      {
        v43 = (v7 & ((v31 % v7) >> 63)) + v31 % v7;
        v44 = (v6 & ((v37 % v6) >> 63)) + v37 % v6;
        if (v43 >= v7)
        {
          v45 = v7;
        }

        else
        {
          v45 = 0;
        }

        v31 = v43 - v45;
        if (v44 >= v6)
        {
          v46 = v6;
        }

        else
        {
          v46 = 0;
        }

        v37 = v44 - v46;
        v28 += v31;
        v38 += v37;
      }

      v47 = v31 >> 32;
      v48 = v37 >> 32;
      v49 = v135 + v47 * v4;
      v50 = v49 + 2 * v48;
      v51 = *(result + 32);
      if (v18 >= v50)
      {
        v52 = (v49 + 2 * v48);
      }

      else
      {
        v52 = v18;
      }

      if (v52 < v51)
      {
        v52 = *(result + 32);
      }

      v53 = *v52;
      if (v9)
      {
        v54 = v9 + v47 * v134 + v48;
        v55 = *(result + 40);
        if (v17 >= v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = v17;
        }

        if (v56 >= v55)
        {
          v55 = v56;
        }

        v53 |= *v55 << 24;
        if (!v8)
        {
          while (1)
          {
            while (1)
            {
LABEL_66:
              *(v12 + 4) = v14 | (v53 >> 29 << 24) | v53;
              *(v13 + 1) = v30 >> 22;
              if (v22 == 1)
              {
                return result;
              }

              v59 = v22;
              v60 = 0;
              a2 += v5;
              v61 = v131 - a2;
              a3 += v10;
              v62 = v129 - a3;
              v63 = -4;
              while (1)
              {
                if ((v62 | v61 | (a3 - v130) | (a2 - v128)) < 0)
                {
                  v13 += v60 + 1;
                  v12 -= v63;
                  v57 = ~v60 + v59;
                  goto LABEL_62;
                }

                if (v6)
                {
                  v64 = (v7 & ((v28 + v132) >> 63)) + v28 + v132;
                  v65 = (v6 & ((v38 + v133) >> 63)) + v38 + v133;
                  if (v64 >= v7)
                  {
                    v66 = v7;
                  }

                  else
                  {
                    v66 = 0;
                  }

                  v28 = v64 - v66;
                  if (v65 >= v6)
                  {
                    v67 = v6;
                  }

                  else
                  {
                    v67 = 0;
                  }

                  v38 = v65 - v67;
                  v68 = v28;
                  v69 = v38;
                }

                else
                {
                  v68 = a3;
                  v69 = a2;
                }

                v70 = v69 >> 32;
                v71 = v68 >> 32;
                v50 = v135 + SHIDWORD(v68) * v4 + 2 * (v69 >> 32);
                v51 = *(result + 32);
                if (v18 >= v50)
                {
                  v72 = v50;
                }

                else
                {
                  v72 = v18;
                }

                if (v72 < v51)
                {
                  v72 = *(result + 32);
                }

                v53 = *v72;
                if (v9)
                {
                  v54 = v9 + v71 * v134 + v70;
                  v73 = *(result + 40);
                  if (v17 >= v54)
                  {
                    v74 = v54;
                  }

                  else
                  {
                    v74 = v17;
                  }

                  if (v74 >= v73)
                  {
                    v73 = v74;
                  }

                  v53 |= *v73 << 24;
                }

                if (v8)
                {
                  v58 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
                  if ((v58 & 0xF) != 0)
                  {
                    break;
                  }
                }

                *(v12 + 4 * v60 + 8) = v14 | (v53 >> 29 << 24) | v53;
                v75 = v13 + v60++;
                v63 -= 4;
                *(v75 + 2) = -1;
                a2 += v5;
                v61 -= v5;
                a3 += v10;
                v62 -= v10;
                if (v59 - 1 == v60)
                {
                  return result;
                }
              }

              v13 += v60 + 1;
              v12 -= v63;
              v22 = ~v60 + v59;
              v30 = -1;
LABEL_96:
              v76 = v58 & 0xF;
              v77 = v58 >> 8;
              v78 = HIBYTE(v58) & 3;
              if (v76 != 1)
              {
                break;
              }

              LODWORD(v116) = SBYTE1(v58);
              if (v6)
              {
                v117 = v77 << 56;
                v118 = v28 + (v117 >> 24);
                v119 = v7 & (v118 >> 63);
                if (v119 + v118 >= v7)
                {
                  v120 = v7;
                }

                else
                {
                  v120 = 0;
                }

                v116 = (v119 + (v117 >> 24) - v120) >> 32;
              }

              v121 = (v50 + v116 * v4);
              if (v18 < v121)
              {
                v121 = v18;
              }

              if (v121 < v51)
              {
                v121 = v51;
              }

              v122 = *v121;
              if (v9)
              {
                v123 = (v54 + v116 * v134);
                if (v17 < v123)
                {
                  v123 = v17;
                }

                if (v123 < *(result + 40))
                {
                  v123 = *(result + 40);
                }

                v122 |= *v123 << 24;
              }

              v124 = interpolate_8555_21866[v78];
              v114 = v53 - ((v124 & v53) >> (v78 + 1));
              v115 = (v124 & v122) >> (v78 + 1);
LABEL_168:
              v53 = v114 + v115;
            }

            if (v76 == 2)
            {
              v104 = SBYTE2(v58);
              if (v6)
              {
                v105 = HIWORD(v58) << 56;
                v106 = v38 + (v105 >> 24);
                v107 = v6 & (v106 >> 63);
                if (v107 + v106 >= v6)
                {
                  v108 = v6;
                }

                else
                {
                  v108 = 0;
                }

                v104 = (v107 + (v105 >> 24) - v108) >> 32;
              }

              v109 = (v50 + 2 * v104);
              if (v18 < v109)
              {
                v109 = v18;
              }

              if (v109 < v51)
              {
                v109 = v51;
              }

              v110 = *v109;
              if (v9)
              {
                v111 = (v54 + v104);
                if (v17 < v111)
                {
                  v111 = v17;
                }

                if (v111 < *(result + 40))
                {
                  v111 = *(result + 40);
                }

                v110 |= *v111 << 24;
              }

              v112 = (v58 >> 28) & 3;
              v113 = interpolate_8555_21866[v112];
              LOBYTE(v112) = v112 + 1;
              v114 = v53 - ((v113 & v53) >> v112);
              v115 = (v113 & v110) >> v112;
              goto LABEL_168;
            }

            if (v76 == 3)
            {
              v79 = HIBYTE(v58) & 3;
              v126 = v30;
              v125 = v22;
              LODWORD(v80) = SBYTE1(v58);
              v81 = SBYTE2(v58);
              if (v6)
              {
                v82 = v77 << 56;
                v83 = v28 + (v82 >> 24);
                v84 = v38 + (SBYTE2(v58) << 32);
                v85 = v7 & (v83 >> 63);
                v86 = v6 & (v84 >> 63);
                v87 = v86 + v84;
                if (v85 + v83 >= v7)
                {
                  v88 = v7;
                }

                else
                {
                  v88 = 0;
                }

                if (v87 >= v6)
                {
                  v89 = v6;
                }

                else
                {
                  v89 = 0;
                }

                v80 = (v85 + (v82 >> 24) - v88) >> 32;
                v81 = (v86 + ((HIWORD(v58) << 56) >> 24) - v89) >> 32;
              }

              v90 = (v50 + 2 * v81);
              if (v18 < v90)
              {
                v90 = v18;
              }

              if (v90 < v51)
              {
                v90 = v51;
              }

              v91 = *v90;
              v92 = v50 + v80 * v4;
              if (v18 >= v92)
              {
                v93 = (v50 + v80 * v4);
              }

              else
              {
                v93 = v18;
              }

              if (v93 < v51)
              {
                v93 = v51;
              }

              v94 = *v93;
              v95 = (v92 + 2 * v81);
              if (v18 < v95)
              {
                v95 = v18;
              }

              if (v95 >= v51)
              {
                v51 = v95;
              }

              v96 = *v51;
              if (v9)
              {
                v97 = (v54 + v81);
                v98 = *(result + 40);
                if (v17 < v54 + v81)
                {
                  v97 = v17;
                }

                if (v97 < v98)
                {
                  v97 = *(result + 40);
                }

                v91 |= *v97 << 24;
                v99 = (v54 + v80 * v134);
                if (v17 >= v99)
                {
                  v100 = v99;
                }

                else
                {
                  v100 = v17;
                }

                if (v100 < v98)
                {
                  v100 = *(result + 40);
                }

                v94 |= *v100 << 24;
                v101 = &v99[v81];
                if (v17 < v101)
                {
                  v101 = v17;
                }

                if (v101 < v98)
                {
                  v101 = *(result + 40);
                }

                v96 |= *v101 << 24;
              }

              v102 = interpolate_8555_21866[v79];
              v103 = v53 - ((v102 & v53) >> (v79 + 1)) + ((v102 & v94) >> (v79 + 1));
              v53 = v103 - ((v103 & interpolate_8555_21866[(v58 >> 28) & 3]) >> (((v58 >> 28) & 3) + 1)) + (((v91 - ((v102 & v91) >> (v79 + 1)) + ((v102 & v96) >> (v79 + 1))) & interpolate_8555_21866[(v58 >> 28) & 3]) >> (((v58 >> 28) & 3) + 1));
              v22 = v125;
              v30 = v126;
            }
          }
        }
      }

      else
      {
        v54 = 0;
        if (!v8)
        {
          goto LABEL_66;
        }
      }

      v58 = *(v8 + (v39 | v29));
      goto LABEL_96;
    }

LABEL_61:
    v57 = v22 - 1;
    a2 += v5;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
LABEL_62:
    a4 = v57;
  }

  while (v57);
  return result;
}

uint64_t rgb555_sample_RGB555(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v134 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v133 = *(result + 112);
    if (v5 > v6)
    {
      v133 = v5 % v6;
    }
  }

  else
  {
    v133 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 40);
  v135 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v132 = v11;
  }

  else
  {
    v132 = 0;
  }

  v131 = *(result + 80);
  v129 = *(result + 88);
  v12 = *(result + 152) - 4;
  v13 = *(result + 144) - 1;
  if (v9)
  {
    v14 = 0;
  }

  else
  {
    v14 = -16777216;
  }

  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v127 = *(result + 188);
  v17 = (v9 + (v16 - 1) + (v15 * v134));
  v18 = v135 + (v15 * v4) + 2 * v16 - 4;
  v128 = *(result + 64);
  v130 = *(result + 72);
  do
  {
    if (a3 < v130)
    {
      v19 = *(result + 216);
      v20 = v130 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      if (v21 < 1)
      {
        goto LABEL_61;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v33 = v131;
      v30 = v127 | v23;
      v31 = v20 + 0x1000000;
      v28 = a3 - v31;
      v29 = 512;
      goto LABEL_27;
    }

    v22 = a4;
    if (a3 > v129)
    {
      v24 = *(result + 216);
      v25 = *(result + 224) + v129;
      v26 = v25 - a3 + (v24 >> 1);
      if (v26 < 1)
      {
        goto LABEL_61;
      }

      if (v26 >= v24)
      {
        LODWORD(v27) = 0x3FFFFFFF;
      }

      else
      {
        v27 = (*(result + 232) * v26) >> 32;
      }

      v33 = v131;
      v30 = v127 | v27;
      v31 = v25 - 0x1000000;
      v28 = a3 - v31;
      v29 = 448;
LABEL_27:
      v32 = v128;
      goto LABEL_28;
    }

    v28 = 0;
    v29 = (a3 >> 22) & 0x3C0;
    v30 = 0x3FFFFFFF;
    v31 = a3;
    v32 = v128;
    v33 = v131;
LABEL_28:
    if (a2 >= v32)
    {
      if (a2 <= v33)
      {
        v38 = 0;
        v39 = (a2 >> 26) & 0x3C;
        v37 = a2;
      }

      else
      {
        v40 = *(result + 192);
        v41 = *(result + 200) + v33;
        v42 = v41 - a2 + (v40 >> 1);
        if (v42 < 1)
        {
          goto LABEL_61;
        }

        if (v42 < v40)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v127;
        }

        v37 = v41 - 0x1000000;
        v38 = a2 - (v41 - 0x1000000);
        v39 = 28;
      }
    }

    else
    {
      v34 = *(result + 192);
      v35 = v32 - *(result + 200);
      v36 = a2 - v35 + (v34 >> 1);
      if (v36 < 1)
      {
        goto LABEL_61;
      }

      if (v36 < v34)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v127;
      }

      v37 = v35 + 0x1000000;
      v38 = a2 - (v35 + 0x1000000);
      v39 = 32;
    }

    if (v30 >= 0x400000)
    {
      if (v6)
      {
        v43 = (v7 & ((v31 % v7) >> 63)) + v31 % v7;
        v44 = (v6 & ((v37 % v6) >> 63)) + v37 % v6;
        if (v43 >= v7)
        {
          v45 = v7;
        }

        else
        {
          v45 = 0;
        }

        v31 = v43 - v45;
        if (v44 >= v6)
        {
          v46 = v6;
        }

        else
        {
          v46 = 0;
        }

        v37 = v44 - v46;
        v28 += v31;
        v38 += v37;
      }

      v47 = v31 >> 32;
      v48 = v37 >> 32;
      v49 = v135 + v47 * v4;
      v50 = v49 + 2 * v48;
      v51 = *(result + 32);
      if (v18 >= v50)
      {
        v52 = (v49 + 2 * v48);
      }

      else
      {
        v52 = v18;
      }

      if (v52 < v51)
      {
        v52 = *(result + 32);
      }

      v53 = bswap32(*v52) >> 16;
      if (v9)
      {
        v54 = v9 + v47 * v134 + v48;
        v55 = *(result + 40);
        if (v17 >= v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = v17;
        }

        if (v56 >= v55)
        {
          v55 = v56;
        }

        v53 |= *v55 << 24;
        if (!v8)
        {
          while (1)
          {
            while (1)
            {
LABEL_66:
              *(v12 + 4) = v14 | (v53 >> 29 << 24) | v53;
              *(v13 + 1) = v30 >> 22;
              if (v22 == 1)
              {
                return result;
              }

              v59 = v22;
              v60 = 0;
              a2 += v5;
              v61 = v131 - a2;
              a3 += v10;
              v62 = v129 - a3;
              v63 = -4;
              while (1)
              {
                if ((v62 | v61 | (a3 - v130) | (a2 - v128)) < 0)
                {
                  v13 += v60 + 1;
                  v12 -= v63;
                  v57 = ~v60 + v59;
                  goto LABEL_62;
                }

                if (v6)
                {
                  v64 = (v7 & ((v28 + v132) >> 63)) + v28 + v132;
                  v65 = (v6 & ((v38 + v133) >> 63)) + v38 + v133;
                  if (v64 >= v7)
                  {
                    v66 = v7;
                  }

                  else
                  {
                    v66 = 0;
                  }

                  v28 = v64 - v66;
                  if (v65 >= v6)
                  {
                    v67 = v6;
                  }

                  else
                  {
                    v67 = 0;
                  }

                  v38 = v65 - v67;
                  v68 = v28;
                  v69 = v38;
                }

                else
                {
                  v68 = a3;
                  v69 = a2;
                }

                v70 = v69 >> 32;
                v71 = v68 >> 32;
                v50 = v135 + SHIDWORD(v68) * v4 + 2 * (v69 >> 32);
                v51 = *(result + 32);
                if (v18 >= v50)
                {
                  v72 = v50;
                }

                else
                {
                  v72 = v18;
                }

                if (v72 < v51)
                {
                  v72 = *(result + 32);
                }

                v53 = bswap32(*v72) >> 16;
                if (v9)
                {
                  v54 = v9 + v71 * v134 + v70;
                  v73 = *(result + 40);
                  if (v17 >= v54)
                  {
                    v74 = v54;
                  }

                  else
                  {
                    v74 = v17;
                  }

                  if (v74 >= v73)
                  {
                    v73 = v74;
                  }

                  v53 |= *v73 << 24;
                }

                if (v8)
                {
                  v58 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
                  if ((v58 & 0xF) != 0)
                  {
                    break;
                  }
                }

                *(v12 + 4 * v60 + 8) = v14 | (v53 >> 29 << 24) | v53;
                v75 = v13 + v60++;
                v63 -= 4;
                *(v75 + 2) = -1;
                a2 += v5;
                v61 -= v5;
                a3 += v10;
                v62 -= v10;
                if (v59 - 1 == v60)
                {
                  return result;
                }
              }

              v13 += v60 + 1;
              v12 -= v63;
              v22 = ~v60 + v59;
              v30 = -1;
LABEL_96:
              v76 = v58 & 0xF;
              v77 = v58 >> 8;
              v78 = HIBYTE(v58) & 3;
              if (v76 != 1)
              {
                break;
              }

              LODWORD(v116) = SBYTE1(v58);
              if (v6)
              {
                v117 = v77 << 56;
                v118 = v28 + (v117 >> 24);
                v119 = v7 & (v118 >> 63);
                if (v119 + v118 >= v7)
                {
                  v120 = v7;
                }

                else
                {
                  v120 = 0;
                }

                v116 = (v119 + (v117 >> 24) - v120) >> 32;
              }

              v121 = (v50 + v116 * v4);
              if (v18 < v121)
              {
                v121 = v18;
              }

              if (v121 < v51)
              {
                v121 = v51;
              }

              v122 = bswap32(*v121) >> 16;
              if (v9)
              {
                v123 = (v54 + v116 * v134);
                if (v17 < v123)
                {
                  v123 = v17;
                }

                if (v123 < *(result + 40))
                {
                  v123 = *(result + 40);
                }

                v122 |= *v123 << 24;
              }

              v124 = interpolate_8555_21866[v78];
              v114 = v53 - ((v124 & v53) >> (v78 + 1));
              v115 = (v124 & v122) >> (v78 + 1);
LABEL_168:
              v53 = v114 + v115;
            }

            if (v76 == 2)
            {
              v104 = SBYTE2(v58);
              if (v6)
              {
                v105 = HIWORD(v58) << 56;
                v106 = v38 + (v105 >> 24);
                v107 = v6 & (v106 >> 63);
                if (v107 + v106 >= v6)
                {
                  v108 = v6;
                }

                else
                {
                  v108 = 0;
                }

                v104 = (v107 + (v105 >> 24) - v108) >> 32;
              }

              v109 = (v50 + 2 * v104);
              if (v18 < v109)
              {
                v109 = v18;
              }

              if (v109 < v51)
              {
                v109 = v51;
              }

              v110 = bswap32(*v109) >> 16;
              if (v9)
              {
                v111 = (v54 + v104);
                if (v17 < v111)
                {
                  v111 = v17;
                }

                if (v111 < *(result + 40))
                {
                  v111 = *(result + 40);
                }

                v110 |= *v111 << 24;
              }

              v112 = (v58 >> 28) & 3;
              v113 = interpolate_8555_21866[v112];
              LOBYTE(v112) = v112 + 1;
              v114 = v53 - ((v113 & v53) >> v112);
              v115 = (v113 & v110) >> v112;
              goto LABEL_168;
            }

            if (v76 == 3)
            {
              v79 = HIBYTE(v58) & 3;
              v126 = v30;
              v125 = v22;
              LODWORD(v80) = SBYTE1(v58);
              v81 = SBYTE2(v58);
              if (v6)
              {
                v82 = v77 << 56;
                v83 = v28 + (v82 >> 24);
                v84 = v38 + (SBYTE2(v58) << 32);
                v85 = v7 & (v83 >> 63);
                v86 = v6 & (v84 >> 63);
                v87 = v86 + v84;
                if (v85 + v83 >= v7)
                {
                  v88 = v7;
                }

                else
                {
                  v88 = 0;
                }

                if (v87 >= v6)
                {
                  v89 = v6;
                }

                else
                {
                  v89 = 0;
                }

                v80 = (v85 + (v82 >> 24) - v88) >> 32;
                v81 = (v86 + ((HIWORD(v58) << 56) >> 24) - v89) >> 32;
              }

              v90 = (v50 + 2 * v81);
              if (v18 < v90)
              {
                v90 = v18;
              }

              if (v90 < v51)
              {
                v90 = v51;
              }

              v91 = bswap32(*v90) >> 16;
              v92 = v50 + v80 * v4;
              if (v18 >= v92)
              {
                v93 = (v50 + v80 * v4);
              }

              else
              {
                v93 = v18;
              }

              if (v93 < v51)
              {
                v93 = v51;
              }

              v94 = bswap32(*v93) >> 16;
              v95 = (v92 + 2 * v81);
              if (v18 < v95)
              {
                v95 = v18;
              }

              if (v95 >= v51)
              {
                v51 = v95;
              }

              v96 = bswap32(*v51) >> 16;
              if (v9)
              {
                v97 = (v54 + v81);
                v98 = *(result + 40);
                if (v17 < v54 + v81)
                {
                  v97 = v17;
                }

                if (v97 < v98)
                {
                  v97 = *(result + 40);
                }

                v91 |= *v97 << 24;
                v99 = (v54 + v80 * v134);
                if (v17 >= v99)
                {
                  v100 = v99;
                }

                else
                {
                  v100 = v17;
                }

                if (v100 < v98)
                {
                  v100 = *(result + 40);
                }

                v94 |= *v100 << 24;
                v101 = &v99[v81];
                if (v17 < v101)
                {
                  v101 = v17;
                }

                if (v101 < v98)
                {
                  v101 = *(result + 40);
                }

                v96 |= *v101 << 24;
              }

              v102 = interpolate_8555_21866[v79];
              v103 = v53 - ((v102 & v53) >> (v79 + 1)) + ((v102 & v94) >> (v79 + 1));
              v53 = v103 - ((v103 & interpolate_8555_21866[(v58 >> 28) & 3]) >> (((v58 >> 28) & 3) + 1)) + (((v91 - ((v102 & v91) >> (v79 + 1)) + ((v102 & v96) >> (v79 + 1))) & interpolate_8555_21866[(v58 >> 28) & 3]) >> (((v58 >> 28) & 3) + 1));
              v22 = v125;
              v30 = v126;
            }
          }
        }
      }

      else
      {
        v54 = 0;
        if (!v8)
        {
          goto LABEL_66;
        }
      }

      v58 = *(v8 + (v39 | v29));
      goto LABEL_96;
    }

LABEL_61:
    v57 = v22 - 1;
    a2 += v5;
    a3 += v10;
    v12 += 4;
    *++v13 = 0;
LABEL_62:
    a4 = v57;
  }

  while (v57);
  return result;
}

uint64_t rgb555_sample_W8(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 176);
  v91 = *(result + 80);
  v89 = *(result + 88);
  v9 = *(result + 112);
  v8 = *(result + 120);
  v92 = *(result + 144) - 1;
  v93 = *(result + 152) - 4;
  if (v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = -16777216;
  }

  v11 = *(result + 260) - 1;
  v12 = *(result + 256);
  v94 = *(result + 28);
  v87 = *(result + 188);
  v13 = (v5 + (v12 - 1) + (v11 * v94));
  v14 = v4 + v12 + (v11 * v6) - 1;
  v90 = *(result + 72);
  v88 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v90)
    {
      if (a3 <= v89)
      {
        v23 = (a3 >> 22) & 0x3C0;
        v24 = 0x3FFFFFFF;
        v25 = a3;
        v26 = v88;
        v27 = v91;
      }

      else
      {
        v19 = *(result + 216);
        v20 = *(result + 224) + v89;
        v21 = v20 - a3 + (v19 >> 1);
        if (v21 < 1)
        {
          goto LABEL_42;
        }

        if (v21 >= v19)
        {
          LODWORD(v22) = 0x3FFFFFFF;
        }

        else
        {
          v22 = (*(result + 232) * v21) >> 32;
        }

        v26 = v88;
        v27 = v91;
        v24 = v87 | v22;
        v25 = v20 - 0x1000000;
        v23 = 448;
      }
    }

    else
    {
      v15 = *(result + 216);
      v16 = v90 - *(result + 224);
      v17 = a3 - v16 + (v15 >> 1);
      if (v17 < 1)
      {
        goto LABEL_42;
      }

      if (v17 >= v15)
      {
        LODWORD(v18) = 0x3FFFFFFF;
      }

      else
      {
        v18 = (*(result + 232) * v17) >> 32;
      }

      v26 = v88;
      v27 = v91;
      v24 = v87 | v18;
      v25 = v16 + 0x1000000;
      v23 = 512;
    }

    if (a2 >= v26)
    {
      break;
    }

    v28 = *(result + 192);
    v29 = v26 - *(result + 200);
    v30 = a2 - v29 + (v28 >> 1);
    if (v30 >= 1)
    {
      if (v30 < v28)
      {
        v24 = ((v24 >> 15) * (((*(result + 208) * v30) >> 32) >> 15)) | v87;
      }

      v31 = v29 + 0x1000000;
      v32 = 32;
      goto LABEL_29;
    }

LABEL_42:
    --a4;
    a2 += v9;
    a3 += v8;
    v93 += 4;
    *++v92 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v27)
  {
    v32 = (a2 >> 26) & 0x3C;
    v31 = a2;
    goto LABEL_29;
  }

  v33 = *(result + 192);
  v34 = *(result + 200) + v27;
  v35 = v34 - a2 + (v33 >> 1);
  if (v35 < 1)
  {
    goto LABEL_42;
  }

  if (v35 < v33)
  {
    v24 = ((v24 >> 15) * (((*(result + 208) * v35) >> 32) >> 15)) | v87;
  }

  v31 = v34 - 0x1000000;
  v32 = 28;
LABEL_29:
  if (v24 < 0x400000)
  {
    goto LABEL_42;
  }

  v36 = v25 >> 32;
  v37 = v4 + v36 * v6;
  v38 = v37 + (v31 >> 32);
  v39 = *(result + 32);
  if (v14 >= v38)
  {
    v40 = (v37 + (v31 >> 32));
  }

  else
  {
    v40 = v14;
  }

  if (v40 < v39)
  {
    v40 = *(result + 32);
  }

  v41 = *v40;
  if (v5)
  {
    v42 = v5 + v36 * v94 + (v31 >> 32);
    v43 = *(result + 40);
    if (v13 >= v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v13;
    }

    if (v44 >= v43)
    {
      v43 = v44;
    }

    v41 |= *v43 << 24;
  }

  else
  {
    v42 = 0;
  }

  v45 = v89;
  if (v7)
  {
    v46 = *(v7 + (v32 | v23));
LABEL_68:
    v58 = v46 & 0xF;
    v59 = HIBYTE(v46) & 3;
    if (v58 == 1)
    {
      v82 = (v38 + SBYTE1(v46) * v6);
      if (v14 < v82)
      {
        v82 = v14;
      }

      if (v82 < v39)
      {
        v82 = v39;
      }

      v83 = *v82;
      if (v5)
      {
        v84 = (v42 + SBYTE1(v46) * v94);
        v45 = v89;
        if (v13 < v84)
        {
          v84 = v13;
        }

        if (v84 < *(result + 40))
        {
          v84 = *(result + 40);
        }

        v83 |= *v84 << 24;
      }

      v85 = interpolate_8888_21865[v59];
      v86 = v59 + 1;
      v80 = v41 - ((v85 & v41) >> v86);
      v81 = (v85 & v83) >> v86;
    }

    else
    {
      if (v58 != 2)
      {
        if (v58 == 3)
        {
          v60 = (v38 + SBYTE2(v46));
          if (v14 < v60)
          {
            v60 = v14;
          }

          if (v60 < v39)
          {
            v60 = v39;
          }

          v61 = *v60;
          v62 = v38 + SBYTE1(v46) * v6;
          if (v14 >= v62)
          {
            v63 = (v38 + SBYTE1(v46) * v6);
          }

          else
          {
            v63 = v14;
          }

          if (v63 < v39)
          {
            v63 = v39;
          }

          v64 = *v63;
          v65 = (v62 + SBYTE2(v46));
          if (v14 < v65)
          {
            v65 = v14;
          }

          if (v65 < v39)
          {
            v65 = v39;
          }

          v66 = *v65;
          if (v5)
          {
            v67 = (v42 + SBYTE2(v46));
            v68 = *(result + 40);
            if (v13 < v67)
            {
              v67 = v13;
            }

            if (v67 < v68)
            {
              v67 = *(result + 40);
            }

            v61 |= *v67 << 24;
            v69 = v42 + SBYTE1(v46) * v94;
            v45 = v89;
            if (v13 >= v69)
            {
              v70 = (v42 + SBYTE1(v46) * v94);
            }

            else
            {
              v70 = v13;
            }

            if (v70 < v68)
            {
              v70 = *(result + 40);
            }

            v64 |= *v70 << 24;
            v71 = (v69 + SBYTE2(v46));
            if (v13 < v71)
            {
              v71 = v13;
            }

            if (v71 < v68)
            {
              v71 = *(result + 40);
            }

            v66 |= *v71 << 24;
          }

          v72 = interpolate_8888_21865[v59];
          v73 = v59 + 1;
          v74 = v41 - ((v72 & v41) >> v73) + ((v72 & v64) >> v73);
          v41 = v74 - ((v74 & interpolate_8888_21865[(v46 >> 28) & 3]) >> (((v46 >> 28) & 3) + 1)) + (((v61 - ((v72 & v61) >> v73) + ((v72 & v66) >> v73)) & interpolate_8888_21865[(v46 >> 28) & 3]) >> (((v46 >> 28) & 3) + 1));
        }

        goto LABEL_47;
      }

      v75 = (v38 + SBYTE2(v46));
      if (v14 < v75)
      {
        v75 = v14;
      }

      if (v75 < v39)
      {
        v75 = v39;
      }

      v76 = *v75;
      if (v5)
      {
        v77 = (v42 + SBYTE2(v46));
        if (v13 < v77)
        {
          v77 = v13;
        }

        if (v77 < *(result + 40))
        {
          v77 = *(result + 40);
        }

        v76 |= *v77 << 24;
      }

      v78 = (v46 >> 28) & 3;
      v79 = interpolate_8888_21865[v78];
      LOBYTE(v78) = v78 + 1;
      v80 = v41 - ((v79 & v41) >> v78);
      v81 = (v79 & v76) >> v78;
    }

    v41 = v80 + v81;
  }

LABEL_47:
  v47 = 0;
  v48 = 0;
  v49 = v24 >> 22;
  a3 += v8;
  v50 = v45 - a3;
  a2 += v9;
  v51 = v91 - a2;
  while (1)
  {
    HIDWORD(v52) = v41;
    LODWORD(v52) = v41 | v10;
    *(v93 + 4 + 4 * v48) = (4 * v41) & 0x3E0 | (v41 >> 3 << 10) | ((v52 >> 24) >> 11) & 0xFFFFFF | (((v52 >> 24) >> 3) << 27) | (((v41 | v10) >> 24) >> 5 << 24);
    *(v92 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if ((v50 | v51 | (a3 - v90) | (a2 - v88)) < 0)
    {
      v92 += v48 + 1;
      v93 = v93 - v47 + 4;
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v53 = v4 + SHIDWORD(a3) * v6;
    v38 = v53 + (a2 >> 32);
    v39 = *(result + 32);
    if (v14 >= v38)
    {
      v54 = (v53 + (a2 >> 32));
    }

    else
    {
      v54 = v14;
    }

    if (v54 < v39)
    {
      v54 = *(result + 32);
    }

    v41 = *v54;
    if (v5)
    {
      v55 = v5 + SHIDWORD(a3) * v94;
      v42 = v55 + (a2 >> 32);
      v56 = *(result + 40);
      if (v13 >= v42)
      {
        v57 = (v55 + (a2 >> 32));
      }

      else
      {
        v57 = v13;
      }

      if (v57 >= v56)
      {
        v56 = v57;
      }

      v41 |= *v56 << 24;
    }

    if (v7)
    {
      v46 = *(v7 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v46 & 0xF) != 0)
      {
        v92 += v48 + 1;
        v93 = v93 - v47 + 4;
        a4 += ~v48;
        v24 = -1;
        v45 = v89;
        goto LABEL_68;
      }
    }

    ++v48;
    v47 -= 4;
    a3 += v8;
    v50 -= v8;
    a2 += v9;
    v51 -= v9;
    LOBYTE(v49) = -1;
  }
}

uint64_t rgb555_shade(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v6 = v3;
  v47 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  *v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v8 = *(v7 + 56);
  v9 = *v3;
  v10 = !*(v3 + 12) && !*(v4 + 72) && *(v4 + 4) >= 1.0;
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v11 = *(v8 + 16 * v9 + 8 * v10 + 4 * (*(v3 + 6) == 0));
  if (v11 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v3 + 1) < 1 || *(v3 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v3, v4, v17, v42) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*v5 & 0xF000000) == 0x3000000)
  {
    if (*(v5 + 16))
    {
      v14 = rgb555_shade_radial_RGB;
    }

    else if (*(v5 + 24))
    {
      v14 = rgb555_shade_conic_RGB;
    }

    else if (*(&v19 + 1) < 2)
    {
      v14 = rgb555_shade_axial_RGB;
    }

    else
    {
      v14 = rgb555_shade_custom_RGB;
    }

    *&v17[0] = v14;
    if (v40)
    {
      *(&v39 + 1) = v46;
      _blt_shade_samples_16(v46, 1, 3, v40, *(&v40 + 1), 1uLL);
    }

    v15 = *(&v19 + 1) * v19;
    if ((*(&v19 + 1) * v19) <= 480)
    {
      v16 = v44;
      v38[1] = v44;
LABEL_27:
      _blt_shade_samples_16(v16, 1, 3, v18, *(&v18 + 1), v15);
      if (*(v5 + 1))
      {
        *&v39 = &_blt_shade_samples_noise;
      }

      goto LABEL_29;
    }

    v16 = malloc_type_malloc(8 * v15 + 32, 0x8C254358uLL);
    if (v16)
    {
      v38[1] = v16;
      v15 = *(&v19 + 1) * v19;
      goto LABEL_27;
    }

    return 0xFFFFFFFFLL;
  }

  if (!*&v17[0])
  {
    return 0xFFFFFFFFLL;
  }

LABEL_29:
  DWORD2(v17[0]) = *v7;
  HIDWORD(v17[0]) = DWORD2(v17[0]);
  rgb555_image_mark(v6, v17, v11, v13);
  if (v38[1] && (v38[1] < v44 || &v45 < v38[1]))
  {
    free(v38[1]);
  }

  return 1;
}

void rgb555_image_mark(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v345 = a3;
  v366 = *MEMORY[0x1E69E9840];
  v354 = a1;
  v364 = *(a1 + 4);
  v344 = v364;
  v4 = (v364 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 <= 0x1FFFFFF)
  {
    v5 = *(v354 + 40);
    v6 = *(a2 + 184);
    v7 = *(v354 + 136);
    v361 = *(v354 + 48);
    v362 = v7;
    v8 = *(a2 + 96);
    v360 = *(a2 + 104);
    v10 = *(v354 + 24);
    v9 = *(v354 + 28);
    v11 = *(v354 + 16);
    v12 = *(v354 + 20);
    v13 = *(v354 + 12);
    v359 = *(v354 + 8);
    v356 = a2;
    v14 = *(a2 + 16);
    v15 = (v14 + 6) * v4;
    if (v15 > 65439)
    {
      v18 = malloc_type_calloc(1uLL, v15 + 96, 0xF5B4F9ABuLL);
      v17 = v18;
      v20 = v18;
      v21 = v356;
      if (!v18)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a4);
      v17 = &v338 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v17, v16);
      v20 = 0;
      v21 = v356;
    }

    v22 = v12;
    v340 = v20;
    v358 = v8;
    v363 = ((v6 * 255.0) + 0.5);
    v23 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
    v24 = v23 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21[20] = v24;
    if (v14)
    {
      v25 = 4 * v4;
    }

    else
    {
      v25 = 0;
    }

    v26 = v24 + v25;
    v27 = v5 + (v10 - 1) * v9;
    v28 = v9 >> 1;
    v21[18] = v23;
    v21[19] = v26;
    if (v361)
    {
      v29 = v354;
      v30 = *(v354 + 32);
      v31 = (v361 + v30 * v11 + v13);
      v355 = v30 - v344;
      v32 = v344;
      v365 = 1;
    }

    else
    {
      v31 = 0;
      v355 = 0;
      v365 = 0;
      v29 = v354;
      v32 = v344;
    }

    v33 = v362;
    v34 = v27 + 2 * v22;
    v35 = (v5 + 2 * v28 * v11 + 2 * v13);
    v353 = v28 - v32;
    v36 = *(v29 + 104);
    v37 = *(v29 + 108);
    v38 = *(v29 + 2);
    v39 = v345;
    if (v38 == 6 || v38 == 1)
    {
      v40 = v356;
      v41 = v364;
      v42 = v358;
      v43 = v360;
      if (v362)
      {
        v338 = v28;
        v44 = 0;
        LODWORD(v362) = 0;
        v45 = *(v29 + 124);
        v46 = v33 + v45 * v37 + v36;
        v32 = v344;
        v352 = v45 - v344;
        goto LABEL_31;
      }

      goto LABEL_667;
    }

    v41 = v364;
    if (v362)
    {
      v339 = v34;
      shape_enum_clip_alloc(v18, v19, v362, 1, 1, 1, v36, v37, v364, v359);
      if (v47)
      {
        v44 = v47;
        v338 = v28;
        LODWORD(v362) = 0;
        v48 = ((v14 * v4 + 15) & 0xFFFFFFF0);
        if (!v14)
        {
          v48 = 4 * v4;
        }

        v49 = v344;
        v352 = -v344;
        v46 = (v26 + v48 + 16);
        v42 = v358;
        v43 = v360;
        goto LABEL_21;
      }

LABEL_667:
      if (v340)
      {
        free(v340);
      }

      return;
    }

    v338 = v28;
    v46 = 0;
    v44 = 0;
    v352 = 0;
    LODWORD(v362) = 0;
    v40 = v356;
    v42 = v358;
    v43 = v360;
LABEL_31:
    v54 = vdup_n_s32(v363);
    v342 = (v41 - 1);
    v341 = -v32;
    v339 = v34;
    v343 = v34 - 2;
    v351 = xmmword_18439C830;
    v350 = xmmword_18439C840;
    v349 = xmmword_18439C850;
    v348 = xmmword_18439C800;
    v347 = xmmword_18439C810;
    v346 = xmmword_18439C820;
    v55 = v44;
LABEL_32:
    v357 = v55;
    v358 = v42;
    v56 = *v40;
    v360 = v43;
    v56(v40, v42, v43, v41);
    v58 = v40[20];
    v59 = v40[18];
    v60 = *(v40 + 2);
    if (v60 == *(v40 + 3))
    {
      if (v363 > 0xF7)
      {
        goto LABEL_162;
      }

      v61 = v41;
      v62 = v59;
      do
      {
        if (*v62 >= 8u)
        {
          *v58 = PDAM(*v58, HIBYTE(*v58), v363);
        }

        ++v62;
        v58 += 2;
        --v61;
      }

      while (v61);
      v58 += 2 * v341;
      v59 += v342 + v341 + 1;
      goto LABEL_161;
    }

    v63 = v40[19];
    v64 = *(v354 + 12);
    v65 = *(v354 + 16) + v362;
    v66 = HIWORD(v60) & 0x3F;
    v67 = v40[21];
    if (v66 == 16)
    {
      if (v67)
      {
        if (v64 <= 0)
        {
          v84 = -(-v64 & 0xF);
        }

        else
        {
          v84 = *(v354 + 12) & 0xF;
        }

        v69 = -v65 < 0;
        v85 = -v65 & 0xF;
        v86 = v65 & 0xF;
        if (!v69)
        {
          v86 = -v85;
        }

        v87 = v67 + 16 * v86;
        if (v363 >= 0xF8)
        {
          v121 = 0;
          do
          {
            if (v59[v121] >= 8u)
            {
              *&v58[2 * v121] = DITHERRGBA32((HIBYTE(*(v63 + 8 * v121)) | (BYTE3(*(v63 + 8 * v121)) << 16)) & 0xFFFFFF | (BYTE1(*(v63 + 8 * v121)) << 24) | HIDWORD(*(v63 + 8 * v121)) & 0xFF00, *(v87 + v84));
            }

            v84 = (v84 + 1) & 0xF;
            ++v121;
          }

          while (v364 != v121);
        }

        else
        {
          v88 = 0;
          do
          {
            if (v59[v88] >= 8u)
            {
              *&v58[2 * v88] = DITHERRGBA32M((HIBYTE(*(v63 + 8 * v88)) | (BYTE3(*(v63 + 8 * v88)) << 16)) & 0xFFFFFF | (BYTE1(*(v63 + 8 * v88)) << 24) | HIDWORD(*(v63 + 8 * v88)) & 0xFF00, *(v87 + v84), v363);
            }

            v84 = (v84 + 1) & 0xF;
            ++v88;
          }

          while (v364 != v88);
        }

        goto LABEL_155;
      }

      if (v363 < 0xF8)
      {
        v105 = 0;
        do
        {
          if (v59[v105] >= 8u)
          {
            *&v58[2 * v105] = PDAM((*(v63 + 8 * v105) >> 1) & 0x7C00 | (32 * (*(v63 + 8 * v105) >> 27)) | (*(v63 + 8 * v105) >> 43) & 0x1F, HIBYTE(*(v63 + 8 * v105)), v363);
          }

          ++v105;
        }

        while (v41 != v105);
        goto LABEL_161;
      }

      v276 = 0;
      do
      {
        if (v59[v276] >= 8u)
        {
          v277 = *(v63 + 8 * v276);
          *&v58[2 * v276] = (v277 >> 1) & 0x7C00 | (32 * (v277 >> 27)) & 0xFFFFFF | (v277 >> 43) & 0x1F | (HIBYTE(v277) >> 3 << 27) | (((HIBYTE(v277) >> 5) & 7) << 24);
        }

        ++v276;
      }

      while (v41 != v276);
    }

    else if (v66 == 32)
    {
      if (v67)
      {
        if (v64 <= 0)
        {
          v68 = -(-v64 & 0xF);
        }

        else
        {
          v68 = *(v354 + 12) & 0xF;
        }

        v69 = -v65 < 0;
        v70 = -v65 & 0xF;
        v71 = v65 & 0xF;
        if (!v69)
        {
          v71 = -v70;
        }

        v72 = v67 + 16 * v71;
        if (v363 >= 0xF8)
        {
          v110 = 0;
          v111 = (v63 + 8);
          do
          {
            if (v59[v110] >= 8u)
            {
              v112 = v111[1];
              if (v112 <= 0.0)
              {
                v120 = 0;
              }

              else
              {
                v113 = *(v111 - 2);
                v114 = *(v111 - 1);
                v115 = *v111;
                v116 = ((v112 * 255.0) + 0.5);
                if (v112 > 1.0)
                {
                  v116 = 255;
                  v112 = 1.0;
                }

                v117 = ((v113 * 255.0) + 0.5);
                if (v113 < 0.0)
                {
                  v117 = 0;
                }

                if (v113 > v112)
                {
                  v117 = v116;
                }

                v118 = ((v114 * 255.0) + 0.5);
                if (v114 < 0.0)
                {
                  v118 = 0;
                }

                if (v114 > v112)
                {
                  v118 = v116;
                }

                v119 = ((v115 * 255.0) + 0.5);
                if (v115 < 0.0)
                {
                  v119 = 0;
                }

                if (v115 > v112)
                {
                  v119 = v116;
                }

                v120 = DITHERRGBA32((v117 << 24) | (v118 << 16) | (v119 << 8) | v116, *(v72 + v68));
              }

              *&v58[2 * v110] = v120;
            }

            v68 = (v68 + 1) & 0xF;
            ++v110;
            v111 += 4;
          }

          while (v364 != v110);
        }

        else
        {
          v73 = 0;
          v74 = (v63 + 8);
          do
          {
            if (v59[v73] >= 8u)
            {
              v75 = v74[1];
              if (v75 <= 0.0)
              {
                v83 = 0;
              }

              else
              {
                v76 = *(v74 - 2);
                v77 = *(v74 - 1);
                v78 = *v74;
                v79 = ((v75 * 255.0) + 0.5);
                if (v75 > 1.0)
                {
                  v79 = 255;
                  v75 = 1.0;
                }

                v80 = ((v76 * 255.0) + 0.5);
                if (v76 < 0.0)
                {
                  v80 = 0;
                }

                if (v76 > v75)
                {
                  v80 = v79;
                }

                v81 = ((v77 * 255.0) + 0.5);
                if (v77 < 0.0)
                {
                  v81 = 0;
                }

                if (v77 > v75)
                {
                  v81 = v79;
                }

                v82 = ((v78 * 255.0) + 0.5);
                if (v78 < 0.0)
                {
                  v82 = 0;
                }

                if (v78 > v75)
                {
                  v82 = v79;
                }

                v83 = DITHERRGBA32M((v80 << 24) | (v81 << 16) | (v82 << 8) | v79, *(v72 + v68), v363);
              }

              *&v58[2 * v73] = v83;
            }

            v68 = (v68 + 1) & 0xF;
            ++v73;
            v74 += 4;
          }

          while (v364 != v73);
        }

LABEL_155:
        v40 = v356;
        v41 = v364;
        goto LABEL_162;
      }

      if (v363 < 0xF8)
      {
        v94 = 0;
        v95 = (v63 + 8);
        do
        {
          if (v59[v94] >= 8u)
          {
            v96 = v95[1];
            if (v96 <= 0.0)
            {
              v104 = 0;
            }

            else
            {
              v97 = *(v95 - 2);
              v98 = *(v95 - 1);
              v99 = ((v96 * 255.0) + 0.5);
              v100 = *v95;
              if (v96 > 1.0)
              {
                v99 = 255;
                v96 = 1.0;
              }

              v101 = ((v97 * 255.0) + 0.5);
              if (v97 < 0.0)
              {
                v101 = 0;
              }

              if (v97 > v96)
              {
                v101 = v99;
              }

              v102 = ((v98 * 255.0) + 0.5);
              if (v98 < 0.0)
              {
                LOWORD(v102) = 0;
              }

              if (v98 > v96)
              {
                LOWORD(v102) = v99;
              }

              v103 = ((v100 * 255.0) + 0.5);
              if (v100 < 0.0)
              {
                LOBYTE(v103) = 0;
              }

              if (v100 > v96)
              {
                LOBYTE(v103) = v99;
              }

              v104 = PDAM((v101 << 7) & 0x7C00 | (4 * v102) & 0x3E0 | (v103 >> 3), v99, v363);
            }

            *&v58[2 * v94] = v104;
          }

          ++v94;
          v95 += 4;
        }

        while (v41 != v94);
LABEL_161:
        v40 = v356;
        goto LABEL_162;
      }

      v265 = 0;
      v266 = (v63 + 8);
      do
      {
        if (v59[v265] >= 8u)
        {
          v267 = v266[1];
          if (v267 <= 0.0)
          {
            v275 = 0;
          }

          else
          {
            v268 = *(v266 - 2);
            v269 = *(v266 - 1);
            v270 = *v266;
            v271 = ((v267 * 255.0) + 0.5);
            if (v267 > 1.0)
            {
              v271 = 255;
              v267 = 1.0;
            }

            v272 = ((v268 * 255.0) + 0.5);
            if (v268 < 0.0)
            {
              v272 = 0;
            }

            if (v268 > v267)
            {
              v272 = v271;
            }

            v273 = ((v269 * 255.0) + 0.5);
            if (v269 < 0.0)
            {
              v273 = 0;
            }

            if (v269 > v267)
            {
              v273 = v271;
            }

            v274 = ((v270 * 255.0) + 0.5);
            if (v270 < 0.0)
            {
              LOBYTE(v274) = 0;
            }

            if (v270 > v267)
            {
              LOBYTE(v274) = v271;
            }

            v275 = (v271 << 24) & 0xF8000000 | (v271 >> 5 << 24) | (v272 << 7) & 0x7C00 | (4 * v273) & 0x3E0 | (v274 >> 3);
          }

          *&v58[2 * v265] = v275;
        }

        ++v265;
        v266 += 4;
      }

      while (v41 != v265);
    }

    else
    {
      if (v67)
      {
        if (v64 <= 0)
        {
          v89 = -(-v64 & 0xF);
        }

        else
        {
          v89 = *(v354 + 12) & 0xF;
        }

        v69 = -v65 < 0;
        v90 = -v65 & 0xF;
        v91 = v65 & 0xF;
        if (!v69)
        {
          v91 = -v90;
        }

        v92 = v67 + 16 * v91;
        if (v363 >= 0xF8)
        {
          v122 = 0;
          do
          {
            if (v59[v122] >= 8u)
            {
              *&v58[2 * v122] = DITHERRGBA32(*(v63 + 4 * v122), *(v92 + v89));
            }

            v89 = (v89 + 1) & 0xF;
            ++v122;
          }

          while (v41 != v122);
        }

        else
        {
          v93 = 0;
          do
          {
            if (v59[v93] >= 8u)
            {
              *&v58[2 * v93] = DITHERRGBA32M(*(v63 + 4 * v93), *(v92 + v89), v363);
            }

            v89 = (v89 + 1) & 0xF;
            ++v93;
          }

          while (v41 != v93);
        }

        v39 = v345;
        goto LABEL_161;
      }

      if (v363 >= 0xF8)
      {
        v278 = 0;
        do
        {
          if (v59[v278] >= 8u)
          {
            v279 = *(v63 + 4 * v278);
            v280 = vdupq_n_s32(v279);
            v281 = vshlq_u32(v280, v348);
            v281.i32[3] = vshlq_u32(v280, v347).i32[3];
            v282 = vandq_s8(v281, v346);
            *v282.i8 = vorr_s8(*v282.i8, *&vextq_s8(v282, v282, 8uLL));
            *&v58[2 * v278] = v282.i32[0] | (v279 << 19) & 0x7000000 | v282.i32[1];
          }

          ++v278;
        }

        while (v41 != v278);
      }

      else
      {
        v106 = 0;
        do
        {
          if (v59[v106] >= 8u)
          {
            v57.i16[0] = *(v63 + 4 * v106);
            v57.i16[1] = BYTE2(*(v63 + 4 * v106));
            v57.i16[2] = BYTE1(*(v63 + 4 * v106));
            v57.i16[3] = (*(v63 + 4 * v106) >> 8 >> 16);
            *v57.i8 = vmul_s32(*v57.i8, v54);
            *v57.i8 = vadd_s32(vadd_s32(*v57.i8, 0x1000100010001), (*&vshr_n_u32(*v57.i8, 8uLL) & 0xFFFF00FFFFFF00FFLL));
            v107 = vshlq_u32(v57, v351).u32[0];
            v108 = (v57.i32[0] << 11) & 0x7000000;
            v109 = vshlq_u32(vzip1q_s32(v57, v57), v350);
            v109.i32[0] = v107;
            v57 = vandq_s8(v109, v349);
            *v57.i8 = vorr_s8(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
            *&v58[2 * v106] = v57.i32[0] | v108 | v57.i32[1];
          }

          ++v106;
        }

        while (v41 != v106);
      }
    }

LABEL_162:
    switch(v39)
    {
      case 0:
        v123 = v46 != 0;
        if (v361)
        {
          v124 = v41;
          v125 = v46;
          while (1)
          {
            v126 = *v59;
            if (*v59)
            {
              if (v46)
              {
                v126 = (*v125 * v126 + ((*v125 * v126) >> 8) + 1) >> 8;
              }

              if (v126 >= 0xF8u)
              {
                LOBYTE(v127) = 0;
                *v35 = 0;
LABEL_172:
                *v31 = v127;
                goto LABEL_173;
              }

              if (v126 >= 8u)
              {
                v128 = PDAM(*v35, *v31, ~v126);
                *v35 = v128;
                v127 = HIBYTE(v128);
                goto LABEL_172;
              }
            }

LABEL_173:
            ++v59;
            v125 += v123;
            ++v35;
            ++v31;
            if (!--v124)
            {
              goto LABEL_580;
            }
          }
        }

        v299 = v41;
        v125 = v46;
        while (1)
        {
          v300 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v300 = (*v125 * v300 + ((*v125 * v300) >> 8) + 1) >> 8;
            }

            if (v300 > 0xF7u)
            {
              v301 = 0;
LABEL_578:
              *v35 = v301;
              goto LABEL_579;
            }

            if (v300 >= 8u)
            {
              v301 = PDM(*v35, ~v300);
              goto LABEL_578;
            }
          }

LABEL_579:
          ++v59;
          v125 += v123;
          ++v35;
          if (!--v299)
          {
LABEL_580:
            v46 = &v125[v352];
            v35 += v353;
            v40 = v356;
            v31 += v355;
            goto LABEL_610;
          }
        }

      case 1:
        v199 = *v59;
        if (v361)
        {
          if (v46)
          {
            v200 = 0;
            v201 = v59 + 1;
            v202 = v35 - 1;
            v44 = v357;
            while (1)
            {
              if (v199)
              {
                v203 = v199 * v46[v200] + ((v199 * v46[v200]) >> 8) + 1;
                if (v203 >> 11 >= 0x1F)
                {
                  v204 = *&v58[2 * v200];
LABEL_337:
                  v35[v200] = v204;
                  v31[v200] = HIBYTE(v204);
                  goto LABEL_338;
                }

                if (v203 >= 0x800)
                {
                  v204 = PDAMplusDAM(*&v58[2 * v200], HIBYTE(*&v58[2 * v200]), BYTE1(v203), v35[v200], v31[v200], ~(v203 >> 8));
                  goto LABEL_337;
                }
              }

LABEL_338:
              v199 = v201[v200++];
              ++v202;
              if (v364 == v200)
              {
                v205 = &v31[v200 - 1];
                v46 += v200 + v352;
LABEL_636:
                v35 = &v202[v353 + 1];
                v31 = (v205 + v355 + 1);
                goto LABEL_663;
              }
            }
          }

          v325 = v59 + 1;
          v205 = (v31 - 1);
          v202 = v35 - 1;
          v326 = v364;
          v44 = v357;
          while (v199 < 0xF8)
          {
            if (v199 >= 8)
            {
              v327 = PDAMplusDAM(*v58, HIBYTE(*v58), v199, v202[1], *(v205 + 1), ~v199);
              goto LABEL_633;
            }

LABEL_634:
            v328 = *v325++;
            v199 = v328;
            v58 += 2;
            ++v205;
            ++v202;
            if (!--v326)
            {
              v46 = 0;
              goto LABEL_636;
            }
          }

          v327 = *v58;
LABEL_633:
          v202[1] = v327;
          *(v205 + 1) = HIBYTE(v327);
          goto LABEL_634;
        }

        if (v46)
        {
          v302 = v41;
          v303 = v59 + 1;
          v304 = v302;
          v44 = v357;
          while (1)
          {
            if (v199)
            {
              v305 = v199 * *v46 + ((v199 * *v46) >> 8) + 1;
              v306 = v343;
              if (v343 >= v35)
              {
                v306 = v35;
              }

              if (v306 >= *(v354 + 40))
              {
                v307 = v306;
              }

              else
              {
                v307 = *(v354 + 40);
              }

              if (v305 >> 11 >= 0x1F)
              {
                v308 = *v58;
LABEL_594:
                *v307 = v308;
                goto LABEL_595;
              }

              if (v305 >= 0x800)
              {
                LOWORD(v308) = PDMplusDM(*v58, BYTE1(v305), *v307, ~(v305 >> 8));
                goto LABEL_594;
              }
            }

            else
            {
              v307 = v35;
            }

LABEL_595:
            v309 = *v303++;
            v199 = v309;
            v58 += 2;
            ++v46;
            v35 = v307 + 1;
            if (!--v304)
            {
              v46 += v352;
LABEL_662:
              v35 = &v307[v353 + 1];
              v31 += v355;
LABEL_663:
              v40 = v356;
              v41 = v364;
LABEL_664:
              v314 = v358;
LABEL_611:
              if (!--v359)
              {
                if (v44)
                {
LABEL_666:
                  free(v44);
                }

                goto LABEL_667;
              }

              v55 = 0;
              LODWORD(v362) = v362 + 1;
              v42 = v40[16] + v314;
              v43 = v40[17] + v360;
              if (v44)
              {
                v49 = v344;
LABEL_21:
                v50 = v355 + v49;
                while (1)
                {
                  while (1)
                  {
                    v51 = *(v46 - 4);
                    v52 = v51 - v362;
                    if (v51 <= v362)
                    {
                      break;
                    }

                    v359 -= v52;
                    if (v359 < 1)
                    {
                      goto LABEL_666;
                    }

                    v42 += v356[16] * v52;
                    v43 += v356[17] * v52;
                    v35 += v338 * v52;
                    v53 = v50 * v52;
                    if (!v361)
                    {
                      v53 = 0;
                    }

                    v31 += v53;
                    LODWORD(v362) = v51;
                  }

                  if (v362 < *(v46 - 3) + v51)
                  {
                    break;
                  }

                  if (!shape_enum_clip_scan(v44, v46 - 4))
                  {
                    goto LABEL_666;
                  }
                }

                v40 = v356;
                v32 = v344;
                v34 = v339;
                goto LABEL_31;
              }

              goto LABEL_32;
            }
          }
        }

        v333 = *(v354 + 40);
        v334 = v59 + 1;
        v44 = v357;
        while (1)
        {
          v335 = v343;
          if (v343 >= v35)
          {
            v335 = v35;
          }

          v307 = v335 >= v333 ? v335 : v333;
          if (v199 >= 0xF8)
          {
            break;
          }

          if (v199 >= 8)
          {
            LOWORD(v336) = PDMplusDM(*v58, v199, *v307, ~v199);
            goto LABEL_659;
          }

LABEL_660:
          v337 = *v334++;
          v199 = v337;
          v58 += 2;
          v35 = v307 + 1;
          LODWORD(v41) = v41 - 1;
          if (!v41)
          {
            v46 = 0;
            goto LABEL_662;
          }
        }

        v336 = *v58;
LABEL_659:
        *v307 = v336;
        goto LABEL_660;
      case 2:
        v175 = *v59;
        if (v361)
        {
          if (v46)
          {
            v176 = 0;
            v177 = v59 + 1;
            v178 = v35 - 1;
            while (1)
            {
              if (v175)
              {
                v179 = v175 * v46[v176] + ((v175 * v46[v176]) >> 8) + 1;
                if (v179 >> 11 < 0x1F)
                {
                  if (v179 < 0x800)
                  {
                    goto LABEL_291;
                  }

                  v182 = PDAM(*&v58[2 * v176], HIBYTE(*&v58[2 * v176]), SBYTE1(v179));
                  if (!(v182 >> 27))
                  {
                    goto LABEL_291;
                  }

                  v183 = HIBYTE(v182);
                  v184 = v35[v176];
                  v185 = v31[v176];
                  v182 = v182;
LABEL_289:
                  v186 = PDAplusDAM(v182, v183, v184, v185, v183 ^ 0xFF);
                  v35[v176] = v186;
                  v181 = HIBYTE(v186);
LABEL_290:
                  v31[v176] = v181;
                  goto LABEL_291;
                }

                v180 = *&v58[2 * v176];
                if (v180 >> 27 == 31)
                {
                  v181 = HIBYTE(v180);
                  v35[v176] = v180;
                  goto LABEL_290;
                }

                if (v180 >> 27)
                {
                  v183 = HIBYTE(v180);
                  v184 = v35[v176];
                  v185 = v31[v176];
                  v182 = *&v58[2 * v176];
                  goto LABEL_289;
                }
              }

LABEL_291:
              v175 = v177[v176++];
              ++v178;
              if (v364 == v176)
              {
                v187 = &v31[v176 - 1];
                v46 += v176 + v352;
                v41 = v364;
LABEL_627:
                v35 = &v178[v353 + 1];
                v31 = (v187 + v355 + 1);
                goto LABEL_610;
              }
            }
          }

          v315 = v59 + 1;
          v187 = (v31 - 1);
          v178 = v35 - 1;
          v316 = v41;
          while (v175 >= 0xF8)
          {
            v317 = *v58;
            if (*v58 >> 27 == 31)
            {
              v318 = HIBYTE(v317);
              v178[1] = v317;
              goto LABEL_624;
            }

            if (*v58 >> 27)
            {
              v320 = HIBYTE(v317);
              v321 = v178[1];
              v322 = *(v187 + 1);
              v319 = *v58;
              goto LABEL_623;
            }

LABEL_625:
            v324 = *v315++;
            v175 = v324;
            v58 += 2;
            ++v187;
            ++v178;
            if (!--v316)
            {
              v46 = 0;
              v40 = v356;
              goto LABEL_627;
            }
          }

          if (v175 < 8)
          {
            goto LABEL_625;
          }

          v319 = PDAM(*v58, HIBYTE(*v58), v175);
          if (!(v319 >> 27))
          {
            goto LABEL_625;
          }

          v320 = HIBYTE(v319);
          v321 = v178[1];
          v322 = *(v187 + 1);
          v319 = v319;
LABEL_623:
          v323 = PDAplusDAM(v319, v320, v321, v322, v320 ^ 0xFF);
          v178[1] = v323;
          v318 = HIBYTE(v323);
LABEL_624:
          *(v187 + 1) = v318;
          goto LABEL_625;
        }

        if (v46)
        {
          v290 = v59 + 1;
          v291 = v35 - 1;
          v44 = v357;
          while (!v175)
          {
LABEL_557:
            v294 = *v290++;
            v175 = v294;
            v58 += 2;
            ++v46;
            ++v291;
            LODWORD(v41) = v41 - 1;
            if (!v41)
            {
              v46 += v352;
              v41 = v364;
LABEL_648:
              v35 = &v291[v353 + 1];
              v31 += v355;
              goto LABEL_664;
            }
          }

          v292 = v175 * *v46 + ((v175 * *v46) >> 8) + 1;
          if (v292 >> 11 < 0x1F)
          {
            if (v292 < 0x800)
            {
              goto LABEL_557;
            }

            v293 = PDAM(*v58, HIBYTE(*v58), SBYTE1(v292));
            if (!(v293 >> 27))
            {
              goto LABEL_557;
            }
          }

          else
          {
            v293 = *v58;
            if (*v58 >> 27 == 31)
            {
LABEL_556:
              v291[1] = v293;
              goto LABEL_557;
            }

            if (!(*v58 >> 27))
            {
              goto LABEL_557;
            }
          }

          LOWORD(v293) = PDplusDM(v293, v291[1], ~v293 >> 24);
          goto LABEL_556;
        }

        v329 = v59 + 1;
        v291 = v35 - 1;
        v330 = v41;
        v44 = v357;
        while (v175 >= 0xF8)
        {
          v331 = *v58;
          if (*v58 >> 27 != 31)
          {
            if (!(*v58 >> 27))
            {
              goto LABEL_646;
            }

            goto LABEL_644;
          }

LABEL_645:
          v291[1] = v331;
LABEL_646:
          v332 = *v329++;
          v175 = v332;
          v58 += 2;
          ++v291;
          if (!--v330)
          {
            v46 = 0;
            v40 = v356;
            goto LABEL_648;
          }
        }

        if (v175 < 8)
        {
          goto LABEL_646;
        }

        v331 = PDAM(*v58, HIBYTE(*v58), v175);
        if (!(v331 >> 27))
        {
          goto LABEL_646;
        }

LABEL_644:
        LOWORD(v331) = PDplusDM(v331, v291[1], ~v331 >> 24);
        goto LABEL_645;
      case 3:
        v136 = v46;
        while (1)
        {
          v192 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v192 = (*v136 * v192 + ((*v136 * v192) >> 8) + 1) >> 8;
            }

            if (v192 >= 0xF8u)
            {
              v193 = PDAM(*v58, HIBYTE(*v58), *v31);
LABEL_314:
              *v35 = v193;
              *v31 = HIBYTE(v193);
              goto LABEL_315;
            }

            if (v192 >= 8u)
            {
              v193 = PDAMplusDAM(*v58, HIBYTE(*v58), ((*v31 * v192 + ((*v31 * v192) >> 8) + 1) >> 8), *v35, *v31, ~v192);
              goto LABEL_314;
            }
          }

LABEL_315:
          ++v59;
          v58 += 2;
          v136 += v46 != 0;
          ++v35;
          v31 += v365;
          LODWORD(v41) = v41 - 1;
          if (!v41)
          {
            goto LABEL_470;
          }
        }

      case 4:
        v136 = v46;
        while (1)
        {
          v151 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v151 = (*v136 * v151 + ((*v136 * v151) >> 8) + 1) >> 8;
            }

            if (v151 >= 0xF8u)
            {
              v152 = PDAM(*v58, HIBYTE(*v58), ~*v31);
LABEL_231:
              *v35 = v152;
              *v31 = HIBYTE(v152);
              goto LABEL_232;
            }

            if (v151 >= 8u)
            {
              v152 = PDAMplusDAM(*v58, HIBYTE(*v58), (((*v31 ^ 0xFF) * v151 + (((*v31 ^ 0xFF) * v151) >> 8) + 1) >> 8), *v35, *v31, ~v151);
              goto LABEL_231;
            }
          }

LABEL_232:
          ++v59;
          v58 += 2;
          v136 += v46 != 0;
          ++v35;
          v31 += v365;
          LODWORD(v41) = v41 - 1;
          if (!v41)
          {
            goto LABEL_470;
          }
        }

      case 5:
        v214 = v41;
        v147 = v46;
        do
        {
          v215 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v215 = (*v147 * v215 + ((*v147 * v215) >> 8) + 1) >> 8;
            }

            if (v215 >= 8u)
            {
              v216 = *v31;
              v217 = PDAM(*v58, HIBYTE(*v58), v215);
              v218 = PDAMplusDAM(v217, SHIBYTE(v217), v216, *v35, v216, HIBYTE(v217) ^ 0xFF);
              *v35 = v218;
              *v31 = HIBYTE(v218);
            }
          }

          ++v59;
          v58 += 2;
          v147 += v46 != 0;
          ++v35;
          v31 += v365;
          --v214;
        }

        while (v214);
        goto LABEL_544;
      case 6:
        v136 = v46;
        while (1)
        {
          v227 = *v59;
          if (!*v59)
          {
            goto LABEL_410;
          }

          if (v46)
          {
            v227 = (*v136 * v227 + ((*v136 * v227) >> 8) + 1) >> 8;
          }

          if (v227 < 8u)
          {
            goto LABEL_410;
          }

          v228 = *v31;
          if (v228 <= 7)
          {
            break;
          }

          if (v228 <= 0xF7)
          {
            v229 = PDAplusDAM(*v35, v228, *v58, HIBYTE(*v58), ((~v228 * v227 + ((~v228 * v227) >> 8) + 1) >> 8));
            goto LABEL_409;
          }

LABEL_410:
          ++v59;
          v58 += 2;
          v136 += v46 != 0;
          ++v35;
          v31 += v365;
          LODWORD(v41) = v41 - 1;
          if (!v41)
          {
LABEL_470:
            v46 = &v136[v352];
LABEL_608:
            v35 += v353;
            v31 += v355;
LABEL_609:
            v41 = v364;
LABEL_610:
            v44 = v357;
            v314 = v358;
            goto LABEL_611;
          }
        }

        v229 = PDAM(*v58, HIBYTE(*v58), v227);
LABEL_409:
        *v35 = v229;
        *v31 = HIBYTE(v229);
        goto LABEL_410;
      case 7:
        v194 = v46 != 0;
        if (v361)
        {
          v195 = v41;
          v130 = v46;
          while (1)
          {
            v196 = *v59;
            if (*v59)
            {
              if (v46)
              {
                v196 = (*v130 * v196 + ((*v130 * v196) >> 8) + 1) >> 8;
              }

              if (v196 >= 0xF8u)
              {
                v197 = PDAM(*v35, *v31, *(v58 + 3));
LABEL_326:
                *v35 = v197;
                *v31 = HIBYTE(v197);
                goto LABEL_327;
              }

              if (v196 >= 8u)
              {
                v198 = *(v58 + 3) * v196;
                v197 = PDAMplusDAM(*v35, *v31, ((v198 + (v198 >> 8) + 1) >> 8), *v35, *v31, ~v196);
                goto LABEL_326;
              }
            }

LABEL_327:
            ++v59;
            v58 += 2;
            v130 += v194;
            ++v35;
            ++v31;
            if (!--v195)
            {
              goto LABEL_607;
            }
          }
        }

        v295 = v41;
        v130 = v46;
        while (1)
        {
          v296 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v296 = (*v130 * v296 + ((*v130 * v296) >> 8) + 1) >> 8;
            }

            if (v296 >= 0xF8u)
            {
              v297 = PDM(*v35, *(v58 + 3));
LABEL_567:
              *v35 = v297;
              goto LABEL_568;
            }

            if (v296 >= 8u)
            {
              v298 = *(v58 + 3) * v296;
              v297 = PDMplusDM(*v35, ((v298 + (v298 >> 8) + 1) >> 8), *v35, ~v296);
              goto LABEL_567;
            }
          }

LABEL_568:
          ++v59;
          v58 += 2;
          v130 += v194;
          ++v35;
          if (!--v295)
          {
            goto LABEL_607;
          }
        }

      case 8:
        v239 = v46 != 0;
        if (v361)
        {
          v240 = v41;
          v130 = v46;
          while (1)
          {
            v241 = *v59;
            if (*v59)
            {
              if (v46)
              {
                v241 = (*v130 * v241 + ((*v130 * v241) >> 8) + 1) >> 8;
              }

              if (v241 >= 0xF8u)
              {
                v242 = PDAM(*v35, *v31, ~*(v58 + 3));
LABEL_442:
                *v35 = v242;
                *v31 = HIBYTE(v242);
                goto LABEL_443;
              }

              if (v241 >= 8u)
              {
                v243 = (~*v58 >> 24) * v241;
                v242 = PDAMplusDAM(*v35, *v31, ((v243 + (v243 >> 8) + 1) >> 8), *v35, *v31, ~v241);
                goto LABEL_442;
              }
            }

LABEL_443:
            ++v59;
            v58 += 2;
            v130 += v239;
            ++v35;
            ++v31;
            if (!--v240)
            {
              goto LABEL_607;
            }
          }
        }

        v310 = v41;
        v130 = v46;
        break;
      case 9:
        v158 = v46;
        do
        {
          v159 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v159 = (*v158 * v159 + ((*v158 * v159) >> 8) + 1) >> 8;
            }

            if (v159 >= 8u)
            {
              v160 = *v31;
              v161 = PDAM(*v58, HIBYTE(*v58), v159);
              v162 = PDAMplusDAM(v161, SBYTE3(v161), v160 ^ 0xFFu, *v35, v160, (~v159 + BYTE3(v161)));
              *v35 = v162;
              *v31 = HIBYTE(v162);
            }
          }

          ++v59;
          v58 += 2;
          v158 += v46 != 0;
          ++v35;
          v31 += v365;
          LODWORD(v41) = v41 - 1;
        }

        while (v41);
        v46 = &v158[v352];
        v35 += v353;
        v31 += v355;
        v39 = v345;
        goto LABEL_545;
      case 10:
        v234 = v41;
        v147 = v46;
        do
        {
          v235 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v235 = (*v147 * v235 + ((*v147 * v235) >> 8) + 1) >> 8;
            }

            if (v235 >= 8u)
            {
              v236 = *v31;
              v237 = PDAM(*v58, HIBYTE(*v58), v235);
              v238 = PDAMplusDAM(v237, SHIBYTE(v237), v236 ^ 0xFFu, *v35, v236, HIBYTE(v237) ^ 0xFF);
              *v35 = v238;
              *v31 = HIBYTE(v238);
            }
          }

          ++v59;
          v58 += 2;
          v147 += v46 != 0;
          ++v35;
          v31 += v365;
          --v234;
        }

        while (v234);
        goto LABEL_544;
      case 11:
        v145 = v46 != 0;
        if (v361)
        {
          v146 = v41;
          v147 = v46;
          do
          {
            v148 = *v59;
            if (*v59)
            {
              if (v46)
              {
                v148 = (*v147 * v148 + ((*v147 * v148) >> 8) + 1) >> 8;
              }

              if (v148 >= 8u)
              {
                v149 = PDAM(*v58, HIBYTE(*v58), v148);
                v150 = PDAplusdDA(*v35, *v31, v149, HIBYTE(v149));
                *v35 = v150;
                *v31 = HIBYTE(v150);
              }
            }

            ++v59;
            v58 += 2;
            v147 += v145;
            ++v35;
            ++v31;
            --v146;
          }

          while (v146);
        }

        else
        {
          v283 = v41;
          v147 = v46;
          do
          {
            v284 = *v59;
            if (*v59)
            {
              if (v46)
              {
                v284 = (*v147 * v284 + ((*v147 * v284) >> 8) + 1) >> 8;
              }

              if (v284 >= 8u)
              {
                v285 = PDAM(*v58, HIBYTE(*v58), v284);
                *v35 = PDplusdDA(*v35, v285, HIBYTE(v285));
              }
            }

            ++v59;
            v58 += 2;
            v147 += v145;
            ++v35;
            --v283;
          }

          while (v283);
        }

        goto LABEL_544;
      case 12:
        v153 = v46 != 0;
        if (v361)
        {
          v154 = v41;
          v147 = v46;
          do
          {
            v155 = *v59;
            if (*v59)
            {
              if (v46)
              {
                v155 = (*v147 * v155 + ((*v147 * v155) >> 8) + 1) >> 8;
              }

              if (v155 >= 8u)
              {
                v156 = PDAM(*v58, HIBYTE(*v58), v155);
                v157 = PDApluslDA(*v35, *v31, v156, HIBYTE(v156));
                *v35 = v157;
                *v31 = HIBYTE(v157);
              }
            }

            ++v59;
            v58 += 2;
            v147 += v153;
            ++v35;
            ++v31;
            --v154;
          }

          while (v154);
        }

        else
        {
          v286 = v41;
          v147 = v46;
          do
          {
            v287 = *v59;
            if (*v59)
            {
              if (v46)
              {
                v287 = (*v147 * v287 + ((*v147 * v287) >> 8) + 1) >> 8;
              }

              if (v287 >= 8u)
              {
                v288 = PDM(*v58, v287);
                v289 = ((*v35 | (*v35 << 15)) & 0x1F07C1F) + ((v288 | (v288 << 15)) & 0x1F07C1F);
                *v35 = (((30 * ((v289 >> 5) & 0x100401)) | (15 * ((v289 >> 5) & 0x100401)) | v289) >> 15) & 0x3E0 | ((30 * ((v289 >> 5) & 0x401)) | (15 * ((v289 >> 5) & 0x401)) | v289) & 0x7C1F;
              }
            }

            ++v59;
            v58 += 2;
            v147 += v153;
            ++v35;
            --v286;
          }

          while (v286);
        }

LABEL_544:
        v46 = &v147[v352];
        v35 += v353;
        v31 += v355;
LABEL_545:
        v40 = v356;
        goto LABEL_609;
      case 13:
        v136 = v46;
        do
        {
          v223 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v223 = (*v136 * v223 + ((*v136 * v223) >> 8) + 1) >> 8;
            }

            if (v223 >= 8u)
            {
              v224 = PDAM(*v58, HIBYTE(*v58), v223);
              if (v224 >> 27)
              {
                if (v361)
                {
                  v225 = HIBYTE(v224);
                  v226 = *v31;
                  if (v226 >= 8)
                  {
                    v224 = PDAmultiplyPDA(*v35, v226, v224, v225);
                    v225 = HIBYTE(v224);
                  }

                  *v35 = v224;
                  *v31 = v225;
                }

                else
                {
                  *v35 = PDAmultiplyPDA(*v35, 0xFFu, v224, HIBYTE(v224));
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v136 += v46 != 0;
          ++v35;
          v31 += v365;
          LODWORD(v41) = v41 - 1;
        }

        while (v41);
        goto LABEL_470;
      case 14:
        v136 = v46;
        do
        {
          v141 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v141 = (*v136 * v141 + ((*v136 * v141) >> 8) + 1) >> 8;
            }

            if (v141 >= 8u)
            {
              v142 = PDAM(*v58, HIBYTE(*v58), v141);
              if (v142 >> 27)
              {
                v143 = HIBYTE(v142);
                if (v361)
                {
                  v144 = *v31;
                  if (v144 >= 8)
                  {
                    v142 = PDAscreenPDA(*v35, v144, v142, v143);
                    v143 = HIBYTE(v142);
                  }

                  *v35 = v142;
                  *v31 = v143;
                }

                else
                {
                  *v35 = PDAscreenPDA(*v35, 0xFFu, v142, v143);
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v136 += v46 != 0;
          ++v35;
          v31 += v365;
          LODWORD(v41) = v41 - 1;
        }

        while (v41);
        goto LABEL_470;
      case 15:
        v136 = v46;
        do
        {
          v188 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v188 = (*v136 * v188 + ((*v136 * v188) >> 8) + 1) >> 8;
            }

            if (v188 >= 8u)
            {
              v189 = PDAM(*v58, HIBYTE(*v58), v188);
              if (v189 >> 27)
              {
                v190 = HIBYTE(v189);
                if (v361)
                {
                  v191 = *v31;
                  if (v191 >= 8)
                  {
                    v189 = PDAoverlayPDA(*v35, v191, v189, v190);
                    v190 = HIBYTE(v189);
                  }

                  *v35 = v189;
                  *v31 = v190;
                }

                else
                {
                  *v35 = PDAoverlayPDA(*v35, 0xFFu, v189, v190);
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v136 += v46 != 0;
          ++v35;
          v31 += v365;
          LODWORD(v41) = v41 - 1;
        }

        while (v41);
        goto LABEL_470;
      case 16:
        v136 = v46;
        do
        {
          v137 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v137 = (*v136 * v137 + ((*v136 * v137) >> 8) + 1) >> 8;
            }

            if (v137 >= 8u)
            {
              v138 = PDAM(*v58, HIBYTE(*v58), v137);
              if (v138 >> 27)
              {
                if (v361)
                {
                  v139 = HIBYTE(v138);
                  v140 = *v31;
                  if (v140 >= 8)
                  {
                    v138 = PDAdarkenPDA(*v35, v140, v138, v139);
                    v139 = HIBYTE(v138);
                  }

                  *v35 = v138;
                  *v31 = v139;
                }

                else
                {
                  *v35 = PDAdarkenPDA(*v35, 0xFFu, v138, HIBYTE(v138));
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v136 += v46 != 0;
          ++v35;
          v31 += v365;
          LODWORD(v41) = v41 - 1;
        }

        while (v41);
        goto LABEL_470;
      case 17:
        v136 = v46;
        do
        {
          v206 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v206 = (*v136 * v206 + ((*v136 * v206) >> 8) + 1) >> 8;
            }

            if (v206 >= 8u)
            {
              v207 = PDAM(*v58, HIBYTE(*v58), v206);
              if (v207 >> 27)
              {
                if (v361)
                {
                  v208 = HIBYTE(v207);
                  v209 = *v31;
                  if (v209 >= 8)
                  {
                    v207 = PDAlightenPDA(*v35, v209, v207, v208);
                    v208 = HIBYTE(v207);
                  }

                  *v35 = v207;
                  *v31 = v208;
                }

                else
                {
                  *v35 = PDAlightenPDA(*v35, 0xFFu, v207, HIBYTE(v207));
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v136 += v46 != 0;
          ++v35;
          v31 += v365;
          LODWORD(v41) = v41 - 1;
        }

        while (v41);
        goto LABEL_470;
      case 18:
        v136 = v46;
        do
        {
          v230 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v230 = (*v136 * v230 + ((*v136 * v230) >> 8) + 1) >> 8;
            }

            if (v230 >= 8u)
            {
              v231 = PDAM(*v58, HIBYTE(*v58), v230);
              if (v231 >> 27)
              {
                v232 = HIBYTE(v231);
                if (v361)
                {
                  v233 = *v31;
                  if (v233 >= 8)
                  {
                    v231 = PDAcolordodgePDA(*v35, v233, v231, v232);
                    v232 = HIBYTE(v231);
                  }

                  *v35 = v231;
                  *v31 = v232;
                }

                else
                {
                  *v35 = PDAcolordodgePDA(*v35, 0xFFu, v231, v232);
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v136 += v46 != 0;
          ++v35;
          v31 += v365;
          LODWORD(v41) = v41 - 1;
        }

        while (v41);
        goto LABEL_470;
      case 19:
        v136 = v46;
        do
        {
          v249 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v249 = (*v136 * v249 + ((*v136 * v249) >> 8) + 1) >> 8;
            }

            if (v249 >= 8u)
            {
              v250 = PDAM(*v58, HIBYTE(*v58), v249);
              if (v250 >> 27)
              {
                if (v361)
                {
                  v251 = HIBYTE(v250);
                  v252 = *v31;
                  if (v252 >= 8)
                  {
                    v250 = PDAcolorburnPDA(*v35, v252, v250, v251);
                    v251 = HIBYTE(v250);
                  }

                  *v35 = v250;
                  *v31 = v251;
                }

                else
                {
                  *v35 = PDAcolorburnPDA(*v35, 0xFFu, v250, HIBYTE(v250));
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v136 += v46 != 0;
          ++v35;
          v31 += v365;
          LODWORD(v41) = v41 - 1;
        }

        while (v41);
        goto LABEL_470;
      case 20:
        v136 = v46;
        do
        {
          v210 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v210 = (*v136 * v210 + ((*v136 * v210) >> 8) + 1) >> 8;
            }

            if (v210 >= 8u)
            {
              v211 = PDAM(*v58, HIBYTE(*v58), v210);
              if (v211 >> 27)
              {
                if (v361)
                {
                  v212 = HIBYTE(v211);
                  v213 = *v31;
                  if (v213 >= 8)
                  {
                    v211 = PDAsoftlightPDA(*v35, v213, v211, v212);
                    v212 = HIBYTE(v211);
                  }

                  *v35 = v211;
                  *v31 = v212;
                }

                else
                {
                  *v35 = PDAsoftlightPDA(*v35, 0xFFu, v211, HIBYTE(v211));
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v136 += v46 != 0;
          ++v35;
          v31 += v365;
          LODWORD(v41) = v41 - 1;
        }

        while (v41);
        goto LABEL_470;
      case 21:
        v136 = v46;
        do
        {
          v219 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v219 = (*v136 * v219 + ((*v136 * v219) >> 8) + 1) >> 8;
            }

            if (v219 >= 8u)
            {
              v220 = PDAM(*v58, HIBYTE(*v58), v219);
              if (v220 >> 27)
              {
                if (v361)
                {
                  v221 = HIBYTE(v220);
                  v222 = *v31;
                  if (v222 >= 8)
                  {
                    v220 = PDAhardlightPDA(*v35, v222, v220, v221);
                    v221 = HIBYTE(v220);
                  }

                  *v35 = v220;
                  *v31 = v221;
                }

                else
                {
                  *v35 = PDAhardlightPDA(*v35, 0xFFu, v220, HIBYTE(v220));
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v136 += v46 != 0;
          ++v35;
          v31 += v365;
          LODWORD(v41) = v41 - 1;
        }

        while (v41);
        goto LABEL_470;
      case 22:
        v244 = v41;
        v130 = v46;
        do
        {
          v245 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v245 = (*v130 * v245 + ((*v130 * v245) >> 8) + 1) >> 8;
            }

            if (v245 >= 8u)
            {
              v246 = PDAM(*v58, HIBYTE(*v58), v245);
              if (v246 >> 27)
              {
                if (v361)
                {
                  v247 = HIBYTE(v246);
                  v248 = *v31;
                  if (v248 >= 8)
                  {
                    v246 = PDAdifferencePDA(*v35, v248, v246, v247);
                    v247 = HIBYTE(v246);
                  }

                  *v35 = v246;
                  *v31 = v247;
                }

                else
                {
                  *v35 = PDAdifferencePDA(*v35, 0xFFu, v246, HIBYTE(v246));
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v130 += v46 != 0;
          ++v35;
          v31 += v365;
          --v244;
        }

        while (v244);
        goto LABEL_607;
      case 23:
        v253 = v41;
        v130 = v46;
        v254 = v253;
        do
        {
          v255 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v255 = (*v130 * v255 + ((*v130 * v255) >> 8) + 1) >> 8;
            }

            if (v255 >= 8u)
            {
              v256 = PDAM(*v58, HIBYTE(*v58), v255);
              if (v256 >> 27)
              {
                if (v361)
                {
                  v257 = HIBYTE(v256);
                  v258 = *v31;
                  if (v258 >= 8)
                  {
                    v256 = PDAexclusionPDA(*v35, v258, v256, v257);
                    v257 = HIBYTE(v256);
                  }

                  *v35 = v256;
                  *v31 = v257;
                }

                else
                {
                  *v35 = PDAexclusionPDA(*v35, 0xFFu, v256, HIBYTE(v256));
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v130 += v46 != 0;
          ++v35;
          v31 += v365;
          --v254;
        }

        while (v254);
        goto LABEL_607;
      case 24:
        v169 = v41;
        v130 = v46;
        v170 = v169;
        do
        {
          v171 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v171 = (*v130 * v171 + ((*v130 * v171) >> 8) + 1) >> 8;
            }

            if (v171 >= 8u)
            {
              v172 = PDAM(*v58, HIBYTE(*v58), v171);
              if (v172 >> 27)
              {
                if (v361)
                {
                  v173 = HIBYTE(v172);
                  v174 = *v31;
                  if (v174 >= 8)
                  {
                    v172 = PDAhuePDA(*v35, v174, v172, v173);
                    v173 = HIBYTE(v172);
                  }

                  *v35 = v172;
                  *v31 = v173;
                }

                else
                {
                  *v35 = PDAhuePDA(*v35, 0xFFu, v172, HIBYTE(v172));
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v130 += v46 != 0;
          ++v35;
          v31 += v365;
          --v170;
        }

        while (v170);
        goto LABEL_607;
      case 25:
        v163 = v41;
        v130 = v46;
        v164 = v163;
        do
        {
          v165 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v165 = (*v130 * v165 + ((*v130 * v165) >> 8) + 1) >> 8;
            }

            if (v165 >= 8u)
            {
              v166 = PDAM(*v58, HIBYTE(*v58), v165);
              if (v166 >> 27)
              {
                v167 = HIBYTE(v166);
                if (v361)
                {
                  v168 = *v31;
                  if (v168 >= 8)
                  {
                    v166 = PDAsaturationPDA(*v35, v168, v166, v167);
                    v167 = HIBYTE(v166);
                  }

                  *v35 = v166;
                  *v31 = v167;
                }

                else
                {
                  *v35 = PDAsaturationPDA(*v35, 0xFFu, v166, v167);
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v130 += v46 != 0;
          ++v35;
          v31 += v365;
          --v164;
        }

        while (v164);
        goto LABEL_607;
      case 26:
        v259 = v41;
        v130 = v46;
        v260 = v259;
        do
        {
          v261 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v261 = (*v130 * v261 + ((*v130 * v261) >> 8) + 1) >> 8;
            }

            if (v261 >= 8u)
            {
              v262 = PDAM(*v58, HIBYTE(*v58), v261);
              if (v262 >> 27)
              {
                v263 = HIBYTE(v262);
                if (v361)
                {
                  v264 = *v31;
                  if (v264 >= 8)
                  {
                    v262 = PDAluminosityPDA(v262, v263, *v35, v264);
                    v263 = HIBYTE(v262);
                  }

                  *v35 = v262;
                  *v31 = v263;
                }

                else
                {
                  *v35 = PDAluminosityPDA(v262, v263, *v35, 0xFFu);
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v130 += v46 != 0;
          ++v35;
          v31 += v365;
          --v260;
        }

        while (v260);
        goto LABEL_607;
      case 27:
        v129 = v41;
        v130 = v46;
        v131 = v129;
        do
        {
          v132 = *v59;
          if (*v59)
          {
            if (v46)
            {
              v132 = (*v130 * v132 + ((*v130 * v132) >> 8) + 1) >> 8;
            }

            if (v132 >= 8u)
            {
              v133 = PDAM(*v58, HIBYTE(*v58), v132);
              if (v133 >> 27)
              {
                if (v361)
                {
                  v134 = HIBYTE(v133);
                  v135 = *v31;
                  if (v135 >= 8)
                  {
                    v133 = PDAluminosityPDA(*v35, v135, v133, v134);
                    v134 = HIBYTE(v133);
                  }

                  *v35 = v133;
                  *v31 = v134;
                }

                else
                {
                  *v35 = PDAluminosityPDA(*v35, 0xFFu, v133, HIBYTE(v133));
                }
              }
            }
          }

          ++v59;
          v58 += 2;
          v130 += v46 != 0;
          ++v35;
          v31 += v365;
          --v131;
        }

        while (v131);
        goto LABEL_607;
      default:
        goto LABEL_610;
    }

    while (1)
    {
      v311 = *v59;
      if (*v59)
      {
        if (v46)
        {
          v311 = (*v130 * v311 + ((*v130 * v311) >> 8) + 1) >> 8;
        }

        if (v311 >= 0xF8u)
        {
          v312 = PDM(*v35, ~*(v58 + 3));
LABEL_605:
          *v35 = v312;
          goto LABEL_606;
        }

        if (v311 >= 8u)
        {
          v313 = (~*v58 >> 24) * v311;
          v312 = PDMplusDM(*v35, ((v313 + (v313 >> 8) + 1) >> 8), *v35, ~v311);
          goto LABEL_605;
        }
      }

LABEL_606:
      ++v59;
      v58 += 2;
      v130 += v239;
      ++v35;
      if (!--v310)
      {
LABEL_607:
        v46 = &v130[v352];
        goto LABEL_608;
      }
    }
  }
}