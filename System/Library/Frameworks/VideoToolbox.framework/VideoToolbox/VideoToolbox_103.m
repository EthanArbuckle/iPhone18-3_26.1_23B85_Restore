uint64_t VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest(void *a1, OpaqueCMBlockBuffer *a2, NSObject **a3, NSObject **a4, unint64_t a5)
{
  v19 = 0;
  result = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v19 + 1, &v19, 0);
  if (!result)
  {
    if ((v19 & 8) != 0)
    {
      v15 = 0;
      v16 = 0;
      if (a3 && a5 == 1)
      {
        v15 = *a3;
        v16 = *a4;
      }

      return VTParavirtualizationReplyClerkDeliverReply(a1[13], a2, v15, v16);
    }

    else
    {
      v11 = 0;
      if (a5 >= 5)
      {
        v12 = 5;
      }

      else
      {
        v12 = a5;
      }

      v13 = 0;
      if (a3 && a5)
      {
        v11 = malloc_type_calloc(v12, 8uLL, 0x2004093837F09uLL);
        v13 = malloc_type_calloc(v12, 8uLL, 0x100004000313F17uLL);
        if (v11)
        {
          memcpy(v11, a3, 8 * v12);
        }

        if (v13)
        {
          memcpy(v13, a4, 8 * v12);
        }
      }

      CFRetain(a1);
      CFRetain(a2);
      v14 = a1[12];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke;
      block[3] = &__block_descriptor_tmp_7;
      v18 = HIDWORD(v19);
      block[4] = a1;
      block[5] = a2;
      block[6] = v11;
      block[7] = v13;
      block[8] = v12;
      dispatch_async(v14, block);
      return 0;
    }
  }

  return result;
}

uint64_t vtParavirtualizationHostEncoderSession_sendMessageToGuestAndCopyReplySync(uint64_t a1, OpaqueCMBlockBuffer *a2, __int128 *a3, void *a4)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v14, &v16, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    if ((v16 & 2) != 0)
    {
      MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkPrepareForReply(*(a1 + 104), a2, &v15);
      if (!MessageTypeAndFlagsAndGuestUUID)
      {
        MessageTypeAndFlagsAndGuestUUID = vtParavirtualizationHostEncoderSession_callMessageToGuestHandler(a1, a2);
        if (!MessageTypeAndFlagsAndGuestUUID)
        {
          v9 = *(a1 + 104);
          v12 = *a3;
          v13 = *(a3 + 2);
          MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationReplyClerkWaitForReply(v9, v14, v15, &v12, a4, 0, 0);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_2();
      MessageTypeAndFlagsAndGuestUUID = FigSignalErrorAtGM();
    }
  }

  v10 = MessageTypeAndFlagsAndGuestUUID;
  VTParavirtualizationReplyClerkCleanUpReply(*(a1 + 104), v15);
  return v10;
}

uint64_t vtParavirtualizationHostEncoderSession_sendMessageToGuest(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v5[1] = 0;
  v6 = 0;
  v5[0] = 0;
  result = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v6, &v6 + 1, v5);
  if (!result)
  {
    if ((v6 & 0x200000000) != 0)
    {
      return FigSignalErrorAtGM();
    }

    else
    {
      return vtParavirtualizationHostEncoderSession_callMessageToGuestHandler(a1, a2);
    }
  }

  return result;
}

void vtParavirtualizationHostEncoderSessionCleanUpAfterEncode(uint64_t a1, CFArrayRef theArray)
{
  cf = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      MessageBoxToRelinquishSurfaceMappingIDs = VTParavirtualizationCreateMessageBoxToRelinquishSurfaceMappingIDs(theArray, 0, Count, &cf);
      v6 = cf;
      if (!MessageBoxToRelinquishSurfaceMappingIDs)
      {
        vtParavirtualizationHostEncoderSession_callMessageToGuestHandler(a1, cf);
        v6 = cf;
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_3(uint64_t a1, OpaqueCMBlockBuffer **a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (FigSignalErrorAtGM())
  {
    v8 = OUTLINED_FUNCTION_6_3();
    *a5 = v8;
    if (v8)
    {
      return 0;
    }

    vtParavirtualizationHostEncoderSession_sendMessageToGuest(a3, *a2);
  }

  return 1;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_6(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = FigSignalErrorAtGM();
  *a3 = v4;
  FigSimpleMutexUnlock();
  return v4 == 0;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_9(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = FigSignalErrorAtGM();
  *a3 = v4;
  FigSimpleMutexUnlock();
  return v4 == 0;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __VTParavirtualizationHostEncoderSessionDeliverMessageFromGuest_block_invoke_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtRegisterVideoEncoderInternal(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 4294954394;
  if (!a1 || !a2)
  {
    return result;
  }

  if (VTParavirtualizationIsRunningInGuest())
  {
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
  }

  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  v14 = Mutable;
  CFDictionarySetValue(Mutable, @"CMClassID", @"com.apple.videotoolbox.videoencoder");
  CFDictionarySetValue(v14, @"CMClassImplementationName", a2);
  if (a3)
  {
    CFDictionarySetValue(v14, @"CMClassImplementationID", a3);
  }

  CFDictionarySetValue(v14, @"VTCodecName", a1);
  CFDictionarySetValue(v14, @"VTEncoderName", a2);
  FigCFDictionarySetInt32();
  FigCFDictionarySetValue();
  if (FigCFEqual())
  {
    v15 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(v15, @"IORegistryRequiredKey", @"IOGVACodec");
    CFDictionarySetValue(v14, @"CMDependencies", v15);
    if (a5)
    {
LABEL_10:
      v16 = MEMORY[0x1E695E4C0];
LABEL_14:
      CFDictionarySetValue(v14, @"VTFactoryFunctionHasSpecificationArgument", *v16);
      FigRegistryAddItem();
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    if (a5)
    {
      goto LABEL_10;
    }
  }

  if (a6)
  {
    v16 = MEMORY[0x1E695E4D0];
    goto LABEL_14;
  }

LABEL_15:
  if (v15)
  {
    CFRelease(v15);
  }

  CFRelease(v14);
  return 0;
}

uint64_t VTParavirtualizationHostCopyEncoderListReply(OpaqueCMBlockBuffer *a1, CFTypeRef *a2)
{
  v12 = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
  cf = 0;
  theArray = 0;
  v9 = 0;
  OUTLINED_FUNCTION_6_2();
  VTParavirtualizationMessageGetUInt32();
  if (appended)
  {
    goto LABEL_16;
  }

  vtPopulateVideoEncoderRegistry();
  appended = FigRegistryCopyFilteredItemList();
  if (appended)
  {
    goto LABEL_16;
  }

  v6 = VTParavirtualizationCreateReplyAndByteStream(a1, 4, &cf, &v9);
  if (v6)
  {
    v7 = v6;
    goto LABEL_7;
  }

  appended = VTParavirtualizationMessageAppendCFPropertyList();
  if (appended)
  {
LABEL_16:
    v7 = appended;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_2();
  v7 = VTParavirtualizationMessageAppendUInt32();
  if (!v7)
  {
    *a2 = cf;
    cf = 0;
  }

LABEL_7:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v7;
}

uint64_t vtFilterRegistryItemForHardwareAcceleratedEncodersOnly()
{
  if (!FigRegistryItemCopyMatchingInfo())
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

uint64_t vtFilterRegistryItemByCodecTypeAndVideoEncoderSpecification(uint64_t a1)
{
  cf = 0;
  theDict = 0;
  context = *(a1 + 8);
  v29 = 1;
  v27 = 0;
  if (FigRegistryItemCopyMatchingInfo() || FigRegistryItemCopyDescription())
  {
    goto LABEL_29;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = CFDictionaryGetValue(v2, @"EncoderID") == 0;
    Value = CFDictionaryGetValue(*(a1 + 8), @"RequiredPropertySupport");
  }

  else
  {
    Value = 0;
    v3 = 1;
  }

  v5 = CFDictionaryGetValue(theDict, @"VTCodecType");
  v6 = v5;
  if (!v5)
  {
    goto LABEL_30;
  }

  if ((v7 = CFGetTypeID(v5), v7 != CFStringGetTypeID()) || !CFEqual(v6, *a1) || (v8 = *(a1 + 8), v9 = MEMORY[0x1E695E4D0], v8) && ((v10 = *MEMORY[0x1E695E4C0], v10 == CFDictionaryGetValue(v8, @"AllowParavirtualizedEncoder")) && (v11 = *v9, v11 == CFDictionaryGetValue(theDict, @"VTIsParavirtualized")) || (v12 = *(a1 + 8)) != 0 && (v13 = *v9, v13 == CFDictionaryGetValue(v12, @"RequireParavirtualizedEncoder")) && v10 == CFDictionaryGetValue(theDict, @"VTIsParavirtualized")))
  {
LABEL_29:
    v6 = 0;
LABEL_30:
    v17 = 0;
    Value = 0;
LABEL_31:
    v19 = 0;
    goto LABEL_32;
  }

  if (!v3)
  {
    goto LABEL_25;
  }

  FigCFDictionaryGetBooleanIfPresent();
  if (*(a1 + 18))
  {
    LOBYTE(valuePtr) = 0;
    FigCFDictionaryGetBooleanIfPresent();
  }

  if (FigCFEqual())
  {
    v20 = *v9;
    if (v20 != FigCFDictionaryGetBooleanValue())
    {
      goto LABEL_29;
    }
  }

  v26 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  VTAvoidHardwareEncoders();
  if (*(a1 + 17))
  {
    v14 = *v9;
    if (v14 == CFDictionaryGetValue(theDict, @"VTIsWrapperEncoder"))
    {
LABEL_25:
      v6 = 0;
      v17 = 0;
      Value = 0;
      goto LABEL_26;
    }
  }

  v15 = MEMORY[0x1E695E480];
  if (!Value)
  {
    v17 = 0;
    goto LABEL_55;
  }

  v16 = CFDictionaryGetValue(theDict, @"VTSupportedProfileArray");
  v17 = v16;
  if (!v16)
  {
    goto LABEL_54;
  }

  CFRetain(v16);
  valuePtr = 0;
  CFDictionaryGetValue(Value, @"ProfileLevel");
  if (FigCFEqual())
  {
    v18 = 1;
    valuePtr = 1;
  }

  else
  {
    v18 = 0;
  }

  if (FigCFEqual())
  {
    v18 = 2;
    valuePtr = 2;
  }

  if (FigCFEqual())
  {
    v18 = 3;
    valuePtr = 3;
  }

  if (FigCFEqual())
  {
    valuePtr = 4;
    goto LABEL_52;
  }

  if (!v18)
  {
LABEL_54:
    Value = 0;
    goto LABEL_55;
  }

LABEL_52:
  Value = CFNumberCreate(*v15, kCFNumberSInt32Type, &valuePtr);
  v32.length = CFArrayGetCount(v17);
  v32.location = 0;
  if (!CFArrayContainsValue(v17, v32, Value))
  {
    v6 = 0;
    goto LABEL_31;
  }

LABEL_55:
  v22 = CFDictionaryGetValue(theDict, @"VTRequiredSpecificationEntries");
  if (v27)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v6 = MutableCopy;
      CFDictionarySetValue(MutableCopy, @"EnableHardwareAcceleratedVideoEncoder", *v9);
      v22 = v6;
      goto LABEL_59;
    }
  }

  v6 = 0;
  if (!v22)
  {
LABEL_26:
    v19 = 1;
    goto LABEL_32;
  }

LABEL_59:
  v24 = CFGetTypeID(v22);
  if (v24 != CFDictionaryGetTypeID())
  {
    goto LABEL_26;
  }

  CFDictionaryApplyFunction(v22, vtCheckRequiredVideoEncoderSpecificationKey, &context);
  v19 = v29;
LABEL_32:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Value)
  {
    CFRelease(Value);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v19;
}

uint64_t vtCopyExpandedEncoderListForWrappers(const __CFArray *a1, uint64_t a2, CFMutableArrayRef *a3)
{
  v3 = 0;
  v4 = 0;
  if (a1)
  {
    Count = 0;
    Mutable = 0;
    if (!a3)
    {
      goto LABEL_13;
    }

    Count = CFArrayGetCount(a1);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      goto LABEL_20;
    }

    if (Count >= 1)
    {
      v3 = 0;
      v8 = 0;
      v4 = a1;
      while (!CFArrayGetValueAtIndex(a1, v8))
      {
        if (++v8 == Count)
        {
          goto LABEL_12;
        }
      }

      v9 = FigRegistryItemCopyMatchingInfo();
      if (v9)
      {
        goto LABEL_21;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_7();
LABEL_20:
      v9 = FigSignalErrorAtGM();
LABEL_21:
      v3 = v9;
      OUTLINED_FUNCTION_0_7();
      goto LABEL_13;
    }

    v3 = 0;
LABEL_12:
    OUTLINED_FUNCTION_0_7();
    *a3 = Mutable;
    Mutable = 0;
  }

  else
  {
    Count = 0;
    Mutable = 0;
  }

LABEL_13:
  if (Count)
  {
    CFRelease(Count);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v3;
}

uint64_t vtSortRegistryItemsByVideoEncoderRating()
{
  v14 = 0;
  theDict = 0;
  v12 = 0;
  v13 = 0;
  valuePtr = 0;
  if (FigRegistryItemCopyMatchingInfo() || FigRegistryItemCopyMatchingInfo())
  {
    v9 = 0;
    goto LABEL_32;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  Value = CFDictionaryGetValue(theDict, @"VTRating");
  v1 = Value;
  if (Value)
  {
    CFRetain(Value);
    v2 = CFGetTypeID(v1);
    if (v2 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr + 4);
    }
  }

  v3 = CFDictionaryGetValue(v14, @"VTRating");
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
    v5 = CFGetTypeID(v4);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
    }
  }

  if (HIDWORD(valuePtr) != valuePtr)
  {
    if (SHIDWORD(valuePtr) > valuePtr)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    goto LABEL_28;
  }

  v6 = 0;
  if (!FigRegistryItemCopyDescription() && v13)
  {
    v6 = CFDictionaryGetValue(v13, @"CMClassImplementationID");
  }

  if (!FigRegistryItemCopyDescription() && v12)
  {
    v7 = CFDictionaryGetValue(v12, @"CMClassImplementationID");
    if (v6 | v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    if (v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (v6 && v7)
    {
      v9 = CFStringCompare(v6, v7, 0);
      if (!v1)
      {
        goto LABEL_30;
      }

LABEL_29:
      CFRelease(v1);
      goto LABEL_30;
    }

LABEL_28:
    if (!v1)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v9 = v6 != 0;
  if (v1)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (v4)
  {
    CFRelease(v4);
  }

LABEL_32:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return -v9;
}

uint64_t VTCopySupportedPropertyForVideoEncoderID(uint64_t a1)
{
  theArray = 0;
  v6 = 0;
  cf = 0;
  if (!a1 || (vtPopulateVideoEncoderRegistry(), !sVideoEncoderRegistry))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_0();
    return FigSignalErrorAtGM();
  }

  v1 = FigRegistryCopyFilteredItemList();
  if (v1)
  {
    return v1;
  }

  return 4294954388;
}

BOOL vtFilterRegistryItemByEncoderID(uint64_t a1)
{
  if (FigRegistryItemCopyDescription() || FigRegistryItemCopyMatchingInfo())
  {
    return 0;
  }

  CFDictionaryGetValue(0, @"VTCodecType");
  FigCFDictionaryGetBooleanIfPresent();
  v3 = FigCFEqual();
  v2 = 0;
  if (a1 && !v3)
  {
    CFDictionaryGetValue(0, @"CMClassImplementationID");
    return FigCFEqual() != 0;
  }

  return v2;
}

uint64_t vtFilterRegistryItemWithPlatformRestrictions()
{
  if (FigRegistryItemCopyMatchingInfo())
  {
    return 1;
  }

  FigCFDictionaryGetBooleanIfPresent();
  CFDictionaryGetValue(0, @"VTCodecType");
  if (FigCFEqual())
  {
    return 0;
  }

  if (!VTParavirtualizationIsRunningInGuest())
  {
    return 1;
  }

  FigCFDictionaryGetBooleanIfPresent();
  return 1;
}

__CFDictionary *createInferredPropertiesForCodec(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"VTCodecType");
  v3 = CFDictionaryGetValue(a1, @"VTSupportedProfileArray");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFRetain(v3);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  CFStringGetCString(Value, buffer, 5, 0x600u);
  v8 = bswap32(*buffer);
  if (v8 == 1667524657 || v8 == 1667790435 || v8 == 1684895096 || v8 == 1685481521 || v8 == 1685481573 || v8 == 1718908520 || v8 == 1718908528 || v8 == 1751479857 || v8 == 1752589105 || v8 == 1836415073 || v8 == 1869117027 || v8 == 1902405681 || v8 == 1902405733 || v8 == 1902407032 || v8 == 1902667126 || v8 == 1902998904 || v8 == 1902671459)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v26 = Count;
      for (i = 0; i != v26; ++i)
      {
        FigCFArrayGetIntAtIndex();
      }
    }

    CFDictionarySetValue(Mutable, @"ProfileLevel", v7);
  }

  CFRelease(v4);
  if (v7)
  {
    CFRelease(v7);
  }

  return Mutable;
}

OSStatus VTCopySupportedPropertyDictionaryForEncoder(int32_t width, int32_t height, CMVideoCodecType codecType, CFDictionaryRef encoderSpecification, CFStringRef *encoderIDOut, CFDictionaryRef *supportedPropertiesOut)
{
  session = 0;
  v8 = *MEMORY[0x1E695E480];
  v9 = VTCompressionSessionCreate(*MEMORY[0x1E695E480], width, height, codecType, encoderSpecification, 0, 0, 0, 0, &session);
  if (v9)
  {
    goto LABEL_8;
  }

  if (!encoderIDOut)
  {
    if (!supportedPropertiesOut)
    {
      v11 = 0;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = VTSessionCopyProperty(session, @"EncoderID", v8, encoderIDOut);
  v11 = v10;
  if (supportedPropertiesOut && !v10)
  {
LABEL_7:
    v9 = VTSessionCopySupportedPropertyDictionary(session, supportedPropertiesOut);
LABEL_8:
    v11 = v9;
  }

LABEL_10:
  if (session)
  {
    CFRelease(session);
  }

  return v11;
}

void vtLoadParavirtualizedVideoEncoders()
{
  if (qword_1ED6D40D8 != -1)
  {
    dispatch_once(&qword_1ED6D40D8, &__block_literal_global_5);
  }

  if (VTParavirtualizationGuestInstallHandlerForUUID(&qword_1ED6D40E0, &__block_literal_global_85, 0))
  {
    return;
  }

  v28 = 0;
  v26 = 0;
  v27 = 0;
  cf = 0;
  v25 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1701733235, 1, &qword_1ED6D40E0, 0, &v27, &v26);
  if (appended)
  {
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_6_2();
  appended = VTParavirtualizationMessageAppendUInt32();
  if (appended)
  {
    goto LABEL_39;
  }

  v22 = kVTParavirtualizationDefaultReplyTimeout;
  v23 = 0;
  appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v27, &v22, &v25);
  if (appended)
  {
    goto LABEL_39;
  }

  appended = VTParavirtualizationMessageCopyCFPropertyList(v25, 744844899, &cf);
  if (appended)
  {
    goto LABEL_39;
  }

  if (!cf || (v1 = CFGetTypeID(cf), v1 != CFArrayGetTypeID()))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_7();
    appended = FigSignalErrorAtGM();
LABEL_39:
    v4 = appended;
    v2 = 0;
    goto LABEL_11;
  }

  v2 = cf;
  cf = 0;
  OUTLINED_FUNCTION_6_2();
  VTParavirtualizationMessageGetUInt32();
  v4 = v3;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v4)
  {
LABEL_34:
    if (!v2)
    {
      return;
    }
  }

  else
  {
    if (!v2)
    {
      return;
    }

    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = 0;
      v20 = *MEMORY[0x1E695E4D0];
      v6 = *MEMORY[0x1E695E480];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
        if (!ValueAtIndex)
        {
          break;
        }

        v8 = ValueAtIndex;
        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 != CFDictionaryGetTypeID())
        {
          break;
        }

        LODWORD(v22) = 0;
        LODWORD(v27) = 0;
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        Value = CFDictionaryGetValue(v8, @"VTCodecName");
        v11 = CFDictionaryGetValue(v8, @"CMClassImplementationName");
        v12 = CFDictionaryGetValue(v8, @"CMClassImplementationID");
        if (v20 == CFDictionaryGetValue(v8, @"Hide"))
        {
          v13 = 518;
        }

        else
        {
          v13 = 514;
        }

        v14 = CFStringCreateWithFormat(v6, 0, @"paravirtualized:%@", v11, v18, v19);
        v15 = CFStringCreateWithFormat(v6, 0, @"paravirtualized:%@", v12);
        v18 = v12;
        v19 = 0;
        if (!vtRegisterVideoEncoderWithSpecificationArgumentWithInfoKeysAndValues(v22, v27, Value, v14, v15, v13, v16, v17, @"VTHostEncoderID"))
        {
          if (v14)
          {
            CFRelease(v14);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          if (Count != ++v5)
          {
            continue;
          }
        }

        goto LABEL_34;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_7();
      FigSignalErrorAtGM();
    }
  }

  CFRelease(v2);
}

uint64_t __vtLoadParavirtualizedVideoEncoders_block_invoke_2(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v6 = xmmword_1ED6D40E0;
  v3 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], xmmword_1ED6D40E0);
  v5 = 0;
  if (!VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v5, 0, 0))
  {
    if (v5 == 1383295341)
    {
      if (!vtUnregisterParavirtualizedVideoEncoders())
      {
        _MergedGlobals_9 = 1;
      }
    }

    else if (v5 == 1115252001 && !vtUnregisterParavirtualizedVideoEncoders())
    {
      _MergedGlobals_9 = 1;
      VTParavirtualizationGuestRemoveHandlerForUUID(&v6);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return 0;
}

uint64_t vtFilterRegistryItemForParavirtualizedEncodersOnly()
{
  if (!FigRegistryItemCopyMatchingInfo())
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

uint64_t VTSelectAndCreateVideoEncoderInstanceInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTSelectAndCreateVideoEncoderInstanceInternal_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTSelectAndCreateVideoEncoderInstanceInternal_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCreateVideoEncoderInstanceFromEncoderID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationHostCopyDecoderCapabilitiesReply(OpaqueCMBlockBuffer *a1, CFTypeRef *a2)
{
  v9 = 0;
  cf = 0;
  VTParavirtualizationMessageGetSInt32();
  if (v4)
  {
    appended = v4;
  }

  else
  {
    DecoderCapabilitiesDictionary = vtCreateDecoderCapabilitiesDictionary(0, 1);
    v6 = VTParavirtualizationCreateReplyAndByteStream(a1, 4, &cf, &v9);
    if (v6 || (v6 = VTParavirtualizationMessageAppendCFDictionary(v9, 744776545, DecoderCapabilitiesDictionary), v6))
    {
      appended = v6;
      if (DecoderCapabilitiesDictionary)
      {
LABEL_7:
        CFRelease(DecoderCapabilitiesDictionary);
      }
    }

    else
    {
      appended = VTParavirtualizationMessageAppendUInt32();
      if (!appended)
      {
        *a2 = cf;
        cf = 0;
      }

      if (DecoderCapabilitiesDictionary)
      {
        goto LABEL_7;
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return appended;
}

uint64_t vtGetHEVCDecoderCapabilitiesForFormatDescription(const opaqueCMFormatDescription *a1, const __CFDictionary *a2, _BYTE *a3, char *a4)
{
  v37 = 0;
  valuePtr = 0;
  v35 = 0;
  if (!a2 || (Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0])) == 0 || (v8 = Extension, v9 = CFGetTypeID(Extension), v9 != CFDictionaryGetTypeID()) || (Value = CFDictionaryGetValue(v8, @"hvcC")) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
LABEL_41:
    HEVCParameterSetAtIndex = FigSignalErrorAtGM();
    goto LABEL_42;
  }

  v11 = Value;
  v12 = CFGetTypeID(Value);
  if (v12 == CFArrayGetTypeID())
  {
    CFArrayGetValueAtIndex(v11, 0);
  }

  else
  {
    CFGetTypeID(v11);
    CFDataGetTypeID();
  }

  v38 = 0;
  HEVCParameterSetAtIndex = FigHEVCBridge_GetHEVCParameterSetAtIndex();
  if (HEVCParameterSetAtIndex || (HEVCParameterSetAtIndex = FigHEVCBridge_GetSPSProfileTierLevel(), HEVCParameterSetAtIndex))
  {
LABEL_42:
    v27 = HEVCParameterSetAtIndex;
    LOBYTE(v18) = 0;
    v28 = 0;
    if (!a3)
    {
      goto LABEL_35;
    }

LABEL_34:
    *a3 = v18;
    goto LABEL_35;
  }

  v14 = *MEMORY[0x1E695E480];
  v15 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, &valuePtr + 1);
  if (!v15)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    goto LABEL_41;
  }

  v16 = v15;
  v17 = CFDictionaryGetValue(a2, @"VTSupportedProfiles");
  v18 = v17;
  if (!v17)
  {
LABEL_19:
    v27 = 0;
    goto LABEL_21;
  }

  v39.length = CFArrayGetCount(v17);
  v39.location = 0;
  if (!CFArrayContainsValue(v18, v39, v16))
  {
    LOBYTE(v18) = 0;
    goto LABEL_19;
  }

  v19 = CFDictionaryGetValue(a2, @"VTPerProfileSupport");
  if (!v19)
  {
    v27 = 0;
    LOBYTE(v18) = 1;
    goto LABEL_21;
  }

  v20 = v19;
  v21 = CFStringCreateWithFormat(v14, 0, @"%d", HIBYTE(valuePtr));
  if (!v21)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    v27 = FigSignalErrorAtGM();
    LOBYTE(v18) = 0;
LABEL_21:
    CFRelease(v16);
    v28 = v18;
    if (!a3)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v22 = v21;
  v23 = CFDictionaryGetValue(v20, v21);
  if (v23)
  {
    v24 = v23;
    v25 = CFDictionaryGetValue(v23, @"VTMaxDecodeLevel");
    v26 = CFDictionaryGetValue(v24, @"VTMaxPlaybackLevel");
    v34 = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v33 = 0;
    if (v25)
    {
      CFNumberGetValue(v25, kCFNumberSInt32Type, &v33);
      LOBYTE(v18) = v33 >= v35;
    }

    else
    {
      LOBYTE(v18) = 1;
    }

    v29 = v18;
    if (v26)
    {
      CFNumberGetValue(v26, kCFNumberSInt32Type, &v33);
      v29 = v33 >= v35;
    }

    v30 = CMVideoFormatDescriptionGetVideoDynamicRange() - 2;
    if (v34)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30 >= 9;
    }

    v28 = v31 && v29;
  }

  else
  {
    LOBYTE(v18) = 1;
    v28 = 1;
  }

  CFRelease(v16);
  CFRelease(v22);
  v27 = 0;
  if (a3)
  {
    goto LABEL_34;
  }

LABEL_35:
  if (a4)
  {
    *a4 = v28;
  }

  return v27;
}

