void figOSEventLinkRemote_Finalize(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v15 = 288;
LABEL_17:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFB420uLL, "<< FigOSEventLink >>", v15, v12, v13, v14);
    goto LABEL_6;
  }

  if (!*(v2 + 32))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v15 = 289;
    goto LABEL_17;
  }

  if (!a1[3])
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v15 = 290;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_4_17();
  if (!CMBlockBufferGetDataPointer(v3, v4, v5, v6, v7))
  {
    MEMORY[0] = 0;
    os_eventlink_signal();
  }

LABEL_6:
  v8 = a1[2];
  if (v8)
  {
    CFRelease(v8);
    a1[2] = 0;
  }

  if (a1[3])
  {
    os_eventlink_cancel();
    v9 = a1[3];
    if (v9)
    {

      a1[3] = 0;
    }
  }

  a1[7] = 0;
  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
    a1[6] = 0;
  }
}

size_t FigOSEventLinkRemoteCreateFromXPCObject_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x173, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteCreateFromXPCObject_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB421uLL, "<< FigOSEventLink >>", 0x18A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteCreateFromXPCObject_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB41FuLL, "<< FigOSEventLink >>", 0x186, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteCreateFromXPCObject_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB424uLL, "<< FigOSEventLink >>", 0x17A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteCreateFromXPCObject_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x172, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteCreateFromXPCObject_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x171, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteCreateFromXPCObject_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x170, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figOSEventLinkMemoryObjects_createInternal_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0xE4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figOSEventLinkMemoryObjects_createInternal_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB424uLL, "<< FigOSEventLink >>", 0xE9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figOSEventLinkMemoryObjects_createInternal_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0xE1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetAbortActionCallback_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x1AE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetAbortActionCallback_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x1AF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetAbortActionCallback_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x1AD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetAbortActionCallback_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x1AC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetAbortActionCallback_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x1AB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figOSEventLinkResolveMessageStatus_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x8F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetMessageHandlingThreadMachThreadPriority_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x245, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetMessageHandlingThreadMachThreadPriority_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x244, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetMessageHandlingThreadFigThreadPriority_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x257, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkRemoteSetMessageHandlingThreadFigThreadPriority_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x256, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB421uLL, "<< FigOSEventLink >>", 0x3A6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB424uLL, "<< FigOSEventLink >>", 0x391, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x38C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x38B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x38A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerCreate_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x389, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerCreate_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x388, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetCallbacks_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x3E9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAbortActionCallbacks_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x401, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAbortActionCallbacks_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x402, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAbortActionCallbacks_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x403, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAbortActionCallbacks_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x400, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAbortActionCallbacks_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x3FF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAbortActionCallbacks_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x3FE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAbortActionCallbacks_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x3FD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB420uLL, "<< FigOSEventLink >>", 0x413, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x412, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerSetAssociatedFigXPCServerXPCConnection_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x411, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigOSEventLinkServerGetAssociatedFigXPCServerXPCConnection_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFB423uLL, "<< FigOSEventLink >>", 0x420, v1, v2, v3);
}

size_t FigCaptionGroupFormatDescriptionCreate_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "(Fig)", 0x64, v1, v4, v5);
  *a1 = result;
  return result;
}

CVPixelBufferRef CMTaggedBufferGroupGetCVPixelBufferForTag(CMTaggedBufferGroupRef group, CMTag tag, CFIndex *indexOut)
{
  OUTLINED_FUNCTION_2_30();
  if (CMTagCollectionCreate(*MEMORY[0x1E695E480], &tags, 1, &tagCollection))
  {
    v6 = 0;
  }

  else
  {
    CVPixelBufferForTagCollection = CMTaggedBufferGroupGetCVPixelBufferForTagCollection(v4, tagCollection, &indexOuta);
    v6 = CVPixelBufferForTagCollection;
    if (v3 && CVPixelBufferForTagCollection)
    {
      *v3 = indexOuta;
    }
  }

  if (tagCollection)
  {
    CFRelease(tagCollection);
  }

  return v6;
}

CMSampleBufferRef CMTaggedBufferGroupGetCMSampleBufferForTag(CMTaggedBufferGroupRef group, CMTag tag, CFIndex *indexOut)
{
  OUTLINED_FUNCTION_2_30();
  if (CMTagCollectionCreate(*MEMORY[0x1E695E480], &tags, 1, &tagCollection))
  {
    v6 = 0;
  }

  else
  {
    CMSampleBufferForTagCollection = CMTaggedBufferGroupGetCMSampleBufferForTagCollection(v4, tagCollection, &indexOuta);
    v6 = CMSampleBufferForTagCollection;
    if (v3 && CMSampleBufferForTagCollection)
    {
      *v3 = indexOuta;
    }
  }

  if (tagCollection)
  {
    CFRelease(tagCollection);
  }

  return v6;
}

size_t taggedBufferGroup_createCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC25CuLL, "<< FigTaggedBufferGroup >>", 0xCE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t taggedBufferGroup_createCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC25BuLL, "<< FigTaggedBufferGroup >>", 0xD6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t taggedBufferGroup_createCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC25CuLL, "<< FigTaggedBufferGroup >>", 0xCF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t taggedBufferGroup_createCommon_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC25CuLL, "<< FigTaggedBufferGroup >>", 0xCC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t taggedBufferGroup_createCommon_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC25CuLL, "<< FigTaggedBufferGroup >>", 0xCB, v3, v4, v5);
  *a1 = result;
  return result;
}

void CMTaggedBufferGroupCreateCombined_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFC25BuLL, "<< FigTaggedBufferGroup >>", 0x114, v5, v6, v7);

  CFRelease(a1);
}

size_t CMTaggedBufferGroupCreateCombined_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC25BuLL, "<< FigTaggedBufferGroup >>", 0x111, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTaggedBufferGroupCreateCombined_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC25CuLL, "<< FigTaggedBufferGroup >>", 0x10E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTaggedBufferGroupCreateCombined_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC25CuLL, "<< FigTaggedBufferGroup >>", 0x10D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMTaggedBufferGroupGetCount_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC25CuLL, "<< FigTaggedBufferGroup >>", 0x135, v1, v2, v3);
}

size_t CMTaggedBufferGroupGetTagCollectionAtIndex_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC25CuLL, "<< FigTaggedBufferGroup >>", 0x147, v1, v2, v3);
}

size_t CMTaggedBufferGroupGetTagCollectionAtIndex_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC25CuLL, "<< FigTaggedBufferGroup >>", 0x146, v1, v2, v3);
}

size_t taggedBufferGroup_getBufferAtIndexWithTypeCheck_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC25CuLL, "<< FigTaggedBufferGroup >>", 0x154, v1, v2, v3);
}

size_t taggedBufferGroup_getBufferAtIndexWithTypeCheck_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC25CuLL, "<< FigTaggedBufferGroup >>", 0x153, v1, v2, v3);
}

size_t taggedBufferGroup_getCountAndLastIndexForMatchedTagCollection_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC25CuLL, "<< FigTaggedBufferGroup >>", 0x167, v1, v2, v3);
}

size_t taggedBufferGroup_getCountAndLastIndexForMatchedTagCollection_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC25CuLL, "<< FigTaggedBufferGroup >>", 0x166, v1, v2, v3);
}

size_t taggedBufferGroup_copyDesc_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC25BuLL, "<< FigTaggedBufferGroup >>", 0x7E, v1, v2, v3);
}

size_t FigRegistryItemCreateCopy2(void *a1, CFDictionaryRef theDict, void *a3)
{
  *a3 = 0;
  result = 4294954602;
  if (a1 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"CMClassID");
    if (Value && (v9 = Value, (v10 = CFDictionaryGetValue(theDict, @"CMClassImplementationName")) != 0) && (v11 = v10, (v12 = CFDictionaryGetValue(theDict, @"CMClassImplementationVersion")) != 0) && (SInt64 = FigCFNumberGetSInt64(v12), CFDictionaryGetValue(theDict, @"CMClassImplementationID")) && (v14 = CFDictionaryGetValue(theDict, @"CMMatchingInfo")) != 0)
    {
      v15 = v14;
      v16 = *MEMORY[0x1E695E480];
      FigThreadRunOnce(&FigRegistryItemGetTypeID_registerOnce, registerFigRegistryItem);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v18 = Instance;
        MutableCopy = FigCFDictionaryCreateMutableCopy(v16, theDict);
        v18[2] = MutableCopy;
        if (MutableCopy)
        {
          v20 = a1[3];
          v18[3] = v20;
          if (v20)
          {
            FigAtomicIncrement32((v20 + 16));
            v21 = *(a1[3] + 8);
            if (v21)
            {
              CFRetain(v21);
            }
          }

          v18[4] = CFRetain(v9);
          v18[5] = CFRetain(v11);
          v18[7] = CFRetain(v15);
          v18[8] = SInt64;
          v22 = a1[6];
          if (v22)
          {
            v23 = CFRetain(v22);
          }

          else
          {
            v23 = 0;
          }

          result = 0;
          v18[6] = v23;
          v18[9] = a1[9];
          *a3 = v18;
        }

        else
        {
          emitter = fig_log_get_emitter("com.apple.coremedia", "");
          v27 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x2E6, v3, v25, v26);
          CFRelease(v18);
          return v27;
        }
      }

      else
      {
        return 4294954603;
      }
    }

    else
    {
      return 4294954602;
    }
  }

  return result;
}

size_t FigRegistryItemCreateCopy(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  Copy2 = 4294954602;
  if (!a3 || !a1 || !a4)
  {
    return Copy2;
  }

  *a4 = 0;
  v10 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], *(a1 + 16));
  if (MutableCopy)
  {
    v12 = MutableCopy;
    Value = CFDictionaryGetValue(*(a1 + 16), @"CMClassImplementationID");
    if (a2)
    {
      v14 = CFStringCreateMutableCopy(v10, 0, Value);
      CFStringAppendFormat(v14, 0, @".%@", a2);
      CFDictionarySetValue(v12, @"CMClassImplementationID", v14);
    }

    else
    {
      v14 = 0;
    }

    CFDictionarySetValue(v12, @"CMMatchingInfo", a3);
    Copy2 = FigRegistryItemCreateCopy2(a1, v12, a4);
    if (v14)
    {
      CFRelease(v14);
    }

    CFRelease(v12);
    return Copy2;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x30D, v4, v17, v18);
}

size_t figRegistryItemCreate_cold_1(void *a1, _DWORD *a2)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x272, v2, v6, v7);
  *a2 = result;
  *a1 = 0;
  return result;
}

size_t figRegistryItemCreate_cold_2(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE6BuLL, "<<<< FigRegistry >>>>", 0x26C, v1, v4, v5);
  *a1 = result;
  return result;
}

size_t FigHALAudioConduitDeviceCreate(uint64_t a1, const void *a2, const void *a3, uint64_t *a4)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_0_69();
  fig_note_initialize_category_with_default_work_cf(v8, v9, v10, v11, v12, v13, 0, gFigHALAudioConduitDeviceTrace);
  OUTLINED_FUNCTION_0_69();
  fig_note_initialize_category_with_default_work_cf(v14, v15, v16, v17, v18, 1u, 0, v19);
  if (a2)
  {
    if (a4)
    {
      FigThreadRunOnce(&FigHALAudioConduitDeviceGetTypeID_sRegisterFigHALAudioConduitDeviceOnce, registerFigHALAudioConduitDevice);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v23 = Instance;
        v24 = FigSimpleMutexCreate();
        *(v23 + 168) = v24;
        if (v24)
        {
          v25 = FigSimpleMutexCreate();
          *(v23 + 80) = v25;
          if (v25)
          {
            *(v23 + 128) = 0;
            v26 = *MEMORY[0x1E695E4D0];
            *(v23 + 130) = v26 == FigCFDictionaryGetBooleanValue(a3);
            *(v23 + 136) = CFRetain(a2);
            StringValue = FigCFDictionaryGetStringValue(a3);
            if (StringValue)
            {
              StringValue = CFRetain(StringValue);
            }

            *(v23 + 144) = StringValue;
            v28 = FigCFDictionaryGetStringValue(a3);
            if (v28)
            {
              v28 = CFRetain(v28);
            }

            *(v23 + 160) = v28;
            v29 = FigCFDictionaryGetStringValue(a3);
            if (v29)
            {
              v30 = CFRetain(v29);
            }

            else
            {
              v30 = 0;
            }

            result = 0;
            *(v23 + 152) = v30;
            *a4 = v23;
            return result;
          }
        }

        CFRelease(v23);
      }

      return 4294954510;
    }

    v32 = qword_1EAF1CEA0;
    v33 = v4;
    v34 = 167;
  }

  else
  {
    v32 = qword_1EAF1CEA0;
    v33 = v4;
    v34 = 166;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 0xFFFFCE14uLL, "<<<< FigHALAudioConduitDevice >>>>", v34, v33, v20, v21);
}

uint64_t FigHALAudioConduitDeviceSetClientReceiveAudioIODelegate(uint64_t a1, __int128 *a2)
{
  v4 = OUTLINED_FUNCTION_1_43(a1);
  FigSimpleMutexLock(v4);
  if (*(v2 + 129))
  {
    v8 = 4294954514;
  }

  else
  {
    FigSimpleMutexLock(*(v2 + 80));
    if (a2)
    {
      v5 = *a2;
      v6 = a2[1];
      v7 = a2[2];
      *(v2 + 60) = *(a2 + 44);
      *(v2 + 32) = v6;
      *(v2 + 48) = v7;
    }

    else
    {
      v5 = 0uLL;
      *(v2 + 60) = 0u;
      *(v2 + 32) = 0u;
      *(v2 + 48) = 0u;
    }

    *(v2 + 16) = v5;
    FigSimpleMutexUnlock(*(v2 + 80));
    v8 = 0;
  }

  FigSimpleMutexUnlock(*(v2 + 168));
  return v8;
}

uint64_t FigHALAudioConduitDeviceSetClientControlIODelegate(uint64_t a1, __int128 *a2)
{
  v4 = OUTLINED_FUNCTION_1_43(a1);
  FigSimpleMutexLock(v4);
  if (*(v2 + 129))
  {
    v5 = 4294954514;
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      v6 = *a2;
      v7 = a2[1];
      *(v2 + 120) = *(a2 + 4);
      *(v2 + 104) = v7;
    }

    else
    {
      *(v2 + 120) = 0;
      v6 = 0uLL;
      *(v2 + 104) = 0u;
    }

    *(v2 + 88) = v6;
  }

  FigSimpleMutexUnlock(*(v2 + 168));
  return v5;
}

uint64_t FigHALAudioConduitDeviceResume(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_43(a1);
  FigSimpleMutexLock(v2);
  if (*(v1 + 128))
  {
    v6 = 4294954514;
    goto LABEL_13;
  }

  cf = 0;
  if (*(v1 + 130))
  {
    goto LABEL_12;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"ConduitDeviceOption_Conduit", v1);
  FigHALAudioDeviceBrokerCopy(*(v1 + 136), &cf);
  v4 = cf;
  if (cf)
  {
    v5 = *(*(CMBaseObjectGetVTable(cf) + 16) + 8);
    if (v5)
    {
      v6 = v5(v4, 0, 0, 0, Mutable);
      if (!Mutable)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = 4294954514;
      if (!Mutable)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    CFRelease(Mutable);
    goto LABEL_9;
  }

  v6 = 4294949690;
  if (Mutable)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v6)
  {
LABEL_12:
    v6 = 0;
    *(v1 + 128) = 1;
  }

LABEL_13:
  FigSimpleMutexUnlock(*(v1 + 168));
  return v6;
}

uint64_t FigHALAudioConduitDeviceHALSendAudio(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OUTLINED_FUNCTION_1_43(a1);
  if (FigSimpleMutexTryLock(v10))
  {
    if (*(v5 + 128) && !*(v5 + 129) && FigSimpleMutexTryLock(*(v5 + 80)))
    {
      v11 = *(v5 + 60);
      if (v11)
      {
        v11(*(v5 + 68), a2, a3, a4, a5);
      }

      FigSimpleMutexUnlock(*(v5 + 80));
    }

    FigSimpleMutexUnlock(*(v5 + 168));
  }

  return 0;
}

size_t FigHALAudioConduitDeviceCopyProperty(uint64_t a1, CFTypeRef cf1, const __CFAllocator *a3, void *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!cf1)
  {
    v17 = qword_1EAF1CEA0;
    v18 = v8;
    v19 = 428;
LABEL_21:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFCE14uLL, "<<<< FigHALAudioConduitDevice >>>>", v19, v18, a7, a8);
  }

  if (!a4)
  {
    v17 = qword_1EAF1CEA0;
    v18 = v8;
    v19 = 429;
    goto LABEL_21;
  }

  if (!CFEqual(cf1, @"HALSendAudioFormat"))
  {
    if (CFEqual(cf1, @"HALSendDesiredNumberPackets"))
    {
      FigSimpleMutexLock(*(a1 + 80));
      SInt32 = FigCFNumberCreateSInt32(a3, *(a1 + 56));
      goto LABEL_7;
    }

    if (CFEqual(cf1, @"DeviceName"))
    {
      v16 = *(a1 + 144);
      if (v16)
      {
        goto LABEL_11;
      }
    }

    else if (CFEqual(cf1, @"DeviceUID"))
    {
      v16 = *(a1 + 160);
      if (v16)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (!CFEqual(cf1, @"ModelUID"))
      {
        return 4294954512;
      }

      v16 = *(a1 + 152);
      if (v16)
      {
LABEL_11:
        v14 = CFRetain(v16);
        goto LABEL_8;
      }
    }

    v14 = 0;
    goto LABEL_8;
  }

  FigSimpleMutexLock(*(a1 + 80));
  SInt32 = CFDataCreate(a3, (a1 + 16), 40);
LABEL_7:
  v14 = SInt32;
  FigSimpleMutexUnlock(*(a1 + 80));
  if (v14)
  {
LABEL_8:
    result = 0;
    *a4 = v14;
    return result;
  }

  return 4294954510;
}

