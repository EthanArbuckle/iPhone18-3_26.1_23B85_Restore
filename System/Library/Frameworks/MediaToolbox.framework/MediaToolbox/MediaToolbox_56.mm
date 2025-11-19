uint64_t _figCSSTokenizer_PeekAheadBuffer(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4, uint64_t *a5)
{
  if (a4 > 4 * a2)
  {
    return 4294949487;
  }

  v7 = a3;
  v9 = *(a1 + 40) - (*(a1 + 56) != 0) + 1;
  v10 = *(a1 + 48) - v9;
  if (a2 >= 1)
  {
    v11 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = vdupq_n_s64(a2 - 1);
    v13 = xmmword_196E73080;
    v14 = xmmword_196E73090;
    v15 = a3 + 2;
    v16 = vdupq_n_s64(4uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v12, v14));
      if (vuzp1_s16(v17, *v12.i8).u8[0])
      {
        *(v15 - 2) = 0;
      }

      if (vuzp1_s16(v17, *&v12).i8[2])
      {
        *(v15 - 1) = 0;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
      {
        *v15 = 0;
        v15[1] = 0;
      }

      v13 = vaddq_s64(v13, v16);
      v14 = vaddq_s64(v14, v16);
      v15 += 4;
      v11 -= 4;
    }

    while (v11);
  }

  if (v10 >= a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = v10;
  }

  if (v18 < 1)
  {
    if (!a5)
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (v18 < 4)
  {
    v19 = v24;
  }

  else
  {
    v19 = malloc_type_calloc(2uLL, v18, 0x5E1B7E6CuLL);
    if (!v19)
    {
      _figCSSTokenizer_PeekAheadBuffer_cold_1(v24, &v25);
      return v25;
    }
  }

  v26.location = v9;
  v26.length = v18;
  CharactersForRange = FigTextContainerGetCharactersForRange(*(a1 + 16), v26, v19);
  if (!CharactersForRange)
  {
    v20 = v19;
    v21 = v18;
    do
    {
      v22 = *v20++;
      *v7++ = v22;
      --v21;
    }

    while (v21);
  }

  if (v18 >= 4)
  {
    free(v19);
  }

  if (a5 && !CharactersForRange)
  {
LABEL_29:
    CharactersForRange = 0;
    *a5 = v18;
  }

  return CharactersForRange;
}

BOOL FigCSSCodePointIs_hex_digit(unsigned int a1)
{
  if (a1 >= 0x30 && a1 <= 0x39)
  {
    return 1;
  }

  if (a1 >= 0x41 && a1 <= 0x46)
  {
    return 1;
  }

  return a1 >= 0x61 && a1 <= 0x66;
}

uint64_t _figCSSTokenizer_consume_a_unicode_range()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

BOOL FigCSSCodePointIs_name_start_code_point(unsigned int a1)
{
  v1 = a1 >= 0x41 && a1 <= 0x5A;
  if (!v1 && (a1 <= 0x7A ? (v2 = a1 < 0x61) : (v2 = 1), v2 ? (v3 = a1 < 0x80) : (v3 = 0), v3))
  {
    return a1 == 95;
  }

  else
  {
    return 1;
  }
}

uint64_t _figCSSTokenizer_consume_an_escaped_code_point(uint64_t a1, int *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = 65533;
  v30 = 65533;
  v29 = 0;
  v27 = 0;
  result = _figCSSTokenizer_consume_next_input_code_point(a1, &v30);
  if ((v30 < 0x30 || v30 > 0x39) && (v30 < 0x41 || v30 > 0x46) && (v30 < 0x61 || v30 > 0x66))
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      if (*(a1 + 40) >= v9)
      {
        v4 = 65533;
      }

      else
      {
        v4 = v30;
      }
    }

    goto LABEL_68;
  }

  v31 = v30;
  _figCSSTokenizer_PeekAheadBuffer(a1, 5, v32, 0x14uLL, &v29);
  if (v29 < 1)
  {
    v16 = 1;
  }

  else
  {
    v10 = 1;
    while (1)
    {
      v11 = v32[v10 - 1];
      if ((v11 < 0x30 || v11 > 0x39) && (v11 < 0x41 || v11 > 0x46) && (v11 < 0x61 || v11 > 0x66))
      {
        break;
      }

      v16 = v10 + 1;
      _figCSSTokenizer_consume_next_input_code_point(a1, 0);
      v15 = v29;
      if (v29 >= 5)
      {
        v15 = 5;
      }

      v22 = v10++ < v15;
      if (!v22)
      {
        goto LABEL_37;
      }
    }

    v16 = v10;
  }

LABEL_37:
  result = _figCSSTokenizer_PeekAheadBuffer(a1, 1, &v28, 4uLL, &v27);
  if (!result && v27 >= 1 && (v28 == 10 || v28 == 9 || v28 == 32))
  {
    result = _figCSSTokenizer_consume_next_input_code_point(a1, 0);
  }

  v17 = 0;
  v18 = &v31;
  v4 = 65533;
  while (1)
  {
    v20 = *v18++;
    v19 = v20;
    v17 *= 16;
    v21 = v20 - 48;
    v22 = v20 < 0x30 || v19 > 0x39;
    if (!v22)
    {
      goto LABEL_59;
    }

    v23 = v19 - 65;
    if (v19 < 0x41 || v19 > 0x46)
    {
      v23 = v19 - 97;
      if (v19 < 0x61 || v19 > 0x66)
      {
        break;
      }
    }

    v21 = v23 + 10;
LABEL_59:
    v17 += v21;
    if (!--v16)
    {
      if (!v17)
      {
        goto LABEL_68;
      }

      goto LABEL_61;
    }
  }

  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  if (!v17)
  {
    goto LABEL_68;
  }

LABEL_61:
  v26 = v17 > 0xD8FF || v17 < 0xD800;
  if (v26 && v17 <= 0x10FFFF)
  {
    v4 = v17;
  }

LABEL_68:
  *a2 = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_104()
{

  return _figCSSTokenizer_consume_next_input_code_point(v0, 0);
}

float FigVideoCompositionInstructionEvaluateTweenedOpacity(const void *a1, float a2)
{
  v2 = 0.0;
  if (a1)
  {
    v5 = CFGetTypeID(a1);
    if (v5 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 4)
      {
        v7 = Count;
        if ((Count & 1) == 0)
        {
          v15 = 0;
          valuePtr = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
          CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, &valuePtr + 4);
          v9 = CFArrayGetValueAtIndex(a1, 1);
          CFNumberGetValue(v9, kCFNumberFloat32Type, &v15 + 4);
          if (*(&valuePtr + 1) <= a2)
          {
            v10 = 2;
            while (1)
            {
              v11 = CFArrayGetValueAtIndex(a1, v10);
              CFNumberGetValue(v11, kCFNumberFloat32Type, &valuePtr);
              v12 = v10 + 1;
              v13 = CFArrayGetValueAtIndex(a1, v12);
              CFNumberGetValue(v13, kCFNumberFloat32Type, &v15);
              if (*&valuePtr > a2)
              {
                break;
              }

              HIDWORD(valuePtr) = valuePtr;
              v2 = *&v15;
              HIDWORD(v15) = v15;
              v10 = v12 + 1;
              if (v10 >= v7)
              {
                return v2;
              }
            }

            return *(&v15 + 1) + (((*&v15 - *(&v15 + 1)) * (a2 - *(&valuePtr + 1))) / (*&valuePtr - *(&valuePtr + 1)));
          }

          else
          {
            return *(&v15 + 1);
          }
        }
      }
    }
  }

  return v2;
}

void FigVideoCompositionInstructionEvaluateTweenedAffineMatrix(const __CFArray *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v45 = *MEMORY[0x1E69E9840];
  memset(&v34, 0, sizeof(v34));
  memset(&v33, 0, sizeof(v33));
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFArrayGetTypeID()) && (Count = CFArrayGetCount(a1), Count >= 4) && (v8 = Count, (Count & 1) == 0))
  {
    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
    CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, &valuePtr + 4);
    v10 = CFArrayGetValueAtIndex(a1, 1);
    FigGetCGAffineTransformFrom3x2MatrixArray(v10, &v34.a);
    if (*(&valuePtr + 1) <= a3)
    {
      v15 = 2;
      while (1)
      {
        v16 = CFArrayGetValueAtIndex(a1, v15);
        CFNumberGetValue(v16, kCFNumberFloat32Type, &valuePtr);
        v17 = v15 + 1;
        v18 = CFArrayGetValueAtIndex(a1, v17);
        FigGetCGAffineTransformFrom3x2MatrixArray(v18, &v33.a);
        if (*&valuePtr > a3)
        {
          break;
        }

        HIDWORD(valuePtr) = valuePtr;
        v34 = v33;
        v15 = v17 + 1;
        if (v15 >= v8)
        {
          v19 = *&v33.c;
          *a2 = *&v33.a;
          *(a2 + 16) = v19;
          v12 = *&v33.tx;
          goto LABEL_8;
        }
      }

      v20 = a3 - *(&valuePtr + 1);
      v21 = *&valuePtr - *(&valuePtr + 1);
      v38 = *&v34.a;
      __x[0] = *&v34.c;
      __x[1] = *&v34.tx;
      v37 = v33;
      vci_CGAffineTransformDecompose(&v38, &v40, 1, 1);
      vci_CGAffineTransformDecompose(&v37, &v38, 1, 1);
      if ((v40.f64[0] >= 0.0 || *(&v38 + 1) >= 0.0) && (v40.f64[1] >= 0.0 || *&v38 >= 0.0))
      {
        v22 = v41;
      }

      else
      {
        v40 = vnegq_f64(v40);
        v22 = v41 + dbl_196E78AD0[v41 < 0.0];
      }

      v23 = v20 / v21;
      v24 = fmod(v22, 6.28318531);
      v41 = v24;
      v25 = fmod(*__x, 6.28318531);
      *__x = v25;
      if (vabdd_f64(v24, v25) > 3.14159265)
      {
        v26 = v24 <= v25;
        if (v24 > v25)
        {
          v25 = v24;
        }

        v27 = &v38;
        if (!v26)
        {
          v27 = &v40;
        }

        v27[1].f64[0] = v25 + -6.28318531;
      }

      for (i = 0; i != 9; ++i)
      {
        v40.f64[i] = v40.f64[i] + v23 * (*(&__x[-1] + i * 8) - v40.f64[i]);
      }

      v29 = v43;
      *a2 = v42;
      *(a2 + 16) = v29;
      *(a2 + 32) = v44;
      v30 = *(a2 + 16);
      *&v37.a = *a2;
      *&v37.c = v30;
      *&v37.tx = *(a2 + 32);
      CGAffineTransformRotate(a2, &v37, v41);
      v31 = *(a2 + 16);
      *&v36.a = *a2;
      *&v36.c = v31;
      *&v36.tx = *(a2 + 32);
      CGAffineTransformScale(&v37, &v36, v40.f64[0], v40.f64[1]);
      v32 = *&v37.c;
      *a2 = *&v37.a;
      *(a2 + 16) = v32;
      v12 = *&v37.tx;
    }

    else
    {
      v11 = *&v34.c;
      *a2 = *&v34.a;
      *(a2 + 16) = v11;
      v12 = *&v34.tx;
    }
  }

  else
  {
    v13 = MEMORY[0x1E695EFD0];
    v14 = *(MEMORY[0x1E695EFD0] + 16);
    *a2 = *MEMORY[0x1E695EFD0];
    *(a2 + 16) = v14;
    v12 = *(v13 + 32);
  }

LABEL_8:
  *(a2 + 32) = v12;
}

uint64_t FigVideoCompositionInstructionEvaluateTweenedCropRectangle(uint64_t result, float a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    result = CFArrayGetTypeID();
    if (v4 == result)
    {
      result = CFArrayGetCount(v3);
      if (result >= 4)
      {
        v5 = result;
        if ((result & 1) == 0)
        {
          valuePtr = 0.0;
          v16 = 0.0;
          memset(&rect, 0, sizeof(rect));
          memset(&v14, 0, sizeof(v14));
          ValueAtIndex = CFArrayGetValueAtIndex(v3, 1);
          v7 = CFArrayGetValueAtIndex(v3, 0);
          CFNumberGetValue(v7, kCFNumberFloat32Type, &valuePtr);
          TypeID = CFDictionaryGetTypeID();
          result = CFGetTypeID(ValueAtIndex);
          if (TypeID == result)
          {
            result = CGRectMakeWithDictionaryRepresentation(ValueAtIndex, &rect);
            if (result)
            {
              if (valuePtr <= a2)
              {
                for (i = 2; i < v5; i = v11 + 1)
                {
                  v10 = CFArrayGetValueAtIndex(v3, i);
                  CFNumberGetValue(v10, kCFNumberFloat32Type, &v16);
                  v11 = i + 1;
                  v12 = CFArrayGetValueAtIndex(v3, v11);
                  v13 = CFDictionaryGetTypeID();
                  result = CFGetTypeID(v12);
                  if (v13 == result)
                  {
                    result = CGRectMakeWithDictionaryRepresentation(v12, &v14);
                    if (result)
                    {
                      if (v16 > a2)
                      {
                        return result;
                      }

                      valuePtr = v16;
                      rect = v14;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigVideoCompositionInstructionArrayIsValid(uint64_t result, uint64_t a2, uint64_t a3)
{
  memset(&v25, 0, sizeof(v25));
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v5);
      if (!Count)
      {
        return 1;
      }

      v8 = Count;
      for (i = 0; ; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        memset(&v24, 0, sizeof(v24));
        memset(&v23, 0, sizeof(v23));
        if (!ValueAtIndex)
        {
          break;
        }

        v11 = ValueAtIndex;
        TypeID = CFDictionaryGetTypeID();
        if (TypeID != CFGetTypeID(v11))
        {
          break;
        }

        Value = CFDictionaryGetValue(v11, @"StartTime");
        if (!Value)
        {
          break;
        }

        v14 = Value;
        v15 = CFDictionaryGetTypeID();
        if (v15 != CFGetTypeID(v14))
        {
          break;
        }

        v16 = CFDictionaryGetValue(v11, @"StartTime");
        CMTimeMakeFromDictionary(&v24, v16);
        v17 = CFDictionaryGetValue(v11, @"EndTime");
        if (!v17)
        {
          break;
        }

        v18 = v17;
        v19 = CFDictionaryGetTypeID();
        if (v19 != CFGetTypeID(v18))
        {
          break;
        }

        v20 = CFDictionaryGetValue(v11, @"EndTime");
        CMTimeMakeFromDictionary(&v23, v20);
        if (!i && (*(a2 + 12) & 1) != 0)
        {
          time1 = v24;
          v21 = *a2;
          if (CMTimeCompare(&time1, &v21) > 0)
          {
            break;
          }
        }

        if (v8 == 1 && (*(a3 + 12) & 1) != 0)
        {
          time1 = v23;
          v21 = *a3;
          if (CMTimeCompare(&time1, &v21) < 0)
          {
            break;
          }
        }

        if (i)
        {
          time1 = v25;
          v21 = v24;
          if (CMTimeCompare(&time1, &v21))
          {
            break;
          }
        }

        time1 = v24;
        v21 = v23;
        if (CMTimeCompare(&time1, &v21) >= 1)
        {
          break;
        }

        v25 = v23;
        result = 1;
        if (!--v8)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

double FigVideoCompositionInstructionCGAffineTransformDecompose(_OWORD *a1, int a2, int a3, _OWORD *a4, double *a5, double *a6, double *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = a1[1];
  v14[0] = *a1;
  v14[1] = v11;
  v14[2] = a1[2];
  result = vci_CGAffineTransformDecompose(v14, &v15, a2, a3);
  if (a5)
  {
    result = v15;
    *a5 = v15;
  }

  if (a6)
  {
    result = v16;
    *a6 = v16;
  }

  if (a7)
  {
    result = v17;
    *a7 = v17;
  }

  if (a4)
  {
    v13 = v19;
    *a4 = v18;
    a4[1] = v13;
    result = *&v20;
    a4[2] = v20;
  }

  return result;
}

double vci_CGAffineTransformDecompose(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = sqrt(v8 * v8 + *a1 * *a1);
  v12 = sqrt(v10 * v10 + v9 * v9);
  v13 = *a1 * v10 - v9 * v8;
  v14 = -v12;
  v15 = -v11;
  if (*a1 < v10)
  {
    v14 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (v13 < 0.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  if (v13 < 0.0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v12;
  }

  v18 = 1.0 / v16;
  v19 = 0.0;
  if (v16 == 0.0)
  {
    v18 = 0.0;
  }

  v20 = 1.0 / v17;
  if (v17 == 0.0)
  {
    v20 = 0.0;
  }

  v21 = *(a1 + 16);
  *&v30.a = *a1;
  *&v30.c = v21;
  *&v30.tx = *(a1 + 32);
  CGAffineTransformScale(&v31, &v30, v18, v20);
  v22 = *&v31.c;
  *a1 = *&v31.a;
  *(a1 + 16) = v22;
  *(a1 + 32) = *&v31.tx;
  if (a4)
  {
    v19 = atan2(*(a1 + 8), *a1);
    v23 = *(a1 + 16);
    *&v30.a = *a1;
    *&v30.c = v23;
    *&v30.tx = *(a1 + 32);
    CGAffineTransformRotate(&v31, &v30, -v19);
    v24 = *&v31.c;
    *a1 = *&v31.a;
    *(a1 + 16) = v24;
    *(a1 + 32) = *&v31.tx;
  }

  if (!a3)
  {
    if (fmin(v16, v17) < 0.0)
    {
      v19 = -v19;
    }

    v25 = -1.0;
    if (v16 < 0.0)
    {
      v26 = -1.0;
    }

    else
    {
      v26 = 1.0;
    }

    if (v17 >= 0.0)
    {
      v25 = 1.0;
    }

    v27 = *(a1 + 16);
    *&v30.a = *a1;
    *&v30.c = v27;
    *&v30.tx = *(a1 + 32);
    CGAffineTransformScale(&v31, &v30, v26, v25);
    v28 = *&v31.c;
    *a1 = *&v31.a;
    *(a1 + 16) = v28;
    *(a1 + 32) = *&v31.tx;
    v16 = fabs(v16);
    v17 = fabs(v17);
  }

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19;
  *(a2 + 24) = *a1;
  *(a2 + 32) = *(a1 + 8);
  *(a2 + 40) = *(a1 + 16);
  *(a2 + 48) = *(a1 + 24);
  *(a2 + 56) = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 64) = result;
  return result;
}

uint64_t FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime(const __CFAllocator *a1, CFTypeRef cf, CMTime *a3, __CFArray **a4)
{
  v42 = 0;
  if (!cf || (v8 = CFGetTypeID(cf), v8 != CFDictionaryGetTypeID()))
  {
    FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_6(&v41);
    return LODWORD(v41.value);
  }

  if (!a4)
  {
    FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_5(&v41);
    return LODWORD(v41.value);
  }

  v9 = *MEMORY[0x1E695E4D0];
  Value = CFDictionaryGetValue(cf, @"ContainsTweening");
  v11 = 0.0;
  if (v9 == Value)
  {
    v41 = *a3;
    FigVideoCompositionInstructionGetNormalizedTime(cf, &v41);
    v11 = v37;
  }

  FigCFDictionaryGetInt32IfPresent();
  v12 = CFDictionaryGetValue(cf, @"LayerStack");
  v13 = CFDictionaryGetValue(cf, @"RequiredVideoTrackIDArray");
  if (v42)
  {
    Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_1(&v41);
      return LODWORD(v41.value);
    }

    MutableCopy = Mutable;
    FigCFArrayAppendInt32();
    goto LABEL_35;
  }

  v16 = v13;
  if (!v12 || (v17 = CFGetTypeID(v12), v17 != CFArrayGetTypeID()))
  {
    if (v16 && (v35 = CFGetTypeID(v16), v35 == CFArrayGetTypeID()))
    {
      MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v16);
      if (!MutableCopy)
      {
        FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_4(&v41);
        return LODWORD(v41.value);
      }
    }

    else
    {
      MutableCopy = 0;
    }

LABEL_35:
    result = 0;
    *a4 = MutableCopy;
    return result;
  }

  v18 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!v18)
  {
    FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_3(&v41);
    return LODWORD(v41.value);
  }

  MutableCopy = v18;
  Count = CFArrayGetCount(v12);
  if (Count < 1)
  {
    goto LABEL_35;
  }

  v20 = Count;
  v39 = a4;
  v21 = 0;
  v22 = @"ConstantOpacity";
  while (1)
  {
    *&v40 = 1.0;
    ValueAtIndex = CFArrayGetValueAtIndex(v12, v21);
    if (!ValueAtIndex || (v24 = ValueAtIndex, v25 = CFGetTypeID(ValueAtIndex), v25 != CFDictionaryGetTypeID()))
    {
      v38 = 561;
      goto LABEL_37;
    }

    if (!FigCFDictionaryGetFloatIfPresent())
    {
      *&v40 = 1.0;
    }

    if (v9 == Value && (v30 = CFDictionaryGetValue(v24, @"TweenedOpacity")) != 0 && (v31 = v30, v32 = v22, v33 = CFGetTypeID(v30), v34 = v33 == CFArrayGetTypeID(), v22 = v32, v34))
    {
      v26 = FigVideoCompositionInstructionEvaluateTweenedOpacity(v31, v11);
      *&v40 = v26;
    }

    else
    {
      v26 = *&v40;
    }

    if (v26 > 0.0)
    {
      break;
    }

LABEL_24:
    if (v20 == ++v21)
    {
      a4 = v39;
      goto LABEL_35;
    }
  }

  v27 = CFDictionaryGetValue(v24, @"SourceVideoTrackID");
  if (v27)
  {
    v28 = v27;
    v29 = CFGetTypeID(v27);
    if (v29 == CFNumberGetTypeID())
    {
      CFArrayAppendValue(MutableCopy, v28);
      goto LABEL_24;
    }
  }

  v38 = 578;
LABEL_37:
  FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime_cold_2(v38, &v40, MutableCopy, &v41);
  return LODWORD(v41.value);
}

uint64_t FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime(int a1, const __CFDictionary *cf, uint64_t a3, CFMutableArrayRef *a4)
{
  if (cf && (v6 = CFGetTypeID(cf), v6 == CFDictionaryGetTypeID()))
  {
    if (a4)
    {
      Value = CFDictionaryGetValue(cf, @"RequiredSampleDataTrackIDArray");
      if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFArrayGetTypeID()))
      {
        MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8);
        if (!MutableCopy)
        {
          FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime_cold_1(&v12);
          return v12;
        }
      }

      else
      {
        MutableCopy = 0;
      }

      result = 0;
      *a4 = MutableCopy;
    }

    else
    {
      FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime_cold_2(&v13);
      return v13;
    }
  }

  else
  {
    FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime_cold_3(&v14);
    return v14;
  }

  return result;
}

uint64_t FigVideoCompositionInstructionGetLayerCountExcludingBackground(const void *a1, CFIndex *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFDictionaryGetTypeID()))
  {
    FigVideoCompositionInstructionGetLayerCountExcludingBackground_cold_2(&v14);
    Count = 0;
    v11 = v14;
    goto LABEL_12;
  }

  if (!a2)
  {
    FigVideoCompositionInstructionGetLayerCountExcludingBackground_cold_1(&v13);
    Count = 0;
    v11 = v13;
    goto LABEL_12;
  }

  FigCFDictionaryGetInt32IfPresent();
  Value = CFDictionaryGetValue(a1, @"LayerStack");
  v6 = CFDictionaryGetValue(a1, @"RequiredVideoTrackIDArray");
  if (Value && (v7 = CFGetTypeID(Value), v7 == CFArrayGetTypeID()))
  {
    v8 = Value;
  }

  else
  {
    if (!v6 || (v9 = CFGetTypeID(v6), v9 != CFArrayGetTypeID()))
    {
      v11 = 0;
      Count = 0;
      goto LABEL_12;
    }

    v8 = v6;
  }

  Count = CFArrayGetCount(v8);
  v11 = 0;
LABEL_12:
  *a2 = Count;
  return v11;
}

uint64_t FigVirtualDisplayProcessorAccessoryCreate(uint64_t a1, uint64_t a2, void *a3)
{
  FigVirtualDisplayProcessorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 32) = 0;
    *(DerivedStorage + 8) = dispatch_semaphore_create(0);
    *DerivedStorage = dispatch_queue_create("FVDProcessorAccessoryQueue", 0);
    *a3 = 0;
  }

  return v4;
}

void pa_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    pa_finalize_cold_1();
  }

  v3 = *DerivedStorage;
  if (*DerivedStorage)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __pa_finalize_block_invoke;
    block[3] = &__block_descriptor_tmp_89;
    block[4] = a1;
    dispatch_sync(v3, block);
    if (*DerivedStorage)
    {
      dispatch_release(*DerivedStorage);
      *DerivedStorage = 0;
    }
  }

  v4 = *(DerivedStorage + 8);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 8) = 0;
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 24) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 16) = 0;
  }

  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 48) = 0;
  }
}