BOOL VTDecoderCapabilitiesDictionaryAllowsHDR(const __CFDictionary *a1)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"VTIsHDRAllowedOnDevice");
  }

  else
  {
    Value = *MEMORY[0x1E695E4C0];
  }

  return Value == *MEMORY[0x1E695E4D0];
}

const void *vtCreateH264OrHEVCDecoderCapabilitiesDictionaryInternal(unsigned int a1, const void *a2)
{
  matched = VTCopyVideoDecoderRegistryMatchArrayForCodecType(a1);
  theArray = 0;
  cf = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = OUTLINED_FUNCTION_3_7();
  v7 = vtCopyCodecProfilesArrayAndDictionaryForEmbedded(a2, &theArray, &cf);
  context = 0;
  v21 = 0;
  v22 = 0;
  v8 = OUTLINED_FUNCTION_3_7();
  v9 = v8;
  v10 = MEMORY[0x1E695E4D0];
  v11 = MEMORY[0x1E695E4C0];
  if (v6)
  {
    if (v7)
    {
      if (!v8)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_7();
        v16 = FigSignalErrorAtGM();
LABEL_9:
        CFRelease(v6);
        v17 = v9;
        goto LABEL_10;
      }

      MutableCopy = CFArrayCreateMutableCopy(v5, 0, theArray);
      if (MutableCopy)
      {
        v13 = MutableCopy;
        if (FigIsHDRAllowedOnDevice())
        {
          v14 = v10;
        }

        else
        {
          v14 = v11;
        }

        CFDictionarySetValue(v9, @"VTIsHDRAllowedOnDevice", *v14);
        CFDictionarySetValue(v9, @"VTPerProfileSupport", v6);
        CFDictionarySetValue(v9, @"VTSupportedProfiles", v13);
        LOBYTE(v22) = vtIsHardwareCodecAvailable(a1, matched);
        v15 = theArray;
        context = cf;
        v21 = v6;
        v25.length = CFArrayGetCount(theArray);
        v25.location = 0;
        CFArrayApplyFunction(v15, v25, vtAddProfileToDict, &context);
        CFRelease(v6);
        v16 = 0;
        v6 = v13;
        goto LABEL_9;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_7();
      v16 = FigSignalErrorAtGM();
      goto LABEL_31;
    }

    v16 = 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_7();
    v16 = FigSignalErrorAtGM();
  }

  if (v9)
  {
LABEL_31:
    CFRelease(v9);
  }

  v9 = 0;
  v17 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (!v16)
  {
    v18 = FigCFDictionaryCreateMutableCopy();
    FigIsHDRAllowedOnDevice();
    FigCFDictionarySetValue();
    if (!matched)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v18 = 0;
  if (matched)
  {
LABEL_16:
    CFRelease(matched);
  }

LABEL_17:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v16 && v18)
  {
    CFRelease(v18);
    return 0;
  }

  return v18;
}

uint64_t vtCopyCodecProfilesArrayAndDictionaryForEmbedded(const void *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  ModelSpecificPropertyList = FigCreateModelSpecificPropertyList();
  if (!ModelSpecificPropertyList)
  {
    return 0;
  }

  v7 = ModelSpecificPropertyList;
  Value = CFDictionaryGetValue(ModelSpecificPropertyList, @"VideoCodecProfiles");
  if (Value && (v9 = CFDictionaryGetValue(Value, a1)) != 0 && (v10 = v9, (v11 = CFDictionaryGetValue(v9, @"SupportedProfiles")) != 0))
  {
    if (a2)
    {
      *a2 = CFRetain(v11);
    }

    if (a3)
    {
      *a3 = CFRetain(v10);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  CFRelease(v7);
  return v12;
}

void vtAddProfileToDict(const __CFNumber *a1, uint64_t a2)
{
  valuePtr = 0;
  if (a1)
  {
    if (a2)
    {
      v4 = *a2;
      v3 = *(a2 + 8);
      CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
      v5 = *MEMORY[0x1E695E480];
      v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", valuePtr);
      if (v6)
      {
        v7 = v6;
        Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v9 = Mutable;
          Value = CFDictionaryGetValue(v4, @"PerProfileConstraints");
          if (!Value || (v11 = CFDictionaryGetValue(Value, v7)) == 0 || (v12 = CFDictionaryGetValue(v11, @"MaxLevel")) == 0)
          {
            v12 = CFDictionaryGetValue(v4, @"MaxLevel");
          }

          if (*(a2 + 16))
          {
            CFDictionarySetValue(v9, @"VTIsHardwareAccelerated", *MEMORY[0x1E695E4D0]);
          }

          if (v12)
          {
            CFDictionarySetValue(v9, @"VTMaxDecodeLevel", v12);
          }

          CFDictionarySetValue(v3, v7, v9);
          CFRelease(v9);
        }

        CFRelease(v7);
      }
    }
  }
}

uint64_t vtCreateProfileSupportEntryDictionaryForVP9Embedded(__CFDictionary **a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954392;
  }

  v3 = Mutable;
  CFDictionarySetValue(Mutable, @"VTIsHardwareAccelerated", *MEMORY[0x1E695E4D0]);
  FigCFDictionarySetInt32();
  if (a1)
  {
    result = 0;
    *a1 = v3;
  }

  else
  {
    CFRelease(v3);
    return 0;
  }

  return result;
}

uint64_t vtCreateDecoderCapabilitiesDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateDecoderCapabilitiesDictionary_cold_2(CFUUIDBytes *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM();
  return VTParavirtualizationGuestRemoveHandlerForUUID(a1);
}

uint64_t vtCreateDecoderCapabilitiesDictionary_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t vtCreateDecoderCapabilitiesDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateDecoderCapabilitiesDictionary_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtCreateDecoderCapabilitiesDictionary_cold_6(BOOL *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result != 0;
  return result;
}

void vtCreateDecoderCapabilitiesDictionary_cold_7(__CFDictionary *a1, __CFDictionary **a2)
{
  matched = VTCopyVideoDecoderRegistryMatchArrayForCodecType(0x68766331u);
  value = 0;
  theDict = 0;
  if (vtCopyCodecProfilesArrayAndDictionaryForEmbedded(@"dvh1", &value, &theDict))
  {
    CFDictionarySetValue(a1, @"VTDoViSupportedProfiles", value);
    if (vtIsHardwareCodecAvailable(1752589105, matched))
    {
      CFDictionarySetValue(a1, @"VTDoViIsHardwareAccelerated", *MEMORY[0x1E695E4D0]);
    }

    v5 = CFDictionaryGetValue(theDict, @"SupportedLevels");
    if (v5)
    {
      CFDictionarySetValue(a1, @"VTDoViSupportedLevels", v5);
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (matched)
  {
    CFRelease(matched);
  }

  *a2 = a1;
}

uint64_t vtCreateDecoderCapabilitiesDictionary_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

uint64_t VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_4(BOOL *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result != 0;
  return result;
}

uint64_t VTCopyDecoderCapabilitiesDictionaryForCodecTypes_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTGetHEVCCapabilitesForFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTGetHEVCCapabilitesForFormatDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTGetHEVCCapabilitesForFormatDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTGetHEVCCapabilitesForFormatDescription_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTGetDecoderCapabilitesForFormatDescription_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTGetDecoderCapabilitesForFormatDescription_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTGetDecoderCapabilitesForFormatDescription_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTGetDecoderCapabilitesForFormatDescription_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t SRSEnhancementFilter_CreateInstance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 4294954394;
  }

  VTTemporalFilterPluginGetClassID();
  v3 = CMDerivedObjectCreate();
  if (!v3)
  {
    return 4294954392;
  }

  return v3;
}

uint64_t SRSEnhancementFilter_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 82))
  {
    return 4294954393;
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"FilterSourcePixelBufferAttributes"))
  {
    v8 = *(v7 + 56);
    if (v8)
    {
LABEL_4:
      DictionaryRepresentation = CFRetain(v8);
LABEL_5:
      v10 = DictionaryRepresentation;
LABEL_9:
      result = 0;
LABEL_10:
      *a4 = v10;
      return result;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  if (CFEqual(a2, @"FilterDestinationPixelBufferAttributes"))
  {
    v8 = *(v7 + 64);
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (CFEqual(a2, @"MaxLookBehind"))
  {
    v16 = 0;
    v12 = *MEMORY[0x1E695E480];
    p_valuePtr = &v16;
LABEL_15:
    DictionaryRepresentation = CFNumberCreate(v12, kCFNumberIntType, p_valuePtr);
    goto LABEL_5;
  }

  if (CFEqual(a2, @"MaxLookAhead"))
  {
    valuePtr = 0;
    v12 = *MEMORY[0x1E695E480];
    p_valuePtr = &valuePtr;
    goto LABEL_15;
  }

  if (CFEqual(a2, @"RealTime"))
  {
    result = 0;
    if (*(v7 + 80))
    {
      v14 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    v10 = *v14;
    goto LABEL_10;
  }

  if (CFEqual(a2, @"OutputDimensions"))
  {
    v17.width = *(v7 + 16);
    v17.height = *(v7 + 20);
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v17);
    goto LABEL_5;
  }

  if (CFEqual(a2, @"FilterParameters"))
  {
    v8 = *(v7 + 120);
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  return 4294954396;
}

uint64_t SRSEnhancementFilter_SetProperty(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 82))
  {
    return 4294954393;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"FilterSourcePixelBufferAttributes") || CFEqual(a2, @"FilterDestinationPixelBufferAttributes") || CFEqual(a2, @"MaxLookBehind") || CFEqual(a2, @"MaxLookAhead"))
  {
    return 4294954395;
  }

  if (CFEqual(a2, @"RealTime"))
  {
    result = 0;
    *(v6 + 80) = *MEMORY[0x1E695E4D0] == a3;
    return result;
  }

  if (!CFEqual(a2, @"FilterParameters"))
  {
    if (!CFEqual(a2, @"OutputDimensions"))
    {
      return 4294954396;
    }

    v14.width = 0.0;
    v14.height = 0.0;
    if (a3)
    {
      result = CGSizeMakeWithDictionaryRepresentation(a3, &v14);
      if (!result)
      {
        return result;
      }

      if (v14.width > 4096.0 || v14.height > 2160.0)
      {
        return 4294954394;
      }

      v8 = *(v6 + 8);
      width = v14.width;
      if (v8 != v14.width && 2 * v8 != width)
      {
        return 4294954394;
      }

      v11 = *(v6 + 12);
      height = v14.height;
      if (v11 != v14.height && 2 * v11 != height)
      {
        return 4294954394;
      }

      if (*(v6 + 16) != width || *(v6 + 20) != height)
      {
        *(v6 + 16) = width;
        *(v6 + 20) = height;
        srsFilter_calculateOutputDimensions(*(v6 + 8), *(v6 + 16), v6 + 24);
        result = *(v6 + 64);
        if (result)
        {
          CFRelease(result);
          result = 0;
          *(v6 + 64) = 0;
        }

        return result;
      }
    }

    return 0;
  }

  if (!a3)
  {
    result = 0;
    *(v6 + 120) = 0;
    return result;
  }

  result = CFRetain(a3);
  *(v6 + 120) = result;
  if (!result)
  {
    return result;
  }

  if (!*(v6 + 144))
  {
    return 0;
  }

  if (FigCFEqual())
  {
LABEL_17:
    CFDictionarySetValue(*(v6 + 144), *MEMORY[0x1E69A85A0], *MEMORY[0x1E69A85B0]);
    return 0;
  }

  result = FigCFEqual();
  if (result)
  {
    CFDictionarySetValue(*(v6 + 144), *MEMORY[0x1E69A8568], *MEMORY[0x1E69A8578]);
    goto LABEL_17;
  }

  return result;
}

uint64_t SRSEnhancementFilter_StartSession(uint64_t a1, uint64_t *a2, __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  v6 = 4294954394;
  if (a2 && (a3 - 32) <= 0xFE0 && (a3 & 1) == 0 && (BYTE4(a3) & 1) == 0 && (HIDWORD(a3) - 2161) >= 0xFFFFF7CF)
  {
    v7 = DerivedStorage;
    DerivedStorage[1] = a3;
    DerivedStorage[3] = a3;
    DerivedStorage[2] = a3;
    v8 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 4294954392;
    }

    v10 = Mutable;
    v11 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!v11)
    {
      v6 = 4294954392;
LABEL_17:
      CFRelease(v10);
      return v6;
    }

    v12 = v11;
    CFDictionaryAddValue(v10, *MEMORY[0x1E69A8560], v11);
    if (IOSurfaceAcceleratorCreate())
    {
      v13 = 0;
      v6 = 4294954392;
    }

    else
    {
      v7[11] = dispatch_group_create();
      v7[12] = FigDispatchQueueCreateWithPriority();
      v13 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v14 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v6 = v14;
      if (v14)
      {
        addNumberToCFArray(v14, 875704950);
        addNumberToCFArray(v6, 875704934);
        addNumberToCFArray(v6, 875836534);
        addNumberToCFArray(v6, 875836518);
        addNumberToCFArray(v6, 2037741171);
        addNumberToCFArray(v6, 2037741158);
        addNumberToCFArray(v6, 2016686642);
        addNumberToCFArray(v6, 2019963442);
        addNumberToCFArray(v6, 2016687156);
        addNumberToCFArray(v6, 2019963956);
        addNumberToCFArray(v6, 1983131952);
        addNumberToCFArray(v6, 1882468914);
        addNumberToCFArray(v6, 1885745714);
        addNumberToCFArray(v6, 1882469428);
        addNumberToCFArray(v6, 1885746228);
        addNumberToCFArray(v6, 875704438);
        addNumberToCFArray(v6, 875704422);
        addNumberToCFArray(v6, 2016686640);
        addNumberToCFArray(v6, 2019963440);
        addNumberToCFArray(v6, 1882468912);
        addNumberToCFArray(v6, 1885745712);
        CFDictionaryAddValue(v13, *MEMORY[0x1E6966130], v6);
        CFRelease(v6);
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        PixelBufferAttributesWithIOSurfaceSupport = FigCreatePixelBufferAttributesWithIOSurfaceSupport(v13, 0, v7 + 7);
        if (PixelBufferAttributesWithIOSurfaceSupport)
        {
          v6 = PixelBufferAttributesWithIOSurfaceSupport;
        }

        else
        {
          if (v13)
          {
            CFRelease(v13);
          }

          v16 = VTTemporalFilterPluginSessionSetInputPixelBufferAttributes(a2, v7[7]);
          if (!v16)
          {
            v16 = VTPixelTransferSessionCreate(v8, v7 + 6);
          }

          v6 = v16;
          v13 = 0;
        }
      }
    }

    CFRelease(v12);
    CFRelease(v10);
    v10 = v13;
    if (v13)
    {
      goto LABEL_17;
    }
  }

  return v6;
}

