uint64_t CGPDFSourceGetLength(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    result = *(result + 16);
    if (result == -1)
    {
      _CGHandleAssert("CGPDFSourceGetLength", 179, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFSource.c", "source->length != (pdf_off_t)-1", "source length would overflow", a6, a7, a8, v8);
    }
  }

  return result;
}

uint64_t CGPDFSourceRewind(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    *(result + 208) = 0;
    if (*(result + 112) > 0 || *(result + 104))
    {
      if (*(result + 40))
      {
        *(result + 32) = 0;
      }

      else
      {
        v9 = *(result + 48);
        if (!v9)
        {
          _CGHandleAssert("CGPDFSourceRewind", 333, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Reader/CGPDFSource.c", "source->filter_callbacks.rewind != NULL", "filter rewind callback is missing", a6, a7, a8, v11);
        }

        result = v9(*(result + 80));
      }

      v8[13] = 0;
      v8[14] = 0;
    }

    v10 = v8[11];
    v8[15] = 0;
    v8[16] = v10;
  }

  return result;
}

uint64_t CGPDFSourceGetPosition(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = a1[11];
  if (a1[18])
  {
    v2 = a1[24];
    v1 += a1[15];
  }

  else
  {
    v2 = a1[16];
  }

  return v2 - v1 + a1[14];
}

uint64_t CGPDFSourceIsAtEOF(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 208);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

__CFString *CGPDFPageCopyPageLabel(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(*(a1 + 40) + 8);
  if (!v1)
  {
    return 0;
  }

  value = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    CGAnalyticsSendPDFDocumentGetCatalogEvent();
    catalog = pdf_document_get_catalog(**(*(v2 + 16) + 16));
  }

  else
  {
    catalog = 0;
  }

  Dictionary = CGPDFDictionaryGetDictionary(catalog, "PageLabels", &value);
  v6 = MEMORY[0x1E695E480];
  if (Dictionary)
  {
    v7 = v1 - 1;
    nums_for_number = get_nums_for_number(value, v1 - 1);
    if (nums_for_number)
    {
      v9 = nums_for_number;
      v11 = *(nums_for_number + 2);
      v10 = *(nums_for_number + 3);
      if (((v10 - v11) & 8) != 0)
      {
LABEL_32:
        pdf_error("invalid page label dictionary: invalid /Nums entry.");
      }

      else
      {
        dict = 0;
        if (v10 != v11)
        {
          v12 = 0;
          v13 = 0;
          string = 0;
          v31 = 0;
          v14 = (v10 - v11) >> 3;
          v29 = 0;
          v33 = 0;
          do
          {
            if (!CGPDFArrayGetInteger(v9, v13, &v33))
            {
              goto LABEL_32;
            }

            v15 = v33;
            if (v33 > v7)
            {
              break;
            }

            v16 = v13 + 1;
            if (!CGPDFArrayGetDictionary(v9, v16, &dict))
            {
              goto LABEL_32;
            }

            v13 = v16 + 1;
            v12 = v15;
          }

          while (v13 < v14);
          v17 = dict;
          if (!dict)
          {
            goto LABEL_33;
          }

          if (!CGPDFDictionaryGetName(dict, "S", &v31))
          {
            v31 = 0;
          }

          if (!CGPDFDictionaryGetString(v17, "P", &string))
          {
            string = 0;
          }

          if (!CGPDFDictionaryGetInteger(v17, "St", &v29))
          {
            v29 = 1;
          }

          Mutable = CFStringCreateMutable(*v6, 0);
          if (string)
          {
            v18 = CGPDFStringCopyTextString(string);
            if (v18)
            {
              v19 = v18;
              CFStringAppend(Mutable, v18);
              CFRelease(v19);
            }
          }

          if (!v31)
          {
LABEL_45:
            if (Mutable)
            {
              return Mutable;
            }

            goto LABEL_33;
          }

          v20 = v29 + v7 - v12;
          v21 = *v31;
          if (v21 <= 0x51)
          {
            if (v21 != 65)
            {
              if (v21 == 68)
              {
                CFStringAppendFormat(Mutable, 0, @"%ld", v29 + v7 - v12);
                goto LABEL_45;
              }

LABEL_44:
              goto LABEL_45;
            }

            v26 = Mutable;
            v27 = 1;
          }

          else
          {
            if (v21 == 82)
            {
              v22 = Mutable;
              v23 = 1;
              goto LABEL_40;
            }

            if (v21 != 97)
            {
              if (v21 == 114)
              {
                v22 = Mutable;
                v23 = 0;
LABEL_40:
                append_roman(v22, v23, v20);
                goto LABEL_45;
              }

              goto LABEL_44;
            }

            v26 = Mutable;
            v27 = 0;
          }

          append_alpha(v26, v27, v20);
          goto LABEL_45;
        }
      }
    }
  }

LABEL_33:
  v24 = CFLocaleCopyCurrent();
  Mutable = CFStringCreateWithFormat(*v6, v24, @"%lu", v1);
  if (v24)
  {
    CFRelease(v24);
  }

  return Mutable;
}

CGPDFArrayRef get_nums_for_number(CGPDFDictionary *a1, CGPDFInteger a2)
{
  value = 0;
  dict = a1;
  v10 = 0;
  if (CGPDFDictionaryGetArray(a1, "Kids", &value))
  {
    if (value)
    {
      v4 = *(value + 3) - *(value + 2);
      if (v4)
      {
        v5 = 0;
        v6 = v4 >> 3;
        while (1)
        {
          if (!CGPDFArrayGetDictionary(value, v5, &dict))
          {
            pdf_error("missing or invalid number table dictionary.", v10);
            return 0;
          }

          v14 = 0;
          array = 0;
          v13 = 0;
          v7 = CGPDFDictionaryGetArray(dict, "Limits", &array);
          v8 = "invalid number table: missing /Limits entry.";
          if (!v7)
          {
            goto LABEL_15;
          }

          if (!array || *(array + 3) - *(array + 2) != 16 || !CGPDFArrayGetInteger(array, 0, &v14) || !CGPDFArrayGetInteger(array, 1uLL, &v13))
          {
            break;
          }

          if (v14 <= a2 && v13 >= a2)
          {
            return get_nums_for_number(dict, a2);
          }

LABEL_16:
          if (v6 == ++v5)
          {
            return 0;
          }
        }

        v8 = "invalid number table: invalid /Limits entry.";
LABEL_15:
        pdf_error(v8, v10);
        goto LABEL_16;
      }
    }

    return 0;
  }

  else
  {
    if (!CGPDFDictionaryGetArray(a1, "Nums", &v10))
    {
      pdf_error("invalid number table: no /Kids or /Nums entry.", v10);
      return 0;
    }

    return v10;
  }
}

void append_roman(CFMutableStringRef theString, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  if (a3 - 5000 > 0xFFFFFFFFFFFFEC78)
  {
    cStr[0] = 0;
    if (a3 >= 0x3E8)
    {
      v5 = a3 / 0x3E8u;
      __strcat_chk();
      v3 = (v3 - 1000 * v5);
    }

    if (v3 >= 0x64)
    {
      __strcat_chk();
      v3 = v3 % 0x64u;
    }

    if (v3 >= 0xA)
    {
      __strcat_chk();
      v3 = v3 % 0xAu;
    }

    if (v3)
    {
      __strcat_chk();
    }

    CFStringAppendCString(theString, cStr, 0x600u);
  }

  else
  {
    pdf_error("Cannot convert %ld to Roman numerals.", a3);
  }
}

void append_alpha(__CFString *a1, int a2, uint64_t a3)
{
  v4 = (a3 - 1) / 26;
  v5 = append_alpha_alphabet[(a3 - 1) % 26];
  if (!a2)
  {
    v5 = *(MEMORY[0x1E69E9830] + 4 * v5 + 1084);
  }

  v6 = malloc_type_malloc(2 * (v4 + 1), 0x1000040BDFB0063uLL);
  v7 = v6;
  if (v4 != -1)
  {
    v8 = vdupq_n_s64(v4);
    v9 = (v4 & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = xmmword_18439C740;
    v11 = xmmword_18439C750;
    v12 = xmmword_18439C760;
    v13 = xmmword_18439C670;
    v14 = v6 + 4;
    v15 = vdupq_n_s64(8uLL);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v8, v13));
      if (vuzp1_s8(vuzp1_s16(v16, *v8.i8), *v8.i8).u8[0])
      {
        *(v14 - 4) = v5;
      }

      if (vuzp1_s8(vuzp1_s16(v16, *&v8), *&v8).i8[1])
      {
        *(v14 - 3) = v5;
      }

      if (vuzp1_s8(vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v12))), *&v8).i8[2])
      {
        *(v14 - 2) = v5;
        *(v14 - 1) = v5;
      }

      v17 = vmovn_s64(vcgeq_u64(v8, v11));
      if (vuzp1_s8(*&v8, vuzp1_s16(v17, *&v8)).i32[1])
      {
        *v14 = v5;
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(v17, *&v8)).i8[5])
      {
        v14[1] = v5;
      }

      if (vuzp1_s8(*&v8, vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v10)))).i8[6])
      {
        v14[2] = v5;
        v14[3] = v5;
      }

      v11 = vaddq_s64(v11, v15);
      v12 = vaddq_s64(v12, v15);
      v13 = vaddq_s64(v13, v15);
      v14 += 8;
      v10 = vaddq_s64(v10, v15);
      v9 -= 8;
    }

    while (v9);
  }

  CFStringAppendCharacters(a1, v6, v4 + 1);

  free(v7);
}

int *resample_byte_h_3cpp_armv7(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, void *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = 2 * a2 + 8;
    v10 = a8;
    do
    {
      if (a4)
      {
        v11 = *a6 + *a7 * v8;
        v12 = *(a5 + 8 * v8);
        v13 = a4;
        v14 = result;
        do
        {
          v15 = v14[1];
          v16 = (v14 + 2);
          v17 = v11 + 3 * *v14;
          if (v15 < 8)
          {
            v32.i64[0] = 0x200000002000;
            v32.i64[1] = 0x200000002000;
            v24.i64[0] = 0;
          }

          else
          {
            v18 = v14[1];
            v19 = xmmword_18439C9E0;
            v20 = xmmword_18439C9E0;
            v21 = xmmword_18439C9E0;
            do
            {
              v36 = vld3_s8(v17);
              v17 += 24;
              v22 = *v16;
              v16 += 8;
              v23 = v18;
              v24 = vmovl_u8(v36.val[0]);
              v25 = vmovl_u8(v36.val[1]);
              *v36.val[0].i8 = vmovl_u8(v36.val[2]);
              v19 = vmlal_high_s16(vmlal_s16(v19, *v24.i8, *v22.i8), v24, v22);
              v20 = vmlal_high_s16(vmlal_s16(v20, *v25.i8, *v22.i8), v25, v22);
              v21 = vmlal_high_s16(vmlal_s16(v21, v36.val[0], *v22.i8), *v36.val[0].i8, v22);
              v18 -= 8;
            }

            while (v23 > 0xF);
            if (v15 - ((v15 & 0x7FFFFFF8u) - 8) >= 0xC)
            {
              v26 = vextq_s8(v24, v24, 8uLL).u64[0];
              do
              {
                v27 = *v16;
                v16 += 4;
                v28 = *v24.i8;
                v29 = v26;
                v30 = *v25.i8;
                v28.i8[0] = *v17;
                v29.i8[0] = *(v17 + 1);
                v30.i8[0] = *(v17 + 2);
                v28.i8[2] = *(v17 + 3);
                v29.i8[2] = *(v17 + 4);
                v30.i8[2] = *(v17 + 5);
                v28.i8[4] = *(v17 + 6);
                v29.i8[4] = *(v17 + 7);
                v30.i8[4] = *(v17 + 8);
                v31 = v18;
                v28.i8[6] = *(v17 + 9);
                v29.i8[6] = *(v17 + 10);
                v30.i8[6] = *(v17 + 11);
                v17 += 12;
                v19 = vmlal_s16(v19, v28, v27);
                v20 = vmlal_s16(v20, v29, v27);
                v21 = vmlal_s16(v21, v30, v27);
                v18 -= 4;
              }

              while (v31 > 7);
            }

            *v32.i8 = vpadd_s32(vadd_s32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)), vadd_s32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)));
            v32.i64[1] = vpaddl_s32(*&vpaddq_s32(v21, v21));
            v15 = v18;
          }

          if (v15 >= 1)
          {
            v33 = v15 + 1;
            do
            {
              v24.i8[0] = *v17;
              v24.i8[2] = *(v17 + 1);
              v24.i8[4] = *(v17 + 2);
              v34 = vld1_dup_s16(v16++);
              v32 = vmlal_s16(v32, *v24.i8, v34);
              --v33;
              v17 += 3;
            }

            while (v33 > 1);
          }

          v35 = vmovl_u16(*&vmovl_u8(vqmovn_u16(vqshrun_high_n_s32(vqshrun_n_s32(v32, 0xEuLL), v32, 0xEuLL))));
          *v12 = v35.i64[0];
          *(v12 + 8) = v35.i32[2];
          v12 += 12;
          v14 = (v14 + v9);
          --v13;
        }

        while (v13);
      }

      ++v8;
    }

    while (v8 != v10);
  }

  return result;
}

int *resample_byte_h_4cpp_armv7(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, void *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = 2 * a2 + 8;
    do
    {
      if (a4)
      {
        v10 = *a6 + *a7 * v8;
        v11 = *(a5 + 8 * v8);
        v12 = a4;
        v13 = result;
        do
        {
          v14 = v13[1];
          v15 = (v13 + 2);
          v16 = (v10 + 4 * *v13);
          v17.i64[0] = 0x200000002000;
          v17.i64[1] = 0x200000002000;
          if (v14 >= 8)
          {
            v18 = xmmword_18439C9E0;
            v19 = xmmword_18439C9E0;
            v20 = xmmword_18439C9E0;
            v21 = xmmword_18439C9E0;
            do
            {
              v35 = vld4_s8(v16);
              v16 += 32;
              v22 = v14;
              v23 = *v15;
              v15 += 8;
              v24 = vmovl_u8(v35.val[0]);
              v25 = vmovl_u8(v35.val[1]);
              v26 = vmovl_u8(v35.val[2]);
              *v35.val[0].i8 = vmovl_u8(v35.val[3]);
              v21 = vmlal_high_s16(vmlal_s16(v21, *v24.i8, *v23.i8), v24, v23);
              v20 = vmlal_high_s16(vmlal_s16(v20, *v25.i8, *v23.i8), v25, v23);
              v19 = vmlal_high_s16(vmlal_s16(v19, *v26.i8, *v23.i8), v26, v23);
              v18 = vmlal_high_s16(vmlal_s16(v18, v35.val[0], *v23.i8), *v35.val[0].i8, v23);
              v14 -= 8;
            }

            while (v22 > 0xF);
            v27 = vadd_s32(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
            *v17.i8 = vpadd_s32(vadd_s32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), vadd_s32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)));
            v17.u64[1] = vpadd_s32(vadd_s32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)), v27);
          }

          if (v14 < 2)
          {
            v30 = v14;
          }

          else
          {
            do
            {
              v28 = *v16;
              v16 += 8;
              v34 = vld2_dup_s16(v15);
              v15 += 2;
              v29 = vmovl_u8(v28);
              v17 = vmlal_s16(vmlal_s16(v17, *v29.i8, v34.val[0]), *&vextq_s8(v29, v29, 8uLL), v34.val[1]);
              v30 = v14 - 2;
              v31 = v14 > 3;
              v14 -= 2;
            }

            while (v31);
          }

          if (v30 == 1)
          {
            v32 = vld1_dup_f32(v16);
            v33 = vld1_dup_s16(v15);
            v17 = vmlal_s16(v17, *&vmovl_u8(v32), v33);
          }

          *v11++ = vmovl_u16(*&vmovl_u8(vqmovn_u16(vqshrun_high_n_s32(vqshrun_n_s32(v17, 0xEuLL), v17, 0xEuLL))));
          v13 = (v13 + v9);
          --v12;
        }

        while (v12);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

uint64_t resample_byte_v_3cpp_af_armv7(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, int8x16_t **a5, uint64_t *a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = a3 * a4;
  if (v8 >= 16 && (v8 & 0x7FFFFFF0) != 0)
  {
    v9 = 0;
    do
    {
      if (v7)
      {
        v10.i64[0] = 0x200000002000;
        v10.i64[1] = 0x200000002000;
        v11 = a6;
        v12 = v7;
        v13 = (result + 8);
        v14.i64[0] = 0x200000002000;
        v14.i64[1] = 0x200000002000;
        v15.i64[0] = 0x200000002000;
        v15.i64[1] = 0x200000002000;
        v16.i64[0] = 0x200000002000;
        v16.i64[1] = 0x200000002000;
        do
        {
          v17 = vld1_dup_s16(v13++);
          v18 = *v11++;
          v19 = (v18 + 4 * v9);
          v10 = vmlal_s16(v10, vmovn_s32(*v19), v17);
          v14 = vmlal_s16(v14, vmovn_s32(v19[1]), v17);
          v15 = vmlal_s16(v15, vmovn_s32(v19[2]), v17);
          v16 = vmlal_s16(v16, vmovn_s32(v19[3]), v17);
          --v12;
        }

        while (v12);
      }

      else
      {
        v16.i64[0] = 0x200000002000;
        v16.i64[1] = 0x200000002000;
        v15.i64[0] = 0x200000002000;
        v15.i64[1] = 0x200000002000;
        v14.i64[0] = 0x200000002000;
        v14.i64[1] = 0x200000002000;
        v10.i64[0] = 0x200000002000;
        v10.i64[1] = 0x200000002000;
      }

      v20 = vqmovn_u16(vqshrun_high_n_s32(vqshrun_n_s32(v10, 0xEuLL), v14, 0xEuLL));
      v21 = vqshrun_high_n_s32(vqshrun_n_s32(v15, 0xEuLL), v16, 0xEuLL);
      v22 = vpmax_u8(v20, vqmovn_u16(v21));
      *v6++ = vorrq_s8(vmovl_u8(*&vmovl_u8(vpmax_u8(v22, v22))), (*&vqmovn_high_u16(v20, v21) & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00)));
      v9 += 16;
    }

    while (v9 < (v8 & 0x7FFFFFF0u));
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v23 = v8 & 0xFFFFFFFC;
  if (v9 < v23)
  {
    v9 = v9;
    do
    {
      v24.i64[0] = 0x200000002000;
      v24.i64[1] = 0x200000002000;
      if (v7)
      {
        v25 = a6;
        v26 = v7;
        v27 = (result + 8);
        do
        {
          v28 = *v25++;
          v29 = vld1_dup_s16(v27++);
          v24 = vmlal_s16(v24, vmovn_s32(*(v28 + 4 * v9)), v29);
          --v26;
        }

        while (v26);
      }

      v30 = vqmovn_u16(vqshrun_high_n_s32(vqshrun_n_s32(v24, 0xEuLL), v24, 0xEuLL));
      v31 = vpmax_u8(v30, v30);
      v32 = vand_s8(vzip1_s32(vpmax_u8(v31, v31), v30), 0xFFFFFF00000000FFLL);
      v6->i32[0] = vorr_s8(v32, vdup_lane_s32(v32, 1)).u32[0];
      v6 = (v6 + 4);
      v9 += 4;
    }

    while (v9 < v23);
  }

  return result;
}

uint64_t resample_byte_v_Ncpp_armv7(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, uint8x16_t **a5, uint64_t *a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3 * a4;
  if (v9 >= 16 && (v9 & 0x7FFFFFF0) != 0)
  {
    v10 = 0;
    do
    {
      if (v7)
      {
        v11.i64[0] = 0x200000002000;
        v11.i64[1] = 0x200000002000;
        v12 = a6;
        v13 = v7;
        v14 = (result + 8);
        v15.i64[0] = 0x200000002000;
        v15.i64[1] = 0x200000002000;
        v16.i64[0] = 0x200000002000;
        v16.i64[1] = 0x200000002000;
        v17.i64[0] = 0x200000002000;
        v17.i64[1] = 0x200000002000;
        do
        {
          v18 = vld1_dup_s16(v14++);
          v19 = *v12++;
          v20 = (v19 + 4 * v10);
          v11 = vmlal_s16(v11, vmovn_s32(*v20), v18);
          v15 = vmlal_s16(v15, vmovn_s32(v20[1]), v18);
          v16 = vmlal_s16(v16, vmovn_s32(v20[2]), v18);
          v17 = vmlal_s16(v17, vmovn_s32(v20[3]), v18);
          --v13;
        }

        while (v13);
      }

      else
      {
        v17.i64[0] = 0x200000002000;
        v17.i64[1] = 0x200000002000;
        v16.i64[0] = 0x200000002000;
        v16.i64[1] = 0x200000002000;
        v15.i64[0] = 0x200000002000;
        v15.i64[1] = 0x200000002000;
        v11.i64[0] = 0x200000002000;
        v11.i64[1] = 0x200000002000;
      }

      *v6++ = vqmovn_high_u16(vqmovn_u16(vqshrun_high_n_s32(vqshrun_n_s32(v11, 0xEuLL), v15, 0xEuLL)), vqshrun_high_n_s32(vqshrun_n_s32(v16, 0xEuLL), v17, 0xEuLL));
      v10 += 16;
    }

    while (v10 < (v9 & 0x7FFFFFF0));
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 < (v9 & 0xFFFFFFFC))
  {
    v10 = v10;
    do
    {
      v21.i64[0] = 0x200000002000;
      v21.i64[1] = 0x200000002000;
      if (v7)
      {
        v22 = a6;
        v23 = v7;
        v24 = v8;
        do
        {
          v25 = *v22++;
          result = v25;
          v26 = vld1_dup_s16(v24++);
          v21 = vmlal_s16(v21, vmovn_s32(*(v25 + 4 * v10)), v26);
          --v23;
        }

        while (v23);
      }

      *v21.i8 = vqshrun_n_s32(v21, 0xEuLL);
      v6->i32[0] = vqmovn_u16(v21).u32[0];
      v6 = (v6 + 4);
      v10 += 4;
    }

    while (v10 < (v9 & 0xFFFFFFFC));
  }

  if (v10 < v9)
  {
    v10 = v10;
    do
    {
      if (v7)
      {
        v27 = 0x2000;
        v28 = a6;
        v29 = v7;
        v30 = v8;
        do
        {
          v31 = *v30++;
          result = v31;
          v32 = *v28++;
          v27 += *(v32 + 4 * v10) * result;
          --v29;
        }

        while (v29);
        v33 = v27 >> 14;
      }

      else
      {
        v33 = 0;
      }

      if (v33 >= 255)
      {
        v33 = 255;
      }

      v6->i8[0] = v33 & ~(v33 >> 31);
      v6 = (v6 + 1);
      ++v10;
    }

    while (v10 != v9);
  }

  return result;
}

uint64_t type4_lexer_scan(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a1[2] = 0;
LABEL_2:
  while (2)
  {
    v10 = CGPDFSourceGetc(*a1, a2, a3, a4, a5, a6, a7, a8);
    v11 = v10;
    if (v10 > 90)
    {
      if (v10 <= 122)
      {
        if (v10 != 91 && v10 != 93)
        {
          goto LABEL_59;
        }

LABEL_18:
        return 0xFFFFFFFFLL;
      }

      if (v10 == 123 || v10 == 125)
      {
        return v11;
      }

LABEL_59:
      while (1)
      {
        v30 = v11 + 1;
        if ((v11 + 1) <= 0x3F)
        {
          if (((1 << v30) & 0x200006C03) != 0)
          {
            goto LABEL_70;
          }

          if (((1 << v30) & 0xA001064000000000) != 0)
          {
            break;
          }
        }

        if ((v11 - 91) <= 0x22 && ((1 << (v11 - 91)) & 0x500000005) != 0)
        {
          break;
        }

        v31 = a1[2];
        v32 = a1[3];
        if (v31 >= v32)
        {
          a1[3] = (2 * v32 + 64);
          v33 = malloc_type_realloc(a1[1], 2 * v32 + 68, 0xD748C850uLL);
          a1[1] = v33;
          v31 = a1[2];
        }

        else
        {
          v33 = a1[1];
        }

        a1[2] = (v31 + 1);
        *(v31 + v33) = v11;
        LODWORD(v11) = CGPDFSourceGetc(*a1, a2, a3, a4, a5, a6, a7, a8);
      }

      CGPDFSourceUngetc(*a1, v11);
LABEL_70:
      *(a1[2] + a1[1]) = 0;
      v36 = a1 + 1;
      v34 = a1[1];
      v35 = v36[1];
      if (v35)
      {
        v37 = a2;
        if (v35 == 5)
        {
          if (!strcmp(v34, "false"))
          {
            v11 = 256;
            *a2 = 256;
            *(a2 + 8) = 0;
            return v11;
          }

          goto LABEL_82;
        }

        if (v35 == 4)
        {
          if (!strcmp(v34, "true"))
          {
            v11 = 256;
            *a2 = 256;
            *(a2 + 8) = 1;
            return v11;
          }

          goto LABEL_82;
        }
      }

      else
      {
        v35 = strlen(v34);
        v37 = a2;
      }

      if (v35 > 0xFFFFFFFE || (v35 - 2) > 6)
      {
LABEL_86:
        return 0xFFFFFFFFLL;
      }

      if (v35 == 2)
      {
        v38 = 2;
LABEL_83:
        v39 = *v34;
        v40 = v38 + hash_asso_values[*(v34 + 1)] + hash_asso_values[v39];
        if (v40 <= 0x2F)
        {
          v41 = (&wordlist + 16 * v40);
          if (v39 == **v41 && !strcmp(v34 + 1, *v41 + 1))
          {
            v42 = v41[1];
            if (v42)
            {
              v11 = 260;
              *v37 = 260;
              *(v37 + 8) = v42;
              return v11;
            }
          }
        }

        goto LABEL_86;
      }

LABEL_82:
      v38 = v35 + hash_asso_values[*(v34 + 2)];
      goto LABEL_83;
    }

    switch(v10)
    {
      case -1:
        return v11;
      case 0:
      case 9:
      case 10:
      case 12:
      case 13:
      case 32:
        continue;
      case 37:
        while (1)
        {
          v12 = CGPDFSourceGetc(*a1, a2, a3, a4, a5, a6, a7, a8);
          if (v12 == -1 || v12 == 10)
          {
            goto LABEL_2;
          }

          if (v12 == 13)
          {
            v14 = CGPDFSourceGetc(*a1, a2, a3, a4, a5, a6, a7, a8);
            if (v14 != 10)
            {
              CGPDFSourceUngetc(*a1, v14);
            }

            goto LABEL_2;
          }
        }

      case 40:
      case 41:
      case 47:
      case 60:
      case 62:
        goto LABEL_18;
      case 43:
      case 45:
      case 46:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
        v44 = 0;
        if (v10 == 45 || v10 == 43)
        {
          v15 = a1[2];
          v16 = a1[3];
          if (v15 >= v16)
          {
            a1[3] = (2 * v16 + 64);
            v17 = malloc_type_realloc(a1[1], 2 * v16 + 68, 0xD748C850uLL);
            a1[1] = v17;
            v15 = a1[2];
          }

          else
          {
            v17 = a1[1];
          }

          a1[2] = (v15 + 1);
          *(v15 + v17) = v11;
          v43 = v11 == 45;
          LODWORD(v11) = CGPDFSourceGetc(*a1, a2, a3, a4, a5, a6, a7, a8);
        }

        else
        {
          v43 = 0;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        v21 = 1;
        while (2)
        {
          if ((v11 - 48) < 0xA)
          {
            v19 = v11 + 10 * v19 - 48;
            ++v18;
LABEL_25:
            v22 = a1[2];
            v23 = a1[3];
            if (v22 >= v23)
            {
              a1[3] = (2 * v23 + 64);
              v24 = malloc_type_realloc(a1[1], 2 * v23 + 68, 0xD748C850uLL);
              a1[1] = v24;
              v22 = a1[2];
            }

            else
            {
              v24 = a1[1];
            }

            a1[2] = (v22 + 1);
            *(v22 + v24) = v11;
            LODWORD(v11) = CGPDFSourceGetc(*a1, a2, a3, a4, a5, a6, a7, a8);
            continue;
          }

          break;
        }

        v25 = (v11 + 1);
        if (v25 > 0x3F)
        {
          goto LABEL_34;
        }

        if (v25 == 47)
        {
          v20 = v21;
LABEL_37:
          v21 = 0;
          goto LABEL_25;
        }

        if (((1 << (v11 + 1)) & 0x200006C03) == 0)
        {
          if (((1 << (v11 + 1)) & 0xA001064000000000) == 0)
          {
LABEL_34:
            if ((v11 - 91) > 0x22 || ((1 << (v11 - 91)) & 0x500000005) == 0)
            {
              v20 = 0;
              goto LABEL_37;
            }
          }

          CGPDFSourceUngetc(*a1, v11);
        }

        *(a1[2] + a1[1]) = 0;
        if ((v21 & (v18 > 0)) != 1)
        {
          goto LABEL_50;
        }

        if (v18 > 9)
        {
          *__error() = 0;
          v27 = strtol_l(a1[1], &v44, 10, 0);
          if (v44 == a1[1] || *v44)
          {
            goto LABEL_54;
          }

          v20 = 1;
          if (*__error() != 34 && !((v27 + 0x80000000) >> 32))
          {
            v11 = 257;
            *a2 = 257;
            *(a2 + 8) = v27;
            return v11;
          }

LABEL_50:
          if ((v20 & 1) == 0 || v18 < 1 || (v28 = strtod_l(a1[1], &v44, 0), v44 == a1[1]) || *v44)
          {
LABEL_54:
            return 0xFFFFFFFFLL;
          }

          v11 = 258;
          *a2 = 258;
          *(a2 + 8) = v28;
        }

        else
        {
          if (v43)
          {
            v26 = -v19;
          }

          else
          {
            v26 = v19;
          }

          v11 = 257;
          *a2 = 257;
          *(a2 + 8) = v26;
        }

        break;
      default:
        goto LABEL_59;
    }

    return v11;
  }
}

uint64_t dlRecorder_DrawImageApplyingToneMapping(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, void *a6, double a7, double a8, double a9, double a10)
{
  v18 = CGCreatePayloadForToneMapping(a5, a6);
  if (!v18)
  {
    return 1000;
  }

  v19 = v18;
  if (a4)
  {
    CFRetain(a4);
  }

  Copy = CGImageCreateCopy(a4);
  if (CGImageSetColorConversionInfoPayload(Copy, v19))
  {
    if (a4)
    {
      CFRelease(a4);
    }

    v25 = dlRecorder_DrawImage(a1, a2, a3, Copy, v21, v22, v23, v24, a7, a8, a9, a10);
    if (!Copy)
    {
      return v25;
    }

LABEL_13:
    CFRelease(Copy);
    return v25;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  v25 = 1000;
  Copy = a4;
  if (a4)
  {
    goto LABEL_13;
  }

  return v25;
}

const void **applesauce::CF::ObjectRef<CGImage *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGDataProvider *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CGFloat dlRecorder_GetTransform@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, CGAffineTransform *a9@<X8>)
{
  if (!a1 || !*(a1 + 288))
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_GetTransform");
  }

  *a9 = CGAffineTransformIdentity;
  return CGAffineTransformIdentity.tx;
}

