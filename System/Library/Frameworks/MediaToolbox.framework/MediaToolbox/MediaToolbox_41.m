void __papc_playbackSessionRequestForStreamingKeyCompletion_block_invoke(uint64_t a1)
{
  valuePtr = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = *(a1 + 64);
  if (v3)
  {
    goto LABEL_2;
  }

  v8 = *(a1 + 32);
  if (!v8)
  {
    v3 = -12860;
LABEL_2:
    valuePtr = v3;
    goto LABEL_3;
  }

  Value = CFDictionaryGetValue(v8, *MEMORY[0x1E6961BD0]);
  if (!Value || (v10 = CFDictionaryGetValue(Value, *MEMORY[0x1E6961A70])) == 0 || (CFNumberGetValue(v10, kCFNumberIntType, &valuePtr), !valuePtr))
  {
    FigCFDictionaryGetValue();
    FigCFDictionarySetValue();
  }

LABEL_3:
  FigCFDictionarySetInt64();
  FigCFDictionarySetBoolean();
  FigCFDictionarySetInt32();
  v4 = *(*(a1 + 48) + 40);
  if (v4)
  {
    FigAirPlayURLProcessorUtilHandleStreamingKeyResponse(v4, Mutable);
  }

  v5 = *(a1 + 40);
  if (*v5)
  {
    CFRelease(*v5);
    v5 = *(a1 + 40);
  }

  v6 = *(v5 + 8);
  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(*(a1 + 56));
  v7 = *(a1 + 32);
  if (v7)
  {
    CFRelease(v7);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void __iapc_handleURLProcessorFailed_block_invoke(uint64_t a1)
{
  FigCFDictionaryGetInt32IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  ErrorPayload = iapc_createErrorPayload(0, 0);
  v3 = *(a1 + 40);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  papc_postNotificationAsync(v3, DefaultLocalCenter, @"FailedToPlayToEnd", *(a1 + 48), ErrorPayload);
  if (ErrorPayload)
  {
    CFRelease(ErrorPayload);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }
}

BOOL papc_getIsAirPlayVideoActive()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72) != 1)
  {
    return 0;
  }

  if (*(DerivedStorage + 128))
  {
    return 1;
  }

  return *(DerivedStorage + 129) != 0;
}

uint64_t papc_handleSetProperty(const void *a1, uint64_t a2, const void *a3, const void *a4, char *a5, void *a6, void *a7)
{
  v57 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_handleSetProperty_cold_1(v56);
    goto LABEL_68;
  }

  if (FigCFEqual())
  {
    if (a4)
    {
      v14 = CFGetTypeID(a4);
      if (v14 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(a4);
        if (dword_1EAF17268)
        {
          v55 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (a1)
        {
          CFRetain(a1);
        }

        v24 = *(DerivedStorage + 56);
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __papc_handleSetProperty_block_invoke;
        v52[3] = &__block_descriptor_49_e5_v8__0l;
        v53 = Value;
        v52[4] = DerivedStorage;
        v52[5] = a1;
        v25 = v52;
LABEL_38:
        dispatch_async(v24, v25);
        goto LABEL_39;
      }
    }

    papc_handleSetProperty_cold_2(v56);
    goto LABEL_68;
  }

  if (FigCFEqual())
  {
    if (a4)
    {
      v17 = CFGetTypeID(a4);
      if (v17 == CFBooleanGetTypeID())
      {
        v18 = CFBooleanGetValue(a4);
        if (dword_1EAF17268)
        {
          v55 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (a1)
        {
          CFRetain(a1);
        }

        v24 = *(DerivedStorage + 56);
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __papc_handleSetProperty_block_invoke_31;
        v50[3] = &__block_descriptor_49_e5_v8__0l;
        v51 = v18;
        v50[4] = DerivedStorage;
        v50[5] = a1;
        v25 = v50;
        goto LABEL_38;
      }
    }

    papc_handleSetProperty_cold_3(v56);
LABEL_68:
    v30 = v56[0];
    FigReadWriteLockUnlockForRead();
    return v30;
  }

  if (FigCFEqual())
  {
    if (a4)
    {
      v20 = CFGetTypeID(a4);
      if (v20 == CFBooleanGetTypeID())
      {
        v21 = CFBooleanGetValue(a4);
        v22 = v21;
        if (dword_1EAF17268)
        {
          v41 = v21;
          v55 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v22 = v41;
        }

        if (a1)
        {
          CFRetain(a1);
        }

        v24 = *(DerivedStorage + 56);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __papc_handleSetProperty_block_invoke_34;
        block[3] = &__block_descriptor_49_e5_v8__0l;
        v49 = v22;
        block[4] = DerivedStorage;
        block[5] = a1;
        v25 = block;
        goto LABEL_38;
      }
    }

    papc_handleSetProperty_cold_4(v56);
    goto LABEL_68;
  }

  if (CFEqual(a3, @"ClientInBackground"))
  {
    if (a4)
    {
      v26 = CFGetTypeID(a4);
      if (v26 == CFBooleanGetTypeID())
      {
        v27 = CFBooleanGetValue(a4);
        if (a1)
        {
          CFRetain(a1);
        }

        v24 = *(DerivedStorage + 56);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __papc_handleSetProperty_block_invoke_2;
        v46[3] = &__block_descriptor_49_e5_v8__0l;
        v47 = v27;
        v46[4] = DerivedStorage;
        v46[5] = a1;
        v25 = v46;
        goto LABEL_38;
      }
    }

    papc_handleSetProperty_cold_5(v56);
    goto LABEL_68;
  }

  if (FigCFEqual())
  {
    v28 = *(DerivedStorage + 40);
    if (v28)
    {
      if (!a4)
      {
LABEL_34:
        v30 = FigAirPlayRouteSetProperty(v28, 0x1F0B25938, a4);
        v31 = 0;
        goto LABEL_40;
      }

      v29 = CFGetTypeID(a4);
      if (v29 == CFStringGetTypeID())
      {
        v28 = *(DerivedStorage + 40);
        goto LABEL_34;
      }
    }

LABEL_39:
    v31 = 0;
    v30 = 0;
    goto LABEL_40;
  }

  if (FigCFEqual())
  {
    v35 = *(DerivedStorage + 40);
    if (v35)
    {
      FigAirPlayRouteSetProperty(v35, 0x1F0B22118, a4);
    }

    goto LABEL_39;
  }

  if (!FigCFEqual())
  {
    if (!FigCFEqual())
    {
      goto LABEL_39;
    }

    v40 = CFBooleanGetValue(a4);
    if (a1)
    {
      CFRetain(a1);
    }

    v38 = *(DerivedStorage + 56);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __papc_handleSetProperty_block_invoke_4;
    v42[3] = &__block_descriptor_49_e5_v8__0l;
    v42[4] = DerivedStorage;
    v42[5] = a1;
    v43 = v40;
    v39 = v42;
    goto LABEL_61;
  }

  v36 = CFBooleanGetValue(a4);
  if (v36 != *(DerivedStorage + 83))
  {
    v37 = v36;
    *(DerivedStorage + 83) = v36;
    if (a1)
    {
      CFRetain(a1);
    }

    v38 = *(DerivedStorage + 56);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __papc_handleSetProperty_block_invoke_3;
    v44[3] = &__block_descriptor_49_e5_v8__0l;
    v45 = v37;
    v44[4] = DerivedStorage;
    v44[5] = a1;
    v39 = v44;
LABEL_61:
    dispatch_async(v38, v39);
  }

  v30 = 0;
  v31 = 1;
LABEL_40:
  FigReadWriteLockUnlockForRead();
  *a5 = v31;
  if ((v31 & 1) == 0)
  {
    if (a3)
    {
      v32 = CFRetain(a3);
    }

    else
    {
      v32 = 0;
    }

    *a6 = v32;
    if (a4)
    {
      v33 = CFRetain(a4);
    }

    else
    {
      v33 = 0;
    }

    *a7 = v33;
  }

  return v30;
}

void __papc_handleSetProperty_block_invoke(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    __papc_handleSetProperty_block_invoke_cold_1();
  }

  else
  {
    v3 = *(a1 + 48);
    if (v3 != *(v2 + 76))
    {
      *(v2 + 76) = v3;
      papc_checkStartStopAirPlay(*(a1 + 40), NAN);
    }
  }

  FigReadWriteLockUnlockForRead();
  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void papc_checkStartStopAirPlay(const void *a1, float a2)
{
  BOOLean[16] = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BOOLean[0] = 0;
  v5 = MEMORY[0x1E695E480];
  if (*(DerivedStorage + 72) != 1)
  {
    goto LABEL_20;
  }

  v6 = DerivedStorage;
  if (papc_isCoordinatedAPVCapableRouteSelected())
  {
    FigBytePumpGetFigBaseObject(*(v6 + 40));
    v8 = v7;
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9 && (v9(v8, 0x1F0B34E58, *v5, BOOLean), BOOLean[0]) && CFBooleanGetValue(BOOLean[0]))
    {
      v10 = CMBaseObjectGetDerivedStorage();
      if (*(v10 + 76) && *(v10 + 77) && *(v6 + 79) && (!*(v6 + 82) || !papc_isDeviceUnlocked()))
      {
LABEL_15:
        v12 = papc_isPlayQueueEmpty() == 0;
        goto LABEL_17;
      }
    }

    else
    {
      v11 = CMBaseObjectGetDerivedStorage();
      if (*(v11 + 76) && *(v11 + 77) && *(v6 + 81))
      {
        goto LABEL_15;
      }
    }

    v12 = 0;
LABEL_17:
    if (BOOLean[0])
    {
      CFRelease(BOOLean[0]);
    }

    if (v12)
    {
      goto LABEL_20;
    }
  }

  papc_switchFromAirPlayVideoToLocal(a1);
LABEL_20:
  v13 = CMBaseObjectGetDerivedStorage();
  BOOLean[0] = 0;
  if (*(v13 + 72))
  {
    return;
  }

  v14 = v13;
  if (!papc_isCoordinatedAPVCapableRouteSelected() || !*(v14 + 78) || papc_isPlayQueueEmpty() || a2 == 0.0)
  {
    goto LABEL_44;
  }

  FigBytePumpGetFigBaseObject(*(v14 + 40));
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v17 || (v17(v16, 0x1F0B34E58, *v5, BOOLean), !BOOLean[0]) || !CFBooleanGetValue(BOOLean[0]))
  {
    v22 = CMBaseObjectGetDerivedStorage();
    if (*(v22 + 76) && *(v22 + 77))
    {
      v19 = *(v14 + 81) != 0;
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v18 = CMBaseObjectGetDerivedStorage();
  if (!*(v18 + 76) || !*(v18 + 77))
  {
LABEL_44:
    v19 = 0;
    goto LABEL_45;
  }

  v19 = 0;
  if (gIsiOSDeviceWithMedusaSupport)
  {
    v20 = *(v14 + 80) == 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = !v20;
  if (*(v14 + 79) && v21)
  {
    if (*(v14 + 81))
    {
      if (*(v14 + 82))
      {
        v19 = !papc_isDeviceUnlocked();
      }

      else
      {
        v19 = 1;
      }

      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_45:
  if (BOOLean[0])
  {
    CFRelease(BOOLean[0]);
  }

  if (v19)
  {
    v23 = CMBaseObjectGetDerivedStorage();
    v24 = CMBaseObjectGetDerivedStorage();
    if (*(v24 + 76) && *(v24 + 77))
    {
      if (dword_1EAF17268)
      {
        LODWORD(cf) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v27 = CMBaseObjectGetDerivedStorage();
      if (*(v27 + 72) == 1)
      {
        if (*(v27 + 128))
        {
          v28 = 1;
        }

        else
        {
          v28 = *(v27 + 129) != 0;
        }
      }

      else
      {
        v28 = 0;
      }

      cf = 0;
      v29 = CMBaseObjectGetDerivedStorage();
      v30 = (v29 + 104);
      if (!*(v29 + 104))
      {
        v31 = *(v29 + 88);
        v32 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v32 && !v32(v31, &cf))
        {
          if (dword_1EAF17268)
          {
            v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v34 = FigCFWeakReferenceHolderCreateWithReferencedObject();
          if (v34)
          {
            papc_checkStartStopAirPlay_cold_1(&cf, v30, v34);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      *(v23 + 72) = 1;
      FigBaseObject = FigPlayerGetFigBaseObject(*(v23 + 32));
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v36)
      {
        v36(FigBaseObject, @"ParticipatingInCoordinatedPlayback", *MEMORY[0x1E695E4C0]);
      }

      v37 = CMBaseObjectGetDerivedStorage();
      BOOLean[0] = 0;
      v56 = 0;
      if (*(v37 + 72) != 1)
      {
        goto LABEL_98;
      }

      v38 = v37;
      if (!*(v37 + 104))
      {
        goto LABEL_93;
      }

      v39 = *(v37 + 32);
      v40 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (!v40)
      {
        goto LABEL_93;
      }

      if (v40(v39, 0, BOOLean))
      {
        goto LABEL_93;
      }

      if (!BOOLean[0])
      {
        goto LABEL_93;
      }

      v41 = FigPlaybackItemGetFigBaseObject(BOOLean[0]);
      v42 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v42 || v42(v41, @"AirPlay_FirstPlayQueueItemParams", *v5, &v56))
      {
        goto LABEL_93;
      }

      v43 = v56;
      if (!v56)
      {
LABEL_98:
        if (BOOLean[0])
        {
          CFRelease(BOOLean[0]);
        }

        if (*(v23 + 129))
        {
          *(v23 + 129) = 0;
          papc_setupOrResetAirPlayMockPlaybackIfNeeded(a1, 1);
        }

        CMBaseObjectGetDerivedStorage();
        v56 = 0;
        BOOLean[0] = 0;
        BOOLean[1] = 0;
        BOOLean[2] = papc_broadcastTimelineState;
        BOOLean[3] = papc_broadcastParticipantState;
        BOOLean[4] = papc_asynchronouslyReloadTimelineState;
        if (!FigPlaybackCoordinatorCreate())
        {
          v51 = v56;
          v52 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v52)
          {
            if (!v52(v51, a1, BOOLean))
            {
              papc_checkStartStopAirPlay_cold_2();
            }
          }
        }

        if (v56)
        {
          CFRelease(v56);
        }

        papc_updateIsAirPlayVideoActiveIfNeeded(a1, v28);
        return;
      }

      v44 = *(v38 + 104);
      v45 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v45 && !v45(v44, v43, 0, 0))
      {
        v46 = BOOLean[0];
        if (BOOLean[0])
        {
          v47 = 0;
          while (1)
          {
            v48 = v46;
            CFRetain(v46);
            if (v47)
            {
              CFRelease(v47);
            }

            if (BOOLean[0])
            {
              CFRelease(BOOLean[0]);
              BOOLean[0] = 0;
            }

            v49 = *(v38 + 32);
            v50 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (!v50 || v50(v49, v48, BOOLean))
            {
              break;
            }

            if (BOOLean[0])
            {
              papc_insertSubItemToReceiver(a1, BOOLean[0], v48);
              v46 = BOOLean[0];
              v47 = v48;
              if (BOOLean[0])
              {
                continue;
              }
            }

            goto LABEL_111;
          }
        }

        else
        {
          v48 = 0;
LABEL_111:
          if (*(v38 + 128))
          {
            if (!*(v38 + 129))
            {
              v53 = *(v38 + 104);
              v54 = *(*(CMBaseObjectGetVTable() + 16) + 96);
              if (v54)
              {
                v54(v53, *MEMORY[0x1E6961EA8], 0, *MEMORY[0x1E695E4D0]);
              }
            }
          }
        }
      }

      else
      {
LABEL_93:
        v48 = 0;
      }

      if (v56)
      {
        CFRelease(v56);
      }

      if (v48)
      {
        CFRelease(v48);
      }

      goto LABEL_98;
    }

    if (dword_1EAF17268)
    {
      LODWORD(cf) = 0;
      v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

void __papc_handleSetProperty_block_invoke_31(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    __papc_handleSetProperty_block_invoke_31_cold_1();
  }

  else
  {
    v3 = *(a1 + 48);
    if (v3 != *(v2 + 77))
    {
      *(v2 + 77) = v3;
      papc_checkStartStopAirPlay(*(a1 + 40), NAN);
    }
  }

  FigReadWriteLockUnlockForRead();
  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __papc_handleSetProperty_block_invoke_34(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    __papc_handleSetProperty_block_invoke_34_cold_1();
  }

  else
  {
    v3 = *(a1 + 48);
    if (v3 != *(v2 + 79))
    {
      *(v2 + 79) = v3;
      papc_checkStartStopAirPlay(*(a1 + 40), NAN);
    }
  }

  FigReadWriteLockUnlockForRead();
  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __papc_handleSetProperty_block_invoke_2(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    __papc_handleSetProperty_block_invoke_2_cold_1();
  }

  else if (*(a1 + 48) != *(v2 + 82))
  {
    v8 = 0;
    FigReadWriteLockLockForRead();
    v3 = *(a1 + 32);
    *(v3 + 82) = *(a1 + 48);
    FigBytePumpGetFigBaseObject(*(v3 + 40));
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v5, 0x1F0B34E58, *MEMORY[0x1E695E480], &v8);
    }

    papc_checkStartStopAirPlay(*(a1 + 40), NAN);
  }

  FigReadWriteLockUnlockForRead();
  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }
}

void __papc_handleSetProperty_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72) != 1)
  {
    v3 = (*(a1 + 48) ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
    FigBaseObject = FigPlayerGetFigBaseObject(*(v2 + 32));
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(FigBaseObject, @"ParticipatingInCoordinatedPlayback", *v3);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {

    CFRelease(v6);
  }
}

void __papc_handleSetProperty_block_invoke_4(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  if (*(*(a1 + 32) + 24))
  {
    __papc_handleSetProperty_block_invoke_4_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 72) == 1)
    {
      if (*(DerivedStorage + 128))
      {
        v3 = 1;
      }

      else
      {
        v3 = *(DerivedStorage + 129) != 0;
      }
    }

    else
    {
      v3 = 0;
    }

    papc_setupOrResetAirPlayMockPlaybackIfNeeded(*(a1 + 40), *(a1 + 48));
    papc_updateIsAirPlayVideoActiveIfNeeded(*(a1 + 40), v3);
  }

  FigReadWriteLockUnlockForRead();
  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

void papc_updateIsAirPlayVideoActiveIfNeeded(const void *a1, int a2)
{
  CMBaseObjectGetDerivedStorage();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 72) == 1)
  {
    if (*(DerivedStorage + 128))
    {
      v5 = 1;
    }

    else
    {
      v5 = *(DerivedStorage + 129) != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v5 != a2)
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

    papc_postNotificationAsync(a1, DefaultLocalCenter, @"IsAirPlayVideoActiveDidChange", a1, 0);
  }
}

uint64_t papc_isCoordinatedAPVCapableRouteSelected()
{
  CMBaseObjectGetDerivedStorage();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  return 0;
}

BOOL papc_isDeviceUnlocked()
{
  if (gFigPlayerAirPlayDeviceLockedStateNotifyTokenIsValid != 1)
  {
    return 1;
  }

  usleep(0x124F8u);
  return SBSGetScreenLockStatus() == 0;
}

uint64_t papc_isPlayQueueEmpty()
{
  cf = 0;
  v0 = *(CMBaseObjectGetDerivedStorage() + 32);
  v1 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v1)
  {
    v2 = 0;
    goto LABEL_5;
  }

  v2 = v1(v0, 0, &cf) == 0;
  if (!cf)
  {
LABEL_5:
    v3 = 1;
    return v2 & v3;
  }

  CFRelease(cf);
  v3 = 0;
  return v2 & v3;
}

void __papc_removeURLProcessorFromAllItems_block_invoke()
{
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v0)
  {
    v1 = v0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 40))
    {
      v3 = DerivedStorage;
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      v4 = *(v3 + 40);
      if (v4)
      {
        CFRelease(v4);
        *(v3 + 40) = 0;
      }
    }

    CFRelease(v1);
  }
}

void papc_mediaControlHandleTypePlaybackCoordinationMedium(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFDictionaryGetValue(a2, *MEMORY[0x1E6961A60]);
  Value = CFDictionaryGetValue(a2, *MEMORY[0x1E6961A48]);
  if (!Value || !*(DerivedStorage + 112))
  {
    return;
  }

  v6 = Value;
  if (FigCFEqual())
  {
    v7 = papc_copyUpdatedStateForKey(a1, v6, *MEMORY[0x1E69632A0], 1);
    v8 = *(DerivedStorage + 112);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!FigCFEqual())
    {
      return;
    }

    v7 = papc_copyUpdatedStateForKey(a1, v6, *MEMORY[0x1E6963370], 1);
    v8 = *(DerivedStorage + 112);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v9(v8, v7);
LABEL_9:
  if (v7)
  {

    CFRelease(v7);
  }
}