uint64_t pa_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"processorType"))
  {
    v7 = @"AccessoryProcessor";
LABEL_7:
    v9 = CFRetain(v7);
    result = 0;
    *a4 = v9;
    return result;
  }

  if (CFEqual(a2, @"IsIdle"))
  {
    v8 = MEMORY[0x1E695E4C0];
    if (*(DerivedStorage + 32) != 2)
    {
      v8 = MEMORY[0x1E695E4D0];
    }

    v7 = *v8;
    goto LABEL_7;
  }

  return 4294954512;
}

void pa_cleanup(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, a1, 0, 0);
  v4 = DerivedStorage[2];
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v5)
    {
      v5(v4, 0);
    }
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v7(v6, 0);
    }

    v8 = DerivedStorage[3];
    if (v8)
    {
      CFRelease(v8);
      DerivedStorage[3] = 0;
    }
  }

  v9 = DerivedStorage[6];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[6] = 0;
  }
}

uint64_t pa_plugSink(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __pa_plugSink_block_invoke;
    block[3] = &unk_1E74908C8;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v11;
    dispatch_sync(v4, block);
    v5 = *(v12 + 6);
  }

  else
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = 4294955226;
    *(v12 + 6) = -12070;
  }

  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t pa_unplugSink(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __pa_unplugSink_block_invoke;
  block[3] = &unk_1E74908F0;
  block[5] = DerivedStorage;
  block[6] = a2;
  block[4] = &v8;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t pa_start(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v4 = *CMBaseObjectGetDerivedStorage();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __pa_start_block_invoke;
  block[3] = &unk_1E7490918;
  block[4] = &v8;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t pa_stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __pa_stop_block_invoke;
  v5[3] = &__block_descriptor_tmp_37_1;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

uint64_t pa_suspend()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *DerivedStorage;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __pa_suspend_block_invoke;
  block[3] = &__block_descriptor_tmp_38;
  block[4] = DerivedStorage;
  dispatch_sync(v1, block);
  return 0;
}

uint64_t pa_resume()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *DerivedStorage;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __pa_resume_block_invoke;
  v4[3] = &unk_1E74909A0;
  v4[4] = &v5;
  v4[5] = DerivedStorage;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFTypeRef *__pa_plugSink_block_invoke(CFTypeRef *result)
{
  v1 = result;
  v2 = result[5];
  if (v2[8] || *(v2 + 2))
  {
    *(*(result[4] + 1) + 24) = -12070;
  }

  else
  {
    result = CFRetain(result[6]);
    *(v1[5] + 2) = v1[6];
  }

  return result;
}

void __pa_unplugSink_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 32) && (v3 = *(v2 + 16), v3 == a1[6]))
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1[5] + 16) = 0;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

void __pa_start_block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v32 = 0;
  if (*(DerivedStorage + 32))
  {
    __pa_start_block_invoke_cold_1();
LABEL_42:
    v24 = -12070;
    goto LABEL_32;
  }

  v4 = DerivedStorage;
  if (!*(DerivedStorage + 16))
  {
    __pa_start_block_invoke_cold_3();
    goto LABEL_42;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  *(v5 + 36) = CFPreferenceNumberWithDefault;
  if (CFPreferenceNumberWithDefault <= 63)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LODWORD(cf) = 0;
    v34[0] = OS_LOG_TYPE_DEFAULT;
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_42;
  }

  *(v5 + 40) = CFPreferenceNumberWithDefault;
  v7 = FigGetCFPreferenceNumberWithDefault();
  v8 = *MEMORY[0x1E695E480];
  if (!v7)
  {
    goto LABEL_21;
  }

  cf = 0;
  v9 = getpid();
  v10 = CFStringCreateWithFormat(v8, 0, @"/tmp/vdpaccessory-tap-%d-%d.mov", v9, ++tapSinkCreate_count);
  if (FigVirtualDisplaySinkFileWriterCreate(v8, &cf))
  {
    *v34 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_16:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_18;
  }

  CMBaseObject = FigVirtualDisplaySinkGetCMBaseObject(cf);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v12)
  {
    v31 = v10;
    v16 = v2;
LABEL_12:
    *v34 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = v16;
LABEL_15:
    v10 = v31;
    goto LABEL_16;
  }

  if (v12(CMBaseObject, @"Destination", v10))
  {
    v31 = v10;
    v16 = v2;
    goto LABEL_12;
  }

  v13 = cf;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    v31 = v10;
    v15 = v2;
    goto LABEL_14;
  }

  if (v14(v13, 0, 0))
  {
    v31 = v10;
    v15 = v2;
LABEL_14:
    *v34 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    v2 = v15;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_15;
  }

LABEL_18:
  if (v10)
  {
    CFRelease(v10);
  }

  *(v5 + 24) = cf;
LABEL_21:
  FigGetCFPreferenceDoubleWithDefault();
  *&v19 = v19;
  *(v5 + 56) = LODWORD(v19);
  v20 = FigVirtualDisplaySinkGetCMBaseObject(*(v4 + 16));
  v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v21)
  {
    v22 = v21(v20, @"displayInfo", v8, &v32);
    if (!v22)
    {
      if (v32)
      {
        FigCFDictionaryGetBooleanIfPresent();
        *(v4 + 32) = 2;
        DistributedCenter = CFNotificationCenterGetDistributedCenter();
        CFNotificationCenterAddObserver(DistributedCenter, v2, pa_handleNotification, @"com.apple.stevenote.AudioDataValues", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        v24 = 0;
        goto LABEL_32;
      }

      __pa_start_block_invoke_cold_2();
      goto LABEL_42;
    }

    v24 = v22;
  }

  else
  {
    v24 = -12782;
  }

  LODWORD(cf) = 0;
  v34[0] = OS_LOG_TYPE_DEFAULT;
  v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v26 = cf;
  if (os_log_type_enabled(v25, v34[0]))
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 & 0xFFFFFFFE;
  }

  if (v27)
  {
    v36 = 136315650;
    v37 = "pa_startInternal";
    v38 = 1024;
    v39 = 440;
    v40 = 1024;
    v41 = v24;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_32:
  if (v32)
  {
    CFRelease(v32);
  }

  if (v24)
  {
    pa_cleanup(v2);
  }

  *(*(*(a1 + 32) + 8) + 24) = v24;
}

void pa_handleNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __pa_handleNotification_block_invoke;
  v8[3] = &__block_descriptor_tmp_24_1;
  v8[4] = a2;
  v8[5] = a5;
  dispatch_sync(v7, v8);
}

void __pa_stop_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v1 + 32) = 0;
  pa_cleanup(v2);
}

uint64_t __pa_suspend_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 32) = 1;
  v2 = *(v1 + 16);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E695E4D0];

    return v6(v2, @"clearScreen", v7, 0);
  }

  return result;
}

uint64_t __pa_resume_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (*(v1 + 32) == 1)
  {
    *(v1 + 32) = 2;
  }

  else
  {
    *(*(*(result + 32) + 8) + 24) = -12070;
  }

  return result;
}

void OUTLINED_FUNCTION_7_67(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 256) = a2;
  *(v2 + 116) = a1;
  *(v3 - 244) = 1024;
}

uint64_t OUTLINED_FUNCTION_8_52()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_14_43(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_22_27(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, os_log_type_t type, int a30)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_23_35(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigCaptionRendererTTMLRegionSetColor(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = CFRetain(a2);
  }

  else
  {
    v4 = 0;
  }

  *(DerivedStorage + 72) = v4;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegionGetInvisible(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E695E4D0];
  if (!*(DerivedStorage + 144))
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  *a2 = *v4;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetWidth(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 80) = a2;
  *(DerivedStorage + 88) = a3;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetHeight(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 96) = a2;
  *(DerivedStorage + 104) = a3;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetPositionX(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 112) = a2;
  *(DerivedStorage + 120) = a3;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetPositionY(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 128) = a2;
  *(DerivedStorage + 136) = a3;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetShowBackground(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 152);
  *(DerivedStorage + 152) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetWritingMode(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 160);
  *(DerivedStorage + 160) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendererTTMLRegionGetWritingMode(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = *(DerivedStorage + 160);
  }

  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetCellResolution(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a2[1];
  *(DerivedStorage + 176) = *a2;
  *(DerivedStorage + 192) = v4;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegionGetCellResolution(uint64_t a1, _OWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 192);
    *a2 = *(DerivedStorage + 176);
    a2[1] = v4;
  }

  return 0;
}

uint64_t FigCaptionRendererTTMLRegionSetDisplayAlignment(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 168);
  *(DerivedStorage + 168) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

void FigCaptionRendererTTMLRegionFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CGColorRelease(*(DerivedStorage + 72));
  v1 = *(DerivedStorage + 24);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 24) = 0;
  }

  v2 = *(DerivedStorage + 152);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 152) = 0;
  }

  v3 = *(DerivedStorage + 160);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 160) = 0;
  }

  v4 = *(DerivedStorage + 168);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 168) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigCaptionRendererTTMLRegionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererTTMLRegion: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererTTMLRegion_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererTTMLRegion <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererTTMLRegion <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2, a3);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  __s1 = 0;
  FigCaptionRendererBaseProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable || (v5 = *(ProtocolVTable + 16)) == 0)
  {
    v17 = 4294954508;
LABEL_19:
    FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_AddChildNode_cold_1();
    return v17;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    v17 = 4294954514;
    goto LABEL_19;
  }

  v7 = v6(a2, &__s1);
  if (v7)
  {
    v17 = v7;
    goto LABEL_19;
  }

  v8 = strcmp(__s1, "FigCaptionRendererTTMLRegion");
  v9 = *(DerivedStorage + 160);
  if (v8)
  {
    FigCaptionRendererCaptionProtocolGetProtocolID();
    v10 = CMBaseObjectGetProtocolVTable();
    if (v10)
    {
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = *(v11 + 112);
        if (v12)
        {
          v12(a2, v9);
        }
      }
    }
  }

  else
  {
    FigCaptionRendererTTMLRegionSetWritingMode(a2, *(DerivedStorage + 160));
  }

  v13 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v14 = CMBaseObjectGetProtocolVTable();
  if (!v14)
  {
    return 4294954508;
  }

  v15 = *(v14 + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 40);
  if (v16)
  {
    return v16(v13, a2);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetViewport(double a1, double a2, double a3, double a4)
{
  v8 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v14 = *(ProtocolVTable + 16);
  if (!v14)
  {
    return 4294954508;
  }

  v15 = *(v14 + 64);
  if (!v15)
  {
    return 4294954514;
  }

  v10.n128_f64[0] = a1;
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(v8, v10, v11, v12, v13);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  return v6(v3, v12);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetCGBounds(double a1, double a2, double a3, double a4)
{
  v8 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v14 = *(ProtocolVTable + 16);
  if (!v14)
  {
    return 4294954508;
  }

  v15 = *(v14 + 96);
  if (!v15)
  {
    return 4294954514;
  }

  v10.n128_f64[0] = a1;
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(v8, v10, v11, v12, v13);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetCGSize(double a1, double a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v8 = *(ProtocolVTable + 16);
  if (!v8)
  {
    return 4294954508;
  }

  v9 = *(v8 + 112);
  if (!v9)
  {
    return 4294954514;
  }

  v6.n128_f64[0] = a1;
  v7.n128_f64[0] = a2;

  return v9(v4, v6, v7);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 120);
  if (!v6)
  {
    return 4294954508;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetCGOrigin(double a1, double a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v8 = *(ProtocolVTable + 16);
  if (!v8)
  {
    return 4294954508;
  }

  v9 = *(v8 + 128);
  if (!v9)
  {
    return 4294954514;
  }

  v6.n128_f64[0] = a1;
  v7.n128_f64[0] = a2;

  return v9(v4, v6, v7);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 136);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 144);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_PurgeImageCache()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 160);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 184);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 192);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 200);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v7, a2, a3, a4);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 208);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 224);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 232);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 240);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 248);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetZOrder(double a1)
{
  v2 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 256);
  if (!v6)
  {
    return 4294954514;
  }

  v4.n128_f64[0] = a1;

  return v6(v2, v4);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 264);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_ResetNodeTree()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 272);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Draw(const void *a1, uint64_t a2)
{
  v85 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(MEMORY[0x1E695F050] + 16);
  v83[0] = *MEMORY[0x1E695F050];
  v83[1] = v7;
  v78 = v7;
  v79 = v83[0];
  v82[0] = v83[0];
  v82[1] = v7;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v9 = *(ProtocolVTable + 16);
    if (v9)
    {
      v10 = *(v9 + 72);
      if (v10)
      {
        v10(a1, v83);
      }
    }
  }

  FigCaptionRendererNodeProtocolGetProtocolID();
  v11 = CMBaseObjectGetProtocolVTable();
  if (v11)
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v12 + 104);
      if (v13)
      {
        v13(a1, v82);
      }
    }
  }

  v14 = *(DerivedStorage + 152);
  if (!v14)
  {
    goto LABEL_18;
  }

  if (CFStringCompare(v14, *MEMORY[0x1E6960B98], 1uLL) == kCFCompareEqualTo)
  {
    v18 = (DerivedStorage + 216);
    if (*(DerivedStorage + 216))
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v2 = 1;
  if (CFStringCompare(*(DerivedStorage + 152), *MEMORY[0x1E6960BA0], 1uLL) == kCFCompareEqualTo)
  {
    theArray.a = 0.0;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v15 = CMBaseObjectGetProtocolVTable();
    if (v15)
    {
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = *(v16 + 24);
        if (v17)
        {
          v17(a1, &theArray);
        }
      }
    }

    if (*&theArray.a)
    {
      v2 = CFArrayGetCount(*&theArray.a) < 1;
      goto LABEL_19;
    }

LABEL_18:
    v2 = 1;
  }

LABEL_19:
  v18 = (DerivedStorage + 216);
  if (*(DerivedStorage + 216))
  {
    goto LABEL_24;
  }

  if (v2)
  {
    goto LABEL_50;
  }

LABEL_23:
  if (!*(DerivedStorage + 72))
  {
    goto LABEL_50;
  }