CGImageRef dlRecorder_CreateImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || (v8 = *(a1 + 288)) == 0)
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_CreateImage");
    return 0;
  }

  v9 = CG::DisplayListRecorder::currentDisplayList(v8);
  if (!v9)
  {
    CGPostError("%s: recorder->currentDisplayList() returned NULL", v10, v11, v12, v13, v14, v15, v16, "dlRecorder_CreateImage");
    return 0;
  }

  v17 = (v9 + 16);

  return CG::DisplayList::createImage(v17);
}

uint64_t dlRecorder_GetLayer(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  if (a1 && (v12 = *(a1 + 288)) != 0)
  {
    v18 = CG::DisplayListRecorder::currentDisplayList(v12);
    if (v18)
    {
      v19 = CG::DisplayListRecorder::initializeGroupInfoDictionary(v18, a4);
      *v28 = a9;
      *&v28[1] = a10;
      *&v28[2] = a11;
      *&v28[3] = a12;
      CGDisplayList = CG::DisplayList::createCGDisplayList(v19, v28, v20, v21, v22, v23, v24, v25);
      if (v19)
      {
        CFRelease(v19);
      }

      if (CGDisplayList)
      {
        CG::DisplayList::createContextDelegate();
      }
    }
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_GetLayer");
  }

  return 0;
}

uint64_t dlRecorder_EndPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && (a4 = a3, a3 = a2, a2 = a1, (v9 = *(a1 + 288)) != 0))
  {
    v10 = *(*v9 + 32);

    return v10();
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_EndPage");
    return 1000;
  }
}

uint64_t dlRecorder_BeginPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && (a5 = a4, a4 = a3, a3 = a2, a2 = a1, (v9 = *(a1 + 288)) != 0))
  {
    v10 = *(*v9 + 24);

    return v10();
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_BeginPage");
    return 1000;
  }
}

uint64_t dlRecorder_DrawDisplayList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && (v9 = *(a1 + 288)) != 0)
  {

    return CG::DisplayListRecorder::DrawDisplayList(v9, a2, a3, a4);
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_DrawDisplayList");
    return 1000;
  }
}

uint64_t dlRecorder_DrawConicGradient(uint64_t a1, uint64_t a2, uint64_t a3, CGGradient *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11)
{
  if (a1 && (v11 = *(a1 + 288)) != 0)
  {
    v13 = 2;
    v14 = a9;
    v15 = a10;
    v16 = a11;
    return CG::DisplayListRecorder::DrawGradient(v11, a2, a3, a4, 0, &v13);
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_DrawConicGradient");
    return 1000;
  }
}

uint64_t CG::DisplayListRecorder::DrawGradient(CFArrayRef *a1, uint64_t a2, uint64_t a3, CGGradient *a4, uint64_t a5, int *a6)
{
  v10 = CG::DisplayListRecorder::currentDisplayList(a1);
  if (!v10)
  {
    return 1000;
  }

  v11 = v10;
  if (v10[5] == INFINITY || v10[6] == INFINITY)
  {
    return 0;
  }

  result = 0;
  if (v11[7] != 0.0 && v11[8] != 0.0)
  {
    v14 = *(a3 + 40);
    *&v38.a = *(a3 + 24);
    *&v38.c = v14;
    *&v38.tx = *(a3 + 56);
    if (*(v11 + 73) != 1)
    {
      goto LABEL_17;
    }

    v37 = CGRectInfinite;
    v37.origin.x = CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(&v37.origin.x, a2, *(a3 + 112), *(*(a3 + 120) + 16));
    v37.origin.y = v15;
    v37.size.width = v16;
    v37.size.height = v17;
    if (v37.origin.x == INFINITY || v15 == INFINITY)
    {
      return 0;
    }

    result = 0;
    if (v16 != 0.0 && v17 != 0.0)
    {
LABEL_17:
      v19 = CG::DisplayList::gradientResourceForGradient((v11 + 2), a4);
      if (v19)
      {
        v20 = v19;
        EntryDrawingState = CG::DisplayList::getEntryDrawingState((v11 + 2), a3, a2);
        v29 = EntryDrawingState[1];
        if (v29)
        {
          v30 = *(v29 + 8);
          v31 = EntryDrawingState[2];
          if (v31)
          {
            v30 |= *(v31 + 8);
          }

          v32 = v30 & 0x1000;
          v33 = EntryDrawingState[3];
          if (v33)
          {
            v32 |= *(v33 + 8) & 0x3400;
          }

          v34 = *(a3 + 120);
          if (*(v34 + 8) >= 1.0)
          {
            v35 = *(v20 + 8) & 0x1000 | v32;
          }

          else
          {
            LOWORD(v35) = v32 | 0x1000;
          }

          if ((v35 & 0x1000) == 0 && (((*(v34 + 4) << 16) >> 24) - 3) < 0xFFFFFFFE)
          {
            LOWORD(v35) = v35 | 0x1000;
          }

          if ((v35 & 0x3000) != 0)
          {
            *(v11 + 20) |= v35 & 0x3000;
          }

          if (*(v11 + 74) == 1)
          {
            if ((v35 & 0x400) != 0)
            {
              CG::DisplayList::getEntryPatternState((v11 + 2), a3, a2);
            }

            v36 = *a6;
            if (*a6 == 2)
            {
              operator new();
            }

            if (v36 == 1)
            {
              operator new();
            }

            if (!v36)
            {
              operator new();
            }

            CGPostError("Invalid GradientType argument", v22, v23, v24, v25, v26, v27, v28, SLOBYTE(v37.origin.x));
            return 1000;
          }

          return 0;
        }
      }

      return 1000;
    }
  }

  return result;
}

__n128 CG::DisplayListEntryGradient::DisplayListEntryGradient(CG::DisplayListEntryGradient *this, int a2, const CGRect *a3, const CG::DisplayListEntryStateDrawing *a4, const CG::DisplayListEntryStatePattern *a5, const CG::DisplayListResourceGradient *a6, const CGAffineTransform *a7, CGPoint a8, CGPoint a9, int a10)
{
  *this = &unk_1EF23ABE8;
  *(this + 2) = (a2 << 8) | 6;
  size = a3->size;
  *(this + 1) = a3->origin;
  *(this + 2) = size;
  *(this + 6) = a4;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a5;
  *this = &unk_1EF23AD38;
  *(this + 10) = a6;
  v11 = *&a7->a;
  v12 = *&a7->c;
  *(this + 120) = *&a7->tx;
  *(this + 104) = v12;
  *(this + 88) = v11;
  *(this + 34) = 1;
  *(this + 35) = a10;
  *(this + 9) = a8;
  *(this + 10) = a9;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 13) = result;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  return result;
}

uint64_t dlRecorder_DrawRadialGradient(uint64_t a1, uint64_t a2, uint64_t a3, CGGradient *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  if (a1 && (v14 = *(a1 + 288)) != 0)
  {
    v16 = 1;
    v17 = a9;
    v18 = a10;
    v19 = a11;
    v20 = a12;
    v21 = a13;
    v22 = a14;
    return CG::DisplayListRecorder::DrawGradient(v14, a2, a3, a4, a5, &v16);
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_DrawRadialGradient");
    return 1000;
  }
}

uint64_t dlRecorder_DrawLinearGradient(uint64_t a1, uint64_t a2, uint64_t a3, CGGradient *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  if (a1 && (v12 = *(a1 + 288)) != 0)
  {
    v14 = 0;
    v15 = a9;
    v16 = a10;
    v17 = a11;
    v18 = a12;
    return CG::DisplayListRecorder::DrawGradient(v12, a2, a3, a4, a5, &v14);
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_DrawLinearGradient");
    return 1000;
  }
}

void dlRecorder_DrawLines(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && (v8 = *(a1 + 288)) != 0)
  {
    v13 = CG::DisplayListRecorder::currentDisplayList(v8);
    if (v13)
    {
      v14 = v13;
      v15 = v13[5] == INFINITY || v13[6] == INFINITY;
      if (!v15 && v13[7] != 0.0 && v13[8] != 0.0)
      {
        if (*(v13 + 73) != 1)
        {
          goto LABEL_37;
        }

        v16 = 0.0;
        v17 = 0.0;
        v18 = 0.0;
        v19 = 0.0;
        if (a4 && a5)
        {
          v20 = *a4;
          v21 = a4[1];
          if (a5 >= 2)
          {
            v22 = a5 - 1;
            v23 = a4 + 3;
            v16 = *a4;
            v17 = a4[1];
            while (1)
            {
              v25 = *(v23 - 1);
              v24 = *v23;
              v26 = v25 > v20 ? *(v23 - 1) : v20;
              if (v25 >= v16)
              {
                v20 = v26;
              }

              else
              {
                v16 = *(v23 - 1);
              }

              if (v24 < v17)
              {
                break;
              }

              if (v24 <= v21)
              {
                goto LABEL_24;
              }

LABEL_25:
              v23 += 2;
              v21 = v24;
              if (!--v22)
              {
                goto LABEL_30;
              }
            }

            v17 = *v23;
LABEL_24:
            v24 = v21;
            goto LABEL_25;
          }

          v17 = a4[1];
          v16 = *a4;
          v24 = v17;
LABEL_30:
          v18 = v20 - v16;
          v19 = v24 - v17;
        }

        v27 = *(a3 + 40);
        *&v48.a = *(a3 + 24);
        *&v48.c = v27;
        *&v48.tx = *(a3 + 56);
        v49 = CGRectApplyAffineTransform(*&v16, &v48);
        v49.origin.x = CG::DisplayListRecorder::adjustBoundingBoxToIncludeStroke(&v49, a3);
        v49.origin.y = v28;
        v49.size.width = v29;
        v49.size.height = v30;
        v49.origin.x = CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(&v49.origin.x, a2, *(a3 + 112), *(*(a3 + 120) + 16));
        v49.origin.y = v31;
        v49.size.width = v32;
        v49.size.height = v33;
        v34 = v49.origin.x == INFINITY || v31 == INFINITY;
        if (!v34 && v32 != 0.0 && v33 != 0.0)
        {
LABEL_37:
          EntryDrawingState = CG::DisplayList::getEntryDrawingState((v14 + 2), a3, a2);
          v36 = EntryDrawingState[1];
          if (v36)
          {
            v37 = *(v36 + 8);
            v38 = EntryDrawingState[2];
            if (v38)
            {
              v37 |= *(v38 + 8);
            }

            v39 = v37 & 0x1000;
            v40 = EntryDrawingState[3];
            if (v40)
            {
              v39 |= *(v40 + 8) & 0x3400;
            }

            StrokeColor = CGGStateGetStrokeColor(a3);
            v42 = (*(*(v14 + 2) + 8))(v14 + 2, StrokeColor);
            if (v42)
            {
              v43 = *(v42 + 8) & 0x3400 | 0x200;
            }

            else
            {
              LOWORD(v43) = 512;
            }

            v44 = v43 | v39;
            v45 = *(a3 + 120);
            v46 = v43 | v39 | 0x1000;
            if (*(v45 + 8) >= 1.0)
            {
              v47 = v44;
            }

            else
            {
              v47 = v46;
            }

            if ((v47 & 0x1000) == 0 && (((*(v45 + 4) << 16) >> 24) - 3) < 0xFFFFFFFE)
            {
              v47 = v46;
            }

            if ((v47 & 0x3000) != 0)
            {
              *(v14 + 20) |= v47 & 0x3000;
            }

            if (*(v14 + 74) == 1)
            {
              if ((v47 & 0x400) != 0)
              {
                CG::DisplayList::getEntryPatternState((v14 + 2), a3, a2);
              }

              if ((v47 & 0x100) != 0)
              {
                CG::DisplayList::getEntryFillState((v14 + 2), 0);
              }

              if ((v47 & 0x200) != 0)
              {
                CG::DisplayList::getEntryStrokeState((v14 + 2), a3);
              }

              operator new();
            }
          }
        }
      }
    }
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_DrawLines");
  }
}

__CFString *image_copy_format_description(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = *(a1 + 208);
  if (!v4)
  {
    goto LABEL_5;
  }

  Property = *(v4 + 120);
  if (Property)
  {
    Property = CGPropertiesGetProperty(Property, @"kCGImageWrappingIOSurface");
  }

  if (Property == *MEMORY[0x1E695E4D0])
  {
    v6 = "(IP-S)";
  }

  else
  {
LABEL_5:
    v6 = "(IP)";
  }

  if (!*(a1 + 208))
  {
    v6 = "(DP)";
  }

  CFStringAppendFormat(Mutable, 0, @"<CGImage %p> %s", a1, v6);
  v7 = *(a1 + 216);
  if (v7)
  {
    v8 = CGPropertiesGetProperty(v7, @"kCGImageFileFormat");
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFStringGetTypeID())
      {
        CFStringAppendFormat(Mutable, 0, @" <%@>", v9);
      }
    }

    v11 = *(a1 + 216);
    if (v11)
    {
      v12 = CGPropertiesGetProperty(v11, @"kCGImageHDRFileFormat");
      if (v12)
      {
        v13 = v12;
        v14 = CFGetTypeID(v12);
        if (v14 == CFStringGetTypeID())
        {
          CFStringAppendFormat(Mutable, 0, @" <%@>", v13);
        }
      }
    }
  }

  ColorSpace = CGImageGetColorSpace(a1);
  v16 = CFCopyDescription(ColorSpace);
  CFStringAppendFormat(Mutable, 0, @"\n\t<%@>", v16);
  if (v16)
  {
    CFRelease(v16);
  }

  v39 = 0;
  HeadroomInfo = CGImageGetHeadroomInfo(a1, &v39);
  if (v39 && HeadroomInfo != 0.0)
  {
    if (v39 == 2)
    {
      v18 = " (estimated)";
    }

    else
    {
      v18 = " ";
    }

    CFStringAppendFormat(Mutable, 0, @"\n\t\theadroom = %f %s", HeadroomInfo, v18);
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v22 = *(a1 + 64);
  v23 = *(a1 + 72);
  BitmapInfo = CGImageGetBitmapInfo(a1);
  if ((BitmapInfo & 0x1F) <= 7)
  {
    __sprintf_chk(__s, 0, 0x100uLL, "%s | ", off_1E6E31C78[BitmapInfo & 0x1F]);
  }

  v25 = strlen(__s);
  v26 = (BitmapInfo >> 12) & 7;
  if (v26 > 4)
  {
    v27 = "? (unknown byte order)";
  }

  else
  {
    v27 = off_1E6E31D18[v26];
  }

  sprintf(&__s[v25], "%s ", v27);
  v28 = strlen(__s);
  v29 = HIWORD(BitmapInfo) & 0xF;
  if (v29 > 4)
  {
    v30 = " | ? (unknown pixel format)";
  }

  else
  {
    v30 = off_1E6E18D08[v29];
  }

  sprintf(&__s[v28], "%s ", v30);
  if ((BitmapInfo & 0x100) != 0)
  {
    v31 = strlen(__s);
    sprintf(&__s[v31], "%s ", "| kCGBitmapFloatComponents");
  }

  CFStringAppendFormat(Mutable, 0, @"\n\t\twidth = %ld, height = %ld, bpc = %ld, bpp = %ld, row bytes = %ld, \n\t\t%s", v19, v20, v21, v22, v23, __s);
  v32 = *(a1 + 36);
  if ((v32 & 0x2000000) != 0)
  {
    v33 = "Yes";
  }

  else
  {
    v33 = "No";
  }

  if (*(a1 + 168))
  {
    v34 = "Yes";
  }

  else
  {
    v34 = "No";
  }

  if (*(a1 + 176))
  {
    v35 = "Yes";
  }

  else
  {
    v35 = "No";
  }

  if (*(a1 + 184))
  {
    v36 = "Yes";
  }

  else
  {
    v36 = "No";
  }

  if ((v32 & 0x1000000) != 0)
  {
    v37 = "Yes";
  }

  else
  {
    v37 = "No";
  }

  CFStringAppendFormat(Mutable, 0, @"\n\t\tis mask? %s, has masking color? %s, has soft mask? %s, has matte? %s, should interpolate? %s", v33, v34, v35, v36, v37);
  return Mutable;
}

uint64_t linked_on_sydro_or_later()
{
  if (linked_on_sydro_or_later_predicate != -1)
  {
    dispatch_once(&linked_on_sydro_or_later_predicate, &__block_literal_global_307);
  }

  if (linked_on_sydro_or_later_linked_on_rome_or_later & 1) != 0 || (linked_on_sydro_or_later_linked_on_sydney_or_later & 1) != 0 || (linked_on_sydro_or_later_linked_on_paris_or_later & 1) != 0 || (linked_on_sydro_or_later_linked_on_kincaid_or_later)
  {
    v0 = 1;
  }

  else
  {
    v0 = linked_on_sydro_or_later_linked_on_borealis_or_later;
  }

  return v0 & 1;
}

uint64_t __linked_on_dawnburst_or_later_block_invoke()
{
  linked_on_dawnburst_or_later_linked_on_macOS14_or_later = dyld_program_sdk_at_least();
  linked_on_dawnburst_or_later_linked_on_iOS17_or_later = dyld_program_sdk_at_least();
  linked_on_dawnburst_or_later_linked_on_tvOS17_or_later = dyld_program_sdk_at_least();
  linked_on_dawnburst_or_later_linked_on_watchOS10_or_later = dyld_program_sdk_at_least();
  result = dyld_program_sdk_at_least();
  linked_on_dawnburst_or_later_linked_on_borealis_or_later = result;
  return result;
}

uint64_t __linked_on_sydro_or_later_block_invoke()
{
  linked_on_sydro_or_later_linked_on_rome_or_later = dyld_program_sdk_at_least();
  linked_on_sydro_or_later_linked_on_sydney_or_later = dyld_program_sdk_at_least();
  linked_on_sydro_or_later_linked_on_paris_or_later = dyld_program_sdk_at_least();
  linked_on_sydro_or_later_linked_on_kincaid_or_later = dyld_program_sdk_at_least();
  result = dyld_program_sdk_at_least();
  linked_on_sydro_or_later_linked_on_borealis_or_later = result;
  return result;
}

__CFData *compress_data(char *a1, vImagePixelCount a2, vImagePixelCount a3, uint64_t a4, uint64_t a5, size_t a6, int a7)
{
  Mutable = CFDataCreateMutable(0, 0);
  v15 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, ((a4 * a2 + 7) >> 3) * a3);
    MutableBytePtr = CFDataGetMutableBytePtr(v15);
    if (a4 <= 3)
    {
      if (a4 == 1)
      {
        v20 = a1;
        v21 = a2;
        v22 = a3;
        v23 = 1;
        v24 = a6;
        v25 = (a2 + 7) >> 3;
        v26 = 7;
        goto LABEL_17;
      }

      if (a4 == 2)
      {
        v20 = a1;
        v21 = a2;
        v22 = a3;
        v23 = 2;
        v24 = a6;
        v25 = (2 * a2 + 7) >> 3;
        v26 = 6;
LABEL_17:
        compress_data_with_shift(MutableBytePtr, v20, v21, v22, v23, v24, v25, v26);
        return v15;
      }

LABEL_24:
      _CGHandleAssert("compress_data", 943, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "", "Unimplemented", v17, v18, v19, v37);
    }

    if (a4 == 4)
    {
      v20 = a1;
      v21 = a2;
      v22 = a3;
      v23 = 4;
      v24 = a6;
      v25 = (4 * a2 + 7) >> 3;
      v26 = 4;
      goto LABEL_17;
    }

    if (a4 != 8)
    {
      goto LABEL_24;
    }

    if (a5 == 32)
    {
      src.data = a1;
      src.height = a3;
      src.width = a2;
      src.rowBytes = a6;
      dest.data = MutableBytePtr;
      dest.height = a3;
      if ((a7 & 0xFFFFFFFD) == 1)
      {
        v32 = 3;
      }

      else
      {
        v32 = 0;
      }

      dest.width = a2;
      dest.rowBytes = a2;
      v33 = vImageExtractChannel_ARGB8888(&src, &dest, v32, 0);
      if (v33)
      {
        _CGHandleAssert("compress_data_to_8_bit", 903, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "err == kvImageNoError", "Unhandled vImage error %ld", v34, v35, v36, v33);
      }
    }

    else
    {
      if (a5 != 16)
      {
        _CGHandleAssert("compress_data_to_8_bit", 905, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "", "Unimplemented", v17, v18, v19, v37);
      }

      v27 = 0;
      do
      {
        v28 = &a1[v27 * a6];
        v29 = a2;
        do
        {
          v30 = *v28;
          v28 += 2;
          *MutableBytePtr++ = v30;
          --v29;
        }

        while (v29);
        ++v27;
      }

      while (v27 != a3);
    }
  }

  return v15;
}

uint64_t compress_data_with_shift(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = 0;
  do
  {
    v9 = 0;
    LODWORD(i) = 0;
    v11 = 0;
    v12 = (result + v8 * a7);
    v13 = (a2 + v8 * a6);
    do
    {
      v15 = *v13++;
      v14 = v15;
      if (i >= 8)
      {
        for (i = i; i > 7; *v12++ = v11 >> i)
        {
          i -= 8;
        }
      }

      v11 = (v11 << a5) | (v14 >> a8) & ~(-1 << a5);
      LODWORD(i) = i + a5;
      ++v9;
    }

    while (v9 != a3);
    if (v12 && i)
    {
      do
      {
        if (i < 8)
        {
          LODWORD(j) = i;
        }

        else
        {
          for (j = i; j > 7; *v12++ = v11 >> j)
          {
            j -= 8;
          }
        }

        v17 = -i & 7;
        v11 <<= v17;
        LODWORD(i) = j + v17;
      }

      while (i);
    }

    ++v8;
  }

  while (v8 != a4);
  return result;
}

