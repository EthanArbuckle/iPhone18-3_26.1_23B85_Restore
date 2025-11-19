size_t memoryOriginServer_handleRemoteMessageNoReply(_xpc_connection_s *a1, void *a2)
{
  v16 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v16);
  if (OpCode)
  {
    return OpCode;
  }

  if (v16 != 1970482529)
  {
    if (v16 == 1970496813)
    {
      v18 = 0;
      uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
      int64 = xpc_dictionary_get_int64(a2, "BlockSerialNumber");
      v7 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, &v18, 0);
      if (!v7)
      {
        v7 = memoryOrigin_unregisterUseOfBlock(v18, int64);
      }

      goto LABEL_6;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFC0E2uLL, "<<<< MemoryPool >>>>", 0xC47, v12, v13, v14);
  }

  cf = 0;
  v18 = 0;
  v9 = xpc_dictionary_get_uint64(a2, ".objectID");
  v7 = FigXPCMessageCopyCFArray(a2, "BlockSerialNumberArray", &v18);
  if (!v7)
  {
    v8 = FigXPCServerLookupAndRetainAssociatedObject(a1, v9, &cf, 0);
    v10 = cf;
    if (!v8)
    {
      v8 = memoryOrigin_unregisterUseOfMultipleBlocks(cf, v18);
      v10 = cf;
    }

    if (v10)
    {
      CFRelease(v10);
    }

    goto LABEL_12;
  }

LABEL_6:
  v8 = v7;
LABEL_12:
  if (v18)
  {
    CFRelease(v18);
  }

  return v8;
}

__CFString *memoryOrigin_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  OUTLINED_FUNCTION_10_7();
  v6 = CFArrayCreateMutable(v3, v4, v5);
  if (v6)
  {
    v7 = v6;
    FigReentrantMutexLock(*(a1 + 16));
    v8 = *(a1 + 40);
    Count = CFDictionaryGetCount(*(a1 + 24));
    CFStringAppendFormat(Mutable, 0, @"FigMemoryOrigin %p ObjectID %016llx %ld originBlocks", a1, v8, Count);
    FigReentrantMutexUnlock(*(a1 + 16));
    CFRelease(v7);
  }

  return Mutable;
}

void *receivedMemoryAllocator_findImportedBlockEntryForSerialNumber(uint64_t a1, uint64_t a2, CFIndex *a3)
{
  context = a2;
  Count = CFArrayGetCount(*(a1 + 8));
  v9.location = 0;
  v9.length = Count;
  v6 = CFArrayBSearchValues(*(a1 + 8), v9, &context, receivedMemoryAllocator_compareBlockEntryWithSerialNumber, &context);
  if (a3)
  {
    *a3 = v6;
  }

  if (v6 >= Count)
  {
    return 0;
  }

  result = CFArrayGetValueAtIndex(*(a1 + 8), v6);
  if (*result != context)
  {
    return 0;
  }

  return result;
}

void receivedMemoryAllocator_tellOriginToDecrementUseCountOfBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!FigCFArrayAppendInt64(*(a1 + 64), a2, a3, a4, a5, a6, a7, a8) && CFArrayGetCount(*(a1 + 64)) == 1)
  {
    v9 = *(a1 + 56);
    v10 = dispatch_time(0, 200000000);

    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  }
}

void receivedMemoryAllocator_sendPendingBatchOfBlockSNtoDecrementUseCount(os_unfair_lock_s **a1)
{
  xdict = 0;
  if (a1)
  {
    v1 = a1;
    FigSimpleMutexLock(*a1);
    if (CFArrayGetCount(v1[8]) >= 1 && !FigXPCCreateBasicMessage(0x75732D61u, 0, &xdict))
    {
      FigXPCMessageSetCFObject(xdict, "BlockSerialNumberArray", v1[8]);
      CFArrayRemoveAllValues(v1[8]);
      xpc_dictionary_set_uint64(xdict, ".objectID", v1[4]);
      FigXPCRemoteClientSendAsyncMessage(v1[3], xdict);
    }

    FigSimpleMutexUnlock(*v1);
    a1 = xdict;
  }

  FigXPCRelease(a1);
}

BOOL poolBlockState_Create_cold_2(const CMBlockBufferCustomBlockSource *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", a1, v3, v4, v5);
  return OUTLINED_FUNCTION_8_13(v6);
}

void poolBlockState_Create_cold_3()
{
  OUTLINED_FUNCTION_18_4();
  v3 = FigCFWeakReferenceHolderCreateWithReferencedObject(v2);
  dispatch_set_context(*v0, v3);
  dispatch_set_finalizer_f(*v0, poolBlockState_finalizeAgeOutTimer);
  *(v1 + 128) = 0;
  dispatch_source_set_event_handler_f(*v0, poolBlockState_ageOutTimerHandler);
  dispatch_resume(*v0);
}

size_t poolBlockState_Create_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", 0x326, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t poolBlockState_Create_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", 0x321, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t poolBlockState_Create_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", 0x31B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t poolBlockState_Create_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", 0x30E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t poolBlockState_Create_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", 0x304, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryPoolCopyStats_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37DuLL, "<<<< MemoryPool >>>>", 0x715, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryPoolCopyStats_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37DuLL, "<<<< MemoryPool >>>>", 0x714, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMemoryPoolCreateBlockBufferWithOptions_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37EuLL, "<<<< MemoryPool >>>>", 0x771, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMemoryPoolCreateBlockBufferWithOptions_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC37DuLL, "<<<< MemoryPool >>>>", 0x76E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryPoolCreateContiguousBlockBuffer_cold_2(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFCE61uLL, "<<<< MemoryPool >>>>", a1, v5, v6, v7);
  *a2 = result;
  return result;
}

CFTypeRef memoryOrigin_unregisterUseOfBlock_cold_1(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = *(a1 + 16);
  if (v6 <= 0)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 0xFFFFC37DuLL, "<<<< MemoryPool >>>>", 0x9B0, v9, v10, v11);
  }

  else
  {
    v7 = 0;
    *(a1 + 16) = v6 - 1;
  }

  *a2 = v7;
  result = CFRetain(*a1);
  *a3 = result;
  return result;
}

size_t memoryOrigin_unregisterUseOfBlock_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", 0x9A4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryOriginUpdateRecipientStateFromXPCMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", 0xB49, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryOriginUpdateRecipientStateFromXPCMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", 0xB48, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< MemoryPool >>>>", 0xCBD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryOriginGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", 0xCCE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryOriginGetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", 0xCCD, v3, v4, v5);
  *a1 = result;
  return result;
}

void FigMemoryOriginServerCopyMemoryOriginForObjectID_cold_2(CFTypeRef *a1, _DWORD *a2)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<<<< MemoryPool >>>>", 0xCE7, v2, v6, v7);
  if (*a1)
  {
    CFRelease(*a1);
  }

  *a2 = v8;
}

size_t FigMemoryOriginServerCopyMemoryOriginForObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC35EuLL, "<<<< MemoryPool >>>>", 0xCE0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryOriginServerCopyMemoryOriginForObjectID_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", 0xCDF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryOriginServerCopyMemoryOriginForObjectID_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", 0xCDB, v3, v4, v5);
  *a1 = result;
  return result;
}

void CreateSubBlockBuffer_cold_1(uint64_t *a1, uint64_t *a2, _BYTE *a3, BOOL *a4)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  if (*(*a2 + 8) <= v8)
  {
    empty = 0;
  }

  else
  {
    empty = 0;
    v10 = *a1;
    v11 = (v7 + 40 * v8 + 28);
    do
    {
      v13 = *v11;
      v11 += 5;
      v12 = v13;
      if (!receivedMemoryAllocator_findImportedBlockEntryForSerialNumber(v10, v13, 0))
      {
        if (!empty)
        {
          empty = xpc_array_create_empty();
        }

        xpc_array_set_int64(empty, 0xFFFFFFFFFFFFFFFFLL, v12);
      }

      ++v8;
    }

    while (v8 < *(v7 + 8));
  }

  a2[2] = empty;
  *a3 = 1;
  *a4 = empty == 0;
}

BOOL CreateSubBlockBuffer_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC354uLL, "<<<< MemoryPool >>>>", 0x4B2, v1, v2, v3);
  return OUTLINED_FUNCTION_8_13(v4);
}

size_t CreateSubBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC355uLL, "<<<< MemoryPool >>>>", 0x109E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CreateSubBlockBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC355uLL, "<<<< MemoryPool >>>>", 0x1074, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryRecipientCopyBlockBufferFromXPCMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC356uLL, "<<<< MemoryPool >>>>", 0x1167, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryRecipientCopyBlockBufferFromXPCMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC356uLL, "<<<< MemoryPool >>>>", 0x1166, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryRecipientCopyBlockBufferFromXPCMessage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC356uLL, "<<<< MemoryPool >>>>", 0x1165, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryRecipientCopyBlockBufferFromXPCMessage_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC356uLL, "<<<< MemoryPool >>>>", 0x1164, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryRecipientAppendRecipientStateUpdateToXPCMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC356uLL, "<<<< MemoryPool >>>>", 0x119B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryRecipientAppendRecipientStateUpdateToXPCMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC356uLL, "<<<< MemoryPool >>>>", 0x119A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryRecipientAppendRecipientStateUpdateToIPCMessageData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC356uLL, "<<<< MemoryPool >>>>", 0x11C4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC354uLL, "<<<< MemoryPool >>>>", 0x124B, v3, v4, v5);
  *a1 = result;
  return result;
}

BOOL FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC354uLL, "<<<< MemoryPool >>>>", 0x1225, v1, v2, v3);
  return OUTLINED_FUNCTION_8_13(v4);
}

size_t FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_5(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFC355uLL, "<<<< MemoryPool >>>>", a1, v5, v6, v7);
  *a2 = result;
  return result;
}

size_t FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC355uLL, "<<<< MemoryPool >>>>", 0xEB6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC355uLL, "<<<< MemoryPool >>>>", 0xF83, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC354uLL, "<<<< MemoryPool >>>>", 0x124E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC354uLL, "<<<< MemoryPool >>>>", 0x124A, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t FigMemoryOriginCompleteTransaction_cold_1(char a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFC35DuLL, "<<<< MemoryPool >>>>", 0x12E9, v5, v6, v7);
  return a1 & 1;
}

const __CFArray *FigMemoryOriginCompleteTransaction_cold_2(uint64_t a1, char a2, _DWORD *a3)
{
  result = *(a1 + 8);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result > 0)
    {
      v7 = result;
      result = *(a1 + 16);
      if (result)
      {
        result = CFArrayGetCount(result);
        if (a2 == 1 && v7 == result)
        {
          for (i = 0; i != v7; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), i);
            v11 = CFArrayGetValueAtIndex(*(a1 + 16), i);
            SInt64 = FigCFNumberGetSInt64(v11);
            result = memoryOrigin_unregisterUseOfBlock(ValueAtIndex, SInt64);
          }
        }
      }
    }
  }

  *a3 = 0;
  return result;
}

size_t __EnsureMemoryOriginServerStarted_block_invoke_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC0EAuLL, "<<<< MemoryPool >>>>", 0xC69, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t memoryOrigin_disposeEachOriginEntry_cold_1()
{
  OUTLINED_FUNCTION_18_4();
  v1 = 0;
  do
  {
    result = poolBlockState_DecrementBlockUseCount();
    ++v1;
  }

  while (v1 < *v0);
  return result;
}

void receivedMemoryAllocator_disposeReceivedMemoryEntry_cold_1(void *a1)
{
  poolBlockState_DecrementBlockUseCount();
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[7];
  CFAllocatorDeallocate(v4, a1);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __CreateReceivedMemoryAllocator_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18_4();
  *(v2 + 64) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  CFAllocatorGetContext(v3, v1);
  info = v1->info;
  if (info)
  {
    receivedMemoryAllocator_sendPendingBatchOfBlockSNtoDecrementUseCount(info);
  }

  CFRelease(v0);
}

uint64_t FigTransportStreamSendBatchSlow(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  result = 4294950686;
  if (a1 && theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
        if (!ValueAtIndex)
        {
          break;
        }

        v11 = ValueAtIndex;
        v12 = CFGetTypeID(ValueAtIndex);
        if (v12 != CMBlockBufferGetTypeID())
        {
          break;
        }

        v13 = *(*(CMBaseObjectGetVTable(a1) + 16) + 48);
        if (!v13)
        {
          return 4294954514;
        }

        result = v13(a1, a2, v11);
        if (result)
        {
          return result;
        }

        if (v8 == ++v9)
        {
          return 0;
        }
      }

      return 4294950686;
    }
  }

  return result;
}

uint64_t HandleEndpointPlaybackSessionRemoteMessage(_xpc_connection_s *a1, void *a2, void *a3)
{
  HIDWORD(v130) = 0;
  v129 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v130 + 1);
  if (OpCode)
  {
    return OpCode;
  }

  uint64 = xpc_dictionary_get_uint64(a2, ".objectID");
  cf[0] = 0;
  v8 = FigXPCServerLookupAndRetainAssociatedObject(a1, uint64, cf, &v129);
  if (!v8)
  {
    if (cf[0])
    {
      v9 = CFGetTypeID(cf[0]);
      if (v9 == FigEndpointPlaybackSessionGetTypeID())
      {
        v10 = cf[0];
        goto LABEL_6;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v117, 0xFFFFBE9CuLL, "<< FigEndpointPlaybackSessionXPCServer >>", 0xC7, v118, v119, v120);
  }

  v52 = v8;
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (!v52)
  {
    v10 = 0;
LABEL_6:
    switch(HIDWORD(v130))
    {
      case 0x2E637079:
        v113 = OUTLINED_FUNCTION_2_3();
        v11 = FigXPCHandleStdCopyPropertyMessage(v113, v114, a3);
        goto LABEL_101;
      case 0x2E736574:
        v90 = OUTLINED_FUNCTION_2_3();
        v11 = FigXPCHandleStdSetPropertyMessage(v90, v91);
        goto LABEL_101;
      case 0x61746869:
        OUTLINED_FUNCTION_9_14();
        v70 = OUTLINED_FUNCTION_6_18();
        v15 = FigXPCMessageCopyCFData(v70, v71, v72);
        if (v15)
        {
          goto LABEL_94;
        }

        v73 = OUTLINED_FUNCTION_7_16();
        v15 = FigXPCMessageCopyCFString(v73, v74, v75);
        if (v15)
        {
          goto LABEL_94;
        }

        OUTLINED_FUNCTION_11_10();
        OUTLINED_FUNCTION_2_23();
        if (*(*(CMBaseObjectGetVTable(v10) + 16) + 16))
        {
          goto LABEL_93;
        }

        goto LABEL_95;
    }

    if (HIDWORD(v130) != 1651532659)
    {
      switch(HIDWORD(v130))
      {
        case 0x63657668:
          v50 = v129;
          v51 = *(*(CMBaseObjectGetVTable(v10) + 16) + 120);
          if (v51)
          {
            v52 = v51(v10, 0, 0, 0);
          }

          else
          {
            v52 = 4294954514;
          }

          *(v50 + 8) = 0;
          v116 = *(v50 + 16);
          if (v116)
          {
            *(v50 + 16) = 0;
            xpc_release(v116);
          }

          goto LABEL_102;
        case 0x73746F70:
          OUTLINED_FUNCTION_11_10();
          OUTLINED_FUNCTION_0_53();
          if (!*(*(CMBaseObjectGetVTable(v10) + 16) + 48))
          {
            goto LABEL_79;
          }

          break;
        case 0x67706C69:
          OUTLINED_FUNCTION_11_10();
          if (!*(*(CMBaseObjectGetVTable(v10) + 16) + 56))
          {
            goto LABEL_79;
          }

          break;
        case 0x67707072:
          OUTLINED_FUNCTION_9_14();
          v30 = OUTLINED_FUNCTION_6_18();
          v15 = FigXPCMessageCopyCFString(v30, v31, v32);
          if (!v15)
          {
            if (!cf[0])
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_1_0();
              v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v121, 0xFFFFCE10uLL, "<< FigEndpointPlaybackSessionXPCServer >>", 0x297, v122, v123, v124);
              goto LABEL_94;
            }

            v33 = OUTLINED_FUNCTION_7_16();
            v15 = FigXPCMessageCopyCFDictionary(v33, v34, v35);
            if (!v15)
            {
              OUTLINED_FUNCTION_11_10();
              OUTLINED_FUNCTION_2_23();
              if (*(*(CMBaseObjectGetVTable(v10) + 16) + 88))
              {
LABEL_93:
                v111 = OUTLINED_FUNCTION_1_34();
                v15 = v112(v111);
                goto LABEL_94;
              }

LABEL_95:
              v52 = 4294954514;
LABEL_96:
              if (cf[0])
              {
                CFRelease(cf[0]);
              }

              v69 = v135[0];
              if (!v135[0])
              {
                goto LABEL_102;
              }

              goto LABEL_99;
            }
          }

LABEL_94:
          v52 = v15;
          goto LABEL_96;
        case 0x696E766C:
          CMBaseObject = FigEndpointPlaybackSessionGetCMBaseObject(v10);
          if (!CMBaseObject)
          {
            v52 = 4294954516;
            goto LABEL_102;
          }

          v25 = CMBaseObject;
          v26 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 24);
          if (!v26)
          {
            goto LABEL_79;
          }

          v11 = v26(v25);
LABEL_101:
          v52 = v11;
          goto LABEL_102;
        default:
          switch(HIDWORD(v130))
          {
            case 0x69707169:
              OUTLINED_FUNCTION_9_14();
              v92 = OUTLINED_FUNCTION_6_18();
              v15 = FigXPCMessageCopyCFDictionary(v92, v93, v94);
              if (v15)
              {
                goto LABEL_94;
              }

              v95 = OUTLINED_FUNCTION_7_16();
              v15 = FigXPCMessageCopyCFDictionary(v95, v96, v97);
              if (v15)
              {
                goto LABEL_94;
              }

              v15 = OUTLINED_FUNCTION_15_9(0, v98, v99, v100, v101, v102, v103, v104, v129, v130, v131, *(&v131 + 1), v132, v133, v134, v135[0], v135[1], v136, cf[0]);
              if (v15)
              {
                goto LABEL_94;
              }

              OUTLINED_FUNCTION_11_10();
              OUTLINED_FUNCTION_8_14();
              OUTLINED_FUNCTION_0_53();
              if (*(*(CMBaseObjectGetVTable(v10) + 16) + 32))
              {
                goto LABEL_93;
              }

              break;
            case 0x706C6179:
              cf[0] = 0;
              v36 = OUTLINED_FUNCTION_6_18();
              v39 = FigXPCMessageCopyCFDictionary(v36, v37, v38);
              if (v39)
              {
                goto LABEL_61;
              }

              v39 = OUTLINED_FUNCTION_15_9(0, v40, v41, v42, v43, v44, v45, v46, v129, v130, v131, *(&v131 + 1), v132, v133, v134, v135[0], v135[1], v136, cf[0]);
              if (v39)
              {
                goto LABEL_61;
              }

              OUTLINED_FUNCTION_11_10();
              OUTLINED_FUNCTION_8_14();
              OUTLINED_FUNCTION_0_53();
              if (*(*(CMBaseObjectGetVTable(v10) + 16) + 24))
              {
                goto LABEL_60;
              }

              goto LABEL_62;
            case 0x70726561:
              OUTLINED_FUNCTION_9_14();
              v105 = OUTLINED_FUNCTION_6_18();
              v15 = FigXPCMessageCopyCFString(v105, v106, v107);
              if (v15)
              {
                goto LABEL_94;
              }

              v108 = OUTLINED_FUNCTION_7_16();
              v15 = FigXPCMessageCopyCFObject(v108, v109, v110);
              if (v15)
              {
                goto LABEL_94;
              }

              OUTLINED_FUNCTION_11_10();
              OUTLINED_FUNCTION_2_23();
              if (*(*(CMBaseObjectGetVTable(v10) + 16) + 112))
              {
                goto LABEL_93;
              }

              break;
            case 0x72707169:
              cf[0] = 0;
              v64 = OUTLINED_FUNCTION_6_18();
              v39 = FigXPCMessageCopyCFDictionary(v64, v65, v66);
              if (v39)
              {
LABEL_61:
                v52 = v39;
                goto LABEL_63;
              }

              OUTLINED_FUNCTION_11_10();
              OUTLINED_FUNCTION_8_14();
              OUTLINED_FUNCTION_0_53();
              if (*(*(CMBaseObjectGetVTable(v10) + 16) + 40))
              {
LABEL_60:
                v67 = OUTLINED_FUNCTION_3_23();
                v39 = v68(v67);
                goto LABEL_61;
              }

LABEL_62:
              v52 = 4294954514;
LABEL_63:
              v69 = cf[0];
              if (!cf[0])
              {
                goto LABEL_102;
              }

              goto LABEL_99;
            case 0x73656461:
              OUTLINED_FUNCTION_9_14();
              v84 = OUTLINED_FUNCTION_6_18();
              v15 = FigXPCMessageCopyCFDate(v84, v85, v86);
              if (v15)
              {
                goto LABEL_94;
              }

              v87 = OUTLINED_FUNCTION_7_16();
              v15 = FigXPCMessageCopyCFDictionary(v87, v88, v89);
              if (v15)
              {
                goto LABEL_94;
              }

              OUTLINED_FUNCTION_11_10();
              OUTLINED_FUNCTION_2_23();
              if (*(*(CMBaseObjectGetVTable(v10) + 16) + 72))
              {
                goto LABEL_93;
              }

              break;
            case 0x73657469:
              v135[0] = 0;
              v135[1] = 0;
              v136 = 0;
              v134 = 0;
              v76 = OUTLINED_FUNCTION_7_16();
              CMTime = FigXPCMessageGetCMTime(v76, v77, v78);
              if (!CMTime)
              {
                CMTime = FigXPCMessageCopyCFDictionary(a2, "Options", &v134);
                if (!CMTime)
                {
                  v80 = OUTLINED_FUNCTION_11_10();
                  v81 = v134;
                  if (v80)
                  {
                    v82 = SeekCompletionCallback;
                  }

                  else
                  {
                    v82 = 0;
                  }

                  v131 = *v135;
                  v132 = v136;
                  v83 = *(*(CMBaseObjectGetVTable(v10) + 16) + 64);
                  if (!v83)
                  {
                    v52 = 4294954514;
LABEL_109:
                    v69 = v134;
                    if (!v134)
                    {
LABEL_102:
                      if (v10)
                      {
                        CFRelease(v10);
                      }

                      return v52;
                    }

LABEL_99:
                    CFRelease(v69);
                    goto LABEL_102;
                  }

                  *cf = v131;
                  v138 = v132;
                  CMTime = v83(v10, cf, v81, v82, v80);
                }
              }

              v52 = CMTime;
              goto LABEL_109;
            case 0x73657668:
              v27 = v129;
              *(v27 + 8) = xpc_dictionary_get_uint64(a2, ".objectID");
              v28 = *(v27 + 16);
              *(v27 + 16) = FigXPCRetain(a1);
              FigXPCRelease(v28);
              v29 = *(*(CMBaseObjectGetVTable(v10) + 16) + 120);
              if (v29)
              {
                v11 = v29(v10, HandleEventCallback, v27, 0);
                goto LABEL_101;
              }

LABEL_79:
              v52 = 4294954514;
              goto LABEL_102;
            case 0x73707072:
              OUTLINED_FUNCTION_9_14();
              *&v131 = 0;
              v53 = OUTLINED_FUNCTION_6_18();
              v56 = FigXPCMessageCopyCFString(v53, v54, v55);
              if (!v56)
              {
                if (cf[0])
                {
                  v57 = OUTLINED_FUNCTION_7_16();
                  v56 = FigXPCMessageCopyCFDictionary(v57, v58, v59);
                  if (!v56)
                  {
                    v56 = FigXPCMessageCopyCFObject(a2, "PropertyValue", &v131);
                    if (!v56)
                    {
                      v60 = cf[0];
                      v61 = v135[0];
                      v62 = v131;
                      v63 = *(*(CMBaseObjectGetVTable(v10) + 16) + 96);
                      if (!v63)
                      {
                        v52 = 4294954514;
LABEL_112:
                        if (cf[0])
                        {
                          CFRelease(cf[0]);
                        }

                        if (v135[0])
                        {
                          CFRelease(v135[0]);
                        }

                        v69 = v131;
                        if (!v131)
                        {
                          goto LABEL_102;
                        }

                        goto LABEL_99;
                      }

                      v56 = v63(v10, v60, v61, v62);
                    }
                  }
                }

                else
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_1_0();
                  v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v125, 0xFFFFCE10uLL, "<< FigEndpointPlaybackSessionXPCServer >>", 0x2B0, v126, v127, v128);
                }
              }

              v52 = v56;
              goto LABEL_112;
            case 0x73726174:
              cf[0] = 0;
              xpc_dictionary_get_double(a2, "Rate");
              v47 = OUTLINED_FUNCTION_6_18();
              v39 = FigXPCMessageCopyCFDictionary(v47, v48, v49);
              if (v39)
              {
                goto LABEL_61;
              }

              OUTLINED_FUNCTION_11_10();
              OUTLINED_FUNCTION_8_14();
              OUTLINED_FUNCTION_0_53();
              if (*(*(CMBaseObjectGetVTable(v10) + 16) + 80))
              {
                goto LABEL_60;
              }

              goto LABEL_62;
            case 0x646F6F6D:
              v11 = FigXPCServerDisassociateObjectWithConnection(a1, uint64);
              goto LABEL_101;
            default:
              v52 = 4294950556;
              goto LABEL_102;
          }

          goto LABEL_95;
      }

      v22 = OUTLINED_FUNCTION_2_3();
      v11 = v23(v22);
      goto LABEL_101;
    }

    OUTLINED_FUNCTION_9_14();
    v12 = OUTLINED_FUNCTION_6_18();
    v15 = FigXPCMessageCopyCFString(v12, v13, v14);
    if (v15)
    {
      goto LABEL_94;
    }

    v16 = OUTLINED_FUNCTION_7_16();
    v15 = FigXPCMessageCopyCFDictionary(v16, v17, v18);
    if (v15)
    {
      goto LABEL_94;
    }

    v19 = cf[0];
    v20 = v135[0];
    v21 = *(*(CMBaseObjectGetVTable(v10) + 16) + 128);
    if (!v21)
    {
      goto LABEL_95;
    }

    v15 = v21(v10, v19, v20);
    goto LABEL_94;
  }

  return v52;
}

