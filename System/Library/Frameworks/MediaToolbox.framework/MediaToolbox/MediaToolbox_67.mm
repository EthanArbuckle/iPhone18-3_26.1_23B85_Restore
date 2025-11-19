uint64_t fvfbintern_objGetProtectionOptions(uint64_t a1, uint64_t *a2)
{
  if (dword_1ED4CBED0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    fvfbintern_objGetProtectionOptions_cold_2();
    v5 = 4294955226;
    goto LABEL_9;
  }

  v4 = FigXPCCreateBasicMessage();
  if (v4)
  {
    v5 = v4;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
LABEL_13:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  if (qword_1ED4CB9C0 != -1)
  {
    FigVirtualFramebufferClientSourceScreenCreateIOS_cold_1();
  }

  v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v5)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    goto LABEL_13;
  }

  *a2 = xpc_dictionary_get_uint64(0, "ProtOptions");
LABEL_9:
  FigXPCRelease();
  FigXPCRelease();
  return v5;
}

void fvfbsrc_objFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (*DerivedStorage || *(DerivedStorage + 24))
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    __break(1u);
  }

  else
  {
    v2 = *(DerivedStorage + 40);
    if (v2)
    {
      CFRelease(v2);
      *(DerivedStorage + 40) = 0;
    }

    v3 = *(DerivedStorage + 48);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 48) = 0;
    }

    v4 = *(DerivedStorage + 56);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 56) = 0;
    }

    v5 = *(DerivedStorage + 32);
    if (v5)
    {
      dispatch_release(v5);
      *(DerivedStorage + 32) = 0;
    }
  }
}

CFStringRef fvfbsrc_objCopyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *MEMORY[0x1E695E480];
  v4 = *DerivedStorage;
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v3, 0, @"<VirtualFramebufSource %p state: %d retainCount: %ld>", a1, v4, v5);
}

uint64_t fvfbsrc_objCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(@"sourceType", a2))
  {
    v8 = CFRetain(@"Screen");
    result = 0;
    *a4 = v8;
  }

  else
  {
    v10 = *(DerivedStorage + 24);
    if (v10)
    {
      CMBaseObject = FigVirtualDisplayProcessorGetCMBaseObject(v10);
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v12)
      {

        return v12(CMBaseObject, a2, a3, a4);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      fvfbsrc_objCopyProperty_cold_1();
      return 3758097097;
    }
  }

  return result;
}

uint64_t fvfbsrc_objPlugProcessor(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvfbsrc_objPlugProcessor_block_invoke;
    block[3] = &unk_1E7494D48;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v15;
    dispatch_sync(v4, block);
    v5 = *(v16 + 6);
    if (v5)
    {
      v14 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v14;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v19 = 136315650;
        v20 = "fvfbsrc_objPlugProcessor";
        v21 = 1024;
        v22 = 2380;
        v23 = 1024;
        v24 = v5;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = *(v16 + 6);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = 4294955226;
    *(v16 + 6) = -12070;
  }

  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t fvfbsrc_objUnplugProcessor(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvfbsrc_objUnplugProcessor_block_invoke;
    block[3] = &unk_1E7494D70;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[4] = &v15;
    dispatch_sync(v4, block);
    v5 = *(v16 + 6);
    if (v5)
    {
      v14 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = v14;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v19 = 136315650;
        v20 = "fvfbsrc_objUnplugProcessor";
        v21 = 1024;
        v22 = 2400;
        v23 = 1024;
        v24 = v5;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = *(v16 + 6);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v14 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v6 = 4294955226;
    *(v16 + 6) = -12070;
  }

  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t fvfbsrc_objStart(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbsrc_objStart_block_invoke;
  block[3] = &unk_1E7494D98;
  block[4] = &v10;
  block[5] = DerivedStorage;
  block[6] = a1;
  block[7] = a2;
  dispatch_sync(v5, block);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t fvfbsrc_objStop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __fvfbsrc_objStop_block_invoke;
  v5[3] = &__block_descriptor_tmp_156;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

uint64_t fvfbsrc_objSuspend(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbsrc_objSuspend_block_invoke;
  block[3] = &unk_1E7494DE0;
  block[4] = &v8;
  block[5] = DerivedStorage;
  block[6] = a1;
  dispatch_sync(v3, block);
  v4 = 0;
  if (*(v9 + 6))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t fvfbsrc_objResume(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvfbsrc_objResume_block_invoke;
  block[3] = &unk_1E7494E08;
  block[4] = &v8;
  block[5] = DerivedStorage;
  block[6] = a1;
  dispatch_sync(v3, block);
  v4 = 0;
  if (*(v9 + 6))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = *(v9 + 6);
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

CFTypeRef *__fvfbsrc_objPlugProcessor_block_invoke(CFTypeRef *result)
{
  v1 = result;
  v2 = result[5];
  if (*v2 || v2[3])
  {
    *(*(result[4] + 1) + 24) = -12073;
  }

  else
  {
    result = CFRetain(result[6]);
    *(v1[5] + 3) = v1[6];
  }

  return result;
}

void __fvfbsrc_objUnplugProcessor_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*v2 && (v3 = *(v2 + 24), v3 == a1[6]))
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1[5] + 24) = 0;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

uint64_t __fvfbsrc_objStart_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*v2 || !*(v2 + 24))
  {
    result = 4294955226;
  }

  else
  {
    result = _fvfbsrc_start(*(a1 + 48), *(a1 + 56));
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _fvfbsrc_start(uint64_t a1, const __CFDictionary *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[1] = 0;
  v63 = 0;
  v61 = 0;
  cf[0] = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"clientName");
    v5 = CFDictionaryGetValue(a2, @"clientAuditToken");
  }

  else
  {
    Value = 0;
    v5 = 0;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  xdict = 0;
  v67 = 0;
  if (*(v6 + 16))
  {
    _fvfbsrc_start_cold_1();
  }

  v7 = FigXPCCreateBasicMessage();
  if (v7 || (v7 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v7))
  {
    v9 = v7;
    v65 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
    *(v6 + 16) = uint64;
    if (!uint64)
    {
      _fvfbsrc_start_cold_2();
      v9 = 4294955226;
      goto LABEL_10;
    }

    v9 = FigXPCRemoteClientAssociateObject();
    if (!v9)
    {
      goto LABEL_10;
    }

    v65 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  if (v9)
  {
    LODWORD(v67) = 0;
    LOBYTE(xdict) = 0;
    v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
    goto LABEL_82;
  }

  FigCFDictionaryGetBooleanIfPresent();
  v10 = *MEMORY[0x1E695E480];
  CMBaseObject = FigVirtualDisplayProcessorGetCMBaseObject(*(DerivedStorage + 24));
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(CMBaseObject, @"SupportsRotation", v10, cf);
  }

  v13 = FigVirtualDisplayProcessorGetCMBaseObject(*(DerivedStorage + 24));
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, @"ProtectionFlags", v10, &v58);
  }

  v15 = FigVirtualDisplayProcessorGetCMBaseObject(*(DerivedStorage + 24));
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(v15, @"VirtualDisplayMode", v10, &v61);
  }

  v17 = *(DerivedStorage + 24);
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v18)
  {
    v9 = 4294954514;
LABEL_40:
    LODWORD(v67) = 0;
    LOBYTE(xdict) = 0;
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v34 = v67;
    if (os_log_type_enabled(v33, xdict))
    {
      v35 = v34;
    }

    else
    {
      v35 = v34 & 0xFFFFFFFE;
    }

    if (!v35)
    {
      goto LABEL_82;
    }

    v68 = 136315650;
    v69 = "_fvfbsrc_start";
    v70 = 1024;
    v71 = 2475;
    v72 = 1024;
    v73 = v9;
LABEL_45:
    _os_log_send_and_compose_impl();
LABEL_82:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_83;
  }

  v19 = v18(v17, &v60, &v59);
  if (v19)
  {
    v9 = v19;
    goto LABEL_40;
  }

  v20 = FigXPCCreateBasicMessage();
  if (v20)
  {
    v9 = v20;
    LODWORD(v67) = 0;
    LOBYTE(xdict) = 0;
    v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v40 = v67;
    if (os_log_type_enabled(v39, xdict))
    {
      v41 = v40;
    }

    else
    {
      v41 = v40 & 0xFFFFFFFE;
    }

    if (!v41)
    {
      goto LABEL_82;
    }

    v68 = 136315650;
    v69 = "_fvfbsrc_start";
    v70 = 1024;
    v71 = 2478;
    v72 = 1024;
    v73 = v9;
    goto LABEL_45;
  }

  v21 = FigXPCMessageSetCFArray();
  if (v21)
  {
    v9 = v21;
    LODWORD(v67) = 0;
    LOBYTE(xdict) = 0;
    v42 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v43 = v67;
    if (os_log_type_enabled(v42, xdict))
    {
      v44 = v43;
    }

    else
    {
      v44 = v43 & 0xFFFFFFFE;
    }

    if (!v44)
    {
      goto LABEL_82;
    }

    v68 = 136315650;
    v69 = "_fvfbsrc_start";
    v70 = 1024;
    v71 = 2481;
    v72 = 1024;
    v73 = v9;
    goto LABEL_45;
  }

  v22 = FigXPCMessageSetCFArray();
  if (v22)
  {
    v9 = v22;
    LODWORD(v67) = 0;
    LOBYTE(xdict) = 0;
    v45 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v46 = v67;
    if (os_log_type_enabled(v45, xdict))
    {
      v47 = v46;
    }

    else
    {
      v47 = v46 & 0xFFFFFFFE;
    }

    if (!v47)
    {
      goto LABEL_82;
    }

    v68 = 136315650;
    v69 = "_fvfbsrc_start";
    v70 = 1024;
    v71 = 2484;
    v72 = 1024;
    v73 = v9;
    goto LABEL_45;
  }

  v23 = FigXPCMessageSetCFDictionary();
  if (v23)
  {
    v9 = v23;
    LODWORD(v67) = 0;
    LOBYTE(xdict) = 0;
    v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v49 = v67;
    if (os_log_type_enabled(v48, xdict))
    {
      v50 = v49;
    }

    else
    {
      v50 = v49 & 0xFFFFFFFE;
    }

    if (!v50)
    {
      goto LABEL_82;
    }

    v68 = 136315650;
    v69 = "_fvfbsrc_start";
    v70 = 1024;
    v71 = 2487;
    v72 = 1024;
    v73 = v9;
    goto LABEL_45;
  }

  v24 = FigXPCMessageSetCFString();
  if (v24)
  {
    v9 = v24;
    LODWORD(v67) = 0;
    LOBYTE(xdict) = 0;
    v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v52 = v67;
    if (os_log_type_enabled(v51, xdict))
    {
      v53 = v52;
    }

    else
    {
      v53 = v52 & 0xFFFFFFFE;
    }

    if (!v53)
    {
      goto LABEL_82;
    }

    v68 = 136315650;
    v69 = "_fvfbsrc_start";
    v70 = 1024;
    v71 = 2490;
    v72 = 1024;
    v73 = v9;
    goto LABEL_45;
  }

  v25 = FigXPCMessageSetCFData();
  if (v25)
  {
    v9 = v25;
    LODWORD(v67) = 0;
    LOBYTE(xdict) = 0;
    v54 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v55 = v67;
    if (os_log_type_enabled(v54, xdict))
    {
      v56 = v55;
    }

    else
    {
      v56 = v55 & 0xFFFFFFFE;
    }

    if (!v56)
    {
      goto LABEL_82;
    }

    v68 = 136315650;
    v69 = "_fvfbsrc_start";
    v70 = 1024;
    v71 = 2493;
    v72 = 1024;
    v73 = v9;
    goto LABEL_45;
  }

  xpc_dictionary_set_BOOL(v63, "Rotation", cf[0] == *MEMORY[0x1E695E4D0]);
  xpc_dictionary_set_BOOL(v63, "SuspendOnStart", 0);
  v26 = v63;
  SInt64 = FigCFNumberGetSInt64();
  xpc_dictionary_set_uint64(v26, "ProtFlags", SInt64);
  v28 = *(DerivedStorage + 48);
  *(DerivedStorage + 48) = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(DerivedStorage + 56);
  *(DerivedStorage + 56) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  *DerivedStorage = 2;
  v9 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v9)
  {
    LODWORD(v67) = 0;
    LOBYTE(xdict) = 0;
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v31 = v67;
    if (os_log_type_enabled(v30, xdict))
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 & 0xFFFFFFFE;
    }

    if (!v32)
    {
      goto LABEL_82;
    }

    v68 = 136315650;
    v69 = "_fvfbsrc_start";
    v70 = 1024;
    v71 = 2504;
    v72 = 1024;
    v73 = v9;
    goto LABEL_45;
  }

LABEL_83:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  FigXPCRelease();
  FigXPCRelease();
  if (v9 && *(DerivedStorage + 16))
  {
    fvfb_sendSyncMessage();
    _fvfbsrc_stop();
  }

  return v9;
}

uint64_t fvfb_sendSyncMessage()
{
  v0 = FigXPCCreateBasicMessage();
  if (v0)
  {
    v1 = v0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_6:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_3;
  }

  v1 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v1)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    goto LABEL_6;
  }

LABEL_3:
  FigXPCRelease();
  FigXPCRelease();
  return v1;
}

void _fvfbsrc_stop()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    FigXPCRemoteClientDisassociateObject();
    *(DerivedStorage + 16) = 0;
  }

  CFDictionaryRemoveAllValues(*(DerivedStorage + 40));
  v1 = *(DerivedStorage + 48);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 48) = 0;
  }

  v2 = *(DerivedStorage + 56);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 56) = 0;
  }

  *(DerivedStorage + 64) = 0;
  *DerivedStorage = 0;
}

void __fvfbsrc_objStop_block_invoke(uint64_t a1)
{
  if (**(a1 + 32))
  {
    fvfb_sendSyncMessage();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    _fvfbsrc_stop();
  }
}

uint64_t __fvfbsrc_objSuspend_block_invoke(uint64_t result)
{
  v1 = result;
  v2 = **(result + 40);
  if (v2)
  {
    if (v2 == 2)
    {
      result = fvfb_sendSyncMessage();
      *(*(*(v1 + 32) + 8) + 24) = result;
      if (!*(*(*(v1 + 32) + 8) + 24))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        result = fig_log_call_emit_and_clean_up_after_send_and_compose();
        v4 = *(v1 + 40);
        v4[16] = 0;
        *v4 = 1;
      }
    }
  }

  else
  {
    *(*(*(result + 32) + 8) + 24) = -12070;
  }

  return result;
}

uint64_t __fvfbsrc_objResume_block_invoke(uint64_t result)
{
  v1 = result;
  if (**(result + 40) == 1)
  {
    result = fvfb_sendSyncMessage();
    *(*(*(v1 + 32) + 8) + 24) = result;
    if (!*(*(*(v1 + 32) + 8) + 24))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
      **(v1 + 40) = 2;
    }
  }

  else
  {
    *(*(*(result + 32) + 8) + 24) = -12070;
  }

  return result;
}

void __fvfb_getClient_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"FVFBServerDied");
  FigCFDictionarySetInt32();
  v2 = FigXPCRemoteClientCreate();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v2)
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void fvfbsrc_handleDeadConnection(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  v3 = *(DerivedStorage + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __fvfbsrc_handleDeadConnection_block_invoke;
  v4[3] = &__block_descriptor_tmp_165_0;
  v4[4] = DerivedStorage;
  v4[5] = a1;
  dispatch_async(v3, v4);
}

uint64_t fvfbsrc_handleServerMessage(int a1, xpc_object_t xdict)
{
  remote_connection = xpc_dictionary_get_remote_connection(xdict);
  xdicta = xpc_dictionary_create_reply(xdict);
  if (xdicta)
  {
    FigXPCMessageGetOpCode();
    if (dword_1ED4CBED0 >= 4)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1ED4CBED0 >= 4)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    xpc_dictionary_set_int64(xdicta, *MEMORY[0x1E6961590], -536870199);
    xpc_connection_send_message(remote_connection, xdicta);
  }

  else
  {
    fvfbsrc_handleServerMessage_cold_15();
  }

  FigXPCRelease();
  return 3758097097;
}

uint64_t OUTLINED_FUNCTION_0_182()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_1_171@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 40) = a1;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_19_41()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_20_36()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFRunLoopSourceRef OUTLINED_FUNCTION_40_21(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, CFRunLoopSourceContext *context)
{

  return CFRunLoopSourceCreate(v27, 0, &context);
}

BOOL OUTLINED_FUNCTION_41_25(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_44_22(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_type_t type, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigVideoCompositorPropertiesGetRenderDimensions(const __CFDictionary *a1, CGSize *a2)
{
  size.width = 0.0;
  size.height = 0.0;
  Value = CFDictionaryGetValue(a1, @"RenderDimensions");
  if (!Value || (v4 = Value, v5 = CFGetTypeID(Value), v5 != CFDictionaryGetTypeID()))
  {
    FigVideoCompositorPropertiesGetRenderDimensions_cold_2(&v8);
    return v8;
  }

  if (!CGSizeMakeWithDictionaryRepresentation(v4, &size))
  {
    FigVideoCompositorPropertiesGetRenderDimensions_cold_1(&v8);
    return v8;
  }

  result = 0;
  *a2 = size;
  return result;
}

uint64_t FigVideoCompositorSetDestinationPixelBufferColorProperties(__CVBuffer *a1, CFDictionaryRef theDict, const __CFArray *a3)
{
  Value = CFDictionaryGetValue(theDict, @"DestinationPixelBufferDesiredColorPrimaries");
  if (Value)
  {
    v7 = CFRetain(Value);
  }

  else
  {
    v7 = 0;
  }

  v8 = CFDictionaryGetValue(theDict, @"DestinationPixelBufferDesiredTransferFunction");
  if (v8)
  {
    v9 = CFRetain(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = CFDictionaryGetValue(theDict, @"DestinationPixelBufferDesiredYCbCrMatrix");
  if (v10)
  {
    v11 = CFRetain(v10);
  }

  else
  {
    v11 = 0;
  }

  Count = CFArrayGetCount(a3);
  v13 = MEMORY[0x1E6965D88];
  if (Count < 1)
  {
    v18 = 0;
    v17 = 0;
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  v14 = CFArrayGetCount(a3);
  ValueAtIndex = CFArrayGetValueAtIndex(a3, v14 - 1);
  SourcePixelBuffer = FigVCLayerDefinitionGetSourcePixelBuffer(ValueAtIndex);
  v17 = SourcePixelBuffer;
  v18 = SourcePixelBuffer != 0;
  if (!v7 && SourcePixelBuffer)
  {
    v7 = CVBufferCopyAttachment(SourcePixelBuffer, *v13, 0);
    v18 = 1;
  }

  if (!v7)
  {
LABEL_29:
    v7 = CFRetain(*MEMORY[0x1E6965DB8]);
  }

LABEL_15:
  v19 = MEMORY[0x1E6965F30];
  if (v9 == 0 && v18)
  {
    v9 = CVBufferCopyAttachment(v17, *MEMORY[0x1E6965F30], 0);
  }

  if (!v9)
  {
    v9 = CFRetain(*MEMORY[0x1E6965F50]);
  }

  v20 = MEMORY[0x1E6965F98];
  if (v11 == 0 && v18)
  {
    v11 = CVBufferCopyAttachment(v17, *MEMORY[0x1E6965F98], 0);
  }

  if (!v11)
  {
    v11 = CFRetain(*MEMORY[0x1E6965FD0]);
  }

  v21 = *MEMORY[0x1E6965D00];
  if (!v18 || (v22 = CVBufferCopyAttachment(v17, *MEMORY[0x1E6965D00], 0)) == 0)
  {
    v22 = CFRetain(*MEMORY[0x1E6965D30]);
  }

  CVBufferSetAttachment(a1, *v13, v7, kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(a1, *v19, v9, kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(a1, *v20, v11, kCVAttachmentMode_ShouldPropagate);
  CVBufferSetAttachment(a1, v21, v22, kCVAttachmentMode_ShouldPropagate);
  v23 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  if (v23)
  {
    v24 = v23;
    ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v23);
    CFRelease(v24);
  }

  else
  {
    ColorSpaceFromAttachments = 0;
  }

  CVBufferSetAttachment(a1, *MEMORY[0x1E6965CE8], ColorSpaceFromAttachments, kCVAttachmentMode_ShouldPropagate);
  CGColorSpaceRelease(ColorSpaceFromAttachments);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return 0;
}

uint64_t FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture(const __CFDictionary *a1, _DWORD *a2, _OWORD *a3, void *a4)
{
  size.width = 0.0;
  size.height = 0.0;
  v35 = 1.0;
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  *&v34.a = *MEMORY[0x1E695EFD0];
  *&v34.c = v8;
  *&v34.tx = *(MEMORY[0x1E695EFD0] + 32);
  v33 = 0;
  Value = CFDictionaryGetValue(a1, @"RenderDimensions");
  if (!Value || (v10 = Value, v11 = CFGetTypeID(Value), v11 != CFDictionaryGetTypeID()))
  {
    FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_5(&v30);
    return LODWORD(v30.a);
  }

  if (!CGSizeMakeWithDictionaryRepresentation(v10, &size))
  {
    FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_1(&v30);
    return LODWORD(v30.a);
  }

  v12 = CFDictionaryGetValue(a1, @"RenderPixelAspectRatio");
  v13 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v14 = *MEMORY[0x1E6965EF0];
  if (!CFDictionaryGetValue(v12, *MEMORY[0x1E6965EF0]) || (v15 = CFDictionaryGetValue(v13, v14), v16 = CFGetTypeID(v15), v16 != CFNumberGetTypeID()))
  {
    FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_3(&v30);
    return LODWORD(v30.a);
  }

  v17 = *MEMORY[0x1E6965F00];
  if (!CFDictionaryGetValue(v13, *MEMORY[0x1E6965F00]) || (v18 = CFDictionaryGetValue(v13, v17), v19 = CFGetTypeID(v18), v19 != CFNumberGetTypeID()))
  {
    FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_2(&v30);
    return LODWORD(v30.a);
  }

LABEL_9:
  v20 = CFDictionaryGetValue(a1, @"RenderEdgeProcessingPixels");
  v21 = v20;
  if (v20)
  {
    v22 = CFGetTypeID(v20);
    if (v22 != CFArrayGetTypeID())
    {
      FigVideoCompositorCopyRenderPixelBufferDimensionsAndCleanAperture_cold_4(&v30);
      return LODWORD(v30.a);
    }
  }

  FigCFDictionaryGetFloat32IfPresent();
  v31 = 0;
  v32 = 0;
  v23 = FigVideoCompositorUtilityCopyRenderPixelBufferDimensionsAndCleanAperture(v13, v21, &v32, &v31, &v34, &v33, size.width, size.height, v35);
  if (v23)
  {
    v26 = v33;
  }

  else
  {
    CGAffineTransformMakeScale(&t2, v35, v35);
    v28 = v34;
    CGAffineTransformConcat(&v30, &v28, &t2);
    v34 = v30;
    if (a2)
    {
      v24 = v31;
      *a2 = v32;
      a2[1] = v24;
    }

    if (a3)
    {
      v25 = *&v34.c;
      *a3 = *&v34.a;
      a3[1] = v25;
      a3[2] = *&v34.tx;
    }

    v26 = v33;
    if (a4)
    {
      v23 = 0;
      *a4 = v33;
      return v23;
    }
  }

  if (v26)
  {
    CFRelease(v26);
  }

  return v23;
}

uint64_t FigVideoCompositorCreateDesiredSourcePixelBufferAttributes(uint64_t a1, CFIndex a2, CFMutableDictionaryRef *a3)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigVideoCompositorCreateDesiredSourcePixelBufferAttributes_cold_2(&v15);
    return v15;
  }

  v8 = Mutable;
  v9 = CFArrayCreateMutable(v6, a2, MEMORY[0x1E695E9C0]);
  if (!v9)
  {
    FigVideoCompositorCreateDesiredSourcePixelBufferAttributes_cold_1(&v14);
    v12 = v14;
LABEL_10:
    CFRelease(v8);
    return v12;
  }

  for (i = v9; a2; --a2)
  {
    a1 += 4;
    FigCFArrayAppendInt32();
  }

  CFDictionarySetValue(v8, *MEMORY[0x1E6966130], i);
  IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
  CFDictionarySetValue(v8, *MEMORY[0x1E69660D8], IOSurfacePropertiesDictionary);
  if (a3)
  {
    *a3 = v8;
    v8 = 0;
  }

  if (IOSurfacePropertiesDictionary)
  {
    CFRelease(IOSurfacePropertiesDictionary);
  }

  CFRelease(i);
  v12 = 0;
  result = 0;
  if (v8)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t FigWebVTTFormatWriterCreateWithByteStream(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    FigWebVTTFormatWriterCreateWithByteStream_cold_3(&v11);
    return v11;
  }

  if (!a4)
  {
    FigWebVTTFormatWriterCreateWithByteStream_cold_2(&v11);
    return v11;
  }

  if (FigCFDictionaryGetStringValue() && !FigCFEqual())
  {
    FigWebVTTFormatWriterCreateWithByteStream_cold_1(&v11);
    return v11;
  }

  FigFormatWriterGetClassID();
  v7 = CMDerivedObjectCreate();
  if (!v7)
  {
    FigFormatWriterGetFigBaseObject(0);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v9 = DerivedStorage;
      v7 = ffw_vtt_buildPipeline(a1, 0, a2);
      if (!v7)
      {
        *v9 = 0;
        v9[12] = 0;
        *a4 = 0;
      }
    }

    else
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM();
    }
  }

  return v7;
}

uint64_t ffw_vtt_buildPipeline(uint64_t a1, uint64_t a2, const void *a3)
{
  FigFormatWriterGetFigBaseObject(a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v7 = FigCaptionTimelineGeneratorCreate(a1, ffw_vtt_WriteFigCaptions, a2, &v14);
  if (v7 || (v7 = FigVTTSerializerCreateForByteStream(a1, a3, &v15), v7) || (v7 = FigVTTDocumentWriterCreateForVTT(a1, v15, &cf), v7))
  {
    v8 = v7;
  }

  else
  {
    v8 = FigVTTCaptionWriterCreateForDocument(a1, cf, &v17);
    if (!v8)
    {
      v10 = cf;
      v9 = v17;
      cf = 0;
      v17 = 0;
      DerivedStorage[1] = v9;
      DerivedStorage[2] = v10;
      v12 = v14;
      v11 = v15;
      v14 = 0;
      v15 = 0;
      DerivedStorage[3] = v11;
      DerivedStorage[4] = v12;
      goto LABEL_6;
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v8;
}

uint64_t ffw_vtt_createByteStreamBasedOnBlockBuffer(const __CFAllocator *a1, void *a2, CMBlockBufferRef *a3)
{
  blockBufferOut = 0;
  v5 = CMBlockBufferCreateEmpty(a1, 0, 0, &blockBufferOut);
  if (v5)
  {
    WritableForBlockBuffer = v5;
  }

  else
  {
    WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer();
    if (!WritableForBlockBuffer)
    {
      *a2 = 0;
      *a3 = blockBufferOut;
      return WritableForBlockBuffer;
    }
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return WritableForBlockBuffer;
}

uint64_t ffw_vtt_Invalidate(uint64_t a1)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigVTTCaptionWriterInvalidate(DerivedStorage[1]);
  FigVTTDocumentWriterInvalidate(DerivedStorage[2]);
  FigVTTSerializerInvalidate(DerivedStorage[3]);
  return 0;
}

void ffw_vtt_Finalize(uint64_t a1)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ffw_vtt_releasePipeline(a1);
  v3 = DerivedStorage[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[15];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[16];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t ffw_vtt_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    ffw_vtt_CopyProperty_cold_2(&v12);
    return LODWORD(v12.value);
  }

  if (!a4)
  {
    ffw_vtt_CopyProperty_cold_1(&v12);
    return LODWORD(v12.value);
  }

  v8 = DerivedStorage;
  if (CFEqual(@"PreferredOutputSegmentInterval", a2))
  {
    *&v12.value = *(v8 + 72);
    v9 = *(v8 + 88);
  }

  else
  {
    if (!CFEqual(@"InitialSegmentStartTime", a2))
    {
      return 4294954666;
    }

    *&v12.value = *(v8 + 96);
    v9 = *(v8 + 112);
  }

  v12.epoch = v9;
  v10 = CMTimeCopyAsDictionary(&v12, a3);
  result = 0;
  *a4 = v10;
  return result;
}

uint64_t ffw_vtt_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    ffw_vtt_SetProperty_cold_3(&v10);
    return LODWORD(v10.value);
  }

  v6 = DerivedStorage;
  if (CFEqual(@"PreferredOutputSegmentInterval", a2))
  {
    if (a3)
    {
      v7 = CFGetTypeID(a3);
      if (v7 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&v10, a3);
        result = 0;
        v6[3] = v10;
        return result;
      }
    }

    ffw_vtt_SetProperty_cold_1(&v10);
    return LODWORD(v10.value);
  }

  if (CFEqual(@"InitialSegmentStartTime", a2))
  {
    if (a3)
    {
      v9 = CFGetTypeID(a3);
      if (v9 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&v10, a3);
        result = 0;
        v6[4] = v10;
        return result;
      }
    }

    ffw_vtt_SetProperty_cold_2(&v10);
    return LODWORD(v10.value);
  }

  return 4294954666;
}