uint64_t calculate_image_stats(uint64_t a1, uint64_t a2)
{
  DataProviderInternal = CGImageGetDataProviderInternal(a1, 0);
  v5 = CGDataProviderCopyData(DataProviderInternal);
  if (!v5 || (v12 = v5, (BytePtr = CFDataGetBytePtr(v5)) == 0))
  {
    CGLog(2, "%s failed: could not copy image data", v6, v7, v8, v9, v10, v11, "calculate_image_stats");
    return 0;
  }

  v14 = BytePtr;
  ColorSpace = CGImageGetColorSpace(a1);
  if (creator_for_ID_predicate != -1)
  {
    dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
  }

  if (off_1ED4E1728)
  {
    v16 = off_1ED4E1728();
    if (a1)
    {
LABEL_7:
      v18 = *(a1 + 40);
      v17 = *(a1 + 48);
      v19 = *(a1 + 72);
      goto LABEL_11;
    }
  }

  else
  {
    v16 = 0;
    if (a1)
    {
      goto LABEL_7;
    }
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
LABEL_11:
  if (CGColorSpaceEqualToColorSpace(ColorSpace, v16) && (v21 = CGImageGetBitmapInfo(a1), a1) && v21 == 8448 && *(a1 + 64) == 96 && v19 == 12 * v18)
  {
    calculate_buffer_stats(v14, v18, v17, v19, a2);
    v20 = 1;
  }

  else
  {
    v22 = CGColorConversionInfoCreateFromList(0, ColorSpace, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, v16, 1, 0, 0);
    if (v22)
    {
      v29 = v22;
      v42 = a2;
      BitmapInfo = CGImageGetBitmapInfo(a1);
      if (a1)
      {
        v30 = *(a1 + 56);
        v31 = *(a1 + 64);
        v32 = *(a1 + 72);
      }

      else
      {
        v31 = 0;
        v30 = 0;
        v32 = 0;
      }

      v33 = malloc_type_malloc(12 * v18 * v17, 0x499CD54AuLL);
      if (v33)
      {
        v40 = v33;
        v47 = 0x210000000000;
        v48 = xmmword_18439C9F0;
        v49 = 12 * v18;
        LODWORD(v44) = 0;
        DWORD1(v44) = BitmapInfo;
        *(&v44 + 1) = v30;
        v45 = v31;
        v46 = v32;
        v20 = CGColorConversionInfoConvertData(v29, v18, v17, v33, &v47, v14, &v44);
        if (v20)
        {
          calculate_buffer_stats(v40, v18, v17, 12 * v18, v42);
        }

        free(v40);
      }

      else
      {
        CGLog(2, "%s failed: could not allocate destination buffer", v34, v35, v36, v37, v38, v39, "calculate_image_stats");
        v20 = 0;
      }

      CFRelease(v29);
    }

    else
    {
      CGLog(2, "%s failed: could not create convewrsion info", v23, v24, v25, v26, v27, v28, "calculate_image_stats");
      v20 = 0;
    }
  }

  CFRelease(v12);
  return v20;
}

void calculate_buffer_stats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0.0;
    do
    {
      if (a2)
      {
        v10 = (a1 + v8 * a4);
        v11 = *(a5 + 4);
        v12 = a2;
        do
        {
          v13 = *v10;
          v14 = v10[1];
          if (v14 <= v10[2])
          {
            v14 = v10[2];
          }

          if (v13 <= v14)
          {
            v13 = v14;
          }

          if (v11 <= v13)
          {
            v11 = v13;
          }

          *(a5 + 4) = v11;
          v9 = v9 + v13;
          v10 += 3;
          --v12;
        }

        while (v12);
      }

      ++v8;
    }

    while (v8 != a3);
  }

  else
  {
    v9 = 0.0;
  }

  if (CGImageDefaultReferenceWhite_once != -1)
  {
    dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
  }

  v15 = a3 * a2;
  v16 = CGImageDefaultReferenceWhite_media_white;
  v17 = 0.0;
  if (CGImageDefaultReferenceWhite_media_white)
  {
    v18 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
    if (v18 == CFNumberGetTypeID())
    {
      valuePtr = 0.0;
      CFNumberGetValue(v16, kCFNumberFloatType, &valuePtr);
      v17 = valuePtr;
    }
  }

  v19 = v9 * v17;
  v20 = v15;
  *&v19 = v19 / v20;
  v21 = CGImageDefaultReferenceWhite_once;
  if (roundf(*&v19) <= 65535.0)
  {
    if (CGImageDefaultReferenceWhite_once != -1)
    {
      dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
    }

    v22 = CGImageDefaultReferenceWhite_media_white;
    v23 = 0.0;
    if (CGImageDefaultReferenceWhite_media_white)
    {
      v24 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
      if (v24 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v22, kCFNumberFloatType, &valuePtr);
        v23 = valuePtr;
      }
    }

    v25 = v9 * v23 / v20;
    if (roundf(v25) < 1.0)
    {
      v26 = 1;
      goto LABEL_42;
    }

    v21 = CGImageDefaultReferenceWhite_once;
  }

  if (v21 != -1)
  {
    dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
  }

  v27 = CGImageDefaultReferenceWhite_media_white;
  v28 = 0.0;
  if (CGImageDefaultReferenceWhite_media_white)
  {
    v29 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
    if (v29 == CFNumberGetTypeID())
    {
      valuePtr = 0.0;
      CFNumberGetValue(v27, kCFNumberFloatType, &valuePtr);
      v28 = valuePtr;
    }
  }

  v30 = v9 * v28 / v20;
  if (roundf(v30) <= 65535.0)
  {
    if (CGImageDefaultReferenceWhite_once != -1)
    {
      dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
    }

    v31 = CGImageDefaultReferenceWhite_media_white;
    v32 = 0.0;
    if (CGImageDefaultReferenceWhite_media_white)
    {
      v33 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
      if (v33 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v31, kCFNumberFloatType, &valuePtr);
        v32 = valuePtr;
      }
    }

    v34 = v9 * v32 / v20;
    v26 = llroundf(v34);
  }

  else
  {
    v26 = -1;
  }

LABEL_42:
  *a5 = v26;
}

CFNumberRef __CGImageDefaultReferenceWhite_block_invoke()
{
  valuePtr = 1128988672;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  CGImageDefaultReferenceWhite_media_white = result;
  return result;
}

void *__calculate_headroom_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageComputeImageStatistics");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageComputeImageStatistics");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageComputeImageStatistics");
  }

  calculate_headroom_f = result;
  return result;
}

size_t CGImageGetBytesPerRow(size_t image)
{
  if (image)
  {
    return *(image + 72);
  }

  return image;
}

size_t CGImageGetBitsPerPixel(size_t image)
{
  if (image)
  {
    return *(image + 64);
  }

  return image;
}

CGImageRef CGImageCreateWithCGPDFStream(uint64_t a1, uint64_t a2)
{
  v3 = CGPDFImageCreate(a1);
  ImageForRenderingSize = CGPDFImageCreateImageForRenderingSize(v3, a2, 0.0, 0.0);
  if (v3)
  {
    CFRelease(v3);
  }

  return ImageForRenderingSize;
}

BOOL CGImageIsSubimage(uint64_t a1, void *a2, _OWORD *a3)
{
  v3 = *(a1 + 240);
  if (v3)
  {
    if (a2)
    {
      *a2 = v3;
    }

    if (a3)
    {
      *a3 = *(a1 + 248);
    }
  }

  return v3 != 0;
}

uint64_t CGImageIsOptimizedForSharing(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  if (v2 != CGImageGetTypeID_image_type_id)
  {
    return 0;
  }

  if (CGImageIsOptimizedForSharing_predicate != -1)
  {
    dispatch_once(&CGImageIsOptimizedForSharing_predicate, &__block_literal_global_5193);
  }

  ColorSpace = CGImageGetColorSpace(a1);
  if (CGColorSpaceEqualToColorSpace(ColorSpace, CGImageIsOptimizedForSharing_sRGB))
  {
    return 1;
  }

  v6 = CGColorSpaceCopyICCData(ColorSpace);
  if (CGImageIsOptimizedForSharing_cglibrarypredicate != -1)
  {
    dispatch_once(&CGImageIsOptimizedForSharing_cglibrarypredicate, &__block_literal_global_48_5194);
  }

  IsOptimizedForSharing_f = CGImageIsOptimizedForSharing_f(v6, 0);
  if (CGImageIsOptimizedForSharing_cglibrarypredicate_51 != -1)
  {
    dispatch_once(&CGImageIsOptimizedForSharing_cglibrarypredicate_51, &__block_literal_global_54_5195);
  }

  IsOptimizedForSharing_f_50 = CGImageIsOptimizedForSharing_f_50(IsOptimizedForSharing_f, @"aapy");
  if (v6)
  {
    CFRelease(v6);
  }

  if (IsOptimizedForSharing_f)
  {
    CFRelease(IsOptimizedForSharing_f);
  }

  return IsOptimizedForSharing_f_50;
}

CGColorSpaceRef __CGImageIsOptimizedForSharing_block_invoke()
{
  result = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  CGImageIsOptimizedForSharing_sRGB = result;
  return result;
}

uint64_t *CGImageCreateWithContentHeadroom(size_t a1, size_t a2, size_t a3, size_t a4, size_t a5, CGColorSpace *a6, uint64_t a7, CGDataProvider *a8, float a9, CGFloat *decode, BOOL shouldInterpolate, CGColorRenderingIntent intent)
{
  v13 = a7;
  if (!verify_headroom_and_colorspace(a6, "CGImageCreateWithContentHeadroom", a3, a4, a5, a6, a7, a8, a9))
  {
    return 0;
  }

  v21 = CGImageCreate(a1, a2, a3, a4, a5, a6, v13, a8, decode, shouldInterpolate, intent);
  v22 = v21;
  if (v21)
  {
    CGImageSetHeadroom(v21, a9 != 0.0, a9);
  }

  return v22;
}

uint64_t *CGImageCreateCopyWithContentHeadroom(uint64_t a1, float a2)
{
  v4 = *(a1 + 208);
  if (v4)
  {
    v5 = CGDataProviderCreateWithImageProvider(v4);
  }

  else
  {
    v5 = *(a1 + 152);
    CGDataProviderRetain(v5);
  }

  v6 = CGImageCreateWithContentHeadroom(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 144), *(a1 + 32), v5, a2, *(a1 + 160), *(a1 + 36) & 0x1000000, (*(a1 + 36) >> 8));
  average_light_level_nits = get_average_light_level_nits(a1, 0);
  CGImageSetContentAverageLightLevelNits(v6, average_light_level_nits);
  CGDataProviderRelease(v5);
  return v6;
}

BOOL CGImageSetContentAverageLightLevelNits(uint64_t a1, int a2)
{
  ColorSpace = CGImageGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model == kCGColorSpaceModelRGB)
  {
    v6 = *(a1 + 208);
    if (v6)
    {
      *(v6 + 136) = a2;
    }

    else
    {
      pthread_mutex_lock((a1 + 80));
      if (!*(a1 + 224))
      {
        v7 = CGPropertiesCreate();
        v8 = 0;
        atomic_compare_exchange_strong_explicit((a1 + 224), &v8, v7, memory_order_relaxed, memory_order_relaxed);
        if (v8)
        {
          CGPropertiesRelease(v7);
        }
      }

      pthread_mutex_unlock((a1 + 80));
      valuePtr = a2;
      v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CGPropertiesSetProperty(*(a1 + 224), @"kCGImageContentAverageLightLevelNits", v9);
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  return Model == kCGColorSpaceModelRGB;
}

void *__evaluate_average_nits_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageComputeImageStatistics");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageComputeImageStatistics");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageComputeImageStatistics");
  }

  evaluate_average_nits_f = result;
  return result;
}

uint64_t *CGImageCreateCopyWithContentAverageLightLevelNits(uint64_t a1, int a2)
{
  ColorSpace = CGImageGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    return 0;
  }

  v5 = *(a1 + 208);
  if (v5)
  {
    v6 = CGDataProviderCreateWithImageProvider(v5);
  }

  else
  {
    v6 = *(a1 + 152);
    CGDataProviderRetain(v6);
  }

  v7 = CGImageCreate(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 144), *(a1 + 32), v6, *(a1 + 160), *(a1 + 36) & 0x1000000, (*(a1 + 36) >> 8));
  CGImageSetContentAverageLightLevelNits(v7, a2);
  v10 = 0;
  HeadroomInfo = CGImageGetHeadroomInfo(a1, &v10);
  CGImageSetHeadroom(v7, v10, HeadroomInfo);
  CGDataProviderRelease(v6);
  return v7;
}

uint64_t *CGImageCreateCopyWithContentAverageLightLevel(uint64_t a1, float a2)
{
  if (CGImageDefaultReferenceWhite_once != -1)
  {
    dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
  }

  v4 = CGImageDefaultReferenceWhite_media_white;
  v5 = 0.0;
  if (CGImageDefaultReferenceWhite_media_white)
  {
    v6 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0.0;
      CFNumberGetValue(v4, kCFNumberFloatType, &valuePtr);
      v5 = valuePtr;
    }
  }

  if (roundf(v5 * a2) <= 65535.0)
  {
    if (CGImageDefaultReferenceWhite_once != -1)
    {
      dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
    }

    v8 = CGImageDefaultReferenceWhite_media_white;
    v9 = 0.0;
    if (CGImageDefaultReferenceWhite_media_white)
    {
      v10 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
      if (v10 == CFNumberGetTypeID())
      {
        v13 = 0.0;
        CFNumberGetValue(v8, kCFNumberFloatType, &v13);
        v9 = v13;
      }
    }

    v7 = llroundf(v9 * a2);
  }

  else
  {
    v7 = 0xFFFF;
  }

  return CGImageCreateCopyWithContentAverageLightLevelNits(a1, v7);
}

uint64_t CGImageDefaultReferenceWhite()
{
  if (CGImageDefaultReferenceWhite_once != -1)
  {
    dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
  }

  return CGImageDefaultReferenceWhite_media_white;
}

uint64_t *CGImageCreateCopyWithCalculatedHDRStats(uint64_t a1)
{
  ColorSpace = CGImageGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    return 0;
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    v4 = CGDataProviderCreateWithImageProvider(v3);
  }

  else
  {
    v4 = *(a1 + 152);
    CGDataProviderRetain(v4);
  }

  v5 = CGImageCreate(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 144), *(a1 + 32), v4, *(a1 + 160), *(a1 + 36) & 0x1000000, (*(a1 + 36) >> 8));
  average_light_level_nits = get_average_light_level_nits(a1, 1);
  CGImageSetContentAverageLightLevelNits(v5, average_light_level_nits);
  v7 = calculate_headroom(a1, &v9);
  CGImageSetHeadroom(v5, 2 * (v7 != 0.0), v7);
  return v5;
}

uint64_t CGImageCreateCopyWithImageProvider(char *image, uint64_t a2)
{
  if (!image || (image[39] & 2) != 0)
  {
    return 0;
  }

  ColorSpace = CGImageGetColorSpace(image);
  if (a2)
  {
    v5 = *(a2 + 120);
    if (!v5 || (Property = CGPropertiesGetProperty(v5, @"kCGImageProviderColorSpaceChangedOnImageCopy")) == 0)
    {
      Property = *(a2 + 40);
    }
  }

  else
  {
    Property = 0;
  }

  if (!CGColorSpaceEqualToColorSpace(ColorSpace, Property))
  {
    return 0;
  }

  v11 = CGImageCreateWithImageProvider(a2, *(image + 20), HIBYTE(*(image + 9)) & 1, (*(image + 9) >> 8), v7, v8, v9, v10);
  if (!v11)
  {
    return v11;
  }

  BitmapInfo = CGImageGetBitmapInfo(image);
  if (BitmapInfo != CGImageGetBitmapInfo(v11))
  {
    goto LABEL_38;
  }

  if (!*(image + 21))
  {
    goto LABEL_19;
  }

  v13 = *(v11 + 144);
  v14 = v13 ? *(*(v13 + 24) + 48) : 0;
  v15 = malloc_type_malloc(16 * v14, 0x100004000313F17uLL);
  *(v11 + 168) = v15;
  if (!v15)
  {
LABEL_38:
    CFRelease(v11);
    return 0;
  }

  v16 = 2 * v14;
  if (2 * v14)
  {
    v17 = *(image + 21);
    do
    {
      v18 = *v17++;
      *v15++ = v18;
      --v16;
    }

    while (v16);
  }

LABEL_19:
  *(v11 + 36) = *(v11 + 36) & 0xF7FFFFFF | (((*(image + 9) >> 27) & 1) << 27);
  v19 = *(image + 22);
  if (v19)
  {
    CFRetain(*(image + 22));
  }

  *(v11 + 176) = v19;
  if (!*(image + 23))
  {
    goto LABEL_29;
  }

  v20 = *(v11 + 144);
  if (v20)
  {
    v21 = *(*(v20 + 24) + 48);
  }

  else
  {
    v21 = 0;
  }

  v22 = malloc_type_malloc(8 * v21, 0x100004000313F17uLL);
  *(v11 + 184) = v22;
  if (!v22)
  {
    goto LABEL_38;
  }

  if (v21)
  {
    v23 = *(image + 23);
    do
    {
      v24 = *v23++;
      *v22++ = v24;
      --v21;
    }

    while (v21);
  }

LABEL_29:
  v25 = *(image + 24);
  if (v25)
  {
    CFRetain(*(image + 24));
  }

  *(v11 + 192) = v25;
  v26 = *(image + 25);
  if (v26)
  {
    CFRetain(*(image + 25));
  }

  *(v11 + 200) = v26;
  v27 = *(image + 30);
  if (v27)
  {
    CFRetain(*(image + 30));
  }

  *(v11 + 240) = v27;
  *(v11 + 248) = *(image + 248);
  v28 = *(image + 27);
  if (v28)
  {
    atomic_fetch_add_explicit(v28, 1u, memory_order_relaxed);
  }

  *(v11 + 216) = v28;
  return v11;
}

CGImageRef CGImageCreateCopyWithClipPath(CGImageRef image, CFTypeRef cf)
{
  Copy = 0;
  if (image && cf)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v5 = CFGetTypeID(cf), v5 == CGPathGetTypeID()))
    {
      Copy = CGImageCreateCopy(image);
      if (Copy)
      {
        v6 = *(image + 25);
        if (v6)
        {
          CFRelease(v6);
        }

        CFRetain(cf);
        *(image + 25) = cf;
      }
    }

    else
    {
      return 0;
    }
  }

  return Copy;
}

CGImageRef CGImageCreateCopyWithRenderingIntent(CGImageRef cf, unsigned int a2)
{
  if (cf)
  {
    v3 = cf;
    cf = 0;
    if (a2 <= 4)
    {
      v4 = v3[9];
      if ((v4 & 0x2000000) == 0)
      {
        if (a2 == v4 >> 8)
        {
          CFRetain(v3);
          return v3;
        }

        else
        {
          cf = CGImageCreateCopy(v3);
          if (cf)
          {
            *(cf + 9) = *(cf + 9) & 0xFFFF00FF | (a2 << 8);
          }
        }
      }
    }
  }

  return cf;
}

unsigned __int8 *CGImageCreateCopyWithOrientation(unsigned __int8 *cf, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = cf;
  if (cf)
  {
    if (cf[38] == a2)
    {
      CFRetain(cf);
    }

    else if ((a2 - 9) > 0xFFFFFFF7)
    {
      Copy = CGImageCreateCopy(cf);
      v8 = Copy;
      if (Copy)
      {
        *(Copy + 9) = *(Copy + 9) & 0xFF00FFFF | (a2 << 16);
      }
    }

    else
    {
      CGLog(1, "%s %s", a3, a4, a5, a6, a7, a8, "CGImageCreateCopyWithOrientation");
      return 0;
    }
  }

  return v8;
}

CGImageRef CGImageCreateCopyByApplyingxtendedRangeToneMapping(void *a1, CGColorSpace *a2, const void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = CFGetTypeID(a1);
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  v7 = 0;
  if (a3 && v6 == CGImageGetTypeID_image_type_id)
  {
    v8 = CFGetTypeID(a3);
    if (v8 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    Value = CFDictionaryGetValue(a3, @"kCGImageExtendedRangeToneMappingInfo");
    ColorSpace = CGImageGetColorSpace(a1);
    v11 = CGImageGetBitmapInfo(a1);
    v7 = 0;
    if (CGColorSpaceUsesExtendedRange(ColorSpace) && (v11 & 0xF00) == 0x100)
    {
      if (CGColorSpaceGetModel(ColorSpace) && CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
      {
        return 0;
      }

      LODWORD(v42[0]) = 0;
      if (CGColorSpaceGetCICPInfo(ColorSpace, v42))
      {
        if (BYTE1(v42[0]) != 8)
        {
          return 0;
        }
      }

      else
      {
        Linearized = CGColorSpaceCreateLinearized(ColorSpace);
        if (!Linearized || !CGColorConversionInfoIterateColorSpaceFunctionsWithCallbacks(ColorSpace, Linearized, 0, &__block_literal_global_28_23464, 0, 0, 0, 5u, 0))
        {
          return 0;
        }
      }

      ResolveExtendedRangeToneMappingOptions = CGColorTransformCreateResolveExtendedRangeToneMappingOptions(Value);
      if (!ResolveExtendedRangeToneMappingOptions)
      {
        return 0;
      }

      CFRelease(ResolveExtendedRangeToneMappingOptions);
      DataProviderInternal = CGImageGetDataProviderInternal(a1, 0);
      if (!DataProviderInternal)
      {
        return 0;
      }

      v15 = CGDataProviderCopyData(DataProviderInternal);
      if (!v15)
      {
        return 0;
      }

      v16 = v15;
      v18 = a1[5];
      v17 = a1[6];
      v19 = a1[9];
      v20 = a1[7];
      v33 = a1[8];
      NumberOfComponents = CGImageGetNumberOfComponents(a1);
      bitmapInfo = CGImageGetBitmapInfo(a1);
      v22 = CGImageGetColorSpace(a1);
      v34 = v18;
      v23 = (v20 >> 3) * v18 * NumberOfComponents;
      v24 = v23 * v17;
      v25 = malloc_type_calloc(1uLL, v23 * v17, 0x2255EFAuLL);
      if (v25)
      {
        v26 = v25;
        v32 = v23;
        if (a2)
        {
          CopyWithStandardRange = 0;
        }

        else
        {
          CopyWithStandardRange = CGColorSpaceCreateCopyWithStandardRange(v22);
        }

        if (CopyWithStandardRange)
        {
          a2 = CopyWithStandardRange;
        }

        BytePtr = CFDataGetBytePtr(v16);
        v47 = 0u;
        v41 = 0u;
        v42[0] = 0;
        v42[1] = a2;
        v43 = bitmapInfo;
        v44 = 0;
        v45 = v20;
        v46 = v19;
        v36[0] = 0;
        v36[1] = v22;
        v37 = bitmapInfo;
        v38 = 0;
        v39 = v20;
        v40 = v19;
        if (convert_color_data_with_format(0, v34, v17, v26, v42, BytePtr, v36, a3) && (v30 = CGDataProviderCreateWithData(0, v26, v24, free_data)) != 0)
        {
          v31 = v30;
          v7 = CGImageCreate(v34, v17, v20, v33, v32, a2, bitmapInfo, v30, 0, 0, kCGRenderingIntentDefault);
          CFRelease(v31);
        }

        else
        {
          v7 = 0;
        }

        CGColorSpaceRelease(CopyWithStandardRange);
      }

      else
      {
        v7 = 0;
      }

      CFRelease(v16);
    }
  }

  return v7;
}

size_t CGImageGetHeight(size_t image)
{
  if (image)
  {
    return *(image + 48);
  }

  return image;
}

CGImageRef CGImageCreateCopyByApplyingSoftMask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (!a1)
  {
    return v8;
  }

  v9 = *(a1 + 32) & 0x1F;
  if ((v9 - 7) <= 0xFFFFFFFD || *(a1 + 56) != 8 || *(a1 + 64) != 32)
  {
LABEL_24:
    CGLog(1, "%s %s", a3, a4, a5, a6, a7, a8, "CGImageCreateCopyByApplyingSoftMask");
    return 0;
  }

  v10 = *(a1 + 176);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v10 + 64);
  if (v11 != 1 && v11 != 8)
  {
    goto LABEL_24;
  }

  v13 = *(a1 + 48) * *(a1 + 72);
  v14 = malloc_type_calloc(v13, 1uLL, 0x100004077774924uLL);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  DataProviderInternal = CGImageGetDataProviderInternal(v8, 0);
  v17 = CGAccessSessionCreate(DataProviderInternal);
  v18 = (*(v8 + 6) - 1) * *(v8 + 9) + ((*(v8 + 8) * *(v8 + 5) + 7) >> 3);
  Bytes = CGAccessSessionGetBytes(v17, v15, v18, v19, v20, v21, v22, v23);
  CGAccessSessionRelease(v17);
  if (Bytes != v18)
  {
    goto LABEL_27;
  }

  if (v9 == 6)
  {
    LODWORD(permuteMap.data) = 66051;
    dest.data = v15;
    *&dest.height = vextq_s8(*(v8 + 40), *(v8 + 40), 8uLL);
    dest.rowBytes = *(v8 + 9);
    vImagePermuteChannels_ARGB8888(&dest, &dest, &permuteMap, 0x10u);
  }

  v25 = *(v10 + 72);
  v26 = *(v10 + 48) * v25;
  v27 = malloc_type_calloc(v26, 1uLL, 0x100004077774924uLL);
  if (!v27)
  {
LABEL_27:
    v41 = v15;
LABEL_28:
    free(v41);
    return 0;
  }

  v28 = v27;
  v75 = v25;
  v29 = CGImageGetDataProviderInternal(v10, 0);
  v30 = CGAccessSessionCreate(v29);
  v31 = (*(v10 + 48) - 1) * *(v10 + 72) + ((*(v10 + 64) * *(v10 + 40) + 7) >> 3);
  v37 = CGAccessSessionGetBytes(v30, v28, v31, v32, v33, v34, v35, v36);
  CGAccessSessionRelease(v30);
  if (v37 != v31)
  {
    free(v15);
    v41 = v28;
    goto LABEL_28;
  }

  v38 = *(v10 + 56);
  if (v38 == 1)
  {
    if (CGImageGetDecodeType(v10) == 1 && v26)
    {
      v42 = v28;
      do
      {
        *v42 = ~*v42;
        ++v42;
        --v26;
      }

      while (v26);
    }

    v43 = *(v10 + 40);
    v44 = malloc_type_calloc(*(v10 + 48) * v43, 1uLL, 0x100004077774924uLL);
    v46 = *(v10 + 40);
    v45 = *(v10 + 48);
    dest.data = v28;
    dest.height = v45;
    v47 = *(v10 + 72);
    dest.width = v46;
    dest.rowBytes = v47;
    permuteMap.data = v44;
    permuteMap.height = v45;
    permuteMap.width = v46;
    permuteMap.rowBytes = v43;
    v75 = v43;
    vImageConvert_Planar1toPlanar8(&dest, &permuteMap, 0x10u);
    free(v28);
    v28 = v44;
  }

  else if (v38 == 8 && CGImageGetDecodeType(v10) == 1 && v26)
  {
    for (i = 0; i != v26; ++i)
    {
      v28[i] = ~v28[i];
    }
  }

  v48 = *(v10 + 40);
  v50 = *(v8 + 5);
  v49 = *(v8 + 6);
  if (v48 == v50 && *(v10 + 48) == v49)
  {
    v51 = v75;
  }

  else
  {
    v52 = malloc_type_calloc(v49 * v50, 1uLL, 0x100004077774924uLL);
    dest.data = v28;
    *&dest.height = vextq_s8(*(v10 + 40), *(v10 + 40), 8uLL);
    dest.rowBytes = v75;
    permuteMap.data = v52;
    v53 = *(v8 + 40);
    *&permuteMap.height = vextq_s8(v53, v53, 8uLL);
    permuteMap.rowBytes = v53.i64[0];
    v51 = v53.i64[0];
    vImageScale_Planar8(&dest, &permuteMap, 0, 0x10u);
    free(v28);
    v48 = *(v8 + 5);
    v49 = *(v8 + 6);
    v28 = v52;
  }

  dest.data = v15;
  dest.height = v49;
  v54 = *(v8 + 9);
  dest.width = v48;
  dest.rowBytes = v54;
  permuteMap.data = v28;
  permuteMap.height = v49;
  permuteMap.width = v48;
  permuteMap.rowBytes = v51;
  if (vImageOverwriteChannels_ARGB8888(&permuteMap, &dest, &dest, 1u, 0x10u))
  {
    CGPostError("%s: vImageOverwriteChannels_ARGB8888 failed", v55, v56, v57, v58, v59, v60, v61, "CGImageCreateCopyByApplyingSoftMask");
    v8 = 0;
  }

  else
  {
    vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
    BitmapInfo = CGImageGetBitmapInfo(v8);
    if (v9 == 6)
    {
      v63 = 2;
    }

    else
    {
      v63 = 1;
    }

    v74 = BitmapInfo & 0xFFFFFFE0;
    v76 = v63;
    v64 = CGDataProviderCreateWithDataNoCopy(BitmapInfo, v15, v13, release_provider_data);
    v65 = *(v8 + 6);
    width = *(v8 + 5);
    v66 = *(v8 + 7);
    v67 = *(v8 + 8);
    v68 = *(v8 + 9);
    ColorSpace = CGImageGetColorSpace(v8);
    decode = CGImageGetDecode(v8);
    shouldInterpolate = CGImageGetShouldInterpolate(v8);
    RenderingIntent = CGImageGetRenderingIntent(v8);
    v8 = CGImageCreate(width, v65, v66, v67, v68, ColorSpace, v74 | v76, v64, decode, shouldInterpolate, RenderingIntent);
    CGDataProviderRelease(v64);
  }

  free(v28);
  return v8;
}