LABEL_24:
  v81.origin = v79;
  v81.size = v78;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v19 = CMBaseObjectGetProtocolVTable();
  if (v19)
  {
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = *(v20 + 104);
      if (v21)
      {
        v21(a1, &v81);
      }
    }
  }

  size = v81.size;
  v23 = *(a2 + 340);
  FigCaptionRendererNodeProtocolGetProtocolID();
  v24 = CMBaseObjectGetProtocolVTable();
  if (!v24)
  {
    return 4294954508;
  }

  v25 = *(v24 + 16);
  if (!v25)
  {
    return 4294954508;
  }

  v26 = *(v25 + 200);
  if (!v26)
  {
    return 4294954514;
  }

  LODWORD(v3) = vcvtpd_s64_f64(size.width);
  LODWORD(v2) = vcvtpd_s64_f64(size.height);
  result = v26(a1, v3, v2, v23);
  if (!result)
  {
    data = 0;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v28 = CMBaseObjectGetProtocolVTable();
    if (v28)
    {
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = *(v29 + 208);
        if (v30)
        {
          v30(a1, &data);
        }
      }
    }

    if (!data)
    {
      FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Draw_cold_3();
      return 0;
    }

    v31 = *MEMORY[0x1E695F1C0];
    v32 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (v32)
    {
      v33 = v32;
      v34 = CGBitmapContextCreate(data, *(a2 + 340) * v3, *(a2 + 340) * v2, 8uLL, 4 * *(a2 + 340) * v3, v32, 0x4001u);
      if (!v34)
      {
        fig_log_get_emitter();
        v77 = FigSignalErrorAtGM();
        CGColorSpaceRelease(v33);
        return v77;
      }

      v35 = v34;
      CGContextScaleCTM(v34, *(a2 + 340), *(a2 + 340));
      v36 = *(MEMORY[0x1E695EFD0] + 16);
      *&theArray.a = *MEMORY[0x1E695EFD0];
      *&theArray.c = v36;
      *&theArray.tx = *(MEMORY[0x1E695EFD0] + 32);
      CGContextSetTextMatrix(v35, &theArray);
      CGColorSpaceRelease(v33);
      if (*v18 == 1)
      {
        v37 = CGColorSpaceCreateWithName(v31);
        *&theArray.a = xmmword_196E78AF8;
        *&theArray.c = unk_196E78B08;
        v38 = CGColorCreate(v37, &theArray.a);
      }

      else
      {
        v37 = 0;
        v38 = *(DerivedStorage + 72);
      }

      CGContextSaveGState(v35);
      v39 = v81.size;
      CGContextSetShadowWithColor(v35, *MEMORY[0x1E695F060], 0.0, 0);
      CGContextSetFillColorWithColor(v35, v38);
      v86.origin.x = 0.0;
      v86.origin.y = 0.0;
      v86.size = v39;
      CGContextFillRect(v35, v86);
      CGContextRestoreGState(v35);
      if (*v18 == 1)
      {
        CGColorRelease(v38);
        CFRelease(v37);
      }

      Image = CGBitmapContextCreateImage(v35);
      if (Image)
      {
        v41 = Image;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v42 = CMBaseObjectGetProtocolVTable();
        if (v42)
        {
          v43 = *(v42 + 16);
          if (v43)
          {
            v44 = *(v43 + 168);
            if (v44)
            {
              v44(a1, v41);
            }
          }
        }

        CGImageRelease(v41);
        CGContextRelease(v35);
LABEL_50:
        if (*(a2 + 296))
        {
          *&theArray.a = v79;
          *&theArray.c = v78;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v45 = CMBaseObjectGetProtocolVTable();
          if (v45)
          {
            v46 = *(v45 + 16);
            if (v46)
            {
              v47 = *(v46 + 104);
              if (v47)
              {
                v47(a1, &theArray);
              }
            }
          }

          Value = CFDictionaryGetValue(*(a2 + 296), a1);
          if (*(a2 + 336))
          {
            d = theArray.d;
          }

          else
          {
            v50 = *(MEMORY[0x1E695F058] + 16);
            v81.origin = *MEMORY[0x1E695F058];
            v81.size = v50;
            FigCaptionRendererNodeProtocolGetProtocolID();
            v51 = CMBaseObjectGetProtocolVTable();
            if (v51)
            {
              v52 = *(v51 + 16);
              if (v52)
              {
                v53 = *(v52 + 72);
                if (v53)
                {
                  v53(a1, &v81);
                }
              }
            }

            v87.origin.x = theArray.a;
            v87.origin.y = theArray.b;
            v87.size = *&theArray.c;
            MidY = CGRectGetMidY(v87);
            v55 = CGRectGetMidY(v81);
            v56 = v55 + v55 - MidY;
            d = theArray.d;
            theArray.b = v56 + theArray.d * -0.5;
          }

          c = theArray.c;
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v58 = CMBaseObjectGetProtocolVTable();
          if (v58)
          {
            v59 = *(v58 + 16);
            if (v59)
            {
              v60 = *(v59 + 88);
              if (v60)
              {
                v60(Value, c, d);
              }
            }
          }

          v88.origin.x = theArray.a;
          v88.origin.y = theArray.b;
          v88.size = *&theArray.c;
          MidX = CGRectGetMidX(v88);
          v89.origin.x = theArray.a;
          v89.origin.y = theArray.b;
          v89.size = *&theArray.c;
          v62 = CGRectGetMidY(v89);
          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v63 = CMBaseObjectGetProtocolVTable();
          if (v63)
          {
            v64 = *(v63 + 16);
            if (v64)
            {
              v65 = *(v64 + 72);
              if (v65)
              {
                v65(Value, MidX, v62);
              }
            }
          }

          v81.origin.x = 0.0;
          FigCaptionRendererNodeProtocolGetProtocolID();
          v66 = CMBaseObjectGetProtocolVTable();
          if (v66 && (v67 = *(v66 + 16)) != 0 && (v68 = *(v67 + 176)) != 0)
          {
            v68(a1, &v81);
            x = v81.origin.x;
          }

          else
          {
            x = 0.0;
          }

          FigCaptionRendererOutputNodeProtocolGetProtocolID();
          v70 = CMBaseObjectGetProtocolVTable();
          if (v70)
          {
            v71 = *(v70 + 16);
            if (v71)
            {
              v72 = *(v71 + 120);
              if (v72)
              {
                v72(Value, *&x);
              }
            }
          }
        }

        v73 = *DerivedStorage;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v74 = CMBaseObjectGetProtocolVTable();
        if (v74)
        {
          v75 = *(v74 + 16);
          if (v75)
          {
            v76 = *(v75 + 280);
            if (v76)
            {
              return v76(v73, a2);
            }

            return 4294954514;
          }
        }

        return 4294954508;
      }

      FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Draw_cold_1(v35, &theArray);
    }

    else
    {
      FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Draw_cold_2(&theArray);
    }

    return LODWORD(theArray.a);
  }

  return result;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, double *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = -1.0;
  v8 = 0;
  v9 = v5[11];
  if (v9 > 1886679839)
  {
    if (v9 == 1886679840 || v9 == 1886920736)
    {
      FigGeometryDimensionGetCGFloat();
      v7 = v14;
      v6 = 0;
    }
  }

  else if (v9 == 622862368)
  {
    FigGeometryDimensionGetCGFloat();
    v6 = 1;
    v7 = v15 / 100.0;
  }

  else if (v9 == 1667591276)
  {
    FigGeometryDimensionGetCGFloat();
    v11 = v10;
    FigGeometryDimensionGetCGFloat();
    v6 = 1;
    v7 = v11 / v12;
  }

  v16 = FCRRectNull;
  v17 = -1.0;
  v18 = v5[13];
  if (v18 > 1886679839)
  {
    if (v18 == 1886679840 || v18 == 1886920736)
    {
      FigGeometryDimensionGetCGFloat();
      v17 = v22;
      v8 = 0;
    }
  }

  else if (v18 == 622862368)
  {
    FigGeometryDimensionGetCGFloat();
    v8 = 1;
    v17 = v23 / 100.0;
  }

  else if (v18 == 1667591276)
  {
    FigGeometryDimensionGetCGFloat();
    v20 = v19;
    FigGeometryDimensionGetCGFloat();
    v8 = 1;
    v17 = v20 / v21;
  }

  v24 = 0;
  v25 = -1.0;
  v26 = v5[15];
  if (v26 > 1886679839)
  {
    if (v26 == 1886679840 || v26 == 1886920736)
    {
      FigGeometryDimensionGetCGFloat();
      v25 = v30;
      v16 = 0;
    }
  }

  else if (v26 == 622862368)
  {
    FigGeometryDimensionGetCGFloat();
    if (v44 / 100.0 < 0.0 || (FigGeometryDimensionGetCGFloat(), v25 = 1.0, v45 / 100.0 <= 1.0))
    {
      FigGeometryDimensionGetCGFloat();
      if (v56 / 100.0 >= 0.0)
      {
        FigGeometryDimensionGetCGFloat();
        v16 = 1;
        v25 = v132 / 100.0;
      }

      else
      {
        v16 = 1;
        v25 = 0.0;
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else if (v26 == 1667591276)
  {
    FigGeometryDimensionGetCGFloat();
    v28 = v27;
    FigGeometryDimensionGetCGFloat();
    v16 = 1;
    v25 = v28 / v29;
  }

  v31 = -1.0;
  v32 = v5[17];
  if (v32 > 1886679839)
  {
    if (v32 == 1886679840 || v32 == 1886920736)
    {
      FigGeometryDimensionGetCGFloat();
      v31 = v43;
      v24 = 0;
    }
  }

  else
  {
    if (v32 == 622862368)
    {
      v46 = v18 == 1886920736 || v18 == 1886679840;
      v31 = 1.0;
      if (v46)
      {
        v47 = 1.0;
      }

      else
      {
        v47 = v17;
      }

      FigGeometryDimensionGetCGFloat();
      v49 = v48 / 100.0;
      v50 = 0.0;
      if (v49 <= 1.0)
      {
        FigGeometryDimensionGetCGFloat();
        v50 = v51 / -100.0 + 1.0;
      }

      if (v50 - v47 <= 1.0)
      {
        FigGeometryDimensionGetCGFloat();
        v53 = v52 / 100.0;
        v54 = 0.0;
        if (v53 <= 1.0)
        {
          FigGeometryDimensionGetCGFloat();
          v54 = v55 / -100.0 + 1.0;
        }

        v31 = v54 - v47;
      }

      goto LABEL_55;
    }

    if (v32 == 1667591276)
    {
      FigGeometryDimensionGetCGFloat();
      v34 = v33;
      FigGeometryDimensionGetCGFloat();
      v36 = v34 / v35;
      v31 = 1.0;
      if (v36 > 1.0 || (FigGeometryDimensionGetCGFloat(), v38 = v37, FigGeometryDimensionGetCGFloat(), 1.0 - v38 / v39 <= 1.0))
      {
        FigGeometryDimensionGetCGFloat();
        v41 = v40;
        FigGeometryDimensionGetCGFloat();
        if (v41 / v42 > 1.0)
        {
          v24 = 1;
          v31 = 0.0;
          goto LABEL_56;
        }

        FigGeometryDimensionGetCGFloat();
        v58 = v57;
        FigGeometryDimensionGetCGFloat();
        v31 = 1.0 - v58 / v59;
      }

LABEL_55:
      v24 = 1;
    }
  }

LABEL_56:
  v60 = *v5;
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v62 = *(ProtocolVTable + 16);
    if (v62)
    {
      v63 = *(v62 + 80);
      if (v63)
      {
        LOBYTE(v147) = v16;
        *(&v147 + 1) = 0;
        DWORD1(v147) = 0;
        *(&v147 + 1) = v25;
        LOBYTE(v148) = v24;
        *(&v148 + 1) = 0;
        DWORD1(v148) = 0;
        *(&v148 + 1) = v31;
        LOBYTE(v149) = v6;
        *(&v149 + 1) = 0;
        DWORD1(v149) = 0;
        *(&v149 + 1) = v7;
        LOBYTE(v150) = v8;
        DWORD1(v150) = 0;
        *(&v150 + 1) = 0;
        *(&v150 + 1) = v17;
        v63(v60, &v147);
      }
    }
  }

  v64 = CMBaseObjectGetDerivedStorage();
  v147 = FCRRectNull;
  v148 = *&byte_196E76830;
  v149 = xmmword_196E76840;
  v150 = *&byte_196E76850;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v65 = CMBaseObjectGetProtocolVTable();
  if (v65)
  {
    v66 = *(v65 + 16);
    if (v66)
    {
      v67 = *(v66 + 88);
      if (v67)
      {
        v67(a1, &v147);
      }
    }
  }

  v68 = FCRGetVideoPresentationBounds(a2[47], a2[48], a2[43], a2[44], a2[45], a2[46]);
  if (*(&v149 + 1) != -1.0)
  {
    v118 = v68 + *(&v147 + 1) * v70;
    v119 = v68 + *(&v147 + 1);
    if (v147)
    {
      v119 = v118;
    }

    v120 = v69 + *(&v148 + 1) * v71;
    v121 = v69 + *(&v148 + 1);
    if (v148)
    {
      v121 = v120;
    }

    v122 = *(&v149 + 1) * v70;
    if (!v149)
    {
      v122 = *(&v149 + 1);
    }

    v123 = v71 * *(&v150 + 1);
    if (!v150)
    {
      v123 = *(&v150 + 1);
    }

    v151 = CGRectIntegral(*&v119);
    x = v151.origin.x;
    y = v151.origin.y;
    width = v151.size.width;
    height = v151.size.height;
    v128 = *v64;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v129 = CMBaseObjectGetProtocolVTable();
    if (v129)
    {
      v130 = *(v129 + 16);
      if (v130)
      {
        v131 = *(v130 + 96);
        if (v131)
        {
          v131(v128, x, y, width, height);
        }
      }
    }
  }

  theArray = 0;
  v72 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v73 = CMBaseObjectGetProtocolVTable();
  if (v73)
  {
    v74 = *(v73 + 16);
    if (v74)
    {
      v75 = *(v74 + 24);
      if (v75)
      {
        v75(v72, &theArray);
      }
    }
  }

  Count = CFArrayGetCount(theArray);
  *cf2 = *(MEMORY[0x1E695F050] + 16);
  v139 = *MEMORY[0x1E695F050];
  v147 = *MEMORY[0x1E695F050];
  v148 = *cf2;
  v77 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v78 = CMBaseObjectGetProtocolVTable();
  if (v78)
  {
    v79 = *(v78 + 16);
    if (v79)
    {
      v80 = *(v79 + 104);
      if (v80)
      {
        v80(v77, &v147);
      }
    }
  }

  v144 = v139;
  *v145 = *cf2;
  v81 = *DerivedStorage;
  FigCaptionRendererNodeProtocolGetProtocolID();
  v82 = CMBaseObjectGetProtocolVTable();
  if (v82)
  {
    v83 = *(v82 + 16);
    if (v83)
    {
      v84 = *(v83 + 152);
      if (v84)
      {
        v84(v81, &v144);
      }
    }
  }

  if (Count >= 1)
  {
    v85 = *&v144 - *&v147;
    v86 = *(&v144 + 1) - *(&v147 + 1);
    v87 = *MEMORY[0x1E6960A10];
    v88 = *MEMORY[0x1E6960A20];
    v89 = *MEMORY[0x1E6960A18];
    v90 = *MEMORY[0x1E69607B0];
    cf2a = *MEMORY[0x1E69607A0];
    v136 = *MEMORY[0x1E6960780];
    v135 = *MEMORY[0x1E6960790];
    v134 = *MEMORY[0x1E6960788];
    v91 = Count + 1;
    v140 = *MEMORY[0x1E695F060];
    v92 = *(&v144 + 1) - *(&v147 + 1);
    v93 = *&v144 - *&v147;
    v133 = *MEMORY[0x1E6960798];
    do
    {
      v143 = v140;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v91 - 2);
      FigCaptionRendererNodeProtocolGetProtocolID();
      v95 = CMBaseObjectGetProtocolVTable();
      if (v95)
      {
        v96 = *(v95 + 16);
        if (v96)
        {
          v97 = *(v96 + 120);
          if (v97)
          {
            v97(ValueAtIndex, &v143);
          }
        }
      }

      v98 = *(DerivedStorage + 168);
      if (v98)
      {
        v99 = v86;
        if (CFStringCompare(v98, v87, 1uLL))
        {
          if (CFStringCompare(*(DerivedStorage + 168), v88, 1uLL) == kCFCompareEqualTo)
          {
            v100 = (v145[1] - *(&v143 + 1)) * 0.5;
            goto LABEL_90;
          }

          v99 = v92;
          if (CFStringCompare(*(DerivedStorage + 168), v89, 1uLL) == kCFCompareEqualTo)
          {
            v100 = v145[1] - *(&v143 + 1);
LABEL_90:
            v99 = v86 + v100;
          }
        }
      }

      else
      {
        v99 = v92;
      }

      __s1 = 0;
      FigCaptionRendererBaseProtocolGetProtocolID();
      v101 = CMBaseObjectGetProtocolVTable();
      if (v101)
      {
        v102 = *(v101 + 16);
        if (v102)
        {
          v103 = *(v102 + 8);
          if (v103)
          {
            v103(ValueAtIndex, &__s1);
          }
        }
      }

      if (!__s1 || strcmp(__s1, "FigCaptionRendererCaption"))
      {
        goto LABEL_97;
      }

      theDict = 0;
      FigCaptionRendererCaptionProtocolGetProtocolID();
      v110 = CMBaseObjectGetProtocolVTable();
      if (v110)
      {
        v111 = *(v110 + 16);
        if (v111)
        {
          v112 = *(v111 + 16);
          if (v112)
          {
            v112(ValueAtIndex, &theDict);
          }
        }
      }

      if (!theDict)
      {
        goto LABEL_97;
      }

      Value = CFDictionaryGetValue(theDict, v90);
      if (!Value)
      {
        goto LABEL_97;
      }

      v114 = Value;
      v93 = v85;
      if (CFEqual(Value, cf2a))
      {
        goto LABEL_97;
      }

      if (CFEqual(v114, v136))
      {
        v115 = v145[0];
LABEL_116:
        v93 = v85 + v115 - *&v143;
        goto LABEL_97;
      }

      if (CFEqual(v114, v135))
      {
        v115 = v145[0];
LABEL_119:
        v93 = v85 + (v115 - *&v143) * 0.5;
        goto LABEL_97;
      }

      v93 = v85;
      if (!CFEqual(v114, v134))
      {
        v116 = CFEqual(v114, v133);
        v115 = v145[0];
        if (v116)
        {
          goto LABEL_116;
        }

        goto LABEL_119;
      }

LABEL_97:
      FigCaptionRendererNodeProtocolGetProtocolID();
      v104 = CMBaseObjectGetProtocolVTable();
      if (v104)
      {
        v105 = *(v104 + 16);
        if (v105)
        {
          v106 = *(v105 + 128);
          if (v106)
          {
            v106(ValueAtIndex, v93, v99);
          }
        }
      }

      FigCaptionRendererNodeProtocolGetProtocolID();
      v107 = CMBaseObjectGetProtocolVTable();
      if (v107)
      {
        v108 = *(v107 + 16);
        if (v108)
        {
          v109 = *(v108 + 232);
          if (v109)
          {
            v109(ValueAtIndex, 1);
          }
        }
      }

      v92 = v99 + *(&v143 + 1);
      --v91;
    }

    while (v91 > 1);
  }

  FigCaptionRendererLayoutDecouple_ApplyDecouplingAndSafeRegion(a1, a2);
  return 0;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 296);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_Compose(const void *a1, const __CFDictionary **a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 144) == 1)
  {
    v5 = a2[37];
    if (v5)
    {
      Value = CFDictionaryGetValue(v5, a1);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable)
      {
        v8 = *(ProtocolVTable + 16);
        if (v8)
        {
          v9 = *(v8 + 120);
          if (v9)
          {
            v9(Value, 0);
          }
        }
      }
    }

    Mutable = 0;
    v11 = 0;
  }

  else
  {
    v12 = DerivedStorage;
    v57 = 0;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v13 = CMBaseObjectGetProtocolVTable();
    if (v13)
    {
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = *(v14 + 248);
        if (v15)
        {
          v15(a1, &v57 + 1);
          if (HIBYTE(v57))
          {
            FigCaptionRendererNodeProtocolGetProtocolID();
            v16 = CMBaseObjectGetProtocolVTable();
            if (v16)
            {
              v17 = *(v16 + 16);
              if (v17)
              {
                v18 = *(v17 + 296);
                if (v18)
                {
                  v18(a1, a2);
                }
              }
            }
          }
        }
      }
    }

    FigCaptionRendererNodeProtocolGetProtocolID();
    v19 = CMBaseObjectGetProtocolVTable();
    if (v19)
    {
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = *(v20 + 240);
        if (v21)
        {
          v21(a1, &v57);
        }
      }
    }

    if (v57)
    {
      FigCaptionRendererNodeProtocolGetProtocolID();
      v22 = CMBaseObjectGetProtocolVTable();
      if (v22)
      {
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = *(v23 + 288);
          if (v24)
          {
            v24(a1, a2);
          }
        }
      }
    }

    FigCaptionRendererNodeProtocolGetProtocolID();
    v25 = CMBaseObjectGetProtocolVTable();
    if (v25)
    {
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = *(v26 + 280);
        if (v27)
        {
          v27(a1, a2);
        }
      }
    }

    v28 = *v12;
    FigCaptionRendererNodeProtocolGetProtocolID();
    v29 = CMBaseObjectGetProtocolVTable();
    if (v29 && (v30 = *(v29 + 16)) != 0)
    {
      v31 = *(v30 + 304);
      if (v31)
      {
        v11 = v31(v28, a2);
      }

      else
      {
        v11 = 4294954514;
      }
    }

    else
    {
      v11 = 4294954508;
    }

    if (!*(v12 + 145))
    {
      goto LABEL_60;
    }

    if (a2[37])
    {
      v32 = *(MEMORY[0x1E695F050] + 16);
      v56.origin = *MEMORY[0x1E695F050];
      v56.size = v32;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v33 = CMBaseObjectGetProtocolVTable();
      if (v33)
      {
        v34 = *(v33 + 16);
        if (v34)
        {
          v35 = *(v34 + 104);
          if (v35)
          {
            v35(a1, &v56);
          }
        }
      }

      v36 = CFDictionaryGetValue(a2[37], a1);
      FigCaptionRendererOutputNodeProtocolGetProtocolID();
      v37 = CMBaseObjectGetProtocolVTable();
      if (v37)
      {
        v38 = *(v37 + 16);
        if (v38)
        {
          v39 = *(v38 + 104);
          if (v39)
          {
            v39(v36, 1);
          }
        }
      }
    }

    if (a2[40])
    {
      Mutable = CGPathCreateMutable();
      theArray = 0;
      FigCaptionRendererNodeProtocolGetProtocolID();
      v40 = CMBaseObjectGetProtocolVTable();
      if (v40)
      {
        v41 = *(v40 + 16);
        if (v41)
        {
          v42 = *(v41 + 24);
          if (v42)
          {
            v42(a1, &theArray);
            if (theArray)
            {
              Count = CFArrayGetCount(theArray);
              if (Count >= 1)
              {
                v44 = Count;
                v45 = 0;
                v53 = *(MEMORY[0x1E695F058] + 16);
                v54 = *MEMORY[0x1E695F058];
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(theArray, v45);
                  v56.origin = v54;
                  v56.size = v53;
                  FigCaptionRendererNodeProtocolGetProtocolID();
                  v47 = CMBaseObjectGetProtocolVTable();
                  if (v47)
                  {
                    v48 = *(v47 + 16);
                    if (v48)
                    {
                      v49 = *(v48 + 104);
                      if (v49)
                      {
                        v49(ValueAtIndex, &v56);
                      }
                    }
                  }

                  CGPathAddRect(Mutable, 0, v56);
                  ++v45;
                }

                while (v44 != v45);
              }

              CGContextAddPath(a2[40], Mutable);
              v50 = a2[41];
              if (v50)
              {
                CGContextAddPath(v50, Mutable);
              }

              CGContextClip(a2[40]);
              v51 = a2[41];
              if (v51)
              {
                CGContextClip(v51);
              }
            }
          }
        }
      }
    }

    else
    {
LABEL_60:
      Mutable = 0;
    }
  }

  CGPathRelease(Mutable);
  return v11;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    v5 = *(DerivedStorage + 8);
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    v9 = *(a2 + 32);
    v4(v8, v5);
  }

  return 0;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 320);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_RemoveAllActions()
{
  v0 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v2 = *(ProtocolVTable + 16);
  if (!v2)
  {
    return 4294954508;
  }

  v3 = *(v2 + 328);
  if (!v3)
  {
    return 4294954514;
  }

  return v3(v0);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 336);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 344);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_SelectAt(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 352);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a1;
  v10.n128_f64[0] = a2;

  return v12(v7, a4, v9, v10);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_UnselectAt(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 360);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a1;
  v10.n128_f64[0] = a2;

  return v12(v7, a4, v9, v10);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 368);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 376);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 384);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

__CFString *FigCaptionRendererTTMLRegion_FigCaptionRendererRegionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererTTMLRegion <FigCaptionRendererRegionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererRegionProtocol_SetRegionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererRegionProtocol_SetRegionAnchor(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = a1;
  *(DerivedStorage + 48) = a2;
  return 0;
}

uint64_t FigCaptionRendererTTMLRegion_FigCaptionRendererRegionProtocol_SetViewportAnchor(double a1, double a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 56) = a1;
  *(DerivedStorage + 64) = a2;
  return 0;
}

uint64_t RegisterFigCaptionRendererTTMLRegionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t RegisterFigVideoCompositionProcessorType()
{
  result = _CFRuntimeRegisterClass();
  sFigVideoCompositionProcessorTypeID = result;
  return result;
}

uint64_t FigVideoCompositionProcessorCreateWithImageQueue(const __CFAllocator *a1, unsigned int a2, const void *a3, CMTime *a4, unsigned int a5, void *a6, __int128 *a7, __int128 *a8, const void *a9, uint64_t *a10)
{
  values = a6;
  v17 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  v24 = *a4;
  v22 = *a7;
  v23 = *(a7 + 2);
  v20 = *a8;
  v21 = *(a8 + 2);
  v18 = FigVideoCompositionProcessorCreateWithImageQueueArray(a1, a2, a3, &v24, a5, v17, 0, &v22, &v20, a9, a10);
  if (v17)
  {
    CFRelease(v17);
  }

  return v18;
}

