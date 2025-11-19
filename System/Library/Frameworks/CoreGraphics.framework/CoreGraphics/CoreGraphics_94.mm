uint64_t __type6_info_getTypeID_block_invoke()
{
  result = pdf_register_cftype(&type6_info_getTypeID_class);
  type6_info_getTypeID_id = result;
  return result;
}

void type6_info_finalize(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    CFRelease(v2);
  }

  CGColorSpaceRelease(*(a1 + 24));
  v3 = *(a1 + 96);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 88);

  free(v4);
}

uint64_t peephole_if (uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 3 || *(a1 - 16) != 259 || *(a1 - 32) != 256 || (*(a1 - 24) & 1) != 0)
  {
    return 0;
  }

  v4 = *(a1 - 8);
  *a3 = -3;
  type4_program_release(v4);
  return 1;
}

uint64_t peephole_le(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 3)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  if ((*(a1 - 16) - 257) > 1 || (*(a1 - 32) - 257) > 1)
  {
    return 0;
  }

  v9 = 0;
  result = type4_value_compare(&v9, a1 - 32, (a1 - 16));
  if (result)
  {
    v8 = v9 < 1;
    *(a1 - 32) = 256;
    *(a1 - 24) = v8;
    *a3 = -2;
    return 1;
  }

  return result;
}

uint64_t peephole_lt(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 3)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  if ((*(a1 - 16) - 257) > 1 || (*(a1 - 32) - 257) > 1)
  {
    return 0;
  }

  v9 = 0;
  result = type4_value_compare(&v9, a1 - 32, (a1 - 16));
  if (result)
  {
    v8 = v9 >> 31;
    *(a1 - 32) = 256;
    *(a1 - 24) = v8;
    *a3 = -2;
    return 1;
  }

  return result;
}

uint64_t peephole_ge(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 3)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  if ((*(a1 - 16) - 257) > 1 || (*(a1 - 32) - 257) > 1)
  {
    return 0;
  }

  v9 = 0;
  result = type4_value_compare(&v9, a1 - 32, (a1 - 16));
  if (result)
  {
    v8 = v9 >= 0;
    *(a1 - 32) = 256;
    *(a1 - 24) = v8;
    *a3 = -2;
    return 1;
  }

  return result;
}

uint64_t peephole_gt(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 3)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  if ((*(a1 - 16) - 257) > 1 || (*(a1 - 32) - 257) > 1)
  {
    return 0;
  }

  v9 = 0;
  result = type4_value_compare(&v9, a1 - 32, (a1 - 16));
  if (result)
  {
    v8 = v9 > 0;
    *(a1 - 32) = 256;
    *(a1 - 24) = v8;
    *a3 = -2;
    return 1;
  }

  return result;
}

uint64_t peephole_ne(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 3)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  if ((*(a1 - 16) - 257) > 1 || (*(a1 - 32) - 257) > 1)
  {
    return 0;
  }

  v9 = 0;
  result = type4_value_compare(&v9, a1 - 32, (a1 - 16));
  if (result)
  {
    v8 = v9 != 0;
    *(a1 - 32) = 256;
    *(a1 - 24) = v8;
    *a3 = -2;
    return 1;
  }

  return result;
}

uint64_t peephole_eq(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 3)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  if ((*(a1 - 16) - 257) > 1 || (*(a1 - 32) - 257) > 1)
  {
    return 0;
  }

  v9 = 0;
  result = type4_value_compare(&v9, a1 - 32, (a1 - 16));
  if (result)
  {
    v8 = v9 == 0;
    *(a1 - 32) = 256;
    *(a1 - 24) = v8;
    *a3 = -2;
    return 1;
  }

  return result;
}

uint64_t peephole_copy(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 2 || *(a1 - 16) != 257 || *(a1 - 8) != 1)
  {
    return 0;
  }

  *(a1 - 16) = 260;
  *(a1 - 8) = type4_op_dup;
  *a3 = -1;
  return 1;
}

uint64_t peephole_dup(_OWORD *a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 2 || (*(a1 - 4) - 257) > 1)
  {
    return 0;
  }

  *a1 = *(a1 - 1);
  *a3 = 0;
  return 1;
}

uint64_t peephole_index(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 3)
  {
    if (a2 != 2)
    {
      return 0;
    }

    v3 = (a1 - 16);
    if (*(a1 - 16) != 257)
    {
      return 0;
    }

    v10 = *(a1 - 8);
    v9 = (a1 - 8);
    if (v10)
    {
      return 0;
    }

    v4 = v9;
LABEL_18:
    *v3 = 260;
    *v4 = type4_op_dup;
    goto LABEL_19;
  }

  v3 = (a1 - 16);
  if (*(a1 - 16) != 257)
  {
    return 0;
  }

  v4 = (a1 - 8);
  v5 = *(a1 - 8);
  if (!v5)
  {
    v13 = *(a1 - 32);
    v6 = (a1 - 32);
    if ((v13 - 257) <= 1)
    {
LABEL_16:
      *v3 = *v6;
LABEL_19:
      *a3 = -1;
      return 1;
    }

    goto LABEL_18;
  }

  if (a2 == 3)
  {
    return 0;
  }

  if (v5 == 1)
  {
    if ((*(a1 - 32) - 257) <= 1)
    {
      v8 = *(a1 - 48);
      v6 = (a1 - 48);
      v7 = v8;
      goto LABEL_8;
    }

    return 0;
  }

  v11 = 0;
  if (a2 != 4 && v5 == 2)
  {
    if ((*(a1 - 32) - 257) <= 1 && (*(a1 - 48) - 257) <= 1)
    {
      v14 = *(a1 - 64);
      v6 = (a1 - 64);
      v7 = v14;
LABEL_8:
      if ((v7 - 257) <= 1)
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

  return v11;
}

uint64_t peephole_exch(uint64_t a1, unint64_t a2, int *a3)
{
  if (a2 < 2)
  {
    return 0;
  }

  v3 = (a1 - 16);
  v4 = *(a1 - 16);
  if (v4 == 260)
  {
    if (*(a1 - 8) == type4_op_exch)
    {
      v5 = -2;
LABEL_9:
      *a3 = v5;
      return 1;
    }

    return 0;
  }

  v6 = 0;
  if (a2 != 2 && (v4 - 257) <= 1)
  {
    v8 = *(a1 - 32);
    v7 = (a1 - 32);
    if ((v8 - 257) <= 1)
    {
      v9 = *v7;
      *v7 = *v3;
      *v3 = v9;
      v5 = -1;
      goto LABEL_9;
    }

    return 0;
  }

  return v6;
}

uint64_t peephole_pop(uint64_t a1, unint64_t a2, int *a3)
{
  if (a2 < 2)
  {
    return 0;
  }

  v3 = *(a1 - 16);
  if ((v3 - 257) < 2)
  {
    goto LABEL_3;
  }

  if (v3 != 260)
  {
    return 0;
  }

  v6 = *(a1 - 8);
  if (v6 == type4_op_dup)
  {
LABEL_3:
    v4 = -2;
LABEL_4:
    *a3 = v4;
    return 1;
  }

  if (a2 == 2)
  {
    return 0;
  }

  if (v6 == type4_op_copy && *(a1 - 32) == 257 && *(a1 - 24) == 1 || v6 == type4_op_index && *(a1 - 32) == 257)
  {
LABEL_15:
    v4 = -3;
    goto LABEL_4;
  }

  if (a2 >= 4 && v6 == type4_op_pop && *(a1 - 32) == 260 && *(a1 - 24) == type4_op_copy && *(a1 - 48) == 257 && *(a1 - 40) == 2)
  {
    v4 = -4;
    goto LABEL_4;
  }

  if (v6 == type4_op_exch)
  {
    if ((*(a1 - 32) - 257) <= 1)
    {
      *(a1 - 16) = *(a1 - 32);
      *(a1 - 32) = 260;
      *(a1 - 24) = type4_op_pop;
      goto LABEL_41;
    }

    if (v6 == type4_op_exch && a2 >= 4 && *(a1 - 32) == 260 && *(a1 - 24) == type4_op_copy && *(a1 - 48) == 257 && *(a1 - 40) == 2)
    {
      *(a1 - 48) = 260;
      *(a1 - 40) = type4_op_dup;
      goto LABEL_15;
    }
  }

  if (v6 == type4_op_copy && *(a1 - 32) == 257 && *(a1 - 24) == 2)
  {
    *(a1 - 16) = 260;
    *(a1 - 8) = type4_op_index;
    *(a1 - 32) = 257;
    *(a1 - 24) = 1;
LABEL_41:
    v4 = -1;
    goto LABEL_4;
  }

  v5 = 0;
  if (a2 >= 5 && v6 == type4_op_pop)
  {
    if (*(a1 - 32) != 260 || *(a1 - 24) != type4_op_roll || *(a1 - 48) != 257 || *(a1 - 40) != 1 || *(a1 - 64) != 257 || *(a1 - 56) != 3)
    {
      return 0;
    }

    *(a1 - 16) = 260;
    *(a1 - 8) = type4_op_pop;
    *(a1 - 32) = 260;
    *(a1 - 24) = type4_op_exch;
    *(a1 - 48) = 260;
    *(a1 - 40) = type4_op_pop;
    *(a1 - 64) = 260;
    *(a1 - 56) = type4_op_exch;
    goto LABEL_41;
  }

  return v5;
}

uint64_t peephole_roll(uint64_t a1, unint64_t a2, int *a3)
{
  if (a2 < 3)
  {
    return 0;
  }

  v3 = *(a1 - 32);
  if (v3 == 257 && *(a1 - 24) == 1)
  {
    goto LABEL_4;
  }

  if (*(a1 - 16) != 257)
  {
    return 0;
  }

  v5 = *(a1 - 8);
  if (v3 == 257 && v5 == 1)
  {
    v8 = *(a1 - 24);
    if (v8 == 2)
    {
      *(a1 - 32) = 260;
      *(a1 - 24) = type4_op_exch;
      v4 = -2;
      goto LABEL_15;
    }

    if (a2 < 6)
    {
      return 0;
    }

    goto LABEL_17;
  }

  v7 = 0;
  if (a2 >= 6 && v3 == 257)
  {
    v8 = *(a1 - 24);
LABEL_17:
    if (*(a1 - 48) == 260 && *(a1 - 40) == type4_op_roll && *(a1 - 64) == 257 && *(a1 - 80) == 257 && *(a1 - 72) == v8)
    {
      v9 = *(a1 - 56) + v5;
      *(a1 - 64) = 257;
      *(a1 - 56) = v9;
LABEL_4:
      v4 = -3;
LABEL_15:
      *a3 = v4;
      return 1;
    }

    return 0;
  }

  return v7;
}

uint64_t peephole_cvr(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 2)
  {
    return 0;
  }

  v3 = *(a1 - 16);
  if ((v3 - 257) > 1)
  {
    return 0;
  }

  if (v3 == 258)
  {
    v4 = *(a1 - 12);
    v5 = *(a1 - 8);
    goto LABEL_8;
  }

  if (v3 != 257)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1 - 8);
LABEL_8:
  *(a1 - 16) = 258;
  *(a1 - 12) = v4;
  *(a1 - 8) = v5;
  *a3 = -1;
  return 1;
}

uint64_t peephole_cvi(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 2)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  v5 = (a1 - 16);
  if ((*(a1 - 16) - 257) <= 1)
  {
    v9 = 0uLL;
    v8 = 0;
    result = type4_value_cvi(&v9, v5, &v8);
    if (!result)
    {
      return result;
    }

    if ((v8 & 1) == 0)
    {
      *v5 = v9;
      *a3 = -1;
      return 1;
    }
  }

  return 0;
}

uint64_t peephole_mul(uint64_t a1, unint64_t a2, int *a3)
{
  if (a2 < 3)
  {
    if (a2 != 2)
    {
      return 0;
    }

    v4 = *(a1 - 16);
  }

  else
  {
    v4 = *(a1 - 16);
    if ((v4 - 257) <= 1 && (*(a1 - 32) - 257) <= 1)
    {
      type4_value_mul(a1 - 32, a1 - 32, a1 - 16);
LABEL_15:
      v5 = -2;
      goto LABEL_16;
    }
  }

  if (v4 == 258)
  {
    v6 = *(a1 - 8);
    if (v6 == 0.0)
    {
      v5 = 0;
      *(a1 - 16) = 260;
      *(a1 - 8) = type4_op_pop;
      *a1 = 258;
      *(a1 + 8) = 0;
      goto LABEL_16;
    }

    if (v6 == 1.0)
    {
      goto LABEL_15;
    }
  }

  else if (v4 == 257)
  {
    v5 = *(a1 - 8);
    if (v5 == 1)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      *(a1 - 16) = 260;
      *(a1 - 8) = type4_op_pop;
      *a1 = 257;
      *(a1 + 8) = 0;
LABEL_16:
      *a3 = v5;
      return 1;
    }
  }

  return 0;
}

uint64_t peephole_sub(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 3)
  {
    if (a2 != 2)
    {
      return 0;
    }

    v4 = *(a1 - 16);
LABEL_7:
    if (v4 == 258)
    {
      if (*(a1 - 8) == 0.0)
      {
        goto LABEL_12;
      }
    }

    else if (v4 == 257 && !*(a1 - 8))
    {
      goto LABEL_12;
    }

    return 0;
  }

  v4 = *(a1 - 16);
  if ((v4 - 257) > 1 || (*(a1 - 32) - 257) > 1)
  {
    goto LABEL_7;
  }

  type4_value_sub((a1 - 32), (a1 - 32), a1 - 16);
LABEL_12:
  *a3 = -2;
  return 1;
}

uint64_t peephole_add(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (a2 < 3)
  {
    if (a2 != 2)
    {
      return 0;
    }

    v4 = *(a1 - 16);
LABEL_7:
    if (v4 == 258)
    {
      if (*(a1 - 8) == 0.0)
      {
        goto LABEL_12;
      }
    }

    else if (v4 == 257 && !*(a1 - 8))
    {
      goto LABEL_12;
    }

    return 0;
  }

  v4 = *(a1 - 16);
  if ((v4 - 257) > 1 || (*(a1 - 32) - 257) > 1)
  {
    goto LABEL_7;
  }

  type4_value_add((a1 - 32), a1 - 32, (a1 - 16));
LABEL_12:
  *a3 = -2;
  return 1;
}

void deZoneDescendantsOf(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
  [a1 childrenOfClass:objc_opt_class() into:v2];
  v3 = [v2 count];
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = [v2 objectAtIndex:v5];
      if (([v6 hasRotatedCharacters] & 1) == 0)
      {
        deZoneDescendantsOf(v6);
        [v6 promoteChildren];
        [v6 remove];
      }

      ++v5;
    }

    while (v4 != v5);
  }

  deZoneTablesIn(a1);
}

void deZoneTablesIn(void *a1)
{
  v2 = [a1 countOfClass:objc_opt_class()];
  if (v2)
  {
    v3 = v2;
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
    [a1 childrenOfClass:objc_opt_class() into:v9];
    for (i = 0; i != v3; ++i)
    {
      v5 = [v9 objectAtIndex:i];
      v6 = [v5 count];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        do
        {
          deZoneDescendantsOf([v5 childAtIndex:v8]);
          v8 = (v8 + 1);
        }

        while (v7 != v8);
      }
    }
  }
}

uint64_t CGPDFShadingType4Init(void *a1, uint64_t *a2, _OWORD *a3)
{
  if (type4_info_getTypeID_onceToken != -1)
  {
    dispatch_once(&type4_info_getTypeID_onceToken, &__block_literal_global_20789);
  }

  result = pdf_create_cftype();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v17 = 0;
  value = 0;
  format = CGPDFDataFormatRaw;
  *a2 = result;
  *a3 = CGPDFShadingType4Init_type4_callbacks;
  if (a1)
  {
    v8 = a1[3];
  }

  else
  {
    v8 = 0;
  }

  if (!CGPDFDictionaryGetInteger(v8, "BitsPerCoordinate", &value))
  {
    return 0;
  }

  if (value > 0x20 || ((1 << value) & 0x101011116) == 0)
  {
    return 0;
  }

  v7[3] = value;
  if (!CGPDFDictionaryGetInteger(v8, "BitsPerComponent", &value))
  {
    return 0;
  }

  if (value > 0x10 || ((1 << value) & 0x11116) == 0)
  {
    return 0;
  }

  v7[4] = value;
  if (!CGPDFDictionaryGetInteger(v8, "BitsPerFlag", &value))
  {
    return 0;
  }

  if (value > 8 || ((1 << value) & 0x114) == 0)
  {
    return 0;
  }

  v7[5] = value;
  v7[11] = 0;
  if (!CGPDFDictionaryGetObject(v8, "Function", &v17) || (result = CGPDFShadingCreateShadingFunction(v17, 1uLL), (v7[11] = result) != 0))
  {
    if (a1)
    {
      v9 = a1[5];
    }

    else
    {
      v9 = 0;
    }

    v10 = v7[11];
    if (v10)
    {
      if (CGColorSpaceGetType(v9) == 7)
      {
        return 0;
      }

      v10 = v7[11];
      if (v10)
      {
        v11 = *(v10 + 48);
      }

      else
      {
        v11 = 0;
      }

      if (v9)
      {
        v12 = *(v9[3] + 48);
      }

      else
      {
        v12 = 0;
      }

      if (v11 != v12)
      {
        pdf_error("invalid function for type 4 shading");
        return 0;
      }
    }

    if (v9)
    {
      CFRetain(v9);
      v7[2] = v9;
      if (v7[11])
      {
        v13 = 2;
      }

      else
      {
        v13 = 2 * *(v9[3] + 48);
      }
    }

    else
    {
      v7[2] = 0;
      v13 = 2 * (v10 != 0);
    }

    v14 = malloc_type_malloc(8 * (v13 + 4), 0x100004000313F17uLL);
    __CFSetLastAllocationEventName();
    if (!v14)
    {
      return 0;
    }

    if (!CGPDFDictionaryGetNumbers(v8, "Decode", v14, v13 + 4))
    {
      free(v14);
      return 0;
    }

    v7[6] = *v14;
    v7[8] = v14[1];
    v7[7] = v14[2];
    v7[9] = v14[3];
    memmove(v14, v14 + 4, 8 * v13);
    v7[10] = v14;
    if (a1)
    {
      v15 = a1[4];
    }

    else
    {
      v15 = 0;
    }

    result = CGPDFStreamCopyData(v15, &format);
    v7[12] = result;
    if (result)
    {
      if (format == CGPDFDataFormatRaw)
      {
        return 1;
      }

      pdf_error("invalid shading data format.");
      return 0;
    }
  }

  return result;
}