uint64_t CGImageGetDecodeType(CGImage *a1)
{
  ColorSpace = CGImageGetColorSpace(a1);
  v3 = ColorSpace;
  if (ColorSpace)
  {
    v4 = *(*(ColorSpace + 3) + 48);
  }

  else
  {
    v4 = 0;
  }

  result = CGImageGetDecode(a1);
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ((v4 - 3) >= 2)
  {
    if (v4 == 1)
    {
      if (CGColorSpaceGetType(v3) == 7)
      {
        if (v3 && (v10 = v3[3], *(v10 + 28) == 5))
        {
          v11 = *(*(v10 + 96) + 8);
        }

        else
        {
          v11 = 1.84467441e19;
        }

        if (*v6 == 0.0 && v6[1] == v11)
        {
          return 0;
        }

        if (*v6 == v11)
        {
LABEL_31:
          if (v6[1] == 0.0)
          {
            return 1;
          }
        }
      }

      else
      {
        if (*v6 == 0.0 && v6[1] == 1.0)
        {
          return 0;
        }

        if (*v6 == 1.0)
        {
          goto LABEL_31;
        }
      }
    }

    return 2;
  }

  v7 = 0;
  result = 2;
  do
  {
    v8 = v6[v7];
    v9 = &v6[v7];
    if (v8 == 0.0 && v9[1] == 1.0)
    {
      if (result == 1)
      {
        return 2;
      }

      result = 0;
    }

    else if (v8 == 1.0 && v9[1] == 0.0)
    {
      if (!result)
      {
        return 2;
      }

      result = 1;
    }

    v7 += 2;
  }

  while (v7 < 2 * v4 - 1);
  return result;
}

CGImageRef CGImageCreateWithJPEGDataProvider2(uint64_t a1, CGColorSpace *a2, double *a3, int a4, unsigned __int8 a5)
{
  if (CGImageCreateWithJPEGDataProvider2_predicate != -1)
  {
    dispatch_once(&CGImageCreateWithJPEGDataProvider2_predicate, &__block_literal_global_100);
  }

  v10 = CGImageCreateWithJPEGDataProvider2_f(a1, 0);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (CGImageCreateWithJPEGDataProvider2_predicate_103 != -1)
  {
    dispatch_once(&CGImageCreateWithJPEGDataProvider2_predicate_103, &__block_literal_global_106);
  }

  v12 = CGImageCreateWithJPEGDataProvider2_f_102(v11);
  if (!v12 || !CFEqual(v12, @"public.jpeg"))
  {
    CFRelease(v11);
    return 0;
  }

  v20 = *MEMORY[0x1E695E4C0];
  keys = @"kCGImageSourceShouldCache";
  v13 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v20, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (CGImageCreateWithJPEGDataProvider2_predicate_112 != -1)
  {
    dispatch_once(&CGImageCreateWithJPEGDataProvider2_predicate_112, &__block_literal_global_115);
  }

  v14 = CGImageCreateWithJPEGDataProvider2_f_111(v11, 0, v13);
  CFRelease(v13);
  CFRelease(v11);
  if (v14)
  {
    if (a4)
    {
      v15 = 0x1000000;
    }

    else
    {
      v15 = 0;
    }

    *(v14 + 36) = v15 & 0xFFFF00FF | (a5 << 8) | *(v14 + 36) & 0xFEFF00FF;
    if (a2)
    {
      cgimage_set_decode_array(v14, a3, *(*(a2 + 3) + 48));
      CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v14, a2);
      CFRelease(v14);
      return CopyWithColorSpace;
    }

    if (a3 || !*(v14 + 160))
    {
      ColorSpace = CGImageGetColorSpace(v14);
      if (ColorSpace)
      {
        v19 = *(*(ColorSpace + 3) + 48);
      }

      else
      {
        v19 = 0;
      }

      cgimage_set_decode_array(v14, a3, v19);
    }
  }

  return v14;
}

BOOL is_jpg_image(uint64_t a1)
{
  result = 0;
  if (a1)
  {
    v1 = *(a1 + 216);
    if (v1)
    {
      Property = CGPropertiesGetProperty(v1, @"com.apple.ImageIO.imageSourceTypeIdentifier");
      if (Property)
      {
        if (CFEqual(Property, @"public.jpeg"))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

void *copy_image_mask_and_matte(uint64_t a1, uint64_t **image)
{
  result = CGImageGetColorSpace(image);
  if (result)
  {
    v5 = *(result[3] + 48);
  }

  else
  {
    v5 = 0;
  }

  if (image[21])
  {
    result = malloc_type_malloc(16 * v5, 0x100004000313F17uLL);
    *(a1 + 168) = result;
    if (result)
    {
      v6 = 2 * v5;
      if (2 * v5)
      {
        v7 = image[21];
        do
        {
          v8 = *v7++;
          *result++ = v8;
          --v6;
        }

        while (v6);
      }
    }
  }

  if (image[23])
  {
    result = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
    *(a1 + 184) = result;
    if (result)
    {
      if (v5)
      {
        v9 = image[23];
        do
        {
          v10 = *v9++;
          *result++ = v10;
          --v5;
        }

        while (v5);
      }
    }
  }

  *(a1 + 36) = *(a1 + 36) & 0xF7FFFFFF | (((*(image + 9) >> 27) & 1) << 27);
  v11 = image[22];
  if (v11)
  {
    result = CFRetain(v11);
  }

  *(a1 + 176) = v11;
  return result;
}

uint64_t CGImageSetColorConversionInfoOptions(uint64_t result, const __CFDictionary *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v4 == CGImageGetTypeID_image_type_id)
    {
      pthread_mutex_lock((v3 + 80));
      if (!*(v3 + 224))
      {
        v5 = CGPropertiesCreate();
        v6 = 0;
        atomic_compare_exchange_strong_explicit((v3 + 224), &v6, v5, memory_order_relaxed, memory_order_relaxed);
        if (v6)
        {
          CGPropertiesRelease(v5);
        }
      }

      pthread_mutex_unlock((v3 + 80));
      ColorSpace = CGImageGetColorSpace(v3);
      BitmapInfo = CGImageGetBitmapInfo(v3);
      ResolvedOptions = CGColorConversionInfoCreateResolvedOptions(ColorSpace, BitmapInfo, a2);
      v10 = *(v3 + 224);
      if (ResolvedOptions)
      {
        CGPropertiesSetProperty(v10, @"kCGColorConversionInfoOptions", ResolvedOptions);
        CFRelease(ResolvedOptions);
        return 1;
      }

      CGPropertiesRemoveProperty(v10, @"kCGColorConversionInfoOptions");
    }

    return 0;
  }

  return result;
}

uint64_t CGImageSetColorConversionInfoPayload(uint64_t result, const void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v4 == CGImageGetTypeID_image_type_id)
    {
      pthread_mutex_lock((v3 + 80));
      if (!*(v3 + 224))
      {
        v5 = CGPropertiesCreate();
        v6 = 0;
        atomic_compare_exchange_strong_explicit((v3 + 224), &v6, v5, memory_order_relaxed, memory_order_relaxed);
        if (v6)
        {
          CGPropertiesRelease(v5);
        }
      }

      pthread_mutex_unlock((v3 + 80));
      v7 = *(v3 + 224);
      if (a2)
      {
        CGPropertiesSetProperty(v7, @"kCGColorConversionInfoPayload", a2);
        return 1;
      }

      CGPropertiesRemoveProperty(v7, @"kCGColorConversionInfoPayload");
    }

    return 0;
  }

  return result;
}

void *__CGImageCreateWithJPEGDataProvider2_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceCreateImageAtIndex");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateImageAtIndex");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceCreateImageAtIndex");
  }

  CGImageCreateWithJPEGDataProvider2_f_111 = result;
  return result;
}

void *__CGImageCreateWithJPEGDataProvider2_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceCreateWithDataProvider");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateWithDataProvider");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceCreateWithDataProvider");
  }

  CGImageCreateWithJPEGDataProvider2_f = result;
  return result;
}

void *__CGImageCreateCopyWithResolvedOptions_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageDestinationAddImage");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageDestinationAddImage");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageDestinationAddImage");
  }

  CGImageCreateCopyWithResolvedOptions_f_80 = result;
  return result;
}

void *__CGImageCreateCopyWithResolvedOptions_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageDestinationCreateWithData");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageDestinationCreateWithData");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageDestinationCreateWithData");
  }

  CGImageCreateCopyWithResolvedOptions_f = result;
  return result;
}

CGImageRef CGImageCreateWithMaskAndMatte(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0;
  decode[2] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    return v3;
  }

  if ((*(a1 + 39) & 0xA) != 0 || *(a1 + 192))
  {
    return 0;
  }

  v8 = *(a2 + 36);
  if ((v8 & 0x2000000) != 0)
  {
    v11 = *(a2 + 160);
    if (v11)
    {
      decode[0] = v11[1];
      v12 = *v11;
    }

    else
    {
      decode[0] = 1.0;
      v12 = 0.0;
    }

    decode[1] = v12;
    DeviceGray = CGColorSpaceCreateDeviceGray();
    CopyWithColorSpace = CGImageCreate(*(a2 + 40), *(a2 + 48), *(a2 + 56), *(a2 + 64), *(a2 + 72), DeviceGray, 0, *(a2 + 152), decode, *(a2 + 36) & 0x1000000, kCGRenderingIntentDefault);
    goto LABEL_16;
  }

  if ((v8 & 0xC000000) != 0 || CGColorSpaceGetModel(*(a2 + 144)))
  {
    return 0;
  }

  DeviceGray = CGColorSpaceCreateDeviceGray();
  if (!CGColorSpaceEqualToColorSpace(*(a2 + 144), DeviceGray))
  {
    CopyWithColorSpace = CGImageCreateCopyWithColorSpace(a2, DeviceGray);
LABEL_16:
    v10 = CopyWithColorSpace;
    goto LABEL_17;
  }

  CFRetain(a2);
  v10 = a2;
LABEL_17:
  CGColorSpaceRelease(DeviceGray);
  if (a3 && (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) || (Copy = CGImageCreateCopy(a1)) == 0)
  {
    if (v10)
    {
      CFRelease(v10);
    }

    return 0;
  }

  v3 = Copy;
  *(Copy + 22) = v10;
  *(Copy + 9) |= 0x8000000u;
  if (a3)
  {
    v15 = *(Copy + 18);
    if (v15)
    {
      v16 = *(*(v15 + 24) + 48);
    }

    else
    {
      v16 = 0;
    }

    v17 = malloc_type_malloc(8 * v16, 0x100004000313F17uLL);
    for (*(v3 + 23) = v17; v16; --v16)
    {
      v18 = *a3++;
      *v17++ = v18;
    }
  }

  return v3;
}

CGImageRef CGImageCreateWithMaskingColor(CGImage *a1, uint64_t a2, __n128 a3)
{
  v3 = 0;
  v16[1] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    return v3;
  }

  if (*(a1 + 24))
  {
    return 0;
  }

  v6 = *(a1 + 18);
  if (v6)
  {
    v7 = *(*(v6 + 24) + 48);
    if (v7 >> 61)
    {
      MEMORY[0x1EEE9AC00](a1, a3);
      v8 = &v15;
      v9 = 0;
      goto LABEL_17;
    }

    v10 = 8 * v7;
  }

  else
  {
    v7 = 0;
    v10 = 0;
  }

  v11 = MEMORY[0x1EEE9AC00](v10, a3);
  v8 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v7 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v9 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  }

  else
  {
    v9 = 0;
  }

  if (v7 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
  {
    v9 = malloc_type_malloc(v11, 0x5359ECA0uLL);
  }

  else if (!v7)
  {
    goto LABEL_19;
  }

LABEL_17:
  v13 = 0;
  do
  {
    v9[v13] = *(a2 + 4 * v13);
    ++v13;
  }

  while (v7 != v13);
LABEL_19:
  v3 = CGImageCreateWithMaskingColors(a1, v9);
  if (v9 != v8)
  {
    free(v9);
  }

  return v3;
}

CGImageRef CGImageCreateWithMaskingColors(CGImageRef image, const CGFloat *components)
{
  v2 = 0;
  if (image)
  {
    v3 = components;
    if (components)
    {
      if ((*(image + 39) & 0xE) != 0 || *(image + 24))
      {
        return 0;
      }

      Copy = CGImageCreateCopy(image);
      v2 = Copy;
      if (!Copy)
      {
        return v2;
      }

      v6 = *(Copy + 18);
      if (v6)
      {
        v7 = *(*(v6 + 24) + 48);
      }

      else
      {
        v7 = 0;
      }

      v8 = malloc_type_malloc(16 * v7, 0x100004000313F17uLL);
      if (!v8)
      {
        CFRelease(v2);
        return 0;
      }

      v9 = 2 * v7;
      if (2 * v7)
      {
        v10 = v8;
        do
        {
          v11 = *v3++;
          *v10++ = v11;
          --v9;
        }

        while (v9);
      }

      *(v2 + 21) = v8;
      *(v2 + 9) |= 0x8000000u;
    }
  }

  return v2;
}

void *__CGImageCreateWithJPEGDataProvider3_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceCreateImageAtIndex");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateImageAtIndex");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceCreateImageAtIndex");
  }

  CGImageCreateWithJPEGDataProvider3_f_164 = result;
  return result;
}

void *__CGImageCreateWithJPEGDataProvider3_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceCreateWithDataProvider");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateWithDataProvider");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceCreateWithDataProvider");
  }

  CGImageCreateWithJPEGDataProvider3_f = result;
  return result;
}

void *__CGImageCreateWithJPEG2000DataProvider_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceCreateImageAtIndex");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateImageAtIndex");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceCreateImageAtIndex");
  }

  CGImageCreateWithJPEG2000DataProvider_f_183 = result;
  return result;
}

void *__CGImageCreateWithJPEG2000DataProvider_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageSourceCreateWithDataProvider");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageSourceCreateWithDataProvider");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageSourceCreateWithDataProvider");
  }

  CGImageCreateWithJPEG2000DataProvider_f = result;
  return result;
}

uint64_t CGImageCreateWithEPSDataProvider(CGDataProvider *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if ((*(a2 + 39) & 2) != 0)
  {
    return 0;
  }

  if (*(a2 + 192))
  {
    return 0;
  }

  v4 = CGImageEPSRepCreate(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v12 = v4;
  image_base = create_image_base(v4, v5, v6, v7, v8, v9, v10, v11);
  if (image_base)
  {
    v13 = v12[6];
    v14 = v12[7];
    if (v13 < 0.0 || v14 < 0.0)
    {
      v15 = *(v12 + 4);
      v16 = *(v12 + 5);
      *(&v13 - 2) = CGRectStandardize(*(&v13 - 2));
    }

    *(image_base + 40) = v13;
    *(image_base + 48) = v14;
    *(image_base + 32) = 0;
    *(image_base + 192) = v12;
    *(image_base + 36) = 1;
    *(image_base + 232) = 0u;
    *(image_base + 248) = 0u;
  }

  else
  {
    CFRelease(v12);
  }

  return image_base;
}

uint64_t create_subsampled_image_provider(uint64_t a1, int a2, CGColorSpace *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v12 = *(a4 + 120);
    if (v12 && ((v13 = @"kCGImageProviderAlphaIsNotPremultiplied", (values = CGPropertiesGetProperty(v12, @"kCGImageProviderAlphaIsNotPremultiplied")) != 0) || (v15 = *(a4 + 120)) != 0 && ((v13 = @"kCGImageProviderAlphaIsPremultiplied", (values = CGPropertiesGetProperty(v15, @"kCGImageProviderAlphaIsPremultiplied")) != 0) || (v16 = *(a4 + 120)) != 0 && (v13 = @"kCGImageProviderAlphaIsOne", (values = CGPropertiesGetProperty(v16, @"kCGImageProviderAlphaIsOne")) != 0))))
    {
      keys[0] = v13;
      v14 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v14 = 0;
    }

    v17 = *(a4 + 36);
    valuePtr = v17;
    if (!v14)
    {
      if (v17)
      {
        v18 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
        values = v18;
        keys[0] = @"kCGImageProviderBitmapInfo";
        v14 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v18)
        {
          CFRelease(v18);
        }
      }
    }
  }

  else
  {
    v14 = 0;
    valuePtr = 0;
  }

  v19 = (a1 + 16);
  if (!a1)
  {
    v19 = &CGSizeZero;
  }

  v20 = fabs(round(v19->width));
  p_height = (a1 + 24);
  if (!a1)
  {
    p_height = &CGSizeZero.height;
  }

  v22 = CGImageProviderCreate(a2, a3, a1, &subsampled_image_callbacks, v14, a6, a7, a8, v20, fabs(round(*p_height)));
  if (v14)
  {
    Count = CFDictionaryGetCount(v14);
    if (Count)
    {
      v25 = Count;
      v26 = 8 * Count;
      MEMORY[0x1EEE9AC00](Count, v24);
      v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
      v28 = &v37[-v27];
      if (v26 >= 0x200)
      {
        v29 = 512;
      }

      else
      {
        v29 = v26;
      }

      bzero(&v37[-v27], v29);
      MEMORY[0x1EEE9AC00](v30, v31);
      v32 = &v37[-v27];
      bzero(&v37[-v27], v29);
      CFDictionaryGetKeysAndValues(v14, &v37[-v27], &v37[-v27]);
      do
      {
        v34 = *v28++;
        v33 = v34;
        v35 = *v32++;
        CGImageProviderSetProperty(v22, v33, v35);
        --v25;
      }

      while (v25);
    }

    CFRelease(v14);
  }

  return v22;
}

atomic_uint *subsampled_image_copy_image_block_set(atomic_uint *a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a2 && !a3)
  {
    if (a1)
    {
      atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
      return a1;
    }
  }

  return result;
}

CFDictionaryRef __block_set_options_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  keys[0] = @"kCGImageBlockSingletonRequest";
  values = *MEMORY[0x1E695E4D0];
  result = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  block_set_options_options_singleton = result;
  return result;
}

BOOL CGImageIsMask(CGImageRef image)
{
  if (image)
  {
    LODWORD(image) = (*(image + 39) >> 1) & 1;
  }

  return image;
}

CFStringRef CGImageGetUTType(CGImageRef image)
{
  if (!image)
  {
    return 0;
  }

  v2 = CFGetTypeID(image);
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  if (v2 != CGImageGetTypeID_image_type_id)
  {
    return 0;
  }

  v3 = *(image + 27);
  if (!v3)
  {
    return 0;
  }

  return CGPropertiesGetProperty(v3, @"com.apple.ImageIO.imageSourceTypeIdentifier");
}

char *CGImageGetData(char *result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v80[249] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = CFGetTypeID(result);
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  if (v11 != CGImageGetTypeID_image_type_id)
  {
    return 0;
  }

  result = 0;
  v12 = *(v10 + 7);
  if (v12 > a4 || v12 - 9 < 0xFFFFFFFFFFFFFFF8)
  {
    return result;
  }

  if (*(v10 + 6) <= a3)
  {
    return 0;
  }

  v13 = *(v10 + 19);
  if (!v13)
  {
    result = CGImageGetDataProviderInternal(v10, 0);
    if (!result)
    {
      return result;
    }

    v13 = *(v10 + 19);
  }

  if ((*(v10 + 8) & 0x7000) == 0x2000)
  {
    v14 = v13;
    v15 = 4;
  }

  else
  {
    if ((*(v10 + 8) & 0x7000) != 0x1000)
    {
      CGDataProviderRetain(v13);
      goto LABEL_19;
    }

    v14 = v13;
    v15 = 2;
  }

  v13 = CGDataProviderCreateWithSwappedProvider(v14, v15);
LABEL_19:
  for (i = CGAccessSessionCreate(v13); a3; --a3)
  {
    CGAccessSessionSkipForward(i, *(v10 + 9));
  }

  v73 = a5;
  v74 = a6;
  if ((v10[39] & 2) != 0)
  {
    v22 = 1;
  }

  else
  {
    v17 = *(v10 + 18);
    if (v17)
    {
      v17 = *(*(v17 + 24) + 48);
    }

    v18 = *(v10 + 8) & 0x1F;
    v19 = v18 > 6;
    v20 = (1 << v18) & 0x61;
    if (v19 || v20 == 0)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = v17;
    }
  }

  v76 = malloc_type_malloc(*(v10 + 9), 0xB48B7DECuLL);
  if (a2)
  {
    v27 = 0;
    v28 = 0xFFFFFFFF >> -a4;
    v29 = 16 * v28;
    v75 = vdupq_n_s64(0x10uLL);
    while (1)
    {
      v78 = v27;
      CGAccessSessionGetBytes(i, v76, *(v10 + 9), v23, v24, v25, v26, v27);
      v30 = xmmword_18439C670;
      v31 = 0;
      v32 = *(v10 + 7);
      v33 = 0xFFFFFFFF >> -v32;
      v34 = (v33 + 16) & 0x1FFFFFFF0;
      v35 = v80;
      v23 = 11 * v28;
      v36 = vdupq_n_s64(v33);
      v37 = xmmword_18439C760;
      v38 = xmmword_18439C750;
      v39 = xmmword_18439C740;
      v40 = xmmword_18439C730;
      v41 = xmmword_18439C720;
      v42 = xmmword_18439C710;
      v43 = xmmword_18439C700;
      v25 = v29 - 2 * v28;
      v24 = 7 * v28;
      v26 = 9 * (0xFFFFFFFF >> -a4);
      do
      {
        v44 = vmovn_s64(vcgeq_u64(v36, v30));
        if (vuzp1_s8(vuzp1_s16(v44, *v36.i8), *v36.i8).u8[0])
        {
          *(v35 - 7) = v31 / v33;
        }

        if (vuzp1_s8(vuzp1_s16(v44, *&v36), *&v36).i8[1])
        {
          *(v35 - 6) = (v28 + v31) / v33;
        }

        if (vuzp1_s8(vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, *&v37))), *&v36).i8[2])
        {
          *(v35 - 5) = (2 * (0xFFFFFFFF >> -a4) + v31) / v33;
          *(v35 - 4) = (3 * (0xFFFFFFFF >> -a4) + v31) / v33;
        }

        v45 = vmovn_s64(vcgeq_u64(v36, v38));
        if (vuzp1_s8(*&v36, vuzp1_s16(v45, *&v36)).i32[1])
        {
          *(v35 - 3) = (4 * (0xFFFFFFFF >> -a4) + v31) / v33;
        }

        if (vuzp1_s8(*&v36, vuzp1_s16(v45, *&v36)).i8[5])
        {
          *(v35 - 2) = (5 * (0xFFFFFFFF >> -a4) + v31) / v33;
        }

        if (vuzp1_s8(*&v36, vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, *&v39)))).i8[6])
        {
          *(v35 - 1) = (6 * (0xFFFFFFFF >> -a4) + v31) / v33;
          *v35 = (7 * v28 + v31) / v33;
        }

        v46 = vmovn_s64(vcgeq_u64(v36, v40));
        if (vuzp1_s8(vuzp1_s16(v46, *v36.i8), *v36.i8).u8[0])
        {
          v35[1] = (8 * v28 + v31) / v33;
        }

        if (vuzp1_s8(vuzp1_s16(v46, *&v36), *&v36).i8[1])
        {
          v35[2] = (9 * (0xFFFFFFFF >> -a4) + v31) / v33;
        }

        if (vuzp1_s8(vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, *&v41))), *&v36).i8[2])
        {
          v35[3] = (10 * (0xFFFFFFFF >> -a4) + v31) / v33;
          v35[4] = (11 * v28 + v31) / v33;
        }

        v47 = vmovn_s64(vcgeq_u64(v36, v42));
        if (vuzp1_s8(*&v36, vuzp1_s16(v47, *&v36)).i32[1])
        {
          v35[5] = (12 * (0xFFFFFFFF >> -a4) + v31) / v33;
        }

        if (vuzp1_s8(*&v36, vuzp1_s16(v47, *&v36)).i8[5])
        {
          v35[6] = (13 * v28 + v31) / v33;
        }

        if (vuzp1_s8(*&v36, vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, *&v43)))).i8[6])
        {
          v35[7] = (v29 - 2 * v28 + v31) / v33;
          v35[8] = (15 * v28 + v31) / v33;
        }

        v38 = vaddq_s64(v38, v75);
        v37 = vaddq_s64(v37, v75);
        v30 = vaddq_s64(v30, v75);
        v39 = vaddq_s64(v39, v75);
        v40 = vaddq_s64(v40, v75);
        v41 = vaddq_s64(v41, v75);
        v31 += 16 * (0xFFFFFFFF >> -a4);
        v42 = vaddq_s64(v42, v75);
        v35 += 16;
        v43 = vaddq_s64(v43, v75);
        v34 -= 16;
      }

      while (v34);
      if (*(v10 + 5))
      {
        break;
      }

LABEL_109:
      v27 = v78 + 1;
      if (v78 + 1 == a2)
      {
        goto LABEL_110;
      }
    }

    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = v32 * v22;
    v54 = *(v10 + 8);
    v55 = v54 - v32 * v22;
    v56 = v76;
    v57 = &v76[*(v10 + 9)];
    v58 = (v74 + v78 * v73);
    while (1)
    {
      if (v22)
      {
        v59 = 0;
        while (1)
        {
          v60 = *(v10 + 7);
          if (v60 < 0x19)
          {
            break;
          }

          if (v51 > 0x17)
          {
            v62 = v51;
          }

          else
          {
            do
            {
              v52 <<= 8;
              if (v56 < v57)
              {
                v61 = *v56++;
                v52 |= v61;
              }

              v62 = v51 + 8;
              v63 = v51 >= 0x10;
              v51 += 8;
            }

            while (!v63);
          }

          v60 -= 24;
          v51 = v62 - 24;
          v64 = ((v52 >> (v62 - 24)) & 0xFFFFFF) << v60;
          if (v60)
          {
            goto LABEL_74;
          }

LABEL_79:
          v66 = v79[v60 | v64];
          if (a4 >= 0x19)
          {
            if (v48 >= 8)
            {
              do
              {
                v48 -= 8;
                *v58++ = v50 >> v48;
              }

              while (v48 > 7);
            }

            v50 = (v66 >> (a4 - 24)) | (v50 << 24);
            v48 |= 0x18uLL;
            v24 = a4 - 24;
            do
            {
LABEL_84:
              v48 -= 8;
              *v58++ = v50 >> v48;
            }

            while (v48 > 7);
            v25 = 0xFFFFFFFF >> -v24;
            v26 = v24;
            goto LABEL_86;
          }

          v24 = a4;
          v25 = 0xFFFFFFFF >> -a4;
          v26 = a4;
          if (v48 >= 8)
          {
            goto LABEL_84;
          }

LABEL_86:
          v23 = v25 & v66;
          v50 = (v50 << v26) | v23;
          v48 += v24;
          if (++v59 == v22)
          {
            goto LABEL_87;
          }
        }

        v64 = 0;
        if (!v60)
        {
          goto LABEL_79;
        }

LABEL_74:
        while (v51 < v60)
        {
          v52 <<= 8;
          if (v56 < v57)
          {
            v65 = *v56++;
            v52 |= v65;
          }

          v51 += 8;
        }

        v51 -= v60;
        LODWORD(v60) = (v52 >> v51) & (0xFFFFFFFF >> -v60);
        goto LABEL_79;
      }

LABEL_87:
      if (v54 != v53)
      {
        if (v55 >= 0x19)
        {
          if (v51 > 0x17)
          {
            v68 = v51;
          }

          else
          {
            do
            {
              v52 <<= 8;
              if (v56 < v57)
              {
                v67 = *v56++;
                v52 |= v67;
              }

              v68 = v51 + 8;
              v63 = v51 >= 0x10;
              v51 += 8;
            }

            while (!v63);
          }

          v51 = v68 - 24;
          v69 = v54 - v53 - 24;
          if (v54 - v53 == 24)
          {
            goto LABEL_104;
          }

LABEL_99:
          while (v51 < v69)
          {
            v52 <<= 8;
            if (v56 < v57)
            {
              v70 = *v56++;
              v23 = v70;
              v52 |= v70;
            }

            v51 += 8;
          }

          v51 -= v69;
          goto LABEL_104;
        }

        v69 = v55;
        if (v55)
        {
          goto LABEL_99;
        }
      }

LABEL_104:
      if (++v49 >= *(v10 + 5))
      {
        for (; v48; v48 = v71 + v72)
        {
          v71 = v48;
          if (v48 >= 8)
          {
            do
            {
              v71 -= 8;
              *v58++ = v50 >> v71;
            }

            while (v71 > 7);
          }

          v72 = -v48 & 7;
          v50 <<= v72;
        }

        goto LABEL_109;
      }
    }
  }