uint64_t ParavirtualizedMotionEstimationProcessor_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  v14 = 0;
  cf = 0;
  v13 = 0;
  HIDWORD(v11) = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1835233136, 1, DerivedStorage + 8, 0, &v16, &cf);
  if (appended || (appended = VTParavirtualizationMessageAppendCFPropertyList(), appended) || (appended = OUTLINED_FUNCTION_0_9(v16, &kVTParavirtualizationDefaultReplyTimeout, v9, v10, v11, v13, v14), appended) || (OUTLINED_FUNCTION_2_9(), appended))
  {
    v7 = appended;
  }

  else
  {
    v7 = v12;
    if (!v12)
    {
      v7 = VTParavirtualizationMessageCopyCFPropertyList(v14, 745955692, &v13);
      if (!v7)
      {
        *a4 = v13;
        v13 = 0;
      }
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v7;
}

uint64_t ParavirtualizedMotionEstimationProcessor_StartSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v16 = 0;
  cf = 0;
  HIDWORD(v12) = 0;
  *DerivedStorage = a3;
  appended = VTParavirtualizationCreateMessageAndByteStream(1835365236, 1, (DerivedStorage + 1), 0, &v16, &v15);
  if (appended || (appended = VTParavirtualizationMessageAppendCMVideoDimensions(), appended) || (appended = OUTLINED_FUNCTION_0_9(v16, &kVTParavirtualizationDefaultReplyTimeout, v9, v10, v11, v12, 0), appended))
  {
    v7 = appended;
  }

  else
  {
    OUTLINED_FUNCTION_1_9();
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v13;
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t ParavirtualizedMotionEstimationProcessor_CompleteFrames()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = 0;
  cf = 0;
  HIDWORD(v8) = 0;
  v1 = VTParavirtualizationCreateMessageAndByteStream(1835230834, 1, DerivedStorage + 8, 0, &v12, &v11);
  if (v1 || (v1 = OUTLINED_FUNCTION_0_9(v12, &kVTParavirtualizationCodecOperationReplyTimeout, v5, v6, v7, v8, 0), v1))
  {
    v3 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_1_9();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = v9;
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t ParavirtualizedMotionEstimationProcessor_CopySerializableProperties(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v16 = 0;
  v13 = 0;
  cf = 0;
  HIDWORD(v11) = 0;
  v5 = VTParavirtualizationCreateMessageAndByteStream(1836278134, 1, DerivedStorage + 8, 0, &v16, &v15);
  if (v5 || (v5 = OUTLINED_FUNCTION_0_9(v16, &kVTParavirtualizationDefaultReplyTimeout, v9, v10, v11, v13, cf), v5) || (OUTLINED_FUNCTION_2_9(), v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = v12;
    if (!v12)
    {
      v7 = VTParavirtualizationMessageCopyCFDictionary(cf, 745566831, &v13);
      v6 = v7;
      if (a3)
      {
        if (!v7)
        {
          *a3 = v13;
          v13 = 0;
        }
      }
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v6;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedMotionEstimationProcessor_ProcessFrames_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSerializedAtomDataBlockBufferForSampleBuffer(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, CFTypeRef *a4, CMBlockBufferRef *a5)
{
  if (a3)
  {
    v5 = a4;
    if (a4)
    {
      v7 = *a4;
    }

    else
    {
      v7 = 0;
    }

    v9 = MEMORY[0x193AE3010](&sVTParavirtualizationInitIndexedKeysOnce, vtParavirtualizationInitializeIndexedKeys);
    if (v9)
    {
      return v9;
    }

    v42 = 0;
    memset(v41, 0, sizeof(v41));
    blockBufferOut = 0;
    FormatDescription = CMSampleBufferGetFormatDescription(a3);
    DataBuffer = CMSampleBufferGetDataBuffer(a3);
    v12 = *MEMORY[0x1E695E480];
    appended = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, &blockBufferOut);
    if (appended)
    {
      goto LABEL_97;
    }

    appended = FigAtomWriterInitWithBlockBuffer();
    if (appended)
    {
      goto LABEL_97;
    }

    appended = FigAtomWriterBeginAtom();
    if (appended)
    {
      goto LABEL_97;
    }

    memset(&v43, 0, 24);
    CMSampleBufferGetOutputPresentationTimeStamp(&v43.duration, a3);
    if (v43.duration.flags)
    {
      appended = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock();
      if (appended)
      {
        goto LABEL_97;
      }
    }

    timingArrayEntriesNeededOut = 0;
    memset(&v43, 0, sizeof(v43));
    SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a3, 0, 0, &timingArrayEntriesNeededOut);
    if (SampleTimingInfoArray == -12736)
    {
LABEL_26:
      if (!DataBuffer)
      {
        v43.duration.value = 0;
        appended = vtParavirtualizationAtomWriterAppendNumSamples(a3);
        if (appended)
        {
LABEL_97:
          v15 = appended;
          goto LABEL_98;
        }

        v22 = &v43;
LABEL_40:
        appended = vtParavirtualizationAtomWriterAppendSampleSizeArray(a3, v41, &v22->duration.value);
        if (appended)
        {
          goto LABEL_97;
        }

        if (!v7 || !FigCFEqual())
        {
          appended = vtParavirtualizationAtomWriterAppendCMFormatDescription(FormatDescription);
          if (appended)
          {
            goto LABEL_97;
          }
        }

        if (FormatDescription)
        {
          v24 = CFRetain(FormatDescription);
        }

        else
        {
          v24 = 0;
        }

        Decryptor = FigSampleBufferGetDecryptor();
        if (Decryptor)
        {
          v26 = Decryptor;
          v39 = 0;
          v27 = *(*(CMBaseObjectGetVTable() + 16) + 280);
          if (v27)
          {
            v28 = v27(v26, &v39);
            if (v28)
            {
              v15 = v28;
              if (v28 != -12782)
              {
                goto LABEL_85;
              }
            }
          }

          v29 = v39;
          if (v39)
          {
            v30 = OUTLINED_FUNCTION_1_10();
            if (v30)
            {
              goto LABEL_103;
            }

            v30 = FigAtomWriterBeginAtom();
            if (v30)
            {
              goto LABEL_103;
            }

            v48 = v29;
            timingArrayEntriesNeededOut = 0;
            v31 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v31)
            {
              v31(v26, &timingArrayEntriesNeededOut);
              v31 = timingArrayEntriesNeededOut;
            }

            v46 = v31;
            v30 = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock();
            if (v30)
            {
              goto LABEL_103;
            }

            v45 = 0;
            v32 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (v32)
            {
              v32(v26, &v45);
              LODWORD(v32) = v45;
            }

            v44 = v32;
            v30 = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock();
            if (v30 || (v30 = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock(), v30) || (v30 = FigAtomWriterEndAtom(), v30))
            {
LABEL_103:
              v15 = v30;
              goto LABEL_85;
            }
          }
        }

        v33 = CMCopyDictionaryOfAttachments(v12, a3, 1u);
        if (v33 && ((v34 = OUTLINED_FUNCTION_1_10(), v34) || (v34 = FigAtomWriterBeginAtom(), v34) || (v34 = vtParavirtualizationAtomWriterAppendCFDictionary(v33, 0), v34) || (v34 = FigAtomWriterEndAtom(), v34)))
        {
          v15 = v34;
          v35 = 0;
        }

        else
        {
          v35 = CMCopyDictionaryOfAttachments(v12, a3, 0);
          if (v35 && ((v36 = OUTLINED_FUNCTION_1_10(), v36) || (v36 = FigAtomWriterBeginAtom(), v36) || (v36 = vtParavirtualizationAtomWriterAppendCFDictionary(v35, 0), v36) || (v36 = FigAtomWriterEndAtom(), v36)) || CMSampleBufferGetSampleAttachmentsArray(a3, 0) && ((v36 = OUTLINED_FUNCTION_1_10(), v36) || (v36 = FigAtomWriterBeginAtom(), v36) || (vtParavirtualizationAtomWriterAppendCFArray(), v36) || (v36 = FigAtomWriterEndAtom(), v36)))
          {
            v15 = v36;
            if (!v33)
            {
LABEL_83:
              if (v35)
              {
                CFRelease(v35);
              }

              goto LABEL_85;
            }
          }

          else
          {
            v37 = FigAtomWriterEndAtom();
            v15 = v37;
            if (a5 && !v37)
            {
              *a5 = blockBufferOut;
              blockBufferOut = 0;
            }

            if (!v33)
            {
              goto LABEL_83;
            }
          }
        }

        CFRelease(v33);
        goto LABEL_83;
      }

      v46 = 0;
      v43.duration.value = 0;
      DataLength = CMBlockBufferGetDataLength(DataBuffer);
      timingArrayEntriesNeededOut = 0;
      if (CMBlockBufferIsRangeContiguous(DataBuffer, 0, DataLength))
      {
        value = DataBuffer;
      }

      else
      {
        Contiguous = CMBlockBufferCreateContiguous(v12, DataBuffer, v12, 0, 0, DataLength, 1u, &v43);
        if (Contiguous)
        {
LABEL_35:
          v15 = Contiguous;
          if (v43.duration.value)
          {
            CFRelease(v43.duration.value);
          }

          if (v15)
          {
            goto LABEL_98;
          }

          appended = vtParavirtualizationAtomWriterAppendNumSamples(a3);
          if (appended)
          {
            goto LABEL_97;
          }

          v22 = &v46;
          goto LABEL_40;
        }

        value = v43.duration.value;
      }

      Contiguous = CMBlockBufferGetDataPointer(value, 0, 0, 0, &timingArrayEntriesNeededOut);
      if (!Contiguous)
      {
        Contiguous = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock();
      }

      goto LABEL_35;
    }

    v15 = SampleTimingInfoArray;
    if (SampleTimingInfoArray)
    {
      v16 = v5;
      v18 = 0;
LABEL_107:
      free(v18);
      v24 = 0;
      v5 = v16;
      goto LABEL_85;
    }

    if (timingArrayEntriesNeededOut == 1)
    {
      v16 = v5;
      v17 = CMSampleBufferGetSampleTimingInfoArray(a3, 1, &v43, &timingArrayEntriesNeededOut);
      v18 = 0;
      if (v17)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v16 = v5;
      if (timingArrayEntriesNeededOut < 2)
      {
        v18 = 0;
      }

      else
      {
        if (timingArrayEntriesNeededOut > 0x38E38E38E38E38ELL || !(72 * timingArrayEntriesNeededOut) || (v19 = malloc_type_malloc(72 * timingArrayEntriesNeededOut, 0x1000040FF89C88EuLL)) == 0)
        {
          v15 = FigSignalErrorAtGM();
          v18 = 0;
LABEL_25:
          free(v18);
          v5 = v16;
          if (v15)
          {
LABEL_98:
            v24 = 0;
LABEL_85:
            if (blockBufferOut)
            {
              CFRelease(blockBufferOut);
            }

            if (v5 && !v15 && v24)
            {
              if (*v5)
              {
                CFRelease(*v5);
              }

              v15 = 0;
              *v5 = v24;
            }

            else if (v24)
            {
              CFRelease(v24);
            }

            return v15;
          }

          goto LABEL_26;
        }

        v18 = v19;
        v17 = CMSampleBufferGetSampleTimingInfoArray(a3, timingArrayEntriesNeededOut, v19, &timingArrayEntriesNeededOut);
        if (v17)
        {
LABEL_106:
          v15 = v17;
          goto LABEL_107;
        }
      }
    }

    v15 = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock();
    goto LABEL_25;
  }

  return FigSignalErrorAtGM();
}

uint64_t vtParavirtualizationAtomWriterAppendSampleSizeArray(opaqueCMSampleBuffer *a1, uint64_t a2, CMItemCount *a3)
{
  v19 = 0;
  sizeArrayEntriesNeededOut = 0;
  SampleSizeArray = CMSampleBufferGetSampleSizeArray(a1, 0, 0, &sizeArrayEntriesNeededOut);
  if (SampleSizeArray == -12735)
  {
    appended = 0;
    goto LABEL_22;
  }

  appended = SampleSizeArray;
  v7 = sizeArrayEntriesNeededOut;
  if (a3)
  {
    *a3 = sizeArrayEntriesNeededOut;
  }

  if (v7 != 1)
  {
    if (v7 < 2)
    {
      if (!SampleSizeArray)
      {
        v10 = 0;
        v11 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      if (!(v7 >> 61))
      {
        if (8 * v7)
        {
          v12 = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
          if (v12)
          {
            v10 = v12;
            v13 = CMSampleBufferGetSampleSizeArray(a1, sizeArrayEntriesNeededOut, v12, &sizeArrayEntriesNeededOut);
            if (v13)
            {
LABEL_18:
              appended = v13;
LABEL_23:
              v11 = 0;
              goto LABEL_30;
            }

            v8 = v10;
            goto LABEL_13;
          }
        }
      }

      OUTLINED_FUNCTION_2_10();
      appended = FigSignalErrorAtGM();
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v8 = &v19;
  v9 = CMSampleBufferGetSampleSizeArray(a1, 1, &v19, &sizeArrayEntriesNeededOut);
  v10 = 0;
  if (!v9)
  {
LABEL_13:
    if (sizeArrayEntriesNeededOut)
    {
      if (sizeArrayEntriesNeededOut < 0)
      {
        goto LABEL_17;
      }

      if (sizeArrayEntriesNeededOut >> 62)
      {
        goto LABEL_17;
      }

      v14 = 4 * sizeArrayEntriesNeededOut;
      if (!(4 * sizeArrayEntriesNeededOut))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = malloc_type_malloc(v14, 0x100004052888210uLL);
    if (!v15)
    {
LABEL_17:
      OUTLINED_FUNCTION_2_10();
      v13 = FigSignalErrorAtGM();
      goto LABEL_18;
    }

    v11 = v15;
    v16 = sizeArrayEntriesNeededOut;
    if (sizeArrayEntriesNeededOut >= 1)
    {
      v17 = 0;
      do
      {
        *(v15 + v17) = v8[v17];
        ++v17;
      }

      while (v16 != v17);
    }

LABEL_29:
    appended = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock();
    goto LABEL_30;
  }

  appended = v9;
  v11 = 0;
LABEL_30:
  free(v10);
  free(v11);
  return appended;
}

uint64_t vtParavirtualizationAtomWriterAppendCMFormatDescription(const opaqueCMFormatDescription *a1)
{
  OUTLINED_FUNCTION_0_10();
  appended = FigAtomWriterInitWithParent();
  if (appended)
  {
    return appended;
  }

  appended = FigAtomWriterBeginAtom();
  if (appended)
  {
    return appended;
  }

  MediaType = CMFormatDescriptionGetMediaType(a1);
  appended = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock();
  if (appended)
  {
    return appended;
  }

  if (MediaType == 1635088502 || MediaType == 1986618469 || MediaType == 1885954932)
  {
    CMVideoFormatDescriptionGetDimensions(a1);
    CMFormatDescriptionGetMediaSubType(a1);
    appended = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock();
    if (appended)
    {
      return appended;
    }

    v5 = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock();
    if (v5)
    {
      return v5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_10();
    v5 = FigSignalErrorAtGM();
  }

  Extensions = CMFormatDescriptionGetExtensions(a1);
  if (Extensions)
  {
    v7 = Extensions;
    OUTLINED_FUNCTION_3_8();
    v8 = FigAtomWriterInitWithParent();
    if (!v8)
    {
      v8 = FigAtomWriterBeginAtom();
      if (!v8)
      {
        v8 = vtParavirtualizationAtomWriterAppendCFDictionary(v7, 0);
        if (!v8)
        {
          v8 = FigAtomWriterEndAtom();
        }
      }
    }

    v5 = v8;
  }

  if (!v5)
  {
    return FigAtomWriterEndAtom();
  }

  return v5;
}

uint64_t vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock()
{
  OUTLINED_FUNCTION_0_10();
  result = FigAtomWriterInitWithParent();
  if (!result)
  {
    result = FigAtomWriterBeginAtom();
    if (!result)
    {
      result = FigAtomWriterAppendData();
      if (!result)
      {
        return FigAtomWriterEndAtom();
      }
    }
  }

  return result;
}

uint64_t vtParavirtualizationAtomWriterAppendCFDictionary(const __CFDictionary *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_10();
  Count = FigCFDictionaryGetCount();
  v5 = Count;
  if (a2 || Count >= 1)
  {
    v9 = FigAtomWriterInitWithParent();
    if (!v9)
    {
      v9 = FigAtomWriterBeginAtom();
      if (!v9)
      {
        if (v5 < 1)
        {
          v6 = 0;
          v7 = 0;
LABEL_25:
          appended = FigAtomWriterEndAtom();
LABEL_26:
          v8 = appended;
          goto LABEL_29;
        }

        if (!(v5 >> 61))
        {
          if (8 * v5)
          {
            v10 = malloc_type_malloc(8 * v5, 0xC0040B8AA526DuLL);
            if (v10)
            {
              v6 = v10;
              v7 = malloc_type_malloc(8 * v5, 0xC0040B8AA526DuLL);
              if (v7)
              {
                CFDictionaryGetKeysAndValues(a1, v6, v7);
                v11 = 0;
                while (1)
                {
                  v12 = v6[v11];
                  if (!v12)
                  {
                    break;
                  }

                  v13 = CFGetTypeID(v6[v11]);
                  if (v13 != CFStringGetTypeID())
                  {
                    break;
                  }

                  v14 = v7[v11];
                  *&v15 = OUTLINED_FUNCTION_3_8();
                  v19[0] = v15;
                  appended = FigAtomWriterInitWithParent();
                  if (appended)
                  {
                    goto LABEL_26;
                  }

                  appended = FigAtomWriterBeginAtom();
                  if (appended)
                  {
                    goto LABEL_26;
                  }

                  value = 0;
                  if (CFDictionaryGetValueIfPresent(sVTParavirtualizationStringToKeyIndexDict, v12, &value))
                  {
                    v20 = value;
                    appended = vtParavirtualizationAtomWriterAppendAtomWithMemoryBlock();
                    if (appended)
                    {
                      goto LABEL_26;
                    }
                  }

                  else
                  {
                    appended = vtParavirtualizationAtomWriterAppendCFPropertyList();
                    if (appended)
                    {
                      goto LABEL_26;
                    }
                  }

                  vtParavirtualizationAtomWriterAppendCFType(v14, a2, v19);
                  if (appended)
                  {
                    goto LABEL_26;
                  }

                  appended = FigAtomWriterEndAtom();
                  if (appended)
                  {
                    goto LABEL_26;
                  }

                  if (v5 == ++v11)
                  {
                    goto LABEL_25;
                  }
                }

                OUTLINED_FUNCTION_2_10();
              }

              else
              {
                OUTLINED_FUNCTION_2_10();
              }

              appended = FigSignalErrorAtGM();
              goto LABEL_26;
            }
          }
        }

        OUTLINED_FUNCTION_2_10();
        v9 = FigSignalErrorAtGM();
      }
    }

    v8 = v9;
    v6 = 0;
    v7 = 0;
    goto LABEL_29;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
LABEL_29:
  free(v6);
  free(v7);
  return v8;
}

uint64_t vtParavirtualizationAtomWriterAppendCFPropertyList()
{
  result = FigAtomWriterInitWithParent();
  if (!result)
  {
    result = FigAtomWriterBeginAtom();
    if (!result)
    {
      result = FigCreateCFDataFromCFPropertyList();
      if (!result)
      {
        CFDataGetBytePtr(0);
        CFDataGetLength(0);
        result = FigAtomWriterAppendData();
        if (!result)
        {
          return FigAtomWriterEndAtom();
        }
      }
    }
  }

  return result;
}

void vtParavirtualizationAtomWriterAppendCFArray()
{
  OUTLINED_FUNCTION_0_10();
  if (v0)
  {
    v1 = v0;
    Count = CFArrayGetCount(v0);
    if (Count >= 1)
    {
      v3 = Count;
      if (!FigAtomWriterInitWithParent() && !FigAtomWriterBeginAtom())
      {
        v4 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
          if (vtParavirtualizationAtomWriterAppendCFType(ValueAtIndex, 1, &v6))
          {
            break;
          }

          if (v3 == ++v4)
          {
            FigAtomWriterEndAtom();
            return;
          }
        }
      }
    }
  }
}

uint64_t vtParavirtualizationAtomWriterAppendNULL()
{
  OUTLINED_FUNCTION_0_10();
  result = FigAtomWriterInitWithParent();
  if (!result)
  {
    result = FigAtomWriterBeginAtom();
    if (!result)
    {
      return FigAtomWriterEndAtom();
    }
  }

  return result;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCMFormatDescription()
{
  OUTLINED_FUNCTION_3_8();
  v0 = FigAtomStreamInitWithParent();
  if (v0)
  {
    return v0;
  }

  while (1)
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      break;
    }

    Atom = FigAtomStreamAdvanceToNextAtom();
    if (Atom == -12890)
    {
      OUTLINED_FUNCTION_2_10();
      return FigSignalErrorAtGM();
    }

    v3 = Atom;
    if (Atom)
    {
      return v3;
    }
  }

  return CurrentAtomTypeAndDataLength;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFPropertyList(uint64_t a1, void *a2)
{
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    CFPropertyListFromData = CurrentAtomTypeAndDataLength;
    v4 = 0;
    goto LABEL_8;
  }

  v4 = malloc_type_malloc(0, 0x6D49F62DuLL);
  if (!v4)
  {
    BBuf = FigSignalErrorAtGM();
LABEL_11:
    CFPropertyListFromData = BBuf;
    goto LABEL_8;
  }

  BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
  if (BBuf)
  {
    goto LABEL_11;
  }

  BBuf = CMBlockBufferCopyDataBytes(0, 0, 0, v4);
  if (BBuf)
  {
    goto LABEL_11;
  }

  CFPropertyListFromData = FigCreateCFPropertyListFromData();
  if (a2 && !CFPropertyListFromData)
  {
    *a2 = 0;
  }

LABEL_8:
  free(v4);
  return CFPropertyListFromData;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_2()
{
  dlerror();
  v0 = abort_report_np();
  return VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_3(v0);
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_11(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

void VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_12(uint64_t a1, CFArrayRef theArray, const __CFArray *a3)
{
  if (a1 >= 1)
  {
    for (i = 0; i != a1; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v8 = CFArrayGetValueAtIndex(a3, i);
      CFDictionaryApplyFunction(ValueAtIndex, vtParavirtualizationCopyEachEntry, v8);
    }
  }
}

void VTParavirtualizationCreateSampleBufferFromSerializedAtomDataBlockBuffer_cold_13(CFDictionaryRef theAttachments, CMAttachmentBearerRef target, CFDictionaryRef a3)
{
  if (theAttachments)
  {
    CMSetAttachments(target, theAttachments, 1u);
  }

  if (a3)
  {
    CMSetAttachments(target, a3, 0);
  }
}

uint64_t vtParavirtualizationAtomWriterAppendCFURL_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtParavirtualizationAtomWriterAppendCFURL_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFDictionary_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void vtParavirtualizationAtomDataReaderCopyCFType_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_4_7(a1, a2, a3, a4, a5, a6, a7, a8, v13, cf);
  *v9 = v10;
  v11 = cfa;
  if (!v10 && cfa)
  {
    v12 = CFGetTypeID(cfa);
    if (v12 == CFStringGetTypeID())
    {
      *v8 = CFURLCreateWithString(*MEMORY[0x1E695E480], cfa, 0);
    }

    v11 = cfa;
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

void vtParavirtualizationAtomDataReaderCopyCFType_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_4_7(a1, a2, a3, a4, a5, a6, a7, a8, v13, plist);
  *v9 = v10;
  v11 = plista;
  if (!v10)
  {
    if (plista)
    {
      v12 = CGColorSpaceCreateWithPropertyList(plista);
      v11 = plista;
    }

    else
    {
      v12 = 0;
    }

    *v8 = v12;
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t vtParavirtualizationAtomDataReaderCopyCFArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTIsBackgroundRunningSupportedForClientPID_cold_2()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t VTPixelTransferAppendSoftwareRotationNodeCallback(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = 0u;
  v17 = 0u;
  cf = 0;
  v9 = *(a6 + 26);
  CurrentDimensions = VTPixelTransferGraphGetCurrentDimensions(a1, a2, a3, a6, 0, &v16);
  if (CurrentDimensions)
  {
    return CurrentDimensions;
  }

  PixelBufferPoolAttributes = VTPixelTransferChainCreatePixelBufferPoolAttributes(*a2, (v9 & 3) != 0, *&v17, *(&v17 + 1), &cf);
  v12 = cf;
  if (PixelBufferPoolAttributes)
  {
    appended = PixelBufferPoolAttributes;
    if (!cf)
    {
      return appended;
    }

    goto LABEL_4;
  }

  appended = VTPixelTransferChainAppendRotationNode(*a6, *(a3 + 8));
  v12 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v12);
  }

  return appended;
}

uint64_t VTPixelTransferChainAppendRotationNode(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    VTPixelTransferNodeGetClassID();
    v2 = CMDerivedObjectCreate();
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  return v2;
}

uint64_t VTPixelRotationSessionSetMetalProperty(uint64_t a1, __CFString *a2, const void *a3, const void *a4, __CFDictionary *a5)
{
  v11 = 0;
  propertyValue = a3;
  if (a3 && !FigCFEqual())
  {
    v9 = *MEMORY[0x1E695E480];
  }

  else
  {
    v9 = *MEMORY[0x1E695E480];
    VTMetalTransferSessionCopyDefaultProperty(a2, *MEMORY[0x1E695E480], &propertyValue);
  }

  VTPixelRotationSessionCopyMetalProperty(a2, v9, a4, a5, &v11);
  if (!*(a1 + 136) || (result = VTSessionSetProperty(a4, a2, propertyValue), !result))
  {
    VTPRS_AddOrRemoveFromDictionary(a5, a2, propertyValue);
    return 0;
  }

  return result;
}

uint64_t VTPixelRotationSessionRotateSubImage(uint64_t a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3, double a4, double a5, double a6, double a7, float64_t a8, float64_t a9, float64_t a10, float64_t a11)
{
  v12 = 0;
  if (pixelBuffer && a3)
  {
    CVPixelBufferGetWidth(pixelBuffer);
    CVPixelBufferGetWidth(a3);
    CVPixelBufferGetHeight(pixelBuffer);
    CVPixelBufferGetHeight(a3);
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    printable4CC(PixelFormatType);
    v24 = CVPixelBufferGetPixelFormatType(a3);
    printable4CC(v24);
    if (a1 && FigAtomicIncrement32() != 1)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v26 = fig_log_call_emit_and_clean_up_after_send_and_compose();
      VTPixelTransferSessionThreadBearTrap(v26);
    }

    v27 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v12 = _VTPixelRotationSessionRotateSubImage(a1, pixelBuffer, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    if (*v27 == 1)
    {
      kdebug_trace();
    }
  }

  if (a1)
  {
    FigAtomicDecrement32();
  }

  return v12;
}

uint64_t VTPixelRotationSessionFlush(uint64_t a1, CVOptionFlags a2)
{
  v4 = *(a1 + 40);
  if (!v4 || (result = VTPixelTransferChainFlush(v4, a2), !result))
  {
    result = *(a1 + 136);
    if (result)
    {

      return VTMetalTransferSessionFlush(result, a2);
    }
  }

  return result;
}

void VTPixelRotationSessionCopyMetalBooleanProperty(const __CFString *a1, VTSessionRef session, int a3, _BYTE *a4)
{
  cf = 0;
  if (a4)
  {
    VTPixelRotationSessionCopyMetalProperty(a1, *MEMORY[0x1E695E480], session, a3, &cf);
    *a4 = FigGetBooleanFromCFTypeWithDefault();
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t VTPixelRotationSessionCopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void VTPixelRotationSessionCopySupportedPropertyDictionary_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM();
  CFRelease(a1);
}

uint64_t VTPixelRotationSessionCopySupportedPropertyDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTPixelRotationSessionSetProperty_cold_1(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 0;
  if (a2)
  {
    result = 0;
    if (*MEMORY[0x1E695E738] != a2)
    {
      v5 = *(a1 + 52);
      if (FigCFEqual())
      {
        v5 = 0;
        result = 0;
      }

      else if (FigCFEqual())
      {
        result = 0;
        v5 = 90;
      }

      else if (FigCFEqual())
      {
        result = 0;
        v5 = 180;
      }

      else if (FigCFEqual())
      {
        result = 0;
        v5 = 270;
      }

      else
      {
        fig_log_get_emitter();
        result = FigSignalErrorAtGM();
      }
    }
  }

  else
  {
    result = 0;
  }

  if (v5 != *(a1 + 52))
  {
    *(a1 + 52) = v5;
    *(a1 + 32) = 0;
  }

  *a3 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_CreateInstanceWithSpecification(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = Mutable;
  cf = 0;
  if (a5)
  {
    v13 = Mutable;
    FigNote_AllowInternalDefaultLogs();
    v5 = &gParavirtualizedVideoEncoder;
    v6 = @"pv_encoder_trace";
    OUTLINED_FUNCTION_5_6();
    fig_note_initialize_category_with_default_work_cf();
    OUTLINED_FUNCTION_5_6();
    fig_note_initialize_category_with_default_work_cf();
    VTVideoEncoderGetClassID();
    v14 = CMDerivedObjectCreate();
    if (v14)
    {
      v18 = v14;
      OUTLINED_FUNCTION_0_11();
      v12 = v13;
    }

    else
    {
      v12 = v13;
      OUTLINED_FUNCTION_3_9();
      v18 = FigSignalErrorAtGM();
      OUTLINED_FUNCTION_0_11();
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    v18 = 4294954394;
  }

  v15 = CFUUIDCreateString(v10, v5);
  if (dword_1EAD32120)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFRelease(v15);
  if (a3)
  {
    CFRelease(a3);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    CFRelease(a4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v18;
}

uint64_t ParavirtualizedVideoEncoder_Invalidate()
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v6 = 0;
  cf = 0;
  MessageAndByteStream = VTParavirtualizationCreateMessageAndByteStream(1701408374, 1, DerivedStorage + 64, 0, &cf, 0);
  if (MessageAndByteStream || (v9 = kVTParavirtualizationDefaultReplyTimeout, v10 = 0, MessageAndByteStream = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v9, &v6), MessageAndByteStream))
  {
    v3 = MessageAndByteStream;
  }

  else
  {
    OUTLINED_FUNCTION_4_8();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = v8;
    }
  }

  os_unfair_lock_lock((DerivedStorage + 16));
  *DerivedStorage = 0;
  *(DerivedStorage + 8) = 0;
  os_unfair_lock_unlock((DerivedStorage + 16));
  if (v3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v3;
}

uint64_t ParavirtualizedVideoEncoder_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  v15 = 0;
  cf = 0;
  v14 = 0;
  HIDWORD(v12) = 0;
  if (FigCFEqual())
  {
    v6 = *(DerivedStorage + 120);
    if (v6)
    {
      v6 = CFRetain(v6);
    }

    v7 = 0;
    *a4 = v6;
  }

  else
  {
    appended = VTParavirtualizationCreateMessageAndByteStream(1701015408, 1, DerivedStorage + 64, 0, &v17, &cf);
    if (appended || (appended = VTParavirtualizationMessageAppendCFPropertyList(), appended) || (appended = OUTLINED_FUNCTION_0_9(v17, &kVTParavirtualizationDefaultReplyTimeout, v10, v11, v12, v14, v15), appended) || (OUTLINED_FUNCTION_4_8(), appended))
    {
      v7 = appended;
    }

    else
    {
      v7 = v13;
      if (!v13)
      {
        v7 = VTParavirtualizationMessageCopyCFPropertyList(v15, 745955692, &v14);
        if (!v7)
        {
          *a4 = v14;
          v14 = 0;
        }
      }
    }
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v7;
}

uint64_t ParavirtualizedVideoEncoder_SetProperties(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = 0;
  v21 = 0;
  HIDWORD(v20) = 0;
  v5 = VTParavirtualizationCreateMessageAndByteStream(1701672300, 1, DerivedStorage + 64, 0, &v23, &v22);
  if (v5)
  {
    v12 = v5;
  }

  else
  {
    CMBaseObject = VTVideoEncoderGetCMBaseObject(a1);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = FigCFDictionaryCopyArrayOfKeys();
    Count = FigCFDictionaryGetCount();
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
        Value = CFDictionaryGetValue(a2, ValueAtIndex);
        cf[0] = 0;
        v15 = paravirtualizedVideoEncoder_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(CMBaseObject, ValueAtIndex, Value, cf);
        if (v15 == -19096)
        {
          if (v10 == 1)
          {
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            Mutable = 0;
            if (!v8)
            {
              goto LABEL_19;
            }

LABEL_18:
            CFRelease(v8);
            goto LABEL_19;
          }
        }

        else
        {
          if (v12)
          {
            v12 = v12;
          }

          else
          {
            v12 = v15;
          }

          if (!v15)
          {
            FigCFDictionarySetValue();
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }

        if (v10 == ++v11)
        {
          goto LABEL_17;
        }
      }
    }

    v12 = 0;
LABEL_17:
    if (v8)
    {
      goto LABEL_18;
    }

LABEL_19:
    if (v12)
    {
LABEL_25:
      if (!Mutable)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    appended = VTParavirtualizationMessageAppendCFDictionary(v22, 745566831, Mutable);
    if (!appended)
    {
      appended = OUTLINED_FUNCTION_0_9(v23, &kVTParavirtualizationDefaultReplyTimeout, *cf, cf[2], cf[3], v20, v21);
      if (!appended)
      {
        OUTLINED_FUNCTION_4_8();
        if (v17)
        {
          v12 = v17;
        }

        else
        {
          v12 = HIDWORD(v20);
        }

        goto LABEL_25;
      }
    }

    v12 = appended;
    if (Mutable)
    {
LABEL_26:
      CFRelease(Mutable);
    }
  }

LABEL_27:
  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return v12;
}

uint64_t ParavirtualizedVideoEncoder_CopySerializableProperties(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v16 = 0;
  v13 = 0;
  cf = 0;
  HIDWORD(v11) = 0;
  v5 = VTParavirtualizationCreateMessageAndByteStream(1702060406, 1, DerivedStorage + 64, 0, &v16, &v15);
  if (v5 || (v5 = OUTLINED_FUNCTION_0_9(v16, &kVTParavirtualizationDefaultReplyTimeout, v9, v10, v11, v13, cf), v5) || (OUTLINED_FUNCTION_4_8(), v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = v12;
    if (!v12)
    {
      v7 = VTParavirtualizationMessageCopyCFDictionary(cf, 745566831, &v13);
      v6 = v7;
      if (a3)
      {
        if (!v7)
        {
          *a3 = v13;
          v13 = 0;
        }
      }
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v6;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_HandleMessageFromHost_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL paravirtualizedVideoEncoder_HandleMessageFromHost_cold_9(uint64_t a1, _DWORD *a2)
{
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t paravirtualizedVideoEncoder_forgetPendingFramePixelBufferByUUID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_lookupRetainAndForgetPendingTilePixelBufferByUUID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_lookupRetainAndForgetPendingTilePixelBufferByUUID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeFrame_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeFrame_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeFrame_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeTile_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRPerFrameMetadataGenerationSessionCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRPerFrameMetadataGenerationSessionAttachMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTHDRPerFrameMetadataGenerationSessionAttachMetadata_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTHDRPerFrameMetadataGenerationSessionAttachMetadata_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTRestrictVideoDecoders(unsigned int a1, unsigned int *a2, CFIndex a3)
{
  if (VTHasVideoDecoderRegistryBeenCreated() || (a1 & 1) == 0 || (a1 & 2) == 0 || (a1 & 4) == 0 || (a1 & 8) == 0 || qword_1ED6D4150 || dword_1ED6D4148)
  {
LABEL_33:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    goto LABEL_30;
  }

  if ((byte_1ED6D4143 & 1) == 0 && (byte_1ED6D4142 & 1) == 0 && (byte_1ED6D4141 & 1) == 0 && (_MergedGlobals_10 & 1) == 0 && (byte_1ED6D4144 & 1) == 0 && byte_1ED6D4145 != 1)
  {
    if ((a1 & 0x40) == 0 || a3)
    {
      if (a2)
      {
        v6 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], a3, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          return 0;
        }

        v8 = Mutable;
        if (a3 >= 1)
        {
          do
          {
            v9 = *a2++;
            *bytes = bswap32(v9);
            v10 = CFStringCreateWithBytes(v6, bytes, 4, 0x600u, 0);
            if (!v10)
            {
              return 0;
            }

            v11 = v10;
            CFArrayAppendValue(v8, v10);
            CFRelease(v11);
          }

          while (--a3);
        }

        qword_1ED6D4150 = v8;
        v12 = dword_1ED6D4148;
      }

      else
      {
        v12 = 0;
      }

      dword_1ED6D4148 = v12 | a1;
      VTSetVideoDecoderRestrictions(v12 | a1);
      return 0;
    }

    goto LABEL_33;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM();
  fig_log_get_emitter();
LABEL_30:

  return FigSignalErrorAtGM();
}

uint64_t currentProcessHasTrueBooleanEntitlement_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t VTApplyRestrictions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTApplyRestrictions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dsrxpc_copyPixelBufferRecipient(CFTypeRef *a1)
{
  v2 = FigSimpleMutexLock();
  if (v2)
  {
    v4 = v2;
    goto LABEL_13;
  }

  v3 = qword_1ED6D4198;
  if (!qword_1ED6D4198)
  {
    updated = FigXPCCreateBasicMessage();
    if (updated || (updated = FigXPCRemoteClientSendSyncMessageCreatingReply(), updated) || (updated = FigXPCCreateBasicMessage(), updated) || (updated = FigPixelBufferRecipientCreateWithXPCMessage1AndUpdateXPCMessage2(), updated) || (updated = FigXPCRemoteClientSendSyncMessage(), updated))
    {
      v4 = updated;
      goto LABEL_12;
    }

    v3 = 0;
    qword_1ED6D4198 = 0;
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v4 = 0;
  *a1 = CFRetain(v3);
LABEL_12:
  FigSimpleMutexUnlock();
LABEL_13:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRelease();
  return v4;
}

uint64_t dsrxpc_copyDictionary()
{
  OUTLINED_FUNCTION_9_3();
  v0 = FigXPCCreateBasicMessage();
  if (!v0)
  {
    v0 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    if (!v0)
    {
      v0 = FigXPCMessageCopyCFDictionary();
    }
  }

  v1 = v0;
  FigXPCRelease();
  FigXPCRelease();
  return v1;
}

uint64_t VTDecompressionSessionRemoteXPC_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (!a1 || *(a1 + 24) || *(a1 + 25) || *(a1 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_0();

    return FigSignalErrorAtGM();
  }

  if (CFEqual(a2, @"PixelBufferPool"))
  {
    pixelBufferAttributes = 0;
    valuePtr = 0;
    FigSimpleMutexLock();
    v16 = VTDecompressionSessionRemoteXPC_CopyProperty(a1, @"PoolPixelBufferAttributesSeed", a3, &valuePtr);
    if (!v16)
    {
      if (FigCFEqual())
      {
LABEL_25:
        if (pixelBufferAttributes && !*(a1 + 152))
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v17 = Mutable;
          if (pixelBufferAttributes)
          {
            CFDictionarySetValue(Mutable, *MEMORY[0x1E6966170], @"dsrxpc_cloned_pool");
            v19 = CVPixelBufferPoolCreate(a3, v17, pixelBufferAttributes, (a1 + 152));
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_19_0();
            v19 = FigSignalErrorAtGM();
          }

          v12 = v19;
        }

        else
        {
          v17 = 0;
          v12 = 0;
        }

        goto LABEL_31;
      }

      v20 = *(a1 + 144);
      if (v20)
      {
        CFRelease(v20);
        *(a1 + 144) = 0;
      }

      v16 = VTDecompressionSessionRemoteXPC_CopyProperty(a1, @"PoolPixelBufferAttributes", a3, &pixelBufferAttributes);
      if (!v16)
      {
        if (pixelBufferAttributes)
        {
          v21 = *(a1 + 152);
          if (v21)
          {
            CFRelease(v21);
            *(a1 + 152) = 0;
          }
        }

        v22 = *(a1 + 144);
        v23 = valuePtr;
        *(a1 + 144) = valuePtr;
        if (v23)
        {
          CFRetain(v23);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        goto LABEL_25;
      }
    }

    v12 = v16;
    v17 = 0;
LABEL_31:
    FigSimpleMutexUnlock();
    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    if (pixelBufferAttributes)
    {
      CFRelease(pixelBufferAttributes);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v12)
    {
      return v12;
    }

    v11 = *(a1 + 152);
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    goto LABEL_18;
  }

  if (CFEqual(a2, @"NumberOfFramesBeingDecoded"))
  {
    if (*(a1 + 40))
    {
      FigSimpleMutexLock();
      v8 = *(a1 + 40);
      if (v8 && CFArrayGetCount(v8) >= 1)
      {
        OUTLINED_FUNCTION_13_2();
        v9 = 0;
        do
        {
          v9 += *(CFArrayGetValueAtIndex(*(a1 + 40), a3) + 4);
          OUTLINED_FUNCTION_12_2();
        }

        while (!v10);
      }

      else
      {
        LODWORD(v9) = 0;
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      LODWORD(v9) = 0;
    }

    LODWORD(valuePtr) = v9;
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
LABEL_18:
    v12 = 0;
    *a4 = v11;
    return v12;
  }

  v14 = qword_1ED6D4188;
  v15 = *(a1 + 16);

  return MEMORY[0x1EEDBE768](v14, v15, a2, a4);
}

uint64_t VTDecompressionSessionRemoteXPC_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && !*(a1 + 24) && !*(a1 + 25) && !*(a1 + 28))
  {
    if (FigCFEqual())
    {
      v7 = (a1 + 208);
      v6 = *(a1 + 208);
      if (!v6)
      {
LABEL_23:
        v10 = qword_1ED6D4188;
        v11 = *(a1 + 16);

        return MEMORY[0x1EEDBE770](v10, v11, a2, a3);
      }

LABEL_7:
      CFRelease(v6);
      *v7 = 0;
      goto LABEL_23;
    }

    if (FigCFEqual())
    {
      if (a3)
      {
        FigCFNumberGetSInt32();
        if (*(a1 + 248))
        {
          result = FigOSEventLinkRemoteSetMessageHandlingThreadMachThreadPriority();
          if (result)
          {
            return result;
          }

          goto LABEL_23;
        }

        v9 = a1;
LABEL_22:
        result = dsrxpc_prepareForCallsOfDecodeFrameFromConsistentThread(v9);
        if (result)
        {
          return result;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (!FigCFEqual())
      {
        goto LABEL_23;
      }

      if (a3)
      {
        FigCFNumberGetUInt32();
        if (*(a1 + 248))
        {
          result = FigOSEventLinkRemoteSetMessageHandlingThreadFigThreadPriority();
          if (result)
          {
            return result;
          }

          goto LABEL_23;
        }

        v9 = a1;
        goto LABEL_22;
      }
    }

    v7 = (a1 + 248);
    v6 = *(a1 + 248);
    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_1();

  return FigSignalErrorAtGM();
}

uint64_t dsrxpc_prepareForCallsOfDecodeFrameFromConsistentThread(uint64_t a1)
{
  if (*(a1 + 248))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    return FigSignalErrorAtGM();
  }

  if (qword_1ED6D41B0 != -1)
  {
    dispatch_once(&qword_1ED6D41B0, &__block_literal_global_34_0);
  }

  if (!_MergedGlobals_11)
  {
    return 0;
  }

  v2 = FigXPCRemoteClientCopyPrimaryConnection();
  if (v2)
  {
    return v2;
  }

  AssociatedEventLink = FigXPCConnectionCreateAssociatedEventLink();
  if (!AssociatedEventLink)
  {
    *(a1 + 248) = 0;
  }

  return AssociatedEventLink;
}

uint64_t VTDecompressionSessionRemoteXPC_SetProperties()
{
  OUTLINED_FUNCTION_14_2();
  if (v1 || *(v0 + 25) || *(v0 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v3 = FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    v2 = FigXPCCreateBasicMessage();
    if (v2 || (v2 = FigXPCMessageSetCFDictionary(), v2))
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessageCreatingReply();
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v3;
}

uint64_t VTDecompressionSessionRemoteXPC_FinishDelayedFrames(uint64_t a1)
{
  v3 = v2;
  if (*(a1 + 24) || *(a1 + 25) || *(a1 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    v5 = FigSignalErrorAtGM();
LABEL_15:
    v6 = v5;
    goto LABEL_8;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
    goto LABEL_15;
  }

  v5 = FigXPCRemoteClientSendSyncMessage();
  if (v5)
  {
    goto LABEL_15;
  }

  if (!*(a1 + 25))
  {
    OUTLINED_FUNCTION_8_3();
    do
    {
      if (*(a1 + 28))
      {
        break;
      }

      if (FigSemaphoreWaitRelative() != v1)
      {
        break;
      }

      v3 *= 2;
    }

    while (!*(a1 + 25));
  }

  v6 = *(a1 + 96);
  *(a1 + 96) = 0;
LABEL_8:
  FigXPCRelease();
  return v6;
}

uint64_t VTDecompressionSessionRemoteXPC_FlushPixelBufferPool(uint64_t a1)
{
  if (*(a1 + 24) || *(a1 + 25) || *(a1 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v2 = FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    v1 = FigXPCCreateBasicMessage();
    if (v1)
    {
      v2 = v1;
    }

    else
    {
      v2 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return v2;
}

BOOL VTDecompressionSessionRemoteXPC_CanAcceptFormatDescription()
{
  OUTLINED_FUNCTION_14_2();
  if (v1 || *(v0 + 25) || *(v0 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    FigSignalErrorAtGM();
LABEL_10:
    v2 = 0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_9_3();
  if (FigXPCCreateBasicMessage() || FigXPCMessageSetFormatDescription() || FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    goto LABEL_10;
  }

  v2 = xpc_dictionary_get_BOOL(xdict, "CanacceptFormat");
LABEL_8:
  FigXPCRelease();
  FigXPCRelease();
  return v2;
}

uint64_t dsrxpc_waitForAsynchronousFrames(uint64_t a1)
{
  v3 = v2;
  if (*(a1 + 24) || *(a1 + 25))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    v5 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  if (*(a1 + 248) && MEMORY[0x193AE2FD0]() == *(a1 + 264))
  {
    OUTLINED_FUNCTION_7_3();
    v7 = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
    v3 = v7;
    if (!v7)
    {
      goto LABEL_9;
    }

    if (v7 == -19428)
    {
      FigOSEventLinkRemoteInvalidate();
      v3 = 4294947868;
      goto LABEL_9;
    }
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5 || (v5 = FigXPCRemoteClientSendSyncMessage(), v5))
  {
LABEL_19:
    v3 = v5;
    goto LABEL_9;
  }

  if (!*(a1 + 25))
  {
    OUTLINED_FUNCTION_8_3();
    do
    {
      if (*(a1 + 28))
      {
        break;
      }

      if (FigSemaphoreWaitRelative() != v1)
      {
        break;
      }

      v3 *= 2;
    }

    while (!*(a1 + 25));
  }

  v3 = *(a1 + 80);
  *(a1 + 80) = 0;
LABEL_9:
  FigXPCRelease();
  return v3;
}

uint64_t VTDecompressionSessionRemoteXPC_CopyBlackPixelBuffer()
{
  v10 = 0;
  v11 = 0;
  OUTLINED_FUNCTION_14_2();
  if (v2 || *(v0 + 25) || *(v0 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    v4 = FigSignalErrorAtGM();
LABEL_16:
    v6 = v4;
    goto LABEL_10;
  }

  v3 = v1;
  v4 = FigXPCCreateBasicMessage();
  if (v4)
  {
    goto LABEL_16;
  }

  v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v4)
  {
    goto LABEL_16;
  }

  v4 = dsrxpc_copyPixelBufferRecipient(&v8);
  if (v4)
  {
    goto LABEL_16;
  }

  v5 = FigPixelBufferRecipientCopyPixelBufferFromXPCMessage();
  v6 = v5;
  if (v3 && !v5)
  {
    *v3 = cf;
    cf = 0;
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

uint64_t VTDecompressionSessionRemoteXPC_GetMinOutputPresentationTimeStampOfFramesBeingDecoded@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E6960C70];
  *a1 = *MEMORY[0x1E6960C70];
  *(a1 + 16) = *(v2 + 16);
  OUTLINED_FUNCTION_14_2();
  if (v4 || *(v3 + 25) || *(v3 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_9_3();
    if (!FigXPCCreateBasicMessage() && !FigXPCRemoteClientSendSyncMessageCreatingReply())
    {
      FigXPCMessageGetCMTime();
    }
  }

  FigXPCRelease();
  return FigXPCRelease();
}

uint64_t VTDecompressionSessionRemoteXPC_Invalidate(uint64_t a1)
{
  v4[5] = 0;
  if (!*(a1 + 28))
  {
    dsrxpc_waitForAsynchronousFrames(a1);
  }

  if (FigAtomicCompareAndSwap32())
  {
    if (!*(a1 + 24) && !FigXPCCreateBasicMessage())
    {
      FigXPCRemoteClientSendAsyncMessage();
    }

    FigXPCRemoteClientDisassociateObject();
    if (!*(a1 + 224))
    {
      FigStopMonitoringMediaServicesProcessDeath();
    }

    if (*(a1 + 56))
    {
      FigSemaphoreSignal();
    }

    if (*(a1 + 72))
    {
      FigSemaphoreSignal();
    }

    if (*(a1 + 88))
    {
      FigSemaphoreSignal();
    }

    if (*(a1 + 104))
    {
      FigSemaphoreSignal();
    }

    if (*(a1 + 128) && *(a1 + 120))
    {
      OUTLINED_FUNCTION_7_3();
      v4[1] = 0x40000000;
      v4[2] = __VTDecompressionSessionRemoteXPC_Invalidate_block_invoke;
      v4[3] = &__block_descriptor_tmp_6_1;
      v4[4] = a1;
      dispatch_sync(v2, v4);
    }
  }

  return FigXPCRelease();
}

uint64_t VTDecompressionSessionRemoteXPC_FinishDelayedTiles(uint64_t a1)
{
  v3 = v2;
  if (*(a1 + 24) || *(a1 + 25) || *(a1 + 28))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_1();
    v5 = FigSignalErrorAtGM();
LABEL_15:
    v6 = v5;
    goto LABEL_8;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
    goto LABEL_15;
  }

  v5 = FigXPCRemoteClientSendSyncMessage();
  if (v5)
  {
    goto LABEL_15;
  }

  if (!*(a1 + 25))
  {
    OUTLINED_FUNCTION_8_3();
    do
    {
      if (*(a1 + 28))
      {
        break;
      }

      if (FigSemaphoreWaitRelative() != v1)
      {
        break;
      }

      v3 *= 2;
    }

    while (!*(a1 + 25));
  }

  v6 = *(a1 + 112);
  *(a1 + 112) = 0;
LABEL_8:
  FigXPCRelease();
  return v6;
}

uint64_t VTDecompressionSessionRemoteXPC_SetMultiImageCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && !*(a1 + 192))
  {
    *(a1 + 192) = a2;
    *(a1 + 200) = a3;
    OUTLINED_FUNCTION_9_3();
    v3 = FigXPCCreateBasicMessage();
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    FigSignalErrorAtGM();
    v4 = 0;
  }

  FigXPCRelease();
  return v4;
}

uint64_t dsrxpc_xpcClient_DeadConnectionCallback(uint64_t result)
{
  if (result)
  {
    if (*(result + 24))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();

      return FigSignalErrorAtGM();
    }

    else
    {
      *(result + 24) = 1;

      return dsrxpc_handleServerSessionIsGone(result);
    }
  }

  return result;
}

uint64_t dsrxpc_xpcClient_MessageHandler()
{
  v3 = *MEMORY[0x1E69E9840];
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294954394;
  }
}

void __dsrxpc_handleServerSessionIsGone_block_invoke(uint64_t a1)
{
  dispatch_group_wait(*(*(a1 + 32) + 120), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_enter(*(*(a1 + 32) + 120));
  v3 = *(a1 + 32);
  if (v3)
  {
    while (*(v3 + 40))
    {
      FigSimpleMutexLock();
      v4 = *(v3 + 40);
      if (!v4 || CFArrayGetCount(v4) < 1)
      {
LABEL_12:
        FigSimpleMutexUnlock();
        break;
      }

      OUTLINED_FUNCTION_13_2();
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 40), v1);
        if (ValueAtIndex[5])
        {
          break;
        }

        OUTLINED_FUNCTION_12_2();
        if (v6)
        {
          goto LABEL_12;
        }
      }

      v7 = CFRetain(ValueAtIndex);
      FigSimpleMutexUnlock();
      if (!v7)
      {
        break;
      }

      dsrxpc_emitPendingFramesForOneSampleWithError(v3, v7, 0xFFFFCD91);
      CFRelease(v7);
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_0();
    FigSignalErrorAtGM();
  }

  dispatch_group_leave(*(*(a1 + 32) + 120));
  v8 = *(a1 + 32);
  if (v8)
  {

    CFRelease(v8);
  }
}

CFTypeRef dsrxpc_copyPendingFrameInfoFromPendingList(uint64_t a1, uint64_t a2)
{
  if (!a1 || !*(a1 + 40))
  {
    return 0;
  }

  FigSimpleMutexLock();
  v5 = *(a1 + 40);
  if (v5 && CFArrayGetCount(v5) >= 1)
  {
    OUTLINED_FUNCTION_13_2();
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v2);
      if (ValueAtIndex[2] == a2)
      {
        break;
      }

      OUTLINED_FUNCTION_12_2();
      if (v7)
      {
        goto LABEL_9;
      }
    }

    v8 = CFRetain(ValueAtIndex);
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t dsrxpc_tryDecrementPendingFrameInfoOutstandingEmitCountToEmit(uint64_t a1, uint64_t a2)
{
  if (!a1 || !*(a1 + 40))
  {
    return 0;
  }

  FigSimpleMutexLock();
  v5 = *(a1 + 40);
  if (!v5 || CFArrayGetCount(v5) < 1)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_13_2();
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v2);
    if (ValueAtIndex[2] == a2)
    {
      break;
    }

    OUTLINED_FUNCTION_12_2();
    if (v7)
    {
      goto LABEL_12;
    }
  }

  v8 = ValueAtIndex[5];
  if (v8)
  {
    ValueAtIndex[5] = v8 - 1;
    v9 = 1;
  }

  else
  {
LABEL_12:
    v9 = 0;
  }

  FigSimpleMutexUnlock();
  return v9;
}

uint64_t dsrxpc_decrementPendingFrameInfoOutstandingSampleCount(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 40))
    {
      FigSimpleMutexLock();
      v4 = *(v2 + 40);
      if (v4)
      {
        Count = CFArrayGetCount(v4);
        if (Count >= 1)
        {
          v6 = Count;
          v7 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 40), v7);
            if (ValueAtIndex[2] == a2)
            {
              break;
            }

            if (v6 == ++v7)
            {
              goto LABEL_11;
            }
          }

          v9 = ValueAtIndex[4] - 1;
          ValueAtIndex[4] = v9;
          if (!v9)
          {
            CFArrayRemoveValueAtIndex(*(v2 + 40), v7);
          }
        }
      }

LABEL_11:

      return FigSimpleMutexUnlock();
    }
  }

  return result;
}

void dsrxpc_handleEmitMultiImage(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v8 = a3;
  v11 = a1[24];
  if (v11)
  {
    v17 = a1[25];
    v18 = a2[3];
    v28 = *a6;
    v29 = *(a6 + 2);
    v26 = *a7;
    v27 = *(a7 + 2);
    v19 = a4;
    v20 = a5;
LABEL_13:
    v11(v17, v18, v19, v20, v8, &v28, &v26);
    goto LABEL_15;
  }

  v12 = a2[7];
  if (v12)
  {
    v21 = *(v12 + 16);
    v28 = *a6;
    v29 = *(a6 + 2);
    v26 = *a7;
    v27 = *(a7 + 2);
    v21(v12, a4, a5, 0, a3, &v28, &v26);
    goto LABEL_15;
  }

  v11 = a1[22];
  if (v11)
  {
    if (a4)
    {
      v25 = 1;
    }

    else
    {
      v25 = a3 == 0;
    }

    if (v25)
    {
      v19 = a4;
    }

    else
    {
      v19 = 4294949597;
    }

    v17 = a1[23];
    v18 = a2[3];
    v28 = *MEMORY[0x1E6960C70];
    v29 = *(MEMORY[0x1E6960C70] + 16);
    v26 = v28;
    v27 = v29;
    v20 = a5;
    v8 = 0;
    goto LABEL_13;
  }

  v13 = a2[6];
  if (v13)
  {
    if (a4)
    {
      v14 = 1;
    }

    else
    {
      v14 = a3 == 0;
    }

    if (v14)
    {
      v15 = a4;
    }

    else
    {
      v15 = 4294949597;
    }

    v16 = *(v13 + 16);
    v28 = *MEMORY[0x1E6960C70];
    v29 = *(MEMORY[0x1E6960C70] + 16);
    v26 = v28;
    v27 = v29;
    v16(v13, v15, a5, 0, &v28, &v26);
  }

LABEL_15:
  dsrxpc_decrementPendingFrameInfoOutstandingSampleCount(a1, a2[2]);
  v22 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v22)
  {
    v23 = v22;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt64();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v23);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

uint64_t dsrxpc_eventLink_MessageHandler(int a1, int a2, CMBlockBufferRef theBuffer)
{
  lengthAtOffsetOut[0] = 0;
  dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, lengthAtOffsetOut, 0, &dataPointerOut);
  if (DataPointer)
  {
    return DataPointer;
  }

  v4 = dataPointerOut;
  if ((dataPointerOut & 7) != 0)
  {
    return 4294949291;
  }

  v5 = lengthAtOffsetOut[0];
  if (lengthAtOffsetOut[0] <= 0xA7)
  {
    return 4294949290;
  }

  v6 = FigXPCRemoteClientLookupAndRetainAssociatedObject();
  if (v6)
  {
    return v6;
  }

  v7 = *(v4 + 2);
  if (v7 == 1701669236)
  {
    v27 = MEMORY[0xE0];
    v28 = MEMORY[0xE8];
    v29 = *(v4 + 3);
    v30 = *(v4 + 4);
    v31 = *(v4 + 5);
    v32 = dsrxpc_copyPendingFrameInfoFromPendingList(0, v29);
    if (v32)
    {
      v33 = v32;
      dispatch_group_enter(MEMORY[0x78]);
      if (dsrxpc_tryDecrementPendingFrameInfoOutstandingEmitCountToEmit(0, v33[2]))
      {
        if (v28)
        {
          v28(v27, v33[3], v33[12], v33[13], v33[11], v33[14], v30, v31);
        }

        dsrxpc_decrementPendingFrameInfoOutstandingSampleCount(0, v29);
      }

      dispatch_group_leave(MEMORY[0x78]);
      CFRelease(v33);
      return 0;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    return FigSignalErrorAtGM();
  }

  v8 = v5 - 168;
  if (v7 != 1701672297)
  {
    if (v7 != 1701672038)
    {
      return 4294954394;
    }

    v56 = 0;
    v57 = 0;
    if (*(v4 + 10) > v8)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      v34 = FigSignalErrorAtGM();
    }

    else
    {
      v34 = dsrxpc_copyPixelBufferRecipient(&v56);
      if (!v34)
      {
        if (!*(v4 + 10))
        {
          DataPointer = 0;
          goto LABEL_52;
        }

        v34 = FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData();
      }
    }

    DataPointer = v34;
LABEL_52:
    v35 = dsrxpc_copyPendingFrameInfoFromPendingList(0, *(v4 + 3));
    if (v35)
    {
      dispatch_group_enter(MEMORY[0x78]);
      if (dsrxpc_tryDecrementPendingFrameInfoOutstandingEmitCountToEmit(0, v35[2]))
      {
        if (DataPointer && v57)
        {
          CFRelease(v57);
          v57 = 0;
        }

        v36 = OUTLINED_FUNCTION_6_5();
        dsrxpc_handleEmitFrame(v36, v35, v37, v38, v39, v40, v41);
      }

      dispatch_group_leave(MEMORY[0x78]);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      DataPointer = FigSignalErrorAtGM();
    }

    if (v57)
    {
      CFRelease(v57);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    v42 = v56;
    if (!v56)
    {
      return DataPointer;
    }

LABEL_94:
    CFRelease(v42);
    return DataPointer;
  }

  v56 = 0;
  v57 = 0;
  v55 = 0;
  value = 0;
  v54 = 0;
  v52 = 0;
  v10 = *(v4 + 4);
  v11 = *(v4 + 10);
  if (v11 > 5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    DataPointer = FigSignalErrorAtGM();
    goto LABEL_49;
  }

  if (v11 < 1)
  {
    DataPointer = 0;
LABEL_49:
    Mutable = 0;
    v21 = 0;
    goto LABEL_69;
  }

  v49 = *(v4 + 4);
  v12 = 0;
  v13 = (v4 + 128);
  v14 = (v4 + 128);
  v15 = *(v4 + 10);
  do
  {
    v16 = *(v14 - 5) + v12;
    v17 = *v14++;
    v12 = v16 + v17;
    --v15;
  }

  while (v15);
  if (v12 > v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    v18 = FigSignalErrorAtGM();
    goto LABEL_102;
  }

  if (v49)
  {
    DataPointer = 0;
LABEL_66:
    Mutable = 0;
    goto LABEL_67;
  }

  v18 = dsrxpc_copyPixelBufferRecipient(&v54);
  if (v18)
  {
LABEL_102:
    DataPointer = v18;
    goto LABEL_66;
  }

  v19 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v21 = CFArrayCreateMutable(v19, 0, MEMORY[0x1E695E9C0]);
    if (v21)
    {
      v22 = FigXPCRemoteClientCopyMemoryRecipient();
      if (!v22)
      {
        v23 = v4 + 168;
        while (1)
        {
          v22 = FigInMemoryDeserializerCopyCFData();
          if (v22)
          {
            break;
          }

          v24 = &v23[*(v13 - 5)];
          v22 = FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData();
          if (v22)
          {
            break;
          }

          v25 = *v13;
          v26 = v57;
          if (v57 && v56)
          {
            v22 = MEMORY[0x193AE2F20]();
            if (v22)
            {
              break;
            }

            CFArrayAppendValue(Mutable, value);
            CFArrayAppendValue(v21, v56);
            v26 = v57;
          }

          if (v26)
          {
            CFRelease(v26);
            v57 = 0;
          }

          if (v56)
          {
            CFRelease(v56);
            v56 = 0;
          }

          if (value)
          {
            CFRelease(value);
            value = 0;
          }

          v23 = &v24[v25];
          ++v13;
          if (!--v11)
          {
            v22 = MEMORY[0x193AE2F70](v19, Mutable, v21, &v55);
            break;
          }
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      v22 = FigSignalErrorAtGM();
    }

    DataPointer = v22;
    goto LABEL_68;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  DataPointer = FigSignalErrorAtGM();
LABEL_67:
  v21 = 0;
LABEL_68:
  v10 = v49;
LABEL_69:
  v43 = dsrxpc_copyPendingFrameInfoFromPendingList(0, *(v4 + 3));
  if (v43)
  {
    dispatch_group_enter(MEMORY[0x78]);
    if (dsrxpc_tryDecrementPendingFrameInfoOutstandingEmitCountToEmit(0, v43[2]))
    {
      if (DataPointer)
      {
        if (v55)
        {
          CFRelease(v55);
          v55 = 0;
        }

        v10 = 4294954385;
      }

      v44 = OUTLINED_FUNCTION_6_5();
      dsrxpc_handleEmitMultiImage(v44, v43, v45, v10, v46, v47, v48);
    }

    dispatch_group_leave(MEMORY[0x78]);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    DataPointer = FigSignalErrorAtGM();
  }

  if (v57)
  {
    CFRelease(v57);
    v57 = 0;
  }

  if (v56)
  {
    CFRelease(v56);
    v56 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (value)
  {
    CFRelease(value);
  }

  v42 = v52;
  if (v52)
  {
    goto LABEL_94;
  }

  return DataPointer;
}

uint64_t VTDecompressionSessionRemoteXPC_Create_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void dsrxpc_CreateNewSession_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t dsrxpc_CreateNewSession_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dsrxpc_CreateNewSession_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dsrxpc_DecodeFrameCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dsrxpc_DecodeFrameCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dsrxpc_DecodeFrameCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_DecodeFrameWithOutputHandler_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_DecodeTile_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_DecodeTile_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_DecodeTile_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_DecodeTile_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_CopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_CopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_CopySupportedPropertyDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_CopySerializableProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_CopySerializableProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_CopySerializableProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_WaitForAsynchronousFrames_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dsrxpc_handleServerSessionIsGone_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dsrxpc_handleServerSessionIsGone_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t dsrxpc_handleServerSessionIsGone_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

const char *ParavirtualizedVideoDecoder_CreateInstanceWithSpecification()
{
  v1 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_5_6();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_5_6();
  fig_note_initialize_category_with_default_work_cf();
  VTVideoDecoderGetClassID();
  if (!CMDerivedObjectCreate())
  {
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM();
  }

  OUTLINED_FUNCTION_7_4();
  v2 = CFUUIDCreateString(v1, 0);
  if (dword_1EAD32140)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_11_3();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CFRelease(v2);
  if (&gParavirtualizedVideoDecoder)
  {
    CFRelease(&gParavirtualizedVideoDecoder);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v0)
  {
    CFRelease(v0);
  }

  return "";
}

uint64_t ParavirtualizedVideoDecoder_Invalidate()
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v7 = 0;
  cf = 0;
  MessageAndByteStream = VTParavirtualizationCreateMessageAndByteStream(1684631158, 1, DerivedStorage + 32, 0, &cf, 0);
  if (MessageAndByteStream || (OUTLINED_FUNCTION_3_10(&kVTParavirtualizationDefaultReplyTimeout), MessageAndByteStream = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v2, v10, &v7), MessageAndByteStream))
  {
    v4 = MessageAndByteStream;
  }

  else
  {
    VTParavirtualizationMessageGetSInt32();
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = v9;
    }
  }

  os_unfair_lock_lock((DerivedStorage + 16));
  *DerivedStorage = 0;
  *(DerivedStorage + 8) = 0;
  os_unfair_lock_unlock((DerivedStorage + 16));
  if (v4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_11_3();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

BOOL ParavirtualizedVideoDecoder_CanAcceptFormatDescription(uint64_t a1)
{
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = 0;
  cf = 0;
  v5 = 0;
  if (!VTParavirtualizationCreateMessageAndByteStream(1684234606, 1, DerivedStorage + 32, 0, &v8, &v7) && !VTParavirtualizationMessageAppendCMFormatDescription())
  {
    v3 = kVTParavirtualizationDefaultReplyTimeout;
    v4 = 0;
    if (!VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v8, &v3, &cf))
    {
      VTParavirtualizationMessageGetSInt32();
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5 != 0;
}

uint64_t ParavirtualizedVideoDecoder_DecodeFrameWithOptions(uint64_t a1, const void *a2, opaqueCMSampleBuffer *a3, int a4, uint64_t a5, uint64_t a6)
{
  HIDWORD(v102) = a4;
  v151 = *MEMORY[0x1E69E9840];
  v94 = a1;
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v112 = 0;
  v110 = 0;
  OUTLINED_FUNCTION_3_10(&kVTParavirtualizationDefaultReplyTimeout);
  FormatDescription = CMSampleBufferGetFormatDescription(a3);
  HIDWORD(v95) = CMFormatDescriptionGetMediaSubType(FormatDescription);
  v11 = CMSampleBufferGetFormatDescription(a3);
  HIDWORD(v91) = CMFormatDescriptionGetMediaType(v11);
  MediaSubType = CMFormatDescriptionGetMediaSubType(v11);
  v123 = 0;
  Decryptor = FigSampleBufferGetDecryptor();
  *bytes = 0;
  cf = 0;
  timingArrayEntriesNeededOut = 0;
  value = 0;
  sbuf = 0;
  sizeArrayEntriesNeededOut = 0;
  v14 = MediaSubType == 1667331683 || MediaSubType == 2053207651;
  if (!v14 && MediaSubType != 1685220713)
  {
    MediaSubType = 0;
    v18 = 0;
LABEL_11:
    MutableCopy = 0;
    v11 = 0;
    v6 = 0;
    v19 = 0;
LABEL_12:
    v20 = 0;
    goto LABEL_34;
  }

  MutableCopy = Decryptor;
  if (dword_1EAD32140)
  {
    v116 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v6 = 0;
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_11_3();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CMSampleBufferGetNumSamples(a3) != 1)
  {
    OUTLINED_FUNCTION_0_12();
    v19 = 0;
    v20 = 0;
    v18 = 4294954394;
    goto LABEL_34;
  }

  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a3, 0, 0, &timingArrayEntriesNeededOut);
  if (SampleTimingInfoArray)
  {
    v18 = SampleTimingInfoArray;
    MediaSubType = 0;
    goto LABEL_11;
  }

  if (timingArrayEntriesNeededOut < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = malloc_type_calloc(timingArrayEntriesNeededOut, 0x48uLL, 0x1000040FF89C88EuLL);
    if (!v19)
    {
      OUTLINED_FUNCTION_8_4();
      SampleSizeArray = FigSignalErrorAtGM();
      goto LABEL_136;
    }

    SampleSizeArray = CMSampleBufferGetSampleTimingInfoArray(a3, timingArrayEntriesNeededOut, v19, 0);
    if (SampleSizeArray)
    {
      goto LABEL_136;
    }
  }

  SampleSizeArray = CMSampleBufferGetSampleSizeArray(a3, 0, 0, &sizeArrayEntriesNeededOut);
  if (SampleSizeArray)
  {
LABEL_136:
    v18 = SampleSizeArray;
    OUTLINED_FUNCTION_0_12();
    goto LABEL_12;
  }

  v20 = malloc_type_calloc(sizeArrayEntriesNeededOut, 8uLL, 0x100004000313F17uLL);
  if (!v20)
  {
    OUTLINED_FUNCTION_8_4();
    v23 = FigSignalErrorAtGM();
    goto LABEL_134;
  }

  v23 = CMSampleBufferGetSampleSizeArray(a3, sizeArrayEntriesNeededOut, v20, 0);
  if (v23)
  {
LABEL_134:
    v18 = v23;
    OUTLINED_FUNCTION_0_12();
    goto LABEL_34;
  }

  v24 = *(CMBaseObjectGetVTable() + 16);
  if (*v24 < 8uLL || (v25 = v24[30]) == 0)
  {
    OUTLINED_FUNCTION_0_12();
    v18 = 4294954514;
    goto LABEL_34;
  }

  v85 = a2;
  v26 = v25(MutableCopy, a3, 0, &cf, bytes, &value);
  if (v26)
  {
    v18 = v26;
    OUTLINED_FUNCTION_0_12();
    goto LABEL_32;
  }

  v27 = *MEMORY[0x1E695E480];
  CMFormatDescriptionGetExtensions(v11);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  FigCFDictionaryGetValue();
  v11 = FigCFDictionaryCreateMutableCopy();
  v6 = CFDataCreate(v27, bytes, 8);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  v28 = FigDerivedFormatDescriptionCreate();
  if (v28)
  {
    v18 = v28;
    MediaSubType = 0;
LABEL_32:
    a2 = v85;
    goto LABEL_34;
  }

  v29 = CMSampleBufferCreateReady(v27, cf, v123, 1, timingArrayEntriesNeededOut, v19, sizeArrayEntriesNeededOut, v20, &sbuf);
  v30 = sbuf;
  if (v29)
  {
    v18 = v29;
  }

  else
  {
    CMPropagateAttachments(a3, sbuf);
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
    v32 = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
    if (v32)
    {
      v33 = v32;
      if (SampleAttachmentsArray)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
        v35 = CFArrayGetValueAtIndex(v33, 0);
        CFDictionaryApplyFunction(ValueAtIndex, paravirtualizedVideoDecoder_dictionarySetValue, v35);
      }

      v36 = CFArrayGetValueAtIndex(v33, 0);
      CFDictionarySetValue(v36, *MEMORY[0x1E69603F8], value);
      FigSampleBufferGetDecryptor();
      FigSampleBufferSetDecryptor();
      v18 = 0;
      MediaSubType = sbuf;
      sbuf = 0;
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_8_4();
    v18 = FigSignalErrorAtGM();
    v30 = sbuf;
  }

  a2 = v85;
  if (v30)
  {
    CFRelease(v30);
  }

  MediaSubType = 0;
LABEL_34:
  free(v19);
  free(v20);
  if (value)
  {
    CFRelease(value);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v44 = v123;
  v45 = BYTE4(v102);
  v46 = a5;
  if (v123)
  {
    CFRelease(v123);
  }

  if (v18)
  {
    goto LABEL_128;
  }

  appended = OUTLINED_FUNCTION_6_6(v44, v37, v38, v39, v40, v41, v42, v43, sampleBufferOut, v82, v85, v88, v91, v94, v95, a6, a5, v102, v103, v105, v106, v107, 0, v110, v111, v112, v113, v114);
  if (appended)
  {
    goto LABEL_127;
  }

  appended = VTParavirtualizationMessageAppendSInt64();
  if (appended)
  {
    goto LABEL_127;
  }

  appended = VTParavirtualizationMessageAppendUInt32();
  if (appended)
  {
    goto LABEL_127;
  }

  if (v46)
  {
    if (*(DerivedStorage + 48) >= 4u)
    {
      appended = VTParavirtualizationMessageAppendCFDictionary(v113, 744910704, v46);
      if (appended)
      {
        goto LABEL_127;
      }
    }
  }

  if (MediaSubType)
  {
    a3 = MediaSubType;
  }

  appended = VTParavirtualizationMessageAppendCMSampleBufferWithLimitAndCopyRemainingData(v113, 745759334, *(DerivedStorage + 48), 0x200000uLL, a3, (DerivedStorage + 96), &v111);
  if (appended)
  {
LABEL_127:
    v18 = appended;
LABEL_128:
    v98 = MediaSubType;
    v93 = 0;
    goto LABEL_77;
  }

  if (v111)
  {
    do
    {
      appended = VTParavirtualizationMessageChangeMessageFlags(v114, 16, 17);
      if (appended)
      {
        goto LABEL_127;
      }

      appended = VTParavirtualizationGuestSendMessageToHostAsync(v114);
      if (appended)
      {
        goto LABEL_127;
      }

      if (v114)
      {
        CFRelease(v114);
        v114 = 0;
      }

      v55 = v113;
      if (v113)
      {
        CFRelease(v113);
        v113 = 0;
      }

      appended = OUTLINED_FUNCTION_6_6(v55, v48, v49, v50, v51, v52, v53, v54, sampleBufferOuta, v83, v86, v89, v92, v94, v95, v97, v100, v102, *v104, *&v104[8], *&v104[16], v108, v109, v110, v111, v112, v113, v114);
      if (appended)
      {
        goto LABEL_127;
      }

      appended = VTParavirtualizationMessageAppendCMSampleBufferRemainderDataWithLimitAndCopyRemainingData(v113, 745759334, 0x200000uLL, v111, &v110);
      if (appended)
      {
        goto LABEL_127;
      }

      if (v111)
      {
        CFRelease(v111);
      }

      v56 = v110;
      v110 = 0;
      v111 = v56;
    }

    while (v56);
  }

  if ((v45 & 1) == 0)
  {
    OUTLINED_FUNCTION_3_10(&kVTParavirtualizationCodecOperationReplyTimeout);
  }

  time = *v104;
  v57 = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v114, &time, &v112);
  if (v57)
  {
    v78 = v57;
    v18 = 0;
LABEL_111:
    os_unfair_lock_lock((DerivedStorage + 16));
    if (*DerivedStorage)
    {
      VTDecoderSessionEmitDecodedFrame(*DerivedStorage, a2, v78, 0, 0);
    }

    os_unfair_lock_unlock((DerivedStorage + 16));
    goto LABEL_114;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v58 || (VTParavirtualizationMessageGetUInt32(), v58))
  {
    v18 = v58;
  }

  else
  {
    v18 = HIDWORD(v109);
    if (v97)
    {
      *v97 = v109;
    }

    if (!HIDWORD(v109))
    {
      goto LABEL_114;
    }
  }

  v98 = MediaSubType;
  v93 = 1;
LABEL_77:
  os_unfair_lock_lock((DerivedStorage + 16));
  v59 = *DerivedStorage;
  v60 = FigCFCopyCompactDescription();
  if (v59 && (v61 = v59[1]) != 0)
  {
    v101 = *v61;
  }

  else
  {
    v101 = 0;
  }

  os_unfair_lock_unlock((DerivedStorage + 16));
  LODWORD(v123) = 0;
  LOBYTE(cf) = 0;
  v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v63 = v123;
  if (os_log_type_enabled(v62, cf))
  {
    v64 = v63;
  }

  else
  {
    v64 = v63 & 0xFFFFFFFE;
  }

  if (v64)
  {
    if (v95 < 0)
    {
      OUTLINED_FUNCTION_13_3();
    }

    else
    {
      OUTLINED_FUNCTION_2_12(MEMORY[0x1E69E9830]);
    }

    OUTLINED_FUNCTION_3_6();
    if (!v14)
    {
      v65 = HIBYTE(HIDWORD(v95));
    }

    v87 = v65;
    v67 = v66;
    if (v66 > 0x7Fu)
    {
      OUTLINED_FUNCTION_13_3();
    }

    else
    {
      OUTLINED_FUNCTION_2_12(MEMORY[0x1E69E9830]);
    }

    OUTLINED_FUNCTION_3_6();
    if (!v14)
    {
      v68 = v67;
    }

    v84 = v68;
    v70 = v69;
    v90 = v60;
    if (v69 > 0x7Fu)
    {
      OUTLINED_FUNCTION_13_3();
    }

    else
    {
      OUTLINED_FUNCTION_2_12(MEMORY[0x1E69E9830]);
    }

    OUTLINED_FUNCTION_3_6();
    if (v14)
    {
      v73 = v71;
    }

    else
    {
      v73 = v70;
    }

    v74 = v72;
    if (v72 > 0x7Fu)
    {
      OUTLINED_FUNCTION_13_3();
    }

    else
    {
      OUTLINED_FUNCTION_2_12(MEMORY[0x1E69E9830]);
    }

    OUTLINED_FUNCTION_3_6();
    if (v14)
    {
      v74 = v75;
    }

    CMSampleBufferGetPresentationTimeStamp(&time, a3);
    Seconds = CMTimeGetSeconds(&time);
    SampleSize = CMSampleBufferGetSampleSize(a3, 0);
    v124 = 136318466;
    v125 = "ParavirtualizedVideoDecoder_DecodeFrameWithOptions";
    v126 = 2114;
    v127 = v94;
    v128 = 2048;
    v129 = v59;
    v130[0] = 2114;
    *&v130[1] = v101;
    v130[5] = 1024;
    v131 = v18;
    v132 = 2048;
    v133 = a2;
    v134 = 1024;
    v135 = v87;
    v136 = 1024;
    v137 = v84;
    v138 = 1024;
    v139 = v73;
    v140 = 1024;
    v141 = v74;
    v142 = 2048;
    v143 = Seconds;
    v144 = 2048;
    v145 = SampleSize;
    v146 = 1024;
    v147 = HIDWORD(v102);
    v148 = 2114;
    v60 = v90;
    v149 = v90;
    OUTLINED_FUNCTION_10_4();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_11_3();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  MediaSubType = v98;
  if (v60)
  {
    CFRelease(v60);
  }

  v78 = v18;
  if ((v93 & 1) == 0)
  {
    goto LABEL_111;
  }

LABEL_114:
  if (MediaSubType)
  {
    CFRelease(MediaSubType);
  }

  if (v114)
  {
    CFRelease(v114);
  }

  if (v113)
  {
    CFRelease(v113);
  }

  if (v112)
  {
    CFRelease(v112);
  }

  if (v111)
  {
    CFRelease(v111);
  }

  if (v110)
  {
    CFRelease(v110);
  }

  return v18;
}

uint64_t paravirtualizedVideoDecoder_lookupRetainAndForgetPendingFramePixelBuffersByUUIDs_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t paravirtualizedVideoDecoder_lookupRetainAndForgetPendingFramePixelBuffersByUUIDs_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL ParavirtualizedVideoDecoder_DecodeTile_cold_1(_DWORD *a1)
{
  v2 = FigSignalErrorAtGM();
  *a1 = v2;
  return v2 == 0;
}

uint64_t VTParavirtualizationHostCopyMotionEstimationProcessorListReply(OpaqueCMBlockBuffer *a1, CFTypeRef *a2)
{
  v14 = 0;
  v4 = OUTLINED_FUNCTION_3_11();
  Mutable = CFArrayCreateMutable(v4, v5, v6);
  v12 = 0;
  theArray = 0;
  v11 = 0;
  OUTLINED_FUNCTION_6_2();
  VTParavirtualizationMessageGetUInt32();
  if (v8 || (vtPopulateMotionEstimationRegistry(), v8 = FigRegistryCopyFilteredItemList(), v8) || (v8 = VTParavirtualizationCreateReplyAndByteStream(a1, 4, &v12, &v11), v8) || (v8 = VTParavirtualizationMessageAppendCFPropertyList(), v8))
  {
    appended = v8;
  }

  else
  {
    OUTLINED_FUNCTION_6_2();
    appended = VTParavirtualizationMessageAppendUInt32();
    if (!appended)
    {
      *a2 = v12;
      v12 = 0;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return appended;
}

void vtPopulateMotionEstimationRegistry()
{
  MEMORY[0x193AE3010](&unk_1ED6D3BF8, vtCreateMotionEstimationProcessorRegistry);
  MEMORY[0x193AE3010](&unk_1ED6D3C08, vtInitializeMotionEstimationProcessorRegistry);
  if (qword_1EAD31D88 != -1)
  {
    dispatch_once(&qword_1EAD31D88, &__block_literal_global_13);
  }

  if (VTParavirtualizationGuestInstallHandlerForUUID(&xmmword_1EAD31D98, &__block_literal_global_31_0, 0))
  {
    return;
  }

  v31 = 0;
  v29 = 0;
  v30 = 0;
  cf = 0;
  v28 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1835364467, 1, &xmmword_1EAD31D98, 0, &v30, &v29);
  if (appended)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_6_2();
  appended = VTParavirtualizationMessageAppendUInt32();
  if (appended)
  {
    goto LABEL_40;
  }

  v25 = kVTParavirtualizationDefaultReplyTimeout;
  v26 = 0;
  appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v30, &v25, &v28);
  if (appended)
  {
    goto LABEL_40;
  }

  appended = VTParavirtualizationMessageCopyCFPropertyList(v28, 745366896, &cf);
  if (appended)
  {
    goto LABEL_40;
  }

  if (!cf || (v1 = CFGetTypeID(cf), v1 != CFArrayGetTypeID()))
  {
    OUTLINED_FUNCTION_11_1();
    appended = FigSignalErrorAtGM();
LABEL_40:
    v4 = appended;
    v2 = 0;
    goto LABEL_11;
  }

  v2 = cf;
  cf = 0;
  OUTLINED_FUNCTION_6_2();
  VTParavirtualizationMessageGetUInt32();
  v4 = v3;
LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v4)
  {
LABEL_36:
    if (!v2)
    {
      return;
    }
  }

  else
  {
    if (!v2)
    {
      return;
    }

    Count = CFArrayGetCount(v2);
    v24 = Count - 1;
    if (Count >= 1)
    {
      v6 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
        if (!ValueAtIndex)
        {
          break;
        }

        v8 = ValueAtIndex;
        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 != CFDictionaryGetTypeID())
        {
          break;
        }

        v10 = OUTLINED_FUNCTION_3_11();
        MutableCopy = CFDictionaryCreateMutableCopy(v10, v11, v8);
        Value = CFDictionaryGetValue(v8, @"CMClassImplementationName");
        v13 = OUTLINED_FUNCTION_3_11();
        v15 = CFStringCreateWithFormat(v13, v14, @"paravirtualized:%@", Value);
        FigCFDictionarySetValue();
        v23 = CFDictionaryGetValue(v8, @"CMClassImplementationID");
        v16 = OUTLINED_FUNCTION_3_11();
        v18 = CFStringCreateWithFormat(v16, v17, @"paravirtualized:%@", v23);
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        CFDictionaryGetValue(v8, @"CMMatchingInfo");
        v19 = FigCFDictionaryCreateMutableCopy();
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        FigCFDictionarySetInt32();
        v20 = FigRegistryAddItem();
        if (v19)
        {
          CFRelease(v19);
        }

        if (v15)
        {
          CFRelease(v15);
        }

        if (v18)
        {
          CFRelease(v18);
        }

        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        if (!v20 && v24 != v6++)
        {
          continue;
        }

        goto LABEL_36;
      }

      OUTLINED_FUNCTION_11_1();
      FigSignalErrorAtGM();
    }
  }

  CFRelease(v2);
}

uint64_t vtFilterRegistryItemForHardwareAcceleratedMotionEstimationProcessorsOnly()
{
  if (!FigRegistryItemCopyMatchingInfo())
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

intptr_t vtMotionEstimationSessionCompleteFramesInternal(uint64_t a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    OUTLINED_FUNCTION_0_13();
    if (v2 == qword_1EAD31D80)
    {
      if (*(a1 + 16))
      {
        return 0;
      }

      v3 = *(a1 + 160);
      if (v3)
      {

        return VTCompressionSessionRemote_CompleteMotionVectors(v3);
      }

      v5 = *(a1 + 48);
      if (v5)
      {
        v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (!v6)
        {
          return 4294954514;
        }

        result = v6(v5);
        if (result)
        {
          return result;
        }

        if (*(a1 + 128))
        {
          v7 = 5;
          do
          {
            v8 = *(a1 + 128);
            v9 = dispatch_time(0, 1000000000 * v7);
            result = dispatch_group_wait(v8, v9);
            v7 *= 2;
          }

          while (result);
          return result;
        }

        return 0;
      }
    }
  }

  OUTLINED_FUNCTION_3_0();

  return FigSignalErrorAtGM();
}

uint64_t vtMotionEstimationSessionGetProcessorCreateInstanceFunction()
{
  FigCFDictionaryGetValue();
  vtPopulateMotionEstimationRegistry();
  if (_MergedGlobals_56)
  {
    result = FigRegistryCopyFilteredItemList();
    if (!result)
    {
      OUTLINED_FUNCTION_3_0();
      return FigSignalErrorAtGM();
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t VTMotionEstimationSessionCreate(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v10 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!a5)
  {
    OUTLINED_FUNCTION_2_10();
    v16 = FigSignalErrorAtGM();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_13();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
LABEL_43:
    v16 = 4294954392;
    goto LABEL_19;
  }

  if (a2)
  {
    v13 = CFGetTypeID(a2);
    if (v13 == CFDictionaryGetTypeID())
    {
      FigCFDictionaryGetBooleanIfPresent();
    }

    v14 = CFGetTypeID(a2);
    if (v14 == CFDictionaryGetTypeID())
    {
      FigCFDictionaryGetBooleanIfPresent();
    }
  }

  if (qword_1EAD31D90 != -1)
  {
    dispatch_once(&qword_1EAD31D90, &__block_literal_global_49);
  }

  if (_MergedGlobals_0)
  {
    if (VTVideoCodecService_ShouldUseSeparateCodecProcessForEncode())
    {
      if (FigServer_IsVideocodecd())
      {
        goto LABEL_24;
      }
    }

    else if (FigServer_IsServerProcess())
    {
      goto LABEL_24;
    }

    if (!VTShouldRunVideoEncodersInProcess())
    {
      v15 = VTMotionEstimationSessionRemote_Create(Instance, a1, a3, a4, MutableCopy, (Instance + 160));
      if (!v15)
      {
LABEL_17:
        v16 = 0;
        *a5 = Instance;
LABEL_18:
        Instance = 0;
        goto LABEL_19;
      }

      goto LABEL_47;
    }
  }

LABEL_24:
  *(Instance + 40) = 16;
  *(Instance + 16) = 0;
  *(Instance + 32) = a3;
  *(Instance + 36) = a4;
  *(Instance + 46) = 0;
  *(Instance + 44) = 0;
  if (MutableCopy)
  {
    v18 = CFGetTypeID(MutableCopy);
    if (v18 == CFDictionaryGetTypeID())
    {
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      Value = FigCFDictionaryGetValue();
      if (Value)
      {
        v20 = Value;
        v21 = CFGetTypeID(Value);
        if (v21 == CFStringGetTypeID())
        {
          *(Instance + 24) = CFStringCreateCopy(v10, v20);
        }
      }

      FigCFDictionaryGetBooleanIfPresent();
      CFDictionaryRemoveValue(MutableCopy, @"AllowClientProcessEstimate");
    }
  }

  InstanceFunction = vtMotionEstimationSessionGetProcessorCreateInstanceFunction();
  if (InstanceFunction)
  {
    v16 = InstanceFunction;
    OUTLINED_FUNCTION_2_10();
  }

  else
  {
    if (!v31)
    {
      OUTLINED_FUNCTION_11_1();
LABEL_51:
      FigSignalErrorAtGM();
      v16 = 0;
      goto LABEL_19;
    }

    v23 = v31(a1, MutableCopy, Instance + 48);
    if (!v23)
    {
      v24 = *(Instance + 48);
      if (!v24)
      {
        OUTLINED_FUNCTION_2_10();
LABEL_46:
        v15 = FigSignalErrorAtGM();
LABEL_47:
        v16 = v15;
        goto LABEL_19;
      }

      if (!*(Instance + 45))
      {
        goto LABEL_38;
      }

      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v25)
      {
        v16 = 4294954514;
        goto LABEL_19;
      }

      v15 = v25(v24, @"IncludeMotionConfidence", *MEMORY[0x1E695E498], &v29);
      if (v15)
      {
        goto LABEL_47;
      }

      if (FigCFEqual())
      {
LABEL_38:
        *(Instance + 144) = FigSimpleMutexCreate();
        v26 = *(Instance + 48);
        v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v27 && !v27(v26, a3 | (a4 << 32), Instance + 64) && *(Instance + 72) && *(Instance + 104))
        {
          v28 = dispatch_group_create();
          *(Instance + 128) = v28;
          if (!v28)
          {
            goto LABEL_43;
          }

          goto LABEL_17;
        }

        OUTLINED_FUNCTION_2_10();
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_2_10();
      goto LABEL_51;
    }

    v16 = v23;
    OUTLINED_FUNCTION_11_1();
  }

  FigSignalErrorAtGM();
LABEL_19:
  if (Instance)
  {
    CFRelease(Instance);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v16;
}

void vtInitializeMotionEstimationProcessorRegistry()
{
  if (access("/System/Library/Video/Plug-Ins/", 4) != -1)
  {
    v0 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/System/Library/Video/Plug-Ins/", kCFURLPOSIXPathStyle, 1u);
    if (v0)
    {
      v1 = v0;
      if (!FigRegistryAddSearchPathWithOptions())
      {
        v2 = OUTLINED_FUNCTION_6_7();
        CFDictionarySetValue(v2, @"CMClassID", @"com.apple.videotoolbox.motionestimationprocessor");
        CFDictionarySetValue(v2, @"CMClassImplementationName", @"VTTestMotionEstimationProcessor");
        CFDictionarySetValue(v2, @"CMFactoryFunction", @"VTTestMotionEstimationProcessor_CreateInstance");
        FigCFDictionarySetInt32();
        v3 = OUTLINED_FUNCTION_6_7();
        CFDictionarySetValue(v3, @"VTIsHardwareAccelerated", *MEMORY[0x1E695E4C0]);
        CFDictionarySetValue(v3, @"TestProcessor", *MEMORY[0x1E695E4D0]);
        CFDictionarySetValue(v2, @"CMMatchingInfo", v3);
        FigRegistryAddItem();
        if (v2)
        {
          CFRelease(v2);
        }
      }

      CFRelease(v1);
    }
  }
}

uint64_t __vtLoadParavirtualizedMotionEstimationProcessors_block_invoke_2(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v6 = xmmword_1EAD31D98;
  v3 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], xmmword_1EAD31D98);
  v5 = 0;
  if (!VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v5, 0, 0))
  {
    if (v5 == 1383295341)
    {
      vtUnregisterParavirtualizedMotionEstimationProcessors();
      if (!v3)
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (v5 == 1115252001 && !vtUnregisterParavirtualizedMotionEstimationProcessors())
    {
      VTParavirtualizationGuestRemoveHandlerForUUID(&v6);
    }
  }

  if (v3)
  {
LABEL_7:
    CFRelease(v3);
  }

  return 0;
}

uint64_t vtFilterRegistryItemForParavirtualizedMotionEstimationProcessorsOnly()
{
  if (!FigRegistryItemCopyMatchingInfo())
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  return 0;
}

uint64_t vtMotionEstimationSessionCopyDebugDesc(const void *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    OUTLINED_FUNCTION_0_13();
    if (v2 == qword_1EAD31D80)
    {
      v3 = CFGetAllocator(a1);
      CFStringAppendFormat(0, 0, @"<VTMotionEstimationSession %p [%p]>{\n", a1, v3);
      v4 = CFGetAllocator(a1);
      CFStringAppendFormat(0, 0, @"}", a1, v4);
    }
  }

  return 0;
}

BOOL vtMotionEstimationSessionRegistryFilter(uint64_t a1)
{
  FigCFDictionaryGetValue();
  v4 = 0;
  if (!FigRegistryItemCopyDescription() && vtDoesKeyMatch(a1, 0, @"CMClassImplementationName", 0))
  {
    Value = FigCFDictionaryGetValue();
    if (Value)
    {
      v3 = Value;
      if (vtDoesKeyMatch(a1, Value, @"VTIsHardwareAccelerated", *MEMORY[0x1E695E4D0]))
      {
        if (FigCFEqual())
        {
          return 1;
        }

        CFDictionaryGetValue(v3, @"TestProcessor");
        if (!FigCFEqual())
        {
          return 1;
        }
      }
    }
  }

  return v4;
}

uint64_t VTMotionEstimationSessionCompleteFrames_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCompleteFrames_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCompleteFrames_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationProcessorSelectAndCreateInstance_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySourcePixelBufferAttributes_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySourcePixelBufferAttributes_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySourcePixelBufferAttributes_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_11(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionEstimateMotionVectors_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationProcessorSessionCreateMotionVectorPixelBufferWithOptions_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationProcessorSessionEmitMotionVectors_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopySupportedPropertyDictionary_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopyProperty_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionCopyProperty_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperties_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperties_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperties_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperties_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t VTMotionEstimationSessionSetProperties_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void vtMotionEstimationSessionFinalize_cold_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(v2);
    }
  }

  vtMotionEstimationSessionCompleteFramesInternal(a1);
  VTMotionEstimationSessionInvalidate(a1);
  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
    a1[8] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
    a1[9] = 0;
  }

  v8 = a1[11];
  if (v8)
  {
    CFRelease(v8);
    a1[11] = 0;
  }

  v9 = a1[12];
  if (v9)
  {
    CFRelease(v9);
    a1[12] = 0;
  }

  v10 = a1[13];
  if (v10)
  {
    CFRelease(v10);
    a1[13] = 0;
  }

  v11 = a1[15];
  if (v11)
  {
    CFRelease(v11);
    a1[15] = 0;
  }

  v12 = a1[16];
  if (v12)
  {
    dispatch_release(v12);
    a1[16] = 0;
  }

  v13 = a1[20];
  if (v13)
  {
    CFRelease(v13);
    a1[20] = 0;
  }

  if (a1[18])
  {
    FigSimpleMutexDestroy();
  }

  bzero(a1 + 2, 0xA0uLL);
}

uint64_t MuxedAlphaDecoder_CopyProperty(uint64_t a1, const __CFString *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SublayerDecoderSpecification"))
  {
    v8 = *(DerivedStorage + 24);
    if (v8)
    {
      v9 = CFRetain(v8);
    }

    else
    {
      v9 = 0;
    }

    result = 0;
    *a4 = v9;
  }

  else
  {
    v10 = *(DerivedStorage + 40);
    if (v10)
    {

      return VTSessionCopyProperty(v10, a2, a3, a4);
    }

    else
    {
      return 4294954393;
    }
  }

  return result;
}

uint64_t MuxedAlphaDecoder_SetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  v4 = v3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"SublayerDecoderSpecification"))
  {
    if (CFEqual(a2, @"RequestedMVHEVCVideoLayerIDs"))
    {
      if ((_os_feature_enabled_impl() & 1) == 0 && !VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults())
      {
        goto LABEL_23;
      }

      if (!FigVideoFormatDescriptionContainsStereoMultiviewVideo())
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        return FigSignalErrorAtGM();
      }

      v4 = *(DerivedStorage + 56);
      *(DerivedStorage + 56) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v4)
      {
        CFRelease(v4);
      }

      v11 = *(DerivedStorage + 40);
      if (v11 && *(DerivedStorage + 72))
      {
        VTSessionSetProperty(v11, a2, a3);
        OUTLINED_FUNCTION_6_8();
        *(DerivedStorage + 136) = 1;
        return v4;
      }
    }

    else
    {
      v12 = *(DerivedStorage + 40);
      if (v12 && *(DerivedStorage + 72))
      {
        VTSessionSetProperty(v12, a2, a3);
        OUTLINED_FUNCTION_6_8();
        return v4;
      }
    }

    return 4294954393;
  }

  if (a3)
  {
    v8 = CFGetTypeID(a3);
    if (v8 == CFDictionaryGetTypeID())
    {
      v9 = *(DerivedStorage + 24);
      *(DerivedStorage + 24) = a3;
      CFRetain(a3);
      if (v9)
      {
        CFRelease(v9);
      }

      return 0;
    }
  }

LABEL_23:
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t MuxedAlphaDecoder_StartSession(uint64_t a1, uint64_t a2, const void *a3)
{
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v72 = 0;
  cf = 0;
  v71 = 0;
  v7 = *(DerivedStorage + 16);
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 16) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v8 = OUTLINED_FUNCTION_3_11();
  Mutable = CFArrayCreateMutable(v8, v9, v10);
  *(DerivedStorage + 48) = Mutable;
  if (Mutable)
  {
    v12 = OUTLINED_FUNCTION_3_11();
    v15 = CFArrayCreateMutable(v12, v13, v14);
    *(DerivedStorage + 80) = v15;
    if (v15)
    {
      FigVideoFormatDescriptionDetermineCompatibilityWithCoreMediaRequirementsForHEVCWithAlpha();
      if (FigVideoFormatDescriptionContainsStereoMultiviewVideo())
      {
        if ((_os_feature_enabled_impl() & 1) == 0 && !VTIsMVHEVCWithAlphaDecodingEnabledViaDefaults())
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_2();
          return FigSignalErrorAtGM();
        }

        v76 = 0;
        VTVideoDecoderGetCMBaseObject(a1);
        CMBaseObjectGetDerivedStorage();
        v16 = FigVideoFormatDescriptionCopyFigTagCollectionArrayWithExtraChannels();
        if (!v16)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_2();
          v16 = FigSignalErrorAtGM();
        }

        v23 = v16;
        if (v16)
        {
          return v23;
        }

        FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription = FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription();
        if (FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription)
        {
          return FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription;
        }

        FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription = FigHEVCBridge_CreateFormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription();
        if (FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription)
        {
          return FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription;
        }
      }

      else
      {
        LODWORD(numberOfTagsCopied) = 0;
        *&tagBuffer.category = 0;
        v76 = 0;
        VTVideoDecoderGetCMBaseObject(a1);
        v17 = CMBaseObjectGetDerivedStorage();
        Extensions = CMFormatDescriptionGetExtensions(*(v17 + 16));
        if (Extensions && (Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E69600A0])) != 0 && (v20 = CFDictionaryGetValue(Value, @"hvcC")) != 0 && (v21 = CFGetTypeID(v20), v21 == CFDataGetTypeID()))
        {
          HEVCParameterSetAtIndex = FigHEVCBridge_GetHEVCParameterSetAtIndex();
          if (!HEVCParameterSetAtIndex)
          {
            HEVCParameterSetAtIndex = FigHEVCBridge_GetVPSAlphaChannelNuhLayerId();
          }

          v23 = HEVCParameterSetAtIndex;
        }

        else
        {
          v23 = 4294954586;
        }

        LODWORD(numberOfTagsCopied) = 1;
        if (v23)
        {
          return v23;
        }

        FigCFArrayAppendInt32();
        FigCFArrayAppendInt32();
        FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription = FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription();
        if (FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription)
        {
          return FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription;
        }

        FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription = FigHEVCBridge_CreateSelectedLayerFormatDescriptionFromMuxedAlphaFormatDescription();
        if (FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription)
        {
          return FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription;
        }
      }

      v25 = *MEMORY[0x1E6960038];
      if (*MEMORY[0x1E695E4D0] == CMFormatDescriptionGetExtension(*(DerivedStorage + 32), *MEMORY[0x1E6960038]) || *MEMORY[0x1E695E4C0] == CMFormatDescriptionGetExtension(*(DerivedStorage + 64), v25))
      {
        v26 = 0;
      }

      else
      {
        CMFormatDescriptionGetExtension(*(DerivedStorage + 64), *MEMORY[0x1E6960000]);
        if (FigCFNumberGetSInt32() == 8)
        {
          v26 = &v71 + 1;
        }

        else
        {
          v26 = 0;
        }
      }

      FigCFArrayGetInt32AtIndex();
      FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription = alphadecoder_createSubLayerVTDecompressionSession(a1, 0, *(DerivedStorage + 24), *(DerivedStorage + 32), &kSupportedBaseLayerPixelFormats, 18, (DerivedStorage + 40), v26);
      if (!FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription)
      {
        v27 = *(DerivedStorage + 40);
        tagBuffer.category = kCMTagCategory_Undefined;
        v28 = alphadecoder_copyPixelBufferAttributesFromDecompressionSession(v27);
        if (v28)
        {
          v29 = v28;
          v30 = CFDictionaryGetValue(v28, *MEMORY[0x1E6966130]);
          if (v30 && ((ValueAtIndex = v30, v32 = CFGetTypeID(v30), v32 != CFArrayGetTypeID()) || CFArrayGetCount(ValueAtIndex) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0)) != 0) && (v33 = CFGetTypeID(ValueAtIndex), v33 == CFNumberGetTypeID()) && (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &tagBuffer), (category = tagBuffer.category) != kCMTagCategory_Undefined))
          {
            v23 = 0;
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_2();
            v23 = FigSignalErrorAtGM();
            category = kCMTagCategory_Undefined;
          }

          CFRelease(v29);
          if (v23)
          {
            return v23;
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_2();
          v23 = FigSignalErrorAtGM();
          category = kCMTagCategory_Undefined;
          if (v23)
          {
            return v23;
          }
        }

        if (category != 645279800 && category != 645280312 && category != 645280824 && category != 645410872 && category != 645411384 && category != 645411896 && category != 2016698680)
        {
          if (category == 875836534)
          {
            OUTLINED_FUNCTION_4_11();
            category = v70 + 0x40000;
LABEL_77:
            v72 = __PAIR64__(category, v45);
            if (HIBYTE(v71))
            {
              v46 = &v71;
            }

            else
            {
              v46 = 0;
            }

            FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription = alphadecoder_createSubLayerVTDecompressionSession(a1, 1, *(DerivedStorage + 24), *(DerivedStorage + 64), &v72, 1, (DerivedStorage + 72), v46);
            if (!FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription)
            {
              Dimensions = CMVideoFormatDescriptionGetDimensions(*(DerivedStorage + 16));
              PixelBufferAttributesDictionary = alphadecoder_createPixelBufferAttributesDictionary(Dimensions, HIDWORD(Dimensions), &v72 + 4, 1, &cf);
              v49 = cf;
              if (!PixelBufferAttributesDictionary)
              {
                VTDecoderSessionSetPixelBufferAttributes(*(DerivedStorage + 8), cf);
                if (v71)
                {
                  v50 = HIBYTE(v71) == 0;
                }

                else
                {
                  v50 = 1;
                }

                v51 = !v50;
                *(DerivedStorage + 124) = v51;
                if (!v50)
                {
                  v55 = alphadecoder_copyPixelBufferAttributesFromDecompressionSession(*(DerivedStorage + 40));
                  v52 = v55;
                  if (v55)
                  {
                    VTDecoderSessionSetPixelBufferAttributes(*(DerivedStorage + 8), v55);
                  }

                  VTDecompressionSessionSetDecoderSessionAsPixelBufferSource(*(DerivedStorage + 40), a2);
                  VTDecompressionSessionSetDecoderSessionAsPixelBufferSource(*(DerivedStorage + 72), a2);
                  v56 = OUTLINED_FUNCTION_3_11();
                  v60 = CFDictionaryCreateMutable(v56, v57, v58, v59);
                  if (!v60)
                  {
                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_0_2();
                    v23 = FigSignalErrorAtGM();
                    goto LABEL_95;
                  }

                  v61 = v60;
                  FigCFDictionarySetBoolean();
                  v62 = OUTLINED_FUNCTION_3_11();
                  v65 = CFArrayCreateMutable(v62, v63, v64);
                  *(DerivedStorage + 128) = v65;
                  if (v65)
                  {
                    if (!FigVideoFormatDescriptionContainsStereoMultiviewVideo())
                    {
                      CFArrayAppendValue(*(DerivedStorage + 128), v61);
                      v23 = 0;
LABEL_118:
                      CFRelease(v61);
                      goto LABEL_95;
                    }

                    tagBuffer.category = kCMTagCategory_Undefined;
                    FigCFArrayGetInt32AtIndex();
                    FigCFDictionarySetInt32();
                    CFArrayAppendValue(*(DerivedStorage + 128), v61);
                    v66 = OUTLINED_FUNCTION_3_11();
                    MutableCopy = CFDictionaryCreateMutableCopy(v66, v67, v61);
                    if (MutableCopy)
                    {
                      v69 = MutableCopy;
                      FigCFArrayGetInt32AtIndex();
                      FigCFDictionarySetInt32();
                      CFArrayAppendValue(*(DerivedStorage + 128), v69);
                      CFRelease(v61);
                      CFRelease(v69);
                      v23 = 0;
                      goto LABEL_95;
                    }
                  }

                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_0_2();
                  v23 = FigSignalErrorAtGM();
                  goto LABEL_118;
                }

                if (CMFormatDescriptionGetMediaSubType(*(DerivedStorage + 32)) == 1752589105)
                {
                  v23 = 0;
                  v52 = 0;
                  if (!HIBYTE(v71) || v71)
                  {
                    goto LABEL_95;
                  }
                }

                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_2();
                PixelBufferAttributesDictionary = FigSignalErrorAtGM();
              }

              v23 = PixelBufferAttributesDictionary;
              v52 = 0;
LABEL_95:
              if (v49)
              {
                CFRelease(v49);
              }

              if (v52)
              {
                CFRelease(v52);
              }

              return v23;
            }

            return FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription;
          }

          if (category != 1982882104 && category != 1983013176 && category != 1983144248 && category != 2016436536 && category != 2016567608)
          {
            switch(category)
            {
              case 0x78343230u:
                category = 2016436536;
                OUTLINED_FUNCTION_4_11();
                break;
              case 0x78343232u:
                OUTLINED_FUNCTION_4_11();
                category = 2016567608;
                break;
              case 0x78343434u:
                OUTLINED_FUNCTION_4_11();
                category = 2016698680;
                break;
              case 0x34323276u:
                OUTLINED_FUNCTION_4_11();
                category = v54 + 0x20000;
                break;
              default:
                v45 = 875704422;
                category = 1982882104;
                break;
            }

            goto LABEL_77;
          }
        }

        v45 = category;
        goto LABEL_77;
      }

      return FormatDescriptionWithSelectedLayersFromMultiviewMuxedAlphaFormatDescription;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM();
}

uint64_t MuxedAlphaDecoder_DecodeFrame(uint64_t a1, const void *a2, opaqueCMSampleBuffer *a3, int a4, uint64_t a5)
{
  v10 = a1;
  v190 = *MEMORY[0x1E69E9840];
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v177 = 0;
  v178 = &v177;
  v179 = 0x4000000000;
  v180 = 0u;
  v181 = 0u;
  v182 = 0;
  v171 = 0;
  v172 = &v171;
  v173 = 0x4000000000;
  v174 = 0u;
  v175 = 0u;
  v176 = 0;
  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v169[0] = 0;
  v169[1] = v169;
  v169[2] = 0x2000000000;
  v170 = 0;
  v165 = 0;
  v166 = &v165;
  v167 = 0x2000000000;
  v168 = 0;
  v161 = 0;
  v162 = &v161;
  v163 = 0x2000000000;
  v164 = 0;
  v159[0] = 0;
  v159[1] = v159;
  v159[2] = 0x2000000000;
  v160 = 0;
  FigCFDictionarySetInt64();
  if (!*(DerivedStorage + 124))
  {
    goto LABEL_23;
  }

  Decryptor = FigSampleBufferGetDecryptor();
  if (!Decryptor)
  {
    goto LABEL_23;
  }

  v14 = Decryptor;
  v15 = *(DerivedStorage + 144);
  if (Decryptor == v15)
  {
    goto LABEL_23;
  }

  *(DerivedStorage + 144) = Decryptor;
  CFRetain(Decryptor);
  if (v15)
  {
    CFRelease(v15);
  }

  tags.category = kCMTagCategory_Undefined;
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v16)
  {
    PixelBufferWithOptions = 4294954514;
LABEL_15:
    cf = 0;
LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v111 = v5;
  v17 = v16(v14, &tags);
  if (v17)
  {
    PixelBufferWithOptions = v17;
    goto LABEL_15;
  }

  v18 = 3;
  if ((tags.category & 1) == 0)
  {
    v18 = 1;
  }

  v19 = 7;
  if ((tags.category & 2) == 0)
  {
    v19 = v18;
  }

  if (*(DerivedStorage + 152) == v19)
  {
    cf = 0;
    goto LABEL_24;
  }

  *(DerivedStorage + 152) = v19;
  VTVideoDecoderGetCMBaseObject(v10);
  v26 = CMBaseObjectGetDerivedStorage();
  if (!v26)
  {
LABEL_23:
    cf = 0;
    goto LABEL_24;
  }

  v109 = a4;
  v100 = v10;
  v83 = a2;
  v84 = alphadecoder_copyPixelBufferAttributesFromDecompressionSession(*(v26 + 40));
  if (v84)
  {
    v85 = v84;
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    v87 = *MEMORY[0x1E69660D8];
    CFDictionaryGetValue(MutableCopy, *MEMORY[0x1E69660D8]);
    v88 = FigCFDictionaryCreateMutableCopy();
    FigCFDictionarySetInt64();
    cf = MutableCopy;
    CFDictionarySetValue(MutableCopy, v87, v88);
    CFRelease(v85);
    if (v88)
    {
      CFRelease(v88);
    }

    a2 = v83;
    if (MutableCopy)
    {
      VTDecoderSessionSetPixelBufferAttributes(*(DerivedStorage + 8), MutableCopy);
    }

    else
    {
      cf = 0;
    }

    v10 = v100;
    a4 = v109;
  }

  else
  {
    cf = 0;
    v10 = v100;
  }

LABEL_24:
  dispatch_group_enter(*(DerivedStorage + 104));
  ++*(DerivedStorage + 120);
  v27 = *(DerivedStorage + 112);
  v28 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v27, v28) || !CMSampleBufferDataIsReady(a3))
  {
    fig_log_get_emitter();
    DerivedSampleBuffer = FigSignalErrorAtGM();
LABEL_101:
    PixelBufferWithOptions = DerivedSampleBuffer;
    goto LABEL_16;
  }

  v103 = a5;
  HIDWORD(v106) = a4;
  CMSampleBufferGetDataBuffer(a3);
  v29 = v178;
  v30 = v172;
  VTVideoDecoderGetCMBaseObject(v10);
  CMBaseObjectGetDerivedStorage();
  v187 = 0;
  *&tags.category = 0;
  v185 = 0;
  newCollectionOut = 0;
  v183 = 0;
  v184 = 0;
  DataPointer = FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer();
  if (DataPointer || (DataPointer = OUTLINED_FUNCTION_1_12(v187, &tags, v89, v91, v94, v97, v100, v103, v106, cf, v111, v114, v116, allocator), DataPointer) || (OUTLINED_FUNCTION_2_13(), DataPointer = CMBlockBufferGetDataPointer(v32, v33, v34, v35, v36), DataPointer) || (DataPointer = FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer(), DataPointer) || (DataPointer = FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer(), DataPointer) || (DataPointer = OUTLINED_FUNCTION_1_12(v184, &v185, v90, v92, v95, v98, v101, v104, v107, cf, v112, v115, v117, allocatora), DataPointer) || (OUTLINED_FUNCTION_2_13(), DataPointer = CMBlockBufferGetDataPointer(v37, v38, v39, v40, v41), DataPointer) || (DataPointer = FigHEVCBridge_ParseMuxedAlphaFrameAndWriteSelectedLayerIDsNALUnitsToBuffer(), DataPointer))
  {
    PixelBufferWithOptions = DataPointer;
    if (*&tags.category)
    {
      CFRelease(*&tags.category);
    }

    if (v185)
    {
      CFRelease(v185);
    }

    goto LABEL_16;
  }

  v29[3] = *&tags.category;
  v30[3] = v185;
  DerivedSampleBuffer = alphadecoder_createDerivedSampleBuffer(a3, v178[3], *(DerivedStorage + 32), v178 + 4);
  if (DerivedSampleBuffer)
  {
    goto LABEL_101;
  }

  DerivedSampleBuffer = alphadecoder_createDerivedSampleBuffer(a3, v172[3], *(DerivedStorage + 64), v172 + 4);
  if (DerivedSampleBuffer)
  {
    goto LABEL_101;
  }

  v43 = dispatch_group_create();
  v21 = v43;
  v44 = v108;
  if ((v108 & 2) != 0)
  {
    goto LABEL_66;
  }

  if (*(DerivedStorage + 136))
  {
    v96 = v43;
    v99 = Mutable;
    v45 = v10;
    v46 = a2;
    v93 = v162;
    v102 = v45;
    VTVideoDecoderGetCMBaseObject(v45);
    v47 = CMBaseObjectGetDerivedStorage();
    newCollectionOut = 0;
    v187 = 0;
    v185 = 0;
    Count = CFArrayGetCount(*(v47 + 48));
    v49 = MEMORY[0x1E695E9C0];
    v50 = CFArrayCreateMutable(allocatorb, 0, MEMORY[0x1E695E9C0]);
    v51 = CFArrayCreateMutable(allocatorb, 0, v49);
    if (Count < 1)
    {
LABEL_52:
      PixelBufferWithOptions = MEMORY[0x193AE1920](allocatorb, v50, v51, &v185);
      if (!PixelBufferWithOptions)
      {
        v93[3] = v185;
        v185 = 0;
      }
    }

    else
    {
      v52 = 0;
      ValueAtIndex = 0;
      *v113 = *MEMORY[0x1E6960630];
      while (1)
      {
        v184 = 0;
        tags = *v113;
        v189 = *v113;
        FigCFArrayGetInt64AtIndex();
        tags = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, v184);
        v54 = (v52 ? MEMORY[0x1E69606A0] : MEMORY[0x1E6960690]);
        v189 = *v54;
        v55 = CMTagCollectionCreate(allocatorb, &tags, 2, &newCollectionOut);
        if (v55)
        {
          break;
        }

        if (*(v47 + 124))
        {
          ValueAtIndex = FigCFArrayGetValueAtIndex();
        }

        v55 = VTDecoderSessionCreatePixelBufferWithOptions(*(v47 + 8), v46, ValueAtIndex, &v187);
        if (v55)
        {
          break;
        }

        CFArrayAppendValue(v51, v187);
        if (v187)
        {
          CFRelease(v187);
          v187 = 0;
        }

        CFArrayAppendValue(v50, newCollectionOut);
        if (newCollectionOut)
        {
          CFRelease(newCollectionOut);
          newCollectionOut = 0;
        }

        if (Count == ++v52)
        {
          goto LABEL_52;
        }
      }

      PixelBufferWithOptions = v55;
    }

    v44 = v108;
    if (v187)
    {
      CFRelease(v187);
    }

    a2 = v46;
    if (v50)
    {
      CFRelease(v50);
    }

    v10 = v102;
    if (v51)
    {
      CFRelease(v51);
    }

    v21 = v96;
    if (newCollectionOut)
    {
      CFRelease(newCollectionOut);
    }

    Mutable = v99;
    if (v185)
    {
      CFRelease(v185);
    }
  }

  else
  {
    FirstValue = FigCFArrayGetFirstValue();
    PixelBufferWithOptions = VTDecoderSessionCreatePixelBufferWithOptions(*(DerivedStorage + 8), a2, FirstValue, v166 + 3);
  }

  if (!PixelBufferWithOptions)
  {
LABEL_66:
    v57 = *(DerivedStorage + 136);
    dispatch_retain(v21);
    dispatch_group_enter(v21);
    if (v57)
    {
      v153 = MEMORY[0x1E69E9820];
      v154 = 0x40000000;
      v155 = __MuxedAlphaDecoder_DecodeFrame_block_invoke;
      v156 = &unk_1E72C8698;
      v157 = &v177;
      v158 = v21;
      OUTLINED_FUNCTION_5_8();
      v63 = VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler(v58, v59, v60, v61, v105, v62);
      if (!v63)
      {
        dispatch_retain(v21);
        dispatch_group_enter(v21);
        v147 = MEMORY[0x1E69E9820];
        v148 = 0x40000000;
        v149 = __MuxedAlphaDecoder_DecodeFrame_block_invoke_2;
        v150 = &unk_1E72C86C0;
        v151 = &v171;
        v152 = v21;
        OUTLINED_FUNCTION_5_8();
        v69 = VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler(v64, v65, v66, v67, v105, v68);
        if (!v69)
        {
LABEL_69:
          dispatch_retain(v21);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 0x40000000;
          v122 = __MuxedAlphaDecoder_DecodeFrame_block_invoke_5;
          v123 = &unk_1E72C8738;
          v124 = v169;
          v125 = &v177;
          v126 = &v171;
          v127 = v159;
          v134 = v44 & 1;
          v130 = DerivedStorage;
          v131 = v10;
          v128 = &v161;
          v129 = &v165;
          v132 = a2;
          v133 = v21;
          if (v44)
          {
            dispatch_group_notify(v21, *(DerivedStorage + 96), block);
          }

          else
          {
            dispatch_group_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
            v122(block);
          }

          PixelBufferWithOptions = 0;
          goto LABEL_73;
        }

LABEL_87:
        PixelBufferWithOptions = v69;
LABEL_73:
        v23 = cf;
        goto LABEL_74;
      }
    }

    else
    {
      v141 = MEMORY[0x1E69E9820];
      v142 = 0x40000000;
      v143 = __MuxedAlphaDecoder_DecodeFrame_block_invoke_3;
      v144 = &unk_1E72C86E8;
      v145 = &v177;
      v146 = v21;
      OUTLINED_FUNCTION_5_8();
      v63 = VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler(v73, v74, v75, v76, v105, v77);
      if (!v63)
      {
        dispatch_retain(v21);
        dispatch_group_enter(v21);
        v135 = MEMORY[0x1E69E9820];
        v136 = 0x40000000;
        v137 = __MuxedAlphaDecoder_DecodeFrame_block_invoke_4;
        v138 = &unk_1E72C8710;
        v139 = &v171;
        v140 = v21;
        OUTLINED_FUNCTION_5_8();
        v69 = VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler(v78, v79, v80, v81, v105, v82);
        if (!v69)
        {
          goto LABEL_69;
        }

        goto LABEL_87;
      }
    }

    PixelBufferWithOptions = v63;
  }