uint64_t _figUpdateCoordinateSpaceGeometryCache(uint64_t a1, uint64_t a2)
{
  v227 = *MEMORY[0x1E69E9840];
  v225 = 0;
  v226 = 0;
  v223 = 0;
  v224 = 0;
  v221 = 0;
  v222 = 0;
  v219 = 0;
  v220 = 0;
  v217 = 0;
  v218 = 0;
  v215 = 0;
  v216 = 0;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v2 = *(a1 + 16);
  v201 = 0;
  v202 = 0;
  v199 = 0;
  v200 = 0;
  v197 = 0;
  v198 = 0;
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = (a1 + 36);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v225 = *(a1 + 36);
  v6 = *(a1 + 48);
  v226 = *(a1 + 44);
  v7 = (a1 + 52);
  v223 = *(a1 + 52);
  v8 = *(a1 + 64);
  v224 = *(a1 + 60);
  v9 = (a1 + 68);
  v221 = *(a1 + 68);
  v10 = v5 == v8 && v6 == *(a1 + 80);
  v222 = *(a1 + 76);
  if (!v10)
  {
    return 0;
  }

  v12 = *(a1 + 84);
  v213 = *v3;
  v214 = *(a1 + 44);
  v211 = *v7;
  v212 = *(a1 + 60);
  v209 = *v9;
  v210 = *(a1 + 76);
  v169 = v4;
  v163 = a1;
  if ((v2 & 2) != 0)
  {
    v19 = *(a1 + 88);
    v20 = *(a1 + 96);
    v167 = *(a1 + 100);
    v21 = *(a1 + 104);
    v22 = *(a1 + 112);
    v164 = *(a1 + 116);
    v23 = *(a1 + 120);
    v24 = *(a1 + 128);
    v161 = *(a1 + 132);
    v157 = *(a1 + 136);
    v25 = *(a1 + 144);
    v159 = *(a1 + 148);
    *v190 = v4;
    *&v190[12] = *v3;
    v26 = *(a1 + 44);
    *&v190[8] = v5;
    *&v190[20] = v26;
    *&v190[28] = *v7;
    v27 = *(a1 + 60);
    *&v190[24] = v6;
    *&v190[36] = v27;
    *&v190[44] = *v9;
    v28 = *(a1 + 76);
    *&v190[40] = v5;
    *&v190[52] = v28;
    *&v190[56] = v6;
    v29 = v12;
    *&v190[60] = v12;
    v30 = v6;
    v228.origin.x = FigGeometryRectGetCGRect(v190);
    x = v228.origin.x;
    y = v228.origin.y;
    width = v228.size.width;
    height = v228.size.height;
    MaxX = CGRectGetMaxX(v228);
    v229.origin.x = x;
    v229.origin.y = y;
    v229.size.width = width;
    v229.size.height = height;
    MaxY = CGRectGetMaxY(v229);
    if (v20 != v5 && v20 != 622862368)
    {
      return 0;
    }

    if (v24 != v30 && v24 != 622862368)
    {
      return 0;
    }

    if (v22 != v5 && v22 != 622862368)
    {
      return 0;
    }

    v40 = v30;
    v41 = v25 == 622862368 || v25 == v30;
    v42 = v41 && (v167 & 0x1D) == 1;
    v43 = v42 && (v161 & 0x1D) == 1;
    v44 = v43 && (v164 & 0x1D) == 1;
    if (!v44 || (v159 & 0x1D) != 1)
    {
      return 0;
    }

    if (v20 == 622862368 && v5 != 622862368)
    {
      v19 = v19 * width / 100.0;
    }

    v12 = v29;
    v47 = v24 != 622862368 || v40 == 622862368;
    v48 = v23;
    if (!v47)
    {
      v48 = v23 * height / 100.0;
    }

    if (v22 == 622862368 && v5 != 622862368)
    {
      v21 = v21 * width / 100.0;
    }

    if (v25 == v40)
    {
      v50 = v23;
    }

    else
    {
      v50 = v157;
    }

    if (v25 == 622862368 && v40 != 622862368)
    {
      v50 = v157 * height / 100.0;
    }

    v52 = x + v19;
    v4 = v169;
    v170 = v169;
    v171 = v5;
    v172 = v213;
    v173 = v214;
    v174 = v40;
    v175 = v211;
    v176 = v212;
    v177 = v5;
    v178 = v209;
    v179 = v210;
    v180 = v40;
    v181 = v29;
    v53 = v40;
    FigGeometryRectMakeFromCGRectAndReferenceUnits(&v170, v190, v52, y + v48, MaxX - v21 - v52, MaxY - v50 - (y + v48));
    v6 = v53;
    v13 = *v190;
    v213 = *&v190[12];
    v14 = *&v190[8];
    v214 = *&v190[20];
    v211 = *&v190[28];
    v15 = *&v190[24];
    v212 = *&v190[36];
    v209 = *&v190[44];
    v16 = *&v190[40];
    v210 = *&v190[52];
    v9 = &v209;
    v7 = &v211;
    v3 = &v213;
    v17 = *&v190[56];
    v18 = *&v190[60];
    a1 = v163;
  }

  else
  {
    v13 = v4;
    v14 = v5;
    v15 = v6;
    v16 = v5;
    v17 = v6;
    v18 = v12;
  }

  v168 = v18;
  v207 = *v3;
  v208 = *(v3 + 2);
  v205 = *v7;
  v206 = *(v7 + 2);
  v204 = *(v9 + 2);
  v203 = *v9;
  v219 = v207;
  v220 = v208;
  v218 = v206;
  v54 = v13;
  v217 = v205;
  v55 = v14;
  v56 = v15;
  v215 = v203;
  v57 = v15;
  v58 = v16;
  v59 = v17;
  v60 = v18;
  v216 = v204;
  v61 = v17;
  v166 = v12;
  v165 = v13;
  if ((v2 & 8) != 0)
  {
    v62 = v16;
    v63 = v5;
    v64 = *(a1 + 280);
    v65 = v6;
    if ((v2 & 0x10) != 0)
    {
      v66 = *(a1 + 288);
    }

    else
    {
      v66 = 0;
    }

    v195 = v213;
    v196 = v214;
    v193 = v211;
    v194 = v212;
    v191 = v209;
    v192 = v210;
    v172 = v213;
    v175 = v211;
    v170 = v13;
    v171 = v14;
    v173 = v214;
    v174 = v57;
    v176 = v212;
    v177 = v16;
    v178 = v209;
    v179 = v210;
    v180 = v17;
    v181 = v168;
    *v190 = v13;
    *&v190[12] = v213;
    *&v190[8] = v14;
    *&v190[20] = v214;
    *&v190[28] = v211;
    *&v190[24] = v57;
    *&v190[36] = v212;
    *&v190[44] = v209;
    *&v190[40] = v16;
    *&v190[52] = v210;
    *&v190[56] = v17;
    *&v190[60] = v168;
    v230.origin.x = FigGeometryRectGetCGRect(v190);
    v67 = v230.origin.x;
    v68 = v230.origin.y;
    v69 = v230.size.width;
    v70 = v230.size.height;
    v231 = CGRectOffset(v230, -v230.origin.x, -v230.origin.y);
    v71 = v231.origin.x;
    v72 = v231.origin.y;
    v73 = v231.size.height;
    v74 = v64;
    v75 = SHIDWORD(v64);
    v76 = v231.size.height * v64 / SHIDWORD(v64);
    if (v76 > v231.size.width)
    {
      v77 = v231.size.width * v75;
      v73 = v77 / v74;
      v76 = v77 / v74 * v74 / v75;
    }

    if (v66)
    {
      switch(v66)
      {
        case 1651271014:
          goto LABEL_107;
        case 1651471476:
          v244.origin.x = OUTLINED_FUNCTION_1_44();
          CGRectGetMaxX(v244);
          v245.origin.x = OUTLINED_FUNCTION_2_31();
          dxa = dx - CGRectGetMaxX(v245);
          v246.origin.x = OUTLINED_FUNCTION_1_44();
          MinY = CGRectGetMaxY(v246);
          v247.origin.x = OUTLINED_FUNCTION_3_31();
          v98 = CGRectGetMaxY(v247);
LABEL_100:
          v84 = MinY - v98;
          v83 = dxa * 0.5;
          goto LABEL_101;
        case 1651665255:
LABEL_105:
          v258.origin.x = OUTLINED_FUNCTION_1_44();
          CGRectGetMaxX(v258);
          v259.origin.x = OUTLINED_FUNCTION_2_31();
          v101 = CGRectGetMaxX(v259);
LABEL_108:
          dxb = dx - v101;
          v262.origin.x = OUTLINED_FUNCTION_1_44();
          CGRectGetMaxY(v262);
          v263.origin.x = OUTLINED_FUNCTION_3_31();
          CGRectGetMaxY(v263);
          goto LABEL_109;
      }

      if (v66 != 1667591796)
      {
        if (v66 != 1818584692)
        {
          if (v66 == 1918989158 || v66 == 1918989168)
          {
            v236.origin.x = v71;
            v236.origin.y = v72;
            v154 = v72;
            v236.size.width = v76;
            v236.size.height = v73;
            CGRectGetWidth(v236);
            v237.origin.x = OUTLINED_FUNCTION_2_31();
            v85 = CGRectGetHeight(v237);
            v238.origin.x = OUTLINED_FUNCTION_1_44();
            v86 = CGRectGetWidth(v238);
            v239.origin.x = OUTLINED_FUNCTION_1_44();
            v87 = CGRectGetHeight(v239) / v85;
            if (v86 / dx >= v87)
            {
              v88 = v87;
            }

            else
            {
              v88 = v86 / dx;
            }

            if (v86 / dx > v87)
            {
              v87 = v86 / dx;
            }

            if (v66 != 1918989158)
            {
              v87 = v88;
            }

            v148 = v85 * v87;
            dxd = dx * v87;
            v89 = v67 + v71;
            v90 = v68 + v154;
            v240.origin.x = OUTLINED_FUNCTION_1_44();
            v91 = CGRectGetMaxX(v240);
            v241.origin.x = v89;
            v241.origin.y = v68 + v154;
            v241.size.width = dxd;
            v73 = v148;
            v241.size.height = v148;
            v155 = v91 - CGRectGetMaxX(v241);
            v242.origin.x = OUTLINED_FUNCTION_1_44();
            v92 = CGRectGetMaxY(v242);
            v243.origin.x = v89;
            v243.origin.y = v90;
            v243.size.width = dxd;
            v243.size.height = v148;
            v93 = CGRectGetMaxY(v243);
            v83 = v155 * 0.5;
            v84 = (v92 - v93) * 0.5;
            v94 = v89;
            v95 = v90;
            v96 = dxd;
            goto LABEL_102;
          }

          if (v66 != 1919510376)
          {
            switch(v66)
            {
              case 1953655143:
                v248.origin.x = OUTLINED_FUNCTION_1_44();
                CGRectGetMaxX(v248);
                v249.origin.x = OUTLINED_FUNCTION_2_31();
                MinX = CGRectGetMaxX(v249);
                break;
              case 1953260902:
                v254.origin.x = OUTLINED_FUNCTION_1_44();
                CGRectGetMinX(v254);
                v255.origin.x = OUTLINED_FUNCTION_2_31();
                MinX = CGRectGetMinX(v255);
                break;
              case 1953460256:
                v250.origin.x = OUTLINED_FUNCTION_1_44();
                CGRectGetMaxX(v250);
                v251.origin.x = OUTLINED_FUNCTION_2_31();
                dxa = dx - CGRectGetMaxX(v251);
                v252.origin.x = OUTLINED_FUNCTION_1_44();
                MinY = CGRectGetMinY(v252);
                v253.origin.x = OUTLINED_FUNCTION_3_31();
                v98 = CGRectGetMinY(v253);
                goto LABEL_100;
              default:
                v79 = v72;
                v80 = v71;
                if (v66 == 1920166266)
                {
                  v73 = v70;
                  v76 = v69;
                  v79 = v68;
                  v80 = v67;
                }

                goto LABEL_111;
            }

            dxb = dx - MinX;
            v256.origin.x = OUTLINED_FUNCTION_1_44();
            CGRectGetMinY(v256);
            v257.origin.x = OUTLINED_FUNCTION_3_31();
            CGRectGetMinY(v257);
LABEL_109:
            v94 = OUTLINED_FUNCTION_3_31();
            v83 = dxb;
            goto LABEL_110;
          }

          goto LABEL_105;
        }

LABEL_107:
        v260.origin.x = OUTLINED_FUNCTION_1_44();
        CGRectGetMinX(v260);
        v261.origin.x = OUTLINED_FUNCTION_2_31();
        v101 = CGRectGetMinX(v261);
        goto LABEL_108;
      }
    }

    v232.origin.x = OUTLINED_FUNCTION_1_44();
    CGRectGetMaxX(v232);
    v233.origin.x = OUTLINED_FUNCTION_2_31();
    dxc = dx - CGRectGetMaxX(v233);
    v234.origin.x = OUTLINED_FUNCTION_1_44();
    v81 = CGRectGetMaxY(v234);
    v235.origin.x = OUTLINED_FUNCTION_3_31();
    v82 = CGRectGetMaxY(v235);
    v83 = dxc * 0.5;
    v84 = (v81 - v82) * 0.5;
LABEL_101:
    v94 = v71;
    v95 = v72;
    v96 = v76;
LABEL_102:
    v100 = v73;
LABEL_110:
    *&v80 = CGRectOffset(*&v94, v83, v84);
    v76 = v102;
    v73 = v103;
LABEL_111:
    *v190 = v165;
    *&v190[12] = v195;
    *&v190[8] = v14;
    *&v190[20] = v196;
    *&v190[28] = v193;
    *&v190[24] = v57;
    *&v190[36] = v194;
    *&v190[44] = v191;
    *&v190[40] = v62;
    *&v190[52] = v192;
    *&v190[56] = v61;
    *&v190[60] = v168;
    FigGeometryRectMakeFromCGRectAndReferenceUnits(v190, &v170, v80, v79, v76, v73);
    v54 = v170;
    v201 = v172;
    v202 = v173;
    v55 = v171;
    v56 = v174;
    v199 = v175;
    v200 = v176;
    v198 = v179;
    v197 = v178;
    v58 = v177;
    v16 = v62;
    v59 = v180;
    v60 = v181;
    v214 = v173;
    v213 = v172;
    v212 = v176;
    v211 = v175;
    v210 = v179;
    v209 = v178;
    v6 = v65;
    v5 = v63;
    v4 = v169;
    v12 = v166;
    a1 = v163;
  }

  v156 = v54;
  v158 = v57;
  v160 = v16;
  v162 = v61;
  v104 = *(a1 + 232);
  v186 = *(a1 + 216);
  v187 = v104;
  v105 = *(a1 + 264);
  v188 = *(a1 + 248);
  v189 = v105;
  *v190 = v4;
  *&v190[12] = v225;
  *&v190[8] = v5;
  *&v190[20] = v226;
  *&v190[28] = v223;
  *&v190[24] = v6;
  *&v190[36] = v224;
  *&v190[44] = v221;
  *&v190[40] = v5;
  *&v190[52] = v222;
  *&v190[56] = v6;
  *&v190[60] = v12;
  v106 = v6;
  v107 = v56;
  v108 = v55;
  v109 = v59;
  v110 = v60;
  v111 = v58;
  v112 = FigGeometryRectGetCGRect(v190);
  v114 = v113;
  v116 = v115;
  v118 = v117;
  *v190 = v54;
  *&v190[12] = v213;
  *&v190[8] = v108;
  *&v190[20] = v214;
  *&v190[28] = v211;
  *&v190[24] = v107;
  *&v190[36] = v212;
  *&v190[44] = v209;
  *&v190[40] = v111;
  *&v190[52] = v210;
  *&v190[56] = v109;
  *&v190[60] = v110;
  v119 = FigGeometryRectGetCGRect(v190);
  v121 = v120;
  v123 = v122;
  v125 = v124;
  *v190 = v186;
  *&v190[16] = v187;
  *&v190[32] = v188;
  *&v190[48] = v189;
  FigGeometryRectGetCGRect(v190);
  v127 = v126 / v123;
  v129 = v128 / v125;
  v130 = v121 - v114;
  v131 = -((v119 - v112) * v127);
  v132 = 0.0;
  if (v119 - v112 == 0.0)
  {
    v131 = 0.0;
  }

  if (v130 != 0.0)
  {
    v132 = -(v130 * v129);
  }

  v133 = (v119 - v112) / v116;
  v134 = v130 / v118;
  *v190 = v186;
  *&v190[16] = v187;
  *&v190[32] = v188;
  *&v190[48] = v189;
  FigGeometryRectMakeFromCGRectAndReferenceUnits(v190, &v182, v131, v132, v116 * v127, v118 * v129);
  *a2 = v169;
  *(a2 + 8) = v5;
  *(a2 + 12) = v225;
  *(a2 + 20) = v226;
  *(a2 + 24) = v106;
  *(a2 + 28) = v223;
  *(a2 + 36) = v224;
  *(a2 + 40) = v5;
  *(a2 + 44) = v221;
  *(a2 + 52) = v222;
  *(a2 + 56) = v106;
  *(a2 + 60) = v166;
  *(a2 + 64) = v165;
  *(a2 + 72) = v14;
  v135 = v220;
  *(a2 + 76) = v219;
  *(a2 + 84) = v135;
  *(a2 + 88) = v158;
  v136 = v218;
  *(a2 + 92) = v217;
  *(a2 + 100) = v136;
  *(a2 + 104) = v160;
  v137 = v216;
  *(a2 + 108) = v215;
  *(a2 + 116) = v137;
  *(a2 + 120) = v162;
  *(a2 + 124) = v168;
  *(a2 + 128) = v156;
  *(a2 + 136) = v108;
  v138 = v214;
  *(a2 + 140) = v213;
  *(a2 + 148) = v138;
  *(a2 + 152) = v107;
  v139 = v212;
  *(a2 + 156) = v211;
  *(a2 + 164) = v139;
  *(a2 + 168) = v111;
  v140 = v210;
  *(a2 + 172) = v209;
  *(a2 + 180) = v140;
  *(a2 + 184) = v109;
  *(a2 + 188) = v110;
  v141 = v186;
  v142 = v187;
  v143 = v189;
  *(a2 + 224) = v188;
  *(a2 + 240) = v143;
  *(a2 + 192) = v141;
  *(a2 + 208) = v142;
  v144 = v182;
  v145 = v183;
  v146 = v185;
  *(a2 + 288) = v184;
  *(a2 + 304) = v146;
  *(a2 + 256) = v144;
  *(a2 + 272) = v145;
  *(a2 + 320) = v133;
  *(a2 + 328) = v134;
  result = 1;
  *(a2 + 336) = v123 / v116;
  *(a2 + 344) = v125 / v118;
  return result;
}

size_t FigGeometryMappingGetSourceUnits_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x2B7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryMappingGetDestinationUnits_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x2C4, v3, v4, v5);
  *a1 = result;
  return result;
}

void FigGeometryMappingCreate_cold_2(const CMBlockBufferCustomBlockSource *a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", a1, v7, v8, v9);

  CFRelease(a2);
}

size_t FigGeometryMappingCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x53F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryMappingCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x53E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryMappingCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x53D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryMappingCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x53C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryMappingCreate_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x53B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryMappingCreateInverseMapping_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x5E4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryMappingCreateInverseMapping_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x5E5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryMappingCreateInverseMapping_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x5E3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryMappingCreateInverseMapping_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x5E2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryMappingCreateCEA608Mappings_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x63C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryMappingCreateCEA608Mappings_cold_2(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<<<< FigGeometryMapping >>>>", 0x671, v3, v4, v5);
}

size_t FigGeometryMappingCreateCEA608Mappings_cold_3(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<<<< FigGeometryMapping >>>>", 0x67B, v3, v4, v5);
}

size_t FigGeometryMappingCreateCEA608Mappings_cold_4(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<<<< FigGeometryMapping >>>>", 0x685, v3, v4, v5);
}

size_t FigGeometryMappingCreateCEA608Mappings_cold_5(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<<<< FigGeometryMapping >>>>", 0x69C, v3, v4, v5);
}

size_t FigGeometryMappingCreateCEA608Mappings_cold_6(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<<<< FigGeometryMapping >>>>", 0x6B7, v3, v4, v5);
}

size_t FigGeometryMappingCreateCEA608Mappings_cold_7(size_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, a1, "<<<< FigGeometryMapping >>>>", 0x6D0, v3, v4, v5);
}

size_t FigGeometryMappingCreateCEA608Mappings_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x63A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryMappingCreateCEA608Mappings_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x639, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryMappingCreateCEA608Mappings_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x638, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryMappingConvertDimensionToDimension_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x717, v1, v2, v3);
}

size_t FigGeometryMappingConvertPointToPoint_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x759, v1, v2, v3);
}

size_t FigGeometryMappingConvertSizeToSize_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x768, v1, v2, v3);
}

size_t FigGeometryMappingConvertVectorToVector_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x777, v1, v2, v3);
}

size_t FigGeometryMappingConvertRectToRect_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBC4EuLL, "<<<< FigGeometryMapping >>>>", 0x789, v1, v2, v3);
}

double FigCaptionGeometryGetCellBasedPointFromDictionary(const void *a1, _OWORD *a2)
{
  v3 = *MEMORY[0x1E695EFF8];
  v12 = *MEMORY[0x1E695EFF8];
  cf = 0;
  value = 0;
  if (!a1 || (v5 = CFGetTypeID(a1), v5 != CFDictionaryGetTypeID()) || !CFDictionaryGetValueIfPresent(a1, @"x", &value) || !CFDictionaryGetValueIfPresent(a1, @"y", &cf) || !value || (v6 = CFGetTypeID(value), v6 != CFDictionaryGetTypeID()) || !cf || (v7 = CFGetTypeID(cf), v7 != CFDictionaryGetTypeID()))
  {
    if (!a2)
    {
      return *&v3;
    }

LABEL_14:
    *&v3 = v12;
    *a2 = v12;
    return *&v3;
  }

  if (!FigCaptionGeometryGetCellBasedDimensionFromDictionary(value, &v12))
  {
    CellBasedDimensionFromDictionary = FigCaptionGeometryGetCellBasedDimensionFromDictionary(cf, &v12 + 1);
    if (a2)
    {
      if (!CellBasedDimensionFromDictionary)
      {
        goto LABEL_14;
      }
    }
  }

  return *&v3;
}

size_t FigCaptionGeometryGetCellBasedSizeFromDictionary(const __CFDictionary *a1, _OWORD *a2)
{
  v16 = *MEMORY[0x1E695F060];
  if (a1)
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(a1, @"width");
      v5 = CFDictionaryGetValue(a1, @"height");
      if (Value && (v6 = v5, v7 = CFGetTypeID(Value), v7 == CFDictionaryGetTypeID()))
      {
        if (v6)
        {
          v8 = CFGetTypeID(v6);
          if (v8 == CFDictionaryGetTypeID())
          {
            result = FigCaptionGeometryGetCellBasedDimensionFromDictionary(Value, &v16);
            if (!result)
            {
              result = FigCaptionGeometryGetCellBasedDimensionFromDictionary(v6, &v16 + 1);
              if (!result)
              {
                *a2 = v16;
              }
            }

            return result;
          }
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v14 = 4294950501;
        v15 = 282;
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v14 = 4294950501;
        v15 = 281;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v14 = 4294954516;
      v15 = 276;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v14 = 4294954516;
    v15 = 275;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v14, "<<<< FigCaptionPropertyUtilities >>>>", v15, v11, v12, v13);
}

__CFArray *FigEndpointUtility_CopyMatchingStreamsFromEndpoint(uint64_t a1, unsigned int (*a2)(const void *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  theArray = 0;
  if (!a1)
  {
    return 0;
  }

  CMBaseObject = FigEndpointGetCMBaseObject(a1);
  v8 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (!v8)
  {
    return 0;
  }

  v9 = *MEMORY[0x1E695E480];
  v8(CMBaseObject, @"Streams", *MEMORY[0x1E695E480], &theArray);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    Mutable = 0;
  }

  else
  {
    v11 = Count;
    v12 = 0;
    Mutable = 0;
    v14 = 1;
    v15 = MEMORY[0x1E695E9C0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
      if (ValueAtIndex)
      {
        v17 = ValueAtIndex;
        if (!a2 || a2(ValueAtIndex, a3, a4))
        {
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(v9, v11, v15);
          }

          CFArrayAppendValue(Mutable, v17);
        }
      }

      v12 = v14;
    }

    while (v11 > v14++);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return Mutable;
}

uint64_t FigEndpointCopyFirstStreamOfType(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBEB0uLL, "-FigEndpointUtils-", 0x1F3, v4, v11, v12);
    return 0;
  }

  v6 = FigEndpointUtility_CopyMatchingStreamsFromEndpoint(a1, FigEndpointUtility_StreamPredicate_IsOfTypeAndSubType, a3, 0);
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
      if (ValueAtIndex)
      {
        ValueAtIndex = CFRetain(ValueAtIndex);
      }

      *a4 = ValueAtIndex;
    }

    CFRelease(v7);
    return 0;
  }

  return 4294950571;
}

uint64_t FigEndpointUtility_StreamPredicate_IsOfTypeAndSubType(uint64_t a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v17 = 0;
  v6 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointStreamGetCMBaseObject(a1);
  v8 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (v8)
  {
    v8(CMBaseObject, @"Type", v6, &v17);
    v9 = v17;
  }

  else
  {
    v9 = 0;
  }

  v10 = FigCFEqual(v9, a2);
  v11 = v10;
  if (a3 && v10)
  {
    cf = 0;
    v12 = FigEndpointStreamGetCMBaseObject(a1);
    v13 = *(*(CMBaseObjectGetVTable(v12) + 8) + 48);
    if (v13)
    {
      v13(v12, @"SubType", v6, &cf);
      v14 = cf;
    }

    else
    {
      v14 = 0;
    }

    v11 = FigCFEqual(v14, a3);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v11;
}

const __CFArray *FigEndpointContainsStream(uint64_t a1, const void *a2)
{
  v2 = 0;
  theArray = 0;
  if (a1 && a2)
  {
    CMBaseObject = FigEndpointGetCMBaseObject(a1);
    v5 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
    if (v5)
    {
      v5(CMBaseObject, @"Streams", *MEMORY[0x1E695E480], &theArray);
      v2 = theArray;
      if (theArray)
      {
        v8.length = CFArrayGetCount(theArray);
        v8.location = 0;
        v2 = CFArrayContainsValue(v2, v8, a2);
        if (theArray)
        {
          CFRelease(theArray);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t FigEndpointAcquireAndCopyStreamResource(char *a1, const void *a2, uint64_t a3)
{
  v3 = 4294950576;
  if (a1 && a2 && a3)
  {
    ClassID = FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass(a1, ClassID))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v9 = Mutable;
        CFDictionarySetValue(Mutable, @"endpointStreamType", a2);
        v10 = *(*(CMBaseObjectGetVTable(a1) + 24) + 128);
        if (v10)
        {
          v3 = v10(a1, @"endpointStream", v9, a3);
        }

        else
        {
          v3 = 4294954514;
        }

        CFRelease(v9);
      }

      else
      {
        return 4294950575;
      }
    }

    else
    {
      return 4294950570;
    }
  }

  return v3;
}

uint64_t FigEndpointRelinquishStreamResource(char *a1, uint64_t a2)
{
  result = 4294950576;
  if (a1 && a2)
  {
    ClassID = FigEndpointExtendedGetClassID();
    if (CMBaseObjectIsMemberOfClass(a1, ClassID))
    {
      v6 = *(*(CMBaseObjectGetVTable(a1) + 24) + 136);
      if (v6)
      {

        return v6(a1, @"endpointStream", a2);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      return 4294950570;
    }
  }

  return result;
}

size_t FigEndpointActivateSync_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBEAFuLL, "-FigEndpointUtils-", 0xF1, v1, v2, v3);
}

size_t FigEndpointActivateSync_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBEAFuLL, "-FigEndpointUtils-", 0xEE, v1, v2, v3);
}

size_t FigEndpointCopyStreamsForTypeAndSubType_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFBEB0uLL, "-FigEndpointUtils-", 0x213, v1, v2, v3);
}

uint64_t FigCFWeakReferenceTableGetKey(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v7 = 0;
  if (a1 && a2)
  {
    FigSimpleMutexLock(*(a1 + 40));
    context[0] = a2;
    context[1] = -a2;
    CFDictionaryApplyFunction(*(a1 + 16), figCFWeakReferenceTable_searchForDisguisedValue, context);
    v2 = v7;
    figCFWeakReferenceTablePeriodicallyCleanUp(a1);
    FigSimpleMutexUnlock(*(a1 + 40));
  }

  return v2;
}

size_t FigCFWeakReferenceTableAddValueAndGetKey_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DCuLL, "<<<< WEAKREFTABLE >>>>", 0x9A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableAddValueAndGetKey_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DEuLL, "<<<< WEAKREFTABLE >>>>", 0xA5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableAddValueAndGetKey_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DFuLL, "<<<< WEAKREFTABLE >>>>", 0xA0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableAddValueAndGetKey_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DFuLL, "<<<< WEAKREFTABLE >>>>", 0x9B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableAddValueAssociatedWithKey_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DCuLL, "<<<< WEAKREFTABLE >>>>", 0xC2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableAddValueAssociatedWithKey_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DEuLL, "<<<< WEAKREFTABLE >>>>", 0xDB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableAddValueAssociatedWithKey_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DFuLL, "<<<< WEAKREFTABLE >>>>", 0xC1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableAddValueAssociatedWithKey_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DFuLL, "<<<< WEAKREFTABLE >>>>", 0xC0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableAddValueAssociatedWithKey_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DFuLL, "<<<< WEAKREFTABLE >>>>", 0xBF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableRemoveValue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DFuLL, "<<<< WEAKREFTABLE >>>>", 0x120, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableRemoveValue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DFuLL, "<<<< WEAKREFTABLE >>>>", 0x11F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableCopyValue_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFD0DFuLL, "<<<< WEAKREFTABLE >>>>", 0x13C, v1, v2, v3);
}

size_t FigCFWeakReferenceTableCopyValue_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFD0DFuLL, "<<<< WEAKREFTABLE >>>>", 0x13B, v1, v2, v3);
}

uint64_t FigCFWeakReferenceTableCopyValues_cold_1(os_unfair_lock_s **a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFD0DEuLL, "<<<< WEAKREFTABLE >>>>", 0x1A9, v5, v6, v7);
  v8 = *a1;

  return FigSimpleMutexUnlock(v8);
}

size_t FigCFWeakReferenceTableCopyValues_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DFuLL, "<<<< WEAKREFTABLE >>>>", 0x19E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableCopyValues_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DFuLL, "<<<< WEAKREFTABLE >>>>", 0x19D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableApplyFunction_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DEuLL, "<<<< WEAKREFTABLE >>>>", 0x1D6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableApplyFunction_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DFuLL, "<<<< WEAKREFTABLE >>>>", 0x1CA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableApplyFunction_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DFuLL, "<<<< WEAKREFTABLE >>>>", 0x1C9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DEuLL, "<<<< WEAKREFTABLE >>>>", 0x28B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< WEAKREFTABLE >>>>", 0x277, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DEuLL, "<<<< WEAKREFTABLE >>>>", 0x272, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigCFWeakReferenceTableCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD0DFuLL, "<<<< WEAKREFTABLE >>>>", 0x26F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figCFWeakReferenceTableCleanup_ifValueIsNULLAppendToKeyValueEntriesToRemove_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFD0DEuLL, "<<<< WEAKREFTABLE >>>>", 0xF6, v1, v2, v3);
}

uint64_t FigReadWriteLockLockForRead(uint64_t a1)
{
  result = FigSimpleMutexLock(*a1);
  if (!result)
  {
    while (*(a1 + 24) || *(a1 + 28))
    {
      FigSimpleMutexUnlock(*a1);
      FigSemaphoreWaitRelative(*(a1 + 8), -1);
      result = FigSimpleMutexLock(*a1);
      if (result)
      {
        return result;
      }

      if (*(a1 + 28))
      {
        FigSemaphoreSignal(*(a1 + 8));
      }
    }

    ++*(a1 + 20);
    FigSimpleMutexUnlock(*a1);
    return 0;
  }

  return result;
}

uint64_t FigReadWriteLockLockForWrite(uint64_t a1)
{
  result = FigSimpleMutexLock(*a1);
  if (!result)
  {
    if (*(a1 + 16))
    {
      ++*(a1 + 28);
    }

    while (*(a1 + 24) || *(a1 + 20))
    {
      FigSimpleMutexUnlock(*a1);
      FigSemaphoreWaitRelative(*(a1 + 8), -1);
      result = FigSimpleMutexLock(*a1);
      if (result)
      {
        return result;
      }
    }

    *(a1 + 24) = 1;
    if (*(a1 + 16))
    {
      --*(a1 + 28);
    }

    FigSimpleMutexUnlock(*a1);
    return 0;
  }

  return result;
}

uint64_t FigReadWriteLockUnlockForRead(uint64_t a1)
{
  v2 = FigSimpleMutexLock(*a1);
  if (!v2)
  {
    v3 = *(a1 + 20);
    if (v3)
    {
      v4 = v3 - 1;
      *(a1 + 20) = v4;
      if (!v4)
      {
        FigSemaphoreSignal(*(a1 + 8));
      }
    }

    FigSimpleMutexUnlock(*a1);
  }

  return v2;
}

uint64_t FigReadWriteLockUnlockForWrite(uint64_t a1)
{
  v2 = FigSimpleMutexLock(*a1);
  if (!v2)
  {
    if (*(a1 + 24))
    {
      *(a1 + 24) = 0;
      FigSemaphoreSignal(*(a1 + 8));
    }

    FigSimpleMutexUnlock(*a1);
  }

  return v2;
}

void FigReadWriteLockCreateWithFlags_cold_1(uint64_t a1, const void *a2, int a3, void *a4)
{
  v7 = a1;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v8 = FigSimpleMutexCreateWithFlags(a2, 0);
  *v7 = v8;
  if (v8)
  {
    v9 = FigSemaphoreCreateWithFlags(a2, 0, 1);
    *(v7 + 8) = v9;
    if (v9)
    {
      *(v7 + 16) = a3;
      if (a2)
      {
        v10 = CFRetain(a2);
      }

      else
      {
        v10 = 0;
      }

      v11 = 0;
      *(v7 + 32) = v10;
      goto LABEL_7;
    }

    FigSimpleMutexDestroy(*v7);
  }

  v11 = v7;
  v7 = 0;
LABEL_7:
  *a4 = v7;

  CFAllocatorDeallocate(a2, v11);
}

uint64_t NeroTransportConnectToReceiver(uint64_t a1, const void *a2)
{
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"transport_reply_timeout", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    *(a1 + 64) = 1000000000 * AppIntegerValue;
  }

  CMBaseObject = NeroTransportConnectionGetCMBaseObject(*(a1 + 80));
  v6 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 56);
  if (v6)
  {
    result = v6(CMBaseObject, @"ConnectionMode", @"Client");
    if (result)
    {
      return result;
    }

    if (a2)
    {
      v8 = CFGetTypeID(a2);
      if (v8 != FigCFIOKitObjectGetTypeID())
      {
        return 4294955259;
      }

      v9 = NeroTransportConnectionGetCMBaseObject(*(a1 + 80));
      v10 = *(*(CMBaseObjectGetVTable(v9) + 8) + 56);
      if (!v10)
      {
        return 4294954514;
      }

      result = v10(v9, @"Service", a2);
      if (result)
      {
        return result;
      }
    }

    v11 = *(a1 + 80);
    v12 = *(*(CMBaseObjectGetVTable(v11) + 16) + 16);
    if (v12)
    {
      return v12(v11);
    }
  }

  return 4294954514;
}