LABEL_110:
  free(v76);
  CGAccessSessionRelease(i);
  CGDataProviderRelease(v13);
  return a2;
}

uint64_t CGImageGetCachingFlags(uint64_t result)
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

uint64_t CGImageGetOrientation(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 38);
  }

  else
  {
    return 1;
  }
}

double CGImageGetTransformForOrientation@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, CGAffineTransform *a8@<X8>)
{
  if (a1)
  {
    return CGImageGetTransformForOrientationAndSize(*(a1 + 38), a2, a3, a4, a5, a6, a7, a8, *(a1 + 40), *(a1 + 48));
  }

  *a8 = CGAffineTransformIdentity;
  return CGAffineTransformIdentity.tx;
}

double CGImageGetTransformForOrientationAndSize@<D0>(int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v44 = *MEMORY[0x1E69E9840];
  if ((a1 - 9) <= 0xFFFFFFF7 || a9 == 0.0 || a10 == 0.0)
  {
    CGLog(1, "%s %s", a2, a3, a4, a5, a6, a7, "CGImageGetTransformForOrientationAndSize");
    *a8 = CGAffineTransformIdentity;
    *&v12 = CGAffineTransformIdentity.tx;
  }

  else
  {
    v15[0] = 0x3FF0000000000000;
    v15[1] = 0;
    v15[2] = 0;
    v15[3] = 0x3FF0000000000000;
    v15[4] = 0;
    v15[5] = 0;
    v15[6] = 0xBFF0000000000000;
    v15[7] = 0;
    v15[8] = 0;
    v15[9] = 0x3FF0000000000000;
    *&v15[10] = a9;
    v16 = xmmword_18439CA00;
    v17 = 0;
    v18 = 0;
    v19 = 0xBFF0000000000000;
    v20 = a9;
    v21 = a10;
    v23 = 0;
    v24 = 0;
    v22 = 0x3FF0000000000000;
    v25 = xmmword_18439CA10;
    v26 = a10;
    v27 = xmmword_18439CA00;
    v28 = xmmword_18439CA10;
    v29 = a10;
    v30 = a9;
    v31 = xmmword_18439CA00;
    v33 = 0;
    v34 = 0;
    v32 = 0x3FF0000000000000;
    v35 = a9;
    v36 = xmmword_18439C780;
    v38 = 0u;
    v39 = 0u;
    v37 = 0x3FF0000000000000;
    v40 = 0x3FF0000000000000;
    v41 = xmmword_18439CA10;
    v42 = a10;
    v43 = 0;
    v11 = &v15[6 * (a1 - 1)];
    v12 = v11[1];
    v13 = v11[2];
    *(a8 + 16) = v12;
    *(a8 + 32) = v13;
    *a8 = *v11;
  }

  return *&v12;
}

double CGImageGetSizeAfterOrientation(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  result = *(a1 + 40);
  if (*(a1 + 38) << 16 > 0x40000u)
  {
    return *(a1 + 48);
  }

  return result;
}

uint64_t CGClassifyRectilinearTransform(_OWORD *a1)
{
  v1 = a1[1];
  *&v6.a = *a1;
  *&v6.c = v1;
  *&v6.tx = a1[2];
  memset(&v7, 0, sizeof(v7));
  CGAffineTransformDecompose(&v7, &v6);
  v2 = (v7.rotation + v7.rotation) / 3.14159265;
  v3 = v2;
  v4 = rintf(v3);
  if (vabdd_f64(v2, v4) <= 1.42108547e-14 && fabs(v7.horizontalShear) <= 1.42108547e-14)
  {
    return CGClassifyRectilinearTransform_rotations[2 * (v4 & 3) + (v7.scale.width < 0.0)];
  }

  else
  {
    return 0;
  }
}

const void *CGImageGetColorConversionInfoOptions(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 224)) != 0)
  {
    return CGPropertiesGetProperty(v1, @"kCGColorConversionInfoOptions");
  }

  else
  {
    return 0;
  }
}

const void *CGImageGetColorConversionInfoPayload(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 224)) != 0)
  {
    return CGPropertiesGetProperty(v1, @"kCGColorConversionInfoPayload");
  }

  else
  {
    return 0;
  }
}

CFStringRef CGImageCreateFileNameForBufferReader(CGImage *a1, char *__s)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    return 0;
  }

  v4 = strlen(__s);
  __strlcpy_chk();
  v5 = filename_ends_with_br2_extension(__s);
  if (v5)
  {
    v33[v4 - 4] = 0;
  }

  ColorSpace = CGImageGetColorSpace(a1);
  ID = CGColorSpaceGetID(ColorSpace);
  Model = CGColorSpaceGetModel(ColorSpace);
  BitmapInfo = CGImageGetBitmapInfo(a1);
  if (CGImageGetPixelFormatInfo(a1) == kCGImagePixelFormatRGBCIF10 && CGImageGetMask(a1))
  {
    v10 = BitmapInfo & 0xFFFFFFE0;
    Matte = CGImageGetMatte(a1);
    if (!Matte)
    {
      BitmapInfo = v10 | 9;
      if (a1)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    if (*Matte != 0.0 || Matte[1] != 0.0 || Matte[2] != 0.0)
    {
      _CGHandleAssert("CGImageCreateFileNameForBufferReader", 4362, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "matte[0] == 0.0 && matte[1] == 0.0 && matte[2] == 0.0", "matte: {%f, %f, %f}", v12, v13, v14, *Matte);
    }

    BitmapInfo = v10 | 8;
  }

  if (a1)
  {
LABEL_12:
    v16 = *(a1 + 6);
    v15 = *(a1 + 7);
    if (ID)
    {
      Model = ID;
      v17 = "ID";
    }

    else
    {
      v17 = "";
    }

    v18 = *(a1 + 9);
    v19 = *(a1 + 5);
    HeadroomInfo = CGImageGetHeadroomInfo(a1, 0);
    goto LABEL_21;
  }

LABEL_17:
  if (ID)
  {
    Model = ID;
    v17 = "ID";
  }

  else
  {
    v17 = "";
  }

  HeadroomInfo = CGImageGetHeadroomInfo(0, 0);
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v15 = 0;
LABEL_21:
  v21 = snprintf(__str, 0x400uLL, "%s_w=%ld,h=%ld,rb=%ld,cs%s=%ld,bpc=%ld,hr=%.4g,bmi=0x%08X", v33, v19, v16, v18, v17, Model, v15, HeadroomInfo, BitmapInfo);
  if (v21 >= 1025)
  {
    v29 = "Failed to format string because name is too long";
LABEL_28:
    CGPostError(v29, v22, v23, v24, v25, v26, v27, v28, v31);
    return 0;
  }

  if (v21 < 0)
  {
    v29 = "snprintf failed";
    goto LABEL_28;
  }

  if (v5)
  {
    __strlcat_chk();
  }

  return CFStringCreateWithCString(*MEMORY[0x1E695E480], __str, 0x8000100u);
}

const char *filename_ends_with_br2_extension(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result);
    if (v2 < 4)
    {
      return 0;
    }

    else
    {
      return (strcmp(&v1[v2 - 4], ".br2") == 0);
    }
  }

  return result;
}

void CGImageDumpToFile(uint64_t a1, const char *a2)
{
  v83 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v2 = a2;
  if (!a2 || strlen(a2) < 3)
  {
    return;
  }

  bzero(__str, 0x401uLL);
  v10 = CFGetTypeID(a1);
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  if (v10 != CGImageGetTypeID_image_type_id)
  {
    CGLog(1, "%s %s %s", v4, v5, v6, v7, v8, v9, "CGImageDumpToFile");
    return;
  }

  v11 = *v2;
  if ((v11 & 0xFE) == 0x2A && v2[1] == 47)
  {
    if (CGGetTempDirPath_predicate != -1)
    {
      dispatch_once(&CGGetTempDirPath_predicate, &__block_literal_global_119);
    }

    v74 = v2 + 2;
    v2 = __str;
    snprintf(__str, 0x400uLL, "%s%s", &CGGetTempDirPath_tempDirPath, v74);
  }

  bzero(__s, 0x400uLL);
  bzero(&__to, 0x400uLL);
  if (strlen(v2) >= 5 && filename_ends_with_br2_extension(v2) && !strstr(v2, "w=") && (FileNameForBufferReader = CGImageCreateFileNameForBufferReader(a1, v2)) != 0)
  {
    v45 = FileNameForBufferReader;
    p_to = __s;
    CFStringGetCString(FileNameForBufferReader, __s, 1024, 0x8000100u);
    CFRelease(v45);
  }

  else
  {
    p_to = 0;
  }

  if (*(a1 + 208))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"kCGImageBlockSingletonRequest", *MEMORY[0x1E695E4D0]);
    v20 = CGImageProviderCopyImageBlockSetWithOptions(*(a1 + 208), Mutable);
    if (!v20)
    {
      v20 = CGImageProviderCopyImageBlockSetWithOptions(*(a1 + 208), 0);
      if (!v20)
      {
        v46 = CGImageProviderCopyIOSurface(*(a1 + 208));
        if (v46)
        {
          v47 = v46;
          if (IOSurfaceGetPixelFormat(v46) == 1279340600)
          {
            BytesPerRow = IOSurfaceGetBytesPerRow(v47);
            Height = IOSurfaceGetHeight(v47);
            if (!IOSurfaceLock(v47, 1u, 0))
            {
              BaseAddress = IOSurfaceGetBaseAddress(v47);
              if (p_to)
              {
                v51 = p_to;
              }

              else
              {
                v51 = v2;
              }

              v52 = open(v51, 1538, 511);
              if (v52 != -1)
              {
                v53 = v52;
                write(v52, BaseAddress, Height * BytesPerRow);
                close(v53);
                IOSurfaceUnlock(v47, 1u, 0);
                CFRelease(v47);
                CFRelease(Mutable);
                goto LABEL_56;
              }

              IOSurfaceUnlock(v47, 1u, 0);
            }
          }

          CFRelease(v47);
        }

        CFRelease(Mutable);
        goto LABEL_56;
      }
    }

    v21 = v20;
    if (*(v20 + 120) == 1)
    {
      v22 = *(v20 + 128);
      if (v22)
      {
        v23 = p_to ? p_to : v2;
        v24 = fopen(v23, "w");
        if (v24)
        {
          v25 = v24;
          v26 = *v22;
          if (*v22)
          {
            __s1 = v23;
            v27 = *(v22 + 40);
            v28 = ((*(v22 + 24) * *(a1 + 64) + 7.0) * 0.125 + (*(v22 + 32) + -1.0) * v27);
            v29 = fwrite(v26, 1uLL, v28, v25);
            fclose(v25);
            if (v29 == v28)
            {
              v30 = *(a1 + 72);
              if (v27 != v30)
              {
                v78 = 0u;
                v79 = 0u;
                *__s2 = 0u;
                v77 = 0u;
                snprintf(__s2, 0x3FuLL, "rb=%zu", v30);
                if (strstr(__s1, __s2))
                {
                  strlen(__s2);
                  __to.__pn_.__r_.__value_.__s.__data_[0] = 0;
                  __strncat_chk();
                  snprintf(__s2, 0x3FuLL, "rb=%zu", v27);
                  strlen(&__to);
                  __strncat_chk();
                  strlen(&__to);
                  __strncat_chk();
                  rename(__s1, &__to, v31);
                  if (!v32)
                  {
                    snprintf(__s, 0x400uLL, "%s", &__to);
                    p_to = &__to;
                  }
                }
              }
            }
          }

          else
          {
            fclose(v25);
          }
        }
      }
    }

    CGImageBlockSetRelease(v21);
    CFRelease(Mutable);
  }

  else if (*(a1 + 152))
  {
    v33 = malloc_type_calloc(*(a1 + 72), *(a1 + 48), 0x5513CC8EuLL);
    if (v33)
    {
      v34 = v33;
      v35 = CGAccessSessionCreate(*(a1 + 152));
      CGAccessSessionGetBytes(v35, v34, *(a1 + 48) * *(a1 + 72), v36, v37, v38, v39, v40);
      CGAccessSessionRelease(v35);
      if (p_to)
      {
        v41 = p_to;
      }

      else
      {
        v41 = v2;
      }

      v42 = fopen(v41, "w");
      if (v42)
      {
        v43 = v42;
        fwrite(v34, *(a1 + 48), *(a1 + 72), v42);
        fclose(v43);
      }

      free(v34);
    }
  }

LABEL_56:
  CGLog(1, "%s %s %s", v12, v13, v14, v15, v16, v17, "CGImageDumpToFile");
  ColorSpace = CGImageGetColorSpace(a1);
  v55 = ColorSpace;
  if (v11 == 43)
  {
    v56 = strstr(__s, ".br2");
    if (v56)
    {
      snprintf(v56, __s - v56 + 1024, ".cs");
      v57 = CGColorSpaceCopyPropertyList(v55);
      if (!v57)
      {
        p_to = __s;
        goto LABEL_71;
      }

      v58 = v57;
      Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], v57, kCFPropertyListXMLFormat_v1_0, 0, 0);
      p_to = __s;
      v60 = fopen(__s, "w");
      if (!v60)
      {
        goto LABEL_69;
      }

      v61 = v60;
      BytePtr = CFDataGetBytePtr(Data);
      Length = CFDataGetLength(Data);
      v64 = BytePtr;
      v65 = 1;
      goto LABEL_67;
    }
  }

  else if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelIndexed)
  {
    v66 = CGColorSpaceCopyColorTable(v55);
    if (v66)
    {
      v58 = v66;
      v67 = strstr(__s, ".br2");
      if (!v67)
      {
        v67 = strstr(__s, ".cs");
        if (!v67)
        {
          goto LABEL_69;
        }
      }

      snprintf(v67, __s - v67 + 1024, ".pal");
      v68 = fopen(__s, "w");
      if (!v68)
      {
LABEL_68:
        p_to = __s;
LABEL_69:
        CFRelease(v58);
        goto LABEL_71;
      }

      v61 = v68;
      v69 = CFDataGetLength(v58);
      v64 = CFDataGetBytePtr(v58);
      Length = 1;
      v65 = v69;
LABEL_67:
      fwrite(v64, Length, v65, v61);
      fclose(v61);
      goto LABEL_68;
    }
  }

LABEL_71:
  if (CGImageGetMask(a1))
  {
    Mask = CGImageGetMask(a1);
    v71 = strstr(p_to, "w=");
    if (v71)
    {
      snprintf(v71, __s - v71 + 1024, "(alpha).br2");
      v72 = CGImageCreateFileNameForBufferReader(Mask, p_to);
      if (v72)
      {
        v73 = v72;
        CFStringGetCString(v72, __s, 1024, 0x8000100u);
        CFRelease(v73);
        CGImageDumpToFile(Mask, __s);
      }
    }
  }
}

uint64_t CGImageWriteToFile(const void *a1, char *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  memset(__dst, 0, 7);
  bzero(__str, 0x401uLL);
  v4 = 0;
  if (a1 && a2)
  {
    v5 = CFGetTypeID(a1);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v5 == CGImageGetTypeID_image_type_id)
    {
      if (*a2 == 42 && a2[1] == 47)
      {
        if (CGGetTempDirPath_predicate != -1)
        {
          dispatch_once(&CGGetTempDirPath_predicate, &__block_literal_global_119);
        }

        v28 = a2 + 2;
        a2 = __str;
        snprintf(__str, 0x400uLL, "%s%s", &CGGetTempDirPath_tempDirPath, v28);
      }

      v6 = strrchr(a2, 46);
      if (v6)
      {
        v7 = v6;
        v8 = strlen(v6);
        if (v8 <= 5)
        {
          v9 = v8;
          strncpy(__dst, v7, 6uLL);
          if (v9 >= 2)
          {
            v10 = v9 - 1;
            v11 = &__dst[1];
            do
            {
              *v11 = __tolower(*v11);
              ++v11;
              --v10;
            }

            while (v10);
          }
        }
      }

      if (!(*__dst ^ 0x6669742E | __dst[4]) || (*__dst == 1718187054 ? (v12 = *&__dst[4] == 102) : (v12 = 0), v12))
      {
        v16 = @"public.tiff";
      }

      else if (!(*__dst ^ 0x67706A2E | __dst[4]) || (*__dst == 1701866030 ? (v13 = *&__dst[4] == 103) : (v13 = 0), v13))
      {
        v16 = @"public.jpeg";
      }

      else
      {
        if (*__dst ^ 0x676E702E | __dst[4])
        {
          if (*__dst ^ 0x6664702E | __dst[4])
          {
            v32 = 0;
            v31 = 0;
            strncpy(__s, a2, 0x3FCuLL);
            strcat(__s, ".pdf");
            v14 = __s;
            v15 = a1;
          }

          else
          {
            v15 = a1;
            v14 = a2;
          }

          if (write_to_pdf_context(v15, v14))
          {
LABEL_48:
            v4 = 1;
LABEL_49:
            CGLog(1, "%s %s %s", v18, v19, v20, v21, v22, v23, "CGImageWriteToFile");
            return v4;
          }

LABEL_43:
          v4 = 0;
          goto LABEL_49;
        }

        v16 = @"public.png";
      }

      v17 = strlen(a2);
      v4 = CFURLCreateFromFileSystemRepresentation(0, a2, v17, 0);
      if (!v4)
      {
        goto LABEL_49;
      }

      if (CGImageWriteToFile_predicate != -1)
      {
        dispatch_once(&CGImageWriteToFile_predicate, &__block_literal_global_246);
      }

      v24 = CGImageWriteToFile_f(v4, v16, 1, 0);
      if (v24)
      {
        v25 = v24;
        if (CGImageWriteToFile_predicate_249 != -1)
        {
          dispatch_once(&CGImageWriteToFile_predicate_249, &__block_literal_global_252);
        }

        CGImageWriteToFile_f_248(v25, a1, 0);
        if (CGImageWriteToFile_predicate_254 != -1)
        {
          dispatch_once(&CGImageWriteToFile_predicate_254, &__block_literal_global_257_5414);
        }

        v26 = CGImageWriteToFile_f_253(v25);
        CFRelease(v25);
        CFRelease(v4);
        if (v26)
        {
          goto LABEL_48;
        }
      }

      else
      {
        CFRelease(v4);
      }

      goto LABEL_43;
    }

    return 0;
  }

  return v4;
}

BOOL write_to_pdf_context(uint64_t a1, char *cStr)
{
  v3 = vcvtq_f64_u64(*(a1 + 40));
  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size = v3;
  v4 = CGPDFContextCreateWithFilename(cStr, &v7, 0);
  v5 = v4;
  if (v4)
  {
    CGContextBeginPage(v4, 0);
    CGContextDrawImage(v5, v7, a1);
    CGContextEndPage(v5);
    CFRelease(v5);
  }

  return v5 != 0;
}

void *__CGImageWriteToFile_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageDestinationAddImage");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageDestinationAddImage");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageDestinationAddImage");
  }

  CGImageWriteToFile_f_248 = result;
  return result;
}

void *__CGImageWriteToFile_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (CGLibraryLoadImageIODYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadImageIODYLD_once, &__block_literal_global_5_22103);
  }

  if (!CGLibraryLoadImageIODYLD_handle)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 28, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "handle != NULL", "Handle for %s failed to load", a6, a7, a8, "CGImageDestinationCreateWithURL");
  }

  result = dlsym(CGLibraryLoadImageIODYLD_handle, "CGImageDestinationCreateWithURL");
  if (!result)
  {
    _CGHandleAssert("CGLibraryLoadImageIOFunction", 30, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageIO.h", "ptr != NULL", "Could not find symbol %s in library handle %p", v9, v10, v11, "CGImageDestinationCreateWithURL");
  }

  CGImageWriteToFile_f = result;
  return result;
}

uint64_t CGImageCreateMaskFromAlpha(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 39) & 4) != 0)
    {
      if (*(a1 + 56) == 8 && *(a1 + 64) == 32)
      {
        v9 = *(a1 + 152);
        if (v9)
        {
          goto LABEL_8;
        }

        if (CGImageGetDataProviderInternal(a1, 0))
        {
          v9 = *(v8 + 152);
LABEL_8:
          if ((*(v8 + 32) & 0x7000) == 0x2000)
          {
            v10 = v9;
            v11 = 4;
          }

          else
          {
            if ((*(v8 + 32) & 0x7000) != 0x1000)
            {
              CGDataProviderRetain(v9);
              goto LABEL_16;
            }

            v10 = v9;
            v11 = 2;
          }

          v9 = CGDataProviderCreateWithSwappedProvider(v10, v11);
LABEL_16:
          v13 = xmmword_184562A30;
          v8 = mask_create(*(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), v9, &v13, 0, *(v8 + 32) & 0x1F);
          CGDataProviderRelease(v9);
          return v8;
        }
      }

      else
      {
        CGPostError("%s: Unsupported bitsPerComponent (%zu, must be 8) or bitsPerPixel (%zu, must be 32)", a2, a3, a4, a5, a6, a7, a8, "CGImageCreateMaskFromAlpha");
      }
    }

    return 0;
  }

  return v8;
}

void CGImageGetContentAverageLightLevel(CGImage *a1)
{
  if (get_average_light_level_nits(a1, 0))
  {
    if (CGImageDefaultReferenceWhite_once != -1)
    {
      dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
    }

    v1 = CGImageDefaultReferenceWhite_media_white;
    if (CGImageDefaultReferenceWhite_media_white)
    {
      v2 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
      if (v2 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
      }
    }
  }
}

void CGImageCalculateContentAverageLightLevel(CGImage *a1)
{
  if (get_average_light_level_nits(a1, 1))
  {
    if (CGImageDefaultReferenceWhite_once != -1)
    {
      dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
    }

    v1 = CGImageDefaultReferenceWhite_media_white;
    if (CGImageDefaultReferenceWhite_media_white)
    {
      v2 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
      if (v2 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
      }
    }
  }
}

BOOL CGImageContainsImageSpecificToneMappingMetadata(CGImage *a1)
{
  ColorSpace = CGImageGetColorSpace(a1);

  return CGColorSpaceContainsFlexGTCInfo(ColorSpace);
}

uint64_t CGImageGetEDRHeadroomDefault()
{
  if (CGImageGetEDRHeadroomDefault_predicate != -1)
  {
    dispatch_once(&CGImageGetEDRHeadroomDefault_predicate, &__block_literal_global_267);
  }

  return CGImageGetEDRHeadroomDefault_default_headroom;
}

CFNumberRef __CGImageGetEDRHeadroomDefault_block_invoke()
{
  valuePtr = 1084072622;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  CGImageGetEDRHeadroomDefault_default_headroom = result;
  return result;
}

uint64_t CGImageDefaultMasterPeak()
{
  if (CGImageDefaultMasterPeak_once != -1)
  {
    dispatch_once(&CGImageDefaultMasterPeak_once, &__block_literal_global_273);
  }

  return CGImageDefaultMasterPeak_media_white;
}

CFNumberRef __CGImageDefaultMasterPeak_block_invoke()
{
  valuePtr = 1148846080;
  result = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  CGImageDefaultMasterPeak_media_white = result;
  return result;
}

uint64_t Wf_sample_W8(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v86 = *(result + 80);
  v88 = *(result + 88);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 8;
  v12 = *(result + 144) - 1;
  if (v5)
  {
    v13 = 0;
  }

  else
  {
    v13 = -16777216;
  }

  v14 = *(result + 260) - 1;
  v15 = *(result + 256);
  v16 = (v5 + (v15 - 1) + (v14 * v7));
  v17 = v4 + v15 + (v14 * v6) - 1;
  v87 = *(result + 64);
  v85 = *(result + 188);
  v89 = *(result + 72);
  while (1)
  {
LABEL_5:
    if (a3 >= v89)
    {
      if (a3 <= v88)
      {
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
        v29 = v87;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v88;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_43;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v29 = v87;
        v27 = v25 | v85;
        v28 = v23 - 0x1000000;
        v26 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v89 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_43;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v29 = v87;
      v27 = v21 | v85;
      v28 = v19 + 0x1000000;
      v26 = 512;
    }

    if (a2 >= v29)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v29 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v85;
      }

      v33 = v31 + 0x1000000;
      v34 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 8;
    *++v12 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v86)
  {
    v34 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_29;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v86;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_43;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v85;
  }

  v33 = v36 - 0x1000000;
  v34 = 28;
LABEL_29:
  if (v27 < 0x400000)
  {
    goto LABEL_43;
  }

  v38 = v28 >> 32;
  v39 = v4 + v38 * v6 + (v33 >> 32);
  v40 = *(result + 32);
  if (v17 >= v39)
  {
    v41 = (v4 + v38 * v6 + (v33 >> 32));
  }

  else
  {
    v41 = v17;
  }

  if (v41 < v40)
  {
    v41 = *(result + 32);
  }

  v42 = *v41;
  if (v5)
  {
    v43 = v5 + v38 * v7 + (v33 >> 32);
    v44 = *(result + 40);
    if (v16 >= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v16;
    }

    if (v45 >= v44)
    {
      v44 = v45;
    }

    v42 |= *v44 << 24;
    if (!v8)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v43 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }
  }

  v46 = *(v8 + (v34 | v26));