void ffw_vtt_releasePipeline(uint64_t a1)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[4];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[4] = 0;
  }

  v3 = DerivedStorage[3];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[3] = 0;
  }

  v4 = DerivedStorage[1];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[1] = 0;
  }

  v5 = DerivedStorage[2];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[2] = 0;
  }
}

uint64_t ffw_vtt_AddTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 == 1952807028)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      if (*(DerivedStorage + 48))
      {
        ffw_vtt_AddTrack_cold_2(&v10);
        return v10;
      }

      else
      {
        result = 0;
        *(v7 + 48) = 1;
        *a4 = 1;
      }
    }

    else
    {
      ffw_vtt_AddTrack_cold_3(&v11);
      return v11;
    }
  }

  else
  {
    ffw_vtt_AddTrack_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t ffw_vtt_CopyTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4, uint64_t a5)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    if (a5)
    {
      v10 = DerivedStorage;
      if (*(DerivedStorage + 48) == a2)
      {
        if (CFEqual(@"LanguageTag", a3) || CFEqual(@"ExtendedLanguageTag", a3))
        {
          v11 = *(v10 + 16);

          return FigVTTDocumentWriterCopyProperty(v11, @"languageIdentifier", a4, a5);
        }

        else
        {
          return 4294954512;
        }
      }

      else
      {
        ffw_vtt_CopyTrackProperty_cold_1(&v13);
        return v13;
      }
    }

    else
    {
      ffw_vtt_CopyTrackProperty_cold_2(&v14);
      return v14;
    }
  }

  else
  {
    ffw_vtt_CopyTrackProperty_cold_3(&v15);
    return v15;
  }
}

uint64_t ffw_vtt_SetTrackProperty(uint64_t a1, int a2, const void *a3, uint64_t a4)
{
  FigFormatWriterGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) == a2)
  {
    if (a3)
    {
      if (a4)
      {
        v8 = DerivedStorage;
        if (CFEqual(@"LanguageTag", a3) || CFEqual(@"ExtendedLanguageTag", a3))
        {
          v9 = *(v8 + 16);

          return FigVTTDocumentWriterSetProperty(v9, @"languageIdentifier", a4);
        }

        else
        {
          return 4294954512;
        }
      }

      else
      {
        ffw_vtt_SetTrackProperty_cold_2(&v12);
        return v12;
      }
    }

    else
    {
      ffw_vtt_SetTrackProperty_cold_3(&v13);
      return v13;
    }
  }

  else
  {
    ffw_vtt_SetTrackProperty_cold_1(&v11);
    return v11;
  }
}

uint64_t ffw_vtt_createCaptionGroupConverter(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v7[0] = ffw_vtt_CaptionGroupConverterCallback;
  v7[1] = a2;
  v4 = FigWebVTTCaptionGroupConverterFromSampleBufferCreate(v7, a1, &cf);
  if (v4)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = cf;
  }

  return v4;
}

uint64_t ffw_vtt_CaptionGroupConverterCallback(uint64_t a1, __int128 *a2, uint64_t a3)
{
  FigFormatWriterGetFigBaseObject(a3);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  if (a1)
  {
    v7 = DerivedStorage;
    v11 = *a2;
    v12 = *(a2 + 2);
    v8 = FigSampleBufferCreateForCaptionGroup();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = FigCaptionTimelineGeneratorAddSampleBuffer(*(v7 + 32), v13);
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_4;
  }

  ffw_vtt_CaptionGroupConverterCallback_cold_1(&v11);
  v9 = v11;
  if (v11)
  {
LABEL_4:
    ffw_vtt_postErrorOccurredNotification(a3, v9);
  }

LABEL_5:
  if (v13)
  {
    CFRelease(v13);
  }

  return v9;
}

void ffw_vtt_postErrorOccurredNotification(uint64_t a1, int a2)
{
  valuePtr = a2;
  if (a2 == -17887)
  {
    valuePtr = -17540;
  }

  v2 = *MEMORY[0x1E695E480];
  cf = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (cf)
  {
    v3 = CFDictionaryCreate(v2, kFigFormatWriterNotificationParameter_OSStatus, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v3 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v3)
  {
    CFRelease(v3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

CMTime *ffw_vtt_getSampleBufferOutputPresentationEndTime@<X0>(opaqueCMSampleBuffer *a1@<X0>, uint64_t a2@<X8>)
{
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetOutputPresentationTimeStamp(&v8, a1);
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetOutputDuration(&v7, a1);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  lhs = v8;
  v5 = v7;
  return CMTimeAdd(a2, &lhs, &v5);
}

uint64_t ffw_vtt_WriteFigCaptions(const __CFArray *a1, CMTime *a2, uint64_t a3)
{
  FigFormatWriterGetFigBaseObject(a3);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v28 = 0;
  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v8 = Count;
  v9 = 0;
  v10 = *MEMORY[0x1E695E480];
  v11 = MEMORY[0x1E6960C98];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v13)
    {
      v13(&v25, ValueAtIndex);
    }

    else
    {
      v14 = v11[1];
      v25 = *v11;
      v26 = v14;
      v27 = v11[2];
    }

    v21 = v25;
    *&v22 = v26;
    time2 = *a2;
    if (!CMTimeCompare(&v21, &time2))
    {
      if (v28)
      {
        CFRelease(v28);
        v28 = 0;
      }

      CMBaseObject = FigCaptionGetCMBaseObject(ValueAtIndex);
      v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v16)
      {
        v19 = 4294954514;
        goto LABEL_16;
      }

      v17 = v16(CMBaseObject, @"CaptionData", v10, &v28);
      if (v17)
      {
        break;
      }

      v18 = *(DerivedStorage + 8);
      v21 = v25;
      v22 = v26;
      v23 = v27;
      v17 = FigVTTCaptionWriterAddCaption(v18, v28, &v21);
      if (v17)
      {
        break;
      }
    }

    if (v8 == ++v9)
    {
      v19 = 0;
      goto LABEL_17;
    }
  }

  v19 = v17;
LABEL_16:
  ffw_vtt_postErrorOccurredNotification(a3, v19);
LABEL_17:
  if (v28)
  {
    CFRelease(v28);
  }

  return v19;
}

uint64_t OUTLINED_FUNCTION_2_164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time2, uint64_t a6, uint64_t a7, uint64_t a8, CMTime *time1, __int128 a10, uint64_t a11, __int128 time2a, uint64_t time2_16, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, __int128 a20, uint64_t a21)
{
  time2a = a20;
  time2_16 = a21;

  return CMTimeCompare(&time1a, &time2a);
}

CMTime *OUTLINED_FUNCTION_5_118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, uint64_t a6, uint64_t a7, uint64_t a8, CMTime *lhs, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 lhsa, uint64_t lhs_16)
{
  lhsa = *(v20 + 136);
  lhs_16 = *(v20 + 152);
  *v21 = *(v20 + 72);
  *(v22 - 96) = *(v20 + 88);

  return CMTimeAdd(&a13, &lhsa, (v22 - 112));
}

uint64_t OUTLINED_FUNCTION_7_90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time1, uint64_t a6, uint64_t a7, uint64_t a8, CMTime *time2, __int128 a10, uint64_t a11, __int128 time1a, uint64_t time1_16, uint64_t a14, uint64_t a15, uint64_t a16, __int128 time2a, uint64_t time2_16, __int128 a19, uint64_t a20)
{
  time1a = *(v20 + 136);
  time1_16 = *(v20 + 152);
  time2a = a19;
  time2_16 = a20;

  return CMTimeCompare(&time1a, &time2a);
}

CMTime *OUTLINED_FUNCTION_12_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  a22 = 0;
  a23 = 0;
  a24 = 0;

  return ffw_vtt_getSampleBufferOutputPresentationEndTime(v24, &a22);
}

CMTime *OUTLINED_FUNCTION_13_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTimeRange *range, CMTime *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t rangea, uint64_t range_8, uint64_t range_16, uint64_t range_24, uint64_t range_32, uint64_t range_40, uint64_t a19)
{

  return CMTimeRangeGetEnd(&a19, &rangea);
}

uint64_t registerVideoReceiverConfigurationSchedulerClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerCreate(uint64_t a1, NSObject *a2, OpaqueCMTimebase *a3, uint64_t a4, uint64_t *a5)
{
  if (!a3)
  {
    FigVideoReceiverConfigurationSchedulerCreate_cold_5(&v20);
    return v20;
  }

  if (!a5)
  {
    FigVideoReceiverConfigurationSchedulerCreate_cold_4();
    return 0;
  }

  if (_MergedGlobals_125 != -1)
  {
    FigVideoReceiverConfigurationSchedulerCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigVideoReceiverConfigurationSchedulerCreate_cold_3(&v19);
    return v19;
  }

  v9 = Instance;
  *(Instance + 32) = 0;
  v10 = FigSimpleMutexCreate();
  *(v9 + 40) = v10;
  if (!v10)
  {
    v17 = 264;
LABEL_22:
    FigVideoReceiverConfigurationSchedulerCreate_cold_2(v17, &v18);
    v15 = v18;
    goto LABEL_23;
  }

  v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a2);
  *(v9 + 16) = v11;
  if (!v11)
  {
    v17 = 267;
    goto LABEL_22;
  }

  v12 = FigReentrantMutexCreate();
  *(v9 + 88) = v12;
  if (!v12)
  {
    v17 = 270;
    goto LABEL_22;
  }

  v13 = FigSimpleMutexCreate();
  *(v9 + 112) = v13;
  if (!v13)
  {
    v17 = 273;
    goto LABEL_22;
  }

  v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v14)
  {
    v17 = 276;
    goto LABEL_22;
  }

  dispatch_set_context(*(v9 + 16), v14);
  dispatch_set_finalizer_f(*(v9 + 16), configurationScheduler_finalizeConfigurationSourceTimer);
  dispatch_source_set_timer(*(v9 + 16), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler_f(*(v9 + 16), configurationScheduler_timerSourceActivation);
  dispatch_activate(*(v9 + 16));
  v15 = CMTimebaseAddTimerDispatchSource(a3, *(v9 + 16));
  if (v15)
  {
LABEL_23:
    CFRelease(v9);
    return v15;
  }

  *(v9 + 24) = CFRetain(a3);
  *a5 = v9;
  return v15;
}

void configurationScheduler_finalizeConfigurationSourceTimer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime(uint64_t a1, const void *a2, __int128 *a3)
{
  if (!a1)
  {
    FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime_cold_4(&v21);
    return v21;
  }

  if (!a2)
  {
    FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime_cold_3(&v21);
    return v21;
  }

  if ((*(a3 + 12) & 1) == 0)
  {
    FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime_cold_2(&v21);
    return v21;
  }

  v6 = a1 + 40;
  FigSimpleMutexLock();
  v21 = *a3;
  v22 = *(a3 + 2);
  v7 = malloc_type_calloc(1uLL, 0x28uLL, 0x102004060DBCA02uLL);
  v8 = v7;
  if (v7)
  {
    *(v7 + 8) = v21;
    *(v7 + 3) = v22;
    *v7 = CFRetain(a2);
  }

  else if ((FigVideoReceiverConfigurationSchedulerAddConfigurationWithActivationTime_cold_1(&v21, v6, &time1) & 1) == 0)
  {
    return LODWORD(time1.value);
  }

  v11 = *(v6 - 8);
  v10 = (v6 - 8);
  v9 = v11;
  if (v11)
  {
    time1 = *a3;
    v12 = *(v9 + 8);
    v19.epoch = *(v9 + 24);
    *&v19.value = v12;
    v13 = CMTimeCompare(&time1, &v19);
    v14 = *v10;
    if (v13 >= 1)
    {
      while (v14)
      {
        v15 = v14;
        v14 = *(v14 + 32);
        if (!v14)
        {
          v10 = (v15 + 32);
          goto LABEL_14;
        }

        time1 = *a3;
        v16 = *(v14 + 8);
        v19.epoch = *(v14 + 24);
        *&v19.value = v16;
        if (CMTimeCompare(&time1, &v19) <= 0)
        {
          v17 = *(v15 + 32);
          v10 = (v15 + 32);
          v14 = v17;
          goto LABEL_14;
        }
      }

      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  *(v8 + 4) = v14;
  *v10 = v8;
  v8 = 0;
LABEL_15:
  FigSimpleMutexUnlock();
  configurationScheduler_ensureTimerIsScheduledForNextActivation(a1);
  if (v8)
  {
    CFRelease(*v8);
    free(v8);
  }

  return 0;
}

uint64_t configurationScheduler_ensureTimerIsScheduledForNextActivation(uint64_t a1)
{
  v8 = **&MEMORY[0x1E6960C70];
  if (FigVideoReceiverConfigurationSchedulerFindEarliestTimeToActivate(a1, &v8))
  {
    FigSimpleMutexLock();
    if (*(a1 + 60))
    {
      lhs = v8;
      v5 = *(a1 + 48);
      CMTimeSubtract(&fireTime, &lhs, &v5);
      v8 = fireTime;
    }

    FigSimpleMutexUnlock();
  }

  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  fireTime = v8;
  return CMTimebaseSetTimerDispatchSourceNextFireTime(v2, v3, &fireTime, 1u);
}

uint64_t FigVideoReceiverConfigurationSchedulerCopyBestConfigurationForHostTime(uint64_t a1, uint64_t a2, CMTime *a3, void *a4)
{
  if (!a1)
  {
    FigVideoReceiverConfigurationSchedulerCopyBestConfigurationForHostTime_cold_2(&time1);
    return LODWORD(time1.value);
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    FigVideoReceiverConfigurationSchedulerCopyBestConfigurationForHostTime_cold_1(&time1);
    return LODWORD(time1.value);
  }

  FigSimpleMutexLock();
  v8 = *(a1 + 32);
  do
  {
    if (!v8)
    {
      FigSimpleMutexUnlock();
      goto LABEL_18;
    }

    v9 = v8;
    v8 = *(v8 + 32);
    if (!v8)
    {
      break;
    }

    time1 = *a2;
    v10 = *(v8 + 8);
    v14.epoch = *(v8 + 24);
    *&v14.value = v10;
  }

  while ((CMTimeCompare(&time1, &v14) & 0x80000000) == 0);
  if (*v9)
  {
    v11 = CFRetain(*v9);
  }

  else
  {
    v11 = 0;
  }

  time1 = *(v9 + 8);
  FigSimpleMutexUnlock();
  if (v11)
  {
    if (a4)
    {
      *a4 = v11;
      v11 = 0;
    }

    if (a3)
    {
      *a3 = time1;
    }

    if (v11)
    {
      CFRelease(v11);
    }

    return 0;
  }

LABEL_18:
  if (a3)
  {
    result = 0;
    v13 = MEMORY[0x1E6960C70];
    *&a3->value = *MEMORY[0x1E6960C70];
    a3->epoch = *(v13 + 16);
    return result;
  }

  return 0;
}

uint64_t FigVideoReceiverConfigurationSchedulerCopyAllConfigurations(uint64_t a1, CFAllocatorRef allocator, __CFArray **a3)
{
  if (a1)
  {
    if (a3)
    {
      Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v6 = Mutable;
        FigSimpleMutexLock();
        for (i = *(a1 + 32); i; i = *(i + 32))
        {
          CFArrayAppendValue(v6, *i);
        }

        FigSimpleMutexUnlock();
        result = 0;
        *a3 = v6;
      }

      else
      {
        FigVideoReceiverConfigurationSchedulerCopyAllConfigurations_cold_1(&v9);
        return v9;
      }
    }

    else
    {
      FigVideoReceiverConfigurationSchedulerCopyAllConfigurations_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    FigVideoReceiverConfigurationSchedulerCopyAllConfigurations_cold_3(&v11);
    return v11;
  }

  return result;
}

uint64_t FigVideoReceiverConfigurationSchedulerPruneConfigurationsBeforeHostTime(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if ((*(a2 + 12) & 1) == 0)
    {
      v5 = MEMORY[0x1E6960C88];
      *a2 = *MEMORY[0x1E6960C88];
      *(a2 + 16) = *(v5 + 16);
    }

    *&v10.value = *a2;
    v10.epoch = *(a2 + 16);
    FigSimpleMutexLock();
    while (1)
    {
      v6 = *(a1 + 32);
      if (!v6)
      {
        break;
      }

      v7 = *(v6 + 8);
      time1.epoch = *(v6 + 24);
      *&time1.value = v7;
      time2 = v10;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        if (!a3)
        {
          break;
        }

        v8 = *(v6 + 8);
        time1.epoch = *(v6 + 24);
        *&time1.value = v8;
        time2 = v10;
        if (CMTimeCompare(&time1, &time2))
        {
          break;
        }
      }

      *(a1 + 32) = *(*(a1 + 32) + 32);
      configurationScheduler_announceRemovalOfConfiguration(a1, *v6);
      CFRelease(*v6);
      free(v6);
    }

    FigSimpleMutexUnlock();
    configurationScheduler_ensureTimerIsScheduledForNextActivation(a1);
    return 0;
  }

  else
  {
    FigVideoReceiverConfigurationSchedulerPruneConfigurationsBeforeHostTime_cold_1(&time1);
    return LODWORD(time1.value);
  }
}

uint64_t FigVideoReceiverConfigurationSchedulerReset(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    while (1)
    {
      v2 = *(a1 + 32);
      if (!v2)
      {
        break;
      }

      *(a1 + 32) = v2[4];
      configurationScheduler_announceRemovalOfConfiguration(a1, *v2);
      CFRelease(*v2);
      free(v2);
    }

    FigSimpleMutexUnlock();
    configurationScheduler_ensureTimerIsScheduledForNextActivation(a1);
    return 0;
  }

  else
  {
    FigVideoReceiverConfigurationSchedulerReset_cold_1(&v4);
    return v4;
  }
}

void configurationScheduler_announceRemovalOfConfiguration(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 96);
  if (v4)
  {
    if (!*(a1 + 104))
    {
      v6 = 0;
      v4(a1, a2, 0);
LABEL_9:
      FigSimpleMutexUnlock();
      if (v6)
      {

        CFRelease(v6);
      }

      return;
    }

    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      v6 = v5;
      (*(a1 + 96))(a1, a2, v5);
      goto LABEL_9;
    }
  }

  FigSimpleMutexUnlock();
}