size_t NeroTransportRegisterObjectWithFlags(uint64_t a1, const void *a2, char a3, void *a4, NSObject *a5, const void *a6, const void *a7)
{
  if (!a1)
  {
    return 4294955265;
  }

  if (a6)
  {
    OUTLINED_FUNCTION_3_32(a1);
    if (!*(v7 + 16))
    {
      if (CFDictionaryContainsKey(*(v7 + 32), a2))
      {
        v17 = 4294955262;
LABEL_14:
        FigSimpleMutexUnlock(*(v7 + 24));
        return v17;
      }

      v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A004007F56D72uLL);
      *v8 = FigAtomicIncrement32(ft_createObjectRecord_sIdentifier);
      v8[1] = a5;
      dispatch_retain(a5);
      v8[2] = _Block_copy(a6);
      if (a7)
      {
        v8[3] = _Block_copy(a7);
      }

      CFDictionarySetValue(*(v7 + 32), a2, v8);
      if (a4)
      {
        CFDictionarySetValue(*(v7 + 40), *v8, a2);
      }

      if ((a3 & 1) != 0 && *(v7 + 72))
      {
        CFRetain(v7);
        v16 = v8[1];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 0x40000000;
        v22[2] = __NeroTransportRegisterObjectWithFlags_block_invoke;
        v22[3] = &__block_descriptor_tmp_50;
        v22[4] = v8;
        v22[5] = v7;
        dispatch_async(v16, v22);
      }
    }

    v17 = 0;
    if (a4)
    {
      *a4 = *v8;
    }

    goto LABEL_14;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFD0FBuLL, "<<< transport >>>", 0x373, v9, v20, v21);
}

uint64_t NeroTransportUnregisterObject(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 4294955265;
  }

  OUTLINED_FUNCTION_3_32(a1);
  if (!*(v2 + 16))
  {
    Value = CFDictionaryGetValue(*(v2 + 32), a2);
    if (!Value)
    {
      v6 = 4294955263;
      goto LABEL_6;
    }

    v5 = Value;
    CFDictionaryRemoveValue(*(v2 + 32), a2);
    CFDictionaryRemoveValue(*(v2 + 40), *v5);
    ft_destroyObjectRecord(v5);
  }

  v6 = 0;
LABEL_6:
  FigSimpleMutexUnlock(*(v2 + 24));
  return v6;
}

uint64_t NeroTransportCopyRegisteredObject(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a1)
  {
    return 4294955265;
  }

  OUTLINED_FUNCTION_3_32(a1);
  Value = CFDictionaryGetValue(*(v3 + 40), a2);
  if (Value)
  {
    v7 = 0;
    *a3 = CFRetain(Value);
  }

  else
  {
    v7 = 4294955263;
  }

  FigSimpleMutexUnlock(*(v3 + 24));
  return v7;
}

uint64_t NeroTransportSendAsyncMessage(uint64_t a1, int a2, uint64_t a3, CMBlockBufferRef theBuffer)
{
  if (!a1)
  {
    return 4294955265;
  }

  if (!*(a1 + 72))
  {
    return 4294955265;
  }

  CMBlockBufferGetDataLength(theBuffer);
  v6 = *(*(OUTLINED_FUNCTION_2_32() + 16) + 32);
  if (v6)
  {
    v6(a3, v8, theBuffer, 2);
  }

  return 0;
}

uint64_t NeroTransportSendSyncMessageCreatingReply(uint64_t a1, uint64_t a2, int a3, OpaqueCMBlockBuffer *a4, void *a5)
{
  v10 = dispatch_semaphore_create(0);
  if (a1 && *(a1 + 72))
  {
    v19[0] = CMBlockBufferGetDataLength(a4) + 28;
    v19[1] = 1937337955;
    v20 = a2;
    v21 = a3;
    v22 = v10;
    FigSimpleMutexLock(*(a1 + 48));
    CFDictionarySetValue(*(a1 + 56), v10, 0);
    FigSimpleMutexUnlock(*(a1 + 48));
    v11 = *(a1 + 80);
    v12 = *(*(CMBaseObjectGetVTable(v11) + 16) + 32);
    if (v12)
    {
      v12(v11, v19, a4, 2);
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = dispatch_time(0, v13);
    }

    else
    {
      v14 = -1;
    }

    dispatch_semaphore_wait(v10, v14);
    FigSimpleMutexLock(*(a1 + 48));
    Value = CFDictionaryGetValue(*(a1 + 56), v10);
    CFDictionaryRemoveValue(*(a1 + 56), v10);
    FigSimpleMutexUnlock(*(a1 + 48));
    if (Value)
    {
      v16 = *Value;
      if (a5 && !v16)
      {
        v17 = Value[1];
        if (v17)
        {
          v17 = CFRetain(v17);
        }

        v16 = 0;
        *a5 = v17;
      }
    }

    else
    {
      v16 = 4294955261;
    }
  }

  else
  {
    Value = 0;
    v16 = 4294955265;
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  ft_destroyReplyRecord(Value);
  return v16;
}

size_t NeroTransportCreate(uint64_t a1, const void *a2, uint64_t *a3)
{
  cf = 0;
  v38 = 1;
  if (!a3)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v21 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<<< transport >>>", 0x47B, v3, v27, v28);
    Instance = 0;
    goto LABEL_31;
  }

  if (qword_1ED4CCCC0 != -1)
  {
    dispatch_once(&qword_1ED4CCCC0, &__block_literal_global_41);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    v29 = fig_log_get_emitter("com.apple.coremedia", "");
    v22 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 0xFFFFCE0EuLL, "<<< transport >>>", 0x47E, v3, v30, v31);
    goto LABEL_21;
  }

  v7 = FigSimpleMutexCreate();
  *(Instance + 24) = v7;
  if (!v7 || (v8 = FigSimpleMutexCreate(), (*(Instance + 48) = v8) == 0) || (v9 = *MEMORY[0x1E695E480], v10 = OUTLINED_FUNCTION_1_46(), (*(Instance + 32) = v10) == 0) || (v11 = OUTLINED_FUNCTION_1_46(), (*(Instance + 40) = v11) == 0) || (v12 = OUTLINED_FUNCTION_1_46(), (*(Instance + 56) = v12) == 0))
  {
    v21 = 4294955266;
    goto LABEL_31;
  }

  *(Instance + 64) = 3000000000;
  if (!a2)
  {
    v22 = FigTransportConnectionUSBCreate(v9, (Instance + 80));
    if (!v22)
    {
      v13 = *(Instance + 80);
      goto LABEL_12;
    }

LABEL_21:
    v21 = v22;
    goto LABEL_31;
  }

  v13 = CFRetain(a2);
  *(Instance + 80) = v13;
LABEL_12:
  CMBaseObject = NeroTransportConnectionGetCMBaseObject(v13);
  v15 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 48);
  if (v15)
  {
    if (!v15(CMBaseObject, @"ReplyTimeout", v9, &cf))
    {
      if (cf)
      {
        v16 = CFGetTypeID(cf);
        if (v16 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
          *(Instance + 64) = 1000000000 * valuePtr;
        }
      }
    }
  }

  v17 = CFNumberCreate(v9, kCFNumberSInt32Type, &v38);
  v18 = NeroTransportConnectionGetCMBaseObject(*(Instance + 80));
  v19 = *(*(CMBaseObjectGetVTable(v18) + 8) + 56);
  if (v19)
  {
    v20 = v19(v18, @"Version", v17);
    if (v20)
    {
LABEL_19:
      v21 = v20;
      goto LABEL_29;
    }

    v23 = *(Instance + 80);
    OUTLINED_FUNCTION_3_1();
    v33 = 0x40000000;
    v34 = __NeroTransportCreate_block_invoke;
    v35 = &__block_descriptor_tmp_8_4;
    v36 = Instance;
    v24 = *(*(CMBaseObjectGetVTable(v23) + 16) + 8);
    if (v24)
    {
      v20 = v24(v23, 0, v32);
      if (!v20)
      {
        if (!a2)
        {
          FigTransportConnectionXPCSetCurrentConnection(*(Instance + 80));
        }

        v21 = 0;
        *a3 = Instance;
        Instance = 0;
        goto LABEL_29;
      }

      goto LABEL_19;
    }
  }

  v21 = 4294954514;
LABEL_29:
  if (v17)
  {
    CFRelease(v17);
  }

LABEL_31:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  return v21;
}

uint64_t NeroTransportInvalidate(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    OUTLINED_FUNCTION_3_32(a1);
    *(v1 + 16) = 1;
    FigSimpleMutexUnlock(*(v1 + 24));
    CFDictionaryApplyFunction(*(v1 + 32), ft_sendPendingMessagesObjectRecordApplier, 0);
    CFDictionaryApplyFunction(*(v1 + 32), ft_destroyObjectRecordApplier, 0);
    CFDictionaryRemoveAllValues(*(v1 + 32));
    CFDictionaryRemoveAllValues(*(v1 + 40));
    FigSimpleMutexLock(*(v1 + 48));
    CFDictionaryGetCount(*(v1 + 56));
    CFDictionaryApplyFunction(*(v1 + 56), ft_destroyReplyRecordApplier, 0);
    CFDictionaryRemoveAllValues(*(v1 + 56));
    FigSimpleMutexUnlock(*(v1 + 48));
    v2 = *(v1 + 80);
    v3 = *(*(CMBaseObjectGetVTable(v2) + 16) + 8);
    if (v3)
    {
      v3(v2, 0, 0);
    }

    *(v1 + 72) = 0;
    CMBaseObject = NeroTransportConnectionGetCMBaseObject(*(v1 + 80));
    if (CMBaseObject)
    {
      v5 = CMBaseObject;
      v6 = *(*(CMBaseObjectGetVTable(CMBaseObject) + 8) + 24);
      if (v6)
      {
        v6(v5);
      }
    }

    v7 = *(v1 + 80);
    if (v7)
    {
      CFRelease(v7);
      *(v1 + 80) = 0;
    }
  }

  return 0;
}

uint64_t FigTransportCopyRegisteredObject(const void *a1, CFTypeRef *a2)
{
  v4 = ft_copySharedTransport();
  v5 = NeroTransportCopyRegisteredObject(v4, a1, a2);
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

uint64_t FigTransportSendSyncMessageCreatingReply(uint64_t a1, int a2, OpaqueCMBlockBuffer *a3, void *a4)
{
  v8 = ft_copySharedTransport();
  v9 = NeroTransportSendSyncMessageCreatingReply(v8, a1, a2, a3, a4);
  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

uint64_t __ft_didReceiveSyncPackage_block_invoke_2(uint64_t result, uint64_t a2, CMBlockBufferRef theBuffer)
{
  v3 = *(result + 32);
  if (*(v3 + 72))
  {
    CMBlockBufferGetDataLength(theBuffer);
    v6 = *(*(OUTLINED_FUNCTION_2_32() + 16) + 32);
    if (v6)
    {
      v6(a2, v11, theBuffer, 1);
    }

    v7 = *(v3 + 80);
    VTable = CMBaseObjectGetVTable(v7);
    v9 = *(VTable + 16);
    result = VTable + 16;
    v10 = *(v9 + 40);
    if (v10)
    {
      return v10(v7, 1);
    }
  }

  return result;
}

void ft_callAsyncHandlerForObjectRecordApplier(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *a3;
  v7 = *(a3 + 1);
  v6 = *(a3 + 2);
  if (v6)
  {
    v8 = CFRetain(v6);
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v8 = 0;
    if (!v7)
    {
      return;
    }
  }

  if (!v7[16])
  {
    CFRetain(v7);
    OUTLINED_FUNCTION_3_1();
    v11 = 0x40000000;
    v12 = __ft_callAsyncHandlerForObjectRecordApplier_block_invoke;
    v13 = &__block_descriptor_tmp_29_0;
    v14 = v7;
    v15 = a1;
    v18 = v5;
    v16 = a2;
    v17 = v8;
    dispatch_async(v9, block);
  }
}

size_t __FigTransportInitializeWithConnection_block_invoke_cold_1(uint64_t a1)
{
  _MergedGlobals_47 = 1;
  result = NeroTransportCreate(*MEMORY[0x1E695E480], *(a1 + 40), &qword_1ED4CCCC8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void CMTimeSyncTimeOfDayClockGetClockTimeForHostTime()
{
  OUTLINED_FUNCTION_6_17(&kCMTimeInvalid);
  if (!v1)
  {
    goto LABEL_12;
  }

  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = CFGetTypeID(v1);
  v15 = v9;
  if (_MergedGlobals_48 != -1)
  {
    OUTLINED_FUNCTION_0_71();
    dispatch_once_f(v18, v19, v20);
  }

  if (v15 != qword_1ED4CCCD8)
  {
LABEL_12:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEC0, 0xFFFFCE36uLL, "<<<< TimeSyncTimeOfDayClock >>>>", 0x193, v0, v4, v5);
    return;
  }

  if ((*(v7 + 12) & 1) == 0)
  {
    return;
  }

  if (v8[3])
  {
    OUTLINED_FUNCTION_5_27();
    v16 = CMClockConvertHostTimeToSystemUnits(&hostTime);
    v17 = off_1ED4CCCE0(v8[3], v16);
    CMTimeMake(&v50, v17, 1000000000);
    if (!v6)
    {
      return;
    }

LABEL_11:
    OUTLINED_FUNCTION_4_26();
    return;
  }

  if (!OUTLINED_FUNCTION_1_47(v9, v10, v11, v12, v13, v14, v4, v5, v21, v24, v25, v28, v31, v32, v33, v36, v38, v40, v41, v43, v45, v47, hostTime.value, *&hostTime.timescale, hostTime.epoch))
  {
    OUTLINED_FUNCTION_2_33(hostTime.epoch, v22, v26, v29, hostTime.value, *&hostTime.timescale, v34, v37, v39);
    OUTLINED_FUNCTION_3_21(v48, v23, v27, v30, v44, v46, v35, v39, v42);
    if (v6)
    {
      goto LABEL_11;
    }
  }
}

void CMTimeSyncTimeOfDayClockGetHostTimeForClockTime()
{
  OUTLINED_FUNCTION_6_17(&kCMTimeInvalid);
  if (!v1)
  {
    goto LABEL_12;
  }

  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = CFGetTypeID(v1);
  v15 = v9;
  if (_MergedGlobals_48 != -1)
  {
    OUTLINED_FUNCTION_0_71();
    dispatch_once_f(v17, v18, v19);
  }

  if (v15 != qword_1ED4CCCD8)
  {
LABEL_12:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEC0, 0xFFFFCE36uLL, "<<<< TimeSyncTimeOfDayClock >>>>", 0x1D5, v0, v4, v5);
    return;
  }

  if ((*(v7 + 12) & 1) == 0)
  {
    return;
  }

  if (v8[3])
  {
    OUTLINED_FUNCTION_5_27();
    CMTimeConvertScale(&v49, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v16 = off_1ED4CCCE8(v8[3], v49.value);
    CMClockMakeHostTimeFromSystemUnits(&v50, v16);
    if (!v6)
    {
      return;
    }

LABEL_11:
    OUTLINED_FUNCTION_4_26();
    return;
  }

  if (!OUTLINED_FUNCTION_1_47(v9, v10, v11, v12, v13, v14, v4, v5, v20, v23, v24, v27, v30, v31, v32, v35, v37, v39, v40, v42, v44, v46, time.value, *&time.timescale, time.epoch))
  {
    OUTLINED_FUNCTION_2_33(v47, v21, v25, v28, v43, v45, v33, v36, v38);
    OUTLINED_FUNCTION_3_21(time.epoch, v22, v26, v29, time.value, *&time.timescale, v34, v38, v41);
    if (v6)
    {
      goto LABEL_11;
    }
  }
}

uint64_t FigTextMarkupSizeMakeFromSimplifiedDictionary@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = kFigGeometrySizeInvalid;
  *(a2 + 16) = unk_197165368;
  cf = 0;
  value = 0;
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v4 == result)
    {
      result = CFDictionaryGetValueIfPresent(v3, @"width", &value);
      if (result)
      {
        result = CFDictionaryGetValueIfPresent(v3, @"height", &cf);
        if (result)
        {
          result = value;
          if (value)
          {
            v5 = CFGetTypeID(value);
            result = CFDictionaryGetTypeID();
            if (v5 == result)
            {
              result = cf;
              if (cf)
              {
                v6 = CFGetTypeID(cf);
                result = CFDictionaryGetTypeID();
                if (v6 == result)
                {
                  v7 = FigTextMarkupDimensionMakeFromSimplifiedDictionary(value);
                  v9 = v8;
                  v10 = FigTextMarkupDimensionMakeFromSimplifiedDictionary(cf);
                  return FigGeometrySizeMake(v7, v9, v10, v11, a2);
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

size_t FigTextMarkupCreateTextMarkupFromRubyReserve_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x35C, v3, v4, v5);
  *a1 = result;
  return result;
}

void FigTextMarkupCreateTextMarkupFromRubyReserve_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFFFFFuLL, "<<<< FigTextMarkup >>>>", 0x364, v5, v6, v7);

  CFRelease(a1);
}

size_t FigTextMarkupCreateTextMarkupFromRubyReserve_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFFFFFuLL, "<<<< FigTextMarkup >>>>", 0x35F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromRubyReserve_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x35B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromRubyReserve_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x35A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateRubyReserveFromTextMarkup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x39A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateRubyReserveFromTextMarkup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x3A0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateRubyReserveFromTextMarkup_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x39D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateRubyReserveFromTextMarkup_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x399, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateRubyReserveFromTextMarkup_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x398, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromTextEmphasis_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x3C6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromTextEmphasis_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFFFFFuLL, "<<<< FigTextMarkup >>>>", 0x3C9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromTextEmphasis_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x3C5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromTextEmphasis_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x3C4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromAbstractPosition_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x45E, v3, v4, v5);
  *a1 = result;
  return result;
}

void FigTextMarkupCreateTextMarkupFromAbstractPosition_cold_2(const CMBlockBufferCustomBlockSource *a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFFFFFuLL, "<<<< FigTextMarkup >>>>", a1, v7, v8, v9);

  CFRelease(a2);
}

size_t FigTextMarkupCreateTextMarkupFromAbstractPosition_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFFFFFuLL, "<<<< FigTextMarkup >>>>", 0x461, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromAbstractPosition_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x45D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromAbstractPosition_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x45C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromTextShadowList_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x4B4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromTextShadowList_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFFFFFuLL, "<<<< FigTextMarkup >>>>", 0x4C8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromTextShadowList_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFFFFFuLL, "<<<< FigTextMarkup >>>>", 0x4EB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromTextShadowList_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFFFFFuLL, "<<<< FigTextMarkup >>>>", 0x4C7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromTextShadowList_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFFFFFuLL, "<<<< FigTextMarkup >>>>", 0x4B7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromTextShadowList_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x4B3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupCreateTextMarkupFromTextShadowList_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBE6AuLL, "<<<< FigTextMarkup >>>>", 0x4B2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigTextMarkupMapGenericFontFamilyToMACaptionAppearanceFontStyle_cold_1(BOOL *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFFFCEuLL, "<<<< FigTextMarkup >>>>", 0x568, v3, v4, v5);
  *a1 = result == 0;
  return result;
}

size_t FigVMPageAllocateWithOwnershipIdentity_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC318, 0xFFFFCE14uLL, "<< FigVMPageUtilities >>", 0x26, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigVMPageAllocateWithOwnershipIdentity_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CC318, 0xFFFFCE14uLL, "<< FigVMPageUtilities >>", 0x25, v8, a7, a8);
  *a1 = result;
  return result;
}

void *FigPixelBufferOriginSetPixelBufferInXPCMessage(uint64_t a1, void *a2, const char *a3, CVPixelBufferRef pixelBuffer, int a5)
{
  if (!pixelBuffer)
  {
    v17 = 0;
LABEL_31:
    v13 = 0;
    IOSurface = 0;
LABEL_33:
    v12 = 0;
    goto LABEL_28;
  }

  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_28();
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x2E4, v20, v21, v22);
    goto LABEL_31;
  }

  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
  if (!IOSurface)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_28();
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFC314uLL, "<<<< PixelBufferSharing >>>>", 0x2E7, v24, v25, v26);
    v13 = 0;
    goto LABEL_33;
  }

  pixelBufferOrigin_registerPixelBuffer(a1, pixelBuffer);
  v11 = OUTLINED_FUNCTION_4_27();
  v12 = v11;
  if (!v11)
  {
    v13 = 0;
    v27 = 751;
    goto LABEL_37;
  }

  xpc_dictionary_set_uint64(v11, ".objectID", *(a1 + 32));
  v13 = OUTLINED_FUNCTION_4_27();
  if (!v13)
  {
    v27 = 756;
    goto LABEL_37;
  }

  XPCObject = IOSurfaceCreateXPCObject(IOSurface);
  if (!XPCObject)
  {
    v27 = 759;
LABEL_37:
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_28();
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 0xFFFFC319uLL, "<<<< PixelBufferSharing >>>>", v27, v29, v30, v31);
    IOSurface = 0;
    if (!v17)
    {
      goto LABEL_28;
    }

LABEL_38:
    pixelBufferOrigin_unregisterPixelBuffer(a1);
    goto LABEL_28;
  }

  IOSurface = XPCObject;
  xpc_dictionary_set_value(v13, "IOSurface", XPCObject);
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  value = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(pixelBuffer, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &value);
  if (extraColumnsOnLeft)
  {
    xpc_dictionary_set_int64(v13, "ExtendedPixelsLeft", extraColumnsOnLeft);
  }

  if (extraColumnsOnRight)
  {
    xpc_dictionary_set_int64(v13, "ExtendedPixelsRight", extraColumnsOnRight);
  }

  if (extraRowsOnTop)
  {
    xpc_dictionary_set_int64(v13, "ExtendedPixelsTop", extraRowsOnTop);
  }

  if (value)
  {
    xpc_dictionary_set_int64(v13, "ExtendedPixelsBottom", value);
  }

  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  pixelBufferSharing_copyPixelBufferAttachments(pixelBuffer, a5, &extraColumnsOnLeft, &extraColumnsOnRight);
  if (FigCFDictionaryGetCount(extraColumnsOnLeft) >= 1)
  {
    v15 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v15)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_28();
      v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 0xFFFFC315uLL, "<<<< PixelBufferSharing >>>>", 0x22E, v33, v34, v35);
      goto LABEL_22;
    }

    v16 = v15;
    xpc_dictionary_set_value(v13, "PropagatedAttachments", v15);
    xpc_release(v16);
  }

  if (FigCFDictionaryGetCount(extraColumnsOnRight) >= 1)
  {
    v17 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v17)
    {
      goto LABEL_22;
    }

    xpc_dictionary_set_value(v13, "NonPropagatedAttachments", v17);
    xpc_release(v17);
  }

  v17 = 0;
LABEL_22:
  if (extraColumnsOnLeft)
  {
    CFRelease(extraColumnsOnLeft);
  }

  if (extraColumnsOnRight)
  {
    CFRelease(extraColumnsOnRight);
  }

  if (v17)
  {
    goto LABEL_38;
  }

  xpc_dictionary_set_value(v12, "PixelBufferComponents", v13);
  xpc_dictionary_set_value(a2, a3, v12);
LABEL_28:
  FigXPCRelease(IOSurface);
  FigXPCRelease(v12);
  FigXPCRelease(v13);
  return v17;
}