LABEL_69:
  v55 = v46 & 0xF;
  if (v55 == 1)
  {
    v79 = (v39 + SBYTE1(v46) * v6);
    if (v17 < v79)
    {
      v79 = v17;
    }

    if (v79 < v40)
    {
      v79 = v40;
    }

    v80 = *v79;
    if (v5)
    {
      v81 = (v43 + SBYTE1(v46) * v7);
      if (v16 < v81)
      {
        v81 = v16;
      }

      if (v81 < *(result + 40))
      {
        v81 = *(result + 40);
      }

      v80 |= *v81 << 24;
    }

    v42 = v42 - ((interpolate_8888_21865[HIBYTE(v46) & 3] & v42) >> ((HIBYTE(v46) & 3) + 1)) + ((interpolate_8888_21865[HIBYTE(v46) & 3] & v80) >> ((HIBYTE(v46) & 3) + 1));
  }

  else
  {
    if (v55 == 2)
    {
      v74 = (v39 + SBYTE2(v46));
      if (v17 < v74)
      {
        v74 = v17;
      }

      if (v74 < v40)
      {
        v74 = v40;
      }

      v75 = *v74;
      if (v5)
      {
        v76 = (v43 + SBYTE2(v46));
        if (v16 < v76)
        {
          v76 = v16;
        }

        if (v76 < *(result + 40))
        {
          v76 = *(result + 40);
        }

        v75 |= *v76 << 24;
      }

      v77 = (v46 >> 28) & 3;
      v78 = interpolate_8888_21865[v77];
      v71 = v77 + 1;
      v72 = v42 - ((v78 & v42) >> v71);
      v73 = v78 & v75;
    }

    else
    {
      if (v55 != 3)
      {
        goto LABEL_47;
      }

      v82 = HIBYTE(v46) & 3;
      v56 = (v39 + SBYTE2(v46));
      if (v17 < v56)
      {
        v56 = v17;
      }

      if (v56 < v40)
      {
        v56 = v40;
      }

      v57 = *v56;
      v58 = (v39 + SBYTE1(v46) * v6);
      if (v17 >= v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = v17;
      }

      if (v59 < v40)
      {
        v59 = v40;
      }

      v84 = *v59;
      v60 = &v58[SBYTE2(v46)];
      if (v17 < v60)
      {
        v60 = v17;
      }

      if (v60 < v40)
      {
        v60 = v40;
      }

      v83 = *v60;
      if (v5)
      {
        v61 = (v43 + SBYTE2(v46));
        v62 = *(result + 40);
        if (v16 < v61)
        {
          v61 = v16;
        }

        if (v61 < v62)
        {
          v61 = *(result + 40);
        }

        v57 |= *v61 << 24;
        v63 = v43 + SBYTE1(v46) * v7;
        if (v16 >= v63)
        {
          v64 = (v43 + SBYTE1(v46) * v7);
        }

        else
        {
          v64 = v16;
        }

        if (v64 < v62)
        {
          v64 = *(result + 40);
        }

        v84 |= *v64 << 24;
        v65 = (v63 + SBYTE2(v46));
        if (v16 < v65)
        {
          v65 = v16;
        }

        if (v65 < v62)
        {
          v65 = *(result + 40);
        }

        v83 |= *v65 << 24;
      }

      v66 = interpolate_8888_21865[v82];
      v67 = v42 - ((v66 & v42) >> (v82 + 1)) + ((v66 & v84) >> (v82 + 1));
      v68 = v57 - ((v66 & v57) >> (v82 + 1)) + ((v66 & v83) >> (v82 + 1));
      v69 = (v46 >> 28) & 3;
      v70 = interpolate_8888_21865[v69];
      v71 = v69 + 1;
      v72 = v67 - ((v67 & v70) >> v71);
      v73 = v68 & v70;
    }

    v42 = v72 + (v73 >> v71);
  }