void AuthorizeItemCompletionCallback(const void *a1, const void *a2, int a3, xpc_object_t *a4)
{
  xdict = 0;
  if (a4)
  {
    v8 = OUTLINED_FUNCTION_4_18(a1);
    if (!v8)
    {
      v16 = OUTLINED_FUNCTION_10_10(v8, v9, v10, v11, v12, v13, v14, v15, v26, 0);
      xpc_dictionary_set_uint64(v16, "CompletionID", v17);
      xpc_dictionary_set_int64(xdicta, "CompletionStatus", a3);
      FigXPCMessageSetCFData(xdicta, "PicData", a1);
      v18 = FigXPCMessageSetCFString(xdicta, "PlayerGUID", a2);
      OUTLINED_FUNCTION_14_9(v18, v19, v20, v21, v22, v23, v24, v25, v27, xdicta);
    }
  }

  DestroyCompletionCallbackParameters(a4);
  FigXPCRelease(xdict);
}

void StandardCompletionCallback(uint64_t a1, xpc_object_t *a2)
{
  message = 0;
  if (a2)
  {
    v3 = a1;
    v4 = OUTLINED_FUNCTION_4_18(a1);
    if (!v4)
    {
      v12 = OUTLINED_FUNCTION_10_10(v4, v5, v6, v7, v8, v9, v10, v11, v22, 0);
      xpc_dictionary_set_uint64(v12, "CompletionID", v13);
      FigXPCMessageSetOSStatus(messagea, "CompletionStatus", v3);
      OUTLINED_FUNCTION_14_9(v14, v15, v16, v17, v18, v19, v20, v21, v23, messagea);
    }
  }

  DestroyCompletionCallbackParameters(a2);
  FigXPCRelease(message);
}

void GetPlaybackInfoCompletionCallback(void *a1, int a2, xpc_object_t *a3)
{
  xdict = 0;
  if (a3)
  {
    v6 = OUTLINED_FUNCTION_4_18(a1);
    if (!v6)
    {
      v14 = OUTLINED_FUNCTION_10_10(v6, v7, v8, v9, v10, v11, v12, v13, v24, 0);
      xpc_dictionary_set_uint64(v14, "CompletionID", v15);
      xpc_dictionary_set_int64(xdicta, "CompletionStatus", a2);
      v16 = FigXPCMessageSetCFDictionary(xdicta, "PlaybackInfo", a1);
      OUTLINED_FUNCTION_14_9(v16, v17, v18, v19, v20, v21, v22, v23, v25, xdicta);
    }
  }

  DestroyCompletionCallbackParameters(a3);
  FigXPCRelease(xdict);
}

void SeekCompletionCallback(void *a1, int a2, xpc_object_t *a3)
{
  message = 0;
  if (a3)
  {
    v6 = OUTLINED_FUNCTION_4_18(a1);
    if (!v6)
    {
      v14 = OUTLINED_FUNCTION_10_10(v6, v7, v8, v9, v10, v11, v12, v13, v24, 0);
      xpc_dictionary_set_uint64(v14, "CompletionID", v15);
      FigXPCMessageSetOSStatus(messagea, "CompletionStatus", a2);
      v16 = FigXPCMessageSetCFDictionary(messagea, "SeekResponseInfo", a1);
      OUTLINED_FUNCTION_14_9(v16, v17, v18, v19, v20, v21, v22, v23, v25, messagea);
    }
  }

  DestroyCompletionCallbackParameters(a3);
  FigXPCRelease(message);
}

void GetProxiedPropertyCompletionCallback(const void *a1, void *a2, int a3, xpc_object_t *a4)
{
  xdict = 0;
  if (a4)
  {
    v8 = OUTLINED_FUNCTION_4_18(a1);
    if (!v8)
    {
      v16 = OUTLINED_FUNCTION_10_10(v8, v9, v10, v11, v12, v13, v14, v15, v26, 0);
      xpc_dictionary_set_uint64(v16, "CompletionID", v17);
      xpc_dictionary_set_int64(xdicta, "CompletionStatus", a3);
      FigXPCMessageSetCFString(xdicta, "PropertyKey", a1);
      v18 = FigXPCMessageSetCFObject(xdicta, "PropertyValue", a2);
      OUTLINED_FUNCTION_14_9(v18, v19, v20, v21, v22, v23, v24, v25, v27, xdicta);
    }
  }

  DestroyCompletionCallbackParameters(a4);
  FigXPCRelease(xdict);
}

void RemoteActionCompletionCallback(uint64_t a1, void *a2, xpc_object_t *a3)
{
  message = 0;
  if (a3)
  {
    v5 = a1;
    v6 = OUTLINED_FUNCTION_4_18(a1);
    if (!v6)
    {
      v14 = OUTLINED_FUNCTION_10_10(v6, v7, v8, v9, v10, v11, v12, v13, v24, 0);
      xpc_dictionary_set_uint64(v14, "CompletionID", v15);
      FigXPCMessageSetOSStatus(messagea, "ResponseStatus", v5);
      v16 = FigXPCMessageSetCFObject(messagea, "ResponseParams", a2);
      OUTLINED_FUNCTION_14_9(v16, v17, v18, v19, v20, v21, v22, v23, v25, messagea);
    }
  }

  DestroyCompletionCallbackParameters(a3);
  FigXPCRelease(message);
}

void HandleEventCallback(uint64_t a1, void *a2, uint64_t a3)
{
  message = 0;
  if (a3)
  {
    v4 = FigXPCCreateBasicMessage(0x65686362u, *(a3 + 8), &message);
    v5 = message;
    if (!v4)
    {
      v6 = FigXPCMessageSetCFDictionary(message, "EventInfo", a2);
      OUTLINED_FUNCTION_14_9(v6, v7, v8, v9, v10, v11, v12, v13, v14, message);
      v5 = message;
    }
  }

  else
  {
    v5 = 0;
  }

  FigXPCRelease(v5);
}

BOOL FigXPCEndpointPlaybackSessionServerAssociateCopiedNeighborFigEndpointPlaybackSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<< FigEndpointPlaybackSessionXPCServer >>", 0x393, v3, v4, v5);
  *a1 = v6;
  return v6 == 0;
}

CFMutableArrayRef FigXPCEndpointPlaybackSessionServerAssociateCopiedNeighborFigEndpointPlaybackSession_cold_2(const void *a1, void *a2)
{
  *a2 = a1;
  if (a1)
  {
    CFRetain(a1);
  }

  result = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  a2[3] = result;
  return result;
}

size_t CreateCompletionCallbackParametersFromMessageAndConnection_cold_1_0()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBE9BuLL, "<< FigEndpointPlaybackSessionXPCServer >>", 0xE5, v1, v2, v3);
}

size_t checkRequestAgainstSandboxRules_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE98uLL, "<< FigEndpointPlaybackSessionXPCServer >>", 0x1C2, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t FigH264Bridge_GetNALUnitHeaderLengthFromAVCC(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 < 7)
  {
    return 4294954582;
  }

  result = 0;
  *a3 = (*(a1 + 4) & 3) + 1;
  return result;
}

size_t FigH264Bridge_GetPPSFromAVCC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a2 < 7)
  {
    return 4294954582;
  }

  v5 = *(a1 + 5) & 0x1F;
  if ((*(a1 + 5) & 0x1F) != 0)
  {
    LODWORD(v6) = 6;
    while (1)
    {
      v7 = (v6 + 2);
      if (v7 > a2)
      {
        return 4294954582;
      }

      v8 = *(a1 + v6);
      v9 = __rev16(v8);
      v6 = v7 + (bswap32(v8) >> 16);
      if (v9 < 2 || v6 > a2)
      {
        return 4294954582;
      }

      if (!--v5)
      {
        goto LABEL_12;
      }
    }
  }

  LODWORD(v6) = 6;
LABEL_12:
  v11 = (v6 + 1);
  if (v11 > a2)
  {
    return 4294954582;
  }

  v12 = *(a1 + v6);
  if (v12)
  {
    do
    {
      v13 = v11 + 2;
      if (v11 + 2 > a2)
      {
        return 4294954582;
      }

      v14 = *(a1 + v11);
      v15 = __rev16(v14);
      LODWORD(v11) = v13 + (bswap32(v14) >> 16);
      if (v15 < 2 || v11 > a2)
      {
        return 4294954582;
      }

      if (!a3)
      {
        return OUTLINED_FUNCTION_65(a1, a2, a3, a4, a5);
      }

      a3 = (a3 - 1);
    }

    while (--v12);
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFCE58uLL, "<<<< H264Bridge >>>>", 0x9E6, v18, v19, v20);
}

uint64_t FigH264Bridge_GetSPSSequenceID(const UInt8 *a1, unint64_t a2, _DWORD *a3)
{
  v28 = 0u;
  v29 = 0u;
  theData = 0;
  v3 = 4294954584;
  if (!a1)
  {
    return v3;
  }

  Length = a2;
  if (a2 < 6)
  {
    return v3;
  }

  BytePtr = a1;
  if ((*a1 & 0x1F) != 7)
  {
    return v3;
  }

  v7 = RemoveEmulation3Byte(a1, a2, &theData);
  v8 = theData;
  if (v7)
  {
LABEL_26:
    v3 = v7;
    if (!v8)
    {
      return v3;
    }

    goto LABEL_23;
  }

  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(v8);
  }

  *&v28 = BytePtr + 4;
  DWORD2(v28) = Length - 4;
  *&v29 = BytePtr + 4;
  if ((Length - 4) < 4 && Length != 4)
  {
    OUTLINED_FUNCTION_36();
    __memcpy_chk();
  }

  OUTLINED_FUNCTION_61();
  if (!v9)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_20_7();
  v12 = v11 + v10;
  v13 = Length - 4 - ((v11 + v10) >> 3);
  if (v13 <= 3)
  {
    v14 = &BytePtr[(v12 >> 3) + 4];
    v15 = v12 & 7;
    if (v13 <= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 + 1;
    }

    v17 = v13 - (v13 > 0);
    if (v17 > 0)
    {
      ++v16;
    }

    v18 = v17 - (v17 > 0);
    v19 = v18 & (v18 >> 31);
    v20 = v18 <= 0 ? v16 : v16 + 1;
    if (v19 | v15 && v20 == v14)
    {
LABEL_25:
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", 0xAAE, v24, v25, v26);
      goto LABEL_26;
    }
  }

  v3 = 0;
  OUTLINED_FUNCTION_58();
  *a3 = v21;
  if (v8)
  {
LABEL_23:
    CFRelease(v8);
  }

  return v3;
}

size_t FigH264Bridge_GetSPSWidthAndHeight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_29_2(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_11_11();
  v10 = RemoveEmulation3Byte(BytePtr, v8, v9);
  if (v10)
  {
    return v10;
  }

  v11 = theData;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    LODWORD(v8) = CFDataGetLength(theData);
  }

  OUTLINED_FUNCTION_34_1();
  if (v12)
  {
    v13 = *BytePtr;
  }

  else if (v8)
  {
    OUTLINED_FUNCTION_23_6();
    __memcpy_chk();
    v13 = v17;
  }

  else
  {
    v13 = 0;
  }

  v14 = OUTLINED_FUNCTION_21_7(v13, theData);
  if (v11)
  {
    CFRelease(v11);
  }

  if (!v14)
  {
    FigH264Bridge_GetWidthAndHeightFromParsedSPS(v18, v6, v5);
  }

  return v14;
}

size_t FigH264Bridge_GetSPSIsInterlaced()
{
  OUTLINED_FUNCTION_35_0();
  bzero(v14, 0x200uLL);
  OUTLINED_FUNCTION_11_11();
  v6 = OUTLINED_FUNCTION_67(v3, v4, v5);
  if (v6)
  {
    return v6;
  }

  v7 = theData;
  if (theData)
  {
    CFDataGetBytePtr(theData);
    v2 = OUTLINED_FUNCTION_68();
  }

  OUTLINED_FUNCTION_53();
  if (v8)
  {
    v9 = *v1;
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_23_6();
    OUTLINED_FUNCTION_66();
    v9 = v13;
  }

  else
  {
    v9 = 0;
  }

  v10 = OUTLINED_FUNCTION_21_7(v9, theData);
  if (v7)
  {
    CFRelease(v7);
  }

  if (!v10)
  {
    *v0 = v15 == 0;
  }

  return v10;
}

size_t FigH264Bridge_GetSPSChromaFormatAndBitDepths(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_41(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_11_11();
  v11 = RemoveEmulation3Byte(BytePtr, v9, v10);
  if (v11)
  {
    return v11;
  }

  v12 = theData;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    LODWORD(v9) = CFDataGetLength(theData);
  }

  OUTLINED_FUNCTION_52();
  if (v13)
  {
    v14 = *BytePtr;
  }

  else if (v9)
  {
    OUTLINED_FUNCTION_23_6();
    __memcpy_chk();
    v14 = v18;
  }

  else
  {
    v14 = 0;
  }

  v15 = OUTLINED_FUNCTION_21_7(v14, theData);
  if (v12)
  {
    CFRelease(v12);
  }

  if (!v15)
  {
    if (v7)
    {
      *v7 = v19;
    }

    if (v6)
    {
      *v6 = v20 + 8;
    }

    v15 = 0;
    if (v5)
    {
      *v5 = v21 + 8;
    }
  }

  return v15;
}

uint64_t FigH264Bridge_GetSPS_VUI_Framerate(const UInt8 *BytePtr, unint64_t a2, float *a3, BOOL *a4, _BYTE *a5, BOOL *a6, _DWORD *a7)
{
  bzero(v24, 0x200uLL);
  OUTLINED_FUNCTION_11_11();
  v15 = RemoveEmulation3Byte(BytePtr, a2, v14);
  if (v15)
  {
    return v15;
  }

  v16 = theData;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    LODWORD(a2) = CFDataGetLength(theData);
  }

  if (a2 < 4)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_23_6();
      __memcpy_chk();
      v17 = v23;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = *BytePtr;
  }

  v18 = OUTLINED_FUNCTION_21_7(v17, theData);
  if (v16)
  {
    CFRelease(v16);
  }

  if (!v18)
  {
    if (v27)
    {
      v19 = v29 / v28;
      if (v25 != 2 || v26 != 0)
      {
        v19 = v19 * 0.5;
      }

      *a3 = v19;
      *a4 = v30 != 0;
      *a5 = v32;
      *a6 = v31 != 0;
      *a7 = 0;
      v18 = 0;
      if (*a6)
      {
        *a7 = v33 + v34 + 2;
      }
    }

    else
    {
      return 4294954584;
    }
  }

  return v18;
}

size_t FigH264Bridge_GetAndVisitH264ParameterSetAtIndex(CFTypeRef cf, unint64_t a2, unint64_t a3, unint64_t *a4, void *a5, _DWORD *a6, unint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (!cf || (v17 = CFGetTypeID(cf), v17 != CFDataGetTypeID()))
  {
    v31 = 3023;
LABEL_54:
    emitter = fig_log_get_emitter("com.apple.coremedia", "");

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< H264Bridge >>>>", v31, v9, v34, v35);
  }

  v36 = a5;
  Length = CFDataGetLength(cf);
  BytePtr = CFDataGetBytePtr(cf);
  if (Length < 6)
  {
    v31 = 3028;
    goto LABEL_54;
  }

  v20 = BytePtr;
  if (*BytePtr != 1)
  {
    v31 = 3033;
    goto LABEL_54;
  }

  v21 = BytePtr[1];
  if (a6)
  {
    *a6 = (BytePtr[4] & 3) + 1;
    if (!a5 && !a3 && !a4 && !a7)
    {
      return 0;
    }
  }

  v22 = 0;
  v23 = 0;
  LODWORD(v24) = 0;
  v25 = 5;
  v38 = v21 - 100;
  v37 = (1 << (v21 - 100)) & 0x100000400401;
  do
  {
    if (v22 != 2)
    {
      goto LABEL_26;
    }

    if (v38 > 0x2C)
    {
      break;
    }

    if (!v37 || Length == v25)
    {
      break;
    }

    v25 += 3;
LABEL_26:
    if (Length <= v25)
    {
      v9 = v8;
      v31 = 3056;
      goto LABEL_54;
    }

    v27 = v25 + 1;
    LODWORD(v25) = v20[v25];
    if (v22)
    {
      v25 = v25;
    }

    else
    {
      v25 &= 0x1Fu;
    }

    if (v25)
    {
      v39 = v25;
      v40 = v23;
      v24 = v24;
      v28 = v25;
      while (1)
      {
        if (Length <= v27 + 1)
        {
          v31 = 3065;
          goto LABEL_53;
        }

        v29 = v20[v27 + 1] | (v20[v27] << 8);
        v30 = v27 + 2;
        v27 += v29 + 2;
        if (Length < v27)
        {
          break;
        }

        if (a2 == v24)
        {
          if (a3)
          {
            *a3 = &v20[v30];
          }

          if (a4)
          {
            *a4 = v29;
          }

          if (!(v36 | a7))
          {
            return 0;
          }
        }

        if (a7)
        {
          (a7)(a8, v24, &v20[v30]);
        }

        ++v24;
        if (!--v28)
        {
          v25 = v39;
          v23 = v40;
          goto LABEL_44;
        }
      }

      v31 = 3068;
      goto LABEL_53;
    }

LABEL_44:
    v23 += v25;
    ++v22;
    v25 = v27;
  }

  while (v22 != 3);
  if (v36)
  {
    *v36 = v23;
  }

  if (a3 | a4 && v23 <= a2)
  {
    v31 = 3088;
LABEL_53:
    v9 = v8;
    goto LABEL_54;
  }

  return 0;
}

uint64_t FigH264Bridge_GetSPS_VUI_FullRangeVideo()
{
  OUTLINED_FUNCTION_35_0();
  bzero(v14, 0x200uLL);
  OUTLINED_FUNCTION_11_11();
  v6 = OUTLINED_FUNCTION_67(v3, v4, v5);
  if (v6)
  {
    return v6;
  }

  v7 = theData;
  if (theData)
  {
    CFDataGetBytePtr(theData);
    v2 = OUTLINED_FUNCTION_68();
  }

  OUTLINED_FUNCTION_53();
  if (v8)
  {
    v9 = *v1;
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_23_6();
    OUTLINED_FUNCTION_66();
    v9 = v13;
  }

  else
  {
    v9 = 0;
  }

  v10 = OUTLINED_FUNCTION_21_7(v9, theData);
  if (v7)
  {
    CFRelease(v7);
  }

  if (!v10)
  {
    if (v15)
    {
      v10 = 0;
      *v0 = v16;
    }

    else
    {
      return 4294954584;
    }
  }

  return v10;
}

uint64_t FigH264Bridge_GetPPSSequenceID(const UInt8 *a1, unint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v44 = 0u;
  v45 = 0u;
  theData = 0;
  if (!a1)
  {
    return 4294954584;
  }

  BytePtr = a1;
  if ((*a1 & 0x1F) != 8)
  {
    return 4294954584;
  }

  v8 = RemoveEmulation3Byte(a1, a2, &theData);
  v9 = theData;
  if (v8)
  {
    goto LABEL_43;
  }

  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    CFDataGetLength(v9);
  }

  OUTLINED_FUNCTION_42();
  if (!v10 && BytePtr)
  {
    OUTLINED_FUNCTION_36();
    __memcpy_chk();
  }

  OUTLINED_FUNCTION_61();
  if (!v11)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_20_7();
  v14 = v13 + v12;
  v15 = (v13 + v12) & 7;
  v16 = (v4 + ((v13 + v12) >> 3));
  v17 = BytePtr - (v14 >> 3);
  if (v17 >= 4)
  {
    v18 = bswap32(*v16);
    goto LABEL_23;
  }

  if (v17 < 1)
  {
    v18 = v17 | v15;
    if (!v18)
    {
      goto LABEL_23;
    }

LABEL_19:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v23 = 3651;
LABEL_42:
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v23, v20, v21, v22);
LABEL_43:
    v38 = v8;
    if (!v9)
    {
      return v38;
    }

    goto LABEL_38;
  }

  if (v17 == 1)
  {
    v18 = *v16 << 24;
  }

  else
  {
    OUTLINED_FUNCTION_19_7();
    if (!v24)
    {
      v25 |= v16[2];
    }

    v18 = v25 << 8;
  }

LABEL_23:
  if (!((v18 << v15) >> 19))
  {
    goto LABEL_41;
  }

  v26 = __clz(v18 << v15);
  v27 = v26 + v15 + v26 + 1;
  v28 = &v16[v27 >> 3];
  v29 = v4 + BytePtr - v28;
  if (v29 <= 3)
  {
    v30 = v27 & 7;
    if (v29 <= 0)
    {
      v31 = v28;
    }

    else
    {
      v31 = v28 + 1;
    }

    v32 = v29 - (v29 > 0);
    if (v32 > 0)
    {
      ++v31;
    }

    v33 = v32 - (v32 > 0);
    v34 = v33 <= 0;
    v35 = v33 & (v33 >> 31);
    v36 = v34 ? v31 : v31 + 1;
    if (v35 | v30 && v36 == v28)
    {
LABEL_41:
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      v23 = 3652;
      goto LABEL_42;
    }
  }

  v38 = 0;
  OUTLINED_FUNCTION_58();
  *a3 = v40 + ~(-1 << v39);
  *a4 = v41;
  if (v9)
  {
LABEL_38:
    CFRelease(v9);
  }

  return v38;
}