void videoprocessor_processUntilHighWaterMet(uint64_t a1)
{
  v114 = *MEMORY[0x1E69E9840];
  memset(v96, 0, sizeof(v96));
  v95 = 0u;
  memset(v94, 0, sizeof(v94));
  FigVCPTimingCopyProcessingState(*(a1 + 96), v94);
  FigSimpleMutexLock();
  if (!*(a1 + 160))
  {
    FigSimpleMutexUnlock();
    goto LABEL_222;
  }

  v105 = 0;
  v106 = 0;
  v103 = 0;
  cf = 0;
  v102 = 0;
  v2 = *(a1 + 96);
  v81 = FigVCPTimingUsesTimebase(v2);
  v82 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 88));
  v86 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
  v3 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
  v4 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 40));
  timebase = FigVCPTimingCopyTimebase(v2);
  v5 = *(a1 + 2256);
  v6 = *(a1 + 2257);
  Count = FigVCPSourceArrayGetCount(v3);
  v8 = malloc_type_calloc(Count, 8uLL, 0x2004093837F09uLL);
  if (!v8)
  {
    videoprocessor_processUntilHighWaterMet_cold_4(time1);
    SInt32 = 0;
    v16 = 0;
    Mutable = 0;
    v87 = 0;
    v10 = 0;
    v93 = 0;
    CanAccomodateFrame = *time1;
    goto LABEL_195;
  }

  v88 = v8;
  v93 = malloc_type_calloc(Count, 4uLL, 0x100004052888210uLL);
  if (!v93)
  {
    videoprocessor_processUntilHighWaterMet_cold_3(time1);
    SInt32 = 0;
    v16 = 0;
    Mutable = 0;
    v87 = 0;
    v10 = 0;
    CanAccomodateFrame = *time1;
    goto LABEL_183;
  }

  v83 = v2;
  v9 = FigVCPSourceArrayGetCount(v4);
  v10 = malloc_type_calloc(v9, 8uLL, 0x2004093837F09uLL);
  v80 = v9;
  if (!v10)
  {
    videoprocessor_processUntilHighWaterMet_cold_2(time1);
LABEL_229:
    SInt32 = 0;
    v16 = 0;
    Mutable = 0;
    v87 = 0;
    CanAccomodateFrame = *time1;
    goto LABEL_183;
  }

  v11 = malloc_type_calloc(v9, 4uLL, 0x100004052888210uLL);
  if (!v11)
  {
    videoprocessor_processUntilHighWaterMet_cold_1(time1);
    goto LABEL_229;
  }

  v87 = v11;
  if (BYTE14(v96[1]))
  {
    SourceTrackIDForFrameTiming = FigVCPTimingGetSourceTrackIDForFrameTiming(v2);
    FigVCPSourceArrayGetSourceWithTrackID(v3, SourceTrackIDForFrameTiming);
    v13 = FigVCPProcessingStateSetCurrentTimeWithSourceFrameTiming();
    if (v13)
    {
      CanAccomodateFrame = v13;
      SInt32 = 0;
      v16 = 0;
      Mutable = 0;
      goto LABEL_183;
    }
  }

  if (!*(a1 + 160))
  {
    SInt32 = 0;
    v16 = 0;
    Mutable = 0;
    CanAccomodateFrame = 0;
    goto LABEL_183;
  }

  v89 = 0;
  Mutable = 0;
  v79 = *(MEMORY[0x1E6960C70] + 12);
  v78 = *(MEMORY[0x1E6960C70] + 16);
  allocator = *MEMORY[0x1E695E480];
  v92 = (v5 | v6) != 0;
  v77 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v103)
    {
      CFRelease(v103);
      v103 = 0;
    }

    if (v102)
    {
      CFRelease(v102);
      v102 = 0;
    }

    if (BYTE14(v96[1]))
    {
LABEL_176:
      SInt32 = 0;
      CanAccomodateFrame = 0;
      goto LABEL_182;
    }

    HasReachedTheEnd = FigVCPProcessingStateHasReachedTheEnd(v94);
    if (HasReachedTheEnd)
    {
      if (v81)
      {
        goto LABEL_179;
      }

      if (FigVCPCompositorHostIsAcceptingRequest(*(a1 + 104)))
      {
        FigVCPCompositorHostStopAcceptingRequest(*(a1 + 104));
        videoprocessor_setUpcomingImageInfo(a1);
      }

      if (FigVCPSourceArrayNoMoreImagesOnAnySource(v3) || (~LODWORD(v96[1]) & 5) == 0 || (v96[1] & 9) == 9)
      {
LABEL_179:
        SInt32 = 0;
        CanAccomodateFrame = 0;
        *(a1 + 160) = 0;
        goto LABEL_182;
      }
    }

    if (*(a1 + 20))
    {
      updated = videoprocessor_updateCoreAnimationThrottling(a1, *(a1 + 20));
      if (updated)
      {
        goto LABEL_180;
      }
    }

    if (v95)
    {
      v100 = 0;
      v101 = 0uLL;
      FigVCPTimingGetOutputFrameDuration(v83, &v100);
      v99 = *(v96 + 4);
      v17 = v100;
      v18 = v101;
      v110 = *(&v101 + 4);
      v111 = HIDWORD(v101);
      Rate = CMTimebaseGetRate(timebase);
      memset(&v109, 0, sizeof(v109));
      CMTimebaseGetTime(&v109, timebase);
      v112 = *MEMORY[0x1E6960C70];
      timescale = *(MEMORY[0x1E6960C70] + 8);
      if (Rate <= 0.0 || (*time1 = v109, time2 = v99, CMTimeCompare(time1, &time2) < 1))
      {
        v21 = v18;
        epoch = v78;
        flags = v79;
        if (Rate >= 0.0 || (*time1 = v109, time2 = v99, epoch = v78, flags = v79, (CMTimeCompare(time1, &time2) & 0x80000000) == 0))
        {
LABEL_34:
          if (flags)
          {
            *(v96 + 4) = v112;
            HIDWORD(v96[0]) = timescale;
            LODWORD(v96[1]) = flags;
            *(&v96[1] + 4) = epoch;
          }

          goto LABEL_36;
        }

        *time1 = v109;
        CMTimeConvertScale(&time2, time1, v21, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
        flags = time2.flags;
        timescale = time2.timescale;
        v112 = time2.value + (time2.value % v17 + v17) / v17 * v17 - (time2.value % v17 + v17);
        epoch = time2.epoch;
        *time1 = v99;
        Seconds = CMTimeGetSeconds(time1);
        time2 = v99;
        rhs.value = v112;
        rhs.timescale = timescale;
        rhs.flags = flags;
        rhs.epoch = epoch;
      }

      else
      {
        *time1 = v109;
        CMTimeConvertScale(&time2, time1, v18, kCMTimeRoundingMethod_RoundTowardPositiveInfinity);
        flags = time2.flags;
        timescale = time2.timescale;
        v112 = ((v17 - time2.value) % v17 + v17) % v17 + time2.value;
        v21 = v18;
        epoch = time2.epoch;
        *time1 = v99;
        Seconds = CMTimeGetSeconds(time1);
        time2.value = v112;
        time2.timescale = timescale;
        time2.flags = flags;
        time2.epoch = epoch;
        rhs = v99;
      }

      CMTimeSubtract(time1, &time2, &rhs);
      v24 = CMTimeGetSeconds(time1);
      *time1 = v17;
      *&time1[8] = v21;
      *&time1[12] = v110;
      *&time1[20] = v111;
      v25 = CMTimeGetSeconds(time1);
      FigVCPTallyUpdateSkips((a1 + 240), Seconds, v24, v25);
      goto LABEL_34;
    }

LABEL_36:
    if (!HasReachedTheEnd)
    {
      LOBYTE(rhs.value) = 0;
      memset(&v109, 0, sizeof(v109));
      time2 = *(v96 + 4);
      *time1 = *&v94[24];
      *&time1[16] = *&v94[40];
      v98 = *&v94[56];
      FigVCPGetFoldedTime(&time2, time1, &v109);
      *time1 = v109;
      v43 = FigVCPInstructionSourceCopyInstructionAtTime(v82, time1, &rhs, &cf);
      if (v43 == -12301)
      {
        if (BYTE12(v96[1]))
        {
          videoprocessor_sendSeekCompleteNotification();
          CanAccomodateFrame = 0;
          BYTE12(v96[1]) = 0;
        }

        else
        {
          CanAccomodateFrame = 0;
        }

LABEL_178:
        v16 = v89;
        SInt32 = 0;
        goto LABEL_183;
      }

      CanAccomodateFrame = v43;
      if (v43)
      {
        goto LABEL_178;
      }

      if (LOBYTE(rhs.value))
      {
        HIBYTE(v96[1]) = 1;
        *(a1 + 200) = 0;
      }
    }

    if (FigVCPOutputWasJustFlushed())
    {
      HIBYTE(v96[1]) = 1;
    }

    if (cf)
    {
      memset(&v109, 0, sizeof(v109));
      time2 = *(v96 + 4);
      *time1 = *&v94[24];
      *&time1[16] = *&v94[40];
      v98 = *&v94[56];
      FigVCPGetFoldedTime(&time2, time1, &v109);
      *time1 = v109;
      v26 = FigVideoCompositionInstructionCopyRequiredTrackIDArrayForTime(allocator, cf, time1, &v103);
      if (v103)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 0;
      }

      if (!v27 && v103)
      {
        CFRelease(v103);
        v103 = 0;
      }

      *time1 = v109;
      v28 = FigVideoCompositionInstructionCopyRequiredSampleDataTrackIDArrayForTime(allocator, cf, time1, &v102);
      if (v102)
      {
        v29 = v28 == 0;
      }

      else
      {
        v29 = 0;
      }

      if (!v29 && v102)
      {
        CFRelease(v102);
        v102 = 0;
      }
    }

    if (FigVCPSourceArrayGetCount(v3) >= 1)
    {
      v30 = 0;
      v31 = 1;
      do
      {
        SourceAtIndex = FigVCPSourceArrayGetSourceAtIndex(v3, v30);
        LOBYTE(v109.value) = 0;
        v33 = v103;
        TrackID = FigVCPSourceGetTrackID();
        if (videoprocessor_isTrackRequired(v33, TrackID))
        {
          LOBYTE(time2.value) = 0;
          *time1 = *(v96 + 4);
          *&time1[16] = *(&v96[1] + 4);
          updated = FigVCPSourceCheckSampleAvailability(SourceAtIndex, *&v94[76], BYTE2(v95), time1, &v109, &time2);
          if (updated)
          {
            goto LABEL_180;
          }

          if (!LOBYTE(time2.value))
          {
            v31 = 0;
          }

          if (LOBYTE(v109.value))
          {
            *time1 = *(v96 + 4);
            *&time1[16] = *(&v96[1] + 4);
            updated = FigVCPSourceSetCurrentTime(SourceAtIndex, *&v94[76], time1);
            if (updated)
            {
              goto LABEL_180;
            }
          }
        }

        ++v30;
      }

      while (v30 < FigVCPSourceArrayGetCount(v3));
      if (!v31)
      {
        goto LABEL_176;
      }
    }

    if (FigVCPSourceArrayGetCount(v4) >= 1)
    {
      v36 = 0;
      v37 = 1;
      do
      {
        v38 = FigVCPSourceArrayGetSourceAtIndex(v4, v36);
        LOBYTE(v109.value) = 0;
        v39 = v102;
        v40 = FigVCPSourceGetTrackID();
        if (v39 && videoprocessor_isTrackRequired(v39, v40))
        {
          LOBYTE(time2.value) = 0;
          *time1 = *(v96 + 4);
          *&time1[16] = *(&v96[1] + 4);
          updated = FigVCPSourceCheckSampleAvailability(v38, *&v94[76], BYTE2(v95), time1, &v109, &time2);
          if (updated)
          {
            goto LABEL_180;
          }

          if (!LOBYTE(time2.value))
          {
            v37 = 0;
          }

          if (LOBYTE(v109.value))
          {
            *time1 = *(v96 + 4);
            *&time1[16] = *(&v96[1] + 4);
            updated = FigVCPSourceSetCurrentTime(v38, *&v94[76], time1);
            if (updated)
            {
              goto LABEL_180;
            }
          }
        }

        ++v36;
      }

      while (v36 < FigVCPSourceArrayGetCount(v4));
      if (!v37)
      {
        goto LABEL_176;
      }
    }

    if (!*(a1 + 200))
    {
      time2.value = 0;
      updated = FigVideoCompositionInstructionGetLayerCountExcludingBackground(cf, &time2.value);
      if (updated)
      {
        goto LABEL_180;
      }

      value = time2.value;
      *time1 = 0;
      v109.value = 0;
      if (v3)
      {
        v42 = FigVCPSourceArrayGetCount(v3) > 1;
      }

      else
      {
        v42 = 0;
      }

      if (!FigVCPCompositorHostDoesRequireDifferentSourcePixelBufferAttributesForMultiSource(*(a1 + 104)) || ((v44 = value > 1 || v42, v45 = *(a1 + 104), !v44) ? (v47 = CFGetAllocator(a1), v46 = FigVCPCompositorHostCopyProperty(v45, @"VideoCompositionProcessor_SourcePixelBufferAttributes", v47, time1)) : (v46 = FigVCPCompositorHostCopySourcePixelBufferAttributesForMultiSource(*(a1 + 104), time1)), v46))
      {
LABEL_96:
        if (*time1)
        {
          CFRelease(*time1);
        }
      }

      else if (*time1)
      {
        FigVCPPreprocessParametersSetProperty();
        if (FigVCPSourceArrayGetCount(v3) >= 1)
        {
          v48 = 0;
          do
          {
            if (v109.value)
            {
              CFRelease(v109.value);
              v109.value = 0;
            }

            if (FigVCPPreprocessParametersCreateCopy(allocator, *(a1 + 24), &v109.value))
            {
              break;
            }

            v49 = FigVCPSourceArrayGetSourceAtIndex(v3, v48);
            FigVCPSourceSetPreprocessParameters(v49, v109.value);
            if (v109.value)
            {
              CFRelease(v109.value);
              v109.value = 0;
            }

            ++v48;
          }

          while (v48 < FigVCPSourceArrayGetCount(v3));
        }

        goto LABEL_96;
      }

      if (v109.value)
      {
        CFRelease(v109.value);
      }

      *(a1 + 200) = 1;
    }

    if (v92)
    {
      if (v106)
      {
        CFRelease(v106);
        v106 = 0;
      }

      if (v105)
      {
        CFRelease(v105);
        v105 = 0;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v89)
      {
        CFRelease(v89);
      }

      v50 = MEMORY[0x1E695E9D8];
      v51 = MEMORY[0x1E695E9E8];
      Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v89 = CFDictionaryCreateMutable(allocator, 0, v50, v51);
    }

    if (FigVCPSourceArrayGetCount(v3) >= 1)
    {
      break;
    }

LABEL_127:
    if (FigVCPSourceArrayGetCount(v4) >= 1)
    {
      v58 = 0;
      do
      {
        v59 = FigVCPSourceArrayGetSourceAtIndex(v4, v58);
        v60 = v10[v58];
        if (v60)
        {
          CFRelease(v60);
          v10[v58] = 0;
        }

        v87[v58] = FigVCPSourceGetTrackID();
        v61 = v102;
        v62 = FigVCPSourceGetTrackID();
        if (v61 && videoprocessor_isTrackRequired(v61, v62))
        {
          *time1 = 0;
          if (v92)
          {
            FigVCPSourceGetTrackID();
            SInt32 = FigCFNumberCreateSInt32();
            v57 = FigVCPSourceCopyTimedSampleBuffers(v59, *&v94[76], &v105);
            if (v57)
            {
              goto LABEL_223;
            }

            FigCFDictionarySetValue();
            if (SInt32)
            {
              CFRelease(SInt32);
            }

            if (v105)
            {
              CFRelease(v105);
              v105 = 0;
            }
          }

          else
          {
            updated = FigVCPSourceCopySampleBuffer(v59, time1);
            if (updated)
            {
              goto LABEL_180;
            }

            v10[v58] = *time1;
          }
        }

        ++v58;
      }

      while (v58 < FigVCPSourceArrayGetCount(v4));
    }

    v63 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 144));
    if (v63)
    {
      CFRelease(v63);
      HIBYTE(v96[1]) = 1;
    }

    v64 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
    PendingFramesCount = FigVCPCompositorHostGetPendingFramesCount();
    CanAccomodateFrame = FigVCPOutputAllOutputsCanAccomodateFrame(v64, PendingFramesCount);
    if (v64)
    {
      CFRelease(v64);
    }

    if (!CanAccomodateFrame)
    {
      goto LABEL_181;
    }

    if (!HasReachedTheEnd)
    {
      if (HIBYTE(v96[1]) || FigVCPTimingRepeatIdenticalFrames(v83) || v77 == CFDictionaryGetValue(cf, @"ContainsTweening"))
      {
        v66 = 0;
      }

      else
      {
        if (BYTE12(v96[1]))
        {
          videoprocessor_sendSeekCompleteNotification();
          BYTE12(v96[1]) = 0;
        }

        if (v81 && FigVCPSourceArrayNoMoreImagesOnAnySource(*(a1 + 32)) && videoprocessor_willCompositionInstructionContinueForever(cf, *&v94[76]))
        {
          goto LABEL_176;
        }

        ++*(a1 + 2252);
        v66 = 1;
      }

      v67 = *(a1 + 104);
      v109 = *(v96 + 4);
      time2 = *v94;
      *time1 = *&v94[24];
      *&time1[16] = *&v94[40];
      v98 = *&v94[56];
      updated = FigVCPCompositorHostAnticipateRendering(v67, &v109, &time2);
      if (updated)
      {
        goto LABEL_180;
      }

      if ((v66 & 1) == 0)
      {
        HIBYTE(v96[1]) = 0;
        v68 = *(a1 + 104);
        v69 = cf;
        if (v92)
        {
          time2 = *(v96 + 4);
          *time1 = *&v94[24];
          *&time1[16] = *&v94[40];
          v98 = *&v94[56];
          FigVCPGetFoldedTime(&time2, time1, &v109);
          *time1 = *(v96 + 4);
          *&time1[16] = *(&v96[1] + 4);
          updated = FigVCPCompositorHostPrepareToComposeFromWindow(v68, v69, time1, &v109.value, SBYTE13(v96[1]), *&v94[72], *&v94[76], Mutable, v89);
          if (updated)
          {
            goto LABEL_180;
          }
        }

        else
        {
          time2 = *(v96 + 4);
          *time1 = *&v94[24];
          *&time1[16] = *&v94[40];
          v98 = *&v94[56];
          FigVCPGetFoldedTime(&time2, time1, &v109);
          v70 = BYTE13(v96[1]);
          v71 = *&v94[72];
          v72 = FigVCPSourceArrayGetCount(v3);
          v73 = FigVCPSourceArrayGetCount(v4);
          *time1 = *(v96 + 4);
          *&time1[16] = *(&v96[1] + 4);
          updated = FigVCPCompositorHostPrepareToCompose(v68, v69, time1, &v109.value, v70, v71, SHIDWORD(v71), v72, v93, v88, v73, v87, v10);
          if (updated)
          {
            goto LABEL_180;
          }
        }

        updated = videoprocessor_setUpcomingImageInfo(a1);
        if (updated)
        {
          goto LABEL_180;
        }

        updated = FigVCPCompositorHostComposeFrameAsync(*(a1 + 104));
        if (updated)
        {
          goto LABEL_180;
        }
      }

      updated = FigVCPProcessingStateAdvanceCurrentTime(v94, v3, v83);
      if (updated)
      {
LABEL_180:
        CanAccomodateFrame = updated;
LABEL_181:
        SInt32 = 0;
        goto LABEL_182;
      }

      if (!FigVCPTimingIsProcessingStateFresh(v83, v94))
      {
        goto LABEL_176;
      }
    }

    if (!*(a1 + 160))
    {
      goto LABEL_176;
    }
  }

  v52 = 0;
  while (2)
  {
    v53 = FigVCPSourceArrayGetSourceAtIndex(v3, v52);
    v54 = *(v88 + 8 * v52);
    if (v54)
    {
      CFRelease(v54);
      *(v88 + 8 * v52) = 0;
    }

    v93[v52] = FigVCPSourceGetTrackID();
    v55 = v103;
    v56 = FigVCPSourceGetTrackID();
    if (!videoprocessor_isTrackRequired(v55, v56))
    {
      goto LABEL_126;
    }

    LOBYTE(v109.value) = 0;
    *time1 = 0;
    if (!v92)
    {
      updated = FigVCPSourceCopyConformedImage(v53, &v109, time1);
      if (updated)
      {
        goto LABEL_180;
      }

      *(v88 + 8 * v52) = *time1;
LABEL_124:
      if (LOBYTE(v109.value))
      {
        HIBYTE(v96[1]) = 1;
      }

LABEL_126:
      if (++v52 >= FigVCPSourceArrayGetCount(v3))
      {
        goto LABEL_127;
      }

      continue;
    }

    break;
  }

  FigVCPSourceGetTrackID();
  SInt32 = FigCFNumberCreateSInt32();
  v57 = FigVCPSourceCopyConformedTimedImages(v53, *&v94[76], &v109, &v106);
  if (!v57)
  {
    FigCFDictionarySetValue();
    if (SInt32)
    {
      CFRelease(SInt32);
    }

    if (v106)
    {
      CFRelease(v106);
      v106 = 0;
    }

    goto LABEL_124;
  }

LABEL_223:
  CanAccomodateFrame = v57;
LABEL_182:
  v16 = v89;
LABEL_183:
  if (Count >= 1)
  {
    v74 = v88;
    do
    {
      if (*v74)
      {
        CFRelease(*v74);
      }

      ++v74;
      --Count;
    }

    while (Count);
  }

  if (v10 && v80 >= 1)
  {
    for (i = 0; i != v80; ++i)
    {
      v76 = v10[i];
      if (v76)
      {
        CFRelease(v76);
      }
    }
  }

  v8 = v88;
LABEL_195:
  if (timebase)
  {
    CFRelease(timebase);
  }

  if (v82)
  {
    CFRelease(v82);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v86)
  {
    CFRelease(v86);
  }

  if (v103)
  {
    CFRelease(v103);
  }

  if (v102)
  {
    CFRelease(v102);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v106)
  {
    CFRelease(v106);
  }

  if (v105)
  {
    CFRelease(v105);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (SInt32)
  {
    CFRelease(SInt32);
  }

  free(v93);
  free(v8);
  free(v87);
  free(v10);
  FigSimpleMutexUnlock();
  if (CanAccomodateFrame)
  {
    videoprocessor_reportProcessingError(a1);
  }

  else
  {
LABEL_222:
    FigVCPTimingSaveProcessingState(*(a1 + 96), v94);
  }
}

void videoprocessor_OnLowOutputQueueLevel(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 160))
  {
    v2 = *(a2 + 128);
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v3)
    {

      v3(v2);
    }
  }
}