CFTypeRef papc_copyUpdatedStateForKey(uint64_t a1, const void *a2, uint64_t a3, int a4)
{
  v17 = 0;
  if (FigCFDictionaryGetValueIfPresent())
  {
    v16 = 0;
    v7 = v17;
    if (a4)
    {
      v15 = papc_copyItemForUUID(a1, v17);
      if (v15)
      {
        v12 = iapc_copySubItem(v15);
        v7 = v12;
        if (v12)
        {
          FigBaseObject = FigPlaybackItemGetFigBaseObject(v12);
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v14)
          {
            v14(FigBaseObject, @"CoordinationIdentifier", *MEMORY[0x1E695E480], &v16);
          }

          v8 = 0;
          v9 = 0;
        }

        else
        {
          v9 = 0;
          v8 = 1;
        }

LABEL_6:
        if (v16)
        {
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          FigCFDictionarySetValue();
          if (v16)
          {
            CFRelease(v16);
          }

          if (v8)
          {
LABEL_10:
            if (v9)
            {
              goto LABEL_11;
            }

LABEL_15:
            CFRelease(v15);
            if (MutableCopy)
            {
              return MutableCopy;
            }

            goto LABEL_16;
          }
        }

        else
        {
          MutableCopy = 0;
          if (v8)
          {
            goto LABEL_10;
          }
        }

        CFRelease(v7);
        if (v9)
        {
LABEL_11:
          if (MutableCopy)
          {
            return MutableCopy;
          }

          goto LABEL_16;
        }

        goto LABEL_15;
      }

      v7 = 0;
    }

    else
    {
      CMBaseObjectGetDerivedStorage();
      v15 = 0;
    }

    v8 = 1;
    v9 = 1;
    goto LABEL_6;
  }

LABEL_16:
  if (a2)
  {
    return CFRetain(a2);
  }

  else
  {
    return 0;
  }
}

void papc_broadcastTimelineState(const void *a1, const void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17268)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v6 = *(DerivedStorage + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __papc_broadcastTimelineState_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a1;
  block[6] = a2;
  dispatch_async(v6, block);
}

void papc_broadcastParticipantState(const void *a1, const void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17268)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v6 = *(DerivedStorage + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __papc_broadcastParticipantState_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = DerivedStorage;
  block[5] = a1;
  block[6] = a2;
  dispatch_async(v6, block);
}

uint64_t papc_asynchronouslyReloadTimelineState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (dword_1EAF17268)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return a4(a3);
}

void __papc_broadcastTimelineState_block_invoke(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    __papc_broadcastTimelineState_block_invoke_cold_1();
LABEL_11:
    Mutable = 0;
    goto LABEL_12;
  }

  if (!*(v2 + 104))
  {
    if (dword_1EAF17268)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_11;
  }

  v3 = papc_copyUpdatedStateForKey(*(a1 + 40), *(a1 + 48), *MEMORY[0x1E6963370], 0);
  if (dword_1EAF17268)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  v7 = *(*(a1 + 32) + 104);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v8)
  {
    v8(v7, *MEMORY[0x1E6961A58], Mutable);
  }

  if (v3)
  {
    CFRelease(v3);
  }

LABEL_12:
  FigReadWriteLockUnlockForRead();
  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    CFRelease(v10);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void __papc_broadcastParticipantState_block_invoke(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    __papc_broadcastParticipantState_block_invoke_cold_1();
LABEL_11:
    Mutable = 0;
    goto LABEL_12;
  }

  if (!*(v2 + 104))
  {
    if (dword_1EAF17268)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_11;
  }

  v3 = papc_copyUpdatedStateForKey(*(a1 + 40), *(a1 + 48), *MEMORY[0x1E69632A0], 0);
  if (dword_1EAF17268)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  v7 = *(*(a1 + 32) + 104);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v8)
  {
    v8(v7, *MEMORY[0x1E6961A50], Mutable);
  }

  if (v3)
  {
    CFRelease(v3);
  }

LABEL_12:
  FigReadWriteLockUnlockForRead();
  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    CFRelease(v10);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t papc_AddToPlayQueue(const void *a1, uint64_t a2, CFTypeRef a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_AddToPlayQueue_cold_1(DerivedStorage + 16, &v15);
    return v15;
  }

  else
  {
    v7 = iapc_copySubItem(a2);
    if (a3)
    {
      a3 = iapc_copySubItem(a3);
    }

    v8 = *(DerivedStorage + 32);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v10 = v9(v8, v7, a3);
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        if (a1)
        {
          CFRetain(a1);
        }

        if (v7)
        {
          CFRetain(v7);
        }

        if (a3)
        {
          CFRetain(a3);
        }

        v11 = *(DerivedStorage + 56);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __papc_AddToPlayQueue_block_invoke;
        block[3] = &__block_descriptor_64_e5_v8__0l;
        block[4] = DerivedStorage;
        block[5] = a1;
        block[6] = v7;
        block[7] = a3;
        dispatch_async(v11, block);
        v12 = 0;
      }
    }

    else
    {
      v12 = 4294954514;
    }

    FigReadWriteLockUnlockForRead();
    if (v7)
    {
      CFRelease(v7);
    }

    if (a3)
    {
      CFRelease(a3);
    }
  }

  return v12;
}

uint64_t papc_RemoveFromPlayQueue(const void *a1, CFTypeRef a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_RemoveFromPlayQueue_cold_1(&v12);
    goto LABEL_17;
  }

  if (a2)
  {
    a2 = iapc_copySubItem(a2);
    if (!a2)
    {
      papc_RemoveFromPlayQueue_cold_2(&v12);
LABEL_17:
      v9 = v12;
      FigReadWriteLockUnlockForRead();
      return v9;
    }
  }

  v5 = *(DerivedStorage + 32);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v6)
  {
    v7 = v6(v5, a2);
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      if (a1)
      {
        CFRetain(a1);
      }

      if (a2)
      {
        CFRetain(a2);
      }

      v8 = *(DerivedStorage + 56);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __papc_RemoveFromPlayQueue_block_invoke;
      v11[3] = &__block_descriptor_56_e5_v8__0l;
      v11[4] = DerivedStorage;
      v11[5] = a1;
      v11[6] = a2;
      dispatch_async(v8, v11);
      v9 = 0;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  FigReadWriteLockUnlockForRead();
  if (a2)
  {
    CFRelease(a2);
  }

  return v9;
}

uint64_t papc_SetRate(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_SetRate_cold_1(&v12);
    v8 = v12;
  }

  else
  {
    if (a2 != 0.0)
    {
      v5 = *(DerivedStorage + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __papc_SetRate_block_invoke;
      block[3] = &__block_descriptor_52_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a1;
      v11 = a2;
      dispatch_sync(v5, block);
    }

    v6 = *(DerivedStorage + 32);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v7)
    {
      v8 = v7(v6, a2);
    }

    else
    {
      v8 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t papc_GetRate(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_GetRate_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v5)
    {
      v6 = v5(v4, a2);
    }

    else
    {
      v6 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v6;
}

uint64_t papc_SetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_SetRateWithFade_cold_1(&v16);
    v10 = v16;
  }

  else
  {
    if (a3 != 0.0)
    {
      v7 = *(DerivedStorage + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __papc_SetRateWithFade_block_invoke;
      block[3] = &__block_descriptor_52_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a1;
      v15 = a3;
      dispatch_sync(v7, block);
    }

    v8 = *(DerivedStorage + 32);
    v12 = *a2;
    v13 = *(a2 + 2);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v9)
    {
      v16 = v12;
      v17 = v13;
      v10 = v9(v8, &v16, a3);
    }

    else
    {
      v10 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v10;
}

uint64_t papc_StartPreroll(float a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_StartPreroll_cold_1(&v10);
    v8 = v10;
  }

  else
  {
    v6 = *(DerivedStorage + 32);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v7)
    {
      v8 = v7(v6, a3, a1);
    }

    else
    {
      v8 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t papc_StepByCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_StepByCount_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v5)
    {
      v6 = v5(v4, a2);
    }

    else
    {
      v6 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v6;
}

uint64_t papc_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_SetRateAndAnchorTime_cold_1(&v24);
    v14 = v24;
  }

  else
  {
    if (a5 != 0.0)
    {
      v11 = *(DerivedStorage + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __papc_SetRateAndAnchorTime_block_invoke;
      block[3] = &__block_descriptor_52_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a1;
      v21 = a5;
      dispatch_sync(v11, block);
    }

    v12 = *(DerivedStorage + 32);
    v18 = *a2;
    v19 = *(a2 + 2);
    v16 = *a3;
    v17 = *(a3 + 2);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    if (v13)
    {
      v24 = v18;
      v25 = v19;
      v22 = v16;
      v23 = v17;
      v14 = v13(v12, &v24, &v22, a4, a5);
    }

    else
    {
      v14 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v14;
}

uint64_t papc_CreatePlaybackItemFromAsset(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v30 = 0;
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_CreatePlaybackItemFromAsset_cold_1(&cf);
    v18 = 0;
    v19 = cf;
LABEL_26:
    FigReadWriteLockUnlockForRead();
    if (!v18)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v11 = *(DerivedStorage + 32);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v12)
  {
    v18 = 0;
    v19 = 4294954514;
    goto LABEL_26;
  }

  v13 = v12(v11, a2, a3, a4, &v30);
  if (v13)
  {
    v19 = v13;
LABEL_25:
    v18 = 0;
    goto LABEL_26;
  }

  CFGetAllocator(a1);
  v14 = v30;
  theString = 0;
  cf = 0;
  CFGetAllocator(a1);
  FigPlaybackItemGetClassID();
  v15 = CMDerivedObjectCreate();
  if (v15)
  {
    goto LABEL_33;
  }

  v16 = CMBaseObjectGetDerivedStorage();
  *v16 = FigSimpleMutexCreate();
  if (v14)
  {
    v17 = CFRetain(v14);
  }

  else
  {
    v17 = 0;
  }

  *(v16 + 24) = v17;
  *(v16 + 32) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v16 + 8) = FigReadWriteLockCreate();
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, (v16 + 56), 10, 0x8000100u);
  }

  v20 = *(v16 + 24);
  v21 = CFGetAllocator(a1);
  FigBaseObject = FigPlaybackItemGetFigBaseObject(v20);
  v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v23)
  {
    v19 = 4294954514;
    goto LABEL_23;
  }

  v15 = v23(FigBaseObject, 0x1F0B3D158, v21, v16 + 48);
  if (v15)
  {
    goto LABEL_33;
  }

  if (!*(v16 + 48))
  {
    v19 = 0;
LABEL_23:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_25;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v15 = FigNotificationCenterAddWeakListener();
  if (v15)
  {
LABEL_33:
    v19 = v15;
    goto LABEL_23;
  }

  v18 = cf;
  if (!cf || (v24 = *(CMBaseObjectGetDerivedStorage() + 48)) == 0 || (v25 = CFRetain(v24)) == 0)
  {
    v19 = 0;
    goto LABEL_26;
  }

  v26 = v25;
  FigSimpleMutexLock();
  v27 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (v27)
  {
    v28 = v27;
    FigCFDictionarySetValue();
    CFRelease(v28);
    FigSimpleMutexUnlock();
    v19 = 0;
    *a5 = v18;
    v18 = 0;
  }

  else
  {
    papc_CreatePlaybackItemFromAsset_cold_2(DerivedStorage, &cf);
    v19 = cf;
  }

  FigReadWriteLockUnlockForRead();
  CFRelease(v26);
  if (!v18)
  {
    goto LABEL_28;
  }

LABEL_27:
  CFRelease(v18);
LABEL_28:
  if (v30)
  {
    CFRelease(v30);
  }

  return v19;
}

uint64_t papc_SetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_SetRateWithOptions_cold_1(&v14);
    v10 = v14;
  }

  else
  {
    if (a3 != 0.0)
    {
      v7 = *(DerivedStorage + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __papc_SetRateWithOptions_block_invoke;
      block[3] = &__block_descriptor_52_e5_v8__0l;
      block[4] = DerivedStorage;
      block[5] = a1;
      v13 = a3;
      dispatch_sync(v7, block);
    }

    v8 = *(DerivedStorage + 32);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v9)
    {
      v10 = v9(v8, a2, a3);
    }

    else
    {
      v10 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v10;
}

uint64_t papc_SetProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_SetProperties_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v7 = FPSupport_HandlePlayerSetPropertiesAndForwardToSubPlayer(a1, *(DerivedStorage + 32), 0, papc_handleSetProperty, a2, a3);
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

uint64_t papc_ReevaluateRouteConfiguration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFCopyCompactDescription();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_ReevaluateRouteConfiguration_cold_1(&v7);
    v5 = v7;
  }

  else
  {
    v5 = FigPlayerReevaluateRouteConfigurationForReason(*(DerivedStorage + 32), a2, @" -> coordinated AirPlay sub-player");
  }

  FigReadWriteLockUnlockForRead();
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

uint64_t papc_AddExternalStartupTask(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_AddExternalStartupTask_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v5)
    {
      v6 = v5(v4, a2);
    }

    else
    {
      v6 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v6;
}

uint64_t papc_RemoveExternalStartupTask(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_RemoveExternalStartupTask_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v5)
    {
      v6 = v5(v4, a2);
    }

    else
    {
      v6 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v6;
}

uint64_t papc_CopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_CopyDisplayedCVPixelBuffer_cold_1(&v10);
    v8 = v10;
  }

  else
  {
    v6 = *(DerivedStorage + 32);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v7)
    {
      v8 = v7(v6, a2, a3);
    }

    else
    {
      v8 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t iapc_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  iapc_Invalidate();
  v1 = DerivedStorage[4];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[4] = 0;
  }

  v2 = DerivedStorage[3];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[3] = 0;
  }

  v3 = DerivedStorage[5];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[5] = 0;
  }

  v4 = DerivedStorage[6];
  if (v4)
  {
    CFRelease(v4);
  }

  FigReadWriteLockDestroy();

  return FigSimpleMutexDestroy();
}

uint64_t iapc_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4, _BYTE *a5, void *a6, void *a7)
{
  CMBaseObjectGetDerivedStorage();
  *a5 = 0;
  if (a3)
  {
    v12 = CFRetain(a3);
  }

  else
  {
    v12 = 0;
  }

  *a6 = v12;
  if (a4)
  {
    v13 = CFRetain(a4);
  }

  else
  {
    v13 = 0;
  }

  *a7 = v13;
  return 0;
}

uint64_t papc_BeginInterruption()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_BeginInterruption_cold_1(&v6);
    v4 = v6;
  }

  else
  {
    v1 = *(DerivedStorage + 32);
    v2 = *(CMBaseObjectGetVTable() + 24);
    if (v2 && (v3 = *(v2 + 8)) != 0)
    {
      v4 = v3(v1);
    }

    else
    {
      v4 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v4;
}

uint64_t papc_EndInterruption(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_EndInterruption_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(CMBaseObjectGetVTable() + 24);
    if (v5 && (v6 = *(v5 + 16)) != 0)
    {
      v7 = v6(v4, a2);
    }

    else
    {
      v7 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

uint64_t papc_DuckVolume(float a1, float a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_DuckVolume_cold_1(&v13);
    v11 = v13;
  }

  else
  {
    v8 = *(DerivedStorage + 32);
    v9 = *(CMBaseObjectGetVTable() + 32);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      v11 = v10(v8, a4, a1, a2);
    }

    else
    {
      v11 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v11;
}

uint64_t papc_SilentMute(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 24))
  {
    papc_SilentMute_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v4 = *(DerivedStorage + 32);
    v5 = *(CMBaseObjectGetVTable() + 32);
    if (v5 && (v6 = *(v5 + 16)) != 0)
    {
      v7 = v6(v4, a2);
    }

    else
    {
      v7 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

void __papc_handleRouteNotification_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  FigReadWriteLockLockForRead();
  if (*(*(a1 + 32) + 24))
  {
    __papc_handleRouteNotification_block_invoke_cold_1();
  }

  else
  {
    v2 = *(a1 + 48);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (v2)
    {
      FigCFDictionaryGetValueIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      isCoordinatedAPVCapableRouteSelected = papc_isCoordinatedAPVCapableRouteSelected();
      if (*(DerivedStorage + 88))
      {
        v5 = 1;
      }

      else
      {
        v6 = CMBaseObjectGetDerivedStorage();
        v5 = *(v6 + 76) && *(v6 + 77) && isCoordinatedAPVCapableRouteSelected != 0;
      }
    }

    else
    {
      v5 = 0;
    }

    if (dword_1EAF17268)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v5)
    {
      if (*(*(a1 + 32) + 72) == 1)
      {
        if (dword_1EAF17268)
        {
          v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        papc_switchFromAirPlayVideoToLocal(*(a1 + 40));
      }

      papc_resetAirPlayRouteInformation(*(a1 + 40));
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      FigCFDictionaryGetValueIfPresent();
      papc_updateAirPlayRouteInformation(v8, v9);
      v10 = CMBaseObjectGetDerivedStorage();
      cf = 0;
      *(v10 + 84) = 0;
      v11 = *(v10 + 88);
      *(v10 + 88) = 0;
      if (v11)
      {
        CFRelease(v11);
      }

      v16 = *(v10 + 96);
      v14 = (v10 + 96);
      v15 = v16;
      *v14 = 0;
      if (v16)
      {
        CFRelease(v15);
      }

      if (*v14 != v15)
      {
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        papc_postNotificationAsync(v8, DefaultLocalCenter, @"ExternalPlaybackCapabilitiesChanged", v8, 0);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (dword_1EAF17268)
      {
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      papc_checkStartStopAirPlay(*(a1 + 40), NAN);
      if (*(*(a1 + 32) + 72) == 1)
      {
        papc_postNotificationAsync(*(a1 + 40), *(a1 + 56), @"RouteDeselected", *(a1 + 40), 0);
        goto LABEL_38;
      }

      if (dword_1EAF17268)
      {
        v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      papc_updateAirPlayRouteInformation(*(a1 + 40), *(a1 + 48));
    }
  }

  if (*(*(a1 + 32) + 78) && papc_isCoordinatedAPVCapableRouteSelected())
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    CFDictionaryReplaceValue(MutableCopy, @"IsURLPlaybackEnabled", *MEMORY[0x1E695E4C0]);
  }

  else
  {
    v19 = *(a1 + 48);
    if (v19)
    {
      MutableCopy = CFRetain(v19);
    }

    else
    {
      MutableCopy = 0;
    }
  }

  papc_postNotificationAsync(*(a1 + 40), *(a1 + 56), *(a1 + 64), *(a1 + 40), MutableCopy);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_38:
  FigReadWriteLockUnlockForRead();
  v20 = *(a1 + 40);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 64);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    CFRelease(v23);
  }
}

void papc_resetAirPlayRouteInformation(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage[8];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[8] = 0;
  }

  v4 = DerivedStorage[11];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[11] = 0;
  }

  v5 = DerivedStorage[12];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[12] = 0;
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();

    papc_postNotificationAsync(a1, DefaultLocalCenter, @"ExternalPlaybackCapabilitiesChanged", a1, 0);
  }
}

void papc_updateAirPlayRouteInformation(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (a2)
  {
    CFDictionaryGetValue(a2, @"NewRouteName");
    FigCFDictionaryGetBooleanIfPresent();
    v5 = *(v4 + 64);
    *(v4 + 64) = a2;
    CFRetain(a2);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *(DerivedStorage + 64);
    *(DerivedStorage + 64) = 0;
    if (!v5)
    {
      return;
    }
  }

  CFRelease(v5);
}

void __papc_handleRouteNotification_block_invoke_43(const void **a1)
{
  v2 = a1 + 4;
  FigReadWriteLockLockForRead();
  if (*(*v2 + 24))
  {
    __papc_handleRouteNotification_block_invoke_43_cold_1();
    goto LABEL_4;
  }

  v3 = a1[5];
  if (*(*v2 + 18) != 1)
  {
    papc_resetAirPlayRouteInformation(v3);
LABEL_4:
    FigReadWriteLockUnlockForRead();
    papc_postNotificationAsync(a1[5], a1[6], a1[7], a1[5], a1[8]);
    goto LABEL_5;
  }

  __papc_handleRouteNotification_block_invoke_43_cold_2(v3, a1 + 5);
LABEL_5:
  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[8];
  if (v7)
  {

    CFRelease(v7);
  }
}

void __papc_handleRouteNotification_block_invoke_2(uint64_t a1)
{
  FigReadWriteLockLockForRead();
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    __papc_handleRouteNotification_block_invoke_2_cold_1();
  }

  else if (*(v2 + 80) != *(a1 + 72))
  {
    FigCFDictionaryGetStringValue();
    *(*(a1 + 32) + 80) = *(a1 + 72);
    papc_checkStartStopAirPlay(*(a1 + 48), NAN);
  }

  FigReadWriteLockUnlockForRead();
  papc_postNotificationAsync(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 48), *(a1 + 40));
  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t OUTLINED_FUNCTION_9_36()
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t OUTLINED_FUNCTION_10_35()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_13_25()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_14_30()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFMutableDictionaryRef OUTLINED_FUNCTION_23_24()
{

  return CFDictionaryCreateMutable(v2, 0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_24_17()
{

  return CMBaseObjectGetVTable();
}

uint64_t FigPlayerAirPlayCreateMockWithOptions(const __CFAllocator *a1, const void *a2, uint64_t a3, void *a4)
{
  if (FigPlayerAirPlayCreateMockWithOptions_initFigAirPlayTracOnceCheck == -1)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_15:
    FigPlayerAirPlayCreateMockWithOptions_cold_6(&v15);
    return v15;
  }

  FigPlayerAirPlayCreateMockWithOptions_cold_1();
  if (!a4)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (!a2)
  {
    FigPlayerAirPlayCreateMockWithOptions_cold_5(&v15);
    return v15;
  }

  FigPlayerGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = FigSimpleMutexCreate();
  v9 = FigReadWriteLockCreate();
  *(DerivedStorage + 40) = v9;
  if (!v9)
  {
    return 0;
  }

  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(0, (DerivedStorage + 64), 10, 0x8000100u);
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 8) = Mutable;
  if (!Mutable)
  {
    FigPlayerAirPlayCreateMockWithOptions_cold_4(&v15);
    return v15;
  }

  v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 24) = v11;
  if (!v11)
  {
    FigPlayerAirPlayCreateMockWithOptions_cold_3(&v15);
    return v15;
  }

  v12 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 32) = v12;
  if (!v12)
  {
    FigPlayerAirPlayCreateMockWithOptions_cold_2(&v15);
    return v15;
  }

  *(DerivedStorage + 56) = CFRetain(a2);
  CMNotificationCenterGetDefaultLocalCenter();
  v13 = FigNotificationCenterAddWeakListener();
  if (!v13)
  {
    *a4 = 0;
  }

  return v13;
}