size_t FigPixelBufferOriginSetTaggedBufferGroupInXPCMessage(uint64_t a1, void *a2, const char *a3, uint64_t a4, int a5)
{
  empty = xpc_array_create_empty();
  Count = FigTaggedBufferGroupGetCount(a4);
  if (Count < 1)
  {
LABEL_11:
    xpc_dictionary_set_value(a2, a3, empty);
    v18 = 0;
    v12 = 0;
  }

  else
  {
    v9 = Count;
    v10 = 0;
    v11 = *MEMORY[0x1E695E480];
    while (1)
    {
      v12 = OUTLINED_FUNCTION_4_27();
      CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex(a4, v10);
      if (!CVPixelBufferAtIndex)
      {
        break;
      }

      v14 = CVPixelBufferAtIndex;
      TagCollectionAtIndex = FigTaggedBufferGroupGetTagCollectionAtIndex(a4, v10);
      v16 = FigTagCollectionCopyAsData(TagCollectionAtIndex, v11);
      v17 = FigXPCMessageSetCFData(v12, "EntryTagCollection", v16);
      if (v17 || (v17 = FigPixelBufferOriginSetPixelBufferInXPCMessage(a1, v12, "EntryPixelBuffer", v14, a5), v17))
      {
        v18 = v17;
        goto LABEL_13;
      }

      xpc_array_append_value(empty, v12);
      if (v12)
      {
        xpc_release(v12);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      if (v9 == ++v10)
      {
        goto LABEL_11;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x331, v21, v22, v23);
  }

  v16 = 0;
LABEL_13:
  FigXPCRelease(empty);
  FigXPCRelease(v12);
  if (v16)
  {
    CFRelease(v16);
  }

  return v18;
}

uint64_t FigPixelBufferOriginBeginEstablishingPixelBufferRecipientByFillingInXPCMessage1(void *a1)
{
  value = 0;
  if (qword_1ED4CCD58 != -1)
  {
    dispatch_once(&qword_1ED4CCD58, &__block_literal_global_43);
  }

  v2 = _MergedGlobals_51;
  if (_MergedGlobals_51)
  {
    v3 = 0;
  }

  else
  {
    v2 = FigXPCServerCopyXPCEndpoint(qword_1ED4CCD50, &value);
    v3 = value;
    if (!v2)
    {
      xpc_dictionary_set_value(a1, "PixelBufferOriginEndpoint", value);
      v3 = value;
    }
  }

  FigXPCRelease(v3);
  return v2;
}

void *FigPixelBufferRecipientCopyPixelBufferFromXPCMessage(uint64_t a1, xpc_object_t xdict, char *key, __CVBuffer **a4)
{
  cf = 0;
  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v20 = 1352;
LABEL_28:
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", v20, v17, v18, v19);
    goto LABEL_19;
  }

  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v20 = 1354;
    goto LABEL_28;
  }

  value = xpc_dictionary_get_value(xdict, key);
  v7 = value;
  if (!value)
  {
    goto LABEL_19;
  }

  v8 = xpc_dictionary_get_value(value, "PixelBufferComponents");
  if (xpc_dictionary_get_uint64(v7, ".objectID") != *(a1 + 16))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v20 = 1362;
    goto LABEL_28;
  }

  v9 = xpc_dictionary_get_value(v8, "IOSurface");
  if (!v9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v20 = 1365;
    goto LABEL_28;
  }

  v10 = IOSurfaceLookupFromXPCObject(v9);
  ID = IOSurfaceGetID(v10);
  v12 = pixelBufferRecipient_createRecipientPixelBuffer(a1, ID, pixelBufferRecipient_copyCVPixelBufferFromXPCComponents, v8, &cf);
  if (!v12)
  {
    v13 = cf;
    theAttachments = 0;
    v12 = FigXPCMessageCopyCFDictionary(v8, "PropagatedAttachments", &theAttachments);
    if (!v12)
    {
      if (theAttachments)
      {
        CVBufferSetAttachments(v13, theAttachments, kCVAttachmentMode_ShouldPropagate);
        if (theAttachments)
        {
          CFRelease(theAttachments);
          theAttachments = 0;
        }
      }

      v14 = FigXPCMessageCopyCFDictionary(v8, "NonPropagatedAttachments", &theAttachments);
      v7 = v14;
      if (v14 || !theAttachments)
      {
        if (v14)
        {
          goto LABEL_17;
        }
      }

      else
      {
        CVBufferSetAttachments(v13, theAttachments, kCVAttachmentMode_ShouldNotPropagate);
        if (theAttachments)
        {
          CFRelease(theAttachments);
        }
      }

      v7 = 0;
      *a4 = v13;
      cf = 0;
LABEL_17:
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  v7 = v12;
  if (v10)
  {
LABEL_18:
    CFRelease(v10);
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t pixelBufferRecipient_createRecipientPixelBuffer(uint64_t a1, unsigned int a2, uint64_t (*a3)(uint64_t, uint64_t, CFTypeRef *), uint64_t a4, CFTypeRef *a5)
{
  cf = 0;
  v9 = a2;
  FigSimpleMutexLock(*(a1 + 24));
  if (CFDictionaryGetValue(*(a1 + 32), v9))
  {
    v10 = CVPixelBufferCreateWithBufferBacking();
    if (v10)
    {
      goto LABEL_12;
    }

LABEL_7:
    v12 = 0;
    *a5 = cf;
    cf = 0;
    goto LABEL_8;
  }

  v10 = a3(a1, a4, &cf);
  if (!v10)
  {
    BufferBacking = CVPixelBufferGetBufferBacking();
    if (BufferBacking)
    {
      CFDictionarySetValue(*(a1 + 32), v9, BufferBacking);
      goto LABEL_7;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x52B, v15, v16, v17);
  }

LABEL_12:
  v12 = v10;
LABEL_8:
  FigSimpleMutexUnlock(*(a1 + 24));
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

size_t pixelBufferRecipient_copyCVPixelBufferFromXPCComponents(uint64_t a1, void *a2, CVPixelBufferRef *a3)
{
  pixelBufferOut = 0;
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  int64 = xpc_dictionary_get_int64(a2, "ExtendedPixelsLeft");
  if (int64)
  {
    FigCFDictionarySetInt64(Mutable, *MEMORY[0x1E6966088], int64, v8, v9, v10, v11, v12);
  }

  v13 = xpc_dictionary_get_int64(a2, "ExtendedPixelsRight");
  if (v13)
  {
    FigCFDictionarySetInt64(Mutable, *MEMORY[0x1E6966090], v13, v14, v15, v16, v17, v18);
  }

  v19 = xpc_dictionary_get_int64(a2, "ExtendedPixelsTop");
  if (v19)
  {
    FigCFDictionarySetInt64(Mutable, *MEMORY[0x1E69660A0], v19, v20, v21, v22, v23, v24);
  }

  v25 = xpc_dictionary_get_int64(a2, "ExtendedPixelsBottom");
  if (v25)
  {
    FigCFDictionarySetInt64(Mutable, *MEMORY[0x1E6966078], v25, v26, v27, v28, v29, v30);
  }

  value = xpc_dictionary_get_value(a2, "IOSurface");
  if (value)
  {
    v32 = IOSurfaceLookupFromXPCObject(value);
    if (v32)
    {
      v33 = CVPixelBufferCreateWithIOSurface(v5, v32, Mutable, &pixelBufferOut);
      if (!v33)
      {
        *a3 = pixelBufferOut;
        pixelBufferOut = 0;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      v33 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, 0xFFFFC315uLL, "<<<< PixelBufferSharing >>>>", 0x4CB, v40, v41, v42);
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v33 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x4C8, v36, v37, v38);
    v32 = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  return v33;
}

size_t pixelBufferRecipient_copyCVPixelBufferFromSerializedPixelBufferDescription(uint64_t a1, uint64_t a2, CVPixelBufferRef *a3)
{
  xdict = 0;
  pixelBufferOut = 0;
  v29 = 0;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v9 = FigXPCCreateBasicMessage(0x696D7073u, 0, &xdict);
  if (v9)
  {
    goto LABEL_23;
  }

  xpc_dictionary_set_int64(xdict, "IOSurfaceID", *(a2 + 8));
  v9 = FigXPCRemoteClientSendSyncMessageCreatingReply(*(a1 + 40), xdict, &v29);
  if (v9)
  {
    goto LABEL_23;
  }

  value = xpc_dictionary_get_value(v29, "IOSurface");
  if (!value)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC315uLL, "<<<< PixelBufferSharing >>>>", 0x4F3, v3, v24, v25);
LABEL_23:
    v21 = v9;
    v16 = 0;
    goto LABEL_15;
  }

  v16 = IOSurfaceLookupFromXPCObject(value);
  if (v16)
  {
    v17 = *(a2 + 12);
    if (v17)
    {
      FigCFDictionarySetInt64(Mutable, *MEMORY[0x1E6966088], v17, v11, v12, v13, v14, v15);
    }

    v18 = *(a2 + 20);
    if (v18)
    {
      FigCFDictionarySetInt64(Mutable, *MEMORY[0x1E6966090], v18, v11, v12, v13, v14, v15);
    }

    v19 = *(a2 + 28);
    if (v19)
    {
      FigCFDictionarySetInt64(Mutable, *MEMORY[0x1E69660A0], v19, v11, v12, v13, v14, v15);
    }

    v20 = *(a2 + 36);
    if (v20)
    {
      FigCFDictionarySetInt64(Mutable, *MEMORY[0x1E6966078], v20, v11, v12, v13, v14, v15);
    }

    v21 = CVPixelBufferCreateWithIOSurface(v7, v16, Mutable, &pixelBufferOut);
    if (!v21)
    {
      *a3 = pixelBufferOut;
      pixelBufferOut = 0;
    }
  }

  else
  {
    v26 = fig_log_get_emitter("com.apple.coremedia", "");
    v21 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFFC315uLL, "<<<< PixelBufferSharing >>>>", 0x4F6, v3, v27, v28);
  }

LABEL_15:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  FigXPCRelease(xdict);
  FigXPCRelease(v29);
  return v21;
}

size_t FigPixelBufferRecipientCopyTaggedBufferGroupFromXPCMessage(uint64_t a1, xpc_object_t xdict, char *key, __CFArray *a4)
{
  v4 = a4;
  newCollectionOut = 0;
  data = 0;
  cf = 0;
  value = 0;
  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x5D6, v23, v24, v25);
    Mutable = 0;
    goto LABEL_19;
  }

  *a4 = 0;
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x5D9, v27, v28, v29);
LABEL_37:
    Mutable = 0;
    v4 = 0;
    goto LABEL_19;
  }

  v6 = xpc_dictionary_get_value(xdict, key);
  if (!v6)
  {
    v16 = 0;
    goto LABEL_37;
  }

  v7 = v6;
  v30 = v4;
  count = xpc_array_get_count(v6);
  v9 = *MEMORY[0x1E695E480];
  v10 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], count, MEMORY[0x1E695E9C0]);
  v4 = CFArrayCreateMutable(v9, count, v10);
  if (count < 1)
  {
LABEL_17:
    v16 = FigTaggedBufferGroupCreate(v9, Mutable, v4, &cf);
    if (!v16)
    {
      *v30 = cf;
      cf = 0;
    }
  }

  else
  {
    v12 = 0;
    while (1)
    {
      dictionary = xpc_array_get_dictionary(v7, v12);
      if (!dictionary)
      {
        break;
      }

      v14 = dictionary;
      v15 = FigXPCMessageCopyCFData(dictionary, "EntryTagCollection", &data);
      if (v15)
      {
        goto LABEL_33;
      }

      v15 = FigTagCollectionCreateFromData(data, v9, &newCollectionOut);
      if (v15)
      {
        goto LABEL_33;
      }

      v15 = FigPixelBufferRecipientCopyPixelBufferFromXPCMessage(a1, v14, "EntryPixelBuffer", &value);
      if (v15)
      {
        goto LABEL_33;
      }

      CFArrayAppendValue(Mutable, newCollectionOut);
      CFArrayAppendValue(v4, value);
      if (data)
      {
        CFRelease(data);
        data = 0;
      }

      if (newCollectionOut)
      {
        CFRelease(newCollectionOut);
        newCollectionOut = 0;
      }

      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      if (count == ++v12)
      {
        goto LABEL_17;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_2();
    v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x5E5, v19, v20, v21);
LABEL_33:
    v16 = v15;
  }

LABEL_19:
  if (data)
  {
    CFRelease(data);
  }

  if (newCollectionOut)
  {
    CFRelease(newCollectionOut);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

size_t pixelBufferOriginServer_handleRemoteMessageWithReply(_xpc_connection_s *a1, void *a2, void *a3)
{
  v38 = 0;
  OpCode = FigXPCMessageGetOpCode(a2, &v38);
  if (OpCode)
  {
    return OpCode;
  }

  if (v38 != 1768779891)
  {
    if (v38 == 1668441400)
    {
      value = 0;
      v7 = *MEMORY[0x1E695E480];
      if (qword_1ED4CCD60 != -1)
      {
        dispatch_once(&qword_1ED4CCD60, &__block_literal_global_39);
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v9 = Instance;
        v10 = FigSimpleMutexCreate();
        *(v9 + 16) = v10;
        if (v10)
        {
          *(v9 + 24) = CFDictionaryCreateMutable(v7, 0, 0, 0);
          goto LABEL_9;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 0xFFFFC319uLL, "<<<< PixelBufferSharing >>>>", 0x125, v31, v32, v33);
        CFRelease(v9);
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_27_2();
        v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 0xFFFFC319uLL, "<<<< PixelBufferSharing >>>>", 0x122, v23, v24, v25);
      }

      if (v12)
      {
        return v12;
      }

      v9 = 0;
LABEL_9:
      v11 = FigXPCServerAssociateObjectWithConnection(a1, v9, 0, 0, 0, &value);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = FigXPCServerCopyMemoryOrigin(a1, (v9 + 40));
        if (!v12)
        {
          xpc_dictionary_set_uint64(a3, ".objectID", value);
          *(v9 + 32) = value;
LABEL_12:
          CFRelease(v9);
          return v12;
        }
      }

      if (!v9)
      {
        return v12;
      }

      goto LABEL_12;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, 0xFFFFC0E2uLL, "<<<< PixelBufferSharing >>>>", 0x395, v18, v19, v20);
  }

  int64 = xpc_dictionary_get_int64(a2, "IOSurfaceID");
  v14 = IOSurfaceLookup(int64);
  if (v14)
  {
    v15 = v14;
    XPCObject = IOSurfaceCreateXPCObject(v14);
    if (XPCObject)
    {
      xpc_dictionary_set_value(a3, "IOSurface", XPCObject);
      v12 = 0;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_27_2();
      v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, 0xFFFFC318uLL, "<<<< PixelBufferSharing >>>>", 0x37A, v35, v36, v37);
    }

    CFRelease(v15);
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFFC31AuLL, "<<<< PixelBufferSharing >>>>", 0x377, v27, v28, v29);
    XPCObject = 0;
  }

  FigXPCRelease(XPCObject);
  return v12;
}

size_t pixelBufferOriginServer_handleRemoteMessageNoReply(uint64_t a1, void *a2)
{
  v7 = 0;
  result = FigXPCMessageGetOpCode(a2, &v7);
  if (!result)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFC0E2uLL, "<<<< PixelBufferSharing >>>>", 0x3A8, v4, v5, v6);
  }

  return result;
}

size_t FigPixelBufferOriginAppendPixelBufferToIPCMessageData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC314uLL, "<<<< PixelBufferSharing >>>>", 0x2A7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferOriginAppendPixelBufferToIPCMessageData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x2A4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferOriginAppendPixelBufferToIPCMessageData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x2A3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferOriginAppendPixelBufferToIPCMessageData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x29D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferOriginCompleteEstablishingPixelBufferRecipientUsingXPCMessage2_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< PixelBufferSharing >>>>", 0x402, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferOriginGetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC31AuLL, "<<<< PixelBufferSharing >>>>", 0x413, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferOriginGetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC31AuLL, "<<<< PixelBufferSharing >>>>", 0x412, v3, v4, v5);
  *a1 = result;
  return result;
}

void FigPixelBufferOriginServerCopyPixelBufferOriginForObjectID_cold_2(CFTypeRef *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_20();
  v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFCE14uLL, "<<<< PixelBufferSharing >>>>", 0x42C, v5, v6, v7);
  if (*a1)
  {
    CFRelease(*a1);
  }

  *a2 = v8;
}

size_t FigPixelBufferOriginServerCopyPixelBufferOriginForObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC318uLL, "<<<< PixelBufferSharing >>>>", 0x425, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferOriginServerCopyPixelBufferOriginForObjectID_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC31AuLL, "<<<< PixelBufferSharing >>>>", 0x424, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferOriginServerCopyPixelBufferOriginForObjectID_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC31AuLL, "<<<< PixelBufferSharing >>>>", 0x420, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x5B2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x57B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x57C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x57A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x5AD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferRecipientCopyPixelBufferFromIPCMessageData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x5AB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferRecipientFlushPixelBufferBackings_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x60F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferRecipientFlushPixelBufferBackings_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC317uLL, "<<<< PixelBufferSharing >>>>", 0x60E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC315uLL, "<<<< PixelBufferSharing >>>>", 0x65A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC315uLL, "<<<< PixelBufferSharing >>>>", 0x646, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC316uLL, "<<<< PixelBufferSharing >>>>", 0x491, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigPixelBufferRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC315uLL, "<<<< PixelBufferSharing >>>>", 0x659, v3, v4, v5);
  *a1 = result;
  return result;
}

BOOL pixelBufferSharing_copyPixelBufferAttachments_cold_1(uint64_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC315uLL, "<<<< PixelBufferSharing >>>>", 0x1D0, v3, v4, v5);
  return a1 == 0;
}

BOOL pixelBufferSharing_copyPixelBufferAttachments_cold_2(uint64_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC315uLL, "<<<< PixelBufferSharing >>>>", 0x1CA, v3, v4, v5);
  return a1 == 0;
}

uint64_t FigGeometryMarginsMakeFromDictionary@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 44) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 12) = 1;
  *(a2 + 28) = 1;
  *(a2 + 44) = 1;
  *(a2 + 60) = 1;
  v21 = 0;
  value = 0;
  v19 = 0;
  cf = 0;
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    result = CFDictionaryGetTypeID();
    if (v4 == result)
    {
      result = CFDictionaryGetValueIfPresent(v3, @"left", &value);
      if (result)
      {
        result = CFDictionaryGetValueIfPresent(v3, @"right", &cf);
        if (result)
        {
          result = CFDictionaryGetValueIfPresent(v3, @"top", &v21);
          if (result)
          {
            result = CFDictionaryGetValueIfPresent(v3, @"bottom", &v19);
            if (result)
            {
              result = value;
              if (value)
              {
                v5 = CFGetTypeID(value);
                result = CFDictionaryGetTypeID();
                if (v5 == result)
                {
                  result = cf;
                  if (cf)
                  {
                    v6 = CFGetTypeID(cf);
                    result = CFDictionaryGetTypeID();
                    if (v6 == result)
                    {
                      result = v21;
                      if (v21)
                      {
                        v7 = CFGetTypeID(v21);
                        result = CFDictionaryGetTypeID();
                        if (v7 == result)
                        {
                          result = v19;
                          if (v19)
                          {
                            v8 = CFGetTypeID(v19);
                            result = CFDictionaryGetTypeID();
                            if (v8 == result)
                            {
                              v9 = FigGeometryDimensionMakeFromDictionary(value);
                              v11 = v10;
                              v12 = FigGeometryDimensionMakeFromDictionary(cf);
                              v14 = v13;
                              v15 = FigGeometryDimensionMakeFromDictionary(v21);
                              v17 = v16;
                              result = FigGeometryDimensionMakeFromDictionary(v19);
                              *a2 = v9;
                              *(a2 + 8) = v11;
                              *(a2 + 16) = v12;
                              *(a2 + 24) = v14;
                              *(a2 + 32) = v15;
                              *(a2 + 40) = v17;
                              *(a2 + 48) = result;
                              *(a2 + 56) = v18;
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
        }
      }
    }
  }

  return result;
}

CFMutableStringRef FigGeometryAspectRatioCopyDescription(const __CFAllocator *a1, unint64_t a2)
{
  Mutable = CFStringCreateMutable(a1, 0);
  if (!Mutable)
  {
    CFStringAppendFormat(0, 0, @"%d:%d", a2, HIDWORD(a2));
  }

  return Mutable;
}

uint64_t fgHash_CoordinateSpace(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (_MergedGlobals_52 != -1)
  {
    OUTLINED_FUNCTION_1_48();
    dispatch_once_f(v11, v12, v13);
  }

  if (v2 != qword_1ED4CCD78)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_3_33();
    v4 = ((v3 << 6) + 2654435769u + (v3 >> 2) + FigGeometryRectHash(v5)) ^ v3;
    if ((v3 & 2) == 0)
    {
LABEL_7:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_33();
  FigGeometryMarginsHash(v6);
  OUTLINED_FUNCTION_2_34();
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_13:
  OUTLINED_FUNCTION_3_33();
  FigGeometryRectHash(v7);
  OUTLINED_FUNCTION_2_34();
  if ((v3 & 4) == 0)
  {
LABEL_9:
    if ((v3 & 8) == 0)
    {
      return v4;
    }

    goto LABEL_15;
  }

LABEL_14:
  OUTLINED_FUNCTION_3_33();
  FigGeometryRectHash(v8);
  OUTLINED_FUNCTION_2_34();
  if ((v3 & 8) != 0)
  {
LABEL_15:
    v9 = ((v4 << 6) + 2654435769u + (v4 >> 2) + (((*(a1 + 280) >> 32) + 2654435769 + (*(a1 + 280) << 6) + (*(a1 + 280) >> 2)) ^ *(a1 + 280))) ^ v4;
    return (*(a1 + 288) + 2654435769 + (v9 << 6) + (v9 >> 2)) ^ v9;
  }

  return v4;
}

size_t FigGeometryCoordinateSpaceCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometry >>>>", 0x1EA, v3, v4, v5);
  *a1 = result;
  return result;
}

void FigGeometryCoordinateSpaceCreate_cold_3(const CMBlockBufferCustomBlockSource *a1, const void *a2, _DWORD *a3)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFBC4EuLL, "<<<< FigGeometry >>>>", a1, v7, v8, v9);

  CFRelease(a2);
}

size_t FigGeometryCoordinateSpaceCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4DuLL, "<<<< FigGeometry >>>>", 0x1F8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryCoordinateSpaceCreate_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometry >>>>", 0x1EC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigGeometryCoordinateSpaceCreate_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4EuLL, "<<<< FigGeometry >>>>", 0x1EB, v3, v4, v5);
  *a1 = result;
  return result;
}

BOOL FigGeometryMarginsCopyAsDictionary_cold_1(uint64_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBC4DuLL, "<<<< FigGeometry >>>>", 0x2EE, v3, v4, v5);
  return a1 == 0;
}

size_t FigRPCCreateRemoteClient_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD039uLL, "<<<< FigRPCRemoteClient >>>>", 0xB4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRPCCreateRemoteClient_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD03AuLL, "<<<< FigRPCRemoteClient >>>>", 0xB1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figrpc_createServerConnectionForObjectCommon_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD03AuLL, "<<<< FigRPCRemoteClient >>>>", 0xE4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figrpc_createServerConnectionForObjectCommon_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD03AuLL, "<<<< FigRPCRemoteClient >>>>", 0xE3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figrpc_createServerConnectionForObjectCommon_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD036uLL, "<<<< FigRPCRemoteClient >>>>", 0xF0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figrpc_createServerConnectionForObjectCommon_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD036uLL, "<<<< FigRPCRemoteClient >>>>", 0xF3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figrpc_createServerConnectionForObjectCommon_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD036uLL, "<<<< FigRPCRemoteClient >>>>", 0xF6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figrpc_createServerConnectionForObjectCommon_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD036uLL, "<<<< FigRPCRemoteClient >>>>", 0xF9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figrpc_createServerConnectionForObjectCommon_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD039uLL, "<<<< FigRPCRemoteClient >>>>", 0xE8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figrpc_createServerConnectionForObjectCommon_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD03AuLL, "<<<< FigRPCRemoteClient >>>>", 0xE1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figrpc_createServerConnectionForObjectCommon_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD03AuLL, "<<<< FigRPCRemoteClient >>>>", 0xE0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t figrpc_createServerConnectionForObjectCommon_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD03AuLL, "<<<< FigRPCRemoteClient >>>>", 0xDF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRPCGetServerConnectionInfo_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD035uLL, "<<<< FigRPCRemoteClient >>>>", 0x1C5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRPCGetServerConnectionInfo_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD03AuLL, "<<<< FigRPCRemoteClient >>>>", 0x1C4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRPCDisposeServerConnection_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFD03AuLL, "<<<< FigRPCRemoteClient >>>>", 0x1D8, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionBlockBuffer(const __CFAllocator *a1, CMBlockBufferRef theBuffer, uint64_t a3, CMFormatDescriptionRef *a4)
{
  *v18 = 0;
  blockBufferOut = 0;
  if (!theBuffer)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v4;
    v17 = 204;
LABEL_13:
    DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "(Fig)", v17, v16, v14, v15);
    goto LABEL_8;
  }

  if (!a4)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = v4;
    v17 = 205;
    goto LABEL_13;
  }

  v6 = theBuffer;
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  if (!CMBlockBufferIsRangeContiguous(v6, 0, 0))
  {
    DataPointer = CMBlockBufferCreateContiguous(a1, v6, a1, 0, 0, 0, 0, &blockBufferOut);
    if (DataPointer)
    {
      goto LABEL_8;
    }

    v6 = blockBufferOut;
  }

  DataPointer = CMBlockBufferGetDataPointer(v6, 0, 0, 0, v18);
  if (!DataPointer)
  {
    DataPointer = CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData(a1, *v18, DataLength, v10, a4);
  }

LABEL_8:
  v11 = DataPointer;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v11;
}

uint64_t hapticBridgeAppendExtensionsFunc(const __CFString *a1, const void *a2, uint64_t a3)
{
  v28 = 0;
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v27 = 235;
LABEL_12:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFCE56uLL, "(Fig)", v27, v24, v25, v26);
    return FigAtomWriterEndAtom(a3, v13, v14, v15, v16, v17, v18, v19);
  }

  if (!a2 || (v7 = CFGetTypeID(a2), v7 != CFDataGetTypeID()))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v27 = 236;
    goto LABEL_12;
  }

  if (!FigCFStringGetOSTypeValue(a1, &v28))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v27 = 239;
    goto LABEL_12;
  }

  if (!FigAtomWriterBeginAtom(a3, v28, 0, v8, v9, v10, v11, v12))
  {
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    FigAtomWriterAppendData(a3, BytePtr, Length);
  }

  return FigAtomWriterEndAtom(a3, v13, v14, v15, v16, v17, v18, v19);
}

size_t flipHapticDescriptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "(Fig)", 0x40, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "(Fig)", 0x81, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "(Fig)", 0x7D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "(Fig)", 0x7A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE57uLL, "(Fig)", 0x91, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0x76, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE56uLL, "(Fig)", 0xB3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "(Fig)", 0xAD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "(Fig)", 0xAC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCreateFromBigEndianHapticDescriptionData_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "(Fig)", 0xAB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "(Fig)", 0x136, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE55uLL, "(Fig)", 0x137, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE54uLL, "(Fig)", 0x143, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "(Fig)", 0x135, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE58uLL, "(Fig)", 0x134, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t __FigRPCFetchNextPendingNotificationPackagedForMIG_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = (v1 + 80);
  v2 = *(v1 + 80);
  if (v2)
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = *v2;
    *v3 = *v2;
    if (!v5)
    {
      *(v1 + 88) = v3;
      *(v1 + 96) = 0;
    }

    *(v4 + 24) = v5 != 0;
  }

  return OUTLINED_FUNCTION_1_49(a1, v2);
}

uint64_t __FigRPCFetchNextPendingNotification_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = (v1 + 80);
  v2 = *(v1 + 80);
  if (v2)
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = *v2;
    *v3 = *v2;
    if (!v5)
    {
      *(v1 + 88) = v3;
      *(v1 + 96) = 0;
    }

    *(v4 + 24) = v5 != 0;
  }

  return OUTLINED_FUNCTION_1_49(a1, v2);
}