void videoprocessor_frameCompleteCallback(__n128 *a1, uint64_t a2)
{
  v29 = 0;
  cf = 0;
  v27 = *MEMORY[0x1E6960C70];
  v28 = *(MEMORY[0x1E6960C70] + 16);
  CompositionStartTime = FigVCPPendingFrameGetCompositionStartTime(a1);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  CompletionStatus = FigVCPPendingFrameGetCompletionStatus(a1);
  v7 = 0;
  if (CompletionStatus == -12508)
  {
    goto LABEL_2;
  }

  v9 = 0;
  ComposedFrame = 0;
  if (CompletionStatus)
  {
    goto LABEL_62;
  }

  FigVCPPendingFrameGetFrameTime(a1, &v27);
  ComposedFrame = FigVCPPendingFrameGetComposedFrame(a1);
  ComposedTaggedBufferGroup = FigVCPPendingFrameGetComposedTaggedBufferGroup(a1);
  if (!(ComposedFrame | ComposedTaggedBufferGroup))
  {
    v24 = 1831;
LABEL_66:
    v7 = 0;
    if (videoprocessor_frameCompleteCallback_cold_1(v24, &v31))
    {
LABEL_2:
      ComposedFrame = 0;
      goto LABEL_55;
    }

    v9 = 0;
    ComposedFrame = 0;
    goto LABEL_62;
  }

  v11 = ComposedTaggedBufferGroup;
  if (ComposedFrame && ComposedTaggedBufferGroup)
  {
    v24 = 1832;
    goto LABEL_66;
  }

  FigVCPTallyUpdateTimingInfo(a2 + 208, CompositionStartTime, UpTimeNanoseconds);
  if (ComposedFrame)
  {
    if (FigVCPPendingFrameSkipCoreAnimationPostProcessing(a1))
    {
      v9 = videoprocessor_loadAndRetainAtomically(a2, (a2 + 120));
      v12 = 0;
LABEL_28:
      if (FigVCPOutputConformerCopyConformedPixelBuffer(*(a2 + 112), ComposedFrame, &cf))
      {
LABEL_69:
        v7 = 0;
        ComposedFrame = v12;
        goto LABEL_62;
      }

      v17 = cf;
      FigVCPPendingFrameSetRenderedFrame(a1, cf);
      if (FigVCPPendingFrameShouldGenerateHDRStats(a1))
      {
        ComposedFrame = v12;
LABEL_31:
        if (FigVCPPendingFrameIsImmediateFrame(a1))
        {
          FigVCPCompositorHostDropEarlierPendingFrames(*(a2 + 104), a1);
        }

        if (!FigVCPOutputCalculateAndStoreHDRStats(v9, a1))
        {
          v7 = 0;
          while (1)
          {
            if (v7)
            {
              CFRelease(v7);
            }

            v18 = FigVCPCompositorHostRemoveRetainedPendingFrameForOutput(*(a2 + 104));
            v7 = v18;
            if (!v18)
            {
              break;
            }

            if (FigVCPPendingFrameGenerateHDRMetadataAndAttachToRenderedFrame(v18))
            {
              goto LABEL_62;
            }

            RenderedFrame = FigVCPPendingFrameGetRenderedFrame(v7);
            if (RenderedFrame)
            {
              v20 = RenderedFrame;
              FigVCPPendingFrameGetFrameTime(v7, &v31);
              IsImmediateFrame = FigVCPPendingFrameIsImmediateFrame(v7);
              if (FigVCPOutputEnqueueImage(v9, v20, &v31, IsImmediateFrame))
              {
                goto LABEL_62;
              }
            }

            FigVCPCompositorHostFinishOutputFrame(*(a2 + 104));
            if (FigVCPPendingFrameIsImmediateFrame(v7))
            {
              FigVCPPendingFrameGetOrder(v7);
              videoprocessor_sendSeekCompleteNotification();
            }
          }

LABEL_51:
          if (!v9)
          {
            goto LABEL_53;
          }

          goto LABEL_52;
        }

        goto LABEL_68;
      }

      if (v17)
      {
        v22 = FigVCPPendingFrameIsImmediateFrame(a1);
        v31 = v27;
        v32 = v28;
        if (!FigVCPOutputEnqueueImage(v9, v17, &v31, v22))
        {
          ComposedFrame = v12;
          goto LABEL_48;
        }

        goto LABEL_69;
      }

      ComposedFrame = v12;
LABEL_47:
      v23 = FigVCPPendingFrameIsImmediateFrame(a1);
      v31 = v27;
      v32 = v28;
      if (FigVCPOutputEnqueueTaggedBufferGroup(v9, v11, &v31, v23))
      {
LABEL_68:
        v7 = 0;
        goto LABEL_62;
      }

LABEL_48:
      FigVCPCompositorHostRemovePendingFrame(*(a2 + 104), a1);
      FigVCPPendingFrameSetRenderComplete();
      if (FigVCPPendingFrameIsImmediateFrame(a1))
      {
        FigVCPPendingFrameGetOrder(a1);
        videoprocessor_sendSeekCompleteNotification();
      }

      v7 = 0;
      goto LABEL_51;
    }

    v25 = v27;
    v26 = v28;
    v33 = 0;
    v34 = 0;
    v13 = videoprocessor_loadAndRetainAtomically(a2, (a2 + 144));
    if (v13)
    {
      v14 = FigVCPOutputConformerCopyProperty(*(a2 + 112), @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes", *MEMORY[0x1E695E480], &v34);
      if (v14)
      {
        v16 = v14;
        goto LABEL_19;
      }

      v31 = v25;
      v32 = v26;
      v15 = FigVCPCoreAnimationPostProcessorCopyPixelBufferAtTime(v13, &v31, ComposedFrame, v34, &v33);
      ComposedFrame = v33;
      if (v15)
      {
        v16 = v15;
        if (!v33)
        {
LABEL_22:
          if (v34)
          {
            CFRelease(v34);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          if (v16)
          {
            v7 = 0;
            v9 = 0;
            goto LABEL_62;
          }

          v9 = videoprocessor_loadAndRetainAtomically(a2, (a2 + 120));
          v12 = ComposedFrame;
          if (ComposedFrame)
          {
            goto LABEL_28;
          }

          goto LABEL_11;
        }

        CFRelease(v33);
LABEL_19:
        ComposedFrame = 0;
        goto LABEL_22;
      }
    }

    else
    {
      ComposedFrame = CFRetain(ComposedFrame);
    }

    v16 = 0;
    v33 = 0;
    goto LABEL_22;
  }

  v9 = videoprocessor_loadAndRetainAtomically(a2, (a2 + 120));
LABEL_11:
  if (!FigVCPOutputConformerCopyConformedTaggedBufferGroup(*(a2 + 112), v11, &v29))
  {
    v11 = v29;
    FigVCPPendingFrameSetRenderedTaggedBufferGroup(a1, v29);
    ComposedFrame = 0;
    if (FigVCPPendingFrameShouldGenerateHDRStats(a1))
    {
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  v7 = 0;
  ComposedFrame = 0;
LABEL_62:
  videoprocessor_reportProcessingError(a2);
  if (v9)
  {
LABEL_52:
    CFRelease(v9);
  }

LABEL_53:
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_55:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (ComposedFrame)
  {
    CFRelease(ComposedFrame);
  }
}

void videoprocessor_completePrerollCallback()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t videoprocessor_didReachEndOfOutputCallback(uint64_t a1)
{
  videoprocessor_setUpcomingImageInfo(a1);
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

CFTypeRef videoprocessor_loadAndRetainAtomically(uint64_t a1, CFTypeRef *a2)
{
  FigSimpleMutexLock();
  if (*a2)
  {
    v3 = CFRetain(*a2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v5 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
  if (!FigVCPIsValid())
  {
    FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_6(&time1);
    goto LABEL_16;
  }

  if ((a3->flags & 0x1D) != 1)
  {
    FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_1(&time1);
    goto LABEL_16;
  }

  time1 = *a3;
  v9 = *MEMORY[0x1E6960CC0];
  *&time2.value = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  time2.epoch = v6;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_5(&time1);
    goto LABEL_16;
  }

  if ((a2->flags & 0x1D) != 1)
  {
    FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_2(&time1);
    goto LABEL_16;
  }

  time1 = *a2;
  *&time2.value = v9;
  time2.epoch = v6;
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_4(&time1);
    goto LABEL_16;
  }

  time1 = *a3;
  time2 = *a2;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    FigVideoCompositionProcessorSetOutputDurationHighAndLowWaterLevels_cold_3(&time1);
LABEL_16:
    value_low = LODWORD(time1.value);
    if (!v5)
    {
      return value_low;
    }

    goto LABEL_8;
  }

  time1 = *a2;
  time2 = *a3;
  value_low = FigVCPOutputSetOutputDurationHighAndLowWaterLevels(v5, &time1, &time2);
  if (v5)
  {
LABEL_8:
    CFRelease(v5);
  }

  return value_low;
}

uint64_t videoprocessor_AvailableTimeRangeChanged(uint64_t a1, uint64_t a2)
{
  result = FigVCPSourceShouldTriggerWhenAvailabilityChanges();
  if (result)
  {
    if (*(a2 + 160))
    {
      v4 = *(a2 + 128);
      VTable = CMBaseObjectGetVTable();
      v6 = *(VTable + 16);
      result = VTable + 16;
      v7 = *(v6 + 16);
      if (v7)
      {

        return v7(v4);
      }
    }
  }

  return result;
}

uint64_t videoprocessor_releaseAssignAndRetainAtomically(uint64_t a1, const void **a2, const void *a3)
{
  FigSimpleMutexLock();
  v5 = *a2;
  *a2 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return FigSimpleMutexUnlock();
}

uint64_t videoprocessor_triggerProcessingByBufferQueue(uint64_t result)
{
  if (*(result + 160))
  {
    v1 = *(result + 128);
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 16);
    result = VTable + 16;
    v4 = *(v3 + 16);
    if (v4)
    {

      return v4(v1);
    }
  }

  return result;
}

uint64_t FigVideoCompositionProcessorSetHDRDisplayMetadataPolicy(uint64_t a1, const void *a2)
{
  if (FigVCPIsValid())
  {
    FigVCPOutputSetHDRDisplayMetadataPolicy(*(a1 + 120), a2);
    FigVCPCompositorHostSetHDRDisplayMetadataPolicy(*(a1 + 104));
    if (*(a1 + 160))
    {
      v4 = *(a1 + 128);
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v5)
      {
        v5(v4);
      }
    }

    return 0;
  }

  else
  {
    FigVideoCompositionProcessorSetHDRDisplayMetadataPolicy_cold_1(&v7);
    return v7;
  }
}

uint64_t FigVideoCompositionProcessorResetCompositionInstruction(uint64_t a1, int a2, int a3)
{
  if (!FigVCPIsValid())
  {
    FigVideoCompositionProcessorResetCompositionInstruction_cold_1(&v12);
    return v12;
  }

  v6 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 88));
  if (v6)
  {
    FigVCPInstructionSourceInvalidateCache();
  }

  if (a3)
  {
    videoprocessor_flushOutput(a1);
  }

  if (a2)
  {
    FrameTimeToCurrentTimebaseTime = FigVCPTimingResetNextFrameTimeToCurrentTimebaseTime(*(a1 + 96));
    if (FrameTimeToCurrentTimebaseTime)
    {
      v10 = FrameTimeToCurrentTimebaseTime;
      if (!v6)
      {
        return v10;
      }

      goto LABEL_12;
    }
  }

  *(a1 + 160) = 1;
  if (*(a1 + 160))
  {
    v8 = *(a1 + 128);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v9(v8);
    }
  }

  v10 = 0;
  if (v6)
  {
LABEL_12:
    CFRelease(v6);
  }

  return v10;
}