uint64_t __FigPlayerAirPlayCreateMockWithOptions_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t papm_reflectSubPlayerNotification()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_reflectSubPlayerNotification_cold_1();
  }

  else if (!FigCFEqual() && !FigCFEqual() || !papm_isMockPlaybackActive())
  {
    CMNotificationCenterPostNotification();
  }

  return FigReadWriteLockUnlockForRead();
}

uint64_t papm_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_CopyProperty_cold_1(&v17);
    v12 = v17;
    goto LABEL_12;
  }

  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    v9 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    v10 = MEMORY[0x1E695E4D0];
    if (!v9)
    {
      v10 = MEMORY[0x1E695E4C0];
    }

    SInt32 = *v10;
    if (*v10)
    {
      SInt32 = CFRetain(SInt32);
    }

    goto LABEL_7;
  }

  if (FigCFEqual())
  {
    v16 = 0;
    if (papm_getMockPlaybackState(a1, &v16))
    {
      SInt32 = FigCFNumberCreateSInt32();
LABEL_7:
      v12 = 0;
      *a4 = SInt32;
      goto LABEL_12;
    }
  }

  FigBaseObject = FigPlayerGetFigBaseObject(*(DerivedStorage + 56));
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v12 = v14(FigBaseObject, a2, a3, a4);
  }

  else
  {
    v12 = 4294954514;
  }

LABEL_12:
  FigReadWriteLockUnlockForRead();
  return v12;
}

uint64_t papm_SetProperty(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SetProperty_cold_1(&v7);
    v5 = v7;
  }

  else
  {
    v5 = FPSupport_HandlePlayerSetPropertyAndForwardToSubPlayer(a1, *(DerivedStorage + 56), a2);
  }

  FigReadWriteLockUnlockForRead();
  return v5;
}

uint64_t iapm_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    iapm_Invalidate_cold_1();
    return 0;
  }

  *(DerivedStorage + 8) = 1;
  FigSimpleMutexUnlock();
  v1 = *(DerivedStorage + 56);
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = *(DerivedStorage + 48);
    v5 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    CFDictionaryRemoveValue(*(v5 + 8), v4);
    FigSimpleMutexUnlock();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (!v2)
  {
    v9 = 0;
    if (!v3)
    {
      return v9;
    }

    goto LABEL_16;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(v2);
  if (FigBaseObject)
  {
    v7 = FigBaseObject;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v8)
    {
      v9 = v8(v7);
    }

    else
    {
      v9 = 4294954514;
    }
  }

  else
  {
    v9 = 4294954516;
  }

  CFRelease(v2);
  if (v3)
  {
LABEL_16:
    CFRelease(v3);
  }

  return v9;
}

uint64_t papm_externalStartupTaskCompleted(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v15[25] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15[0] = 0;
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_externalStartupTaskCompleted_cold_1();
  }

  else
  {
    FigSimpleMutexLock();
    v7 = *(DerivedStorage + 32);
    v16.length = CFArrayGetCount(v7);
    v16.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v16, a4);
    FigSimpleMutexUnlock();
    papm_getMockPlaybackState(a2, v15 + 1);
    if (FirstIndexOfValue != -1 && FigPlayerStartupTaskDoesAllowStartup(a4))
    {
      if (dword_1EAF17288)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigSimpleMutexLock();
      CFArrayRemoveValueAtIndex(*(DerivedStorage + 32), FirstIndexOfValue);
      v10 = *(DerivedStorage + 20);
      FigSimpleMutexUnlock();
      if (papm_areAllExternalStartupTasksCompleted())
      {
        v11 = papm_copyCurrentItem();
        if (dword_1EAF17288)
        {
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v11)
        {
          iapm_setMockPlaybackRateAndTime(v11, MEMORY[0x1E6960C70], v10);
          CFRelease(v11);
        }
      }
    }

    papm_getMockPlaybackState(a2, v15);
    if (HIDWORD(v15[0]) != LODWORD(v15[0]))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt32();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  return FigReadWriteLockUnlockForRead();
}

uint64_t iapm_reflectSubItemNotification()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 8))
  {
    return iapm_reflectSubItemNotification_cold_1();
  }

  FigSimpleMutexUnlock();

  return CMNotificationCenterPostNotification();
}

uint64_t papm_areAllExternalStartupTasksCompleted()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 32);
  if (v1 && (Count = CFArrayGetCount(v1), Count >= 1))
  {
    v3 = Count;
    v4 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 32), v4 - 1);
      DoesAllowStartup = FigPlayerStartupTaskDoesAllowStartup(ValueAtIndex);
      v7 = DoesAllowStartup;
      if (v4 >= v3)
      {
        break;
      }

      ++v4;
    }

    while (DoesAllowStartup);
  }

  else
  {
    v7 = 1;
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t papm_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const __CFBoolean *a4, _BYTE *a5, void *a6, void *a7)
{
  v69 = *MEMORY[0x1E69E9840];
  if (FigCFEqual())
  {
    Value = CFBooleanGetValue(a4);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v15 = DerivedStorage;
    if (Value)
    {
      v58 = 0.0;
      cf = 0;
      if (!*(DerivedStorage + 16))
      {
        v16 = *(DerivedStorage + 56);
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v17 || v17(v16, &v58))
        {
          v18 = 0;
        }

        else
        {
          FigSimpleMutexLock();
          *(v15 + 16) = 1;
          *(v15 + 20) = v58;
          FigSimpleMutexUnlock();
          v18 = papm_copyCurrentItem();
          if (dword_1EAF17288)
          {
            LODWORD(timebase) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v20 = timebase;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
            {
              v21 = v20;
            }

            else
            {
              v21 = v20 & 0xFFFFFFFE;
            }

            if (v21)
            {
              if (a1)
              {
                v22 = (CMBaseObjectGetDerivedStorage() + 64);
              }

              else
              {
                v22 = "";
              }

              v36 = (CMBaseObjectGetDerivedStorage() + 72);
              if (!v18)
              {
                v36 = "";
              }

              LODWORD(time.value) = 136316418;
              *(&time.value + 4) = "papm_startMockPlayback";
              LOWORD(time.flags) = 2048;
              *(&time.flags + 2) = a1;
              HIWORD(time.epoch) = 2048;
              v61 = v18;
              v62 = 2082;
              v63 = v22;
              v64 = 2082;
              v65 = v36;
              v66 = 2048;
              v67 = v58;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v37 = CMBaseObjectGetDerivedStorage();
          FigSimpleMutexLock();
          v38 = *(v37 + 24);
          if (v38)
          {
            Count = CFArrayGetCount(v38);
            if (Count >= 1)
            {
              v40 = Count;
              for (i = 0; i != v40; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(v37 + 24), i);
                v43 = *(v37 + 56);
                v44 = *(*(CMBaseObjectGetVTable() + 16) + 136);
                if (v44)
                {
                  v44(v43, ValueAtIndex);
                }
              }
            }
          }

          FigSimpleMutexUnlock();
          v45 = MEMORY[0x1E695E480];
          if (v18)
          {
            v46 = CMBaseObjectGetDerivedStorage();
            timebase = 0;
            FigSimpleMutexLock();
            v68 = **&MEMORY[0x1E6960C70];
            if (!*(v46 + 40))
            {
              v47 = *v45;
              HostTimeClock = CMClockGetHostTimeClock();
              if (!CMTimebaseCreateWithSourceClock(v47, HostTimeClock, (v46 + 24)))
              {
                FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v46 + 56));
                v50 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v50)
                {
                  if (!v50(FigBaseObject, @"Timebase", v47, &timebase) && timebase != 0)
                  {
                    CMTimebaseGetTime(&v68, timebase);
                    v52 = *(v46 + 24);
                    time = v68;
                    CMTimebaseSetTime(v52, &time);
                    Rate = CMTimebaseGetRate(timebase);
                    CMTimebaseSetRate(*(v46 + 24), Rate);
                    if (!FigReadOnlyTimebaseSetTargetTimebase())
                    {
                      *(v46 + 40) = 1;
                    }
                  }
                }
              }
            }

            FigSimpleMutexUnlock();
            if (timebase)
            {
              CFRelease(timebase);
            }
          }

          if (v58 != 0.0)
          {
            FPSupport_CreateSetRateOptions(*v45, 27, &cf);
            v54 = *(v15 + 56);
            v55 = cf;
            v56 = *(*(CMBaseObjectGetVTable() + 16) + 104);
            if (v56)
            {
              v56(v54, v55, 0.0);
            }
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }
    }

    else
    {
      FigSimpleMutexLock();
      if (*(v15 + 16))
      {
        *(v15 + 16) = 0;
        FigSimpleMutexUnlock();
        v24 = papm_copyCurrentItem();
        if (dword_1EAF17288)
        {
          LODWORD(timebase) = 0;
          LOBYTE(cf) = 0;
          v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v27 = CMBaseObjectGetDerivedStorage();
        FigSimpleMutexLock();
        v28 = *(v27 + 24);
        if (v28)
        {
          v29 = CFArrayGetCount(v28);
          if (v29 >= 1)
          {
            v30 = v29;
            for (j = 0; j != v30; ++j)
            {
              v32 = CFArrayGetValueAtIndex(*(v27 + 24), j);
              v33 = *(v27 + 56);
              v34 = *(*(CMBaseObjectGetVTable() + 16) + 128);
              if (v34)
              {
                v34(v33, v32);
              }
            }
          }
        }

        FigSimpleMutexUnlock();
        if (v24)
        {
          papm_handleSetProperty_cold_1(v24);
        }
      }

      else
      {
        FigSimpleMutexUnlock();
      }
    }

    *a5 = 1;
  }

  else
  {
    *a5 = 0;
    if (a3)
    {
      v23 = CFRetain(a3);
    }

    else
    {
      v23 = 0;
    }

    *a6 = v23;
    if (a4)
    {
      v26 = CFRetain(a4);
    }

    else
    {
      v26 = 0;
    }

    *a7 = v26;
  }

  return 0;
}

uint64_t papm_AddToPlayQueue(uint64_t a1, uint64_t a2, CFTypeRef a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_AddToPlayQueue_cold_1(DerivedStorage + 40, &v11);
    return v11;
  }

  else
  {
    v6 = iapm_copySubItem(a2);
    if (a3)
    {
      a3 = iapm_copySubItem(a3);
    }

    v7 = *(DerivedStorage + 56);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      v9 = v8(v7, v6, a3);
    }

    else
    {
      v9 = 4294954514;
    }

    FigReadWriteLockUnlockForRead();
    if (v6)
    {
      CFRelease(v6);
    }

    if (a3)
    {
      CFRelease(a3);
    }
  }

  return v9;
}

uint64_t papm_RemoveFromPlayQueue(uint64_t a1, CFTypeRef a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_RemoveFromPlayQueue_cold_1(&v8);
    v6 = v8;
    goto LABEL_12;
  }

  if (a2)
  {
    a2 = iapm_copySubItem(a2);
    if (!a2)
    {
      papm_RemoveFromPlayQueue_cold_2(&v9);
      v6 = v9;
LABEL_12:
      FigReadWriteLockUnlockForRead();
      return v6;
    }
  }

  v4 = *(DerivedStorage + 56);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v5)
  {
    v6 = v5(v4, a2);
  }

  else
  {
    v6 = 4294954514;
  }

  FigReadWriteLockUnlockForRead();
  if (a2)
  {
    CFRelease(a2);
  }

  return v6;
}

uint64_t papm_SetRate(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SetRate_cold_1(&v10);
    v8 = v10;
  }

  else
  {
    FigSimpleMutexLock();
    v5 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    if (v5)
    {
      papm_setMockRate(a1, a2);
      v8 = 0;
    }

    else
    {
      v6 = *(DerivedStorage + 56);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v7)
      {
        v8 = v7(v6, a2);
      }

      else
      {
        v8 = 4294954514;
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t papm_GetRate(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_GetRate_cold_1(&v8);
    v4 = v8;
  }

  else
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 16))
    {
      *a2 = *(DerivedStorage + 20);
      FigSimpleMutexUnlock();
      v4 = 0;
    }

    else
    {
      FigSimpleMutexUnlock();
      v5 = *(DerivedStorage + 56);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v6)
      {
        v4 = v6(v5, a2);
      }

      else
      {
        v4 = 4294954514;
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  return v4;
}

uint64_t papm_SetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SetRateWithFade_cold_1(&v14);
    v10 = v14;
  }

  else
  {
    FigSimpleMutexLock();
    v7 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    if (v7)
    {
      papm_setMockRate(a1, a3);
      v10 = 0;
    }

    else
    {
      v8 = *(DerivedStorage + 56);
      v12 = *a2;
      v13 = *(a2 + 2);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v9)
      {
        v14 = v12;
        v15 = v13;
        v10 = v9(v8, &v14, a3);
      }

      else
      {
        v10 = 4294954514;
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  return v10;
}

uint64_t papm_StartPreroll(float a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_StartPreroll_cold_1(&v10);
    v8 = v10;
  }

  else
  {
    v6 = *(DerivedStorage + 56);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v7)
    {
      v8 = v7(v6, a3, a1);
    }

    else
    {
      v8 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t papm_StepByCount(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_StepByCount_cold_1(&v8);
    v6 = v8;
  }

  else
  {
    v4 = *(DerivedStorage + 56);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v5)
    {
      v6 = v5(v4, a2);
    }

    else
    {
      v6 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v6;
}

uint64_t papm_SetRateAndAnchorTime(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SetRateAndAnchorTime_cold_1(&v22);
    v14 = v22;
  }

  else
  {
    FigSimpleMutexLock();
    v11 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    if (v11)
    {
      papm_setMockRate(a1, a5);
      v14 = 0;
    }

    else
    {
      v12 = *(DerivedStorage + 56);
      v18 = *a2;
      v19 = *(a2 + 2);
      v16 = *a3;
      v17 = *(a3 + 2);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
      if (v13)
      {
        v22 = v18;
        v23 = v19;
        v20 = v16;
        v21 = v17;
        v14 = v13(v12, &v22, &v20, a4, a5);
      }

      else
      {
        v14 = 4294954514;
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  return v14;
}

uint64_t papm_CreatePlaybackItemFromAsset(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_CreatePlaybackItemFromAsset_cold_1(&v35);
    v18 = 0;
    v19 = v35;
    goto LABEL_8;
  }

  v11 = *(DerivedStorage + 56);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v12)
  {
    v18 = 0;
    v19 = 4294954514;
    goto LABEL_8;
  }

  v13 = v12(v11, a2, a3, a4, &cf);
  if (v13)
  {
    v19 = v13;
    v18 = 0;
    goto LABEL_8;
  }

  CFGetAllocator(a1);
  v14 = cf;
  theString = 0;
  v35 = 0;
  v33 = 0;
  CFGetAllocator(a1);
  FigPlaybackItemGetClassID();
  OnlyTimebase = CMDerivedObjectCreate();
  if (OnlyTimebase)
  {
    goto LABEL_40;
  }

  v16 = CMBaseObjectGetDerivedStorage();
  *v16 = FigSimpleMutexCreate();
  if (v14)
  {
    v17 = CFRetain(v14);
  }

  else
  {
    v17 = 0;
  }

  *(v16 + 56) = v17;
  *(v16 + 64) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, (v16 + 72), 10, 0x8000100u);
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject(*(v16 + 56));
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v22)
  {
    goto LABEL_25;
  }

  OnlyTimebase = v22(FigBaseObject, @"Timebase", *MEMORY[0x1E695E480], &v33);
  if (OnlyTimebase)
  {
    goto LABEL_40;
  }

  if (v33)
  {
    OnlyTimebase = CMTimebaseCreateReadOnlyTimebase();
    if (OnlyTimebase)
    {
      goto LABEL_40;
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OnlyTimebase = FigNotificationCenterAddWeakListener();
  if (OnlyTimebase)
  {
    goto LABEL_40;
  }

  v23 = CFGetAllocator(a1);
  v24 = FigPlaybackItemGetFigBaseObject(v14);
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v25)
  {
LABEL_25:
    v18 = 0;
    v19 = 4294954514;
    goto LABEL_26;
  }

  OnlyTimebase = v25(v24, 0x1F0B3D158, v23, v16 + 48);
  if (OnlyTimebase)
  {
LABEL_40:
    v19 = OnlyTimebase;
    v18 = 0;
    goto LABEL_26;
  }

  if (*(v16 + 48))
  {
    v19 = 0;
    v18 = v35;
    v35 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

LABEL_26:
  if (v33)
  {
    CFRelease(v33);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v19)
  {
LABEL_8:
    FigReadWriteLockUnlockForRead();
    if (!v18)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v18)
  {
LABEL_42:
    v19 = 0;
    goto LABEL_8;
  }

  v26 = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(v26 + 8))
  {
    papm_CreatePlaybackItemFromAsset_cold_2();
    goto LABEL_42;
  }

  FigSimpleMutexUnlock();
  v27 = *(v26 + 48);
  if (!v27)
  {
    goto LABEL_42;
  }

  v28 = CFRetain(v27);
  if (!v28)
  {
    goto LABEL_42;
  }

  v29 = v28;
  FigSimpleMutexLock();
  v30 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (v30)
  {
    v31 = v30;
    FigCFDictionarySetValue();
    CFRelease(v31);
    FigSimpleMutexUnlock();
    v19 = 0;
    *a5 = v18;
    v18 = 0;
  }

  else
  {
    papm_CreatePlaybackItemFromAsset_cold_3(DerivedStorage, &v35);
    v19 = v35;
  }

  FigReadWriteLockUnlockForRead();
  CFRelease(v29);
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_9:
  CFRelease(v18);
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t papm_SetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SetRateWithOptions_cold_1(&v12);
    v10 = v12;
  }

  else
  {
    FigSimpleMutexLock();
    v7 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    if (v7)
    {
      papm_setMockRate(a1, a3);
      v10 = 0;
    }

    else
    {
      v8 = *(DerivedStorage + 56);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v9)
      {
        v10 = v9(v8, a2, a3);
      }

      else
      {
        v10 = 4294954514;
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  return v10;
}

uint64_t papm_SetProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SetProperties_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v7 = FPSupport_HandlePlayerSetPropertiesAndForwardToSubPlayer(a1, *(DerivedStorage + 56), 0, papm_handleSetProperty, a2, a3);
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

uint64_t papm_ReevaluateRouteConfiguration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFCopyCompactDescription();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_ReevaluateRouteConfiguration_cold_1(&v7);
    v5 = v7;
  }

  else
  {
    v5 = FigPlayerReevaluateRouteConfigurationForReason(*(DerivedStorage + 56), a2, @" -> Mock AirPlay sub-player");
  }

  FigReadWriteLockUnlockForRead();
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

uint64_t papm_AddExternalStartupTask(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_AddExternalStartupTask_cold_1(&v9);
    v5 = v9;
  }

  else if (!a2 || (FigSimpleMutexLock(), CFArrayAppendValue(*(DerivedStorage + 24), a2), CMNotificationCenterGetDefaultLocalCenter(), FigNotificationCenterAddWeakListener(), v4 = *(DerivedStorage + 16), FigSimpleMutexUnlock(), v5 = 0, !v4))
  {
    v6 = *(DerivedStorage + 56);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v7)
    {
      v5 = v7(v6, a2);
    }

    else
    {
      v5 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v5;
}

uint64_t papm_RemoveExternalStartupTask(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_RemoveExternalStartupTask_cold_1(&v13);
    v9 = v13;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_9;
    }

    FigSimpleMutexLock();
    v4 = *(DerivedStorage + 24);
    v14.length = CFArrayGetCount(v4);
    v14.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v14, a2);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(*(DerivedStorage + 24), FirstIndexOfValue);
    }

    v6 = *(DerivedStorage + 32);
    v15.length = CFArrayGetCount(v6);
    v15.location = 0;
    v7 = CFArrayGetFirstIndexOfValue(v6, v15, a2);
    if (v7 != -1)
    {
      CFArrayRemoveValueAtIndex(*(DerivedStorage + 32), v7);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v8 = *(DerivedStorage + 16);
    FigSimpleMutexUnlock();
    if (v8)
    {
      v9 = 0;
    }

    else
    {
LABEL_9:
      v10 = *(DerivedStorage + 56);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 136);
      if (v11)
      {
        v9 = v11(v10, a2);
      }

      else
      {
        v9 = 4294954514;
      }
    }
  }

  FigReadWriteLockUnlockForRead();
  return v9;
}