size_t FigRPCCreateClientConnectionWithNotifications(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = a5;
  v25 = 0;
  if (a1)
  {
    if (a3)
    {
      if (a4)
      {
        if (a5)
        {
          if (a7)
          {
            if (a8)
            {
              ClientCommon = figrpc_createClientCommon(a1, a2, a3, a4, a5, a6, 0, &v25);
              if (ClientCommon)
              {
                goto LABEL_10;
              }

              v13 = v25;
              v25[10] = 0;
              v13 += 10;
              v13[1] = v13;
              *(v13 - 1) = a7;
              v14 = dispatch_queue_create("FigRPCClientConnectionNotifications", 0);
              v25[13] = v14;
              if (v14)
              {
                DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
                ClientCommon = CMNotificationCenterAddListener(DefaultLocalCenter, v25, figrpc_reflectServedObjectNotificationToClient, 0, a3);
                goto LABEL_10;
              }

              OUTLINED_FUNCTION_6_5();
              v23 = 4294955055;
              v24 = 1390;
            }

            else
            {
              OUTLINED_FUNCTION_6_5();
              v23 = 4294955056;
              v24 = 1372;
            }
          }

          else
          {
            OUTLINED_FUNCTION_6_5();
            v23 = 4294955056;
            v24 = 1371;
          }
        }

        else
        {
          OUTLINED_FUNCTION_6_5();
          v23 = 4294955056;
          v24 = 1370;
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_5();
        v23 = 4294955056;
        v24 = 1369;
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_5();
      v23 = 4294955056;
      v24 = 1368;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_5();
    v23 = 4294955056;
    v24 = 1367;
  }

  ClientCommon = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v23, "<<<< FigRPCServer >>>>", v24, v20, v21, v22);
LABEL_10:
  v16 = ClientCommon;
  v17 = v25;
  if (!v25)
  {
    FigMachPortReleaseSendRight_(v9, 0, 0, 0, 0);
    v17 = v25;
  }

  *a8 = v17;
  return v16;
}

uint64_t *__figrpc_cancelQueuedNotifications_block_invoke(uint64_t a1)
{
  for (i = *(a1 + 32); ; i = *(a1 + 32))
  {
    result = *(i + 80);
    if (!result)
    {
      break;
    }

    v4 = *result;
    *(i + 80) = *result;
    if (!v4)
    {
      *(i + 88) = i + 80;
      *(i + 96) = 0;
    }

    figrpc_freeQueuedNotification(result);
  }

  return result;
}

size_t FigRPCFetchNextPendingNotificationPackagedForMIG_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x2A7, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCFetchNextPendingNotificationPackagedForMIG_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x2A6, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCFetchNextPendingNotificationPackagedForMIG_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x2A5, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCFetchNextPendingNotificationPackagedForMIG_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x2A4, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCFetchNextPendingNotificationPackagedForMIG_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x2A3, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCFetchNextPendingNotificationPackagedForMIG_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x2A2, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCFetchNextPendingNotification_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x2DE, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCFetchNextPendingNotification_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x2DD, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCFetchNextPendingNotification_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x2DC, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCFetchNextPendingNotification_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x2DB, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCFetchNextPendingNotification_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x2DA, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCStartServerUsingMachChannel_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD02DuLL, "<<<< FigRPCServer >>>>", 0x32E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCStartServerUsingMachChannel_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD02FuLL, "<<<< FigRPCServer >>>>", 0x311, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCStartServerUsingMachChannel_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x30E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCStartServerUsingMachChannel_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x30D, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCStartServerUsingMachChannel_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x30C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCStartServerUsingMachChannel_cold_7(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x30B, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCStartServer_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD02DuLL, "<<<< FigRPCServer >>>>", 0x39A, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCStartServer_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD02DuLL, "<<<< FigRPCServer >>>>", 0x397, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCStartServer_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD02FuLL, "<<<< FigRPCServer >>>>", 0x385, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCStartServer_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x382, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCStartServer_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x381, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCStartServer_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x380, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCStartServer_cold_7(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x37F, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCStartServer_cold_8(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x37E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figrpc_createClientCommon_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD02CuLL, "<<<< FigRPCServer >>>>", 0x481, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figrpc_createClientCommon_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD02CuLL, "<<<< FigRPCServer >>>>", 0x488, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figrpc_createClientCommon_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD02FuLL, "<<<< FigRPCServer >>>>", 0x476, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figrpc_createClientCommon_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x46B, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figrpc_createClientCommon_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x46A, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figrpc_createClientCommon_cold_7(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x469, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figrpc_createClientCommon_cold_8(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x468, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figrpc_createClientCommon_cold_9(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x467, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCDisposeClientConnection_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD02BuLL, "<<<< FigRPCServer >>>>", 0x58C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCDisposeClientConnection_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x587, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCLookupClientConnection_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD02BuLL, "<<<< FigRPCServer >>>>", 0x5C9, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCLookupClientConnection_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x5C0, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCLookupClientConnection_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x5BF, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCLookupClientConnection_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x5BE, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCGetConnectionInfo_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x5D5, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCExecuteByServerSync_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x600, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCExecuteByServerSync_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x5FF, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCExecuteByServerAsync_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x60D, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigRPCExecuteByServerAsync_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CEE0, 0xFFFFD030uLL, "<<<< FigRPCServer >>>>", 0x60C, v8, a7, a8);
  *a1 = result;
  return result;
}

CFIndex FigRemote_CreateVMBufferFromPropertyList(CFTypeRef a1, vm_address_t *a2, _DWORD *a3)
{
  cf = 0;
  if (a1)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList(a1, *MEMORY[0x1E695E480], &cf);
    if (CFDataFromCFPropertyList)
    {
      goto LABEL_5;
    }

    a1 = cf;
  }

  CFDataFromCFPropertyList = FigRemote_CreateVMBufferFromBinaryPListData(a1, a2, a3);
LABEL_5:
  v6 = CFDataFromCFPropertyList;
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t FigRemote_CreateVMBufferFromBinaryPListData(const __CFData *a1, vm_address_t *a2, _DWORD *a3)
{
  if (a1 && (Length = CFDataGetLength(a1)) != 0)
  {
    v7 = Length;
    result = vm_allocate(*MEMORY[0x1E69E9A60], a2, Length, 1560281089);
    if (result)
    {
      return result;
    }

    v9 = *a2;
    BytePtr = CFDataGetBytePtr(a1);
    memcpy(v9, BytePtr, v7);
  }

  else
  {
    LODWORD(v7) = 0;
    *a2 = 0;
  }

  result = 0;
  *a3 = v7;
  return result;
}

size_t FigRemote_CopyArrayOfPropertyListFromData(UInt8 *a1, CFIndex a2, const __CFAllocator *a3, void *a4)
{
  cf = 0;
  if (!a1)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v14 = v4;
    v15 = 482;
LABEL_14:
    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<<<< REMOTEPRIV >>>>", v15, v14, v12, v13);
    goto LABEL_15;
  }

  v5 = 0;
  if (!a2 || !a4)
  {
    goto LABEL_9;
  }

  v7 = FigCreateCFPropertyListFromData(a1, a2, a3, &cf);
  if (v7)
  {
LABEL_15:
    v5 = v7;
    goto LABEL_9;
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFArrayGetTypeID())
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v14 = v4;
    v15 = 488;
    goto LABEL_14;
  }

  v9 = cf;
  if (cf)
  {
    v9 = CFRetain(cf);
  }

  v5 = 0;
  *a4 = v9;
LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

size_t FigRemote_CreateSerializableDictionaryForFormatDescription(const __CFAllocator *a1, CMFormatDescriptionRef desc, CFDictionaryRef *a3)
{
  v3 = desc;
  v78 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  totalLengthOut = 0;
  blockBufferOut = 0;
  dataPointerOut = 0;
  keys = 0;
  v76 = 0;
  v77 = 0;
  values = 0;
  v73 = 0;
  v74 = 0;
  if (!desc)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, 0xFFFFCE14uLL, "<<<< REMOTEPRIV >>>>", 0x2C5, v49, v50, v51);
    v7 = 0;
    goto LABEL_43;
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, 0xFFFFCE14uLL, "<<<< REMOTEPRIV >>>>", 0x2C6, v53, v54, v55);
    v7 = 0;
    goto LABEL_57;
  }

  MediaType = CMFormatDescriptionGetMediaType(desc);
  switch(MediaType)
  {
    case 0x61757876u:
      goto LABEL_15;
    case 0x636C6370u:
      v20 = OUTLINED_FUNCTION_1_50();
      v14 = CMClosedCaptionFormatDescriptionCopyAsBigEndianClosedCaptionDescriptionBlockBuffer(v20, v21, v22, v23);
      goto LABEL_33;
    case 0x68617074u:
      v36 = OUTLINED_FUNCTION_1_50();
      v14 = CMHapticFormatDescriptionCopyAsBigEndianHapticDescriptionBlockBuffer(v36, v37, v38, v39);
      goto LABEL_33;
    case 0x6D657461u:
      v32 = OUTLINED_FUNCTION_1_50();
      v14 = CMMetadataFormatDescriptionCopyAsBigEndianMetadataDescriptionBlockBuffer(v32, v33, v34, v35);
      goto LABEL_33;
    case 0x70636C64u:
      v15 = OUTLINED_FUNCTION_1_50();
      v14 = CMPointCloudFormatDescriptionCopyAsBigEndianPointCloudDescriptionBlockBuffer(v15, v16, v17, v18);
      goto LABEL_33;
    case 0x76696465u:
LABEL_15:
      if (CMFormatDescriptionGetExtension(v3, @"VerbatimISOSampleEntry"))
      {
        v7 = @"ISOFamily";
      }

      else
      {
        v7 = 0;
      }

      SystemEncoding = CFStringGetSystemEncoding();
      v9 = CMVideoFormatDescriptionCopyAsBigEndianImageDescriptionBlockBuffer(a1, v3, SystemEncoding, v7, &blockBufferOut);
      goto LABEL_25;
    case 0x7362746Cu:
      goto LABEL_19;
    case 0x7363656Eu:
      v28 = OUTLINED_FUNCTION_1_50();
      v14 = CMSceneFormatDescriptionCopyAsBigEndianSceneDescriptionBlockBuffer(v28, v29, v30, v31);
      goto LABEL_33;
  }

  if (MediaType != 1936684398)
  {
    if (MediaType != 1952807028)
    {
      if (MediaType == 1953325924)
      {
        v24 = OUTLINED_FUNCTION_1_50();
        v14 = CMTimeCodeFormatDescriptionCopyAsBigEndianTimeCodeDescriptionBlockBuffer(v24, v25, v26, v27);
      }

      else
      {
        if (MediaType == 1885954932)
        {
          goto LABEL_15;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, 0xFFFFCE14uLL, "<<<< REMOTEPRIV >>>>", 0x242, v41, v42, v43);
      }

LABEL_33:
      v19 = v14;
      v7 = 0;
      goto LABEL_34;
    }

LABEL_19:
    v10 = OUTLINED_FUNCTION_1_50();
    v14 = CMTextFormatDescriptionCopyAsBigEndianTextDescriptionBlockBuffer(v10, v11, v12, v13);
    goto LABEL_33;
  }

  if (CMFormatDescriptionGetExtension(v3, @"VerbatimISOSampleEntry"))
  {
    v7 = @"ISOFamily";
  }

  else
  {
    v7 = 0;
  }

  v9 = CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(a1, v3, v7, &blockBufferOut);
LABEL_25:
  v19 = v9;
  if (v7)
  {
    v7 = CFRetain(v7);
  }

LABEL_34:
  if (v19)
  {
LABEL_57:
    v3 = 0;
    goto LABEL_43;
  }

  DataPointer = CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, &totalLengthOut, &dataPointerOut);
  if (DataPointer)
  {
LABEL_56:
    v19 = DataPointer;
    goto LABEL_57;
  }

  values = CFDataCreate(a1, dataPointerOut, totalLengthOut);
  if (!values)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, 0xFFFFCE0EuLL, "<<<< REMOTEPRIV >>>>", 0x2D0, v57, v58, v59);
    goto LABEL_56;
  }

  keys = @"FormatDescriptionData";
  valuePtr = CMFormatDescriptionGetMediaType(v3);
  v73 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (v73)
  {
    v76 = @"MediaType";
    if (v7)
    {
      v74 = CFRetain(v7);
      v77 = @"SampleDescriptionFlavor";
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v45 = CFDictionaryCreate(a1, &keys, &values, v3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v45)
    {
      v19 = 0;
      *a3 = v45;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, 0xFFFFCE0EuLL, "<<<< REMOTEPRIV >>>>", 0x2E2, v65, v66, v67);
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, 0xFFFFCE0EuLL, "<<<< REMOTEPRIV >>>>", 0x2D7, v61, v62, v63);
    v3 = 1;
  }

LABEL_43:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v3)
  {
    p_values = &values;
    do
    {
      if (*p_values)
      {
        CFRelease(*p_values);
      }

      ++p_values;
      --v3;
    }

    while (v3);
  }

  return v19;
}

uint64_t FigServer_IsReadOnlyFileOpeningPermittedForAuditToken(int a1, CFURLRef url)
{
  v4 = *MEMORY[0x1E69E9840];
  result = CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024);
  if (result)
  {
    return sandbox_check_by_audit_token() == 0;
  }

  return result;
}

BOOL FigServer_IsWritableFileOpeningOrCreationPermittedForAuditToken(uint64_t *a1, CFURLRef url)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = CFURLStartAccessingSecurityScopedResource(url);
  v13 = v5;
  if (checkFigRemotePrivTrace_onceToken == -1)
  {
    if (url)
    {
      goto LABEL_3;
    }

LABEL_23:
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<<<< REMOTEPRIV >>>>", 0x574, v2, v39, v40);
    goto LABEL_14;
  }

  dispatch_once(&checkFigRemotePrivTrace_onceToken, &__block_literal_global_56);
  if (!url)
  {
    goto LABEL_23;
  }

LABEL_3:
  v14 = OUTLINED_FUNCTION_3_34(v5, v6, v7, v8, v9, v10, v11, v12, v41, v44, *&v47.st_dev, v47.st_ino, *&v47.st_uid, *&v47.st_rdev, v47.st_atimespec.tv_sec, v47.st_atimespec.tv_nsec, v47.st_mtimespec.tv_sec, v47.st_mtimespec.tv_nsec, v47.st_ctimespec.tv_sec, v47.st_ctimespec.tv_nsec, v47.st_birthtimespec.tv_sec, v47.st_birthtimespec.tv_nsec, v47.st_size, v47.st_blocks, *&v47.st_blksize, *&v47.st_gen, v47.st_qspare[0], v47.st_qspare[1], *a1, a1[1], a1[2], a1[3], v50, buffer[0]);
  if (v14)
  {
    OUTLINED_FUNCTION_2_35(v14, v15, v16, v17, v18, v19, v20, v21, v42, v45, *&v47.st_dev, v47.st_ino, *&v47.st_uid, *&v47.st_rdev, v47.st_atimespec.tv_sec, v47.st_atimespec.tv_nsec, v47.st_mtimespec.tv_sec, v47.st_mtimespec.tv_nsec, v47.st_ctimespec.tv_sec, v47.st_ctimespec.tv_nsec, v47.st_birthtimespec.tv_sec, v47.st_birthtimespec.tv_nsec, v47.st_size, v47.st_blocks, *&v47.st_blksize, *&v47.st_gen, v47.st_qspare[0], v47.st_qspare[1], *v48);
    LODWORD(v14) = sandbox_check_by_audit_token();
    if (!v14)
    {
LABEL_11:
      v26 = 1;
      if (!v13)
      {
        return v26;
      }

      goto LABEL_15;
    }
  }

  if (!OUTLINED_FUNCTION_3_34(v14, v15, v16, v17, v18, v19, v20, v21, v42, v45, *&v47.st_dev, v47.st_ino, *&v47.st_uid, *&v47.st_rdev, v47.st_atimespec.tv_sec, v47.st_atimespec.tv_nsec, v47.st_mtimespec.tv_sec, v47.st_mtimespec.tv_nsec, v47.st_ctimespec.tv_sec, v47.st_ctimespec.tv_nsec, v47.st_birthtimespec.tv_sec, v47.st_birthtimespec.tv_nsec, v47.st_size, v47.st_blocks, *&v47.st_blksize, *&v47.st_gen, v47.st_qspare[0], v47.st_qspare[1], v48[0], v48[1], v49, *(&v49 + 1), v50, buffer[0]))
  {
    goto LABEL_14;
  }

  v22 = sandbox_extension_issue_file_to_self();
  if (!v22)
  {
    v22 = sandbox_extension_issue_file_to_self();
    if (!v22)
    {
      goto LABEL_14;
    }
  }

  v23 = v22;
  bzero(&v47, 0x90uLL);
  *__error() = 0;
  if (!stat(buffer, &v47))
  {
    free(v23);
    goto LABEL_14;
  }

  v24 = *__error();
  free(v23);
  if (v24 != 2)
  {
    goto LABEL_14;
  }

  v25 = *(a1 + 1);
  *v48 = *a1;
  v49 = v25;
  if (FigFileIsFileOnExternalStorageDevice(url))
  {
    goto LABEL_11;
  }

  PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E480], url);
  if (!PathComponent)
  {
LABEL_14:
    v26 = 0;
    if (!v13)
    {
      return v26;
    }

LABEL_15:
    MEMORY[0x19A8D8100](url);
    return v26;
  }

  v29 = PathComponent;
  v30 = CFURLGetFileSystemRepresentation(PathComponent, 1u, buffer, 1024);
  if (v30)
  {
    OUTLINED_FUNCTION_2_35(v30, v31, v32, v33, v34, v35, v36, v37, v43, v46, *&v47.st_dev, v47.st_ino, *&v47.st_uid, *&v47.st_rdev, v47.st_atimespec.tv_sec, v47.st_atimespec.tv_nsec, v47.st_mtimespec.tv_sec, v47.st_mtimespec.tv_nsec, v47.st_ctimespec.tv_sec, v47.st_ctimespec.tv_nsec, v47.st_birthtimespec.tv_sec, v47.st_birthtimespec.tv_nsec, v47.st_size, v47.st_blocks, *&v47.st_blksize, *&v47.st_gen, v47.st_qspare[0], v47.st_qspare[1], *v48);
    v26 = sandbox_check_by_audit_token() == 0;
  }

  else
  {
    v26 = 0;
  }

  CFRelease(v29);
  if (v13)
  {
    goto LABEL_15;
  }

  return v26;
}

uint64_t FigServer_CopyProcessName(uint64_t a1, CFStringRef *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  if (!a1)
  {
    *a2 = CFRetain(@"<UNKNOWN>");
    return v3;
  }

  if (qword_1ED4CCDC8 != -1)
  {
    dispatch_once(&qword_1ED4CCDC8, &__block_literal_global_69);
  }

  v4 = FigCFWeakReferenceTableCopyValue(qword_1ED4CCDD0, v3);
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 2);
    if (v6)
    {
      *a2 = CFRetain(v6);
      v3 = 1;
      goto LABEL_16;
    }
  }

  if (_MergedGlobals_53 && proc_name(v3, v9, 0x21u) >= 1)
  {
    v7 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v9, 0x8000100u);
    v3 = 1;
  }

  else
  {
    FigApplicationStateMonitorCopyProcessNameIfAvailable(v3, a2);
    if (*a2)
    {
      v3 = 0;
      if (!v5)
      {
        return v3;
      }

      goto LABEL_16;
    }

    v7 = CFRetain(@"<UNKNOWN>");
    v3 = 0;
  }

  *a2 = v7;
  if (v5)
  {
LABEL_16:
    CFRelease(v5);
  }

  return v3;
}

void FigServer_RememberProcessInfoForAFewSeconds(CFTypeRef cf)
{
  if (cf)
  {
    if (qword_1ED4CCDB8 != -1)
    {
      dispatch_once(&qword_1ED4CCDB8, &__block_literal_global_51);
    }

    CFRetain(cf);
    v2 = dispatch_time(0, 10000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigServer_RememberProcessInfoForAFewSeconds_block_invoke_2;
    block[3] = &__block_descriptor_tmp_53;
    block[4] = cf;
    dispatch_after(v2, qword_1ED4CCDC0, block);
  }
}

size_t FigRemote_CreateFormatDescriptionFromSerializedDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< REMOTEPRIV >>>>", 0x306, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionFromSerializedDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< REMOTEPRIV >>>>", 0x302, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionFromSerializedDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< REMOTEPRIV >>>>", 0x2FF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreateFormatDescriptionFromSerializedDictionary_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< REMOTEPRIV >>>>", 0x2FE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigRemote_CreatePListFromFormatDescriptionCollection_cold_1(const CMBlockBufferCustomBlockSource *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFCE14uLL, "<<<< REMOTEPRIV >>>>", a1, v5, v6, v7);
  *a2 = result;
  return result;
}

uint64_t FigProcessInfoCreateWithDetails_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE0EuLL, "<<<< REMOTEPRIV >>>>", 0x652, v3, v4, v5);
  *a1 = v6;
  if (!v6)
  {
    return 1;
  }

  FigSimpleMutexUnlock(FigProcessInfoCreateWithDetails_mutex);
  return 0;
}

size_t FigProcessInfoCreateWithDetails_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE14uLL, "<<<< REMOTEPRIV >>>>", 0x679, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t __getProcNameWeakTable_block_invoke_cold_2()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE0EuLL, "<<<< REMOTEPRIV >>>>", 0x652, v1, v2, v3);
}