void videoprocessor_flushOutput(uint64_t a1)
{
  FigVCPCompositorHostCancelPendingFrames(*(a1 + 104));
  v2 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
  FigVCPOutputFlush(v2);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t FigVideoCompositionProcessorCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  if (!FigVCPIsValid())
  {
    FigVideoCompositionProcessorCopyProperty_cold_3(&valuePtr);
LABEL_28:
    v9 = LODWORD(valuePtr);
    goto LABEL_29;
  }

  if (!a4)
  {
    FigVideoCompositionProcessorCopyProperty_cold_2(&valuePtr);
    goto LABEL_28;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_SourcePixelBufferAttributes"))
  {
    PixelBufferAttributes = FigVCPPreprocessParametersGetPixelBufferAttributes(*(a1 + 24));
    if (!PixelBufferAttributes)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_CompositionYCbCrMatrix"))
  {
    PixelBufferAttributes = FigVCPPreprocessParametersGetYCbCrMatrix(*(a1 + 24));
    if (!PixelBufferAttributes)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_CompositionColorPrimaries"))
  {
    PixelBufferAttributes = FigVCPPreprocessParametersGetColorPrimaries(*(a1 + 24));
    if (!PixelBufferAttributes)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_CompositionTransferFunction"))
  {
    PixelBufferAttributes = FigVCPPreprocessParametersGetTransferFunction(*(a1 + 24));
    if (!PixelBufferAttributes)
    {
LABEL_15:
      cf = PixelBufferAttributes;
LABEL_16:
      v9 = 0;
      *a4 = cf;
      return v9;
    }

LABEL_14:
    PixelBufferAttributes = CFRetain(PixelBufferAttributes);
    goto LABEL_15;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_DestinationPixelBufferDesiredAttributes") || CFEqual(a2, @"VideoCompositionProcessor_DestinationPixelTransferProperties") || CFEqual(a2, @"VideoCompositionProcessor_DestinationPixelBufferDesiredYCbCrMatrix") || CFEqual(a2, @"VideoCompositionProcessor_DestinationPixelBufferDesiredColorPrimaries") || CFEqual(a2, @"VideoCompositionProcessor_PixelBufferPoolSharingID") || CFEqual(a2, @"VideoCompositionProcessor_DestinationPixelBufferDesiredTransferFunction"))
  {
    v11 = FigVCPOutputConformerCopyProperty(*(a1 + 112), a2, a3, &cf);
    if (!v11)
    {
      goto LABEL_16;
    }

LABEL_25:
    v9 = v11;
    goto LABEL_29;
  }

  if (CFEqual(a2, @"VideoCompositionProcessorProperty_Timebase"))
  {
    if (FigVCPTimingUsesTimebase(*(a1 + 96)))
    {
      PixelBufferAttributes = FigVCPTimingCopyTimebase(*(a1 + 96));
      goto LABEL_15;
    }

    FigVideoCompositionProcessorCopyProperty_cold_1(&valuePtr);
    goto LABEL_28;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_RenderScale"))
  {
    if (!FigVCPCompositorHostSupportsRenderScale(*(a1 + 104)))
    {
      valuePtr = FigVCPPreprocessParametersGetRenderScale(*(a1 + 24));
      PixelBufferAttributes = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
      goto LABEL_15;
    }

    v11 = FigVCPCompositorHostCopyProperty(*(a1 + 104), @"VideoCompositionProcessor_RenderScale", a3, &cf);
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_ThrottleForBackground"))
  {
    v12 = MEMORY[0x1E695E4C0];
    if (*(a1 + 20))
    {
      v12 = MEMORY[0x1E695E4D0];
    }

    PixelBufferAttributes = *v12;
    goto LABEL_14;
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_PerformanceDictionary"))
  {
    v13 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
    v14 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 144));
    v9 = FigVCPTallyCopyPerformanceDictionary(a1 + 208, v13, *(a1 + 104), *(a1 + 112), v14, &cf);
    if (v14)
    {
      CFRelease(v14);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (!v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = 4294954512;
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t FigVideoCompositionProcessorSetProperty(uint64_t a1, const void *a2, void *a3)
{
  if (!FigVCPIsValid())
  {
    FigVideoCompositionProcessorSetProperty_cold_10(&v14);
    return LODWORD(v14.start.value);
  }

  MEMORY[0x19A8D3660](&videoprocessor_getReadOnlyPropertyKeys_sReadOnlyPropertyKeysOnce, videoprocessor_initReadOnlyPropertyKeys);
  if (CFSetContainsValue(videoprocessor_readOnlyPropertyKeys, a2))
  {
    FigVideoCompositionProcessorSetProperty_cold_1(&v14);
    return LODWORD(v14.start.value);
  }

  MEMORY[0x19A8D3660](&videoprocessor_getStaticPropertyKeys_sStaticPropertyKeysOnce, videoprocessor_initStaticPropertyKeys);
  if (CFSetContainsValue(videoprocessor_staticPropertyKeys, a2) && (*(a1 + 160) || FigVCPCompositorHostGetPendingFramesCount()))
  {
    FigCFStringGetCStringPtrAndBufferToFree();
    return FigSignalErrorAtGM();
  }

  if (CFEqual(a2, @"VideoCompositionProcessorProperty_Timebase"))
  {
    if (FigVCPTimingUsesTimebase(*(a1 + 96)))
    {
      if (a3)
      {
        v7 = CFGetTypeID(a3);
        if (v7 == CMTimebaseGetTypeID())
        {
          FigSimpleMutexLock();
          v8 = FigVCPTimingSetTimebase(*(a1 + 96), a3);
          FigSimpleMutexUnlock();
          return v8;
        }
      }

      FigVideoCompositionProcessorSetProperty_cold_2(&v14);
    }

    else
    {
      FigVideoCompositionProcessorSetProperty_cold_3(&v14);
    }

    return LODWORD(v14.start.value);
  }

  if (CFEqual(a2, @"VideoCompositionProcessorProperty_LoopTimeRange"))
  {
    v9 = *(MEMORY[0x1E6960C98] + 16);
    *&v14.start.value = *MEMORY[0x1E6960C98];
    *&v14.start.epoch = v9;
    *&v14.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
    if (FigVCPTimingUsesTimebase(*(a1 + 96)))
    {
      if (!a3)
      {
LABEL_17:
        v11 = *(a1 + 96);
        valuePtr = v14;
        return FigVCPTimingSetLoopTimeRange(v11, &valuePtr);
      }

      v10 = CFGetTypeID(a3);
      if (v10 == CFDictionaryGetTypeID())
      {
        CMTimeRangeMakeFromDictionary(&v14, a3);
        goto LABEL_17;
      }

      FigVideoCompositionProcessorSetProperty_cold_4(&valuePtr);
    }

    else
    {
      FigVideoCompositionProcessorSetProperty_cold_5(&valuePtr);
    }

    return LODWORD(valuePtr.start.value);
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_RenderScale"))
  {
    if (a3 && (v12 = CFGetTypeID(a3), v12 == CFNumberGetTypeID()))
    {
      LODWORD(valuePtr.start.value) = 1065353216;
      CFNumberGetValue(a3, kCFNumberFloatType, &valuePtr);
      if (*&valuePtr.start.value <= 0.0)
      {
        FigVideoCompositionProcessorSetProperty_cold_7(&v14);
      }

      else
      {
        if (FigVCPTimingUsesTimebase(*(a1 + 96)) || *&valuePtr.start.value == 1.0)
        {
          if (FigVCPCompositorHostSupportsRenderScale(*(a1 + 104)))
          {
            return FigVCPCompositorHostSetProperty(*(a1 + 104), @"VideoCompositionProcessor_RenderScale", a3);
          }

          else
          {
            return FigVCPPreprocessParametersSetProperty();
          }
        }

        FigVideoCompositionProcessorSetProperty_cold_6(&v14);
      }
    }

    else
    {
      FigVideoCompositionProcessorSetProperty_cold_8(&v14);
    }

    return LODWORD(v14.start.value);
  }

  if (CFEqual(a2, @"VideoCompositionProcessor_ClientPID"))
  {

    return videoprocessor_setClientPIDProperty(a1, a3);
  }

  else if (CFEqual(a2, @"VideoCompositionProcessor_ThrottleForBackground"))
  {

    return videoprocessor_setThrottleForBackgroundProperty(a1, a3);
  }

  else if (CFEqual(a2, @"VideoCompositionProcessorProperty_FigImageQueueArray"))
  {

    return videoprocessor_updateOutputImageQueueArray(a1, a3);
  }

  else if (CFEqual(a2, @"VideoCompositionProcessor_HDRDisplayMetadataPolicy"))
  {
    if (FigIsDeviceCapableOfGeneratingStatisticsForHDR())
    {
      goto LABEL_44;
    }

    if (overrideHDRMetadataGenerationByDefaultsWrite_onceToken != -1)
    {
      FigVideoCompositionProcessorSetProperty_cold_9();
    }

    if (overrideHDRMetadataGenerationByDefaultsWrite_sOverrideHDRMetadataGeneration == 1)
    {
LABEL_44:

      return FigVideoCompositionProcessorSetHDRDisplayMetadataPolicy(a1, a3);
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return videoprocessor_propagatePropertyToSubcomponents(a1, a2, a3);
  }
}

uint64_t videoprocessor_setClientPIDProperty(uint64_t a1, uint64_t a2)
{
  FigBaseObject = FigActivitySchedulerGetFigBaseObject(*(a1 + 128));
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v6 = v5(FigBaseObject, @"ClientPID", a2);
  }

  else
  {
    v6 = 4294954514;
  }

  FigVCPCompositorHostSetProperty(*(a1 + 104), @"VideoCompositionProcessor_ClientPID", a2);
  return v6;
}

uint64_t videoprocessor_setThrottleForBackgroundProperty(uint64_t a1, const __CFBoolean *cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFBooleanGetTypeID()))
  {
    Value = CFBooleanGetValue(cf);
    if (*(a1 + 20) != Value)
    {
      *(a1 + 20) = Value;
      videoprocessor_updateCoreAnimationThrottling(a1, Value);
      if (*(a1 + 136) == 3)
      {
        FigVCPCompositorHostSetProperty(*(a1 + 104), @"VideoCompositionProcessor_ThrottleForBackground", cf);
      }
    }

    return 0;
  }

  else
  {
    videoprocessor_setThrottleForBackgroundProperty_cold_1(&v7);
    return v7;
  }
}

uint64_t videoprocessor_updateOutputImageQueueArray(CFTypeRef *a1, const __CFArray *a2)
{
  v17 = 0;
  v4 = videoprocessor_loadAndRetainAtomically(a1, a1 + 15);
  v16 = **&MEMORY[0x1E6960C70];
  v15 = v16;
  cf = 0;
  OutputDurationWaterLevels = FigVCPOutputGetOutputDurationWaterLevels(v4, &v16, &v15);
  if (!OutputDurationWaterLevels)
  {
    OutputDurationWaterLevels = FigVCPOutputCopyOutputTagCollectionArray(v4, &cf);
    if (!OutputDurationWaterLevels)
    {
      v6 = CFGetAllocator(a1);
      v13 = v16;
      v12 = v15;
      OutputDurationWaterLevels = FigVCPOutputCreate(v6, a2, cf, &v13, &v12, a1, &v17);
      if (!OutputDurationWaterLevels)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        if (v4 && (v7 = v17, HDRDisplayMetadataPolicy = FigVCPOutputGetHDRDisplayMetadataPolicy(v4), v9 = FigVCPOutputSetHDRDisplayMetadataPolicy(v7, HDRDisplayMetadataPolicy), v9))
        {
          v10 = v9;
        }

        else
        {
          FigVCPOutputInvalidate(v4);
          videoprocessor_releaseAssignAndRetainAtomically(a1, a1 + 15, v17);
          v10 = 0;
          if (!v4)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_7;
      }
    }
  }

  v10 = OutputDurationWaterLevels;
  if (v4)
  {
LABEL_7:
    CFRelease(v4);
  }

LABEL_8:
  if (v17)
  {
    CFRelease(v17);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t videoprocessor_propagatePropertyToSubcomponents(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = FigVCPPreprocessParametersSetProperty();
  v7 = v6;
  if (v6)
  {
    v8 = v6 == -12784;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = FigVCPCompositorHostSetProperty(*(a1 + 104), a2, a3);
    v10 = v9;
    if (v9)
    {
      v11 = v9 == -12784;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = FigVCPOutputConformerSetProperty();
      if (v12 && v12 != -12784)
      {
        return v12;
      }

      else
      {
        if (v12)
        {
          v13 = v10 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13 || v7 == 0)
        {
          return 0;
        }

        else
        {
          return 4294954512;
        }
      }
    }

    else
    {
      return v9;
    }
  }

  return v7;
}

uint64_t FigVideoCompositionProcessorGetVideoCompositor(uint64_t a1)
{
  if (FigVCPIsValid())
  {
    v2 = *(a1 + 104);

    return FigVCPCompositorHostGetCompositor(v2);
  }

  else
  {
    FigVideoCompositionProcessorGetVideoCompositor_cold_1();
    return 0;
  }
}

uint64_t FigVideoCompositionProcessorGo(uint64_t a1)
{
  if (FigVCPIsValid())
  {
    *(a1 + 160) = 1;
    FigMemoryBarrier();
    if (*(a1 + 160))
    {
      v2 = *(a1 + 128);
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v3)
      {
        v3(v2);
      }
    }

    return 0;
  }

  else
  {
    FigVideoCompositionProcessorGo_cold_1(&v5);
    return v5;
  }
}

uint64_t FigVideoCompositionProcessorRequestPreroll(uint64_t a1, __int128 *a2, __int128 *a3, int a4, int a5)
{
  v10 = malloc_type_malloc(0x70uLL, 0x1020040FDFAB857uLL);
  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  *v10 = v11;
  v12 = *a2;
  *(v10 + 3) = *(a2 + 2);
  *(v10 + 8) = v12;
  v13 = *a3;
  *(v10 + 6) = *(a3 + 2);
  *(v10 + 2) = v13;
  if (a5 < 1)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  if (!a5)
  {
    v14 = 0;
  }

  *(v10 + 14) = v14;
  FigVCPTimingGetLoopTimeRange(*(a1 + 96), v17);
  v15 = v17[1];
  *(v10 + 60) = v17[0];
  *(v10 + 76) = v15;
  *(v10 + 92) = v17[2];
  *(v10 + 27) = a4;
  dispatch_async_f(*(a1 + 192), v10, videoprocessor_requestPreroll);
  return 0;
}

void videoprocessor_requestPreroll(CFTypeRef *a1)
{
  v2 = *(*a1 + 13);
  v3 = *(a1 + 14);
  v4 = *(a1 + 27);
  v10 = *(a1 + 1);
  v11 = a1[3];
  v5 = *(a1 + 2);
  v9 = a1[6];
  v6 = *(a1 + 76);
  v7[0] = *(a1 + 60);
  v7[1] = v6;
  v7[2] = *(a1 + 92);
  v8 = v5;
  FigVCPCompositorHostPrerollForRendering(v2, &v10, &v8, v3, v7, v4);
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t FigVideoCompositionProcessorWaitUntilCompletelyStopped()
{
  FigSimpleMutexLock();
  FigSimpleMutexUnlock();
  return 0;
}

BOOL FigVideoCompositionProcessorIsAtEndOfOutputData(uint64_t a1)
{
  if (!FigVCPIsValid())
  {
    FigVideoCompositionProcessorIsAtEndOfOutputData_cold_2();
    return 0;
  }

  if (FigVCPTimingUsesTimebase(*(a1 + 96)))
  {
    FigVideoCompositionProcessorIsAtEndOfOutputData_cold_1();
    return 0;
  }

  if (FigVCPCompositorHostIsAcceptingRequest(*(a1 + 104)))
  {
    return 0;
  }

  return FigVCPCompositorHostGetPendingFramesCount() == 0;
}

dispatch_queue_t videoprocessor_Init(void *a1)
{
  bzero(a1 + 2, 0x8C8uLL);
  a1[21] = FigSimpleMutexCreate();
  a1[22] = FigSimpleMutexCreate();
  a1[19] = FigSimpleMutexCreate();
  a1[23] = dispatch_queue_create("com.apple.coremedia.videocompositionprocessor.notification", 0);
  result = dispatch_queue_create("com.apple.coremedia.videocompositionprocessor.preroll", 0);
  a1[24] = result;
  return result;
}

CFStringRef videoprocessor_CopyFormattingDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = FigVCPIsValid();
  v4 = "";
  if (!v3)
  {
    v4 = " (invalidated)";
  }

  return CFStringCreateWithFormat(v2, 0, @"[FigVideoCompositionProcessor %p%s]", a1, v4);
}

__CFString *videoprocessor_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
  v5 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 32));
  v6 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 144));
  v7 = CFGetRetainCount(a1);
  if (FigVCPIsValid())
  {
    v8 = "";
  }

  else
  {
    v8 = " (invalidated)";
  }

  v9 = CFGetAllocator(a1);
  if (FigVCPTimingUsesTimebase(*(a1 + 96)))
  {
    v10 = "realtime";
  }

  else
  {
    v10 = "non-realtime";
  }

  if (FigVCPTimingRepeatIdenticalFrames(*(a1 + 96)))
  {
    v11 = "repeat-identical-frames";
  }

  else
  {
    v11 = "do-not-repeat-identical-frames";
  }

  IsAcceptingRequest = FigVCPCompositorHostIsAcceptingRequest(*(a1 + 104));
  v13 = "is";
  if (!IsAcceptingRequest)
  {
    v13 = "is not";
  }

  CFStringAppendFormat(Mutable, 0, @"FigVideoCompositionProcessor %p retainCount: %d%s allocator: %p, %s, %s, compositor %s accepting input, ", a1, v7, v8, v9, v10, v11, v13);
  CFStringAppendFormat(Mutable, 0, @"sourceArray=%p, ", v5);
  CFStringAppendFormat(Mutable, 0, @"videoCompositor=%p, ", *(a1 + 104));
  CFStringAppendFormat(Mutable, 0, @"output=%p, ", v4);
  CFStringAppendFormat(Mutable, 0, @"instructionSource=%p, ", *(a1 + 88));
  CFStringAppendFormat(Mutable, 0, @"activityScheduler=%p, ", *(a1 + 128));
  CFStringAppendFormat(Mutable, 0, @"outputConformer=%p, ", *(a1 + 112));
  cf = 0;
  FigVCPTallyCopyPerformanceDictionary(a1 + 208, v5, *(a1 + 104), *(a1 + 112), v6, &cf);
  if (cf)
  {
    v14 = FigCFCopyCompactDescription();
    CFStringAppendFormat(Mutable, 0, @"performanceDictionary=%@", v14);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v14 = 0;
    if (v6)
    {
LABEL_16:
      CFRelease(v6);
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return Mutable;
}

void videoprocessor_reportProcessingError(uint64_t a1)
{
  *(a1 + 160) = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t videoprocessor_setUpcomingImageInfo(uint64_t a1)
{
  v12 = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  v10 = v12;
  v11 = v13;
  v2 = videoprocessor_loadAndRetainAtomically(a1, (a1 + 120));
  FigSimpleMutexLock();
  UpcomingImageInfo = FigVCPCompositorHostGetUpcomingImageInfo(*(a1 + 104), &v12, &v10);
  if (UpcomingImageInfo)
  {
    v8 = v12;
    v9 = v13;
    v6 = v10;
    v7 = v11;
    v4 = FigVCPOutputSetUpcomingImageInfo(v2, UpcomingImageInfo, &v8, &v6);
  }

  else
  {
    v4 = 0;
  }

  FigSimpleMutexUnlock();
  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

void videoprocessor_sendSeekCompleteNotification()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t videoprocessor_isTrackRequired(const __CFArray *a1, int a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return 1;
  }

  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v7.length = CFArrayGetCount(a1);
  v7.location = 0;
  v4 = CFArrayContainsValue(a1, v7, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

uint64_t videoprocessor_willCompositionInstructionContinueForever(const __CFDictionary *a1, int a2)
{
  if (FigVCPDirectionIsForwardOrPaused(a2))
  {
    Value = CFDictionaryGetValue(a1, @"EndTime");
    CMTimeMakeFromDictionary(&v9, Value);
    if (v9.flags)
    {
      CMTimeMakeFromDictionary(&v8, Value);
      return (LOBYTE(v8.flags) >> 2) & 1;
    }

    return 0;
  }

  v5 = CFDictionaryGetValue(a1, @"StartTime");
  CMTimeMakeFromDictionary(&v7, v5);
  if ((v7.flags & 1) == 0)
  {
    return 0;
  }

  CMTimeMakeFromDictionary(&v6, v5);
  return (LOBYTE(v6.flags) >> 3) & 1;
}

void videoprocessor_initReadOnlyPropertyKeys()
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  CFSetAddValue(Mutable, @"VideoCompositionProcessor_SourcePixelBufferAttributes");
  videoprocessor_readOnlyPropertyKeys = Mutable;
}

void videoprocessor_initStaticPropertyKeys()
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  CFSetAddValue(Mutable, @"VideoCompositionProcessor_ClientPID");
  CFSetAddValue(Mutable, @"VideoCompositionProcessor_PixelBufferPoolSharingID");
  videoprocessor_staticPropertyKeys = Mutable;
}

void __overrideHDRMetadataGenerationByDefaultsWrite_block_invoke()
{
  v0 = CFPreferencesCopyValue(@"videoCompositionHDRDisplayMetadata", @"com.apple.avfoundation", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID() && FigCFEqual())
    {
      overrideHDRMetadataGenerationByDefaultsWrite_sOverrideHDRMetadataGeneration = 1;
    }

    CFRelease(v1);
  }
}

uint64_t OUTLINED_FUNCTION_11_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMTime *time2, uint64_t a8, CMTime *time1, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a18, uint64_t time1a)
{
  time2_16 = v19;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t FigVisualContextXPCRemoteGetObjectID(const void *a1, void *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == FigVisualContextGetTypeID()))
  {
    if (CMBaseObjectGetVTable() == &kRemoteXPCVisualContext_VTable)
    {
      if (a2)
      {

        return remoteXPCVisualContext_GetObjectID(a1, a2);
      }

      else
      {
        FigVisualContextXPCRemoteGetObjectID_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  else
  {
    FigVisualContextXPCRemoteGetObjectID_cold_2(&v7);
    return v7;
  }
}

uint64_t remoteXPCVisualContext_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteXPCVisualContext_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

uint64_t remoteXPCVisualContextClient_DeadConnectionCallback()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 8) = 1;
  return result;
}

uint64_t rvcInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7[0] = 0;
  v7[1] = 0;
  if (*(DerivedStorage + 9))
  {
    return 0;
  }

  v4 = DerivedStorage;
  ObjectID = remoteXPCVisualContext_GetObjectID(a1, v7);
  if (ObjectID || v7[0] && ((ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = FigXPCRemoteClientSendSyncMessage(), ObjectID)))
  {
    v3 = ObjectID;
  }

  else
  {
    v3 = 0;
    *(v4 + 9) = 1;
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

__CFString *rvcCopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVisualContext %p [%p] [%016llx]>{imageAvailableImmediate:%p, imageAvailableSequential:%p, noMoreImages:%p, }", a1, v5, *DerivedStorage, DerivedStorage[3], DerivedStorage[5], DerivedStorage[7]);
  return Mutable;
}

BOOL rvcIsNewImageAvailable(uint64_t a1, uint64_t a2)
{
  xdict = 0;
  v6 = 0;
  v4 = 0;
  if ((*(a2 + 12) & 0x1D) == 1)
  {
    v2 = !remoteXPCVisualContext_GetObjectID(a1, &v4) && !FigXPCCreateBasicMessage() && !FigXPCMessageSetCMTime() && !FigXPCRemoteClientSendSyncMessageCreatingReply() && xpc_dictionary_get_BOOL(xdict, "NewImageAvailable");
    FigXPCRelease();
    FigXPCRelease();
    FigXPCRemoteClientKillServerOnTimeout();
  }

  else
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  return v2;
}

uint64_t rvcCopyImageForTime(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4, CFTypeRef *a5, CFTypeRef *a6, uint64_t a7)
{
  v29 = 0;
  v27 = 0;
  xdict = 0;
  v25 = 0;
  cf = 0;
  v24 = 0;
  v7 = *MEMORY[0x1E6960C70];
  v22 = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v23 = v8;
  if ((*(a3 + 3) & 0x1D) == 1)
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      *a6 = 0;
    }

    if (a7)
    {
      *a7 = v7;
      *(a7 + 16) = v8;
    }

    ObjectID = remoteXPCVisualContext_GetObjectID(a1, &v27);
    if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (v20 = *a3, v21 = *(a3 + 2), ObjectID = FigXPCMessageSetCMTime(), ObjectID) || (xpc_dictionary_set_uint64(v29, "Flags", a4), xpc_dictionary_set_BOOL(v29, "WantsImage", a5 != 0), xpc_dictionary_set_BOOL(v29, "WantsImageBaggage", a6 != 0), xpc_dictionary_set_BOOL(v29, "WantsImageOriginalTime", a7 != 0), ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply(), ObjectID))
    {
      v19 = ObjectID;
      v15 = 0;
LABEL_32:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      FigXPCRelease();
      FigXPCRelease();
      FigXPCRemoteClientKillServerOnTimeout();
      return v19;
    }

    if (!a5 || xpc_dictionary_get_BOOL(xdict, "IsNullImage"))
    {
      v15 = 0;
      goto LABEL_22;
    }

    value = xpc_dictionary_get_value(xdict, "IOSurface");
    if (value)
    {
      v15 = IOSurfaceLookupFromXPCObject(value);
      if (v15)
      {
        BlockBufferData = FigXPCMessageCreateBlockBufferData();
        if (BlockBufferData || (BlockBufferData = FigRemote_CreatePixelBufferFromSerializedAtomDataAndSurface(), BlockBufferData))
        {
LABEL_42:
          v19 = BlockBufferData;
          goto LABEL_32;
        }

LABEL_22:
        if (!a6 || (BlockBufferData = FigXPCMessageCopyCFDictionary(), !BlockBufferData))
        {
          if (!a7 || (BlockBufferData = FigXPCMessageGetCMTime(), !BlockBufferData))
          {
            if (a5)
            {
              *a5 = cf;
              cf = 0;
            }

            if (a6)
            {
              *a6 = v24;
              v24 = 0;
            }

            v19 = 0;
            if (a7)
            {
              *a7 = v22;
              *(a7 + 16) = v23;
            }

            goto LABEL_32;
          }
        }

        goto LABEL_42;
      }

      rvcCopyImageForTime_cold_1(&v20);
    }

    else
    {
      rvcCopyImageForTime_cold_2(&v20);
      v15 = 0;
    }

    v19 = v20;
    goto LABEL_32;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t rvcConvertHostTimeToImageTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = 0;
  xdict = 0;
  v7[0] = 0;
  if (a3 && (!a2 || (*(a2 + 64) & 2) != 0))
  {
    ObjectID = remoteXPCVisualContext_GetObjectID(a1, v7);
    if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
    {
      CMTime = ObjectID;
    }

    else
    {
      if (a2)
      {
        xpc_dictionary_set_uint64(xdict, "HostTime", *(a2 + 16));
      }

      CMTime = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!CMTime)
      {
        CMTime = FigXPCMessageGetCMTime();
      }
    }

    FigXPCRelease();
    FigXPCRelease();
    FigXPCRemoteClientKillServerOnTimeout();
    return CMTime;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t OUTLINED_FUNCTION_3_111()
{

  return FigReadWriteLockLockForWrite();
}

uint64_t OUTLINED_FUNCTION_4_106()
{

  return CMBaseObjectGetDerivedStorage();
}

uint64_t OUTLINED_FUNCTION_9_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return remoteXPCVisualContext_GetObjectID(v9, &a9);
}

uint64_t OUTLINED_FUNCTION_10_50()
{

  return FigXPCRemoteClientSendSyncMessage();
}

uint64_t RegisterFigVideoCompositorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVideoCompositorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVideoCompositorGetClassID_sRegisterFigVideoCompositorBaseTypeOnce, RegisterFigVideoCompositorBaseType);

  return CMBaseClassGetCFTypeID();
}

CFTypeID FigVideoCompositorUtilityGetPixelAspectRatio(CFTypeID result, _DWORD *a2, _DWORD *a3)
{
  if (result)
  {
    v5 = result;
    Value = CFDictionaryGetValue(result, *MEMORY[0x1E6965EF0]);
    result = CFDictionaryGetValue(v5, *MEMORY[0x1E6965F00]);
    v7 = result;
    if (a2)
    {
      *a2 = 1;
      if (Value)
      {
        TypeID = CFNumberGetTypeID();
        result = CFGetTypeID(Value);
        if (TypeID == result)
        {
          result = CFNumberGetValue(Value, kCFNumberIntType, a2);
        }
      }
    }

    if (a3)
    {
      *a3 = 1;
      if (v7)
      {
        v9 = CFNumberGetTypeID();
        result = CFGetTypeID(v7);
        if (v9 == result)
        {

          return CFNumberGetValue(v7, kCFNumberIntType, a3);
        }
      }
    }
  }

  else
  {
    *a3 = 1;
    *a2 = 1;
  }

  return result;
}

uint64_t FigVideoCompositorUtilityGetEdgeProcessingPixels(uint64_t theArray, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = theArray;
    if (theArray && (theArray = CFArrayGetCount(theArray), theArray == 4))
    {
      for (i = 0; i != 4; ++i)
      {
        theArray = CFArrayGetValueAtIndex(v3, i);
        if (theArray)
        {
          v5 = theArray;
          TypeID = CFNumberGetTypeID();
          theArray = CFGetTypeID(v5);
          if (TypeID == theArray)
          {
            theArray = CFNumberGetValue(v5, kCFNumberIntType, v2);
          }
        }

        v2 = (v2 + 4);
      }
    }

    else
    {
      *v2 = 0;
      v2[1] = 0;
    }
  }

  return theArray;
}

unint64_t vcu_simplifyRational(uint64_t a1)
{
  if (a1 >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = -a1;
  }

  if (a1 >= 0)
  {
    v2 = HIDWORD(a1);
  }

  else
  {
    v2 = -HIDWORD(a1);
  }

  if (v1 <= v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  if (v1 >= v2)
  {
    v1 = v2;
  }

  if (v1)
  {
    if (v1 < 1)
    {
      v4 = v3;
    }

    else
    {
      do
      {
        v4 = v1;
        v1 = v3 % v1;
        v3 = v4;
      }

      while (v1);
    }
  }

  else if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  return (a1 / v4) | ((SHIDWORD(a1) / v4) << 32);
}

BOOL FigVideoCompositorUtilityArePixelAspectRatiosEqual(CFTypeID a1, CFTypeID a2)
{
  v7 = 0;
  v8 = 0;
  FigVideoCompositorUtilityGetPixelAspectRatio(a1, &v8 + 1, &v8);
  FigVideoCompositorUtilityGetPixelAspectRatio(a2, &v7 + 1, &v7);
  v4 = v7;
  v3 = HIDWORD(v7);
  v5 = vcu_simplifyRational(HIDWORD(v8) | (v8 << 32));
  return v5 == vcu_simplifyRational(v3 | (v4 << 32));
}

void vcu_addRationalToDictionary(unint64_t a1, __CFDictionary *a2, const void *a3, const void *a4)
{
  v7 = HIDWORD(a1);
  valuePtr = a1;
  v13 = a1 / SHIDWORD(a1);
  v8 = *MEMORY[0x1E695E480];
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v13);
  CFDictionaryAddValue(a2, a3, v9);
  CFRelease(v9);
  if (v7 != 1)
  {
    Mutable = CFArrayCreateMutable(v8, 2, MEMORY[0x1E695E9C0]);
    v11 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr);
    CFArrayAppendValue(Mutable, v11);
    CFRelease(v11);
    v12 = CFNumberCreate(v8, kCFNumberIntType, &valuePtr + 4);
    CFArrayAppendValue(Mutable, v12);
    CFRelease(v12);
    CFDictionaryAddValue(a2, a4, Mutable);
    CFRelease(Mutable);
  }
}

uint64_t FigVideoCompositorUtilityCopyRenderPixelBufferDimensionsAndCleanAperture(CFTypeID a1, uint64_t theArray, void *a3, void *a4, uint64_t a5, __CFDictionary **a6, double a7, double a8, float a9)
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = 1;
  v32 = 1;
  v33 = 0uLL;
  v30 = a9;
  if (a1)
  {
    FigVideoCompositorUtilityGetPixelAspectRatio(a1, &v32, &v31);
    a9 = v30;
  }

  if (theArray)
  {
    FigVideoCompositorUtilityGetEdgeProcessingPixels(theArray, &v33);
    a9 = v30;
  }

  v33 = vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(v33), a9));
  v16 = v31;
  if (a9 == 1.0)
  {
    v17 = v32;
    v18 = vcu_simplifyRational((a7 * v16 + 0.5) | (v32 << 32));
    v19 = v18;
    v20 = HIDWORD(v18);
    v21 = v33.i32[0];
    v22 = v33.i32[0] + v33.i32[2] + (v18 + SHIDWORD(v18) / 2) / SHIDWORD(v18);
    if ((v18 / SHIDWORD(v18)) > v22)
    {
      v20 = 1;
      v19 = v33.i32[0] + v33.i32[2] + (v18 + SHIDWORD(v18) / 2) / SHIDWORD(v18);
    }

    a9 = v30;
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = v32;
    v21 = v33.i32[0];
    v22 = (v33.i32[2] + v33.i32[0] + (a7 * v16 * a9 / v32 + 1.0)) & 0xFFFFFFFE;
    v19 = v22 - (v33.i32[2] + v33.i32[0]);
    v20 = 1;
    if (a3)
    {
LABEL_9:
      *a3 = v22;
    }
  }

  if (a9 == 1.0)
  {
    v23 = (a8 + 0.5);
    v24 = v33.i32[1];
    v25 = v33.i32[1] + v33.i32[3] + v23;
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v24 = v33.i32[1];
  v25 = (v33.i32[3] + v33.i32[1] + (a8 * a9 + 1.0)) & 0xFFFFFFFE;
  v23 = v25 - (v33.i32[3] + v33.i32[1]);
  if (a4)
  {
LABEL_12:
    *a4 = v25;
  }

LABEL_13:
  if (a5)
  {
    *a5 = v16 / v17;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0x3FF0000000000000;
    *(a5 + 32) = v21;
    *(a5 + 40) = v24;
  }

  if (a6)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    vcu_addRationalToDictionary(v19 | (v20 << 32), Mutable, *MEMORY[0x1E6965D80], *MEMORY[0x1E6960110]);
    vcu_addRationalToDictionary(v23 | 0x100000000, Mutable, *MEMORY[0x1E6965D60], *MEMORY[0x1E69600F8]);
    v27 = vcu_simplifyRational((v33.i32[0] - v33.i32[2]) | 0x200000000);
    vcu_addRationalToDictionary(v27, Mutable, *MEMORY[0x1E6965D68], *MEMORY[0x1E6960100]);
    v28 = vcu_simplifyRational((v33.i32[1] - v33.i32[3]) | 0x200000000);
    vcu_addRationalToDictionary(v28, Mutable, *MEMORY[0x1E6965D78], *MEMORY[0x1E6960108]);
    *a6 = Mutable;
  }

  return 0;
}

uint64_t vcu_getRationalFromDictionary(const __CFDictionary *a1, const void *a2, void *key, uint64_t a4)
{
  Value = CFDictionaryGetValue(a1, key);
  if (Value)
  {
    v8 = Value;
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v8) && CFArrayGetCount(v8) == 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, a4);
      v11 = CFArrayGetValueAtIndex(v8, 1);
      CFNumberGetValue(v11, kCFNumberIntType, (a4 + 4));
      return 0;
    }
  }

  v12 = CFDictionaryGetValue(a1, a2);
  if (v12)
  {
    CFNumberGetValue(v12, kCFNumberIntType, a4);
    *(a4 + 4) = 1;
    return 0;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigVideoCompositorCopyDeviceSpecificCompositorName(int a1, void *a2)
{
  if (!a2)
  {
    FigVideoCompositorCopyDeviceSpecificCompositorName_cold_8(&v17);
    return v17;
  }

  if (!a1)
  {
    v3 = @"Playback";
    goto LABEL_6;
  }

  if (a1 == 1)
  {
    v3 = @"Remake";
LABEL_6:
    ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
    if (ModelSpecificPropertyList)
    {
      v5 = ModelSpecificPropertyList;
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(v5))
      {
        Value = CFDictionaryGetValue(v5, @"VideoCompositor");
        if (Value)
        {
          v8 = Value;
          v9 = CFDictionaryGetTypeID();
          if (v9 == CFGetTypeID(v8))
          {
            v10 = CFDictionaryGetValue(v8, v3);
            if (v10)
            {
              v11 = v10;
              v12 = CFStringGetTypeID();
              if (v12 == CFGetTypeID(v11))
              {
                if (CFEqual(v11, @"vImage"))
                {
                  v13 = @"VideoCompositorvImage";
                }

                else if (CFEqual(v11, @"Metal"))
                {
                  v13 = @"VideoCompositorMetal";
                }

                else if (CFEqual(v11, @"OpenGL"))
                {
                  v13 = @"VideoCompositorOpenGL";
                }

                else if (CFEqual(v11, @"Custom"))
                {
                  v13 = @"VideoCompositorCustom";
                }

                else
                {
                  v13 = @"VideoCompositorBasic";
                }

                v15 = CFRetain(v13);
                if (FigCFEqual() && !VTPixelTransferSessionCanUseMetalInTheBackground())
                {
                  CFRetain(@"VideoCompositorvImage");
                  if (v15)
                  {
                    CFRelease(v15);
                  }

                  v16 = 0;
                  *a2 = @"VideoCompositorvImage";
                  goto LABEL_31;
                }

                *a2 = v15;
                if (v15)
                {
                  v16 = 0;
LABEL_31:
                  CFRelease(v5);
                  return v16;
                }

                FigVideoCompositorCopyDeviceSpecificCompositorName_cold_4(&v17);
              }

              else
              {
                FigVideoCompositorCopyDeviceSpecificCompositorName_cold_3(&v17);
              }
            }

            else
            {
              FigVideoCompositorCopyDeviceSpecificCompositorName_cold_5(&v17);
            }
          }

          else
          {
            FigVideoCompositorCopyDeviceSpecificCompositorName_cold_2(&v17);
          }
        }

        else
        {
          FigVideoCompositorCopyDeviceSpecificCompositorName_cold_6(&v17);
        }
      }

      else
      {
        FigVideoCompositorCopyDeviceSpecificCompositorName_cold_1(&v17);
      }

      v16 = v17;
      goto LABEL_31;
    }

    FigVideoCompositorCopyDeviceSpecificCompositorName_cold_7(&v17);
    return v17;
  }

  return FigSignalErrorAtGM();
}