uint64_t papm_CopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_CopyDisplayedCVPixelBuffer_cold_1(&v10);
    v8 = v10;
  }

  else
  {
    v6 = *(DerivedStorage + 56);
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v7)
    {
      v8 = v7(v6, a2, a3);
    }

    else
    {
      v8 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v8;
}

uint64_t iapm_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  iapm_Invalidate();
  v1 = DerivedStorage[8];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[8] = 0;
  }

  v2 = DerivedStorage[7];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[7] = 0;
  }

  v3 = DerivedStorage[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[4];
  if (v6)
  {
    CFRelease(v6);
  }

  return FigSimpleMutexDestroy();
}

uint64_t iapm_handleSetProperty(uint64_t a1, uint64_t a2, const void *a3, const void *a4, _BYTE *a5, void *a6, void *a7)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    FigSimpleMutexLock();
    if (!FigCFEqual())
    {
      v13 = *(DerivedStorage + 32);
      *(DerivedStorage + 32) = a4;
      if (a4)
      {
        CFRetain(a4);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    FigSimpleMutexUnlock();
  }

  *a5 = 0;
  if (a3)
  {
    v14 = CFRetain(a3);
  }

  else
  {
    v14 = 0;
  }

  *a6 = v14;
  if (a4)
  {
    v15 = CFRetain(a4);
  }

  else
  {
    v15 = 0;
  }

  *a7 = v15;
  return 0;
}

uint64_t papm_BeginInterruption()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_BeginInterruption_cold_1(&v6);
    v4 = v6;
  }

  else
  {
    v1 = *(DerivedStorage + 56);
    v2 = *(CMBaseObjectGetVTable() + 24);
    if (v2 && (v3 = *(v2 + 8)) != 0)
    {
      v4 = v3(v1);
    }

    else
    {
      v4 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v4;
}

uint64_t papm_EndInterruption(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_EndInterruption_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v4 = *(DerivedStorage + 56);
    v5 = *(CMBaseObjectGetVTable() + 24);
    if (v5 && (v6 = *(v5 + 16)) != 0)
    {
      v7 = v6(v4, a2);
    }

    else
    {
      v7 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

uint64_t papm_SetConnectionActive(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SetConnectionActive_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v4 = *(DerivedStorage + 56);
    v5 = *(CMBaseObjectGetVTable() + 24);
    if (v5 && (v6 = *(v5 + 24)) != 0)
    {
      v7 = v6(v4, a2);
    }

    else
    {
      v7 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

uint64_t papm_DuckVolume(float a1, float a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_DuckVolume_cold_1(&v13);
    v11 = v13;
  }

  else
  {
    v8 = *(DerivedStorage + 56);
    v9 = *(CMBaseObjectGetVTable() + 32);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      v11 = v10(v8, a4, a1, a2);
    }

    else
    {
      v11 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v11;
}

uint64_t papm_SilentMute(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigReadWriteLockLockForRead();
  if (*(DerivedStorage + 48))
  {
    papm_SilentMute_cold_1(&v9);
    v7 = v9;
  }

  else
  {
    v4 = *(DerivedStorage + 56);
    v5 = *(CMBaseObjectGetVTable() + 32);
    if (v5 && (v6 = *(v5 + 16)) != 0)
    {
      v7 = v6(v4, a2);
    }

    else
    {
      v7 = 4294954514;
    }
  }

  FigReadWriteLockUnlockForRead();
  return v7;
}

uint64_t papm_isMockPlaybackActive()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t OUTLINED_FUNCTION_11_37()
{

  return FigCFDictionarySetCMTime();
}

uint64_t OUTLINED_FUNCTION_13_26()
{

  return fig_log_call_emit_and_clean_up_after_send_and_compose();
}

uint64_t OUTLINED_FUNCTION_17_25()
{

  return FigCFDictionarySetValueFromKeyInDict();
}

uint64_t CreatePesPrivateForH264(void *a1)
{
  if (a1[6])
  {
    v2 = a1[107];
    if (v2)
    {
      v2(a1);
    }

    a1[6] = 0;
  }

  v3 = malloc_type_zone_calloc(gFigMPEG2ParserZone, 1uLL, 0x190uLL, 0x10B0040336C4AE3uLL);
  if (!v3)
  {
    return 12;
  }

  v4 = v3;
  H264InitializeSPS_PPS_List(v3);
  a1[105] = H264ProcessData;
  a1[106] = H264CleanPrivateData;
  a1[107] = H264DeletePrivateData;
  a1[108] = H264FlushFrames;
  PesFrameHeadersInit((a1 + 68), 8uLL);
  a1[6] = v4;
  *(a1 + 804) = 0x3E900007530;
  FrameQueueEntryInit((v4 + 10));
  *(v4 + 8) = -1;
  *(v4 + 76) = 5;
  *(v4 + 61) = 1065353216;
  v4[31] = 0;
  v5 = malloc_type_zone_calloc(gFigMPEG2ParserZone, 1uLL, 0x300uLL, 0x1010040113C0ABBuLL);
  result = 0;
  v4[42] = v5;
  *(v4 + 87) = 32;
  return result;
}

void *H264CleanPrivateData(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 344) >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(v2 + 336);
    do
    {
      CFAllocatorDeallocate(*(*(a1 + 8) + 40), *(v5 + v3));
      v5 = *(v2 + 336);
      *(v5 + v3) = 0;
      ++v4;
      v3 += 24;
    }

    while (v4 < *(v2 + 344));
  }

  *(v2 + 344) = 0;
  *(v2 + 352) = 0;
  *(v2 + 32) = -1;
  *(v2 + 72) = 0;
  v6 = MEMORY[0x1E6960C70];
  *(v2 + 260) = *MEMORY[0x1E6960C70];
  *(v2 + 276) = *(v6 + 16);
  *(v2 + 248) = 0;
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  *(v2 + 304) = 5;
  v7 = *(v2 + 312);
  if (v7)
  {
    CFAllocatorDeallocate(*(*(a1 + 8) + 40), v7);
    *(v2 + 312) = 0;
  }

  *(v2 + 320) = 0;
  FrameQueueEntryClean(v2 + 80);
  *(v2 + 376) = 0;
  malloc_zone_free(gFigMPEG2ParserZone, *(v2 + 384));
  *(v2 + 384) = 0;
  *(v2 + 392) = 0;
  FrameQueueEntryClean(v2 + 80);
  FrameQueueEntryClean(a1 + 456);
  FrameQueueClean((a1 + 728));

  return FrameQueueClean((a1 + 784));
}

void H264DeletePrivateData(uint64_t a1)
{
  v2 = *(a1 + 48);
  H264DestroySPS_PPS_List(v2);
  PesFrameHeaderDestroy((v2 + 168));
  PesFrameHeaderDestroy((a1 + 544));
  H264CleanPrivateData(a1);
  malloc_zone_free(gFigMPEG2ParserZone, *(v2 + 336));
  malloc_zone_free(gFigMPEG2ParserZone, *(a1 + 48));
  *(a1 + 48) = 0;
}

void *H264FlushFrames(uint64_t a1)
{
  H264AddAllocatedBufferToFrame(a1, 0, 1);
  H264EmitBuffer(a1);

  return H264CleanPrivateData(a1);
}

uint64_t H264ProcessDataMemory(uint64_t a1, char *a2, unint64_t a3, __int128 *a4)
{
  v8 = *(a1 + 48);
  v9 = *(v8 + 312);
  if (v9)
  {
    v10 = *(v8 + 320);
    v11 = *(v8 + 328) - v10;
    v12 = (v9 + v10);
    if (!a3)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    if (!a3)
    {
      goto LABEL_132;
    }
  }

  v39 = 0;
  v13 = a3;
  do
  {
    v14 = *(v8 + 304);
    if (v14 > 4)
    {
      if (v14 <= 6)
      {
        if (v14 == 5)
        {
          if (*a2)
          {
            goto LABEL_126;
          }

          v26 = 6;
          goto LABEL_96;
        }

        if (*a2)
        {
          goto LABEL_70;
        }

        v26 = 7;
      }

      else
      {
        if (v14 != 7)
        {
          if (v14 != 8)
          {
            if (v14 != 9)
            {
              goto LABEL_126;
            }

            v21 = *a2;
            v22 = 3;
            if (*(v8 + 72))
            {
              v22 = 4;
            }

            if (a3 - v13 >= v22 && *(a4 + 24) && *(a4 + 25))
            {
              if (!v39)
              {
                v39 = 1;
                v23 = a4;
LABEL_64:
                v28 = v23[1];
                *(a1 + 480) = *v23;
                *(a1 + 496) = v28;
              }
            }

            else
            {
              v23 = (v8 + 40);
              if (*(v8 + 64))
              {
                goto LABEL_64;
              }
            }

            *(v8 + 64) = 0;
            *(v8 + 66) = 0;
            if ((v21 & 0x1F) != 9)
            {
              goto LABEL_70;
            }

            if (v11 <= 4)
            {
              v24 = VendNewBuffer(a1, v8);
              if (v24)
              {
                goto LABEL_129;
              }

              v11 = *(v8 + 328);
              v12 = *(v8 + 312);
            }

            PesFrameHeaderAddOffset(a1 + 544, *(*(a1 + 48) + 352) + *(v8 + 320), 9);
            v12[4] = *a2;
            v12 += 5;
            v11 -= 5;
            v25 = *(v8 + 320) + 5;
            goto LABEL_94;
          }

          if (!*a2)
          {
            goto LABEL_126;
          }

          if (*a2 == 1)
          {
            *(v8 + 72) = 1;
LABEL_80:
            v26 = 9;
            goto LABEL_96;
          }

          goto LABEL_70;
        }

        if (*a2 == 1)
        {
          *(v8 + 72) = 0;
          goto LABEL_80;
        }

        if (*a2)
        {
LABEL_70:
          v26 = 5;
          goto LABEL_96;
        }

        v26 = 8;
      }

LABEL_96:
      *(v8 + 304) = v26;
      goto LABEL_126;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        if (*a2 == 1)
        {
          goto LABEL_59;
        }

        if (!*a2)
        {
          *(v8 + 304) = 3;
          goto LABEL_126;
        }

        if (v11 <= 2)
        {
          v24 = VendNewBuffer(a1, v8);
          if (v24)
          {
            goto LABEL_129;
          }

          v11 = *(v8 + 328);
          v12 = *(v8 + 312);
        }

        *v12 = 0;
        v12[2] = *a2;
        v12 += 3;
        v11 -= 3;
        v25 = *(v8 + 320) + 3;
      }

      else
      {
        if (v14 != 3)
        {
          v15 = *a2;
          if (*(v8 + 376))
          {
            v16 = *(v8 + 312);
            if (v16)
            {
              v17 = *(v8 + 320);
              if (v17)
              {
                if ((*(*(a1 + 48) + 352) + v17 - *(v8 + 368)) >= 0x31)
                {
                  v18 = *(v8 + 360);
                  v40 = v17 - v18;
                  H264RemoveEmulation3Byte((v16 + v18), &v40);
                  v19 = v40 + *(v8 + 360);
                  *(v8 + 320) = v19;
                  v12 = (*(v8 + 312) + v19);
                }
              }
            }

            *(v8 + 376) = 0;
          }

          v20 = v15 & 0x1F;
          if (v20 <= 6)
          {
            if (v20 != 1)
            {
              if (v20 != 5)
              {
                if (v20 == 6)
                {
                  *(v8 + 73) = 1;
                }

                goto LABEL_119;
              }

              *(a1 + 536) |= 0x10u;
            }

            if ((*a2 & 0x60) != 0)
            {
              *(a1 + 536) |= 0x100u;
            }

            v32 = *(a1 + 56);
            if (v32 == 2053207651 || v32 == 1700886115)
            {
              if (v11 <= 0x30)
              {
                v24 = VendNewBuffer(a1, v8);
                if (v24)
                {
                  goto LABEL_129;
                }

                v11 = *(v8 + 328);
                v12 = *(v8 + 312);
              }

              *(v8 + 376) = 1;
            }

            goto LABEL_119;
          }

          if ((v20 - 7) < 2)
          {
            *(a1 + 536) |= 2u;
LABEL_119:
            if (v11 <= 4)
            {
              v24 = VendNewBuffer(a1, v8);
              if (v24)
              {
                goto LABEL_129;
              }

              v11 = *(v8 + 328);
              v12 = *(v8 + 312);
            }

            v34 = *(*(a1 + 48) + 352) + *(v8 + 320);
            PesFrameHeaderAddOffset(a1 + 544, v34, v20);
            v35 = *(v8 + 320) + 4;
            *(v8 + 320) = v35;
            if (*(v8 + 376))
            {
              *(v8 + 360) = v35;
              *(v8 + 368) = v34 + 4;
            }

            v12[4] = *a2;
            v12 += 5;
            ++*(v8 + 320);
            v11 -= 5;
            goto LABEL_125;
          }

          if (v20 != 9)
          {
            goto LABEL_119;
          }

          if (*(v8 + 352) || *(v8 + 320))
          {
            H264AddAllocatedBufferToFrame(a1, 0, 1);
            v24 = H264EmitBuffer(a1);
            v11 = 0;
            if (v24)
            {
LABEL_129:
              v36 = v24;
              PesErrorHandling(a1, v24);
              return v36;
            }
          }

          v30 = 3;
          if (*(v8 + 72))
          {
            v30 = 4;
          }

          if (a3 - v13 >= v30 && *(a4 + 24) && *(a4 + 25))
          {
            if (!v39)
            {
              v39 = 1;
              v31 = a4;
LABEL_117:
              v33 = v31[1];
              *(a1 + 480) = *v31;
              *(a1 + 496) = v33;
            }
          }

          else
          {
            v31 = (v8 + 40);
            if (*(v8 + 64))
            {
              goto LABEL_117;
            }
          }

          *(v8 + 64) = 0;
          *(v8 + 66) = 0;
          goto LABEL_119;
        }

        if (!*a2)
        {
          if (!v11)
          {
            v24 = VendNewBuffer(a1, v8);
            if (v24)
            {
              goto LABEL_129;
            }

            v11 = *(v8 + 328);
            v12 = *(v8 + 312);
          }

          *v12++ = 0;
          goto LABEL_85;
        }

        if (*a2 == 1)
        {
LABEL_59:
          v26 = 4;
          goto LABEL_96;
        }

        if (v11 <= 3)
        {
          v24 = VendNewBuffer(a1, v8);
          if (v24)
          {
            goto LABEL_129;
          }

          v11 = *(v8 + 328);
          v12 = *(v8 + 312);
        }

        *v12 = 0;
        v12[2] = 0;
        v12[3] = *a2;
        v12 += 4;
        v11 -= 4;
        v25 = *(v8 + 320) + 4;
      }

LABEL_94:
      *(v8 + 320) = v25;
LABEL_125:
      *(v8 + 304) = 0;
      goto LABEL_126;
    }

    if (v14)
    {
      if (v14 != 1)
      {
        goto LABEL_126;
      }

      if (!*a2)
      {
        v26 = 2;
        goto LABEL_96;
      }

      if (v11 <= 1)
      {
        v24 = VendNewBuffer(a1, v8);
        if (v24)
        {
          goto LABEL_129;
        }

        v11 = *(v8 + 328);
        v12 = *(v8 + 312);
      }

      *v12 = 0;
      v12[1] = *a2;
      v12 += 2;
      v11 -= 2;
      v25 = *(v8 + 320) + 2;
      goto LABEL_94;
    }

    if (v13 < 4 || (v27 = *a2, !(*a2 >> 25)) || (v27 & 0xFFFFFF) == 0x10000)
    {
      v29 = *a2;
      if (!*a2)
      {
        v26 = 1;
        goto LABEL_96;
      }

      if (!v11)
      {
        v24 = VendNewBuffer(a1, v8);
        if (v24)
        {
          goto LABEL_129;
        }

        v11 = *(v8 + 328);
        v12 = *(v8 + 312);
        v29 = *a2;
      }

      *v12++ = v29;
LABEL_85:
      --v11;
      ++*(v8 + 320);
      goto LABEL_126;
    }

    if (v11 <= 3)
    {
      v24 = VendNewBuffer(a1, v8);
      if (v24)
      {
        goto LABEL_129;
      }

      v11 = *(v8 + 328);
      v12 = *(v8 + 312);
    }

    *v12 = v27;
    v12 += 4;
    v11 -= 4;
    *(v8 + 320) += 4;
    a2 += 3;
    v13 -= 3;
LABEL_126:
    ++a2;
    --v13;
  }

  while (v13);
  if (v39)
  {
    v36 = 0;
    *(v8 + 64) = 0;
    return v36;
  }

LABEL_132:
  v36 = 0;
  if (*(a4 + 24))
  {
    v37 = *a4;
    *(v8 + 56) = a4[1];
    *(v8 + 40) = v37;
  }

  return v36;
}

uint64_t VendNewBuffer(uint64_t a1, void *a2)
{
  v7 = 0;
  H264AddAllocatedBufferToFrame(a1, &v7, 0);
  v4 = MEMORY[0x19A8CC720](*(*(a1 + 8) + 40), 4096, 589259188, 0);
  a2[39] = v4;
  if (v4)
  {
    v5 = v7;
    a2[40] = v7;
    bzero(v4, v5);
    result = 0;
    a2[41] = 4096;
    a2[45] = 0;
  }

  else
  {
    VendNewBuffer_cold_1(&v8);
    return v8;
  }

  return result;
}

_DWORD *H264RemoveEmulation3Byte(_DWORD *result, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 >= 4)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *a2;
    do
    {
      if ((*v4 & 0xFFFFFF) == 0x30000)
      {
        v8 = v4 + 2;
        if (v6)
        {
          v9 = &v8[~v6];
          if (v5)
          {
            v10 = v5;
          }

          else
          {
            v10 = v6;
          }

          result = memmove(v10, v6 + 1, &v8[~v6]);
          v5 = &v9[v10];
          v2 = *a2;
        }

        v4 = (v4 + 3);
        *a2 = --v2;
        v11 = -3;
        v6 = v8;
      }

      else
      {
        v12 = *v4 >> 26;
        v13 = v12 == 0;
        if (v12)
        {
          v11 = -4;
        }

        else
        {
          v11 = -1;
        }

        if (v13)
        {
          v4 = (v4 + 1);
        }

        else
        {
          ++v4;
        }
      }

      v7 += v11;
    }

    while (v7 > 3);
    if (v6)
    {
      if (v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v6;
      }

      return memmove(v14, v6 + 1, v4 + v7 + ~v6);
    }
  }

  return result;
}

void H264AddAllocatedBufferToFrame(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 312);
  if (!v5 || (v6 = *(v4 + 320)) == 0)
  {
    v10 = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!*(v4 + 376))
  {
    v10 = 0;
    goto LABEL_19;
  }

  v9 = v5 + v6;
  if (!*(v5 + v6 - 1))
  {
    *(v4 + 320) = v6 - 1;
    if (*(v9 - 2))
    {
      v10 = 1;
      --v6;
      goto LABEL_18;
    }

    v11 = -2;
    v10 = 2;
LABEL_17:
    v6 += v11;
    *(v4 + 320) = v6;
    goto LABEL_18;
  }

  if (*(v5 + v6 - 1) == 3 && !*(v9 - 2))
  {
    v10 = 0;
    if (*(v9 - 3))
    {
      goto LABEL_18;
    }

    v11 = -1;
    goto LABEL_17;
  }

  v10 = 0;
LABEL_18:
  v12 = *(v4 + 360);
  v22 = v6 - v12;
  H264RemoveEmulation3Byte((v5 + v12), &v22);
  v6 = v22 + *(v4 + 360);
  *(v4 + 320) = v6;
LABEL_19:
  v13 = *(v4 + 348);
  if (*(v4 + 344) >= v13)
  {
    v14 = v13 + 4;
    *(v4 + 348) = v14;
    *(v4 + 336) = malloc_type_zone_realloc(gFigMPEG2ParserZone, *(v4 + 336), 24 * v14, 0x1010040113C0ABBuLL);
    v6 = *(v4 + 320);
  }

  if (a3 && v6 <= 0x800)
  {
    v15 = MEMORY[0x19A8CC720](*(*(a1 + 8) + 40));
    memcpy(v15, *(v4 + 312), *(v4 + 320));
    v17 = *(v4 + 336) + 24 * *(v4 + 344);
    *v17 = v15;
    v16 = (v4 + 320);
    v18 = vld1q_dup_f64(v16);
    *(v17 + 8) = v18;
    CFAllocatorDeallocate(*(*(a1 + 8) + 40), *(v4 + 312));
    v6 = *(v4 + 320);
    v19 = *(v4 + 344);
  }

  else
  {
    v19 = *(v4 + 344);
    v20 = *(v4 + 328);
    v21 = (*(v4 + 336) + 24 * v19);
    *v21 = *(v4 + 312);
    v21[1] = v6;
    v21[2] = v20;
  }

  *(v4 + 352) += v6;
  *(v4 + 344) = v19 + 1;
  *(v4 + 312) = 0;
  *(v4 + 320) = 0;
  if (a2)
  {
LABEL_9:
    *a2 = v10;
  }
}