LABEL_47:
  *(v11 + 8) = _blt_float[v42];
  *(v11 + 12) = _blt_float[(v42 | v13) >> 24];
  *(v12 + 1) = v27 >> 22;
  if (a4 != 1)
  {
    v47 = 0;
    v48 = (v11 + 20);
    a2 += v10;
    v49 = v86 - a2;
    a3 += v9;
    v50 = v88 - a3;
    while ((((a2 - v87) | v49 | (a3 - v89) | v50) & 0x8000000000000000) == 0)
    {
      v39 = v4 + SHIDWORD(a3) * v6 + (a2 >> 32);
      v40 = *(result + 32);
      if (v17 >= v39)
      {
        v51 = (v4 + SHIDWORD(a3) * v6 + (a2 >> 32));
      }

      else
      {
        v51 = v17;
      }

      if (v51 < v40)
      {
        v51 = *(result + 32);
      }

      v42 = *v51;
      if (v5)
      {
        v43 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
        v52 = *(result + 40);
        if (v16 >= v43)
        {
          v53 = v5 + SHIDWORD(a3) * v7 + (a2 >> 32);
        }

        else
        {
          v53 = v16;
        }

        if (v53 >= v52)
        {
          v52 = v53;
        }

        v42 |= *v52 << 24;
      }

      if (v8)
      {
        v46 = *(v8 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v46 & 0xF) != 0)
        {
          v12 += v47 + 1;
          v11 = (v48 - 3);
          a4 += ~v47;
          v27 = -1;
          goto LABEL_69;
        }
      }

      *(v48 - 1) = _blt_float[v42];
      *v48 = _blt_float[(v42 | v13) >> 24];
      v48 += 2;
      v54 = v12 + v47++;
      a2 += v10;
      *(v54 + 2) = -1;
      v49 -= v10;
      a3 += v9;
      v50 -= v9;
      if (a4 - 1 == v47)
      {
        return result;
      }
    }

    v12 += v47 + 1;
    v11 = (v48 - 3);
    a4 += ~v47;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t Wf_sample_W16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v90 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 8;
  v92 = *(result + 88);
  v93 = *(result + 144) - 1;
  if (v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = -65536;
  }

  v13 = *(result + 260) - 1;
  v14 = *(result + 256);
  v15 = v5 + (v13 * v7) + 2 * (v14 - 1);
  v16 = v4 + (v13 * v6) + 2 * v14 - 2;
  v88 = *(result + 188);
  v91 = *(result + 72);
  v89 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v91)
    {
      if (a3 <= v92)
      {
        v25 = (a3 >> 22) & 0x3C0;
        v26 = 0x3FFFFFFF;
        v27 = a3;
        v28 = v89;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v92;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_43;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v28 = v89;
        v26 = v24 | v88;
        v27 = v22 - 0x1000000;
        v25 = 448;
      }
    }

    else
    {
      v17 = *(result + 216);
      v18 = v91 - *(result + 224);
      v19 = a3 - v18 + (v17 >> 1);
      if (v19 < 1)
      {
        goto LABEL_43;
      }

      if (v19 >= v17)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v19) >> 32;
      }

      v28 = v89;
      v26 = v20 | v88;
      v27 = v18 + 0x1000000;
      v25 = 512;
    }

    if (a2 >= v28)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v28 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v26 = ((v26 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v88;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 8;
    *++v93 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v90)
  {
    v33 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_29;
  }

  v34 = *(result + 192);
  v35 = *(result + 200) + v90;
  v36 = v35 - a2 + (v34 >> 1);
  if (v36 < 1)
  {
    goto LABEL_43;
  }

  if (v36 < v34)
  {
    v26 = ((v26 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v88;
  }

  v32 = v35 - 0x1000000;
  v33 = 28;
LABEL_29:
  if (v26 < 0x400000)
  {
    goto LABEL_43;
  }

  v37 = v27 >> 32;
  v38 = v4 + v37 * v6;
  v39 = (v32 >> 31) & 0xFFFFFFFFFFFFFFFELL;
  v40 = v38 + v39;
  v41 = *(result + 32);
  if (v16 >= v38 + v39)
  {
    v42 = (v38 + v39);
  }

  else
  {
    v42 = v16;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  v43 = bswap32(*v42) >> 16;
  if (!v5)
  {
    v44 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v47 = *(v8 + (v33 | v25));
LABEL_68:
    v57 = v47 & 0xF;
    v58 = HIBYTE(v47) & 3;
    switch(v57)
    {
      case 1:
        v82 = (v40 + SBYTE1(v47) * v6);
        if (v16 < v82)
        {
          v82 = v16;
        }

        if (v82 < v41)
        {
          v82 = v41;
        }

        v83 = bswap32(*v82) >> 16;
        if (v5)
        {
          v84 = (v44 + SBYTE1(v47) * v7);
          if (v15 < v84)
          {
            v84 = v15;
          }

          if (v84 < *(result + 40))
          {
            v84 = *(result + 40);
          }

          v83 |= bswap32(*v84) & 0xFFFF0000;
        }

        v85 = interpolate_1616[v58];
        v86 = v58 + 1;
        v77 = v43 - ((v85 & v43) >> v86);
        v78 = (v85 & v83) >> v86;
        break;
      case 2:
        v79 = (v40 + 2 * SBYTE2(v47));
        if (v16 < v79)
        {
          v79 = v16;
        }

        if (v79 < v41)
        {
          v79 = v41;
        }

        v80 = bswap32(*v79) >> 16;
        if (v5)
        {
          v81 = (v44 + 2 * SBYTE2(v47));
          if (v15 < v81)
          {
            v81 = v15;
          }

          if (v81 < *(result + 40))
          {
            v81 = *(result + 40);
          }

          v80 |= bswap32(*v81) & 0xFFFF0000;
        }

        v43 = v43 - ((interpolate_1616[(v47 >> 28) & 3] & v43) >> (((v47 >> 28) & 3) + 1)) + ((interpolate_1616[(v47 >> 28) & 3] & v80) >> (((v47 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v87 = HIBYTE(v47) & 3;
        v59 = (v40 + 2 * SBYTE2(v47));
        if (v16 < v59)
        {
          v59 = v16;
        }

        if (v59 < v41)
        {
          v59 = v41;
        }

        v60 = bswap32(*v59) >> 16;
        v61 = v40 + SBYTE1(v47) * v6;
        if (v16 >= v61)
        {
          v62 = (v40 + SBYTE1(v47) * v6);
        }

        else
        {
          v62 = v16;
        }

        if (v62 < v41)
        {
          v62 = v41;
        }

        v63 = bswap32(*v62) >> 16;
        v64 = (v61 + 2 * SBYTE2(v47));
        if (v16 < v64)
        {
          v64 = v16;
        }

        if (v64 < v41)
        {
          v64 = v41;
        }

        v65 = bswap32(*v64) >> 16;
        if (v5)
        {
          v66 = 2 * SBYTE2(v47);
          v67 = (v44 + v66);
          v68 = *(result + 40);
          if (v15 < v44 + v66)
          {
            v67 = v15;
          }

          if (v67 < v68)
          {
            v67 = *(result + 40);
          }

          v60 |= bswap32(*v67) & 0xFFFF0000;
          v69 = v44 + SBYTE1(v47) * v7;
          if (v15 >= v69)
          {
            v70 = (v44 + SBYTE1(v47) * v7);
          }

          else
          {
            v70 = v15;
          }

          if (v70 < v68)
          {
            v70 = *(result + 40);
          }

          v63 |= bswap32(*v70) & 0xFFFF0000;
          v71 = (v69 + v66);
          if (v15 < v71)
          {
            v71 = v15;
          }

          if (v71 < v68)
          {
            v71 = *(result + 40);
          }

          v65 |= bswap32(*v71) & 0xFFFF0000;
        }

        v72 = interpolate_1616[v87];
        v73 = v43 - ((v72 & v43) >> (v87 + 1)) + ((v72 & v63) >> (v87 + 1));
        v74 = v60 - ((v72 & v60) >> (v87 + 1)) + ((v72 & v65) >> (v87 + 1));
        v75 = (v47 >> 28) & 3;
        v76 = interpolate_1616[v75];
        LOBYTE(v75) = v75 + 1;
        v77 = v73 - ((v73 & v76) >> v75);
        v78 = (v74 & v76) >> v75;
        break;
      default:
        goto LABEL_47;
    }

    v43 = v77 + v78;
    goto LABEL_47;
  }

  v44 = v5 + v37 * v7 + v39;
  v45 = *(result + 40);
  if (v15 >= v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v15;
  }

  if (v46 >= v45)
  {
    v45 = v46;
  }

  v43 |= bswap32(*v45) & 0xFFFF0000;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  v48 = 0;
  v49 = v26 >> 22;
  a2 += v10;
  v50 = v90 - a2;
  v51 = (v11 + 12);
  a3 += v9;
  v52 = v92 - a3;
  while (1)
  {
    *(v51 - 1) = *&_blt_float[v43 | 0x100] + *&_blt_float[BYTE1(v43) | 0x200];
    *v51 = *&_blt_float[((v43 | v12) >> 16) | 0x100] + *&_blt_float[((v43 | v12) >> 24) | 0x200];
    *(v93 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if ((v52 | v50 | (a3 - v91) | (a2 - v89)) < 0)
    {
      v93 += v48 + 1;
      v11 = (v51 - 1);
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v53 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
    v40 = v4 + SHIDWORD(a3) * v6 + v53;
    v41 = *(result + 32);
    if (v16 >= v40)
    {
      v54 = (v4 + SHIDWORD(a3) * v6 + v53);
    }

    else
    {
      v54 = v16;
    }

    if (v54 < v41)
    {
      v54 = *(result + 32);
    }

    v43 = bswap32(*v54) >> 16;
    if (v5)
    {
      v44 = v5 + SHIDWORD(a3) * v7 + v53;
      v55 = *(result + 40);
      if (v15 >= v44)
      {
        v56 = v44;
      }

      else
      {
        v56 = v15;
      }

      if (v56 >= v55)
      {
        v55 = v56;
      }

      v43 |= bswap32(*v55) & 0xFFFF0000;
    }

    if (v8)
    {
      v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v47 & 0xF) != 0)
      {
        v93 += v48 + 1;
        v11 = (v51 - 1);
        a4 += ~v48;
        v26 = -1;
        goto LABEL_68;
      }
    }

    ++v48;
    v50 -= v10;
    v51 += 2;
    a3 += v9;
    v52 -= v9;
    a2 += v10;
    LOBYTE(v49) = -1;
  }
}

uint64_t Wf_sample_w16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 32);
  v5 = *(result + 40);
  v6 = *(result + 24);
  v7 = *(result + 28);
  v8 = *(result + 176);
  v90 = *(result + 80);
  v10 = *(result + 112);
  v9 = *(result + 120);
  v11 = *(result + 152) - 8;
  v92 = *(result + 88);
  v93 = *(result + 144) - 1;
  if (v5)
  {
    v12 = 0;
  }

  else
  {
    v12 = -65536;
  }

  v13 = *(result + 260) - 1;
  v14 = *(result + 256);
  v15 = v5 + (v13 * v7) + 2 * (v14 - 1);
  v16 = v4 + (v13 * v6) + 2 * v14 - 2;
  v88 = *(result + 188);
  v91 = *(result + 72);
  v89 = *(result + 64);
  while (1)
  {
LABEL_5:
    if (a3 >= v91)
    {
      if (a3 <= v92)
      {
        v25 = (a3 >> 22) & 0x3C0;
        v26 = 0x3FFFFFFF;
        v27 = a3;
        v28 = v89;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v92;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_43;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v28 = v89;
        v26 = v24 | v88;
        v27 = v22 - 0x1000000;
        v25 = 448;
      }
    }

    else
    {
      v17 = *(result + 216);
      v18 = v91 - *(result + 224);
      v19 = a3 - v18 + (v17 >> 1);
      if (v19 < 1)
      {
        goto LABEL_43;
      }

      if (v19 >= v17)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v19) >> 32;
      }

      v28 = v89;
      v26 = v20 | v88;
      v27 = v18 + 0x1000000;
      v25 = 512;
    }

    if (a2 >= v28)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v28 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v26 = ((v26 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v88;
      }

      v32 = v30 + 0x1000000;
      v33 = 32;
      goto LABEL_29;
    }

LABEL_43:
    --a4;
    a2 += v10;
    a3 += v9;
    v11 += 8;
    *++v93 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v90)
  {
    v33 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_29;
  }

  v34 = *(result + 192);
  v35 = *(result + 200) + v90;
  v36 = v35 - a2 + (v34 >> 1);
  if (v36 < 1)
  {
    goto LABEL_43;
  }

  if (v36 < v34)
  {
    v26 = ((v26 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v88;
  }

  v32 = v35 - 0x1000000;
  v33 = 28;
LABEL_29:
  if (v26 < 0x400000)
  {
    goto LABEL_43;
  }

  v37 = v27 >> 32;
  v38 = v4 + v37 * v6;
  v39 = (v32 >> 31) & 0xFFFFFFFFFFFFFFFELL;
  v40 = v38 + v39;
  v41 = *(result + 32);
  if (v16 >= v38 + v39)
  {
    v42 = (v38 + v39);
  }

  else
  {
    v42 = v16;
  }

  if (v42 < v41)
  {
    v42 = *(result + 32);
  }

  v43 = *v42;
  if (!v5)
  {
    v44 = 0;
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_46:
    v47 = *(v8 + (v33 | v25));
LABEL_68:
    v57 = v47 & 0xF;
    v58 = HIBYTE(v47) & 3;
    switch(v57)
    {
      case 1:
        v82 = (v40 + SBYTE1(v47) * v6);
        if (v16 < v82)
        {
          v82 = v16;
        }

        if (v82 < v41)
        {
          v82 = v41;
        }

        v83 = *v82;
        if (v5)
        {
          v84 = (v44 + SBYTE1(v47) * v7);
          if (v15 < v84)
          {
            v84 = v15;
          }

          if (v84 < *(result + 40))
          {
            v84 = *(result + 40);
          }

          v83 |= *v84 << 16;
        }

        v85 = interpolate_1616[v58];
        v86 = v58 + 1;
        v77 = v43 - ((v85 & v43) >> v86);
        v78 = (v85 & v83) >> v86;
        break;
      case 2:
        v79 = (v40 + 2 * SBYTE2(v47));
        if (v16 < v79)
        {
          v79 = v16;
        }

        if (v79 < v41)
        {
          v79 = v41;
        }

        v80 = *v79;
        if (v5)
        {
          v81 = (v44 + 2 * SBYTE2(v47));
          if (v15 < v81)
          {
            v81 = v15;
          }

          if (v81 < *(result + 40))
          {
            v81 = *(result + 40);
          }

          v80 |= *v81 << 16;
        }

        v43 = v43 - ((interpolate_1616[(v47 >> 28) & 3] & v43) >> (((v47 >> 28) & 3) + 1)) + ((interpolate_1616[(v47 >> 28) & 3] & v80) >> (((v47 >> 28) & 3) + 1));
        goto LABEL_47;
      case 3:
        v87 = HIBYTE(v47) & 3;
        v59 = (v40 + 2 * SBYTE2(v47));
        if (v16 < v59)
        {
          v59 = v16;
        }

        if (v59 < v41)
        {
          v59 = v41;
        }

        v60 = *v59;
        v61 = v40 + SBYTE1(v47) * v6;
        if (v16 >= v61)
        {
          v62 = (v40 + SBYTE1(v47) * v6);
        }

        else
        {
          v62 = v16;
        }

        if (v62 < v41)
        {
          v62 = v41;
        }

        v63 = *v62;
        v64 = (v61 + 2 * SBYTE2(v47));
        if (v16 < v64)
        {
          v64 = v16;
        }

        if (v64 < v41)
        {
          v64 = v41;
        }

        v65 = *v64;
        if (v5)
        {
          v66 = 2 * SBYTE2(v47);
          v67 = (v44 + v66);
          v68 = *(result + 40);
          if (v15 < v44 + v66)
          {
            v67 = v15;
          }

          if (v67 < v68)
          {
            v67 = *(result + 40);
          }

          v60 |= *v67 << 16;
          v69 = v44 + SBYTE1(v47) * v7;
          if (v15 >= v69)
          {
            v70 = (v44 + SBYTE1(v47) * v7);
          }

          else
          {
            v70 = v15;
          }

          if (v70 < v68)
          {
            v70 = *(result + 40);
          }

          v63 |= *v70 << 16;
          v71 = (v69 + v66);
          if (v15 < v71)
          {
            v71 = v15;
          }

          if (v71 < v68)
          {
            v71 = *(result + 40);
          }

          v65 |= *v71 << 16;
        }

        v72 = interpolate_1616[v87];
        v73 = v43 - ((v72 & v43) >> (v87 + 1)) + ((v72 & v63) >> (v87 + 1));
        v74 = v60 - ((v72 & v60) >> (v87 + 1)) + ((v72 & v65) >> (v87 + 1));
        v75 = (v47 >> 28) & 3;
        v76 = interpolate_1616[v75];
        LOBYTE(v75) = v75 + 1;
        v77 = v73 - ((v73 & v76) >> v75);
        v78 = (v74 & v76) >> v75;
        break;
      default:
        goto LABEL_47;
    }

    v43 = v77 + v78;
    goto LABEL_47;
  }

  v44 = v5 + v37 * v7 + v39;
  v45 = *(result + 40);
  if (v15 >= v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v15;
  }

  if (v46 >= v45)
  {
    v45 = v46;
  }

  v43 |= *v45 << 16;
  if (v8)
  {
    goto LABEL_46;
  }

LABEL_47:
  v48 = 0;
  v49 = v26 >> 22;
  a2 += v10;
  v50 = v90 - a2;
  v51 = (v11 + 12);
  a3 += v9;
  v52 = v92 - a3;
  while (1)
  {
    *(v51 - 1) = *&_blt_float[v43 | 0x100] + *&_blt_float[BYTE1(v43) | 0x200];
    *v51 = *&_blt_float[((v43 | v12) >> 16) | 0x100] + *&_blt_float[((v43 | v12) >> 24) | 0x200];
    *(v93 + 1 + v48) = v49;
    if (a4 - 1 == v48)
    {
      return result;
    }

    if ((v52 | v50 | (a3 - v91) | (a2 - v89)) < 0)
    {
      v93 += v48 + 1;
      v11 = (v51 - 1);
      a4 += ~v48;
      if (a4)
      {
        goto LABEL_5;
      }

      return result;
    }

    v53 = (a2 >> 31) & 0xFFFFFFFFFFFFFFFELL;
    v40 = v4 + SHIDWORD(a3) * v6 + v53;
    v41 = *(result + 32);
    if (v16 >= v40)
    {
      v54 = (v4 + SHIDWORD(a3) * v6 + v53);
    }

    else
    {
      v54 = v16;
    }

    if (v54 < v41)
    {
      v54 = *(result + 32);
    }

    v43 = *v54;
    if (v5)
    {
      v44 = v5 + SHIDWORD(a3) * v7 + v53;
      v55 = *(result + 40);
      if (v15 >= v44)
      {
        v56 = v44;
      }

      else
      {
        v56 = v15;
      }

      if (v56 >= v55)
      {
        v55 = v56;
      }

      v43 |= *v55 << 16;
    }

    if (v8)
    {
      v47 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
      if ((v47 & 0xF) != 0)
      {
        v93 += v48 + 1;
        v11 = (v51 - 1);
        a4 += ~v48;
        v26 = -1;
        goto LABEL_68;
      }
    }

    ++v48;
    v50 -= v10;
    v51 += 2;
    a3 += v9;
    v52 -= v9;
    a2 += v10;
    LOBYTE(v49) = -1;
  }
}

uint64_t Wf_sample_WF_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v124 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v123 = *(result + 112);
    if (v5 > v6)
    {
      v123 = v5 % v6;
    }
  }

  else
  {
    v123 = 0;
  }

  v8 = *(result + 176);
  v9 = *(result + 40);
  v125 = *(result + 32);
  v10 = *(result + 120);
  if (v7)
  {
    v11 = v10 % v7;
    if (v10 <= v7)
    {
      v11 = *(result + 120);
    }

    v122 = v11;
  }

  else
  {
    v122 = 0;
  }

  v118 = *(result + 80);
  v119 = *(result + 64);
  v120 = *(result + 88);
  v12 = *(result + 152) - 8;
  v13 = *(result + 144) - 1;
  v14 = *(result + 260) - 1;
  v15 = *(result + 256);
  v16 = v9 + (v14 * v124) + 4 * (v15 - 1);
  v117 = *(result + 188);
  v17 = v125 + (v14 * v4) + 4 * v15 - 4;
  v121 = *(result + 72);
  while (1)
  {
LABEL_11:
    if (a3 >= v121)
    {
      if (a3 <= v120)
      {
        v26 = 0;
        v27 = (a3 >> 22) & 0x3C0;
        v28 = 0x3FFFFFFF;
        v29 = a3;
      }

      else
      {
        v22 = *(result + 216);
        v23 = *(result + 224) + v120;
        v24 = v23 - a3 + (v22 >> 1);
        if (v24 < 1)
        {
          goto LABEL_56;
        }

        if (v24 >= v22)
        {
          LODWORD(v25) = 0x3FFFFFFF;
        }

        else
        {
          v25 = (*(result + 232) * v24) >> 32;
        }

        v28 = v117 | v25;
        v29 = v23 - 0x1000000;
        v26 = a3 - (v23 - 0x1000000);
        v27 = 448;
      }
    }

    else
    {
      v18 = *(result + 216);
      v19 = v121 - *(result + 224);
      v20 = a3 - v19 + (v18 >> 1);
      if (v20 < 1)
      {
        goto LABEL_56;
      }

      if (v20 >= v18)
      {
        LODWORD(v21) = 0x3FFFFFFF;
      }

      else
      {
        v21 = (*(result + 232) * v20) >> 32;
      }

      v28 = v117 | v21;
      v29 = v19 + 0x1000000;
      v26 = a3 - (v19 + 0x1000000);
      v27 = 512;
    }

    if (a2 >= v119)
    {
      break;
    }

    v30 = *(result + 192);
    v31 = v119 - *(result + 200);
    v32 = a2 - v31 + (v30 >> 1);
    if (v32 >= 1)
    {
      if (v32 < v30)
      {
        v28 = ((v28 >> 15) * (((*(result + 208) * v32) >> 32) >> 15)) | v117;
      }

      v33 = v31 + 0x1000000;
      v34 = a2 - (v31 + 0x1000000);
      v35 = 32;
      goto LABEL_35;
    }

LABEL_56:
    --a4;
    a2 += v5;
    a3 += v10;
    v12 += 8;
    *++v13 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v118)
  {
    v34 = 0;
    v35 = (a2 >> 26) & 0x3C;
    v33 = a2;
    goto LABEL_35;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v118;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_56;
  }

  if (v38 < v36)
  {
    v28 = ((v28 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v117;
  }

  v33 = v37 - 0x1000000;
  v34 = a2 - (v37 - 0x1000000);
  v35 = 28;
LABEL_35:
  if (v28 < 0x400000)
  {
    goto LABEL_56;
  }

  if (v6)
  {
    v39 = (v7 & ((v29 % v7) >> 63)) + v29 % v7;
    v40 = (v6 & ((v33 % v6) >> 63)) + v33 % v6;
    if (v39 >= v7)
    {
      v41 = v7;
    }

    else
    {
      v41 = 0;
    }

    v29 = v39 - v41;
    if (v40 >= v6)
    {
      v42 = v6;
    }

    else
    {
      v42 = 0;
    }

    v33 = v40 - v42;
    v26 += v29;
    v34 += v33;
  }

  v43 = v29 >> 32;
  v44 = v125 + SHIDWORD(v29) * v4;
  v45 = (v33 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  v46 = (v44 + v45);
  v47 = *(result + 32);
  if (v17 >= v44 + v45)
  {
    v48 = (v44 + v45);
  }

  else
  {
    v48 = v17;
  }

  if (v48 < v47)
  {
    v48 = *(result + 32);
  }

  if (v9)
  {
    v49 = v9 + v43 * v124 + v45;
    v50 = *(result + 40);
    if (v16 >= v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = v16;
    }

    if (v51 >= v50)
    {
      v50 = v51;
    }

    v52 = COERCE_FLOAT(bswap32(*v50));
  }

  else
  {
    v49 = 0;
    v52 = 1.0;
  }

  v53 = COERCE_FLOAT(bswap32(*v48));
  if (v8)
  {
    v54 = *(v8 + (v35 | v27));
LABEL_93:
    v74 = v54 & 0xF;
    v75 = v54 >> 8;
    v76 = HIBYTE(v54) & 3;
    if (v74 == 1)
    {
      LODWORD(v110) = SBYTE1(v54);
      if (v6)
      {
        v111 = v26 + (SBYTE1(v54) << 32);
        v112 = v7 & (v111 >> 63);
        if (v112 + v111 >= v7)
        {
          v113 = v7;
        }

        else
        {
          v113 = 0;
        }

        v110 = (v112 + (v75 << 32) - v113) >> 32;
      }

      v114 = (v46 + v110 * v4);
      if (v17 < v114)
      {
        v114 = v17;
      }

      if (v114 < v47)
      {
        v114 = v47;
      }

      v106 = COERCE_FLOAT(bswap32(*v114));
      v107 = 1.0;
      if (v9)
      {
        v115 = (v49 + v110 * v124);
        if (v16 < v115)
        {
          v115 = v16;
        }

        if (v115 < *(result + 40))
        {
          v115 = *(result + 40);
        }

        v107 = COERCE_FLOAT(bswap32(*v115));
      }

      v109 = &interpolate_waf[2 * v76];
    }

    else
    {
      if (v74 != 2)
      {
        if (v74 == 3)
        {
          LODWORD(v77) = SBYTE1(v54);
          v78 = SBYTE2(v54);
          if (v6)
          {
            v79 = v75 << 56;
            v80 = HIWORD(v54) << 56;
            v81 = v26 + (SBYTE1(v54) << 32);
            v82 = v34 + (v80 >> 24);
            v83 = v7 & (v81 >> 63);
            v84 = v6 & (v82 >> 63);
            v85 = v84 + v82;
            if (v83 + v81 >= v7)
            {
              v86 = v7;
            }

            else
            {
              v86 = 0;
            }

            if (v85 >= v6)
            {
              v87 = v6;
            }

            else
            {
              v87 = 0;
            }

            v77 = (v83 + (v79 >> 24) - v86) >> 32;
            v78 = (v84 + (v80 >> 24) - v87) >> 32;
          }

          v88 = &v46[v78];
          if (v17 >= v88)
          {
            v89 = &v46[v78];
          }

          else
          {
            v89 = v17;
          }

          if (v89 < v47)
          {
            v89 = v47;
          }

          v90 = COERCE_FLOAT(bswap32(*v89));
          v91 = (v88 + v77 * v4);
          if (v17 < v91)
          {
            v91 = v17;
          }

          if (v91 < v47)
          {
            v91 = v47;
          }

          v92 = COERCE_FLOAT(bswap32(*v91));
          v93 = 1.0;
          v94 = 1.0;
          if (v9)
          {
            v95 = v49 + 4 * v78;
            v96 = *(result + 40);
            if (v16 >= v95)
            {
              v97 = (v49 + 4 * v78);
            }

            else
            {
              v97 = v16;
            }

            if (v97 < v96)
            {
              v97 = *(result + 40);
            }

            v94 = COERCE_FLOAT(bswap32(*v97));
            v98 = (v95 + v77 * v124);
            if (v16 < v98)
            {
              v98 = v16;
            }

            if (v98 < v96)
            {
              v98 = *(result + 40);
            }

            v93 = COERCE_FLOAT(bswap32(*v98));
          }

          v99 = interpolate_waf[2 * v76 + 1];
          v100 = interpolate_waf[2 * ((v54 >> 28) & 3) + 1];
          v53 = (((v53 - (v53 * v99)) + (v90 * v99)) - (((v53 - (v53 * v99)) + (v90 * v99)) * v100)) + (((v90 - (v90 * v99)) + (v92 * v99)) * v100);
          v52 = (((v52 - (v52 * v99)) + (v94 * v99)) - (((v52 - (v52 * v99)) + (v94 * v99)) * v100)) + (((v94 - (v94 * v99)) + (v93 * v99)) * v100);
        }

        goto LABEL_61;
      }

      v101 = SBYTE2(v54);
      if (v6)
      {
        v102 = v34 + (SBYTE2(v54) << 32);
        v103 = v6 & (v102 >> 63);
        if (v103 + v102 >= v6)
        {
          v104 = v6;
        }

        else
        {
          v104 = 0;
        }

        v101 = (v103 + ((HIWORD(v54) << 56) >> 24) - v104) >> 32;
      }

      v105 = &v46[v101];
      if (v17 < v105)
      {
        v105 = v17;
      }

      if (v105 < v47)
      {
        v105 = v47;
      }

      v106 = COERCE_FLOAT(bswap32(*v105));
      v107 = 1.0;
      if (v9)
      {
        v108 = (v49 + 4 * v101);
        if (v16 < v108)
        {
          v108 = v16;
        }

        if (v108 < *(result + 40))
        {
          v108 = *(result + 40);
        }

        v107 = COERCE_FLOAT(bswap32(*v108));
      }

      v109 = &interpolate_waf[2 * ((v54 >> 28) & 3)];
    }

    v116 = v109[1];
    v53 = (v53 - (v53 * v116)) + (v106 * v116);
    v52 = (v52 - (v52 * v116)) + (v107 * v116);
  }

LABEL_61:
  *(v12 + 8) = v53;
  *(v12 + 12) = v52;
  *(v13 + 1) = v28 >> 22;
  if (a4 != 1)
  {
    v55 = 0;
    v56 = (v12 + 20);
    a2 += v5;
    v57 = v118 - a2;
    a3 += v10;
    v58 = v120 - a3;
    v59 = --a4;
    while (1)
    {
      v60 = v13 + v55 + 1;
      v12 = (v56 - 3);
      if ((v58 | v57 | (a3 - v121) | (a2 - v119)) < 0)
      {
        break;
      }

      if (v6)
      {
        v61 = (v7 & ((v26 + v122) >> 63)) + v26 + v122;
        v62 = (v6 & ((v34 + v123) >> 63)) + v34 + v123;
        if (v61 >= v7)
        {
          v63 = v7;
        }

        else
        {
          v63 = 0;
        }

        v26 = v61 - v63;
        if (v62 >= v6)
        {
          v64 = v6;
        }

        else
        {
          v64 = 0;
        }

        v34 = v62 - v64;
        v65 = v26;
        v66 = v34;
      }

      else
      {
        v65 = a3;
        v66 = a2;
      }

      v67 = v65 >> 32;
      v68 = (v66 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v46 = (v125 + SHIDWORD(v65) * v4 + v68);
      v47 = *(result + 32);
      if (v17 >= v46)
      {
        v69 = v46;
      }

      else
      {
        v69 = v17;
      }

      if (v69 < v47)
      {
        v69 = *(result + 32);
      }

      if (v9)
      {
        v49 = v9 + v67 * v124 + v68;
        v70 = *(result + 40);
        if (v16 >= v49)
        {
          v71 = v49;
        }

        else
        {
          v71 = v16;
        }

        if (v71 >= v70)
        {
          v70 = v71;
        }

        v52 = COERCE_FLOAT(bswap32(*v70));
      }

      else
      {
        v52 = 1.0;
      }

      v72 = bswap32(*v69);
      if (v8)
      {
        v54 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
        if ((v54 & 0xF) != 0)
        {
          v53 = *&v72;
          v28 = -1;
          v13 = v60;
          goto LABEL_93;
        }
      }

      --a4;
      *(v56 - 1) = v72;
      *v56 = v52;
      v56 += 2;
      v73 = v13 + v55++;
      a2 += v5;
      *(v73 + 2) = -1;
      v57 -= v5;
      a3 += v10;
      v58 -= v10;
      if (v59 == v55)
      {
        return result;
      }
    }

    v13 += v55 + 1;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t Wf_sample_Wf_inner(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  v130 = *(result + 28);
  v5 = *(result + 112);
  v6 = *(result + 48);
  v7 = *(result + 56);
  if (v6)
  {
    v129 = *(result + 112);
    if (v5 > v6)
    {
      v129 = v5 % v6;
    }
  }

  else
  {
    v129 = 0;
  }

  v8 = *(result + 176);
  v10 = *(result + 32);
  v9 = *(result + 40);
  v11 = *(result + 120);
  if (v7)
  {
    v12 = v11 % v7;
    if (v11 <= v7)
    {
      v12 = *(result + 120);
    }

    v128 = v12;
  }

  else
  {
    v128 = 0;
  }

  v124 = *(result + 80);
  v125 = *(result + 64);
  v126 = *(result + 88);
  v13 = *(result + 152) - 8;
  v14 = *(result + 144) - 1;
  v15 = *(result + 260) - 1;
  v16 = *(result + 256);
  v17 = v9 + (v15 * v130) + 4 * (v16 - 1);
  v123 = *(result + 188);
  v18 = v10 + (v15 * v4) + 4 * v16 - 4;
  v127 = *(result + 72);
  do
  {
    if (a3 >= v127)
    {
      v22 = a4;
      if (a3 <= v126)
      {
        v28 = 0;
        v29 = (a3 >> 22) & 0x3C0;
        v30 = 0x3FFFFFFF;
        v31 = a3;
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v126;
        v26 = v25 - a3 + (v24 >> 1);
        if (v26 < 1)
        {
          goto LABEL_56;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v30 = v123 | v27;
        v31 = v25 - 0x1000000;
        v28 = a3 - (v25 - 0x1000000);
        v29 = 448;
      }
    }

    else
    {
      v19 = *(result + 216);
      v20 = v127 - *(result + 224);
      v21 = a3 - v20 + (v19 >> 1);
      v22 = a4;
      if (v21 < 1)
      {
        goto LABEL_56;
      }

      if (v21 >= v19)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v21) >> 32;
      }

      v30 = v123 | v23;
      v31 = v20 + 0x1000000;
      v28 = a3 - (v20 + 0x1000000);
      v29 = 512;
    }

    if (a2 >= v125)
    {
      if (a2 <= v124)
      {
        v36 = 0;
        v37 = (a2 >> 26) & 0x3C;
        v35 = a2;
      }

      else
      {
        v38 = *(result + 192);
        v39 = *(result + 200) + v124;
        v40 = v39 - a2 + (v38 >> 1);
        if (v40 < 1)
        {
          goto LABEL_56;
        }

        if (v40 < v38)
        {
          v30 = ((v30 >> 15) * (((*(result + 208) * v40) >> 32) >> 15)) | v123;
        }

        v35 = v39 - 0x1000000;
        v36 = a2 - (v39 - 0x1000000);
        v37 = 28;
      }
    }

    else
    {
      v32 = *(result + 192);
      v33 = v125 - *(result + 200);
      v34 = a2 - v33 + (v32 >> 1);
      if (v34 < 1)
      {
        goto LABEL_56;
      }

      if (v34 < v32)
      {
        v30 = ((v30 >> 15) * (((*(result + 208) * v34) >> 32) >> 15)) | v123;
      }

      v35 = v33 + 0x1000000;
      v36 = a2 - (v33 + 0x1000000);
      v37 = 32;
    }

    if (v30 >= 0x400000)
    {
      if (v6)
      {
        v41 = (v7 & ((v31 % v7) >> 63)) + v31 % v7;
        v42 = (v6 & ((v35 % v6) >> 63)) + v35 % v6;
        if (v41 >= v7)
        {
          v43 = v7;
        }

        else
        {
          v43 = 0;
        }

        v31 = v41 - v43;
        if (v42 >= v6)
        {
          v44 = v6;
        }

        else
        {
          v44 = 0;
        }

        v35 = v42 - v44;
        v28 += v31;
        v36 += v35;
      }

      v45 = v31 >> 32;
      v46 = (v35 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
      v47 = (v10 + SHIDWORD(v31) * v4 + v46);
      v48 = *(result + 32);
      if (v18 >= v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = v18;
      }

      if (v49 < v48)
      {
        v49 = *(result + 32);
      }

      if (v9)
      {
        v50 = v9 + v45 * v130 + v46;
        v51 = *(result + 40);
        if (v17 >= v50)
        {
          v52 = v50;
        }

        else
        {
          v52 = v17;
        }

        if (v52 >= v51)
        {
          v51 = v52;
        }

        v53 = *v51;
      }

      else
      {
        v50 = 0;
        v53 = 1.0;
      }

      v55 = *v49;
      if (!v8)
      {
        goto LABEL_62;
      }

      v56 = *(v8 + (v37 | v29));
      while (1)
      {
        v75 = v56 & 0xF;
        v76 = v56 >> 8;
        v77 = HIBYTE(v56) & 3;
        if (v75 == 1)
        {
          break;
        }

        if (v75 == 2)
        {
          v105 = SBYTE2(v56);
          if (v6)
          {
            v106 = HIWORD(v56) << 56;
            v107 = v36 + (v106 >> 24);
            v108 = v6 & (v107 >> 63);
            if (v108 + v107 >= v6)
            {
              v109 = v6;
            }

            else
            {
              v109 = 0;
            }

            v105 = (v108 + (v106 >> 24) - v109) >> 32;
          }

          v110 = &v47[v105];
          if (v18 < v110)
          {
            v110 = v18;
          }

          if (v110 < v48)
          {
            v110 = v48;
          }

          v111 = *v110;
          v112 = 1.0;
          if (v9)
          {
            v113 = (v50 + 4 * v105);
            if (v17 < v113)
            {
              v113 = v17;
            }

            if (v113 < *(result + 40))
            {
              v113 = *(result + 40);
            }

            v112 = *v113;
          }

          v114 = &interpolate_waf[2 * ((v56 >> 28) & 3)];
LABEL_157:
          v121 = v114[1];
          v55 = (v55 - (v55 * v121)) + (v111 * v121);
          v53 = (v53 - (v53 * v121)) + (v112 * v121);
          goto LABEL_62;
        }

        if (v75 == 3)
        {
          LODWORD(v78) = SBYTE1(v56);
          v79 = SBYTE2(v56);
          if (v6)
          {
            v80 = v76 << 56;
            v81 = HIWORD(v56) << 56;
            v82 = v28 + (SBYTE1(v56) << 32);
            v122 = v30;
            v83 = v36 + (v81 >> 24);
            v84 = v7 & (v82 >> 63);
            v85 = v22;
            v86 = v6 & (v83 >> 63);
            v87 = v86 + v83;
            if (v84 + v82 >= v7)
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

            v78 = (v84 + (v80 >> 24) - v88) >> 32;
            v90 = v86 + (v81 >> 24);
            v22 = v85;
            v91 = v90 - v89;
            v77 = HIBYTE(v56) & 3;
            v30 = v122;
            v79 = v91 >> 32;
          }

          v92 = &v47[v79];
          if (v18 >= v92)
          {
            v93 = &v47[v79];
          }

          else
          {
            v93 = v18;
          }

          if (v93 < v48)
          {
            v93 = v48;
          }

          v94 = *v93;
          v95 = (v92 + v78 * v4);
          if (v18 < v95)
          {
            v95 = v18;
          }

          if (v95 < v48)
          {
            v95 = v48;
          }

          v96 = *v95;
          v97 = 1.0;
          v98 = 1.0;
          if (v9)
          {
            v99 = (v50 + 4 * v79);
            v100 = *(result + 40);
            if (v17 >= v99)
            {
              v101 = v99;
            }

            else
            {
              v101 = v17;
            }

            if (v101 < v100)
            {
              v101 = *(result + 40);
            }

            v98 = *v101;
            v102 = (v99 + v78 * v130);
            if (v17 < v102)
            {
              v102 = v17;
            }

            if (v102 < v100)
            {
              v102 = *(result + 40);
            }

            v97 = *v102;
          }

          v103 = interpolate_waf[2 * v77 + 1];
          v104 = interpolate_waf[2 * ((v56 >> 28) & 3) + 1];
          v55 = (((v55 - (v55 * v103)) + (v94 * v103)) - (((v55 - (v55 * v103)) + (v94 * v103)) * v104)) + (((v94 - (v94 * v103)) + (v96 * v103)) * v104);
          v53 = (((v53 - (v53 * v103)) + (v98 * v103)) - (((v53 - (v53 * v103)) + (v98 * v103)) * v104)) + (((v98 - (v98 * v103)) + (v97 * v103)) * v104);
        }

LABEL_62:
        *(v13 + 8) = v55;
        *(v13 + 12) = v53;
        *(v14 + 1) = v30 >> 22;
        if (v22 == 1)
        {
          return result;
        }

        v57 = v22;
        v58 = 0;
        v59 = (v13 + 20);
        a2 += v5;
        v60 = v124 - a2;
        a3 += v11;
        v61 = v126 - a3;
        while (1)
        {
          if ((v61 | v60 | (a3 - v127) | (a2 - v125)) < 0)
          {
            v14 += v58 + 1;
            v13 = (v59 - 3);
            v54 = ~v58 + v57;
            goto LABEL_57;
          }

          if (v6)
          {
            v62 = (v7 & ((v28 + v128) >> 63)) + v28 + v128;
            v63 = (v6 & ((v36 + v129) >> 63)) + v36 + v129;
            if (v62 >= v7)
            {
              v64 = v7;
            }

            else
            {
              v64 = 0;
            }

            v28 = v62 - v64;
            if (v63 >= v6)
            {
              v65 = v6;
            }

            else
            {
              v65 = 0;
            }

            v36 = v63 - v65;
            v66 = v28;
            v67 = v36;
          }

          else
          {
            v66 = a3;
            v67 = a2;
          }

          v68 = v66 >> 32;
          v69 = v10 + v68 * v4;
          v70 = (v67 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
          v47 = (v69 + v70);
          v48 = *(result + 32);
          if (v18 >= v69 + v70)
          {
            v71 = (v69 + v70);
          }

          else
          {
            v71 = v18;
          }

          if (v71 < v48)
          {
            v71 = *(result + 32);
          }

          if (v9)
          {
            v50 = v9 + v68 * v130 + v70;
            v72 = *(result + 40);
            v73 = (v17 >= v50 ? v50 : v17);
            if (v73 >= v72)
            {
              v72 = v73;
            }

            v53 = *v72;
          }

          else
          {
            v53 = 1.0;
          }

          v55 = *v71;
          if (v8)
          {
            v56 = *(v8 + ((a2 >> 26) & 0x3C | (a3 >> 22) & 0x3C0));
            if ((v56 & 0xF) != 0)
            {
              break;
            }
          }

          *(v59 - 1) = v55;
          *v59 = v53;
          v74 = v14 + v58++;
          v59 += 2;
          a2 += v5;
          *(v74 + 2) = -1;
          v60 -= v5;
          a3 += v11;
          v61 -= v11;
          if (v57 - 1 == v58)
          {
            return result;
          }
        }

        v14 += v58 + 1;
        v13 = (v59 - 3);
        v22 = ~v58 + v57;
        v30 = -1;
      }

      LODWORD(v115) = SBYTE1(v56);
      if (v6)
      {
        v116 = v28 + (SBYTE1(v56) << 32);
        v117 = v7 & (v116 >> 63);
        if (v117 + v116 >= v7)
        {
          v118 = v7;
        }

        else
        {
          v118 = 0;
        }

        v115 = (v117 + (v76 << 32) - v118) >> 32;
      }

      v119 = (v47 + v115 * v4);
      if (v18 < v119)
      {
        v119 = v18;
      }

      if (v119 < v48)
      {
        v119 = v48;
      }

      v111 = *v119;
      v112 = 1.0;
      if (v9)
      {
        v120 = (v50 + v115 * v130);
        if (v17 < v120)
        {
          v120 = v17;
        }

        if (v120 < *(result + 40))
        {
          v120 = *(result + 40);
        }

        v112 = *v120;
      }

      v114 = &interpolate_waf[2 * v77];
      goto LABEL_157;
    }

LABEL_56:
    v54 = v22 - 1;
    a2 += v5;
    a3 += v11;
    v13 += 8;
    *++v14 = 0;
LABEL_57:
    a4 = v54;
  }

  while (v54);
  return result;
}

uint64_t Wf_sample_RGBF(uint64_t result, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v14 = *(result + 32);
  v15 = *(result + 24);
  v16 = *(result + 176);
  v17 = *(result + 64);
  v18 = *(result + 72);
  v19 = *(result + 80);
  v20 = *(result + 88);
  v21 = *(result + 112);
  v22 = *(result + 120);
  v72 = *(result + 188);
  v23 = *(result + 152) - 8;
  v24 = *(result + 144) - 1;
  v25 = v14 + ((*(result + 260) - 1) * v15) + 4 * (3 * *(result + 256)) - 12;
  while (1)
  {
LABEL_2:
    if (a3 >= v18)
    {
      if (a3 <= v20)
      {
        v34 = (a3 >> 22) & 0x3C0;
        v35 = 0x3FFFFFFF;
        HIDWORD(v36) = HIDWORD(a3);
      }

      else
      {
        v30 = *(result + 216);
        v31 = *(result + 224) + v20;
        v32 = v31 - a3 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_34;
        }

        if (v32 >= v30)
        {
          LODWORD(v33) = 0x3FFFFFFF;
        }

        else
        {
          v33 = (*(result + 232) * v32) >> 32;
        }

        v35 = v33 | v72;
        v36 = v31 - 0x1000000;
        v34 = 448;
      }
    }

    else
    {
      v26 = *(result + 216);
      v27 = v18 - *(result + 224);
      v28 = a3 - v27 + (v26 >> 1);
      if (v28 < 1)
      {
        goto LABEL_34;
      }

      if (v28 >= v26)
      {
        LODWORD(v29) = 0x3FFFFFFF;
      }

      else
      {
        v29 = (*(result + 232) * v28) >> 32;
      }

      v35 = v29 | v72;
      v36 = v27 + 0x1000000;
      v34 = 512;
    }

    if (a2 >= v17)
    {
      break;
    }

    v37 = *(result + 192);
    v38 = v17 - *(result + 200);
    v39 = a2 - v38 + (v37 >> 1);
    if (v39 >= 1)
    {
      if (v39 < v37)
      {
        v35 = ((v35 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v72;
      }

      v40 = v38 + 0x1000000;
      v41 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v21;
    a3 += v22;
    v23 += 8;
    *++v24 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v19)
  {
    v41 = (a2 >> 26) & 0x3C;
    v40 = a2;
    goto LABEL_26;
  }

  v42 = *(result + 192);
  v43 = *(result + 200) + v19;
  v44 = v43 - a2 + (v42 >> 1);
  if (v44 < 1)
  {
    goto LABEL_34;
  }

  if (v44 < v42)
  {
    v35 = ((v35 >> 15) * (((*(result + 208) * v44) >> 32) >> 15)) | v72;
  }

  v40 = v43 - 0x1000000;
  v41 = 28;
LABEL_26:
  if (v35 < 0x400000)
  {
    goto LABEL_34;
  }

  v45 = v40 >> 32;
  v46 = v14 + SHIDWORD(v36) * v15;
  v47 = v46 + 12 * v45;
  v48 = *(result + 32);
  if (v25 >= v47)
  {
    v49 = (v46 + 12 * v45);
  }

  else
  {
    v49 = v25;
  }

  if (v49 < v48)
  {
    v49 = *(result + 32);
  }

  v50 = vrev32_s8(*v49);
  v51 = COERCE_FLOAT(bswap32(v49[1].u32[0]));
  if (!v16)
  {
    goto LABEL_36;
  }

  v52 = *(v16 + (v41 | v34));
LABEL_52:
  v62 = v52 & 0xF;
  v63 = HIBYTE(v52) & 3;
  if (v62 == 1)
  {
    v70 = (v47 + SBYTE1(v52) * v15);
    if (v25 < v70)
    {
      v70 = v25;
    }

    if (v70 < v48)
    {
      v70 = v48;
    }

    v71 = COERCE_FLOAT(bswap32(v70[1].u32[0]));
    goto LABEL_75;
  }

  if (v62 == 2)
  {
    v70 = (v47 + 12 * SBYTE2(v52));
    if (v25 < v70)
    {
      v70 = v25;
    }

    if (v70 < v48)
    {
      v70 = v48;
    }

    v71 = COERCE_FLOAT(bswap32(v70[1].u32[0]));
    v63 = (v52 >> 28) & 3;
LABEL_75:
    LODWORD(a12) = interpolate_rgbaf_21860[4 * v63 + 3];
    v12 = vrev32_s8(*v70);
    v50 = vmla_n_f32(vmls_lane_f32(v50, v50, *&a12, 0), v12, *&a12);
    v51 = (v51 - (v51 * *&a12)) + (v71 * *&a12);
    v53 = *&a12 + (1.0 - *&a12);
    goto LABEL_37;
  }

  if (v62 != 3)
  {
LABEL_36:
    v53 = 1.0;
    goto LABEL_37;
  }

  v64 = v47 + 12 * SBYTE2(v52);
  if (v25 >= v64)
  {
    v65 = (v47 + 12 * SBYTE2(v52));
  }

  else
  {
    v65 = v25;
  }

  if (v65 < v48)
  {
    v65 = v48;
  }

  v66 = COERCE_FLOAT(bswap32(v65[1].u32[0]));
  v67 = (v64 + SBYTE1(v52) * v15);
  if (v25 < v67)
  {
    v67 = v25;
  }

  if (v67 < v48)
  {
    v67 = v48;
  }

  v12.i32[0] = interpolate_rgbaf_21860[4 * v63 + 3];
  v13.i32[0] = interpolate_rgbaf_21860[4 * ((v52 >> 28) & 3) + 3];
  v51 = (((v51 - (v51 * v12.f32[0])) + (v66 * v12.f32[0])) - (((v51 - (v51 * v12.f32[0])) + (v66 * v12.f32[0])) * v13.f32[0])) + (((v66 - (v66 * v12.f32[0])) + (COERCE_FLOAT(bswap32(v67[1].u32[0])) * v12.f32[0])) * v13.f32[0]);
  v68 = vrev32_s8(*v65);
  v69 = vmla_n_f32(vmls_lane_f32(v50, v50, v12, 0), v68, v12.f32[0]);
  a12 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(v68, v68, v12, 0), vrev32_s8(*v67), v12.f32[0]));
  v50 = vmla_n_f32(vmls_lane_f32(v69, v69, v13, 0), *&a12, v13.f32[0]);
  v53 = ((v12.f32[0] + (1.0 - v12.f32[0])) - ((v12.f32[0] + (1.0 - v12.f32[0])) * v13.f32[0])) + ((v12.f32[0] + (1.0 - v12.f32[0])) * v13.f32[0]);
LABEL_37:
  *(v23 + 8) = (vmuls_lane_f32(0.59, v50, 1) + (v50.f32[0] * 0.3)) + (v51 * 0.11);
  *(v23 + 12) = v53;
  *(v24 + 1) = v35 >> 22;
  if (a4 != 1)
  {
    v54 = 0;
    v55 = (v23 + 20);
    a2 += v21;
    v56 = v19 - a2;
    a3 += v22;
    v57 = v20 - a3;
    while ((((a2 - v17) | v56 | (a3 - v18) | v57) & 0x8000000000000000) == 0)
    {
      v58 = v14 + SHIDWORD(a3) * v15;
      v47 = v58 + 12 * SHIDWORD(a2);
      v48 = *(result + 32);
      if (v25 >= v47)
      {
        v59 = (v58 + 12 * SHIDWORD(a2));
      }

      else
      {
        v59 = v25;
      }

      if (v59 < v48)
      {
        v59 = *(result + 32);
      }

      v50 = vrev32_s8(*v59);
      v60 = COERCE_FLOAT(bswap32(v59[1].u32[0]));
      v51 = v60;
      if (v16)
      {
        v52 = *(v16 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v52 & 0xF) != 0)
        {
          v24 += v54 + 1;
          v23 = (v55 - 3);
          a4 += ~v54;
          v35 = -1;
          goto LABEL_52;
        }
      }

      *(v55 - 1) = (vmuls_lane_f32(0.59, v50, 1) + (v50.f32[0] * 0.3)) + (v60 * 0.11);
      *v55 = 1.0;
      v55 += 2;
      v61 = v24 + v54++;
      a2 += v21;
      *(v61 + 2) = -1;
      v56 -= v21;
      a3 += v22;
      v57 -= v22;
      if (a4 - 1 == v54)
      {
        return result;
      }
    }

    v24 += v54 + 1;
    v23 = (v55 - 3);
    a4 += ~v54;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Wf_sample_RGBf(uint64_t result, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v14 = *(result + 32);
  v15 = *(result + 24);
  v16 = *(result + 176);
  v17 = *(result + 64);
  v18 = *(result + 72);
  v19 = *(result + 80);
  v20 = *(result + 88);
  v21 = *(result + 112);
  v22 = *(result + 120);
  v69 = *(result + 188);
  v23 = *(result + 152) - 8;
  v24 = *(result + 144) - 1;
  v25 = v14 + ((*(result + 260) - 1) * v15) + 4 * (3 * *(result + 256)) - 12;
  while (1)
  {
LABEL_2:
    if (a3 >= v18)
    {
      if (a3 <= v20)
      {
        v34 = (a3 >> 22) & 0x3C0;
        v35 = 0x3FFFFFFF;
        HIDWORD(v36) = HIDWORD(a3);
      }

      else
      {
        v30 = *(result + 216);
        v31 = *(result + 224) + v20;
        v32 = v31 - a3 + (v30 >> 1);
        if (v32 < 1)
        {
          goto LABEL_34;
        }

        if (v32 >= v30)
        {
          LODWORD(v33) = 0x3FFFFFFF;
        }

        else
        {
          v33 = (*(result + 232) * v32) >> 32;
        }

        v35 = v33 | v69;
        v36 = v31 - 0x1000000;
        v34 = 448;
      }
    }

    else
    {
      v26 = *(result + 216);
      v27 = v18 - *(result + 224);
      v28 = a3 - v27 + (v26 >> 1);
      if (v28 < 1)
      {
        goto LABEL_34;
      }

      if (v28 >= v26)
      {
        LODWORD(v29) = 0x3FFFFFFF;
      }

      else
      {
        v29 = (*(result + 232) * v28) >> 32;
      }

      v35 = v29 | v69;
      v36 = v27 + 0x1000000;
      v34 = 512;
    }

    if (a2 >= v17)
    {
      break;
    }

    v37 = *(result + 192);
    v38 = v17 - *(result + 200);
    v39 = a2 - v38 + (v37 >> 1);
    if (v39 >= 1)
    {
      if (v39 < v37)
      {
        v35 = ((v35 >> 15) * (((*(result + 208) * v39) >> 32) >> 15)) | v69;
      }

      v40 = v38 + 0x1000000;
      v41 = 32;
      goto LABEL_26;
    }

LABEL_34:
    --a4;
    a2 += v21;
    a3 += v22;
    v23 += 8;
    *++v24 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v19)
  {
    v41 = (a2 >> 26) & 0x3C;
    v40 = a2;
    goto LABEL_26;
  }

  v42 = *(result + 192);
  v43 = *(result + 200) + v19;
  v44 = v43 - a2 + (v42 >> 1);
  if (v44 < 1)
  {
    goto LABEL_34;
  }

  if (v44 < v42)
  {
    v35 = ((v35 >> 15) * (((*(result + 208) * v44) >> 32) >> 15)) | v69;
  }

  v40 = v43 - 0x1000000;
  v41 = 28;
LABEL_26:
  if (v35 < 0x400000)
  {
    goto LABEL_34;
  }

  v45 = v40 >> 32;
  v46 = v14 + SHIDWORD(v36) * v15;
  v47 = v46 + 12 * v45;
  v48 = *(result + 32);
  if (v25 >= v47)
  {
    v49 = (v46 + 12 * v45);
  }

  else
  {
    v49 = v25;
  }

  if (v49 < v48)
  {
    v49 = *(result + 32);
  }

  v50 = *v49;
  v51 = v49[1].f32[0];
  if (!v16)
  {
    goto LABEL_36;
  }

  v52 = *(v16 + (v41 | v34));
LABEL_52:
  v60 = v52 & 0xF;
  v61 = HIBYTE(v52) & 3;
  if (v60 == 1)
  {
    v68 = (v47 + SBYTE1(v52) * v15);
    if (v25 < v68)
    {
      v68 = v25;
    }

    if (v68 < v48)
    {
      v68 = v48;
    }

    v67 = v68[1].f32[0];
    LODWORD(a12) = interpolate_rgbaf_21860[4 * v61 + 3];
    v12 = *v68;
    goto LABEL_75;
  }

  if (v60 == 2)
  {
    v66 = (v47 + 12 * SBYTE2(v52));
    if (v25 < v66)
    {
      v66 = v25;
    }

    if (v66 < v48)
    {
      v66 = v48;
    }

    v67 = v66[1].f32[0];
    LODWORD(a12) = interpolate_rgbaf_21860[4 * ((v52 >> 28) & 3) + 3];
    v12 = *v66;
LABEL_75:
    v50 = vmla_n_f32(vmls_lane_f32(v50, v50, *&a12, 0), v12, *&a12);
    v51 = (v51 - (v51 * *&a12)) + (v67 * *&a12);
    v53 = *&a12 + (1.0 - *&a12);
    goto LABEL_37;
  }

  if (v60 != 3)
  {
LABEL_36:
    v53 = 1.0;
    goto LABEL_37;
  }

  v62 = v47 + 12 * SBYTE2(v52);
  if (v25 >= v62)
  {
    v63 = (v47 + 12 * SBYTE2(v52));
  }

  else
  {
    v63 = v25;
  }

  if (v63 < v48)
  {
    v63 = v48;
  }

  v64 = (v62 + SBYTE1(v52) * v15);
  if (v25 < v64)
  {
    v64 = v25;
  }

  if (v64 < v48)
  {
    v64 = v48;
  }

  v12.i32[0] = interpolate_rgbaf_21860[4 * v61 + 3];
  v13.i32[0] = interpolate_rgbaf_21860[4 * ((v52 >> 28) & 3) + 3];
  v51 = (((v51 - (v51 * v12.f32[0])) + (v63[1].f32[0] * v12.f32[0])) - (((v51 - (v51 * v12.f32[0])) + (v63[1].f32[0] * v12.f32[0])) * v13.f32[0])) + (((v63[1].f32[0] - (v63[1].f32[0] * v12.f32[0])) + (v64[1].f32[0] * v12.f32[0])) * v13.f32[0]);
  v65 = vmla_n_f32(vmls_lane_f32(v50, v50, v12, 0), *v63, v12.f32[0]);
  a12 = COERCE_DOUBLE(vmla_n_f32(vmls_lane_f32(*v63, *v63, v12, 0), *v64, v12.f32[0]));
  v50 = vmla_n_f32(vmls_lane_f32(v65, v65, v13, 0), *&a12, v13.f32[0]);
  v53 = ((v12.f32[0] + (1.0 - v12.f32[0])) - ((v12.f32[0] + (1.0 - v12.f32[0])) * v13.f32[0])) + ((v12.f32[0] + (1.0 - v12.f32[0])) * v13.f32[0]);
LABEL_37:
  *(v23 + 8) = (vmuls_lane_f32(0.59, v50, 1) + (v50.f32[0] * 0.3)) + (v51 * 0.11);
  *(v23 + 12) = v53;
  *(v24 + 1) = v35 >> 22;
  if (a4 != 1)
  {
    v54 = 0;
    v55 = (v23 + 20);
    a2 += v21;
    v56 = v19 - a2;
    a3 += v22;
    v57 = v20 - a3;
    while ((((a2 - v17) | v56 | (a3 - v18) | v57) & 0x8000000000000000) == 0)
    {
      v47 = v14 + SHIDWORD(a3) * v15 + 12 * SHIDWORD(a2);
      v48 = *(result + 32);
      if (v25 >= v47)
      {
        v58 = v14 + SHIDWORD(a3) * v15 + 12 * SHIDWORD(a2);
      }

      else
      {
        v58 = v25;
      }

      if (v58 < v48)
      {
        v58 = *(result + 32);
      }

      v50 = *v58;
      v51 = *(v58 + 8);
      if (v16)
      {
        v52 = *(v16 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v52 & 0xF) != 0)
        {
          v24 += v54 + 1;
          v23 = (v55 - 3);
          a4 += ~v54;
          v35 = -1;
          goto LABEL_52;
        }
      }

      *(v55 - 1) = (vmuls_lane_f32(0.59, v50, 1) + (v50.f32[0] * 0.3)) + (v51 * 0.11);
      *v55 = 1.0;
      v55 += 2;
      v59 = v24 + v54++;
      a2 += v21;
      *(v59 + 2) = -1;
      v56 -= v21;
      a3 += v22;
      v57 -= v22;
      if (a4 - 1 == v54)
      {
        return result;
      }
    }

    v24 += v54 + 1;
    v23 = (v55 - 3);
    a4 += ~v54;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Wf_sample_RGBAF(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v7 = *(result + 24);
  v8 = *(result + 176);
  v9 = *(result + 64);
  v10 = *(result + 72);
  v11 = *(result + 80);
  v12 = *(result + 88);
  v13 = *(result + 112);
  v14 = *(result + 120);
  v79 = *(result + 188);
  v15 = *(result + 152) - 8;
  v16 = *(result + 144) - 1;
  v18 = *(result + 32);
  v17 = *(result + 40);
  v19 = v18 + ((*(result + 260) - 1) * v7) + 4 * (4 * *(result + 256)) - 16;
  while (1)
  {
LABEL_2:
    if (a3 >= v10)
    {
      if (a3 <= v12)
      {
        v28 = (a3 >> 22) & 0x3C0;
        v29 = 0x3FFFFFFF;
        HIDWORD(v30) = HIDWORD(a3);
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v12;
        v26 = v25 - a3 + (v24 >> 1);
        if (v26 < 1)
        {
          goto LABEL_35;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v29 = v27 | v79;
        v30 = v25 - 0x1000000;
        v28 = 448;
      }
    }

    else
    {
      v20 = *(result + 216);
      v21 = v10 - *(result + 224);
      v22 = a3 - v21 + (v20 >> 1);
      if (v22 < 1)
      {
        goto LABEL_35;
      }

      if (v22 >= v20)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v22) >> 32;
      }

      v29 = v23 | v79;
      v30 = v21 + 0x1000000;
      v28 = 512;
    }

    if (a2 >= v9)
    {
      break;
    }

    v31 = *(result + 192);
    v32 = v9 - *(result + 200);
    v33 = a2 - v32 + (v31 >> 1);
    if (v33 >= 1)
    {
      if (v33 < v31)
      {
        v29 = ((v29 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v79;
      }

      v34 = v32 + 0x1000000;
      v35 = 32;
      goto LABEL_26;
    }

LABEL_35:
    --a4;
    a2 += v13;
    a3 += v14;
    v15 += 8;
    *++v16 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v11)
  {
    v35 = (a2 >> 26) & 0x3C;
    v34 = a2;
    goto LABEL_26;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v11;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_35;
  }

  if (v38 < v36)
  {
    v29 = ((v29 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v79;
  }

  v34 = v37 - 0x1000000;
  v35 = 28;
LABEL_26:
  if (v29 < 0x400000)
  {
    goto LABEL_35;
  }

  v39 = v18 + SHIDWORD(v30) * v7;
  v40 = v34 >> 32;
  v41 = v39 + 16 * v40;
  v42 = *(result + 32);
  if (v19 >= v41)
  {
    v43 = (v39 + 16 * v40);
  }

  else
  {
    v43 = v19;
  }

  if (v43 >= v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = *(result + 32);
  }

  if (v17)
  {
    v45 = COERCE_FLOAT(bswap32(v44[1].u32[1]));
  }

  else
  {
    v45 = 1.0;
  }

  v46 = vrev32_s8(*v44);
  v47 = COERCE_FLOAT(bswap32(v44[1].u32[0]));
  if (!v8)
  {
    goto LABEL_40;
  }

  v48 = *(v8 + (v35 | v28));
LABEL_59:
  v58 = v48 & 0xF;
  v59 = HIBYTE(v48) & 3;
  switch(v58)
  {
    case 1:
      v77 = (v41 + SBYTE1(v48) * v7);
      if (v19 < v77)
      {
        v77 = v19;
      }

      if (v77 >= v42)
      {
        v78 = v77;
      }

      else
      {
        v78 = v42;
      }

      v73 = vrev32_s8(*v78);
      v74 = COERCE_FLOAT(bswap32(v78[1].u32[0]));
      v75 = 1.0;
      if (v17)
      {
        v75 = COERCE_FLOAT(bswap32(v78[1].u32[1]));
      }

      v76 = &interpolate_rgbaf_21860[4 * v59];
      goto LABEL_93;
    case 2:
      v71 = (v41 + ((HIWORD(v48) << 56) >> 52));
      if (v19 < v71)
      {
        v71 = v19;
      }

      if (v71 >= v42)
      {
        v72 = v71;
      }

      else
      {
        v72 = v42;
      }

      v73 = vrev32_s8(*v72);
      v74 = COERCE_FLOAT(bswap32(v72[1].u32[0]));
      v75 = 1.0;
      if (v17)
      {
        v75 = COERCE_FLOAT(bswap32(v72[1].u32[1]));
      }

      v76 = &interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3)];
LABEL_93:
      v4.i32[0] = v76[3];
      v46 = vmla_n_f32(vmls_lane_f32(v46, v46, v4, 0), v73, v4.f32[0]);
      v47 = (v47 - (v47 * v4.f32[0])) + (v74 * v4.f32[0]);
      v45 = (v45 - (v45 * v4.f32[0])) + (v75 * v4.f32[0]);
      break;
    case 3:
      v60 = (v41 + ((HIWORD(v48) << 56) >> 52));
      if (v19 < v60)
      {
        v60 = v19;
      }

      if (v60 >= v42)
      {
        v61 = v60;
      }

      else
      {
        v61 = v42;
      }

      v62 = vrev32_s8(*v61);
      v63 = COERCE_FLOAT(bswap32(v61[1].u32[0]));
      v64 = 1.0;
      v65 = 1.0;
      if (v17)
      {
        v65 = COERCE_FLOAT(bswap32(v61[1].u32[1]));
      }

      v66 = v41 + SBYTE1(v48) * v7 + 16 * SBYTE2(v48);
      if (v19 < v66)
      {
        v66 = v19;
      }

      if (v66 >= v42)
      {
        v67 = v66;
      }

      else
      {
        v67 = v42;
      }

      v68 = vrev32_s8(*v67);
      v69 = COERCE_FLOAT(bswap32(v67[1].u32[0]));
      if (v17)
      {
        v64 = COERCE_FLOAT(bswap32(v67[1].u32[1]));
      }

      v5.i32[0] = interpolate_rgbaf_21860[4 * v59 + 3];
      v6.i32[0] = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
      v47 = (((v47 - (v47 * v5.f32[0])) + (v63 * v5.f32[0])) - (((v47 - (v47 * v5.f32[0])) + (v63 * v5.f32[0])) * v6.f32[0])) + (((v63 - (v63 * v5.f32[0])) + (v69 * v5.f32[0])) * v6.f32[0]);
      v70 = vmla_n_f32(vmls_lane_f32(v46, v46, v5, 0), v62, v5.f32[0]);
      v46 = vmla_n_f32(vmls_lane_f32(v70, v70, v6, 0), vmla_n_f32(vmls_lane_f32(v62, v62, v5, 0), v68, v5.f32[0]), v6.f32[0]);
      v45 = (((v45 - (v45 * v5.f32[0])) + (v65 * v5.f32[0])) - (((v45 - (v45 * v5.f32[0])) + (v65 * v5.f32[0])) * v6.f32[0])) + (((v65 - (v65 * v5.f32[0])) + (v64 * v5.f32[0])) * v6.f32[0]);
      break;
  }

LABEL_40:
  *(v15 + 8) = (vmuls_lane_f32(0.59, v46, 1) + (v46.f32[0] * 0.3)) + (v47 * 0.11);
  *(v15 + 12) = v45;
  *(v16 + 1) = v29 >> 22;
  if (a4 != 1)
  {
    v49 = 0;
    v50 = (v15 + 20);
    a2 += v13;
    v51 = v11 - a2;
    a3 += v14;
    v52 = v12 - a3;
    while ((((a2 - v9) | v51 | (a3 - v10) | v52) & 0x8000000000000000) == 0)
    {
      v53 = v18 + SHIDWORD(a3) * v7;
      v41 = v53 + 16 * (a2 >> 32);
      v42 = *(result + 32);
      if (v19 >= v41)
      {
        v54 = (v53 + 16 * (a2 >> 32));
      }

      else
      {
        v54 = v19;
      }

      if (v54 >= v42)
      {
        v55 = v54;
      }

      else
      {
        v55 = *(result + 32);
      }

      if (v17)
      {
        v45 = COERCE_FLOAT(bswap32(v55[1].u32[1]));
      }

      else
      {
        v45 = 1.0;
      }

      v46 = vrev32_s8(*v55);
      v56 = COERCE_FLOAT(bswap32(v55[1].u32[0]));
      v47 = v56;
      if (v8)
      {
        v48 = *(v8 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v48 & 0xF) != 0)
        {
          v16 += v49 + 1;
          v15 = (v50 - 3);
          a4 += ~v49;
          v29 = -1;
          goto LABEL_59;
        }
      }

      *(v50 - 1) = (vmuls_lane_f32(0.59, v46, 1) + (v46.f32[0] * 0.3)) + (v56 * 0.11);
      *v50 = v45;
      v57 = v16 + v49++;
      v50 += 2;
      a2 += v13;
      *(v57 + 2) = -1;
      v51 -= v13;
      a3 += v14;
      v52 -= v14;
      if (a4 - 1 == v49)
      {
        return result;
      }
    }

    v16 += v49 + 1;
    v15 = (v50 - 3);
    a4 += ~v49;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t Wf_sample_RGBAf(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  v7 = *(result + 24);
  v8 = *(result + 176);
  v9 = *(result + 64);
  v10 = *(result + 72);
  v11 = *(result + 80);
  v12 = *(result + 88);
  v13 = *(result + 112);
  v14 = *(result + 120);
  v78 = *(result + 188);
  v15 = *(result + 152) - 8;
  v16 = *(result + 144) - 1;
  v18 = *(result + 32);
  v17 = *(result + 40);
  v19 = v18 + ((*(result + 260) - 1) * v7) + 4 * (4 * *(result + 256)) - 16;
  while (1)
  {
LABEL_2:
    if (a3 >= v10)
    {
      if (a3 <= v12)
      {
        v28 = (a3 >> 22) & 0x3C0;
        v29 = 0x3FFFFFFF;
        HIDWORD(v30) = HIDWORD(a3);
      }

      else
      {
        v24 = *(result + 216);
        v25 = *(result + 224) + v12;
        v26 = v25 - a3 + (v24 >> 1);
        if (v26 < 1)
        {
          goto LABEL_35;
        }

        if (v26 >= v24)
        {
          LODWORD(v27) = 0x3FFFFFFF;
        }

        else
        {
          v27 = (*(result + 232) * v26) >> 32;
        }

        v29 = v27 | v78;
        v30 = v25 - 0x1000000;
        v28 = 448;
      }
    }

    else
    {
      v20 = *(result + 216);
      v21 = v10 - *(result + 224);
      v22 = a3 - v21 + (v20 >> 1);
      if (v22 < 1)
      {
        goto LABEL_35;
      }

      if (v22 >= v20)
      {
        LODWORD(v23) = 0x3FFFFFFF;
      }

      else
      {
        v23 = (*(result + 232) * v22) >> 32;
      }

      v29 = v23 | v78;
      v30 = v21 + 0x1000000;
      v28 = 512;
    }

    if (a2 >= v9)
    {
      break;
    }

    v31 = *(result + 192);
    v32 = v9 - *(result + 200);
    v33 = a2 - v32 + (v31 >> 1);
    if (v33 >= 1)
    {
      if (v33 < v31)
      {
        v29 = ((v29 >> 15) * (((*(result + 208) * v33) >> 32) >> 15)) | v78;
      }

      v34 = v32 + 0x1000000;
      v35 = 32;
      goto LABEL_26;
    }

LABEL_35:
    --a4;
    a2 += v13;
    a3 += v14;
    v15 += 8;
    *++v16 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v11)
  {
    v35 = (a2 >> 26) & 0x3C;
    v34 = a2;
    goto LABEL_26;
  }

  v36 = *(result + 192);
  v37 = *(result + 200) + v11;
  v38 = v37 - a2 + (v36 >> 1);
  if (v38 < 1)
  {
    goto LABEL_35;
  }

  if (v38 < v36)
  {
    v29 = ((v29 >> 15) * (((*(result + 208) * v38) >> 32) >> 15)) | v78;
  }

  v34 = v37 - 0x1000000;
  v35 = 28;
LABEL_26:
  if (v29 < 0x400000)
  {
    goto LABEL_35;
  }

  v39 = v18 + SHIDWORD(v30) * v7;
  v40 = v34 >> 32;
  v41 = v39 + 16 * v40;
  v42 = *(result + 32);
  if (v19 >= v41)
  {
    v43 = v39 + 16 * v40;
  }

  else
  {
    v43 = v19;
  }

  if (v43 >= v42)
  {
    v44 = v43;
  }

  else
  {
    v44 = *(result + 32);
  }

  if (v17)
  {
    v45 = v44[1].f32[1];
  }

  else
  {
    v45 = 1.0;
  }

  v46 = *v44;
  v47 = v44[1].f32[0];
  if (!v8)
  {
    goto LABEL_40;
  }

  v48 = *(v8 + (v35 | v28));
LABEL_59:
  v57 = v48 & 0xF;
  v58 = HIBYTE(v48) & 3;
  switch(v57)
  {
    case 1:
      v74 = v41 + SBYTE1(v48) * v7;
      if (v19 < v74)
      {
        v74 = v19;
      }

      if (v74 >= v42)
      {
        v75 = v74;
      }

      else
      {
        v75 = v42;
      }

      v70 = *v75;
      v71 = v75[1].f32[0];
      v72 = 1.0;
      if (v17)
      {
        v72 = v75[1].f32[1];
      }

      v73 = &interpolate_rgbaf_21860[4 * v58];
      goto LABEL_90;
    case 2:
      v68 = v41 + ((HIWORD(v48) << 56) >> 52);
      if (v19 < v68)
      {
        v68 = v19;
      }

      if (v68 >= v42)
      {
        v69 = v68;
      }

      else
      {
        v69 = v42;
      }

      v70 = *v69;
      v71 = v69[1].f32[0];
      v72 = 1.0;
      if (v17)
      {
        v72 = v69[1].f32[1];
      }

      v73 = &interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3)];
LABEL_90:
      v4.i32[0] = v73[3];
      v46 = vmla_n_f32(vmls_lane_f32(v46, v46, v4, 0), v70, v4.f32[0]);
      v47 = (v47 - (v47 * v4.f32[0])) + (v71 * v4.f32[0]);
      v45 = (v45 - (v45 * v4.f32[0])) + (v72 * v4.f32[0]);
      break;
    case 3:
      v59 = SBYTE1(v48) * v7;
      v60 = 16 * SBYTE2(v48);
      v61 = v41 + ((HIWORD(v48) << 56) >> 52);
      if (v19 < v61)
      {
        v61 = v19;
      }

      if (v61 >= v42)
      {
        v62 = v61;
      }

      else
      {
        v62 = v42;
      }

      v63 = *v62;
      if (v17)
      {
        v64 = v62[1].f32[1];
        v65 = (v41 + v59 + v60);
        if (v19 < v65)
        {
          v65 = v19;
        }

        if (v65 >= v42)
        {
          v66 = v65;
        }

        else
        {
          v66 = v42;
        }

        v67 = v66[1].f32[1];
      }

      else
      {
        v76 = (v41 + v59 + v60);
        if (v19 < v76)
        {
          v76 = v19;
        }

        if (v76 >= v42)
        {
          v66 = v76;
        }

        else
        {
          v66 = v42;
        }

        v64 = 1.0;
        v67 = 1.0;
      }

      v5.i32[0] = interpolate_rgbaf_21860[4 * v58 + 3];
      v6.i32[0] = interpolate_rgbaf_21860[4 * ((v48 >> 28) & 3) + 3];
      v47 = (((v47 - (v47 * v5.f32[0])) + (v62[1].f32[0] * v5.f32[0])) - (((v47 - (v47 * v5.f32[0])) + (v62[1].f32[0] * v5.f32[0])) * v6.f32[0])) + (((v62[1].f32[0] - (v62[1].f32[0] * v5.f32[0])) + (v66[1].f32[0] * v5.f32[0])) * v6.f32[0]);
      v77 = vmla_n_f32(vmls_lane_f32(v46, v46, v5, 0), v63, v5.f32[0]);
      v46 = vmla_n_f32(vmls_lane_f32(v77, v77, v6, 0), vmla_n_f32(vmls_lane_f32(v63, v63, v5, 0), *v66, v5.f32[0]), v6.f32[0]);
      v45 = (((v45 - (v45 * v5.f32[0])) + (v64 * v5.f32[0])) - (((v45 - (v45 * v5.f32[0])) + (v64 * v5.f32[0])) * v6.f32[0])) + (((v64 - (v64 * v5.f32[0])) + (v67 * v5.f32[0])) * v6.f32[0]);
      break;
  }

LABEL_40:
  *(v15 + 8) = (vmuls_lane_f32(0.59, v46, 1) + (v46.f32[0] * 0.3)) + (v47 * 0.11);
  *(v15 + 12) = v45;
  *(v16 + 1) = v29 >> 22;
  if (a4 != 1)
  {
    v49 = 0;
    v50 = (v15 + 20);
    a2 += v13;
    v51 = v11 - a2;
    a3 += v14;
    v52 = v12 - a3;
    while ((((a2 - v9) | v51 | (a3 - v10) | v52) & 0x8000000000000000) == 0)
    {
      v53 = v18 + SHIDWORD(a3) * v7;
      v41 = v53 + 16 * (a2 >> 32);
      v42 = *(result + 32);
      if (v19 >= v41)
      {
        v54 = v53 + 16 * (a2 >> 32);
      }

      else
      {
        v54 = v19;
      }

      if (v54 >= v42)
      {
        v55 = v54;
      }

      else
      {
        v55 = *(result + 32);
      }

      if (v17)
      {
        v45 = v55[1].f32[1];
      }

      else
      {
        v45 = 1.0;
      }

      v46 = *v55;
      v47 = v55[1].f32[0];
      if (v8)
      {
        v48 = *(v8 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
        if ((v48 & 0xF) != 0)
        {
          v16 += v49 + 1;
          v15 = (v50 - 3);
          a4 += ~v49;
          v29 = -1;
          goto LABEL_59;
        }
      }

      *(v50 - 1) = (vmuls_lane_f32(0.59, v46, 1) + (v46.f32[0] * 0.3)) + (v47 * 0.11);
      *v50 = v45;
      v56 = v16 + v49++;
      v50 += 2;
      a2 += v13;
      *(v56 + 2) = -1;
      v51 -= v13;
      a3 += v14;
      v52 -= v14;
      if (a4 - 1 == v49)
      {
        return result;
      }
    }

    v16 += v49 + 1;
    v15 = (v50 - 3);
    a4 += ~v49;
    if (a4)
    {
      goto LABEL_2;
    }
  }

  return result;
}