BOOL FigVideoCompositorIsPixelBufferOpaque(__CVBuffer *a1)
{
  v2 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965CB8], 0);
  v3 = v2;
  v4 = *MEMORY[0x1E695E4D0];
  if (v2 == *MEMORY[0x1E695E4D0])
  {
    v6 = 1;
    if (!v2)
    {
      return v6;
    }

    goto LABEL_3;
  }

  CVPixelBufferGetPixelFormatType(a1);
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v6 = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x1E6966290]) != v4;
  if (v3)
  {
LABEL_3:
    CFRelease(v3);
  }

  return v6;
}

BOOL FigVideoCompositorSupportsSpatialVideoSources(uint64_t a1)
{
  v4 = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(a1, @"SupportsSpatialSourceBuffers", *MEMORY[0x1E695E498], &v4);
    v2 = v4;
  }

  return v2 == *MEMORY[0x1E695E4D0];
}

uint64_t OUTLINED_FUNCTION_1_140()
{

  return vcu_getCleanApertureRational();
}

uint64_t FigDataQueueServer_AssociateObjectByPID(uint64_t a1, const void *a2, void *a3)
{
  if (FigDataQueueServerStateGetTypeID_sRegisterDataQueueServerStateTypeOnce != -1)
  {
    FigDataQueueServer_AssociateObjectByPID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    v6[3] = v7;
    v8 = FigXPCServerAssociateObjectWithNeighborProcessByPID();
    if (v8)
    {
      CFRelease(v6);
    }

    else
    {
      v6[4] = 0;
      *a3 = 0;
    }
  }

  else
  {
    FigDataQueueServer_AssociateObjectByPID_cold_2(&v10);
    return v10;
  }

  return v8;
}

uint64_t FigDataQueueServer_CopyDataQueueForID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v4 = FigXPCServerRetainNeighborObjectFromIDWithConnection();
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    if (*a3)
    {
      v5 = CFGetTypeID(*a3);
      if (v5 == FigDataQueueGetTypeID())
      {
        return 0;
      }
    }

    FigDataQueueServer_CopyDataQueueForID_cold_1(&v8);
    v6 = v8;
  }

  if (a3 && v6 && *a3)
  {
    CFRelease(*a3);
    *a3 = 0;
  }

  return v6;
}

uint64_t dqs_SetWaterLevelInMessage(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v2)
  {
    v2(a1);
  }

  return FigXPCMessageSetInt32();
}

void dqs_SendLowWaterMarkCallback()
{
  v1 = 0;
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    dqs_SendLowWaterMarkCallback_cold_1(v0, &v1);
  }

  else
  {
    dqs_SendLowWaterMarkCallback_cold_2();
  }
}

uint64_t __FigDataQueueServerStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigDataQueueServerStateGetTypeID_sDataQueueServerStateTypeID = result;
  return result;
}

double DataQueueServerState_init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void DataQueueServerState_finalize(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 48))
    {
      v2 = *(a1 + 24);
      v3 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v3)
      {
        v3(v2);
      }
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 56) = 0;
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 40) = 0;
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 24) = 0;
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 64) = 0;
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 72) = 0;
    }
  }
}

CFStringRef DataQueueServerState_copyDebugDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (a1)
  {
    return CFStringCreateWithFormat(v2, 0, @"[DataQueueServerState %p] dataQueue:%p dataQueueObjectID:%llu", a1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    return CFStringCreateWithFormat(v2, 0, @"[DataQueueServerState %p]", 0);
  }
}

uint64_t sci_invalidate(uint64_t a1)
{
  v4 = 0;
  context[0] = CMBaseObjectGetDerivedStorage();
  context[1] = a1;
  dispatch_sync_f(*context[0], context, sci_invalidateDispatch);
  return v4;
}

void sci_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t sci_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    context[0] = DerivedStorage;
    context[1] = a2;
    context[2] = a4;
    dispatch_sync_f(*DerivedStorage, context, sci_copyPropertyDispatch);
    return v9;
  }

  else
  {
    sci_copyProperty_cold_1(&v10);
    return v10;
  }
}

uint64_t sci_createAndOpenHLSPersistentStore(uint64_t a1, void *a2)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = *(a1 + 16);

    return FigHLSPersistentStoreCreateAtURL(v6, v5, 0, 0, a2);
  }

  else
  {
    v9 = v2;
    v10 = v3;
    sci_createAndOpenHLSPersistentStore_cold_1(&v8);
    return v8;
  }
}

uint64_t sci_copyCompletelyCachedMediaSelectionOptionsInGroup(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v12 = 0u;
  v11 = 0u;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || (v7 = DerivedStorage, v8 = CFGetTypeID(a2), v8 != CFDictionaryGetTypeID()))
  {
    sci_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_2(&v13);
    return v13;
  }

  if (!a4)
  {
    sci_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_1(&v13);
    return v13;
  }

  v10 = v7;
  *(&v11 + 1) = a2;
  *&v12 = a4;
  dispatch_sync_f(*v7, &v10, sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch);
  return DWORD2(v12);
}

void sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch(uint64_t *a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  v3 = *a1;
  v2 = a1[1];
  if (v2)
  {
    v4 = CFRetain(v2);
  }

  else
  {
    v4 = 0;
  }

  cf = v4;
  if (!v3)
  {
    sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_10(&v46);
LABEL_81:
    Mutable = 0;
LABEL_83:
    v6 = v46;
    goto LABEL_84;
  }

  if (*(v3 + 8))
  {
    sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_1(&v46);
    goto LABEL_81;
  }

  Mutable = CFArrayCreateMutable(*(v3 + 16), 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_9(&v46);
    goto LABEL_83;
  }

  if (!*(v3 + 40))
  {
LABEL_74:
    *v1[3] = CFArrayCreateCopy(*(v3 + 16), Mutable);
    if (*v1[3])
    {
      v6 = 0;
    }

    else
    {
      fig_log_get_emitter();
      v6 = FigSignalErrorAtGM();
    }

    goto LABEL_85;
  }

  if (!v4)
  {
    v6 = sci_createAndOpenHLSPersistentStore(v3, &cf);
    if (v6 || !cf)
    {
LABEL_84:
      if (v6)
      {
        goto LABEL_85;
      }

      goto LABEL_74;
    }
  }

  theArray = Mutable;
  v35 = v1;
  v7 = CFDictionaryGetValue(v1[2], @"MediaSelectionGroupOptions");
  v8 = 0;
  v9 = *MEMORY[0x1E6962BB0];
  v10 = *MEMORY[0x1E6962BA8];
  v36 = v7;
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_13:
  for (i = CFArrayGetCount(v7); ; i = 0)
  {
    if (v8 >= i)
    {
      v1 = v35;
      Mutable = theArray;
      goto LABEL_74;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
    v44 = 0;
    v43 = 0;
    v40 = cf;
    isVideoPlayableOffline = sci_isVideoPlayableOffline(v3, cf, &v44, &v43);
    if (isVideoPlayableOffline)
    {
      break;
    }

    if (!v44 && v43)
    {
      goto LABEL_62;
    }

    isVideoPlayableOffline = sci_ensureAlternateArrayAndMediaSelectionArray(v3, v40);
    if (isVideoPlayableOffline)
    {
      break;
    }

    v45 = 0;
    v38 = v8;
    value = ValueAtIndex;
    if (!*(v3 + 56))
    {
      sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_8(&v46);
      goto LABEL_69;
    }

    CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsMediaType");
    if (!FigCFStringGetOSTypeValue())
    {
      sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_7(&v46);
      goto LABEL_69;
    }

    v14 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
    if (!v14)
    {
      sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_6(&v46);
LABEL_69:
      v17 = 0;
LABEL_71:
      v18 = 0;
      goto LABEL_43;
    }

    v15 = v14;
    v16 = MEMORY[0x1E695E9C0];
    v17 = CFArrayCreateMutable(*(v3 + 16), 0, MEMORY[0x1E695E9C0]);
    if (!v17)
    {
      sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_5(&v46);
      goto LABEL_71;
    }

    v18 = CFArrayCreateMutable(*(v3 + 16), 0, v16);
    if (v18)
    {
      if (v45 == 1935832172 || v45 == 1986618469 || v45 == 1936684398)
      {
        for (j = 0; ; ++j)
        {
          Count = *(v3 + 56);
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (j >= Count)
          {
            break;
          }

          v21 = CFArrayGetValueAtIndex(*(v3 + 56), j);
          if (!v21)
          {
            sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_3(&v46);
            goto LABEL_43;
          }

          v22 = v21;
          MediaGroupLocatorMap = FigAlternateGetMediaGroupLocatorMap(v21, v45);
          if (!MediaGroupLocatorMap || (v24 = CFDictionaryGetValue(MediaGroupLocatorMap, v15)) == 0 || (v25 = v24, PlaylistAlternateURL = CFDictionaryGetValue(v24, v9), StableStreamIdentifier = CFDictionaryGetValue(v25, v10), !PlaylistAlternateURL))
          {
            PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v22);
            StableStreamIdentifier = FigAlternateGetStableStreamIdentifier(v22);
            if (!PlaylistAlternateURL)
            {
              continue;
            }
          }

          v28 = StableStreamIdentifier;
          v29 = FigCFHTTPCreateURLString(PlaylistAlternateURL);
          if (!v29)
          {
            sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_2(&v46);
            goto LABEL_43;
          }

          v30 = v29;
          CFArrayAppendValue(v17, v29);
          CFRelease(v30);
          if (v28)
          {
            CFArrayAppendValue(v18, v28);
          }
        }
      }

LABEL_45:
      v31 = CFRetain(v17);
      v32 = CFRetain(v18);
      v6 = 0;
      goto LABEL_46;
    }

    sci_copyCompletelyCachedMediaSelectionOptionsInGroupDispatch_cold_4(&v46);
LABEL_43:
    v6 = v46;
    if (!v46)
    {
      goto LABEL_45;
    }

    v31 = 0;
    v32 = 0;
LABEL_46:
    if (v17)
    {
      CFRelease(v17);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v6)
    {
      v34 = 0;
      v8 = v38;
    }

    else
    {
      v33 = sci_areAnyNetworkURLsOrStreamIDsCompletelyCached(v40, v31, v32, &v44 + 1);
      v8 = v38;
      if (v33)
      {
        v6 = v33;
        v34 = 0;
      }

      else
      {
        v42 = 0;
        FigCFDictionaryGetBooleanIfPresent();
        v6 = 0;
        if (v42)
        {
          v34 = v44;
        }

        else
        {
          v34 = HIBYTE(v44);
        }
      }
    }

    if (v31)
    {
      CFRelease(v31);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    if (v6)
    {
      goto LABEL_78;
    }

    v7 = v36;
    if (v34)
    {
      CFArrayAppendValue(theArray, value);
    }

LABEL_62:
    ++v8;
    if (v7)
    {
      goto LABEL_13;
    }

LABEL_14:
    ;
  }

  v6 = isVideoPlayableOffline;
LABEL_78:
  v1 = v35;
  Mutable = theArray;
LABEL_85:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  *(v1 + 8) = v6;
}

uint64_t FigCSSParserUtilitiesParseColor(const __CFAllocator *a1, const __CFString *a2, __CFArray **a3)
{
  valuePtr = 0;
  v15 = 0;
  v14 = 0;
  *a3 = 0;
  v5 = FigCSSParseColor(a2, &valuePtr, &v15 + 1, &v15, &v14);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (v5)
  {
LABEL_4:
    *a3 = v6;
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = *MEMORY[0x1E695E480];
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  v8 = CFNumberCreate(v11, kCFNumberFloatType, &v15 + 4);
  v9 = CFNumberCreate(v11, kCFNumberFloatType, &v15);
  v10 = CFNumberCreate(v11, kCFNumberFloatType, &v14);
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v6 = Mutable;
    CFArrayAppendValue(Mutable, v10);
    CFArrayAppendValue(v6, v7);
    CFArrayAppendValue(v6, v8);
    CFArrayAppendValue(v6, v9);
    goto LABEL_4;
  }

  FigCSSParserUtilitiesParseColor_cold_1(&v17);
  v5 = v17;
  if (v10)
  {
LABEL_5:
    CFRelease(v10);
  }

LABEL_6:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v5;
}

void initMapFromCSSToCMTextMarkupFontFamily()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, @"default", *MEMORY[0x1E6960A38]);
  CFDictionaryAddValue(Mutable, @"serif", *MEMORY[0x1E6960A78]);
  CFDictionaryAddValue(Mutable, @"sans-serif", *MEMORY[0x1E6960A70]);
  CFDictionaryAddValue(Mutable, @"monospace", *MEMORY[0x1E6960A48]);
  CFDictionaryAddValue(Mutable, @"cursive", *MEMORY[0x1E6960A30]);
  CFDictionaryAddValue(Mutable, @"fantasy", *MEMORY[0x1E6960A40]);
  sMapFromCSSToCMTextMarkupFontFamily = Mutable;
}

CFComparisonResult OUTLINED_FUNCTION_1_142(const __CFString *a1)
{

  return CFStringCompare(a1, v1, 1uLL);
}

CFComparisonResult OUTLINED_FUNCTION_2_135(const __CFString *a1)
{

  return CFStringCompare(a1, v1, 1uLL);
}

CFNumberRef OUTLINED_FUNCTION_4_108@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CFAllocatorRef allocator)
{
  *(v17 - 116) = a1;

  return CFNumberCreate(allocator, kCFNumberSInt32Type, (v17 - 116));
}

__CFString *bapspTranscode_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlayAudioChainSubPipet %p>", a1);
  return Mutable;
}

uint64_t FigRenderPipelineCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigBaseObject = FigRenderPipelineGetFigBaseObject(a1);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(FigBaseObject, a2, a3, a4);
}

uint64_t bapspTranscode_setLoudnessInfo(uint64_t a1, const void *a2, __int128 *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  target = 0;
  FigSimpleMutexLock();
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(DerivedStorage + 136));
  v7 = *(DerivedStorage + 120);
  *(DerivedStorage + 120) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 120);
  if (!*(DerivedStorage + 128))
  {
    if (v8)
    {
      FigBaseObject = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 112));
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v17)
      {
        v17(FigBaseObject, @"LoudnessInfo", v8);
      }
    }

    goto LABEL_14;
  }

  v9 = *MEMORY[0x1E698DA60];
  v10 = CFDictionaryContainsKey(*(DerivedStorage + 120), *MEMORY[0x1E698DA60]);
  v11 = MEMORY[0x1E695E480];
  v12 = 0;
  if (v10)
  {
    mFormatID = StreamBasicDescription->mFormatID;
    if (mFormatID > 1885547314)
    {
      if (mFormatID > 1902469938)
      {
        if (mFormatID > 2053319474)
        {
          v14 = mFormatID == 2053464883;
          v15 = 2053319475;
        }

        else
        {
          v14 = mFormatID == 1902469939;
          v15 = 2053202739;
        }
      }

      else if (mFormatID > 1902207794)
      {
        v14 = mFormatID == 1902207795;
        v15 = 1902324531;
      }

      else
      {
        v14 = mFormatID == 1885547315;
        v15 = 1885692723;
      }
    }

    else if (mFormatID > 1667575090)
    {
      if (mFormatID > 1700998450)
      {
        v14 = mFormatID == 1700998451;
        v15 = 1885430579;
      }

      else
      {
        v14 = mFormatID == 1667575091;
        v15 = 1700997939;
      }
    }

    else if (mFormatID > 1667326770)
    {
      v14 = mFormatID == 1667326771;
      v15 = 1667574579;
    }

    else
    {
      v14 = mFormatID == 1633889587;
      v15 = 1667312947;
    }

    if (v14 || mFormatID == v15)
    {
      values = CFDictionaryGetValue(*(DerivedStorage + 120), v9);
      v20 = CFDictionaryCreate(*v11, MEMORY[0x1E698DA60], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v20)
      {
        v12 = v20;
        bapspTranscode_setLoudnessInfo_cold_1(DerivedStorage);
        goto LABEL_33;
      }

LABEL_14:
      FigSimpleMutexUnlock();
      v18 = 0;
      goto LABEL_40;
    }
  }

LABEL_33:
  v21 = *v11;
  v22 = *MEMORY[0x1E6962DF0];
  v23 = *(DerivedStorage + 120);
  v29 = *a3;
  v30 = *(a3 + 2);
  v24 = FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker(v21, v22, v23, &v29, &target);
  if (v24)
  {
LABEL_36:
    v18 = v24;
    goto LABEL_38;
  }

  CMSetAttachment(target, v22, *(DerivedStorage + 120), 0);
  CMSetAttachment(target, @"SBUFForAutoOrder", *MEMORY[0x1E695E4D0], 0);
  v25 = *(DerivedStorage + 80);
  v26 = target;
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v27)
  {
    v24 = v27(v25, v26);
    goto LABEL_36;
  }

  v18 = 4294954514;
LABEL_38:
  FigSimpleMutexUnlock();
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_40:
  if (target)
  {
    CFRelease(target);
  }

  return v18;
}

uint64_t bapspTranscode_startAudioChain(uint64_t a1, uint64_t a2, uint64_t a3, opaqueCMSampleBuffer *a4, int a5, int a6)
{
  v28 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 42) || *(DerivedStorage + 41))
  {
    goto LABEL_22;
  }

  if ((*(a2 + 12) & 0x1D) != 1)
  {
    bapspTranscode_startAudioChain_cold_1(&time);
    value_low = LODWORD(time.value);
    goto LABEL_24;
  }

  if (dword_1EAF175F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Float32 = FigCFNumberCreateFloat32();
  if (!Float32)
  {
LABEL_22:
    value_low = 0;
LABEL_24:
    FigSimpleMutexUnlock();
    return value_low;
  }

  v14 = Float32;
  FigBaseObject = FigRenderPipelineGetFigBaseObject(*(DerivedStorage + 112));
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v16)
  {
    started = v16(FigBaseObject, @"OfflineAudioQueueRate", v14);
    if (started)
    {
      goto LABEL_25;
    }

    if (a5)
    {
      started = FigAudioQueueOfflineMixerReset(*(DerivedStorage + 104), 0, 1);
      if (started)
      {
        goto LABEL_25;
      }
    }

    if (a6)
    {
      *&v25.value = *a2;
      v25.epoch = *(a2 + 16);
      v18 = *(CMBaseObjectGetDerivedStorage() + 104);
      time = v25;
      v26 = **&MEMORY[0x1E6960C68];
      started = FigAudioQueueOfflineMixerStartRenderingForTimeRange(v18, &time, &v26);
      if (started)
      {
        goto LABEL_25;
      }
    }

    if (!a4)
    {
      goto LABEL_16;
    }

    bapspTranscode_updateLastSbufInfo(a1, a4);
    v19 = *(DerivedStorage + 64);
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v20)
    {
      started = v20(v19, a4);
      if (!started)
      {
LABEL_16:
        v21 = *(DerivedStorage + 112);
        v26 = *a2;
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v22)
        {
          time = v26;
          value_low = v22(v21, &time);
          if (!value_low)
          {
            *(DerivedStorage + 41) = 1;
          }

          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_25:
      value_low = started;
      goto LABEL_20;
    }
  }

LABEL_19:
  value_low = 4294954514;
LABEL_20:
  FigSimpleMutexUnlock();
  CFRelease(v14);
  return value_low;
}

uint64_t bapspTranscode_prepareToFinish(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  v5 = DerivedStorage;
  bapspTranscode_updateLastSbufInfo(a1, a2);
  v6 = *(v5 + 64);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, a2);
}

CMTime *bapspTranscode_updateLastSbufInfo(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMSampleBufferGetOutputDuration(&time1, a2);
  value = time1.value;
  flags = time1.flags;
  timescale = time1.timescale;
  epoch = time1.epoch;
  result = CMSampleBufferGetOutputPresentationTimeStamp(&time1, a2);
  v18 = time1.value;
  v7 = time1.flags;
  v19 = time1.timescale;
  if (time1.flags)
  {
    v8 = time1.epoch;
    time1.value = value;
    time1.timescale = timescale;
    time1.flags = flags;
    time1.epoch = epoch;
    time2 = **&MEMORY[0x1E6960CC0];
    result = CMTimeCompare(&time1, &time2);
    if (result >= 1)
    {
      if (*(DerivedStorage + 156))
      {
        time1 = *(DerivedStorage + 144);
        time2.value = v18;
        time2.timescale = v19;
        time2.flags = v7;
        time2.epoch = v8;
        if (CMTimeCompare(&time1, &time2))
        {
          if (dword_1EAF175F0)
          {
            v13 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v9 = MEMORY[0x1E6960C70];
          *(DerivedStorage + 144) = *MEMORY[0x1E6960C70];
          *(DerivedStorage + 160) = *(v9 + 16);
        }
      }

      if ((*(DerivedStorage + 156) & 1) == 0)
      {
        *(DerivedStorage + 144) = v18;
        *(DerivedStorage + 152) = v19;
        *(DerivedStorage + 156) = v7;
        *(DerivedStorage + 160) = v8;
      }

      time2 = *(DerivedStorage + 144);
      rhs.value = value;
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      result = CMTimeAdd(&time1, &time2, &rhs);
      *(DerivedStorage + 144) = time1;
    }
  }

  return result;
}

void bapspTranscode_postNotification(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  v7 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __bapspTranscode_postNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_93;
  block[4] = a2;
  block[5] = a1;
  block[6] = a3;
  dispatch_async(v7, block);
}

void __bapspTranscode_postNotification_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t bapspTranscode_terminateQueueWithEndMarker()
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  target = 0;
  if (dword_1EAF175F0)
  {
    LODWORD(end.value) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CMSampleBufferCreate(*(DerivedStorage + 56), 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target))
  {
    bapspTranscode_terminateQueueWithEndMarker_cold_1(&range);
    value_low = LODWORD(range.start.value);
  }

  else
  {
    CMSetAttachment(target, *MEMORY[0x1E6960490], *MEMORY[0x1E695E4D0], 1u);
    start = **&MEMORY[0x1E6960CC0];
    end = start;
    CMTimeRangeFromTimeToTime(&range, &start, &end);
    v2 = CMTimeRangeCopyAsDictionary(&range, *MEMORY[0x1E695E480]);
    CMSetAttachment(target, *MEMORY[0x1E6962E10], v2, 1u);
    v3 = *(DerivedStorage + 64);
    v4 = target;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v5(v3, v4);
    }

    *(DerivedStorage + 43) = 1;
    if (v2)
    {
      CFRelease(v2);
    }

    value_low = 0;
  }

  if (target)
  {
    CFRelease(target);
  }

  return value_low;
}