CMTime *H264CalculateFrameRate(CMTime *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  memset(&v12, 0, sizeof(v12));
  if (*(a3 + 49))
  {
    v5 = 32;
    if (!*(a3 + 50))
    {
      v5 = 24;
    }
  }

  else
  {
    if (!*(a3 + 50))
    {
      goto LABEL_14;
    }

    v5 = 32;
  }

  result = CMTimeMake(&v12, *(a3 + v5), 90000);
  v6 = (a2 + 260);
  if (*(a2 + 272))
  {
    memset(&v11, 0, sizeof(v11));
    lhs = v12;
    *&v9.value = *v6;
    v9.epoch = *(a2 + 276);
    result = CMTimeSubtract(&v11, &lhs, &v9);
    value = v11.value;
    if ((v11.value - 1) > 0x2BF1F)
    {
      *(a2 + 288) = 0;
      *(a2 + 296) = 0;
    }

    else
    {
      *(a2 + 288) += v11.value;
      if (!*(a2 + 256))
      {
        v8 = value / *(a2 + 296);
        LODWORD(v4[33].epoch) = v8;
        v4[33].flags = 90000;
        if (v8)
        {
          *(a2 + 256) = 1;
        }
      }
    }
  }

  *v6 = *&v12.value;
  *(a2 + 276) = v12.epoch;
LABEL_14:
  ++*(a2 + 296);
  return result;
}

uint64_t figImageQueueTable_RegisterFigImageQueueTable()
{
  result = _CFRuntimeRegisterClass();
  sFigImageQueueTableID = result;
  return result;
}

uint64_t FigImageQueueTableCreateWithOptions(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      MEMORY[0x19A8D3660](&FigImageQueueTableGetTypeID_sRegisterFigImageQueueTableOnce, figImageQueueTable_RegisterFigImageQueueTable);
      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v8 = Instance;
        v9 = FigSimpleMutexCreate();
        if (v9)
        {
          v8[2] = v9;
          v8[3] = v6;
          if (a2)
          {
            StringValue = FigCFDictionaryGetStringValue();
            v8[5] = StringValue;
            if (StringValue)
            {
              CFRetain(StringValue);
            }
          }

          v11 = 0;
          *a3 = v8;
          goto LABEL_9;
        }

        FigImageQueueTableCreateWithOptions_cold_1(v8, &v13);
      }

      else
      {
        FigImageQueueTableCreateWithOptions_cold_2(&v13);
      }

      v11 = v13;
      CFRelease(v6);
      return v11;
    }

    FigImageQueueTableCreateWithOptions_cold_3(&v13);
  }

  else
  {
    FigImageQueueTableCreateWithOptions_cold_4(&v13);
  }

  v11 = v13;
LABEL_9:
  FigSimpleMutexDestroy();
  return v11;
}

uint64_t FigImageQueueTableUpdateToMatchOutputsArray(uint64_t a1, const __CFArray *a2, void *a3, void (*a4)(void *, uint64_t), void (*a5)(const void *, uint64_t), uint64_t a6)
{
  if (!a1 || !a2)
  {
    FigImageQueueTableUpdateToMatchOutputsArray_cold_2(&value);
    return value;
  }

  if (*(a1 + 40))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetValue();
    if (!Mutable)
    {
      FigImageQueueTableUpdateToMatchOutputsArray_cold_1(&value);
      return value;
    }
  }

  else
  {
    Mutable = 0;
  }

  v13 = FigSimpleMutexLock();
  if (v13)
  {
    v15 = v13;
    if (Mutable)
    {
      goto LABEL_52;
    }

    return v15;
  }

  context = a3;
  if (CFArrayGetCount(a2) < 1)
  {
    v15 = 0;
LABEL_39:
    Count = CFDictionaryGetCount(*(a1 + 24));
    v27 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(*(a1 + 24), v27, 0);
    if (Count >= 1)
    {
      v28 = v27;
      do
      {
        v33.length = CFArrayGetCount(a2);
        v33.location = 0;
        if (!CFArrayContainsValue(a2, v33, *v28))
        {
          if (a5)
          {
            v29 = CFDictionaryGetValue(*(a1 + 24), *v28);
            a5(v29, a6);
          }

          CFDictionaryRemoveValue(*(a1 + 24), *v28);
        }

        ++v28;
        --Count;
      }

      while (Count);
    }

    if (context)
    {
      CFDictionaryApplyFunction(*(a1 + 24), figImageQueueTable_reconnectApply2, context);
    }

    goto LABEL_51;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v14);
    value = CFDictionaryGetValue(*(a1 + 24), ValueAtIndex);
    if (!value)
    {
      break;
    }

LABEL_36:
    if (CFArrayGetCount(a2) <= ++v14)
    {
      goto LABEL_39;
    }
  }

  v17 = CFGetTypeID(ValueAtIndex);
  if (v17 == FigVisualContextGetTypeID())
  {
    v18 = FigImageQueueCreateForCoreVideoWithOptions(0, Mutable, &value);
    if (v18)
    {
      goto LABEL_49;
    }

    v19 = value;
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v20)
    {
      v15 = v20(v19, ValueAtIndex, context);
      if (!a4)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v15 = 4294954514;
      if (!a4)
      {
LABEL_34:
        CFDictionarySetValue(*(a1 + 24), ValueAtIndex, value);
        if (value)
        {
          CFRelease(value);
        }

        goto LABEL_36;
      }
    }

LABEL_33:
    a4(value, a6);
    goto LABEL_34;
  }

  v21 = CFGetTypeID(ValueAtIndex);
  if (v21 == CAImageQueueGetTypeID())
  {
    v15 = FigImageQueueCreateForCoreAnimationWithOptions(0, ValueAtIndex, Mutable, &value);
    if (v15)
    {
      goto LABEL_50;
    }

    goto LABEL_32;
  }

  v22 = CFGetTypeID(ValueAtIndex);
  if (v22 == FigVideoTargetGetTypeID())
  {
    v23 = CFGetAllocator(a1);
    v24 = CFDictionaryCreateMutable(v23, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (*(a1 + 32))
    {
      FigCFDictionarySetUInt32();
      FigCFDictionarySetUInt32();
    }

    if (*(a1 + 40))
    {
      FigCFDictionarySetValue();
    }

    v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v25)
    {
      v15 = v25(ValueAtIndex, v24, &value);
      if (!v24)
      {
LABEL_31:
        if (v15)
        {
          goto LABEL_50;
        }

LABEL_32:
        if (!a4)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v15 = 4294954514;
      if (!v24)
      {
        goto LABEL_31;
      }
    }

    CFRelease(v24);
    goto LABEL_31;
  }

  v18 = FigSignalErrorAtGM();
LABEL_49:
  v15 = v18;
LABEL_50:
  v27 = 0;
LABEL_51:
  free(v27);
  FigSimpleMutexUnlock();
  if (Mutable)
  {
LABEL_52:
    CFRelease(Mutable);
  }

  return v15;
}

uint64_t figImageQueueTable_setTimebaseApply(int a1, uint64_t a2, CMTimebaseRef timebase)
{
  Rate = CMTimebaseGetRate(timebase);
  v12 = Rate;
  figImageQueueTable_respondToTimebaseRateChangeApply(v6, a2, &v12);
  FigBaseObject = FigImageQueueGetFigBaseObject(a2);
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 8);
  result = VTable + 8;
  v11 = *(v10 + 56);
  if (v11)
  {

    return v11(FigBaseObject, @"FigImageQueueProperty_Timebase", timebase);
  }

  return result;
}

void figImageQueueTable_setImageQueueFlagsAndMaskApply(const void *a1, uint64_t a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CAImageQueueGetTypeID())
  {

    CAImageQueueSetFlags();
  }

  else
  {
    v5 = CFGetTypeID(a1);
    if (v5 == FigVideoTargetGetTypeID())
    {
      cf = 0;
      FigBaseObject = FigImageQueueGetFigBaseObject(a2);
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(FigBaseObject, @"CAImageQueue", *MEMORY[0x1E695E480], &cf);
        if (cf)
        {
          CAImageQueueSetFlags();
          CFRelease(cf);
        }
      }
    }
  }
}

uint64_t figImageQueueTable_setImageQueueProperty(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  FigBaseObject = FigImageQueueGetFigBaseObject(a2);
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(FigBaseObject, v3, v4);
  }

  return result;
}

uint64_t figImageQueueTable_respondToTimebaseRateChangeApply(uint64_t a1, uint64_t a2, float *a3)
{
  v4 = *a3;
  v5 = *a3 != 0.0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v6)
  {
    v6(a2, v5);
  }

  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 48);
  if (v11)
  {
    v8.n128_f32[0] = v4;

    return v11(a2, v8);
  }

  return result;
}

uint64_t FigImageQueueTableCopyFigImageQueueArray(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      *a2 = FigCFDictionaryCopyArrayOfValues();
      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      FigImageQueueTableCopyFigImageQueueArray_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigImageQueueTableCopyFigImageQueueArray_cold_2(&v5);
    return v5;
  }
}

const void *FigImageQueueTableCopyFigImageQueueForVisualContext(uint64_t a1, const void *a2)
{
  if (a1)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    v5 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigImageQueueTableCopyFigImageQueueForVisualContext_cold_1();
    return 0;
  }

  return v5;
}

const void *FigImageQueueTableCopyFigImageQueueForVideoTarget(uint64_t a1, const void *a2)
{
  if (a1)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    v5 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigImageQueueTableCopyFigImageQueueForVideoTarget_cold_1();
    return 0;
  }

  return v5;
}

uint64_t FigImageQueueTableCopyVideoTargets(uint64_t a1, __CFArray **a2)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      Count = FigCFDictionaryGetCount();
      v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(*(a1 + 24), v5, 0);
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Count >= 1)
      {
        v7 = v5;
        do
        {
          if (*v7)
          {
            v8 = CFGetTypeID(*v7);
            if (v8 == FigVideoTargetGetTypeID())
            {
              CFArrayAppendValue(Mutable, *v7);
            }
          }

          ++v7;
          --Count;
        }

        while (Count);
      }

      FigSimpleMutexUnlock();
      v9 = 0;
      *a2 = Mutable;
    }

    else
    {
      FigImageQueueTableCopyVideoTargets_cold_1(&v11);
      v5 = 0;
      v9 = v11;
    }
  }

  else
  {
    FigImageQueueTableCopyVideoTargets_cold_2(&v12);
    v5 = 0;
    v9 = v12;
  }

  free(v5);
  return v9;
}

const void *FigImageQueueTableCopyFigImageQueueForCAImageQueue(uint64_t a1, const void *a2)
{
  if (a1)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    v5 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigImageQueueTableCopyFigImageQueueForCAImageQueue_cold_1();
    return 0;
  }

  return v5;
}

uint64_t FigImageQueueTableWasFirstImageEnqueued(uint64_t a1)
{
  theArray = 0;
  if (!a1)
  {
    return 0;
  }

  FigImageQueueTableCopyFigImageQueueArray(a1, &theArray);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_11:
    v10 = 0;
  }

  else
  {
    v2 = Count;
    v3 = 0;
    v4 = *MEMORY[0x1E695E480];
    v5 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
      cf = 0;
      FigBaseObject = FigImageQueueGetFigBaseObject(ValueAtIndex);
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(FigBaseObject, @"FigImageQueueProperty_FirstImageEnqueued", v4, &cf);
      }

      v9 = cf;
      if (cf)
      {
        CFRelease(cf);
      }

      if (v5 == v9)
      {
        break;
      }

      if (v2 == ++v3)
      {
        goto LABEL_11;
      }
    }

    v10 = 1;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v10;
}

double figImageQueueTable_Init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t figImageQueueTable_Finalize(uint64_t a1)
{
  if (dword_1EAF172A8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  return FigSimpleMutexDestroy();
}

uint64_t figImageQueueTable_reconnectApply2(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  result = FigVisualContextGetTypeID();
  if (v6 == result)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v8(a2, 0, 0);
    }

    VTable = CMBaseObjectGetVTable();
    v10 = *(VTable + 16);
    result = VTable + 16;
    v11 = *(v10 + 8);
    if (v11)
    {

      return v11(a2, a1, a3);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_97()
{

  return FigSimpleMutexLock();
}

uint64_t RegisterMovieSampleGroupType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t MovieSampleGroupCreate(const __CFAllocator *a1, unint64_t a2, int a3, uint64_t *a4)
{
  if (a2)
  {
    if (a4)
    {
      if (_MergedGlobals_63 != -1)
      {
        MovieSampleGroupCreate_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v9 = Instance;
        *(Instance + 128) = a2;
        *(Instance + 136) = a3;
        GroupingTypeKey = MovieSampleGroupCreateGroupingTypeKey(a1, a2, a3);
        result = 0;
        *(v9 + 120) = GroupingTypeKey;
        *a4 = v9;
      }

      else
      {
        MovieSampleGroupCreate_cold_2(&v12);
        return v12;
      }
    }

    else
    {
      MovieSampleGroupCreate_cold_3(&v13);
      return v13;
    }
  }

  else
  {
    MovieSampleGroupCreate_cold_4(&v14);
    return v14;
  }

  return result;
}

CFStringRef MovieSampleGroupCreateGroupingTypeKey(const __CFAllocator *a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return CFStringCreateWithFormat(a1, 0, @"%c%c%c%c:%08X", BYTE3(a2), BYTE2(a2), BYTE1(a2), a2, HIDWORD(a2));
  }

  else
  {
    return CFStringCreateWithFormat(a1, 0, @"%c%c%c%c", BYTE3(a2), BYTE2(a2), BYTE1(a2), a2);
  }
}

uint64_t MovieSampleGroupCreateCompact(const __CFAllocator *a1, unint64_t a2, int a3, CFTypeRef *a4)
{
  cf = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v5 = MovieSampleGroupCreate(a1, a2, a3, &cf);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    LOBYTE(v10) = 0;
    HIDWORD(v9) = 4;
    v6 = MovieSampleGroupSet_csgp(cf, &v8, 0, 0);
    if (!v6)
    {
      *a4 = cf;
      return v6;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t MovieSampleGroupCreateForFragment(const __CFAllocator *a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, void *a5)
{
  cf = 0;
  if (!a2)
  {
    MovieSampleGroupCreateForFragment_cold_4(&v16);
    return v16;
  }

  if (!a5)
  {
    MovieSampleGroupCreateForFragment_cold_3(&v16);
    return v16;
  }

  if (a4)
  {
    v7 = *(a4 + 128);
    v9 = a2 == v7 && a3 == *(a4 + 136);
    if (!v9 || a3 == 0)
    {
      if (!v9)
      {
LABEL_24:
        MovieSampleGroupCreateForFragment_cold_1(&v16);
        return v16;
      }
    }

    else if ((v7 ^ a2) >> 32)
    {
      goto LABEL_24;
    }

    if (*(a4 + 112))
    {
      MovieSampleGroupCreateForFragment_cold_2(&v16);
      return v16;
    }
  }

  v11 = MovieSampleGroupCreate(a1, a2, a3, &cf);
  v12 = cf;
  if (v11)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *(cf + 140) = 1;
    if (a4)
    {
      v13 = CFRetain(a4);
      v12 = cf;
    }

    else
    {
      v13 = 0;
    }

    v11 = 0;
    v12[14] = v13;
    *a5 = v12;
  }

  return v11;
}

uint64_t MovieSampleGroupCreateCompactForFragment(const __CFAllocator *a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, CFTypeRef *a5)
{
  cf = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = MovieSampleGroupCreateForFragment(a1, a2, a3, a4, &cf);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    LOBYTE(v11) = 1;
    HIDWORD(v10) = 4;
    v7 = MovieSampleGroupSet_csgp(cf, &v9, 0, 0);
    if (!v7)
    {
      *a5 = cf;
      return v7;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t MovieSampleGroupSetDescriptionArray(uint64_t a1, _DWORD *cf)
{
  if (!a1)
  {
    MovieSampleGroupSetDescriptionArray_cold_4(&v5);
    return v5;
  }

  if (!cf)
  {
    MovieSampleGroupSetDescriptionArray_cold_3(&v5);
    return v5;
  }

  if (*(a1 + 16))
  {
    MovieSampleGroupSetDescriptionArray_cold_1(&v5);
    return v5;
  }

  if (*(a1 + 128) != cf[9])
  {
    MovieSampleGroupSetDescriptionArray_cold_2(&v5);
    return v5;
  }

  v3 = CFRetain(cf);
  result = 0;
  *(a1 + 16) = v3;
  return result;
}

uint64_t MovieSampleGroupSet_sbgp(uint64_t a1, int a2, CMBlockBufferRef theBuffer)
{
  if (!a1)
  {
    MovieSampleGroupSet_sbgp_cold_7(&v11);
    return v11;
  }

  if (*(a1 + 32))
  {
    MovieSampleGroupSet_sbgp_cold_1(&v11);
    return v11;
  }

  if (*(a1 + 72))
  {
    MovieSampleGroupSet_sbgp_cold_2(&v11);
    return v11;
  }

  if (!theBuffer)
  {
    MovieSampleGroupSet_sbgp_cold_6(&v11);
    return v11;
  }

  if (CMBlockBufferGetDataLength(theBuffer) != 8 * a2)
  {
    MovieSampleGroupSet_sbgp_cold_3(&v11);
    return v11;
  }

  *(a1 + 28) = a2;
  v6 = *(a1 + 32);
  *(a1 + 32) = theBuffer;
  CFRetain(theBuffer);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 24) = 0;
  if (a2 < 1)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v10 = 0;
    result = MovieSampleGroupGetEntry(a1, v7, &v10, 0);
    if (result || !v10)
    {
      break;
    }

    if (v10 <= 0)
    {
      MovieSampleGroupSet_sbgp_cold_5(&v11);
      return v11;
    }

    v9 = *(a1 + 24) + v10;
    if (v9 < 0)
    {
      MovieSampleGroupSet_sbgp_cold_4(&v11);
      return v11;
    }

    *(a1 + 24) = v9;
    if (a2 == ++v7)
    {
      return 0;
    }
  }

  return result;
}

uint64_t MovieSampleGroupCreateDescriptionArrayDeepCopy(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  cf = 0;
  v6 = MovieSampleGroupDescriptionArrayCreate(a1, *(a2 + 36), &cf);
  if (v6)
  {
    v13 = v6;
  }

  else
  {
    Count = CFArrayGetCount(*(a2 + 16));
    if (Count < 1)
    {
LABEL_6:
      v13 = 0;
      v14 = cf;
      *(cf + 3) = *(a2 + 24);
      v14[8] = *(a2 + 32);
      *a3 = v14;
      return v13;
    }

    v8 = Count;
    v9 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 16), v9);
      Copy = CFDataCreateCopy(a1, ValueAtIndex);
      if (!Copy)
      {
        break;
      }

      v12 = Copy;
      CFArrayAppendValue(*(cf + 2), Copy);
      CFRelease(v12);
      if (v8 == ++v9)
      {
        goto LABEL_6;
      }
    }

    MovieSampleGroupCreateDescriptionArrayDeepCopy_cold_1(&v17);
    v13 = v17;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t MovieSampleGroupGetEntry(uint64_t a1, int a2, _DWORD *a3, uint64_t a4)
{
  v10 = 0;
  if (!a1)
  {
    MovieSampleGroupGetEntry_cold_3(&v11);
    return v11;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    MovieSampleGroupGetEntry_cold_2(&v11);
    return v11;
  }

  if (a2 < 0)
  {
    MovieSampleGroupGetEntry_cold_1(&v11);
    return v11;
  }

  if (CMBlockBufferCopyDataBytes(v4, 8 * a2, 8uLL, &v10))
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  else
  {
    if (a3)
    {
      *a3 = bswap32(v10);
    }

    result = 0;
    if (a4)
    {
      v8 = bswap32(HIDWORD(v10));
      v9 = (v8 & 0x10000) >> 16;
      if ((v8 & 0x10000) != 0)
      {
        v8 = v8;
      }

      *(a4 + 4) = v9;
      *a4 = v8;
    }
  }

  return result;
}

uint64_t MovieSampleGroupCollectionCreate(const __CFAllocator *a1, uint64_t *a2)
{
  if (a2)
  {
    if (qword_1ED4CAC10 != -1)
    {
      MovieSampleGroupCollectionCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      result = 0;
      *(v5 + 16) = Mutable;
      *a2 = v5;
    }

    else
    {
      MovieSampleGroupCollectionCreate_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    MovieSampleGroupCollectionCreate_cold_3(&v9);
    return v9;
  }

  return result;
}

uint64_t MovieSampleGroupCollectionAddSampleGroup(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  if (!a1)
  {
    MovieSampleGroupCollectionAddSampleGroup_cold_3(&v9);
    return v9;
  }

  if (!a2)
  {
    MovieSampleGroupCollectionAddSampleGroup_cold_2(&v9);
    return v9;
  }

  context = *(a2 + 128);
  v7 = *(a2 + 136);
  v4 = *(a1 + 16);
  v10.length = CFArrayGetCount(v4);
  v10.location = 0;
  CFArrayApplyFunction(v4, v10, DuplicationScanApplierFunction, &context);
  if (v8)
  {
    MovieSampleGroupCollectionAddSampleGroup_cold_1(&v9);
    return v9;
  }

  CFArrayAppendValue(*(a1 + 16), a2);
  return 0;
}

uint64_t MovieSampleGroupGetInfo(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, BOOL *a5)
{
  if (a1)
  {
    v8 = *(a1 + 72);
    if (a2)
    {
      v9 = *(a1 + 128);
      *(a2 + 8) = *(a1 + 136);
      *a2 = v9;
    }

    if (a3)
    {
      MovieSampleGroupDescriptionArrayCopyInfo(*(a1 + 16), 0, 0, a3, 0, 0);
    }

    if (a4)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = *(a1 + 28);
      }

      *a4 = v10;
    }

    result = 0;
    if (a5)
    {
      *a5 = v8 != 0;
    }
  }

  else
  {
    MovieSampleGroupGetInfo_cold_1(&v12);
    return v12;
  }

  return result;
}