uint64_t FigVideoReceiverConfigurationSchedulerFindEarliestTimeToActivate(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      v4 = *(a1 + 32);
      FigSimpleMutexUnlock();
      if (v4)
      {
        v5 = *(v4 + 8);
        *(a2 + 16) = *(v4 + 24);
        *a2 = v5;
        return 1;
      }
    }

    else
    {
      FigVideoReceiverConfigurationSchedulerFindEarliestTimeToActivate_cold_1();
    }
  }

  else
  {
    FigVideoReceiverConfigurationSchedulerFindEarliestTimeToActivate_cold_2();
  }

  return 0;
}

uint64_t FigVideoReceiverConfigurationSchedulerSetConfigurationIsReadyToActivateCallack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    FigSimpleMutexLock();
    v8 = *(a1 + 80);
    if (a4)
    {
      v9 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a2 + 16);
    *(a1 + 48) = *a2;
    *(a1 + 72) = a3;
    *(a1 + 80) = v9;
    *(a1 + 64) = v10;
    FigSimpleMutexUnlock();
    if (v8)
    {
      CFRelease(v8);
    }

    return 0;
  }

  else
  {
    FigVideoReceiverConfigurationSchedulerSetConfigurationIsReadyToActivateCallack_cold_1(&v12);
    return v12;
  }
}

uint64_t FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback_cold_2(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  v6 = *(a1 + 104);
  if (a3)
  {
    v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (!v7)
    {
      FigVideoReceiverConfigurationSchedulerSetConfigurationWasRemovedCallback_cold_1(&v10);
      v8 = v10;
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = v7;
LABEL_7:
  FigSimpleMutexUnlock();
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

double configurationScheduler_init(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void configurationScheduler_finalize(uint64_t a1)
{
  FigVideoReceiverConfigurationSchedulerReset(a1);
  if (*(a1 + 40))
  {
    FigSimpleMutexDestroy();
    *(a1 + 40) = 0;
  }

  CMTimebaseRemoveTimerDispatchSource(*(a1 + 24), *(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 16) = 0;
  }

  *(a1 + 72) = 0;
  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 80) = 0;
  }

  if (*(a1 + 88))
  {
    FigSimpleMutexDestroy();
    *(a1 + 88) = 0;
  }

  if (*(a1 + 112))
  {
    FigSimpleMutexDestroy();
    *(a1 + 112) = 0;
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 104) = 0;
  }

  *(a1 + 96) = 0;
}

CFStringRef configurationScheduler_copyFormattingDesc(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigVideoReceiverConfigurationScheduler %p | retainCount %d>", a1, v3);
}

CFStringRef configurationScheduler_copyDebugDesc(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"<FigVideoReceiverConfigurationScheduler %p | retainCount %d>", a1, v3);
}

uint64_t RegisterFPSTimelineConverterType()
{
  result = _CFRuntimeRegisterClass();
  sFPSTimelineConverterTypeID = result;
  return result;
}

double fpstc_L2TimeToL3Locked@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *a3 = *a2;
  *(a3 + 16) = *(a2 + 2);
  v6 = *(a1 + 32);
  if (v6)
  {
    Length = CFDataGetLength(v6);
    if (Length >= 1)
    {
      CFDataGetBytePtr(*(a1 + 32));
    }

    if (Length >= 0x60)
    {
      CMSpeedRampMapTimeFromSourceToTarget();
      *&v5 = v9;
      *a3 = v9;
      *(a3 + 16) = v10;
    }
  }

  return *&v5;
}

uint64_t fpstc_L3TimeToL2Locked@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a2;
  *(a3 + 16) = *(a2 + 16);
  result = *(a1 + 32);
  if (result)
  {
    result = CFDataGetLength(result);
    v5 = result;
    if (result >= 1)
    {
      result = CFDataGetBytePtr(*(a1 + 32));
    }

    if (v5 >= 0x60)
    {
      return CMSpeedRampMapTimeFromTargetToSource();
    }
  }

  return result;
}

double fpstc_L3TimeToL4Locked@<D0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  v5 = *MEMORY[0x1E6960C70];
  *a3 = *MEMORY[0x1E6960C70];
  *(a3 + 16) = *(v4 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    v9 = *a2;
    HostTimeClock = CMClockGetHostTimeClock();
    CMSyncConvertTime(&v10, &v9, v6, HostTimeClock);
    *&v5 = v10.value;
    *a3 = v10;
  }

  return *&v5;
}

double fpstc_L4TimeToL3Locked@<D0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  v5 = *MEMORY[0x1E6960C70];
  *a3 = *MEMORY[0x1E6960C70];
  *(a3 + 16) = *(v4 + 16);
  if (*(a1 + 24))
  {
    v9 = *a2;
    HostTimeClock = CMClockGetHostTimeClock();
    CMSyncConvertTime(&v10, &v9, HostTimeClock, *(a1 + 24));
    *&v5 = v10.value;
    *a3 = v10;
  }

  return *&v5;
}

uint64_t FPSTimelineConverterSetProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!a1)
  {
    FPSTimelineConverterSetProperty_cold_5(&v9);
    return v9;
  }

  if (!a2)
  {
    FPSTimelineConverterSetProperty_cold_4(&v9);
    return v9;
  }

  if (!FigCFEqual())
  {
    if (!FigCFEqual())
    {
      return 4294954512;
    }

    if (!a3)
    {
      goto LABEL_11;
    }

    v6 = CFGetTypeID(a3);
    if (v6 == CFDataGetTypeID())
    {
      if (FigSpeedRampDataIsValid(a3))
      {
LABEL_11:
        FigSimpleMutexLock();
        v7 = *(a1 + 32);
        *(a1 + 32) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v7)
        {
          CFRelease(v7);
        }

        FigSimpleMutexUnlock();
        v5 = 0;
        goto LABEL_16;
      }

      FPSTimelineConverterSetProperty_cold_3(&v9);
    }

    else
    {
      FPSTimelineConverterSetProperty_cold_2(&v9);
    }

    v5 = v9;
LABEL_16:
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    return v5;
  }

  FigSimpleMutexLock();
  if (!FigCFEqual())
  {
    FPSTimelineConverterSetProperty_cold_1((a1 + 24), a3);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FPSTimelineConverterCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        if (FigCFEqual())
        {
          FigSimpleMutexLock();
          v6 = *(a1 + 24);
          if (!v6)
          {
LABEL_7:
            *a4 = v6;
            FigSimpleMutexUnlock();
            return 0;
          }

LABEL_6:
          v6 = CFRetain(v6);
          goto LABEL_7;
        }

        if (FigCFEqual())
        {
          FigSimpleMutexLock();
          v6 = *(a1 + 32);
          if (!v6)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

        return 4294954512;
      }

      else
      {
        FPSTimelineConverterCopyProperty_cold_1(&v8);
        return v8;
      }
    }

    else
    {
      FPSTimelineConverterCopyProperty_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    FPSTimelineConverterCopyProperty_cold_3(&v10);
    return v10;
  }
}

uint64_t FPSTimelineConverterCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&sRegisterFPSTimelineConverterTypeOnce, RegisterFPSTimelineConverterType);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      v5 = FigSimpleMutexCreate();
      v4[2] = v5;
      if (v5)
      {
        result = 0;
        *a2 = v4;
      }

      else
      {
        FPSTimelineConverterCreate_cold_1(v4, &v7);
        return v7;
      }
    }

    else
    {
      FPSTimelineConverterCreate_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    FPSTimelineConverterCreate_cold_3(&v9);
    return v9;
  }

  return result;
}

void *fpstc_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void fpstc_Finalize(void *a1)
{
  FigSimpleMutexDestroy();
  a1[2] = 0;
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }
}

__CFString *fpstc_CopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  FigSimpleMutexLock();
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FPSTimelineConverterRef %p retainCount: %d allocator: %p, ", a1, v4, v5);
  v6 = a1[4];
  if (v6)
  {
    v7 = CFDataGetLength(v6) / 0x60uLL;
  }

  else
  {
    v7 = 0;
  }

  CFStringAppendFormat(Mutable, 0, @"%d mappings", v7);
  CFStringAppendFormat(Mutable, 0, @">");
  FigSimpleMutexUnlock();
  return Mutable;
}

__n128 OUTLINED_FUNCTION_2_165@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_4_133@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_119()
{

  return FigSimpleMutexLock();
}

CMTimeRange *OUTLINED_FUNCTION_7_91(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, __int128 a17, uint64_t a18, __int128 end, uint64_t end_16)
{
  *(v21 - 64) = a17;
  *(v21 - 48) = a18;
  end = a15;
  end_16 = a16;

  return CMTimeRangeFromTimeToTime(v20, (v21 - 64), &end);
}

__n128 OUTLINED_FUNCTION_9_67@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

CMTimeRange *OUTLINED_FUNCTION_13_50@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMTime *start)
{
  *(v9 - 48) = a1;

  return CMTimeRangeFromTimeToTime(v8, &start, (v9 - 64));
}

double OUTLINED_FUNCTION_14_58@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a16 = a1;

  return fpstc_L4TimeToL3Locked(v16, &a14, v17 - 64);
}

uint64_t FigVideoCompositionCopyOutputFormatExtensions(const __CFAllocator *a1, uint64_t a2, CFArrayRef theArray, const __CFArray *a4, uint64_t a5, uint64_t a6, uint64_t a7, __CFArray **a8)
{
  if (theArray)
  {
    v12 = CFArrayGetCount(theArray) == 0;
    if (a4)
    {
LABEL_3:
      Count = CFArrayGetCount(a4);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 1;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  Count = 0;
LABEL_6:
  Mutable = CFArrayCreateMutable(a1, 1, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigVideoCompositionCopyOutputFormatExtensions_cold_3();
    return 0;
  }

  v15 = Mutable;
  if (Count == 0 || v12)
  {
    v23 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v23)
    {
      v24 = v23;
      vcputils_setEyesProjectionAndPackingToFormatExtensions(v23, a2, theArray, a5, a6, a7);
      CFArrayAppendValue(v15, v24);
      CFRelease(v24);
      if (a8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      FigVideoCompositionCopyOutputFormatExtensions_cold_2();
    }

LABEL_26:
    CFRelease(v15);
    return 0;
  }

  v26 = a8;
  if (Count >= 1)
  {
    v16 = 0;
    v17 = *MEMORY[0x1E69600B0];
    v18 = *MEMORY[0x1E6960060];
    v19 = *MEMORY[0x1E6960068];
    v20 = *MEMORY[0x1E6960010];
    v27 = a1;
    while (1)
    {
      v21 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v21)
      {
        break;
      }

      v22 = v21;
      vcputils_setEyesProjectionAndPackingToFormatExtensions(v21, a2, theArray, a5, a6, a7);
      FigCFArrayGetValueAtIndex();
      if (FigCFDictionaryGetValueIfPresent())
      {
        CFDictionarySetValue(v22, v17, 0);
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        CFDictionarySetValue(v22, v18, 0);
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        CFDictionarySetValue(v22, v19, 0);
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        CFDictionarySetValue(v22, v20, 0);
      }

      if (FigCFDictionaryGetValueIfPresent())
      {
        CFDictionarySetValue(v22, @"LookupID", 0);
      }

      CFArrayAppendValue(v15, v22);
      CFRelease(v22);
      ++v16;
      a1 = v27;
      if (Count == v16)
      {
        goto LABEL_22;
      }
    }

    FigVideoCompositionCopyOutputFormatExtensions_cold_1();
    goto LABEL_26;
  }

LABEL_22:
  a8 = v26;
  if (!v26)
  {
    goto LABEL_26;
  }

LABEL_23:
  *a8 = v15;
  return 0;
}

uint64_t OUTLINED_FUNCTION_0_186@<X0>(CMTag *a1@<X8>)
{
  v4 = *a1;
  *&v5.category = v1;
  v5.value = v2;

  return CMTagEqualToTag(v5, v4);
}

uint64_t FigAssertionCopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a4)
    {
      if (CFEqual(cf1, @"Assertion_HolderName"))
      {
        v6 = *(a1 + 32);
        if (v6)
        {
          CFRetain(v6);
          result = 0;
          *a4 = *(a1 + 32);
        }

        else
        {
          return 4294954513;
        }
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      FigAssertionCopyProperty_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigAssertionCopyProperty_cold_2(&v9);
    return v9;
  }

  return result;
}

uint64_t FigAssertionSetProperty(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (a1)
  {
    if (CFEqual(cf1, @"Assertion_HolderName"))
    {
      v5 = *(a1 + 32);
      *(a1 + 32) = a3;
      if (a3)
      {
        CFRetain(a3);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      return 0;
    }

    else
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }
  }

  else
  {
    FigAssertionSetProperty_cold_1(&v7);
    return v7;
  }
}

uint64_t FigReadAheadAssertionGetTypeID()
{
  if (sRegisterFigReadAheadAssertionTypeOnce != -1)
  {
    FigReadAheadAssertionGetTypeID_cold_1();
  }

  return sFigReadAheadAssertionID;
}

uint64_t RegisterFigReadAheadAssertionType()
{
  result = _CFRuntimeRegisterClass();
  sFigReadAheadAssertionID = result;
  return result;
}

uint64_t FigReadAheadAssertionCreate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sRegisterFigReadAheadAssertionTypeOnce != -1)
  {
    FigReadAheadAssertionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    result = 0;
    Instance[2] = a3;
    Instance[3] = a2;
    Instance[5] = "FigReadAheadAssertion";
  }

  else
  {
    fig_log_get_emitter();
    result = FigSignalErrorAtGM();
  }

  *a4 = Instance;
  return result;
}

uint64_t FigPlaybackAssertionGetTypeID()
{
  if (sRegisterFigPlaybackAssertionTypeOnce != -1)
  {
    FigPlaybackAssertionGetTypeID_cold_1();
  }

  return sFigPlaybackAssertionID;
}

uint64_t RegisterFigPlaybackAssertionType()
{
  result = _CFRuntimeRegisterClass();
  sFigPlaybackAssertionID = result;
  return result;
}

uint64_t FigPlaybackAssertionCreate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sRegisterFigPlaybackAssertionTypeOnce != -1)
  {
    FigPlaybackAssertionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    result = 0;
    Instance[2] = a3;
    Instance[3] = a2;
    Instance[5] = "FigPlaybackAssertion";
  }

  else
  {
    fig_log_get_emitter();
    result = FigSignalErrorAtGM();
  }

  *a4 = Instance;
  return result;
}

uint64_t FigNSURLSessionAssertionGetTypeID()
{
  if (sRegisterFigNSURLSessionAssertionTypeOnce != -1)
  {
    FigNSURLSessionAssertionGetTypeID_cold_1();
  }

  return sFigNSURLSessionAssertionID;
}

uint64_t RegisterFigNSURLSessionAssertionType()
{
  result = _CFRuntimeRegisterClass();
  sFigNSURLSessionAssertionID = result;
  return result;
}

uint64_t FigNSURLSessionAssertionCreate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (sRegisterFigNSURLSessionAssertionTypeOnce != -1)
  {
    FigNSURLSessionAssertionGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    result = 0;
    Instance[2] = a3;
    Instance[3] = a2;
    Instance[5] = "FigNSURLSessionAssertion";
  }

  else
  {
    fig_log_get_emitter();
    result = FigSignalErrorAtGM();
  }

  *a4 = Instance;
  return result;
}

double figAssertionInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void figAssertionFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v2(a1[3]);
  }

  v3 = a1[4];
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *figAssertionCopyDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = Mutable;
  v5 = a1[4];
  if (!v5)
  {
    v5 = @"undefined";
  }

  CFStringAppendFormat(Mutable, 0, @"<%s %p holder %@>", a1[5], a1, v5);
  return v4;
}

