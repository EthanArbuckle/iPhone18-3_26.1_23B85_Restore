@interface ParavirtualizedVideoDecoder
@end

@implementation ParavirtualizedVideoDecoder

uint64_t __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  v163[16] = *MEMORY[0x1E69E9840];
  v147 = 0;
  MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v147, 0, 0);
  if (!MessageTypeAndFlagsAndGuestUUID)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = v4;
      v6 = v147;
      if (v147 <= 1148021093)
      {
        if (v147 > 1147433056)
        {
          if (v147 == 1147433057)
          {
            VTVideoDecoderGetCMBaseObject(v4);
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            theArray = 0;
            cf = 0;
            os_unfair_lock_lock((DerivedStorage + 16));
            if (*DerivedStorage)
            {
              DestinationPixelBufferAttributes = VTDecoderSessionGetDestinationPixelBufferAttributes(*DerivedStorage);
            }

            else
            {
              DestinationPixelBufferAttributes = 0;
            }

            os_unfair_lock_unlock((DerivedStorage + 16));
            appended = VTParavirtualizationCreateReplyAndByteStream(a2, 8, &cf, &theArray);
            if (!appended && (!DestinationPixelBufferAttributes || (appended = VTParavirtualizationMessageAppendCFDictionary(theArray, 745562721, DestinationPixelBufferAttributes)) == 0))
            {
              appended = VTParavirtualizationGuestSendMessageToHostAsync(cf);
              if (!appended)
              {
                goto LABEL_262;
              }
            }

            v78 = appended;
            LODWORD(pixelBuffer) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v80 = pixelBuffer;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
            {
              v81 = v80;
            }

            else
            {
              v81 = v80 & 0xFFFFFFFE;
            }

            if (v81)
            {
              *v158 = 136315650;
              *&v158[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionGetDestinationPixelBufferAttributes";
              v159 = 2048;
              *v160 = v5;
              *&v160[8] = 1024;
              *v161 = v78;
              _os_log_send_and_compose_impl();
            }

            goto LABEL_261;
          }

          if (v147 != 1147497844)
          {
            if (v147 == 1147565410)
            {
              v163[0] = 0;
              if (!VTParavirtualizationMessageCopyCFUUIDArray())
              {
                if (!v163[0])
                {
LABEL_262:
                  CFRelease(v5);
                  return MessageTypeAndFlagsAndGuestUUID;
                }

                if (CFArrayGetCount(v163[0]) >= 1)
                {
                  paravirtualizedVideoDecoder_lookupRetainAndForgetPendingFramePixelBuffersByUUIDs(v5, v163[0], 0);
                }
              }

              goto LABEL_57;
            }

            goto LABEL_85;
          }

          VTVideoDecoderGetCMBaseObject(v4);
          v40 = CMBaseObjectGetDerivedStorage();
          theArray = 0;
          cf = 0;
          LODWORD(v152) = 0;
          LODWORD(IOSurface) = 0;
          *type = 0;
          pixelBuffer = 0;
          SInt64 = VTParavirtualizationMessageGetSInt64();
          if (!SInt64)
          {
            v42 = cf;
            VTParavirtualizationMessageGetSInt32();
            if (v43)
            {
              v53 = v43;
              v143 = v42;
              v51 = 0;
              v141 = 0;
              LODWORD(v44) = 0;
              goto LABEL_316;
            }

            v44 = v152;
            VTParavirtualizationMessageGetUInt32();
            if (v45)
            {
              v53 = v45;
              v143 = v42;
              v51 = 0;
              v141 = 0;
              goto LABEL_316;
            }

            v46 = IOSurface;
            v47 = VTParavirtualizationMessageCopyCFUUID();
            if (v47)
            {
              v53 = v47;
              v141 = v46;
              v143 = v42;
              v51 = 0;
              goto LABEL_316;
            }

            v48 = theArray;
            if (theArray)
            {
              VTVideoDecoderGetCMBaseObject(v5);
              v49 = CMBaseObjectGetDerivedStorage();
              os_unfair_lock_lock((v49 + 64));
              Value = CFDictionaryGetValue(*(v49 + 72), v48);
              v51 = Value;
              if (Value)
              {
                CFRetain(Value);
                CFDictionaryRemoveValue(*(v49 + 72), v48);
                os_unfair_lock_unlock((v49 + 64));
                v52 = VTParavirtualizationMessageSetAttachmentsOnPixelBufferAndIOSurfaceIfPresent(a2, v51);
                if (v52)
                {
                  v53 = v52;
                  v141 = v46;
                  v143 = v42;
LABEL_316:
                  LODWORD(v150) = 0;
                  v153[4] = OS_LOG_TYPE_DEFAULT;
                  v137 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v138 = v150;
                  if (os_log_type_enabled(v137, v153[4]))
                  {
                    v139 = v138;
                  }

                  else
                  {
                    v139 = v138 & 0xFFFFFFFE;
                  }

                  if (v139)
                  {
                    *v158 = 136315650;
                    *&v158[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionEmitDecodedFrameMessage";
                    v159 = 2048;
                    *v160 = v5;
                    *&v160[8] = 1024;
                    *v161 = v53;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  os_unfair_lock_lock((v40 + 16));
                  if (*v40)
                  {
                    VTDecoderSessionEmitDecodedFrame(*v40, v143, v53, v141, 0);
                  }

                  os_unfair_lock_unlock((v40 + 16));
                  LODWORD(v42) = v143;
                  LODWORD(v46) = v141;
                  goto LABEL_160;
                }
              }

              else
              {
                v141 = v46;
                v143 = v42;
                if (!__ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_6((v49 + 64), v163))
                {
                  v53 = LODWORD(v163[0]);
                  goto LABEL_316;
                }

                v46 = v46;
              }
            }

            else
            {
              v51 = 0;
            }

            os_unfair_lock_lock((v40 + 16));
            if (*v40)
            {
              v93 = VTDecoderSessionEmitDecodedFrame(*v40, v42, v44, v46, v51);
            }

            else
            {
              v93 = 0;
            }

            os_unfair_lock_unlock((v40 + 16));
            v107 = VTParavirtualizationCreateReplyAndByteStream(a2, 8, &pixelBuffer, type);
            if (v107 || (v107 = VTParavirtualizationMessageAppendSInt32()) != 0)
            {
              LODWORD(v53) = v107;
            }

            else
            {
              v108 = VTParavirtualizationGuestSendMessageToHostAsync(pixelBuffer);
              if (v108)
              {
                LODWORD(v53) = v108;
              }

              else
              {
                LODWORD(v53) = v93;
              }

              if (!v53)
              {
                goto LABEL_186;
              }
            }

LABEL_160:
            LODWORD(v150) = 0;
            v153[4] = OS_LOG_TYPE_DEFAULT;
            v109 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v110 = v150;
            if (os_log_type_enabled(v109, v153[4]))
            {
              v111 = v110;
            }

            else
            {
              v111 = v110 & 0xFFFFFFFE;
            }

            if (v111)
            {
              *v158 = 136316674;
              *&v158[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionEmitDecodedFrameMessage";
              v159 = 2048;
              *v160 = v5;
              *&v160[8] = 1024;
              *v161 = v53;
              *&v161[4] = 1024;
              *v162 = v42;
              *&v162[4] = 1024;
              *&v162[6] = v44;
              *&v162[10] = 1024;
              *&v162[12] = v46;
              *&v162[16] = 2048;
              *&v162[18] = v51;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_186:
            if (v51)
            {
              CFRelease(v51);
            }

            v121 = theArray;
            if (!theArray)
            {
              goto LABEL_196;
            }

            goto LABEL_195;
          }

          v53 = SInt64;
          v51 = 0;
          v141 = 0;
          LODWORD(v44) = 0;
          v143 = 0;
          goto LABEL_316;
        }

        if (v147 == 1115252001)
        {
          VTVideoDecoderGetCMBaseObject(v4);
          v23 = CMBaseObjectGetDerivedStorage();
          os_unfair_lock_lock((v23 + 64));
          CFDictionaryRemoveAllValues(*(v23 + 72));
          os_unfair_lock_unlock((v23 + 64));
          VTVideoDecoderGetCMBaseObject(v5);
          v24 = CMBaseObjectGetDerivedStorage();
          os_unfair_lock_lock((v24 + 80));
          CFDictionaryRemoveAllValues(*(v24 + 88));
          os_unfair_lock_unlock((v24 + 80));
          VTVideoDecoderGetCMBaseObject(v5);
          v25 = CMBaseObjectGetDerivedStorage();
          v26 = VTParavirtualizationCopyNotificationQueueForGuestUUID(v25 + 2);
          CMNotificationCenterGetDefaultLocalCenter();
          FigDispatchAsyncPostNotification();
          if (v26)
          {
            dispatch_release(v26);
          }

          goto LABEL_262;
        }

        if (v147 == 1147303270)
        {
          VTVideoDecoderGetCMBaseObject(v4);
          v15 = CMBaseObjectGetDerivedStorage();
          theArray = 0;
          cf = 0;
          *type = 0;
          pixelBuffer = 0;
          IOSurface = 0;
          v152 = 0;
          v16 = VTParavirtualizationMessageGetSInt64();
          if (v16)
          {
            v97 = v16;
            LODWORD(v17) = 0;
          }

          else
          {
            v17 = cf;
            v18 = VTParavirtualizationMessageCopyCFDictionary(a2, 745566064, &theArray);
            if (!v18)
            {
              os_unfair_lock_lock((v15 + 16));
              if (*v15)
              {
                v19 = VTDecoderSessionCreatePixelBufferWithOptions(*v15, v17, theArray, &pixelBuffer);
              }

              else
              {
                v19 = 0;
              }

              os_unfair_lock_unlock((v15 + 16));
              if (pixelBuffer)
              {
                v84 = CFUUIDCreate(*MEMORY[0x1E695E480]);
                v85 = pixelBuffer;
                VTVideoDecoderGetCMBaseObject(v5);
                v86 = CMBaseObjectGetDerivedStorage();
                os_unfair_lock_lock((v86 + 64));
                CFDictionarySetValue(*(v86 + 72), v84, v85);
                CFDictionaryGetCount(*(v86 + 72));
                os_unfair_lock_unlock((v86 + 64));
                v19 = 0;
              }

              else
              {
                v84 = 0;
              }

              v87 = VTParavirtualizationCreateReplyAndByteStream(a2, 8, type, &v152);
              if (v87 || (v87 = VTParavirtualizationMessageAppendSInt32()) != 0 || v84 && (v87 = VTParavirtualizationMessageAppendCFUUID()) != 0)
              {
                v97 = v87;
              }

              else
              {
                if (pixelBuffer)
                {
                  IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
                }

                v96 = VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAsync(*type);
                if (v96)
                {
                  v97 = v96;
                }

                else
                {
                  v97 = v19;
                }

                if (!v97)
                {
LABEL_202:
                  if (pixelBuffer)
                  {
                    CFRelease(pixelBuffer);
                  }

                  if (v84)
                  {
                    CFRelease(v84);
                  }

                  if (*type)
                  {
                    CFRelease(*type);
                  }

                  if (v152)
                  {
                    CFRelease(v152);
                  }

                  v39 = theArray;
                  if (!theArray)
                  {
                    goto LABEL_262;
                  }

                  goto LABEL_237;
                }
              }

LABEL_136:
              v98 = FigCFCopyCompactDescription();
              LODWORD(v150) = 0;
              v153[4] = OS_LOG_TYPE_DEFAULT;
              v99 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v100 = v150;
              if (os_log_type_enabled(v99, v153[4]))
              {
                v101 = v100;
              }

              else
              {
                v101 = v100 & 0xFFFFFFFE;
              }

              if (v101)
              {
                *v158 = 136316162;
                *&v158[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionCreatePixelBufferMessage";
                v159 = 2048;
                *v160 = v5;
                *&v160[8] = 1024;
                *v161 = v97;
                *&v161[4] = 1024;
                *v162 = v17;
                *&v162[4] = 2114;
                *&v162[6] = v98;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              if (v98)
              {
                CFRelease(v98);
              }

              goto LABEL_202;
            }

            v97 = v18;
          }

          v84 = 0;
          goto LABEL_136;
        }

LABEL_85:
        LODWORD(cf) = 0;
        LOBYTE(theArray) = 0;
        v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v73 = cf;
        if (os_log_type_enabled(v72, theArray))
        {
          v74 = v73;
        }

        else
        {
          v74 = v73 & 0xFFFFFFFE;
        }

        if (v74)
        {
          v75 = MEMORY[0x1E69E9830];
          if ((v6 & 0x80000000) != 0)
          {
            v76 = __maskrune(v6 >> 24, 0x40000uLL);
          }

          else
          {
            v76 = *(MEMORY[0x1E69E9830] + 4 * (v6 >> 24) + 60) & 0x40000;
          }

          if (v76)
          {
            v122 = v6 >> 24;
          }

          else
          {
            v122 = 46;
          }

          v145 = v122;
          if (BYTE2(v6) > 0x7Fu)
          {
            v123 = __maskrune(BYTE2(v6), 0x40000uLL);
          }

          else
          {
            v123 = *(v75 + 4 * BYTE2(v6) + 60) & 0x40000;
          }

          if (v123)
          {
            v124 = BYTE2(v6);
          }

          else
          {
            v124 = 46;
          }

          v125 = v75;
          if (BYTE1(v6) > 0x7Fu)
          {
            v126 = __maskrune(BYTE1(v6), 0x40000uLL);
          }

          else
          {
            v126 = *(v75 + 4 * BYTE1(v6) + 60) & 0x40000;
          }

          if (v126)
          {
            v127 = BYTE1(v6);
          }

          else
          {
            v127 = 46;
          }

          if (v6 > 0x7Fu)
          {
            v128 = __maskrune(v6, 0x40000uLL);
          }

          else
          {
            v128 = *(v125 + 4 * v6 + 60) & 0x40000;
          }

          *&v158[4] = "paravirtualizedVideoDecoder_HandleMessageFromHost";
          *v158 = 136316162;
          if (v128)
          {
            v129 = v6;
          }

          else
          {
            v129 = 46;
          }

          v159 = 1024;
          *v160 = v145;
          *&v160[4] = 1024;
          *&v160[6] = v124;
          *v161 = 1024;
          *&v161[2] = v127;
          *v162 = 1024;
          *&v162[2] = v129;
          _os_log_send_and_compose_impl();
        }

LABEL_261:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_262;
      }

      if (v147 > 1148350560)
      {
        if (v147 == 1148350561)
        {
          VTVideoDecoderGetCMBaseObject(v4);
          v38 = CMBaseObjectGetDerivedStorage();
          v163[0] = 0;
          cf = 0;
          *v158 = 0;
          if (!VTDecoderSessionCopyResolvedPixelBufferAttributes(*v38, *MEMORY[0x1E695E480], v163) && !VTParavirtualizationCreateReplyAndByteStream(a2, 8, v158, &cf) && (!v163[0] || !VTParavirtualizationMessageAppendCFDictionary(cf, 745562721, v163[0])))
          {
            VTParavirtualizationGuestSendMessageToHostAsync(*v158);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (*v158)
          {
            CFRelease(*v158);
          }

LABEL_57:
          v39 = v163[0];
          if (!v163[0])
          {
            goto LABEL_262;
          }

          goto LABEL_237;
        }

        if (v147 != 1413768557)
        {
          if (v147 != 1413772146)
          {
            goto LABEL_85;
          }

          VTVideoDecoderGetCMBaseObject(v4);
          v7 = CMBaseObjectGetDerivedStorage();
          theArray = 0;
          cf = 0;
          v8 = VTParavirtualizationMessageCopyCFDictionary(a2, 744710753, &cf);
          if (v8)
          {
            v14 = v8;
            v9 = 0;
            v11 = 0;
            goto LABEL_121;
          }

          v9 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v9)
          {
            MutableCopy = FigCFDictionaryCreateMutableCopy();
            v11 = MutableCopy;
            if (MutableCopy)
            {
              CFDictionaryAddValue(MutableCopy, *MEMORY[0x1E69660D8], v9);
              v12 = VTParavirtualizationMessageCopyCFDictionary(a2, 745825394, &theArray);
              if (!v12)
              {
                os_unfair_lock_lock((v7 + 16));
                v13 = *(v7 + 8);
                if (v13)
                {
                  v14 = VTTileDecoderSessionSetTileDecodeRequirements(v13, cf, theArray);
                }

                else
                {
                  v14 = 0;
                }

                os_unfair_lock_unlock((v7 + 16));
                if (v14)
                {
                  goto LABEL_121;
                }

LABEL_216:
                if (cf)
                {
                  CFRelease(cf);
                }

                if (theArray)
                {
                  CFRelease(theArray);
                }

                if (v9)
                {
                  CFRelease(v9);
                }

                if (!v11)
                {
                  goto LABEL_262;
                }

                v39 = v11;
                goto LABEL_237;
              }

              v14 = v12;
LABEL_121:
              v88 = FigCFCopyCompactDescription();
              v89 = FigCFCopyCompactDescription();
              LODWORD(pixelBuffer) = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              v90 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v91 = pixelBuffer;
              if (os_log_type_enabled(v90, type[0]))
              {
                v92 = v91;
              }

              else
              {
                v92 = v91 & 0xFFFFFFFE;
              }

              if (v92)
              {
                *v158 = 136316162;
                *&v158[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionSetTileDecodeRequirementsMessage";
                v159 = 2048;
                *v160 = v5;
                *&v160[8] = 1024;
                *v161 = v14;
                *&v161[4] = 2114;
                *v162 = v88;
                *&v162[8] = 2114;
                *&v162[10] = v89;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              if (v89)
              {
                CFRelease(v89);
              }

              if (v88)
              {
                CFRelease(v88);
              }

              goto LABEL_216;
            }

            __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_3(v163);
          }

          else
          {
            __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_4(v163);
            v11 = 0;
          }

          v14 = v163[0];
          if (!LODWORD(v163[0]))
          {
            goto LABEL_216;
          }

          goto LABEL_121;
        }

        VTVideoDecoderGetCMBaseObject(v4);
        v54 = CMBaseObjectGetDerivedStorage();
        theArray = 0;
        cf = 0;
        LODWORD(v152) = 0;
        LODWORD(IOSurface) = 0;
        *type = 0;
        pixelBuffer = 0;
        v55 = VTParavirtualizationMessageGetSInt64();
        if (v55)
        {
          v71 = v55;
          v56 = 0;
        }

        else
        {
          v56 = cf;
          VTParavirtualizationMessageGetSInt32();
          if (!v57)
          {
            v142 = v152;
            VTParavirtualizationMessageGetUInt32();
            if (!v58)
            {
              v144 = IOSurface;
              v59 = VTParavirtualizationMessageCopyCFUUID();
              if (!v59)
              {
                v60 = theArray;
                if (!theArray)
                {
                  v66 = 0;
LABEL_130:
                  os_unfair_lock_lock((v54 + 16));
                  v94 = *(v54 + 8);
                  if (v94)
                  {
                    v95 = VTTileDecoderSessionEmitDecodedTile(v94, v56, v142, v144, v66);
                  }

                  else
                  {
                    v95 = 0;
                  }

                  os_unfair_lock_unlock((v54 + 16));
                  v102 = VTParavirtualizationCreateReplyAndByteStream(a2, 8, &pixelBuffer, type);
                  if (v102 || (v102 = VTParavirtualizationMessageAppendSInt32()) != 0)
                  {
                    v71 = v102;
                  }

                  else
                  {
                    v103 = VTParavirtualizationGuestSendMessageToHostAsync(pixelBuffer);
                    if (v103)
                    {
                      v71 = v103;
                    }

                    else
                    {
                      v71 = v95;
                    }

                    if (!v71)
                    {
LABEL_191:
                      if (theArray)
                      {
                        CFRelease(theArray);
                      }

                      if (!v66)
                      {
LABEL_196:
                        if (pixelBuffer)
                        {
                          CFRelease(pixelBuffer);
                        }

                        v39 = *type;
                        if (!*type)
                        {
                          goto LABEL_262;
                        }

                        goto LABEL_237;
                      }

                      v121 = v66;
LABEL_195:
                      CFRelease(v121);
                      goto LABEL_196;
                    }
                  }

LABEL_148:
                  LODWORD(v150) = 0;
                  v153[4] = OS_LOG_TYPE_DEFAULT;
                  v104 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v105 = v150;
                  if (os_log_type_enabled(v104, v153[4]))
                  {
                    v106 = v105;
                  }

                  else
                  {
                    v106 = v105 & 0xFFFFFFFE;
                  }

                  if (v106)
                  {
                    *v158 = 136316674;
                    *&v158[4] = "ParavirtualizationVideoDecoder_HandleDecoderSessionEmitDecodedTileMessage";
                    v159 = 2048;
                    *v160 = v5;
                    *&v160[8] = 1024;
                    *v161 = v71;
                    *&v161[4] = 2048;
                    *v162 = v56;
                    *&v162[8] = 1024;
                    *&v162[10] = v142;
                    *&v162[14] = 1024;
                    *&v162[16] = v144;
                    *&v162[20] = 2048;
                    *&v162[22] = v66;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  goto LABEL_191;
                }

                VTVideoDecoderGetCMBaseObject(v5);
                v61 = CMBaseObjectGetDerivedStorage();
                v140 = v56;
                v62 = FigCFNumberCreateSInt64();
                os_unfair_lock_lock((v61 + 80));
                v63 = CFDictionaryGetValue(*(v61 + 88), v60);
                if (v63)
                {
                  v64 = v63;
                  v65 = CFDictionaryGetValue(v63, @"PixelBufferKey");
                  v66 = v65;
                  if (v65)
                  {
                    CFRetain(v65);
                    v67 = CFDictionaryGetValue(v64, @"TilesUsingPixelBuffer");
                    if (v67)
                    {
                      v68 = v67;
                      Count = CFArrayGetCount(v67);
                      if (Count)
                      {
                        v164.length = Count;
                        v164.location = 0;
                        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v68, v164, v62);
                        if (FirstIndexOfValue != -1)
                        {
                          CFArrayRemoveValueAtIndex(v68, FirstIndexOfValue);
                        }

                        if (!CFArrayGetCount(v68))
                        {
                          CFDictionaryRemoveValue(*(v61 + 88), v60);
                        }
                      }
                    }

                    v71 = 0;
LABEL_81:
                    v56 = v140;
                    os_unfair_lock_unlock((v61 + 80));
                    if (v62)
                    {
                      CFRelease(v62);
                    }

                    if (v71)
                    {
                      goto LABEL_148;
                    }

                    goto LABEL_130;
                  }

                  __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_1(v163);
                }

                else
                {
                  __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_2(v163);
                  v66 = 0;
                }

                v71 = v163[0];
                goto LABEL_81;
              }

              v71 = v59;
LABEL_297:
              v66 = 0;
              goto LABEL_148;
            }

            v71 = v58;
LABEL_293:
            v144 = 0;
            goto LABEL_297;
          }

          v71 = v57;
        }

        v142 = 0;
        goto LABEL_293;
      }

      if (v147 != 1148021094)
      {
        if (v147 != 1148215905)
        {
          goto LABEL_85;
        }

        VTVideoDecoderGetCMBaseObject(v4);
        v20 = CMBaseObjectGetDerivedStorage();
        cf = 0;
        v21 = VTParavirtualizationMessageCopyCFDictionary(a2, 745562721, &cf);
        if (!v21)
        {
          *(v20 + 113) = VTParavirtualizationPixelBufferAttributesContainIOSurfaceProtectionOptions();
          os_unfair_lock_lock((v20 + 16));
          if (*v20)
          {
            v22 = VTDecoderSessionSetPixelBufferAttributes(*v20, cf);
            os_unfair_lock_unlock((v20 + 16));
            if (v22)
            {
LABEL_271:
              v82 = FigCFCopyCompactDescription();
              LODWORD(theArray) = 0;
              LOBYTE(pixelBuffer) = 0;
              v131 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v132 = theArray;
              if (os_log_type_enabled(v131, pixelBuffer))
              {
                v133 = v132;
              }

              else
              {
                v133 = v132 & 0xFFFFFFFE;
              }

              if (v133)
              {
                *v158 = 136315906;
                *&v158[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionSetPixelBufferAttributesMessage";
                v159 = 2048;
                *v160 = v5;
                *&v160[8] = 1024;
                *v161 = v22;
                *&v161[4] = 2114;
                *v162 = v82;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              if (!v82)
              {
                goto LABEL_107;
              }

              goto LABEL_106;
            }
          }

          else
          {
            os_unfair_lock_unlock((v20 + 16));
          }

          *(v20 + 112) = 0;
          v82 = *(v20 + 104);
          v83 = cf;
          *(v20 + 104) = cf;
          if (v83)
          {
            CFRetain(v83);
          }

          if (!v82)
          {
LABEL_107:
            v39 = cf;
            if (!cf)
            {
              goto LABEL_262;
            }

            goto LABEL_237;
          }

LABEL_106:
          CFRelease(v82);
          goto LABEL_107;
        }

        v22 = v21;
        goto LABEL_271;
      }

      VTVideoDecoderGetCMBaseObject(v4);
      v27 = CMBaseObjectGetDerivedStorage();
      theArray = 0;
      cf = 0;
      *v153 = 0;
      *type = 0;
      pixelBuffer = 0;
      IOSurface = 0;
      v152 = 0;
      v150 = 0;
      v28 = VTParavirtualizationMessageGetSInt64();
      if (v28)
      {
        v116 = v28;
        v33 = 0;
        LODWORD(v31) = 0;
        v146 = 0;
      }

      else
      {
        v29 = cf;
        VTParavirtualizationMessageGetSInt32();
        if (v30)
        {
          v116 = v30;
          v146 = v29;
          v33 = 0;
          LODWORD(v31) = 0;
        }

        else
        {
          v31 = *&v153[4];
          VTParavirtualizationMessageGetUInt32();
          if (v32)
          {
            v116 = v32;
            v146 = v29;
            v33 = 0;
          }

          else
          {
            v33 = *v153;
            v34 = VTParavirtualizationMessageCopyCFUUIDArray();
            if (v34 || theArray && CFArrayGetCount(theArray) >= 1 && (v34 = paravirtualizedVideoDecoder_lookupRetainAndForgetPendingFramePixelBuffersByUUIDs(v5, theArray, &pixelBuffer), v34) || (v34 = VTParavirtualizationMessageCopyFigTagCollectionArray(a2, 745825067, &IOSurface), v34))
            {
LABEL_264:
              v116 = v34;
              v146 = v29;
              goto LABEL_299;
            }

            if (pixelBuffer)
            {
              v35 = CFArrayGetCount(pixelBuffer);
            }

            else
            {
              v35 = 0;
            }

            v112 = IOSurface;
            if (IOSurface)
            {
              v112 = CFArrayGetCount(IOSurface);
            }

            if (v35 == v112)
            {
              if (!pixelBuffer || (v34 = MEMORY[0x193AE2F70](*MEMORY[0x1E695E480], IOSurface, pixelBuffer, &v150), !v34))
              {
                os_unfair_lock_lock((v27 + 16));
                if (*v27)
                {
                  v113 = VTDecoderSessionEmitDecodedMultiImageFrame(*v27, v29, v31, v33, v150);
                }

                else
                {
                  v113 = 0;
                }

                os_unfair_lock_unlock((v27 + 16));
                v114 = VTParavirtualizationCreateReplyAndByteStream(a2, 8, type, &v152);
                if (v114 || (v114 = VTParavirtualizationMessageAppendSInt32()) != 0)
                {
                  LODWORD(v116) = v114;
                }

                else
                {
                  v115 = VTParavirtualizationGuestSendMessageToHostAsync(*type);
                  if (v115)
                  {
                    LODWORD(v116) = v115;
                  }

                  else
                  {
                    LODWORD(v116) = v113;
                  }

                  if (!v116)
                  {
                    goto LABEL_226;
                  }
                }

                goto LABEL_180;
              }

              goto LABEL_264;
            }

            v146 = v29;
            __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_5(v163);
            v116 = LODWORD(v163[0]);
          }
        }
      }

LABEL_299:
      v149 = 0;
      v148 = OS_LOG_TYPE_DEFAULT;
      v134 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v135 = v149;
      if (os_log_type_enabled(v134, v148))
      {
        v136 = v135;
      }

      else
      {
        v136 = v135 & 0xFFFFFFFE;
      }

      if (v136)
      {
        *v158 = 136315394;
        *&v158[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionEmitDecodedMultiImageFrame";
        v159 = 1024;
        *v160 = v116;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      os_unfair_lock_lock((v27 + 16));
      if (*v27)
      {
        VTDecoderSessionEmitDecodedMultiImageFrame(*v27, v146, v116, v33, 0);
      }

      os_unfair_lock_unlock((v27 + 16));
      LODWORD(v29) = v146;
      if (!v116)
      {
LABEL_226:
        if (v150)
        {
          CFRelease(v150);
        }

        if (IOSurface)
        {
          CFRelease(IOSurface);
        }

        if (pixelBuffer)
        {
          CFRelease(pixelBuffer);
        }

        if (theArray)
        {
          CFRelease(theArray);
        }

        if (*type)
        {
          CFRelease(*type);
        }

        v39 = v152;
        if (!v152)
        {
          goto LABEL_262;
        }

LABEL_237:
        CFRelease(v39);
        goto LABEL_262;
      }

LABEL_180:
      v117 = FigCFCopyCompactDescription();
      v149 = 0;
      v148 = OS_LOG_TYPE_DEFAULT;
      v118 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v119 = v149;
      if (os_log_type_enabled(v118, v148))
      {
        v120 = v119;
      }

      else
      {
        v120 = v119 & 0xFFFFFFFE;
      }

      if (v120)
      {
        *v158 = 136316674;
        *&v158[4] = "ParavirtualizedVideoDecoder_HandleDecoderSessionEmitDecodedMultiImageFrame";
        v159 = 2048;
        *v160 = v5;
        *&v160[8] = 1024;
        *v161 = v116;
        *&v161[4] = 1024;
        *v162 = v29;
        *&v162[4] = 1024;
        *&v162[6] = v31;
        *&v162[10] = 1024;
        *&v162[12] = v33;
        *&v162[16] = 2114;
        *&v162[18] = v117;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v117)
      {
        CFRelease(v117);
      }

      goto LABEL_226;
    }
  }

  return MessageTypeAndFlagsAndGuestUUID;
}

uint64_t __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

BOOL __ParavirtualizedVideoDecoder_CreateInstanceWithSpecification_block_invoke_cold_6(os_unfair_lock_s *a1, _DWORD *a2)
{
  v4 = FigSignalErrorAtGM();
  *a2 = v4;
  os_unfair_lock_unlock(a1);
  return v4 == 0;
}

@end