uint64_t DuplicationScanApplierFunction(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v10 = 0;
  result = MovieSampleGroupGetInfo(a1, &v10, 0, 0, 0);
  v4 = *a2;
  v5 = *(a2 + 2);
  v7 = v10 == *a2 && v11 == v5;
  if (!v7 || v11 == 0)
  {
    if (!v7)
    {
      goto LABEL_15;
    }

LABEL_19:
    ++*(a2 + 3);
    return result;
  }

  if (!((v4 ^ v10) >> 32))
  {
    goto LABEL_19;
  }

LABEL_15:
  if (v10 == v4 && v11 != v5)
  {
    goto LABEL_19;
  }

  return result;
}

BOOL MovieSampleGroupCollectionHasSampleGroup(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = 0;
  context[0] = a2;
  context[1] = a3;
  if (a1)
  {
    v3 = *(a1 + 16);
    v7.length = CFArrayGetCount(v3);
    v7.location = 0;
    CFArrayApplyFunction(v3, v7, SampleGroupTypeSpecLookupApplierFunction, context);
    return v6 != 0;
  }

  else
  {
    MovieSampleGroupCollectionHasSampleGroup_cold_1();
    return 0;
  }
}

uint64_t SampleGroupTypeSpecLookupApplierFunction(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = 0;
  result = MovieSampleGroupGetInfo(a1, &v8, 0, 0, 0);
  v6 = v8 == *a2 && v9 == *(a2 + 8);
  if (!v6 || v9 == 0)
  {
    if (!v6)
    {
      return result;
    }
  }

  else if ((*a2 ^ v8) >> 32)
  {
    return result;
  }

  *(a2 + 16) = a1;
  return result;
}

uint64_t MovieSampleGroupCollectionRemoveAllGroupsWithGroupingType(uint64_t a1, int a2)
{
  if (a1)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v6);
        v10 = 0;
        v9 = 0;
        MovieSampleGroupGetInfo(ValueAtIndex, &v9, 0, 0, 0);
        if (v9 == a2)
        {
          CFArrayRemoveValueAtIndex(*(a1 + 16), v6);
          --v5;
        }

        else
        {
          ++v6;
        }
      }

      while (v6 < v5);
    }
  }

  else
  {
    MovieSampleGroupCollectionRemoveAllGroupsWithGroupingType_cold_1();
  }

  return 0;
}

CFIndex MovieSampleGroupCollectionGetCount(CFIndex result)
{
  if (result)
  {
    return CFArrayGetCount(*(result + 16));
  }

  return result;
}

CFTypeRef MovieSampleGroupCollectionLookupAndRetainSampleGroup(uint64_t a1, uint64_t a2, unsigned int a3)
{
  cf = 0;
  context[0] = a2;
  context[1] = a3;
  if (a1)
  {
    v3 = *(a1 + 16);
    v7.length = CFArrayGetCount(v3);
    v7.location = 0;
    CFArrayApplyFunction(v3, v7, SampleGroupTypeSpecLookupApplierFunction, context);
    result = cf;
    if (cf)
    {
      return CFRetain(cf);
    }
  }

  else
  {
    MovieSampleGroupCollectionLookupAndRetainSampleGroup_cold_1();
    return 0;
  }

  return result;
}

CFArrayRef MovieSampleGroupCollectionCopySampleGroupArray(const __CFAllocator *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);

    return CFArrayCreateCopy(a1, v3);
  }

  else
  {
    MovieSampleGroupCollectionCopySampleGroupArray_cold_1();
    return 0;
  }
}

void MovieSampleGroupCollectionApplyFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 16);
      v5.length = CFArrayGetCount(v3);
      v5.location = 0;
      CFArrayApplyFunction(v3, v5, ClientApplicationApplierFunction, v4);
    }

    else
    {
      MovieSampleGroupCollectionApplyFunction_cold_1();
    }
  }

  else
  {
    MovieSampleGroupCollectionApplyFunction_cold_2();
  }
}

uint64_t MovieSampleGroupDescriptionArrayAppendDescriptionUniquely(uint64_t a1, size_t a2, const void *a3, _DWORD *a4)
{
  MatchingDescriptionIndexValue = FindMatchingDescriptionIndexValue(a1, a2, a3);
  if (MatchingDescriptionIndexValue == -1)
  {

    return MovieSampleGroupDescriptionArrayAppendNewDescription(a1, a2, a3, a4);
  }

  else
  {
    if (a4)
    {
      *a4 = MatchingDescriptionIndexValue;
    }

    return 0;
  }
}

uint64_t FindMatchingDescriptionIndexValue(uint64_t a1, size_t a2, const void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  v9 = Count & 0x7FFFFFFF;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v8);
    Length = CFDataGetLength(ValueAtIndex);
    BytePtr = CFDataGetBytePtr(ValueAtIndex);
    if (Length == a2 && (!a2 || !memcmp(BytePtr, a3, a2)))
    {
      break;
    }

    if (v9 == ++v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return (v8 + 1);
}

uint64_t MovieSampleGroupDescriptionArrayAppendNewDescription(uint64_t a1, CFIndex a2, const UInt8 *a3, _DWORD *a4)
{
  v8 = *(a1 + 16);
  v9 = a2;
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    v9 = a2;
    if (Count)
    {
      if (*(a1 + 24) == a2)
      {
        goto LABEL_6;
      }

      v9 = 0;
    }
  }

  *(a1 + 24) = v9;
LABEL_6:
  v11 = CFGetAllocator(a1);
  v12 = CFDataCreate(v11, a3, a2);
  if (v12)
  {
    v13 = v12;
    CFArrayAppendValue(*(a1 + 16), v12);
    if (a4)
    {
      *a4 = CFArrayGetCount(*(a1 + 16));
    }

    CFRelease(v13);
    return 0;
  }

  else
  {
    MovieSampleGroupDescriptionArrayAppendNewDescription_cold_1(&v15);
    return v15;
  }
}

uint64_t MovieSampleGroupDescriptionArrayAppendParsedDescription(uint64_t a1, CFIndex a2, const UInt8 *a3)
{
  if (a1)
  {
    if ((a2 == 0) == (a3 == 0))
    {

      return MovieSampleGroupDescriptionArrayAppendNewDescription(a1, a2, a3, 0);
    }

    else
    {
      MovieSampleGroupDescriptionArrayAppendParsedDescription_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    MovieSampleGroupDescriptionArrayAppendParsedDescription_cold_2(&v5);
    return v5;
  }
}

uint64_t MovieSampleGroupDescriptionArraySetDefaultDescriptionIndex(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  v4 = a2;
  Count = *(a1 + 16);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count < v4)
  {
LABEL_7:
    MovieSampleGroupDescriptionArraySetDefaultDescriptionIndex_cold_1(&v7);
    return v7;
  }

  else
  {
    result = 0;
    *(a1 + 32) = a2;
  }

  return result;
}

uint64_t MovieSampleGroupDescriptionArrayCopyInfo(uint64_t a1, _DWORD *a2, void *a3, _DWORD *a4, void *a5, _DWORD *a6)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = *(a1 + 36);
    }

    if (a3)
    {
      v11 = *(a1 + 16);
      if (v11)
      {
        v11 = CFRetain(v11);
      }

      *a3 = v11;
    }

    if (a4)
    {
      v12 = *(a1 + 16);
      if (v12)
      {
        LODWORD(v12) = CFArrayGetCount(v12);
      }

      *a4 = v12;
    }

    if (a5)
    {
      *a5 = *(a1 + 24);
    }

    result = 0;
    if (a6)
    {
      *a6 = *(a1 + 32);
    }
  }

  else
  {
    MovieSampleGroupDescriptionArrayCopyInfo_cold_1(&v14);
    return v14;
  }

  return result;
}

uint64_t MovieSampleGroupDescriptionArrayCopyDescriptionForIndex(uint64_t a1, int a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      v4 = (a2 - 1);
      if (a2 < 1)
      {
        goto LABEL_12;
      }

      v6 = a2;
      Count = *(a1 + 16);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count < v6)
      {
LABEL_12:
        MovieSampleGroupDescriptionArrayCopyDescriptionForIndex_cold_1(&v11);
        return v11;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v4);
        if (ValueAtIndex)
        {
          v9 = CFRetain(ValueAtIndex);
        }

        else
        {
          v9 = 0;
        }

        result = 0;
        *a3 = v9;
      }
    }

    else
    {
      MovieSampleGroupDescriptionArrayCopyDescriptionForIndex_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    MovieSampleGroupDescriptionArrayCopyDescriptionForIndex_cold_3(&v13);
    return v13;
  }

  return result;
}

uint64_t MovieSampleGroupDescriptionArrayCreate(const __CFAllocator *a1, int a2, uint64_t *a3)
{
  if (a2)
  {
    if (a3)
    {
      if (qword_1ED4CAC20 != -1)
      {
        MovieSampleGroupDescriptionArrayCreate_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v7 = Instance;
        Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
        result = 0;
        *(v7 + 16) = Mutable;
        *(v7 + 36) = a2;
        *a3 = v7;
      }

      else
      {
        MovieSampleGroupDescriptionArrayCreate_cold_2(&v10);
        return v10;
      }
    }

    else
    {
      MovieSampleGroupDescriptionArrayCreate_cold_3(&v11);
      return v11;
    }
  }

  else
  {
    MovieSampleGroupDescriptionArrayCreate_cold_4(&v12);
    return v12;
  }

  return result;
}

uint64_t MovieSampleGroupGetPatternEntry(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4)
{
  v8 = 0;
  if (!a1)
  {
    MovieSampleGroupGetPatternEntry_cold_3(&v9);
    return v9;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    MovieSampleGroupGetPatternEntry_cold_2(&v9);
    return v9;
  }

  if (a2 < 0)
  {
    MovieSampleGroupGetPatternEntry_cold_1(&v9);
    return v9;
  }

  if (CMBlockBufferCopyDataBytes(v4, 8 * a2, 8uLL, &v8))
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  else
  {
    if (a3)
    {
      *a3 = bswap32(v8);
    }

    result = 0;
    if (a4)
    {
      *a4 = bswap32(HIDWORD(v8));
    }
  }

  return result;
}

uint64_t MovieSampleGroupGetSampleToGroupTable(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM();
  return 0;
}

uint64_t MovieSampleGroupGetNumSampleToGroupTableEntries(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 28);
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM();
  return 0;
}