uint64_t FigTTMLRootCreate(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (!a3)
  {
    FigTTMLRootCreate_cold_1(&time1);
    return LODWORD(time1.value);
  }

  FigTTMLNodeGetClassID();
  active = CMDerivedObjectCreate();
  if (active)
  {
    goto LABEL_82;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  active = FigTTMLInitializeNodeBaseStorage(DerivedStorage, 0);
  if (active)
  {
    goto LABEL_82;
  }

  active = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
  if (active)
  {
    goto LABEL_82;
  }

  v8 = *(DerivedStorage + 24);
  *(DerivedStorage + 136) = 0u;
  value = 0;
  *(DerivedStorage + 152) = 0u;
  *(DerivedStorage + 168) = 0u;
  *(DerivedStorage + 184) = 0u;
  *(DerivedStorage + 200) = 0u;
  *(DerivedStorage + 216) = 0u;
  *(DerivedStorage + 232) = 0u;
  *(DerivedStorage + 248) = 0u;
  *(DerivedStorage + 264) = 0u;
  *(DerivedStorage + 280) = 0u;
  *(DerivedStorage + 296) = 0u;
  *(DerivedStorage + 312) = 0u;
  *(DerivedStorage + 328) = 0;
  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter profile", &value))
  {
    *(DerivedStorage + 136) = value;
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter clockMode", &value))
  {
    v9 = @"local";
    if (!CFEqual(value, @"local"))
    {
      v9 = @"gps";
      if (!CFEqual(value, @"gps"))
      {
        v9 = @"utc";
        if (!CFEqual(value, @"utc"))
        {
          goto LABEL_61;
        }
      }
    }
  }

  else
  {
    v9 = @"utc";
  }

  *(DerivedStorage + 144) = v9;
  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter dropMode", &value))
  {
    v10 = @"dropNTSC";
    if (!CFEqual(value, @"dropNTSC"))
    {
      v10 = @"dropPAL";
      if (!CFEqual(value, @"dropPAL"))
      {
        v10 = @"nonDrop";
        if (!CFEqual(value, @"nonDrop"))
        {
          goto LABEL_61;
        }
      }
    }
  }

  else
  {
    v10 = @"nonDrop";
  }

  *(DerivedStorage + 152) = v10;
  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter frameRate", &value))
  {
    active = FigTTMLParseFrameRate();
    if (active)
    {
      goto LABEL_82;
    }
  }

  else
  {
    *(DerivedStorage + 160) = 30;
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter frameRateMultiplier", &value))
  {
    active = FigTTMLParseFrameRateMultiplier();
    if (active)
    {
      goto LABEL_82;
    }
  }

  else
  {
    CMTimeMake(&time1, 1, 1);
    *(DerivedStorage + 164) = time1;
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter markerMode", &value))
  {
    v11 = @"continuous";
    if (!CFEqual(value, @"continuous"))
    {
      v11 = @"discontinuous";
      if (!CFEqual(value, @"discontinuous"))
      {
        goto LABEL_61;
      }
    }
  }

  else
  {
    v11 = @"discontinuous";
  }

  *(DerivedStorage + 192) = v11;
  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter pixelAspectRatio", &value))
  {
    active = FigTTMLParsePixelAspectRatio();
    if (active)
    {
      goto LABEL_82;
    }
  }

  else
  {
    *(DerivedStorage + 200) = FigGeometryAspectRatioMake();
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml/profile/imsc1#parameter aspectRatio", &value) || CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter displayAspectRatio", &value))
  {
    active = FigTTMLParsePixelAspectRatio();
    if (active)
    {
      goto LABEL_82;
    }
  }

  else
  {
    *(DerivedStorage + 208) = *MEMORY[0x1E6962800];
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml/profile/imsc1#parameter activeArea", &value))
  {
    active = FigTTMLParseActiveArea(value, (DerivedStorage + 216));
    if (active)
    {
      goto LABEL_82;
    }
  }

  else
  {
    v12 = MEMORY[0x1E6962828];
    v13 = *(MEMORY[0x1E6962828] + 16);
    *(DerivedStorage + 216) = *MEMORY[0x1E6962828];
    *(DerivedStorage + 232) = v13;
    v14 = *(v12 + 48);
    *(DerivedStorage + 248) = *(v12 + 32);
    *(DerivedStorage + 264) = v14;
  }

  if (!CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter subFrameRate", &value) || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    *(DerivedStorage + 280) = 1;
  }

  else
  {
    active = FigTTMLParseFrameRate();
    if (active)
    {
      goto LABEL_82;
    }

    if (!*(DerivedStorage + 280))
    {
      goto LABEL_61;
    }
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter tickRate", &value))
  {
    active = FigTTMLParseTickRate();
    if (active)
    {
      goto LABEL_82;
    }

    time1 = **&MEMORY[0x1E6960CC0];
    time2 = *(DerivedStorage + 284);
    if (!CMTimeCompare(&time1, &time2))
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (CFDictionaryContainsKey(v8, @"http://www.w3.org/ns/ttml#parameter frameRate"))
    {
      v15 = *(DerivedStorage + 160);
      time1 = *(DerivedStorage + 164);
      CMTimeMultiply(&time2, &time1, v15);
      CMTimeMultiply(&time1, &time2, *(DerivedStorage + 280));
    }

    else
    {
      CMTimeMake(&time1, 1, 1);
    }

    *(DerivedStorage + 284) = time1;
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter timeBase", &value))
  {
    v16 = @"media";
    if (!CFEqual(value, @"media"))
    {
      v16 = @"smpte";
      if (!CFEqual(value, @"smpte"))
      {
        v16 = @"clock";
        if (!CFEqual(value, @"clock"))
        {
          goto LABEL_61;
        }
      }
    }
  }

  else
  {
    v16 = @"media";
  }

  *(DerivedStorage + 312) = v16;
  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#parameter cellResolution", &value))
  {
    active = FigTTMLParseCellResolution(value, DerivedStorage + 320, (DerivedStorage + 324));
    if (active)
    {
      goto LABEL_82;
    }

    if (!*(DerivedStorage + 320) || !*(DerivedStorage + 324))
    {
      goto LABEL_61;
    }
  }

  else
  {
    *(DerivedStorage + 320) = 0xF00000020;
  }

  if (CFDictionaryGetValueIfPresent(v8, @"http://www.w3.org/ns/ttml#styling extent", &value))
  {
    active = FigTTMLParsePixelResolution(value, (DerivedStorage + 328), (DerivedStorage + 332));
    if (active)
    {
      goto LABEL_82;
    }

    if (!*(DerivedStorage + 328) || !*(DerivedStorage + 332))
    {
LABEL_61:
      active = FigSignalErrorAtGM();
      if (active)
      {
        goto LABEL_82;
      }
    }
  }

  v19[0] = cf;
  v19[1] = cf;
  v19[2] = 0;
  FigTTMLParseNode(a2, figTTMLRootConsumeChildNode, v19);
  if (!active)
  {
    if (*(DerivedStorage + 336) || (active = FigTTMLHeadCreateDefault(a1, v19, (DerivedStorage + 336)), !active))
    {
      v17 = 0;
      *a3 = cf;
      return v17;
    }
  }

LABEL_82:
  v17 = active;
  if (cf)
  {
    CFRelease(cf);
  }

  return v17;
}

void figTTMLRoot_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 336);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 336) = 0;
  }

  v2 = *(DerivedStorage + 344);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 344) = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLRoot_CopyDebugDesc()
{
  CMBaseObjectGetDerivedStorage();
  v0 = FigCFCopyCompactDescription();
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"tt: %@", v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t figTTMLRoot_CopyChildNodeArray(const void *a1, __CFArray **a2)
{
  v3 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    v7 = *(DerivedStorage + 336);
    if (v7)
    {
      CFArrayAppendValue(Mutable, v7);
    }

    v8 = *(v6 + 344);
    if (v8)
    {
      CFArrayAppendValue(Mutable, v8);
    }

    v9 = 0;
    *a2 = Mutable;
  }

  else
  {
    v9 = FigSignalErrorAtGM();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v9;
}

uint64_t figTTMLRoot_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 7;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLRoot_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t FigPKDCPECryptorCreate(const void *a1, unint64_t a2, unint64_t a3, const void *a4, const __CFAllocator *a5, const __CFDictionary *a6, CFTypeRef *a7)
{
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v12 = 4294955146;
  if (!a1 || !(a2 | a3) || !a6 || !a7)
  {
    goto LABEL_19;
  }

  if (sActiveCryptorsInitOnce != -1)
  {
    FigPKDCPECryptorCreate_cold_1();
  }

  MEMORY[0x19A8D3660](&FigPKDCPECryptorGetClassID_sRegisterFigPKDCPECryptorTypeOnce, RegisterFigPKDCPECryptorType);
  v13 = CMDerivedObjectCreate();
  if (v13)
  {
    goto LABEL_18;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v15 = DerivedStorage, v16 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(v15 + 8) = v16) == 0) || (v17 = FigSimpleMutexCreate(), (*(v15 + 24) = v17) == 0) || (v18 = dispatch_queue_create("AirPlayNotifications", 0), (*(v15 + 240) = v18) == 0))
  {
    v12 = 4294955145;
    goto LABEL_19;
  }

  *(v15 + 192) = 1;
  *v15 = CFRetain(a1);
  v13 = EnsureUUID_0(cf);
  if (v13)
  {
LABEL_18:
    v12 = v13;
    goto LABEL_19;
  }

  if (a2)
  {
    v19 = CFRetain(a2);
  }

  else
  {
    v19 = 0;
  }

  *(v15 + 32) = v19;
  if (a3)
  {
    *(v15 + 40) = CFRetain(a3);
    v31[0] = 1;
    v31[1] = PersistentKeyUpdatedCallback;
    v31[2] = KeyRequestErrorOccurredCallback;
    v20 = *(v15 + 216);
    global_queue = dispatch_get_global_queue(0, 0);
    v13 = PKDKeyManagerInstallCallbacksForKeyID(a3, v20, cf, global_queue, v31);
    if (v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *(v15 + 40) = 0;
  }

  Value = CFDictionaryGetValue(a6, @"AuditToken");
  if (Value)
  {
    v23 = Value;
    v24 = CFGetTypeID(Value);
    if (v24 == CFDataGetTypeID())
    {
      *(v15 + 144) = CFRetain(v23);
    }
  }

  FigCFDictionaryGetBooleanIfPresent();
  v25 = CFDictionaryGetValue(a6, @"CryptKeyAttributes");
  if (!v25)
  {
    *(v15 + 224) = 0;
    goto LABEL_35;
  }

  v26 = CFRetain(v25);
  *(v15 + 224) = v26;
  if (!v26)
  {
LABEL_35:
    FigPKDCPECryptorCreate_cold_2(v31);
    v12 = LODWORD(v31[0]);
    goto LABEL_19;
  }

  if (a4)
  {
    v27 = CFRetain(a4);
    *(v15 + 152) = v27;
    *(v15 + 160) = CFRetain(v27);
  }

  else
  {
    v13 = FigCPEExternalProtectionMonitorCreateForMethods(a5, 4u, 0, 0, (v15 + 152));
    if (v13)
    {
      goto LABEL_18;
    }

    *(v15 + 160) = CFRetain(*(v15 + 152));
    *(v15 + 168) = 1;
  }

  FigCPEExternalProtectionMonitorBeginMonitoring(*(v15 + 152));
  v12 = AddWeakListenerOnExternalProtectionMonitor(cf, *(v15 + 152));
  if (!v12)
  {
    *(v15 + 232) = 0;
    *(v15 + 281) = 1;
    *a7 = cf;
    return v12;
  }

LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t InitActiveCryptorList()
{
  sActiveCryptors = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  result = FigSimpleMutexCreate();
  sActiveCryptorsLock = result;
  return result;
}

void PersistentKeyUpdatedCallback(uint64_t a1, void *a2)
{
  values = a2;
  CMBaseObjectGetDerivedStorage();
  v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6961080], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    v3 = v2;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v3);
  }

  else
  {
    PersistentKeyUpdatedCallback_cold_1();
  }
}

uint64_t KeyRequestErrorOccurredCallback(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    FigSignalErrorAtGM();
  }

  else
  {
    PostKeyRequestErrorOccurred(a1, a2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t AddWeakListenerOnExternalProtectionMonitor(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CMNotificationCenterGetDefaultLocalCenter();

      return FigNotificationCenterAddWeakListener();
    }

    else
    {
      AddWeakListenerOnExternalProtectionMonitor_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    AddWeakListenerOnExternalProtectionMonitor_cold_2(&v4);
    return v4;
  }
}

void FigCFRelease_11(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigPKDCPELimitedCryptorCreateForBufferedAirPlay(uint64_t a1, const void *a2, const void *a3, uint64_t a4, void *a5)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v9 = 4294955146;
  if (a1 && a5)
  {
    MEMORY[0x19A8D3660](&FigPKDCPELimitedCryptorGetClassID_sRegisterFigPKDCPELimitedCryptorTypeOnce, RegisterFigPKDCPELimitedCryptorType);
    v10 = CMDerivedObjectCreate();
    if (v10)
    {
      return v10;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!DerivedStorage)
    {
      return 4294955145;
    }

    v12 = DerivedStorage;
    v13 = FigSimpleMutexCreate();
    *(v12 + 8) = v13;
    if (!v13)
    {
      return 4294955145;
    }

    v10 = EnsureUUIDForLimitedCryptor(0);
    if (v10)
    {
      return v10;
    }

    else
    {
      *(v12 + 16) = a1;
      if (a2)
      {
        v14 = CFRetain(a2);
      }

      else
      {
        v14 = 0;
      }

      *(v12 + 40) = v14;
      if (a3)
      {
        v15 = CFRetain(a3);
      }

      else
      {
        v15 = 0;
      }

      v9 = 0;
      *(v12 + 48) = v15;
      *(v12 + 24) = 0;
      *a5 = 0;
    }
  }

  return v9;
}

uint64_t FigPKDCPELimitedCryptorCreateWithExternalProtectionMethods(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = FigPKDCPELimitedCryptorCreateForBufferedAirPlay(a1, 0, 0, a3, a4);
  v7 = v6;
  if (a4 && !v6)
  {
    *(CMBaseObjectGetDerivedStorage() + 24) = a2;
  }

  return v7;
}

uint64_t FigPKDCPECryptorInvalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF178B0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    FigSimpleMutexUnlock();
  }

  else
  {
    *(DerivedStorage + 16) = 1;
    *(DerivedStorage + 192) = 0;
    FigSimpleMutexLock();
    v4 = sActiveCryptors;
    v27.length = CFArrayGetCount(sActiveCryptors);
    v27.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v27, a1);
    if ((FirstIndexOfValue & 0x8000000000000000) == 0)
    {
      CFArrayRemoveValueAtIndex(sActiveCryptors, FirstIndexOfValue);
    }

    if (*(DerivedStorage + 80))
    {
      N8pdwAfn();
      *(DerivedStorage + 80) = 0;
    }

    FigSimpleMutexUnlock();
    v6 = *(DerivedStorage + 40);
    if (v6)
    {
      PKDKeyManagerRemoveKeyID(v6, *(DerivedStorage + 216));
    }

    if (*(DerivedStorage + 72))
    {
      JE2f6WCx();
      *(DerivedStorage + 72) = 0;
    }

    *(DerivedStorage + 208) = 0;
    *(DerivedStorage + 232) = 0;
    v7 = *(DerivedStorage + 8);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 8) = 0;
    }

    StopAndReleaseTimer((DerivedStorage + 200));
    v8 = *(DerivedStorage + 32);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 32) = 0;
    }

    v9 = *(DerivedStorage + 40);
    if (v9)
    {
      CFRelease(v9);
      *(DerivedStorage + 40) = 0;
    }

    v10 = *(DerivedStorage + 104);
    if (v10)
    {
      CFRelease(v10);
      *(DerivedStorage + 104) = 0;
    }

    v11 = *(DerivedStorage + 112);
    if (v11)
    {
      CFRelease(v11);
      *(DerivedStorage + 112) = 0;
    }

    v12 = *(DerivedStorage + 128);
    if (v12)
    {
      CFRelease(v12);
      *(DerivedStorage + 128) = 0;
    }

    *(DerivedStorage + 136) = 0;
    v13 = *(DerivedStorage + 144);
    if (v13)
    {
      CFRelease(v13);
      *(DerivedStorage + 144) = 0;
    }

    v14 = *(DerivedStorage + 88);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 88) = 0;
    }

    v15 = *(DerivedStorage + 152);
    if (v15)
    {
      RemoveWeakListenerOnExternalProtectionMonitor(a1, v15);
      FigCPEExternalProtectionMonitorEndMonitoring(*(DerivedStorage + 152));
      v16 = *(DerivedStorage + 152);
      if (v16)
      {
        CFRelease(v16);
        *(DerivedStorage + 152) = 0;
      }
    }

    v17 = *(DerivedStorage + 160);
    if (v17)
    {
      CFRelease(v17);
      *(DerivedStorage + 160) = 0;
    }

    v18 = *DerivedStorage;
    *DerivedStorage = 0;
    v19 = *(DerivedStorage + 184);
    if (v19)
    {
      CFRelease(v19);
      *(DerivedStorage + 184) = 0;
    }

    v20 = *(DerivedStorage + 216);
    if (v20)
    {
      CFRelease(v20);
      *(DerivedStorage + 216) = 0;
    }

    v21 = *(DerivedStorage + 224);
    if (v21)
    {
      CFRelease(v21);
      *(DerivedStorage + 224) = 0;
    }

    v22 = *(DerivedStorage + 248);
    if (v22)
    {
      CFRelease(v22);
      *(DerivedStorage + 248) = 0;
    }

    v23 = *(DerivedStorage + 256);
    if (v23)
    {
      *(DerivedStorage + 256) = 0;
      free(v23);
    }

    v24 = *(DerivedStorage + 264);
    if (v24)
    {
      CFRelease(v24);
      *(DerivedStorage + 264) = 0;
    }

    v25 = *(DerivedStorage + 272);
    if (v25)
    {
      CFRelease(v25);
      *(DerivedStorage + 272) = 0;
    }

    FigSimpleMutexUnlock();
    if (v18)
    {
      if (FigPKDCPEProtectorCryptorWasInvalidated(v18, a1) == -15844)
      {
        *(DerivedStorage + 17) = 1;
      }

      CFRelease(v18);
    }
  }

  return 0;
}

void FigPKDCPECryptorFinalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigPKDCPECryptorInvalidate(a1);
  if (*(DerivedStorage + 24))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 24) = 0;
  }

  v3 = *(DerivedStorage + 240);
  if (v3)
  {
    dispatch_release(v3);
    *(DerivedStorage + 240) = 0;
  }
}

__CFString *FigPKDCPECryptorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    v5 = 1;
  }

  else
  {
    v5 = Mutable == 0;
  }

  if (!v5)
  {
    Value = *(DerivedStorage + 224);
    if (Value)
    {
      Value = CFDictionaryGetValue(Value, *MEMORY[0x1E6960F28]);
    }

    v7 = PKDLogPrivateData(Value);
    CFStringAppendFormat(Mutable, 0, @"<FigCPECryptorPKD %p %@ %@>", a1, v7, *(DerivedStorage + 216));
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t RemoveWeakListenerOnExternalProtectionMonitor(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      CMNotificationCenterGetDefaultLocalCenter();

      return FigNotificationCenterRemoveWeakListener();
    }

    else
    {
      RemoveWeakListenerOnExternalProtectionMonitor_cold_1(&v3);
      return v3;
    }
  }

  else
  {
    RemoveWeakListenerOnExternalProtectionMonitor_cold_2(&v4);
    return v4;
  }
}

uint64_t ExternalProtectionStatusChangedCallback_2()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t IsLeaseExpired()
{
  result = *(CMBaseObjectGetDerivedStorage() + 80);
  if (result)
  {
    jSNXSLgDwR();
    return v1 == -42656;
  }

  return result;
}

uint64_t CreatePackagedPersistentKeyGuts(uint64_t a1, const void *a2, CFDataRef *a3)
{
  if (!a1)
  {
    CreatePackagedPersistentKeyGuts_cold_4(&v11);
    return v11;
  }

  if (!a2)
  {
    CreatePackagedPersistentKeyGuts_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    CreatePackagedPersistentKeyGuts_cold_2(&v11);
    return v11;
  }

  *a3 = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = PKDMovieIDGetInfo(a1);
  MutableCopy = CFDictionaryCreateMutableCopy(v5, 0, v6);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6962AF8], a2);
  Data = CFPropertyListCreateData(v5, MutableCopy, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    CreatePackagedPersistentKeyGuts_cold_1(&v11);
    v9 = v11;
    if (!MutableCopy)
    {
      return v9;
    }

    goto LABEL_6;
  }

  v9 = 0;
  *a3 = Data;
  if (MutableCopy)
  {
LABEL_6:
    CFRelease(MutableCopy);
  }

  return v9;
}

uint64_t ProcessKeyResponse(uint64_t a1, uint64_t a2, const void *a3, int a4)
{
  v29 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    ProcessKeyResponse_cold_9(v28);
    return v28[0];
  }

  if (!a3)
  {
    ProcessKeyResponse_cold_8(v28);
    return v28[0];
  }

  if ((a4 - 4) <= 0xFFFFFFFC)
  {
    ProcessKeyResponse_cold_7(v28);
    return v28[0];
  }

  v8 = DerivedStorage;
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    ProcessKeyResponse_cold_6(v28);
    return v28[0];
  }

  v11 = Mutable;
  v12 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v12)
  {
    ProcessKeyResponse_cold_5(v11, v28);
    return v28[0];
  }

  v13 = v12;
  if (a4 == 2)
  {
    v14 = *(v8 + 128);
    if (v14)
    {
      CFRelease(v14);
      *(v8 + 128) = 0;
    }

    v15 = *(v8 + 144);
    if (!v15)
    {
      ProcessKeyResponse_cold_4(v28);
LABEL_56:
      v26 = v28[0];
      goto LABEL_45;
    }

    CFDictionarySetValue(v11, @"lGxB4ky", v15);
  }

  if (*(v8 + 80))
  {
    FigCFDictionarySetInt64();
  }

  CFDictionarySetValue(v11, @"RulIk", a3);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt64();
  v16 = gojqbvrX305gQO(v11, v13);
  if (!v16)
  {
    if (a4 != 1)
    {
      if (a4 == 3)
      {
        v17 = *(v8 + 104);
        Value = CFDictionaryGetValue(v13, @"sPJ8AGu5PT");
        *(v8 + 104) = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        if (v17)
        {
          CFRelease(v17);
        }

        if (*(v8 + 104))
        {
          v19 = *(v8 + 112);
          v20 = CFDictionaryGetValue(v13, @"o9YYYJ64ntzC");
          *(v8 + 112) = v20;
          if (v20)
          {
            CFRetain(v20);
          }

          if (v19)
          {
            CFRelease(v19);
          }

          if (dword_1EAF178B0)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (*(v8 + 112))
          {
LABEL_43:
            v26 = 0;
            if (FigCFDictionaryGetInt64IfPresent())
            {
              *(v8 + 281) = 1;
            }

            goto LABEL_45;
          }

          ProcessKeyResponse_cold_1(v28);
        }

        else
        {
          ProcessKeyResponse_cold_2(v28);
        }
      }

      else
      {
        v23 = *(v8 + 128);
        v24 = CFDictionaryGetValue(v13, @"igoeg");
        *(v8 + 128) = v24;
        if (v24)
        {
          CFRetain(v24);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        if (dword_1EAF178B0)
        {
          v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (*(v8 + 128))
        {
          goto LABEL_43;
        }

        ProcessKeyResponse_cold_3(v28);
      }

      goto LABEL_56;
    }

    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(v8 + 80) = 0;
    }

    if (dword_1EAF178B0)
    {
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(v8 + 80))
    {
      goto LABEL_43;
    }

    v16 = FigSignalErrorAtGM();
  }

  v26 = v16;
LABEL_45:
  CFRelease(v11);
  CFRelease(v13);
  return v26;
}

uint64_t EnsureDecryptContextGuts(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 96))
  {
    v3 = DerivedStorage;
    if (!*(DerivedStorage + 120))
    {
      v6 = *(DerivedStorage + 80);
      v7 = *(DerivedStorage + 40);
      if (v7)
      {
        DecryptContextForKeyID = PKDKeyManagerGetDecryptContextForKeyID(v7, *(v3 + 216), (v3 + 80));
        if (DecryptContextForKeyID)
        {
          v4 = DecryptContextForKeyID;
          goto LABEL_70;
        }

        v9 = 0;
        *(v3 + 177) = v6 == *(v3 + 80);
        goto LABEL_8;
      }

      v10 = *(v3 + 72);
      if (!v6)
      {
        if (v10)
        {
          if (!*(v3 + 88))
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (!*(v3 + 128))
          {
LABEL_72:
            EnsureDecryptContextGuts_cold_2(&values);
            v4 = values;
            goto LABEL_69;
          }

          v10 = 0;
        }
      }

      v9 = *(v3 + 88);
      *(v3 + 88) = 0;
      *(v3 + 72) = 0;
      v13 = CMBaseObjectGetDerivedStorage();
      v14 = *(v13 + 80);
      FigSimpleMutexLock();
      if (v14)
      {
        v15 = sActiveCryptors;
        v31.length = CFArrayGetCount(sActiveCryptors);
        v31.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v15, v31, a1);
        CFArrayRemoveValueAtIndex(sActiveCryptors, FirstIndexOfValue);
        CFArrayAppendValue(sActiveCryptors, a1);
        FigSimpleMutexUnlock();
        if (v9 && v10)
        {
          v17 = ProcessKeyResponse(a1, v10, v9, 1);
          if (v17)
          {
            v4 = v17;
            goto LABEL_68;
          }

          *(v13 + 177) = 0;
        }

        goto LABEL_8;
      }

      ZZUDP2EEn9tLDQ();
      if (v18)
      {
        v19 = v18;
        if (CFArrayGetCount(sActiveCryptors) >= 1)
        {
          CFArrayGetValueAtIndex(sActiveCryptors, 0);
          CFArrayRemoveValueAtIndex(sActiveCryptors, 0);
          LODWORD(cf) = v19;
          v20 = CMBaseObjectGetDerivedStorage();
          v21 = *MEMORY[0x1E695E480];
          values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &cf);
          v22 = CFDictionaryCreate(v21, MEMORY[0x1E6961038], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (*(v20 + 80))
          {
            N8pdwAfn();
            *(v20 + 80) = 0;
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
          }

          else
          {
            EnsureDecryptContextGuts_cold_1();
          }

          if (values)
          {
            CFRelease(values);
          }

          if (v22)
          {
            CFRelease(v22);
          }
        }
      }

      if (*(v13 + 128) && *(v13 + 136))
      {
        values = 0;
        v4 = PKDMovieIDGetValue(*(v13 + 32), 0, &values);
        if (v4)
        {
LABEL_43:
          if (v4)
          {
            FigSimpleMutexUnlock();
            if (v9)
            {
              goto LABEL_68;
            }

            goto LABEL_69;
          }

          CFArrayAppendValue(sActiveCryptors, a1);
          FigSimpleMutexUnlock();
LABEL_8:
          if (*(v3 + 177))
          {
            v4 = 0;
            if (!v9)
            {
              goto LABEL_69;
            }

LABEL_68:
            CFRelease(v9);
            goto LABEL_69;
          }

          values = 0;
          i2DzSgbBIIe95gyG0gW();
          if (v11)
          {
            v4 = v11;
LABEL_17:
            v12 = 2;
LABEL_51:
            Methods = FigCPEExternalProtectionMonitorGetMethods(*(v3 + 152));
            if ((~Methods & v12) == 0)
            {
LABEL_66:
              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
              CMNotificationCenterGetDefaultLocalCenter();
              FigDispatchAsyncPostNotification();
LABEL_67:
              if (!v9)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            }

            cf = 0;
            v25 = FigCPEExternalProtectionMonitorCreateForMethods(*MEMORY[0x1E695E480], v12 & ~Methods, 0, *(v3 + 160), &cf);
            if (v25)
            {
              if (v4)
              {
                v4 = v4;
              }

              else
              {
                v4 = v25;
              }

              goto LABEL_66;
            }

            v26 = *(v3 + 152);
            v27 = cf;
            if (v26 == cf)
            {
LABEL_60:
              *(v3 + 152) = v27;
              if (v27)
              {
                CFRetain(v27);
              }

              if (v26)
              {
                CFRelease(v26);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              goto LABEL_66;
            }

            v28 = AddWeakListenerOnExternalProtectionMonitor(a1, cf);
            if (!v28)
            {
              v4 = RemoveWeakListenerOnExternalProtectionMonitor(a1, *(v3 + 152));
              if (v4)
              {
                goto LABEL_67;
              }

              v27 = cf;
              v26 = *(v3 + 152);
              goto LABEL_60;
            }

            v4 = v28;
            if (v9)
            {
              goto LABEL_68;
            }

LABEL_69:
            if (!v4)
            {
              return v4;
            }

LABEL_70:
            CMNotificationCenterGetDefaultLocalCenter();
            FigDispatchAsyncPostNotification();
            return v4;
          }

          if (values == 0xEF72894CA7895B78)
          {
            v12 = 0;
          }

          else if (values == 0x285A0863BBA8E1D3)
          {
            v12 = 2;
          }

          else
          {
            if (values != 0x40791AC78BD5C571)
            {
              v4 = 4294951071;
              goto LABEL_17;
            }

            v12 = 1;
          }

          v4 = 0;
          *(v3 + 177) = 1;
          goto LABEL_51;
        }

        v23 = ProcessOfflineKey(a1, values, 4);
      }

      else
      {
        v23 = ProcessKeyResponse(a1, v10, v9, 1);
      }

      v4 = v23;
      goto LABEL_43;
    }
  }

  return 0;
}

uint64_t ProcessOfflineKey(uint64_t a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  values = 0;
  if (!a2)
  {
    ProcessOfflineKey_cold_7(&v25);
LABEL_46:
    v22 = 0;
    v23 = v25;
    goto LABEL_34;
  }

  if ((a3 & 0xFFFFFFFD) != 4)
  {
    ProcessOfflineKey_cold_1(&v25);
    goto LABEL_46;
  }

  v6 = DerivedStorage;
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    ProcessOfflineKey_cold_6(&v25);
    goto LABEL_46;
  }

  v9 = Mutable;
  v10 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v10)
  {
    ProcessOfflineKey_cold_5(v9, &v25);
    goto LABEL_46;
  }

  v11 = v10;
  CFDictionarySetValue(v9, @"igoeg", *(v6 + 128));
  CFDictionarySetValue(v9, @"lGxB4ky", *(v6 + 144));
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt64();
  v12 = gojqbvrX305gQO(v9, v11);
  if (v12)
  {
    goto LABEL_41;
  }

  if (a3 == 4)
  {
    v25 = 0;
    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(v6 + 80) = v25;
    }

    else if (*(v6 + 80))
    {
      goto LABEL_21;
    }

    v12 = FigSignalErrorAtGM();
LABEL_41:
    v23 = v12;
    v22 = 0;
    v19 = 0;
    goto LABEL_32;
  }

  if (a3 == 6)
  {
    v13 = *(v6 + 104);
    Value = CFDictionaryGetValue(v11, @"sPJ8AGu5PT");
    *(v6 + 104) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (!*(v6 + 104))
    {
      ProcessOfflineKey_cold_3(&v25);
      goto LABEL_50;
    }

    v15 = *(v6 + 112);
    v16 = CFDictionaryGetValue(v11, @"o9YYYJ64ntzC");
    *(v6 + 112) = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (!*(v6 + 112))
    {
      ProcessOfflineKey_cold_2(&v25);
LABEL_50:
      v22 = 0;
      v19 = 0;
      goto LABEL_51;
    }
  }