void figTimelineCoordinator_handleUpdatedParticipantStateFromMediumOnQueue(CFDictionaryRef *a1)
{
  v10 = 0;
  cf = 0;
  v2 = *a1;
  if (!figTimelineCoordinatorParticipantCreateFromDictionary(*MEMORY[0x1E695E480], a1[1], *(*a1 + 44), &cf))
  {
    figTimelineCoordinator_integrateParticipantStateOnQueue(v2, cf, &v10, v3, v4, v5, v6, v7);
    if (v10)
    {
      figTimelineCoordinator_postParticipantsDidChange(v2);
      figTimelineCoordinator_triggerTimelineChangesAfterParticipantChangeOnQueue(v2);
    }
  }

  v8 = a1[1];
  if (v8)
  {
    CFRelease(v8);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  free(a1);
}

void figTimelineCoordinator_coordinateRateChangeOnQueue(char *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = *a1;
  v61 = 0;
  v60 = 0;
  memset(&v59, 0, sizeof(v59));
  v58 = 0;
  v56 = *&kCMTimeInvalid.value;
  v57 = 0;
  if (!*(v9 + 352))
  {
    goto LABEL_46;
  }

  FigCFDictionaryGetBooleanIfPresent(*(a1 + 2), @"AlreadyPaused", &v60 + 1, a4, a5, a6, a7, a8, v41, v44, kCMTimeInvalid.value, *&kCMTimeInvalid.timescale, v52, *(&v52 + 1), v53, v54, v55.value, *&v55.timescale);
  if (HIBYTE(v60))
  {
    FigCFDictionaryGetCMTimeIfPresent(*(a1 + 2));
  }

  FigCFDictionaryGetBooleanIfPresent(*(a1 + 2), @"AlreadyPrepared", &v60, v10, v11, v12, v13, v14, v42, v45, v47, v50, v52, *(&v52 + 1), v53, v54, v55.value, *&v55.timescale);
  FigCFDictionaryGetBooleanIfPresent(*(a1 + 2), @"SetRateImmediately", &v58, v15, v16, v17, v18, v19, v43, v46, v48, v51, v52, *(&v52 + 1), v53, v54, v55.value, *&v55.timescale);
  v20 = v58 == 0;
  v21 = *(v9 + 192);
  v22 = *(v21 + 36);
  if (v22 == 0.0)
  {
    HIBYTE(v60) = 1;
    v23 = (a1 + 8);
    v24 = *(a1 + 2);
    if (v24 != 0.0 && !v60)
    {
      LOBYTE(v60) = *(v21 + 32) == v24;
    }
  }

  else
  {
    v23 = (a1 + 8);
    v24 = *(a1 + 2);
  }

  v25 = *(v9 + 304);
  if (!*(v9 + 304))
  {
    v60 = 0;
  }

  if (BYTE12(v56))
  {
    *&v59.value = v56;
    v27 = v57;
  }

  else
  {
    if (*(v21 + 88))
    {
      if (v22 == 0.0 || (OUTLINED_FUNCTION_1_8(), v26))
      {
        OUTLINED_FUNCTION_1_8();
        if (v26)
        {
          figTimelineCoordinator_timelineTimeAtHostTime(v21, &v59);
          v24 = *v23;
          goto LABEL_20;
        }
      }
    }

    *&v59.value = *(v21 + 40);
    v27 = *(v21 + 56);
  }

  v59.epoch = v27;
LABEL_20:
  if (v24 == 0.0 || (v28 = *(v9 + 200)) != 0 && (OUTLINED_FUNCTION_19_9(v28), !v26))
  {
    if (v24 == 0.0 && (v32 = *(v9 + 200)) != 0 && (OUTLINED_FUNCTION_19_9(v32), !v26))
    {
      FigSimpleMutexLock(*(v9 + 392));
      v33 = *(v9 + 408);
      FigSimpleMutexUnlock(*(v9 + 392));
      v31 = v33 == 0;
    }

    else
    {
      v31 = 0;
    }

    v29 = 1;
    v30 = v24;
    v24 = 0.0;
  }

  else
  {
    v29 = 1;
    v30 = 0.0;
    v31 = 0;
    if (!*(v9 + 360))
    {
      *(v9 + 360) = 1;
      v29 = 0;
    }
  }

  v34 = *MEMORY[0x1E695E480];
  v36 = *(v9 + 344);
  v35 = *(v9 + 352);
  v37 = *(a1 + 3);
  v55 = v59;
  v52 = *v49;
  v53 = 0;
  if (!figTimelineCoordinatorTimelineStateCreateInternal(v24, v30, v34, v35, &v55, &v52, v31, v36, v37, 0xFFFFFFFFLL, 0, 0, &v61))
  {
    if (v30 == 0.0 && (v60 || *(*(v9 + 192) + 36) == 0.0))
    {
      v38 = v60 != 0;
      v39 = 1;
    }

    else
    {
      v39 = 0;
      v38 = 0;
    }

    if (v38 == *(v9 + 340))
    {
      if (v29)
      {
        goto LABEL_43;
      }
    }

    else
    {
      *(v9 + 340) = v38;
    }

    figTimelineCoordinator_sendParticipantStateToGroupOnQueue(v9);
LABEL_43:
    if (CFArrayGetCount(*(v9 + 432)) <= 0)
    {
      figTimelineCoordinator_postDidIssueSetRateCommandNotification(*v23, v9, 0);
    }

    figTimelineCoordinator_transitionToNewExpectedTimelineIssuingCommandsWhenAppropriateOnQueue(v9, v61, 1u, v20, 0, v25 != 0, v39, 1);
  }

LABEL_46:
  if (v61)
  {
    CFRelease(v61);
  }

  v40 = *(a1 + 2);
  if (v40)
  {
    CFRelease(v40);
  }

  CFRelease(v9);
  free(a1);
}

void figTimelineCoordinator_beginSuspensionOnQueue(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v189 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v10 = *(a1 + 1);
  v182 = 0;
  cf = 0;
  if (dword_1EAF1CF08)
  {
    v12 = OUTLINED_FUNCTION_3_35(a1, a2, a3, a4, a5, a6, a7, a8, p_time2, v149, v153, v158, v162, v166, SBYTE2(v166), SBYTE3(v166), SHIDWORD(v166));
    v20 = OUTLINED_FUNCTION_21_9(v12, v13, v14, v15, v16, v17, v18, v19, v146, v150, v154, v159, v163, v167, v170, type, v177);
    if (OUTLINED_FUNCTION_9_1(v20))
    {
      OUTLINED_FUNCTION_10_14();
      OUTLINED_FUNCTION_7_19();
      OUTLINED_FUNCTION_6_23();
      v8 = BYTE4(v166);
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_13(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  CFArrayAppendValue(*(v11 + 432), v10);
  if (!*(v11 + 200))
  {
    goto LABEL_74;
  }

  if (!figTimelineCoordinator_copyActiveSuspensionReasonsOnQueue(v11, &v182) && !figTimelineCoordinatorTimelineStateCopy(*MEMORY[0x1E695E480], *(v11 + 200), &cf, v29, v30, v31, v32, v33))
  {
    v34 = cf;
    *(cf + 8) = *(*(v11 + 200) + 36);
    *(v34 + 9) = 0;
    OUTLINED_FUNCTION_1_8();
    if (v36)
    {
      v37 = *(a1 + 1);
      *(v34 + 7) = *(a1 + 4);
      *(v34 + 40) = v37;
    }

    else
    {
      figTimelineCoordinator_timelineTimeAtHostTime(v35, &time1);
      *(v34 + 40) = time1;
      v34 = cf;
    }

    time1 = *(v34 + 40);
    *v155 = *&kCMTimeZero.value;
    *&time2.value = *&kCMTimeZero.value;
    time2.epoch = 0;
    v38 = CMTimeCompare(&time1, &time2);
    v39 = cf;
    if (v38 == -1)
    {
      *(cf + 40) = *&kCMTimeZero.value;
      v39[7] = 0;
    }

    *(v39 + 4) = *&kCMTimeInvalid.value;
    v39[10] = 0;
    if (figTimelineCoordinator_everyoneIsSuspended(v11) || (v40 = OUTLINED_FUNCTION_32_4(), figTimelineCoordinator_groupShouldWaitForAllSuspensions(v40, v41)))
    {
      v42 = OUTLINED_FUNCTION_32_4();
      if (!figTimelineCoordinator_suspensionReasonsContainInternalSuspensionReasons(v42, v43))
      {
        if (!figTimelineCoordinator_getActiveSuspensionWithReason(v11, @"BackgroundTransition"))
        {
          goto LABEL_61;
        }

        v44 = FigCFDictionaryCopyArrayOfValues(*(v11 + 328));
        if (v44)
        {
          v52 = v44;
          if (CFArrayGetCount(v44) < 1)
          {
            CFRelease(v52);
          }

          else
          {
            v53 = 1;
            v54 = 1;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v52, v53 - 1);
              v56 = FigTimelineCoordinationParticipantSnapshotCopySuspensionReasons(ValueAtIndex);
              v57 = v56;
              if (v56 && CFArrayGetCount(v56) < 0 || !FigCFArrayContainsValue(v57, @"BackgroundTransition"))
              {
                v54 = 0;
              }

              if (v57)
              {
                CFRelease(v57);
              }

              if (v53 >= CFArrayGetCount(v52))
              {
                break;
              }

              ++v53;
            }

            while (v54);
            CFRelease(v52);
            if (!v54)
            {
LABEL_61:
              OUTLINED_FUNCTION_19_9(*(v11 + 200));
              if (!v36)
              {
                if (dword_1EAF1CF08)
                {
                  v111 = OUTLINED_FUNCTION_3_35(v103, v104, v105, v106, v107, v108, v109, v110, p_time2, v149, v155[0], v155[1], v162, v166, SBYTE2(v166), SBYTE3(v166), SHIDWORD(v166));
                  v119 = OUTLINED_FUNCTION_21_9(v111, v112, v113, v114, v115, v116, v117, v118, v148, v152, v157, v161, v165, v169, v172, typec, v181);
                  if (OUTLINED_FUNCTION_9_1(v119))
                  {
                    OUTLINED_FUNCTION_10_14();
                    OUTLINED_FUNCTION_7_19();
                    OUTLINED_FUNCTION_6_23();
                  }

                  OUTLINED_FUNCTION_1_1();
                  OUTLINED_FUNCTION_13(v120, v121, v122, v123, v124, v125, v126, v127);
                }

                *(v11 + 360) = 1;
                goto LABEL_73;
              }

LABEL_74:
              figTimelineCoordinator_sendParticipantStateToGroupOnQueue(v11);
              goto LABEL_75;
            }
          }
        }

        if (dword_1EAF1CF08 >= 2)
        {
          v94 = OUTLINED_FUNCTION_3_35(v44, v45, v46, v47, v48, v49, v50, v51, p_time2, v149, kCMTimeZero.value, *&kCMTimeZero.timescale, v162, v166, SBYTE2(v166), SBYTE3(v166), SHIDWORD(v166));
          v95 = BYTE4(v166);
          if (os_log_type_enabled(v94, BYTE3(v166)))
          {
            v96 = HIDWORD(v166);
          }

          else
          {
            v96 = HIDWORD(v166) & 0xFFFFFFFE;
          }

          if (v96)
          {
            LODWORD(time2.value) = 136315650;
            *(&time2.value + 4) = "figTimelineCoordinator_beginSuspensionOnQueue";
            LOWORD(time2.flags) = 2112;
            *(&time2.flags + 2) = v11;
            HIWORD(time2.epoch) = 2112;
            v185 = COERCE_DOUBLE(@"BackgroundTransition");
            LODWORD(v149) = 32;
            p_time2 = &time2;
            OUTLINED_FUNCTION_6_3();
            _os_log_send_and_compose_impl();
            v95 = BYTE4(v166);
          }

          OUTLINED_FUNCTION_1_1();
          fig_log_call_emit_and_clean_up_after_send_and_compose(v97, v98, v99, v100, v101, v95, 0, v102);
        }

        *(cf + 4) = 0;
        goto LABEL_61;
      }
    }

    if (figTimelineCoordinator_everyoneIsSuspended(v11))
    {
      v58 = OUTLINED_FUNCTION_32_4();
      if (!figTimelineCoordinator_groupShouldWaitForAllSuspensions(v58, v59))
      {
        goto LABEL_72;
      }
    }

    v60 = OUTLINED_FUNCTION_32_4();
    if (figTimelineCoordinator_suspensionReasonsContainInternalSuspensionReasons(v60, v61))
    {
      goto LABEL_72;
    }

    if (*(*(v11 + 200) + 36) == 0.0)
    {
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_1_8();
    if (v36)
    {
      v69 = *(v11 + 208);
      v70 = cf;
      *(v11 + 208) = cf;
      if (v70)
      {
        v70 = CFRetain(v70);
      }

      if (v69)
      {
        CFRelease(v69);
      }

      if (dword_1EAF1CF08)
      {
        v71 = OUTLINED_FUNCTION_3_35(v70, v62, v63, v64, v65, v66, v67, v68, p_time2, v149, kCMTimeZero.value, *&kCMTimeZero.timescale, v162, v166, SBYTE2(v166), SBYTE3(v166), SHIDWORD(v166));
        v72 = v178;
        if (os_log_type_enabled(v71, typea))
        {
          v73 = v178;
        }

        else
        {
          v73 = v178 & 0xFFFFFFFE;
        }

        if (v73)
        {
          time1 = *(a1 + 16);
          Seconds = CMTimeGetSeconds(&time1);
          v129 = *(v11 + 208);
          LODWORD(time2.value) = 136315906;
          *(&time2.value + 4) = "figTimelineCoordinator_beginSuspensionOnQueue";
          LOWORD(time2.flags) = 2112;
          *(&time2.flags + 2) = v11;
          HIWORD(time2.epoch) = 2048;
          v185 = Seconds;
          v186 = 2112;
          v187 = v129;
          OUTLINED_FUNCTION_6_23();
          v72 = v178;
        }

        OUTLINED_FUNCTION_1_1();
        v136 = v72;
        goto LABEL_71;
      }
    }

    else if (FigCFEqual(*(*(a1 + 1) + 16), @"BackgroundTransition"))
    {
      v75 = cf;
      *(cf + 4) = 0;
      v76 = *(v11 + 208);
      *(v11 + 208) = v75;
      v77 = CFRetain(v75);
      if (v76)
      {
        CFRelease(v76);
      }

      if (dword_1EAF1CF08)
      {
        v85 = OUTLINED_FUNCTION_3_35(v77, v78, v79, v80, v81, v82, v83, v84, p_time2, v149, kCMTimeZero.value, *&kCMTimeZero.timescale, v162, v166, SBYTE2(v166), SBYTE3(v166), SHIDWORD(v166));
        v93 = OUTLINED_FUNCTION_21_9(v85, v86, v87, v88, v89, v90, v91, v92, v147, v151, v156, v160, v164, v168, v171, typeb, v179);
        if (OUTLINED_FUNCTION_9_1(v93))
        {
          OUTLINED_FUNCTION_10_14();
          OUTLINED_FUNCTION_7_19();
          OUTLINED_FUNCTION_6_23();
          v8 = v180;
        }

        OUTLINED_FUNCTION_1_1();
        v136 = v8;
LABEL_71:
        fig_log_call_emit_and_clean_up_after_send_and_compose(v130, v131, v132, v133, v134, v136, 0, v135);
      }
    }

LABEL_72:
    if (!*(v11 + 200))
    {
      goto LABEL_74;
    }

LABEL_73:
    OUTLINED_FUNCTION_17_8();
    figTimelineCoordinator_transitionToNewExpectedTimelineIssuingCommandsWhenAppropriateOnQueue(v137, v138, v139, v140, v141, v142, v143, v144);
    goto LABEL_74;
  }

LABEL_75:
  if (v182)
  {
    CFRelease(v182);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v11);
  if (v10)
  {
    CFRelease(v10);
  }

  free(a1);
}

size_t figTimelineCoordinator_postSuspensionReasonsChangedNotification(uint64_t a1)
{
  value = 0;
  active = FigTimelineCoordinatorCopyActiveSuspensionReasons(a1, &value);
  if (!active)
  {
    if (figTimelineCoordinator_suspensionReasonsContainInternalSuspensionReasons(a1, value))
    {
      v9 = 0;
      goto LABEL_5;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v7 = Mutable;
      CFDictionarySetValue(Mutable, @"SuspensionReasons", value);
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      v9 = CMNotificationCenterPostNotification(DefaultLocalCenter, @"SuspensionReasonsChanged", a1, v7);
      CFRelease(v7);
      goto LABEL_5;
    }

    active = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A2uLL, "<<<< FigTimelineCoordinator >>>>", 0x1451, v1, v5, v6);
  }

  v9 = active;
LABEL_5:
  if (value)
  {
    CFRelease(value);
  }

  return v9;
}

size_t FigTimelineCoordinatorEndSuspensionReApplyingGroupStateOnlyIfNeeded(os_unfair_lock_s **a1, void *a2, char a3)
{
  values = a2;
  result = figTimelineCoordinator_removeSuspension(a1, a2);
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_6_25();
    if (a1)
    {
      v7 = CFRetain(a1);
    }

    else
    {
      v7 = 0;
    }

    *v6 = v7;
    *(v6 + 1) = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    *(v6 + 20) = *&kCMTimeInvalid.value;
    *(v6 + 36) = 0;
    *(v6 + 11) = 2139095039;
    v6[16] = 0;
    v6[48] = a3;
    FigSimpleMutexLock(a1[2]);
    OUTLINED_FUNCTION_12_13();
    *(v6 + 7) = v8;
    v9 = OUTLINED_FUNCTION_1_51();
    dispatch_async_f(v9, v6, v10);
    FigSimpleMutexUnlock(a1[2]);
    return figTimelineCoordinator_postSuspensionReasonsChangedNotification(a1);
  }

  return result;
}

size_t FigTimelineCoordinatorEndSuspensionProposingNewTime(os_unfair_lock_s **a1, void *a2, uint64_t a3)
{
  values = a2;
  result = figTimelineCoordinator_removeSuspension(a1, a2);
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_6_25();
    if (a1)
    {
      v7 = CFRetain(a1);
    }

    else
    {
      v7 = 0;
    }

    *v6 = v7;
    *(v6 + 1) = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    v8 = *(a3 + 16);
    *(v6 + 20) = *a3;
    OUTLINED_FUNCTION_29_4(v8);
    v6[48] = 1;
    FigSimpleMutexLock(a1[2]);
    OUTLINED_FUNCTION_12_13();
    *(v6 + 7) = v9;
    v10 = OUTLINED_FUNCTION_1_51();
    dispatch_async_f(v10, v6, v11);
    FigSimpleMutexUnlock(a1[2]);
    return figTimelineCoordinator_postSuspensionReasonsChangedNotification(a1);
  }

  return result;
}

size_t FigTimelineCoordinatorEndSuspensionWeaklyIfNeededProposingNewRateAndTime(uint64_t a1, void *a2, float a3)
{
  values = a2;
  FigSimpleMutexLock(*(a1 + 392));
  Value = FigCFDictionaryGetValue(*(a1 + 400));
  v7 = FigCFDictionaryGetValue(Value);
  FigSimpleMutexUnlock(*(a1 + 392));
  result = figTimelineCoordinator_removeSuspension(a1, a2);
  if (!result)
  {
    v9 = v7 != *MEMORY[0x1E695E4D0];
    v10 = OUTLINED_FUNCTION_6_25();
    *v10 = CFRetain(a1);
    v11 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    OUTLINED_FUNCTION_24_7(v11);
    v10[11] = a3;
    *(v10 + 16) = v9;
    *(v10 + 48) = 1;
    FigSimpleMutexLock(*(a1 + 16));
    OUTLINED_FUNCTION_12_13();
    *(v10 + 7) = v12;
    v13 = OUTLINED_FUNCTION_1_51();
    dispatch_async_f(v13, v10, v14);
    FigSimpleMutexUnlock(*(a1 + 16));
    return figTimelineCoordinator_postSuspensionReasonsChangedNotification(a1);
  }

  return result;
}

size_t FigTimelineCoordinatorEndSuspensionsProposingNewTime(os_unfair_lock_s **a1, CFArrayRef theArray)
{
  if (!theArray || CFArrayGetCount(theArray) < 1)
  {
    return 0;
  }

  result = figTimelineCoordinator_removeSuspensions(a1, theArray);
  if (!result)
  {
    v5 = OUTLINED_FUNCTION_6_25();
    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    *v5 = v6;
    v7 = CFRetain(theArray);
    OUTLINED_FUNCTION_24_7(v7);
    v5[11] = 2139095039;
    *(v5 + 16) = 0;
    *(v5 + 48) = 1;
    FigSimpleMutexLock(a1[2]);
    OUTLINED_FUNCTION_12_13();
    *(v5 + 7) = v8;
    v9 = OUTLINED_FUNCTION_1_51();
    dispatch_async_f(v9, v5, v10);
    FigSimpleMutexUnlock(a1[2]);

    return figTimelineCoordinator_postSuspensionReasonsChangedNotification(a1);
  }

  return result;
}

uint64_t figTimelineCoordinator_removeSuspensions(uint64_t a1, const __CFArray *a2)
{
  FigSimpleMutexLock(*(a1 + 416));
  if (a2 && (Count = CFArrayGetCount(a2), Count >= 1))
  {
    v5 = Count;
    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
      v8 = figTimelineCoordinatorRemoveSuspensionInternal(a1, ValueAtIndex);
      if (v8)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_6;
      }
    }

    v9 = v8;
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  FigSimpleMutexUnlock(*(a1 + 416));
  return v9;
}

size_t FigTimelineCoordinatorEndSuspensions(os_unfair_lock_s **a1, CFArrayRef theArray)
{
  if (!theArray || CFArrayGetCount(theArray) < 1)
  {
    return 0;
  }

  result = figTimelineCoordinator_removeSuspensions(a1, theArray);
  if (!result)
  {
    v5 = OUTLINED_FUNCTION_6_25();
    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    *v5 = v6;
    *(v5 + 1) = CFRetain(theArray);
    *(v5 + 20) = *&kCMTimeInvalid.value;
    OUTLINED_FUNCTION_29_4(0);
    v5[48] = 1;
    FigSimpleMutexLock(a1[2]);
    OUTLINED_FUNCTION_12_13();
    *(v5 + 7) = v7;
    v8 = OUTLINED_FUNCTION_1_51();
    dispatch_async_f(v8, v5, v9);
    FigSimpleMutexUnlock(a1[2]);

    return figTimelineCoordinator_postSuspensionReasonsChangedNotification(a1);
  }

  return result;
}

size_t FigTimelineCoordinatorEndSuspensionWithReason(uint64_t a1, const __CFString *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  ActiveSuspensionWithReason = figTimelineCoordinator_getActiveSuspensionWithReason(a1, a2);
  if (dword_1EAF1CF08)
  {
    v20[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, v20, &type);
    v6 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
    if (OUTLINED_FUNCTION_9_1(v6))
    {
      v20[1] = 136315906;
      v21 = "FigTimelineCoordinatorEndSuspensionWithReason";
      v22 = 2112;
      v23 = a1;
      v24 = 2112;
      v25 = ActiveSuspensionWithReason;
      v26 = 2112;
      v27 = a2;
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6_23();
    }

    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_13(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  if (ActiveSuspensionWithReason)
  {
    v15 = OUTLINED_FUNCTION_2_9();
    FigTimelineCoordinatorEndSuspensionProposingNewTime(v15, v16, v17);
  }

  return figTimelineCoordinator_postSuspensionReasonsChangedNotification(a1);
}

void figTimelineCoordinator_timelineTimeAtHostTime(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  *&a2->value = *&kCMTimeInvalid.value;
  a2->epoch = 0;
  if (*(a1 + 88))
  {
    if (*(a1 + 36) == 0.0 || (OUTLINED_FUNCTION_1_8(), v4))
    {
      OUTLINED_FUNCTION_1_8();
      if (v4)
      {
        *&a2->value = *(a1 + 40);
        a2->epoch = *(a1 + 56);
        if (v7 != 0.0)
        {
          memset(&v12, 0, sizeof(v12));
          if ((v5->flags & v6) == 1)
          {
            v12 = *v5;
          }

          else
          {
            HostTimeClock = CMClockGetHostTimeClock();
            CMClockGetTime(&v12, HostTimeClock);
          }

          lhs = v12;
          v9 = *(a1 + 64);
          CMTimeSubtract(&time, &lhs, &v9);
          CMTimeMultiplyByFloat64(&lhs, &time, *(a1 + 36));
          time = *(a1 + 40);
          CMTimeAdd(a2, &time, &lhs);
        }
      }
    }
  }
}

uint64_t FigTimelineCoordinatorResetGroupTimelineExpectationsForIdentifier(uint64_t a1, const __CFString *a2)
{
  if (a2)
  {
    CFDictionaryRemoveValue(*(a1 + 216), a2);
    v4 = *(a1 + 200);
    if (v4)
    {
      v5 = *(v4 + 88);
      if (v5)
      {
        if (CFStringCompare(a2, v5, 0) == kCFCompareEqualTo)
        {
          v6 = *(a1 + 200);
          if (v6)
          {
            CFRelease(v6);
            *(a1 + 200) = 0;
          }
        }
      }
    }

    v7 = *(a1 + 208);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 208) = 0;
    }

    *(a1 + 281) = 1;
  }

  return 0;
}

void figTimelineCoordinator_didFireAdvanceToNextCommandSource(id *a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject(a1);
  if (v1)
  {
    v2 = v1;
    *(v1 + 361) = 1;
    if (v1[28])
    {
      figTimelineCoordinator_issueAppropriateCommandsToMatchInProgressTimelineOnQueue(v1);
    }

    else if (!figTimelineCoordinator_anyParticipantIsSuspendedWithOnlyReasonsThatTriggerWaiting(v1))
    {
      theArray = 0;
      figTimelineCoordinator_copyActiveSuspensionReasonsOnQueue(v2, &theArray);
      if (!theArray)
      {
        goto LABEL_17;
      }

      v3 = CFArrayGetCount(theArray) < 1 || figTimelineCoordinator_groupShouldWaitForAllSuspensions(v2, theArray) == 0;
      if (theArray)
      {
        CFRelease(theArray);
      }

      if (v3)
      {
LABEL_17:
        if (v2[25])
        {
          OUTLINED_FUNCTION_17_8();
          figTimelineCoordinator_transitionToNewExpectedTimelineIssuingCommandsWhenAppropriateOnQueue(v4, v5, v6, v7, v8, v9, v10, v11);
        }
      }
    }

    CFRelease(v2);
  }
}

void figTimelineCoordinator_handleMissedControlCallbackCompletionOnQueue(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = FigCFWeakReferenceHolderCopyReferencedObject(a1);
  if (v1)
  {
    v9 = v1;
    figTimelineCoordinator_suspendTimelineControlCommandCompletionTimer(v1, v2, v3, v4, v5, v6, v7, v8);
    ++*(v9 + 100);
    *(v9 + 96) = 0;
    v16[0] = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 0, v16, &type);
    v11 = v16[0];
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v16[1] = 136315138;
      v17 = "figTimelineCoordinator_handleMissedControlCallbackCompletionOnQueue";
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6_3();
      v14 = _os_log_send_and_compose_impl();
      LOBYTE(v11) = v16[0];
    }

    else
    {
      v14 = 0;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CF00, 0, 1, v14, v14 != &v18, v11, 0, v12);
    figTimelineCoordinator_issueAppropriateCommandsToMatchInProgressTimelineOnQueue(v9);
    figTimelineCoordinator_triggerTimelineChangesAfterParticipantChangeOnQueue(v9);
    CFRelease(v9);
  }
}

const void *FigTimelineStateDictionaryGetStateLoggingIdentifier(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"DebugInfo");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFStringGetTypeID())
  {
    return 0;
  }

  return v2;
}

const void *FigParticipantStateDictionaryGetStateLoggingIdentifier(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"DebugInfo");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFStringGetTypeID())
  {
    return 0;
  }

  return v2;
}

BOOL FigTimelineCoordinationParticipantSnapshot_Equal(int a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v2 = CFGetTypeID(cf);
  if (_MergedGlobals_55 != -1)
  {
    dispatch_once_f(&_MergedGlobals_55, 0, registerFigTimelineCoordinationParticipantSnapshotType);
  }

  return v2 == qword_1ED4CCDF0;
}

void figTimelineCoordinator_transitionToNewExpectedTimelineIssuingCommandsWhenAppropriateOnQueue(uint64_t a1, uint64_t a2, unsigned int a3, char a4, char a5, char a6, char a7, char a8)
{
  v89 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v56 = 0;
  }

  else
  {
    v56 = FigCFEqual(*(a1 + 272), *(a1 + 352)) == 0;
  }

  Count = CFArrayGetCount(*(a1 + 432));
  v14 = Count > 0 && a3 != 1;
  v15 = a3 == 1 && Count > 0;
  v16 = a3 == 1 && ((v17 = *(a1 + 200)) != 0 ? ((OUTLINED_FUNCTION_19_9(v17), v19) ? (v18 = 0) : (v18 = 1)) : (v18 = 0), (v20 = FigCFDictionaryGetCount(*(a1 + 328)), (v18 & 1) != 0) || !v20 || CFArrayGetCount(*(a1 + 432)) >= 1) && *(a1 + 104) == 0;
  v21 = *(a1 + 200);
  if (v21 && *(v21 + 36) == 0.0)
  {
    figTimelineCoordinator_timelineTimeAtHostTime(v21, &time);
    CMTimeMake(&lhs, 1, 10);
    rhs = *(a2 + 40);
    IsWithinTolerance = CMTimeDifferenceIsWithinTolerance(&time, &rhs, &lhs);
  }

  else
  {
    IsWithinTolerance = 0;
  }

  if ((*(a2 + 32) == 0.0 || *(a2 + 36) != 0.0) && *(a1 + 360))
  {
    *(a1 + 360) = 0;
    v23 = *(a1 + 368);
    if (v23)
    {
      CFRelease(v23);
      *(a1 + 368) = 0;
    }

    figTimelineCoordinator_sendParticipantStateToGroupOnQueue(a1);
  }

  v24 = *(a1 + 224);
  *(a1 + 224) = a2;
  CFRetain(a2);
  if (v24)
  {
    CFRelease(v24);
  }

  *(a1 + 261) = a5;
  *(a1 + 263) = IsWithinTolerance;
  *(a1 + 257) = a7;
  *(a1 + 256) = a6;
  figTimelineCoordinator_timelineTimeAtHostTime(a2, &lhs);
  figTimelineCoordinator_timelineTimeAtHostTime(*(a1 + 192), &rhs);
  CMTimeSubtract(&time, &lhs, &rhs);
  *(a1 + 232) = time;
  *(a1 + 258) = a8;
  *(a1 + 262) = v56;
  *(a1 + 265) = v16;
  *(a1 + 259) = v15;
  *(a1 + 260) = v14;
  *(a1 + 264) = a4;
  *(a1 + 268) = a3;
  if (dword_1EAF1CF08)
  {
    v25 = FigCFCopyCompactDescription(a2);
    if (a3 > 7)
    {
      v26 = "Unknown";
    }

    else
    {
      v26 = off_1E74A4C08[a3];
    }

    if (dword_1EAF1CF08)
    {
      LODWORD(rhs.value) = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &rhs, &type);
      value = rhs.value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v29 = value;
      }

      else
      {
        v29 = value & 0xFFFFFFFE;
      }

      if (v29)
      {
        if (*(a1 + 261))
        {
          v30 = "Yes";
        }

        else
        {
          v30 = "No";
        }

        if (*(a1 + 263))
        {
          v31 = "Match";
        }

        else
        {
          v31 = "Mismatch";
        }

        if (*(a1 + 258))
        {
          v32 = "No";
        }

        else
        {
          v32 = "Yes";
        }

        if (*(a1 + 257))
        {
          v33 = "No";
        }

        else
        {
          v33 = "Yes";
        }

        if (*(a1 + 256))
        {
          v34 = "No";
        }

        else
        {
          v34 = "Yes";
        }

        if (*(a1 + 256))
        {
          Seconds = NAN;
        }

        else
        {
          time = *(a1 + 232);
          v59 = v26;
          v35 = v33;
          v36 = v34;
          Seconds = CMTimeGetSeconds(&time);
          v34 = v36;
          v33 = v35;
          v26 = v59;
        }

        v38 = "Politely";
        v39 = *(a1 + 259);
        v40 = *(a1 + 260);
        v41 = " Group";
        v42 = *(a1 + 262);
        if (!*(a1 + 264))
        {
          v38 = "Asap";
        }

        *(&time.value + 4) = "figTimelineCoordinator_transitionToNewExpectedTimelineIssuingCommandsWhenAppropriateOnQueue";
        LOWORD(time.flags) = 2112;
        v43 = "";
        LODWORD(time.value) = 136318722;
        if (!v39)
        {
          v41 = "";
        }

        v44 = v40 | v39;
        *(&time.flags + 2) = a1;
        v19 = v40 == 0;
        HIWORD(time.epoch) = 2114;
        v45 = " Local";
        v63 = v25;
        if (v19)
        {
          v45 = "";
        }

        v64 = 2082;
        v65 = v26;
        if (!v44)
        {
          v43 = " No";
        }

        v66 = 2082;
        if (v42)
        {
          v46 = "Yes";
        }

        else
        {
          v46 = "No";
        }

        v67 = v30;
        v68 = 2082;
        v69 = v31;
        v70 = 2082;
        v71 = v32;
        v72 = 2082;
        v73 = v33;
        v74 = 2082;
        v75 = v34;
        v76 = 2048;
        v77 = Seconds;
        v78 = 2082;
        v79 = v38;
        v80 = 2082;
        v81 = v41;
        v82 = 2082;
        v83 = v45;
        v84 = 2082;
        v85 = v43;
        v86 = 2082;
        v87 = v46;
        OUTLINED_FUNCTION_6_3();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1_1();
      OUTLINED_FUNCTION_13(v47, v48, v49, v50, v51, v52, v53, v54);
    }

    if (v25)
    {
      CFRelease(v25);
    }
  }

  figTimelineCoordinator_issueAppropriateCommandsToMatchInProgressTimelineOnQueue(a1);
}