uint64_t MovieSampleGroupCopyCompactAtomComponents(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    if (*(a1 + 72))
    {
      if (a2)
      {
        v7 = *(a1 + 48);
        *(a2 + 16) = *(a1 + 64);
        *a2 = v7;
      }

      if (a3)
      {
        v8 = *(a1 + 72);
        if (v8)
        {
          v8 = CFRetain(v8);
        }

        *a3 = v8;
      }

      if (a4)
      {
        v9 = *(a1 + 80);
        if (v9)
        {
          v10 = CFRetain(v9);
        }

        else
        {
          v10 = 0;
        }

        result = 0;
        *a4 = v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      MovieSampleGroupCopyCompactAtomComponents_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    MovieSampleGroupCopyCompactAtomComponents_cold_2(&v13);
    return v13;
  }

  return result;
}

uint64_t MovieSampleGroupCopyDescriptionForIndex(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (a1)
  {
    if (a3)
    {
      if (!a2)
      {
        goto LABEL_9;
      }

      if (!*(a1 + 140) || (a2 & 0xFF00000000) != 0)
      {
        v4 = MovieSampleGroupDescriptionArrayCopyDescriptionForIndex(*(a1 + 16), a2, &cf);
        if (v4)
        {
          v5 = v4;
          goto LABEL_14;
        }

LABEL_9:
        v5 = 0;
        *a3 = cf;
        return v5;
      }

      if (!MovieSampleGroupCopyDescriptionForIndex(*(a1 + 112)))
      {
        goto LABEL_9;
      }

      MovieSampleGroupCopyDescriptionForIndex_cold_1(&v8);
    }

    else
    {
      MovieSampleGroupCopyDescriptionForIndex_cold_2(&v8);
    }
  }

  else
  {
    MovieSampleGroupCopyDescriptionForIndex_cold_3(&v8);
  }

  v5 = v8;
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t MovieSampleGroupCopyGroupTypeKeyString(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 120);
      if (v3)
      {
        v4 = CFRetain(v3);
      }

      else
      {
        v4 = 0;
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      MovieSampleGroupCopyGroupTypeKeyString_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    MovieSampleGroupCopyGroupTypeKeyString_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t GetCompactDescriptionIndexForSample(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1;
    while (1)
    {
      destination = 0;
      CMBlockBufferCopyDataBytes(*(a1 + 72), v6, 8uLL, &destination);
      v10 = bswap32(destination);
      v11 = bswap32(HIDWORD(destination)) + v9;
      if (a2 >= v9 && v11 > a2)
      {
        break;
      }

      v8 += v10;
      ++v7;
      v6 += 8;
      v9 = v11;
      if (v7 >= *(a1 + 48))
      {
        goto LABEL_6;
      }
    }

    *a3 = (*(a1 + 88))(a1, (a2 - v9) % v10 + v8);
    return 1;
  }

  else
  {
LABEL_6:
    result = 0;
    *(a3 + 4) = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t MovieSampleGroupAccessorCreate(void *a1, uint64_t *a2)
{
  CFGetAllocator(a1);
  if (qword_1ED4CAC30 != -1)
  {
    MovieSampleGroupAccessorCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    MovieSampleGroupAccessorCreate_cold_2(&v11);
    return v11;
  }

  v5 = Instance;
  if (!a1)
  {
    goto LABEL_9;
  }

  v6 = CFRetain(a1);
  *(v5 + 16) = v6;
  v7 = a1[9];
  *(v5 + 24) = 0;
  if (!v7)
  {
    *(v5 + 28) = 1;
    *(v5 + 48) = RegularSampleGroupAccessorGetDescriptionIndexForSample;
    goto LABEL_9;
  }

  *(v5 + 36) = 1;
  *(v5 + 48) = CompactSampleGroupAccessorGetDescriptionIndexForSample;
  PatternEntry = MovieSampleGroupGetPatternEntry(v6, 0, (v5 + 28), (v5 + 32));
  if (!PatternEntry)
  {
LABEL_9:
    v9 = 0;
    *a2 = v5;
    return v9;
  }

  v9 = PatternEntry;
  CFRelease(v5);
  return v9;
}

uint64_t MovieSampleGroupAccessorCopy(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    CFGetAllocator(a1);
    if (qword_1ED4CAC30 != -1)
    {
      MovieSampleGroupAccessorCreate_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      v6 = *(a1 + 16);
      if (v6)
      {
        *(v5 + 16) = CFRetain(v6);
        v7 = *(a1 + 24);
        *(v5 + 40) = *(a1 + 40);
        *(v5 + 24) = v7;
        *(v5 + 48) = *(a1 + 48);
      }

      result = 0;
      *a2 = v5;
    }

    else
    {
      MovieSampleGroupAccessorCopy_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    MovieSampleGroupAccessorCopy_cold_3(&v10);
    return v10;
  }

  return result;
}

uint64_t MovieSampleGroupAccessorCopyDescriptionForSample(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  cf = 0;
  if (!*(a1 + 16))
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v5 = (*(a1 + 48))(a1, a2, &v9);
  if (!v9)
  {
    v6 = v5;
    MovieSampleGroupDescriptionArrayCopyInfo(*(*(a1 + 16) + 16), 0, 0, 0, 0, &v9);
    if (!v9)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  v6 = MovieSampleGroupCopyDescriptionForIndex(*(a1 + 16), v9, &cf);
  v7 = cf;
  if (!v6)
  {
LABEL_8:
    *a3 = v7;
    return v6;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void MovieSampleGroupAppendSamplesWithDescriptionIndex(int32x2_t *a1, unsigned __int32 a2, uint64_t a3)
{
  if (!a1)
  {
    MovieSampleGroupAppendSamplesWithDescriptionIndex_cold_2(&v16);
    return;
  }

  if (!a2)
  {
    MovieSampleGroupAppendSamplesWithDescriptionIndex_cold_1(&v16);
    return;
  }

  if (a1[9])
  {
    v15 = 0;
    if (MakeReadyToWrite_csgp(a1))
    {
      return;
    }

    v6 = a1[6].i32[0];
    if (!v6)
    {
      goto LABEL_20;
    }

    v14 = 0;
    v7 = 8 * (v6 - 1);
    MovieSampleGroupGetPatternEntry(a1, v6 - 1, &v15 + 1, &v15);
    v8 = HIDWORD(v15);
    if (HIDWORD(v15) == 1)
    {
      v16 = 0;
      GetCompactDescriptionIndexForSample(a1, a1[6].i32[1], &v16);
      if (v16 == a3 && BYTE4(v16) == BYTE4(a3))
      {
        v14 = _byteswap_uint64(__PAIR64__(HIDWORD(v15), v15 + a2));
        v9 = a1[12];
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v10)
        {
          if (!v10(*&v9, 8, v7, &v14, 0))
          {
            a1[6].i32[1] += a2;
          }
        }

        return;
      }

      v8 = HIDWORD(v15);
    }

    if (a2 == 1 && v8 == v15)
    {
      LODWORD(v14) = bswap32(v8 + 1);
      HIDWORD(v14) = v14;
      v11 = a1[12];
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v12 || v12(*&v11, 8, v7, &v14, 0))
      {
        return;
      }

      ++a1[6].i32[1];
    }

    else
    {
LABEL_20:
      AppendNewPattern(a1, 1, a2);
      if (v13)
      {
        return;
      }
    }

    AppendDescriptionIndexToCompactGroup(a1, a3);
    return;
  }

  AppendSamplesWithDescriptionIndexToRegularGroup(a1, a2, a3);
}

uint64_t MovieSampleGroupIntegrateSampleGroup(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    MovieSampleGroupIntegrateSampleGroup_cold_6(&theData);
    return theData;
  }

  if (!a3)
  {
    MovieSampleGroupIntegrateSampleGroup_cold_5(&theData);
    return theData;
  }

  if (a2 == a3)
  {
    MovieSampleGroupIntegrateSampleGroup_cold_4(&theData);
    return theData;
  }

  if (*(a3 + 72))
  {
    if (!*(a2 + 32))
    {
      theData = 0;
      if (*(a3 + 48))
      {
        if (*(a3 + 52) + *(a2 + 52) > a1)
        {
          MovieSampleGroupIntegrateSampleGroup_cold_2(&v24);
          v15 = v24;
LABEL_48:
          if (theData)
          {
            CFRelease(theData);
          }

          return v15;
        }

        PatternEntry = MakeReadyToWrite_csgp(a2);
        if (!PatternEntry)
        {
          v7 = *(a3 + 52) + *(a2 + 52);
          if (a1 <= v7)
          {
LABEL_10:
            if (!*(a3 + 48))
            {
LABEL_29:
              v15 = 0;
              goto LABEL_48;
            }

            v8 = 0;
            v9 = 0;
            while (1)
            {
              v23 = 0;
              v24 = 0;
              PatternEntry = MovieSampleGroupGetPatternEntry(a3, v9, &v23 + 1, &v23);
              if (PatternEntry)
              {
                goto LABEL_47;
              }

              v10.n128_u64[0] = AppendNewPattern(a2, HIDWORD(v23), v23);
              if (PatternEntry)
              {
                goto LABEL_47;
              }

              if (SHIDWORD(v23) >= 1)
              {
                v11 = 0;
                do
                {
                  v12 = (*(a3 + 88))(a3, (v8 + v11), v10);
                  if (v12 && ((v12 & 0xFF00000000) != 0 || *(a3 + 112) != a2))
                  {
                    PatternEntry = MovieSampleGroupCopyDescriptionForIndex(a3, v12, &theData);
                    if (PatternEntry)
                    {
                      goto LABEL_47;
                    }

                    if (theData)
                    {
                      Length = CFDataGetLength(theData);
                      BytePtr = CFDataGetBytePtr(theData);
                      PatternEntry = MovieSampleGroupAddDescription(a2, Length, BytePtr, &v24, 0);
                      if (PatternEntry)
                      {
                        goto LABEL_47;
                      }
                    }

                    else
                    {
                      LODWORD(v24) = 0;
                    }
                  }

                  else
                  {
                    LODWORD(v24) = v12;
                    BYTE4(v24) = BYTE4(v12);
                    *(&v24 + 5) = HIDWORD(v12) >> 8;
                    HIBYTE(v24) = HIBYTE(v12);
                  }

                  AppendDescriptionIndexToCompactGroup(a2, v24);
                  if (theData)
                  {
                    CFRelease(theData);
                    theData = 0;
                  }

                  ++v11;
                }

                while (v11 < SHIDWORD(v23));
                v8 += v11;
              }

              if (++v9 >= *(a3 + 48))
              {
                goto LABEL_29;
              }
            }
          }

          v24 = 0;
          AppendNewPattern(a2, 1, a1 - v7);
          if (!PatternEntry)
          {
            MovieSampleGroupDescriptionArrayCopyInfo(*(a2 + 16), 0, 0, 0, 0, &v24);
            AppendDescriptionIndexToCompactGroup(a2, v24);
            goto LABEL_10;
          }
        }

LABEL_47:
        v15 = PatternEntry;
        goto LABEL_48;
      }

      return 0;
    }

    MovieSampleGroupIntegrateSampleGroup_cold_1(&theData);
    return theData;
  }

  theData = 0;
  v16 = *(a3 + 24) + *(a2 + 24);
  if (v16 > a1)
  {
    MovieSampleGroupIntegrateSampleGroup_cold_3(&v24);
    return v24;
  }

  if (v16 >= a1 || (v24 = 0, MovieSampleGroupDescriptionArrayCopyInfo(*(a2 + 16), 0, 0, 0, 0, &v24), MovieSampleGroupAppendSamplesWithDescriptionIndex(a2, a1 - (*(a2 + 24) + *(a3 + 24)), v24), v15 = v17, !v17))
  {
    v18 = *(a3 + 28);
    if (v18 >= 1)
    {
      v19 = 0;
      while (1)
      {
        v24 = 0;
        HIDWORD(v23) = 0;
        PatternEntry = MovieSampleGroupGetEntry(a3, v19, &v23 + 1, &v24);
        if (PatternEntry)
        {
          break;
        }

        if (v24 && (BYTE4(v24) || *(a3 + 112) != a2))
        {
          PatternEntry = MovieSampleGroupCopyDescriptionForIndex(a3, v24, &theData);
          if (PatternEntry)
          {
            break;
          }

          if (theData)
          {
            v20 = CFDataGetLength(theData);
            v21 = CFDataGetBytePtr(theData);
            PatternEntry = MovieSampleGroupAddDescription(a2, v20, v21, &v24, 0);
            if (PatternEntry)
            {
              break;
            }
          }
        }

        MovieSampleGroupAppendSamplesWithDescriptionIndex(a2, HIDWORD(v23), v24);
        if (PatternEntry)
        {
          break;
        }

        if (theData)
        {
          CFRelease(theData);
          theData = 0;
        }

        if (v18 == ++v19)
        {
          return 0;
        }
      }

      goto LABEL_47;
    }

    return 0;
  }

  return v15;
}

uint64_t MovieSampleGroupCreateOptimizedCopy(int *cf, CFTypeRef *a2)
{
  v37 = 0uLL;
  v38 = 0;
  v36 = 0;
  *cfa = 0u;
  memset(v35, 0, sizeof(v35));
  *v32 = 0u;
  *v33 = 0u;
  LODWORD(v33[1]) = 1;
  if (!cf)
  {
    MovieSampleGroupCreateOptimizedCopy_cold_2(v39);
LABEL_55:
    v4 = v39[0];
    goto LABEL_46;
  }

  if (!a2)
  {
    MovieSampleGroupCreateOptimizedCopy_cold_1(v39);
    goto LABEL_55;
  }

  if (*(cf + 140))
  {
    v4 = 0;
    *a2 = CFRetain(cf);
    return v4;
  }

  v5 = CFGetAllocator(cf);
  v6 = MovieSampleGroupCreate(v5, *(cf + 16), cf[34], cfa);
  if (v6)
  {
    goto LABEL_39;
  }

  v7 = *(cf + 9);
  v8 = 13;
  if (!v7)
  {
    v8 = 6;
  }

  v9 = cf[v8];
  *(&v37 + 4) = 0;
  v10 = 4;
  HIDWORD(v37) = 4;
  if (v7)
  {
    v10 = cf[15];
    HIDWORD(v37) = v10;
  }

  LOBYTE(v38) = 0;
  v6 = MovieSampleGroupSet_csgp(cfa[0], &v37, 0, 0);
  if (v6)
  {
    goto LABEL_39;
  }

  v6 = MakeReadyToWrite_csgp(cfa[0]);
  if (v6)
  {
    goto LABEL_39;
  }

  v6 = MovieSampleGroupAccessorCreate(cf, v32);
  if (v6)
  {
    goto LABEL_39;
  }

  v6 = MovieSampleGroupAccessorCreate(cf, v33);
  if (v6)
  {
    goto LABEL_39;
  }

  memset_pattern16(&v35[8] + 12, &unk_196E77680, 0x80uLL);
  LODWORD(cfa[1]) = v10;
  LODWORD(v32[1]) = 1;
  if (v9 <= 0)
  {
    v12 = HIDWORD(cfa[1]);
LABEL_37:
    if (v12 < 1)
    {
      OutputTrailingNonPatternRunThroughSampleNumber(v32, v9);
      if (v6)
      {
        goto LABEL_39;
      }
    }

    else
    {
      OutputTrailingPatternRunThroughSampleNumber(v32, v9);
      if (v6)
      {
        goto LABEL_39;
      }
    }

    v28 = CFGetAllocator(cf);
    v29 = MovieSampleGroupCreateDescriptionArrayDeepCopy(v28, *(cf + 2), &v36);
    v30 = v36;
    if (v29)
    {
      v4 = v29;
      if (!v36)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v4 = MovieSampleGroupSetDescriptionArray(cfa[0], v36);
      if (!v4)
      {
        *a2 = cfa[0];
        cfa[0] = 0;
      }

      if (!v30)
      {
        goto LABEL_46;
      }
    }

    CFRelease(v30);
    goto LABEL_46;
  }

  v11 = 1;
  while (1)
  {
    *v39 = 0;
    v6 = (*(v32[0] + 6))(v32[0], v11, v39);
    if (v6)
    {
      goto LABEL_39;
    }

    *(v35 + SLODWORD(v32[1]) % 33 + 1) = v39[0];
    v12 = HIDWORD(cfa[1]);
    v13 = v32[1];
    v14 = SLODWORD(v32[1]) % 33;
    if (cfa[1] <= 0)
    {
      break;
    }

    if (*(v35 + v14 + 1) == *(v35 + (LODWORD(v32[1]) - HIDWORD(cfa[1])) % 33 + 1))
    {
      goto LABEL_32;
    }

    OutputTrailingPatternRunThroughSampleNumber(v32, LODWORD(v32[1]) - 1);
    if (v6)
    {
      goto LABEL_39;
    }

    v15 = 0;
    HIDWORD(cfa[1]) = 0;
    v13 = v32[1];
    v16 = vdupq_n_s32(v32[1]);
    do
    {
      *(&v35[v15 + 8] + 12) = v16;
      ++v15;
    }

    while (v15 != 8);
    v12 = 0;
LABEL_32:
    v11 = (v13 + 1);
    LODWORD(v32[1]) = v13 + 1;
    if (v13 >= v9)
    {
      goto LABEL_37;
    }
  }

  v17 = 0;
  v18 = LODWORD(v32[1]) + 1;
  v19 = cfa[1];
  v20 = LODWORD(v32[1]) - 1;
  v21 = LODWORD(cfa[1]) + 7;
  v22 = 47;
  while (1)
  {
    v23 = *(v32 + v22);
    if (v22 + v23 - 46 <= v13)
    {
      break;
    }

LABEL_31:
    --v17;
    v21 += v19;
    ++v22;
    if (v17 == -32)
    {
      goto LABEL_32;
    }
  }

  if (*(v35 + v14 + 1) != *(v35 + (v20 + v17) % 33 + 1))
  {
    *(v32 + v22) = v13 + v17;
    goto LABEL_31;
  }

  v24 = v19 * (v18 - v23);
  v26 = v24 + 7;
  v25 = v24 < -7;
  v27 = v24 + 14;
  if (!v25)
  {
    v27 = v26;
  }

  if (v21 / 8 + 8 >= v27 >> 3)
  {
    goto LABEL_31;
  }

  OutputTrailingNonPatternRunThroughSampleNumber(v32, v23 - 1);
  if (!v6)
  {
    v12 = 1 - v17;
    HIDWORD(cfa[1]) = 1 - v17;
    LODWORD(v35[0]) = *(v32 + v22);
    v13 = v32[1];
    goto LABEL_32;
  }

LABEL_39:
  v4 = v6;
LABEL_46:
  if (cfa[0])
  {
    CFRelease(cfa[0]);
  }

  if (v32[0])
  {
    CFRelease(v32[0]);
  }

  if (v33[0])
  {
    CFRelease(v33[0]);
  }

  return v4;
}

uint64_t MakeReadyToWrite_csgp(uint64_t a1)
{
  theBuffer = 0;
  blockBufferOut = 0;
  v22 = 0;
  cf = 0;
  if (*(a1 + 96))
  {
    v1 = 0;
    goto LABEL_43;
  }

  v3 = *MEMORY[0x1E695E480];
  WritableForBlockBuffer = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 8u, 0, &blockBufferOut);
  if (WritableForBlockBuffer)
  {
    goto LABEL_50;
  }

  v5 = *(a1 + 72);
  if (v5 && (v6 = *(a1 + 48)) != 0)
  {
    v20 = 0;
    destination = 0;
    v7 = 8 * (v6 - 1);
    CMBlockBufferCopyDataBytes(v5, v7, 8uLL, &destination);
    if (*(a1 + 48) >= 2u)
    {
      CMBlockBufferAppendBufferReference(blockBufferOut, *(a1 + 72), 0, v7, 0);
    }

    WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer();
    if (WritableForBlockBuffer)
    {
      goto LABEL_50;
    }

    CMByteStreamAppend();
  }

  else
  {
    WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer();
    if (WritableForBlockBuffer)
    {
      goto LABEL_50;
    }
  }

  WritableForBlockBuffer = CMBlockBufferCreateEmpty(v3, 8u, 0, &theBuffer);
  if (WritableForBlockBuffer)
  {
    goto LABEL_50;
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = 0;
      destination = 0;
      v11 = v9 - 1;
      HIDWORD(v13) = *(a1 + 60) - 4;
      LODWORD(v13) = HIDWORD(v13);
      v12 = v13 >> 2;
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v14 = 2 * v11;
          v10 = 2;
        }

        else
        {
          v14 = 0;
          if (v12 == 7)
          {
            v14 = 4 * v11;
            v10 = 4;
          }
        }
      }

      else
      {
        if (!v12)
        {
          v14 = (v11 + (v11 >> 31)) >> 1;
          goto LABEL_25;
        }

        v14 = 0;
        if (v12 == 1)
        {
          v14 = v11;
LABEL_25:
          v10 = 1;
        }
      }

      CMBlockBufferCopyDataBytes(v8, v14, v10, &v20);
      if (v14 && *(a1 + 56) >= 2u)
      {
        CMBlockBufferAppendBufferReference(theBuffer, *(a1 + 80), 0, v14, 0);
      }

      WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer();
      if (!WritableForBlockBuffer)
      {
        CMByteStreamAppend();
        goto LABEL_32;
      }

      goto LABEL_50;
    }
  }

  else
  {
    *(a1 + 60) = 4;
    *(a1 + 88) = GetDescriptionIndex_csgp_4;
  }

  WritableForBlockBuffer = CMByteStreamCreateWritableForBlockBuffer();
  if (!WritableForBlockBuffer)
  {
LABEL_32:
    v15 = *(a1 + 72);
    v16 = blockBufferOut;
    *(a1 + 72) = blockBufferOut;
    if (v16)
    {
      CFRetain(v16);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v17 = *(a1 + 80);
    v18 = theBuffer;
    *(a1 + 80) = theBuffer;
    if (v18)
    {
      CFRetain(v18);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    *(a1 + 96) = CFRetain(cf);
    v1 = 0;
    *(a1 + 104) = CFRetain(v22);
    goto LABEL_41;
  }

LABEL_50:
  v1 = WritableForBlockBuffer;
LABEL_41:
  if (v22)
  {
    CFRelease(v22);
  }

LABEL_43:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v1;
}

uint64_t MovieSampleGroupCreateNonCompactCopy(uint64_t a1, CFTypeRef *a2)
{
  v4 = CFGetAllocator(a1);
  v5 = *(a1 + 128);
  v6 = *(a1 + 136);
  v27 = 0;
  cf = 0;
  v26 = 0;
  if (*(a1 + 32))
  {
    v7 = 0;
    *a2 = CFRetain(a1);
    return v7;
  }

  v8 = v4;
  if (*(a1 + 140))
  {
    appended = MovieSampleGroupCreateForFragment(v4, v5, v6, *(a1 + 112), &v27);
    if (appended)
    {
      goto LABEL_34;
    }
  }

  else
  {
    appended = MovieSampleGroupCreate(v4, v5, v6, &v27);
    if (appended)
    {
LABEL_34:
      v7 = appended;
      goto LABEL_29;
    }
  }

  appended = MovieSampleGroupAccessorCreate(a1, &cf);
  if (appended)
  {
    goto LABEL_34;
  }

  v10 = 52;
  if (!*(a1 + 72))
  {
    v10 = 24;
  }

  v24 = *(a1 + v10);
  if (v24 >= 1)
  {
    v22 = v8;
    v23 = a2;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    v15 = cf;
    while (2)
    {
      v16 = 0;
      v17 = v24 - v14;
      while (1)
      {
        v25 = 0;
        appended = v15[6](v15, (v14 + v16), &v25);
        if (appended)
        {
          goto LABEL_34;
        }

        v18 = v25;
        if (v14 + v16 == 1 || v13 != v25)
        {
          break;
        }

        if (v24 - v14 + 1 == ++v16)
        {
          v11 += v16;
          v18 = v13;
          goto LABEL_23;
        }
      }

      if (v11 + v16)
      {
        appended = AppendSamplesWithDescriptionIndexToRegularGroup(v27, v11 + v16, v13 | (v12 << 32));
        if (appended)
        {
          goto LABEL_34;
        }

        v18 = v25;
      }

      v12 = HIDWORD(v25);
      v14 += v16 + 1;
      v11 = 1;
      v13 = v18;
      if (v17 != v16)
      {
        continue;
      }

      break;
    }

LABEL_23:
    appended = AppendSamplesWithDescriptionIndexToRegularGroup(v27, v11, v18 | (v12 << 32));
    a2 = v23;
    v8 = v22;
    if (appended)
    {
      goto LABEL_34;
    }
  }

  v19 = MovieSampleGroupCreateDescriptionArrayDeepCopy(v8, *(a1 + 16), &v26);
  v20 = v26;
  if (v19)
  {
    v7 = v19;
    if (!v26)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v7 = MovieSampleGroupSetDescriptionArray(v27, v26);
    if (!v7)
    {
      *a2 = v27;
      v27 = 0;
    }

    if (!v20)
    {
      goto LABEL_29;
    }
  }

  CFRelease(v20);
LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v7;
}

double movieSampleGroup_Init(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void movieSampleGroup_Finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
    a1[9] = 0;
  }

  v6 = a1[12];
  if (v6)
  {
    CFRelease(v6);
    a1[12] = 0;
  }

  v7 = a1[10];
  if (v7)
  {
    CFRelease(v7);
    a1[10] = 0;
  }

  v8 = a1[13];
  if (v8)
  {
    CFRelease(v8);
    a1[13] = 0;
  }

  v9 = a1[14];
  if (v9)
  {
    CFRelease(v9);
    a1[14] = 0;
  }

  v10 = a1[15];
  if (v10)
  {
    CFRelease(v10);
    a1[15] = 0;
  }
}

__CFString *movieSampleGroup_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"MovieSampleGroup '%c%c%c%c' ", HIBYTE(*(a1 + 128)), BYTE2(*(a1 + 128)), BYTE1(*(a1 + 128)), *(a1 + 128));
  if (*(a1 + 136))
  {
    CFStringAppendFormat(Mutable, 0, @"typeParameter %x ", *(a1 + 132));
  }

  if (*(a1 + 72))
  {
    if (*(a1 + 64))
    {
      v3 = ", some fragment-local";
    }

    else
    {
      v3 = "";
    }

    CFStringAppendFormat(Mutable, 0, @"csgp: %d patterns, %d samples, %d %d-bit description indexes%s", *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 60), v3);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"sbgp: %d entries, %d samples", *(a1 + 28), *(a1 + 24), v5, v6);
  }

  if (*(a1 + 140))
  {
    CFStringAppendFormat(Mutable, 0, @" FragmentSampleGroup parent: %p", *(a1 + 112));
  }

  return Mutable;
}

uint64_t RegisterMovieSampleGroupCollectionType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void movieSampleGroupCollection_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

__CFString *movieSampleGroupCollection_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  Count = *(a1 + 16);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  CFStringAppendFormat(Mutable, 0, @"MovieSampleGroupCollection %d sampleGroups ", Count);
  return Mutable;
}

uint64_t RegisterMovieSampleGroupDescriptionArrayType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void *movieSampleGroupDescriptionArray_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void movieSampleGroupDescriptionArray_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

__CFString *movieSampleGroupDescriptionArray_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = *(a1 + 36);
  Count = *(a1 + 16);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  CFStringAppendFormat(Mutable, 0, @"MovieSampleGroupDescriptionArray '%c%c%c%c' %d descriptions ", HIBYTE(v3), BYTE2(v3), BYTE1(v3), v3, Count);
  return Mutable;
}

uint64_t RegisterMovieSampleGroupAccessorType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double movieSampleGroupAccessor_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void movieSampleGroupAccessor_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

__CFString *movieSampleGroupAccessor_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"MovieSampleGroupAccessor '%@' group %p", *(*(a1 + 16) + 120), *(a1 + 16));
  return Mutable;
}

uint64_t CompactSampleGroupAccessorGetDescriptionIndexForSample(uint64_t a1, int a2, uint64_t *a3)
{
  v6 = *(a1 + 36);
  v7 = v6;
  while (a2 < v7 || *(a1 + 32) + v7 <= a2)
  {
    if (v6 <= a2)
    {
      v20 = 0;
      v14 = *(a1 + 24) + 1;
      v15 = *(a1 + 16);
      if (v14 >= *(v15 + 48))
      {
LABEL_11:
        result = 0;
LABEL_12:
        v19 = 0;
        goto LABEL_14;
      }

      result = MovieSampleGroupGetPatternEntry(v15, v14, &v20, &v20 + 1);
      if (result)
      {
        goto LABEL_12;
      }

      v16 = *(a1 + 24) + 1;
      v17 = vadd_s32(*(a1 + 36), vrev64_s32(*(a1 + 28)));
      *(a1 + 36) = v17;
      v18 = v20;
      *(a1 + 24) = v16;
      *(a1 + 28) = __PAIR64__(HIDWORD(v20), v18);
      v7 = v17.i32[0];
    }

    else
    {
      v20 = 0;
      v8 = *(a1 + 24);
      if (v8 < 1)
      {
        goto LABEL_11;
      }

      result = MovieSampleGroupGetPatternEntry(*(a1 + 16), v8 - 1, &v20, &v20 + 1);
      if (result)
      {
        goto LABEL_12;
      }

      v10 = *(a1 + 24) - 1;
      v12 = v20;
      v11 = HIDWORD(v20);
      v7 = *(a1 + 36) - HIDWORD(v20);
      v13 = *(a1 + 40) - v20;
      *(a1 + 36) = v7;
      *(a1 + 40) = v13;
      *(a1 + 24) = v10;
      *(a1 + 28) = v12;
      *(a1 + 32) = v11;
    }
  }

  v19 = (*(*(a1 + 16) + 88))();
  result = 0;
LABEL_14:
  *a3 = v19;
  return result;
}

uint64_t RegularSampleGroupAccessorGetDescriptionIndexForSample(uint64_t a1, int a2, void *a3)
{
  v19 = 0;
  v6 = *(a1 + 28);
  while (1)
  {
    v18 = 0;
    Entry = MovieSampleGroupGetEntry(*(a1 + 16), *(a1 + 24), &v19, &v18);
    if (Entry)
    {
      goto LABEL_15;
    }

    v8 = *(a1 + 28);
    if (v8 <= a2 && v19 + v8 > a2)
    {
      break;
    }

    if (v6 <= a2)
    {
      v13 = *(a1 + 24) + 1;
      if (v13 >= MovieSampleGroupGetNumSampleToGroupTableEntries(*(a1 + 16)))
      {
        goto LABEL_15;
      }

      v14.i32[0] = 1;
      v14.i32[1] = v19;
      *(a1 + 24) = vadd_s32(*(a1 + 24), v14);
    }

    else
    {
      v17 = 0;
      v9 = *(a1 + 24);
      v10 = v9 - 1;
      if (v9 < 1)
      {
        Entry = 0;
LABEL_15:
        v15 = 0;
        goto LABEL_16;
      }

      *(a1 + 24) = v10;
      v11 = MovieSampleGroupGetEntry(*(a1 + 16), v10, &v17, 0);
      if (v11)
      {
        Entry = v11;
        goto LABEL_15;
      }

      v12 = *(a1 + 28);
      if (v12 <= v17)
      {
        RegularSampleGroupAccessorGetDescriptionIndexForSample_cold_1(&v20);
        Entry = v20;
        goto LABEL_15;
      }

      *(a1 + 28) = v12 - v17;
    }
  }

  v15 = v18;
LABEL_16:
  *a3 = v15;
  return Entry;
}