LABEL_21:
  v17 = CFDictionaryGetValue(v11, @"igoeg");
  if (!v17)
  {
    v19 = 0;
    goto LABEL_29;
  }

  v18 = CFRetain(v17);
  v19 = v18;
  if (!v18)
  {
LABEL_29:
    v22 = 0;
LABEL_30:
    v23 = 0;
    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(v6 + 281) = 1;
    }

    goto LABEL_32;
  }

  v20 = *(v6 + 128);
  *(v6 + 128) = v18;
  CFRetain(v18);
  if (v20)
  {
    CFRelease(v20);
  }

  PackagedPersistentKeyGuts = CreatePackagedPersistentKeyGuts(*(v6 + 32), v19, &values);
  if (PackagedPersistentKeyGuts)
  {
    v23 = PackagedPersistentKeyGuts;
    v22 = 0;
    goto LABEL_32;
  }

  v22 = CFDictionaryCreate(v7, MEMORY[0x1E6961080], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v22)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    goto LABEL_30;
  }

  ProcessOfflineKey_cold_4(&v25);
LABEL_51:
  v23 = v25;
LABEL_32:
  CFRelease(v9);
  CFRelease(v11);
  if (v19)
  {
    CFRelease(v19);
  }

LABEL_34:
  if (values)
  {
    CFRelease(values);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v23;
}

void PostKeyRequestErrorOccurred(uint64_t a1, void *a2)
{
  values[24] = *MEMORY[0x1E69E9840];
  values[0] = a2;
  CMBaseObjectGetDerivedStorage();
  if (dword_1EAF178B0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E6961018], values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v3)
  {
    v4 = v3;
    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    CFRelease(v4);
  }

  else
  {
    PostKeyRequestErrorOccurred_cold_1();
  }
}

uint64_t CopyInfoFromPackagedPersistentKey(uint64_t a1, const __CFData *cf, CFTypeRef *a3, CFTypeRef *a4, CFTypeRef *a5)
{
  if (cf && (v11 = CFGetTypeID(cf), v11 == CFDataGetTypeID()))
  {
    if (a5)
    {
      v12 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], cf, 0, 0, 0);
      v13 = v12;
      if (!v12 || (v14 = CFGetTypeID(v12), v14 != CFDictionaryGetTypeID()))
      {
        v5 = FigSignalErrorAtGM();
        if (!v13)
        {
          return v5;
        }

        goto LABEL_19;
      }

      Value = CFDictionaryGetValue(v13, *MEMORY[0x1E6962AF8]);
      if (Value && (v16 = Value, v17 = CFGetTypeID(Value), v17 == CFDataGetTypeID()))
      {
        v18 = CFDictionaryGetValue(v13, *MEMORY[0x1E6962AC0]);
        if (v18 && (v19 = v18, v20 = CFGetTypeID(v18), v20 == CFDataGetTypeID()))
        {
          v21 = CFDictionaryGetValue(v13, *MEMORY[0x1E6962B00]);
          if (v21)
          {
            v23 = v21;
            v24 = CFGetTypeID(v21);
            if (v24 == CFArrayGetTypeID())
            {
              PKDMovieIDGetValue(*(a1 + 32), v13, 0);
              *a5 = CFRetain(v16);
              if (a4)
              {
                *a4 = CFRetain(v23);
              }

              v5 = 0;
              if (a3)
              {
                *a3 = CFRetain(v19);
              }

              goto LABEL_19;
            }
          }

          CopyInfoFromPackagedPersistentKey_cold_1(&v25);
        }

        else
        {
          CopyInfoFromPackagedPersistentKey_cold_2(&v25);
        }
      }

      else
      {
        CopyInfoFromPackagedPersistentKey_cold_3(&v25);
      }

      v5 = v25;
LABEL_19:
      CFRelease(v13);
      return v5;
    }

    CopyInfoFromPackagedPersistentKey_cold_4(&v25);
  }

  else
  {
    CopyInfoFromPackagedPersistentKey_cold_5(&v25);
  }

  return v25;
}

void SetPersistentKey(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 128))
  {
    if (!FigCFEqual())
    {
      SetPersistentKey_cold_1(&v7);
      return;
    }

    v5 = *(DerivedStorage + 128);
  }

  else
  {
    v5 = 0;
  }

  *(DerivedStorage + 128) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (*(DerivedStorage + 120))
  {
    v6 = 0;
    if (!PKDMovieIDGetValue(*(DerivedStorage + 32), 0, &v6))
    {
      ProcessOfflineKey(a1, v6, 6);
    }
  }

  else
  {

    EnsureDecryptContext(a1);
  }
}

uint64_t FigPKDCPECryptorTestAndSetKeyRequestState(uint64_t a1, unsigned int a2, unsigned int a3, unsigned __int8 *a4, void *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  v18 = 0;
  if (!a2)
  {
    FigPKDCPECryptorTestAndSetKeyRequestState_cold_2(v20);
LABEL_35:
    v14 = v20[0];
    goto LABEL_26;
  }

  if (!a3)
  {
    FigPKDCPECryptorTestAndSetKeyRequestState_cold_1(v20);
    goto LABEL_35;
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 16))
  {
    v14 = 4294954511;
  }

  else
  {
    v10 = *(DerivedStorage + 40);
    if (!v10)
    {
      if (*(DerivedStorage + 192) == a2)
      {
        *(DerivedStorage + 192) = a3;
        v19 = 1;
        v13 = a3;
        if (a3 < a2)
        {
          v13 = a3;
          if (*(DerivedStorage + 72))
          {
            JE2f6WCx();
            *(DerivedStorage + 72) = 0;
            v13 = *(DerivedStorage + 192);
          }

          *(DerivedStorage + 208) = 0;
        }

        if (v13 == 2)
        {
          *(DerivedStorage + 208) = PKDGetNewRequestID();
        }

        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      v18 = *(DerivedStorage + 208);
      goto LABEL_17;
    }

    v11 = PKDKeyManagerTestAndSetKeyRequestState(v10, *(DerivedStorage + 216), a2, a3, &v19, &v18);
    if (!v11)
    {
      v12 = v19;
LABEL_17:
      v14 = 0;
      if (a3 == 2 && v12)
      {
        StopAndReleaseTimer((DerivedStorage + 200));
        v14 = 0;
      }

      goto LABEL_20;
    }

    v14 = v11;
  }

LABEL_20:
  FigSimpleMutexUnlock();
  if (a3 == 3 && !v14 && v19)
  {
    if (dword_1EAF178B0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigDispatchAsyncPostNotification();
    v14 = 0;
  }

LABEL_26:
  if (dword_1EAF178B0)
  {
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4)
  {
    *a4 = v19;
  }

  if (a5)
  {
    *a5 = v18;
  }

  return v14;
}

uint64_t FigPKDCPECryptorCreatePackagedPersistentKey(uint64_t a1, const void *a2, CFDataRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = DerivedStorage;
      *a3 = 0;
      FigSimpleMutexLock();
      if (*(v6 + 16))
      {
        v9 = 4294954511;
      }

      else
      {
        v7 = *(v6 + 40);
        if (v7)
        {
          PackagedPersistentKeyForKeyID = PKDKeyManagerCreatePackagedPersistentKeyForKeyID(v7, *(v6 + 216), a2, a3);
        }

        else
        {
          PackagedPersistentKeyForKeyID = CreatePackagedPersistentKeyGuts(*(v6 + 32), a2, a3);
        }

        v9 = PackagedPersistentKeyForKeyID;
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      FigPKDCPECryptorCreatePackagedPersistentKey_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    FigPKDCPECryptorCreatePackagedPersistentKey_cold_2(&v12);
    return v12;
  }

  return v9;
}

uint64_t GetCryptFormatForFormat(int a1)
{
  if (a1 > 1902928226)
  {
    if (a1 <= 2053202738)
    {
      if (a1 <= 1903587384)
      {
        if (a1 != 1902928227)
        {
          v1 = 1903522657;
          goto LABEL_19;
        }

        return 5;
      }

      if (a1 == 1903587385)
      {
        return 11;
      }

      if (a1 != 2053202275)
      {
        return 0;
      }
    }

    else
    {
      if (a1 > 2053207650)
      {
        if (a1 == 2053464883 || a1 == 2053319475)
        {
          return 8;
        }

        if (a1 != 2053207651)
        {
          return 0;
        }

        return 4;
      }

      if ((a1 - 2053202739) > 0x3D || ((1 << (a1 - 51)) & 0x2020000000000001) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if (a1 > 1902211170)
  {
    if (a1 > 1902324530)
    {
      if (a1 == 1902324531 || a1 == 1902469939)
      {
        return 5;
      }

      v1 = 1902537827;
LABEL_19:
      if (a1 != v1)
      {
        return 0;
      }

      return 5;
    }

    if (a1 != 1902211171)
    {
      if (a1 != 1902212707)
      {
        return 0;
      }

      return 7;
    }

    return 5;
  }

  if ((a1 - 1902207795) <= 0x3D && ((1 << (a1 - 51)) & 0x2020000000000001) != 0)
  {
    return 5;
  }

  if (a1 != 1700886115)
  {
    v1 = 1902207331;
    goto LABEL_19;
  }

  return 2;
}

uint64_t RegisterFigPKDCPECryptorType()
{
  FigCPECryptorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t RegisterFigPKDCPELimitedCryptorType()
{
  FigCPEFairPlayCryptorGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t OUTLINED_FUNCTION_10_68@<X0>(size_t dataLength@<X2>, CMBlockBufferRef *a2@<X8>, CMBlockBufferRef *blockBufferOut)
{

  return CMBlockBufferCreateWithMemoryBlock(v3, 0, dataLength, v3, 0, 0, dataLength, 1u, a2);
}

uint64_t OUTLINED_FUNCTION_15_51(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMBlockBufferRef *a8)
{

  return CMBlockBufferCreateContiguous(v8, a2, v8, 0, 0, 0, 0, a8);
}

void OUTLINED_FUNCTION_17_44()
{

  XgJ8VCncrBfn9DzTTUYPfkG();
}

CFDataRef OUTLINED_FUNCTION_24_31@<X0>(uint64_t a1@<X8>)
{

  return CFDataCreate(v2, v1, 24 * a1);
}

void OUTLINED_FUNCTION_25_33()
{

  XgJ8VCncrBfn9DzTTUYPfkG();
}

uint64_t OUTLINED_FUNCTION_26_33()
{

  return FigSimpleMutexUnlock();
}

uint64_t FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers(const __CFAllocator *a1, const __CFArray *a2, void *a3)
{
  if (!a3)
  {
    FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers_cold_3(&v13);
    return v13;
  }

  FigRenderPipelineGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigSimpleMutexCreate();
  *(DerivedStorage + 32) = v8;
  if (!v8)
  {
    FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers_cold_2(&v13);
    return v13;
  }

  v9 = dispatch_queue_create("com.apple.coremedia.frpfanout.providerSyncQ", 0);
  *(DerivedStorage + 24) = v9;
  if (!v9)
  {
    FigRenderPipelineCreateForFanOutToArrayOfSampleBufferConsumers_cold_1(&v13);
    return v13;
  }

  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v6 = CMBufferQueueCreate(a1, 0, CallbacksForUnsortedSampleBuffers, DerivedStorage);
  if (v6)
  {
    return v6;
  }

  v6 = FigSampleBufferProviderCreateForBufferQueue(a1, *DerivedStorage, (DerivedStorage + 8));
  if (v6)
  {
    return v6;
  }

  frpfanout_gracefullySetArrayOfSampleBufferConsumers(0, a2);
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  v6 = FigNotificationCenterAddWeakListener();
  if (v6)
  {
    return v6;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v11 = FigNotificationCenterAddWeakListener();
  if (!v11)
  {
    *a3 = 0;
  }

  return v11;
}

void frpfanout_gracefullySetArrayOfSampleBufferConsumers(uint64_t a1, const __CFArray *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  FigSimpleMutexLock();
  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    v7 = CFArrayGetCount(*(DerivedStorage + 16));
    if (!FigCFEqual())
    {
      if (v7 >= 1)
      {
        Mutable = 0;
        v9 = 0;
        v10 = *MEMORY[0x1E695E480];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
          if (!Count || (v22.location = 0, v22.length = Count, !CFArrayContainsValue(a2, v22, ValueAtIndex)))
          {
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
            }

            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          ++v9;
        }

        while (v7 != v9);
        goto LABEL_21;
      }

LABEL_20:
      Mutable = 0;
LABEL_21:
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v13 = CFArrayGetValueAtIndex(a2, i);
          if (v7)
          {
            v23.location = 0;
            v23.length = v7;
            if (CFArrayContainsValue(v6, v23, v13))
            {
              continue;
            }
          }

          v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v14)
          {
            v14(v13, frpfanout_dequeueProviderAndEnqueueConsumers, a1, 0);
          }
        }
      }

      v15 = *(DerivedStorage + 16);
      *(DerivedStorage + 16) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      FigSimpleMutexUnlock();
      if (Mutable)
      {
        v16 = CFArrayGetCount(Mutable);
        if (v16 >= 1)
        {
          v17 = v16;
          for (j = 0; j != v17; ++j)
          {
            v19 = CFArrayGetValueAtIndex(Mutable, j);
            v20 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            if (v20)
            {
              v20(v19, 0);
            }
          }
        }

        CFRelease(Mutable);
      }

      return;
    }
  }

  else if (!FigCFEqual())
  {
    v7 = 0;
    goto LABEL_20;
  }

  FigSimpleMutexUnlock();
}

__CFString *frpfanout_copyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigRenderPipelineForFanOutToArrayOfSampleBufferConsumers %p: ", a1);
  CFStringAppendFormat(Mutable, 0, @"SourceBufferQueue %@, SampleBufferConsumers %@", *DerivedStorage, DerivedStorage[2]);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t frpfanout_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(@"SourceSampleBufferQueue", a2))
  {
    return 4294954446;
  }

  if (*DerivedStorage)
  {
    v7 = CFRetain(*DerivedStorage);
  }

  else
  {
    v7 = 0;
  }

  result = 0;
  *a4 = v7;
  return result;
}

uint64_t frpfanout_setProperty(uint64_t a1, const void *a2, const __CFArray *a3)
{
  if (CFEqual(@"OutputArrayOfSampleBufferConsumers", a2))
  {
    if (a3 && (v6 = CFGetTypeID(a3), v6 != CFArrayGetTypeID()))
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }

    else
    {
      frpfanout_gracefullySetArrayOfSampleBufferConsumers(a1, a3);
      return 0;
    }
  }

  else if (CFEqual(@"Timebase", a2))
  {
    return 0;
  }

  else
  {
    return 4294954446;
  }
}

uint64_t frpfanout_resetOutput()
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  frpfanout_resetOutputOfConsumers();

  return FigSimpleMutexUnlock();
}

uint64_t frpfanout_dequeueProviderAndEnqueueConsumers()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    Count = CFArrayGetCount(v1);
    if (Count >= 1)
    {
      v3 = Count;
      v4 = 0;
      v5 = *MEMORY[0x1E695E4D0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 16), v4);
        while (1)
        {
          v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v7)
          {
            if (v7(ValueAtIndex))
            {
              break;
            }
          }

          v8 = *(DerivedStorage + 8);
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v9)
          {
            goto LABEL_15;
          }

          v10 = v9(v8);
          if (!v10)
          {
            goto LABEL_15;
          }

          v11 = v10;
          SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v10, 0);
          if (SampleAttachmentsArray)
          {
            CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
          }

          if (FigCFDictionaryGetValue() != v5)
          {
            FigCFArrayApplyFunction();
          }

          CFRelease(v11);
        }

        ++v4;
      }

      while (v4 != v3);
    }
  }

LABEL_15:

  return FigSimpleMutexUnlock();
}

uint64_t frpfanout_enqueueFrameApplierFunc(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 8);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

CFIndex frpfanout_resetOutputOfConsumers()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 16);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v2 = result;
      for (i = 0; i != v2; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 16), i);
        VTable = CMBaseObjectGetVTable();
        v6 = *(VTable + 16);
        result = VTable + 16;
        v7 = *(v6 + 72);
        if (v7)
        {
          result = v7(ValueAtIndex);
        }
      }
    }
  }

  return result;
}

uint64_t frpfanout_resetPipeline(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = CMBufferQueueReset(*DerivedStorage);
  v5 = v4;
  if (a2 && !v4)
  {
    frpfanout_resetOutputOfConsumers();
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t FigVTTSerializerCreateForByteStream(uint64_t a1, const void *a2, void *a3)
{
  if (!a2)
  {
    FigVTTSerializerCreateForByteStream_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigVTTSerializerCreateForByteStream_cold_1(&v8);
    return v8;
  }

  FigVTTSerializerGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigBytePumpGetFigBaseObject(0);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

uint64_t figVTTSerializerForByteStream_Invalidate(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  CMBaseObjectGetDerivedStorage();
  if (FigAtomicCompareAndSwap32())
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    if (CMBaseObject)
    {
      v2 = CMBaseObject;
      v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v3)
      {
        v3(v2);
      }
    }
  }

  return 0;
}

void figVTTSerializerForByteStream_Finalize(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figVTTSerializerForByteStream_Invalidate(a1);
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef figVTTSerializerForByteStream_CopyDebugDesc(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigVTTSerializerForByteStream: %@", *DerivedStorage);
}

uint64_t figVTTSerializerForByteStream_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        FigBytePumpGetFigBaseObject(a1);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (CFEqual(a2, @"IncludeDebugInfo"))
        {
          result = 0;
          v8 = MEMORY[0x1E695E4D0];
          if (!*(DerivedStorage + 8))
          {
            v8 = MEMORY[0x1E695E4C0];
          }

          v9 = *v8;
        }

        else
        {
          v9 = 0;
          result = 4294954512;
        }

        *a4 = v9;
      }

      else
      {
        figVTTSerializerForByteStream_CopyProperty_cold_1(&v10);
        return v10;
      }
    }

    else
    {
      figVTTSerializerForByteStream_CopyProperty_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    figVTTStyleBlock_copyNodeDocumentSerialization_cold_2(&v12);
    return v12;
  }

  return result;
}

uint64_t figVTTSerializerForByteStream_SetProperty(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (cf1)
  {
    if (a3)
    {
      if (CFEqual(cf1, @"IncludeDebugInfo"))
      {
        FigBytePumpGetFigBaseObject(a1);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v6 = CFGetTypeID(a3);
        if (v6 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(a3);
          result = 0;
          *(DerivedStorage + 8) = Value;
        }

        else
        {
          figVTTSerializerForByteStream_SetProperty_cold_1(&v9);
          return v9;
        }
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      figVTTSerializerForByteStream_SetProperty_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    figVTTSerializerForByteStream_SetProperty_cold_3(&v11);
    return v11;
  }

  return result;
}

uint64_t figVTTSerializerForByteStream_Flush(uint64_t a1)
{
  FigBytePumpGetFigBaseObject(a1);
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *(CMBaseObjectGetVTable() + 16);
  if (*v2 >= 2uLL)
  {
    v3 = v2[5];
    if (v3)
    {
      v3(v1, 1);
    }
  }

  return 0;
}

uint64_t RegisterFigPlayerInterstitialCoordinatorType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPlayerInterstitialCoordinatorCreate(uint64_t a1, const void *a2, uint64_t a3, void *a4, CFTypeRef *a5)
{
  cf = 0;
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (CFPreferenceNumberWithDefault)
  {
    CMTimeMake(&v29, CFPreferenceNumberWithDefault, 1000);
    *gAudioTransitionScheduleAdvance = v29;
  }

  if (!a1)
  {
    FigPlayerInterstitialCoordinatorCreate_cold_13(&v29);
LABEL_32:
    value_low = LODWORD(v29.value);
    goto LABEL_33;
  }

  if (!a2)
  {
    FigPlayerInterstitialCoordinatorCreate_cold_12(&v29);
    goto LABEL_32;
  }

  if (!a3)
  {
    FigPlayerInterstitialCoordinatorCreate_cold_11(&v29);
    goto LABEL_32;
  }

  if (!a4)
  {
    FigPlayerInterstitialCoordinatorCreate_cold_10(&v29);
    goto LABEL_32;
  }

  if (*a4)
  {
    FigPlayerInterstitialCoordinatorCreate_cold_1(&v29);
    goto LABEL_32;
  }

  if (!a5)
  {
    FigPlayerInterstitialCoordinatorCreate_cold_9(&v29);
    goto LABEL_32;
  }

  v10 = a5;
  v11 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigPlayerInterstitialCoordinatorGetClassID_sRegisterFigPlayerInterstitialCoordinatorTypeOnce, RegisterFigPlayerInterstitialCoordinatorType);
  v12 = CMDerivedObjectCreate();
  if (!v12)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      v14 = DerivedStorage;
      *DerivedStorage = FigDispatchQueueCreateWithPriority();
      if (fpic_getTimerQueue_onceToken != -1)
      {
        FigPlayerInterstitialCoordinatorCreate_cold_2();
      }

      v15 = fpic_getTimerQueue_sTimerQueue;
      if (fpic_getTimerQueue_sTimerQueue)
      {
        dispatch_retain(fpic_getTimerQueue_sTimerQueue);
      }

      v14[1] = v15;
      v14[2] = FigDispatchQueueCreateWithPriority();
      if (fpic_getNotificationQueue_onceToken != -1)
      {
        FigPlayerInterstitialCoordinatorCreate_cold_3();
      }

      v16 = fpic_getNotificationQueue_sNotificationQueue;
      if (fpic_getNotificationQueue_sNotificationQueue)
      {
        dispatch_retain(fpic_getNotificationQueue_sNotificationQueue);
      }

      v14[3] = v16;
      v17 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      v14[4] = v17;
      if (v17)
      {
        v18 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        v14[5] = v18;
        if (v18)
        {
          v14[19] = FigSimpleMutexCreate();
          v14[6] = CFRetain(a2);
          v19 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          v14[7] = v19;
          if (v19)
          {
            __copy_assignment_8_8_t0w8_pa0_56768_8_pa0_52838_16_pa0_24134_24_pa0_7605_32_pa0_17116_40_pa0_6263_48_pa0_54615_56_pa0_17098_64_pa0_24200_72_pa0_8969_80(v14 + 8, a4);
            v20 = MEMORY[0x1E695E9D8];
            v21 = MEMORY[0x1E695E9E8];
            v14[23] = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v22 = MEMORY[0x1E695E9C0];
            v14[25] = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
            v14[26] = CFArrayCreateMutable(v11, 0, v22);
            v14[82] = CFArrayCreateMutable(v11, 0, v22);
            v14[83] = CFArrayCreateMutable(v11, 0, v22);
            v14[85] = CFArrayCreateMutable(v11, 0, v22);
            v14[84] = CFDictionaryCreateMutable(v11, 0, v20, v21);
            v14[86] = CFSetCreateMutable(v11, 0, MEMORY[0x1E695E9F8]);
            v14[87] = CFDictionaryCreateMutable(v11, 0, v20, v21);
            v14[88] = CFArrayCreateMutable(v11, 0, v22);
            v14[89] = CFDictionaryCreateMutable(v11, 0, v20, v21);
            *(v14 + 223) = FPSupport_InitialSeekIDForSource(3);
            v14[146] = @"Advance";
            v23 = MEMORY[0x1E6960C70];
            v24 = *MEMORY[0x1E6960C70];
            *(v14 + 604) = *MEMORY[0x1E6960C70];
            v25 = *(v23 + 16);
            *(v14 + 620) = v25;
            *(v14 + 65) = v24;
            v14[132] = v25;
            *(v14 + 1196) = 0;
            *(v14 + 147) = 0u;
            *(v14 + 82) = xmmword_196E791C0;
            v14[163] = 0x300000000;
            if (v14[25] && v14[26] && v14[82] && v14[83] && v14[85] && v14[86] && v14[87])
            {
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              CMNotificationCenterGetDefaultLocalCenter();
              FigNotificationCenterAddWeakListener();
              value_low = 0;
              *v10 = cf;
              return value_low;
            }

            FigPlayerInterstitialCoordinatorCreate_cold_4(&v29);
          }

          else
          {
            FigPlayerInterstitialCoordinatorCreate_cold_5(&v29);
          }
        }

        else
        {
          FigPlayerInterstitialCoordinatorCreate_cold_6(&v29);
        }
      }

      else
      {
        FigPlayerInterstitialCoordinatorCreate_cold_7(&v29);
      }
    }

    else
    {
      FigPlayerInterstitialCoordinatorCreate_cold_8(&v29);
    }

    goto LABEL_32;
  }

  value_low = v12;
LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return value_low;
}

void *__copy_assignment_8_8_t0w8_pa0_56768_8_pa0_52838_16_pa0_24134_24_pa0_7605_32_pa0_17116_40_pa0_6263_48_pa0_54615_56_pa0_17098_64_pa0_24200_72_pa0_8969_80(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  result[5] = a2[5];
  result[6] = a2[6];
  result[7] = a2[7];
  result[8] = a2[8];
  result[9] = a2[9];
  result[10] = a2[10];
  return result;
}

void fpic_NotifyServiceCurrentEvent(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CFRetain(*(DerivedStorage + 32));
  CFRetain(a3);
  if (a4)
  {
    CFRetain(a4);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v10 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fpic_NotifyServiceCurrentEvent_block_invoke;
  block[3] = &__block_descriptor_72_e5_v8__0l;
  block[4] = v9;
  block[5] = a3;
  block[6] = a4;
  block[7] = a5;
  block[8] = DerivedStorage;
  dispatch_async(v10, block);
}

void FigCFRelease_12(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigPlayerInterstitialRemoteCoordinatorCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  values = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigPlayerInterstitialRemoteCoordinatorCreate_cold_10(&v15);
    return v15;
  }

  if (!a3)
  {
    FigPlayerInterstitialRemoteCoordinatorCreate_cold_9(&v15);
    return v15;
  }

  if (!a4)
  {
    FigPlayerInterstitialRemoteCoordinatorCreate_cold_8(&v15);
    return v15;
  }

  if (!a5)
  {
    FigPlayerInterstitialRemoteCoordinatorCreate_cold_7(&v15);
    return v15;
  }

  if (*a5)
  {
    FigPlayerInterstitialRemoteCoordinatorCreate_cold_1(&v15);
    return v15;
  }

  if (!a6)
  {
    FigPlayerInterstitialRemoteCoordinatorCreate_cold_6(&v15);
    return v15;
  }

  MEMORY[0x19A8D3660](&FigPlayerInterstitialCoordinatorGetClassID_sRegisterFigPlayerInterstitialCoordinatorTypeOnce, RegisterFigPlayerInterstitialCoordinatorType);
  v11 = CMDerivedObjectCreate();
  if (!v11)
  {
    CMBaseObjectGetDerivedStorage();
    FigPlayerInterstitialRemoteCoordinatorCreate_cold_5(&v15);
    return v15;
  }

  return v11;
}

uint64_t FigPlayerInterstitialCoordinatorIsRemote(uint64_t result)
{
  if (result)
  {
    MEMORY[0x19A8D3660](&FigPlayerInterstitialCoordinatorGetClassID_sRegisterFigPlayerInterstitialCoordinatorTypeOnce, RegisterFigPlayerInterstitialCoordinatorType);
    result = CMBaseObjectIsMemberOfClass();
    if (result)
    {
      return CMBaseObjectGetVTable() == &kFigPlayerInterstitialRemoteCoordinatorVTable;
    }
  }

  return result;
}

uint64_t FigPlayerInterstitialRemoteCoordinatorSetInterstitialPlayer(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigPlayerInterstitialRemoteCoordinatorSetInterstitialPlayer_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a1;
  block[5] = DerivedStorage;
  block[6] = a2;
  dispatch_sync(v5, block);
  return 0;
}

void __FigPlayerInterstitialRemoteCoordinatorSetInterstitialPlayer_block_invoke(uint64_t a1)
{
  if (dword_1EAF178D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t FigPlayerInterstitialRemoteCoordinatorSetEvents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7 = *(DerivedStorage + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigPlayerInterstitialRemoteCoordinatorSetEvents_block_invoke;
  block[3] = &unk_1E7494FB8;
  block[6] = a2;
  block[7] = a3;
  block[4] = &v10;
  block[5] = a1;
  block[8] = DerivedStorage;
  dispatch_sync(v7, block);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (!*(v11 + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  _Block_object_dispose(&v10, 8);
  return 0;
}

void __FigPlayerInterstitialRemoteCoordinatorSetEvents_block_invoke(void *a1)
{
  v1 = a1;
  v2 = a1[7];
  v22 = a1[6];
  v3 = a1[5];
  v4 = *(a1[4] + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v8 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v8)
    {
      v9 = v8;
      v20 = v4;
      v21 = v1;
      if (Count < 1)
      {
        LOBYTE(v10) = 0;
      }

      else
      {
        v10 = 0;
        for (i = 0; i != Count; ++i)
        {
          value = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
          cf = 0;
          if (FigPlayerInterstitialEventCreateFromDictionary(v22, ValueAtIndex, &cf) || !cf)
          {
            break;
          }

          v13 = FigPlayerInterstitialEventCopyIdentifier(cf);
          if (*(DerivedStorage + 144) && !v10)
          {
            v10 = FigCFEqual();
          }

          if ((*(DerivedStorage + 96))(v3, v9, cf, 0, &value) || !value)
          {
            break;
          }

          CFArrayAppendValue(Mutable, value);
          CFRelease(cf);
          if (value)
          {
            CFRelease(value);
          }

          if (v13)
          {
            CFRelease(v13);
          }
        }
      }

      CFRelease(v9);
      v4 = v20;
      v1 = v21;
    }

    else
    {
      __FigPlayerInterstitialRemoteCoordinatorSetEvents_block_invoke_cold_1();
      LOBYTE(v10) = 0;
    }

    *(v4 + 24) = v10;
    v15 = v1 + 8;
    v14 = v1[8];
    v16 = *(v14 + 136);
    *(v14 + 136) = Mutable;
    CFRetain(Mutable);
    if (v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(v4 + 24) = 0;
    v15 = v1 + 8;
    v19 = v1[8];
    v16 = *(v19 + 136);
    *(v19 + 136) = 0;
    if (v16)
    {
LABEL_24:
      CFRelease(v16);
    }
  }

  v17 = *(v1[4] + 8);
  if (*(v17 + 24))
  {
    goto LABEL_28;
  }

  v18 = *(*v15 + 144);
  if (v18)
  {
    CFRelease(v18);
    *(*v15 + 144) = 0;
LABEL_28:
    if (!Mutable)
    {
      return;
    }

    goto LABEL_29;
  }

  *(v17 + 24) = 1;
  if (Mutable)
  {
LABEL_29:
    CFRelease(Mutable);
  }
}

uint64_t FigPlayerInterstitialRemoteCoordinatorSetCurrentEvent(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = v5;
    v7 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __FigPlayerInterstitialRemoteCoordinatorSetCurrentEvent_block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = DerivedStorage;
    block[5] = a2;
    dispatch_sync(v7, block);
    v8 = fpirc_CopyCurrentEvent(a1);
    v9 = v8 != 0;
    if (v8)
    {
      CFRelease(v8);
    }

    (*(DerivedStorage + 120))(a1, v6, v9, NAN);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v6);
    return 0;
  }

  else
  {
    FigPlayerInterstitialRemoteCoordinatorSetCurrentEvent_cold_1(&v12);
    return v12;
  }
}

void __FigPlayerInterstitialRemoteCoordinatorSetCurrentEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 144);
  *(v2 + 144) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t fpirc_CopyCurrentEvent(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpirc_CopyCurrentEvent_block_invoke;
    block[3] = &unk_1E747EC60;
    block[4] = &v8;
    block[5] = a1;
    block[6] = v3;
    dispatch_sync(v4, block);
    CFRelease(v3);
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_1967BBDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigPlayerInterstitialRemoteCoordinatorSetCurrentEventSkippableStateWithLabel(uint64_t a1, int a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v7)
  {
    v8 = *(DerivedStorage + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __FigPlayerInterstitialRemoteCoordinatorSetCurrentEventSkippableStateWithLabel_block_invoke;
    block[3] = &unk_1E7494FE0;
    block[6] = a1;
    block[7] = v7;
    v13 = a2;
    block[8] = DerivedStorage;
    block[9] = a3;
    block[4] = v18;
    block[5] = &v14;
    dispatch_sync(v8, block);
    if (*(v15 + 24))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        FigCFDictionarySetValue();
        FigCFDictionarySetInt();
        FigCFDictionarySetValue();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
        v10 = 0;
      }

      else
      {
        v10 = FigSignalErrorAtGM();
        Mutable = 0;
      }
    }

    else
    {
      Mutable = 0;
      v10 = 0;
    }

    CFRelease(v7);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v10 = FigSignalErrorAtGM();
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v18, 8);
  return v10;
}

void sub_1967BC02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void __FigPlayerInterstitialRemoteCoordinatorSetCurrentEventSkippableStateWithLabel_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = fpirc_GetCurrentEventWrapperOnQueue(*(a1 + 48), *(a1 + 56));
  if (dword_1EAF178D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  *(v4 + 152) = *(a1 + 80);
  v5 = *(v4 + 160);
  *(v4 + 160) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

const void *fpirc_GetCurrentEventWrapperOnQueue(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 144))
  {
    return 0;
  }

  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 136);
  if (!v6)
  {
    return 0;
  }

  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 136), v9);
    v11 = (*(v5 + 72))(a1, a2, ValueAtIndex);
    v12 = FigPlayerInterstitialEventCopyIdentifier(v11);
    if (FigCFEqual())
    {
      break;
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t fpic_finalize(uint64_t a1)
{
  v37 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  fpic_DisengageFromPrimaryItem(a1, v3, &v37);
  v4 = v37;
  fpic_DequeueItemsFromInterstitialPlayer(a1, v37, v3);
  v5 = CMBaseObjectGetDerivedStorage();
  StopAndReleaseTimer((v5 + 816));
  *(v5 + 872) = 0;
  StopAndReleaseTimer((DerivedStorage + 824));
  StopAndReleaseTimer((DerivedStorage + 832));
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (v3)
  {
    CFRelease(v3);
  }

  v6 = *(DerivedStorage + 40);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 40) = 0;
  }

  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 48) = 0;
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 56) = 0;
  }

  StopAndReleaseTimer((DerivedStorage + 752));
  *(DerivedStorage + 744) = 0;
  v9 = MEMORY[0x1E6960C70];
  v36 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 720) = *MEMORY[0x1E6960C70];
  v10 = *(v9 + 16);
  *(DerivedStorage + 736) = v10;
  StopAndReleaseTimer((DerivedStorage + 800));
  *(DerivedStorage + 792) = 0;
  *(DerivedStorage + 768) = v36;
  *(DerivedStorage + 784) = v10;
  v11 = *(DerivedStorage + 704);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 704) = 0;
  }

  v12 = *(DerivedStorage + 712);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 712) = 0;
  }

  v13 = *(DerivedStorage + 696);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 696) = 0;
  }

  v14 = *(DerivedStorage + 672);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 672) = 0;
  }

  v15 = *(DerivedStorage + 688);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 688) = 0;
  }

  v16 = *(DerivedStorage + 656);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 656) = 0;
  }

  v17 = *(DerivedStorage + 664);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 664) = 0;
  }

  v18 = *(DerivedStorage + 680);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 680) = 0;
  }

  v19 = *(DerivedStorage + 184);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 184) = 0;
  }

  v20 = *(DerivedStorage + 200);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 200) = 0;
  }

  v21 = *(DerivedStorage + 208);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 208) = 0;
  }

  v22 = *(DerivedStorage + 216);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 216) = 0;
  }

  v23 = *(DerivedStorage + 1152);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 1152) = 0;
  }

  v24 = *(DerivedStorage + 1248);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 1248) = 0;
  }

  v25 = *(DerivedStorage + 1208);
  if (v25)
  {
    CFRelease(v25);
    *(DerivedStorage + 1208) = 0;
  }

  v26 = *(DerivedStorage + 1264);
  if (v26)
  {
    CFRelease(v26);
    *(DerivedStorage + 1264) = 0;
  }

  v27 = *(DerivedStorage + 1272);
  if (v27)
  {
    CFRelease(v27);
    *(DerivedStorage + 1272) = 0;
  }

  v28 = *(DerivedStorage + 1280);
  if (v28)
  {
    CFRelease(v28);
    *(DerivedStorage + 1280) = 0;
  }

  v29 = *(DerivedStorage + 1288);
  if (v29)
  {
    CFRelease(v29);
    *(DerivedStorage + 1288) = 0;
  }

  v30 = *(DerivedStorage + 1296);
  if (v30)
  {
    CFRelease(v30);
    *(DerivedStorage + 1296) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v31 = *(DerivedStorage + 8);
  if (v31)
  {
    dispatch_release(v31);
    *(DerivedStorage + 8) = 0;
  }

  v32 = *(DerivedStorage + 16);
  if (v32)
  {
    dispatch_release(v32);
    *(DerivedStorage + 16) = 0;
  }

  v33 = *(DerivedStorage + 24);
  if (v33)
  {
    dispatch_release(v33);
    *(DerivedStorage + 24) = 0;
  }

  FigSimpleMutexDestroy();
  if (v4)
  {
    CFRelease(v4);
  }

  v34 = *(DerivedStorage + 32);
  if (v34)
  {
    CFRelease(v34);
    *(DerivedStorage + 32) = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

CFStringRef fpic_copyDebugDesc(uint64_t a1)
{
  cf = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v2)
  {
    v2(a1, &cf);
    v2 = cf;
  }

  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigPlayerInterstitialCoordinator %p, events %@]", a1, v2);
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t fpic_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    v9 = *DerivedStorage;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fpic_CopyProperty_block_invoke;
    block[3] = &unk_1E7494FB8;
    block[4] = &v13;
    block[5] = a2;
    block[6] = a1;
    block[7] = a4;
    block[8] = v8;
    dispatch_sync(v9, block);
    CFRelease(v8);
    v10 = *(v14 + 6);
  }

  else
  {
    v10 = FigSignalErrorAtGM();
    *(v14 + 6) = v10;
  }

  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_1967BC9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  v8 = *DerivedStorage;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __fpic_SetProperty_block_invoke;
  v11[3] = &unk_1E74950E8;
  v11[6] = a3;
  v11[7] = DerivedStorage;
  v11[4] = &v12;
  v11[5] = a2;
  v11[8] = a1;
  v11[9] = v7;
  dispatch_sync(v8, v11);
  if (v7)
  {
    CFRelease(v7);
  }

  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_1967BCAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void fpic_DisengageFromPrimaryItem(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 160))
  {
    v7 = DerivedStorage;
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(v7 + 1224))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v9 = *(v7 + 1224);
      if (v9)
      {
        CFRelease(v9);
        *(v7 + 1224) = 0;
      }
    }

    v10 = CMBaseObjectGetDerivedStorage();
    if (*(v10 + 376) | *(v10 + 377))
    {
      cf[0] = 0;
      PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, cf);
      if (PrimaryPlayerAndCopyWrapper)
      {
        fpic_TransitionPlayback(a1, PrimaryPlayerAndCopyWrapper, 1, a2);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    fpic_setCoordinationMediaSelectionCriteria(a1, 0);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigGetNotifyingObjectForMediaAccessibilityChanged();
    FigNotificationCenterRemoveWeakListener();
    v12 = *(v7 + 160);
    if (v12)
    {
      CFRelease(v12);
      *(v7 + 160) = 0;
    }

    v13 = *(v7 + 168);
    if (v13)
    {
      CFRelease(v13);
      *(v7 + 168) = 0;
    }

    v14 = *(v7 + 176);
    if (v14)
    {
      CFRelease(v14);
      *(v7 + 176) = 0;
    }

    v15 = *(v7 + 1208);
    if (v15)
    {
      CFRelease(v15);
      *(v7 + 1208) = 0;
    }

    v16 = *(v7 + 1152);
    if (v16)
    {
      CFRelease(v16);
      *(v7 + 1152) = 0;
    }

    v17 = *(v7 + 192);
    if (v17)
    {
      CFRelease(v17);
      *(v7 + 192) = 0;
    }

    *(v7 + 1142) = 0;
    v18 = MEMORY[0x1E6960C70];
    v22 = *MEMORY[0x1E6960C70];
    *(v7 + 1064) = *MEMORY[0x1E6960C70];
    v19 = *(v18 + 16);
    *(v7 + 1080) = v19;
    *(v7 + 1040) = v22;
    *(v7 + 1056) = v19;
    *(v7 + 604) = v22;
    *(v7 + 620) = v19;
    *(v7 + 384) = v22;
    *(v7 + 400) = v19;
    fpic_ForceCancelInitiatedSeek();
    *(CMBaseObjectGetDerivedStorage() + 900) = 0;
    *(v7 + 1196) = 0;
    *(v7 + 1176) = 0u;
    v20 = CMBaseObjectGetDerivedStorage();
    *(v20 + 256) = 0;
    *(v20 + 296) = 0;
    *(v20 + 432) = v22;
    *(v20 + 448) = v19;
    *(v20 + 480) = v22;
    *(v20 + 496) = v19;
    *(v20 + 504) = v22;
    *(v20 + 520) = v19;
    *(v20 + 1144) = 0;
    *(v20 + 644) = v19;
    *(v20 + 628) = v22;
    *(v20 + 1147) = 0;
    fpic_ResetCurrentEventList(a1, a2, a3);
    CFArrayRemoveAllValues(*(v7 + 200));
    CFArrayRemoveAllValues(*(v7 + 208));
    CFSetRemoveAllValues(*(v7 + 688));
    CFDictionaryRemoveAllValues(*(v7 + 672));
    CFDictionaryRemoveAllValues(*(v7 + 696));
    if (dword_1EAF178D0)
    {
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t fpic_GetPrimaryPlayerAndCopyWrapper(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v5)
  {
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v6 || (v7 = v6, v8 = (*(DerivedStorage + 72))(a1, v6, v5), CFRelease(v7), !v8))
    {
      CFRelease(v5);
      v8 = 0;
      v5 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *a2 = v5;
  return v8;
}

void fpic_setCoordinationMediaSelectionCriteria(uint64_t a1, const void *a2)
{
  cf[24] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  cf[0] = 0;
  fpic_copyInterstitialPlayer(a1, v5, cf);
  if (FigCFEqual())
  {
LABEL_2:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_16;
  }

  if (dword_1EAF178D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(DerivedStorage + 1160);
  *(DerivedStorage + 1160) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(DerivedStorage + 160);
  if (v8)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject(v8);
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v10(FigBaseObject, @"ItemCoordinationMediaSelectionCriteria", a2);
    }
  }

  if (cf[0])
  {
    v11 = FigPlayerGetFigBaseObject(cf[0]);
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v12(v11, @"PlayerCoordinationMediaSelectionCriteria", a2);
    }

    goto LABEL_2;
  }

LABEL_16:
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t fpic_ForceCancelInitiatedSeek()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpic_FinishInitiatedSeek();
  fpic_clearIntendedCurrentItemMoment();
  result = CMBaseObjectGetDerivedStorage();
  if (!(*(result + 376) | *(result + 377)))
  {
    *(DerivedStorage + 1088) = 0;
  }

  return result;
}

void fpic_ResetCurrentEventList(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (*a3 && (v5 = CFGetTypeID(*a3), v5 == CFArrayGetTypeID()))
  {
    Mutable = *a3;
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  if (Mutable)
  {
    FirstCurrentItem = fpic_GetFirstCurrentItem();
    if (FirstCurrentItem)
    {
      fpic_StopRecordingActiveInterstitialItemPlayoutTime(a1, FirstCurrentItem);
    }

    fpic_removeAllCurrentEventsAfterEvent(a1, Mutable, 0, 0, 1);
    *a3 = Mutable;
  }

  else
  {
    fpic_ResetCurrentEventList_cold_1();
  }
}

BOOL fpic_skipShowInterstitial(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 656));
  if (Count < 1)
  {
    return 1;
  }

  v3 = Count;
  v4 = 1;
  while (fpic_GetPerEventTrackingCount(a1, v4 - 1) == 1)
  {
    PerAssetPerEventTrackedObject = fpic_GetPerAssetPerEventTrackedObject(a1, v4 - 1, 0, @"PlaybackItem");
    result = PerAssetPerEventTrackedObject == @"DummyItem";
    if (v4 < v3)
    {
      ++v4;
      if (PerAssetPerEventTrackedObject == @"DummyItem")
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

uint64_t fpic_flipInterstitialAndPrimaryVisibility(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = (DerivedStorage + 1232);
  if (*(DerivedStorage + 1232))
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v11 = (DerivedStorage + 1232);
    if (UpTimeNanoseconds >= *v9)
    {
LABEL_5:
      *v11 = 0;
      goto LABEL_6;
    }

    if (*(DerivedStorage + 1240) != a2)
    {
      v12 = CMBaseObjectGetDerivedStorage();
      v13 = v12 + 136;
      (*(v12 + 136))(a1, a3, *(v12 + 1240) == 0, NAN);
      v11 = (v13 + 1096);
      goto LABEL_5;
    }
  }

LABEL_6:
  v14 = FigGetUpTimeNanoseconds();
  v15 = (a4 * 1000000000.0);
  if (*v9 > v14 && *v9 - v14 < (v15 + 1000000))
  {
    v16 = CMBaseObjectGetDerivedStorage();
    v17 = v16 + 136;
    (*(v16 + 136))(a1, a3, *(v16 + 1240) == 0, NAN);
    *(v17 + 1096) = 0;
  }

  v19 = *(DerivedStorage + 136);
  v18 = DerivedStorage + 136;
  result = v19(a1, a3, a2, a4);
  *(v18 + 1104) = a2;
  *(v18 + 1096) = v14 + v15;
  return result;
}

void fpic_GetEffectiveCurrentItemMoment(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 968) || *(DerivedStorage + 969))
  {
    v5 = *(DerivedStorage + 936);
    v6 = *(DerivedStorage + 952);
    *(a2 + 32) = *(DerivedStorage + 968);
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  else
  {

    fpic_CurrentItemMoment(a1, a2);
  }
}

void fpic_UngatePrimaryPlayback(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  v4 = *MEMORY[0x1E6960C70];
  *&v14.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v14.epoch = v5;
  v6 = *(DerivedStorage + 160);
  if (v6)
  {
    v13 = v4;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v7)
    {
      v7(v6, &v14);
    }

    CMTimeMake(&rhs, 5, 1000);
    *&lhs.value = kJumpForwardTolerance;
    lhs.epoch = 0;
    CMTimeAdd(&v15, &lhs, &rhs);
    lhs = v14;
    CMTimeAdd(&rhs, &lhs, &v15);
    lhs.value = rhs.value;
    flags = rhs.flags;
    lhs.timescale = rhs.timescale;
    if ((rhs.flags & 0x1D) == 1 && *(DerivedStorage + 1224))
    {
      epoch = rhs.epoch;
      StopAndReleaseTimer((DerivedStorage + 824));
      rhs.value = lhs.value;
      rhs.timescale = lhs.timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      v17 = 0;
      v18 = 1;
      v19[0] = 0;
      *(v19 + 3) = 0;
      fpic_CreateAndPrimeItemTimer();
    }

    fpic_flipInterstitialAndPrimaryVisibility(a1, 0, v3, NAN);
    FigBaseObject = FigPlaybackItemGetFigBaseObject(*(DerivedStorage + 160));
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    v4 = v13;
    if (v10)
    {
      v10(FigBaseObject, @"TimeToPausePlayback", 0, v13);
      v4 = v13;
    }
  }

  *(DerivedStorage + 1064) = v4;
  *(DerivedStorage + 1080) = v5;
  *(DerivedStorage + 1088) = 0;
  if (dword_1EAF178D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

void fpic_CurrentItemMoment(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  cf = 0;
  FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(FigBaseObject, @"currentDateAndTime", *MEMORY[0x1E695E480], &cf);
    v5 = cf;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  FigDateTimeMakeFromDictionary(v5, a2);
  if (cf)
  {
    CFRelease(cf);
  }
}

void fpic_ServiceCurrentEventTimerProc()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1EAF178D0 >= 5)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v0)
  {
    fpic_ServiceCurrentEvent(v0, MEMORY[0x1E6960C70]);
    CFRelease(v0);
  }
}