LABEL_17:
  alphadecoder_emitDecodedFrame(v10, a2, PixelBufferWithOptions, 0, 0);
  v22 = 0;
  v23 = cf;
  while (1)
  {
    v24 = *(DerivedStorage + 128);
    if (v24)
    {
      v24 = CFArrayGetCount(v24);
    }

    if (v22 >= v24)
    {
      break;
    }

    v25 = FigCFArrayGetValueAtIndex();
    VTDecoderSessionForgetPixelBufferForFrame(*(DerivedStorage + 8), a2, v25);
    ++v22;
  }

LABEL_74:
  v70 = v178[3];
  if (v70)
  {
    CFRelease(v70);
  }

  v71 = v172[3];
  if (v71)
  {
    CFRelease(v71);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  _Block_object_dispose(v159, 8);
  _Block_object_dispose(&v161, 8);
  _Block_object_dispose(&v165, 8);
  _Block_object_dispose(v169, 8);
  _Block_object_dispose(&v171, 8);
  _Block_object_dispose(&v177, 8);
  return PixelBufferWithOptions;
}

uint64_t MuxedAlphaDecoder_CopySupportedPropertyDictionary(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  cf = 0;
  v18 = 0;
  v19 = 0;
  v4 = *MEMORY[0x1E695E480];
  OUTLINED_FUNCTION_2_13();
  v11 = CFDictionaryCreate(v5, v6, v7, v8, v9, v10);
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v13 = *(DerivedStorage + 40);
    if (v13)
    {
      v14 = VTSessionCopySupportedPropertyDictionary(v13, &cf);
      if (v14)
      {
        Mutable = 0;
      }

      else
      {
        Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"SublayerDecoderSpecification", v11);
        v18 = cf;
        v19 = Mutable;
        FigCFCreateCombinedDictionary();
      }
    }

    else
    {
      Mutable = 0;
      v14 = 4294954393;
    }
  }

  else
  {
    Mutable = 0;
    v14 = 4294954394;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v14;
}