size_t FigH264Bridge_CopyStandaloneSPSData()
{
  OUTLINED_FUNCTION_35_0();
  bzero(v17, 0x200uLL);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  theData = 0;
  v10 = 0u;
  v11 = 0u;
  v5 = OUTLINED_FUNCTION_67(v3, v4, &theData);
  if (v5)
  {
    return v5;
  }

  v6 = theData;
  if (theData)
  {
    CFDataGetBytePtr(theData);
    v2 = OUTLINED_FUNCTION_68();
  }

  v13 = v1;
  LODWORD(v14) = v2;
  v15 = v1;
  if (v2 < 4)
  {
    if (v2)
    {
      LODWORD(v16) = 0;
      OUTLINED_FUNCTION_66();
      v7 = v16;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = *v1;
  }

  LODWORD(v16) = bswap32(v7);
  BYTE4(v16) = 0;
  v8 = PullParamSetSPS(&v13, v17);
  if (v6)
  {
    CFRelease(v6);
  }

  if (!v8)
  {
    v10 = v18;
    LODWORD(v11) = v19;
    *(&v11 + 4) = v20;
    HIDWORD(v11) = v21;
    *v0 = CFDataCreate(*MEMORY[0x1E695E480], &v10, 32);
  }

  return v8;
}

size_t FigH264Bridge_CopyStandalonePPSData()
{
  OUTLINED_FUNCTION_35_0();
  v27 = 0u;
  memset(v28, 0, 24);
  memset(v26, 0, sizeof(v26));
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v21 = 0;
  bzero(&v10, 0x414uLL);
  v5 = OUTLINED_FUNCTION_67(v3, v4, &v21);
  if (v5)
  {
    return v5;
  }

  v6 = v21;
  if (v21)
  {
    CFDataGetBytePtr(v21);
    v2 = OUTLINED_FUNCTION_68();
  }

  v22 = v1;
  LODWORD(v23) = v2;
  v24 = v1;
  if (v2 < 4)
  {
    if (v2)
    {
      LODWORD(v25) = 0;
      OUTLINED_FUNCTION_66();
      v7 = v25;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = *v1;
  }

  LODWORD(v25) = bswap32(v7);
  BYTE4(v25) = 0;
  v8 = PullParamSetPPS(&v22, v26);
  if (v6)
  {
    CFRelease(v6);
  }

  if (!v8)
  {
    v10 = vrev64_s32(*&v26[0]);
    v11 = BYTE8(v26[0]);
    v12 = BYTE9(v26[0]);
    v13 = *(v26 + 12);
    v14 = *(&v27 + 1);
    v15 = LOBYTE(v28[0]);
    v16 = *(v28 + 4);
    v17 = BYTE4(v28[1]);
    v18 = BYTE5(v28[1]);
    v19 = BYTE6(v28[1]);
    v20 = 1;
    *v0 = CFDataCreate(*MEMORY[0x1E695E480], &v10, 1044);
  }

  return v8;
}

uint64_t FigH264Bridge_GetPPSSequenceIDFromSlice(const UInt8 *a1, unint64_t a2, unsigned int *a3, unsigned int *a4)
{
  v59 = 0u;
  v60 = 0u;
  theData = 0;
  v4 = 4294954584;
  if (!a1)
  {
    return v4;
  }

  if (a2 < 2)
  {
    return v4;
  }

  BytePtr = a1;
  if ((*a1 & 0x1B) != 1)
  {
    return v4;
  }

  v8 = RemoveEmulation3Byte(a1, a2, &theData);
  v9 = theData;
  if (v8)
  {
LABEL_21:
    v4 = v8;
    if (!v9)
    {
      return v4;
    }

    goto LABEL_59;
  }

  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    CFDataGetLength(v9);
  }

  OUTLINED_FUNCTION_42();
  if (v10)
  {
    DWORD2(v60) = MEMORY[0xFFFFCE58];
  }

  else if (BytePtr)
  {
    OUTLINED_FUNCTION_36();
    __memcpy_chk();
  }

  v11 = bswap32(DWORD2(v60));
  DWORD2(v60) = v11;
  BYTE12(v60) = 0;
  if (!(v11 >> 19))
  {
    goto LABEL_19;
  }

  v12 = __clz(v11);
  v13 = BytePtr - (v12 >> 2);
  if (v13 >= 4)
  {
    v14 = bswap32(*((v12 >> 2) + 0xFFFFCE58));
    goto LABEL_26;
  }

  if (v13 < 1)
  {
LABEL_19:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 3861;
LABEL_20:
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v19, v16, v17, v18);
    goto LABEL_21;
  }

  if (v13 == 1)
  {
    v14 = *((v12 >> 2) + 0xFFFFCE58) << 24;
  }

  else
  {
    OUTLINED_FUNCTION_14_10();
    if (!v20)
    {
      v22 |= *(v21 + 2);
    }

    v14 = v22 << 8;
  }

LABEL_26:
  if (!((v14 << ((2 * (v12 & 3)) | 1)) >> 19))
  {
LABEL_34:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = 3863;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_26_5();
  v27 = v23 + v25 + v26;
  v28 = v27 >> 3;
  v29 = v27 & 7;
  v31 = (v30 + v28);
  v33 = v32 - v31;
  if (v32 - v31 >= 4)
  {
    v34 = bswap32(*v31);
    goto LABEL_38;
  }

  if (v33 < 1)
  {
    v34 = v29 | v33;
    if (!v34)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (v33 == 1)
  {
    v34 = *v31 << 24;
  }

  else
  {
    OUTLINED_FUNCTION_24_5();
    if (!v35)
    {
      v37 |= *(v36 + 2);
    }

    v34 = v37 << 8;
  }

LABEL_38:
  v38 = v24 + ~(-1 << v23);
  if (v38 > 9)
  {
    goto LABEL_61;
  }

  if (a3)
  {
    *a3 = v38;
  }

  if (!((v34 << v29) >> 19))
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_26_5();
  v43 = v39 + v41 + v42;
  v45 = v44 + (v43 >> 3);
  v47 = v46 - v45;
  if (v47 <= 3)
  {
    v48 = v43 & 7;
    if (v47 <= 0)
    {
      v49 = v45;
    }

    else
    {
      v49 = v45 + 1;
    }

    v50 = v47 - (v47 > 0);
    if (v50 > 0)
    {
      ++v49;
    }

    v51 = v50 - (v50 > 0);
    v52 = v51 <= 0;
    v53 = v51 & (v51 >> 31);
    v54 = v52 ? v49 : v49 + 1;
    if (v53 | v48 && v54 == v45)
    {
LABEL_63:
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      v19 = 3868;
      goto LABEL_20;
    }
  }

  v56 = v40 + ~(-1 << v39);
  if (v56 > 0xFF)
  {
LABEL_61:
    v4 = 4294954584;
    if (!v9)
    {
      return v4;
    }

    goto LABEL_59;
  }

  v4 = 0;
  if (a4)
  {
    *a4 = v56;
  }

  if (v9)
  {
LABEL_59:
    CFRelease(v9);
  }

  return v4;
}

size_t FigH264Bridge_GetInterlaceTypeFromSlice(const UInt8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4, int *a5, unsigned int *a6, BOOL *a7)
{
  v85 = 0u;
  v86 = 0u;
  theData = 0;
  v83 = 0u;
  v7 = 4294954584;
  if (!a1)
  {
    return v7;
  }

  v8 = a2;
  if (a2 < 3)
  {
    return v7;
  }

  BytePtr = a1;
  if (a5)
  {
    *a5 = 3;
  }

  bzero(v87, 0x200uLL);
  v15 = RemoveEmulation3Byte(BytePtr, v8, &theData);
  if (v15)
  {
    return v15;
  }

  v16 = theData;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    LODWORD(v8) = CFDataGetLength(v16);
  }

  *&v85 = BytePtr;
  DWORD2(v85) = v8;
  *&v86 = BytePtr;
  if (v8 < 4)
  {
    if (v8)
    {
      DWORD2(v86) = 0;
      __memcpy_chk();
    }
  }

  else
  {
    DWORD2(v86) = *BytePtr;
  }

  DWORD2(v86) = bswap32(DWORD2(v86));
  BYTE12(v86) = 0;
  v7 = PullParamSetSPS(&v85, v87);
  if (v16)
  {
    CFRelease(v16);
  }

  if (v7)
  {
    return v7;
  }

  v17 = v88;
  v7 = 4294954584;
  if (v88 > 12 || !a3 || a4 < 3)
  {
    return v7;
  }

  if (a7)
  {
    *a7 = (*a3 & 0x60) != 0;
  }

  if ((*a3 & 0x1B) != 1)
  {
    return 4294954577;
  }

  v18 = a3 + 1;
  v19 = a4 - 1;
  if (v19 < 4)
  {
    if (v19)
    {
      DWORD2(v83) = 0;
      __memcpy_chk();
    }
  }

  else
  {
    DWORD2(v83) = *v18;
  }

  v20 = bswap32(DWORD2(v83));
  if (!(v20 >> 19))
  {
    goto LABEL_31;
  }

  v21 = __clz(v20);
  v22 = v18 + (v21 >> 2);
  v23 = v19 - (v21 >> 2);
  if (v23 >= 4)
  {
    v24 = bswap32(*v22);
    goto LABEL_37;
  }

  if (v23 < 1)
  {
LABEL_31:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v30 = 3930;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v30, v27, v28, v29);
  }

  v25 = *v22;
  if (v23 == 1)
  {
    v24 = v25 << 24;
  }

  else
  {
    v31 = (v25 << 16) | (v22[1] << 8);
    if (v23 != 2)
    {
      v31 |= v22[2];
    }

    v24 = v31 << 8;
  }

LABEL_37:
  if (!(v24 << ((2 * (v21 & 3)) | 1) >> 19))
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_26_5();
  v37 = v33 + v35 + v36;
  v38 = v37 >> 3;
  v39 = v37 & 7;
  v41 = (v40 + v38);
  v42 = v32 - v41;
  if (v32 - v41 >= 4)
  {
    v43 = bswap32(*v41);
    goto LABEL_49;
  }

  if (v42 < 1)
  {
    v43 = v39 | v42;
    if (!v43)
    {
      goto LABEL_49;
    }

LABEL_45:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v30 = 3932;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v30, v27, v28, v29);
  }

  if (v42 == 1)
  {
    v43 = *v41 << 24;
  }

  else
  {
    OUTLINED_FUNCTION_24_5();
    if (!v44)
    {
      v45 |= v41[2];
    }

    v43 = v45 << 8;
  }

LABEL_49:
  if (((-1 << v33) - v34) < 0xFFFFFFF6)
  {
    return v7;
  }

  v46 = v43 << v39;
  if (!((v43 << v39) >> 19))
  {
    goto LABEL_115;
  }

  v47 = __clz(v46);
  v48 = v46 << (v47 + 1) >> -v47;
  if (v47)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v50 = v47 + v39 + v47 + 1;
  v51 = v50 >> 3;
  v52 = v50 & 7;
  v53 = &v41[v51];
  v54 = v32 - (v41 + v51);
  if (v54 >= 4)
  {
    v55 = bswap32(*v53);
    goto LABEL_64;
  }

  if (v54 < 1)
  {
    if (!(v52 | v54))
    {
      v55 = 0;
      goto LABEL_64;
    }

LABEL_115:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v30 = 3934;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v30, v27, v28, v29);
  }

  v56 = *v53;
  if (v54 == 1)
  {
    v55 = v56 << 24;
  }

  else
  {
    v57 = (v56 << 16) | (v53[1] << 8);
    if (v54 != 2)
    {
      v57 |= v53[2];
    }

    v55 = v57 << 8;
  }

LABEL_64:
  if ((-1 << v47) - v49 < 0xFFFFFF00)
  {
    return v7;
  }

  if (v17 <= -4)
  {
    goto LABEL_116;
  }

  v58 = v52 + v17 + 4;
  v59 = v58 >> 3;
  v60 = v58 & 7;
  v61 = &v53[v59];
  v62 = v32 - v61;
  if (v32 - v61 >= 4)
  {
    v63 = bswap32(*v61);
    if (!a6)
    {
      goto LABEL_76;
    }

LABEL_75:
    *a6 = v55 << v52 >> (28 - v17);
    goto LABEL_76;
  }

  if (v62 < 1)
  {
    v63 = v60 | v62;
    if (!v63)
    {
      if (!a6)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }

LABEL_116:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v30 = 3936;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v30, v27, v28, v29);
  }

  v64 = *v61;
  if (v62 == 1)
  {
    v63 = v64 << 24;
    if (a6)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v69 = (v64 << 16) | (v61[1] << 8);
    if (v62 != 2)
    {
      v69 |= v61[2];
    }

    v63 = v69 << 8;
    if (a6)
    {
      goto LABEL_75;
    }
  }

LABEL_76:
  if (v89)
  {
    goto LABEL_93;
  }

  v65 = (v60 + 1) & 7;
  v66 = &v61[(v60 + 1) >> 3];
  v67 = v32 - v66;
  if (v32 - v66 >= 4)
  {
    v68 = bswap32(*v66);
    goto LABEL_92;
  }

  if (v67 < 1)
  {
    v68 = v65 | v67;
    if (!v68)
    {
      goto LABEL_92;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v30 = 3945;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v30, v27, v28, v29);
  }

  if (v67 == 1)
  {
    v68 = *v66 << 24;
  }

  else
  {
    OUTLINED_FUNCTION_24_5();
    if (!v70)
    {
      v71 |= v66[2];
    }

    v68 = v71 << 8;
  }

LABEL_92:
  if (((v63 << v60) & 0x80000000) == 0)
  {
LABEL_93:
    if (a5)
    {
      v7 = 0;
      *a5 = 0;
      return v7;
    }

    return 0;
  }

  v72 = &v66[(v65 + 1) >> 3];
  v73 = v32 - v72;
  if (v73 <= 3)
  {
    if (v73 <= 0)
    {
      v74 = &v66[(v65 + 1) >> 3];
    }

    else
    {
      v74 = v72 + 1;
    }

    v75 = v73 - (v73 > 0);
    if (v75 > 0)
    {
      ++v74;
    }

    v76 = v75 - (v75 > 0);
    v77 = v76 <= 0;
    v78 = v76 & (v76 >> 31);
    v79 = v77 ? v74 : v74 + 1;
    if (v78 | (v65 + 1) & 7 && v79 == v72)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v30 = 3951;
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v30, v27, v28, v29);
    }
  }

  if (!a5)
  {
    return 0;
  }

  v7 = 0;
  if (v68 << v65 >= 0)
  {
    v81 = 1;
  }

  else
  {
    v81 = 2;
  }

  *a5 = v81;
  return v7;
}

size_t FigH264Bridge_GetSliceInformationFromSampleBuffer(opaqueCMSampleBuffer *a1, int *a2, unsigned int *a3, BOOL *a4)
{
  v42[5] = *MEMORY[0x1E69E9840];
  v42[0] = 0;
  v40 = 0;
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  if (!FormatDescription)
  {
    return 4294954584;
  }

  Extensions = CMFormatDescriptionGetExtensions(FormatDescription);
  if (!Extensions)
  {
    return 4294954584;
  }

  Value = CFDictionaryGetValue(Extensions, @"SampleDescriptionExtensionAtoms");
  if (!Value)
  {
    return 4294954584;
  }

  v9 = Value;
  v10 = CFGetTypeID(Value);
  if (v10 != CFDictionaryGetTypeID())
  {
    return 4294954584;
  }

  v11 = CFDictionaryGetValue(v9, @"avcC");
  if (!v11)
  {
    return 4294954584;
  }

  ValueAtIndex = v11;
  v13 = CFGetTypeID(v11);
  if (v13 == CFArrayGetTypeID())
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    if (!ValueAtIndex)
    {
      return 4294954584;
    }
  }

  v14 = CFGetTypeID(ValueAtIndex);
  if (v14 != CFDataGetTypeID())
  {
    return 4294954584;
  }

  v41 = 0;
  BytePtr = CFDataGetBytePtr(ValueAtIndex);
  Length = CFDataGetLength(ValueAtIndex);
  result = FigH264Bridge_GetSPSFromAVCC(BytePtr, Length, 0, v42, &v40);
  if (!result)
  {
    v18 = CFDataGetBytePtr(ValueAtIndex);
    if (CFDataGetLength(ValueAtIndex) >= 7)
    {
      v19 = v18[4];
      v20 = v19 & 3;
      v21 = (v19 & 3) + 1;
      v22 = v20 < 2 || v21 == 4;
      if (v22 && CMSampleBufferGetDataBuffer(a1))
      {
        v23 = 0;
        v24 = v42[0];
        v25 = v40;
        while (1)
        {
          v39 = 0;
          v26 = OUTLINED_FUNCTION_64();
          result = CMBlockBufferAccessDataBytes(v26, v27, v21, v28, v29);
          if (result)
          {
            return result;
          }

          if (v20 == 1)
          {
            __memcpy_chk();
            v30 = bswap32(0) >> 16;
          }

          else
          {
            if (v20 != 3)
            {
              __memcpy_chk();
              v30 = 0;
              goto LABEL_25;
            }

            v30 = bswap32(*v41);
          }

          v39 = v30;
LABEL_25:
          if (v30 >= 0x20)
          {
            v31 = 32;
          }

          else
          {
            v31 = v30;
          }

          v32 = v23 + v21;
          v33 = OUTLINED_FUNCTION_64();
          result = CMBlockBufferAccessDataBytes(v33, v34, v31, v35, v36);
          if (!result)
          {
            result = FigH264Bridge_GetInterlaceTypeFromSlice(v24, v25, v41, v31, a2, a3, a4);
            v23 = v32 + v39;
            if (result == -12719)
            {
              continue;
            }
          }

          return result;
        }
      }

      return 4294954584;
    }

    return 4294954582;
  }

  return result;
}

uint64_t FigH264Bridge_CreateHLSfMP4ParsingInfoFromAVCCData(const void *a1, void *a2)
{
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFDataGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v42 = 4047;
    goto LABEL_53;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v42 = 4048;
    goto LABEL_53;
  }

  SPSAndPPSCountFromAVCC = FigH264Bridge_GetSPSAndPPSCountFromAVCC(a1, &v64, &v63);
  if (SPSAndPPSCountFromAVCC)
  {
    return SPSAndPPSCountFromAVCC;
  }

  if (!v64)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v42 = 4052;
    goto LABEL_53;
  }

  if (!v63)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v42 = 4053;
LABEL_53:
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, 0xFFFFCE58uLL, "<<<< H264Bridge >>>>", v42, v39, v40, v41);
    v7 = 0;
    if (v19)
    {
      goto LABEL_54;
    }

    goto LABEL_40;
  }

  v6 = malloc_type_malloc(0x3900uLL, 0x1000040677A246CuLL);
  v7 = v6;
  if (!v6)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, 0xFFFFCE57uLL, "<<<< H264Bridge >>>>", 0xFD8, v49, v50, v51);
    if (v19)
    {
      goto LABEL_54;
    }

    goto LABEL_40;
  }

  bzero(v6, 0x3900uLL);
  if (!v64)
  {
LABEL_24:
    if (v63)
    {
      v22 = 0;
      do
      {
        v59 = 0;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        v54 = 0u;
        memset(v55, 0, sizeof(v55));
        v53 = 0u;
        theData = 0;
        BytePtr = CFDataGetBytePtr(a1);
        Length = CFDataGetLength(a1);
        PPSFromAVCC = FigH264Bridge_GetPPSFromAVCC(BytePtr, Length, v22, &v67, &v65);
        if (PPSFromAVCC)
        {
          goto LABEL_46;
        }

        v25 = v67;
        v26 = v65;
        PPSFromAVCC = RemoveEmulation3Byte(v67, v65, &theData);
        if (PPSFromAVCC)
        {
          goto LABEL_46;
        }

        v27 = theData;
        if (theData)
        {
          *&v53 = CFDataGetBytePtr(theData);
          v28 = CFDataGetLength(v27);
          v29 = v28;
          DWORD2(v53) = v28;
          v25 = v53;
        }

        else
        {
          *&v53 = v25;
          v29 = v26;
          DWORD2(v53) = v26;
        }

        *&v54 = v25;
        if (v29 < 4)
        {
          if (v29)
          {
            OUTLINED_FUNCTION_51();
          }
        }

        else
        {
          DWORD2(v54) = *v25;
        }

        OUTLINED_FUNCTION_43();
        v19 = PullParamSetPPS(v30, v31);
        if (v27)
        {
          CFRelease(v27);
        }

        if (v19)
        {
          goto LABEL_47;
        }

        if (LODWORD(v55[0]) >= 0x100)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v47 = 4122;
          goto LABEL_45;
        }

        v32 = &v7[52 * LODWORD(v55[0]) + 1280];
        *v32 = 1;
        v33 = BYTE8(v55[0]);
        *(v32 + 4) = DWORD1(v55[0]);
        *(v32 + 8) = v33;
        *(v32 + 12) = BYTE9(v55[0]);
        *&v34 = *(v55 + 12);
        *(&v34 + 1) = __PAIR64__(DWORD2(v57), HIDWORD(v56));
        *(v32 + 16) = v34;
        v35 = v58;
        *(v32 + 32) = HIDWORD(v57);
        *(v32 + 36) = v35;
        v36 = BYTE4(v59);
        *(v32 + 40) = DWORD1(v58);
        *(v32 + 44) = v36;
        *(v32 + 48) = BYTE6(v59);
      }

      while (++v22 < v63);
    }

LABEL_40:
    v19 = 0;
    *a2 = v7;
    return v19;
  }

  v8 = 0;
  while (1)
  {
    bzero(v55, 0x200uLL);
    v53 = 0u;
    v54 = 0u;
    theData = 0;
    v9 = CFDataGetBytePtr(a1);
    v10 = CFDataGetLength(a1);
    PPSFromAVCC = FigH264Bridge_GetSPSFromAVCC(v9, v10, v8, &v68, &v66);
    if (PPSFromAVCC)
    {
      break;
    }

    v12 = v68;
    v13 = v66;
    PPSFromAVCC = RemoveEmulation3Byte(v68, v66, &theData);
    if (PPSFromAVCC)
    {
      break;
    }

    v14 = theData;
    if (theData)
    {
      *&v53 = CFDataGetBytePtr(theData);
      v16 = CFDataGetLength(v14);
      v15 = v16;
      DWORD2(v53) = v16;
      v12 = v53;
    }

    else
    {
      *&v53 = v12;
      v15 = v13;
      DWORD2(v53) = v13;
    }

    *&v54 = v12;
    if (v15 < 4)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_51();
      }
    }

    else
    {
      DWORD2(v54) = *v12;
    }

    OUTLINED_FUNCTION_43();
    v19 = PullParamSetSPS(v17, v18);
    if (v14)
    {
      CFRelease(v14);
    }

    if (v19)
    {
      goto LABEL_47;
    }

    if (SDWORD1(v56) >= 32)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v47 = 4083;
LABEL_45:
      PPSFromAVCC = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, 0xFFFFCE57uLL, "<<<< H264Bridge >>>>", v47, v44, v45, v46);
      break;
    }

    v20 = &v7[40 * SDWORD1(v56)];
    *v20 = 1;
    v21 = BYTE9(v56);
    *(v20 + 1) = BYTE8(v56);
    *(v20 + 2) = v21;
    *(v20 + 12) = v60;
    *(v20 + 28) = v61;
    *(v20 + 9) = v62;
    if (++v8 >= v64)
    {
      goto LABEL_24;
    }
  }

LABEL_46:
  v19 = PPSFromAVCC;
LABEL_47:
  if (!v19)
  {
    goto LABEL_40;
  }

LABEL_54:
  if (v7)
  {
    free(v7);
  }

  return v19;
}

uint64_t FigH264Bridge_MeasureSliceHeader(const UInt8 *a1, unint64_t a2, uint64_t a3, int a4, unint64_t *a5)
{
  bzero(v27, 0xF8uLL);
  v25 = 0u;
  v26 = 0u;
  theData = 0;
  v10 = RemoveEmulation3Byte(a1, a2, &theData);
  v11 = theData;
  if (v10)
  {
    v17 = v10;
    if (!theData)
    {
      return v17;
    }

    goto LABEL_34;
  }

  BytePtr = a1;
  Length = a2;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(v11);
  }

  *&v25 = BytePtr;
  DWORD2(v25) = Length;
  *&v26 = BytePtr;
  if (Length < 4)
  {
    if (Length)
    {
      OUTLINED_FUNCTION_36();
      __memcpy_chk();
      v14 = DWORD2(v26);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = *BytePtr;
  }

  DWORD2(v26) = bswap32(v14);
  BYTE12(v26) = 0;
  v15 = PullSliceHeader(&v25, a3, v27, a4);
  v16 = v26 - v25;
  if (v15)
  {
    if ((v16 + 4) >= DWORD2(v25))
    {
      v17 = 4294950906;
    }

    else
    {
      v17 = v15;
    }

    if (!v11)
    {
      return v17;
    }

LABEL_34:
    CFRelease(v11);
    return v17;
  }

  if (BYTE12(v26))
  {
    ++v16;
  }

  if (v11 && a2 >= 3 && v16)
  {
    v18 = 0;
    v19 = 0;
    v20 = 2;
    v21 = v16;
    do
    {
      if (a1[v19] || *&a1[v19 + 1] != 768)
      {
        v20 = v19;
      }

      else
      {
        if (v21 < v20)
        {
          break;
        }

        ++v21;
        v18 = 1;
      }

      v19 = v20 + 1;
      v20 += 3;
    }

    while (v20 < a2 && v19 < v21);
    if (v18)
    {
      v16 = v21;
    }
  }

  v17 = 0;
  *a5 = v16;
  if (v11)
  {
    goto LABEL_34;
  }

  return v17;
}