uint64_t fpic_ServiceCurrentEvent(uint64_t a1, __int128 *a2)
{
  v157 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v79 = 0;
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &v79);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = v5;
  if (!PrimaryPlayerAndCopyWrapper || !v5)
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    v10 = CMBaseObjectGetDerivedStorage();
    v11 = *(v10 + 1304) + 1;
    *(v10 + 1304) = v11;
    if (v11 > *(v10 + 1308) && UpTimeNanoseconds < *(v10 + 1320) + *(v10 + 1312))
    {
      v12 = 4294951625;
      goto LABEL_85;
    }

    *(v10 + 1312) = UpTimeNanoseconds;
    if (PrimaryPlayerAndCopyWrapper)
    {
      if (v6)
      {
LABEL_10:
        v12 = 4294951625;
        goto LABEL_86;
      }
    }

    else
    {
      FigSignalErrorAtGM();
      if (v6)
      {
        goto LABEL_10;
      }
    }

    v12 = 4294951625;
    FigSignalErrorAtGM();
    goto LABEL_87;
  }

  *v137 = 0;
  *&v137[8] = v137;
  *&v137[16] = 0x2020000000;
  v138 = 0;
  v7 = CMBaseObjectGetDerivedStorage();
  *&v83 = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v8)
  {
    (v8)(PrimaryPlayerAndCopyWrapper, 0, &v83);
    v8 = v83;
  }

  v13 = *v7;
  *&block = MEMORY[0x1E69E9820];
  *(&block + 1) = 3221225472;
  v148 = __fpic_EstablishCurrentPrimaryItem_block_invoke;
  v149 = &unk_1E7494FB8;
  v152 = v7;
  v153 = a1;
  v154 = v6;
  v150 = v137;
  v151 = v8;
  dispatch_sync(v13, &block);
  fpic_DequeueItemsFromInterstitialPlayer(a1, *(*&v137[8] + 24), v6);
  v14 = *(*&v137[8] + 24);
  if (v14)
  {
    CFRelease(v14);
  }

  _Block_object_dispose(v137, 8);
  if (*(DerivedStorage + 160))
  {
    isInterstitialBufferingUngated = fpic_isInterstitialBufferingUngated(a1);
    v83 = *a2;
    v84 = *(a2 + 2);
    v16 = CMBaseObjectGetDerivedStorage();
    *v137 = 0;
    *&v137[8] = v137;
    *&v137[16] = 0x2020000000;
    v138 = 0;
    v17 = *v16;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v148 = __fpic_EstablishCurrentEventForCurrentItem_block_invoke;
    v149 = &unk_1E7495008;
    v152 = v6;
    v153 = v16;
    v155 = v83;
    v150 = v137;
    v151 = a1;
    v156 = v84;
    v154 = PrimaryPlayerAndCopyWrapper;
    dispatch_sync(v17, &block);
    v18 = *(*&v137[8] + 24);
    if (v18)
    {
      Count = CFArrayGetCount(v18);
      while (Count-- >= 1)
      {
        v21 = *(v16 + 128);
        ValueAtIndex = CFArrayGetValueAtIndex(*(*&v137[8] + 24), Count);
        v21(a1, v6, ValueAtIndex, *(v16 + 48));
      }

      v23 = *(*&v137[8] + 24);
      if (v23)
      {
        CFRelease(v23);
      }
    }

    _Block_object_dispose(v137, 8);
    if (!isInterstitialBufferingUngated)
    {
      isInterstitialBufferingUngated = fpic_isInterstitialBufferingUngated(a1);
    }

    v24 = CMBaseObjectGetDerivedStorage();
    *v137 = 0;
    *&v137[8] = v137;
    *&v137[16] = 0x2020000000;
    LODWORD(v138) = 0;
    v25 = *v24;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v148 = &__fpic_EnsureNextEventHasAssets_block_invoke;
    v149 = &unk_1E7495030;
    LOBYTE(v155) = isInterstitialBufferingUngated;
    v150 = v137;
    v151 = v24;
    v152 = a1;
    v153 = v6;
    v154 = PrimaryPlayerAndCopyWrapper;
    dispatch_sync(v25, &block);
    v12 = *(*&v137[8] + 24);
    _Block_object_dispose(v137, 8);
    if (!v12)
    {
      v26 = CMBaseObjectGetDerivedStorage();
      v128 = 0;
      v129 = &v128;
      v130 = 0x2020000000;
      v131 = 0;
      v124 = 0;
      v125 = &v124;
      v126 = 0x2020000000;
      v127 = 0;
      v120 = 0;
      v121 = &v120;
      v122 = 0x2020000000;
      v123 = 0;
      v116 = 0;
      v117 = &v116;
      v118 = 0x2020000000;
      v119 = 0;
      v112 = 0;
      v113 = &v112;
      v114 = 0x2020000000;
      v115 = 0;
      v106 = 0;
      v107 = &v106;
      v108 = 0x3810000000;
      v109 = "";
      v78 = *MEMORY[0x1E6960C70];
      v110 = *MEMORY[0x1E6960C70];
      v77 = *(MEMORY[0x1E6960C70] + 16);
      v111 = v77;
      v102 = 0;
      v103 = &v102;
      v104 = 0x2020000000;
      v105 = 0;
      v98 = 0;
      v99 = &v98;
      v100 = 0x2020000000;
      v101 = 0;
      v94 = 0;
      v95 = &v94;
      v96 = 0x2020000000;
      v97 = 0;
      FigSimpleMutexLock();
      if (isInterstitialBufferingUngated)
      {
        allocator = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        v129[3] = Mutable;
        v28 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
        v125[3] = v28;
        v29 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
        v99[3] = v29;
        if (v129[3] && v125[3] && v29)
        {
          v30 = *v26;
          *&v83 = MEMORY[0x1E69E9820];
          *(&v83 + 1) = 3221225472;
          v84 = __fpic_EnsureNextEventWillBuffer_block_invoke;
          v85 = &unk_1E7495078;
          v92 = a1;
          v93 = v6;
          v86 = &v106;
          v87 = &v102;
          v88 = &v128;
          v89 = &v94;
          v90 = &v112;
          v91 = v26;
          dispatch_sync(v30, &v83);
          v31 = CFArrayGetCount(v129[3]);
          v117[3] = v31;
          if (v31 <= 0)
          {
LABEL_54:
            v51 = *v26;
            *v137 = MEMORY[0x1E69E9820];
            *&v137[8] = 3221225472;
            *&v137[16] = __fpic_EnsureNextEventWillBuffer_block_invoke_191;
            v138 = &unk_1E74950A0;
            *&v139 = &v116;
            *(&v139 + 1) = &v128;
            v140 = &v124;
            v141 = &v102;
            v144 = a1;
            v145 = v26;
            v146 = v6;
            v142 = &v120;
            v143 = &v98;
            dispatch_sync(v51, v137);
            for (i = 0; ; ++i)
            {
              v53 = v125[3];
              if (v53)
              {
                v53 = CFArrayGetCount(v53);
              }

              if (i >= v53)
              {
                break;
              }

              v54 = CFArrayGetValueAtIndex(v125[3], i);
              if (dword_1EAF178D0)
              {
                LODWORD(cf) = 0;
                v81[0] = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v56 = cf;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v81[0]))
                {
                  v57 = v56;
                }

                else
                {
                  v57 = v56 & 0xFFFFFFFE;
                }

                if (v57)
                {
                  *value = 136315650;
                  *&value[4] = "fpic_EnsureNextEventWillBuffer";
                  v133 = 2048;
                  v134 = a1;
                  v135 = 2112;
                  v136 = v54;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              fpic_DequeueItemsFromInterstitialPlayer(a1, v54, v6);
            }

            fpic_DequeueItemsFromInterstitialPlayer(a1, v99[3], v6);
          }

          else
          {
            v32 = 0;
            while (1)
            {
              v33 = CFArrayGetValueAtIndex(v129[3], v32);
              v34 = (*(v26 + 88))(a1, v6, v33);
              *value = 0;
              v35 = FigCFDictionaryGetValue();
              cf = 0;
              if (v35)
              {
                CFDataWithBlockBuffer = FigCreateCFDataWithBlockBuffer();
                *(v121 + 6) = CFDataWithBlockBuffer;
                if (CFDataWithBlockBuffer)
                {
                  break;
                }
              }

              v37 = FigPlayerInterstitialEventCopyIdentifier(v34);
              if (v32)
              {
                v38 = 0;
              }

              else
              {
                v38 = v103[3];
              }

              v39 = *(v26 + 120);
              v40 = *(v26 + 48);
              v41 = *(v26 + 168);
              v42 = *(v26 + 176);
              v43 = v113[3];
              block = *(v107 + 2);
              v148 = v107[6];
              v44 = v39(a1, v6, v33, v40, v37, v41, v42, v43, &block, v38, cf, value);
              *(v121 + 6) = v44;
              if (cf)
              {
                CFRelease(cf);
              }

              if (v37)
              {
                CFRelease(v37);
              }

              if (*(v121 + 6))
              {
                break;
              }

              v45 = *value;
              if (!*value)
              {
                goto LABEL_90;
              }

              if (dword_1EAF178D0)
              {
                *v81 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v46 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v47 = *v81;
                if (os_log_type_enabled(v46, type))
                {
                  v48 = v47;
                }

                else
                {
                  v48 = v47 & 0xFFFFFFFE;
                }

                if (v48)
                {
                  v49 = v129[3];
                  *v137 = 136315906;
                  *&v137[4] = "fpic_EnsureNextEventWillBuffer";
                  *&v137[12] = 2048;
                  *&v137[14] = a1;
                  *&v137[22] = 2048;
                  v138 = v49;
                  LOWORD(v139) = 2112;
                  *(&v139 + 2) = *value;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v45 = *value;
              }

              CFArrayAppendValue(v125[3], v45);
              if (*value)
              {
                CFArrayGetCount(*value);
              }

              FigPlayerInterstitialEventSetItemSuccessCount(v34);
              if (*value)
              {
                CFRelease(*value);
              }

              v113[3] = 0;
              v50 = v107;
              v107[6] = v77;
              *(v50 + 2) = v78;
              if (++v32 >= v117[3])
              {
                goto LABEL_54;
              }
            }
          }
        }

        else
        {
LABEL_90:
          *(v121 + 6) = FigSignalErrorAtGM();
        }
      }

      FigSimpleMutexUnlock();
      v58 = v129[3];
      if (v58)
      {
        CFRelease(v58);
      }

      v59 = v125[3];
      if (v59)
      {
        CFRelease(v59);
      }

      v60 = v99[3];
      if (v60)
      {
        CFRelease(v60);
      }

      v61 = v95[3];
      if (v61)
      {
        CFRelease(v61);
      }

      v12 = *(v121 + 6);
      _Block_object_dispose(&v94, 8);
      _Block_object_dispose(&v98, 8);
      _Block_object_dispose(&v102, 8);
      _Block_object_dispose(&v106, 8);
      _Block_object_dispose(&v112, 8);
      _Block_object_dispose(&v116, 8);
      _Block_object_dispose(&v120, 8);
      _Block_object_dispose(&v124, 8);
      _Block_object_dispose(&v128, 8);
      if (!v12)
      {
        v62 = CMBaseObjectGetDerivedStorage();
        *v137 = 0;
        *&v137[8] = v137;
        *&v137[16] = 0x2020000000;
        LODWORD(v138) = 0;
        v63 = *v62;
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 3221225472;
        v148 = __fpic_ScheduleNextPreload_block_invoke;
        v149 = &unk_1E747EC60;
        v151 = v62;
        v152 = a1;
        v150 = v137;
        dispatch_sync(v63, &block);
        v12 = *(*&v137[8] + 24);
        _Block_object_dispose(v137, 8);
        if (!v12)
        {
          v64 = CMBaseObjectGetDerivedStorage();
          *v137 = 0;
          *&v137[8] = v137;
          *&v137[16] = 0x2020000000;
          LODWORD(v138) = 0;
          v65 = *v64;
          *&block = MEMORY[0x1E69E9820];
          *(&block + 1) = 3221225472;
          v148 = __fpic_EnsureNextEventWillPlay_block_invoke;
          v149 = &unk_1E7494FB8;
          v150 = v137;
          v151 = v64;
          v152 = a1;
          v153 = PrimaryPlayerAndCopyWrapper;
          v154 = v6;
          dispatch_sync(v65, &block);
          v12 = *(*&v137[8] + 24);
          _Block_object_dispose(v137, 8);
          if (!v12)
          {
            *v137 = 0;
            *&v137[8] = v137;
            *&v137[16] = 0x2020000000;
            LODWORD(v138) = 0;
            v66 = *CMBaseObjectGetDerivedStorage();
            *&block = MEMORY[0x1E69E9820];
            *(&block + 1) = 3221225472;
            v148 = __fpic_UpdateSkippableEventStateIfNecessary_block_invoke;
            v149 = &unk_1E747EC60;
            v150 = v137;
            v151 = a1;
            v152 = v6;
            dispatch_sync(v66, &block);
            v12 = *(*&v137[8] + 24);
            _Block_object_dispose(v137, 8);
            if (!v12)
            {
              v67 = CMBaseObjectGetDerivedStorage();
              *v137 = 0;
              *&v137[8] = v137;
              *&v137[16] = 0x2020000000;
              LODWORD(v138) = 0;
              *&v83 = 0;
              *(&v83 + 1) = &v83;
              v84 = 0x2020000000;
              v85 = 0;
              v68 = *v67;
              *&block = MEMORY[0x1E69E9820];
              *(&block + 1) = 3221225472;
              v148 = __fpic_EnsureCurrentEventPlayoutLimitApplied_block_invoke;
              v149 = &unk_1E74942A8;
              v152 = v67;
              v153 = a1;
              v154 = v6;
              v150 = &v83;
              v151 = v137;
              dispatch_sync(v68, &block);
              fpic_DequeueItemsFromInterstitialPlayer(a1, *(*(&v83 + 1) + 24), v6);
              v69 = *(*(&v83 + 1) + 24);
              if (v69)
              {
                CFRelease(v69);
              }

              v12 = *(*&v137[8] + 24);
              _Block_object_dispose(&v83, 8);
              _Block_object_dispose(v137, 8);
              if (!v12)
              {
                v70 = CMBaseObjectGetDerivedStorage();
                *v137 = 0;
                *&v137[8] = v137;
                *&v137[16] = 0x2020000000;
                LODWORD(v138) = 0;
                v71 = *v70;
                *&block = MEMORY[0x1E69E9820];
                *(&block + 1) = 3221225472;
                v148 = __fpic_EnsurePrimaryBufferingPosition_block_invoke;
                v149 = &unk_1E748B8C8;
                v152 = a1;
                v153 = v6;
                v150 = v137;
                v151 = v70;
                dispatch_sync(v71, &block);
                v12 = *(*&v137[8] + 24);
                _Block_object_dispose(v137, 8);
                if (!v12)
                {
                  v12 = fpic_EnsurePrimaryWillResumeBuffering(a1, v6);
                  if (!v12)
                  {
                    v72 = CMBaseObjectGetDerivedStorage();
                    *v137 = 0;
                    *&v137[8] = v137;
                    *&v137[16] = 0x2020000000;
                    LODWORD(v138) = 0;
                    v73 = *v72;
                    *&block = MEMORY[0x1E69E9820];
                    *(&block + 1) = 3221225472;
                    v148 = __fpic_EnsurePrimaryWillResumePlaying_block_invoke;
                    v149 = &unk_1E7494FB8;
                    v150 = v137;
                    v151 = a1;
                    v152 = v72;
                    v153 = PrimaryPlayerAndCopyWrapper;
                    v154 = v6;
                    dispatch_sync(v73, &block);
                    v12 = *(*&v137[8] + 24);
                    _Block_object_dispose(v137, 8);
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_85:
    if (!v6)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  v12 = 0;
LABEL_86:
  CFRelease(v6);
LABEL_87:
  if (v79)
  {
    CFRelease(v79);
  }

  return v12;
}

void sub_1967BEE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

uint64_t fpic_EnsurePrimaryWillResumeBuffering(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = *DerivedStorage;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __fpic_EnsurePrimaryWillResumeBuffering_block_invoke;
  v8[3] = &unk_1E748B8C8;
  v8[6] = a1;
  v8[7] = a2;
  v8[4] = &v9;
  v8[5] = DerivedStorage;
  dispatch_sync(v5, v8);
  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t fpic_SwapToInterstitialPlayerLayerIfPrerollDetected(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CFArrayGetCount(*(DerivedStorage + 200));
  if (result >= 1)
  {
    v6 = result;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 200), v7);
      v9 = (*(DerivedStorage + 88))(a1, a2, ValueAtIndex);
      result = FigPlayerInterstitialEventIsPreRoll(v9);
      if (result)
      {
        break;
      }

      if (v6 == ++v7)
      {
        return result;
      }
    }

    result = fpic_flipInterstitialAndPrimaryVisibility(a1, 1, a2, NAN);
    if (dword_1EAF178D0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

double fpic_GetSeekableRange(uint64_t a1, int a2, CMTime *a3, CMTime *a4)
{
  v24[0] = 0;
  v23 = **&MEMORY[0x1E6960C70];
  v22 = **&MEMORY[0x1E6960C80];
  FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(FigBaseObject, @"SeekableTimeIntervals", *MEMORY[0x1E695E480], v24);
    if (v24[0])
    {
      Count = CFArrayGetCount(v24[0]);
      if (Count >= 1)
      {
        v10 = Count;
        for (i = 0; i != v10; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v24[0], i);
          memset(&v21, 0, sizeof(v21));
          Value = CFDictionaryGetValue(ValueAtIndex, @"startTime");
          CMTimeMakeFromDictionary(&v21, Value);
          memset(&v20, 0, sizeof(v20));
          memset(&v19, 0, sizeof(v19));
          v14 = CFDictionaryGetValue(ValueAtIndex, @"endTime");
          CMTimeMakeFromDictionary(&v19, v14);
          if (a2 && FigCFDictionaryGetCMTimeIfPresent())
          {
            lhs = v19;
            v16 = v20;
            CMTimeAdd(&time1, &lhs, &v16);
            v19 = time1;
          }

          time1 = v23;
          lhs = v21;
          if (CMTimeCompare(&time1, &lhs) >= 1)
          {
            v23 = v21;
          }

          time1 = v22;
          lhs = v19;
          if (CMTimeCompare(&time1, &lhs) < 0)
          {
            v22 = v19;
          }
        }
      }

      CFRelease(v24[0]);
    }
  }

  *a3 = v23;
  result = *&v22.value;
  *a4 = v22;
  return result;
}

void fpic_PostNotification(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = malloc_type_malloc(0x18uLL, 0xE004076C6CCF4uLL);
  if (v6)
  {
    v7 = v6;
    *v6 = a2;
    v8 = *(DerivedStorage + 32);
    if (v8)
    {
      v8 = CFRetain(v8);
    }

    v7[1] = v8;
    if (a3)
    {
      v9 = CFRetain(a3);
    }

    else
    {
      v9 = 0;
    }

    v7[2] = v9;
    if (dword_1EAF178D0 >= 3)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    dispatch_async_f(*(DerivedStorage + 24), v7, fpic_PostNotificationFromDispatch);
  }

  else
  {
    fpic_PostNotification_cold_1();
  }
}

uint64_t fpic_UnwrapPlaybackItem(uint64_t a1, __CFString *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2 || a2 == @"DummyItem" || !a3)
  {
    return 0;
  }

  v7 = *(DerivedStorage + 80);

  return v7(a1, a3, a2);
}

void fpic_GetEventStartMoment(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (FigPlayerInterstitialEventIsPostRoll(a1))
  {

    fpic_GetEarliestStartForPostroll(a2);
  }

  else
  {

    fpic_EventDateTimeMoment(a1, a2);
  }
}

double fpic_GetEarliestStartForPostroll@<D0>(uint64_t a1@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = v3 + 264;
  if (!*(v3 + 296) && !*(v3 + 297))
  {
    v4 = v3 + 224;
  }

  v5 = *(v4 + 16);
  v16 = *v4;
  v17 = v5;
  v6 = *(v4 + 32);
  v7 = *(v4 + 33);
  v14 = *(v4 + 34);
  v15 = *(v4 + 38);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v8 = CMBaseObjectGetDerivedStorage();
  if (*(v8 + 1142) && *(v8 + 1141))
  {
    v9 = CMBaseObjectGetDerivedStorage();
    if (!*(v9 + 1142) || !*(v9 + 1141) || !*(DerivedStorage + 1145))
    {
      CMTimeMake(&v13, -1352509440, 1);
LABEL_10:
      *(a1 + 36) = 0;
      *(a1 + 33) = 0;
      result = *&v13.value;
      *a1 = *&v13.value;
      v11 = v13.flags & 1;
      *(a1 + 16) = v13.epoch;
      *(a1 + 24) = 0;
      *(a1 + 32) = v11;
      return result;
    }
  }

  else if (!*(DerivedStorage + 1145) || !(v6 | v7))
  {
    fpic_GetItemEndTime();
    goto LABEL_10;
  }

  result = *&v16;
  v12 = v17;
  *a1 = v16;
  *(a1 + 16) = v12;
  *(a1 + 32) = v6;
  *(a1 + 33) = v7;
  *(a1 + 34) = v14;
  *(a1 + 38) = v15;
  return result;
}

void fpic_EventDateTimeMoment(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  started = FigPlayerInterstitialEventCopyStartDate(a1);
  FigPlayerInterstitialEventGetStartTime(a1, &v5);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = BYTE12(v5) & 1;
  if (started)
  {
    *(a2 + 24) = MEMORY[0x19A8CCD90](started);
    *(a2 + 33) = 1;
    CFRelease(started);
  }
}

BOOL fpic_MomentsAreCloseWithTolerance(uint64_t a1, uint64_t a2, CMTime *a3)
{
  if (*(a1 + 32) && *(a2 + 32))
  {
    time = *a1;
    v6 = *a2;
    v5 = *a3;
    return faqrp_timeDifferenceIsWithinTolerance(&time, &v6, &v5);
  }

  else if (*(a1 + 33) && *(a2 + 33))
  {
    v4 = vabdd_f64(*(a1 + 24), *(a2 + 24));
    time = *a3;
    return v4 <= CMTimeGetSeconds(&time);
  }

  else
  {
    return !*(a1 + 32) && !(*(a2 + 32) | *(a1 + 33)) && !*(a2 + 33);
  }
}

BOOL fpic_MomentGreaterThan(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) && *(a2 + 32))
  {
    time1 = *a1;
    v3 = *a2;
    return CMTimeCompare(&time1, &v3) > 0;
  }

  else
  {
    return *(a1 + 33) && *(a2 + 33) && *(a1 + 24) > *(a2 + 24) + 2.22044605e-16;
  }
}

void fpic_PredictEventGroupDurationOnPrimary(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, CMTime *a6@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = a2;
  v12 = (*(DerivedStorage + 88))(a1, a3, a2);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  fpic_EventDateTimeMoment(v12, &v26);
  v13 = MEMORY[0x1E6960CC0];
  *&a6->value = *MEMORY[0x1E6960CC0];
  a6->epoch = *(v13 + 16);
  Count = CFArrayGetCount(*(DerivedStorage + 200));
  if (Count >= 1)
  {
    v15 = Count;
    for (i = 0; i != v15; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 200), i);
      v18 = (*(DerivedStorage + 88))(a1, a3, ValueAtIndex);
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      fpic_EventDateTimeMoment(v18, &v23);
      v31 = v23;
      v32 = v24;
      v33 = v25;
      *lhs = v26;
      *&lhs[16] = v27;
      v30 = v28;
      if (fpic_MomentsAreCloseWithTolerance(&v31, lhs, &kMomentsAreCloseThreshold))
      {
        if (a4)
        {
          v19 = FigPlayerInterstitialEventDidLastPlaybackFail(v18) == 0;
        }

        else
        {
          v19 = 1;
        }

        v31 = 0uLL;
        *&v32 = 0;
        fpic_PredictEventDurationOnPrimary(a1, ValueAtIndex, a3, &v31);
        if (a5 && ValueAtIndex == v20)
        {
          *a5 = *&a6->value;
          *(a5 + 16) = a6->epoch;
        }

        if (BYTE12(v31) & v19)
        {
          *lhs = *&a6->value;
          *&lhs[16] = a6->epoch;
          *&rhs.value = v31;
          rhs.epoch = v32;
          CMTimeAdd(a6, lhs, &rhs);
        }
      }
    }
  }
}

void fpic_AddTimeToMoment(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if ((a2->flags & 0x1D) == 1)
  {
    if (*(a1 + 32))
    {
      lhs = *a1;
      v7 = *a2;
      CMTimeAdd(a3, &lhs, &v7);
      *(a3 + 32) = 1;
    }

    if (*(a1 + 33))
    {
      v6 = *(a1 + 24);
      lhs = *a2;
      *(a3 + 24) = v6 + CMTimeGetSeconds(&lhs);
      *(a3 + 33) = 1;
    }
  }
}

CMTime *fpic_SubtractMomentFromMoment@<X0>(CMTime *result@<X0>, uint64_t a2@<X1>, CMTime *a3@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  *&a3->value = *MEMORY[0x1E6960C70];
  a3->epoch = *(v4 + 16);
  if (LOBYTE(result[1].timescale) && *(a2 + 32))
  {
    lhs = *result;
    v6 = *a2;
    return CMTimeSubtract(a3, &lhs, &v6);
  }

  else if (BYTE1(result[1].timescale) && *(a2 + 33))
  {
    v5 = *&result[1].value - *(a2 + 24);

    return CMTimeMakeWithSeconds(a3, v5, 1000000);
  }

  return result;
}

__n128 fpic_PredictEventDurationOnPrimary@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = (*(DerivedStorage + 88))(a1, a3, a2);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  FigPlayerInterstitialEventGetResumptionOffset(v9, a4);
  if (FigPlayerInterstitialEventIsPreRoll(v9) || FigPlayerInterstitialEventIsPostRoll(v9))
  {
    v10 = MEMORY[0x1E6960CC0];
    result = *MEMORY[0x1E6960CC0];
    *a4 = *MEMORY[0x1E6960CC0];
    epoch = *(v10 + 16);
LABEL_4:
    *(a4 + 16) = epoch;
    return result;
  }

  if ((*(a4 + 12) & 0x11) != 1)
  {
    fpic_GetEventDuration(&time1);
    result.n128_u64[0] = time1.value;
    *a4 = *&time1.value;
    epoch = time1.epoch;
    goto LABEL_4;
  }

  time1 = *a4;
  v14 = *MEMORY[0x1E6960CC0];
  *&time2.value = *MEMORY[0x1E6960CC0];
  v13 = *(MEMORY[0x1E6960CC0] + 16);
  time2.epoch = v13;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    result = v14;
    *a4 = v14;
    *(a4 + 16) = v13;
  }

  return result;
}

const void *fpic_GetCurrentlyPlayingEvent()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  if (!(*(v1 + 376) | *(v1 + 377)) || !fpic_DoesNextMomentBelongToCurrentDepartureMoment() || !CFArrayGetCount(*(DerivedStorage + 656)))
  {
    return 0;
  }

  v3 = *(DerivedStorage + 656);

  return CFArrayGetValueAtIndex(v3, 0);
}