void figTimelineCoordinator_sendParticipantStateToGroupOnQueue(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  theArray = 0;
  if (!*(a1 + 344))
  {
    return;
  }

  if (!*(a1 + 160) || figTimelineCoordinator_copyActiveSuspensionReasonsOnQueue(a1, &theArray) || figTimelineCoordinator_suspensionReasonsContainInternalSuspensionReasons(a1, theArray))
  {
    StateLoggingIdentifier = 0;
    Mutable = 0;
    v5 = 0;
  }

  else
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject(*(a1 + 160));
    if (v5)
    {
      v6 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v8 = CFUUIDCreateString(v6, *(a1 + 344));
      CFDictionarySetValue(Mutable, @"UUID", v8);
      FigCFDictionarySetInt32(Mutable, @"ProtocolVersion", 0, v9, v10, v11, v12, v13);
      if (*(a1 + 352))
      {
        v14 = CFArrayGetCount(*(a1 + 432)) > 0 || (*(a1 + 340) & 1) == 0;
        CFDictionarySetValue(Mutable, @"CurrentIdentifier", *(a1 + 352));
        v15 = *MEMORY[0x1E695E4D0];
        v16 = *MEMORY[0x1E695E4C0];
        if (v14)
        {
          v17 = *MEMORY[0x1E695E4C0];
        }

        else
        {
          v17 = *MEMORY[0x1E695E4D0];
        }

        CFDictionarySetValue(Mutable, @"ReadyToSetNonZeroRate", v17);
        if (*(a1 + 360))
        {
          v18 = v15;
        }

        else
        {
          v18 = v16;
        }

        CFDictionarySetValue(Mutable, @"CoordinatingStart", v18);
      }

      if (theArray && CFArrayGetCount(theArray) >= 1)
      {
        CFDictionarySetValue(Mutable, @"SuspensionReasons", theArray);
      }

      if (FigDebugIsInternalBuild())
      {
        StateLoggingIdentifier = figTimelineCoordinator_createStateLoggingIdentifier(@"Pa/", v8, *(a1 + 384));
        FigCFDictionarySetValue(Mutable, @"DebugInfo", StateLoggingIdentifier);
      }

      else
      {
        StateLoggingIdentifier = 0;
      }

      if (dword_1EAF1CF08)
      {
        v20 = FigCFCopyCompactDescription(Mutable);
        if (dword_1EAF1CF08)
        {
          v31 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &v31, &type);
          v22 = v31;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v23 = v22;
          }

          else
          {
            v23 = v22 & 0xFFFFFFFE;
          }

          if (v23)
          {
            v33 = 136315650;
            v34 = "figTimelineCoordinator_sendParticipantStateToGroupOnQueue";
            v35 = 2112;
            v36 = a1;
            v37 = 2114;
            v38 = v20;
            OUTLINED_FUNCTION_2_5();
            OUTLINED_FUNCTION_6_3();
            _os_log_send_and_compose_impl();
            LOBYTE(v22) = v31;
          }

          OUTLINED_FUNCTION_1_1();
          fig_log_call_emit_and_clean_up_after_send_and_compose(v24, v25, v26, v27, v28, v22, 0, v29);
        }

        if (v20)
        {
          CFRelease(v20);
        }
      }

      (*(a1 + 144))(v5, Mutable);
      ++*(a1 + 384);
      goto LABEL_34;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x17FB, v1, v3, v4);
    StateLoggingIdentifier = 0;
    Mutable = 0;
  }

  v8 = 0;
LABEL_34:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (StateLoggingIdentifier)
  {
    CFRelease(StateLoggingIdentifier);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void figTimelineCoordinator_issueAppropriateCommandsToMatchInProgressTimelineOnQueue(uint64_t a1)
{
  v224 = *MEMORY[0x1E69E9840];
  Count = FigCFDictionaryGetCount(*(a1 + 328));
  cf = 0;
  v5 = *(a1 + 224);
  if (v5)
  {
    v6 = 1;
    if (!Count && !*(a1 + 104))
    {
      OUTLINED_FUNCTION_19_9(v5);
      if (v18 || !*(v28 + 88) || (*(v28 + 76) & 0x1D) != 1 || (*(v28 + 52) & 0x1D) != 1)
      {
        v6 = 0;
      }
    }

    v7 = 1718185504;
    v8 = MEMORY[0x1E695E480];
    if (*(a1 + 360) && !*(a1 + 259) && !figTimelineCoordinator_everyoneIsSuspended(a1))
    {
      if (!*(a1 + 256))
      {
        v17 = 1786080624;
        *(a1 + 263) = 1;
        goto LABEL_227;
      }

      if (v6)
      {
        if (!*(a1 + 257))
        {
          v17 = 1885435251;
          goto LABEL_227;
        }

        if (figTimelineCoordinator_timelineControlMustPrepareForCoordinatedStart(a1))
        {
          v17 = 1886545264;
LABEL_227:
          theArray[0].value = 0;
          figTimelineCoordinator_copyActiveSuspensionReasonsOnQueue(a1, theArray);
          if ((!theArray[0].value || CFArrayGetCount(theArray[0].value) != 1 || !figTimelineCoordinator_suspensionReasonsContainInternalSuspensionReasons(a1, theArray[0].value)) && (!*(a1 + 368) || *(a1 + 361)))
          {
            if (FigCFDictionaryGetCount(*(a1 + 328)))
            {
              v172 = 5.0;
            }

            else
            {
              v172 = 10.0;
            }

            if (v172 + -1.0 <= v172 * 0.5)
            {
              v173 = v172 * 0.5;
            }

            else
            {
              v173 = v172 + -1.0;
            }

            v174 = *(a1 + 368);
            if (v174)
            {
              CFRelease(v174);
              *(a1 + 368) = 0;
            }

            v175 = *v8;
            Current = CFAbsoluteTimeGetCurrent();
            *(a1 + 368) = CFDateCreate(v175, v173 + Current);
            v177 = *(a1 + 376);
            v178 = dispatch_time(0, (v172 * 1000000000.0));
            dispatch_source_set_timer(v177, v178, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
          }

          if (theArray[0].value)
          {
            CFRelease(theArray[0].value);
          }

LABEL_243:
          if (CFArrayGetCount(*(a1 + 432)) >= 1)
          {
            v17 = 1718185504;
          }

          goto LABEL_32;
        }

        v17 = 1718185504;
        if (!figTimelineCoordinator_isReadyToPickAnchorTimeForInProgressOnQueue(a1))
        {
          goto LABEL_227;
        }

        if (!figTimelineCoordinatorTimelineStateCopy(*v8, *(a1 + 224), &cf, v179, v180, v181, v182, v183))
        {
          *(cf + 9) = *(*(a1 + 224) + 32);
          v184 = figTimelineCoordinator_pickHostTimeForCoordinatedStart(a1, theArray);
          v192 = OUTLINED_FUNCTION_20_8(v184, v185, v186, v187, v188, v189, v190, v191, p_time1, v207, v208, v209, v210, cf, time2.value, *&time2.timescale, time2.epoch, v213, type.value, *&type.timescale, type.epoch, v215, time.value, *&time.timescale, time.epoch, v217, time1.value, *&time1.timescale, time1.epoch, v219, *(&v219 + 1), v220, v221, v222, theArray[0].value, *&theArray[0].timescale, theArray[0].epoch);
          if (v192)
          {
            CFRetain(v192);
          }

          if (v1)
          {
            CFRelease(v1);
          }

          *(a1 + 257) = 0;
          *(a1 + 261) = 0;
          goto LABEL_217;
        }
      }

      else if (!figTimelineCoordinatorTimelineStateCopy(*v8, *(a1 + 224), &cf, v150, v151, v152, v153, v154))
      {
        v169 = *(a1 + 224);
        v170 = cf;
        *(cf + 9) = v169[8];
        *(a1 + 224) = v170;
        CFRetain(v170);
        CFRelease(v169);
        *(a1 + 261) = 0;
        *(a1 + 257) = 0;
LABEL_217:
        *(a1 + 360) = 0;
        v171 = *(a1 + 368);
        if (v171)
        {
          CFRelease(v171);
          *(a1 + 368) = 0;
        }

        v17 = 1918989413;
        figTimelineCoordinator_sendParticipantStateToGroupOnQueue(a1);
        dispatch_source_set_timer(*(a1 + 376), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
        goto LABEL_243;
      }

LABEL_200:
      if (cf)
      {
        CFRelease(cf);
      }

      return;
    }

    if (CFArrayGetCount(*(a1 + 432)) >= 1 && !*(a1 + 259))
    {
      goto LABEL_37;
    }

    if (!*(a1 + 256))
    {
      v17 = 1786080624;
      if (v6)
      {
        OUTLINED_FUNCTION_19_9(*(a1 + 224));
        if (!v18)
        {
          v17 = 1918989413;
        }
      }

      goto LABEL_32;
    }

    v14 = *(a1 + 224);
    v15 = *(v14 + 36);
    if (*(a1 + 257))
    {
      if (v15 != 0.0)
      {
        goto LABEL_37;
      }

      v16 = *(v14 + 32);
      if (v16 != 0.0 && (*(a1 + 340) & 1) == 0)
      {
        v17 = 1886545264;
        goto LABEL_32;
      }

      if (v16 != 0.0 || (*(a1 + 340) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (v15 != 0.0)
    {
      v17 = 1918989413;
      if ((*(v14 + 76) & 1) == 0 && *(a1 + 104))
      {
        if (figTimelineCoordinatorTimelineStateCopy(*v8, v14, &cf, v9, v10, v11, v12, v13))
        {
          goto LABEL_200;
        }

        v19 = figTimelineCoordinator_pickHostTimeForCoordinatedStart(a1, theArray);
        v27 = OUTLINED_FUNCTION_20_8(v19, v20, v21, v22, v23, v24, v25, v26, p_time1, v207, v208, v209, v210, cf, time2.value, *&time2.timescale, time2.epoch, v213, type.value, *&type.timescale, type.epoch, v215, time.value, *&time.timescale, time.epoch, v217, time1.value, *&time1.timescale, time1.epoch, v219, *(&v219 + 1), v220, v221, v222, theArray[0].value, *&theArray[0].timescale, theArray[0].epoch);
        if (v27)
        {
          CFRetain(v27);
        }

        if (v1)
        {
          CFRelease(v1);
        }
      }

      goto LABEL_32;
    }

    v17 = 1885435251;
LABEL_32:
    if (v17 == 1718185504)
    {
      v7 = 1718185504;
    }

    else
    {
      v7 = v17;
      if (*(a1 + 96))
      {
        v7 = 2002872692;
        if (*(a1 + 268) == 1)
        {
          *(a1 + 256) = 257;
          *(a1 + 258) = 1;
        }
      }
    }

LABEL_37:
    if (dword_1EAF1CF08)
    {
      v29 = FigCFCopyCompactDescription(*(a1 + 224));
      if (dword_1EAF1CF08)
      {
        LODWORD(time.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CF00, 1, &time, &type);
        value = time.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value))
        {
          v32 = value;
        }

        else
        {
          v32 = value & 0xFFFFFFFE;
        }

        if (v32)
        {
          v210 = v2;
          v33 = MEMORY[0x1E69E9830];
          if ((*(MEMORY[0x1E69E9830] + 4 * HIBYTE(v7) + 60) & 0x40000) != 0)
          {
            v34 = HIBYTE(v7);
          }

          else
          {
            v34 = 46;
          }

          v209 = os_log_and_send_and_compose_flags_and_os_log_type;
          if (BYTE2(v7) > 0x7Fu)
          {
            v35 = __maskrune(BYTE2(v7), 0x40000uLL);
          }

          else
          {
            v35 = *(MEMORY[0x1E69E9830] + 4 * BYTE2(v7) + 60) & 0x40000;
          }

          if (v35)
          {
            v36 = BYTE2(v7);
          }

          else
          {
            v36 = 46;
          }

          v37 = v33;
          if (BYTE1(v7) > 0x7Fu)
          {
            v38 = __maskrune(BYTE1(v7), 0x40000uLL);
          }

          else
          {
            v38 = *(v33 + 4 * BYTE1(v7) + 60) & 0x40000;
          }

          if (v38)
          {
            v39 = BYTE1(v7);
          }

          else
          {
            v39 = 46;
          }

          if (v7 > 0x7Fu)
          {
            v40 = __maskrune(v7, 0x40000uLL);
          }

          else
          {
            v40 = *(v37 + 4 * v7 + 60) & 0x40000;
          }

          *(&time1.value + 4) = "figTimelineCoordinator_issueAppropriateCommandsToMatchInProgressTimelineOnQueue";
          LODWORD(time1.value) = 136316674;
          if (v40)
          {
            v41 = v7;
          }

          else
          {
            v41 = 46;
          }

          LOWORD(time1.flags) = 2112;
          *(&time1.flags + 2) = a1;
          HIWORD(time1.epoch) = 1024;
          LODWORD(v219) = v34;
          WORD2(v219) = 1024;
          *(&v219 + 6) = v36;
          WORD5(v219) = 1024;
          HIDWORD(v219) = v39;
          LOWORD(v220) = 1024;
          *(&v220 + 2) = v41;
          HIWORD(v220) = 2114;
          v221 = v29;
          LODWORD(v207) = 56;
          p_time1 = &time1;
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl();
          LOBYTE(value) = time.value;
        }

        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v42, v43, v44, v45, v46, value, 0, v47);
        v8 = MEMORY[0x1E695E480];
      }

      if (v29)
      {
        CFRelease(v29);
      }
    }

    v48 = *(a1 + 224);
    if (*(v48 + 88))
    {
      OUTLINED_FUNCTION_19_9(v48);
      if (v18 || (OUTLINED_FUNCTION_23_8(), v18))
      {
        OUTLINED_FUNCTION_23_8();
        if (v18)
        {
          if (v49 != *(a1 + 200) && !*(a1 + 259))
          {
            v51 = *(a1 + 261);
            if (v50 == 0.0 || (OUTLINED_FUNCTION_1_8(), v18))
            {
              FigSimpleMutexLock(*(a1 + 184));
              v52 = *(a1 + 200);
              v53 = *(a1 + 224);
              *(a1 + 200) = v53;
              if (v53)
              {
                CFRetain(v53);
              }

              if (v52)
              {
                CFRelease(v52);
              }

              v54 = *(a1 + 208);
              if (v54)
              {
                CFRelease(v54);
                *(a1 + 208) = 0;
              }

              FigSimpleMutexUnlock(*(a1 + 184));
              CFDictionarySetValue(*(a1 + 216), *(*(a1 + 224) + 88), *(a1 + 224));
              if (!v51)
              {
                figTimelineCoordinator_sendExpectedTimelineStateToGroupOnQueue(a1);
              }
            }

            *(a1 + 261) = 1;
          }
        }
      }
    }

    if (!*(a1 + 260))
    {
      v55 = *(a1 + 192);
      v56 = *(a1 + 224);
      *(a1 + 192) = v56;
      if (v56)
      {
        CFRetain(v56);
      }

      if (v55)
      {
        CFRelease(v55);
      }
    }

    *(a1 + 336) = 0;
    v57 = *(a1 + 208);
    if (v57)
    {
      CFRelease(v57);
      *(a1 + 208) = 0;
    }

    if (v7 == 1718185504)
    {
      v111 = *(a1 + 224);
      if (v111)
      {
        CFRelease(v111);
        *(a1 + 224) = 0;
      }

      goto LABEL_200;
    }

    if (v7 != 1786080624)
    {
      if (v7 == 1885435251)
      {
        v96 = v8;
        v97 = *(a1 + 368);
        v98 = OUTLINED_FUNCTION_9_15();
        v99 = FigCFWeakReferenceHolderCopyReferencedObject(*(a1 + 80));
        if (v99)
        {
          v107 = v99;
          v108 = *(a1 + 100);
          v109 = *(a1 + 224);
          if (*(a1 + 262) && (v100 = *(v109 + 24)) != 0)
          {
            v110 = CFUUIDCreateString(*v96, v100);
            v109 = *(a1 + 224);
          }

          else
          {
            v110 = 0;
          }

          v123 = *(v109 + 32);
          if (v123 == 0.0)
          {
            v124 = 0.0;
          }

          else
          {
            v124 = *(v109 + 32);
          }

          if (*(a1 + 340))
          {
            OUTLINED_FUNCTION_33_4();
          }

          figTimelineCoordinator_startTimeoutForTimelineControlCommandOnQueue(a1, v100, v101, v102, v103, v104, v105, v106);
          v125 = *(a1 + 224);
          if (v125)
          {
            v125 = CFRetain(v125);
          }

          v98[1] = v125;
          *v98 = CFRetain(a1);
          *(v98 + 4) = v108;
          *(v98 + 20) = v123 != 0.0;
          v126 = *(a1 + 56);
          *(a1 + 96) = 1;
          if (v123 == 0.0)
          {
            v127 = 0;
          }

          else
          {
            v127 = v97;
          }

          v126(v107, *(*(a1 + 224) + 88), *(*(a1 + 224) + 16), v123 != 0.0, v110, v127, *(a1 + 268), v98, v124, figTimelineCoordinator_timelineControlCommandCompletion, v207);
          if (v110)
          {
            if (!*(a1 + 258))
            {
              v159 = OUTLINED_FUNCTION_2_9();
              figTimelineCoordinator_postDidIssueSetRateCommandNotification(v124, v159, v160);
            }

            CFRelease(v110);
          }

          CFRelease(v107);
          v98 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_28_6();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v202, 0xFFFFC29DuLL, "<<<< FigTimelineCoordinator >>>>", 0xB71, v203, v204, v205);
        }

        free(v98);
        *(a1 + 304) = 0;
        *(a1 + 257) = 257;
        goto LABEL_200;
      }

      if (v7 == 1886545264)
      {
        v81 = *(a1 + 368);
        v82 = OUTLINED_FUNCTION_9_15();
        v83 = FigCFWeakReferenceHolderCopyReferencedObject(*(a1 + 80));
        if (v83)
        {
          v91 = v83;
          v92 = *(a1 + 224);
          if (*(v92 + 32) != 0.0)
          {
            v93 = v8;
            v94 = *(a1 + 100);
            if (*(a1 + 262) && (v84 = *(v92 + 24)) != 0)
            {
              v95 = CFUUIDCreateString(*v93, v84);
            }

            else
            {
              v95 = 0;
            }

            if (*(a1 + 340))
            {
              OUTLINED_FUNCTION_33_4();
            }

            figTimelineCoordinator_startTimeoutForTimelineControlCommandOnQueue(a1, v84, v85, v86, v87, v88, v89, v90);
            v144 = *(a1 + 224);
            if (v144)
            {
              v144 = CFRetain(v144);
            }

            v82[1] = v144;
            *v82 = CFRetain(a1);
            *(v82 + 4) = v94;
            *(v82 + 20) = 1;
            v145 = *(a1 + 64);
            *(a1 + 96) = 1;
            v145(v91, *(*(a1 + 224) + 88), *(*(a1 + 224) + 16), v95, v81, *(a1 + 268), v82, figTimelineCoordinator_timelineControlCommandCompletion, *(*(a1 + 224) + 32), p_time1, v207);
            if (v95)
            {
              if (!*(a1 + 258))
              {
                v161 = OUTLINED_FUNCTION_2_9();
                figTimelineCoordinator_postDidIssueSetRateCommandNotification(v163, v161, v162);
              }

              CFRelease(v95);
            }

            v82 = 0;
          }

          CFRelease(v91);
        }

        else
        {
          OUTLINED_FUNCTION_28_6();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v198, 0xFFFFC29DuLL, "<<<< FigTimelineCoordinator >>>>", 0xB36, v199, v200, v201);
        }

        free(v82);
        *(a1 + 304) = 0;
        goto LABEL_199;
      }

      if (v7 != 1918989413)
      {
        goto LABEL_200;
      }

      v58 = OUTLINED_FUNCTION_9_15();
      v59 = FigCFWeakReferenceHolderCopyReferencedObject(*(a1 + 80));
      memset(theArray, 0, 24);
      memset(&time1, 0, sizeof(time1));
      v60 = *(a1 + 100);
      memset(&time, 0, sizeof(time));
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&time, HostTimeClock);
      if (v59)
      {
        if (*(a1 + 262) && (v62 = *(*(a1 + 224) + 24)) != 0)
        {
          v69 = CFUUIDCreateString(*v8, v62);
        }

        else
        {
          v69 = 0;
        }

        if (*(a1 + 340))
        {
          OUTLINED_FUNCTION_33_4();
        }

        figTimelineCoordinator_startTimeoutForTimelineControlCommandOnQueue(a1, v62, v63, v64, v65, v66, v67, v68);
        v135 = *(a1 + 224);
        if (v135[52] & 1) != 0 && (v135[76])
        {
          theArray[0] = *(v135 + 40);
          time1 = *(v135 + 64);
          OUTLINED_FUNCTION_18_9(v135, v128, v129, v130, v131, v132, v133, v134, p_time1, v207, v208, v209, v210, cf, time2.value, *&time2.timescale, time2.epoch, v213, *(v135 + 8), *(v135 + 9), *(v135 + 10), v215, *&time.value);
          v136 = CMTimeCompare(&type, &time2);
          v135 = *(a1 + 224);
          if (v136 < 0)
          {
            time1 = time;
            type = time;
            figTimelineCoordinator_timelineTimeAtHostTime(v135, theArray);
            v135 = *(a1 + 224);
            if (!v135)
            {
              goto LABEL_163;
            }
          }

          else if (!v135)
          {
LABEL_163:
            v58[1] = v135;
            *v58 = CFRetain(a1);
            *(v58 + 4) = v60;
            *(v58 + 20) = 0;
            v137 = *(a1 + 40);
            *(a1 + 96) = 1;
            v138 = *(a1 + 352);
            v139 = *(a1 + 224);
            v140 = *(v139 + 16);
            v141 = *(v139 + 36);
            v142 = *(a1 + 268);
            type = theArray[0];
            time2 = time1;
            v137(v59, v138, v140, &type, &time2, v69, 0, v142, v141, v58, figTimelineCoordinator_timelineControlCommandCompletion);
            if (!v69)
            {
LABEL_197:
              CFRelease(v59);
              v58 = 0;
LABEL_198:
              free(v58);
              *(a1 + 304) = 0;
              *(a1 + 256) = 257;
LABEL_199:
              *(a1 + 258) = 1;
              goto LABEL_200;
            }

            if (*(a1 + 256))
            {
              v143 = 0;
            }

            else
            {
              time2 = *(a1 + 232);
              CMTimeAbsoluteValue(&type, &time2);
              CMTimeMake(&time2, 1, 1);
              v143 = CMTimeCompare(&type, &time2) >= 0;
            }

            v147 = *(*(a1 + 224) + 36);
            v149 = v147 != 0.0 && (v148 = *(a1 + 192), *(v148 + 36) == 0.0) && v147 == *(v148 + 32);
            if (*(a1 + 258) || !v143)
            {
              if (*(a1 + 258))
              {
                if (!v143 || v149)
                {
LABEL_196:
                  CFRelease(v69);
                  goto LABEL_197;
                }

                type = theArray[0];
LABEL_213:
                v167 = OUTLINED_FUNCTION_2_9();
                figTimelineCoordinator_postDidIssueSetTimeCommandNotification(v167, v168);
                goto LABEL_196;
              }

              v164 = OUTLINED_FUNCTION_2_9();
LABEL_225:
              figTimelineCoordinator_postDidIssueSetRateCommandNotification(v166, v164, v165);
              goto LABEL_196;
            }

            type = theArray[0];
            v155 = OUTLINED_FUNCTION_2_9();
LABEL_210:
            figTimelineCoordinator_postDidIssueSetRateAndTimeCommandNotification(v157, v155, v156);
            goto LABEL_196;
          }
        }

        v135 = CFRetain(v135);
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_28_6();
      v197 = 3094;
LABEL_256:
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v193, 0xFFFFC29DuLL, "<<<< FigTimelineCoordinator >>>>", v197, v194, v195, v196);
      goto LABEL_198;
    }

    v70 = *(a1 + 368);
    v58 = OUTLINED_FUNCTION_9_15();
    v71 = FigCFWeakReferenceHolderCopyReferencedObject(*(a1 + 80));
    if (!v71)
    {
      OUTLINED_FUNCTION_28_6();
      v197 = 2994;
      goto LABEL_256;
    }

    v59 = v71;
    v79 = *(a1 + 100);
    v80 = *(a1 + 224);
    if (*(a1 + 262) && (v72 = *(v80 + 24)) != 0)
    {
      v69 = CFUUIDCreateString(*v8, v72);
      v80 = *(a1 + 224);
    }

    else
    {
      v69 = 0;
    }

    v112 = *(a1 + 265) == 0;
    v113 = *(v80 + 32);
    if (v113 == 0.0)
    {
      v114 = 0.0;
    }

    else
    {
      v114 = *(v80 + 32);
    }

    if (*(a1 + 340))
    {
      OUTLINED_FUNCTION_33_4();
      v80 = *(a1 + 224);
    }

    theArray[0] = *(v80 + 40);
    if (*(v80 + 36) != 0.0 && (*(v80 + 76) & 1) != 0)
    {
      v158 = CMClockGetHostTimeClock();
      CMClockGetTime(&time, v158);
      figTimelineCoordinator_timelineTimeAtHostTime(v80, &time1);
      theArray[0] = time1;
    }

    figTimelineCoordinator_startTimeoutForTimelineControlCommandOnQueue(a1, v72, v73, v74, v75, v76, v77, v78);
    v115 = *(a1 + 224);
    if (v115)
    {
      v115 = CFRetain(v115);
    }

    v58[1] = v115;
    *v58 = CFRetain(a1);
    *(v58 + 4) = v79;
    *(v58 + 20) = v113 != 0.0;
    v116 = *(a1 + 48);
    *(a1 + 96) = 1;
    v117 = *(a1 + 224);
    v118 = *(v117 + 88);
    v119 = *(v117 + 16);
    if (v113 == 0.0)
    {
      v120 = 0;
    }

    else
    {
      v120 = v70;
    }

    v121 = *(a1 + 268);
    time1 = theArray[0];
    LODWORD(p_time1) = v121;
    v116(v59, v118, v119, &time1, v112, v113 != 0.0, v69, v120, v114, p_time1, v58, figTimelineCoordinator_timelineControlCommandCompletion);
    if (!v69)
    {
      goto LABEL_197;
    }

    if (*(a1 + 256))
    {
      if (*(a1 + 258))
      {
        v122 = 0;
        goto LABEL_184;
      }
    }

    else
    {
      time = *(a1 + 232);
      CMTimeAbsoluteValue(&time1, &time);
      CMTimeMake(&time, 1, 1);
      v146 = CMTimeCompare(&time1, &time);
      if (*(a1 + 258))
      {
        v122 = v146 >= 0;
LABEL_184:
        if (!*(a1 + 257) && !v122)
        {
          goto LABEL_196;
        }

        OUTLINED_FUNCTION_25_5();
        goto LABEL_213;
      }

      if ((v146 & 0x80000000) == 0)
      {
        OUTLINED_FUNCTION_25_5();
        v155 = OUTLINED_FUNCTION_2_9();
        v157 = v114;
        goto LABEL_210;
      }
    }

    v164 = OUTLINED_FUNCTION_2_9();
    v166 = v114;
    goto LABEL_225;
  }
}