size_t PullSliceHeader(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 28);
  v11 = *(a1 + 8);
  v12 = *a1;
  bzero(a3, 0xF8uLL);
  v13 = v12;
  v14 = v11;
  v15 = (v10 + 1) & 7;
  v16 = (v8 + ((v10 + 1) >> 3));
  v17 = v12 + v14;
  v18 = v12 + v14 - v16;
  if (v18 >= 4)
  {
    v19 = bswap32(*v16);
LABEL_12:
    v21 = v19 << v15 >> 30;
    goto LABEL_13;
  }

  if (v18 >= 1)
  {
    v20 = *v16;
    if (v18 == 1)
    {
      v19 = v20 << 24;
    }

    else
    {
      v22 = (v20 << 16) | (v16[1] << 8);
      if (v18 != 2)
      {
        v22 |= v16[2];
      }

      v19 = v22 << 8;
    }

    goto LABEL_12;
  }

  v21 = v15 | v18;
  if (a4)
  {
    if (v21)
    {
      return 4294954582;
    }
  }

  else if (v21)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    v40 = "%s signalled err=%d at <>:%d";
    v41 = "<<<< H264Bridge >>>>";
    v42 = 4294954582;
    v43 = 1856;
    goto LABEL_1284;
  }

LABEL_13:
  *a3 = v21;
  v23 = (v15 + 2) >> 3;
  v15 = (v15 + 2) & 7;
  v16 += v23;
  v24 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v25 = bswap32(*v16);
LABEL_24:
    v27 = v25 << v15 >> 27;
    goto LABEL_25;
  }

  if (v24 >= 1)
  {
    v26 = *v16;
    if (v24 == 1)
    {
      v25 = v26 << 24;
    }

    else
    {
      v28 = (v26 << 16) | (v16[1] << 8);
      if (v24 != 2)
      {
        v28 |= v16[2];
      }

      v25 = v28 << 8;
    }

    goto LABEL_24;
  }

  v27 = v15 | v24;
  if (a4)
  {
    if (v27)
    {
      return 4294954582;
    }
  }

  else if (v27)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    v40 = "%s signalled err=%d at <>:%d";
    v41 = "<<<< H264Bridge >>>>";
    v42 = 4294954582;
    v43 = 1857;
    goto LABEL_1284;
  }

LABEL_25:
  *(a3 + 1) = v27;
  v29 = (v15 + 5) >> 3;
  v15 = (v15 + 5) & 7;
  v16 += v29;
  v30 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v31 = bswap32(*v16);
    goto LABEL_36;
  }

  if (v30 >= 1)
  {
    v32 = *v16;
    if (v30 == 1)
    {
      v31 = v32 << 24;
    }

    else
    {
      v34 = (v32 << 16) | (v16[1] << 8);
      if (v30 != 2)
      {
        v34 |= v16[2];
      }

      v31 = v34 << 8;
    }

LABEL_36:
    v33 = v31 << v15;
    if (a4)
    {
LABEL_37:
      if (v9 < 0)
      {
        return 4294954582;
      }

      if (v27 > 0x13 || ((1 << v27) & 0x80022) == 0)
      {
        return 4294954582;
      }

      goto LABEL_54;
    }

    goto LABEL_49;
  }

  v33 = v15 | v30;
  if (a4)
  {
    if (v33)
    {
      return 4294954582;
    }

    goto LABEL_37;
  }

  if (v33)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    v40 = "%s signalled err=%d at <>:%d";
    v41 = "<<<< H264Bridge >>>>";
    v42 = 4294954582;
    v43 = 1858;
    goto LABEL_1284;
  }

LABEL_49:
  if (v9 < 0)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_44();
    v62 = 1860;
    goto LABEL_253;
  }

  if (v27 > 0x13 || ((1 << v27) & 0x80022) == 0)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_44();
    v62 = 1870;
    goto LABEL_253;
  }

LABEL_54:
  if (v33 >= 0x80000)
  {
    v45 = __clz(v33);
    v46 = v33 << (v45 + 1) >> -v45;
    if (!v45)
    {
      v46 = 0;
    }

    *(a3 + 2) = v46 + ~(-1 << v45);
    v47 = v45 + v15 + v45 + 1;
    v15 = v47 & 7;
    v16 += v47 >> 3;
    v48 = v17 - v16;
    if (v17 - v16 >= 4)
    {
      v49 = bswap32(*v16);
      goto LABEL_81;
    }

    if (v48 >= 1)
    {
      v53 = *v16;
      if (v48 == 1)
      {
        v49 = v53 << 24;
      }

      else
      {
        v64 = (v53 << 16) | (v16[1] << 8);
        if (v48 != 2)
        {
          v64 |= v16[2];
        }

        v49 = v64 << 8;
      }

      goto LABEL_81;
    }

    v49 = v15 | v48;
    if (a4)
    {
      if (v49)
      {
        return 4294954582;
      }

      goto LABEL_81;
    }

    if (!v49)
    {
LABEL_81:
      LODWORD(v12) = v49 << v15;
      if (!a4)
      {
        goto LABEL_152;
      }

LABEL_82:
      if (v12 >= 0x80000)
      {
        goto LABEL_153;
      }

      return 4294954582;
    }

LABEL_1243:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_56();
    goto LABEL_1284;
  }

  v50 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 += v50;
  v51 = v17 - v16;
  if (v17 - v16 < 4)
  {
    if (v51 < 1)
    {
      v63 = v15 | v51;
      if (a4)
      {
        if (v63)
        {
          return 4294954582;
        }
      }

      else if (v63)
      {
        goto LABEL_1243;
      }

      v52 = 0;
    }

    else
    {
      v54 = *v16;
      if (v51 == 1)
      {
        v52 = v54 << 24;
      }

      else
      {
        v65 = (v54 << 16) | (v16[1] << 8);
        if (v51 != 2)
        {
          v65 |= v16[2];
        }

        v52 = v65 << 8;
      }
    }
  }

  else
  {
    v52 = bswap32(*v16);
  }

  v66 = 0;
  v67 = v52 << v15;
  while (1)
  {
    v68 = (v15 + 1) & 7;
    v16 += (v15 + 1) >> 3;
    v69 = v17 - v16;
    if (v17 - v16 >= 4)
    {
      v70 = bswap32(*v16);
      goto LABEL_99;
    }

    if (v69 >= 1)
    {
      break;
    }

    v72 = v68 | v69;
    if (a4)
    {
      if (v72)
      {
        return 4294954582;
      }

      LODWORD(v12) = 0;
      if (v67 < 0)
      {
        goto LABEL_105;
      }
    }

    else
    {
      if (v72)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        OUTLINED_FUNCTION_56();
        FigSignalErrorAtGM(v494, v495, v496, v497, v498, v499, v500, v501);
        OUTLINED_FUNCTION_45();
LABEL_1221:
        LOBYTE(v15) = (v15 + 1) & 7;
        goto LABEL_1077;
      }

      LODWORD(v12) = 0;
      if (v67 < 0)
      {
        goto LABEL_109;
      }
    }

LABEL_100:
    ++v66;
    v67 = v72;
    v15 = (v15 + 1) & 7;
  }

  v71 = *v16;
  if (v69 == 1)
  {
    v70 = v71 << 24;
  }

  else
  {
    v73 = (v71 << 16) | (v16[1] << 8);
    if (v69 != 2)
    {
      v73 |= v16[2];
    }

    v70 = v73 << 8;
  }

LABEL_99:
  v72 = v70 << v68;
  if ((v67 & 0x80000000) == 0)
  {
    goto LABEL_100;
  }

  LODWORD(v12) = v72;
  if (!a4)
  {
LABEL_109:
    if (v66 + 1 >= 0x20 || v66 == -1)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_56();
      v8 = FigSignalErrorAtGM(v510, v511, v512, v513, v514, v515, v516, v517);
      goto LABEL_1221;
    }

    if (v66 + 1 >= 0x19)
    {
      goto LABEL_112;
    }

LABEL_107:
    v74 = ((v15 + 1) & 7) + v66 + 1;
    v15 = v74 & 7;
    v16 += v74 >> 3;
    v75 = v17 - v16;
    if (v17 - v16 < 4)
    {
      if (v75 < 1)
      {
        v83 = v15 | v75;
        if (a4)
        {
          if (v83)
          {
            return 4294954582;
          }
        }

        else if (v83)
        {
          goto LABEL_1243;
        }

        v76 = 0;
      }

      else
      {
        v81 = *v16;
        if (v75 == 1)
        {
          v76 = v81 << 24;
        }

        else
        {
          v85 = (v81 << 16) | (v16[1] << 8);
          if (v75 != 2)
          {
            v85 |= v16[2];
          }

          v76 = v85 << 8;
        }
      }
    }

    else
    {
      v76 = bswap32(*v16);
    }

    v91 = v12 >> ~v66;
    LODWORD(v12) = v76 << v15;
    goto LABEL_151;
  }

LABEL_105:
  if (v66 > 0x1E)
  {
    return 4294954582;
  }

  if (v66 + 1 <= 0x18)
  {
    goto LABEL_107;
  }

LABEL_112:
  v77 = ((v15 + 1) & 7) + v66;
  v15 = (v77 + 1) & 7;
  v78 = &v16[(v77 - 15) >> 3];
  v79 = v17 - v78;
  if (v17 - v78 >= 4)
  {
    v80 = bswap32(*v78);
    goto LABEL_132;
  }

  if (v79 < 1)
  {
    v84 = v15 | v79;
    if (!a4)
    {
      if (v84)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        OUTLINED_FUNCTION_56();
        FigSignalErrorAtGM(v92, v93, v94, v95, v96, v97, v98, v99);
        OUTLINED_FUNCTION_45();
        v16 = v78;
        goto LABEL_1077;
      }

      goto LABEL_133;
    }

    if (!v84)
    {
      goto LABEL_133;
    }

    return 4294954582;
  }

  v82 = *v78;
  if (v79 == 1)
  {
    v80 = v82 << 24;
  }

  else
  {
    v86 = (v82 << 16) | (v78[1] << 8);
    if (v79 != 2)
    {
      v86 |= v78[2];
    }

    v80 = v86 << 8;
  }

LABEL_132:
  v84 = v80 << v15;
LABEL_133:
  v16 = v78 + 2;
  v87 = v17 - (v78 + 2);
  if (v87 >= 4)
  {
    v88 = bswap32(*v16);
    goto LABEL_150;
  }

  if (v87 < 1)
  {
    v88 = v15 | v87;
    if (a4)
    {
      if (!v88)
      {
        goto LABEL_150;
      }

      return 4294954582;
    }

    if (!v88)
    {
      goto LABEL_150;
    }

    goto LABEL_1243;
  }

  v89 = *v16;
  if (v87 == 1)
  {
    v88 = v89 << 24;
  }

  else
  {
    v90 = (v89 << 16) | (v78[3] << 8);
    if (v87 != 2)
    {
      v90 |= v78[4];
    }

    v88 = v90 << 8;
  }

LABEL_150:
  v100 = v12 >> (47 - v66);
  LODWORD(v12) = v88 << v15;
  v91 = __PAIR64__(v100, v84) >> 16;
LABEL_151:
  *(a3 + 2) = v91 + ~(-1 << (v66 + 1));
  if (a4)
  {
    goto LABEL_82;
  }

LABEL_152:
  if (!(v12 >> 19))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    v457 = 4294954582;
    v458 = 1875;
    goto LABEL_1076;
  }

LABEL_153:
  v101 = __clz(v12);
  v102 = v12 << (v101 + 1) >> -v101;
  if (!v101)
  {
    v102 = 0;
  }

  v103 = v102 + ~(-1 << v101);
  *(a3 + 4) = v103;
  v104 = v101 + v15 + v101 + 1;
  v15 = v104 & 7;
  v16 += v104 >> 3;
  v105 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v106 = bswap32(*v16);
    goto LABEL_166;
  }

  if (v105 < 1)
  {
    v108 = v15 | v105;
    if (a4)
    {
      if (!v108)
      {
        LODWORD(v12) = 0;
        goto LABEL_167;
      }

      return 4294954582;
    }

    if (v108)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v40 = "%s signalled err=%d at <>:%d";
      v41 = "<<<< H264Bridge >>>>";
      v42 = 4294954582;
      v43 = 1875;
      goto LABEL_1284;
    }

    LODWORD(v12) = 0;
LABEL_174:
    if (v103 >= 0xA)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_44();
      v62 = 1876;
    }

    else
    {
      if (v27 != 5 || ((1 << v103) & 0x294) != 0)
      {
        if (v12 >> 19)
        {
          goto LABEL_178;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v457 = 4294954582;
        v458 = 1878;
        goto LABEL_1076;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_44();
      v62 = 1877;
    }

    goto LABEL_253;
  }

  v107 = *v16;
  if (v105 == 1)
  {
    v106 = v107 << 24;
  }

  else
  {
    v109 = (v107 << 16) | (v16[1] << 8);
    if (v105 != 2)
    {
      v109 |= v16[2];
    }

    v106 = v109 << 8;
  }

LABEL_166:
  LODWORD(v12) = v106 << v15;
  if (!a4)
  {
    goto LABEL_174;
  }

LABEL_167:
  if (v103 > 9)
  {
    return 4294954582;
  }

  if (v27 == 5)
  {
    v8 = 4294954582;
    if (((1 << v103) & 0x294) == 0)
    {
      return v8;
    }
  }

  if (v12 < 0x80000)
  {
    return 4294954582;
  }

LABEL_178:
  v110 = __clz(v12);
  v111 = v12 << (v110 + 1) >> -v110;
  if (!v110)
  {
    v111 = 0;
  }

  v112 = v111 + ~(-1 << v110);
  *(a3 + 5) = v112;
  v113 = v110 + v15 + v110 + 1;
  v15 = v113 & 7;
  v16 += v113 >> 3;
  v114 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v115 = bswap32(*v16);
    goto LABEL_191;
  }

  if (v114 < 1)
  {
    v117 = v15 | v114;
    if (a4)
    {
      if (v117)
      {
        return 4294954582;
      }

      LODWORD(v12) = 0;
      goto LABEL_192;
    }

    if (v117)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v40 = "%s signalled err=%d at <>:%d";
      v41 = "<<<< H264Bridge >>>>";
      v42 = 4294954582;
      v43 = 1878;
      goto LABEL_1284;
    }

    LODWORD(v12) = 0;
    goto LABEL_200;
  }

  v116 = *v16;
  if (v114 == 1)
  {
    v115 = v116 << 24;
  }

  else
  {
    v118 = (v116 << 16) | (v16[1] << 8);
    if (v114 != 2)
    {
      v118 |= v16[2];
    }

    v115 = v118 << 8;
  }

LABEL_191:
  LODWORD(v12) = v115 << v15;
  if (!a4)
  {
LABEL_200:
    if (v112 >= 0x100)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v457 = 4294954577;
      v458 = 1888;
      goto LABEL_1076;
    }

    v123 = a2 + 52 * v112;
    if (!*(v123 + 1280))
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v457 = 4294954577;
      v458 = 1894;
      goto LABEL_1076;
    }

    v120 = v123 + 1280;
    v124 = *(v123 + 1284);
    if (v124 >= 32)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v457 = 4294954577;
      v458 = 1895;
      goto LABEL_1076;
    }

    v122 = a2 + 40 * v124;
    if (!*v122)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v457 = 4294954577;
      v458 = 1901;
      goto LABEL_1076;
    }

    if (*(v122 + 8))
    {
      goto LABEL_205;
    }

    goto LABEL_221;
  }

LABEL_192:
  if (v112 > 0xFF)
  {
    return 4294954577;
  }

  v119 = a2 + 52 * v112;
  if (!*(v119 + 1280))
  {
    return 4294954577;
  }

  v120 = v119 + 1280;
  v121 = *(v119 + 1284);
  if (v121 > 31)
  {
    return 4294954577;
  }

  v122 = a2 + 40 * v121;
  if (!*v122)
  {
    return 4294954577;
  }

  if (!*(v122 + 8))
  {
    goto LABEL_217;
  }

LABEL_205:
  v125 = (v15 + 2) >> 3;
  v15 = (v15 + 2) & 7;
  v16 += v125;
  v126 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v127 = bswap32(*v16);
    goto LABEL_216;
  }

  if (v126 < 1)
  {
    v129 = v15 | v126;
    if (a4)
    {
      if (v129)
      {
        return 4294954582;
      }

      LODWORD(v12) = 0;
      goto LABEL_217;
    }

    if (v129)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v40 = "%s signalled err=%d at <>:%d";
      v41 = "<<<< H264Bridge >>>>";
      v42 = 4294954582;
      v43 = 1906;
      goto LABEL_1284;
    }

    LODWORD(v12) = 0;
    goto LABEL_221;
  }

  v128 = *v16;
  if (v126 == 1)
  {
    v127 = v128 << 24;
  }

  else
  {
    v130 = (v128 << 16) | (v16[1] << 8);
    if (v126 != 2)
    {
      v130 |= v16[2];
    }

    v127 = v130 << 8;
  }

LABEL_216:
  LODWORD(v12) = v127 << v15;
  if (!a4)
  {
LABEL_221:
    v131 = *(v122 + 12);
    if (v131 <= -4 || v131 >= 22)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v457 = 4294954582;
      v458 = 1986;
      goto LABEL_1076;
    }

    goto LABEL_223;
  }

LABEL_217:
  v131 = *(v122 + 12);
  if ((v131 - 22) < 0xFFFFFFE7)
  {
    return 4294954582;
  }

LABEL_223:
  *(a3 + 6) = v12 >> (28 - v131);
  v132 = v15 + v131 + 4;
  v15 = v132 & 7;
  v16 += v132 >> 3;
  v133 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v134 = bswap32(*v16);
    goto LABEL_234;
  }

  if (v133 < 1)
  {
    v136 = v15 | v133;
    if (a4)
    {
      if (v136)
      {
        return 4294954582;
      }
    }

    else if (v136)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v40 = "%s signalled err=%d at <>:%d";
      v41 = "<<<< H264Bridge >>>>";
      v42 = 4294954582;
      v43 = 1986;
      goto LABEL_1284;
    }

    *(a3 + 14) = 0;
    v138 = (a3 + 28);
    if (!*(v122 + 36))
    {
      LODWORD(v12) = 0;
      goto LABEL_239;
    }

LABEL_256:
    v139 = 0;
    LODWORD(v12) = 0;
    goto LABEL_271;
  }

  v135 = *v16;
  if (v133 == 1)
  {
    v134 = v135 << 24;
  }

  else
  {
    v137 = (v135 << 16) | (v16[1] << 8);
    if (v133 != 2)
    {
      v137 |= v16[2];
    }

    v134 = v137 << 8;
  }

LABEL_234:
  LODWORD(v12) = v134 << v15;
  *(a3 + 14) = 0;
  v138 = (a3 + 28);
  if (*(v122 + 36))
  {
    v139 = 0;
    goto LABEL_271;
  }

LABEL_239:
  *v138 = v12 < 0;
  v140 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 += v140;
  v141 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v142 = bswap32(*v16);
    goto LABEL_250;
  }

  if (v141 < 1)
  {
    v144 = v15 | v141;
    if (a4)
    {
      if (v144)
      {
        return 4294954582;
      }
    }

    else if (v144)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v40 = "%s signalled err=%d at <>:%d";
      v41 = "<<<< H264Bridge >>>>";
      v42 = 4294954582;
      v43 = 2000;
      goto LABEL_1284;
    }

    if ((v12 & 0x80000000) != 0)
    {
      v146 = 0;
      goto LABEL_258;
    }

    goto LABEL_256;
  }

  v143 = *v16;
  if (v141 == 1)
  {
    v142 = v143 << 24;
  }

  else
  {
    v145 = (v143 << 16) | (v16[1] << 8);
    if (v141 != 2)
    {
      v145 |= v16[2];
    }

    v142 = v145 << 8;
  }

LABEL_250:
  v146 = v142 << v15;
  if ((v12 & 0x80000000) == 0)
  {
    v139 = 0;
    LODWORD(v12) = v146;
    goto LABEL_271;
  }

LABEL_258:
  v138[1] = v146 < 0;
  v147 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 += v147;
  v148 = v17 - v16;
  if (v17 - v16 < 4)
  {
    if (v148 < 1)
    {
      v149 = v15 | v148;
      if (a4)
      {
        if (v149)
        {
          return 4294954582;
        }
      }

      else if (v149)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_6_13();
        v40 = "%s signalled err=%d at <>:%d";
        v41 = "<<<< H264Bridge >>>>";
        v42 = 4294954582;
        v43 = 2004;
        goto LABEL_1284;
      }
    }

    else
    {
      v150 = *v16;
      if (v148 == 1)
      {
        v149 = v150 << 24;
      }

      else
      {
        v151 = (v150 << 16) | (v16[1] << 8);
        if (v148 != 2)
        {
          v151 |= v16[2];
        }

        v149 = v151 << 8;
      }
    }
  }

  else
  {
    v149 = bswap32(*v16);
  }

  LODWORD(v12) = v149 << v15;
  v139 = 1;
LABEL_271:
  if (*(a3 + 1) != 5)
  {
    goto LABEL_367;
  }

  if (v12 >= 0x80000)
  {
    v152 = __clz(v12);
    v153 = v12 << (v152 + 1) >> -v152;
    if (!v152)
    {
      v153 = 0;
    }

    *(a3 + 8) = v153 + ~(-1 << v152);
    v154 = v152 + v15 + v152 + 1;
    v15 = v154 & 7;
    v16 += v154 >> 3;
    v155 = v17 - v16;
    if (v17 - v16 >= 4)
    {
      v156 = bswap32(*v16);
      goto LABEL_298;
    }

    if (v155 >= 1)
    {
      v160 = *v16;
      if (v155 == 1)
      {
        v156 = v160 << 24;
      }

      else
      {
        v163 = (v160 << 16) | (v16[1] << 8);
        if (v155 != 2)
        {
          v163 |= v16[2];
        }

        v156 = v163 << 8;
      }

      goto LABEL_298;
    }

    v156 = v15 | v155;
    if (a4)
    {
      if (v156)
      {
        return 4294954582;
      }

LABEL_298:
      LODWORD(v12) = v156 << v15;
      goto LABEL_367;
    }

    if (!v156)
    {
      goto LABEL_298;
    }

LABEL_1260:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_55();
    goto LABEL_1284;
  }

  v157 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 += v157;
  v158 = v17 - v16;
  if (v17 - v16 < 4)
  {
    if (v158 < 1)
    {
      v162 = v15 | v158;
      if (a4)
      {
        if (v162)
        {
          return 4294954582;
        }
      }

      else if (v162)
      {
        goto LABEL_1260;
      }

      v159 = 0;
    }

    else
    {
      v161 = *v16;
      if (v158 == 1)
      {
        v159 = v161 << 24;
      }

      else
      {
        v164 = (v161 << 16) | (v16[1] << 8);
        if (v158 != 2)
        {
          v164 |= v16[2];
        }

        v159 = v164 << 8;
      }
    }
  }

  else
  {
    v159 = bswap32(*v16);
  }

  v165 = 0;
  v166 = v159 << v15;
  while (2)
  {
    v167 = (v15 + 1) & 7;
    v16 += (v15 + 1) >> 3;
    v168 = v17 - v16;
    if (v17 - v16 >= 4)
    {
      v169 = bswap32(*v16);
      goto LABEL_314;
    }

    if (v168 < 1)
    {
      v171 = v167 | v168;
      if (a4)
      {
        if (v171)
        {
          return 4294954582;
        }

        LODWORD(v12) = 0;
        if (v166 < 0)
        {
          goto LABEL_320;
        }
      }

      else
      {
        if (v171)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          OUTLINED_FUNCTION_55();
          goto LABEL_1240;
        }

        LODWORD(v12) = 0;
        if (v166 < 0)
        {
          goto LABEL_324;
        }
      }

      goto LABEL_315;
    }

    v170 = *v16;
    if (v168 == 1)
    {
      v169 = v170 << 24;
    }

    else
    {
      v172 = (v170 << 16) | (v16[1] << 8);
      if (v168 != 2)
      {
        v172 |= v16[2];
      }

      v169 = v172 << 8;
    }