uint64_t alphadecoder_createSubLayerVTDecompressionSession(uint64_t a1, int a2, const void *a3, const opaqueCMFormatDescription *a4, uint64_t a5, int a6, VTSessionRef *a7, BOOL *a8)
{
  v14 = a2 != 0;
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  session = 0;
  cf = 0;
  propertyValueOut = 0;
  valuePtr = -1;
  Dimensions = CMVideoFormatDescriptionGetDimensions(*(DerivedStorage + 16));
  PixelBufferAttributesDictionary = alphadecoder_createPixelBufferAttributesDictionary(Dimensions, HIDWORD(Dimensions), a5, a6, &cf);
  if (PixelBufferAttributesDictionary)
  {
    v24 = PixelBufferAttributesDictionary;
    Mutable = 0;
    goto LABEL_13;
  }

  v18 = 2 * v14;
  v19 = *MEMORY[0x1E695E480];
  if (a8)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      fig_log_get_emitter();
      v24 = FigSignalErrorAtGM();
      goto LABEL_13;
    }

    FigCFDictionarySetInt32();
    FigCFDictionarySetBoolean();
  }

  else
  {
    Mutable = 0;
  }

  v21 = cf;
  v22 = VTDecompressionSessionCreateWithOptions(v19, a4, a3, cf, 0, Mutable, &session);
  if (!v22)
  {
    if (!VTSessionCopyProperty(session, @"WriteDirectlyToPlanesOfTargetCVPixelBuffer", v19, &propertyValueOut))
    {
      if (propertyValueOut)
      {
        v23 = CFGetTypeID(propertyValueOut);
        if (v23 == CFNumberGetTypeID())
        {
          CFNumberGetValue(propertyValueOut, kCFNumberSInt32Type, &valuePtr);
          if (a8)
          {
            *a8 = v18 == valuePtr;
          }
        }
      }
    }

    v24 = 0;
    *a7 = session;
    session = 0;
LABEL_13:
    v21 = cf;
    if (!cf)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v24 = v22;
  if (v21)
  {
LABEL_14:
    CFRelease(v21);
  }

LABEL_15:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (session)
  {
    CFRelease(session);
  }

  if (propertyValueOut)
  {
    CFRelease(propertyValueOut);
  }

  return v24;
}