size_t figTimelineCoordinator_sendExpectedTimelineStateToGroupOnQueue(uint64_t a1)
{
  v171 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 200);
  if (!v1)
  {
    OUTLINED_FUNCTION_5_28();
    v19 = 6051;
    goto LABEL_18;
  }

  if (*(v1 + 88))
  {
    OUTLINED_FUNCTION_19_9(v1);
    if (v3 || (OUTLINED_FUNCTION_23_8(), v3))
    {
      OUTLINED_FUNCTION_1_8();
      if (v3)
      {
        if (!*(a1 + 352))
        {
          OUTLINED_FUNCTION_5_28();
          v19 = 6053;
          goto LABEL_18;
        }

        v4 = *(a1 + 160);
        if (v4)
        {
          v5 = FigCFWeakReferenceHolderCopyReferencedObject(v4);
          if (!v5)
          {
            OUTLINED_FUNCTION_5_28();
            v19 = 6058;
            goto LABEL_18;
          }

          v6 = v5;
          v7 = *(a1 + 344);
          if (v7)
          {
            if (*(a1 + 280))
            {
              v8 = *(a1 + 200);
              if (!*(v8 + 24))
              {
                *(v8 + 24) = v7;
                CFRetain(v7);
                v8 = *(a1 + 200);
              }

              HIDWORD(v161) = 0;
              if (CFDictionaryContainsKey(*(a1 + 464), *(v8 + 88)))
              {
                FigCFDictionaryGetInt32IfPresent(*(a1 + 464), *(*(a1 + 200) + 88), &v161 + 4, v9, v10, v11, v12, v13, v160, v161, time2.value, *&time2.timescale, time2.epoch, v163, type.value, *&type.timescale, type.epoch, v165);
                v14 = HIDWORD(v161) + 1;
              }

              else
              {
                v14 = 1;
              }

              *(a1 + 456) = v14;
              v32 = *(a1 + 200);
              *(v32 + 100) = v14;
              FigCFDictionarySetInt32(*(a1 + 464), *(v32 + 88), v14, v9, v10, v11, v12, v13);
              StateLoggingIdentifier = *(a1 + 200);
              value = 0;
              if (StateLoggingIdentifier)
              {
                v34 = *MEMORY[0x1E695E480];
                Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                CFDictionarySetValue(Mutable, @"Identifier", StateLoggingIdentifier[2].length);
                v36 = CFUUIDCreateString(v34, StateLoggingIdentifier->length);
                CFDictionarySetValue(Mutable, @"OriginatorUUID", v36);
                FigCFDictionarySetFloat32(Mutable, @"Rate", *(&StateLoggingIdentifier[1].isa + 1), v37, v38, v39, v40, v41, v42);
                FigCFDictionarySetInt32(Mutable, @"LamportTimestamp", HIDWORD(StateLoggingIdentifier[3].isa), v43, v44, v45, v46, v47);
                if (*(&StateLoggingIdentifier[1].isa + 1) == 0.0)
                {
                  FigCFDictionarySetInt32(Mutable, @"SeekPrecision", StateLoggingIdentifier[3].isa, v48, v49, v50, v51, v52);
                  FigCFDictionarySetInt32(Mutable, @"PrerollRate", *&StateLoggingIdentifier[1].isa, v75, v76, v77, v78, v79);
                  OUTLINED_FUNCTION_31_4();
                  Seconds = CMTimeGetSeconds(&time);
                  FigCFDictionarySetDouble(Mutable, @"Time", Seconds, v81, v82, v83, v84, v85, v86);
                }

                else
                {
                  OUTLINED_FUNCTION_31_4();
                  v168 = *&StateLoggingIdentifier[2].isa;
                  memset(&v166, 0, sizeof(v166));
                  v53 = *(a1 + 544) == 0;
                  v54 = *(a1 + 176);
                  type = *&StateLoggingIdentifier[2].isa;
                  if (FigTimelineCoordinatorCopyNetworkTimeDictionaryForHostTime(v54, &type, v53, &value, v55, v56, v57, v58))
                  {
                    OUTLINED_FUNCTION_5_28();
                    v155 = 1678;
                    goto LABEL_91;
                  }

                  HostTimeClock = CMClockGetHostTimeClock();
                  v60 = CMClockGetTime(&v166, HostTimeClock);
                  OUTLINED_FUNCTION_18_9(v60, v61, v62, v63, v64, v65, v66, v67, v160, v161, time2.value, *&time2.timescale, time2.epoch, v163, type.value, *&type.timescale, type.epoch, v165, v166.value, *&v166.timescale, v166.epoch, value, *&v168.value);
                  time2 = v166;
                  if (CMTimeCompare(&type, &time2) < 0)
                  {
                    v168 = v166;
                    type = v166;
                    figTimelineCoordinator_timelineTimeAtHostTime(StateLoggingIdentifier, &time);
                    if (value)
                    {
                      CFRelease(value);
                      value = 0;
                    }

                    OUTLINED_FUNCTION_18_9(*(a1 + 176), v138, v139, v140, v141, v142, v143, v144, v160, v161, time2.value, *&time2.timescale, time2.epoch, v163, type.value, *&type.timescale, type.epoch, v165, v166.value, *&v166.timescale, v166.epoch, value, *&v168.value);
                    if (FigTimelineCoordinatorCopyNetworkTimeDictionaryForHostTime(v145, &type, v53, &value, v146, v147, v148, v149))
                    {
                      OUTLINED_FUNCTION_5_28();
                      v155 = 1691;
LABEL_91:
                      v87 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v150, v151, "<<<< FigTimelineCoordinator >>>>", v155, v152, v153, v154);
                      if (Mutable)
                      {
                        CFRelease(Mutable);
                        Mutable = 0;
                      }

                      StateLoggingIdentifier = 0;
                      goto LABEL_39;
                    }
                  }

                  type = time;
                  v68 = CMTimeGetSeconds(&type);
                  FigCFDictionarySetDouble(Mutable, @"Time", v68, v69, v70, v71, v72, v73, v74);
                  CFDictionarySetValue(Mutable, @"NetworkTime", value);
                }

                if (FigDebugIsInternalBuild())
                {
                  StateLoggingIdentifier = figTimelineCoordinator_createStateLoggingIdentifier(@"T/", v36, *(a1 + 384));
                  FigCFDictionarySetValue(Mutable, @"DebugInfo", StateLoggingIdentifier);
                }

                else
                {
                  StateLoggingIdentifier = 0;
                }

                v87 = 0;
                ++*(a1 + 384);
              }

              else
              {
                OUTLINED_FUNCTION_5_28();
                v87 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v156, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x67A, v157, v158, v159);
                Mutable = 0;
                v36 = 0;
              }

LABEL_39:
              if (value)
              {
                CFRelease(value);
              }

              if (StateLoggingIdentifier)
              {
                CFRelease(StateLoggingIdentifier);
              }

              if (v36)
              {
                CFRelease(v36);
              }

              if (!v87)
              {
                if (dword_1EAF1CF08)
                {
                  v88 = FigCFCopyCompactDescription(Mutable);
                  v96 = v88;
                  if (dword_1EAF1CF08)
                  {
                    v97 = OUTLINED_FUNCTION_14_12(v88, v89, v90, v91, v92, v93, v94, v95, v160, v161, time2.value, *&time2.timescale, time2.epoch, v163, type.value, *&type.timescale, type.epoch, v165, v166.value);
                    v98 = v166.value;
                    if (os_log_type_enabled(v97, type.value))
                    {
                      v99 = v98;
                    }

                    else
                    {
                      v99 = v98 & 0xFFFFFFFE;
                    }

                    if (v99)
                    {
                      LODWORD(v168.value) = 136315650;
                      *(&v168.value + 4) = "figTimelineCoordinator_sendExpectedTimelineStateToGroupOnQueue";
                      LOWORD(v168.flags) = 2112;
                      *(&v168.flags + 2) = a1;
                      HIWORD(v168.epoch) = 2114;
                      v169 = v96;
                      LODWORD(v161) = 32;
                      OUTLINED_FUNCTION_6_3();
                      _os_log_send_and_compose_impl();
                      LOBYTE(v98) = v166.value;
                    }

                    OUTLINED_FUNCTION_1_1();
                    fig_log_call_emit_and_clean_up_after_send_and_compose(v115, v116, v117, v118, v119, v98, 0, v120);
                  }

                  if (v96)
                  {
                    CFRelease(v96);
                  }
                }

                v121 = *(a1 + 136);
                *(a1 + 281) = 0;
                v121(v6, Mutable);
              }

              CFRelease(v6);
              if (Mutable)
              {
                CFRelease(Mutable);
              }

              return v87;
            }

            v21 = FigCFEqual(*(a1 + 352), *(a1 + 272));
            if (v21)
            {
              if (dword_1EAF1CF08)
              {
                v29 = OUTLINED_FUNCTION_14_12(v21, v22, v23, v24, v25, v26, v27, v28, v160, v161, time2.value, *&time2.timescale, time2.epoch, v163, type.value, *&type.timescale, type.epoch, v165, v166.value);
                v30 = v166.value;
                if (os_log_type_enabled(v29, type.value))
                {
                  v31 = v166.value;
                }

                else
                {
                  v31 = v166.value & 0xFFFFFFFE;
                }

                if (v31)
                {
                  LODWORD(v168.value) = 136315650;
                  OUTLINED_FUNCTION_15_11();
                  OUTLINED_FUNCTION_6_3();
                  _os_log_send_and_compose_impl();
                  v30 = v166.value;
                }

                OUTLINED_FUNCTION_1_1();
                fig_log_call_emit_and_clean_up_after_send_and_compose(v122, v123, v124, v125, v126, v30, 0, v127);
              }

              v128 = *(a1 + 288);
              v129 = *(a1 + 200);
              *(a1 + 288) = v129;
              if (v129)
              {
                CFRetain(v129);
              }

              if (v128)
              {
                CFRelease(v128);
              }
            }

            else
            {
              v100 = *(a1 + 272);
              v101 = *(a1 + 352);
              *(a1 + 272) = v101;
              if (v101)
              {
                CFRetain(v101);
              }

              if (v100)
              {
                CFRelease(v100);
              }

              v102 = malloc_type_malloc(0x10uLL, 0x60040FAFB2B2FuLL);
              *v102 = CFRetain(a1);
              v110 = *(a1 + 352);
              if (v110)
              {
                v110 = CFRetain(v110);
              }

              v102[1] = v110;
              v111 = *(a1 + 288);
              v112 = *(a1 + 200);
              *(a1 + 288) = v112;
              if (v112)
              {
                v112 = CFRetain(v112);
              }

              if (v111)
              {
                CFRelease(v111);
              }

              if (dword_1EAF1CF08)
              {
                v113 = OUTLINED_FUNCTION_14_12(v112, v103, v104, v105, v106, v107, v108, v109, v160, v161, time2.value, *&time2.timescale, time2.epoch, v163, type.value, *&type.timescale, type.epoch, v165, v166.value);
                v114 = os_log_type_enabled(v113, type.value);
                if (OUTLINED_FUNCTION_9_1(v114))
                {
                  LODWORD(v168.value) = 136315650;
                  OUTLINED_FUNCTION_15_11();
                  OUTLINED_FUNCTION_6_23();
                }

                OUTLINED_FUNCTION_1_1();
                OUTLINED_FUNCTION_13(v130, v131, v132, v133, v134, v135, v136, v137);
              }

              (*(a1 + 152))(v6, *(a1 + 352), v102, figTimelineCoordinator_reloadCompleteCallback);
            }
          }

          CFRelease(v6);
        }

        return 0;
      }
    }
  }

  OUTLINED_FUNCTION_5_28();
  v19 = 6052;
LABEL_18:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", v19, v16, v17, v18);
}

void figTimelineCoordinator_postDidIssueSetRateAndTimeCommandNotification(float a1, uint64_t a2, const void *a3)
{
  cf = 0;
  DidIssueCommandNotificationPayload = figTimelineCoordinator_createDidIssueCommandNotificationPayload(@"SetRateAndTime", a3, &cf);
  v11 = cf;
  if (!DidIssueCommandNotificationPayload && !FigCFDictionarySetFloat32(cf, @"Rate", a1, v5, v6, v7, v8, v9, v10))
  {
    OUTLINED_FUNCTION_2_8();
    if (!FigCFDictionarySetCMTime(v11, @"Time", &v19, v12, v13, v14, v15, v16))
    {
      v17 = OUTLINED_FUNCTION_2_9();
      figTimelineCoordinator_postDidIssueCommandNotification(v17, v18);
    }
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

void figTimelineCoordinator_postDidIssueSetRateCommandNotification(float a1, uint64_t a2, const void *a3)
{
  cf = 0;
  DidIssueCommandNotificationPayload = figTimelineCoordinator_createDidIssueCommandNotificationPayload(@"SetRate", a3, &cf);
  v11 = cf;
  if (!DidIssueCommandNotificationPayload && !FigCFDictionarySetFloat32(cf, @"Rate", a1, v5, v6, v7, v8, v9, v10))
  {
    v12 = OUTLINED_FUNCTION_2_9();
    figTimelineCoordinator_postDidIssueCommandNotification(v12, v13);
  }

  if (v11)
  {

    CFRelease(v11);
  }
}

void figTimelineCoordinator_postDidIssueSetTimeCommandNotification(uint64_t a1, const void *a2)
{
  cf = 0;
  DidIssueCommandNotificationPayload = figTimelineCoordinator_createDidIssueCommandNotificationPayload(@"SetTime", a2, &cf);
  v3 = cf;
  if (!DidIssueCommandNotificationPayload)
  {
    OUTLINED_FUNCTION_2_8();
    if (!FigCFDictionarySetCMTime(v3, @"Time", &v11, v4, v5, v6, v7, v8))
    {
      v9 = OUTLINED_FUNCTION_2_9();
      figTimelineCoordinator_postDidIssueCommandNotification(v9, v10);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t figTimelineCoordinator_triggerTimelineChangesAfterParticipantChangeOnQueue(uint64_t result)
{
  if (!*(result + 96))
  {
    v1 = result;
    result = figTimelineCoordinator_isReadyToPickAnchorTimeOnQueue(result);
    if (result)
    {
      if (*(v1 + 200))
      {
        OUTLINED_FUNCTION_17_8();

        return figTimelineCoordinator_transitionToNewExpectedTimelineIssuingCommandsWhenAppropriateOnQueue();
      }
    }
  }

  return result;
}

void figTimelineCoordinator_coordinateTimeJumpOnQueue(uint64_t a1, int a2, int a3, int a4, uint64_t a5, void *a6, int a7, int a8)
{
  v52 = 0;
  v51 = 0.0;
  cf = 0;
  HIBYTE(v49) = 0;
  if (!*(a1 + 352))
  {
    goto LABEL_32;
  }

  FigCFDictionaryGetBooleanIfPresent(a4, @"AlreadyCompletedJump", &v49 + 7, a4, a5, a6, a7, a8, v37, v40, v43, *(&v43 + 1), v44, v45, v46, v47, v48, v49);
  FigCFDictionaryGetBooleanIfPresent(a4, @"ResumeImmediately", &v52, v13, v14, v15, v16, v17, v38, v41, v43, *(&v43 + 1), v44, v45, v46, v47, v48, v49);
  FigCFDictionaryGetFloat32IfPresent(a4, @"AlreadyPreparedForRate", &v51, v18, v19, v20, v21, v22, v39, v42, v43, *(&v43 + 1), v44, v45, v46, v47, v48, v49);
  v24 = v52 == 0;
  if (a3 && (v25 = *(a1 + 200)) != 0)
  {
    v26 = *(v25 + 36);
    v27 = 1;
  }

  else
  {
    v25 = *(a1 + 192);
    if (!v25)
    {
      v27 = 0;
      v26 = 0.0;
      goto LABEL_10;
    }

    v27 = 0;
    v26 = *(v25 + 36);
  }

  if (v26 == 0.0)
  {
    v26 = *(v25 + 32);
  }

LABEL_10:
  v29 = v26 == v51 && v23 != 0;
  if (!*(a1 + 304))
  {
    v29 = 0;
    HIBYTE(v49) = 0;
    v27 = 1;
  }

  v30 = 0.0;
  if (v26 == 0.0 || CFArrayGetCount(*(a1 + 432)) > 0)
  {
    v29 = 0;
LABEL_23:
    if (*(a1 + 340) == v29)
    {
      goto LABEL_24;
    }

    v35 = (a1 + 340);
    v36 = v26;
    v26 = v30;
    goto LABEL_36;
  }

  if (*(a1 + 360))
  {
    v30 = v26;
    v26 = 0.0;
    goto LABEL_23;
  }

  *(a1 + 360) = 1;
  v36 = 0.0;
  if (*(a1 + 340) == v29)
  {
    goto LABEL_37;
  }

  v35 = (a1 + 340);
LABEL_36:
  *v35 = v29;
LABEL_37:
  v30 = v26;
  figTimelineCoordinator_sendParticipantStateToGroupOnQueue(a1);
  v26 = v36;
LABEL_24:
  OUTLINED_FUNCTION_27_6();
  v43 = *&kCMTimeInvalid.value;
  v44 = 0;
  if (!figTimelineCoordinatorTimelineStateCreateInternal(v30, v26, v31, v32, &v46, &v43, 0, v33, a5, 0xFFFFFFFFLL, 0, 0, &cf))
  {
    if (a6)
    {
      v34 = cf;
      if (cf)
      {
        v34 = CFRetain(cf);
      }

      *a6 = v34;
    }

    if (CFArrayGetCount(*(a1 + 432)) <= 0)
    {
      OUTLINED_FUNCTION_27_6();
      figTimelineCoordinator_postDidIssueSetTimeCommandNotification(a1, 0);
    }

    figTimelineCoordinator_transitionToNewExpectedTimelineIssuingCommandsWhenAppropriateOnQueue(a1, cf, 1u, v24, 0, SHIBYTE(v49), v27 == 0, 1);
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }
}

size_t figTimelineCoordinator_resetGroupExpectationsOnQueue(uint64_t a1)
{
  *(a1 + 280) = 0;
  v2 = *(a1 + 272);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 272) = 0;
  }

  if (FigCFDictionaryGetCount(*(a1 + 328)))
  {
    FigSimpleMutexLock(*(a1 + 320));
    CFDictionaryRemoveAllValues(*(a1 + 328));
    FigSimpleMutexUnlock(*(a1 + 320));
    figTimelineCoordinator_postParticipantsDidChange(a1);
  }

  CFDictionaryRemoveAllValues(*(a1 + 216));
  figTimelineCoordinator_sendParticipantStateToGroupOnQueue(a1);
  v8 = *(a1 + 200);
  if (!v8)
  {
    return 0;
  }

  if (*(v8 + 24))
  {
    cf = 0;
    result = figTimelineCoordinatorTimelineStateCopy(*MEMORY[0x1E695E480], v8, &cf, v3, v4, v5, v6, v7);
    if (result)
    {
      return result;
    }

    FigSimpleMutexLock(*(a1 + 184));
    v10 = *(a1 + 200);
    v11 = cf;
    *(a1 + 200) = cf;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    FigSimpleMutexUnlock(*(a1 + 184));
    if (cf)
    {
      CFRelease(cf);
    }

    v8 = *(a1 + 200);
  }

  CFDictionarySetValue(*(a1 + 216), *(v8 + 88), v8);
  return figTimelineCoordinator_sendExpectedTimelineStateToGroupOnQueue(a1);
}

uint64_t figTimelineCoordinator_removeValueFromArray(CFArrayRef theArray, const void *a2)
{
  result = 0;
  if (theArray && a2)
  {
    v6.length = CFArrayGetCount(theArray);
    v6.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(theArray, v6, a2);
    if (FirstIndexOfValue == -1)
    {
      return 0;
    }

    else
    {
      CFArrayRemoveValueAtIndex(theArray, FirstIndexOfValue);
      return 1;
    }
  }

  return result;
}

void figTimelineCoordinator_updateParticipantsWithNewLocalIdentifierApply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  v6 = participantState_timelineIdentifier(*(a2 + 16));
  if (!FigCFEqual(v5, *(a2 + 24)))
  {
    v12 = *(a2 + 16);
    HIBYTE(_8[0]) = 0;
    FigCFDictionaryGetBooleanIfPresent(v12, @"ReadyToSetNonZeroRate", _8 + 7, v7, v8, v9, v10, v11, v15, _8[0], _8[1], _8[2], _8[3], _8[4], _8[5], _8[6], _8[7], _8[8]);
    if (HIBYTE(_8[0]))
    {
      if (FigCFEqual(v5, v6))
      {
        v13 = 0;
      }

      else
      {
        v13 = FigCFEqual(*(a2 + 24), v6) == 0;
      }
    }

    else
    {
      v13 = 1;
    }

    v14 = *(a2 + 24);
    *(a2 + 24) = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (!v13)
    {
      *(a3 + 8) = 1;
    }
  }
}

uint64_t FigTimelineCoordinatorMakeHostTimeFromNetworkTimeDictionary_cold_1(const CMBlockBufferCustomBlockSource *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", a1, v8, a7, a8);
  if (!v10)
  {
    return 1;
  }

  v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, v10, "<<<< FigTimelineCoordinator >>>>", 0x3B9, v8, v11, v12);
  result = 0;
  *a4 = v13;
  return result;
}

size_t FigTimelineCoordinatorMakeHostTimeFromNetworkTimeDictionary_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x3B4, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorMakeHostTimeFromNetworkTimeDictionary_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x3B3, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorCopyNetworkTimeDictionaryForHostTime_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A2uLL, "<<<< FigTimelineCoordinator >>>>", 0x375, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorCopyNetworkTimeDictionaryForHostTime_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A2uLL, "<<<< FigTimelineCoordinator >>>>", 0x399, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorCopyNetworkTimeDictionaryForHostTime_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x3CF, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorSuspensionCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A2uLL, "<<<< FigTimelineCoordinator >>>>", 0x471, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorSuspensionCreate_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x46E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorSuspensionCreate_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x46D, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorHandleUpdatedTimelineStateFromMedium_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0xF6E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorHandleUpdatedParticipantStateFromMedium_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x104C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorHandleReplacementOfAllParticipantStatesFromMedium_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x10A1, v8, a7, a8);
  *a1 = result;
  return result;
}

uint64_t FigTimelineCoordinatorCopyParticipantSnapshotForUUID_cold_1(os_unfair_lock_s **a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x13DF, v8, a7, a8);
  v10 = *a1;

  return FigSimpleMutexUnlock(v10);
}

size_t FigTimelineCoordinatorCopyParticipantSnapshotForUUID_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x13D9, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorCopyParticipantSnapshotForUUID_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x13D8, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorCopyParticipantSnapshotForUUID_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x13D7, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorCopyParticipantSnapshots_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x13F7, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorCopyParticipantSnapshots_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x13F6, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorHandleRemovalOfParticipantStateFromMedium_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x142F, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorHandleRemovalOfParticipantStateFromMedium_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x142E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorCopyActiveSuspensionReasons_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A2uLL, "<<<< FigTimelineCoordinator >>>>", 0x1468, v8, a7, a8);
  *a1 = result;
  return result;
}

uint64_t figTimelineCoordinator_endSuspensionOnQueue_cold_2(uint64_t a1)
{
  if (!*(a1 + 200) && *(a1 + 281) || !figTimelineCoordinator_othersAreSuspended(a1))
  {
    return 1;
  }

  result = figTimelineCoordinator_othersAreSuspended(a1);
  if (result)
  {
    result = 0;
    *(a1 + 360) = 1;
  }

  return result;
}

void figTimelineCoordinator_endSuspensionOnQueue_cold_3(uint64_t a1, uint64_t *a2)
{
  *(a1 + 360) = 1;
  figTimelineCoordinator_sendParticipantStateToGroupOnQueue(a1);
  figTimelineCoordinator_transitionToNewExpectedTimelineIssuingCommandsWhenAppropriateOnQueue(a1, *a2, 8u, 1, 0, 0, 1, 1);
}

size_t FigTimelineCoordinatorGetExpectedGroupTimeForIdentifier_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x172D, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorGetExpectedGroupTimeForIdentifier_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x172C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorGetExpectedGroupTimeForIdentifier_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x172B, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorSetWeakMediumAndCallbacks_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1899, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorSetWeakMediumAndCallbacks_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x189C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorSetWeakMediumAndCallbacks_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x189B, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorSetWeakMediumAndCallbacks_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x189A, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figTimelineCoordinatorTimelineStateCreateInternal_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x546, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figTimelineCoordinatorTimelineStateCreateInternal_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x547, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figTimelineCoordinatorTimelineStateCreateInternal_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A2uLL, "<<<< FigTimelineCoordinator >>>>", 0x54D, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figTimelineCoordinatorTimelineStateCreateInternal_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x53C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorSetProperty_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1A0F, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorSetProperty_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1A0D, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorSetProperty_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1A9E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorSetProperty_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1AA7, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorSetProperty_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1A97, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorSetProperty_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1A96, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorCopyProperty_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1ABD, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorCopyProperty_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1ABC, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigTimelineCoordinatorCopyProperty_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1ABB, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetTimelineCoordinatorSuspension_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1B9D, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyTimelineCoordinatorSuspension_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1BAC, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetTimelineCoordinatorParticipantSnapshot_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1BD3, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageCopyTimelineCoordinatorParticipantSnapshot_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1BFB, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigXPCMessageSetTimelineCoordinatorParticipantSnapshots_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CF00, 0xFFFFC2A1uLL, "<<<< FigTimelineCoordinator >>>>", 0x1C10, v8, a7, a8);
  *a1 = result;
  return result;
}