LABEL_314:
    v171 = v169 << v167;
    if ((v166 & 0x80000000) == 0)
    {
LABEL_315:
      ++v165;
      v166 = v171;
      v15 = (v15 + 1) & 7;
      continue;
    }

    break;
  }

  LODWORD(v12) = v171;
  if (!a4)
  {
LABEL_324:
    if (v165 + 1 < 0x20 && v165 != -1)
    {
      if (v165 + 1 >= 0x19)
      {
        goto LABEL_327;
      }

LABEL_322:
      v173 = ((v15 + 1) & 7) + v165 + 1;
      v15 = v173 & 7;
      v16 += v173 >> 3;
      v174 = v17 - v16;
      if (v17 - v16 < 4)
      {
        if (v174 < 1)
        {
          v182 = v15 | v174;
          if (a4)
          {
            if (v182)
            {
              return 4294954582;
            }
          }

          else if (v182)
          {
            goto LABEL_1260;
          }

          v175 = 0;
        }

        else
        {
          v180 = *v16;
          if (v174 == 1)
          {
            v175 = v180 << 24;
          }

          else
          {
            v184 = (v180 << 16) | (v16[1] << 8);
            if (v174 != 2)
            {
              v184 |= v16[2];
            }

            v175 = v184 << 8;
          }
        }
      }

      else
      {
        v175 = bswap32(*v16);
      }

      v190 = v12 >> ~v165;
      LODWORD(v12) = v175 << v15;
      goto LABEL_366;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_55();
    goto LABEL_1258;
  }

LABEL_320:
  if (v165 > 0x1E)
  {
    return 4294954582;
  }

  if (v165 + 1 <= 0x18)
  {
    goto LABEL_322;
  }

LABEL_327:
  v176 = ((v15 + 1) & 7) + v165;
  v15 = (v176 + 1) & 7;
  v177 = &v16[(v176 - 15) >> 3];
  v178 = v17 - v177;
  if (v17 - v177 >= 4)
  {
    v179 = bswap32(*v177);
    goto LABEL_347;
  }

  if (v178 < 1)
  {
    v183 = v15 | v178;
    if (a4)
    {
      if (!v183)
      {
        goto LABEL_348;
      }

      return 4294954582;
    }

    if (!v183)
    {
      goto LABEL_348;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_55();
LABEL_480:
    FigSignalErrorAtGM(v191, v192, v193, v194, v195, v196, v197, v198);
    OUTLINED_FUNCTION_45();
    v16 = v177;
    goto LABEL_1077;
  }

  v181 = *v177;
  if (v178 == 1)
  {
    v179 = v181 << 24;
  }

  else
  {
    v185 = (v181 << 16) | (v177[1] << 8);
    if (v178 != 2)
    {
      v185 |= v177[2];
    }

    v179 = v185 << 8;
  }

LABEL_347:
  v183 = v179 << v15;
LABEL_348:
  v16 = v177 + 2;
  v186 = v17 - (v177 + 2);
  if (v186 >= 4)
  {
    v187 = bswap32(*v16);
    goto LABEL_365;
  }

  if (v186 < 1)
  {
    v187 = v15 | v186;
    if (!a4)
    {
      if (!v187)
      {
        goto LABEL_365;
      }

      goto LABEL_1260;
    }

    if (!v187)
    {
      goto LABEL_365;
    }

    return 4294954582;
  }

  v188 = *v16;
  if (v186 == 1)
  {
    v187 = v188 << 24;
  }

  else
  {
    v189 = (v188 << 16) | (v177[3] << 8);
    if (v186 != 2)
    {
      v189 |= v177[4];
    }

    v187 = v189 << 8;
  }

LABEL_365:
  v199 = v12 >> (47 - v165);
  LODWORD(v12) = v187 << v15;
  v190 = __PAIR64__(v199, v183) >> 16;
LABEL_366:
  *(a3 + 8) = v190 + ~(-1 << (v165 + 1));
LABEL_367:
  *(a3 + 10) = 0;
  v200 = *(v122 + 16);
  if (v200)
  {
    goto LABEL_485;
  }

  v201 = *(v122 + 20);
  if (!a4)
  {
    if (v201 > -4 && v201 < 22)
    {
      goto LABEL_373;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    v457 = 4294954582;
    v458 = 2036;
    goto LABEL_1076;
  }

  if ((v201 - 22) < 0xFFFFFFE7)
  {
    return 4294954582;
  }

LABEL_373:
  *(a3 + 9) = v12 >> (28 - v201);
  v202 = v15 + v201 + 4;
  v15 = v202 & 7;
  v16 += v202 >> 3;
  v203 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v204 = bswap32(*v16);
    goto LABEL_385;
  }

  if (v203 >= 1)
  {
    v205 = *v16;
    if (v203 == 1)
    {
      v204 = v205 << 24;
    }

    else
    {
      v206 = (v205 << 16) | (v16[1] << 8);
      if (v203 != 2)
      {
        v206 |= v16[2];
      }

      v204 = v206 << 8;
    }

    goto LABEL_385;
  }

  v204 = v15 | v203;
  if (!a4)
  {
    if (!v204)
    {
      goto LABEL_385;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    v40 = "%s signalled err=%d at <>:%d";
    v41 = "<<<< H264Bridge >>>>";
    v42 = 4294954582;
    v43 = 2036;
    goto LABEL_1284;
  }

  if (v204)
  {
    return 4294954582;
  }

LABEL_385:
  LODWORD(v12) = v204 << v15;
  if (!*(v120 + 12))
  {
    v139 = 1;
  }

  if (v139)
  {
    goto LABEL_615;
  }

  if (v12 >= 0x80000)
  {
    v207 = __clz(v12);
    v208 = v12 << (v207 + 1) >> -v207;
    if (!v207)
    {
      v208 = 0;
    }

    v209 = v207 + v15 + v207 + 1;
    v15 = v209 & 7;
    v16 += v209 >> 3;
    v210 = v17 - v16;
    if (v17 - v16 >= 4)
    {
      v211 = bswap32(*v16);
      goto LABEL_414;
    }

    if (v210 >= 1)
    {
      v215 = *v16;
      if (v210 == 1)
      {
        v211 = v215 << 24;
      }

      else
      {
        v218 = (v215 << 16) | (v16[1] << 8);
        if (v210 != 2)
        {
          v218 |= v16[2];
        }

        v211 = v218 << 8;
      }

      goto LABEL_414;
    }

    v211 = v15 | v210;
    if (a4)
    {
      if (v211)
      {
        return 4294954582;
      }

LABEL_414:
      v220 = 1 << v207;
      LODWORD(v12) = v211 << v15;
      goto LABEL_484;
    }

    if (!v211)
    {
      goto LABEL_414;
    }

LABEL_1272:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_57();
LABEL_1284:
    FigSignalErrorAtGM(v40, v36, v42, v41, v43, v37, v38, v39);
    OUTLINED_FUNCTION_45();
    goto LABEL_1077;
  }

  v212 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 += v212;
  v213 = v17 - v16;
  if (v17 - v16 < 4)
  {
    if (v213 < 1)
    {
      v217 = v15 | v213;
      if (a4)
      {
        if (v217)
        {
          return 4294954582;
        }
      }

      else if (v217)
      {
        goto LABEL_1272;
      }

      v214 = 0;
    }

    else
    {
      v216 = *v16;
      if (v213 == 1)
      {
        v214 = v216 << 24;
      }

      else
      {
        v219 = (v216 << 16) | (v16[1] << 8);
        if (v213 != 2)
        {
          v219 |= v16[2];
        }

        v214 = v219 << 8;
      }
    }
  }

  else
  {
    v214 = bswap32(*v16);
  }

  v221 = 0;
  v222 = v214 << v15;
  while (2)
  {
    v167 = (v15 + 1) & 7;
    v16 += (v15 + 1) >> 3;
    v223 = v17 - v16;
    if (v17 - v16 >= 4)
    {
      v224 = bswap32(*v16);
      goto LABEL_430;
    }

    if (v223 < 1)
    {
      v226 = v167 | v223;
      if (a4)
      {
        if (v226)
        {
          return 4294954582;
        }

        LODWORD(v12) = 0;
        if (v222 < 0)
        {
          goto LABEL_436;
        }
      }

      else
      {
        if (v226)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          OUTLINED_FUNCTION_57();
          goto LABEL_1240;
        }

        LODWORD(v12) = 0;
        if (v222 < 0)
        {
          goto LABEL_440;
        }
      }

      goto LABEL_431;
    }

    v225 = *v16;
    if (v223 == 1)
    {
      v224 = v225 << 24;
    }

    else
    {
      v227 = (v225 << 16) | (v16[1] << 8);
      if (v223 != 2)
      {
        v227 |= v16[2];
      }

      v224 = v227 << 8;
    }

LABEL_430:
    v226 = v224 << v167;
    if ((v222 & 0x80000000) == 0)
    {
LABEL_431:
      ++v221;
      v222 = v226;
      v15 = (v15 + 1) & 7;
      continue;
    }

    break;
  }

  LODWORD(v12) = v226;
  if (!a4)
  {
LABEL_440:
    if (v221 + 1 < 0x20 && v221 != -1)
    {
      if (v221 + 1 >= 0x19)
      {
        goto LABEL_443;
      }

LABEL_438:
      v228 = ((v15 + 1) & 7) + v221 + 1;
      v15 = v228 & 7;
      v16 += v228 >> 3;
      v229 = v17 - v16;
      if (v17 - v16 < 4)
      {
        if (v229 < 1)
        {
          v236 = v15 | v229;
          if (a4)
          {
            if (v236)
            {
              return 4294954582;
            }
          }

          else if (v236)
          {
            goto LABEL_1272;
          }

          v230 = 0;
        }

        else
        {
          v234 = *v16;
          if (v229 == 1)
          {
            v230 = v234 << 24;
          }

          else
          {
            v238 = (v234 << 16) | (v16[1] << 8);
            if (v229 != 2)
            {
              v238 |= v16[2];
            }

            v230 = v238 << 8;
          }
        }
      }

      else
      {
        v230 = bswap32(*v16);
      }

      v208 = v12 >> ~v221;
      LODWORD(v12) = v230 << v15;
      goto LABEL_483;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_57();
    goto LABEL_1258;
  }

LABEL_436:
  if (v221 > 0x1E)
  {
    return 4294954582;
  }

  if (v221 + 1 <= 0x18)
  {
    goto LABEL_438;
  }

LABEL_443:
  v231 = ((v15 + 1) & 7) + v221;
  v15 = (v231 + 1) & 7;
  v177 = &v16[(v231 - 15) >> 3];
  v232 = v17 - v177;
  if (v17 - v177 >= 4)
  {
    v233 = bswap32(*v177);
    goto LABEL_463;
  }

  if (v232 < 1)
  {
    v237 = v15 | v232;
    if (a4)
    {
      if (!v237)
      {
        goto LABEL_464;
      }

      return 4294954582;
    }

    if (!v237)
    {
      goto LABEL_464;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_57();
    goto LABEL_480;
  }

  v235 = *v177;
  if (v232 == 1)
  {
    v233 = v235 << 24;
  }

  else
  {
    v239 = (v235 << 16) | (v177[1] << 8);
    if (v232 != 2)
    {
      v239 |= v177[2];
    }

    v233 = v239 << 8;
  }

LABEL_463:
  v237 = v233 << v15;
LABEL_464:
  v16 = v177 + 2;
  v240 = v17 - (v177 + 2);
  if (v240 >= 4)
  {
    v241 = bswap32(*v16);
    goto LABEL_482;
  }

  if (v240 < 1)
  {
    v241 = v15 | v240;
    if (!a4)
    {
      if (!v241)
      {
        goto LABEL_482;
      }

      goto LABEL_1272;
    }

    if (!v241)
    {
      goto LABEL_482;
    }

    return 4294954582;
  }

  v242 = *v16;
  if (v240 == 1)
  {
    v241 = v242 << 24;
  }

  else
  {
    v243 = (v242 << 16) | (v177[3] << 8);
    if (v240 != 2)
    {
      v243 |= v177[4];
    }

    v241 = v243 << 8;
  }

LABEL_482:
  v244 = v12 >> (47 - v221);
  LODWORD(v12) = v241 << v15;
  v208 = __PAIR64__(v244, v237) >> 16;
LABEL_483:
  v220 = 1 << (v221 + 1);
LABEL_484:
  *(a3 + 10) = ((v208 + v220) >> 1) - ((v208 + v220) >> 1) * 2 * ((v208 + v220) & 1);
LABEL_485:
  if (v200 != 1 || *(v122 + 24))
  {
    goto LABEL_615;
  }

  if (v12 >= 0x80000)
  {
    v245 = v15 + 2 * __clz(v12) + 1;
    goto LABEL_528;
  }

  v246 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 += v246;
  v247 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v248 = bswap32(*v16);
    goto LABEL_501;
  }

  if (v247 < 1)
  {
    v248 = v15 | v247;
    if (a4)
    {
      if (!v248)
      {
        goto LABEL_501;
      }

      return 4294954582;
    }

    if (!v248)
    {
      goto LABEL_501;
    }

LABEL_558:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    v40 = "%s signalled err=%d at <>:%d";
    v41 = "<<<< H264Bridge >>>>";
    v42 = 4294954582;
    v43 = 2045;
    goto LABEL_1284;
  }

  v249 = *v16;
  if (v247 == 1)
  {
    v248 = v249 << 24;
  }

  else
  {
    v250 = (v249 << 16) | (v16[1] << 8);
    if (v247 != 2)
    {
      v250 |= v16[2];
    }

    v248 = v250 << 8;
  }

LABEL_501:
  v251 = v248 << v15;
  v252 = 1;
  while (2)
  {
    v167 = (v15 + 1) & 7;
    v16 += (v15 + 1) >> 3;
    v253 = v17 - v16;
    if (v17 - v16 >= 4)
    {
      v254 = bswap32(*v16);
      goto LABEL_514;
    }

    if (v253 < 1)
    {
      v256 = v167 | v253;
      if (a4)
      {
        if (v256)
        {
          return 4294954582;
        }

        if (v251 < 0)
        {
          goto LABEL_520;
        }

        v256 = 0;
      }

      else
      {
        if (v256)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_6_13();
          v502 = "%s signalled err=%d at <>:%d";
          v505 = "<<<< H264Bridge >>>>";
          v504 = 4294954582;
          v506 = 2045;
          goto LABEL_1240;
        }

        LODWORD(v12) = 0;
        if (v251 < 0)
        {
          goto LABEL_524;
        }
      }

      goto LABEL_515;
    }

    v255 = *v16;
    if (v253 == 1)
    {
      v254 = v255 << 24;
    }

    else
    {
      v257 = (v255 << 16) | (v16[1] << 8);
      if (v253 != 2)
      {
        v257 |= v16[2];
      }

      v254 = v257 << 8;
    }

LABEL_514:
    v256 = v254 << v167;
    if ((v251 & 0x80000000) == 0)
    {
LABEL_515:
      ++v252;
      v251 = v256;
      v15 = (v15 + 1) & 7;
      continue;
    }

    break;
  }

  LODWORD(v12) = v256;
  if (!a4)
  {
LABEL_524:
    if (v252 >= 0x20 || !v252)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v518 = "%s signalled err=%d at <>:%d";
      v521 = "<<<< H264Bridge >>>>";
      v520 = 4294954582;
      v522 = 2045;
      goto LABEL_1258;
    }

    if (v252 >= 0x19)
    {
      v263 = ((v15 + 1) & 7) + v252;
      v15 = v263 & 7;
      v16 += (v263 - 16) >> 3;
      if (v17 - v16 <= 0 && v15 | (v17 - v16))
      {
        goto LABEL_558;
      }

LABEL_539:
      v264 = v16;
      goto LABEL_542;
    }

LABEL_527:
    v245 = ((v15 + 1) & 7) + v252;
LABEL_528:
    v15 = v245 & 7;
    v16 += v245 >> 3;
    v259 = v17 - v16;
    if (v17 - v16 >= 4)
    {
      goto LABEL_543;
    }

    if (v259 >= 1)
    {
      v260 = *v16;
      if (v259 == 1)
      {
        v261 = v260 << 24;
      }

      else
      {
        v262 = (v260 << 16) | (v16[1] << 8);
        if (v259 != 2)
        {
          v262 |= v16[2];
        }

        v261 = v262 << 8;
      }

      goto LABEL_544;
    }

    v261 = v15 | v259;
    if (!a4)
    {
      goto LABEL_557;
    }

    goto LABEL_533;
  }

LABEL_520:
  if (v252 - 1 > 0x1E)
  {
    return 4294954582;
  }

  if (v252 <= 0x18)
  {
    goto LABEL_527;
  }

  v258 = ((v15 + 1) & 7) + v252;
  v15 = v258 & 7;
  v16 += (v258 - 16) >> 3;
  if (v17 - v16 > 0)
  {
    goto LABEL_539;
  }

  v264 = v16;
  if (v15 | (v17 - v16))
  {
    return 4294954582;
  }

LABEL_542:
  v16 = v264 + 2;
  v265 = v17 - (v264 + 2);
  if (v265 >= 4)
  {
LABEL_543:
    v261 = bswap32(*v16);
    goto LABEL_544;
  }

  if (v265 < 1)
  {
    v261 = v15 | v265;
    if (!a4)
    {
LABEL_557:
      if (!v261)
      {
        goto LABEL_544;
      }

      goto LABEL_558;
    }

LABEL_533:
    if (!v261)
    {
      goto LABEL_544;
    }

    return 4294954582;
  }

  v267 = *v16;
  if (v265 == 1)
  {
    v261 = v267 << 24;
  }

  else
  {
    v272 = (v267 << 16) | (v264[3] << 8);
    if (v265 != 2)
    {
      v272 |= v264[4];
    }

    v261 = v272 << 8;
  }

LABEL_544:
  LODWORD(v12) = v261 << v15;
  if (*(v120 + 12) != 1 || *v138)
  {
    goto LABEL_615;
  }

  if (v12 >= 0x80000)
  {
    v266 = v15 + 2 * __clz(v12) + 1;
    goto LABEL_598;
  }

  v268 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 += v268;
  v269 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v270 = bswap32(*v16);
    goto LABEL_571;
  }

  if (v269 < 1)
  {
    v270 = v15 | v269;
    if (a4)
    {
      if (!v270)
      {
        goto LABEL_571;
      }

      return 4294954582;
    }

    if (!v270)
    {
      goto LABEL_571;
    }

LABEL_1194:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_6_13();
    v40 = "%s signalled err=%d at <>:%d";
    v41 = "<<<< H264Bridge >>>>";
    v42 = 4294954582;
    v43 = 2048;
    goto LABEL_1284;
  }

  v271 = *v16;
  if (v269 == 1)
  {
    v270 = v271 << 24;
  }

  else
  {
    v273 = (v271 << 16) | (v16[1] << 8);
    if (v269 != 2)
    {
      v273 |= v16[2];
    }

    v270 = v273 << 8;
  }