uint64_t __FigBufferedAirPlayAudioChainSubPipeIsSenderSideMixingArchitectureEnabled_block_invoke_1()
{
  result = FigGetCFPreferenceNumberWithDefault();
  _MergedGlobals_99 = result;
  return result;
}

CMTime *OUTLINED_FUNCTION_7_69@<X0>(int a1@<W8>, CMTime *lhs, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *rhsa, int rhs_8, int rhs_12, uint64_t rhs_16, uint64_t a12, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  rhsa = *v23;
  rhs_8 = *(v23 + 8);
  rhs_12 = a1;
  rhs_16 = v22;

  return CMTimeAdd(&a21, &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_12_49()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_13_40()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_20_29()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_21_27(void *value)
{

  CFDictionarySetValue(v2, v1, value);
}

uint64_t OUTLINED_FUNCTION_22_28(uint64_t result)
{
  *(v3 - 228) = 2048;
  *(v1 + 206) = v2;
  *(v3 - 218) = 2082;
  *(v3 - 216) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_36()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_24_23()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_29_22()
{

  return FigSimpleMutexLock();
}

CFNumberRef OUTLINED_FUNCTION_30_21(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberIntType, a3);
}

BOOL OUTLINED_FUNCTION_39_18(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, os_log_type_t type, int a18)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_40_19(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

void OUTLINED_FUNCTION_41_20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CMAttachmentBearerRef target)
{
  v22 = *v19;
  v23 = *v20;

  CMSetAttachment(target, v22, v23, 0);
}

uint64_t OUTLINED_FUNCTION_42_20(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker(a1, v27, v28, &a27, &a18);
}

const void *OUTLINED_FUNCTION_45_16()
{

  return CFDictionaryGetValue(v1, v0);
}

uint64_t FigTTMLSetCreate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    FigTTMLNodeGetClassID();
    v7 = CMDerivedObjectCreate();
    if (!v7)
    {
      FigBytePumpGetFigBaseObject(0);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v9 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
      if (v9)
      {
        return v9;
      }

      else
      {
        v7 = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
        if (!v7)
        {
          *a3 = 0;
          *(a3 + 8) = 0;
          FigTTMLParseNode(a2, figTTMLSetConsumeChildNode, a3);
          v7 = v10;
          if (!v10)
          {
            *a4 = 0;
          }
        }
      }
    }
  }

  else
  {
    FigTTMLSetCreate_cold_1(&v12);
    return v12;
  }

  return v7;
}

uint64_t figTTMLSetConsumeChildNode(uint64_t a1, uint64_t *a2, void *a3)
{
  FigBytePumpGetFigBaseObject(*a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (a3)
  {
    if (!result)
    {
      *a3 = 0;
    }
  }

  return result;
}

void figTTMLSet_Finalize(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLSet_CopyDebugDesc(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"set: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLSet_CopyChildNodeArray(const void *a1, CFMutableArrayRef *a2)
{
  if (a2)
  {
    v3 = CFGetAllocator(a1);
    *a2 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  }

  else
  {
    figTTMLSet_CopyChildNodeArray_cold_1();
  }

  return 0;
}

uint64_t figTTMLSet_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 1;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLSet_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigVideoCompositorCreateBasic(uint64_t a1, uint64_t a2, void *a3)
{
  FigVideoCompositorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (!v4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 80) = 1065353216;
    *(DerivedStorage + 384) = 0x7FFFFFFFLL;
    *(DerivedStorage + 416) = 0x7FFFFFFFLL;
    *(DerivedStorage + 96) = 1;
    *(DerivedStorage + 248) = 0;
    *(DerivedStorage + 256) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 264) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 272) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 280) = FigDispatchQueueCreateWithPriority();
    *(DerivedStorage + 288) = dispatch_group_create();
    *a3 = 0;
  }

  return v4;
}

void basicVideoCompositor_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 256);
  if (v1)
  {
    dispatch_sync(v1, &__block_literal_global_77);
    dispatch_release(*(DerivedStorage + 256));
    *(DerivedStorage + 256) = 0;
  }

  v2 = *(DerivedStorage + 264);
  if (v2)
  {
    dispatch_sync(v2, &__block_literal_global_7_1);
    dispatch_release(*(DerivedStorage + 264));
    *(DerivedStorage + 264) = 0;
  }

  v3 = *(DerivedStorage + 272);
  if (v3)
  {
    dispatch_sync(v3, &__block_literal_global_10);
    dispatch_release(*(DerivedStorage + 272));
    *(DerivedStorage + 272) = 0;
  }

  v4 = *(DerivedStorage + 280);
  if (v4)
  {
    dispatch_sync(v4, &__block_literal_global_13);
    dispatch_release(*(DerivedStorage + 280));
    *(DerivedStorage + 280) = 0;
  }

  v5 = *(DerivedStorage + 288);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 288) = 0;
  }

  v6 = *(DerivedStorage + 32);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 32) = 0;
  }

  v7 = *(DerivedStorage + 40);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 40) = 0;
  }

  v8 = *(DerivedStorage + 48);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 48) = 0;
  }

  v9 = *(DerivedStorage + 56);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 56) = 0;
  }

  v10 = *(DerivedStorage + 64);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 64) = 0;
  }

  v11 = *(DerivedStorage + 72);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 72) = 0;
  }

  v12 = *(DerivedStorage + 104);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 104) = 0;
  }

  v13 = *(DerivedStorage + 160);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 160) = 0;
  }

  v14 = *(DerivedStorage + 88);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 88) = 0;
  }

  bvc_releaseLayerArrays();
}

__CFString *basicVideoCompositor_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  cf = 0;
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigVideoCompositor_Basic %p retainCount: %ld allocator: %p ", a1, v4, v5);
  bvc_copyPerformanceDictionary(a1, &cf);
  if (cf)
  {
    CFStringAppendFormat(Mutable, 0, @", performanceDictionary %@", cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t basicVideoCompositor_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"RenderDimensions"))
  {
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*DerivedStorage);
LABEL_3:
    *a4 = DictionaryRepresentation;
    return 0;
  }

  if (CFEqual(a2, @"RenderPixelAspectRatio"))
  {
    v10 = *(DerivedStorage + 32);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"RenderEdgeProcessingPixels"))
  {
    v10 = *(DerivedStorage + 40);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredAttributes"))
  {
    v10 = *(DerivedStorage + 48);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredYCbCrMatrix"))
  {
    v10 = *(DerivedStorage + 56);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredColorPrimaries"))
  {
    v10 = *(DerivedStorage + 64);
    goto LABEL_16;
  }

  if (CFEqual(a2, @"DestinationPixelBufferDesiredTransferFunction"))
  {
    v10 = *(DerivedStorage + 72);
LABEL_16:
    *a4 = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    return 0;
  }

  if (CFEqual(a2, @"SourcePixelBufferAttributes"))
  {

    return bvc_createPixelBufferAttributesDictionary(a3, a4);
  }

  if (CFEqual(a2, @"RenderScale"))
  {
    DictionaryRepresentation = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, (DerivedStorage + 80));
    goto LABEL_3;
  }

  if (CFEqual(a2, @"CanApplyRenderScale"))
  {
    DictionaryRepresentation = *MEMORY[0x1E695E4D0];
    if (!*MEMORY[0x1E695E4D0])
    {
      goto LABEL_3;
    }

    goto LABEL_30;
  }

  if (CFEqual(a2, @"PixelBufferPoolSharingID"))
  {
    DictionaryRepresentation = *(DerivedStorage + 88);
    if (!DictionaryRepresentation)
    {
      goto LABEL_3;
    }

LABEL_30:
    DictionaryRepresentation = CFRetain(DictionaryRepresentation);
    goto LABEL_3;
  }

  if (CFEqual(a2, @"LoopTimeRange"))
  {
    v12 = *MEMORY[0x1E695E480];
    v13 = *(DerivedStorage + 328);
    *&v14.start.value = *(DerivedStorage + 312);
    *&v14.start.epoch = v13;
    *&v14.duration.timescale = *(DerivedStorage + 344);
    DictionaryRepresentation = CMTimeRangeCopyAsDictionary(&v14, v12);
    goto LABEL_3;
  }

  if (CFEqual(a2, @"PerformanceDictionary"))
  {
    bvc_copyPerformanceDictionary(a1, a4);
    return 0;
  }

  if (CFEqual(a2, @"SourceColorConformanceCapabilityLevel"))
  {
    DictionaryRepresentation = FigCFNumberCreateUInt32();
    goto LABEL_3;
  }

  if (CFEqual(a2, @"SupportsSpatialSourceBuffers"))
  {
    *a4 = *MEMORY[0x1E695E4C0];
    return 0;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t basicVideoCompositor_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"RenderDimensions", a2))
  {
    size.start.value = 0;
    *&size.start.timescale = 0;
    if (a3)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID == CFGetTypeID(a3) && CGSizeMakeWithDictionaryRepresentation(a3, &size) && *&size.start.value > 0.0 && *&size.start.timescale > 0.0)
      {
        *DerivedStorage = *&size.start.value;
LABEL_47:
        v22 = *(DerivedStorage + 104);
        if (v22)
        {
          CFRelease(v22);
          *(DerivedStorage + 104) = 0;
        }

        v14 = 0;
        *(DerivedStorage + 96) = 1;
        return v14;
      }
    }

    goto LABEL_19;
  }

  if (CFEqual(@"RenderPixelAspectRatio", a2))
  {
    if (!a3)
    {
      v13 = *(DerivedStorage + 32);
      *(DerivedStorage + 32) = 0;
      if (!v13)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v7 = CFDictionaryGetTypeID();
    if (v7 != CFGetTypeID(a3) || (Value = CFDictionaryGetValue(a3, *MEMORY[0x1E6965EF0]), v9 = CFDictionaryGetValue(a3, *MEMORY[0x1E6965F00]), LODWORD(size.start.value) = 0, valuePtr = 0, !Value) || (v10 = v9, v11 = CFNumberGetTypeID(), v11 != CFGetTypeID(Value)) || (CFNumberGetValue(Value, kCFNumberIntType, &size), SLODWORD(size.start.value) < 1) || !v10 || (v12 = CFNumberGetTypeID(), v12 != CFGetTypeID(v10)) || (CFNumberGetValue(v10, kCFNumberIntType, &valuePtr), valuePtr < 1))
    {
LABEL_19:
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }

    v13 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = a3;
    goto LABEL_34;
  }

  if (CFEqual(@"RenderEdgeProcessingPixels", a2))
  {
    if (a3)
    {
      v15 = CFArrayGetTypeID();
      if (v15 == CFGetTypeID(a3) && CFArrayGetCount(a3) == 4)
      {
        v16 = 0;
        while (1)
        {
          v17 = CFNumberGetTypeID();
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v16);
          if (v17 != CFGetTypeID(ValueAtIndex))
          {
            break;
          }

          if (++v16 == 4)
          {
            v13 = *(DerivedStorage + 40);
            *(DerivedStorage + 40) = a3;
            goto LABEL_34;
          }
        }
      }

      goto LABEL_36;
    }

    v13 = *(DerivedStorage + 40);
    *(DerivedStorage + 40) = 0;
    if (!v13)
    {
      goto LABEL_47;
    }

LABEL_46:
    CFRelease(v13);
    goto LABEL_47;
  }

  if (!CFEqual(@"DestinationPixelBufferDesiredAttributes", a2))
  {
    if (CFEqual(@"DestinationPixelBufferDesiredYCbCrMatrix", a2))
    {
      if (!a3)
      {
        v14 = *(DerivedStorage + 56);
        *(DerivedStorage + 56) = 0;
LABEL_71:
        if (!v14)
        {
          return v14;
        }

        CFRelease(v14);
        return 0;
      }

      v21 = CFStringGetTypeID();
      if (v21 != CFGetTypeID(a3))
      {
        goto LABEL_36;
      }

      v14 = *(DerivedStorage + 56);
      *(DerivedStorage + 56) = a3;
LABEL_62:
      CFRetain(a3);
      goto LABEL_71;
    }

    if (CFEqual(@"DestinationPixelBufferDesiredColorPrimaries", a2))
    {
      if (!a3)
      {
        v14 = *(DerivedStorage + 64);
        *(DerivedStorage + 64) = 0;
        goto LABEL_71;
      }

      v23 = CFStringGetTypeID();
      if (v23 != CFGetTypeID(a3))
      {
        goto LABEL_36;
      }

      v14 = *(DerivedStorage + 64);
      *(DerivedStorage + 64) = a3;
      goto LABEL_62;
    }

    if (CFEqual(@"DestinationPixelBufferDesiredTransferFunction", a2))
    {
      if (!a3)
      {
        v14 = *(DerivedStorage + 72);
        *(DerivedStorage + 72) = 0;
        goto LABEL_71;
      }

      v24 = CFStringGetTypeID();
      if (v24 != CFGetTypeID(a3))
      {
        goto LABEL_36;
      }

      v14 = *(DerivedStorage + 72);
      *(DerivedStorage + 72) = a3;
      goto LABEL_62;
    }

    if (CFEqual(@"RenderScale", a2))
    {
      LODWORD(size.start.value) = 1065353216;
      if (!a3)
      {
        v26 = 1.0;
        goto LABEL_83;
      }

      v25 = CFGetTypeID(a3);
      if (v25 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a3, kCFNumberFloatType, &size);
        v26 = *&size.start.value;
        if (*&size.start.value > 0.0)
        {
          goto LABEL_83;
        }

        fig_log_get_emitter();
      }

      else
      {
        fig_log_get_emitter();
      }

      v14 = FigSignalErrorAtGM();
      if (v14)
      {
        return v14;
      }

      v26 = *&size.start.value;
LABEL_83:
      *(DerivedStorage + 80) = v26;
      goto LABEL_47;
    }

    if (CFEqual(@"ClientPID", a2))
    {
      if (!a3)
      {
        *(DerivedStorage + 252) = 0;
        goto LABEL_95;
      }

      v27 = CFGetTypeID(a3);
      if (v27 != CFNumberGetTypeID())
      {
        return 0;
      }

      v28 = (DerivedStorage + 252);
    }

    else
    {
      if (!CFEqual(@"WorkerThreadPriority", a2))
      {
        if (CFEqual(@"HighQualityRendering", a2))
        {
          if (a3)
          {
            v30 = CFGetTypeID(a3);
            if (v30 == CFBooleanGetTypeID())
            {
              v14 = 0;
            }

            else
            {
              fig_log_get_emitter();
              v14 = FigSignalErrorAtGM();
            }

            if (CFEqual(a3, *MEMORY[0x1E695E4D0]))
            {
              *(DerivedStorage + 172) = 1;
              return v14;
            }
          }

          else
          {
            v14 = 0;
          }

          *(DerivedStorage + 172) = 0;
          return v14;
        }

        if (!CFEqual(@"PixelBufferPoolSharingID", a2))
        {
          if (CFEqual(@"LoopTimeRange", a2))
          {
            if (!a3)
            {
              v14 = 0;
              v34 = MEMORY[0x1E6960C98];
              v35 = *(MEMORY[0x1E6960C98] + 16);
              *(DerivedStorage + 312) = *MEMORY[0x1E6960C98];
              *(DerivedStorage + 328) = v35;
              *(DerivedStorage + 344) = *(v34 + 32);
              return v14;
            }

            v31 = CFGetTypeID(a3);
            if (v31 == CFDictionaryGetTypeID())
            {
              v32 = (DerivedStorage + 312);
              CMTimeRangeMakeFromDictionary(&size, a3);
              v14 = 0;
              v33 = *&size.start.epoch;
              *v32 = *&size.start.value;
              v32[1] = v33;
              v32[2] = *&size.duration.timescale;
              return v14;
            }
          }

          goto LABEL_36;
        }

        v14 = *(DerivedStorage + 88);
        *(DerivedStorage + 88) = a3;
        if (!a3)
        {
          goto LABEL_71;
        }

        goto LABEL_62;
      }

      if (!a3)
      {
        *(DerivedStorage + 248) = 0;
        goto LABEL_95;
      }

      v29 = CFGetTypeID(a3);
      if (v29 != CFNumberGetTypeID())
      {
        return 0;
      }

      v28 = (DerivedStorage + 248);
    }

    CFNumberGetValue(a3, kCFNumberSInt32Type, v28);
LABEL_95:
    basicVideoCompositor_updateDispatchQueuesClientPidAndWorkerThreadPriority();
    return 0;
  }

  if (!a3)
  {
    v13 = *(DerivedStorage + 48);
    *(DerivedStorage + 48) = 0;
    if (!v13)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v19 = CFDictionaryGetTypeID();
  if (v19 == CFGetTypeID(a3))
  {
    v13 = *(DerivedStorage + 48);
    *(DerivedStorage + 48) = a3;
LABEL_34:
    CFRetain(a3);
    if (!v13)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_36:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void bvc_releaseLayerArrays()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = DerivedStorage;
  v2 = *(DerivedStorage + 176);
  if (v2)
  {
    v3 = *(DerivedStorage + 184);
    do
    {
      if (*v3)
      {
        CFRelease(*v3);
        *v3 = 0;
      }

      ++v3;
      --v2;
    }

    while (v2);
    v4 = *(v1 + 176);
    if (v4)
    {
      v5 = *(v1 + 192);
      do
      {
        if (*v5)
        {
          CFRelease(*v5);
          *v5 = 0;
        }

        ++v5;
        --v4;
      }

      while (v4);
      v6 = *(v1 + 176);
      if (v6)
      {
        v7 = *(v1 + 200);
        do
        {
          if (*v7)
          {
            CFRelease(*v7);
            *v7 = 0;
          }

          ++v7;
          --v6;
        }

        while (v6);
        v8 = *(v1 + 176);
        if (v8)
        {
          v9 = *(v1 + 208);
          do
          {
            if (*v9)
            {
              CFRelease(*v9);
              *v9 = 0;
            }

            ++v9;
            --v8;
          }

          while (v8);
          v10 = *(v1 + 176);
          if (v10)
          {
            v11 = *(v1 + 232);
            do
            {
              if (*v11)
              {
                CFRelease(*v11);
                *v11 = 0;
              }

              ++v11;
              --v10;
            }

            while (v10);
            v12 = *(v1 + 176);
            if (v12)
            {
              v13 = *(v1 + 240);
              do
              {
                if (*v13)
                {
                  CFRelease(*v13);
                  *v13 = 0;
                }

                ++v13;
                --v12;
              }

              while (v12);
            }
          }
        }
      }
    }
  }

  free(*(v1 + 184));
  *(v1 + 184) = 0;
  free(*(v1 + 192));
  *(v1 + 192) = 0;
  free(*(v1 + 200));
  *(v1 + 200) = 0;
  free(*(v1 + 208));
  *(v1 + 208) = 0;
  free(*(v1 + 216));
  *(v1 + 216) = 0;
  free(*(v1 + 224));
  *(v1 + 224) = 0;
  free(*(v1 + 232));
  *(v1 + 232) = 0;
  free(*(v1 + 240));
  *(v1 + 240) = 0;
}

void bvc_copyPerformanceDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v25 = 0;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    v9 = 0.0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    keys[0] = @"NumberOfSourceFramesPassedThrough";
    v4 = *MEMORY[0x1E695E480];
    values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, (DerivedStorage + 360));
    keys[1] = @"NumberOfSinglePassCompositions";
    values[1] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 364));
    keys[2] = @"NumberOfMultiPassCompositions";
    values[2] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 368));
    valuePtr = *(DerivedStorage + 376) + *(DerivedStorage + 372) + *(DerivedStorage + 380);
    keys[3] = @"TotalNumberOfLayers";
    values[3] = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
    keys[4] = @"TotalNumberOfLayersSkipped";
    values[4] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 372));
    keys[5] = @"TotalNumberOfLayersComposedUsingFastPath";
    values[5] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 376));
    keys[6] = @"TotalNumberOfLayersComposedUsingSlowPath";
    values[6] = CFNumberCreate(v4, kCFNumberIntType, (DerivedStorage + 380));
    if (*(DerivedStorage + 408) < 1)
    {
      v5 = 7;
    }

    else
    {
      v9 = (*(DerivedStorage + 384) / 1000000.0);
      *&v19 = @"MinPreprocessingTime";
      *&v11 = CFNumberCreate(v4, kCFNumberDoubleType, &v9);
      v9 = (*(DerivedStorage + 392) / 1000000.0);
      *(&v19 + 1) = @"MaxPreprocessingTime";
      *(&v11 + 1) = CFNumberCreate(v4, kCFNumberDoubleType, &v9);
      v9 = (*(DerivedStorage + 400) / (*(DerivedStorage + 408) * 1000000.0));
      *&v20 = @"AveragePreprocessingTime";
      *&v12 = CFNumberCreate(v4, kCFNumberDoubleType, &v9);
      v5 = 10;
    }

    if (*(DerivedStorage + 440) >= 1)
    {
      v9 = (*(DerivedStorage + 416) / 1000000.0);
      keys[v5] = @"MinProcessingTime";
      values[v5] = CFNumberCreate(v4, kCFNumberDoubleType, &v9);
      v9 = (*(DerivedStorage + 424) / 1000000.0);
      keys[v5 + 1] = @"MaxProcessingTime";
      values[v5 + 1] = CFNumberCreate(v4, kCFNumberDoubleType, &v9);
      v9 = (*(DerivedStorage + 432) / (*(DerivedStorage + 440) * 1000000.0));
      keys[v5 + 2] = @"AverageProcessingTime";
      values[v5 + 2] = CFNumberCreate(v4, kCFNumberDoubleType, &v9);
      v5 += 3;
    }

    v6 = v5;
    v7 = values;
    *a2 = CFDictionaryCreate(v4, keys, values, v6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    do
    {
      if (*v7)
      {
        CFRelease(*v7);
      }

      ++v7;
      --v6;
    }

    while (v6);
  }
}