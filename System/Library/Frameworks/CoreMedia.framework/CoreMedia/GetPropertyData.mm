@interface GetPropertyData
@end

@implementation GetPropertyData

CFIndex __brokeredPlugin_GetPropertyData_block_invoke(uint64_t a1)
{
  result = CFArrayGetCount(*(*(a1 + 40) + 40));
  v3 = *(a1 + 56);
  if (result >= (v3 >> 2))
  {
    v4 = v3 >> 2;
  }

  else
  {
    v4 = result;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  if (*(*(*(a1 + 32) + 8) + 24) >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 40) + 40), v5);
      v7 = *(*(CMBaseObjectGetVTable(ValueAtIndex) + 16) + 8);
      if (v7)
      {
        result = v7(ValueAtIndex);
      }

      else
      {
        result = 0;
      }

      *(*(a1 + 48) + 4 * v5++) = result;
    }

    while (v5 < *(*(*(a1 + 32) + 8) + 24));
  }

  return result;
}

uint64_t __brokeredPlugin_GetPropertyData_block_invoke_2(uint64_t a1)
{
  Count = CFArrayGetCount(*(*(a1 + 32) + 40));
  if (Count < 1)
  {
    goto LABEL_12;
  }

  v3 = Count;
  v4 = 0;
  v5 = **(a1 + 40);
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 40), v4);
    v7 = *(*(CMBaseObjectGetVTable(ValueAtIndex) + 24) + 8);
    if (v7)
    {
      v8 = v7(ValueAtIndex);
      v9 = FigCFEqual(v5, v8);
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      v9 = FigCFEqual(v5, 0);
    }

    if (v9)
    {
      break;
    }

    if (v3 == ++v4)
    {
      goto LABEL_12;
    }
  }

  v10 = *(*(CMBaseObjectGetVTable(ValueAtIndex) + 16) + 8);
  if (v10)
  {
    result = v10(ValueAtIndex);
  }

  else
  {
LABEL_12:
    result = 0;
  }

  **(a1 + 48) = result;
  return result;
}

CFIndex __plugin_GetPropertyData_block_invoke(uint64_t a1)
{
  result = CFArrayGetCount(*(*(a1 + 40) + 24));
  v3 = *(a1 + 56);
  if (result >= (v3 >> 2))
  {
    v4 = v3 >> 2;
  }

  else
  {
    v4 = result;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  if (*(*(*(a1 + 32) + 8) + 24) >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 40) + 24), v5);
      v7 = *(*(CMBaseObjectGetVTable(ValueAtIndex) + 16) + 8);
      if (v7)
      {
        result = v7(ValueAtIndex);
      }

      else
      {
        result = 0;
      }

      *(*(a1 + 48) + 4 * v5++) = result;
    }

    while (v5 < *(*(*(a1 + 32) + 8) + 24));
  }

  return result;
}

uint64_t __plugin_GetPropertyData_block_invoke_2(uint64_t a1)
{
  Count = CFArrayGetCount(*(*(a1 + 32) + 24));
  if (Count < 1)
  {
    goto LABEL_12;
  }

  v3 = Count;
  v4 = 0;
  v5 = **(a1 + 40);
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 24), v4);
    v7 = *(*(CMBaseObjectGetVTable(ValueAtIndex) + 24) + 8);
    if (v7)
    {
      v8 = v7(ValueAtIndex);
      v9 = FigCFEqual(v5, v8);
      if (v8)
      {
        CFRelease(v8);
      }
    }

    else
    {
      v9 = FigCFEqual(v5, 0);
    }

    if (v9)
    {
      break;
    }

    if (v3 == ++v4)
    {
      goto LABEL_12;
    }
  }

  v10 = *(*(CMBaseObjectGetVTable(ValueAtIndex) + 16) + 8);
  if (v10)
  {
    result = v10(ValueAtIndex);
  }

  else
  {
LABEL_12:
    result = 0;
  }

  **(a1 + 48) = result;
  return result;
}

