@interface ParavirtualizedMotionEstimationProcessor
@end

@implementation ParavirtualizedMotionEstimationProcessor

uint64_t __ParavirtualizedMotionEstimationProcessor_CreateInstance_block_invoke(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  v45 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v45, 0, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      v6 = v45;
      if (v45 <= 1298492787)
      {
        if (v45 == 1298298214)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          theArray[0] = 0;
          pixelBuffer = 0;
          *v54 = 0;
          v50 = 0;
          cf = 0;
          IOSurface = 0;
          if (VTParavirtualizationMessageGetSInt64() || (v24 = theArray[0], VTParavirtualizationMessageCopyCFDictionary(a2, 745566064, v54)))
          {
            v25 = 0;
          }

          else
          {
            VTMotionEstimationProcessorSessionCreateMotionVectorPixelBufferWithOptions(*DerivedStorage, v24, *v54, &pixelBuffer);
            if (pixelBuffer)
            {
              v25 = CFUUIDCreate(*MEMORY[0x1E695E480]);
              paravirtualizedMotionEstimationProcessor_rememberPixelBufferAndUUID(v5, v25, pixelBuffer);
            }

            else
            {
              v25 = 0;
            }

            if (!VTParavirtualizationCreateReplyAndByteStream(a2, 8, &cf, &v50) && !VTParavirtualizationMessageAppendSInt32() && (!v25 || !VTParavirtualizationMessageAppendCFUUID()))
            {
              if (pixelBuffer)
              {
                IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
              }

              VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAsync(cf);
            }
          }

          if (pixelBuffer)
          {
            CFRelease(pixelBuffer);
          }

          if (v25)
          {
            CFRelease(v25);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v50)
          {
            CFRelease(v50);
          }

          v12 = *v54;
          if (!*v54)
          {
            goto LABEL_110;
          }
        }

        else
        {
          if (v45 != 1298428002)
          {
            goto LABEL_61;
          }

          CMBaseObjectGetDerivedStorage();
          theArray[0] = 0;
          if (!VTParavirtualizationMessageCopyCFUUIDArray())
          {
            for (i = 0; ; ++i)
            {
              Count = theArray[0];
              if (theArray[0])
              {
                Count = CFArrayGetCount(theArray[0]);
              }

              if (i >= Count)
              {
                break;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
              v11 = CMBaseObjectGetDerivedStorage();
              os_unfair_lock_lock((v11 + 40));
              if (CFDictionaryGetValue(*(v11 + 48), ValueAtIndex))
              {
                CFDictionaryRemoveValue(*(v11 + 48), ValueAtIndex);
                os_unfair_lock_unlock((v11 + 40));
              }

              else if (!__ParavirtualizedMotionEstimationProcessor_CreateInstance_block_invoke_cold_1((v11 + 40)))
              {
                break;
              }
            }
          }

          v12 = theArray[0];
          if (!theArray[0])
          {
            goto LABEL_110;
          }
        }

LABEL_85:
        CFRelease(v12);
LABEL_110:
        CFRelease(v5);
        return MessageTypeAndFlagsAndGuestUUID;
      }

      if (v45 != 1298492788)
      {
        if (v45 == 1299411041)
        {
          v22 = CMBaseObjectGetDerivedStorage();
          theArray[0] = 0;
          pixelBuffer = 0;
          *v54 = 0;
          if (VTParavirtualizationCreateReplyAndByteStream(a2, 8, v54, &pixelBuffer) || VTParavirtualizationMessageCopyCFDictionary(a2, 745562721, theArray))
          {
            goto LABEL_51;
          }

          VTMotionEstimationProcessorSessionSetSourcePixelBufferAttributes(*v22, theArray[0]);
LABEL_49:
          if (!VTParavirtualizationMessageAppendSInt32())
          {
            VTParavirtualizationGuestSendMessageToHostAsync(*v54);
          }

LABEL_51:
          if (theArray[0])
          {
            CFRelease(theArray[0]);
          }

          if (*v54)
          {
            CFRelease(*v54);
          }

          v12 = pixelBuffer;
          if (!pixelBuffer)
          {
            goto LABEL_110;
          }

          goto LABEL_85;
        }

        if (v45 == 1299607650)
        {
          v7 = CMBaseObjectGetDerivedStorage();
          theArray[0] = 0;
          pixelBuffer = 0;
          *v54 = 0;
          if (VTParavirtualizationCreateReplyAndByteStream(a2, 8, v54, &pixelBuffer) || VTParavirtualizationMessageCopyCFDictionary(a2, 745562721, theArray))
          {
            goto LABEL_51;
          }

          VTMotionEstimationProcessorSessionSetMotionVectorPixelBufferAttributes(*v7, theArray[0]);
          goto LABEL_49;
        }

LABEL_61:
        LODWORD(pixelBuffer) = 0;
        LOBYTE(cf) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v27 = pixelBuffer;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, cf))
        {
          v28 = v27;
        }

        else
        {
          v28 = v27 & 0xFFFFFFFE;
        }

        if (v28)
        {
          v29 = MEMORY[0x1E69E9830];
          if ((v6 & 0x80000000) != 0)
          {
            v30 = __maskrune(v6 >> 24, 0x40000uLL);
          }

          else
          {
            v30 = *(MEMORY[0x1E69E9830] + 4 * (v6 >> 24) + 60) & 0x40000;
          }

          if (v30)
          {
            v31 = v6 >> 24;
          }

          else
          {
            v31 = 46;
          }

          v44 = v31;
          if (BYTE2(v6) > 0x7Fu)
          {
            v32 = __maskrune(BYTE2(v6), 0x40000uLL);
          }

          else
          {
            v32 = *(v29 + 4 * BYTE2(v6) + 60) & 0x40000;
          }

          if (v32)
          {
            v33 = BYTE2(v6);
          }

          else
          {
            v33 = 46;
          }

          v34 = v29;
          if (BYTE1(v6) > 0x7Fu)
          {
            v35 = __maskrune(BYTE1(v6), 0x40000uLL);
          }

          else
          {
            v35 = *(v29 + 4 * BYTE1(v6) + 60) & 0x40000;
          }

          if (v35)
          {
            v36 = BYTE1(v6);
          }

          else
          {
            v36 = 46;
          }

          if (v6 > 0x7Fu)
          {
            v37 = __maskrune(v6, 0x40000uLL);
          }

          else
          {
            v37 = *(v34 + 4 * v6 + 60) & 0x40000;
          }

          *&v54[4] = "paravirtualizedMotionEstimationProcessor_HandleMessageFromHost";
          *v54 = 136316162;
          if (v37)
          {
            v38 = v6;
          }

          else
          {
            v38 = 46;
          }

          v55 = 1024;
          v56 = v44;
          v57 = 1024;
          v58 = v33;
          v59 = 1024;
          v60 = v36;
          v61 = 1024;
          v62 = v38;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_110;
      }

      v13 = CMBaseObjectGetDerivedStorage();
      v52 = 0;
      pixelBuffer = 0;
      v50 = 0;
      cf = 0;
      v48 = 0;
      IOSurface = 0;
      SInt64 = VTParavirtualizationCreateReplyAndByteStream(a2, 8, &IOSurface, &v48);
      if (SInt64 || (SInt64 = VTParavirtualizationMessageGetSInt64(), SInt64))
      {
        v40 = SInt64;
        v18 = 0;
        v15 = 0;
      }

      else
      {
        v15 = pixelBuffer;
        VTParavirtualizationMessageGetSInt32();
        if (v16 || (v17 = HIDWORD(v52), VTParavirtualizationMessageGetUInt32(), v16) || (v16 = VTParavirtualizationMessageCopyCFDictionary(a2, 745365860, &cf), v16) || (v16 = VTParavirtualizationMessageCopyCFUUID(), v16))
        {
          v40 = v16;
          v18 = 0;
        }

        else
        {
          v18 = v50;
          if (v50)
          {
            v19 = CMBaseObjectGetDerivedStorage();
            os_unfair_lock_lock((v19 + 40));
            Value = CFDictionaryGetValue(*(v19 + 48), v18);
            v18 = Value;
            if (Value)
            {
              CFRetain(Value);
            }

            else
            {
              __ParavirtualizedMotionEstimationProcessor_CreateInstance_block_invoke_cold_2();
            }

            os_unfair_lock_unlock((v19 + 40));
          }

          v21 = VTParavirtualizationMessageSetAttachmentsOnPixelBufferAndIOSurfaceIfPresent(a2, v18);
          if (!v21)
          {
            VTMotionEstimationProcessorSessionEmitMotionVectors(*v13, v15, v17, v52, cf, v18);
            if (!VTParavirtualizationMessageAppendSInt32())
            {
              VTParavirtualizationGuestSendMessageToHostAsync(IOSurface);
            }

            goto LABEL_36;
          }

          v40 = v21;
        }
      }

      v47 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v42 = v47;
      if (os_log_type_enabled(v41, type))
      {
        v43 = v42;
      }

      else
      {
        v43 = v42 & 0xFFFFFFFE;
      }

      if (v43)
      {
        *v54 = 136315394;
        *&v54[4] = "ParavirtualizedMotionEstimationProcessor_HandleEmitMotionVectors";
        v55 = 1024;
        v56 = v40;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      VTMotionEstimationProcessorSessionEmitMotionVectors(*v13, v15, v40, v52, cf, 0);
LABEL_36:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      if (v50)
      {
        CFRelease(v50);
      }

      if (IOSurface)
      {
        CFRelease(IOSurface);
      }

      v12 = v48;
      if (!v48)
      {
        goto LABEL_110;
      }

      goto LABEL_85;
    }
  }

  return MessageTypeAndFlagsAndGuestUUID;
}

BOOL __ParavirtualizedMotionEstimationProcessor_CreateInstance_block_invoke_cold_1(os_unfair_lock_s *a1)
{
  v2 = FigSignalErrorAtGM();
  os_unfair_lock_unlock(a1);
  return v2 == 0;
}

@end