LABEL_571:
  v274 = v270 << v15;
  v275 = 1;
  while (2)
  {
    v167 = (v15 + 1) & 7;
    v16 += (v15 + 1) >> 3;
    v276 = v17 - v16;
    if (v17 - v16 >= 4)
    {
      v277 = bswap32(*v16);
      goto LABEL_584;
    }

    if (v276 >= 1)
    {
      v278 = *v16;
      if (v276 == 1)
      {
        v277 = v278 << 24;
      }

      else
      {
        v280 = (v278 << 16) | (v16[1] << 8);
        if (v276 != 2)
        {
          v280 |= v16[2];
        }

        v277 = v280 << 8;
      }

LABEL_584:
      v279 = v277 << v167;
      if ((v274 & 0x80000000) == 0)
      {
LABEL_585:
        ++v275;
        v274 = v279;
        v15 = (v15 + 1) & 7;
        continue;
      }

      LODWORD(v12) = v279;
      if (a4)
      {
LABEL_590:
        if (v275 - 1 > 0x1E)
        {
          return 4294954582;
        }

        if (v275 > 0x18)
        {
          v281 = ((v15 + 1) & 7) + v275;
          v15 = v281 & 7;
          v16 += (v281 - 16) >> 3;
          if (v17 - v16 <= 0)
          {
            v287 = v16;
            if (v15 | (v17 - v16))
            {
              return 4294954582;
            }

LABEL_612:
            v16 = v287 + 2;
            v288 = v17 - (v287 + 2);
            if (v288 >= 4)
            {
              goto LABEL_613;
            }

            if (v288 >= 1)
            {
              v492 = *v16;
              if (v288 == 1)
              {
                v284 = v492 << 24;
              }

              else
              {
                v493 = (v492 << 16) | (v287[3] << 8);
                if (v288 != 2)
                {
                  v493 |= v287[4];
                }

                v284 = v493 << 8;
              }

LABEL_614:
              LODWORD(v12) = v284 << v15;
LABEL_615:
              *(a3 + 11) = 0;
              if (!*(v120 + 48))
              {
                goto LABEL_635;
              }

              if (!a4)
              {
                if (v12 >> 19)
                {
                  goto LABEL_620;
                }

                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_6_13();
                v457 = 4294954582;
                v458 = 2055;
                goto LABEL_1076;
              }

              if (v12 < 0x80000)
              {
                return 4294954582;
              }

LABEL_620:
              v289 = __clz(v12);
              v290 = v12 << (v289 + 1) >> -v289;
              if (!v289)
              {
                v290 = 0;
              }

              *(a3 + 11) = v290 + ~(-1 << v289);
              v291 = v289 + v15 + v289 + 1;
              v15 = v291 & 7;
              v16 += v291 >> 3;
              v292 = v17 - v16;
              if (v17 - v16 >= 4)
              {
                v293 = bswap32(*v16);
                goto LABEL_634;
              }

              if (v292 >= 1)
              {
                v294 = *v16;
                if (v292 == 1)
                {
                  v293 = v294 << 24;
                }

                else
                {
                  v295 = (v294 << 16) | (v16[1] << 8);
                  if (v292 != 2)
                  {
                    v295 |= v16[2];
                  }

                  v293 = v295 << 8;
                }

                goto LABEL_634;
              }

              v293 = v15 | v292;
              if (!a4)
              {
                if (!v293)
                {
                  goto LABEL_634;
                }

                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_6_13();
                v40 = "%s signalled err=%d at <>:%d";
                v41 = "<<<< H264Bridge >>>>";
                v42 = 4294954582;
                v43 = 2055;
                goto LABEL_1284;
              }

              if (v293)
              {
                return 4294954582;
              }

LABEL_634:
              LODWORD(v12) = v293 << v15;
LABEL_635:
              v296 = *(a3 + 4);
              if (v296 == 6 || v296 == 1)
              {
                a3[48] = v12 < 0;
                v298 = (v15 + 1) >> 3;
                v15 = (v15 + 1) & 7;
                v16 += v298;
                v299 = v17 - v16;
                if (v17 - v16 < 4)
                {
                  if (v299 < 1)
                  {
                    v300 = v15 | v299;
                    if (a4)
                    {
                      if (v300)
                      {
                        return 4294954582;
                      }
                    }

                    else if (v300)
                    {
                      fig_log_get_emitter("com.apple.coremedia", "");
                      OUTLINED_FUNCTION_6_13();
                      v40 = "%s signalled err=%d at <>:%d";
                      v41 = "<<<< H264Bridge >>>>";
                      v42 = 4294954582;
                      v43 = 2060;
                      goto LABEL_1284;
                    }
                  }

                  else
                  {
                    v301 = *v16;
                    if (v299 == 1)
                    {
                      v300 = v301 << 24;
                    }

                    else
                    {
                      v302 = (v301 << 16) | (v16[1] << 8);
                      if (v299 != 2)
                      {
                        v302 |= v16[2];
                      }

                      v300 = v302 << 8;
                    }
                  }
                }

                else
                {
                  v300 = bswap32(*v16);
                }

                LODWORD(v12) = v300 << v15;
              }

              if (v296 > 8 || ((1 << v296) & 0x16B) == 0)
              {
LABEL_723:
                v308 = v12;
                goto LABEL_724;
              }

              a3[49] = v12 < 0;
              v303 = (v15 + 1) >> 3;
              v15 = (v15 + 1) & 7;
              v16 += v303;
              v304 = v17 - v16;
              if (v17 - v16 >= 4)
              {
                v305 = bswap32(*v16);
                goto LABEL_667;
              }

              if (v304 < 1)
              {
                v307 = v15 | v304;
                if (a4)
                {
                  v8 = 4294954582;
                  if (v307 || (v12 & 0x80000000) != 0)
                  {
                    return v8;
                  }

                  v308 = 0;
                  goto LABEL_668;
                }

                if (v307)
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_6_13();
                  v40 = "%s signalled err=%d at <>:%d";
                  v41 = "<<<< H264Bridge >>>>";
                  v42 = 4294954582;
                  v43 = 2065;
                  goto LABEL_1284;
                }

                v308 = 0;
                if ((v12 & 0x80000000) == 0)
                {
                  goto LABEL_668;
                }
              }

              else
              {
                v306 = *v16;
                if (v304 == 1)
                {
                  v305 = v306 << 24;
                }

                else
                {
                  v309 = (v306 << 16) | (v16[1] << 8);
                  if (v304 != 2)
                  {
                    v309 |= v16[2];
                  }

                  v305 = v309 << 8;
                }

LABEL_667:
                v308 = v305 << v15;
                if ((v12 & 0x80000000) == 0)
                {
LABEL_668:
                  *(a3 + 52) = *(v120 + 28);
LABEL_724:
                  if (v296 <= 9 && ((1 << v296) & 0x294) != 0)
                  {
LABEL_726:
                    if (v296 != 6 && v296 != 1)
                    {
LABEL_750:
                      if (!*(v120 + 36) || (v343 = *(a3 + 4), v343 > 8) || ((1 << v343) & 0x129) == 0)
                      {
                        if (*(v120 + 40) != 1)
                        {
                          goto LABEL_818;
                        }

                        v344 = *(a3 + 4);
                        if (v344 != 6 && v344 != 1)
                        {
                          goto LABEL_818;
                        }
                      }

                      *(a1 + 16) = v16;
                      *(a1 + 24) = v308;
                      *(a1 + 28) = v15;
                      v346 = v16 - *a1;
                      v347 = *(a1 + 8);
                      if (a4)
                      {
                        if (v347 < v346)
                        {
                          return 4294954582;
                        }

                        v348 = a1;
                        v349 = a3;
                        v350 = v122;
                        v351 = a4;
LABEL_816:
                        PullSliceHeaderPredWeightTable(v348, v349, v350, v351);
                        if (v370)
                        {
                          return v370;
                        }

                        v16 = *(a1 + 16);
                        v308 = *(a1 + 24);
                        v15 = *(a1 + 28);
                        v14 = *(a1 + 8);
                        v13 = *a1;
LABEL_818:
                        v8 = v13 + v14;
                        if (!*a3)
                        {
                          LODWORD(v12) = v308;
                          goto LABEL_961;
                        }

                        v371 = (v15 + 1) >> 3;
                        v15 = (v15 + 1) & 7;
                        v16 += v371;
                        v372 = v8 - v16;
                        if (*(a3 + 1) == 5)
                        {
                          a3[205] = v308 < 0;
                          if (v372 >= 4)
                          {
                            v373 = bswap32(*v16);
                            goto LABEL_840;
                          }

                          if (v372 < 1)
                          {
                            v377 = v15 | v372;
                            if (a4)
                            {
                              if (v377)
                              {
                                return 4294954582;
                              }
                            }

                            else if (v377)
                            {
                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_6_13();
                              v40 = "%s signalled err=%d at <>:%d";
                              v41 = "<<<< H264Bridge >>>>";
                              v42 = 4294954582;
                              v43 = 2207;
                              goto LABEL_1284;
                            }
                          }

                          else
                          {
                            v375 = *v16;
                            if (v372 == 1)
                            {
                              v373 = v375 << 24;
                            }

                            else
                            {
                              v378 = (v375 << 16) | (v16[1] << 8);
                              if (v372 != 2)
                              {
                                v378 |= v16[2];
                              }

                              v373 = v378 << 8;
                            }

LABEL_840:
                            v377 = v373 << v15 >> 31;
                          }

                          a3[206] = v377;
                          v379 = (v15 + 1) >> 3;
                          v15 = (v15 + 1) & 7;
                          v16 += v379;
                          v380 = v8 - v16;
                          if (v8 - v16 >= 4)
                          {
                            v381 = bswap32(*v16);
                            goto LABEL_960;
                          }

                          if (v380 >= 1)
                          {
                            v382 = *v16;
                            if (v380 == 1)
                            {
                              v381 = v382 << 24;
                            }

                            else
                            {
                              v384 = (v382 << 16) | (v16[1] << 8);
                              if (v380 != 2)
                              {
                                v384 |= v16[2];
                              }

                              v381 = v384 << 8;
                            }

                            goto LABEL_960;
                          }

                          v381 = v15 | v380;
                          if (!a4)
                          {
                            if (!v381)
                            {
                              goto LABEL_960;
                            }

                            fig_log_get_emitter("com.apple.coremedia", "");
                            OUTLINED_FUNCTION_6_13();
                            v40 = "%s signalled err=%d at <>:%d";
                            v41 = "<<<< H264Bridge >>>>";
                            v42 = 4294954582;
                            v43 = 2208;
                            goto LABEL_1284;
                          }

                          if (v381)
                          {
                            return 4294954582;
                          }

LABEL_960:
                          LODWORD(v12) = v381 << v15;
LABEL_961:
                          v415 = *(v120 + 8);
                          a3[244] = v415;
                          if (!*(v120 + 36) || (v416 = *(a3 + 4), LOBYTE(v417) = 1, v416) && v416 != 5)
                          {
                            v417 = *(v120 + 40);
                            if (v417)
                            {
                              v418 = *(a3 + 4);
                              LOBYTE(v417) = v418 == 1 || v418 == 6;
                            }
                          }

                          a3[245] = v417;
                          if (!v415)
                          {
                            goto LABEL_975;
                          }

                          v420 = *(a3 + 4);
                          if (v420 <= 9 && ((1 << v420) & 0x294) != 0)
                          {
                            LOBYTE(v415) = 0;
                            goto LABEL_975;
                          }

                          if (!a4)
                          {
                            if (v12 >> 19)
                            {
                              goto LABEL_1009;
                            }

                            fig_log_get_emitter("com.apple.coremedia", "");
                            OUTLINED_FUNCTION_6_13();
                            v457 = 4294954582;
                            v458 = 2268;
                            goto LABEL_1076;
                          }

                          if (v12 < 0x80000)
                          {
                            return 4294954582;
                          }

LABEL_1009:
                          v432 = __clz(v12);
                          v433 = v12 << (v432 + 1) >> -v432;
                          if (!v432)
                          {
                            v433 = 0;
                          }

                          v434 = v432 + v15 + v432 + 1;
                          v15 = v434 & 7;
                          v16 += v434 >> 3;
                          v435 = v13 + v14 - v16;
                          if (v435 >= 4)
                          {
                            OUTLINED_FUNCTION_50();
                            goto LABEL_1186;
                          }

                          if (v435 >= 1)
                          {
                            if (v435 == 1)
                            {
                              v436 = *v16 << 24;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_14_10();
                              if (!v460)
                              {
                                OUTLINED_FUNCTION_49();
                              }

                              v436 = v461 << 8;
                            }

                            goto LABEL_1186;
                          }

                          v436 = v15 | v435;
                          if (!a4)
                          {
                            if (!v436)
                            {
                              goto LABEL_1186;
                            }

                            fig_log_get_emitter("com.apple.coremedia", "");
                            OUTLINED_FUNCTION_6_13();
                            v40 = "%s signalled err=%d at <>:%d";
                            v41 = "<<<< H264Bridge >>>>";
                            v42 = 4294954582;
                            v43 = 2268;
                            goto LABEL_1284;
                          }

                          if (v436)
                          {
                            return 4294954582;
                          }

LABEL_1186:
                          v415 = v433 + ~(-1 << v432);
                          LODWORD(v12) = v436 << v15;
LABEL_975:
                          a3[212] = v415;
                          if (!a4)
                          {
                            if (v12 >> 19)
                            {
                              goto LABEL_979;
                            }

                            fig_log_get_emitter("com.apple.coremedia", "");
                            OUTLINED_FUNCTION_6_13();
                            v457 = 4294954582;
                            v458 = 2275;
                            goto LABEL_1076;
                          }

                          if (v12 < 0x80000)
                          {
                            return 4294954582;
                          }

LABEL_979:
                          OUTLINED_FUNCTION_4_19();
                          if (v422 == v423)
                          {
                            OUTLINED_FUNCTION_50();
                            goto LABEL_995;
                          }

                          if (v421 >= 1)
                          {
                            if (v421 != 1)
                            {
                              OUTLINED_FUNCTION_14_10();
                              if (!v425)
                              {
                                OUTLINED_FUNCTION_49();
                              }
                            }

                            goto LABEL_995;
                          }

                          v424 = v15 | v421;
                          if (!a4)
                          {
                            if (!v424)
                            {
                              goto LABEL_995;
                            }

                            fig_log_get_emitter("com.apple.coremedia", "");
                            OUTLINED_FUNCTION_6_13();
                            v40 = "%s signalled err=%d at <>:%d";
                            v41 = "<<<< H264Bridge >>>>";
                            v42 = 4294954582;
                            v43 = 2275;
                            goto LABEL_1284;
                          }

                          if (v424)
                          {
                            return 4294954582;
                          }

LABEL_995:
                          OUTLINED_FUNCTION_15_10();
                          *(a3 + 54) = v426;
                          switch(*(a3 + 4))
                          {
                            case 3:
                            case 8:
                              a3[220] = v12 < 0;
                              v427 = (v15 + 1) >> 3;
                              v15 = (v15 + 1) & 7;
                              v16 += v427;
                              v428 = v8 - v16;
                              if (v8 - v16 >= 4)
                              {
                                v429 = bswap32(*v16);
                                goto LABEL_1018;
                              }

                              if (v428 >= 1)
                              {
                                if (v428 == 1)
                                {
                                  v429 = *v16 << 24;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_33_2();
                                  if (!v430)
                                  {
                                    v431 |= v16[2];
                                  }

                                  v429 = v431 << 8;
                                }

                                goto LABEL_1018;
                              }

                              v429 = v15 | v428;
                              if (a4)
                              {
                                if (v429)
                                {
                                  return 4294954582;
                                }

                                goto LABEL_1018;
                              }

                              if (!v429)
                              {
LABEL_1018:
                                LODWORD(v12) = v429 << v15;
                                goto LABEL_1019;
                              }

                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_6_13();
                              v40 = "%s signalled err=%d at <>:%d";
                              v41 = "<<<< H264Bridge >>>>";
                              v42 = 4294954582;
                              v43 = 2280;
                              goto LABEL_1284;
                            case 4:
                            case 9:
LABEL_1019:
                              if (a4)
                              {
                                if (v12 < 0x80000)
                                {
                                  return 4294954582;
                                }
                              }

                              else if (!(v12 >> 19))
                              {
                                fig_log_get_emitter("com.apple.coremedia", "");
                                OUTLINED_FUNCTION_6_13();
                                v457 = 4294954582;
                                v458 = 2283;
                                goto LABEL_1076;
                              }

                              OUTLINED_FUNCTION_4_19();
                              if (v422 != v423)
                              {
                                if (v437 < 1)
                                {
                                  v438 = v15 | v437;
                                  if (a4)
                                  {
                                    if (v438)
                                    {
                                      return 4294954582;
                                    }
                                  }

                                  else if (v438)
                                  {
                                    fig_log_get_emitter("com.apple.coremedia", "");
                                    OUTLINED_FUNCTION_6_13();
                                    v40 = "%s signalled err=%d at <>:%d";
                                    v41 = "<<<< H264Bridge >>>>";
                                    v42 = 4294954582;
                                    v43 = 2283;
                                    goto LABEL_1284;
                                  }
                                }

                                else if (v437 != 1)
                                {
                                  OUTLINED_FUNCTION_14_10();
                                  if (!v439)
                                  {
                                    OUTLINED_FUNCTION_49();
                                  }
                                }
                              }

                              else
                              {
                                OUTLINED_FUNCTION_50();
                              }

                              OUTLINED_FUNCTION_15_10();
                              *(a3 + 56) = v440;
LABEL_1037:
                              *(a3 + 29) = 0;
                              *(a3 + 57) = 0;
                              if (!*(v120 + 44))
                              {
                                goto LABEL_1107;
                              }

                              if (a4)
                              {
                                if (v12 < 0x80000)
                                {
                                  return 4294954582;
                                }
                              }

                              else if (!(v12 >> 19))
                              {
                                fig_log_get_emitter("com.apple.coremedia", "");
                                OUTLINED_FUNCTION_6_13();
                                v457 = 4294954582;
                                v458 = 2300;
                                goto LABEL_1076;
                              }

                              v441 = __clz(v12);
                              v442 = v12 << (v441 + 1) >> -v441;
                              if (!v441)
                              {
                                v442 = 0;
                              }

                              v443 = v442 + ~(-1 << v441);
                              *(a3 + 57) = v443;
                              v444 = v441 + v15 + v441 + 1;
                              v15 = v444 & 7;
                              v16 += v444 >> 3;
                              v445 = v8 - v16;
                              if (v8 - v16 < 4)
                              {
                                if (v445 < 1)
                                {
                                  v448 = v15 | v445;
                                  if (a4)
                                  {
                                    if (v448)
                                    {
                                      v449 = 0;
                                    }

                                    else
                                    {
                                      v449 = v443 == 1;
                                    }

                                    if (!v449)
                                    {
                                      return 4294954582;
                                    }

                                    LODWORD(v12) = 0;
                                  }

                                  else
                                  {
                                    if (v448)
                                    {
                                      fig_log_get_emitter("com.apple.coremedia", "");
                                      OUTLINED_FUNCTION_6_13();
                                      v40 = "%s signalled err=%d at <>:%d";
                                      v41 = "<<<< H264Bridge >>>>";
                                      v42 = 4294954582;
                                      v43 = 2300;
                                      goto LABEL_1284;
                                    }

                                    LODWORD(v12) = 0;
                                    if (v443 != 1)
                                    {
                                      goto LABEL_1075;
                                    }
                                  }

                                  goto LABEL_1107;
                                }

                                v447 = *v16;
                                if (v445 == 1)
                                {
                                  v446 = v447 << 24;
                                }

                                else
                                {
                                  v450 = (v447 << 16) | (v16[1] << 8);
                                  if (v445 != 2)
                                  {
                                    v450 |= v16[2];
                                  }

                                  v446 = v450 << 8;
                                }
                              }

                              else
                              {
                                v446 = bswap32(*v16);
                              }

                              LODWORD(v12) = v446 << v15;
                              if (v443 != 1)
                              {
                                if (a4)
                                {
                                  if (v12 < 0x80000)
                                  {
                                    return 4294954582;
                                  }

                                  goto LABEL_1064;
                                }

                                if (v12 >> 19)
                                {
LABEL_1064:
                                  OUTLINED_FUNCTION_4_19();
                                  if (v422 != v423)
                                  {
                                    if (v451 < 1)
                                    {
                                      v452 = v15 | v451;
                                      if (a4)
                                      {
                                        if (v452)
                                        {
                                          return 4294954582;
                                        }
                                      }

                                      else if (v452)
                                      {
                                        fig_log_get_emitter("com.apple.coremedia", "");
                                        OUTLINED_FUNCTION_6_13();
                                        v40 = "%s signalled err=%d at <>:%d";
                                        v41 = "<<<< H264Bridge >>>>";
                                        v42 = 4294954582;
                                        v43 = 2306;
                                        goto LABEL_1284;
                                      }
                                    }

                                    else if (v451 != 1)
                                    {
                                      OUTLINED_FUNCTION_14_10();
                                      if (!v459)
                                      {
                                        OUTLINED_FUNCTION_49();
                                      }
                                    }
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_50();
                                  }

                                  OUTLINED_FUNCTION_15_10();
                                  *(a3 + 58) = v462;
                                  if (a4)
                                  {
                                    if (v12 < 0x80000)
                                    {
                                      return 4294954582;
                                    }
                                  }

                                  else if (!(v12 >> 19))
                                  {
                                    fig_log_get_emitter("com.apple.coremedia", "");
                                    OUTLINED_FUNCTION_6_13();
                                    v457 = 4294954582;
                                    v458 = 2307;
                                    goto LABEL_1076;
                                  }

                                  OUTLINED_FUNCTION_4_19();
                                  if (v422 != v423)
                                  {
                                    if (v463 < 1)
                                    {
                                      v464 = v15 | v463;
                                      if (a4)
                                      {
                                        if (v464)
                                        {
                                          return 4294954582;
                                        }
                                      }

                                      else if (v464)
                                      {
                                        fig_log_get_emitter("com.apple.coremedia", "");
                                        OUTLINED_FUNCTION_6_13();
                                        v40 = "%s signalled err=%d at <>:%d";
                                        v41 = "<<<< H264Bridge >>>>";
                                        v42 = 4294954582;
                                        v43 = 2307;
                                        goto LABEL_1284;
                                      }
                                    }

                                    else if (v463 != 1)
                                    {
                                      OUTLINED_FUNCTION_14_10();
                                      if (!v465)
                                      {
                                        OUTLINED_FUNCTION_49();
                                      }
                                    }
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_50();
                                  }

                                  OUTLINED_FUNCTION_15_10();
                                  *(a3 + 59) = v466;
                                  goto LABEL_1107;
                                }

LABEL_1075:
                                fig_log_get_emitter("com.apple.coremedia", "");
                                OUTLINED_FUNCTION_6_13();
                                v457 = 4294954582;
                                v458 = 2306;
                                goto LABEL_1076;
                              }

LABEL_1107:
                              if (*(v120 + 16) < 1 || (*(v120 + 20) - 3) > 2)
                              {
                                goto LABEL_1128;
                              }

                              v467 = vcvtpd_s64_f64(log2(((*(v122 + 28) + 1 + (*(v122 + 28) + 1) * *(v122 + 32)) / (*(v120 + 24) + 1) + 1)));
                              if (a4)
                              {
                                if ((v467 - 26) < 0xFFFFFFE7)
                                {
                                  return 4294954582;
                                }

LABEL_1114:
                                *(a3 + 60) = v12 >> -v467;
                                v468 = v15 + v467;
                                v15 = v468 & 7;
                                v16 += v468 >> 3;
                                v469 = v8 - v16;
                                if (v8 - v16 < 4)
                                {
                                  if (v469 < 1)
                                  {
                                    v470 = v15 | v469;
                                    if (a4)
                                    {
                                      if (v470)
                                      {
                                        return 4294954582;
                                      }
                                    }

                                    else if (v470)
                                    {
                                      fig_log_get_emitter("com.apple.coremedia", "");
                                      OUTLINED_FUNCTION_6_13();
                                      v40 = "%s signalled err=%d at <>:%d";
                                      v41 = "<<<< H264Bridge >>>>";
                                      v42 = 4294954582;
                                      v43 = 2346;
                                      goto LABEL_1284;
                                    }
                                  }

                                  else if (v469 == 1)
                                  {
                                    v470 = *v16 << 24;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_33_2();
                                    if (!v471)
                                    {
                                      v472 |= v16[2];
                                    }

                                    v470 = v472 << 8;
                                  }
                                }

                                else
                                {
                                  v470 = bswap32(*v16);
                                }

                                LODWORD(v12) = v470 << v15;
                                goto LABEL_1128;
                              }

                              if (v467 > 0 && v467 < 0x1A)
                              {
                                goto LABEL_1114;
                              }

                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_6_13();
                              v457 = 4294954582;
                              v458 = 2346;
LABEL_1076:
                              v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v453, v457, "<<<< H264Bridge >>>>", v458, v454, v455, v456);
                              goto LABEL_1077;
                            default:
                              goto LABEL_1037;
                          }
                        }

                        a3[204] = v308 < 0;
                        if (v372 < 4)
                        {
                          if (v372 < 1)
                          {
                            v374 = v15 | v372;
                            if (a4)
                            {
                              if (v374)
                              {
                                return 4294954582;
                              }
                            }

                            else if (v374)
                            {
                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_6_13();
                              v40 = "%s signalled err=%d at <>:%d";
                              v41 = "<<<< H264Bridge >>>>";
                              v42 = 4294954582;
                              v43 = 2222;
                              goto LABEL_1284;
                            }
                          }

                          else
                          {
                            v376 = *v16;
                            if (v372 == 1)
                            {
                              v374 = v376 << 24;
                            }

                            else
                            {
                              v383 = (v376 << 16) | (v16[1] << 8);
                              if (v372 != 2)
                              {
                                v383 |= v16[2];
                              }

                              v374 = v383 << 8;
                            }
                          }
                        }

                        else
                        {
                          v374 = bswap32(*v16);
                        }

                        LODWORD(v12) = v374 << v15;
                        if ((v308 & 0x80000000) == 0)
                        {
                          goto LABEL_961;
                        }

                        while (1)
                        {
                          if (a4)
                          {
                            if (v12 < 0x80000)
                            {
                              return 4294954582;
                            }
                          }

                          else if (!(v12 >> 19))
                          {
                            fig_log_get_emitter("com.apple.coremedia", "");
                            OUTLINED_FUNCTION_6_13();
                            v457 = 4294954582;
                            v458 = 2228;
                            goto LABEL_1076;
                          }

                          v386 = __clz(v12);
                          v387 = v12 << (v386 + 1) >> -v386;
                          if (!v386)
                          {
                            v387 = 0;
                          }

                          v388 = v387 + ~(-1 << v386);
                          v389 = v386 + v15 + v386 + 1;
                          v15 = v389 & 7;
                          v16 += v389 >> 3;
                          v390 = v8 - v16;
                          if (v8 - v16 >= 4)
                          {
                            break;
                          }

                          if (v390 >= 1)
                          {
                            v392 = *v16;
                            if (v390 == 1)
                            {
                              v391 = v392 << 24;
                            }

                            else
                            {
                              v394 = (v392 << 16) | (v16[1] << 8);
                              if (v390 != 2)
                              {
                                v394 |= v16[2];
                              }

                              v391 = v394 << 8;
                            }

LABEL_882:
                            LODWORD(v12) = v391 << v15;
                            if (a4)
                            {
                              goto LABEL_883;
                            }

                            goto LABEL_887;
                          }

                          v393 = v15 | v390;
                          if (a4)
                          {
                            if (v393)
                            {
                              return 4294954582;
                            }

                            LODWORD(v12) = 0;
LABEL_883:
                            if (v388 > 6)
                            {
                              return 4294954582;
                            }

                            goto LABEL_888;
                          }

                          if (v393)
                          {
                            fig_log_get_emitter("com.apple.coremedia", "");
                            OUTLINED_FUNCTION_6_13();
                            v40 = "%s signalled err=%d at <>:%d";
                            v41 = "<<<< H264Bridge >>>>";
                            v42 = 4294954582;
                            v43 = 2228;
                            goto LABEL_1284;
                          }

                          LODWORD(v12) = 0;
LABEL_887:
                          if (v388 >= 7)
                          {
                            fig_log_get_emitter("com.apple.coremedia", "");
                            OUTLINED_FUNCTION_6_13();
                            OUTLINED_FUNCTION_44();
                            v62 = 2229;
                            goto LABEL_253;
                          }

LABEL_888:
                          if ((v388 | 2) == 3)
                          {
                            if (a4)
                            {
                              if (v12 < 0x80000)
                              {
                                return 4294954582;
                              }
                            }

                            else if (!(v12 >> 19))
                            {
                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_6_13();
                              v457 = 4294954582;
                              v458 = 2234;
                              goto LABEL_1076;
                            }

                            v395 = v15 + 2 * __clz(v12) + 1;
                            v15 = v395 & 7;
                            v16 += v395 >> 3;
                            v396 = v8 - v16;
                            if (v8 - v16 < 4)
                            {
                              if (v396 < 1)
                              {
                                v397 = v15 | v396;
                                if (a4)
                                {
                                  if (v397)
                                  {
                                    return 4294954582;
                                  }
                                }

                                else if (v397)
                                {
                                  fig_log_get_emitter("com.apple.coremedia", "");
                                  OUTLINED_FUNCTION_6_13();
                                  v40 = "%s signalled err=%d at <>:%d";
                                  v41 = "<<<< H264Bridge >>>>";
                                  v42 = 4294954582;
                                  v43 = 2234;
                                  goto LABEL_1284;
                                }
                              }

                              else
                              {
                                v398 = *v16;
                                if (v396 == 1)
                                {
                                  v397 = v398 << 24;
                                }

                                else
                                {
                                  v399 = (v398 << 16) | (v16[1] << 8);
                                  if (v396 != 2)
                                  {
                                    v399 |= v16[2];
                                  }

                                  v397 = v399 << 8;
                                }
                              }
                            }

                            else
                            {
                              v397 = bswap32(*v16);
                            }

                            LODWORD(v12) = v397 << v15;
                          }

                          v400 = v388 == 6 || v388 == 3;
                          v401 = __clz(v12);
                          v402 = v12 >> 19;
                          if (v400)
                          {
                            if (a4)
                            {
                              if (v12 < 0x80000)
                              {
                                return 4294954582;
                              }
                            }

                            else if (!v402)
                            {
                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_6_13();
                              v457 = 4294954582;
                              v458 = 2241;
                              goto LABEL_1076;
                            }

                            v403 = v15 + 2 * v401 + 1;
                            v15 = v403 & 7;
                            v16 += v403 >> 3;
                            v404 = v8 - v16;
                            if (v8 - v16 < 4)
                            {
                              if (v404 < 1)
                              {
                                v405 = v15 | v404;
                                if (a4)
                                {
                                  if (v405)
                                  {
                                    return 4294954582;
                                  }
                                }

                                else if (v405)
                                {
                                  fig_log_get_emitter("com.apple.coremedia", "");
                                  OUTLINED_FUNCTION_6_13();
                                  v40 = "%s signalled err=%d at <>:%d";
                                  v41 = "<<<< H264Bridge >>>>";
                                  v42 = 4294954582;
                                  v43 = 2241;
                                  goto LABEL_1284;
                                }
                              }

                              else
                              {
                                v406 = *v16;
                                if (v404 == 1)
                                {
                                  v405 = v406 << 24;
                                }

                                else
                                {
                                  v411 = (v406 << 16) | (v16[1] << 8);
                                  if (v404 != 2)
                                  {
                                    v411 |= v16[2];
                                  }

                                  v405 = v411 << 8;
                                }
                              }
                            }

                            else
                            {
                              v405 = bswap32(*v16);
                            }

                            LODWORD(v12) = v405 << v15;
                          }

                          else if (v388 == 2)
                          {
                            if (a4)
                            {
                              if (v12 < 0x80000)
                              {
                                return 4294954582;
                              }
                            }

                            else if (!v402)
                            {
                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_6_13();
                              v457 = 4294954582;
                              v458 = 2237;
                              goto LABEL_1076;
                            }

                            v407 = v15 + 2 * v401 + 1;
                            v15 = v407 & 7;
                            v16 += v407 >> 3;
                            v408 = v8 - v16;
                            if (v8 - v16 >= 4)
                            {
LABEL_944:
                              v410 = bswap32(*v16);
LABEL_956:
                              LODWORD(v12) = v410 << v15;
                              goto LABEL_957;
                            }

                            v409 = v408 == 1;
                            if (v408 >= 1)
                            {
                              goto LABEL_946;
                            }

                            v410 = v15 | v408;
                            if (!a4)
                            {
                              if (v410)
                              {
                                fig_log_get_emitter("com.apple.coremedia", "");
                                OUTLINED_FUNCTION_6_13();
                                v40 = "%s signalled err=%d at <>:%d";
                                v41 = "<<<< H264Bridge >>>>";
                                v42 = 4294954582;
                                v43 = 2237;
                                goto LABEL_1284;
                              }

                              goto LABEL_956;
                            }

                            goto LABEL_953;
                          }

                          if (v388 == 4)
                          {
                            if (a4)
                            {
                              if (v12 < 0x80000)
                              {
                                return 4294954582;
                              }
                            }

                            else if (!(v12 >> 19))
                            {
                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_6_13();
                              v457 = 4294954582;
                              v458 = 2244;
                              goto LABEL_1076;
                            }

                            v412 = v15 + 2 * __clz(v12) + 1;
                            v15 = v412 & 7;
                            v16 += v412 >> 3;
                            v408 = v8 - v16;
                            if (v8 - v16 >= 4)
                            {
                              goto LABEL_944;
                            }

                            v409 = v408 == 1;
                            if (v408 >= 1)
                            {
LABEL_946:
                              v413 = *v16;
                              if (v409)
                              {
                                v410 = v413 << 24;
                              }

                              else
                              {
                                v414 = (v413 << 16) | (v16[1] << 8);
                                if (v408 != 2)
                                {
                                  v414 |= v16[2];
                                }

                                v410 = v414 << 8;
                              }

                              goto LABEL_956;
                            }

                            v410 = v15 | v408;
                            if (!a4)
                            {
                              if (v410)
                              {
                                fig_log_get_emitter("com.apple.coremedia", "");
                                OUTLINED_FUNCTION_6_13();
                                v40 = "%s signalled err=%d at <>:%d";
                                v41 = "<<<< H264Bridge >>>>";
                                v42 = 4294954582;
                                v43 = 2244;
                                goto LABEL_1284;
                              }

                              goto LABEL_956;
                            }

LABEL_953:
                            if (v410)
                            {
                              return 4294954582;
                            }

                            goto LABEL_956;
                          }

LABEL_957:
                          if (!v388)
                          {
                            goto LABEL_961;
                          }
                        }

                        v391 = bswap32(*v16);
                        goto LABEL_882;
                      }

                      if (v347 >= v346)
                      {
                        v348 = a1;
                        v349 = a3;
                        v350 = v122;
                        v351 = 0;
                        goto LABEL_816;
                      }

                      fig_log_get_emitter("com.apple.coremedia", "");
                      OUTLINED_FUNCTION_6_13();
                      OUTLINED_FUNCTION_44();
                      v62 = 2183;
LABEL_253:
                      FigSignalErrorAtGM(v55, v56, v57, v58, v62, v59, v60, v61);
                      return v8;
                    }

                    a3[61] = v308 < 0;
                    v334 = (v15 + 1) >> 3;
                    v15 = (v15 + 1) & 7;
                    v16 += v334;
                    v335 = v17 - v16;
                    if (v17 - v16 < 4)
                    {
                      if (v335 < 1)
                      {
                        v336 = v15 | v335;
                        if (a4)
                        {
                          if (v336)
                          {
                            return 4294954582;
                          }
                        }

                        else if (v336)
                        {
                          fig_log_get_emitter("com.apple.coremedia", "");
                          OUTLINED_FUNCTION_6_13();
                          v40 = "%s signalled err=%d at <>:%d";
                          v41 = "<<<< H264Bridge >>>>";
                          v42 = 4294954582;
                          v43 = 2140;
                          goto LABEL_1284;
                        }
                      }

                      else
                      {
                        v337 = *v16;
                        if (v335 == 1)
                        {
                          v336 = v337 << 24;
                        }

                        else
                        {
                          v341 = (v337 << 16) | (v16[1] << 8);
                          if (v335 != 2)
                          {
                            v341 |= v16[2];
                          }

                          v336 = v341 << 8;
                        }
                      }
                    }

                    else
                    {
                      v336 = bswap32(*v16);
                    }

                    LODWORD(v12) = v336 << v15;
                    if ((v308 & 0x80000000) == 0)
                    {
LABEL_749:
                      v308 = v12;
                      goto LABEL_750;
                    }

                    if (!a4)
                    {
                      goto LABEL_765;
                    }

LABEL_763:
                    if (v12 < 0x80000)
                    {
                      return 4294954582;
                    }

                    while (1)
                    {
                      v352 = __clz(v12);
                      v353 = v12 << (v352 + 1) >> -v352;
                      if (!v352)
                      {
                        v353 = 0;
                      }

                      v354 = v353 + ~(-1 << v352);
                      v355 = v352 + v15 + v352 + 1;
                      v15 = v355 & 7;
                      v16 += v355 >> 3;
                      v356 = v17 - v16;
                      if (v17 - v16 >= 4)
                      {
                        break;
                      }

                      if (v356 >= 1)
                      {
                        v358 = *v16;
                        if (v356 == 1)
                        {
                          v357 = v358 << 24;
                        }

                        else
                        {
                          v360 = (v358 << 16) | (v16[1] << 8);
                          if (v356 != 2)
                          {
                            v360 |= v16[2];
                          }

                          v357 = v360 << 8;
                        }

LABEL_779:
                        LODWORD(v12) = v357 << v15;
                        if (a4)
                        {
                          goto LABEL_780;
                        }

                        goto LABEL_789;
                      }

                      v359 = v15 | v356;
                      if (a4)
                      {
                        if (v359)
                        {
                          return 4294954582;
                        }

                        LODWORD(v12) = 0;
LABEL_780:
                        if (v354 > 3)
                        {
                          return 4294954577;
                        }

                        v361 = __clz(v12);
                        if (v354 < 2)
                        {
                          if (v12 < 0x80000)
                          {
                            return 4294954582;
                          }

LABEL_792:
                          v363 = v15 + 2 * v361 + 1;
                          v15 = v363 & 7;
                          v16 += v363 >> 3;
                          v364 = v17 - v16;
                          if (v17 - v16 >= 4)
                          {
                            goto LABEL_800;
                          }

                          v365 = v364 == 1;
                          if (v364 >= 1)
                          {
                            goto LABEL_802;
                          }

                          v366 = v15 | v364;
                          if (a4)
                          {
                            goto LABEL_809;
                          }

                          if (v366)
                          {
                            fig_log_get_emitter("com.apple.coremedia", "");
                            OUTLINED_FUNCTION_6_13();
                            v40 = "%s signalled err=%d at <>:%d";
                            v41 = "<<<< H264Bridge >>>>";
                            v42 = 4294954582;
                            v43 = 2167;
                            goto LABEL_1284;
                          }

                          goto LABEL_812;
                        }

                        if (v354 != 2)
                        {
                          goto LABEL_749;
                        }

                        if (v12 < 0x80000)
                        {
                          return 4294954582;
                        }

                        goto LABEL_799;
                      }

                      if (v359)
                      {
                        fig_log_get_emitter("com.apple.coremedia", "");
                        OUTLINED_FUNCTION_6_13();
                        v40 = "%s signalled err=%d at <>:%d";
                        v41 = "<<<< H264Bridge >>>>";
                        v42 = 4294954582;
                        v43 = 2154;
                        goto LABEL_1284;
                      }

                      LODWORD(v12) = 0;
LABEL_789:
                      if (v354 >= 4)
                      {
                        fig_log_get_emitter("com.apple.coremedia", "");
                        OUTLINED_FUNCTION_6_13();
                        v457 = 4294954577;
                        v458 = 2162;
                        goto LABEL_1076;
                      }

                      v361 = __clz(v12);
                      v362 = v12 >> 19;
                      if (v354 < 2)
                      {
                        if (!v362)
                        {
                          fig_log_get_emitter("com.apple.coremedia", "");
                          OUTLINED_FUNCTION_6_13();
                          v457 = 4294954582;
                          v458 = 2167;
                          goto LABEL_1076;
                        }

                        goto LABEL_792;
                      }

                      if (v354 != 2)
                      {
                        goto LABEL_749;
                      }

                      if (!v362)
                      {
                        fig_log_get_emitter("com.apple.coremedia", "");
                        OUTLINED_FUNCTION_6_13();
                        v457 = 4294954582;
                        v458 = 2170;
                        goto LABEL_1076;
                      }

LABEL_799:
                      v367 = v15 + 2 * v361 + 1;
                      v15 = v367 & 7;
                      v16 += v367 >> 3;
                      v364 = v17 - v16;
                      if (v17 - v16 >= 4)
                      {
LABEL_800:
                        v366 = bswap32(*v16);
                        goto LABEL_812;
                      }

                      v365 = v364 == 1;
                      if (v364 >= 1)
                      {
LABEL_802:
                        v368 = *v16;
                        if (v365)
                        {
                          v366 = v368 << 24;
                        }

                        else
                        {
                          v369 = (v368 << 16) | (v16[1] << 8);
                          if (v364 != 2)
                          {
                            v369 |= v16[2];
                          }

                          v366 = v369 << 8;
                        }

                        goto LABEL_812;
                      }

                      v366 = v15 | v364;
                      if (a4)
                      {
LABEL_809:
                        if (v366)
                        {
                          return 4294954582;
                        }

                        goto LABEL_812;
                      }

                      if (v366)
                      {
                        fig_log_get_emitter("com.apple.coremedia", "");
                        OUTLINED_FUNCTION_6_13();
                        v40 = "%s signalled err=%d at <>:%d";
                        v41 = "<<<< H264Bridge >>>>";
                        v42 = 4294954582;
                        v43 = 2170;
                        goto LABEL_1284;
                      }

LABEL_812:
                      LODWORD(v12) = v366 << v15;
                      if (a4)
                      {
                        goto LABEL_763;
                      }

LABEL_765:
                      if (!(v12 >> 19))
                      {
                        fig_log_get_emitter("com.apple.coremedia", "");
                        OUTLINED_FUNCTION_6_13();
                        v457 = 4294954582;
                        v458 = 2154;
                        goto LABEL_1076;
                      }
                    }

                    v357 = bswap32(*v16);
                    goto LABEL_779;
                  }

                  a3[60] = v308 < 0;
                  v338 = (v15 + 1) >> 3;
                  v15 = (v15 + 1) & 7;
                  v16 += v338;
                  v339 = v17 - v16;
                  if (v17 - v16 < 4)
                  {
                    if (v339 < 1)
                    {
                      v340 = v15 | v339;
                      if (a4)
                      {
                        if (v340)
                        {
                          return 4294954582;
                        }
                      }

                      else if (v340)
                      {
                        fig_log_get_emitter("com.apple.coremedia", "");
                        OUTLINED_FUNCTION_6_13();
                        v40 = "%s signalled err=%d at <>:%d";
                        v41 = "<<<< H264Bridge >>>>";
                        v42 = 4294954582;
                        v43 = 2101;
                        goto LABEL_1284;
                      }
                    }

                    else
                    {
                      v342 = *v16;
                      if (v339 == 1)
                      {
                        v340 = v342 << 24;
                      }

                      else
                      {
                        v385 = (v342 << 16) | (v16[1] << 8);
                        if (v339 != 2)
                        {
                          v385 |= v16[2];
                        }

                        v340 = v385 << 8;
                      }
                    }
                  }

                  else
                  {
                    v340 = bswap32(*v16);
                  }

                  LODWORD(v12) = v340 << v15;
                  if ((v308 & 0x80000000) == 0)
                  {
LABEL_1132:
                    v308 = v12;
                    goto LABEL_726;
                  }

                  if (!a4)
                  {
                    goto LABEL_1136;
                  }

LABEL_1134:
                  if (v12 < 0x80000)
                  {
                    return 4294954582;
                  }

                  while (1)
                  {
                    v474 = __clz(v12);
                    v475 = v12 << (v474 + 1) >> -v474;
                    if (!v474)
                    {
                      v475 = 0;
                    }

                    v476 = v475 + ~(-1 << v474);
                    v477 = v474 + v15 + v474 + 1;
                    v15 = v477 & 7;
                    v16 += v477 >> 3;
                    v478 = v17 - v16;
                    if (v17 - v16 >= 4)
                    {
                      break;
                    }

                    if (v478 >= 1)
                    {
                      v480 = *v16;
                      if (v478 == 1)
                      {
                        v479 = v480 << 24;
                      }

                      else
                      {
                        v482 = (v480 << 16) | (v16[1] << 8);
                        if (v478 != 2)
                        {
                          v482 |= v16[2];
                        }

                        v479 = v482 << 8;
                      }

LABEL_1150:
                      LODWORD(v12) = v479 << v15;
                      if (a4)
                      {
                        goto LABEL_1151;
                      }

                      goto LABEL_1160;
                    }

                    v481 = v15 | v478;
                    if (a4)
                    {
                      if (v481)
                      {
                        return 4294954582;
                      }

                      LODWORD(v12) = 0;
LABEL_1151:
                      if (v476 > 3)
                      {
                        return 4294954577;
                      }

                      v483 = __clz(v12);
                      if (v476 < 2)
                      {
                        if (v12 < 0x80000)
                        {
                          return 4294954582;
                        }

LABEL_1163:
                        v485 = v15 + 2 * v483 + 1;
                        v15 = v485 & 7;
                        v16 += v485 >> 3;
                        v486 = v17 - v16;
                        if (v17 - v16 >= 4)
                        {
                          goto LABEL_1171;
                        }

                        v487 = v486 == 1;
                        if (v486 >= 1)
                        {
                          goto LABEL_1173;
                        }

                        v488 = v15 | v486;
                        if (a4)
                        {
                          goto LABEL_1180;
                        }

                        if (v488)
                        {
                          fig_log_get_emitter("com.apple.coremedia", "");
                          OUTLINED_FUNCTION_6_13();
                          v40 = "%s signalled err=%d at <>:%d";
                          v41 = "<<<< H264Bridge >>>>";
                          v42 = 4294954582;
                          v43 = 2128;
                          goto LABEL_1284;
                        }

                        goto LABEL_1183;
                      }

                      if (v476 != 2)
                      {
                        goto LABEL_1132;
                      }

                      if (v12 < 0x80000)
                      {
                        return 4294954582;
                      }

                      goto LABEL_1170;
                    }

                    if (v481)
                    {
                      fig_log_get_emitter("com.apple.coremedia", "");
                      OUTLINED_FUNCTION_6_13();
                      v40 = "%s signalled err=%d at <>:%d";
                      v41 = "<<<< H264Bridge >>>>";
                      v42 = 4294954582;
                      v43 = 2115;
                      goto LABEL_1284;
                    }

                    LODWORD(v12) = 0;
LABEL_1160:
                    if (v476 >= 4)
                    {
                      fig_log_get_emitter("com.apple.coremedia", "");
                      OUTLINED_FUNCTION_6_13();
                      v457 = 4294954577;
                      v458 = 2123;
                      goto LABEL_1076;
                    }

                    v483 = __clz(v12);
                    v484 = v12 >> 19;
                    if (v476 < 2)
                    {
                      if (!v484)
                      {
                        fig_log_get_emitter("com.apple.coremedia", "");
                        OUTLINED_FUNCTION_6_13();
                        v457 = 4294954582;
                        v458 = 2128;
                        goto LABEL_1076;
                      }

                      goto LABEL_1163;
                    }

                    if (v476 != 2)
                    {
                      goto LABEL_1132;
                    }

                    if (!v484)
                    {
                      fig_log_get_emitter("com.apple.coremedia", "");
                      OUTLINED_FUNCTION_6_13();
                      v457 = 4294954582;
                      v458 = 2131;
                      goto LABEL_1076;
                    }

LABEL_1170:
                    v489 = v15 + 2 * v483 + 1;
                    v15 = v489 & 7;
                    v16 += v489 >> 3;
                    v486 = v17 - v16;
                    if (v17 - v16 >= 4)
                    {
LABEL_1171:
                      v488 = bswap32(*v16);
                      goto LABEL_1183;
                    }

                    v487 = v486 == 1;
                    if (v486 >= 1)
                    {
LABEL_1173:
                      v490 = *v16;
                      if (v487)
                      {
                        v488 = v490 << 24;
                      }

                      else
                      {
                        v491 = (v490 << 16) | (v16[1] << 8);
                        if (v486 != 2)
                        {
                          v491 |= v16[2];
                        }

                        v488 = v491 << 8;
                      }

                      goto LABEL_1183;
                    }

                    v488 = v15 | v486;
                    if (a4)
                    {
LABEL_1180:
                      if (v488)
                      {
                        return 4294954582;
                      }

                      goto LABEL_1183;
                    }

                    if (v488)
                    {
                      fig_log_get_emitter("com.apple.coremedia", "");
                      OUTLINED_FUNCTION_6_13();
                      v40 = "%s signalled err=%d at <>:%d";
                      v41 = "<<<< H264Bridge >>>>";
                      v42 = 4294954582;
                      v43 = 2131;
                      goto LABEL_1284;
                    }

LABEL_1183:
                    LODWORD(v12) = v488 << v15;
                    if (a4)
                    {
                      goto LABEL_1134;
                    }

LABEL_1136:
                    if (!(v12 >> 19))
                    {
                      fig_log_get_emitter("com.apple.coremedia", "");
                      OUTLINED_FUNCTION_6_13();
                      v457 = 4294954582;
                      v458 = 2115;
                      goto LABEL_1076;
                    }
                  }

                  v479 = bswap32(*v16);
                  goto LABEL_1150;
                }

                if (a4)
                {
                  if (v308 < 0x80000)
                  {
                    return 4294954582;
                  }

LABEL_673:
                  v310 = __clz(v308);
                  v311 = (v308 << (v310 + 1)) >> -v310;
                  if (!v310)
                  {
                    v311 = 0;
                  }

                  v312 = v311 + ~(-1 << v310);
                  *(a3 + 13) = v312;
                  v313 = v310 + v15 + v310 + 1;
                  v15 = v313 & 7;
                  v16 += v313 >> 3;
                  v314 = v17 - v16;
                  if (v17 - v16 < 4)
                  {
                    if (v314 < 1)
                    {
                      v321 = v15 | v314;
                      if (a4)
                      {
                        if (v321)
                        {
                          return 4294954582;
                        }

                        LODWORD(v12) = 0;
LABEL_690:
                        if (v312 > 0x1F)
                        {
                          return 4294954577;
                        }

LABEL_695:
                        if (v296 != 6 && v296 != 1)
                        {
                          goto LABEL_723;
                        }

                        if (a4)
                        {
                          if (v12 < 0x80000)
                          {
                            return 4294954582;
                          }
                        }

                        else if (!(v12 >> 19))
                        {
                          fig_log_get_emitter("com.apple.coremedia", "");
                          OUTLINED_FUNCTION_6_13();
                          v457 = 4294954582;
                          v458 = 2080;
                          goto LABEL_1076;
                        }

                        v324 = __clz(v12);
                        v325 = v12 << (v324 + 1) >> -v324;
                        if (!v324)
                        {
                          v325 = 0;
                        }

                        v326 = v325 + ~(-1 << v324);
                        *(a3 + 14) = v326;
                        v327 = v324 + v15 + v324 + 1;
                        v15 = v327 & 7;
                        v16 += v327 >> 3;
                        v328 = v17 - v16;
                        if (v17 - v16 < 4)
                        {
                          if (v328 < 1)
                          {
                            v331 = v15 | v328;
                            if (a4)
                            {
                              if (v331)
                              {
                                return 4294954582;
                              }

                              LODWORD(v12) = 0;
                              goto LABEL_718;
                            }

                            if (v331)
                            {
                              fig_log_get_emitter("com.apple.coremedia", "");
                              OUTLINED_FUNCTION_6_13();
                              v40 = "%s signalled err=%d at <>:%d";
                              v41 = "<<<< H264Bridge >>>>";
                              v42 = 4294954582;
                              v43 = 2080;
                              goto LABEL_1284;
                            }

                            LODWORD(v12) = 0;
                            goto LABEL_722;
                          }

                          v330 = *v16;
                          if (v328 == 1)
                          {
                            v329 = v330 << 24;
                          }

                          else
                          {
                            v332 = (v330 << 16) | (v16[1] << 8);
                            if (v328 != 2)
                            {
                              v332 |= v16[2];
                            }

                            v329 = v332 << 8;
                          }
                        }

                        else
                        {
                          v329 = bswap32(*v16);
                        }

                        LODWORD(v12) = v329 << v15;
                        if (a4)
                        {
LABEL_718:
                          v308 = v12;
                          if (v326 <= 0x1F)
                          {
                            goto LABEL_724;
                          }

                          return 4294954577;
                        }

LABEL_722:
                        if (v326 >= 0x20)
                        {
                          fig_log_get_emitter("com.apple.coremedia", "");
                          OUTLINED_FUNCTION_6_13();
                          v457 = 4294954577;
                          v458 = 2088;
                          goto LABEL_1076;
                        }

                        goto LABEL_723;
                      }

                      if (v321)
                      {
                        fig_log_get_emitter("com.apple.coremedia", "");
                        OUTLINED_FUNCTION_6_13();
                        v40 = "%s signalled err=%d at <>:%d";
                        v41 = "<<<< H264Bridge >>>>";
                        v42 = 4294954582;
                        v43 = 2069;
                        goto LABEL_1284;
                      }

                      LODWORD(v12) = 0;
LABEL_694:
                      if (v312 >= 0x20)
                      {
                        fig_log_get_emitter("com.apple.coremedia", "");
                        OUTLINED_FUNCTION_6_13();
                        v457 = 4294954577;
                        v458 = 2077;
                        goto LABEL_1076;
                      }

                      goto LABEL_695;
                    }

                    v316 = *v16;
                    if (v314 == 1)
                    {
                      v315 = v316 << 24;
                    }

                    else
                    {
                      v322 = (v316 << 16) | (v16[1] << 8);
                      if (v314 != 2)
                      {
                        v322 |= v16[2];
                      }

                      v315 = v322 << 8;
                    }
                  }

                  else
                  {
                    v315 = bswap32(*v16);
                  }

                  LODWORD(v12) = v315 << v15;
                  if (a4)
                  {
                    goto LABEL_690;
                  }

                  goto LABEL_694;
                }

                if (v308 >> 19)
                {
                  goto LABEL_673;
                }
              }

              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_6_13();
              v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v317, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", 0x815, v318, v319, v320);
              LODWORD(v12) = v308;
              goto LABEL_1077;
            }

            v284 = v15 | v288;
            if (!a4)
            {
              goto LABEL_1193;
            }

            goto LABEL_603;
          }

LABEL_609:
          v287 = v16;
          goto LABEL_612;
        }

        goto LABEL_597;
      }