CFDictionaryRef alphadecoder_copyPixelBufferAttributesFromDecompressionSession(uint64_t a1)
{
  pool = 0;
  if (VTDecompressionSessionCopyProperty(a1, @"PixelBufferPool", *MEMORY[0x1E695E480], &pool))
  {
    v2 = 0;
  }

  else
  {
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(pool);
    v2 = PixelBufferAttributes;
    if (PixelBufferAttributes)
    {
      CFRetain(PixelBufferAttributes);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      FigSignalErrorAtGM();
    }
  }

  if (pool)
  {
    CFRelease(pool);
  }

  return v2;
}

uint64_t MuxedAlphaDecoder_CreateInstance_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM();
}

void alphadecoder_createPixelBufferAttributesDictionary_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t alphadecoder_createPixelBufferAttributesDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t alphadecoder_mergeBaseAndAlpha_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL alphadecoder_mergeBaseAndAlpha_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  v3 = FigSignalErrorAtGM();
  *a2 = v3;
  return v3 == 0;
}

uint64_t alphadecoder_mergeBaseAndAlpha_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t alphadecoder_transferPlane_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t VTHDRImageStatisticsGenerationSessionCreateStatistics(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  theData = 0;
  if (!a1 || (v13 = CFGetTypeID(a1), MEMORY[0x193AE3010](&VTHDRImageStatisticsGenerationSessionGetTypeID_sRegisterVTHDRImageStatisticsGenerationSessionOnce, registerVTHDRImageStatisticsGenerationSession), v13 != sVTHDRImageStatisticsGenerationSessionID) || !a2 || (v14 = CFGetTypeID(a2), v14 != CVPixelBufferGetTypeID()) || *&a3 == 0.0 || *&a4 == 0.0 || *&a5 == 0.0 || *&a6 == 0.0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_0();
    v62 = FigSignalErrorAtGM();
    v19 = 0;
    v15 = 0;
    goto LABEL_158;
  }

  v15 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965F30], 0);
  v16 = FigCFEqual();
  v17 = FigCFEqual();
  if (!(v17 | v16))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_0();
    v62 = FigSignalErrorAtGM();
    v19 = 0;
    goto LABEL_158;
  }

  v18 = v17;
  __y = v6;
  v19 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965F10], 0);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  rect.origin.x = 0.0;
  rect.origin.y = 0.0;
  rect.size.width = Width;
  rect.size.height = Height;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  if (v19)
  {
    if (!CGRectMakeWithDictionaryRepresentation(v19, &rect))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_13();
      v62 = FigSignalErrorAtGM();
      goto LABEL_158;
    }

    rect = CGRectStandardize(rect);
    v155 = CGRectIntegral(rect);
    Width = v155.size.width;
    Height = v155.size.height;
    rect = v155;
  }

  else
  {
    v155.origin.y = 0.0;
    v155.origin.x = 0.0;
  }

  v139 = *&a6;
  v140 = v19;
  v137 = *&a4;
  v138 = *&a5;
  v136 = *&a3;
  if (*(a1 + 184) == 2)
  {
    v19 = 0;
    v23 = a2;
  }

  else
  {
    if (vthisgsPixelTransferToIntermediateBuffer(a1, a2, v19, &theData, v155.origin.x, v155.origin.y, Width, Height))
    {
      v19 = 0;
      v23 = a2;
    }

    else
    {
      if (theData && ((Length = CFDataGetLength(theData), v26 = Length, Length == 768) || Length == 3072 || Length == 1536))
      {
        BytePtr = CFDataGetBytePtr(theData);
        v36 = BytePtr;
        if (v26 == 1536)
        {
          v37 = 128;
        }

        else
        {
          v37 = 256;
        }

        if (v26 == 768)
        {
          v19 = 64;
        }

        else
        {
          v19 = v37;
        }

        if (BytePtr)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v19 = 0;
      }

      v23 = *(a1 + 24);
      PixelFormatType = 1111970369;
    }

    if (*(a1 + 184) == 1)
    {
      goto LABEL_175;
    }
  }

  if (PixelFormatType == 1111970369)
  {
    goto LABEL_37;
  }

  if (PixelFormatType == 1815162994)
  {
    v24 = MTLPixelFormatRGB10A2Unorm;
    goto LABEL_38;
  }

  if (PixelFormatType != 1380411457)
  {
    v38 = vthisgsPixelTransferToIntermediateBuffer(a1, a2, v140, 0, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    if (v38)
    {
LABEL_176:
      v62 = v38;
LABEL_177:
      v19 = v140;
      goto LABEL_158;
    }

    v23 = *(a1 + 24);
LABEL_37:
    v24 = MTLPixelFormatBGRA8Unorm;
    goto LABEL_38;
  }

  v24 = MTLPixelFormatRGBA16Float;
LABEL_38:
  if (!objc_opt_class())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_13();
    v38 = FigSignalErrorAtGM();
    if (v38)
    {
      goto LABEL_176;
    }
  }

  v39 = *(a1 + 216);
  if (*(a1 + 192) != v24 || !v39 || !*(a1 + 224))
  {

    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    v149 = 256;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v153 = _Q0;
    v45 = [objc_alloc(MEMORY[0x1E69745D8]) initWithDevice:*(a1 + 200) histogramInfo:&v149];
    *(a1 + 224) = v45;
    if (!v45)
    {
      goto LABEL_182;
    }

    if ([v45 histogramSizeForSourceFormat:v24] == 3072)
    {
      v46 = [*(a1 + 200) newBufferWithLength:3072 options:0];
      *(a1 + 216) = v46;
      if (v46)
      {
        *(a1 + 192) = v24;
        goto LABEL_46;
      }

LABEL_182:
      v62 = 4294954392;
      goto LABEL_177;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_13();
    v38 = FigSignalErrorAtGM();
    if (v38)
    {
      goto LABEL_176;
    }
  }

LABEL_46:
  x = rect.origin.x;
  y = rect.origin.y;
  v49 = rect.size.width;
  v50 = rect.size.height;
  v154 = 0;
  v51 = objc_autoreleasePoolPush();
  v52 = *MEMORY[0x1E695E480];
  v53 = *(a1 + 32);
  v54 = CVPixelBufferGetWidth(v23);
  v55 = CVPixelBufferGetHeight(v23);
  CVMetalTextureCacheCreateTextureFromImage(v52, v53, v23, 0, v24, v54, v55, 0, &v154);
  if (v154 && (Texture = CVMetalTextureGetTexture(v154)) != 0 && (v57 = Texture, (v58 = [*(a1 + 208) commandBuffer]) != 0))
  {
    v59 = v58;
    v60 = *(a1 + 224);
    v149 = x;
    v150 = y;
    v151 = 0;
    v152 = v49;
    v61 = 1;
    *&v153 = v50;
    *(&v153 + 1) = 1;
    [v60 setClipRectSource:&v149];
    [*(a1 + 224) encodeToCommandBuffer:v59 sourceTexture:v57 histogram:*(a1 + 216) histogramOffset:0];
    [v59 commit];
    [v59 waitUntilCompleted];
    objc_autoreleasePoolPop(v51);
    v36 = [*(a1 + 216) contents];
    v62 = 0;
    v19 = 256;
  }

  else
  {
    objc_autoreleasePoolPop(v51);
    v36 = 0;
    v61 = 0;
    v62 = 4294954392;
  }

  if (v154)
  {
    CFRelease(v154);
  }

  if (!v61)
  {
    goto LABEL_177;
  }

  if (!v36)
  {
LABEL_175:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_13();
    v38 = FigSignalErrorAtGM();
    goto LABEL_176;
  }

LABEL_54:
  v63 = v19;
  v64 = v36 + 4 * v19;
  if (v19 == 64)
  {
    if (v18)
    {
      if (!*(a1 + 56))
      {
        goto LABEL_70;
      }
    }

    else if (!*(a1 + 40))
    {
      goto LABEL_70;
    }

LABEL_93:
    OUTLINED_FUNCTION_2_14(v28, v29, v30, v31, v32, v33, v34, v35, *&textureOut, v135, v136, v137, v138, v139, *&v140, v141, v142, v143, v144, v145, __y, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
LABEL_111:
    v86 = 40;
    if (v18)
    {
      v86 = 56;
    }

    v87 = 64;
    v88 = 80;
    if (!v18)
    {
      v88 = 72;
    }

LABEL_120:
    v89 = *(a1 + v86);
    goto LABEL_121;
  }

  if (v19 == 128)
  {
    if (v18)
    {
      if (!*(a1 + 104))
      {
        goto LABEL_70;
      }
    }

    else if (!*(a1 + 88))
    {
      goto LABEL_70;
    }

LABEL_102:
    OUTLINED_FUNCTION_2_14(v28, v29, v30, v31, v32, v33, v34, v35, *&textureOut, v135, v136, v137, v138, v139, *&v140, v141, v142, v143, v144, v145, __y, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    v86 = 88;
    if (v18)
    {
      v86 = 104;
    }

    v87 = 128;
    v88 = 120;
    if (v18)
    {
      v88 = 128;
    }

    goto LABEL_120;
  }

  if (v18)
  {
    if (*(a1 + 152))
    {
      goto LABEL_110;
    }
  }

  else if (*(a1 + 136))
  {
    goto LABEL_110;
  }

LABEL_70:
  v65 = OUTLINED_FUNCTION_4_12();
  v66 = OUTLINED_FUNCTION_4_12();
  v67 = OUTLINED_FUNCTION_4_12();
  v68 = v67;
  if (!v65 || !v66 || !v67)
  {
    free(v65);
    free(v66);
    free(v68);
    goto LABEL_182;
  }

  if (v19)
  {
    v19 = 0;
    v143 = -0.55991073;
    v142 = 0.17883277;
    v141 = 0.28466892;
    __y = 0.2;
    v145 = 1000.0;
    HIDWORD(v28) = 1086556160;
    v144 = 10000.0;
    do
    {
      *&v28 = v19 / (v63 - 1);
      if (v18)
      {
        v69 = *&v28;
        if (*&v28 <= 0.5)
        {
          v70 = v69 * v69;
          v71 = 3.0;
        }

        else
        {
          v70 = exp((v69 + -0.55991073) / 0.17883277) + 0.28466892;
          v71 = 12.0;
        }

        v72 = v70 / v71 * (pow(v70 / v71, 0.2) * 1000.0) / 10000.0;
        if (v72 < 0.0)
        {
          v72 = 0.0;
        }

        v73 = pow(v72, 0.159301758);
        v74 = (v73 * 18.8515625 + 0.8359375) / (v73 * 18.6875 + 1.0);
        if (v74 < 0.0)
        {
          v74 = 0.0;
        }

        v28 = pow(v74, 78.84375);
        *&v28 = v28;
      }

      *(v65 + v19) = LODWORD(v28);
      *&v28 = *&v28 * *&v28;
      *(v66 + v19++) = LODWORD(v28);
    }

    while (v63 != v19);
    if (v63 == 64)
    {
      v75 = 56;
      if (!v18)
      {
        v75 = 40;
      }

      v76 = 64;
      if (!v18)
      {
        v76 = 48;
      }

      *(a1 + v75) = v65;
      v77 = 72;
      if (v18)
      {
        v77 = 80;
      }

      *(a1 + v76) = v66;
      *(a1 + v77) = v68;
      goto LABEL_93;
    }

    if (v63 == 128)
    {
      v80 = 104;
      if (!v18)
      {
        v80 = 88;
      }

      v81 = 112;
      if (!v18)
      {
        v81 = 96;
      }

      *(a1 + v80) = v65;
      v82 = 120;
      if (v18)
      {
        v82 = 128;
      }

      *(a1 + v81) = v66;
      *(a1 + v82) = v68;
      goto LABEL_102;
    }
  }

  v83 = 152;
  if (!v18)
  {
    v83 = 136;
  }

  v84 = 160;
  if (!v18)
  {
    v84 = 144;
  }

  *(a1 + v83) = v65;
  v85 = 168;
  if (v18)
  {
    v85 = 176;
  }

  *(a1 + v84) = v66;
  *(a1 + v85) = v68;
LABEL_110:
  OUTLINED_FUNCTION_2_14(v28, v29, v30, v31, v32, v33, v34, v35, *&textureOut, v135, v136, v137, v138, v139, *&v140, v141, v142, v143, v144, v145, __y, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  if (v63 == 64)
  {
    goto LABEL_111;
  }

  v133 = 152;
  if (!v18)
  {
    v133 = 136;
  }

  v89 = *(a1 + v133);
  v88 = 168;
  if (v18)
  {
    v88 = 176;
  }

  if (v63)
  {
    v87 = v63;
LABEL_121:
    v90 = 0;
    v91 = *(a1 + v88);
    v92 = 0.0;
    do
    {
      v92 = v92 + (*(v36 + 4 * v90) * v89[v90]);
      ++v90;
    }

    while (v87 != v90);
    v93 = 0;
    v94 = 0.0;
    do
    {
      v94 = v94 + (*(v64 + 4 * v93) * v89[v93]);
      ++v93;
    }

    while (v87 != v93);
    v95 = 0;
    v96 = 0.0;
    do
    {
      v96 = v96 + (*(v78 + 4 * v95) * v89[v95]);
      ++v95;
    }

    while (v87 != v95);
    if (v63)
    {
      v97 = 0;
      v98 = -1;
      do
      {
        v99 = *(v36 + 4 * v97);
        v100 = *(v64 + 4 * v97);
        v101 = *(v78 + 4 * v97);
        v102 = ((v99 / v79) + (v100 / v79) + (v101 / v79)) / 3.0;
        v91[v97] = v102;
        if (v99 > v100)
        {
          v100 = 1;
        }

        else
        {
          v99 = v100;
        }

        if (v99 <= v101)
        {
          v103 = v101;
        }

        else
        {
          v103 = v100;
        }

        if (v98 == -1)
        {
          v104 = v97;
        }

        else
        {
          v104 = v98;
        }

        if (v103)
        {
          v98 = v104;
        }

        ++v97;
      }

      while (v87 != v97);
    }

    v105 = 0.0;
    v106 = v91;
    v107 = v87;
    do
    {
      v108 = *v106++;
      v109 = v108;
      v110 = *v89++;
      v105 = v105 + (v109 * v110);
      --v107;
    }

    while (v107);
    OUTLINED_FUNCTION_5_9();
    do
    {
      v126 = *v115++;
      v127 = v126;
      v128 = *v114++;
      v125 = v125 + (v127 * v128);
      --v112;
    }

    while (v112);
    v129 = v119 / v118;
    goto LABEL_146;
  }

  OUTLINED_FUNCTION_5_9();
LABEL_146:
  v62 = 0;
  if (v124 <= v121)
  {
    v130 = v121;
  }

  else
  {
    v130 = v124;
  }

  if (v130 > v129)
  {
    v129 = v130;
  }

  v131 = v125 - (v123 * v123);
  if (v131 <= 0.0)
  {
    v131 = 0.0;
  }

  if (v129 >= v120)
  {
    v129 = v120;
  }

  if (v122 > v129)
  {
    v129 = v122;
  }

  *v117 = v129;
  *v116 = v122;
  *v113 = v120;
  *v111 = sqrtf(v131);
LABEL_158:
  if (theData)
  {
    CFRelease(theData);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v62;
}