void __endpointCentricPlugin_GetPropertyData_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = *(a1 + 40);
  v5 = *(v3 + 64);
  v4 = *(v3 + 72);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 24);
  if (v5)
  {
    ++v7;
  }

  *(v6 + 24) = v7;
  *(*(*(a1 + 32) + 8) + 24) += CFDictionaryGetCount(v4);
  v8 = malloc_type_calloc(*(*(*(a1 + 32) + 8) + 24), 8uLL, 0x2004093837F09uLL);
  v9 = v8;
  v10 = *(a1 + 40);
  v11 = *(v10 + 64);
  if (v11)
  {
    *v8 = v11;
    v10 = *(a1 + 40);
    v11 = 1;
  }

  CFDictionaryGetKeysAndValues(*(v10 + 72), 0, &v8[v11]);
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 24);
  if (v13 >= *(a1 + 72) >> 2)
  {
    v13 = *(a1 + 72) >> 2;
  }

  *(v12 + 24) = v13;
  v14 = *(*(*(a1 + 32) + 8) + 24);
  if (v14 >= 1)
  {
    for (i = 0; i < v14; ++i)
    {
      v16 = v9[i];
      v17 = *(*(CMBaseObjectGetVTable(v16) + 16) + 8);
      if (v17)
      {
        v18 = v17(v16);
      }

      else
      {
        v18 = 0;
      }

      *(*(a1 + 48) + 4 * i) = v18;
      CFStringAppendFormat(Mutable, 0, @" %u", v18);
      v14 = *(*(*(a1 + 32) + 8) + 24);
    }
  }

  **(a1 + 56) = 4 * v14;
  v42[0] = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 1, v42, &type);
  v20 = v42[0];
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v22 = v20;
  }

  else
  {
    v22 = v20 & 0xFFFFFFFE;
  }

  if (v22)
  {
    v23 = **(a1 + 64);
    v24 = v23 >> 24;
    v25 = MEMORY[0x1E69E9830];
    if ((v23 & 0x80000000) != 0)
    {
      v26 = __maskrune(HIBYTE(**(a1 + 64)), 0x40000uLL);
      LODWORD(v23) = **(a1 + 64);
    }

    else
    {
      v26 = *(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x40000;
    }

    if (v26)
    {
      v28 = v24;
    }

    else
    {
      v28 = 46;
    }

    v40 = v28;
    v29 = BYTE2(v23);
    if (BYTE2(v23) > 0x7Fu)
    {
      v30 = __maskrune(BYTE2(v23), 0x40000uLL);
      LODWORD(v23) = **(a1 + 64);
    }

    else
    {
      v30 = *(v25 + 4 * BYTE2(v23) + 60) & 0x40000;
    }

    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = 46;
    }

    v32 = BYTE1(v23);
    v33 = v25;
    if (BYTE1(v23) > 0x7Fu)
    {
      v34 = __maskrune(BYTE1(v23), 0x40000uLL);
      LOBYTE(v23) = **(a1 + 64);
    }

    else
    {
      v34 = *(v25 + 4 * BYTE1(v23) + 60) & 0x40000;
    }

    if (v34)
    {
      v35 = v32;
    }

    else
    {
      v35 = 46;
    }

    v36 = v23;
    if (v23 > 0x7Fu)
    {
      v37 = __maskrune(v23, 0x40000uLL);
    }

    else
    {
      v37 = *(v33 + 4 * v23 + 60) & 0x40000;
    }

    if (v37)
    {
      v38 = v36;
    }

    else
    {
      v38 = 46;
    }

    v39 = *(*(*(a1 + 32) + 8) + 24);
    v42[1] = 136316674;
    v43 = "endpointCentricPlugin_GetPropertyData_block_invoke";
    v44 = 1024;
    v45 = v40;
    v46 = 1024;
    v47 = v31;
    v48 = 1024;
    v49 = v35;
    v50 = 1024;
    v51 = v38;
    v52 = 2048;
    v53 = v39;
    v54 = 2112;
    v55 = Mutable;
    v27 = _os_log_send_and_compose_impl();
    LOBYTE(v20) = v42[0];
  }

  else
  {
    v27 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 1, v27, v27 != &v56, v20, 0, v21);
  CFRelease(Mutable);
  free(v9);
}

void __endpointCentricPlugin_GetPropertyData_block_invoke_16(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 64);
  Count = CFDictionaryGetCount(*(v2 + 72));
  if (v3)
  {
    v5 = Count + 1;
  }

  else
  {
    v5 = Count;
  }

  v6 = malloc_type_calloc(v5, 8uLL, 0x2004093837F09uLL);
  v7 = v6;
  v8 = *(a1 + 40);
  v9 = *(v8 + 64);
  if (v9)
  {
    *v6 = v9;
    v8 = *(a1 + 40);
    v9 = 1;
  }

  CFDictionaryGetKeysAndValues(*(v8 + 72), 0, &v6[v9]);
  if (v5 >= 1)
  {
    v10 = 1;
    v11 = v7;
    while (1)
    {
      v12 = *v11;
      v13 = *(*(CMBaseObjectGetVTable(*v11) + 24) + 8);
      v14 = v13 ? v13(v12) : 0;
      if (!FigCFEqual(**(a1 + 48), v14))
      {
        break;
      }

      v15 = *v11;
      v16 = *(*(CMBaseObjectGetVTable(*v11) + 16) + 8);
      if (!v16)
      {
        break;
      }

      v17 = v16(v15);
      if (v14)
      {
        goto LABEL_16;
      }

LABEL_17:
      if (v10 < v5)
      {
        ++v10;
        ++v11;
        if (!v17)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    v17 = 0;
    if (!v14)
    {
      goto LABEL_17;
    }

LABEL_16:
    CFRelease(v14);
    goto LABEL_17;
  }

  v17 = 0;
LABEL_21:
  v18 = *(a1 + 72);
  **(a1 + 56) = 4;
  if (v18 < 4)
  {
    v19 = 561211770;
  }

  else
  {
    v19 = 0;
    **(a1 + 64) = v17;
  }

  *(*(*(a1 + 32) + 8) + 24) = v19;

  free(v7);
}

@end