LABEL_594:
      if (v275 < 0x20 && v275)
      {
        if (v275 >= 0x19)
        {
          v286 = ((v15 + 1) & 7) + v275;
          v15 = v286 & 7;
          v16 += (v286 - 16) >> 3;
          if (v17 - v16 <= 0 && v15 | (v17 - v16))
          {
            goto LABEL_1194;
          }

          goto LABEL_609;
        }

LABEL_597:
        v266 = ((v15 + 1) & 7) + v275;
LABEL_598:
        v15 = v266 & 7;
        v16 += v266 >> 3;
        v282 = v17 - v16;
        if (v17 - v16 >= 4)
        {
LABEL_613:
          v284 = bswap32(*v16);
          goto LABEL_614;
        }

        if (v282 >= 1)
        {
          v283 = *v16;
          if (v282 == 1)
          {
            v284 = v283 << 24;
          }

          else
          {
            v285 = (v283 << 16) | (v16[1] << 8);
            if (v282 != 2)
            {
              v285 |= v16[2];
            }

            v284 = v285 << 8;
          }

          goto LABEL_614;
        }

        v284 = v15 | v282;
        if (!a4)
        {
LABEL_1193:
          if (!v284)
          {
            goto LABEL_614;
          }

          goto LABEL_1194;
        }

LABEL_603:
        if (!v284)
        {
          goto LABEL_614;
        }

        return 4294954582;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_6_13();
      v518 = "%s signalled err=%d at <>:%d";
      v521 = "<<<< H264Bridge >>>>";
      v520 = 4294954582;
      v522 = 2048;
LABEL_1258:
      v8 = FigSignalErrorAtGM(v518, v519, v520, v521, v522, v523, v524, v525);
      goto LABEL_1259;
    }

    break;
  }

  v279 = v167 | v276;
  if (a4)
  {
    if (v279)
    {
      return 4294954582;
    }

    if (v274 < 0)
    {
      goto LABEL_590;
    }

    v279 = 0;
    goto LABEL_585;
  }

  if (!v279)
  {
    LODWORD(v12) = 0;
    if (v274 < 0)
    {
      goto LABEL_594;
    }

    goto LABEL_585;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_6_13();
  v502 = "%s signalled err=%d at <>:%d";
  v505 = "<<<< H264Bridge >>>>";
  v504 = 4294954582;
  v506 = 2048;
LABEL_1240:
  FigSignalErrorAtGM(v502, v503, v504, v505, v506, v507, v508, v509);
  OUTLINED_FUNCTION_45();
LABEL_1259:
  LOBYTE(v15) = v167;
LABEL_1077:
  if (!v8)
  {
LABEL_1128:
    v8 = 0;
    *(a1 + 16) = v16;
    *(a1 + 24) = v12;
    *(a1 + 28) = v15;
  }

  return v8;
}

