@interface SecItemUpdateTokenItemsForAccessGroups
@end

@implementation SecItemUpdateTokenItemsForAccessGroups

uint64_t ___SecItemUpdateTokenItemsForAccessGroups_block_invoke(uint64_t a1, CFTypeRef *a2)
{
  v2 = a1;
  if (*(a1 + 32))
  {
    allocator = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v4 = 0;
    v5 = @"accc";
    v6 = @"toid";
    v7 = @"v_Data";
    while (v4 < CFArrayGetCount(*(v2 + 32)))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 32), v4);
      Value = CFDictionaryGetValue(ValueAtIndex, v5);
      v10 = CFDictionaryGetValue(ValueAtIndex, v6);
      v11 = CFDictionaryGetValue(ValueAtIndex, v7);
      if (v10)
      {
        v12 = Value == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        goto LABEL_14;
      }

      v13 = v11;
      v49 = v4;
      v14 = v2;
      v15 = v7;
      v16 = v6;
      v17 = v5;
      v18 = Mutable;
      TypeID = CFDataGetTypeID();
      v12 = TypeID == CFGetTypeID(Value);
      Mutable = v18;
      v5 = v17;
      v6 = v16;
      v7 = v15;
      v2 = v14;
      v4 = v49;
      if (v12)
      {
        v24 = SecTokenItemValueCreate(v10, Value, v13, a2, v20, v21, v22, v23);
        if (!v24)
        {
          v45 = 0;
          if (Mutable)
          {
            goto LABEL_45;
          }

          return v45;
        }

        v25 = v24;
        MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, ValueAtIndex);
        CFDictionarySetValue(MutableCopy, v7, v25);
        CFDictionarySetValue(MutableCopy, @"tkid", *(v2 + 40));
        CFDictionaryRemoveValue(MutableCopy, v5);
        CFDictionaryRemoveValue(MutableCopy, v6);
        CFArrayAppendValue(Mutable, MutableCopy);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        CFRelease(v25);
      }

      else
      {
LABEL_14:
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }

      ++v4;
    }
  }

  else
  {
    Mutable = 0;
  }

  v27 = Mutable;
  if (*(v2 + 56) == 1)
  {
    if (!gSecurityd || (v28 = *(gSecurityd + 88)) == 0)
    {
      v29 = *(v2 + 40);
      if (*(v2 + 48))
      {
        v30 = *(v2 + 48);
      }

      else
      {
        v30 = MEMORY[0x1E695E0F0];
      }

      v31 = v27;
      if (v27)
      {
        v32 = v27;
      }

      else
      {
        v32 = MEMORY[0x1E695E0F0];
      }

      SecSecurityClientGet();
      v50 = MEMORY[0x1E69E9820];
      v51 = 3221225472;
      v52 = __cfstring_array_array_to_error_request_block_invoke;
      v53 = &__block_descriptor_56_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
      v54 = v29;
      v55 = v30;
      Mutable = v31;
      v56 = v32;
      v33 = 136;
LABEL_43:
      v40 = securityd_send_sync_and_do(v33, a2, &v50, 0);
      goto LABEL_44;
    }
  }

  else if (!gSecurityd || (v28 = *(gSecurityd + 80)) == 0)
  {
    v41 = *(v2 + 40);
    if (*(v2 + 48))
    {
      v42 = *(v2 + 48);
    }

    else
    {
      v42 = MEMORY[0x1E695E0F0];
    }

    v43 = v27;
    if (v27)
    {
      v44 = v27;
    }

    else
    {
      v44 = MEMORY[0x1E695E0F0];
    }

    SecSecurityClientGet();
    v50 = MEMORY[0x1E69E9820];
    v51 = 3221225472;
    v52 = __cfstring_array_array_to_error_request_block_invoke;
    v53 = &__block_descriptor_56_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v54 = v41;
    v55 = v42;
    Mutable = v43;
    v56 = v44;
    v33 = 98;
    goto LABEL_43;
  }

  v34 = *(v2 + 40);
  if (*(v2 + 48))
  {
    v35 = *(v2 + 48);
  }

  else
  {
    v35 = MEMORY[0x1E695E0F0];
  }

  v36 = v27;
  if (v27)
  {
    v37 = v27;
  }

  else
  {
    v37 = MEMORY[0x1E695E0F0];
  }

  v38 = SecSecurityClientGet();
  v39 = v34;
  Mutable = v36;
  v40 = v28(v39, v35, v37, v38, a2);
LABEL_44:
  v45 = v40;
  if (Mutable)
  {
LABEL_45:
    CFRelease(Mutable);
  }

  return v45;
}

@end