void type4_release_info(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t type4_create_shading(CGRect *a1, const void *a2)
{
  v3 = &CGRectNull;
  p_height = &CGRectNull.size.height;
  p_y = &CGRectNull.origin.y;
  p_size = &CGRectNull.size;
  if (a1)
  {
    p_size = &a1[2].size;
    p_y = &a1[2].origin.y;
    v3 = a1 + 2;
    p_height = &a1[2].size.height;
  }

  v7 = *p_height;
  x = v3->origin.x;
  v9 = *p_y;
  width = p_size->width;
  v21[0] = *&v3->origin.x;
  *&v21[1] = v9;
  *&v21[2] = width;
  *&v21[3] = v7;
  if (a1)
  {
    y = a1[1].origin.y;
    a1 = *&a1[1].size.width;
  }

  else
  {
    y = 0.0;
  }

  Components = CGColorGetComponents(a1);
  v17 = x == -8.98846567e307;
  if (v9 != -8.98846567e307)
  {
    v17 = 0;
  }

  if (width != 1.79769313e308)
  {
    v17 = 0;
  }

  v18 = v7 == 1.79769313e308 && v17;
  if (a2)
  {
    CFRetain(a2);
    if (y == 0.0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (y == 0.0)
    {
      return result;
    }
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v21;
  }

  result = CGShadingCreateEmpty(0, *&y, Components, v20, v12, v13, v14, v15);
  *(result + 80) = a2;
  *(result + 104) = type4_create_shading_type4_drawing_callbacks;
  *(result + 120) = off_1EF242800;
  return result;
}

void cg_shading_type4_release(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void cg_shading_type4_draw(uint64_t a1, CGContextRef c)
{
  v84[3] = *MEMORY[0x1E69E9840];
  v75 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(*(v3 + 3) + 48);
    v5 = v4 + 1;
    if ((v4 + 1) > 5)
    {
      return;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  v83 = 0;
  memset(v84, 0, 24);
  memset(&v82, 0, sizeof(v82));
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v77[1] = 0;
  memset(&v76, 0, sizeof(v76));
  CGContextSetFillColorSpace(c, v3);
  CGContextSetStrokeColorSpace(c, *(v75 + 16));
  CGContextGetCTM(&v76, c);
  v6 = CGTriangleMeshCreate(*(v75 + 16), *(v75 + 88));
  v7 = v6;
  if (v6)
  {
    v8 = v6[1];
  }

  else
  {
    v8 = 0;
  }

  BytePtr = CFDataGetBytePtr(*(v75 + 96));
  Length = CFDataGetLength(*(v75 + 96));
  v77[0] = BytePtr;
  v78 = &BytePtr[Length];
  LODWORD(v79) = 0;
  v80 = 0;
  while (v77[0] != v78)
  {
    do
    {
      type4_read_triangle(v75, v77, &v76, v7, v8, v11);
    }

    while (v80);
  }

  if (v7)
  {
    v12 = v7[9];
    if (v12)
    {
      v67 = &v64;
      is_mul_ok(3 * v12, 0x48uLL);
      v13 = MEMORY[0x1EEE9AC00](216 * v12, v11);
      v17 = (&v64 - v16);
      v66 = v17;
      if (v14 <= 0x38E38E38E38E38DLL)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v14 - 0x38E38E38E38E38ELL >= 0xFC71C71C71C71CF3)
      {
        v18 = malloc_type_malloc(v13, 0x3155EA4CuLL);
      }

      v68 = v5;
      v19 = MEMORY[0x1EEE9AC00](16 * v12, v15);
      v65 = (&v64 - v20 - 15);
      if (v21 <= 0xFFFFFFFFFFFFFFELL)
      {
        v22 = (&v64 - v20 - 15);
      }

      else
      {
        v22 = 0;
      }

      v64 = c;
      if (v21 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000082)
      {
        v22 = malloc_type_malloc(v19, 0xED33E417uLL);
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      v69 = v18 + 4;
      v72 = v22;
      v71 = v7;
      v70 = v12;
      do
      {
        v26 = &v22[4 * v25];
        v26[3] = 0;
        v27 = v7[9];
        v73 = v25;
        if (v27 > v25)
        {
          v28 = 0;
          v29 = v7[4];
          v30 = v7[7];
          v31 = v7[10] + v23;
          do
          {
            v84[v28] = v30 + v29 * *(v31 + v28 * 8);
            ++v28;
          }

          while (v28 != 3);
        }

        v74 = v23;
        v32 = 0;
        v33 = &v69[9 * v24];
        do
        {
          v26[v32] = v24;
          v34 = v84[v32];
          v35 = &v18[9 * v24];
          v36 = *v34;
          *v35 = *v34;
          v35[2] = 0.0;
          v35[3] = 0.0;
          v37 = *(v75 + 88);
          if (v37)
          {
            v83 = v34[1].n128_u64[0];
            v36.n128_u64[0] = v83;
            CGFunctionEvaluate(v37, &v83, v35 + 4, v36);
          }

          else if (v4)
          {
            v38 = v34 + 1;
            v39 = v33;
            v40 = v4;
            do
            {
              v41 = v38->n128_u64[0];
              v38 = (v38 + 8);
              *v39++ = v41;
              --v40;
            }

            while (v40);
          }

          ++v24;
          v35[v4 + 4] = 1.0;
          ++v32;
          v33 += 9;
        }

        while (v32 != 3);
        v25 = v73 + 1;
        v23 = v74 + 24;
        v42 = v70;
        v22 = v72;
        v7 = v71;
      }

      while (v73 + 1 != v70);
      CGTriangleMeshRelease(v71);
      v43 = v42;
      v44 = v68;
      if (RenderTriangleMesh(v18, v24, v22, v43, v68, &v81, &v82.origin.x))
      {
        v45 = v64;
        CGContextSaveGState(v64);
        CGContextResetCTM(v45, v46, v47, v48, v49, v50, v51, v52);
        size = v82.size;
        origin = v82.origin;
        if (v82.size.width < 0.0 || v82.size.height < 0.0)
        {
          v85 = CGRectStandardize(v82);
          width = v85.size.width;
          v85.origin = origin;
          v85.size = size;
          *(&height - 3) = CGRectStandardize(v85);
        }

        else
        {
          width = v82.size.width;
          height = v82.size.height;
        }

        v58 = height;
        v59 = (8 * v44 * width) >> 3;
        v60 = v81;
        v61 = v59 * height;
        check_clients_buffer("CGDataProviderCreateWithData", v81, v61);
        v62 = CGDataProviderCreateWithDataInternal(0, v60, v61, patch_data_release_20806, 0);
        v63 = CGImageCreate(width, v58, 8uLL, 8 * v44, v59, *(v75 + 16), 3u, v62, 0, 0, kCGRenderingIntentDefault);
        CGDataProviderRelease(v62);
        CGImageSetCachingFlags(v63, 1);
        v86.origin = origin;
        v86.size = size;
        CGContextDrawImage(v45, v86, v63);
        CGContextRestoreGState(v45);
        if (v63)
        {
          CFRelease(v63);
        }

        v57 = v72;
        if (v72 == v65)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v22 == v65)
        {
          goto LABEL_47;
        }

        v57 = v22;
      }

      free(v57);
LABEL_47:
      if (v18 != v66)
      {
        free(v18);
      }
    }
  }
}

void type4_read_triangle(uint64_t a1, unsigned __int8 **a2, float64x2_t *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1EEE9AC00](24 * a5, a6);
  v14 = (&v22 - v13);
  if (v12 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v15 = (&v22 - v13);
  }

  else
  {
    v15 = 0;
  }

  if (v12 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000082)
  {
    v15 = malloc_type_malloc(v11, 0x865DD7FDuLL);
  }

  v16 = type4_read_vertex(a1, a2, &v23, v15, a5);
  if (v16 <= 1)
  {
    if (!v16)
    {
      type4_read_vertex(a1, a2, &v25, &v15[a5], a5);
      type4_read_vertex(a1, a2, v26, &v15[2 * a5], a5);
      CGTriangleMeshAddTriangle(a4, a3, &v23, v15);
      goto LABEL_14;
    }

    v17 = v23;
    v18 = v24;
    v19 = a4;
    v20 = a3;
    v21 = 0;
    goto LABEL_12;
  }

  if (v16 == 2)
  {
    v17 = v23;
    v18 = v24;
    v19 = a4;
    v20 = a3;
    v21 = 1;
LABEL_12:
    CGTriangleMeshAddTriangleWithRelativePoint(v19, v20, v21, v15, v17, v18);
    goto LABEL_14;
  }

  pdf_error("invalid shading flag value.");
LABEL_14:
  if (v15 != v14)
  {
    free(v15);
  }
}

uint64_t type4_read_vertex(uint64_t a1, unsigned __int8 **a2, double *a3, double *a4, uint64_t a5)
{
  v5 = *(a1 + 40);
  if (v5 < 0x19)
  {
    v12 = 0;
    if (!v5)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v5 -= 24;
  v6 = a2[4];
  if (v6 >= 0x18)
  {
    v8 = *(a2 + 6);
  }

  else
  {
    v7 = a2[2];
    v8 = *(a2 + 6);
    v9 = a2[4];
    v10 = *a2;
    do
    {
      v8 <<= 8;
      *(a2 + 6) = v8;
      if (v10 < v7)
      {
        *a2 = v10 + 1;
        v8 |= *v10;
        *(a2 + 6) = v8;
        ++v10;
      }

      v6 = v9 + 8;
      a2[4] = (v9 + 8);
      v11 = v9 >= 0x10;
      v9 += 8;
    }

    while (!v11);
  }

  a2[4] = (v6 - 24);
  v12 = ((v8 >> (v6 - 24)) & 0xFFFFFF) << v5;
  if (v5)
  {
LABEL_13:
    v13 = a2[4];
    if (v13 >= v5)
    {
      v15 = *(a2 + 6);
    }

    else
    {
      v14 = a2[2];
      v15 = *(a2 + 6);
      v16 = *a2;
      do
      {
        v15 <<= 8;
        *(a2 + 6) = v15;
        if (v16 < v14)
        {
          *a2 = v16 + 1;
          v15 |= *v16;
          *(a2 + 6) = v15;
          ++v16;
        }

        v13 += 8;
        a2[4] = v13;
      }

      while (v13 < v5);
    }

    v17 = (v13 - v5);
    a2[4] = v17;
    LODWORD(v5) = (v15 >> v17) & (0xFFFFFFFF >> -v5);
  }

LABEL_21:
  v18 = 0;
  v19 = *(a1 + 24);
  v20 = v19;
  if (v19 >= 0x19)
  {
    v20 = v19 - 24;
    v21 = a2[4];
    if (v21 >= 0x18)
    {
      v23 = *(a2 + 6);
    }

    else
    {
      v22 = a2[2];
      v23 = *(a2 + 6);
      v24 = a2[4];
      v25 = *a2;
      do
      {
        v23 <<= 8;
        *(a2 + 6) = v23;
        if (v25 < v22)
        {
          *a2 = v25 + 1;
          v23 |= *v25;
          *(a2 + 6) = v23;
          ++v25;
        }

        v21 = v24 + 8;
        a2[4] = (v24 + 8);
        v11 = v24 >= 0x10;
        v24 += 8;
      }

      while (!v11);
    }

    a2[4] = (v21 - 24);
    v18 = ((v23 >> (v21 - 24)) & 0xFFFFFF) << v20;
  }

  v26 = (0xFFFFFFFF >> -v19);
  if (v20)
  {
    v27 = a2[4];
    if (v27 >= v20)
    {
      v29 = *(a2 + 6);
    }

    else
    {
      v28 = a2[2];
      v29 = *(a2 + 6);
      v30 = *a2;
      do
      {
        v29 <<= 8;
        *(a2 + 6) = v29;
        if (v30 < v28)
        {
          *a2 = v30 + 1;
          v29 |= *v30;
          *(a2 + 6) = v29;
          ++v30;
        }

        v27 += 8;
        a2[4] = v27;
      }

      while (v27 < v20);
    }

    v31 = &v27[-v20];
    a2[4] = v31;
    LODWORD(v20) = (v29 >> v31) & (0xFFFFFFFF >> -v20);
  }

  *a3 = *(a1 + 48) + (*(a1 + 64) - *(a1 + 48)) * (v20 | v18) / v26;
  if (v19 < 0x19)
  {
    v37 = 0;
    if (!v19)
    {
      goto LABEL_60;
    }

    goto LABEL_52;
  }

  v19 -= 24;
  v32 = a2[4];
  if (v32 >= 0x18)
  {
    v34 = *(a2 + 6);
  }

  else
  {
    v33 = a2[2];
    v34 = *(a2 + 6);
    v35 = a2[4];
    v36 = *a2;
    do
    {
      v34 <<= 8;
      *(a2 + 6) = v34;
      if (v36 < v33)
      {
        *a2 = v36 + 1;
        v34 |= *v36;
        *(a2 + 6) = v34;
        ++v36;
      }

      v32 = v35 + 8;
      a2[4] = (v35 + 8);
      v11 = v35 >= 0x10;
      v35 += 8;
    }

    while (!v11);
  }

  a2[4] = (v32 - 24);
  v37 = ((v34 >> (v32 - 24)) & 0xFFFFFF) << v19;
  if (v19)
  {
LABEL_52:
    v38 = a2[4];
    if (v38 >= v19)
    {
      v40 = *(a2 + 6);
    }

    else
    {
      v39 = a2[2];
      v40 = *(a2 + 6);
      v41 = *a2;
      do
      {
        v40 <<= 8;
        *(a2 + 6) = v40;
        if (v41 < v39)
        {
          *a2 = v41 + 1;
          v40 |= *v41;
          *(a2 + 6) = v40;
          ++v41;
        }

        v38 += 8;
        a2[4] = v38;
      }

      while (v38 < v19);
    }

    v42 = (v38 - v19);
    a2[4] = v42;
    LODWORD(v19) = (v40 >> v42) & (0xFFFFFFFF >> -v19);
  }

LABEL_60:
  a3[1] = *(a1 + 56) + (*(a1 + 72) - *(a1 + 56)) * (v19 | v37) / v26;
  if (a5)
  {
    v43 = 0;
    v44 = *(a1 + 32);
    v45 = *(a1 + 80);
    while (v44 < 0x19)
    {
      v51 = 0;
      v52 = v44;
      if (v44)
      {
        goto LABEL_74;
      }

LABEL_82:
      *a4++ = *(v45 + 16 * v43) + (*(v45 + 16 * v43 + 8) - *(v45 + 16 * v43)) * (v52 | v51) / (0xFFFFFFFF >> -v44);
      if (++v43 == a5)
      {
        goto LABEL_83;
      }
    }

    v46 = a2[4];
    if (v46 >= 0x18)
    {
      v48 = *(a2 + 6);
    }

    else
    {
      v47 = a2[2];
      v48 = *(a2 + 6);
      v49 = a2[4];
      v50 = *a2;
      do
      {
        v48 <<= 8;
        *(a2 + 6) = v48;
        if (v50 < v47)
        {
          *a2 = v50 + 1;
          v48 |= *v50;
          *(a2 + 6) = v48;
          ++v50;
        }

        v46 = v49 + 8;
        a2[4] = (v49 + 8);
        v11 = v49 >= 0x10;
        v49 += 8;
      }

      while (!v11);
    }

    a2[4] = (v46 - 24);
    v51 = ((v48 >> (v46 - 24)) & 0xFFFFFF) << (v44 - 24);
    v52 = v44 - 24;
LABEL_74:
    v53 = a2[4];
    if (v53 >= v52)
    {
      v55 = *(a2 + 6);
    }

    else
    {
      v54 = a2[2];
      v55 = *(a2 + 6);
      v56 = *a2;
      do
      {
        v55 <<= 8;
        *(a2 + 6) = v55;
        if (v56 < v54)
        {
          *a2 = v56 + 1;
          v55 |= *v56;
          *(a2 + 6) = v55;
          ++v56;
        }

        v53 += 8;
        a2[4] = v53;
      }

      while (v53 < v52);
    }

    v57 = &v53[-v52];
    a2[4] = v57;
    LODWORD(v52) = (v55 >> v57) & (0xFFFFFFFF >> -v52);
    goto LABEL_82;
  }

LABEL_83:
  v58 = a2[4];
  if ((v58 & 7) != 0)
  {
    a2[4] = (v58 & 0xFFFFFFFFFFFFFFF8);
  }

  return (v5 | v12) & 3;
}

uint64_t __type4_info_getTypeID_block_invoke()
{
  result = pdf_register_cftype(&type4_info_getTypeID_class);
  type4_info_getTypeID_id = result;
  return result;
}

void type4_info_finalize(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRelease(v2);
  }

  CGColorSpaceRelease(*(a1 + 16));
  v3 = *(a1 + 88);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 80);

  free(v4);
}

uint64_t thread_fun(void (**a1)(uint64_t))
{
  v2 = *a1;
  v1 = a1[1];
  free(a1);
  v2(v1);
  return 0;
}

uint64_t crossing_count(float64x2_t *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v12 = a1->f64[0];
  v11 = a1->f64[1];
  v13 = v11;
  v14 = v11;
  v15 = a1->f64[0];
  v16 = a1->f64[0];
  if ((a2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = &a1[1].f64[1];
    v18 = a2;
    v16 = a1->f64[0];
    v15 = a1->f64[0];
    v14 = a1->f64[1];
    v13 = v14;
    do
    {
      v20 = *(v17 - 1);
      v19 = *v17;
      if (v20 > v15)
      {
        v21 = *(v17 - 1);
      }

      else
      {
        v21 = v15;
      }

      if (v20 < v16)
      {
        v16 = *(v17 - 1);
      }

      else
      {
        v15 = v21;
      }

      if (v19 >= v14)
      {
        if (v19 > v13)
        {
          v13 = *v17;
        }
      }

      else
      {
        v14 = *v17;
      }

      v17 += 2;
      --v18;
    }

    while (v18);
  }

  v22 = 0;
  if (v14 > 0.0 || v13 < 0.0 || v15 < 0.0)
  {
    return v22;
  }

  if (v16 > 0.0)
  {
    v23 = &a1[a2];
    if (v11 < 0.0)
    {
      return v23->f64[1] >= 0.0;
    }

    v24 = v23->f64[1];
    if (v11 <= 0.0 || (v22 = v24 <= 0.0) != 0)
    {
      if (v24 >= 0.0)
      {
        return 0;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    return v22;
  }

  if (v14 == v13)
  {
    goto LABEL_21;
  }

  if (a2 != 1)
  {
    if (a2 == 2 ? get_y_inflections_2(a1, v45, 0) : get_y_inflections_3(a1, v45, 0))
    {
      v26.n128_f64[0] = subdivide(a1, a2, v44, v43, v45[0]);
      v27 = crossing_count(v44, a2, a3, v26);
      return crossing_count(v43, a2, a3, v28) + v27;
    }
  }

  f64 = a1[a2].f64;
  v30 = f64[1];
  v22 = 0;
  if (v11 <= v30)
  {
    if (v11 > 0.0 || v30 < 0.0)
    {
      return v22;
    }
  }

  else if (v11 < 0.0 || v30 > 0.0)
  {
    return v22;
  }

  if (v11 == 0.0 && v12 == 0.0 || v30 == 0.0 && *f64 == 0.0)
  {
    goto LABEL_21;
  }

  if (a2 == 1)
  {
    if ((v14 != v11 || v13 != v30) && (v14 != v30 || v13 != v11))
    {
      _CGHandleAssert("crossing_count", 170, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Paths/path-crossing.c", "(min.y == p[0].y && max.y == p[order].y) || (min.y == p[order].y && max.y == p[0].y)", "unexpected path order: min{%f,%f}, max{%f,%f}, p[%lu]{%f,%f}", a6, a7, a8, SLOBYTE(v16));
    }

    v31 = a1[1].f64[1];
    v32 = v12 * v31;
    v33 = a1[1].f64[0] * v11;
    if (v12 * v31 != v33)
    {
      if (v11 < 0.0 && v11 < v31 && v32 > v33)
      {
        return 1;
      }

      if (v32 >= v33 || v31 >= 0.0 || v11 <= v31)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }

LABEL_21:
    v22 = 0;
    *a3 = 1;
    return v22;
  }

  subdivide(a1, a2, v44, v43, 0.5);
  if (!a2)
  {
    return 1;
  }

  v35 = 0;
  v36 = 2;
  if ((a2 + 1) > 2)
  {
    v36 = a2 + 1;
  }

  v37 = v36 - 1;
  LOBYTE(v38) = 1;
  LOBYTE(v39) = 1;
  do
  {
    if (v39)
    {
      v34 = vceqq_f64(v44[v35], v44[v35 + 1]);
      v34.n128_u64[0] = vmovn_s64(v34);
      v39 = v34.n128_u32[0] & v34.n128_u32[1];
      if ((v38 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v39 = 0;
      if ((v38 & 1) == 0)
      {
LABEL_62:
        v38 = 0;
        goto LABEL_65;
      }
    }

    v34 = vceqq_f64(v43[v35], v43[v35 + 1]);
    v34.n128_u64[0] = vmovn_s64(v34);
    v38 = v34.n128_u32[0] & v34.n128_u32[1];
LABEL_65:
    ++v35;
  }

  while (v37 != v35);
  if ((v38 | v39))
  {
    return 1;
  }

  v34.n128_u64[0] = *&v44[0].f64[1];
  v40 = v44[a2].f64[1];
  if (v44[0].f64[1] <= 0.0 && v40 >= 0.0 || (v22 = 0, v44[0].f64[1] >= 0.0) && v40 <= 0.0)
  {
    v22 = crossing_count(v44, a2, a3, v34);
  }

  v34.n128_u64[0] = *&v43[0].f64[1];
  v41 = v43[a2].f64[1];
  if (v43[0].f64[1] <= 0.0 && v41 >= 0.0 || v43[0].f64[1] >= 0.0 && v41 <= 0.0)
  {
    return crossing_count(v43, a2, a3, v34) + v22;
  }

  return v22;
}

float64_t subdivide(float64x2_t *a1, uint64_t a2, float64x2_t *a3, float64x2_t *a4, double a5)
{
  *a3 = *a1;
  f64 = a3[1].f64;
  v6 = 1.0 - a5;
  if (a2 == 2)
  {
    a4[2] = a1[2];
    a3[1] = vmlaq_n_f64(vmulq_n_f64(a1[1], a5), *a1, v6);
    v7 = a1[1].f64[1];
    v8 = a1[2].f64[0] * a5 + v6 * a1[1].f64[0];
    v9 = &a3[1].f64[1];
    v10 = 5;
    v11 = 2;
  }

  else
  {
    a4[3] = a1[3];
    a3[1] = vmlaq_n_f64(vmulq_n_f64(a1[1], a5), *a1, v6);
    v12 = a1[2];
    v13 = vmlaq_n_f64(vmulq_n_f64(a1[3], a5), v12, v6);
    v14 = vmlaq_n_f64(vmulq_n_f64(v12, a5), a1[1], v6);
    a4[2] = v13;
    a3[2] = vmlaq_n_f64(vmulq_n_f64(v14, a5), a3[1], v6);
    f64 = a3[2].f64;
    v9 = &a3[2].f64[1];
    v8 = a4[2].f64[0] * a5 + v6 * v14.f64[0];
    v7 = v14.f64[1];
    v10 = 7;
    v11 = 3;
    a1 = a4;
  }

  v15 = a1[2].f64[1] * a5 + v6 * v7;
  a4[1].f64[0] = v8;
  a4[1].f64[1] = v15;
  v16 = v8 * a5 + v6 * *f64;
  a3[v11].f64[0] = v16;
  result = v15 * a5 + v6 * *v9;
  a3->f64[v10] = result;
  a4->f64[0] = v16;
  a4->f64[1] = result;
  return result;
}

__n128 CGFontFinderCreate(unint64_t a1, __n128 *a2)
{
  if (a2)
  {
    if (!a2->n128_u32[0])
    {
      v4 = malloc_type_calloc(1uLL, 0x38uLL, 0x1080040BF00B4C8uLL);
      v4->n128_u32[0] = 1;
      v4->n128_u64[1] = a1;
      v6 = *a2;
      result = a2[1];
      v4[3].n128_u64[0] = a2[2].n128_u64[0];
      v4[1] = v6;
      v4[2] = result;
    }
  }

  return result;
}

atomic_uint *CGFontFinderRetain(atomic_uint *result)
{
  if (result)
  {
    atomic_fetch_add_explicit(result, 1u, memory_order_relaxed);
  }

  return result;
}

void CGFontFinderRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = a1[6];
    if (v2)
    {
      v2(a1[1]);
    }

    free(a1);
  }
}

uint64_t CGFontFinderCopyURLForName(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 24)) != 0)
  {
    return v2(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t CGFontFinderCopyURLForPlatformFont(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 32)) != 0)
  {
    return v1(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t CGFontFinderCopyAllURLs(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 40)) != 0)
  {
    return v1(*(a1 + 8));
  }

  else
  {
    return 0;
  }
}

CFTypeRef CGFontFinderCreateFontWithName(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 24);
    if (v3 && (v4 = v3(*(a1 + 8))) != 0)
    {
      v5 = v4;
      FontsWithURL = CGFontCreateFontsWithURL(v4);
      if (FontsWithURL)
      {
        v7 = FontsWithURL;
        if (CFArrayGetCount(FontsWithURL) != 1)
        {
          Count = CFArrayGetCount(v7);
          _CGHandleAssert("CGFontFinderCreateFontWithName", 104, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Fonts/CGFontFinder.c", "CFArrayGetCount(fonts) == 1", "count = %ld", v11, v12, v13, Count);
        }

        CFRelease(v5);
        ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
        v2 = CFRetain(ValueAtIndex);
        v5 = v7;
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFTypeRef CGFontFinderCreateFontWithPlatformFont(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 32);
    if (v3 && (v4 = v3(*(a1 + 8))) != 0)
    {
      v5 = v4;
      FontsWithURL = CGFontCreateFontsWithURL(v4);
      if (FontsWithURL)
      {
        v7 = FontsWithURL;
        if (CFArrayGetCount(FontsWithURL) != 1)
        {
          Count = CFArrayGetCount(v7);
          _CGHandleAssert("CGFontFinderCreateFontWithPlatformFont", 134, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Fonts/CGFontFinder.c", "CFArrayGetCount(fonts) == 1", "count = %ld", v11, v12, v13, Count);
        }

        CFRelease(v5);
        ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
        v2 = CFRetain(ValueAtIndex);
        v5 = v7;
      }

      else
      {
        v2 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void CGFontFinderApplyFunction(uint64_t a1, uint64_t (*a2)(const void *, uint64_t), uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        v6 = v4(*(a1 + 8));
        if (v6)
        {
          v7 = v6;
          Count = CFArrayGetCount(v6);
          if (Count)
          {
            v9 = Count;
            for (i = 0; i != v9; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
              FontsWithURL = CGFontCreateFontsWithURL(ValueAtIndex);
              if (FontsWithURL)
              {
                v13 = FontsWithURL;
                if (CFArrayGetCount(FontsWithURL) != 1)
                {
                  v16 = CFArrayGetCount(v13);
                  _CGHandleAssert("CGFontFinderApplyFunction", 165, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Fonts/CGFontFinder.c", "CFArrayGetCount(fonts) == 1", "count = %ld", v17, v18, v19, v16);
                }

                v14 = CFArrayGetValueAtIndex(v13, 0);
                v15 = a2(v14, a3);
                CFRelease(v13);
                if (v15)
                {
                  break;
                }
              }
            }
          }

          CFRelease(v7);
        }
      }
    }
  }
}

uint64_t CGFontFinderGetDefault()
{
  v0 = pthread_mutex_lock(&default_font_finder_mutex);
  v8 = default_font_finder;
  if (!default_font_finder)
  {
    VTable = CGFontGetVTable(v0, v1, v2, v3, v4, v5, v6, v7);
    v8 = (*VTable)();
  }

  pthread_mutex_unlock(&default_font_finder_mutex);
  return v8;
}

uint64_t CGFontFinderSetDefault(atomic_uint *a1)
{
  pthread_mutex_lock(&default_font_finder_mutex);
  if (a1)
  {
    atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
  }

  CGFontFinderRelease(default_font_finder);
  default_font_finder = a1;

  return pthread_mutex_unlock(&default_font_finder_mutex);
}

void doLoadVTable()
{
  didLoadVTable = 1;
  v0 = &links;
  v1 = 6;
  while (strcmp("cg_jbig2_library_link_symbol", *v0))
  {
    v0 += 2;
    if (!--v1)
    {
      goto LABEL_7;
    }
  }

  v2 = v0[1];
  if (v2)
  {
    jbig2_vtable = v2();
    return;
  }

LABEL_7:

  pdf_error("no JBIG2 library available.");
}

CFDateRef CGPDFStringCopyDate(CFDateRef string)
{
  if (string)
  {
    v1 = string;
    if (*(string + 3))
    {
      decrypt_string(string);
      v2 = v1 + 80;
      if (*(v1 + 3))
      {
        decrypt_string(v1);
      }
    }

    else
    {
      v2 = string + 80;
    }

    v3 = *(v1 + 9);
    v16 = v3;
    v17 = v2;
    if (v3 < 4)
    {
      return 0;
    }

    at = 0.0;
    if (*v2 == 68 && *(v1 + 81) == 58)
    {
      v16 = v3 - 2;
      v17 = v1 + 82;
    }

    v15 = 0;
    if (!get_number(&v17, &v16, 4uLL, &v15))
    {
      return 0;
    }

    v4 = v15;
    if (!get_number(&v17, &v16, 2uLL, &v15))
    {
      v10 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v5 = 1;
      v6 = 1;
      goto LABEL_23;
    }

    v5 = v15;
    if (!get_number(&v17, &v16, 2uLL, &v15))
    {
      v10 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v6 = 1;
      goto LABEL_23;
    }

    v6 = v15;
    if (get_number(&v17, &v16, 2uLL, &v15))
    {
      v7 = v15;
      if (get_number(&v17, &v16, 2uLL, &v15))
      {
        v8 = v15;
        if (get_number(&v17, &v16, 2uLL, &v15))
        {
          v9 = v15;
          v10 = parse_time_zone(v17, v16);
          goto LABEL_23;
        }

        v10 = 0;
        goto LABEL_22;
      }

      v10 = 0;
    }

    else
    {
      v10 = 0;
      v7 = 0;
    }

    v8 = 0;
LABEL_22:
    v9 = 0;
LABEL_23:
    v11 = *MEMORY[0x1E695E480];
    string = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
    if (!string)
    {
      return string;
    }

    v12 = string;
    if (v10)
    {
      CFCalendarSetTimeZone(string, v10);
    }

    else
    {
      v10 = CFTimeZoneCreateWithTimeIntervalFromGMT(v11, 0.0);
      CFCalendarSetTimeZone(v12, v10);
      if (!v10)
      {
        goto LABEL_28;
      }
    }

    CFRelease(v10);
LABEL_28:
    v13 = CFCalendarComposeAbsoluteTime(v12, &at, "yMdHms", v4, v5, v6, v7, v8, v9);
    CFRelease(v12);
    if (v13)
    {
      return CFDateCreate(v11, at);
    }

    return 0;
  }

  return string;
}

uint64_t get_number(char **a1, unint64_t *a2, unint64_t a3, int *a4)
{
  if (*a2 < a3)
  {
    return 0;
  }

  v9 = 0;
  v10 = *a1;
  v11 = MEMORY[0x1E69E9830];
  v12 = a3;
  while (1)
  {
    v14 = *v10++;
    v13 = v14;
    if ((v14 & 0x80000000) != 0)
    {
      break;
    }

    if ((*(v11 + 4 * v13 + 60) & 0x400) == 0)
    {
      return 0;
    }

LABEL_8:
    v9 = v13 + 10 * v9 - 48;
    if (!--v12)
    {
      v15 = *a2;
      v16 = *a1;
      *a4 = v9;
      *a1 = &v16[a3];
      *a2 = v15 - a3;
      return 1;
    }
  }

  if (__maskrune_l(v13, 0x400uLL, 0))
  {
    goto LABEL_8;
  }

  return 0;
}

CFTimeZoneRef parse_time_zone(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *a1;
  v2 = v3;
  v12 = (a1 + 1);
  if (v3 == 90)
  {
    v4 = 0;
  }

  else if (v2 == 45)
  {
    v4 = -1;
  }

  else
  {
    if (v2 != 43)
    {
      return 0;
    }

    v4 = 1;
  }

  v10 = 0;
  v11 = a2 - 1;
  if (!get_number(&v12, &v11, 2uLL, &v10))
  {
    return 0;
  }

  if (v10 > 0x17)
  {
    return 0;
  }

  if (!v11--)
  {
    return 0;
  }

  v6 = *v12++;
  if (v6 != 39)
  {
    return 0;
  }

  v7 = 3600 * v4 * v10;
  if (get_number(&v12, &v11, 2uLL, &v10))
  {
    if (v10 <= 0x3B && v11 && *v12 == 39)
    {
      v7 += 60 * v4 * v10;
      goto LABEL_17;
    }

    return 0;
  }

LABEL_17:
  v8 = *MEMORY[0x1E695E480];

  return CFTimeZoneCreateWithTimeIntervalFromGMT(v8, v7);
}

void lzw_filter_finalize(void ***a1)
{
  if (a1)
  {
    lzw_decoder_release(*a1);

    free(a1);
  }
}

uint64_t lzw_filter_refill(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  if (*a1 && (*(v8 + 9) & 1) == 0)
  {
    v9 = 0;
    v13 = v8 + 9252;
    v14 = v8 + 1060;
    v15 = *(v8 + 17464);
    while (1)
    {
      if (v15)
      {
        if (v15 >= a3 - v9)
        {
          v16 = a3 - v9;
        }

        else
        {
          v16 = v15;
        }

        memcpy((a2 + v9), (*(v8 + 17480) + *(v8 + 17472) - v15), v16);
        v9 += v16;
        v15 = *(v8 + 17464) - v16;
        *(v8 + 17464) = v15;
      }

      if (v9 == a3)
      {
        return a3;
      }

      if (*(v8 + 8))
      {
        return v9;
      }

      if (v15)
      {
        _CGHandleAssert("lzw_decode", 155, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Filters/LZW/lzw-decode.c", "d->pending == 0", "pending (%lu) is nonzero for decoder %p", a6, a7, a8, v15);
      }

      code = lzw_read_code(v8, a2, a3, a4, a5, a6, a7, a8);
      if (code == 256)
      {
        *(v8 + 1056) = 9;
        *(v8 + 17444) = 258;
        *(v8 + 17448) = 0;
        v22 = lzw_read_code(v8, a2, a3, a4, a5, a6, a7, a8);
        if (v22 != 257)
        {
          v21 = v22;
          *(v8 + 17448) = v22;
          *(v8 + 17446) = v22;
          v20 = v8;
LABEL_21:
          lzw_push(v20, v21);
          goto LABEL_22;
        }
      }

      else
      {
        v18 = code;
        if (code != 257)
        {
          v19 = *(v8 + 17444);
          if (v19 < 0x1000)
          {
            v23 = code;
            if (code >= v19)
            {
              v23 = *(v8 + 17446);
              lzw_push(v8, *(v8 + 17448));
            }

            while (v23 >= 0x100)
            {
              if (v23 >= 0x1000)
              {
                _CGHandleAssert("lzw_decode", 202, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Filters/LZW/lzw-decode.c", "code < LZW_TABLE_SIZE", "lzw code (%u) is outside of table bounds (%u)", a6, a7, a8, v23);
              }

              lzw_push(v8, *(v13 + 2 * v23));
              v23 = *(v14 + 2 * v23);
              if (*(v8 + 17464) >> 1 >= 0x801uLL)
              {
                pdf_error("LZW decode: invalid chain sequence.");
                *(v8 + 9) = 1;
                goto LABEL_22;
              }
            }

            lzw_push(v8, v23);
            *(v8 + 17448) = v23;
            v24 = *(v8 + 17446);
            if (v24 >= 0x1000)
            {
              _CGHandleAssert("lzw_decode", 219, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Filters/LZW/lzw-decode.c", "d->oldCode < LZW_TABLE_SIZE", "lzw table building: old code (%u) is outside of table bounds (%u)", a6, a7, a8, *(v8 + 17446));
            }

            *(v14 + 2 * *(v8 + 17444)) = v24;
            *(v13 + 2 * *(v8 + 17444)) = *(v8 + 17448);
            *(v8 + 17446) = v18;
            v25 = *(v8 + 17444) + 1;
            *(v8 + 17444) = v25;
            v26 = *(v8 + 1056);
            if (v26 <= 11)
            {
              v27 = (~(-1 << v26) - *(v8 + 10));
              if (v27 < v25)
              {
                if (v27 + 1 != v25)
                {
                  _CGHandleAssert("lzw_decode", 234, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/PDF/Filters/LZW/lzw-decode.c", "d->freeCode == maxCode + 1", "sanity check failed that the free code(%u) should be maxCode(%u) +1", a6, a7, a8, v25);
                }

                *(v8 + 1056) = v26 + 1;
              }
            }

            goto LABEL_22;
          }

          v20 = v8;
          v21 = v18;
          goto LABEL_21;
        }
      }

      *(v8 + 8) = 1;
LABEL_22:
      v15 = *(v8 + 17464);
      if (!v15)
      {
        return v9;
      }
    }
  }

  return 0;
}

const void **lzw_filter_rewind(const void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1)
  {
    v9 = **a1;
  }

  else
  {
    v9 = 0;
  }

  CGPDFSourceRewind(v9, a2, a3, a4, a5, a6, a7, a8);
  lzw_decoder_release(*a1);
  result = lzw_decoder_create(v9, *(a1 + 8));
  *a1 = result;
  return result;
}

BOOL resample_float16_select(uint64_t a1, uint64_t a2, int a3)
{
  if (resample_float16_select_predicate[0] != -1)
  {
    dispatch_once(resample_float16_select_predicate, &__block_literal_global_20863);
  }

  if (a1 && a2)
  {
    if (a3 == 3)
    {
      if (a2 == 1)
      {
        return 0;
      }

      if (a2 == 4)
      {
        *(a1 + 16) = resample_float16_select_float16_v_3cpp_ap[0];
      }

      else
      {
        *(a1 + 16) = resample_float16_select_float16_v_Ncpp_ap[0];
      }

      *(a1 + 112) = 2 * a2 - 2;
      *(a1 + 114) = 2;
      switch(a2)
      {
        case 2:
          *(a1 + 24) = resample_float16_select_float16_h_1cpp_ap[0];
          break;
        case 4:
          *(a1 + 24) = resample_float16_select_float16_h_3cpp_ap[0];
          break;
        case 5:
          *(a1 + 24) = resample_float16_select_float16_h_4cpp_ap[0];
          break;
        default:
          *(a1 + 24) = resample_float16_select_float16_h_Ncpp_ap[0];
          break;
      }
    }

    else
    {
      if (a3 && a2 != 1)
      {
        if (a3 == 1)
        {
          if (a2 == 4)
          {
            *(a1 + 16) = resample_float16_select_float16_v_3cpp_af[0];
          }

          else
          {
            *(a1 + 16) = resample_float16_select_float16_v_Ncpp_af[0];
          }
        }

        else
        {
          if (a3 != 2)
          {
            return 0;
          }

          if (a2 == 4)
          {
            *(a1 + 16) = resample_float16_select_float16_v_3cpp_al[0];
          }

          else
          {
            *(a1 + 16) = resample_float16_select_float16_v_Ncpp_al[0];
          }
        }
      }

      else
      {
        *(a1 + 16) = resample_float16_v_Ncpp;
      }

      *(a1 + 112) = 2 * a2;
      *(a1 + 114) = 0;
      switch(a2)
      {
        case 1:
          *(a1 + 24) = resample_float16_select_float16_h_1cpp;
          break;
        case 3:
          *(a1 + 24) = resample_float16_select_float16_h_3cpp[0];
          break;
        case 4:
          *(a1 + 24) = resample_float16_select_float16_h_4cpp[0];
          break;
        default:
          *(a1 + 24) = resample_float16_select_float16_h_Ncpp[0];
          break;
      }
    }

    return (use_template_resampling_code() & 1) == 0 || resample_select_template(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

_DWORD *resample_float16_h_Ncpp(_DWORD *result, unsigned int a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = a3;
    v10 = *a6;
    v11 = *a7;
    v12 = 4 * a2 + 8;
    v13 = a8;
    do
    {
      if (a4)
      {
        v14 = *(a5 + 8 * v8);
        v15 = a4;
        v16 = result;
        do
        {
          if (v9)
          {
            v17 = 0;
            v18 = v16[1];
            v19 = v10 + v8 * v11 + 2 * *v16 * v9;
            do
            {
              _H0 = 0;
              if (v18)
              {
                v21 = v19;
                v22 = v16 + 2;
                v23 = v18;
                do
                {
                  v24 = *v22++;
                  _S1 = v24;
                  __asm { FCVT            H1, S1 }

                  _H2 = *v21;
                  __asm
                  {
                    FCVT            S2, H2
                    FCVT            S1, H1
                    FCVT            S0, H0
                  }

                  _S0 = _S0 + (_S2 * _S1);
                  __asm { FCVT            H0, S0 }

                  v21 += v9;
                  --v23;
                }

                while (v23);
              }

              *v14++ = _H0;
              ++v17;
              v19 += 2;
            }

            while (v17 != v9);
          }

          v16 = (v16 + v12);
          --v15;
        }

        while (v15);
      }

      ++v8;
    }

    while (v8 != v13);
  }

  return result;
}

int *resample_float16_h_4cpp(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = *a7;
    v11 = 4 * a2 + 8;
    do
    {
      if (a4)
      {
        v12 = *(a5 + 8 * v8);
        v13 = a4;
        v14 = result;
        do
        {
          v15 = v14[1];
          if (v15)
          {
            v16 = v14 + 2;
            v17 = (v9 + v8 * v10 + 8 * *v14);
            v18 = 0;
            do
            {
              v19 = *v16++;
              _S1 = v19;
              __asm
              {
                FCVT            H1, S1
                FCVT            S1, H1
              }

              v26 = *v17++;
              v18 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(v18), vcvtq_f32_f16(v26), _S1));
              --v15;
            }

            while (v15);
          }

          else
          {
            v18 = 0;
          }

          *v12++ = v18;
          v14 = (v14 + v11);
          --v13;
        }

        while (v13);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

int *resample_float16_h_3cpp(int *result, unsigned int a2, double a3, double a4, double a5, double _D3, uint64_t a7, int a8, uint64_t a9, uint64_t *a10, int *a11, int a12)
{
  if (a12 >= 1)
  {
    v12 = 0;
    v13 = *a10;
    v14 = *a11;
    v15 = 4 * a2 + 8;
    do
    {
      if (a8)
      {
        v16 = *(a9 + 8 * v12);
        v17 = a8;
        v18 = result;
        do
        {
          v19 = v18[1];
          if (v19)
          {
            v20 = v18 + 2;
            v21 = v13 + v12 * v14 + 6 * *v18;
            v22 = 0;
            _H0 = 0;
            do
            {
              v24 = *v20++;
              _S2 = v24;
              __asm { FCVT            H2, S2 }

              LOWORD(_D3) = *v21;
              __asm
              {
                FCVT            S3, H3
                FCVT            S2, H2
                FCVT            S0, H0
              }

              _S0 = _S0 + (*&_D3 * _S2);
              __asm { FCVT            H0, S0 }

              v33 = vcvtq_f32_f16(v22);
              LODWORD(_D3) = *(v21 + 2);
              *&_D3 = vcvtq_f32_f16(*&_D3).u64[0];
              *v33.f32 = vmla_n_f32(*v33.f32, *&_D3, _S2);
              v22 = vcvt_f16_f32(v33);
              v21 += 6;
              --v19;
            }

            while (v19);
          }

          else
          {
            v22.i32[0] = 0;
            _H0 = 0;
          }

          *v16 = _H0;
          *(v16 + 2) = v22.i32[0];
          v16 += 6;
          v18 = (v18 + v15);
          --v17;
        }

        while (v17);
      }

      ++v12;
    }

    while (v12 != a12);
  }

  return result;
}

int *resample_float16_h_1cpp(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = *a7;
    v11 = 4 * a2 + 8;
    while (!a4)
    {
LABEL_14:
      if (++v8 == a8)
      {
        return result;
      }
    }

    v12 = *(a5 + 8 * v8);
    v13 = a4;
    v14 = result;
    while (1)
    {
      v15 = v14[1];
      v16 = v14 + 2;
      _S0 = v14[2];
      v18 = v9 + v8 * v10 - 2 + 2 * *v14;
      __asm { FCVT            H1, S0 }

      if (v15 >= 4)
      {
        break;
      }

      _H0 = 0;
      if (v15)
      {
        goto LABEL_11;
      }

LABEL_13:
      *v12++ = _H0;
      v14 = (v14 + v11);
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    v24 = v14 + 6;
    _H0 = 0;
    do
    {
      v26 = v15;
      v27 = *(v18 + 8);
      v18 += 8;
      _H2 = v27;
      _H3 = *(v18 - 6);
      v15 -= 4;
      _S4 = *(v24 - 3);
      _S5 = *(v24 - 2);
      __asm
      {
        FCVT            H4, S4
        FCVT            S3, H3
        FCVT            S1, H1
        FCVT            S0, H0
      }

      _S0 = _S0 + (_S3 * _S1);
      LOWORD(_S1) = *(v18 - 4);
      __asm
      {
        FCVT            H0, S0
        FCVT            H3, S5
      }

      LOWORD(_S5) = *(v18 - 2);
      __asm
      {
        FCVT            S1, H1
        FCVT            S4, H4
        FCVT            S0, H0
      }

      _S0 = _S0 + (_S1 * _S4);
      __asm { FCVT            H0, S0 }

      _S1 = *(v24 - 1);
      _S4 = *v24;
      __asm
      {
        FCVT            H1, S1
        FCVT            S5, H5
        FCVT            S3, H3
        FCVT            S0, H0
      }

      _S0 = _S0 + (_S5 * _S3);
      __asm
      {
        FCVT            H0, S0
        FCVT            S2, H2
        FCVT            S1, H1
        FCVT            S0, H0
      }

      _S0 = _S0 + (_S2 * _S1);
      __asm
      {
        FCVT            H0, S0
        FCVT            H1, S4
      }

      v24 += 4;
    }

    while (v26 > 7);
    v16 = v24 - 4;
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_11:
    v50 = (v18 + 2);
    v51 = v16 + 1;
    do
    {
      v52 = *v50++;
      _H2 = v52;
      __asm
      {
        FCVT            S2, H2
        FCVT            S1, H1
        FCVT            S0, H0
      }

      _S0 = _S0 + (_S2 * _S1);
      __asm { FCVT            H0, S0 }

      v58 = *v51++;
      _S1 = v58;
      __asm { FCVT            H1, S1 }

      --v15;
    }

    while (v15);
    goto LABEL_13;
  }

  return result;
}

uint64_t resample_float16_v_Ncpp_al(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = *a5 - 2;
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3 * a4;
  v10 = v9 & 0xFFFFFFFC;
  if (v10 < 1)
  {
    LODWORD(v11) = 0;
    LOWORD(v12) = 0;
    v14 = a3;
  }

  else
  {
    v11 = 0;
    LOWORD(v12) = 0;
    LOWORD(v13) = COERCE_UNSIGNED_INT(1.0);
    v14 = a3;
    do
    {
      v15 = 0;
      if (v7)
      {
        v16 = a6;
        v17 = v8;
        LODWORD(result) = v7;
        do
        {
          v18 = *v17++;
          _S3 = v18;
          __asm { FCVT            H3, S3 }

          v24 = *v16++;
          __asm { FCVT            S3, H3 }

          v15 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(v15), vcvtq_f32_f16(*(v24 + 2 * v11)), _S3));
          result = (result - 1);
        }

        while (result);
      }

      if (v12 < *v15.i16)
      {
        v12 = *v15.i16;
      }

      if ((v11 | 1) == v14)
      {
        __asm { FCMP            H0, #0 }

        LOWORD(v27) = 0;
        if (!_NF)
        {
          v27 = _H0;
        }

        if (_H0 > v13)
        {
          LOWORD(v27) = COERCE_UNSIGNED_INT(1.0);
        }

        v28 = v14 + a3;
        v14 += a3;
        LOWORD(v12) = 0;
      }

      else
      {
        v27 = *v15.i16;
        v28 = v14;
      }

      *(v6 + 2) = v27;
      v29 = *&v15.i16[1];
      if (v12 < *&v15.i16[1])
      {
        v12 = *&v15.i16[1];
      }

      if ((v11 | 2) == v28)
      {
        __asm { FCMP            H0, #0 }

        LOWORD(v29) = 0;
        if (!_NF)
        {
          v29 = _H0;
        }

        if (_H0 > v13)
        {
          LOWORD(v29) = COERCE_UNSIGNED_INT(1.0);
        }

        v28 = v14 + a3;
        v14 += a3;
        LOWORD(v12) = 0;
      }

      *(v6 + 4) = v29;
      v31 = *&v15.i16[2];
      if (v12 < *&v15.i16[2])
      {
        v12 = *&v15.i16[2];
      }

      if ((v11 | 3) == v28)
      {
        __asm { FCMP            H0, #0 }

        LOWORD(v31) = 0;
        if (!_NF)
        {
          v31 = _H0;
        }

        if (_H0 > v13)
        {
          LOWORD(v31) = COERCE_UNSIGNED_INT(1.0);
        }

        v28 = v14 + a3;
        v14 += a3;
        LOWORD(v12) = 0;
      }

      *(v6 + 6) = v31;
      v15.i16[0] = v15.i16[3];
      if (v12 < *&v15.i16[3])
      {
        v12 = *&v15.i16[3];
      }

      v11 += 4;
      if (v11 == v28)
      {
        __asm { FCMP            H0, #0 }

        v15.i16[0] = 0;
        if (!_NF)
        {
          *v15.i16 = _H0;
        }

        if (_H0 > v13)
        {
          v15.i16[0] = COERCE_UNSIGNED_INT(1.0);
        }

        v14 += a3;
        LOWORD(v12) = 0;
      }

      *(v6 + 8) = v15.i16[0];
      v6 += 8;
    }

    while (v11 < v10);
  }

  if (v11 < v9)
  {
    v11 = v11;
    do
    {
      LOWORD(_H2) = 0;
      if (v7)
      {
        v35 = a6;
        v36 = v8;
        v37 = v7;
        do
        {
          v38 = *v36++;
          _S3 = v38;
          __asm { FCVT            H3, S3 }

          v40 = *v35++;
          result = v40;
          _H4 = *(v40 + 2 * v11);
          __asm
          {
            FCVT            S4, H4
            FCVT            S3, H3
            FCVT            S2, H2
          }

          _S2 = _S2 + (_S4 * _S3);
          __asm { FCVT            H2, S2 }

          --v37;
        }

        while (v37);
      }

      if (v12 < _H2)
      {
        v12 = _H2;
      }

      if (++v11 == v14)
      {
        __asm { FCMP            H0, #0 }

        LOWORD(_H2) = 0;
        if (!_NF)
        {
          _H2 = _H0;
        }

        if (_H0 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
        {
          LOWORD(_H2) = COERCE_UNSIGNED_INT(1.0);
        }

        v14 += a3;
        LOWORD(v12) = 0;
      }

      *(v6 + 2) = _H2;
      v6 += 2;
    }

    while (v11 != v9);
  }

  return result;
}

uint64_t resample_float16_v_3cpp_al(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = *a5;
    do
    {
      v10 = 0;
      if (v8)
      {
        v11 = a6;
        v12 = (result + 8);
        v13 = v8;
        do
        {
          v14 = *v12++;
          _S3 = v14;
          __asm { FCVT            H3, S3 }

          v20 = *v11++;
          __asm { FCVT            S3, H3 }

          v10 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(v10), vcvtq_f32_f16(*(v20 + 2 * v7)), _S3));
          --v13;
        }

        while (v13);
      }

      *v9 = v10.i32[0];
      *(v9 + 4) = v10.i16[2];
      __asm { FCMP            H3, #0 }

      if (_NF)
      {
        v23 = COERCE_SHORT_FLOAT(0);
      }

      else
      {
        v23 = _H3;
      }

      if (_H3 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        LOWORD(v23) = COERCE_UNSIGNED_INT(1.0);
      }

      *(v9 + 6) = v23;
      v9 += 8;
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t resample_float16_v_Ncpp_af(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = (*a5 - 2);
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3;
  v10 = 2 - a3;
  v11 = a3 * a4;
  v12 = v11 & 0xFFFFFFFC;
  if (v12 < 1)
  {
    LODWORD(v13) = 0;
    LOWORD(v14) = 0;
    v16 = a3;
  }

  else
  {
    v13 = 0;
    LOWORD(v14) = 0;
    LOWORD(v15) = COERCE_UNSIGNED_INT(1.0);
    v16 = a3;
    do
    {
      v17 = 0;
      if (v7)
      {
        v18 = a6;
        v19 = v8;
        v20 = v7;
        do
        {
          v21 = *v19++;
          _S3 = v21;
          __asm { FCVT            H3, S3 }

          v27 = *v18++;
          __asm { FCVT            S3, H3 }

          v17 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(v17), vcvtq_f32_f16(*(v27 + 2 * v13)), _S3));
          --v20;
        }

        while (v20);
      }

      if (v14 >= *v17.i16)
      {
        v29 = v14;
      }

      else
      {
        v29 = *v17.i16;
      }

      if ((v13 | 1) == v16)
      {
        __asm { FCMP            H3, #0 }

        LOWORD(v31) = 0;
        if (!_NF)
        {
          v31 = _H3;
        }

        if (_H3 > v15)
        {
          LOWORD(v31) = COERCE_UNSIGNED_INT(1.0);
        }

        v6[v10] = v31;
        result = v16 + v9;
        v16 += v9;
        LOWORD(v29) = 0;
      }

      else
      {
        result = v16;
      }

      v6[1] = *v17.i16;
      if (v29 < *&v17.i16[1])
      {
        v29 = *&v17.i16[1];
      }

      if ((v13 | 2) == result)
      {
        __asm { FCMP            H3, #0 }

        LOWORD(v33) = 0;
        if (!_NF)
        {
          v33 = _H3;
        }

        if (_H3 <= v15)
        {
          v34 = v33;
        }

        else
        {
          LOWORD(v34) = COERCE_UNSIGNED_INT(1.0);
        }

        v6[v10 + 1] = v34;
        result = v16 + v9;
        v16 += v9;
        LOWORD(v29) = 0;
      }

      v6[2] = *&v17.i16[1];
      if (v29 < *&v17.i16[2])
      {
        v29 = *&v17.i16[2];
      }

      if ((v13 | 3) == result)
      {
        __asm { FCMP            H3, #0 }

        LOWORD(v36) = 0;
        if (!_NF)
        {
          v36 = _H3;
        }

        if (_H3 <= v15)
        {
          v37 = v36;
        }

        else
        {
          LOWORD(v37) = COERCE_UNSIGNED_INT(1.0);
        }

        v6[v10 + 2] = v37;
        result = v16 + v9;
        v16 += v9;
        LOWORD(v29) = 0;
      }

      v6[3] = *&v17.i16[2];
      if (v29 >= *&v17.i16[3])
      {
        v14 = v29;
      }

      else
      {
        v14 = *&v17.i16[3];
      }

      v13 += 4;
      if (v13 == result)
      {
        __asm { FCMP            H0, #0 }

        LOWORD(v39) = 0;
        if (!_NF)
        {
          v39 = _H0;
        }

        if (_H0 <= v15)
        {
          v40 = v39;
        }

        else
        {
          LOWORD(v40) = COERCE_UNSIGNED_INT(1.0);
        }

        v6[v10 + 3] = v40;
        v16 += v9;
        LOWORD(v14) = 0;
      }

      v6[4] = *&v17.i16[3];
      v6 += 4;
    }

    while (v13 < v12);
  }

  if (v13 < v11)
  {
    v13 = v13;
    do
    {
      LOWORD(_H2) = 0;
      if (v7)
      {
        v42 = a6;
        v43 = v8;
        LODWORD(result) = v7;
        do
        {
          v44 = *v43++;
          _S3 = v44;
          __asm { FCVT            H3, S3 }

          v46 = *v42++;
          _H4 = *(v46 + 2 * v13);
          __asm
          {
            FCVT            S4, H4
            FCVT            S3, H3
            FCVT            S2, H2
          }

          _S2 = _S2 + (_S4 * _S3);
          __asm { FCVT            H2, S2 }

          result = (result - 1);
        }

        while (result);
      }

      if (v14 < _H2)
      {
        v14 = _H2;
      }

      if (++v13 == v16)
      {
        __asm { FCMP            H0, #0 }

        LOWORD(v53) = 0;
        if (!_NF)
        {
          v53 = _H0;
        }

        if (_H0 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
        {
          v54 = v53;
        }

        else
        {
          LOWORD(v54) = COERCE_UNSIGNED_INT(1.0);
        }

        v6[v10] = v54;
        v16 += v9;
        LOWORD(v14) = 0;
      }

      v6[1] = _H2;
      ++v6;
    }

    while (v13 != v11);
  }

  return result;
}

uint64_t resample_float16_v_3cpp_af(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = *a5;
    do
    {
      v10 = 0;
      if (v8)
      {
        v11 = a6;
        v12 = (result + 8);
        v13 = v8;
        do
        {
          v14 = *v12++;
          _S3 = v14;
          __asm { FCVT            H3, S3 }

          v20 = *v11++;
          __asm { FCVT            S3, H3 }

          v10 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(v10), vcvtq_f32_f16(*(v20 + 2 * v7)), _S3));
          --v13;
        }

        while (v13);
      }

      __asm { FCMP            H3, #0 }

      if (_NF)
      {
        v23 = COERCE_SHORT_FLOAT(0);
      }

      else
      {
        v23 = _H3;
      }

      if (_H3 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        v24 = v23;
      }

      else
      {
        LOWORD(v24) = COERCE_UNSIGNED_INT(1.0);
      }

      *v9 = v24;
      *(v9 + 2) = v10.i16[1];
      *(v9 + 4) = v10.i32[1];
      v9 += 8;
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t resample_float16_v_Ncpp(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, float16x4_t **a5, uint64_t *a6)
{
  v6 = *a5;
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3 * a4;
  v10 = v9 & 0xFFFFFFFC;
  if (v10 < 1)
  {
    LODWORD(i) = 0;
  }

  else
  {
    for (i = 0; i < v10; i += 4)
    {
      v12 = 0;
      if (v7)
      {
        v13 = a6;
        v14 = v8;
        v15 = v7;
        do
        {
          v16 = *v14++;
          _S1 = v16;
          __asm { FCVT            H1, S1 }

          v22 = *v13++;
          result = v22;
          __asm { FCVT            S1, H1 }

          v12 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(v12), vcvtq_f32_f16(*(v22 + 2 * i)), _S1));
          --v15;
        }

        while (v15);
      }

      *v6++ = v12;
    }
  }

  if (i < v9)
  {
    i = i;
    do
    {
      _H0 = 0;
      if (v7)
      {
        v25 = a6;
        v26 = v8;
        v27 = v7;
        do
        {
          v28 = *v26++;
          _S1 = v28;
          __asm { FCVT            H1, S1 }

          v30 = *v25++;
          _H2 = *(v30 + 2 * i);
          __asm
          {
            FCVT            S2, H2
            FCVT            S1, H1
            FCVT            S0, H0
          }

          _S0 = _S0 + (_S2 * _S1);
          __asm { FCVT            H0, S0 }

          --v27;
        }

        while (v27);
      }

      v6->i16[0] = _H0;
      v6 = (v6 + 2);
      ++i;
    }

    while (i != v9);
  }

  return result;
}

int *resample_float16_h_Ncpp_ap(int *result, unsigned int a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = a3;
    v10 = a3 - 1;
    v11 = *a6;
    v12 = a6[1];
    v13 = *a7;
    v14 = a7[1];
    v15 = 2 * a3 - 2;
    do
    {
      if (a4)
      {
        v16 = *(a5 + 8 * v8);
        v17 = a4;
        v18 = result;
        do
        {
          v19 = v18[1];
          v20 = *v18;
          v21 = v18 + 2;
          if (v9 >= 2)
          {
            v22 = 0;
            do
            {
              _H0 = 0;
              if (v19)
              {
                v24 = (v11 + v8 * v13 + 2 * v20 * v10);
                v25 = v18 + 2;
                v26 = v19;
                do
                {
                  v27 = *v25++;
                  _S1 = v27;
                  __asm { FCVT            H1, S1 }

                  _H2 = *v24;
                  __asm
                  {
                    FCVT            S2, H2
                    FCVT            S1, H1
                    FCVT            S0, H0
                  }

                  _S0 = _S0 + (_S2 * _S1);
                  __asm { FCVT            H0, S0 }

                  v24 = (v24 + v15);
                  --v26;
                }

                while (v26);
              }

              *v16++ = _H0;
              ++v22;
            }

            while (v22 != v10);
          }

          if (v19)
          {
            v38 = (v12 + v8 * v14 + 2 * v20);
            _H0 = 0;
            do
            {
              v40 = *v21++;
              _S1 = v40;
              __asm { FCVT            H1, S1 }

              LOWORD(v40) = *v38++;
              _H2 = v40;
              __asm
              {
                FCVT            S2, H2
                FCVT            S1, H1
                FCVT            S0, H0
              }

              _S0 = _S0 + (_S2 * _S1);
              __asm { FCVT            H0, S0 }

              --v19;
            }

            while (v19);
          }

          else
          {
            _H0 = 0;
          }

          *v16++ = _H0;
          v18 += a2 + 2;
          --v17;
        }

        while (v17);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

int *resample_float16_h_4cpp_ap(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = *a7;
    v12 = a7[1];
    v13 = 4 * a2 + 8;
    v14 = a8;
    do
    {
      if (a4)
      {
        v15 = *(a5 + 8 * v8);
        v16 = a4;
        v17 = result;
        do
        {
          v18 = v17[1];
          if (v18)
          {
            v19 = v17 + 2;
            v20 = *v17;
            v21 = (v9 + v8 * v11 + 8 * v20);
            v22 = (v10 + v8 * v12 + 2 * v20);
            v23 = 0;
            _H0 = 0;
            do
            {
              v25 = *v19++;
              _S2 = v25;
              __asm
              {
                FCVT            H2, S2
                FCVT            S2, H2
              }

              LOWORD(v25) = *v22++;
              _H3 = v25;
              v33 = *v21++;
              v23 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(v23), vcvtq_f32_f16(v33), _S2));
              __asm
              {
                FCVT            S3, H3
                FCVT            S0, H0
              }

              _S0 = _S0 + (_S3 * _S2);
              __asm { FCVT            H0, S0 }

              --v18;
            }

            while (v18);
          }

          else
          {
            v23 = 0;
            _H0 = 0;
          }

          *v15 = v23;
          v15[1].i16[0] = _H0;
          v15 = (v15 + 10);
          v17 = (v17 + v13);
          --v16;
        }

        while (v16);
      }

      ++v8;
    }

    while (v8 != v14);
  }

  return result;
}

int *resample_float16_h_3cpp_ap(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = *a7;
    v12 = a7[1];
    v13 = 4 * a2 + 8;
    v14 = a8;
    do
    {
      if (a4)
      {
        v15 = *(a5 + 8 * v8);
        v16 = a4;
        v17 = result;
        do
        {
          v18 = v17[1];
          if (v18)
          {
            v19 = v17 + 2;
            v20 = *v17;
            v21 = v9 + v8 * v11 + 6 * v20;
            v22 = (v10 + v8 * v12 + 2 * v20);
            v23 = 0;
            do
            {
              v24 = *v19++;
              _S1 = v24;
              __asm { FCVT            H1, S1 }

              v30.i32[0] = *v21;
              __asm { FCVT            S1, H1 }

              v30.i16[2] = *(v21 + 4);
              v30.i16[3] = *v22++;
              v23 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(v23), vcvtq_f32_f16(v30), _S1));
              v21 += 6;
              --v18;
            }

            while (v18);
          }

          else
          {
            v23 = 0;
          }

          *v15++ = v23;
          v17 = (v17 + v13);
          --v16;
        }

        while (v16);
      }

      ++v8;
    }

    while (v8 != v14);
  }

  return result;
}

_DWORD *resample_float16_h_1cpp_ap(_DWORD *result, unsigned int a2, double a3, double a4, float16x4_t a5, float16x4_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t *a10, int *a11, int a12)
{
  if (a12 >= 1)
  {
    v12 = 0;
    v13 = *a10;
    v14 = a10[1];
    v15 = *a11;
    v16 = a11[1];
    v17 = 4 * a2 + 8;
    v18 = a12;
    while (!a8)
    {
LABEL_14:
      if (++v12 == v18)
      {
        return result;
      }
    }

    v19 = *(a9 + 8 * v12);
    v20 = a8;
    v21 = result;
    while (1)
    {
      v22 = v21[1];
      v23 = *v21 - 1;
      v24 = v21 + 2;
      _S0 = v21[2];
      __asm { FCVT            H1, S0 }

      if (v22 >= 2)
      {
        break;
      }

      v44 = v13 + v12 * v15 + 2 * v23;
      v32 = 0;
      v43 = v14 + v12 * v16 + 2 * v23;
      if (v22)
      {
        goto LABEL_11;
      }

LABEL_13:
      *v19++ = v32.i32[0];
      v21 = (v21 + v17);
      if (!--v20)
      {
        goto LABEL_14;
      }
    }

    v31 = 2 * v23;
    v32 = 0;
    v33 = v13 + v12 * v15;
    v34 = v14 + v12 * v16;
    do
    {
      v35 = v22;
      a5.i16[0] = *(v33 + v31 + 2);
      v22 -= 2;
      __asm { FCVT            S1, H1 }

      v37 = vcvtq_f32_f16(v32);
      a6.i16[0] = *(v33 + v31 + 4);
      v38 = v24[2];
      v24 += 2;
      _S4 = v38;
      _S5 = *(v24 - 1);
      __asm
      {
        FCVT            H5, S5
        FCVT            S5, H5
      }

      a5.i16[1] = *(v34 + v31 + 2);
      a5 = vcvtq_f32_f16(a5).u64[0];
      *v37.f32 = vmla_n_f32(*v37.f32, a5, _S1);
      a6.i16[1] = *(v34 + v31 + 4);
      v42 = vcvtq_f32_f16(vcvt_f16_f32(v37));
      *v42.f32 = vmla_n_f32(*v42.f32, *&vcvtq_f32_f16(a6), _S5);
      v32 = vcvt_f16_f32(v42);
      __asm { FCVT            H1, S4 }

      v34 += 4;
      v33 += 4;
    }

    while (v35 > 3);
    v43 = v34 + 2 * v23;
    v44 = v33 + 2 * v23;
    if (!v22)
    {
      goto LABEL_13;
    }

LABEL_11:
    v45 = (v43 + 2);
    v46 = (v44 + 2);
    v47 = v24 + 1;
    do
    {
      v48 = *v46++;
      a5.i16[0] = v48;
      __asm { FCVT            S1, H1 }

      v50 = vcvtq_f32_f16(v32);
      a5.i16[1] = *v45++;
      a5 = vcvtq_f32_f16(a5).u64[0];
      *v50.f32 = vmla_n_f32(*v50.f32, a5, _S1);
      v32 = vcvt_f16_f32(v50);
      v51 = *v47++;
      _S1 = v51;
      __asm { FCVT            H1, S1 }

      --v22;
    }

    while (v22);
    goto LABEL_13;
  }

  return result;
}

uint64_t resample_float16_v_Ncpp_ap(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = *a5 - 2;
  v7 = a5[1] - 2;
  v8 = *(result + 4);
  v9 = (result + 8);
  v10 = a3 * a4;
  v11 = v10 & 0xFFFFFFFC;
  if (v11 < 1)
  {
    LODWORD(v12) = 0;
    LOWORD(v13) = 0;
    v15 = a3;
  }

  else
  {
    v12 = 0;
    LOWORD(v13) = 0;
    LOWORD(v14) = COERCE_UNSIGNED_INT(1.0);
    v15 = a3;
    do
    {
      v16 = 0;
      if (v8)
      {
        v17 = a6;
        v18 = v9;
        v19 = v8;
        do
        {
          v20 = *v18++;
          _S3 = v20;
          __asm { FCVT            H3, S3 }

          v26 = *v17++;
          __asm { FCVT            S3, H3 }

          v16 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(v16), vcvtq_f32_f16(*(v26 + 2 * v12)), _S3));
          --v19;
        }

        while (v19);
      }

      if (v13 < *v16.i16)
      {
        v13 = *v16.i16;
      }

      if ((v12 | 1) == v15)
      {
        __asm { FCMP            H1, #0 }

        LOWORD(v29) = 0;
        if (!_NF)
        {
          v29 = _H1;
        }

        if (_H1 <= v14)
        {
          v30 = v29;
        }

        else
        {
          LOWORD(v30) = COERCE_UNSIGNED_INT(1.0);
        }

        *(v7 + 2) = v30;
        v7 += 2;
        v31 = v15 + a3;
        v15 += a3;
        LOWORD(v13) = 0;
      }

      else
      {
        v31 = v15;
        *(v6 + 2) = v16.i16[0];
        v6 += 2;
      }

      if (v13 < *&v16.i16[1])
      {
        v13 = *&v16.i16[1];
      }

      if ((v12 | 2) == v31)
      {
        __asm { FCMP            H1, #0 }

        LOWORD(v33) = 0;
        if (!_NF)
        {
          v33 = _H1;
        }

        if (_H1 <= v14)
        {
          v34 = v33;
        }

        else
        {
          LOWORD(v34) = COERCE_UNSIGNED_INT(1.0);
        }

        *(v7 + 2) = v34;
        v7 += 2;
        v31 = v15 + a3;
        v15 += a3;
        LOWORD(v13) = 0;
      }

      else
      {
        *(v6 + 2) = v16.i16[1];
        v6 += 2;
      }

      if (v13 < *&v16.i16[2])
      {
        v13 = *&v16.i16[2];
      }

      result = v12 | 3;
      if ((v12 | 3) == v31)
      {
        __asm { FCMP            H1, #0 }

        LOWORD(v36) = 0;
        if (!_NF)
        {
          v36 = _H1;
        }

        if (_H1 <= v14)
        {
          v37 = v36;
        }

        else
        {
          LOWORD(v37) = COERCE_UNSIGNED_INT(1.0);
        }

        *(v7 + 2) = v37;
        v7 += 2;
        v31 = v15 + a3;
        v15 += a3;
        LOWORD(v13) = 0;
      }

      else
      {
        *(v6 + 2) = v16.i16[2];
        v6 += 2;
      }

      if (v13 < *&v16.i16[3])
      {
        v13 = *&v16.i16[3];
      }

      v12 += 4;
      if (v12 == v31)
      {
        __asm { FCMP            H1, #0 }

        LOWORD(v39) = 0;
        if (!_NF)
        {
          v39 = _H1;
        }

        if (_H1 <= v14)
        {
          v40 = v39;
        }

        else
        {
          LOWORD(v40) = COERCE_UNSIGNED_INT(1.0);
        }

        *(v7 + 2) = v40;
        v7 += 2;
        v15 += a3;
        LOWORD(v13) = 0;
      }

      else
      {
        *(v6 + 2) = v16.i16[3];
        v6 += 2;
      }
    }

    while (v12 < v11);
  }

  if (v12 < v10)
  {
    v12 = v12;
    do
    {
      LOWORD(_H2) = 0;
      if (v8)
      {
        v42 = a6;
        v43 = v9;
        LODWORD(result) = v8;
        do
        {
          v44 = *v43++;
          _S3 = v44;
          __asm { FCVT            H3, S3 }

          v46 = *v42++;
          _H4 = *(v46 + 2 * v12);
          __asm
          {
            FCVT            S4, H4
            FCVT            S3, H3
            FCVT            S2, H2
          }

          _S2 = _S2 + (_S4 * _S3);
          __asm { FCVT            H2, S2 }

          result = (result - 1);
        }

        while (result);
      }

      if (v13 < _H2)
      {
        v13 = _H2;
      }

      if (++v12 == v15)
      {
        __asm { FCMP            H1, #0 }

        LOWORD(v53) = 0;
        if (!_NF)
        {
          v53 = _H1;
        }

        if (_H1 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
        {
          v54 = v53;
        }

        else
        {
          LOWORD(v54) = COERCE_UNSIGNED_INT(1.0);
        }

        *(v7 + 2) = v54;
        v7 += 2;
        v15 += a3;
        LOWORD(v13) = 0;
      }

      else
      {
        *(v6 + 2) = _H2;
        v6 += 2;
      }
    }

    while (v12 != v10);
  }

  return result;
}

uint64_t resample_float16_v_3cpp_ap(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = (result + 8);
    v11 = *a5;
    v10 = a5[1];
    do
    {
      v12 = 0;
      if (v8)
      {
        v13 = a6;
        v14 = v9;
        v15 = v8;
        do
        {
          v16 = *v14++;
          _S3 = v16;
          __asm { FCVT            H3, S3 }

          v22 = *v13++;
          result = v22;
          __asm { FCVT            S3, H3 }

          v12 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(v12), vcvtq_f32_f16(*(v22 + 2 * v7)), _S3));
          --v15;
        }

        while (v15);
      }

      *v11 = v12.i32[0];
      *(v11 + 4) = v12.i16[2];
      v11 += 6;
      __asm { FCMP            H3, #0 }

      if (_NF)
      {
        v25 = COERCE_SHORT_FLOAT(0);
      }

      else
      {
        v25 = _H3;
      }

      if (_H3 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
      {
        LOWORD(v25) = COERCE_UNSIGNED_INT(1.0);
      }

      *v10++ = v25;
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

const void *__resample_float16_select_block_invoke()
{
  v1 = 1;
  result = get_BOOLean_property("USE_FP16_EXPANDED_FUNCTIONS", copy_local_domain_value, &v1);
  if (v1)
  {
    resample_float16_select_float16_v_3cpp_ap[0] = resample_float16_v_3cpp_ap_expanded;
    resample_float16_select_float16_v_Ncpp_ap[0] = resample_float16_v_Ncpp_ap_expanded;
    resample_float16_select_float16_h_1cpp_ap[0] = resample_float16_h_1cpp_ap_expanded;
    resample_float16_select_float16_h_3cpp_ap[0] = resample_float16_h_3cpp_ap_expanded;
    resample_float16_select_float16_h_4cpp_ap[0] = resample_float16_h_4cpp_ap_expanded;
    resample_float16_select_float16_h_Ncpp_ap[0] = resample_float16_h_Ncpp_ap_expanded;
    resample_float16_select_float16_v_3cpp_af[0] = resample_float16_v_3cpp_af_expanded;
    resample_float16_select_float16_v_Ncpp_af[0] = resample_float16_v_Ncpp_af_expanded;
    resample_float16_select_float16_v_3cpp_al[0] = resample_float16_v_3cpp_al_expanded;
    resample_float16_select_float16_v_Ncpp_al[0] = resample_float16_v_Ncpp_al_expanded;
    resample_float16_select_float16_h_1cpp = resample_float16_h_1cpp_expanded;
    resample_float16_select_float16_h_3cpp[0] = resample_float16_h_3cpp_expanded;
    resample_float16_select_float16_h_4cpp[0] = resample_float16_h_4cpp_expanded;
    resample_float16_select_float16_h_Ncpp[0] = resample_float16_h_Ncpp_expanded;
  }

  return result;
}

_DWORD *resample_float16_h_Ncpp_expanded(_DWORD *result, unsigned int a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = a3;
    v10 = *a6;
    v11 = *a7;
    v12 = 4 * a2 + 8;
    v13 = a8;
    do
    {
      if (a4)
      {
        v14 = *(a5 + 8 * v8);
        v15 = a4;
        v16 = result;
        do
        {
          if (v9)
          {
            v17 = 0;
            v18 = v16[1];
            v19 = v10 + v8 * v11 + 2 * *v16 * v9;
            do
            {
              if (v18)
              {
                _S0 = 0.0;
                v21 = v19;
                v22 = (v16 + 2);
                v23 = v18;
                do
                {
                  v24 = *v22++;
                  _H2 = *v21;
                  __asm { FCVT            S2, H2 }

                  _S0 = _S0 + (_S2 * v24);
                  v21 += v9;
                  --v23;
                }

                while (v23);
                __asm { FCVT            H0, S0 }
              }

              else
              {
                _H0 = 0;
              }

              *v14++ = _H0;
              ++v17;
              v19 += 2;
            }

            while (v17 != v9);
          }

          v16 = (v16 + v12);
          --v15;
        }

        while (v15);
      }

      ++v8;
    }

    while (v8 != v13);
  }

  return result;
}

int *resample_float16_h_4cpp_expanded(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, void *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = 4 * a2 + 8;
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
          v16 = (v10 + 8 * *v13);
          v17 = 0uLL;
          if (v14 >= 2)
          {
            v18 = 0uLL;
            do
            {
              v19 = v14;
              v20 = *v15;
              v15 += 2;
              v21 = v20;
              v22 = *v16->i8;
              v16 += 2;
              v18 = vaddq_f32(v18, vmulq_lane_f32(vcvt_hight_f32_f16(v22), v21, 1));
              v17 = vaddq_f32(v17, vmulq_n_f32(vcvtq_f32_f16(*v22.i8), v21.f32[0]));
              v14 -= 2;
            }

            while (v19 > 3);
            v17 = vaddq_f32(v18, v17);
          }

          if (v14)
          {
            v17 = vaddq_f32(v17, vmulq_n_f32(vcvtq_f32_f16(*v16), *v15));
          }

          *v11++ = vcvt_f16_f32(v17);
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

int *resample_float16_h_3cpp_expanded(int *result, unsigned int a2, float32x4_t a3, double a4, double a5, double _D3, uint64_t a7, int a8, uint64_t a9, uint64_t *a10, int *a11, int a12)
{
  if (a12 >= 1)
  {
    v12 = 0;
    v13 = *a10;
    v14 = *a11;
    v15 = 4 * a2 + 8;
    do
    {
      if (a8)
      {
        v16 = *(a9 + 8 * v12);
        v17 = a8;
        v18 = result;
        do
        {
          v19 = v18[1];
          if (v19)
          {
            v20 = (v18 + 2);
            v21 = v13 + v12 * v14 + 6 * *v18;
            a3.i64[0] = 0;
            _S1 = 0.0;
            do
            {
              v23 = *v20++;
              LOWORD(_D3) = *v21;
              __asm { FCVT            S3, H3 }

              _S1 = _S1 + (*&_D3 * v23);
              LODWORD(_D3) = *(v21 + 2);
              *&_D3 = vcvtq_f32_f16(*&_D3).u64[0];
              v21 += 6;
              *a3.f32 = vmla_n_f32(*a3.f32, *&_D3, v23);
              --v19;
            }

            while (v19);
            __asm { FCVT            H1, S1 }

            v29 = vcvt_f16_f32(a3).u32[0];
          }

          else
          {
            v29 = 0;
            _H1 = 0;
          }

          *v16 = _H1;
          *(v16 + 2) = v29;
          v16 += 6;
          v18 = (v18 + v15);
          --v17;
        }

        while (v17);
      }

      ++v12;
    }

    while (v12 != a12);
  }

  return result;
}

float *resample_float16_h_1cpp_expanded(float *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = *a7;
    v11 = 4 * a2 + 8;
    while (!a4)
    {
LABEL_14:
      if (++v8 == a8)
      {
        return result;
      }
    }

    v12 = *(a5 + 8 * v8);
    v13 = a4;
    v14 = result;
    while (1)
    {
      v15 = *(v14 + 1);
      v16 = (v14 + 2);
      v17 = v14[2];
      v18 = v9 + v8 * v10 - 2 + 2 * *v14;
      if (v15 >= 4)
      {
        break;
      }

      _S1 = 0.0;
      if (v15)
      {
        goto LABEL_11;
      }

LABEL_13:
      __asm { FCVT            H0, S1 }

      *v12++ = _H0;
      v14 = (v14 + v11);
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    v19 = v14 + 6;
    _S1 = 0.0;
    do
    {
      v21 = v15;
      v22 = *(v18 + 8);
      v18 += 8;
      _H2 = v22;
      _H3 = *(v18 - 6);
      __asm { FCVT            S3, H3 }

      v15 -= 4;
      _H4 = *(v18 - 4);
      __asm { FCVT            S4, H4 }

      v32 = _S1 + (_S3 * v17);
      _H5 = *(v18 - 2);
      __asm
      {
        FCVT            S5, H5
        FCVT            S1, H2
      }

      v36 = (v32 + (_S4 * *(v19 - 3))) + (_S5 * *(v19 - 2));
      v17 = *v19;
      _S1 = v36 + (_S1 * *(v19 - 1));
      v19 += 4;
    }

    while (v21 > 7);
    v16 = (v19 - 4);
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_11:
    v37 = (v18 + 2);
    v38 = (v16 + 1);
    do
    {
      v39 = *v37++;
      _H2 = v39;
      __asm { FCVT            S2, H2 }

      _S1 = _S1 + (_S2 * v17);
      v42 = *v38++;
      v17 = v42;
      --v15;
    }

    while (v15);
    goto LABEL_13;
  }

  return result;
}

uint64_t resample_float16_v_Ncpp_al_expanded(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = *a5 - 2;
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3;
  v10 = a3 * a4;
  v11 = v10 & 0xFFFFFFFC;
  if (v11 < 1)
  {
    LODWORD(v12) = 0;
    v17.i32[0] = 0;
    v18 = a3;
  }

  else
  {
    v12 = 0;
    __asm { FMOV            V2.4S, #1.0 }

    v17.i32[0] = 0;
    v18 = a3;
    do
    {
      v19 = 0uLL;
      if (v7)
      {
        v20 = a6;
        v21 = v8;
        v22 = v7;
        do
        {
          v23 = *v21++;
          v24 = v23;
          v25 = *v20++;
          v19 = vmlaq_n_f32(v19, vcvtq_f32_f16(*(v25 + 2 * v12)), v24);
          --v22;
        }

        while (v22);
      }

      v26 = v12 | 1;
      v27 = v12 | 2;
      v28 = v12 | 3;
      v12 += 4;
      v29 = v6 + 8;
      if (v17.f32[0] < v19.f32[0])
      {
        v17.f32[0] = v19.f32[0];
      }

      _ZF = v26 == v18;
      v31 = _ZF;
      if (_ZF)
      {
        v32 = v9;
      }

      else
      {
        v32 = 0;
      }

      v33 = (v32 + v18);
      if (_ZF)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = v17.f32[0];
      }

      if (v34 < v19.f32[1])
      {
        v34 = v19.f32[1];
      }

      v35 = v27 == v33;
      result = v27 == v33;
      if (v35)
      {
        v36 = v9;
      }

      else
      {
        v36 = 0;
      }

      v37 = (v36 + v33);
      if (v35)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = v34;
      }

      if (v38 < v19.f32[2])
      {
        v38 = v19.f32[2];
      }

      v39 = v28 == v37;
      v40 = v28 == v37;
      if (v39)
      {
        v41 = v9;
      }

      else
      {
        v41 = 0;
      }

      v42 = (v41 + v37);
      if (v39)
      {
        v43 = 0.0;
      }

      else
      {
        v43 = v38;
      }

      if (v43 < v19.f32[3])
      {
        v43 = v19.f32[3];
      }

      v44 = v12 == v42;
      v45 = v12 == v42;
      v17.f32[1] = v34;
      v17.i64[1] = __PAIR64__(LODWORD(v43), LODWORD(v38));
      v46 = vbslq_s8(vcgeq_f32(v17, _Q2), _Q2, v17);
      if (v12 == v42)
      {
        v47 = v9;
      }

      else
      {
        v47 = 0;
      }

      v18 = v47 + v42;
      if (v44)
      {
        v17.f32[0] = 0.0;
      }

      else
      {
        v17.f32[0] = v43;
      }

      v48.i16[0] = v31;
      v48.i16[1] = result;
      v48.i16[2] = v40;
      v48.i16[3] = v45;
      *(v6 + 2) = vcvt_f16_f32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v48), 0x1FuLL)), v46, v19));
      v6 += 8;
    }

    while (v12 < v11);
    v6 = v29;
  }

  if (v12 < v10)
  {
    v12 = v12;
    do
    {
      _S3 = 0.0;
      if (v7)
      {
        v50 = a6;
        v51 = v8;
        v52 = v7;
        do
        {
          v53 = *v51++;
          v54 = v53;
          v55 = *v50++;
          result = v55;
          _H5 = *(v55 + 2 * v12);
          __asm { FCVT            S5, H5 }

          _S3 = _S3 + (_S5 * v54);
          --v52;
        }

        while (v52);
      }

      if (v17.f32[0] < _S3)
      {
        v17.f32[0] = _S3;
      }

      ++v12;
      if (v17.f32[0] < 1.0)
      {
        v58 = v17.f32[0];
      }

      else
      {
        v58 = 1.0;
      }

      v59 = v12 == v18;
      if (v12 == v18)
      {
        v60 = v9;
      }

      else
      {
        v60 = 0;
      }

      v18 += v60;
      if (v59)
      {
        v17.f32[0] = 0.0;
        _S3 = v58;
      }

      __asm { FCVT            H3, S3 }

      *(v6 + 2) = _H3;
      v6 += 2;
    }

    while (v12 != v10);
  }

  return result;
}

float *resample_float16_v_3cpp_al_expanded(float *result, uint64_t a2, unsigned __int8 a3, int a4, float16x8_t **a5, uint64_t *a6)
{
  v6 = *a5;
  v7 = *(result + 1);
  v8 = result + 2;
  v9 = a3 * a4;
  v10 = v9 & 0xFFFFFFF0;
  if (v10 < 1)
  {
    LODWORD(i) = 0;
  }

  else
  {
    for (i = 0; i < v10; i += 16)
    {
      if (v7)
      {
        v12 = 0uLL;
        v13 = a6;
        v14 = 0uLL;
        v15 = 0uLL;
        v16 = 0uLL;
        result = v8;
        v17 = v7;
        do
        {
          v18 = *v13++;
          v19 = *(v18 + 2 * i);
          v20 = vld1q_dup_f32(result++);
          v16 = vaddq_f32(v16, vmulq_f32(v20, vcvt_hight_f32_f16(v19)));
          v15 = vaddq_f32(v15, vmulq_f32(v20, vcvtq_f32_f16(*v19.i8)));
          v21 = *(v18 + 2 * (i | 8));
          v14 = vaddq_f32(v14, vmulq_f32(v20, vcvt_hight_f32_f16(v21)));
          v12 = vaddq_f32(v12, vmulq_f32(v20, vcvtq_f32_f16(*v21.i8)));
          --v17;
        }

        while (v17);
      }

      else
      {
        v15 = 0uLL;
        v16 = 0uLL;
        v12 = 0uLL;
        v14 = 0uLL;
      }

      v22 = vmaxnmq_f32(v15, vrev64q_s32(v15));
      v23 = vmaxnmq_f32(v16, vrev64q_s32(v16));
      v16.i32[3] = vminnmq_f32(vmaxnmq_f32(v23, vextq_s8(*&v23, *&v23, 8uLL)), xmmword_18439CF20).i32[3];
      v15.i32[3] = vminnmq_f32(vmaxnmq_f32(v22, vextq_s8(*&v22, *&v22, 8uLL)), xmmword_18439CF20).i32[3];
      v24 = vmaxnmq_f32(v12, vrev64q_s32(v12));
      v25 = vmaxnmq_f32(v14, vrev64q_s32(v14));
      v14.i32[3] = vminnmq_f32(vmaxnmq_f32(v25, vextq_s8(*&v25, *&v25, 8uLL)), xmmword_18439CF20).i32[3];
      v12.i32[3] = vminnmq_f32(vmaxnmq_f32(v24, vextq_s8(*&v24, *&v24, 8uLL)), xmmword_18439CF20).i32[3];
      *v6 = vcvt_hight_f16_f32(vcvt_f16_f32(v15), v16);
      v6[1] = vcvt_hight_f16_f32(vcvt_f16_f32(v12), v14);
      v6 += 2;
    }
  }

  v26 = v9 & 0xFFFFFFFC;
  if (i < v26)
  {
    v27 = i;
    do
    {
      v28 = 0uLL;
      if (v7)
      {
        v29 = a6;
        v30 = v8;
        v31 = v7;
        do
        {
          v32 = *v30++;
          v33 = v32;
          v34 = *v29++;
          v28 = vaddq_f32(v28, vmulq_n_f32(vcvtq_f32_f16(*(v34 + 2 * v27)), v33));
          --v31;
        }

        while (v31);
      }

      v35 = vmaxnmq_f32(v28, vrev64q_s32(v28));
      v28.i32[3] = vminnmq_f32(vmaxnmq_f32(v35, vextq_s8(*&v35, *&v35, 8uLL)), xmmword_18439CF20).i32[3];
      *v6->i8 = vcvt_f16_f32(v28);
      v6 = (v6 + 8);
      v27 += 4;
    }

    while (v27 < v26);
  }

  return result;
}

uint64_t resample_float16_v_Ncpp_af_expanded(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = (*a5 - 2);
  v7 = *(result + 4);
  v8 = (result + 8);
  v9 = a3;
  v10 = 2 - a3;
  v11 = a3 * a4;
  v12 = v11 & 0xFFFFFFFC;
  if (v12 < 1)
  {
    LODWORD(v13) = 0;
    _S0 = 0.0;
    v15 = a3;
  }

  else
  {
    v13 = 0;
    _S0 = 0.0;
    v15 = a3;
    do
    {
      _Q2 = 0uLL;
      if (v7)
      {
        v17 = a6;
        v18 = v8;
        v19 = v7;
        do
        {
          v20 = *v18++;
          v21 = v20;
          v22 = *v17++;
          _Q2 = vmlaq_n_f32(_Q2, vcvtq_f32_f16(*(v22 + 2 * v13)), v21);
          --v19;
        }

        while (v19);
      }

      if (_S0 >= _Q2.f32[0])
      {
        _S3 = _S0;
      }

      else
      {
        _S3 = _Q2.f32[0];
      }

      if ((v13 | 1) == v15)
      {
        if (_S3 < 1.0)
        {
          _S0 = _S3;
        }

        else
        {
          _S0 = 1.0;
        }

        __asm { FCVT            H0, S0 }

        v6[v10] = _H0;
        result = v15 + v9;
        _S3 = 0.0;
        v15 += v9;
      }

      else
      {
        result = v15;
      }

      __asm { FCVT            H0, S2 }

      v6[1] = _H0;
      _S0 = _Q2.i32[1];
      if (_S3 < _Q2.f32[1])
      {
        _S3 = _Q2.f32[1];
      }

      if ((v13 | 2) == result)
      {
        if (_S3 >= 1.0)
        {
          _S3 = 1.0;
        }

        __asm { FCVT            H3, S3 }

        v6[v10 + 1] = _H3;
        result = v15 + v9;
        _S3 = 0.0;
        v15 += v9;
      }

      __asm { FCVT            H0, S0 }

      v6[2] = _H0;
      _S0 = _Q2.i32[2];
      if (_S3 < _Q2.f32[2])
      {
        _S3 = _Q2.f32[2];
      }

      if ((v13 | 3) == result)
      {
        if (_S3 >= 1.0)
        {
          _S3 = 1.0;
        }

        __asm { FCVT            H3, S3 }

        v6[v10 + 2] = _H3;
        result = v15 + v9;
        _S3 = 0.0;
        v15 += v9;
      }

      __asm { FCVT            H0, S0 }

      v6[3] = _H0;
      _Q2.i32[0] = _Q2.i32[3];
      if (_S3 >= _Q2.f32[3])
      {
        _S0 = _S3;
      }

      else
      {
        _S0 = _Q2.f32[3];
      }

      v13 += 4;
      if (v13 == result)
      {
        if (_S0 >= 1.0)
        {
          _S0 = 1.0;
        }

        __asm { FCVT            H0, S0 }

        v6[v10 + 3] = _H0;
        v15 += v9;
        _S0 = 0.0;
      }

      __asm { FCVT            H2, S2 }

      v6[4] = _H2;
      v6 += 4;
    }

    while (v13 < v12);
  }

  if (v13 < v11)
  {
    v13 = v13;
    do
    {
      _S2 = 0.0;
      if (v7)
      {
        v40 = a6;
        v41 = v8;
        LODWORD(result) = v7;
        do
        {
          v42 = *v41++;
          v43 = v42;
          v44 = *v40++;
          _H4 = *(v44 + 2 * v13);
          __asm { FCVT            S4, H4 }

          _S2 = _S2 + (_S4 * v43);
          result = (result - 1);
        }

        while (result);
      }

      if (_S0 < _S2)
      {
        _S0 = _S2;
      }

      if (++v13 == v15)
      {
        if (_S0 >= 1.0)
        {
          _S0 = 1.0;
        }

        __asm { FCVT            H0, S0 }

        v6[v10] = _H0;
        v15 += v9;
        _S0 = 0.0;
      }

      __asm { FCVT            H2, S2 }

      v6[1] = _H2;
      ++v6;
    }

    while (v13 != v11);
  }

  return result;
}

uint64_t resample_float16_v_3cpp_af_expanded(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, float16x4_t **a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = *a5;
    do
    {
      v10 = 0uLL;
      if (v8)
      {
        v11 = a6;
        v12 = (result + 8);
        v13 = v8;
        do
        {
          v14 = *v12++;
          v15 = v14;
          v16 = *v11++;
          v10 = vmlaq_n_f32(v10, vcvtq_f32_f16(*(v16 + 2 * v7)), v15);
          --v13;
        }

        while (v13);
      }

      v17 = v10.f32[1];
      if (v10.f32[1] <= v10.f32[0])
      {
        v17 = v10.f32[0];
      }

      if (v10.f32[2] > v17)
      {
        v17 = v10.f32[2];
      }

      if (v10.f32[3] > v17)
      {
        v17 = v10.f32[3];
      }

      if (v17 >= 1.0)
      {
        v17 = 1.0;
      }

      v10.f32[0] = v17;
      *v9++ = vcvt_f16_f32(v10);
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

int *resample_float16_h_Ncpp_ap_expanded(int *result, unsigned int a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = a3;
    v10 = a3 - 1;
    v11 = *a6;
    v12 = a6[1];
    v13 = *a7;
    v14 = a7[1];
    v15 = 2 * a3 - 2;
    do
    {
      if (a4)
      {
        v16 = *(a5 + 8 * v8);
        v17 = a4;
        v18 = result;
        do
        {
          v19 = v18[1];
          v20 = *v18;
          v21 = (v18 + 2);
          if (v9 >= 2)
          {
            v22 = 0;
            do
            {
              if (v19)
              {
                _S0 = 0.0;
                v24 = (v11 + v8 * v13 + 2 * v20 * v10);
                v25 = (v18 + 2);
                v26 = v19;
                do
                {
                  v27 = *v25++;
                  _H2 = *v24;
                  __asm { FCVT            S2, H2 }

                  _S0 = _S0 + (_S2 * v27);
                  v24 = (v24 + v15);
                  --v26;
                }

                while (v26);
                __asm { FCVT            H0, S0 }
              }

              else
              {
                _H0 = 0;
              }

              *v16++ = _H0;
              ++v22;
            }

            while (v22 != v10);
          }

          if (v19)
          {
            v35 = (v12 + v8 * v14 + 2 * v20);
            _S0 = 0.0;
            do
            {
              v37 = *v21++;
              v38 = v37;
              LOWORD(v37) = *v35++;
              _H2 = LOWORD(v37);
              __asm { FCVT            S2, H2 }

              _S0 = _S0 + (_S2 * v38);
              --v19;
            }

            while (v19);
            __asm { FCVT            H0, S0 }
          }

          else
          {
            _H0 = 0;
          }

          *v16++ = _H0;
          v18 += a2 + 2;
          --v17;
        }

        while (v17);
      }

      ++v8;
    }

    while (v8 != a8);
  }

  return result;
}

int *resample_float16_h_4cpp_ap_expanded(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = *a7;
    v12 = a7[1];
    v13 = 4 * a2 + 8;
    v14 = a8;
    do
    {
      if (a4)
      {
        v15 = *(a5 + 8 * v8);
        v16 = a4;
        v17 = result;
        do
        {
          v18 = v17[1];
          if (v18)
          {
            v19 = (v17 + 2);
            v20 = *v17;
            v21 = (v9 + v8 * v11 + 8 * v20);
            v22 = (v10 + v8 * v12 + 2 * v20);
            v23 = 0uLL;
            _S0 = 0.0;
            do
            {
              v25 = *v19++;
              v26 = v25;
              v27 = *v21++;
              v28 = vcvtq_f32_f16(v27);
              v27.i16[0] = *v22++;
              _H4 = v27.i16[0];
              __asm { FCVT            S4, H4 }

              v23 = vmlaq_n_f32(v23, v28, v26);
              _S0 = _S0 + (_S4 * v26);
              --v18;
            }

            while (v18);
            v35 = vcvt_f16_f32(v23);
            __asm { FCVT            H0, S0 }
          }

          else
          {
            v35 = 0;
            _H0 = 0;
          }

          *v15 = v35;
          v15[1].i16[0] = _H0;
          v15 = (v15 + 10);
          v17 = (v17 + v13);
          --v16;
        }

        while (v16);
      }

      ++v8;
    }

    while (v8 != v14);
  }

  return result;
}

int *resample_float16_h_3cpp_ap_expanded(int *result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = *a7;
    v12 = a7[1];
    v13 = 4 * a2 + 8;
    v14 = a8;
    do
    {
      if (a4)
      {
        v15 = *(a5 + 8 * v8);
        v16 = a4;
        v17 = result;
        do
        {
          v18 = v17[1];
          if (v18)
          {
            v19 = (v17 + 2);
            v20 = *v17;
            v21 = v9 + v8 * v11 + 6 * v20;
            v22 = (v10 + v8 * v12 + 2 * v20);
            v23 = 0uLL;
            do
            {
              v24 = *v19++;
              v25.i32[0] = *v21;
              v25.i16[2] = *(v21 + 4);
              v25.i16[3] = *v22++;
              v23 = vmlaq_n_f32(v23, vcvtq_f32_f16(v25), v24);
              v21 += 6;
              --v18;
            }

            while (v18);
            v26 = vcvt_f16_f32(v23);
          }

          else
          {
            v26 = 0;
          }

          *v15++ = v26;
          v17 = (v17 + v13);
          --v16;
        }

        while (v16);
      }

      ++v8;
    }

    while (v8 != v14);
  }

  return result;
}

uint64_t resample_float16_h_1cpp_ap_expanded(uint64_t result, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t *a6, int *a7, int a8)
{
  if (a8 >= 1)
  {
    v8 = 0;
    v9 = *a6;
    v10 = a6[1];
    v11 = *a7;
    v12 = a7[1];
    v13 = 4 * a2 + 8;
    v14 = a8;
    while (!a4)
    {
LABEL_14:
      if (++v8 == v14)
      {
        return result;
      }
    }

    v15 = *(a5 + 8 * v8);
    v16 = a4;
    v17 = result;
    while (1)
    {
      v18 = *(v17 + 4);
      v19 = *v17 - 1;
      v20 = v17 + 8;
      v21 = *(v17 + 8);
      if (v18 >= 2)
      {
        break;
      }

      v44 = v9 + v8 * v11 + 2 * v19;
      _S2 = 0.0;
      _S1 = 0.0;
      v43 = v10 + v8 * v12 + 2 * v19;
      if (v18)
      {
        goto LABEL_11;
      }

LABEL_13:
      __asm { FCVT            H0, S2 }

      *v15 = _H0;
      __asm { FCVT            H0, S1 }

      v15[1] = _H0;
      v15 += 2;
      v17 += v13;
      if (!--v16)
      {
        goto LABEL_14;
      }
    }

    v22 = 2 * v19;
    _S1 = 0.0;
    v24 = v9 + v8 * v11;
    v25 = v10 + v8 * v12;
    _S2 = 0.0;
    do
    {
      v27 = v18;
      _H3 = *(v24 + v22 + 2);
      __asm { FCVT            S3, H3 }

      _H4 = *(v25 + v22 + 2);
      __asm { FCVT            S4, H4 }

      v18 -= 2;
      v36 = _S2 + (_S3 * v21);
      LOWORD(_S3) = *(v24 + v22 + 4);
      __asm { FCVT            S3, H3 }

      v38 = _S1 + (_S4 * v21);
      v39 = *(v20 + 8);
      v20 += 8;
      v21 = v39;
      v40 = *(v20 - 4);
      _H5 = *(v25 + v22 + 4);
      __asm { FCVT            S5, H5 }

      _S2 = v36 + (_S3 * v40);
      _S1 = v38 + (_S5 * v40);
      v25 += 4;
      v24 += 4;
    }

    while (v27 > 3);
    v43 = v25 + 2 * v19;
    v44 = v24 + 2 * v19;
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_11:
    v45 = (v43 + 2);
    v46 = (v44 + 2);
    v47 = (v20 + 4);
    do
    {
      v48 = *v46++;
      _H3 = v48;
      __asm { FCVT            S3, H3 }

      v51 = *v45++;
      _H4 = v51;
      __asm { FCVT            S4, H4 }

      _S2 = _S2 + (_S3 * v21);
      _S1 = _S1 + (_S4 * v21);
      v54 = *v47++;
      v21 = v54;
      --v18;
    }

    while (v18);
    goto LABEL_13;
  }

  return result;
}

uint64_t resample_float16_v_Ncpp_ap_expanded(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, void *a5, uint64_t *a6)
{
  v6 = *a5 - 2;
  v7 = a5[1] - 2;
  v8 = *(result + 4);
  v9 = (result + 8);
  v10 = a3 * a4;
  v11 = v10 & 0xFFFFFFFC;
  if (v11 < 1)
  {
    LODWORD(v12) = 0;
    _S1 = 0.0;
    v14 = a3;
  }

  else
  {
    v12 = 0;
    _S1 = 0.0;
    v14 = a3;
    do
    {
      _Q2 = 0uLL;
      if (v8)
      {
        v16 = a6;
        v17 = v9;
        v18 = v8;
        do
        {
          v19 = *v17++;
          v20 = v19;
          v21 = *v16++;
          _Q2 = vmlaq_n_f32(_Q2, vcvtq_f32_f16(*(v21 + 2 * v12)), v20);
          --v18;
        }

        while (v18);
      }

      if (_S1 < _Q2.f32[0])
      {
        _S1 = _Q2.f32[0];
      }

      if ((v12 | 1) == v14)
      {
        if (_S1 >= 1.0)
        {
          _S1 = 1.0;
        }

        __asm { FCVT            H1, S1 }

        *(v7 + 2) = _H1;
        v7 += 2;
        v27 = v14 + a3;
        _S1 = 0.0;
        v14 += a3;
      }

      else
      {
        v27 = v14;
        __asm { FCVT            H3, S2 }

        *(v6 + 2) = _H3;
        v6 += 2;
      }

      _S3 = _Q2.i32[1];
      if (_S1 < _Q2.f32[1])
      {
        _S1 = _Q2.f32[1];
      }

      if ((v12 | 2) == v27)
      {
        if (_S1 >= 1.0)
        {
          _S1 = 1.0;
        }

        __asm { FCVT            H1, S1 }

        *(v7 + 2) = _H1;
        v7 += 2;
        v27 = v14 + a3;
        _S1 = 0.0;
        v14 += a3;
      }

      else
      {
        __asm { FCVT            H3, S3 }

        *(v6 + 2) = _H3;
        v6 += 2;
      }

      _S3 = _Q2.i32[2];
      if (_S1 < _Q2.f32[2])
      {
        _S1 = _Q2.f32[2];
      }

      result = v12 | 3;
      if ((v12 | 3) == v27)
      {
        if (_S1 >= 1.0)
        {
          _S1 = 1.0;
        }

        __asm { FCVT            H1, S1 }

        *(v7 + 2) = _H1;
        v7 += 2;
        v27 = v14 + a3;
        _S1 = 0.0;
        v14 += a3;
      }

      else
      {
        __asm { FCVT            H3, S3 }

        *(v6 + 2) = _H3;
        v6 += 2;
      }

      _Q2.i32[0] = _Q2.i32[3];
      if (_S1 < _Q2.f32[3])
      {
        _S1 = _Q2.f32[3];
      }

      v12 += 4;
      if (v12 == v27)
      {
        if (_S1 >= 1.0)
        {
          _S1 = 1.0;
        }

        __asm { FCVT            H1, S1 }

        *(v7 + 2) = _H1;
        v7 += 2;
        v14 += a3;
        _S1 = 0.0;
      }

      else
      {
        __asm { FCVT            H2, S2 }

        *(v6 + 2) = _H2;
        v6 += 2;
      }
    }

    while (v12 < v11);
  }

  if (v12 < v10)
  {
    v12 = v12;
    do
    {
      _S2 = 0.0;
      if (v8)
      {
        v38 = a6;
        v39 = v9;
        LODWORD(result) = v8;
        do
        {
          v40 = *v39++;
          v41 = v40;
          v42 = *v38++;
          _H4 = *(v42 + 2 * v12);
          __asm { FCVT            S4, H4 }

          _S2 = _S2 + (_S4 * v41);
          result = (result - 1);
        }

        while (result);
      }

      if (_S1 < _S2)
      {
        _S1 = _S2;
      }

      if (++v12 == v14)
      {
        if (_S1 >= 1.0)
        {
          _S1 = 1.0;
        }

        __asm { FCVT            H1, S1 }

        *(v7 + 2) = _H1;
        v7 += 2;
        v14 += a3;
        _S1 = 0.0;
      }

      else
      {
        __asm { FCVT            H2, S2 }

        *(v6 + 2) = _H2;
        v6 += 2;
      }
    }

    while (v12 != v10);
  }

  return result;
}

uint64_t resample_float16_v_3cpp_ap_expanded(uint64_t result, uint64_t a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t *a6)
{
  v6 = (a3 * a4) & 0xFFFFFFFC;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = *(result + 4);
    v9 = (result + 8);
    v11 = *a5;
    v10 = *(a5 + 8);
    do
    {
      _Q1 = 0uLL;
      if (v8)
      {
        v13 = a6;
        v14 = v9;
        v15 = v8;
        do
        {
          v16 = *v14++;
          v17 = v16;
          v18 = *v13++;
          result = v18;
          _Q1 = vmlaq_n_f32(_Q1, vcvtq_f32_f16(*(v18 + 2 * v7)), v17);
          --v15;
        }

        while (v15);
      }

      v19 = _Q1.f32[3];
      if (_Q1.f32[0] > _Q1.f32[3])
      {
        v19 = _Q1.f32[0];
      }

      _S3 = _Q1.i32[1];
      if (_Q1.f32[1] > v19)
      {
        v19 = _Q1.f32[1];
      }

      _S4 = _Q1.i32[2];
      if (_Q1.f32[2] > v19)
      {
        v19 = _Q1.f32[2];
      }

      __asm { FCVT            H1, S1 }

      *v11 = _H1;
      __asm { FCVT            H1, S3 }

      v11[1] = _H1;
      __asm { FCVT            H1, S4 }

      v11[2] = _H1;
      v11 += 3;
      if (v19 < 1.0)
      {
        _S1 = v19;
      }

      else
      {
        _S1 = 1.0;
      }

      __asm { FCVT            H1, S1 }

      *v10++ = _H1;
      v7 += 4;
    }

    while (v7 < v6);
  }

  return result;
}

void sub_184309020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20906(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_184309194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1843092B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1843093CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_184309618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float64x2_t *CG::dasher::add_path_dash_segment<CG::Quadratic>(float64x2_t *a1, float64x2_t *a2, double a3, double a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a2[1];
  v44 = *a2;
  v45 = v8;
  v9 = a2[3];
  v46 = a2[2];
  v47 = v9;
  v10 = a1[3].f64[0];
  v11 = a1[3].f64[1];
  v12 = a1[2].f64[0];
  v13 = a1[2].f64[1];
  v14 = v44.f64[1] * v11 + v44.f64[0] * v13;
  v9.f64[0] = v11 * v45.f64[1] + v45.f64[0] * v13;
  v15 = v11 * v46.f64[1] + v46.f64[0] * v13;
  v44.f64[0] = v44.f64[1] * v10 + v44.f64[0] * v12;
  v44.f64[1] = v14;
  v45.f64[0] = v10 * v45.f64[1] + v45.f64[0] * v12;
  v45.f64[1] = v9.f64[0];
  v46.f64[0] = v10 * v46.f64[1] + v46.f64[0] * v12;
  v46.f64[1] = v15;
  v16 = vsubq_f64(v45, v44);
  v47 = vaddq_f64(v16, v16);
  v48 = vsubq_f64(vsubq_f64(v46, v45), v16);
  result = CG::Quadratic::index(&v44, a3);
  v18 = a2[1];
  v20 = vaddq_f64(*a2, vmulq_n_f64(vsubq_f64(v18, *a2), v19));
  v21 = a2[2];
  v22 = vaddq_f64(v18, vmulq_n_f64(vsubq_f64(v21, v18), v19));
  v23 = vaddq_f64(v20, vmulq_n_f64(vsubq_f64(v22, v20), v19));
  if (LOBYTE(a1[9].f64[0]) == 1)
  {
    v24 = a1->f64[0];
    v44 = v23;
    if (v24 != 0.0)
    {
      v40 = v22;
      v42 = v23;
      v38 = v21;
      result = (*(*&v24 + 24))(*(*&v24 + 8), 0, &v44, *(*&v24 + 48));
      v21 = v38;
      v22 = v40;
      v23 = v42;
    }
  }

  v25 = vsubq_f64(v22, v23);
  v26 = vsubq_f64(v21, v22);
  if (a3 == a4)
  {
    v27 = vsubq_f64(v26, v25);
    v28 = vaddq_f64(vmulq_f64(vaddq_f64(v27, v27), 0), vaddq_f64(v25, v25));
    if (v28.f64[0] != 0.0 || v28.f64[1] != 0.0)
    {
      v28 = vdivq_f64(v28, vdupq_lane_s64(COERCE__INT64(sqrt(v28.f64[1] * v28.f64[1] + v28.f64[0] * v28.f64[0])), 0));
    }

    v29 = a1->f64[0];
    v44 = vaddq_f64(vmulq_f64(v28, vdupq_n_s64(0x3EF0000000000000uLL)), v23);
    if (v29 != 0.0)
    {
      return (*(*&v29 + 24))(*(*&v29 + 8), 1, &v44, *(*&v29 + 48));
    }
  }

  else
  {
    v37 = v25;
    v39 = v26;
    v30 = a1[2];
    v31 = a1[3];
    v43 = v23;
    v44 = vmlaq_n_f64(vmulq_laneq_f64(v31, v23, 1), v30, v23.f64[0]);
    v32 = vmlaq_n_f64(vmulq_laneq_f64(v31, v22, 1), v30, v22.f64[0]);
    v33 = vmlaq_n_f64(vmulq_laneq_f64(v31, v21, 1), v30, v21.f64[0]);
    v34 = vsubq_f64(v32, v44);
    v45 = v32;
    v46 = v33;
    v47 = vaddq_f64(v34, v34);
    v48 = vsubq_f64(vsubq_f64(v33, v32), v34);
    v41 = v22;
    result = CG::Quadratic::index(&v44, a4 - a3);
    v36 = a1->f64[0];
    if (*&a1->f64[0])
    {
      v44 = vaddq_f64(v43, vmulq_n_f64(v37, v35));
      v45 = vaddq_f64(v44, vmulq_n_f64(vsubq_f64(vaddq_f64(v41, vmulq_n_f64(v39, v35)), v44), v35));
      return (*(*&v36 + 24))(*(*&v36 + 8), 2, &v44, *(*&v36 + 48));
    }
  }

  return result;
}

void CG::dasher::add_path_dash_segment<CG::Cubic>(double *a1, float64x2_t *a2, double a3, double a4)
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a2[1];
  v39 = *a2;
  v40 = v8;
  v9 = a2[3];
  v41 = a2[2];
  v42 = v9;
  v10 = a2[5];
  v43 = a2[4];
  v44 = v10;
  v45 = a2[6];
  v11 = a1[6];
  v12 = a1[7];
  v13 = a1[4];
  v14 = a1[5];
  v15 = v39.f64[1] * v12 + v39.f64[0] * v14;
  v10.f64[0] = v12 * v40.f64[1] + v40.f64[0] * v14;
  v16 = v12 * v41.f64[1] + v41.f64[0] * v14;
  v17 = v12 * v42.f64[1] + v42.f64[0] * v14;
  v39.f64[0] = v39.f64[1] * v11 + v39.f64[0] * v13;
  v39.f64[1] = v15;
  v40.f64[0] = v11 * v40.f64[1] + v40.f64[0] * v13;
  v40.f64[1] = v10.f64[0];
  v41.f64[0] = v11 * v41.f64[1] + v41.f64[0] * v13;
  v41.f64[1] = v16;
  v42.f64[0] = v11 * v42.f64[1] + v42.f64[0] * v13;
  v42.f64[1] = v17;
  v18 = vsubq_f64(v40, v39);
  __asm { FMOV            V5.2D, #3.0 }

  v24 = vsubq_f64(v41, v40);
  v38 = _Q5;
  v43 = vmulq_f64(v18, _Q5);
  v44 = vmulq_f64(vsubq_f64(v24, v18), _Q5);
  v45 = vaddq_f64(v18, vsubq_f64(vsubq_f64(v42, v41), vaddq_f64(v24, v24)));
  CG::Cubic::index(&v39, a3);
  CG::Cubic::split(&v39, v25, a2);
  if (*(a1 + 144) == 1)
  {
    v26 = *a1;
    v53 = v46;
    if (v26 != 0.0)
    {
      (*(*&v26 + 24))(*(*&v26 + 8), 0, &v53, *(*&v26 + 48));
    }
  }

  if (a3 == a4)
  {
    v27 = vsubq_f64(v47, v46);
    if (COERCE_DOUBLE(*&vmulq_f64(v27, v27).f64[1]) + v27.f64[0] * v27.f64[0] <= 0.00000001)
    {
      v27 = vsubq_f64(v48, v46);
      if (COERCE_DOUBLE(*&vmulq_f64(v27, v27).f64[1]) + v27.f64[0] * v27.f64[0] <= 0.00000001)
      {
        v27 = vsubq_f64(v49, v46);
      }
    }

    if (v27.f64[0] != 0.0 || v27.f64[1] != 0.0)
    {
      v27 = vdivq_f64(v27, vdupq_lane_s64(COERCE__INT64(sqrt(v27.f64[1] * v27.f64[1] + v27.f64[0] * v27.f64[0])), 0));
    }

    v28 = *a1;
    v53 = vaddq_f64(vmulq_f64(v27, vdupq_n_s64(0x3EF0000000000000uLL)), v46);
    if (v28 != 0.0)
    {
      (*(*&v28 + 24))(*(*&v28 + 8), 1, &v53, *(*&v28 + 48));
    }
  }

  else
  {
    v53 = v46;
    v54 = v47;
    v55 = v48;
    v56 = v49;
    v57 = v50;
    v58 = v51;
    v59 = v52;
    v29 = a1[6];
    v30 = a1[7];
    v31 = a1[4];
    v32 = a1[5];
    v53.f64[0] = v46.f64[1] * v29 + v46.f64[0] * v31;
    v53.f64[1] = v46.f64[1] * v30 + v46.f64[0] * v32;
    v54.f64[0] = v29 * v47.f64[1] + v47.f64[0] * v31;
    v54.f64[1] = v30 * v47.f64[1] + v47.f64[0] * v32;
    v55.f64[0] = v29 * v48.f64[1] + v48.f64[0] * v31;
    v55.f64[1] = v30 * v48.f64[1] + v48.f64[0] * v32;
    v56.f64[0] = v29 * v49.f64[1] + v49.f64[0] * v31;
    v56.f64[1] = v30 * v49.f64[1] + v49.f64[0] * v32;
    v33 = vsubq_f64(v54, v53);
    v34 = vsubq_f64(v55, v54);
    v57 = vmulq_f64(v33, v38);
    v58 = vmulq_f64(vsubq_f64(v34, v33), v38);
    v59 = vaddq_f64(v33, vsubq_f64(vsubq_f64(v56, v55), vaddq_f64(v34, v34)));
    CG::Cubic::index(&v53, a4 - a3);
    v36 = *a1;
    if (*a1)
    {
      v37 = vaddq_f64(v47, vmulq_n_f64(vsubq_f64(v48, v47), v35));
      v53 = vaddq_f64(v46, vmulq_n_f64(vsubq_f64(v47, v46), v35));
      v54 = vaddq_f64(v53, vmulq_n_f64(vsubq_f64(v37, v53), v35));
      v55 = vaddq_f64(v54, vmulq_n_f64(vsubq_f64(vaddq_f64(v37, vmulq_n_f64(vsubq_f64(vaddq_f64(v48, vmulq_n_f64(vsubq_f64(v49, v48), v35)), v37), v35)), v54), v35));
      (*(*&v36 + 24))(*(*&v36 + 8), 3, &v53, *(*&v36 + 48));
    }
  }
}

uint64_t anonymous namespace::release_data(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      *(v1 + 16) = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1865EE610);
  }

  return result;
}

void *anonymous namespace::end(void *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = v1[4];
    if (v2)
    {
      return v2(v1[1], v1[6]);
    }
  }

  return result;
}

void anonymous namespace::iterate(CG::dasher *this, int a2, float64x2_t *a3, void *a4)
{
  if (*(this + 1) != *(this + 2))
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        *(this + 88) = *a3;
        goto LABEL_42;
      }

      if (a2 == 1)
      {
        v9 = a3->f64[0];
        v10 = a3->f64[1];
        v53 = *(this + 8);
        v54.f64[0] = v9;
        v54.f64[1] = v10;
        CG::dasher::dash_path_element<CG::LineSegment>(this, &v53);
        *(this + 16) = v9;
        *(this + 17) = v10;
        return;
      }

LABEL_52:
      abort();
    }

    switch(a2)
    {
      case 2:
        v11 = *a3;
        v12 = a3[1];
        v46 = *(this + 8);
        v47 = v11;
        v13 = vsubq_f64(v11, v46);
        v48 = v12;
        v49 = vaddq_f64(v13, v13);
        v45 = v12;
        v50 = vsubq_f64(vsubq_f64(v12, v11), v13);
        v53 = v46;
        v54 = v11;
        v55 = v12;
        v56 = v49;
        v13.f64[0] = *(this + 6);
        v14 = *(this + 7);
        v12.f64[0] = *(this + 4);
        v15 = *(this + 5);
        v11.f64[0] = v46.f64[1] * v14 + v46.f64[0] * v15;
        v16 = v14 * v54.f64[1] + v54.f64[0] * v15;
        v17 = v14 * v55.f64[1] + v55.f64[0] * v15;
        v53.f64[0] = v46.f64[1] * v13.f64[0] + v46.f64[0] * v12.f64[0];
        v53.f64[1] = v11.f64[0];
        v54.f64[0] = v13.f64[0] * v54.f64[1] + v54.f64[0] * v12.f64[0];
        v54.f64[1] = v16;
        v55.f64[0] = v13.f64[0] * v55.f64[1] + v55.f64[0] * v12.f64[0];
        v55.f64[1] = v17;
        v18 = vsubq_f64(v54, v53);
        v56 = vaddq_f64(v18, v18);
        v57 = vsubq_f64(vsubq_f64(v55, v54), v18);
        CG::Quadratic::length(&v53, 0);
        v20 = v19;
        if (((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE && (*&v19 & 0x7FFFFFFFFFFFFFFFuLL) - 1 > 0xFFFFFFFFFFFFELL)
        {
          goto LABEL_50;
        }

        v22 = *(this + 15);
        if (v20 > v22)
        {
          v23 = 0.0;
          v24 = v22 + 0.0;
          do
          {
            if (*(this + 104) == 1)
            {
              CG::dasher::add_path_dash_segment<CG::Quadratic>(this, &v46, v23, v24);
              v22 = *(this + 15);
            }

            v23 = v23 + v22;
            CG::dasher::advance_dash_index(this);
            v22 = *(this + 15);
            v24 = v23 + v22;
          }

          while (v23 + v22 < v20);
          if (v23 >= v20)
          {
            goto LABEL_50;
          }

          if (*(this + 104) != 1)
          {
            goto LABEL_40;
          }

          CG::dasher::add_path_dash_segment<CG::Quadratic>(this, &v46, v23, v20);
LABEL_39:
          *(this + 144) = 0;
          v22 = *(this + 15);
LABEL_40:
          v44 = v22 - (v20 - v23);
LABEL_49:
          *(this + 15) = v44;
LABEL_50:
          *(this + 8) = v45;
          return;
        }

        if (*(this + 104) == 1)
        {
          CG::dasher::add_path_dash_segment<CG::Quadratic>(this, &v46, 0.0, v20);
LABEL_47:
          *(this + 144) = 0;
          v22 = *(this + 15);
        }

        break;
      case 3:
        v25 = *a3;
        v26 = a3[1];
        v27 = a3[2];
        v46 = *(this + 8);
        v47 = v25;
        v48 = v26;
        v49 = v27;
        v28 = v25;
        v29 = vsubq_f64(v25, v46);
        __asm { FMOV            V0.2D, #3.0 }

        v35 = vsubq_f64(v26, v25);
        v50 = vmulq_f64(v29, _Q0);
        v51 = vmulq_f64(vsubq_f64(v35, v29), _Q0);
        v45 = v27;
        v52 = vaddq_f64(v29, vsubq_f64(vsubq_f64(v27, v26), vaddq_f64(v35, v35)));
        v53 = v46;
        v54 = v28;
        v55 = v26;
        v56 = v27;
        v57 = v50;
        v58 = v51;
        v59 = v52;
        v36 = *(this + 6);
        v28.f64[0] = *(this + 7);
        v37 = *(this + 4);
        v38 = *(this + 5);
        v35.f64[0] = v46.f64[1] * v28.f64[0] + v46.f64[0] * v38;
        v26.f64[0] = v28.f64[0] * v54.f64[1] + v54.f64[0] * v38;
        v27.f64[0] = v28.f64[0] * v48.f64[1] + v48.f64[0] * v38;
        v28.f64[0] = v28.f64[0] * v56.f64[1] + v56.f64[0] * v38;
        v53.f64[0] = v46.f64[1] * v36 + v46.f64[0] * v37;
        v53.f64[1] = v35.f64[0];
        v54.f64[0] = v36 * v54.f64[1] + v54.f64[0] * v37;
        v54.f64[1] = v26.f64[0];
        v55.f64[0] = v36 * v48.f64[1] + v48.f64[0] * v37;
        v55.f64[1] = v27.f64[0];
        v56.f64[0] = v36 * v56.f64[1] + v56.f64[0] * v37;
        v56.f64[1] = v28.f64[0];
        v39 = vsubq_f64(v54, v53);
        v40 = vsubq_f64(v55, v54);
        v57 = vmulq_f64(v39, _Q0);
        v58 = vmulq_f64(vsubq_f64(v40, v39), _Q0);
        v59 = vaddq_f64(v39, vsubq_f64(vsubq_f64(v56, v55), vaddq_f64(v40, v40)));
        CG::Cubic::length(&v53, 0);
        v20 = v41;
        if (((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE && (*&v41 & 0x7FFFFFFFFFFFFFFFuLL) - 1 > 0xFFFFFFFFFFFFELL)
        {
          goto LABEL_50;
        }

        v22 = *(this + 15);
        if (v20 > v22)
        {
          v23 = 0.0;
          v43 = v22 + 0.0;
          do
          {
            if (*(this + 104) == 1)
            {
              CG::dasher::add_path_dash_segment<CG::Cubic>(this, &v46, v23, v43);
              v22 = *(this + 15);
            }

            v23 = v23 + v22;
            CG::dasher::advance_dash_index(this);
            v22 = *(this + 15);
            v43 = v23 + v22;
          }

          while (v23 + v22 < v20);
          if (v23 >= v20)
          {
            goto LABEL_50;
          }

          if (*(this + 104) != 1)
          {
            goto LABEL_40;
          }

          CG::dasher::add_path_dash_segment<CG::Cubic>(this, &v46, v23, v20);
          goto LABEL_39;
        }

        if (*(this + 104) == 1)
        {
          CG::dasher::add_path_dash_segment<CG::Cubic>(this, &v46, 0.0, v20);
          goto LABEL_47;
        }

        break;
      case 4:
        v5 = *(this + 88);
        v53 = *(this + 8);
        v54 = v5;
        CG::dasher::dash_path_element<CG::LineSegment>(this, &v53);
LABEL_42:
        *(this + 14) = *(this + 9);
        *(this + 104) = *(this + 64);
        *(this + 144) = 1;
        *(this + 15) = *(this + 10);
        *(this + 8) = *(this + 88);
        return;
      default:
        goto LABEL_52;
    }

    v44 = v22 - v20;
    goto LABEL_49;
  }

  if (a4)
  {
    v6 = a4[4];
    if (v6)
    {
      v7 = a4[1];
      v8 = a4[6];

      v6(v7, v8);
    }
  }
}

void *anonymous namespace::begin(void *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = v2[2];
    if (v3)
    {
      return v3(v2[1], a2, v2[6]);
    }
  }

  return result;
}

uint64_t CGAccessSessionGetBytePointer(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

size_t CGAccessSessionSkipForward(size_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  check_same_thread();
  v4 = *(*v3 + 20);
  result = -1;
  if (v4 > 1)
  {
    if (v4 == 3)
    {
LABEL_13:
      v7 = *v3;

      return CGDataProviderSkipForwardInternal(v7, a2);
    }

    if (v4 != 2)
    {
      return result;
    }
  }

  else if (v4)
  {
    if (v4 != 1)
    {
      return result;
    }

    goto LABEL_13;
  }

  v5 = v3[2];
  v6 = *(*v3 + 32);
  if (v5 + a2 <= v6)
  {
    result = a2;
  }

  else
  {
    result = v6 - v5;
  }

  v3[2] = result + v5;
  return result;
}

uint64_t CGAccessSessionGetChunks(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !(a3 | a2))
  {
    return 0;
  }

  if (!*a1)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL", a6, a7, a8, v8);
  }

  v10 = *(*a1 + 20);
  if (v10 > 1)
  {
    if (v10 == 3)
    {
LABEL_20:

      return get_chunks_sequential(a1, a2, a3, a4, a5, a6);
    }

    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10)
  {
    if (v10 != 1)
    {
      return 0;
    }

    goto LABEL_20;
  }

  if (a6 | a3)
  {
    v11 = a4;
  }

  else
  {
    v11 = 1;
  }

  if (a6 | a3)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4;
  }

  v13 = v12 * a2;

  return get_chunks_direct(a1, v13, a3, v11, a5, a6);
}

uint64_t get_chunks_sequential(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  check_same_thread();
  v13 = *a1;
  if ((*(*a1 + 20) & 0xFFFFFFFD) != 1 || !*(*a1 + 40))
  {
    _CGHandleAssert("get_chunks_sequential", 225, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGAccessSession.c", "CGDataProviderCanGetSequentialChunks(provider)", "data provider is not sequential or provides no method (%p) to sequentially read data", v10, v11, v12, *(*a1 + 40));
  }

  if (!a4)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    if (a2)
    {
      if (a2 < 1 || (*(v13 + 261) & 1) != 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v18 = a2;
        v19 = a5;
        while (1)
        {
          v20 = (*(v13 + 40))(*(v13 + 24), v19, v18);
          if (!v20)
          {
            break;
          }

          if (v20 >= v18)
          {
            v21 = v18;
          }

          else
          {
            v21 = v20;
          }

          v16 += v21;
          v19 += v21;
          v18 -= v21;
          if (!v18)
          {
            goto LABEL_9;
          }
        }

        *(v13 + 261) = 1;
      }

LABEL_9:
      v15 += v16;
      a1[2] += v16;
      if (v16 < a2)
      {
        break;
      }
    }

    if (a3)
    {
      v17 = CGDataProviderSkipForwardInternal(v13, a3);
      v15 += v17;
      a1[2] += v17;
    }

    a5 += a2 + a6;
    ++v14;
  }

  while (v14 != a4);
  return v15;
}

uint64_t CGAccessSessionHasError(CFTypeRef *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(*a1);
  if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
  {
    dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
  }

  if (v2 != CGDataProviderGetTypeID_id)
  {
    return 0;
  }

  v3 = v1[15];
  if (!v3)
  {
    return 0;
  }

  v4 = v1[3];

  return v3(v4);
}

CGPDFStreamRef get_font_stream_20977(uint64_t a1)
{
  FontDescriptor = CGPDFFontGetFontDescriptor(a1);
  if (!FontDescriptor)
  {
    return 0;
  }

  v2 = FontDescriptor;
  value = 0;
  if (CGPDFDictionaryGetStream(*(FontDescriptor + 32), "FontFile2", &value))
  {
    v3 = value;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    value = 0;
    v3 = CGPDFDictionaryGetStream(*(v2 + 32), "FontFile3", &value) ? value : 0;
    if (v3)
    {
      value = 0;
      if (CGPDFDictionaryGetName(*(v3 + 6), "Subtype", &value))
      {
        v4 = value;
        if (strcmp(value, "OpenType"))
        {
          return 0;
        }
      }
    }
  }

  return v3;
}

uint64_t A8_sample_ALPHA16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 40);
  v103 = *(result + 28);
  if (v4)
  {
    v5 = *(result + 176);
    v6 = *(result + 64);
    v7 = *(result + 72);
    v9 = *(result + 112);
    v8 = *(result + 120);
    v11 = *(result + 48);
    v10 = *(result + 56);
    v12 = v11 == 0;
    if (v11)
    {
      v100 = *(result + 112);
      if (v9 > v11)
      {
        v100 = v9 % v11;
      }
    }

    else
    {
      v100 = 0;
    }

    v97 = *(result + 80);
    v98 = *(result + 88);
    if (v10)
    {
      if (v8 <= v10)
      {
        v99 = *(result + 120);
      }

      else
      {
        v99 = v8 % v10;
      }
    }

    else
    {
      v99 = 0;
    }
  }

  else
  {
    v99 = 0;
    v100 = 0;
    v11 = 0;
    v5 = 0;
    v10 = 0;
    v6 = *(result + 64);
    v7 = *(result + 72);
    v97 = *(result + 80);
    v98 = *(result + 88);
    v12 = 1;
    v9 = *(result + 112);
    v8 = *(result + 120);
  }

  v13 = *(result + 152) - 1;
  v14 = *(result + 144) - 1;
  v101 = *(result + 248);
  v15 = v4 + ((*(result + 260) - 1) * v103) + 2 * ((*(result + 256) - 1) << v101);
  v96 = *(result + 188);
  v102 = 2 * *(result + 252);
  v16 = -v7;
  while (1)
  {
LABEL_13:
    if (a3 >= v7)
    {
      if (a3 <= v98)
      {
        v25 = 0;
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v98;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_53;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v27 = v24 | v96;
        v28 = v22 - 0x1000000;
        v25 = a3 - (v22 - 0x1000000);
        v26 = 448;
      }
    }

    else
    {
      v17 = *(result + 216);
      v18 = v7 - *(result + 224);
      v19 = a3 - v18 + (v17 >> 1);
      if (v19 < 1)
      {
        goto LABEL_53;
      }

      if (v19 >= v17)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v19) >> 32;
      }

      v27 = v20 | v96;
      v28 = v18 + 0x1000000;
      v25 = a3 - (v18 + 0x1000000);
      v26 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v6 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v96;
      }

      v32 = v30 + 0x1000000;
      v33 = a2 - (v30 + 0x1000000);
      v34 = 32;
      goto LABEL_37;
    }

LABEL_53:
    --a4;
    a2 += v9;
    a3 += v8;
    ++v13;
    *++v14 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v97)
  {
    v33 = 0;
    v34 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_37;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v97;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_53;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v96;
  }

  v32 = v36 - 0x1000000;
  v33 = a2 - (v36 - 0x1000000);
  v34 = 28;
LABEL_37:
  if (v27 < 0x400000)
  {
    goto LABEL_53;
  }

  if (!v12)
  {
    v38 = (v10 & ((v28 % v10) >> 63)) + v28 % v10;
    v39 = (v11 & ((v32 % v11) >> 63)) + v32 % v11;
    if (v38 >= v10)
    {
      v40 = v10;
    }

    else
    {
      v40 = 0;
    }

    v28 = v38 - v40;
    if (v39 >= v11)
    {
      v41 = v11;
    }

    else
    {
      v41 = 0;
    }

    v32 = v39 - v41;
    v25 += v28;
    v33 += v32;
  }

  if (v4)
  {
    v42 = v4 + SHIDWORD(v28) * v103 + 2 * (v32 >> 32 << v101);
    v43 = (v42 + v102);
    if (v15 < v42 + v102)
    {
      v43 = v15;
    }

    if (v43 < *(result + 40))
    {
      v43 = *(result + 40);
    }

    v44 = bswap32(*v43) >> 16;
    if (!v5)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v42 = 0;
    v44 = 0xFFFF;
    if (!v5)
    {
      goto LABEL_57;
    }
  }

  v45 = *(v5 + (v34 | v26));
  while (2)
  {
    v57 = v45 & 0xF;
    v58 = v45 >> 8;
    v59 = HIBYTE(v45) & 3;
    switch(v57)
    {
      case 1:
        LODWORD(v88) = SBYTE1(v45);
        if (!v12)
        {
          v89 = v25 + (v58 << 32);
          v90 = v10 & (v89 >> 63);
          if (v90 + v89 >= v10)
          {
            v91 = v10;
          }

          else
          {
            v91 = 0;
          }

          v88 = (v90 + (v58 << 32) - v91) >> 32;
        }

        v92 = 0xFFFF;
        if (v4)
        {
          v93 = (v42 + v88 * v103 + v102);
          if (v15 < v93)
          {
            v93 = v15;
          }

          if (v93 < *(result + 40))
          {
            v93 = *(result + 40);
          }

          v92 = bswap32(*v93) >> 16;
        }

        v44 = v44 - ((interpolate_1616[v59] & v44) >> (v59 + 1)) + ((interpolate_1616[v59] & v92) >> (v59 + 1));
        break;
      case 2:
        v82 = SBYTE2(v45);
        if (!v12)
        {
          v83 = v33 + (SBYTE2(v45) << 32);
          v84 = v11 & (v83 >> 63);
          if (v84 + v83 >= v11)
          {
            v85 = v11;
          }

          else
          {
            v85 = 0;
          }

          v82 = (v84 + ((HIWORD(v45) << 56) >> 24) - v85) >> 32;
        }

        v86 = 0xFFFF;
        if (v4)
        {
          v87 = (v42 + 2 * (v82 << v101) + v102);
          if (v15 < v87)
          {
            v87 = v15;
          }

          if (v87 < *(result + 40))
          {
            v87 = *(result + 40);
          }

          v86 = bswap32(*v87) >> 16;
        }

        v44 = v44 - ((interpolate_1616[(v45 >> 28) & 3] & v44) >> (((v45 >> 28) & 3) + 1)) + ((interpolate_1616[(v45 >> 28) & 3] & v86) >> (((v45 >> 28) & 3) + 1));
        break;
      case 3:
        v94 = HIBYTE(v45) & 3;
        v95 = v7;
        LODWORD(v60) = SBYTE1(v45);
        v61 = SBYTE2(v45);
        if (!v12)
        {
          v62 = v58 << 56;
          v63 = v25 + (v62 >> 24);
          v64 = v33 + ((HIWORD(v45) << 56) >> 24);
          v65 = v10 & (v63 >> 63);
          v66 = v11 & (v64 >> 63);
          v67 = v66 + v64;
          if (v65 + v63 >= v10)
          {
            v68 = v10;
          }

          else
          {
            v68 = 0;
          }

          if (v67 >= v11)
          {
            v69 = v11;
          }

          else
          {
            v69 = 0;
          }

          v60 = (v65 + (v62 >> 24) - v68) >> 32;
          v61 = (v66 + ((HIWORD(v45) << 56) >> 24) - v69) >> 32;
        }

        v70 = 0xFFFF;
        v71 = 0xFFFF;
        v72 = 0xFFFF;
        if (v4)
        {
          v73 = v61 << v101;
          v74 = (v42 + 2 * (v61 << v101) + v102);
          v75 = *(result + 40);
          if (v15 < v74)
          {
            v74 = v15;
          }

          if (v74 < v75)
          {
            v74 = *(result + 40);
          }

          v70 = bswap32(*v74) >> 16;
          v76 = v42 + v60 * v103 + v102;
          if (v15 >= v76)
          {
            v77 = (v42 + v60 * v103 + v102);
          }

          else
          {
            v77 = v15;
          }

          if (v77 < v75)
          {
            v77 = *(result + 40);
          }

          v71 = bswap32(*v77) >> 16;
          v78 = (v76 + 2 * v73);
          if (v15 < v78)
          {
            v78 = v15;
          }

          if (v78 < v75)
          {
            v78 = *(result + 40);
          }

          v72 = bswap32(*v78) >> 16;
        }

        v79 = interpolate_1616[v94];
        v80 = v44 - ((v79 & v44) >> (v94 + 1)) + ((v79 & v71) >> (v94 + 1));
        v81 = (v45 >> 28) & 3;
        v44 = v80 - ((v80 & interpolate_1616[v81]) >> (v81 + 1)) + (((v70 - ((v79 & v70) >> (v94 + 1)) + ((v79 & v72) >> (v94 + 1))) & interpolate_1616[v81]) >> (v81 + 1));
        v7 = v95;
        break;
    }

LABEL_57:
    *(v13 + 1) = BYTE1(v44);
    *(v14 + 1) = v27 >> 22;
    if (a4 == 1)
    {
      return result;
    }

    v46 = 0;
    a2 += v9;
    v47 = v97 - a2;
    a3 += v8;
    v48 = v98 - a3;
LABEL_59:
    if ((((a2 - v6) | v47 | (v16 + a3) | v48) & 0x8000000000000000) == 0)
    {
      if (v12)
      {
        v49 = HIDWORD(a3);
        v50 = a2;
        if (v4)
        {
          goto LABEL_62;
        }

LABEL_75:
        v44 = 0xFFFF;
        if (v5)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v52 = (v10 & ((v25 + v99) >> 63)) + v25 + v99;
        v53 = (v11 & ((v33 + v100) >> 63)) + v33 + v100;
        if (v52 >= v10)
        {
          v54 = v10;
        }

        else
        {
          v54 = 0;
        }

        v25 = v52 - v54;
        if (v53 >= v11)
        {
          v55 = v11;
        }

        else
        {
          v55 = 0;
        }

        v33 = v53 - v55;
        v49 = HIDWORD(v25);
        v50 = v33;
        if (!v4)
        {
          goto LABEL_75;
        }

LABEL_62:
        v42 = v4 + v49 * v103 + 2 * (v50 >> 32 << v101);
        v51 = (v42 + v102);
        if (v15 < v42 + v102)
        {
          v51 = v15;
        }

        if (v51 < *(result + 40))
        {
          v51 = *(result + 40);
        }

        v44 = bswap32(*v51) >> 16;
        if (v5)
        {
LABEL_76:
          v45 = *(v5 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
          if ((v45 & 0xF) != 0)
          {
            v14 += v46 + 1;
            v13 += v46 + 1;
            a4 += ~v46;
            v27 = -1;
            continue;
          }
        }
      }

      *(v13 + v46 + 2) = BYTE1(v44);
      v56 = v14 + v46++;
      *(v56 + 2) = -1;
      a2 += v9;
      v47 -= v9;
      a3 += v8;
      v48 -= v8;
      if (a4 - 1 == v46)
      {
        return result;
      }

      goto LABEL_59;
    }

    break;
  }

  v14 += v46 + 1;
  v13 += v46 + 1;
  a4 += ~v46;
  if (a4)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t A8_sample_alpha16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 40);
  v103 = *(result + 28);
  if (v4)
  {
    v5 = *(result + 176);
    v6 = *(result + 64);
    v7 = *(result + 72);
    v9 = *(result + 112);
    v8 = *(result + 120);
    v11 = *(result + 48);
    v10 = *(result + 56);
    v12 = v11 == 0;
    if (v11)
    {
      v100 = *(result + 112);
      if (v9 > v11)
      {
        v100 = v9 % v11;
      }
    }

    else
    {
      v100 = 0;
    }

    v97 = *(result + 80);
    v98 = *(result + 88);
    if (v10)
    {
      if (v8 <= v10)
      {
        v99 = *(result + 120);
      }

      else
      {
        v99 = v8 % v10;
      }
    }

    else
    {
      v99 = 0;
    }
  }

  else
  {
    v99 = 0;
    v100 = 0;
    v11 = 0;
    v5 = 0;
    v10 = 0;
    v6 = *(result + 64);
    v7 = *(result + 72);
    v97 = *(result + 80);
    v98 = *(result + 88);
    v12 = 1;
    v9 = *(result + 112);
    v8 = *(result + 120);
  }

  v13 = *(result + 152) - 1;
  v14 = *(result + 144) - 1;
  v101 = *(result + 248);
  v15 = v4 + ((*(result + 260) - 1) * v103) + 2 * ((*(result + 256) - 1) << v101);
  v96 = *(result + 188);
  v102 = 2 * *(result + 252);
  v16 = -v7;
  while (1)
  {
LABEL_13:
    if (a3 >= v7)
    {
      if (a3 <= v98)
      {
        v25 = 0;
        v26 = (a3 >> 22) & 0x3C0;
        v27 = 0x3FFFFFFF;
        v28 = a3;
      }

      else
      {
        v21 = *(result + 216);
        v22 = *(result + 224) + v98;
        v23 = v22 - a3 + (v21 >> 1);
        if (v23 < 1)
        {
          goto LABEL_53;
        }

        if (v23 >= v21)
        {
          LODWORD(v24) = 0x3FFFFFFF;
        }

        else
        {
          v24 = (*(result + 232) * v23) >> 32;
        }

        v27 = v24 | v96;
        v28 = v22 - 0x1000000;
        v25 = a3 - (v22 - 0x1000000);
        v26 = 448;
      }
    }

    else
    {
      v17 = *(result + 216);
      v18 = v7 - *(result + 224);
      v19 = a3 - v18 + (v17 >> 1);
      if (v19 < 1)
      {
        goto LABEL_53;
      }

      if (v19 >= v17)
      {
        LODWORD(v20) = 0x3FFFFFFF;
      }

      else
      {
        v20 = (*(result + 232) * v19) >> 32;
      }

      v27 = v20 | v96;
      v28 = v18 + 0x1000000;
      v25 = a3 - (v18 + 0x1000000);
      v26 = 512;
    }

    if (a2 >= v6)
    {
      break;
    }

    v29 = *(result + 192);
    v30 = v6 - *(result + 200);
    v31 = a2 - v30 + (v29 >> 1);
    if (v31 >= 1)
    {
      if (v31 < v29)
      {
        v27 = ((v27 >> 15) * (((*(result + 208) * v31) >> 32) >> 15)) | v96;
      }

      v32 = v30 + 0x1000000;
      v33 = a2 - (v30 + 0x1000000);
      v34 = 32;
      goto LABEL_37;
    }

LABEL_53:
    --a4;
    a2 += v9;
    a3 += v8;
    ++v13;
    *++v14 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v97)
  {
    v33 = 0;
    v34 = (a2 >> 26) & 0x3C;
    v32 = a2;
    goto LABEL_37;
  }

  v35 = *(result + 192);
  v36 = *(result + 200) + v97;
  v37 = v36 - a2 + (v35 >> 1);
  if (v37 < 1)
  {
    goto LABEL_53;
  }

  if (v37 < v35)
  {
    v27 = ((v27 >> 15) * (((*(result + 208) * v37) >> 32) >> 15)) | v96;
  }

  v32 = v36 - 0x1000000;
  v33 = a2 - (v36 - 0x1000000);
  v34 = 28;
LABEL_37:
  if (v27 < 0x400000)
  {
    goto LABEL_53;
  }

  if (!v12)
  {
    v38 = (v10 & ((v28 % v10) >> 63)) + v28 % v10;
    v39 = (v11 & ((v32 % v11) >> 63)) + v32 % v11;
    if (v38 >= v10)
    {
      v40 = v10;
    }

    else
    {
      v40 = 0;
    }

    v28 = v38 - v40;
    if (v39 >= v11)
    {
      v41 = v11;
    }

    else
    {
      v41 = 0;
    }

    v32 = v39 - v41;
    v25 += v28;
    v33 += v32;
  }

  if (v4)
  {
    v42 = v4 + SHIDWORD(v28) * v103 + 2 * (v32 >> 32 << v101);
    v43 = (v42 + v102);
    if (v15 < v42 + v102)
    {
      v43 = v15;
    }

    if (v43 < *(result + 40))
    {
      v43 = *(result + 40);
    }

    v44 = *v43;
    if (!v5)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v42 = 0;
    v44 = 0xFFFF;
    if (!v5)
    {
      goto LABEL_57;
    }
  }

  v45 = *(v5 + (v34 | v26));
  while (2)
  {
    v57 = v45 & 0xF;
    v58 = v45 >> 8;
    v59 = HIBYTE(v45) & 3;
    switch(v57)
    {
      case 1:
        LODWORD(v88) = SBYTE1(v45);
        if (!v12)
        {
          v89 = v25 + (v58 << 32);
          v90 = v10 & (v89 >> 63);
          if (v90 + v89 >= v10)
          {
            v91 = v10;
          }

          else
          {
            v91 = 0;
          }

          v88 = (v90 + (v58 << 32) - v91) >> 32;
        }

        v92 = 0xFFFF;
        if (v4)
        {
          v93 = (v42 + v88 * v103 + v102);
          if (v15 < v93)
          {
            v93 = v15;
          }

          if (v93 < *(result + 40))
          {
            v93 = *(result + 40);
          }

          v92 = *v93;
        }

        v44 = v44 - ((interpolate_1616[v59] & v44) >> (v59 + 1)) + ((interpolate_1616[v59] & v92) >> (v59 + 1));
        break;
      case 2:
        v82 = SBYTE2(v45);
        if (!v12)
        {
          v83 = v33 + (SBYTE2(v45) << 32);
          v84 = v11 & (v83 >> 63);
          if (v84 + v83 >= v11)
          {
            v85 = v11;
          }

          else
          {
            v85 = 0;
          }

          v82 = (v84 + ((HIWORD(v45) << 56) >> 24) - v85) >> 32;
        }

        v86 = 0xFFFF;
        if (v4)
        {
          v87 = (v42 + 2 * (v82 << v101) + v102);
          if (v15 < v87)
          {
            v87 = v15;
          }

          if (v87 < *(result + 40))
          {
            v87 = *(result + 40);
          }

          v86 = *v87;
        }

        v44 = v44 - ((interpolate_1616[(v45 >> 28) & 3] & v44) >> (((v45 >> 28) & 3) + 1)) + ((interpolate_1616[(v45 >> 28) & 3] & v86) >> (((v45 >> 28) & 3) + 1));
        break;
      case 3:
        v94 = HIBYTE(v45) & 3;
        v95 = v7;
        LODWORD(v60) = SBYTE1(v45);
        v61 = SBYTE2(v45);
        if (!v12)
        {
          v62 = v58 << 56;
          v63 = HIWORD(v45) << 56;
          v64 = v25 + (SBYTE1(v45) << 32);
          v65 = v33 + (v63 >> 24);
          v66 = v10 & (v64 >> 63);
          v67 = v11 & (v65 >> 63);
          v68 = v67 + v65;
          if (v66 + v64 >= v10)
          {
            v69 = v10;
          }

          else
          {
            v69 = 0;
          }

          if (v68 >= v11)
          {
            v70 = v11;
          }

          else
          {
            v70 = 0;
          }

          v60 = (v66 + (v62 >> 24) - v69) >> 32;
          v61 = (v67 + (v63 >> 24) - v70) >> 32;
        }

        v71 = 0xFFFF;
        v72 = 0xFFFF;
        v73 = 0xFFFF;
        if (v4)
        {
          v74 = v61 << v101;
          v75 = (v42 + 2 * (v61 << v101) + v102);
          v76 = *(result + 40);
          if (v15 < v75)
          {
            v75 = v15;
          }

          if (v75 < v76)
          {
            v75 = *(result + 40);
          }

          v71 = *v75;
          v77 = v42 + v60 * v103 + v102;
          if (v15 >= v77)
          {
            v78 = (v42 + v60 * v103 + v102);
          }

          else
          {
            v78 = v15;
          }

          if (v78 < v76)
          {
            v78 = *(result + 40);
          }

          v72 = *v78;
          v79 = (v77 + 2 * v74);
          if (v15 < v79)
          {
            v79 = v15;
          }

          if (v79 < v76)
          {
            v79 = *(result + 40);
          }

          v73 = *v79;
        }

        v80 = interpolate_1616[v94];
        v81 = (v45 >> 28) & 3;
        v44 = v44 - ((v80 & v44) >> (v94 + 1)) + ((v80 & v72) >> (v94 + 1)) - (((v44 - ((v80 & v44) >> (v94 + 1)) + ((v80 & v72) >> (v94 + 1))) & interpolate_1616[v81]) >> (v81 + 1)) + (((v71 - ((v80 & v71) >> (v94 + 1)) + ((v80 & v73) >> (v94 + 1))) & interpolate_1616[v81]) >> (v81 + 1));
        v7 = v95;
        break;
    }

LABEL_57:
    *(v13 + 1) = BYTE1(v44);
    *(v14 + 1) = v27 >> 22;
    if (a4 == 1)
    {
      return result;
    }

    v46 = 0;
    a2 += v9;
    v47 = v97 - a2;
    a3 += v8;
    v48 = v98 - a3;
LABEL_59:
    if ((((a2 - v6) | v47 | (v16 + a3) | v48) & 0x8000000000000000) == 0)
    {
      if (v12)
      {
        v49 = HIDWORD(a3);
        v50 = a2;
        if (v4)
        {
          goto LABEL_62;
        }

LABEL_75:
        v44 = 0xFFFF;
        if (v5)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v52 = (v10 & ((v25 + v99) >> 63)) + v25 + v99;
        v53 = (v11 & ((v33 + v100) >> 63)) + v33 + v100;
        if (v52 >= v10)
        {
          v54 = v10;
        }

        else
        {
          v54 = 0;
        }

        v25 = v52 - v54;
        if (v53 >= v11)
        {
          v55 = v11;
        }

        else
        {
          v55 = 0;
        }

        v33 = v53 - v55;
        v49 = HIDWORD(v25);
        v50 = v33;
        if (!v4)
        {
          goto LABEL_75;
        }

LABEL_62:
        v42 = v4 + v49 * v103 + 2 * (v50 >> 32 << v101);
        v51 = (v42 + v102);
        if (v15 < v42 + v102)
        {
          v51 = v15;
        }

        if (v51 < *(result + 40))
        {
          v51 = *(result + 40);
        }

        v44 = *v51;
        if (v5)
        {
LABEL_76:
          v45 = *(v5 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
          if ((v45 & 0xF) != 0)
          {
            v14 += v46 + 1;
            v13 += v46 + 1;
            a4 += ~v46;
            v27 = -1;
            continue;
          }
        }
      }

      *(v13 + v46 + 2) = BYTE1(v44);
      v56 = v14 + v46++;
      *(v56 + 2) = -1;
      a2 += v9;
      v47 -= v9;
      a3 += v8;
      v48 -= v8;
      if (a4 - 1 == v46)
      {
        return result;
      }

      goto LABEL_59;
    }

    break;
  }

  v14 += v46 + 1;
  v13 += v46 + 1;
  a4 += ~v46;
  if (a4)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t A8_sample_ALPHAF(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 40);
  v5 = *(result + 28);
  if (v4)
  {
    v6 = *(result + 176);
    v7 = *(result + 64);
    v8 = *(result + 72);
    v10 = *(result + 112);
    v9 = *(result + 120);
    v12 = *(result + 48);
    v11 = *(result + 56);
    v13 = v12 == 0;
    if (v12)
    {
      v102 = *(result + 112);
      if (v10 > v12)
      {
        v102 = v10 % v12;
      }
    }

    else
    {
      v102 = 0;
    }

    v97 = *(result + 80);
    v99 = *(result + 88);
    if (v11)
    {
      if (v9 <= v11)
      {
        v101 = *(result + 120);
      }

      else
      {
        v101 = v9 % v11;
      }
    }

    else
    {
      v101 = 0;
    }
  }

  else
  {
    v101 = 0;
    v102 = 0;
    v12 = 0;
    v6 = 0;
    v11 = 0;
    v7 = *(result + 64);
    v8 = *(result + 72);
    v97 = *(result + 80);
    v99 = *(result + 88);
    v13 = 1;
    v10 = *(result + 112);
    v9 = *(result + 120);
  }

  v14 = *(result + 152) - 1;
  v15 = *(result + 144) - 1;
  v16 = *(result + 248);
  v17 = v4 + ((*(result + 260) - 1) * v5) + 4 * ((*(result + 256) - 1) << v16);
  v18 = 4 * *(result + 252);
  v96 = *(result + 188);
  v98 = v7;
  v19 = -v7;
  v100 = v8;
  v20 = -v8;
  while (1)
  {
LABEL_13:
    if (a3 >= v100)
    {
      if (a3 <= v99)
      {
        v29 = 0;
        v30 = (a3 >> 22) & 0x3C0;
        v31 = 0x3FFFFFFF;
        v32 = a3;
        v33 = v98;
      }

      else
      {
        v25 = *(result + 216);
        v26 = *(result + 224) + v99;
        v27 = v26 - a3 + (v25 >> 1);
        if (v27 < 1)
        {
          goto LABEL_53;
        }

        if (v27 >= v25)
        {
          LODWORD(v28) = 0x3FFFFFFF;
        }

        else
        {
          v28 = (*(result + 232) * v27) >> 32;
        }

        v33 = v98;
        v31 = v28 | v96;
        v32 = v26 - 0x1000000;
        v29 = a3 - (v26 - 0x1000000);
        v30 = 448;
      }
    }

    else
    {
      v21 = *(result + 216);
      v22 = v100 - *(result + 224);
      v23 = a3 - v22 + (v21 >> 1);
      if (v23 < 1)
      {
        goto LABEL_53;
      }

      if (v23 >= v21)
      {
        LODWORD(v24) = 0x3FFFFFFF;
      }

      else
      {
        v24 = (*(result + 232) * v23) >> 32;
      }

      v33 = v98;
      v31 = v24 | v96;
      v32 = v22 + 0x1000000;
      v29 = a3 - (v22 + 0x1000000);
      v30 = 512;
    }

    if (a2 >= v33)
    {
      break;
    }

    v34 = *(result + 192);
    v35 = v33 - *(result + 200);
    v36 = a2 - v35 + (v34 >> 1);
    if (v36 >= 1)
    {
      if (v36 < v34)
      {
        v31 = ((v31 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v96;
      }

      v37 = v35 + 0x1000000;
      v38 = a2 - (v35 + 0x1000000);
      v39 = 32;
      goto LABEL_37;
    }

LABEL_53:
    --a4;
    a2 += v10;
    a3 += v9;
    ++v14;
    *++v15 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v97)
  {
    v38 = 0;
    v39 = (a2 >> 26) & 0x3C;
    v37 = a2;
    goto LABEL_37;
  }

  v40 = *(result + 192);
  v41 = *(result + 200) + v97;
  v42 = v41 - a2 + (v40 >> 1);
  if (v42 < 1)
  {
    goto LABEL_53;
  }

  if (v42 < v40)
  {
    v31 = ((v31 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v96;
  }

  v37 = v41 - 0x1000000;
  v38 = a2 - (v41 - 0x1000000);
  v39 = 28;
LABEL_37:
  if (v31 < 0x400000)
  {
    goto LABEL_53;
  }

  if (!v13)
  {
    v43 = (v11 & ((v32 % v11) >> 63)) + v32 % v11;
    v44 = (v12 & ((v37 % v12) >> 63)) + v37 % v12;
    if (v43 >= v11)
    {
      v45 = v11;
    }

    else
    {
      v45 = 0;
    }

    v32 = v43 - v45;
    if (v44 >= v12)
    {
      v46 = v12;
    }

    else
    {
      v46 = 0;
    }

    v37 = v44 - v46;
    v29 += v32;
    v38 += v37;
  }

  if (!v4)
  {
    v47 = 0;
    v49 = 1.0;
    if (!v6)
    {
      goto LABEL_57;
    }

LABEL_56:
    v50 = *(v6 + (v39 | v30));
LABEL_82:
    v62 = v50 & 0xF;
    v63 = v50 >> 8;
    v64 = HIBYTE(v50) & 3;
    if (v62 == 1)
    {
      LODWORD(v90) = SBYTE1(v50);
      if (!v13)
      {
        v91 = v29 + (v63 << 32);
        v92 = v11 & (v91 >> 63);
        if (v92 + v91 >= v11)
        {
          v93 = v11;
        }

        else
        {
          v93 = 0;
        }

        v90 = (v92 + (v63 << 32) - v93) >> 32;
      }

      v87 = 1.0;
      if (v4)
      {
        v94 = (v47 + v90 * v5 + v18);
        if (v17 < v94)
        {
          v94 = v17;
        }

        if (v94 < *(result + 40))
        {
          v94 = *(result + 40);
        }

        v87 = COERCE_FLOAT(bswap32(*v94));
      }

      v89 = interpolate_af[v64];
    }

    else
    {
      if (v62 != 2)
      {
        if (v62 == 3)
        {
          LODWORD(v65) = SBYTE1(v50);
          v66 = SBYTE2(v50);
          if (!v13)
          {
            v67 = v29 + (SBYTE1(v50) << 32);
            v68 = v38 + (SBYTE2(v50) << 32);
            v95 = v5;
            v69 = v11 & (v67 >> 63);
            v70 = v12 & (v68 >> 63);
            v71 = v70 + v68;
            if (v69 + v67 >= v11)
            {
              v72 = v11;
            }

            else
            {
              v72 = 0;
            }

            if (v71 >= v12)
            {
              v73 = v12;
            }

            else
            {
              v73 = 0;
            }

            v74 = v69 + (SBYTE1(v50) << 32);
            v5 = v95;
            v65 = (v74 - v72) >> 32;
            v66 = (v70 + ((HIWORD(v50) << 56) >> 24) - v73) >> 32;
          }

          v75 = 1.0;
          v76 = 1.0;
          if (v4)
          {
            v77 = (v47 + 4 * (v66 << v16) + v18);
            v78 = *(result + 40);
            if (v17 >= v77)
            {
              v79 = v77;
            }

            else
            {
              v79 = v17;
            }

            if (v79 < v78)
            {
              v79 = *(result + 40);
            }

            v75 = COERCE_FLOAT(bswap32(*v79));
            v80 = (v77 + v65 * v5);
            if (v17 < v80)
            {
              v80 = v17;
            }

            if (v80 < v78)
            {
              v80 = *(result + 40);
            }

            v76 = COERCE_FLOAT(bswap32(*v80));
          }

          v81 = interpolate_af[HIBYTE(v50) & 3];
          v82 = interpolate_af[(v50 >> 28) & 3];
          v49 = (((v49 - (v49 * v81)) + (v75 * v81)) - (((v49 - (v49 * v81)) + (v75 * v81)) * v82)) + (((v75 - (v75 * v81)) + (v76 * v81)) * v82);
        }

        goto LABEL_57;
      }

      v83 = SBYTE2(v50);
      if (!v13)
      {
        v84 = v38 + (SBYTE2(v50) << 32);
        v85 = v12 & (v84 >> 63);
        if (v85 + v84 >= v12)
        {
          v86 = v12;
        }

        else
        {
          v86 = 0;
        }

        v83 = (v85 + ((HIWORD(v50) << 56) >> 24) - v86) >> 32;
      }

      v87 = 1.0;
      if (v4)
      {
        v88 = (v47 + 4 * (v83 << v16) + v18);
        if (v17 < v88)
        {
          v88 = v17;
        }

        if (v88 < *(result + 40))
        {
          v88 = *(result + 40);
        }

        v87 = COERCE_FLOAT(bswap32(*v88));
      }

      v89 = interpolate_af[(v50 >> 28) & 3];
    }

    v49 = (v49 - (v49 * v89)) + (v87 * v89);
    goto LABEL_57;
  }

  v47 = v4 + SHIDWORD(v32) * v5 + 4 * (v37 >> 32 << v16);
  v48 = (v47 + v18);
  if (v17 < v47 + v18)
  {
    v48 = v17;
  }

  if (v48 < *(result + 40))
  {
    v48 = *(result + 40);
  }

  v49 = COERCE_FLOAT(bswap32(*v48));
  if (v6)
  {
    goto LABEL_56;
  }

LABEL_57:
  *(v14 + 1) = ((v49 * 255.0) + 0.5);
  *(v15 + 1) = v31 >> 22;
  if (a4 == 1)
  {
    return result;
  }

  v51 = 0;
  a2 += v10;
  v52 = v97 - a2;
  a3 += v9;
  v53 = v99 - a3;
  while (2)
  {
    if ((((v19 + a2) | v52 | (v20 + a3) | v53) & 0x8000000000000000) == 0)
    {
      if (v13)
      {
        v54 = HIDWORD(a3);
        v55 = a2;
        if (v4)
        {
          goto LABEL_62;
        }

LABEL_75:
        v49 = 1.0;
        if (v6)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v57 = (v11 & ((v29 + v101) >> 63)) + v29 + v101;
        v58 = (v12 & ((v38 + v102) >> 63)) + v38 + v102;
        if (v57 >= v11)
        {
          v59 = v11;
        }

        else
        {
          v59 = 0;
        }

        v29 = v57 - v59;
        if (v58 >= v12)
        {
          v60 = v12;
        }

        else
        {
          v60 = 0;
        }

        v38 = v58 - v60;
        v54 = HIDWORD(v29);
        v55 = v38;
        if (!v4)
        {
          goto LABEL_75;
        }

LABEL_62:
        v47 = v4 + v54 * v5 + 4 * (v55 >> 32 << v16);
        v56 = (v47 + v18);
        if (v17 < v47 + v18)
        {
          v56 = v17;
        }

        if (v56 < *(result + 40))
        {
          v56 = *(result + 40);
        }

        v49 = COERCE_FLOAT(bswap32(*v56));
        if (v6)
        {
LABEL_76:
          v50 = *(v6 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
          if ((v50 & 0xF) != 0)
          {
            v15 += v51 + 1;
            v14 += v51 + 1;
            a4 += ~v51;
            v31 = -1;
            goto LABEL_82;
          }
        }
      }

      *(v14 + v51 + 2) = ((v49 * 255.0) + 0.5);
      v61 = v15 + v51++;
      a2 += v10;
      *(v61 + 2) = -1;
      v52 -= v10;
      a3 += v9;
      v53 -= v9;
      if (a4 - 1 == v51)
      {
        return result;
      }

      continue;
    }

    break;
  }

  v15 += v51 + 1;
  v14 += v51 + 1;
  a4 += ~v51;
  if (a4)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t A8_sample_ALPHAf(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 40);
  v5 = *(result + 28);
  if (v4)
  {
    v6 = *(result + 176);
    v7 = *(result + 64);
    v8 = *(result + 72);
    v10 = *(result + 112);
    v9 = *(result + 120);
    v12 = *(result + 48);
    v11 = *(result + 56);
    v13 = v12 == 0;
    if (v12)
    {
      v102 = *(result + 112);
      if (v10 > v12)
      {
        v102 = v10 % v12;
      }
    }

    else
    {
      v102 = 0;
    }

    v97 = *(result + 80);
    v99 = *(result + 88);
    if (v11)
    {
      if (v9 <= v11)
      {
        v101 = *(result + 120);
      }

      else
      {
        v101 = v9 % v11;
      }
    }

    else
    {
      v101 = 0;
    }
  }

  else
  {
    v101 = 0;
    v102 = 0;
    v12 = 0;
    v6 = 0;
    v11 = 0;
    v7 = *(result + 64);
    v8 = *(result + 72);
    v97 = *(result + 80);
    v99 = *(result + 88);
    v13 = 1;
    v10 = *(result + 112);
    v9 = *(result + 120);
  }

  v14 = *(result + 152) - 1;
  v15 = *(result + 144) - 1;
  v16 = *(result + 248);
  v17 = v4 + ((*(result + 260) - 1) * v5) + 4 * ((*(result + 256) - 1) << v16);
  v18 = 4 * *(result + 252);
  v96 = *(result + 188);
  v98 = v7;
  v19 = -v7;
  v100 = v8;
  v20 = -v8;
  while (1)
  {
LABEL_13:
    if (a3 >= v100)
    {
      if (a3 <= v99)
      {
        v29 = 0;
        v30 = (a3 >> 22) & 0x3C0;
        v31 = 0x3FFFFFFF;
        v32 = a3;
        v33 = v98;
      }

      else
      {
        v25 = *(result + 216);
        v26 = *(result + 224) + v99;
        v27 = v26 - a3 + (v25 >> 1);
        if (v27 < 1)
        {
          goto LABEL_53;
        }

        if (v27 >= v25)
        {
          LODWORD(v28) = 0x3FFFFFFF;
        }

        else
        {
          v28 = (*(result + 232) * v27) >> 32;
        }

        v33 = v98;
        v31 = v28 | v96;
        v32 = v26 - 0x1000000;
        v29 = a3 - (v26 - 0x1000000);
        v30 = 448;
      }
    }

    else
    {
      v21 = *(result + 216);
      v22 = v100 - *(result + 224);
      v23 = a3 - v22 + (v21 >> 1);
      if (v23 < 1)
      {
        goto LABEL_53;
      }

      if (v23 >= v21)
      {
        LODWORD(v24) = 0x3FFFFFFF;
      }

      else
      {
        v24 = (*(result + 232) * v23) >> 32;
      }

      v33 = v98;
      v31 = v24 | v96;
      v32 = v22 + 0x1000000;
      v29 = a3 - (v22 + 0x1000000);
      v30 = 512;
    }

    if (a2 >= v33)
    {
      break;
    }

    v34 = *(result + 192);
    v35 = v33 - *(result + 200);
    v36 = a2 - v35 + (v34 >> 1);
    if (v36 >= 1)
    {
      if (v36 < v34)
      {
        v31 = ((v31 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v96;
      }

      v37 = v35 + 0x1000000;
      v38 = a2 - (v35 + 0x1000000);
      v39 = 32;
      goto LABEL_37;
    }

LABEL_53:
    --a4;
    a2 += v10;
    a3 += v9;
    ++v14;
    *++v15 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v97)
  {
    v38 = 0;
    v39 = (a2 >> 26) & 0x3C;
    v37 = a2;
    goto LABEL_37;
  }

  v40 = *(result + 192);
  v41 = *(result + 200) + v97;
  v42 = v41 - a2 + (v40 >> 1);
  if (v42 < 1)
  {
    goto LABEL_53;
  }

  if (v42 < v40)
  {
    v31 = ((v31 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v96;
  }

  v37 = v41 - 0x1000000;
  v38 = a2 - (v41 - 0x1000000);
  v39 = 28;
LABEL_37:
  if (v31 < 0x400000)
  {
    goto LABEL_53;
  }

  if (!v13)
  {
    v43 = (v11 & ((v32 % v11) >> 63)) + v32 % v11;
    v44 = (v12 & ((v37 % v12) >> 63)) + v37 % v12;
    if (v43 >= v11)
    {
      v45 = v11;
    }

    else
    {
      v45 = 0;
    }

    v32 = v43 - v45;
    if (v44 >= v12)
    {
      v46 = v12;
    }

    else
    {
      v46 = 0;
    }

    v37 = v44 - v46;
    v29 += v32;
    v38 += v37;
  }

  if (!v4)
  {
    v47 = 0;
    v49 = 1.0;
    if (!v6)
    {
      goto LABEL_57;
    }

LABEL_56:
    v50 = *(v6 + (v39 | v30));
LABEL_82:
    v62 = v50 & 0xF;
    v63 = v50 >> 8;
    v64 = HIBYTE(v50) & 3;
    if (v62 == 1)
    {
      LODWORD(v90) = SBYTE1(v50);
      if (!v13)
      {
        v91 = v29 + (v63 << 32);
        v92 = v11 & (v91 >> 63);
        if (v92 + v91 >= v11)
        {
          v93 = v11;
        }

        else
        {
          v93 = 0;
        }

        v90 = (v92 + (v63 << 32) - v93) >> 32;
      }

      v87 = 1.0;
      if (v4)
      {
        v94 = (v47 + v90 * v5 + v18);
        if (v17 < v94)
        {
          v94 = v17;
        }

        if (v94 < *(result + 40))
        {
          v94 = *(result + 40);
        }

        v87 = *v94;
      }

      v89 = interpolate_af[v64];
    }

    else
    {
      if (v62 != 2)
      {
        if (v62 == 3)
        {
          LODWORD(v65) = SBYTE1(v50);
          v66 = SBYTE2(v50);
          if (!v13)
          {
            v67 = v29 + (SBYTE1(v50) << 32);
            v68 = v38 + (SBYTE2(v50) << 32);
            v95 = v5;
            v69 = v11 & (v67 >> 63);
            v70 = v12 & (v68 >> 63);
            v71 = v70 + v68;
            if (v69 + v67 >= v11)
            {
              v72 = v11;
            }

            else
            {
              v72 = 0;
            }

            if (v71 >= v12)
            {
              v73 = v12;
            }

            else
            {
              v73 = 0;
            }

            v74 = v69 + (SBYTE1(v50) << 32);
            v5 = v95;
            v65 = (v74 - v72) >> 32;
            v66 = (v70 + ((HIWORD(v50) << 56) >> 24) - v73) >> 32;
          }

          v75 = 1.0;
          v76 = 1.0;
          if (v4)
          {
            v77 = (v47 + 4 * (v66 << v16) + v18);
            v78 = *(result + 40);
            if (v17 >= v77)
            {
              v79 = v77;
            }

            else
            {
              v79 = v17;
            }

            if (v79 < v78)
            {
              v79 = *(result + 40);
            }

            v75 = *v79;
            v80 = (v77 + v65 * v5);
            if (v17 < v80)
            {
              v80 = v17;
            }

            if (v80 < v78)
            {
              v80 = *(result + 40);
            }

            v76 = *v80;
          }

          v81 = interpolate_af[HIBYTE(v50) & 3];
          v82 = interpolate_af[(v50 >> 28) & 3];
          v49 = (((v49 - (v49 * v81)) + (v75 * v81)) - (((v49 - (v49 * v81)) + (v75 * v81)) * v82)) + (((v75 - (v75 * v81)) + (v76 * v81)) * v82);
        }

        goto LABEL_57;
      }

      v83 = SBYTE2(v50);
      if (!v13)
      {
        v84 = v38 + (SBYTE2(v50) << 32);
        v85 = v12 & (v84 >> 63);
        if (v85 + v84 >= v12)
        {
          v86 = v12;
        }

        else
        {
          v86 = 0;
        }

        v83 = (v85 + ((HIWORD(v50) << 56) >> 24) - v86) >> 32;
      }

      v87 = 1.0;
      if (v4)
      {
        v88 = (v47 + 4 * (v83 << v16) + v18);
        if (v17 < v88)
        {
          v88 = v17;
        }

        if (v88 < *(result + 40))
        {
          v88 = *(result + 40);
        }

        v87 = *v88;
      }

      v89 = interpolate_af[(v50 >> 28) & 3];
    }

    v49 = (v49 - (v49 * v89)) + (v87 * v89);
    goto LABEL_57;
  }

  v47 = v4 + SHIDWORD(v32) * v5 + 4 * (v37 >> 32 << v16);
  v48 = (v47 + v18);
  if (v17 < v47 + v18)
  {
    v48 = v17;
  }

  if (v48 < *(result + 40))
  {
    v48 = *(result + 40);
  }

  v49 = *v48;
  if (v6)
  {
    goto LABEL_56;
  }

LABEL_57:
  *(v14 + 1) = ((v49 * 255.0) + 0.5);
  *(v15 + 1) = v31 >> 22;
  if (a4 == 1)
  {
    return result;
  }

  v51 = 0;
  a2 += v10;
  v52 = v97 - a2;
  a3 += v9;
  v53 = v99 - a3;
  while (2)
  {
    if ((((v19 + a2) | v52 | (v20 + a3) | v53) & 0x8000000000000000) == 0)
    {
      if (v13)
      {
        v54 = HIDWORD(a3);
        v55 = a2;
        if (v4)
        {
          goto LABEL_62;
        }

LABEL_75:
        v49 = 1.0;
        if (v6)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v57 = (v11 & ((v29 + v101) >> 63)) + v29 + v101;
        v58 = (v12 & ((v38 + v102) >> 63)) + v38 + v102;
        if (v57 >= v11)
        {
          v59 = v11;
        }

        else
        {
          v59 = 0;
        }

        v29 = v57 - v59;
        if (v58 >= v12)
        {
          v60 = v12;
        }

        else
        {
          v60 = 0;
        }

        v38 = v58 - v60;
        v54 = HIDWORD(v29);
        v55 = v38;
        if (!v4)
        {
          goto LABEL_75;
        }

LABEL_62:
        v47 = v4 + v54 * v5 + 4 * (v55 >> 32 << v16);
        v56 = (v47 + v18);
        if (v17 < v47 + v18)
        {
          v56 = v17;
        }

        if (v56 < *(result + 40))
        {
          v56 = *(result + 40);
        }

        v49 = *v56;
        if (v6)
        {
LABEL_76:
          v50 = *(v6 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
          if ((v50 & 0xF) != 0)
          {
            v15 += v51 + 1;
            v14 += v51 + 1;
            a4 += ~v51;
            v31 = -1;
            goto LABEL_82;
          }
        }
      }

      *(v14 + v51 + 2) = ((v49 * 255.0) + 0.5);
      v61 = v15 + v51++;
      a2 += v10;
      *(v61 + 2) = -1;
      v52 -= v10;
      a3 += v9;
      v53 -= v9;
      if (a4 - 1 == v51)
      {
        return result;
      }

      continue;
    }

    break;
  }

  v15 += v51 + 1;
  v14 += v51 + 1;
  a4 += ~v51;
  if (a4)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t A8_sample_ALPHAf16(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(result + 40);
  v5 = *(result + 28);
  if (v4)
  {
    v6 = *(result + 176);
    v7 = *(result + 64);
    v8 = *(result + 72);
    v10 = *(result + 112);
    v9 = *(result + 120);
    v12 = *(result + 48);
    v11 = *(result + 56);
    v13 = v12 == 0;
    if (v12)
    {
      v115 = *(result + 112);
      if (v10 > v12)
      {
        v115 = v10 % v12;
      }
    }

    else
    {
      v115 = 0;
    }

    v110 = *(result + 80);
    v112 = *(result + 88);
    if (v11)
    {
      if (v9 <= v11)
      {
        v114 = *(result + 120);
      }

      else
      {
        v114 = v9 % v11;
      }
    }

    else
    {
      v114 = 0;
    }
  }

  else
  {
    v114 = 0;
    v115 = 0;
    v12 = 0;
    v6 = 0;
    v11 = 0;
    v7 = *(result + 64);
    v8 = *(result + 72);
    v110 = *(result + 80);
    v112 = *(result + 88);
    v13 = 1;
    v10 = *(result + 112);
    v9 = *(result + 120);
  }

  v14 = *(result + 152) - 1;
  v15 = *(result + 144) - 1;
  v16 = *(result + 248);
  v17 = v4 + ((*(result + 260) - 1) * v5) + 2 * ((*(result + 256) - 1) << v16);
  v18 = 2 * *(result + 252);
  v109 = *(result + 188);
  v111 = v7;
  v19 = -v7;
  v113 = v8;
  v20 = -v8;
  while (1)
  {
LABEL_13:
    if (a3 >= v113)
    {
      if (a3 <= v112)
      {
        v29 = 0;
        v30 = (a3 >> 22) & 0x3C0;
        v31 = 0x3FFFFFFF;
        v32 = a3;
        v33 = v111;
      }

      else
      {
        v25 = *(result + 216);
        v26 = *(result + 224) + v112;
        v27 = v26 - a3 + (v25 >> 1);
        if (v27 < 1)
        {
          goto LABEL_53;
        }

        if (v27 >= v25)
        {
          LODWORD(v28) = 0x3FFFFFFF;
        }

        else
        {
          v28 = (*(result + 232) * v27) >> 32;
        }

        v33 = v111;
        v31 = v28 | v109;
        v32 = v26 - 0x1000000;
        v29 = a3 - (v26 - 0x1000000);
        v30 = 448;
      }
    }

    else
    {
      v21 = *(result + 216);
      v22 = v113 - *(result + 224);
      v23 = a3 - v22 + (v21 >> 1);
      if (v23 < 1)
      {
        goto LABEL_53;
      }

      if (v23 >= v21)
      {
        LODWORD(v24) = 0x3FFFFFFF;
      }

      else
      {
        v24 = (*(result + 232) * v23) >> 32;
      }

      v33 = v111;
      v31 = v24 | v109;
      v32 = v22 + 0x1000000;
      v29 = a3 - (v22 + 0x1000000);
      v30 = 512;
    }

    if (a2 >= v33)
    {
      break;
    }

    v34 = *(result + 192);
    v35 = v33 - *(result + 200);
    v36 = a2 - v35 + (v34 >> 1);
    if (v36 >= 1)
    {
      if (v36 < v34)
      {
        v31 = ((v31 >> 15) * (((*(result + 208) * v36) >> 32) >> 15)) | v109;
      }

      v37 = v35 + 0x1000000;
      v38 = a2 - (v35 + 0x1000000);
      v39 = 32;
      goto LABEL_37;
    }

LABEL_53:
    --a4;
    a2 += v10;
    a3 += v9;
    ++v14;
    *++v15 = 0;
    if (!a4)
    {
      return result;
    }
  }

  if (a2 <= v110)
  {
    v38 = 0;
    v39 = (a2 >> 26) & 0x3C;
    v37 = a2;
    goto LABEL_37;
  }

  v40 = *(result + 192);
  v41 = *(result + 200) + v110;
  v42 = v41 - a2 + (v40 >> 1);
  if (v42 < 1)
  {
    goto LABEL_53;
  }

  if (v42 < v40)
  {
    v31 = ((v31 >> 15) * (((*(result + 208) * v42) >> 32) >> 15)) | v109;
  }

  v37 = v41 - 0x1000000;
  v38 = a2 - (v41 - 0x1000000);
  v39 = 28;
LABEL_37:
  if (v31 < 0x400000)
  {
    goto LABEL_53;
  }

  if (!v13)
  {
    v43 = (v11 & ((v32 % v11) >> 63)) + v32 % v11;
    v44 = (v12 & ((v37 % v12) >> 63)) + v37 % v12;
    if (v43 >= v11)
    {
      v45 = v11;
    }

    else
    {
      v45 = 0;
    }

    v32 = v43 - v45;
    if (v44 >= v12)
    {
      v46 = v12;
    }

    else
    {
      v46 = 0;
    }

    v37 = v44 - v46;
    v29 += v32;
    v38 += v37;
  }

  if (!v4)
  {
    v47 = 0;
    _H1 = COERCE_UNSIGNED_INT(1.0);
    if (!v6)
    {
      goto LABEL_57;
    }

LABEL_56:
    v50 = *(v6 + (v39 | v30));
LABEL_82:
    v68 = v50 & 0xF;
    v69 = v50 >> 8;
    v70 = HIBYTE(v50) & 3;
    switch(v68)
    {
      case 1:
        LODWORD(v101) = SBYTE1(v50);
        if (!v13)
        {
          v102 = v29 + (v69 << 32);
          v103 = v11 & (v102 >> 63);
          if (v103 + v102 >= v11)
          {
            v104 = v11;
          }

          else
          {
            v104 = 0;
          }

          v101 = (v103 + (v69 << 32) - v104) >> 32;
        }

        _S2 = 1.0;
        if (v4)
        {
          v105 = (v47 + v101 * v5 + v18);
          if (v17 < v105)
          {
            v105 = v17;
          }

          if (v105 < *(result + 40))
          {
            v105 = *(result + 40);
          }

          _H2 = *v105;
          __asm { FCVT            S2, H2 }
        }

        v100 = interpolate_af[v70];
        break;
      case 2:
        v93 = SBYTE2(v50);
        if (!v13)
        {
          v94 = v38 + (SBYTE2(v50) << 32);
          v95 = v12 & (v94 >> 63);
          if (v95 + v94 >= v12)
          {
            v96 = v12;
          }

          else
          {
            v96 = 0;
          }

          v93 = (v95 + ((HIWORD(v50) << 56) >> 24) - v96) >> 32;
        }

        _S2 = 1.0;
        if (v4)
        {
          v98 = (v47 + 2 * (v93 << v16) + v18);
          if (v17 < v98)
          {
            v98 = v17;
          }

          if (v98 < *(result + 40))
          {
            v98 = *(result + 40);
          }

          _H2 = *v98;
          __asm { FCVT            S2, H2 }
        }

        v100 = interpolate_af[(v50 >> 28) & 3];
        break;
      case 3:
        LODWORD(v71) = SBYTE1(v50);
        v72 = SBYTE2(v50);
        if (!v13)
        {
          v73 = v29 + (SBYTE1(v50) << 32);
          v74 = v38 + (SBYTE2(v50) << 32);
          v108 = v5;
          v75 = v11 & (v73 >> 63);
          v76 = v12 & (v74 >> 63);
          v77 = v76 + v74;
          if (v75 + v73 >= v11)
          {
            v78 = v11;
          }

          else
          {
            v78 = 0;
          }

          if (v77 >= v12)
          {
            v79 = v12;
          }

          else
          {
            v79 = 0;
          }

          v80 = v75 + (SBYTE1(v50) << 32);
          v5 = v108;
          v71 = (v80 - v78) >> 32;
          v72 = (v76 + ((HIWORD(v50) << 56) >> 24) - v79) >> 32;
        }

        _S2 = 1.0;
        _S3 = 1.0;
        if (v4)
        {
          v83 = (v47 + 2 * (v72 << v16) + v18);
          v84 = *(result + 40);
          if (v17 >= v83)
          {
            v85 = v83;
          }

          else
          {
            v85 = v17;
          }

          if (v85 < v84)
          {
            v85 = *(result + 40);
          }

          _H2 = *v85;
          v87 = (v83 + v71 * v5);
          if (v17 < v87)
          {
            v87 = v17;
          }

          if (v87 < v84)
          {
            v87 = *(result + 40);
          }

          _H3 = *v87;
          __asm
          {
            FCVT            S2, H2
            FCVT            S3, H3
          }
        }

        v89 = interpolate_af[HIBYTE(v50) & 3];
        v90 = interpolate_af[(v50 >> 28) & 3];
        __asm { FCVT            S1, H1 }

        _S1 = (((_S1 - (_S1 * v89)) + (_S2 * v89)) - (((_S1 - (_S1 * v89)) + (_S2 * v89)) * v90)) + (((_S2 - (_S2 * v89)) + (_S3 * v89)) * v90);
        goto LABEL_130;
      default:
        goto LABEL_57;
    }

    __asm { FCVT            S1, H1 }

    _S1 = (_S1 - (_S1 * v100)) + (_S2 * v100);
LABEL_130:
    __asm { FCVT            H1, S1 }

    goto LABEL_57;
  }

  v47 = v4 + SHIDWORD(v32) * v5 + 2 * (v37 >> 32 << v16);
  v48 = (v47 + v18);
  if (v17 < v47 + v18)
  {
    v48 = v17;
  }

  if (v48 < *(result + 40))
  {
    v48 = *(result + 40);
  }

  _H1 = *v48;
  if (v6)
  {
    goto LABEL_56;
  }

LABEL_57:
  __asm { FCVT            S1, H1 }

  *(v14 + 1) = ((_S1 * 255.0) + 0.5);
  *(v15 + 1) = v31 >> 22;
  if (a4 == 1)
  {
    return result;
  }

  v56 = 0;
  a2 += v10;
  v57 = v110 - a2;
  a3 += v9;
  v58 = v112 - a3;
  while (2)
  {
    if ((((v19 + a2) | v57 | (v20 + a3) | v58) & 0x8000000000000000) == 0)
    {
      if (v13)
      {
        v59 = HIDWORD(a3);
        v60 = a2;
        if (v4)
        {
          goto LABEL_62;
        }

LABEL_75:
        _H1 = COERCE_UNSIGNED_INT(1.0);
        if (v6)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v62 = (v11 & ((v29 + v114) >> 63)) + v29 + v114;
        v63 = (v12 & ((v38 + v115) >> 63)) + v38 + v115;
        if (v62 >= v11)
        {
          v64 = v11;
        }

        else
        {
          v64 = 0;
        }

        v29 = v62 - v64;
        if (v63 >= v12)
        {
          v65 = v12;
        }

        else
        {
          v65 = 0;
        }

        v38 = v63 - v65;
        v59 = HIDWORD(v29);
        v60 = v38;
        if (!v4)
        {
          goto LABEL_75;
        }

LABEL_62:
        v47 = v4 + v59 * v5 + 2 * (v60 >> 32 << v16);
        v61 = (v47 + v18);
        if (v17 < v47 + v18)
        {
          v61 = v17;
        }

        if (v61 < *(result + 40))
        {
          v61 = *(result + 40);
        }

        _H1 = *v61;
        if (v6)
        {
LABEL_76:
          v50 = *(v6 + ((a3 >> 22) & 0x3C0 | (a2 >> 26) & 0x3C));
          if ((v50 & 0xF) != 0)
          {
            v15 += v56 + 1;
            v14 += v56 + 1;
            a4 += ~v56;
            v31 = -1;
            goto LABEL_82;
          }
        }
      }

      __asm { FCVT            S1, H1 }

      *(v14 + v56 + 2) = ((_S1 * 255.0) + 0.5);
      v67 = v15 + v56++;
      a2 += v10;
      *(v67 + 2) = -1;
      v57 -= v10;
      a3 += v9;
      v58 -= v9;
      if (a4 - 1 == v56)
      {
        return result;
      }

      continue;
    }

    break;
  }

  v15 += v56 + 1;
  v14 += v56 + 1;
  a4 += ~v56;
  if (a4)
  {
    goto LABEL_13;
  }

  return result;
}