uint64_t OUTLINED_FUNCTION_2_88(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CMBlockBufferRef *a8)
{

  return CMBlockBufferCreateContiguous(v8, a2, v8, 0, 0, 0, 2u, a8);
}

uint64_t OUTLINED_FUNCTION_4_73()
{

  return CMByteStreamCreateWritableForBlockBuffer();
}

uint64_t OUTLINED_FUNCTION_6_59(uint64_t a1, size_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char destination)
{
  destination = 0;
  v14 = *(a1 + 80);

  return CMBlockBufferCopyDataBytes(v14, a2, 1uLL, &destination);
}

uint64_t RegisterFigAssetCacheInspectorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAssetCacheInspectorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAssetCacheInspectorGetClassID_sRegisterFigAssetCacheInspectorBaseTypeOnce, RegisterFigAssetCacheInspectorBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigSecureStopArchivistCopyInstance(const __CFAllocator *a1, const __CFData *a2, const __CFURL *a3, void *a4)
{
  if (!a4)
  {
    FigSecureStopArchivistCopyInstance_cold_6(&block);
    return block;
  }

  *a4 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v45 = 0;
  fssa_ensureArchivistSingletonContext(a1);
  CFData = fssa_createKey(a1, a2, a3, &v45);
  if (CFData)
  {
    v30 = v33[3];
    if (v30)
    {
      CFRelease(v30);
    }

    v9 = 0;
  }

  else
  {
    block = MEMORY[0x1E69E9820];
    v37 = 0x40000000;
    v38 = __fssa_copyArchivistGuts_block_invoke;
    v39 = &unk_1E748B470;
    v40 = &v32;
    v41 = v45;
    dispatch_sync(sArchivistSingletonContext_1, &block);
    v9 = v33[3];
    v33[3] = 0;
  }

  if (v45)
  {
    CFRelease(v45);
  }

  _Block_object_dispose(&v32, 8);
  if (CFData)
  {
    goto LABEL_49;
  }

  if (v9)
  {
LABEL_47:
    CFData = 0;
    *a4 = v9;
    return CFData;
  }

  cf = 0;
  fssa_ensureArchivistSingletonContext(a1);
  Key = fssa_createKey(a1, a2, a3, &cf);
  if (Key)
  {
    CFData = Key;
    v9 = 0;
    goto LABEL_44;
  }

  v43 = 0;
  FigSecureStopManagerGetClassID();
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    CFData = v11;
    goto LABEL_60;
  }

  if (!v43 || (DerivedStorage = CMBaseObjectGetDerivedStorage(), v13 = dispatch_queue_create("com.apple.coremedia.securestoparchivist", 0), (*DerivedStorage = v13) == 0))
  {
    FigSecureStopArchivistCopyInstance_cold_4();
    CFData = block;
    goto LABEL_60;
  }

  if (a2)
  {
    v14 = CFRetain(a2);
  }

  else
  {
    v14 = 0;
  }

  DerivedStorage[2] = v14;
  if (a3)
  {
    v15 = CFRetain(a3);
  }

  else
  {
    v15 = 0;
  }

  DerivedStorage[3] = v15;
  v32 = 0;
  error = 0;
  v45 = 0;
  block = 0;
  v37 = 0;
  v38 = 0;
  v16 = FigFileForkOpenMainByCFURL();
  if (v16)
  {
    CFData = v16;
    goto LABEL_65;
  }

  DarwinFileDesc = FigFileGetDarwinFileDesc();
  flock(DarwinFileDesc, 1);
  CFData = FigFileReadURLAndCreateCFData();
  v18 = FigFileGetDarwinFileDesc();
  flock(v18, 8);
  if (CFData)
  {
LABEL_65:
    v22 = 0;
    goto LABEL_30;
  }

  v19 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigSecureStopArchivistCopyInstance_cold_3(&v46);
    v22 = 0;
LABEL_69:
    CFData = v46;
    goto LABEL_31;
  }

  if (CFDataGetLength(v45) <= 0)
  {
    CFData = 0;
    v22 = 0;
    DerivedStorage[1] = Mutable;
LABEL_30:
    Mutable = 0;
    goto LABEL_31;
  }

  v21 = DerivedStorage[2];
  block = Mutable;
  v37 = v21;
  LOBYTE(v38) = 0;
  v22 = CFPropertyListCreateWithData(v19, v45, 1uLL, 0, &error);
  if (!error || (CFData = CFErrorGetCode(error), !CFData))
  {
    if (v22)
    {
      v23 = CFGetTypeID(v22);
      if (v23 == CFDictionaryGetTypeID())
      {
        CFDictionaryApplyFunction(v22, fssa_createRecordAndAddToInMemoryDatabase, &block);
        v24 = v38;
        DerivedStorage[1] = Mutable;
        if (v24)
        {
          CFData = fssa_synchronizeInMemoryDatabaseToDisk(DerivedStorage);
        }

        else
        {
          CFData = 0;
        }

        goto LABEL_30;
      }

      FigSecureStopArchivistCopyInstance_cold_1(&v46);
    }

    else
    {
      FigSecureStopArchivistCopyInstance_cold_2(&v46);
    }

    goto LABEL_69;
  }

LABEL_31:
  FigFileForkClose();
  if (v45)
  {
    CFRelease(v45);
  }

  if (error)
  {
    CFRelease(error);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (CFData)
  {
LABEL_60:
    if (v43)
    {
      CFRelease(v43);
    }

    v25 = 0;
    v9 = 0;
    if (CFData)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v25 = v43;
LABEL_41:
  v26 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (v26)
  {
    v27 = v26;
    block = MEMORY[0x1E69E9820];
    v37 = 0x40000000;
    v38 = __fssa_createArchivist_block_invoke;
    v39 = &__block_descriptor_tmp_7_5;
    v40 = cf;
    v41 = v26;
    dispatch_sync(sArchivistSingletonContext_1, &block);
    CFData = 0;
    v28 = v25;
    v25 = v27;
LABEL_43:
    CFRelease(v25);
    v9 = v28;
    goto LABEL_44;
  }

  v31 = FigSecureStopArchivistCopyInstance_cold_5();
  v28 = 0;
  v9 = 0;
  CFData = block;
  if (!v31)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (cf)
  {
    CFRelease(cf);
  }

  if (!CFData)
  {
    goto LABEL_47;
  }

LABEL_49:
  if (v9)
  {
    CFRelease(v9);
  }

  return CFData;
}

uint64_t fssr_createRecordFromSerializedData(CFDataRef data, void *a2)
{
  error = 0;
  v10 = 0;
  v3 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], data, 1uLL, 0, &error);
  if (error && (Code = CFErrorGetCode(error), Code))
  {
    if (v3)
    {
      goto LABEL_7;
    }
  }

  else if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFDictionaryGetTypeID())
    {
      fssr_createRecordFromSerializedData_cold_1(&v11);
      Code = v11;
      goto LABEL_7;
    }

    Code = fssr_createSecureStopRecordFromDictionary(v3, &v10);
    v6 = v10;
    if (!Code)
    {
      *a2 = v10;
LABEL_7:
      v7 = v3;
LABEL_8:
      CFRelease(v7);
      goto LABEL_9;
    }

    CFRelease(v3);
    if (v6)
    {
      v7 = v6;
      goto LABEL_8;
    }
  }

  else
  {
    fssr_createRecordFromSerializedData_cold_2(&v11);
    Code = v11;
  }

LABEL_9:
  if (error)
  {
    CFRelease(error);
  }

  return Code;
}

void fssa_ensureArchivistSingletonContext(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fssa_ensureArchivistSingletonContext_block_invoke;
  block[3] = &__block_descriptor_tmp_6_2;
  block[4] = a1;
  if (fssa_ensureArchivistSingletonContext_once != -1)
  {
    dispatch_once(&fssa_ensureArchivistSingletonContext_once, block);
  }
}

uint64_t fssa_createKey(const __CFAllocator *a1, CFDataRef theData, const __CFURL *a3, __CFData **a4)
{
  MutableCopy = CFDataCreateMutableCopy(a1, 0, theData);
  if (MutableCopy)
  {
    v8 = MutableCopy;
    v9 = CFURLCreateData(a1, a3, 0x8000100u, 1u);
    if (v9)
    {
      v10 = v9;
      BytePtr = CFDataGetBytePtr(v9);
      Length = CFDataGetLength(v10);
      CFDataAppendBytes(v8, BytePtr, Length);
      *a4 = v8;
      CFRelease(v10);
      return 0;
    }

    else
    {
      fssa_createKey_cold_1();
      return v14;
    }
  }

  else
  {
    fssa_createKey_cold_2(&v15);
    return v15;
  }
}

dispatch_queue_t __fssa_ensureArchivistSingletonContext_block_invoke(uint64_t a1)
{
  sArchivistSingletonContext_0 = CFDictionaryCreateMutable(*(a1 + 32), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!sArchivistSingletonContext_0)
  {
    return __fssa_ensureArchivistSingletonContext_block_invoke_cold_1();
  }

  result = dispatch_queue_create("com.apple.coremedia.securestoparchivist.singletoncontext", 0);
  sArchivistSingletonContext_1 = result;
  if (!result)
  {
    return __fssa_ensureArchivistSingletonContext_block_invoke_cold_1();
  }

  return result;
}

void fssa_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *DerivedStorage;

  dispatch_release(v4);
}

__CFString *fssa_copyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSecureStopArchivist %p retainCount: %ld allocator: %p>", a1, v4, v5);
  return Mutable;
}

uint64_t fssa_fbo_removeRecords(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *DerivedStorage;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __fssa_fbo_removeRecords_block_invoke;
    v7[3] = &unk_1E748B500;
    v7[4] = &v8;
    v7[5] = a2;
    v7[6] = DerivedStorage;
    dispatch_sync(v4, v7);
    v5 = *(v9 + 6);
  }

  else
  {
    fssa_fbo_removeRecords_cold_1();
    v5 = v12;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

void __fssa_fbo_copyRecords_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    v3 = *(*(a1 + 48) + 8);

    CFDictionaryApplyFunction(v3, fssa_serializeRecordAndAddToOutputDictionary, v2);
  }

  else
  {
    __fssa_fbo_copyRecords_block_invoke_cold_1(a1);
  }
}

uint64_t fssr_createDictionaryFromSecureStopRecord(void *a1, int a2, __CFDictionary **a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = a1[2];
    if (v8)
    {
      CFDictionarySetValue(Mutable, @"SessionLifespanSPC", v8);
    }

    v9 = a1[3];
    if (v9)
    {
      CFDictionarySetValue(v7, @"SecureStopSPC", v9);
    }

    v10 = a1[6];
    if (v10)
    {
      CFDictionarySetValue(v7, @"PlaybackSessionID", v10);
    }

    v11 = a1[7];
    if (v11)
    {
      CFDictionarySetValue(v7, @"AirPlayPlaybackSessionID", v11);
    }

    v12 = a1[10];
    if (v12)
    {
      CFDictionarySetValue(v7, @"AbnormallyTerminated", v12);
    }

    if (a2)
    {
      if (!a1[6])
      {
        FigCFDictionarySetValue();
      }
    }

    else
    {
      v13 = a1[4];
      if (v13)
      {
        CFDictionarySetValue(v7, @"ModifiedDate", v13);
      }

      v14 = a1[5];
      if (v14)
      {
        CFDictionarySetValue(v7, @"VersionList", v14);
      }

      v15 = a1[8];
      if (v15)
      {
        CFDictionarySetValue(v7, @"APIProviderID", v15);
      }

      v16 = a1[9];
      if (v16)
      {
        CFDictionarySetValue(v7, @"AssetID", v16);
      }
    }

    result = 0;
    *a3 = v7;
  }

  else
  {
    fssr_createDictionaryFromSecureStopRecord_cold_1(&v18);
    return v18;
  }

  return result;
}

void __fssa_fbo_removeRecords_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v5);
        v9 = 0;
        *(*(*(a1 + 32) + 8) + 24) = fssr_createRecordFromSerializedData(ValueAtIndex, &v9);
        if (*(*(*(a1 + 32) + 8) + 24))
        {
          break;
        }

        v7 = v9;
        Value = CFDictionaryGetValue(*(*(a1 + 48) + 8), v9[6]);
        CFDictionaryRemoveValue(*(*(a1 + 48) + 8), v7[6]);
        CFRelease(v7);
        if (v4 == ++v5)
        {
          if (Value)
          {
            *(*(*(a1 + 32) + 8) + 24) = fssa_synchronizeInMemoryDatabaseToDisk(*(a1 + 48));
          }

          return;
        }
      }
    }
  }
}

uint64_t fssa_synchronizeInMemoryDatabaseToDisk(uint64_t a1)
{
  error = 0;
  v20 = 0;
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fssa_synchronizeInMemoryDatabaseToDisk_cold_3(&v21);
LABEL_37:
    Code = v21;
    goto LABEL_38;
  }

  Count = CFDictionaryGetCount(*(a1 + 8));
  if (Count < 33)
  {
    v8 = 0;
    v10 = 0;
    v7 = 0;
    v6 = 0;
LABEL_11:
    Code = 0;
    goto LABEL_12;
  }

  v5 = Count;
  v6 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  if (v6)
  {
    v7 = malloc_type_calloc(v5, 8uLL, 0x2004093837F09uLL);
    if (v7)
    {
      CFDictionaryGetKeysAndValues(*(a1 + 8), v6, v7);
      v8 = CFArrayCreate(v2, v7, v5, MEMORY[0x1E695E9C0]);
      if (v8)
      {
        MutableCopy = CFArrayCreateMutableCopy(v2, 0, v8);
        if (MutableCopy)
        {
          v10 = MutableCopy;
          v22.location = 0;
          v22.length = v5;
          CFArraySortValues(MutableCopy, v22, fssa_compareModifiedDate, 0);
          v11 = 0;
          v12 = v5 - 32;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
            v14 = ValueAtIndex[6];
            if (!v14)
            {
              v14 = ValueAtIndex[7];
            }

            CFDictionaryRemoveValue(*(a1 + 8), v14);
            ++v11;
          }

          while (v12 != v11);
          goto LABEL_11;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  fig_log_get_emitter();
  Code = FigSignalErrorAtGM();
  v10 = 0;
LABEL_12:
  free(v6);
  free(v7);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (Code)
  {
    goto LABEL_38;
  }

  CFDictionaryApplyFunction(*(a1 + 8), fssa_createRecordDictionaryAndAddToOutputDictionary, Mutable);
  v16 = FigFileForkOpenMainByCFURL();
  if (v16)
  {
    Code = v16;
LABEL_38:
    FigFileForkClose();
    goto LABEL_23;
  }

  v17 = CFPropertyListCreateData(v2, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, &error);
  if (!error || (Code = CFErrorGetCode(error), !Code))
  {
    if (v17)
    {
      fssa_synchronizeInMemoryDatabaseToDisk_cold_1(&v20, v17, &v21);
      Code = v21;
LABEL_22:
      CFRelease(v17);
      goto LABEL_23;
    }

    fssa_synchronizeInMemoryDatabaseToDisk_cold_2(&v21);
    goto LABEL_37;
  }

  FigFileForkClose();
  if (v17)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (error)
  {
    CFRelease(error);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Code;
}

uint64_t __fssa_fbo_updateRecord_block_invoke(uint64_t a1)
{
  result = fssa_updateRecordGuts(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), 0, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t fssa_updateRecordGuts(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, char a9)
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  if (!a1)
  {
    fssa_updateRecordGuts_cold_2(&value);
    return value;
  }

  v17 = CFDictionaryGetValue(*(a1 + 8), v9);
  if (v17)
  {
    v18 = CFRetain(v17);
    value = v18;
    if (v18)
    {
      v19 = v18;
      v20 = *MEMORY[0x1E695E480];
      goto LABEL_8;
    }
  }

  else
  {
    value = 0;
  }

  v20 = *MEMORY[0x1E695E480];
  SecureStopRecord = fssr_createSecureStopRecord(*MEMORY[0x1E695E480], &value);
  v19 = value;
  if (SecureStopRecord)
  {
    v33 = SecureStopRecord;
    if (!value)
    {
      return v33;
    }

    v34 = value;
    goto LABEL_52;
  }

  CFDictionarySetValue(*(a1 + 8), v9, value);
LABEL_8:
  Current = CFAbsoluteTimeGetCurrent();
  v22 = CFDateCreate(v20, Current);
  v23 = v19[2];
  v19[2] = a7;
  if (a7)
  {
    CFRetain(a7);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  v24 = v19[3];
  v19[3] = a8;
  if (a8)
  {
    CFRetain(a8);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  v25 = v19[4];
  v19[4] = v22;
  if (v22)
  {
    CFRetain(v22);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  v26 = v19[5];
  v19[5] = a5;
  if (a5)
  {
    CFRetain(a5);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  v27 = v19[6];
  v19[6] = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  v28 = v19[7];
  v19[7] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  v29 = v19[8];
  v19[8] = a6;
  if (a6)
  {
    CFRetain(a6);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  v30 = v19[9];
  v19[9] = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (a9)
  {
    v31 = v19[10];
    v32 = *MEMORY[0x1E695E4D0];
    v19[10] = *MEMORY[0x1E695E4D0];
    if (v32)
    {
      CFRetain(v32);
    }

    if (v31)
    {
      CFRelease(v31);
    }
  }

  if (!a3 || !a8)
  {
    goto LABEL_49;
  }

  if (a2)
  {
    CFDictionarySetValue(*(a1 + 8), a2, v19);
    CFDictionaryRemoveValue(*(a1 + 8), a3);
LABEL_49:
    v33 = fssa_synchronizeInMemoryDatabaseToDisk(a1);
    goto LABEL_50;
  }

  fssa_updateRecordGuts_cold_1(&v39);
  v33 = v39;
LABEL_50:
  CFRelease(v19);
  if (v22)
  {
    v34 = v22;
LABEL_52:
    CFRelease(v34);
  }

  return v33;
}

double FigSecureStopRecordInit(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FigSecureStopRecordFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    CFRelease(v6);
    a1[6] = 0;
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
    a1[7] = 0;
  }

  v8 = a1[8];
  if (v8)
  {
    CFRelease(v8);
    a1[8] = 0;
  }

  v9 = a1[9];
  if (v9)
  {
    CFRelease(v9);
    a1[9] = 0;
  }

  v10 = a1[10];
  if (v10)
  {
    CFRelease(v10);
    a1[10] = 0;
  }
}

uint64_t FigSecureStopRecordClassRegisterOnce(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t __fssa_fbo_finalizeRecord_block_invoke(uint64_t a1)
{
  result = fssa_updateRecordGuts(*(a1 + 40), *(a1 + 48), *(a1 + 56), 0, 0, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void fssa_createRecordAndAddToInMemoryDatabase(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  value = 0;
  v7 = fssr_createSecureStopRecordFromDictionary(a2, &value);
  v8 = value;
  if (v7)
  {
    if (!value)
    {
      return;
    }

    goto LABEL_26;
  }

  if (*(value + 3))
  {
LABEL_30:
    CFDictionarySetValue(v5, a1, v8);
    v20 = *(a3 + 16) != 0;
    goto LABEL_25;
  }

  if (*(value + 6))
  {
    if (FigCFEqual())
    {
      v9 = PKDKeyManagerCreateForMSE(*MEMORY[0x1E695E480], 0);
    }

    else
    {
      if (!FigCFEqual())
      {
LABEL_29:
        if (!fssa_createRecordAndAddToInMemoryDatabase_cold_1())
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }

      v9 = PKDKeyManagerCreateForPastis(*MEMORY[0x1E695E480], 0);
    }

    v17 = v9;
    if (v9)
    {
      if (KeyManagerCreateStopSPC(v9, v6, *(v8 + 5), *(v8 + 9), *(v8 + 6), v8 + 3))
      {
        CFRelease(v17);
        goto LABEL_26;
      }

      v18 = *(v8 + 5);
      if (v18)
      {
        CFRelease(v18);
        *(v8 + 5) = 0;
      }

      v19 = *(v8 + 9);
      if (v19)
      {
        CFRelease(v19);
        *(v8 + 9) = 0;
      }

      v16 = v17;
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  if (!*(value + 7))
  {
    goto LABEL_24;
  }

  v10 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  v12 = CFDateCreate(v10, Current);
  TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(v12, *(v8 + 4));
  if (v12)
  {
    CFRelease(v12);
  }

  if (TimeIntervalSinceDate <= 1296000.0)
  {
    goto LABEL_24;
  }

  v14 = *(v8 + 10);
  v15 = *MEMORY[0x1E695E4D0];
  *(v8 + 10) = *MEMORY[0x1E695E4D0];
  if (v15)
  {
    CFRetain(v15);
  }

  if (!v14)
  {
    goto LABEL_24;
  }

  v16 = v14;
LABEL_23:
  CFRelease(v16);
LABEL_24:
  CFDictionarySetValue(v5, a1, v8);
  v20 = 1;
LABEL_25:
  *(a3 + 16) = v20;
LABEL_26:

  CFRelease(v8);
}