uint64_t FigH264Bridge_LocateSliceHeaderForHLSfMP4EncryptableNAL(CMBlockBufferRef theBuffer, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  totalLengthOut = 0;
  dataPointerOut = 0;
  blockBufferOut = 0;
  v9 = 4294954584;
  if (!theBuffer || !a4)
  {
    return v9;
  }

  v12 = a7;
  if (a5)
  {
    *a5 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!DataLength)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v26 = 4261;
    goto LABEL_66;
  }

  v18 = DataLength;
  if (CMBlockBufferIsRangeContiguous(theBuffer, 0, 0))
  {
    v19 = CFRetain(theBuffer);
    blockBufferOut = v19;
  }

  else
  {
    DataPointer = CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], theBuffer, *MEMORY[0x1E695E480], 0, 0, v18, 0, &blockBufferOut);
    if (DataPointer)
    {
      goto LABEL_67;
    }

    v19 = blockBufferOut;
  }

  DataPointer = CMBlockBufferGetDataPointer(v19, 0, 0, &totalLengthOut, &dataPointerOut);
  if (!DataPointer)
  {
    if (a3)
    {
      v21 = a9;
      if (a3 + a2 > totalLengthOut)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v26 = 4277;
LABEL_66:
        DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 0xFFFFCE58uLL, "<<<< H264Bridge >>>>", v26, v23, v24, v25);
        goto LABEL_67;
      }

      v27 = a4;
      v47 = a8;
      v48 = a5;
      totalLengthOut = a3;
      dataPointerOut += a2;
    }

    else
    {
      v21 = a9;
      if (a2)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v26 = 4281;
        goto LABEL_66;
      }

      v27 = a4;
      v47 = a8;
      v48 = a5;
      a3 = totalLengthOut;
    }

    v28 = 0;
    v29 = 0;
    v30 = (v47 | v21 | v12) != 0;
    v31 = (v47 | v21) != 0;
    v32 = a6;
    v46 = v12;
    while (a3 - 4 > v29)
    {
      v33 = *&dataPointerOut[v29];
      if (!v33)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v26 = 4293;
        goto LABEL_66;
      }

      v34 = (v29 + 4);
      v35 = bswap32(v33);
      v29 = v35 + v34;
      if (a3 < v35 + v34)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v26 = 4298;
        goto LABEL_66;
      }

      if ((dataPointerOut[v34] & 0x1B) == 1)
      {
        if (v33 == 0x1000000)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_1_2();
          v26 = 4306;
          goto LABEL_66;
        }

        if (v28 == v32 && v30)
        {
          if (v12)
          {
            *v12 = v34;
          }

          if (v31)
          {
            v37 = v31;
            v50 = 0;
            v38 = 64;
            v39 = v27;
            do
            {
              if (v38 >= v35)
              {
                v40 = v35;
              }

              else
              {
                v40 = v38;
              }

              v41 = FigH264Bridge_MeasureSliceHeader(&dataPointerOut[v34], v40, v39, 0, &v50);
              v42 = v38 >= v35;
              v38 = v40 + 64;
            }

            while (!v42 && v41 == -16390);
            v9 = v41;
            if (v41)
            {
              goto LABEL_68;
            }

            v27 = v39;
            v44 = v50;
            if (v47)
            {
              *v47 = v50 + v34;
            }

            v32 = a6;
            v31 = v37;
            if (a9)
            {
              *a9 = v35 - v44;
            }

            v12 = v46;
          }

          if (!v48)
          {
            v42 = __CFADD__(v28++, 1);
            if (!v42)
            {
              goto LABEL_63;
            }

LABEL_62:
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_1_2();
            v26 = 4374;
            goto LABEL_66;
          }

          a3 = totalLengthOut;
        }

        ++v28;
      }

      if (a3 < v29)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_1_2();
        v26 = 4368;
        goto LABEL_66;
      }
    }

    if (!v28)
    {
      goto LABEL_62;
    }

    if (v48)
    {
      *v48 = v28;
    }

LABEL_63:
    if (v28 > a6)
    {
      v9 = 0;
      goto LABEL_68;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v26 = 4382;
    goto LABEL_66;
  }

LABEL_67:
  v9 = DataPointer;
LABEL_68:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v9;
}

size_t scaling_list(size_t result, int a2, _DWORD *a3)
{
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 28);
  if (a2)
  {
    v7 = *result + *(result + 8);
    v8 = 8;
    v9 = 8;
    do
    {
      if (!v8)
      {
        goto LABEL_21;
      }

      if (*a3)
      {
        return result;
      }

      if (!(v4 >> 19))
      {
LABEL_25:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", 0x53E, v20, v21, v22);
        *a3 = result;
        return result;
      }

      v10 = __clz(v4);
      v11 = v4 << (v10 + 1) >> -v10;
      v12 = v10 ? v11 : 0;
      v13 = v10 + v5 + v10 + 1;
      v14 = v13 >> 3;
      v5 = v13 & 7;
      v3 += v14;
      v15 = v7 - v3;
      if (v7 - v3 < 4)
      {
        if (v15 < 1)
        {
          v16 = v5 | v15;
          if (v16)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v17 = *v3;
          if (v15 == 1)
          {
            v16 = v17 << 24;
          }

          else
          {
            v18 = (v17 << 16) | (v3[1] << 8);
            if (v15 != 2)
            {
              v18 |= v3[2];
            }

            v16 = v18 << 8;
          }
        }
      }

      else
      {
        v16 = bswap32(*v3);
      }

      v4 = v16 << v5;
      v8 = (((v12 + (1 << v10)) >> 1) - ((v12 + (1 << v10)) >> 1) * 2 * ((v12 + (1 << v10)) & 1) + v9 + 256) % 256;
      if (v8)
      {
        LOBYTE(v9) = v8;
      }

      else
      {
LABEL_21:
        v8 = 0;
      }

      v9 = v9;
      --a2;
    }

    while (a2);
  }

  *(result + 16) = v3;
  *(result + 24) = v4;
  *(result + 28) = v5;
  return result;
}

void PullSliceHeaderPredWeightTable(uint64_t *a1, _DWORD *a2, uint64_t a3, int a4)
{
  if (*(a3 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a3 + 4) == 0;
  }

  v6 = a1[2];
  v7 = *(a1 + 6);
  v8 = *(a1 + 28);
  v9 = *(a1 + 2);
  v10 = *a1;
  if (a4)
  {
    if (v7 < 0x80000)
    {
      goto LABEL_298;
    }
  }

  else if (!(v7 >> 19))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v29 = 4294954582;
    v30 = 1725;
    goto LABEL_259;
  }

  v11 = __clz(v7);
  v12 = v7 << (v11 + 1) >> -v11;
  if (!v11)
  {
    v12 = 0;
  }

  a2[17] = v12 + ~(-1 << v11);
  v13 = v11 + 1 + v11 + v8;
  v8 = v13 & 7;
  v6 += v13 >> 3;
  v14 = v10 + v9;
  v15 = v14 - v6;
  if (v14 - v6 >= 4)
  {
    v16 = bswap32(*v6);
LABEL_23:
    v7 = v16 << v8;
    if (v5)
    {
      goto LABEL_48;
    }

    if (a4)
    {
      if (v7 < 0x80000)
      {
        goto LABEL_298;
      }

      goto LABEL_28;
    }

    if (v7 >> 19)
    {
LABEL_28:
      v20 = __clz(v7);
      v21 = v7 << (v20 + 1) >> -v20;
      if (!v20)
      {
        v21 = 0;
      }

      a2[18] = v21 + ~(-1 << v20);
      v22 = v20 + v8 + v20 + 1;
      v8 = v22 & 7;
      v6 += v22 >> 3;
      v23 = v14 - v6;
      if (v14 - v6 < 4)
      {
        if (v23 < 1)
        {
          v24 = v8 | v23;
          if (a4)
          {
            v7 = 0;
            if (v24)
            {
              goto LABEL_298;
            }
          }

          else
          {
            if (v24)
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_0_20();
              v116 = 1727;
              goto LABEL_296;
            }

            v7 = 0;
          }
        }

        else if (v23 == 1)
        {
          v7 = *v6 << 24;
        }

        else
        {
          OUTLINED_FUNCTION_14_10();
          if (!v31)
          {
            v32 |= v6[2];
          }

          v7 = v32 << 8;
        }
      }

      else
      {
        v7 = bswap32(*v6);
      }

      v7 <<= v8;
      goto LABEL_48;
    }

LABEL_41:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v29 = 4294954582;
    v30 = 1727;
    goto LABEL_259;
  }

  if (v15 >= 1)
  {
    if (v15 == 1)
    {
      v16 = *v6 << 24;
    }

    else
    {
      OUTLINED_FUNCTION_14_10();
      if (!v18)
      {
        v19 |= v6[2];
      }

      v16 = v19 << 8;
    }

    goto LABEL_23;
  }

  v17 = v8 | v15;
  if (!a4)
  {
    if (v17)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      v116 = 1725;
      goto LABEL_296;
    }

    v7 = 0;
    if (v5)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

  if (v17)
  {
LABEL_255:
    v7 = 0;
    goto LABEL_298;
  }

  v7 = 0;
  if (!v5)
  {
    goto LABEL_298;
  }

LABEL_48:
  if ((a2[13] - 32) < 0xFFFFFFDF)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v29 = 4294954577;
    v30 = 1735;
    goto LABEL_259;
  }

  do
  {
    OUTLINED_FUNCTION_6_19();
    if (v39 == v40)
    {
      OUTLINED_FUNCTION_60();
      goto LABEL_62;
    }

    if (v38 >= 1)
    {
      if (v38 == 1)
      {
        v41 = *v6 << 24;
      }

      else
      {
        OUTLINED_FUNCTION_13_9();
        if (!v43)
        {
          OUTLINED_FUNCTION_38();
        }

        v41 = v44 << 8;
      }

LABEL_62:
      v45 = v41 << v8;
      if ((v7 & 0x80000000) != 0)
      {
        if (v34)
        {
          if (v45 < 0x80000)
          {
            goto LABEL_271;
          }
        }

        else if (!(v45 >> 19))
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6_19();
        if (v39 != v40)
        {
          if (v47 < 1)
          {
            if (v46)
            {
              goto LABEL_255;
            }

            if (v8 | v47)
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_0_20();
              v116 = 1743;
              goto LABEL_296;
            }

            v7 = 0;
LABEL_267:
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0_20();
            v29 = 4294954582;
            v30 = 1744;
            goto LABEL_259;
          }

          if (v47 == 1)
          {
            v48 = *v6 << 24;
          }

          else
          {
            OUTLINED_FUNCTION_13_9();
            if (!v49)
            {
              OUTLINED_FUNCTION_38();
            }

            v48 = v50 << 8;
          }
        }

        else
        {
          OUTLINED_FUNCTION_60();
        }

        v7 = v48 << v8;
        if (v46)
        {
          if (v7 < 0x80000)
          {
            goto LABEL_298;
          }
        }

        else if (!(v7 >> 19))
        {
          goto LABEL_267;
        }

        OUTLINED_FUNCTION_6_19();
        if (v39 != v40)
        {
          if (v52 < 1)
          {
            v53 = v8 | v52;
            if (v51)
            {
              v7 = 0;
              if (v53)
              {
                goto LABEL_298;
              }
            }

            else
            {
              if (v53)
              {
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_0_20();
                v116 = 1744;
                goto LABEL_296;
              }

              v7 = 0;
            }
          }

          else if (v52 == 1)
          {
            v7 = *v6 << 24;
          }

          else
          {
            OUTLINED_FUNCTION_13_9();
            if (!v54)
            {
              OUTLINED_FUNCTION_38();
            }

            v7 = v55 << 8;
          }
        }

        else
        {
          OUTLINED_FUNCTION_59();
        }

        v45 = v7 << v8;
      }

      v7 = v45;
      if ((v35 & 1) == 0)
      {
        goto LABEL_100;
      }

      continue;
    }

    v42 = v8 | v38;
    if (v34)
    {
      if (v42 || (v7 & 0x80000000) != 0)
      {
        goto LABEL_297;
      }
    }

    else
    {
      if (v42)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v116 = 1739;
        goto LABEL_296;
      }

      if ((v7 & 0x80000000) != 0)
      {
        v45 = 0;
LABEL_269:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v111 = 1743;
LABEL_270:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v107, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v111, v108, v109, v110);
LABEL_271:
        v7 = v45;
        goto LABEL_298;
      }
    }

    v45 = 0;
    v7 = 0;
    if ((v35 & 1) == 0)
    {
LABEL_100:
      OUTLINED_FUNCTION_6_19();
      if (v39 != v40)
      {
        if (v57 < 1)
        {
          v58 = v8 | v57;
          if (v56)
          {
            v7 = 0;
            if (v58)
            {
              goto LABEL_298;
            }
          }

          else
          {
            if (v58)
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_0_20();
              v116 = 1752;
              goto LABEL_296;
            }

            v7 = 0;
          }
        }

        else if (v57 == 1)
        {
          v7 = *v6 << 24;
        }

        else
        {
          OUTLINED_FUNCTION_13_9();
          if (!v59)
          {
            OUTLINED_FUNCTION_38();
          }

          v7 = v60 << 8;
        }
      }

      else
      {
        OUTLINED_FUNCTION_59();
      }

      v7 <<= v8;
      if ((v45 & 0x80000000) != 0)
      {
        do
        {
          if (v56)
          {
            if (v7 < 0x80000)
            {
              goto LABEL_298;
            }
          }

          else if (!(v7 >> 19))
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0_20();
            v29 = 4294954582;
            v30 = 1756;
            goto LABEL_259;
          }

          OUTLINED_FUNCTION_12_11();
          if (v39 != v40)
          {
            if (v62 < 1)
            {
              if (v61)
              {
                goto LABEL_255;
              }

              if (v8 | v62)
              {
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_0_20();
                v116 = 1756;
                goto LABEL_296;
              }

              v7 = 0;
LABEL_258:
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_0_20();
              v29 = 4294954582;
              v30 = 1757;
LABEL_259:
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v29, "<<<< H264Bridge >>>>", v30, v26, v27, v28);
              goto LABEL_298;
            }

            if (v62 == 1)
            {
              v63 = *v6 << 24;
            }

            else
            {
              OUTLINED_FUNCTION_24_5();
              if (!v64)
              {
                OUTLINED_FUNCTION_54();
              }

              v63 = v65 << 8;
            }
          }

          else
          {
            v63 = bswap32(*v6);
          }

          v7 = v63 << v8;
          if (v61)
          {
            if (v7 < 0x80000)
            {
              goto LABEL_298;
            }
          }

          else if (!(v7 >> 19))
          {
            goto LABEL_258;
          }

          OUTLINED_FUNCTION_12_11();
          if (v39 != v40)
          {
            if (v67 < 1)
            {
              v68 = v8 | v67;
              if (v56)
              {
                v7 = 0;
                if (v68)
                {
                  goto LABEL_298;
                }
              }

              else
              {
                if (v68)
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_0_20();
                  v116 = 1757;
                  goto LABEL_296;
                }

                v7 = 0;
              }
            }

            else if (v67 == 1)
            {
              v7 = *v6 << 24;
            }

            else
            {
              OUTLINED_FUNCTION_24_5();
              if (!v69)
              {
                OUTLINED_FUNCTION_54();
              }

              v7 = v70 << 8;
            }
          }

          else
          {
            v7 = bswap32(*v6);
          }

          v7 <<= v8;
        }

        while ((v66 & 1) != 0);
      }
    }
  }

  while (v37 + 1 <= v36);
  v71 = *(v33 + 16);
  if (v71 != 6 && v71 != 1)
  {
    goto LABEL_298;
  }

  if ((*(v33 + 56) - 32) < 0xFFFFFFDF)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v29 = 4294954577;
    v30 = 1774;
    goto LABEL_259;
  }

  while (2)
  {
    OUTLINED_FUNCTION_6_19();
    if (v39 == v40)
    {
      OUTLINED_FUNCTION_60();
      goto LABEL_167;
    }

    if (v77 < 1)
    {
      v79 = v8 | v77;
      if (v73)
      {
        if (v79 || (v7 & 0x80000000) != 0)
        {
          goto LABEL_297;
        }
      }

      else
      {
        if (v79)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_20();
          v116 = 1778;
          goto LABEL_296;
        }

        if ((v7 & 0x80000000) != 0)
        {
          v45 = 0;
LABEL_278:
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_20();
          v111 = 1782;
          goto LABEL_270;
        }
      }

      v45 = 0;
      v7 = 0;
      if ((v74 & 1) == 0)
      {
        goto LABEL_205;
      }

LABEL_252:
      if (v76 + 1 > v75)
      {
        goto LABEL_298;
      }

      continue;
    }

    break;
  }

  if (v77 == 1)
  {
    v78 = *v6 << 24;
  }

  else
  {
    OUTLINED_FUNCTION_13_9();
    if (!v80)
    {
      OUTLINED_FUNCTION_38();
    }

    v78 = v81 << 8;
  }

LABEL_167:
  v45 = v78 << v8;
  if ((v7 & 0x80000000) != 0)
  {
    if (v73)
    {
      if (v45 < 0x80000)
      {
        goto LABEL_271;
      }
    }

    else if (!(v45 >> 19))
    {
      goto LABEL_278;
    }

    OUTLINED_FUNCTION_6_19();
    if (v39 != v40)
    {
      if (v83 < 1)
      {
        if (v82)
        {
          goto LABEL_255;
        }

        if (v8 | v83)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_20();
          v116 = 1782;
          goto LABEL_296;
        }

        v7 = 0;
LABEL_276:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v29 = 4294954582;
        v30 = 1783;
        goto LABEL_259;
      }

      if (v83 == 1)
      {
        v84 = *v6 << 24;
      }

      else
      {
        OUTLINED_FUNCTION_13_9();
        if (!v85)
        {
          OUTLINED_FUNCTION_38();
        }

        v84 = v86 << 8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_60();
    }

    v7 = v84 << v8;
    if (v82)
    {
      if (v7 < 0x80000)
      {
        goto LABEL_298;
      }
    }

    else if (!(v7 >> 19))
    {
      goto LABEL_276;
    }

    OUTLINED_FUNCTION_6_19();
    if (v39 != v40)
    {
      if (v88 < 1)
      {
        v89 = v8 | v88;
        if (v87)
        {
          v7 = 0;
          if (v89)
          {
            goto LABEL_298;
          }
        }

        else
        {
          if (v89)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0_20();
            v116 = 1783;
            goto LABEL_296;
          }

          v7 = 0;
        }
      }

      else if (v88 == 1)
      {
        v7 = *v6 << 24;
      }

      else
      {
        OUTLINED_FUNCTION_13_9();
        if (!v90)
        {
          OUTLINED_FUNCTION_38();
        }

        v7 = v91 << 8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_59();
    }

    v45 = v7 << v8;
  }

  v7 = v45;
  if (v74)
  {
    goto LABEL_252;
  }

LABEL_205:
  OUTLINED_FUNCTION_6_19();
  if (v39 != v40)
  {
    if (v93 < 1)
    {
      v94 = v8 | v93;
      if (v92)
      {
        v7 = 0;
        if (v94)
        {
          goto LABEL_298;
        }
      }

      else
      {
        if (v94)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_20();
          v116 = 1792;
          goto LABEL_296;
        }

        v7 = 0;
      }
    }

    else if (v93 == 1)
    {
      v7 = *v6 << 24;
    }

    else
    {
      OUTLINED_FUNCTION_13_9();
      if (!v95)
      {
        OUTLINED_FUNCTION_38();
      }

      v7 = v96 << 8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_59();
  }

  v7 <<= v8;
  if ((v45 & 0x80000000) == 0)
  {
    goto LABEL_252;
  }

  while (2)
  {
    if (v92)
    {
      if (v7 < 0x80000)
      {
        goto LABEL_298;
      }
    }

    else if (!(v7 >> 19))
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      v29 = 4294954582;
      v30 = 1796;
      goto LABEL_259;
    }

    OUTLINED_FUNCTION_12_11();
    if (v39 == v40)
    {
      v99 = bswap32(*v6);
LABEL_233:
      v7 = v99 << v8;
      if (v97)
      {
        if (v7 < 0x80000)
        {
          goto LABEL_298;
        }
      }

      else if (!(v7 >> 19))
      {
        goto LABEL_263;
      }

      OUTLINED_FUNCTION_12_11();
      if (v39 != v40)
      {
        if (v103 < 1)
        {
          v104 = v8 | v103;
          if (v92)
          {
            v7 = 0;
            if (v104)
            {
              goto LABEL_298;
            }
          }

          else
          {
            if (v104)
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_0_20();
              v116 = 1797;
              goto LABEL_296;
            }

            v7 = 0;
          }
        }

        else if (v103 == 1)
        {
          v7 = *v6 << 24;
        }

        else
        {
          OUTLINED_FUNCTION_24_5();
          if (!v105)
          {
            OUTLINED_FUNCTION_54();
          }

          v7 = v106 << 8;
        }
      }

      else
      {
        v7 = bswap32(*v6);
      }

      v7 <<= v8;
      if ((v102 & 1) == 0)
      {
        goto LABEL_252;
      }

      continue;
    }

    break;
  }

  if (v98 >= 1)
  {
    if (v98 == 1)
    {
      v99 = *v6 << 24;
    }

    else
    {
      OUTLINED_FUNCTION_24_5();
      if (!v100)
      {
        OUTLINED_FUNCTION_54();
      }

      v99 = v101 << 8;
    }

    goto LABEL_233;
  }

  if (v97)
  {
    goto LABEL_255;
  }

  if (!(v8 | v98))
  {
    v7 = 0;
LABEL_263:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v29 = 4294954582;
    v30 = 1797;
    goto LABEL_259;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_20();
  v116 = 1796;
LABEL_296:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v112, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v116, v113, v114, v115);
LABEL_297:
  v7 = 0;
LABEL_298:
  a1[2] = v6;
  *(a1 + 6) = v7;
  *(a1 + 28) = v8;
}