void fpic_SubtractTimeFromMoment(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if ((a2->flags & 0x1D) == 1)
  {
    if (*(a1 + 32))
    {
      lhs = *a1;
      v7 = *a2;
      CMTimeSubtract(a3, &lhs, &v7);
      *(a3 + 32) = 1;
    }

    if (*(a1 + 33))
    {
      v6 = *(a1 + 24);
      lhs = *a2;
      *(a3 + 24) = v6 - CMTimeGetSeconds(&lhs);
      *(a3 + 33) = 1;
    }
  }
}

void fpic_PostNotificationFromDispatch(void *a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    CFRelease(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    CFRelease(v5);
  }

  free(a1);
}

BOOL fpic_ShouldIgnoreInterstitialsDueToExternalPlaybackStrategy(uint64_t a1)
{
  cf = 0;
  v2 = *MEMORY[0x1E695E4C0];
  v3 = *MEMORY[0x1E695E4C0];
  v11 = *MEMORY[0x1E695E4C0];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(a1, &cf);
  if (!PrimaryPlayerAndCopyWrapper || *(DerivedStorage + 1260) != 1 || (v6 = PrimaryPlayerAndCopyWrapper, !*(CMBaseObjectGetDerivedStorage() + 1256)))
  {
    v9 = 0;
    if (!v3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  FigBaseObject = FigPlayerGetFigBaseObject(v6);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(FigBaseObject, @"IsIntegratedTimelineAllowedForExternalPlayback", *MEMORY[0x1E695E480], &v11);
    v3 = v11;
  }

  v9 = v3 == v2;
  if (v3)
  {
LABEL_9:
    CFRelease(v3);
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

char *fpic_getMomentDesc(uint64_t a1, char *a2)
{
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v7 = *(a1 + 32);
  MomentDesc = fpic_CreateMomentDesc(v6);
  *a2 = 0;
  CFStringGetCString(MomentDesc, a2, 100, 0x8000100u);
  if (MomentDesc)
  {
    CFRelease(MomentDesc);
  }

  return a2;
}

CFStringRef fpic_CreateMomentDesc(uint64_t a1)
{
  v2 = CFRetain(&stru_1F0B1AFB8);
  if (*(a1 + 32))
  {
    time = *a1;
    Seconds = CMTimeGetSeconds(&time);
  }

  else
  {
    Seconds = NAN;
  }

  v4 = *MEMORY[0x1E695E480];
  if (*(a1 + 33))
  {
    v5 = CFDateCreate(*MEMORY[0x1E695E480], *(a1 + 24));
    v2 = CFCopyDescription(v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = CFStringCreateWithFormat(v4, 0, @"time: %f date: %@ (%f)", *&Seconds, v2, *(a1 + 24));
  CFRelease(v2);
  return v6;
}

uint64_t __fpic_isInterstitialBufferingUngated_block_invoke(void *a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result + 264;
  if (!*(result + 296) && !*(result + 297))
  {
    v3 = result + 224;
  }

  v22 = *v3;
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 33);
  v20 = *(v3 + 34);
  v21 = *(v3 + 38);
  if (v5 | v6)
  {
    v7 = a1[6];
    if (*(v7 + 640))
    {
      v8 = (v7 + 628);
      v27 = *v8;
      *&v28 = *(v8 + 2);
      *time2 = *v3;
      *&time2[16] = *(v3 + 16);
      *&time2[24] = v4;
      LOBYTE(v31) = v5;
      BYTE1(v31) = v6;
      *(&v31 + 2) = *(v3 + 34);
      HIWORD(v31) = *(v3 + 38);
      fpic_MakeMomentFromTime(&v27, time2, time1);
      v22 = *time1;
      v4 = *&time1[24];
      v5 = v33;
      v6 = BYTE1(v33);
      v20 = *(&v33 + 2);
      v21 = HIWORD(v33);
      v7 = a1[6];
    }

    v9 = a1[5];
    v10 = *(v7 + 160);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 1142))
    {
      v12 = *(DerivedStorage + 1141) != 0;
    }

    else
    {
      v12 = 0;
    }

    v19 = v22;
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    fpic_CurrentItemMoment(v10, &v27);
    if (!(v5 | v6))
    {
LABEL_27:
      result = CMBaseObjectGetDerivedStorage();
      if (!*(result + 896))
      {
        result = CMBaseObjectGetDerivedStorage();
        v14 = (*(result + 376) | *(result + 377)) != 0;
        goto LABEL_30;
      }

LABEL_28:
      v14 = 1;
LABEL_30:
      *(*(a1[4] + 8) + 24) = v14;
      return result;
    }

    if (v12)
    {
      v26 = 0;
      v25 = kLiveInterstitialAdvanceInterval;
      if (v5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v25 = *MEMORY[0x1E6960CC0];
      v26 = *(MEMORY[0x1E6960CC0] + 16);
      if (v5)
      {
        goto LABEL_16;
      }
    }

    *time1 = v27;
    *&time1[16] = v28;
    v33 = v29;
    FigCreateTimeWithDateAndMoment(time1, &v19, v4);
    LOBYTE(v5) = 1;
LABEL_16:
    *time1 = v19;
    *&time1[24] = v4;
    LOBYTE(v33) = v5;
    BYTE1(v33) = v6;
    *(&v33 + 2) = v20;
    HIWORD(v33) = v21;
    *time2 = v27;
    *&time2[16] = v28;
    v31 = v29;
    if (fpic_MomentsAreCloseWithTolerance(time1, time2, &kMomentsAreCloseThreshold))
    {
LABEL_17:
      result = 1;
      goto LABEL_25;
    }

    *time1 = v27;
    *&time1[16] = v28;
    v33 = v29;
    *time2 = v19;
    *&time2[24] = v4;
    LOBYTE(v31) = v5;
    BYTE1(v31) = v6;
    *(&v31 + 2) = v20;
    HIWORD(v31) = v21;
    v13 = fpic_MomentGreaterThan(time1, time2);
    if (!v12 || v13)
    {
      if (v13)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *time1 = v27;
      *&time1[16] = v28;
      *time2 = v19;
      if (CMTimeCompare(time1, time2) <= 0)
      {
        *time2 = v19;
        *&rhs.value = kLiveInterstitialAdvanceInterval;
        rhs.epoch = 0;
        CMTimeSubtract(time1, time2, &rhs);
        *time2 = v27;
        *&time2[16] = v28;
        if ((CMTimeCompare(time2, time1) & 0x80000000) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    *time1 = v19;
    *time2 = v25;
    *&time2[16] = v26;
    result = fpic_BufferIncludesTime(v10, time1, time2);
LABEL_25:
    if (!(result | v12))
    {
      memset(time1, 0, 24);
      fpic_GetItemEndTime();
      if ((time1[12] & 0x1D) == 1 && (*time2 = *time1, *&time2[16] = *&time1[16], rhs = v19, v15 = CMTimeCompare(time2, &rhs), rhs = *time1, *&v23.value = v27, v23.epoch = v28, CMTimeSubtract(time2, &rhs, &v23), *&rhs.value = *&kPostRollTimeToPausePlaybackBuffer.value, rhs.epoch = 0, v16 = CMTimeCompare(time2, &rhs), !v15))
      {
        v17 = v16;
        result = fpic_IsItemBufferedToEnd(v9, v10) || v17 < 1;
      }

      else
      {
        result = 0;
      }
    }

    if (result)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  return result;
}

void fpic_MakeMomentFromTime(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = *a1;
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = *(a1 + 12) & 1;
  if (*(a2 + 32))
  {
    if (*(a2 + 33))
    {
      v5 = *(a2 + 24);
      v7 = *a1;
      v6 = v5 + CMTimeGetSeconds(&v7);
      v7 = *a2;
      *(a3 + 24) = v6 - CMTimeGetSeconds(&v7);
      *(a3 + 33) = 1;
    }
  }
}

BOOL fpic_BufferIncludesTime(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  theArray = 0;
  FigBaseObject = FigPlaybackItemGetFigBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6 && (v6(FigBaseObject, @"PlayableTimeIntervals", *MEMORY[0x1E695E480], &theArray), theArray) && (Count = CFArrayGetCount(theArray), Count >= 1))
  {
    v8 = Count;
    v9 = 0;
    v10 = 1;
    v11 = &dword_1EAF17000;
    v24 = a3;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
      memset(&v28, 0, sizeof(v28));
      Value = CFDictionaryGetValue(ValueAtIndex, @"startTime");
      CMTimeMakeFromDictionary(&v28, Value);
      memset(&v27, 0, sizeof(v27));
      v14 = CFDictionaryGetValue(ValueAtIndex, @"endTime");
      CMTimeMakeFromDictionary(&v27, v14);
      lhs = v27;
      rhs = *a3;
      CMTimeAdd(&time, &lhs, &rhs);
      v27 = time;
      if (v11[564] >= 7)
      {
        LODWORD(rhs.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v16 = rhs.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
        }

        else
        {
          v17 = v16 & 0xFFFFFFFE;
        }

        if (v17)
        {
          time = *a2;
          Seconds = CMTimeGetSeconds(&time);
          time = v28;
          v19 = CMTimeGetSeconds(&time);
          time = v27;
          v20 = CMTimeGetSeconds(&time);
          LODWORD(lhs.value) = 136316162;
          *(&lhs.value + 4) = "fpic_BufferIncludesTime";
          LOWORD(lhs.flags) = 2048;
          *(&lhs.flags + 2) = Seconds;
          HIWORD(lhs.epoch) = 2048;
          v31 = a1;
          v32 = 2048;
          v33 = v19;
          v34 = 2048;
          v35 = v20;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a3 = v24;
        v11 = &dword_1EAF17000;
      }

      time = v28;
      lhs = *a2;
      if (CMTimeCompare(&time, &lhs) <= 0)
      {
        time = v27;
        lhs = *a2;
        if ((CMTimeCompare(&time, &lhs) & 0x80000000) == 0)
        {
          break;
        }
      }

      v10 = ++v9 < v8;
    }

    while (v8 != v9);
    v21 = v10;
  }

  else
  {
    if (dword_1EAF178D0 >= 7)
    {
      LODWORD(v28.value) = 0;
      LOBYTE(v27.value) = 0;
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v21 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v21;
}

BOOL fpic_MomentCanBeCurrent(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  v12 = *(a2 + 4);
  if (*(a3 + 12))
  {
    v6 = a2[1];
    v16 = *a2;
    v17 = v6;
    v18 = *(a2 + 4);
    v13 = *a3;
    *&v14 = *(a3 + 2);
    fpic_AddTimeToMoment(&v16, &v13, v11);
  }

  v7 = a1[1];
  v16 = *a1;
  v17 = v7;
  v18 = *(a1 + 4);
  if (fpic_MomentGreaterThan(v11, &v16))
  {
    return 1;
  }

  v9 = a1[1];
  v16 = *a1;
  v17 = v9;
  v18 = *(a1 + 4);
  v10 = a2[1];
  v13 = *a2;
  v14 = v10;
  v15 = *(a2 + 4);
  return fpic_MomentsAreCloseWithTolerance(&v16, &v13, &kMomentsAreCloseThreshold);
}

uint64_t fpic_copyEventsScheduledAtSameMomentAsEvent(uint64_t a1, uint64_t a2, __CFArray **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v6 = DerivedStorage;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v8 = Mutable;
      for (i = 0; ; ++i)
      {
        Count = *(v6 + 208);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (i >= Count)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 208), i);
        v12 = fpic_UnwrapEvent();
        if (FigPlayerInterstitialEventDoStartTimesMatch(a2, v12))
        {
          CFArrayAppendValue(v8, ValueAtIndex);
        }

        else if (CFArrayGetCount(v8) > 0)
        {
          break;
        }
      }

      result = 0;
      *a3 = v8;
    }

    else
    {
      fpic_copyEventsScheduledAtSameMomentAsEvent_cold_1(&v14);
      return v14;
    }
  }

  else
  {
    fpic_copyEventsScheduledAtSameMomentAsEvent_cold_2(&v15);
    return v15;
  }

  return result;
}

__n128 fpic_AccumulateDuration(CMTime *a1, CMTime *a2)
{
  if ((a2->flags & 0x1D) == 1)
  {
    if ((a1->flags & 0x1D) == 1)
    {
      lhs = *a1;
      v4 = *a2;
      CMTimeAdd(&v6, &lhs, &v4);
      result.n128_u64[0] = v6.value;
      *a1 = v6;
    }

    else
    {
      result = *&a2->value;
      a1->epoch = a2->epoch;
      *&a1->value = result;
    }
  }

  return result;
}

uint64_t fpic_collectEventsAtNextMoment(uint64_t a1, uint64_t a2, __CFArray *a3, CMTime *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *MEMORY[0x1E6960CC0];
  *&v27.value = *MEMORY[0x1E6960CC0];
  v10 = *(MEMORY[0x1E6960CC0] + 16);
  v27.epoch = v10;
  v11 = *(DerivedStorage + 208);
  if (v11)
  {
    v23 = v9;
    Count = CFArrayGetCount(v11);
    v9 = v23;
    v13 = Count;
  }

  else
  {
    v13 = 0;
  }

  *&v26.value = v9;
  v26.epoch = v10;
  if (a3)
  {
    theArray = a3;
    v24 = a4;
    if (CFArrayGetCount(*(DerivedStorage + 656)) < 1)
    {
      FirstIndexOfValue = 0;
    }

    else
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 656), 0);
      CMBaseObjectGetDerivedStorage();
      FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue();
    }

    if (FirstIndexOfValue < v13)
    {
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 208), FirstIndexOfValue);
        v16 = (*(DerivedStorage + 88))(a1, a2, ValueAtIndex);
        fpic_EventDateTimeMoment(v16, &lhs);
        v17 = *(DerivedStorage + 240);
        v29 = *(DerivedStorage + 224);
        v30 = v17;
        v31 = *(DerivedStorage + 256);
        v18 = fpic_MomentsAreCloseWithTolerance(&v29, &lhs, &kMomentsAreCloseThreshold);
        v19 = FigPlayerInterstitialEventIsPostRoll(v16);
        if (v18 && !(CFSetContainsValue(*(DerivedStorage + 688), ValueAtIndex) | v19))
        {
          CMBaseObjectGetDerivedStorage();
          v20 = FigCFArrayGetFirstIndexOfValue();
          v29 = 0uLL;
          *&v30 = 0;
          fpic_PredictEventDurationOnPrimary(a1, ValueAtIndex, a2, &v29);
          if (BYTE12(v29))
          {
            lhs = v27;
            *&rhs.value = v29;
            rhs.epoch = v30;
            CMTimeAdd(&v27, &lhs, &rhs);
          }

          if (v20 == -1)
          {
            memset(&lhs, 0, sizeof(lhs));
            rhs = v27;
            fpic_GetOffsetForEvent(a1, ValueAtIndex, &rhs, a2, &lhs);
            if (lhs.flags)
            {
              CFArrayAppendValue(theArray, ValueAtIndex);
            }

            else if (BYTE12(v29))
            {
              *&rhs.value = v29;
              rhs.epoch = v30;
              fpic_AccumulateDuration(&v26, &rhs);
            }
          }
        }

        ++FirstIndexOfValue;
      }

      while (v13 != FirstIndexOfValue);
    }

    result = 0;
    if (v24)
    {
      *v24 = v26;
    }
  }

  else
  {
    fpic_collectEventsAtNextMoment_cold_1(&v29);
    return v29;
  }

  return result;
}

uint64_t fpic_collectPostrollEvents(uint64_t a1, __CFArray *a2, char *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      Count = *(v6 + 208);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v7 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 208), v7);
      v11 = fpic_UnwrapEvent();
      if (FigPlayerInterstitialEventIsPostRoll(v11))
      {
        CMBaseObjectGetDerivedStorage();
        if (FigCFArrayGetFirstIndexOfValue() == -1)
        {
          CFArrayAppendValue(a2, ValueAtIndex);
          v8 = 1;
        }
      }

      ++v7;
    }

    result = 0;
    if (a3)
    {
      *a3 = v8;
    }
  }

  else
  {
    fpic_collectPostrollEvents_cold_1(&v13);
    return v13;
  }

  return result;
}

uint64_t fpic_AssertPostRoll(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1146) = 1;
  FigBaseObject = FigPlayerGetFigBaseObject(a2);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(FigBaseObject, @"ActionAtEnd", *MEMORY[0x1E695E480], DerivedStorage + 1168);
  }

  v6 = FigPlayerGetFigBaseObject(a2);
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 8);
  result = VTable + 8;
  v10 = *(v9 + 56);
  if (v10)
  {

    return v10(v6, @"ActionAtEnd", @"None");
  }

  return result;
}

CFIndex fpic_addCurrentEventsAndEnsureAssets(uint64_t a1, uint64_t a2, const __CFArray *a3, char *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v8 = 0;
  if (!a3)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (result = CFArrayGetCount(a3); v8 < result; result = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, v8);
    v11 = fpic_UnwrapEvent();
    v12 = FigPlayerInterstitialEventCopyInterstitialAssetURLs(v11);
    v13 = v12;
    if (v12)
    {
      Count = CFArrayGetCount(v12);
    }

    else
    {
      Count = 0;
    }

    CFArrayGetCount(*(DerivedStorage + 656));
    CFArrayAppendValue(*(DerivedStorage + 656), ValueAtIndex);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        CFArrayGetValueAtIndex(v13, i);
        fpic_SetPerAssetPerEventTrackedObject();
      }

      goto LABEL_24;
    }

    v26 = 0;
    cf = 0;
    v24 = 0;
    v25 = 0;
    v16 = fpic_ReadAssetListForEvent(a1, a2, ValueAtIndex, 0, &cf, &v26, &v25, &v24);
    if (!v16)
    {
      if (cf)
      {
        fpic_AddNewHttpReq(a1, ValueAtIndex, cf, v24);
      }

      else
      {
        if (!v26)
        {
          goto LABEL_19;
        }

        fpic_AddNewCustomURLReq(a1, ValueAtIndex, v26, v25, v24);
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

LABEL_19:
    if (v24)
    {
      CFRelease(v24);
    }

    if (v26)
    {
      CFRelease(v26);
    }

    if (v16)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v21 = *(DerivedStorage + 1200) + 1;
      *(DerivedStorage + 1200) = v21;
      fpic_setItemPropertyInt32(*(DerivedStorage + 160), @"interstitialPlaybackFailureCount", v21);
      fpic_ClearAssetListResponseAfterAssetListReadFailure(a1, ValueAtIndex, v16);
      fpic_RemoveEvent(a1, ValueAtIndex, 0, 0, 0, 1);
      CFArrayRemoveValueAtIndex(a3, v8--);
      goto LABEL_34;
    }

LABEL_24:
    if (v13)
    {
      CFRelease(v13);
    }

    if (dword_1EAF178D0)
    {
      LODWORD(cf) = 0;
      LOBYTE(v26) = 0;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v18 = cf;
      if (os_log_type_enabled(v17, v26))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v28 = 136315650;
        v29 = "fpic_addCurrentEventsAndEnsureAssets";
        v30 = 2048;
        v31 = a1;
        v32 = 2112;
        v33 = v11;
        _os_log_send_and_compose_impl();
      }

      v7 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v7 = 1;
    }

LABEL_34:
    ++v8;
    if (a3)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (a4)
  {
    *a4 = v7;
  }

  return result;
}