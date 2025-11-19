uint64_t vt_Copy_RGhA_rgb_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_RGfA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = 0;
  v3 = *(result + 36);
  v4 = *result;
  v5 = *(result + 14);
  v6 = *(result + 12);
  v7 = *(result + 13);
  v8 = v7 * a2 / v4;
  v9 = v7 + v7 * a2;
  v10 = *(result + 19);
  v11 = **(result + 8);
  v12 = **(result + 7);
  v13 = v11 * (*(result + 28) * a2 / v4 + *(result + 44));
  v14 = **(result + 17);
  v15 = **(result + 16);
  v16 = v14 * (v8 + *(result + 15));
  v49[0] = v10[154];
  v17 = v10[155];
  v49[1] = v10[155];
  v18 = v10[156];
  v49[2] = v10[156];
  v19 = v10[157];
  v49[3] = v10[157];
  memset(v48, 0, sizeof(v48));
  v20 = v9 / v4;
  do
  {
    v21 = 0;
    v22 = v49[v2];
    v23 = *(v48 + v2);
    do
    {
      v47 = v23;
      *(&v47 | v21 & 7) = v22 + 4 * v21;
      v23 = v47;
      ++v21;
    }

    while (v21 != 8);
    *(v48 + v2++) = v47;
  }

  while (v2 != 4);
  v24 = v20 - v8;
  if (v20 - v8 >= 1)
  {
    v25 = 0;
    v26 = v15 + v16 + 16 * v5;
    v27 = v12 + v13 + 8 * v3;
    do
    {
      if (v6 < 8)
      {
        v33 = 0;
        v30 = v26;
        v29 = v27;
      }

      else
      {
        v28 = 0;
        v29 = v27;
        v30 = v26;
        do
        {
          v50 = vld4q_s16(v29);
          v29 += 32;
          v51.val[3] = vcvtq_f32_f16(*v50.val[3].i8);
          v52.val[3] = vcvtq_f32_f16(*&vextq_s8(v50.val[3], v50.val[3], 8uLL));
          v51.val[0] = vcvtq_f32_f16(*v50.val[0].i8);
          v51.val[1] = vcvtq_f32_f16(*v50.val[1].i8);
          v51.val[2] = vcvtq_f32_f16(*v50.val[2].i8);
          v52.val[0] = vcvtq_f32_f16(*&vextq_s8(v50.val[0], v50.val[0], 8uLL));
          v52.val[1] = vcvtq_f32_f16(*&vextq_s8(v50.val[1], v50.val[1], 8uLL));
          v52.val[2] = vcvtq_f32_f16(*&vextq_s8(v50.val[2], v50.val[2], 8uLL));
          v31 = v30 + 128;
          vst4q_f32(v30, v51);
          v32 = (v30 + 64);
          vst4q_f32(v32, v52);
          v30 = v31;
          v28 += 8;
        }

        while (v28 < v6 - 7);
        v33 = v6 & 0x7FFFFFF8;
      }

      _VF = __OFSUB__(v6, v33);
      v35 = v6 - v33;
      if (!((v35 < 0) ^ _VF | (v35 == 0)))
      {
        do
        {
          _H0 = v29[v49[0]];
          __asm { FCVT            S0, H0 }

          _H1 = v29[v17];
          _H2 = v29[v18];
          __asm
          {
            FCVT            S1, H1
            FCVT            S2, H2
          }

          _H3 = v29[v19];
          __asm { FCVT            S3, H3 }

          v29 += 4;
          *v30 = _S0;
          *(v30 + 4) = _S1;
          *(v30 + 8) = _S2;
          *(v30 + 12) = _S3;
          v30 += 16;
          --v35;
        }

        while (v35);
      }

      v27 += v11;
      v26 += v14;
      ++v25;
    }

    while (v25 != v24);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_RGhA_rgb_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, void *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v42 = a2[2];
  v43 = v16;
  v18 = *a6;
  v38 = a6[1];
  v39 = v17;
  v40 = a6[2];
  v41 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_14:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = &v38.i8[-v21];
    bzero(&v38 - v21, v22);
  }

  v23 = a9;
  v24 = v40;
  v25 = vbslq_s8(vcgtq_s64(vaddq_s64(v42, v39), v43), vsubq_s64(v43, v42), v39);
  v26 = vbslq_s8(vcgtq_s64(vaddq_s64(v40, v38), v41), vsubq_s64(v41, v40), v38);
  v27 = vbslq_s8(vcgtq_s64(v26, v25), v25, v26);
  v28.i64[0] = v27.i64[0];
  v28.i64[1] = -1;
  v29 = vaddq_s64(v42, v28);
  if (((*a4 * (v29.i64[1] + v27.i64[1]) + 8 * v29.i64[0]) > *a5 || (v30 = vaddq_s64(v40, v28), (*a8 * (v30.i64[1] + v27.i64[1]) + 16 * v30.i64[0]) > *a9)) && (v38 = v27, v39.i64[0] = a9, fig_log_get_emitter(), v31 = FigSignalErrorAtGM(), v24 = v40, v23 = v39.i64[0], v27 = v38, v31))
  {
    v20 = v31;
  }

  else
  {
    *v19 = v15;
    v32 = v42;
    *(v19 + 4) = v43;
    *(v19 + 20) = v27;
    *(v19 + 36) = v32;
    *(v19 + 5) = v41;
    *(v19 + 6) = v27;
    *(v19 + 7) = v24;
    *(v19 + 7) = a3;
    *(v19 + 8) = a4;
    *(v19 + 9) = a5;
    *(v19 + 16) = a7;
    *(v19 + 17) = a8;
    *(v19 + 18) = v23;
    *(v19 + 19) = a1;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_RGhA_rgb_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v34 = (v19 + 160);
    v35 = v15;
    while (1)
    {
      v36 = *v34++;
      v20 = v36;
      if (v36)
      {
        break;
      }

      if (!--v35)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_14;
  }

  return v20;
}

unsigned __int8 *vt_Copy_RGhA_rgb_RGfA_GCD(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 13);
  v4 = v3 * a2 / v2;
  v5 = (v3 + v3 * a2) / v2 - v4;
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(result + 24);
    v8 = **(result + 8);
    v9 = **(result + 17);
    v10 = v4 + *(result + 15);
    v11 = *(result + 19);
    v12 = *(result + 28) * a2 / v2 + *(result + 44);
    v13 = v11[157];
    v14 = v11[156];
    v15 = **(result + 16) + v9 * v10;
    v16 = v11[155];
    v17 = v11[154];
    v18 = (v15 + 16 * *(result + 14));
    v19 = **(result + 7) + v12 * v8 + 8 * *(result + 36);
    do
    {
      if (v7 >= 1)
      {
        v20 = v7;
        v21 = v19;
        v22 = v18;
        do
        {
          _H0 = *(v21 + 2 * v17);
          __asm { FCVT            S0, H0 }

          _H1 = *(v21 + 2 * v16);
          _H2 = *(v21 + 2 * v14);
          __asm
          {
            FCVT            S1, H1
            FCVT            S2, H2
          }

          _H3 = *(v21 + 2 * v13);
          __asm { FCVT            S3, H3 }

          v21 += 8;
          *v22 = _S0;
          v22[1] = _S1;
          v22[2] = _S2;
          v22[3] = _S3;
          v22 += 4;
          --v20;
        }

        while (v20);
      }

      v19 += v8;
      v18 = (v18 + v9);
      ++v6;
    }

    while (v6 != v5);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

void paravirtualizedVideoEncoder_HandleMessageFromHost(uint64_t a1, int a2, OpaqueCMBlockBuffer *a3)
{
  v188 = *MEMORY[0x1E69E9840];
  if (a2 > 1413837681)
  {
    if (a2 <= 1836083565)
    {
      if (a2 <= 1836082291)
      {
        if (a2 != 1413837682)
        {
          if (a2 != 1836082020)
          {
            goto LABEL_187;
          }

          DerivedStorage = CMBaseObjectGetDerivedStorage();
          cf.value = 0;
          theArray.value = 0;
          v175 = **&MEMORY[0x1E6960CC0];
          LODWORD(v172) = 0;
          theData = 0;
          CMTime = VTParavirtualizationCreateReplyAndByteStream(a3, 8, &cf, &theArray);
          if (CMTime)
          {
            goto LABEL_47;
          }

          CMTime = VTParavirtualizationMessageGetCMTime(a3, 745829232, &v175);
          if (CMTime)
          {
            goto LABEL_47;
          }

          VTParavirtualizationMessageGetSInt32();
          if (CMTime)
          {
            goto LABEL_47;
          }

          v15 = *(DerivedStorage + 120);
          time = v175;
          v16 = VTMultiPassStorageCopyDataAtTimeStamp(v15, &time.value, v172, &theData);
          CMTime = VTParavirtualizationMessageAppendSInt32();
          if (CMTime)
          {
            goto LABEL_47;
          }

          if (!theData)
          {
            goto LABEL_309;
          }

          LOBYTE(v176) = 0;
          CMTime = VTParavirtualizationMessageCFDataRequiresFragmentation(theArray.value, 0x4000uLL, theData, &v176);
          if (!CMTime)
          {
            if (v176)
            {
              time.value = 0;
              do
              {
                CMTime = VTParavirtualizationMessageAppendCFDataWithLimitFromOffset(theArray.value, 745369700, 0x4000uLL, theData, &time.value);
                if (CMTime)
                {
                  break;
                }

                value = time.value;
                if (value >= CFDataGetLength(theData))
                {
                  goto LABEL_309;
                }

                CMTime = VTParavirtualizationMessageChangeMessageFlags(cf.value, 16, 16);
                if (CMTime)
                {
                  break;
                }

                CMTime = VTParavirtualizationGuestSendMessageToHostAsync(cf.value);
                if (CMTime)
                {
                  break;
                }

                if (cf.value)
                {
                  CFRelease(cf.value);
                  cf.value = 0;
                }

                if (theArray.value)
                {
                  CFRelease(theArray.value);
                  theArray.value = 0;
                }

                CMTime = VTParavirtualizationCreateReplyAndByteStream(a3, 8, &cf, &theArray);
              }

              while (!CMTime);
              goto LABEL_47;
            }

            CMTime = VTParavirtualizationMessageAppendCFData();
            if (!CMTime)
            {
LABEL_309:
              v151 = VTParavirtualizationGuestSendMessageToHostAsync(cf.value);
              if (v151)
              {
                v18 = v151;
              }

              else
              {
                v18 = v16;
              }

              if (!v18)
              {
                goto LABEL_319;
              }

              goto LABEL_313;
            }
          }

LABEL_47:
          v18 = CMTime;
LABEL_313:
          LODWORD(v171) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v153 = v171;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
          {
            v154 = v153;
          }

          else
          {
            v154 = v153 & 0xFFFFFFFE;
          }

          if (v154)
          {
            time = v175;
            Seconds = CMTimeGetSeconds(&time);
            v176 = 136316162;
            v177 = "ParavirtualizedVideoEncoder_HandleEncoderSessionMultipassCopyDataAtTimeStamp";
            v178 = 2048;
            v179 = a1;
            v180 = 2048;
            *v181 = Seconds;
            *&v181[8] = 1024;
            *v182 = v172;
            *&v182[4] = 1024;
            *&v182[6] = v18;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_319:
          v149 = cf.value;
          if (!cf.value)
          {
            goto LABEL_321;
          }

          goto LABEL_320;
        }

        v67 = CMBaseObjectGetDerivedStorage();
        v175.value = 0;
        cf.value = 0;
        if (VTParavirtualizationMessageCopyCFDictionary(a3, 744710753, &v175))
        {
          v69 = 0;
          v7 = 0;
        }

        else
        {
          v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (v7)
          {
            MutableCopy = FigCFDictionaryCreateMutableCopy();
            v69 = MutableCopy;
            if (MutableCopy)
            {
              CFDictionaryAddValue(MutableCopy, *MEMORY[0x1E69660D8], v7);
              if (VTParavirtualizationMessageCopyCFDictionary(a3, 745825650, &cf))
              {
                goto LABEL_253;
              }

              os_unfair_lock_lock((v67 + 16));
              v70 = *(v67 + 8);
              v71 = v70 ? VTTileEncoderSessionSetTileEncodeRequirements(v70, v69, cf.value) : 0;
              os_unfair_lock_unlock((v67 + 16));
              if (v71)
              {
                goto LABEL_253;
              }

LABEL_302:
              if (cf.value)
              {
                CFRelease(cf.value);
              }

              if (v175.value)
              {
                CFRelease(v175.value);
              }

              if (!v69)
              {
                goto LABEL_368;
              }

              v150 = v69;
              goto LABEL_367;
            }

            paravirtualizedVideoEncoder_HandleMessageFromHost_cold_5(&time);
          }

          else
          {
            paravirtualizedVideoEncoder_HandleMessageFromHost_cold_6(&time);
            v69 = 0;
          }

          if (!LODWORD(time.value))
          {
            goto LABEL_302;
          }
        }

LABEL_253:
        v142 = FigCFCopyCompactDescription();
        v143 = FigCFCopyCompactDescription();
        LODWORD(theArray.value) = 0;
        LOBYTE(theData) = 0;
        v144 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v144, theData);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (v142)
        {
          CFRelease(v142);
        }

        if (v143)
        {
          CFRelease(v143);
        }

        goto LABEL_302;
      }

      if (a2 != 1836082292)
      {
        if (a2 != 1836083556)
        {
          goto LABEL_187;
        }

        v39 = CMBaseObjectGetDerivedStorage();
        v175.value = 0;
        cf.value = 0;
        if (VTParavirtualizationCreateReplyAndByteStream(a3, 8, &v175, &cf))
        {
          v40 = 0;
        }

        else
        {
          v40 = VTMultiPassStorageCopyIdentifier(*(v39 + 120));
          if (!VTParavirtualizationMessageAppendCFPropertyList() && !VTParavirtualizationGuestSendMessageToHostAsync(v175.value))
          {
            goto LABEL_292;
          }
        }

        LODWORD(theArray.value) = 0;
        LOBYTE(theData) = 0;
        v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v41, theData);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_292:
        if (v175.value)
        {
          CFRelease(v175.value);
        }

        if (cf.value)
        {
          CFRelease(cf.value);
        }

        if (!v40)
        {
          return;
        }

        v148 = v40;
        goto LABEL_370;
      }

      v86 = CMBaseObjectGetDerivedStorage();
      theData = 0;
      v172 = 0;
      v175 = **&MEMORY[0x1E6960CC0];
      v171 = 0;
      cf = v175;
      theArray = v175;
      appended = VTParavirtualizationCreateReplyAndByteStream(a3, 8, &theData, &v172);
      if (!appended)
      {
        appended = VTParavirtualizationMessageGetCMTime(a3, 744911987, &v175);
        if (!appended)
        {
          appended = VTParavirtualizationMessageCopyCFPropertyList(a3, 745369715, &v171);
          if (!appended)
          {
            if (!v171 || (v88 = CFGetTypeID(v171), v88 != CFStringGetTypeID()))
            {
              paravirtualizedVideoEncoder_HandleMessageFromHost_cold_1(&time);
              v92 = time.value;
              if (!LODWORD(time.value))
              {
                goto LABEL_264;
              }

              goto LABEL_152;
            }

            v89 = *(v86 + 120);
            time = v175;
            TimeStampAndDuration = VTMultiPassStorageGetTimeStampAndDuration(v89, &time, v171, &cf, &theArray);
            time = cf;
            appended = VTParavirtualizationMessageAppendCMTime();
            if (!appended)
            {
              time = theArray;
              appended = VTParavirtualizationMessageAppendCMTime();
              if (!appended)
              {
                appended = VTParavirtualizationMessageAppendSInt32();
                if (!appended)
                {
                  v91 = VTParavirtualizationGuestSendMessageToHostAsync(theData);
                  if (v91)
                  {
                    v92 = v91;
                  }

                  else
                  {
                    v92 = TimeStampAndDuration;
                  }

                  if (!v92)
                  {
                    goto LABEL_264;
                  }

                  goto LABEL_152;
                }
              }
            }
          }
        }
      }

      v92 = appended;
LABEL_152:
      *type = 0;
      v93 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v94 = *type;
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        v95 = v94;
      }

      else
      {
        v95 = v94 & 0xFFFFFFFE;
      }

      if (v95)
      {
        time = v175;
        v96 = CMTimeGetSeconds(&time);
        v97 = v171;
        time = cf;
        v98 = CMTimeGetSeconds(&time);
        time = theArray;
        v99 = CMTimeGetSeconds(&time);
        v176 = 136316674;
        v177 = "ParavirtualizedVideoEncoder_HandleEncoderSessionMultipassGetTimeStampAndDuration";
        v178 = 2048;
        v179 = a1;
        v180 = 2048;
        *v181 = v96;
        *&v181[8] = 2112;
        *v182 = v97;
        *&v182[8] = 2048;
        *&v182[10] = v98;
        v183 = 2048;
        v184 = v99;
        v185 = 1024;
        v186 = v92;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_264:
      if (theData)
      {
        CFRelease(theData);
      }

      if (v172)
      {
        CFRelease(v172);
      }

      v148 = v171;
      if (!v171)
      {
        return;
      }

      goto LABEL_370;
    }

    if (a2 <= 1836086120)
    {
      if (a2 == 1836083566)
      {
        v76 = CMBaseObjectGetDerivedStorage();
        v175.value = 0;
        cf.value = 0;
        if (VTParavirtualizationCreateReplyAndByteStream(a3, 8, &v175, &cf) || (v77 = VTMultiPassStorageInvalidate(*(v76 + 120)), VTParavirtualizationMessageAppendSInt32()) || ((v78 = VTParavirtualizationGuestSendMessageToHostAsync(v175.value)) != 0 ? (v79 = v78) : (v79 = v77), v79))
        {
          LODWORD(theArray.value) = 0;
          LOBYTE(theData) = 0;
          v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v80, theData);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

LABEL_352:
        if (v175.value)
        {
          CFRelease(v175.value);
        }

        v148 = cf.value;
        if (!cf.value)
        {
          return;
        }

        goto LABEL_370;
      }

      if (a2 != 1836086116)
      {
        goto LABEL_187;
      }

      v25 = CMBaseObjectGetDerivedStorage();
      cf.value = 0;
      theArray.value = 0;
      v175 = **&MEMORY[0x1E6960CC0];
      LODWORD(v172) = 0;
      theData = 0;
      LODWORD(v171) = 0;
      MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a3, 0, &v171, 0);
      if (MessageTypeAndFlagsAndGuestUUID)
      {
        goto LABEL_409;
      }

      v27 = *(v25 + 128);
      if ((v171 & 0x10) != 0)
      {
        if (!v27)
        {
          if (a3)
          {
            v157 = CFRetain(a3);
          }

          else
          {
            v157 = 0;
          }

          v7 = 0;
          *(v25 + 128) = v157;
          goto LABEL_374;
        }

        v32 = CMBlockBufferAppendBufferReference(v27, a3, 0, 0, 0);
        v7 = 0;
        goto LABEL_192;
      }

      if (v27 && (MessageTypeAndFlagsAndGuestUUID = CMBlockBufferAppendBufferReference(v27, a3, 0, 0, 0)) != 0 || (MessageTypeAndFlagsAndGuestUUID = VTParavirtualizationCreateReplyAndByteStream(a3, 8, &cf, &theArray)) != 0)
      {
LABEL_409:
        v32 = MessageTypeAndFlagsAndGuestUUID;
        v7 = 0;
      }

      else
      {
        v7 = *(v25 + 128);
        if (v7)
        {
          *(v25 + 128) = 0;
          a3 = v7;
        }

        v28 = VTParavirtualizationMessageGetCMTime(a3, 745829232, &v175);
        if (!v28)
        {
          VTParavirtualizationMessageGetSInt32();
          if (!v28)
          {
            v28 = VTParavirtualizationMessageCopyCFData(a3, 745369700, &theData);
            if (!v28)
            {
              v29 = *(v25 + 120);
              time = v175;
              v30 = VTMultiPassStorageSetDataAtTimeStamp(v29, &time.value, v172, theData);
              v28 = VTParavirtualizationMessageAppendSInt32();
              if (!v28)
              {
                v31 = VTParavirtualizationGuestSendMessageToHostAsync(cf.value);
                if (v31)
                {
                  v32 = v31;
                }

                else
                {
                  v32 = v30;
                }

LABEL_192:
                if (!v32)
                {
                  goto LABEL_374;
                }

                goto LABEL_193;
              }
            }
          }
        }

        v32 = v28;
      }

LABEL_193:
      *type = 0;
      v119 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v120 = *type;
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        v121 = v120;
      }

      else
      {
        v121 = v120 & 0xFFFFFFFE;
      }

      if (v121)
      {
        time = v175;
        v122 = CMTimeGetSeconds(&time);
        v176 = 136316162;
        v177 = "ParavirtualizedVideoEncoder_HandleEncoderSessionMultipassSetDataAtTimeStamp";
        v178 = 2048;
        v179 = a1;
        v180 = 2048;
        *v181 = v122;
        *&v181[8] = 1024;
        *v182 = v172;
        *&v182[4] = 1024;
        *&v182[6] = v32;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_374:
      if (cf.value)
      {
        CFRelease(cf.value);
      }

      if (theArray.value)
      {
        CFRelease(theArray.value);
      }

      v150 = theData;
      if (!theData)
      {
        goto LABEL_368;
      }

LABEL_367:
      CFRelease(v150);
LABEL_368:
      if (!v7)
      {
        return;
      }

      v148 = v7;
      goto LABEL_370;
    }

    if (a2 != 1836086121)
    {
      if (a2 != 1836086132)
      {
        goto LABEL_187;
      }

      v50 = CMBaseObjectGetDerivedStorage();
      theArray.value = 0;
      theData = 0;
      v175 = **&MEMORY[0x1E6960CC0];
      v172 = 0;
      cf = v175;
      v51 = VTParavirtualizationCreateReplyAndByteStream(a3, 8, &theArray, &theData);
      if (!v51)
      {
        v51 = VTParavirtualizationMessageGetCMTime(a3, 744911987, &v175);
        if (!v51)
        {
          v51 = VTParavirtualizationMessageCopyCFPropertyList(a3, 745369715, &v172);
          if (!v51)
          {
            if (!v172 || (v52 = CFGetTypeID(v172), v52 != CFStringGetTypeID()))
            {
              paravirtualizedVideoEncoder_HandleMessageFromHost_cold_2(&time);
              v56 = time.value;
              if (!LODWORD(time.value))
              {
                goto LABEL_271;
              }

              goto LABEL_108;
            }

            v53 = *(v50 + 120);
            time = v175;
            TimeStamp = VTMultiPassStorageGetTimeStamp(v53, &time.value, v172, &cf);
            time = cf;
            v51 = VTParavirtualizationMessageAppendCMTime();
            if (!v51)
            {
              v51 = VTParavirtualizationMessageAppendSInt32();
              if (!v51)
              {
                v55 = VTParavirtualizationGuestSendMessageToHostAsync(theArray.value);
                if (v55)
                {
                  v56 = v55;
                }

                else
                {
                  v56 = TimeStamp;
                }

                if (!v56)
                {
                  goto LABEL_271;
                }

                goto LABEL_108;
              }
            }
          }
        }
      }

      v56 = v51;
LABEL_108:
      LODWORD(v171) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v58 = v171;
      if (os_log_type_enabled(v57, type[0]))
      {
        v59 = v58;
      }

      else
      {
        v59 = v58 & 0xFFFFFFFE;
      }

      if (v59)
      {
        time = v175;
        v60 = CMTimeGetSeconds(&time);
        v61 = v172;
        time = cf;
        v62 = CMTimeGetSeconds(&time);
        v176 = 136316418;
        v177 = "ParavirtualizedVideoEncoder_HandleEncoderSessionMultipassGetTimeStamp";
        v178 = 2048;
        v179 = a1;
        v180 = 2048;
        *v181 = v60;
        *&v181[8] = 2112;
        *v182 = v61;
        *&v182[8] = 2048;
        *&v182[10] = v62;
        v183 = 1024;
        LODWORD(v184) = v56;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_271:
      if (theArray.value)
      {
        CFRelease(theArray.value);
      }

      if (theData)
      {
        CFRelease(theData);
      }

      v148 = v172;
      if (!v172)
      {
        return;
      }

LABEL_370:
      CFRelease(v148);
      return;
    }

    v108 = CMBaseObjectGetDerivedStorage();
    v175.value = 0;
    cf.value = 0;
    theArray.value = 0;
    v109 = VTParavirtualizationMessageCopyCFPropertyList(a3, 745957732, &theArray);
    if (!v109)
    {
      if (!theArray.value || (v110 = CFGetTypeID(theArray.value), v110 != CFStringGetTypeID()))
      {
        paravirtualizedVideoEncoder_HandleMessageFromHost_cold_3(&time);
        v113 = time.value;
        if (!LODWORD(time.value))
        {
          goto LABEL_286;
        }

        goto LABEL_182;
      }

      v111 = VTMultiPassStorageSetIdentifier(*(v108 + 120), theArray.value);
      v109 = VTParavirtualizationCreateReplyAndByteStream(a3, 8, &v175, &cf);
      if (!v109)
      {
        v109 = VTParavirtualizationMessageAppendSInt32();
        if (!v109)
        {
          v112 = VTParavirtualizationGuestSendMessageToHostAsync(v175.value);
          if (v112)
          {
            v113 = v112;
          }

          else
          {
            v113 = v111;
          }

          if (!v113)
          {
            goto LABEL_286;
          }

LABEL_182:
          LODWORD(theData) = 0;
          LOBYTE(v172) = 0;
          v114 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v115 = theData;
          if (os_log_type_enabled(v114, v172))
          {
            v116 = v115;
          }

          else
          {
            v116 = v115 & 0xFFFFFFFE;
          }

          if (v116)
          {
            v176 = 136315906;
            v177 = "ParavirtualizedVideoEncoder_HandleEncoderSessionMultipassSetIdentifier";
            v178 = 2048;
            v179 = a1;
            v180 = 2114;
            *v181 = theArray.value;
            *&v181[8] = 1024;
            *v182 = v113;
            _os_log_send_and_compose_impl();
          }

          goto LABEL_285;
        }
      }
    }

    v113 = v109;
    goto LABEL_182;
  }

  if (a2 > 1165193330)
  {
    if (a2 <= 1413834092)
    {
      if (a2 != 1165193331)
      {
        if (a2 != 1413833572)
        {
          goto LABEL_187;
        }

        v19 = CMBaseObjectGetDerivedStorage();
        theData = 0;
        v175.value = 0;
        cf.value = 0;
        theArray.value = 0;
        LODWORD(v172) = 0;
        LODWORD(v171) = 0;
        *type = 0;
        VTParavirtualizationMessageGetSInt32();
        if (v20 || (VTParavirtualizationMessageGetSInt32(), v21) || (VTParavirtualizationMessageGetSInt32(), v22) || VTParavirtualizationMessageCopyCFDictionary(a3, 744847476, &theData) || ((os_unfair_lock_lock((v19 + 16)), (v23 = *(v19 + 8)) == 0) ? (VideoFormatDescription = 0) : (VideoFormatDescription = VTTileEncoderSessionCreateVideoFormatDescription(v23)), (os_unfair_lock_unlock((v19 + 16)), VTParavirtualizationCreateReplyAndByteStream(a3, 8, &v175, &cf)) || VTParavirtualizationMessageAppendSInt32() || VTParavirtualizationMessageAppendCMFormatDescription() || ((v133 = VTParavirtualizationGuestSendMessageToHostAsync(v175.value)) != 0 ? (v134 = v133) : (v134 = VideoFormatDescription), v134)))
        {
          v135 = FigCFCopyCompactDescription();
          v136 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          if (v135)
          {
            CFRelease(v135);
          }
        }

LABEL_348:
        if (theData)
        {
          CFRelease(theData);
        }

        if (theArray.value)
        {
          CFRelease(theArray.value);
        }

        goto LABEL_352;
      }

      v72 = CMBaseObjectGetDerivedStorage();
      v175.value = 0;
      cf.value = 0;
      theArray.value = 0;
      v73 = VTParavirtualizationCreateReplyAndByteStream(a3, 8, &v175, &cf);
      if (v73 || (v73 = VTParavirtualizationMessageCopyCFData(a3, 745828964, &theArray)) != 0)
      {
        v127 = v73;
        LODWORD(v74) = 0;
        goto LABEL_210;
      }

      if (theArray.value)
      {
        v74 = CFDataGetLength(theArray.value) / 0x30uLL;
        BytePtr = CFDataGetBytePtr(theArray.value);
      }

      else
      {
        BytePtr = 0;
        v74 = 0;
      }

      os_unfair_lock_lock((v72 + 16));
      if (*v72)
      {
        VTEncoderSessionSetTimeRangesForNextPass(*v72, v74, BytePtr);
        v124 = v123;
      }

      else
      {
        v124 = 0;
      }

      os_unfair_lock_unlock((v72 + 16));
      v125 = VTParavirtualizationMessageAppendSInt32();
      if (v125)
      {
        v127 = v125;
        goto LABEL_210;
      }

      v126 = VTParavirtualizationGuestSendMessageToHostAsync(v175.value);
      if (v126)
      {
        v127 = v126;
      }

      else
      {
        v127 = v124;
      }

      if (v127)
      {
LABEL_210:
        LODWORD(theData) = 0;
        LOBYTE(v172) = 0;
        v128 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v129 = theData;
        if (os_log_type_enabled(v128, v172))
        {
          v130 = v129;
        }

        else
        {
          v130 = v129 & 0xFFFFFFFE;
        }

        if (v130)
        {
          v176 = 136315906;
          v177 = "ParavirtualizedVideoEncoder_HandleEncoderSessionSetTimeRangesForNextPass";
          v178 = 2048;
          v179 = a1;
          v180 = 1024;
          *v181 = v74;
          *&v181[4] = 1024;
          *&v181[6] = v127;
          _os_log_send_and_compose_impl();
        }

LABEL_285:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_286:
      v132 = v175.value;
      if (!v175.value)
      {
        goto LABEL_288;
      }

      goto LABEL_287;
    }

    if (a2 != 1413834093)
    {
      if (a2 != 1413837665)
      {
        goto LABEL_187;
      }

      LODWORD(v172) = 0;
      v42 = CMBaseObjectGetDerivedStorage();
      theData = 0;
      v175.value = 0;
      cf.value = 0;
      theArray.value = 0;
      v43 = VTParavirtualizationMessageCopyCFDictionary(a3, 745562721, &v175);
      if (v43)
      {
        v49 = v43;
        v46 = 0;
        v44 = 0;
        goto LABEL_246;
      }

      v44 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v44)
      {
        v45 = FigCFDictionaryCreateMutableCopy();
        v46 = v45;
        if (v45)
        {
          CFDictionaryAddValue(v45, *MEMORY[0x1E69660D8], v44);
          VTParavirtualizationMessageGetVTInt32Size();
          if (!v47)
          {
            os_unfair_lock_lock((v42 + 16));
            v48 = *(v42 + 8);
            v49 = v48 ? VTTileEncoderSessionSetTileAttributes(v48, cf.value, v46) : 0;
            os_unfair_lock_unlock((v42 + 16));
            v47 = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a3, 0, &v172, 0);
            if (!v47)
            {
              if ((v172 & 2) == 0)
              {
                goto LABEL_245;
              }

              v47 = VTParavirtualizationCreateReplyAndByteStream(a3, 8, &theArray, &theData);
              if (!v47)
              {
                v47 = VTParavirtualizationMessageAppendSInt32();
                if (!v47)
                {
                  v137 = VTParavirtualizationGuestSendMessageToHostAsync(theArray.value);
                  if (v137)
                  {
                    v49 = v137;
                  }

LABEL_245:
                  if (v49)
                  {
LABEL_246:
                    v138 = FigCFCopyCompactDescription();
                    LODWORD(v171) = 0;
                    type[0] = OS_LOG_TYPE_DEFAULT;
                    v139 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v140 = v171;
                    if (os_log_type_enabled(v139, type[0]))
                    {
                      v141 = v140;
                    }

                    else
                    {
                      v141 = v140 & 0xFFFFFFFE;
                    }

                    if (v141)
                    {
                      v176 = 136316418;
                      v177 = "ParavirtualizedVideoEncoder_HandleEncoderSessionSetTileAttributes";
                      v178 = 2048;
                      v179 = a1;
                      v180 = 1024;
                      *v181 = v49;
                      *&v181[4] = 1024;
                      *&v181[6] = cf.value;
                      *v182 = 1024;
                      *&v182[2] = HIDWORD(cf.value);
                      *&v182[6] = 2114;
                      *&v182[8] = v138;
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    if (v138)
                    {
                      CFRelease(v138);
                    }
                  }

LABEL_279:
                  if (v175.value)
                  {
                    CFRelease(v175.value);
                  }

                  if (v46)
                  {
                    CFRelease(v46);
                  }

                  if (!v44)
                  {
LABEL_321:
                    if (theArray.value)
                    {
                      CFRelease(theArray.value);
                    }

                    v148 = theData;
                    if (!theData)
                    {
                      return;
                    }

                    goto LABEL_370;
                  }

                  v149 = v44;
LABEL_320:
                  CFRelease(v149);
                  goto LABEL_321;
                }
              }
            }
          }

          v49 = v47;
          goto LABEL_246;
        }

        paravirtualizedVideoEncoder_HandleMessageFromHost_cold_7(&time);
      }

      else
      {
        paravirtualizedVideoEncoder_HandleMessageFromHost_cold_8(&time);
        v46 = 0;
      }

      v49 = time.value;
      if (LODWORD(time.value))
      {
        goto LABEL_246;
      }

      goto LABEL_279;
    }

    v100 = CMBaseObjectGetDerivedStorage();
    LODWORD(v171) = 0;
    theData = 0;
    v175.value = 0;
    *type = 0;
    cf.value = 0;
    theArray.value = 0;
    v172 = 0;
    if (!VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a3, 0, &v171, 0))
    {
      v101 = *(v100 + 56);
      if ((v171 & 0x10) != 0)
      {
        if (!v101)
        {
          if (a3)
          {
            v158 = CFRetain(a3);
          }

          else
          {
            v158 = 0;
          }

          v7 = 0;
          *(v100 + 56) = v158;
          goto LABEL_382;
        }

        v7 = 0;
        if (!CMBlockBufferAppendBufferReference(v101, a3, 0, 0, 0))
        {
          goto LABEL_382;
        }

LABEL_338:
        v161 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_382;
      }

      if ((!v101 || !CMBlockBufferAppendBufferReference(v101, a3, 0, 0, 0)) && !VTParavirtualizationCreateReplyAndByteStream(a3, 8, &theData, &v172))
      {
        v7 = *(v100 + 56);
        if (v7)
        {
          *(v100 + 56) = 0;
          a3 = v7;
        }

        if (VTParavirtualizationMessageGetSInt64())
        {
          goto LABEL_338;
        }

        v102 = v175.value;
        VTParavirtualizationMessageGetSInt32();
        if (v103)
        {
          goto LABEL_338;
        }

        v104 = *type;
        VTParavirtualizationMessageGetUInt32();
        if (v105 || VTParavirtualizationMessageCopyCFUUID() || VTParavirtualizationMessageCopyCMSampleBuffer(a3, 745759334, *(v100 + 80), v100 + 112, 0, &theArray))
        {
          goto LABEL_338;
        }

        if (theArray.value)
        {
          if (paravirtualizedVideoEncoder_lookupRetainAndForgetPendingTilePixelBufferByUUID(a1, v102, 0, 1, cf.value))
          {
            goto LABEL_338;
          }

          os_unfair_lock_lock((v100 + 16));
          v106 = *(v100 + 8);
          v107 = v106 ? VTEncoderSessionEmitEncodedTile(v106, v102, v104, 0, theArray.value) : 0;
          os_unfair_lock_unlock((v100 + 16));
          if (VTParavirtualizationMessageAppendSInt32())
          {
            goto LABEL_338;
          }

          v159 = VTParavirtualizationGuestSendMessageToHostAsync(theData);
          if (v159 ? v159 : v107)
          {
            goto LABEL_338;
          }

LABEL_382:
          if (theArray.value)
          {
            CFRelease(theArray.value);
          }

          if (cf.value)
          {
            CFRelease(cf.value);
          }

          if (theData)
          {
            CFRelease(theData);
          }

          v150 = v172;
          if (!v172)
          {
            goto LABEL_368;
          }

          goto LABEL_367;
        }

        paravirtualizedVideoEncoder_HandleMessageFromHost_cold_4(&time);
        if (!LODWORD(time.value))
        {
          goto LABEL_382;
        }

        goto LABEL_338;
      }
    }

    v7 = 0;
    goto LABEL_338;
  }

  if (a2 > 1164338290)
  {
    if (a2 != 1164338291)
    {
      if (a2 != 1164993121)
      {
        goto LABEL_187;
      }

      LODWORD(theData) = 0;
      v33 = CMBaseObjectGetDerivedStorage();
      v175.value = 0;
      cf.value = 0;
      theArray.value = 0;
      v34 = VTParavirtualizationMessageCopyCFDictionary(a3, 745562721, &v175);
      if (v34)
      {
        v38 = v34;
        v37 = 0;
        v35 = 0;
        goto LABEL_421;
      }

      v35 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v35)
      {
        v36 = FigCFDictionaryCreateMutableCopy();
        if (v36)
        {
          v37 = v36;
          CFDictionaryAddValue(v36, *MEMORY[0x1E69660D8], v35);
          os_unfair_lock_lock((v33 + 16));
          if (*v33)
          {
            v38 = VTEncoderSessionSetPixelBufferAttributes(*v33, v37);
          }

          else
          {
            v38 = 0;
          }

          os_unfair_lock_unlock((v33 + 16));
          v131 = VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a3, 0, &theData, 0);
          if (v131 || (theData & 2) != 0 && ((v131 = VTParavirtualizationCreateReplyAndByteStream(a3, 8, &cf, &theArray)) != 0 || (v131 = VTParavirtualizationMessageAppendSInt32()) != 0 || (v131 = VTParavirtualizationGuestSendMessageToHostAsync(cf.value)) != 0))
          {
            v38 = v131;
          }

          else if (!v38)
          {
            *(v33 + 24) = v37;
            v37 = 0;
LABEL_223:
            if (v175.value)
            {
              CFRelease(v175.value);
            }

            if (v37)
            {
              CFRelease(v37);
            }

            if (!v35)
            {
LABEL_288:
              if (cf.value)
              {
                CFRelease(cf.value);
              }

              v148 = theArray.value;
              if (!theArray.value)
              {
                return;
              }

              goto LABEL_370;
            }

            v132 = v35;
LABEL_287:
            CFRelease(v132);
            goto LABEL_288;
          }

LABEL_421:
          LODWORD(v172) = 0;
          LOBYTE(v171) = 0;
          v165 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v166 = v172;
          if (os_log_type_enabled(v165, v171))
          {
            v167 = v166;
          }

          else
          {
            v167 = v166 & 0xFFFFFFFE;
          }

          if (v167)
          {
            v168 = *v33;
            v176 = 136315906;
            v177 = "ParavirtualizedVideoEncoder_HandleEncoderSessionSetPixelBufferAttributesMessage";
            v178 = 2048;
            v179 = a1;
            v180 = 2048;
            *v181 = v168;
            *&v181[8] = 1024;
            *v182 = v38;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_223;
        }

        v164 = 846;
      }

      else
      {
        v164 = 843;
      }

      v37 = 0;
      if (paravirtualizedVideoEncoder_HandleMessageFromHost_cold_9(v164, &time))
      {
        goto LABEL_223;
      }

      v38 = time.value;
      goto LABEL_421;
    }

    v81 = CMBaseObjectGetDerivedStorage();
    theData = 0;
    v175.value = 0;
    cf.value = 0;
    theArray.value = 0;
    LODWORD(v172) = 0;
    LODWORD(v171) = 0;
    *type = 0;
    VTParavirtualizationMessageGetSInt32();
    if (v82 || (VTParavirtualizationMessageGetSInt32(), v83) || (VTParavirtualizationMessageGetSInt32(), v84) || VTParavirtualizationMessageCopyCFDictionary(a3, 744847476, &theData) || ((os_unfair_lock_lock((v81 + 16)), !*v81) ? (v85 = 0) : (v85 = VTEncoderSessionCreateVideoFormatDescription(*v81, v172, v171, *type, theData, &theArray)), (os_unfair_lock_unlock((v81 + 16)), VTParavirtualizationCreateReplyAndByteStream(a3, 8, &v175, &cf)) || VTParavirtualizationMessageAppendSInt32() || VTParavirtualizationMessageAppendCMFormatDescription() || ((v145 = VTParavirtualizationGuestSendMessageToHostAsync(v175.value)) != 0 ? (v146 = v145) : (v146 = v85), v146)))
    {
      v147 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_348;
  }

  if (a2 != 1115252001)
  {
    if (a2 == 1164275060)
    {
      v5 = CMBaseObjectGetDerivedStorage();
      *type = 0;
      theData = 0;
      v175.value = 0;
      theArray.value = 0;
      cf.value = 0;
      v171 = 0;
      v172 = 0;
      if (VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a3, 0, type, 0))
      {
        goto LABEL_408;
      }

      v6 = *(v5 + 48);
      if ((type[0] & 0x10) != 0)
      {
        if (!v6)
        {
          if (a3)
          {
            v156 = CFRetain(a3);
          }

          else
          {
            v156 = 0;
          }

          v7 = 0;
          *(v5 + 48) = v156;
LABEL_358:
          if (theData)
          {
            CFRelease(theData);
          }

          if (cf.value)
          {
            CFRelease(cf.value);
          }

          if (theArray.value)
          {
            CFRelease(theArray.value);
          }

          if (v172)
          {
            CFRelease(v172);
          }

          v150 = v171;
          if (!v171)
          {
            goto LABEL_368;
          }

          goto LABEL_367;
        }

        v118 = CMBlockBufferAppendBufferReference(v6, a3, 0, 0, 0);
        v7 = 0;
        goto LABEL_344;
      }

      if (v6 && CMBlockBufferAppendBufferReference(v6, a3, 0, 0, 0) || VTParavirtualizationCreateReplyAndByteStream(a3, 8, &v172, &v171))
      {
LABEL_408:
        v7 = 0;
      }

      else
      {
        v7 = *(v5 + 48);
        if (v7)
        {
          *(v5 + 48) = 0;
          a3 = v7;
        }

        if (!VTParavirtualizationMessageGetSInt64())
        {
          v8 = v175.value;
          VTParavirtualizationMessageGetSInt32();
          if (!v9)
          {
            VTParavirtualizationMessageGetUInt32();
            if (!v10 && !VTParavirtualizationMessageCopyCMSampleBuffer(a3, 745759334, *(v5 + 80), v5 + 112, 0, &theData) && !VTParavirtualizationMessageCopyCFUUIDArray() && (!theArray.value || CFArrayGetCount(theArray.value) < 1 || !paravirtualizedVideoEncoder_forgetPendingFramePixelBuffersByUUIDs(a1, 0, 1, theArray.value)) && !VTParavirtualizationMessageCopyCFUUID() && (!cf.value || !paravirtualizedVideoEncoder_forgetPendingFramePixelBufferByUUID(a1, 0, 1, cf.value)))
            {
              os_unfair_lock_lock((v5 + 16));
              if (*v5)
              {
                VTEncoderSessionEmitEncodedFrame(*v5, v8, 0, 0, theData);
                v12 = v11;
              }

              else
              {
                v12 = 0;
              }

              os_unfair_lock_unlock((v5 + 16));
              if (!VTParavirtualizationMessageAppendSInt32())
              {
                v162 = VTParavirtualizationGuestSendMessageToHostAsync(v172);
                if (v162)
                {
                  v118 = v162;
                }

                else
                {
                  v118 = v12;
                }

LABEL_344:
                if (!v118)
                {
                  goto LABEL_358;
                }
              }
            }
          }
        }
      }

      v163 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_358;
    }

LABEL_187:
    LODWORD(v175.value) = 0;
    LOBYTE(cf.value) = 0;
    v117 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return;
  }

  v63 = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((v63 + 84));
  CFDictionaryRemoveAllValues(*(v63 + 88));
  os_unfair_lock_unlock((v63 + 84));
  v64 = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((v64 + 96));
  CFDictionaryRemoveAllValues(*(v64 + 104));
  os_unfair_lock_unlock((v64 + 96));
  v65 = CMBaseObjectGetDerivedStorage();
  v66 = VTParavirtualizationCopyNotificationQueueForGuestUUID(v65 + 4);
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (v66)
  {

    dispatch_release(v66);
  }
}

uint64_t paravirtualizedVideoEncoder_forgetPendingFramePixelBuffersByUUIDs(uint64_t a1, int a2, int a3, CFArrayRef theArray)
{
  for (i = 0; ; ++i)
  {
    v9 = theArray ? CFArrayGetCount(theArray) : 0;
    if (i >= v9)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    result = paravirtualizedVideoEncoder_forgetPendingFramePixelBufferByUUID(a1, a2, a3, ValueAtIndex);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t paravirtualizedVideoEncoder_forgetPendingFramePixelBufferByUUID(uint64_t a1, int a2, int a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 84));
  Value = CFDictionaryGetValue(*(DerivedStorage + 88), a4);
  if (Value)
  {
    if (a2)
    {
      v9 = @"PVEncodeFrameDidComplete";
LABEL_6:
      CFDictionarySetValue(Value, v9, *MEMORY[0x1E695E4D0]);
      goto LABEL_7;
    }

    if (a3)
    {
      v9 = @"PVFrameWasEmitted";
      goto LABEL_6;
    }
  }

LABEL_7:
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  os_unfair_lock_unlock((DerivedStorage + 84));
  return 0;
}

uint64_t paravirtualizedVideoEncoder_lookupRetainAndForgetPendingTilePixelBufferByUUID(uint64_t a1, uint64_t a2, int a3, int a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  SInt64 = FigCFNumberCreateSInt64();
  os_unfair_lock_lock((DerivedStorage + 96));
  Value = CFDictionaryGetValue(*(DerivedStorage + 104), a5);
  if (Value)
  {
    v11 = CFDictionaryGetValue(Value, @"TilesDict");
    if (!v11)
    {
LABEL_11:
      v15 = 0;
      goto LABEL_12;
    }

    v12 = v11;
    v13 = CFDictionaryGetValue(v11, SInt64);
    if (v13)
    {
      if (a3)
      {
        v14 = @"EncodeTileDidComplete";
      }

      else
      {
        if (!a4)
        {
          goto LABEL_9;
        }

        v14 = @"TileWasEmitted";
      }

      CFDictionarySetValue(v13, v14, *MEMORY[0x1E695E4D0]);
LABEL_9:
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      if (!CFDictionaryGetCount(v12))
      {
        CFDictionaryRemoveValue(*(DerivedStorage + 104), a5);
      }

      goto LABEL_11;
    }

    paravirtualizedVideoEncoder_lookupRetainAndForgetPendingTilePixelBufferByUUID_cold_1(&v17);
    v15 = v17;
  }

  else
  {
    paravirtualizedVideoEncoder_lookupRetainAndForgetPendingTilePixelBufferByUUID_cold_2(&v18);
    v15 = v18;
  }

LABEL_12:
  os_unfair_lock_unlock((DerivedStorage + 96));
  if (SInt64)
  {
    CFRelease(SInt64);
  }

  return v15;
}

void ParavirtualizedVideoEncoder_Finalize()
{
  cf[22] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  if (dword_1EAD32120)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 20) = 0;
  if (!VTParavirtualizationCreateMessageAndByteStream(761622115, 0, DerivedStorage + 64, 0, cf, 0) && VTParavirtualizationGuestSendMessageToHostAsync(cf[0]))
  {
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (VTParavirtualizationGuestRemoveHandlerForUUID((DerivedStorage + 64)))
  {
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }

  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 40) = 0;
  }

  v6 = *(DerivedStorage + 48);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 48) = 0;
  }

  v7 = *(DerivedStorage + 56);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 56) = 0;
  }

  v8 = *(DerivedStorage + 88);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 88) = 0;
  }

  v9 = *(DerivedStorage + 104);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 104) = 0;
  }

  v10 = *(DerivedStorage + 112);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 112) = 0;
  }

  v11 = *(DerivedStorage + 120);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 120) = 0;
  }

  v12 = *(DerivedStorage + 128);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 128) = 0;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

__CFString *ParavirtualizedVideoEncoder_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<ParavirtualizedVideoEncoder %p UUID %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x>", a1, DerivedStorage[64], DerivedStorage[65], DerivedStorage[66], DerivedStorage[67], DerivedStorage[68], DerivedStorage[69], DerivedStorage[70], DerivedStorage[71], DerivedStorage[72], DerivedStorage[73], DerivedStorage[74], DerivedStorage[75], DerivedStorage[76], DerivedStorage[77], DerivedStorage[78], DerivedStorage[79]);
  return Mutable;
}

uint64_t ParavirtualizedVideoEncoder_SetProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v15 = 0;
  cf = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1702061428, 1, DerivedStorage + 64, 0, &v18, &v17);
  if (!appended)
  {
    v8 = paravirtualizedVideoEncoder_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(a1, a2, a3, &cf);
    if (v8 == -19096)
    {
      v9 = 0;
      goto LABEL_14;
    }

    v9 = v8;
    if (v8)
    {
      goto LABEL_12;
    }

    appended = VTParavirtualizationMessageAppendCFPropertyList();
    if (!appended)
    {
      appended = VTParavirtualizationMessageAppendCFPropertyList();
      if (!appended)
      {
        v19 = kVTParavirtualizationDefaultReplyTimeout;
        v20 = 0;
        appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v18, &v19, &v16);
        if (!appended)
        {
          VTParavirtualizationMessageGetSInt32();
          if (v10)
          {
            v9 = v10;
          }

          else
          {
            v9 = v15;
          }

          if (!v9)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }
    }
  }

  v9 = appended;
LABEL_12:
  v11 = FigCFCopyCompactDescription();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v9;
}

uint64_t paravirtualizedVideoEncoder_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  if (paravirtualizedVideoEncoder_getSpecialCaseHandlersForSettingProperties_sCreateDictionaryOnce != -1)
  {
    paravirtualizedVideoEncoder_handleAnySpecialCaseSetPropertyAndCopyReplacementValue_cold_1();
  }

  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v8 = *(Value + 8);

    return v8(a1, a3, a4);
  }

  else
  {
    if (a3)
    {
      v10 = CFRetain(a3);
    }

    else
    {
      v10 = 0;
    }

    *a4 = v10;
    return 0;
  }
}

CFDictionaryRef __paravirtualizedVideoEncoder_getSpecialCaseHandlersForSettingProperties_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  values = &kParavirtualizedVideoEncoder_BaseClass_block_invoke_specialCasePropertyAndHandlerPairs;
  keys[0] = @"MultiPassStorage";
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], 0);
  paravirtualizedVideoEncoder_getSpecialCaseHandlersForSettingProperties_sSpecialCaseHandlersForSettingProperties = result;
  return result;
}

uint64_t paravirtualizedVideoEncoder_handleMultiPassStorageSetPropertyAndCopyReplacementValue(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 120);
  *(DerivedStorage + 120) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v7 = MEMORY[0x1E695E4C0];
  if (a2)
  {
    v7 = MEMORY[0x1E695E4D0];
  }

  *a3 = CFRetain(*v7);
  return 0;
}

uint64_t ParavirtualizedVideoEncoder_StartSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  cf = 0;
  v11 = 0;
  os_unfair_lock_lock((DerivedStorage + 16));
  *DerivedStorage = a2;
  os_unfair_lock_unlock((DerivedStorage + 16));
  *(DerivedStorage + 32) = a3;
  appended = VTParavirtualizationCreateMessageAndByteStream(1702065249, 1, DerivedStorage + 64, 0, &cf, &v12);
  if (appended || (appended = VTParavirtualizationMessageAppendCMVideoDimensions(), appended) || (v14 = kVTParavirtualizationDefaultReplyTimeout, v15 = 0, appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v14, &v11), appended))
  {
    v8 = appended;
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v8;
}

uint64_t ParavirtualizedVideoEncoder_EncodeFrame(uint64_t a1, uint64_t a2, __CVBuffer *a3, CMTime *a4, CMTime *a5, uint64_t a6, _DWORD *a7)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  cf = 0;
  IOSurface = 0;
  v22 = 0;
  if (CVPixelBufferGetWidth(a3) != *(DerivedStorage + 32))
  {
    ParavirtualizedVideoEncoder_EncodeFrame_cold_1(&time);
LABEL_41:
    v13 = 0;
    goto LABEL_43;
  }

  if (CVPixelBufferGetHeight(a3) != *(DerivedStorage + 36))
  {
    ParavirtualizedVideoEncoder_EncodeFrame_cold_2(&time);
    goto LABEL_41;
  }

  if (a3)
  {
    v13 = CFUUIDCreate(*MEMORY[0x1E695E480]);
    paravirtualizedVideoEncoder_rememberPendingFramePixelBufferAndUUID(a1, v13, a3);
  }

  else
  {
    v13 = 0;
  }

  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (!IOSurface)
  {
    ParavirtualizedVideoEncoder_EncodeFrame_cold_3(&time);
LABEL_43:
    value_low = LODWORD(time.value);
    if (!LODWORD(time.value))
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  appended = VTParavirtualizationCreateMessageAndByteStream(1701212781, 1, DerivedStorage + 64, 0, &cf, &v23);
  if (appended || (appended = VTParavirtualizationMessageAppendSInt64(), appended) || (time = *a4, appended = VTParavirtualizationMessageAppendCMTime(), appended) || (time = *a5, appended = VTParavirtualizationMessageAppendCMTime(), appended) || a6 && (appended = VTParavirtualizationMessageAppendCFDictionary(v23, 744910962, a6), appended) || v13 && (appended = VTParavirtualizationMessageAppendCFUUID(), appended) || a3 && (appended = VTParavirtualizationMessageAppendPixelBufferAndIOSurfaceAttachments(v23, a3), appended) || (*&time.value = kVTParavirtualizationCodecOperationReplyTimeout, time.epoch = 0, appended = VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAndCopyReplySync(cf, &IOSurface, IOSurface != 0, &time.value, &v22), appended) || (VTParavirtualizationMessageGetSInt32(), appended) || (VTParavirtualizationMessageGetUInt32(), appended) || (appended = paravirtualizedVideoEncoder_forgetPendingFramePixelBufferByUUID(a1, 1, 0, v13), appended))
  {
    value_low = appended;
LABEL_24:
    os_unfair_lock_lock((DerivedStorage + 16));
    os_unfair_lock_unlock((DerivedStorage + 16));
    v16 = FigCFCopyCompactDescription();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (v16)
    {
      CFRelease(v16);
    }

    os_unfair_lock_lock((DerivedStorage + 16));
    if (*DerivedStorage)
    {
      VTEncoderSessionEmitEncodedFrame(*DerivedStorage, a2, value_low, 0, 0);
    }

    os_unfair_lock_unlock((DerivedStorage + 16));
    goto LABEL_29;
  }

  value_low = v25;
  if (a7)
  {
    *a7 = 0;
  }

  if (value_low)
  {
    goto LABEL_24;
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return value_low;
}

uint64_t ParavirtualizedVideoEncoder_CompleteFrames(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  cf = 0;
  v9 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1701013106, 1, DerivedStorage + 64, 0, &cf, &v10);
  if (appended || (v12 = *a2, v13 = *(a2 + 16), appended = VTParavirtualizationMessageAppendCMTime(), appended) || (v12 = kVTParavirtualizationCodecOperationReplyTimeout, v13 = 0, appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v12, &v9), appended))
  {
    v6 = appended;
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t ParavirtualizedVideoEncoder_CopySupportedPropertyDictionary(uint64_t a1, CFTypeRef *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 40))
  {
    v4 = 0;
    goto LABEL_16;
  }

  v5 = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  cf = 0;
  v10 = 0;
  v11 = 0;
  v6 = VTParavirtualizationCreateMessageAndByteStream(1702065520, 1, v5 + 64, 0, &cf, &v12);
  if (v6 || (v14 = kVTParavirtualizationDefaultReplyTimeout, v15 = 0, v6 = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v14, &v11), v6) || (VTParavirtualizationMessageGetSInt32(), v6))
  {
    v4 = v6;
    goto LABEL_22;
  }

  v4 = VTParavirtualizationMessageCopyCFDictionary(v11, 745764208, &v10);
  if (v4)
  {
LABEL_22:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  *(DerivedStorage + 40) = v10;
  v10 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_16:
  if (!a2)
  {
    return FigSignalErrorAtGM();
  }

  v7 = *(DerivedStorage + 40);
  if (!v7)
  {
    return FigSignalErrorAtGM();
  }

  *a2 = CFRetain(v7);
  return v4;
}

uint64_t ParavirtualizedVideoEncoder_PrepareToEncodeFrames()
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  cf = 0;
  v6 = 0;
  v1 = VTParavirtualizationCreateMessageAndByteStream(1701865074, 1, DerivedStorage + 64, 0, &cf, &v7);
  if (v1 || (v9 = kVTParavirtualizationDefaultReplyTimeout, v10 = 0, v1 = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v9, &v6), v1))
  {
    v3 = v1;
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v3;
}

uint64_t ParavirtualizedVideoEncoder_BeginPass()
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  cf = 0;
  v6 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1700950131, 1, DerivedStorage + 64, 0, &cf, &v7);
  if (appended || (appended = VTParavirtualizationMessageAppendUInt32(), appended) || (v9 = kVTParavirtualizationDefaultReplyTimeout, v10 = 0, appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v9, &v6), appended))
  {
    v3 = appended;
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v3;
}

uint64_t ParavirtualizedVideoEncoder_EndPass(uint64_t a1, _BYTE *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  cf = 0;
  v9 = 0;
  v4 = VTParavirtualizationCreateMessageAndByteStream(1701146739, 1, DerivedStorage + 64, 0, &cf, &v10);
  if (v4 || (v12 = kVTParavirtualizationDefaultReplyTimeout, v13 = 0, v4 = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v12, &v9), v4) || (VTParavirtualizationMessageGetSInt32(), v4))
  {
    v6 = v4;
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  VTParavirtualizationMessageGetSInt32();
  v6 = v5;
  if (a2 && !v5)
  {
    *a2 = 0;
    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

uint64_t ParavirtualizedVideoEncoder_StartTileSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  cf = 0;
  v11 = 0;
  os_unfair_lock_lock((DerivedStorage + 16));
  *(DerivedStorage + 8) = a2;
  os_unfair_lock_unlock((DerivedStorage + 16));
  appended = VTParavirtualizationCreateMessageAndByteStream(1702065267, 1, DerivedStorage + 64, 0, &cf, &v12);
  if (appended || a3 && (appended = VTParavirtualizationMessageAppendCFDictionary(v12, 744846192, a3), appended) || (VTParavirtualizationMessageAppendVTInt32Size(), v14 = kVTParavirtualizationDefaultReplyTimeout, v15 = 0, appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v14, &v11), appended))
  {
    v8 = appended;
LABEL_9:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_10;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v8;
}

uint64_t ParavirtualizedVideoEncoder_PrepareToEncodeTiles()
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  cf = 0;
  v6 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1701868649, 1, DerivedStorage + 64, 0, &cf, &v7);
  if (appended || (appended = VTParavirtualizationMessageAppendSInt32(), appended) || (v9 = kVTParavirtualizationDefaultReplyTimeout, v10 = 0, appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v9, &v6), appended))
  {
    v3 = appended;
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v3;
}

uint64_t ParavirtualizedVideoEncoder_EncodeTile(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v62 = *MEMORY[0x1E69E9840];
  v59 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v57 = 0;
  cf = 0;
  IOSurface = 0;
  v56 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1702127980, 1, &DerivedStorage[16], 0, &cf, &v57);
  v52 = DerivedStorage;
  v51 = a1;
  if (appended || (appended = VTParavirtualizationMessageAppendSInt64(), appended))
  {
    v39 = appended;
    v54 = 0;
    goto LABEL_44;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_32;
  }

  v47 = a7;
  v13 = CMBaseObjectGetDerivedStorage();
  v14 = *MEMORY[0x1E695E480];
  v48 = a2;
  key = FigCFNumberCreateSInt64();
  os_unfair_lock_lock((v13 + 96));
  Count = CFDictionaryGetCount(*(v13 + 104));
  v16 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  v17 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  v49 = v16;
  CFDictionaryGetKeysAndValues(*(v13 + 104), v16, v17);
  v18 = MEMORY[0x1E695E4C0];
  v19 = 0;
  if (Count >= 1)
  {
    v20 = 0;
    value = *MEMORY[0x1E695E4C0];
    v21 = 1;
    while (1)
    {
      while (1)
      {
        v22 = v17[v20];
        if (CFDictionaryGetValue(v22, @"PVPixelBuffer") == a3)
        {
          break;
        }

        if (Count == ++v20)
        {
          if (v21)
          {
            DerivedStorage = v52;
            v18 = MEMORY[0x1E695E4C0];
            goto LABEL_16;
          }

LABEL_22:
          v28 = 0;
          DerivedStorage = v52;
          goto LABEL_23;
        }
      }

      v23 = CFDictionaryGetValue(v22, @"TilesDict");
      if (!v23)
      {
        ParavirtualizedVideoEncoder_EncodeTile_cold_6();
        goto LABEL_71;
      }

      v24 = v23;
      Mutable = CFDictionaryCreateMutable(v14, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        break;
      }

      v26 = Mutable;
      CFDictionarySetValue(Mutable, @"EncodeTileDidComplete", value);
      CFDictionarySetValue(v26, @"TileWasEmitted", value);
      CFDictionarySetValue(v24, key, v26);
      v19 = CFRetain(v16[v20]);
      CFRelease(v26);
      v21 = 0;
      if (Count - 1 == v20++)
      {
        goto LABEL_22;
      }
    }

    ParavirtualizedVideoEncoder_EncodeTile_cold_5();
LABEL_71:
    v54 = 0;
    v28 = 0;
    DerivedStorage = v52;
    goto LABEL_72;
  }

LABEL_16:
  v28 = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v28)
  {
    ParavirtualizedVideoEncoder_EncodeTile_cold_4();
LABEL_68:
    v54 = 0;
LABEL_72:
    v35 = key;
    goto LABEL_24;
  }

  v29 = CFDictionaryCreateMutable(v14, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v29)
  {
    ParavirtualizedVideoEncoder_EncodeTile_cold_3();
    goto LABEL_68;
  }

  v30 = v29;
  v31 = *v18;
  CFDictionarySetValue(v29, @"EncodeTileDidComplete", v31);
  CFDictionarySetValue(v30, @"TileWasEmitted", v31);
  CFDictionarySetValue(v28, key, v30);
  v19 = CFUUIDCreate(v14);
  if (!v19)
  {
    ParavirtualizedVideoEncoder_EncodeTile_cold_2();
    goto LABEL_68;
  }

  v32 = CFDictionaryCreateMutable(v14, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v32)
  {
    ParavirtualizedVideoEncoder_EncodeTile_cold_1();
    goto LABEL_68;
  }

  v33 = v32;
  CFDictionarySetValue(v32, @"PVPixelBuffer", a3);
  CFDictionarySetValue(v33, @"TilesDict", v28);
  CFDictionarySetValue(*(v13 + 104), v19, v33);
  CFRelease(v33);
  CFRelease(v30);
LABEL_23:
  v35 = key;
  CFDictionaryGetCount(*(v13 + 104));
  v54 = v19;
  v19 = 0;
LABEL_24:
  os_unfair_lock_unlock((v13 + 96));
  if (v35)
  {
    CFRelease(v35);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  free(v49);
  free(v17);
  if (v28)
  {
    CFRelease(v28);
  }

  a7 = v47;
  a2 = v48;
  a1 = v51;
  v34 = v54;
  if (v54)
  {
    v36 = VTParavirtualizationMessageAppendCFUUID();
    if (v36)
    {
      goto LABEL_51;
    }
  }

LABEL_32:
  IOSurface = CVPixelBufferGetIOSurface(a3);
  v54 = v34;
  if (!IOSurface)
  {
    ParavirtualizedVideoEncoder_EncodeTile_cold_7(&v60);
    v39 = v60;
    if (!v60)
    {
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  v36 = VTParavirtualizationMessageAppendVTInt32Point();
  if (v36)
  {
LABEL_51:
    v39 = v36;
    goto LABEL_44;
  }

  v37 = VTParavirtualizationMessageAppendVTInt32Size();
  if (v37 || a6 && (v37 = VTParavirtualizationMessageAppendCFDictionary(v57, 745826672, a6), v37) || (v60 = kVTParavirtualizationCodecOperationReplyTimeout, v61 = 0, v37 = VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAndCopyReplySync(cf, &IOSurface, 1, &v60, &v56), v37) || (VTParavirtualizationMessageGetSInt32(), v37) || (VTParavirtualizationMessageGetUInt32(), v37))
  {
    v39 = v37;
  }

  else
  {
    v38 = paravirtualizedVideoEncoder_lookupRetainAndForgetPendingTilePixelBufferByUUID(a1, a2, 1, 0, v34);
    if (!v38)
    {
      v39 = v59;
      if (a7)
      {
        *a7 = 0;
      }

      if (v39)
      {
        goto LABEL_44;
      }

LABEL_53:
      v43 = v34;
      goto LABEL_54;
    }

    v39 = v38;
  }

LABEL_44:
  v40 = a2;
  os_unfair_lock_lock(DerivedStorage + 4);
  os_unfair_lock_unlock(DerivedStorage + 4);
  v41 = FigCFCopyCompactDescription();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  v43 = v54;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v41)
  {
    CFRelease(v41);
  }

  os_unfair_lock_lock(v52 + 4);
  v44 = *&v52[2]._os_unfair_lock_opaque;
  if (v44)
  {
    VTEncoderSessionEmitEncodedTile(v44, v40, v39, 0, 0);
  }

  os_unfair_lock_unlock(v52 + 4);
LABEL_54:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  return v39;
}

uint64_t ParavirtualizedVideoEncoder_CompleteTiles()
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  cf = 0;
  v6 = 0;
  v1 = VTParavirtualizationCreateMessageAndByteStream(1701016681, 1, DerivedStorage + 64, 0, &cf, &v7);
  if (v1 || (v9 = kVTParavirtualizationCodecOperationReplyTimeout, v10 = 0, v1 = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v9, &v6), v1))
  {
    v3 = v1;
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v3;
}

uint64_t ParavirtualizedVideoEncoder_EncodeMultiImageFrame(uint64_t a1, uint64_t a2, OpaqueCMTaggedBufferGroup *a3, CMTime *a4, CMTime *a5, uint64_t a6, _DWORD *a7)
{
  v46 = *MEMORY[0x1E69E9840];
  v44 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v42 = 0;
  cf = 0;
  v41 = 0;
  v12 = *MEMORY[0x1E695E480];
  v13 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v15 = CFArrayCreateMutable(v12, 0, v13);
  v16 = CFArrayCreateMutable(v12, 0, v13);
  Count = CMTaggedBufferGroupGetCount(a3);
  v40 = malloc_type_calloc(Count, 8uLL, 0x2004093837F09uLL);
  v38 = a6;
  if (CMTaggedBufferGroupGetCount(a3) <= 0)
  {
    ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_7(&time);
LABEL_58:
    value_low = LODWORD(time.value);
    goto LABEL_31;
  }

  if (!Mutable)
  {
    ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_6(&time);
    goto LABEL_58;
  }

  if (!v15)
  {
    ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_5(&time);
    goto LABEL_58;
  }

  if (!v16)
  {
    ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_4(&time);
    goto LABEL_58;
  }

  if (!v40)
  {
    ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_3(&time);
    goto LABEL_58;
  }

  v34 = a7;
  v35 = DerivedStorage;
  if (CMTaggedBufferGroupGetCount(a3) >= 1)
  {
    v18 = 0;
    while (1)
    {
      CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
      IOSurface = CVPixelBufferGetIOSurface(CVPixelBufferAtIndex);
      TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(a3, v18);
      if (!IOSurface)
      {
        ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_2(&time);
        goto LABEL_51;
      }

      v22 = TagCollectionAtIndex;
      v40[v18] = IOSurface;
      if (CVPixelBufferAtIndex)
      {
        v23 = CFUUIDCreate(v12);
        CFArrayAppendValue(v15, v23);
        CFArrayAppendValue(Mutable, CVPixelBufferAtIndex);
        if (v23)
        {
          CFRelease(v23);
        }
      }

      if (!v22)
      {
        break;
      }

      CFArrayAppendValue(v16, v22);
      if (++v18 >= CMTaggedBufferGroupGetCount(a3))
      {
        goto LABEL_14;
      }
    }

    ParavirtualizedVideoEncoder_EncodeMultiImageFrame_cold_1(&time);
LABEL_51:
    value_low = LODWORD(time.value);
    DerivedStorage = v35;
LABEL_31:
    if (!value_low)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

LABEL_14:
  if (CFArrayGetCount(v15) >= 1)
  {
    v24 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v15, v24);
      v26 = CFArrayGetValueAtIndex(Mutable, v24);
      paravirtualizedVideoEncoder_rememberPendingFramePixelBufferAndUUID(a1, ValueAtIndex, v26);
      ++v24;
    }

    while (v24 < CFArrayGetCount(v15));
  }

  DerivedStorage = v35;
  appended = VTParavirtualizationCreateMessageAndByteStream(1701669222, 1, v35 + 64, 0, &cf, &v42);
  if (!appended)
  {
    appended = VTParavirtualizationMessageAppendSInt64();
    if (!appended)
    {
      time = *a4;
      appended = VTParavirtualizationMessageAppendCMTime();
      if (!appended)
      {
        time = *a5;
        appended = VTParavirtualizationMessageAppendCMTime();
        if (!appended)
        {
          if (!v38 || (appended = VTParavirtualizationMessageAppendCFDictionary(v42, 744910962, v38), !appended))
          {
            appended = VTParavirtualizationMessageAppendCFUUIDArray(v42, 745892139, v15);
            if (!appended)
            {
              appended = VTParavirtualizationMessageAppendFigTagCollectionArray(v42, 745825067, v16);
              if (!appended)
              {
                v28 = cf;
                v29 = CFArrayGetCount(Mutable);
                *&time.value = kVTParavirtualizationCodecOperationReplyTimeout;
                time.epoch = 0;
                appended = VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAndCopyReplySync(v28, v40, v29, &time.value, &v41);
                if (!appended)
                {
                  VTParavirtualizationMessageGetSInt32();
                  if (!appended)
                  {
                    VTParavirtualizationMessageGetUInt32();
                    if (!appended)
                    {
                      appended = paravirtualizedVideoEncoder_forgetPendingFramePixelBuffersByUUIDs(a1, 1, 0, v15);
                      if (!appended)
                      {
                        value_low = v44;
                        if (v34)
                        {
                          *v34 = 0;
                        }

                        goto LABEL_31;
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

  value_low = appended;
LABEL_32:
  os_unfair_lock_lock((DerivedStorage + 16));
  if (*DerivedStorage)
  {
    VTEncoderSessionEmitEncodedFrame(*DerivedStorage, a2, value_low, 0, 0);
  }

  os_unfair_lock_unlock((DerivedStorage + 16));
  v31 = FigCFCopyCompactDescription();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v31)
  {
    CFRelease(v31);
  }

LABEL_36:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  free(v40);
  return value_low;
}

void paravirtualizedVideoEncoder_rememberPendingFramePixelBufferAndUUID(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  os_unfair_lock_lock((DerivedStorage + 84));
  CFDictionarySetValue(Mutable, @"PVPixelBuffer", a3);
  v7 = *MEMORY[0x1E695E4C0];
  CFDictionarySetValue(Mutable, @"PVEncodeFrameDidComplete", *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(Mutable, @"PVFrameWasEmitted", v7);
  CFDictionarySetValue(*(DerivedStorage + 88), a2, Mutable);
  CFDictionaryGetCount(*(DerivedStorage + 88));
  os_unfair_lock_unlock((DerivedStorage + 84));
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void OUTLINED_FUNCTION_4_8()
{

  VTParavirtualizationMessageGetSInt32();
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return __maskrune(v0, 0x40000uLL);
}

uint64_t RegisterVTHDRPerFrameMetadataGenerationSession()
{
  result = _CFRuntimeRegisterClass();
  sVTHDRPerFrameMetadataGenerationSessionID = result;
  return result;
}

uint64_t VTHDRPerFrameMetadataGenerationSessionCreate(uint64_t a1, float a2, uint64_t a3, uint64_t *a4)
{
  v10 = 0;
  if (!a4)
  {
    return 4294954394;
  }

  if (a2 <= 0.0)
  {
    VTHDRPerFrameMetadataGenerationSessionCreate_cold_1(&v11);
    return v11;
  }

  else
  {
    MEMORY[0x193AE3010](&VTHDRPerFrameMetadataGenerationSessionGetTypeID_sRegisterVTHDRPerFrameMetadataGenerationSessionOnce, RegisterVTHDRPerFrameMetadataGenerationSession);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v8 = Instance;
      *(Instance + 17) = 1;
      *(Instance + 20) = a2;
      FigCFDictionaryGetValue();
      result = FigCFArrayContainsValue();
      *(v8 + 24) = result;
      if (result)
      {
        result = VTHDRMetadataGenerationSessionCreate(a1, 4, 0, &v10);
        *(v8 + 32) = v10;
      }

      *a4 = v8;
    }

    else
    {
      return 4294954392;
    }
  }

  return result;
}

uint64_t VTHDRPerFrameMetadataGenerationSessionAttachMetadata(uint64_t a1, CVBufferRef buffer, int a3)
{
  v17 = 0;
  v16 = 0;
  v15 = 0;
  memset(v14, 0, 108);
  if (!buffer)
  {
    VTHDRPerFrameMetadataGenerationSessionAttachMetadata_cold_3(&v18);
    DataFromStatistics = v18;
    goto LABEL_19;
  }

  v6 = CVBufferCopyAttachment(buffer, *MEMORY[0x1E6965F30], 0);
  v7 = v6;
  if (v6 && *(a1 + 17))
  {
    *(a1 + 17) = 0;
    *(a1 + 48) = CFRetain(v6);
  }

  else if (!FigCFEqual())
  {
    VTHDRPerFrameMetadataGenerationSessionAttachMetadata_cold_2(&v18);
    DataFromStatistics = v18;
    goto LABEL_17;
  }

  if ((FigCFEqual() || FigCFEqual()) && FigCFEqual() && *(a1 + 24))
  {
    v8 = *MEMORY[0x1E6965E48];
    CVBufferRemoveAttachment(buffer, *MEMORY[0x1E6965E48]);
    v9 = *(a1 + 40);
    if (v9)
    {
      goto LABEL_13;
    }

    v10 = VTHDRImageStatisticsGenerationSessionCreate(*(a1 + 56), 0, (a1 + 40));
    if (!v10)
    {
      v9 = *(a1 + 40);
LABEL_13:
      Statistics = VTHDRImageStatisticsGenerationSessionCreateStatistics(v9, buffer, &v17 + 4, &v17, &v16 + 4, &v16);
      if (Statistics)
      {
        DataFromStatistics = Statistics;
      }

      else
      {
        DataFromStatistics = VTHDRMetadataGenerationSessionCreateDataFromStatistics(*(a1 + 32), 0, 1, v14, a3, &v15);
        if (!DataFromStatistics)
        {
          CVBufferSetAttachment(buffer, v8, v15, kCVAttachmentMode_ShouldPropagate);
        }
      }

      goto LABEL_17;
    }

    DataFromStatistics = v10;
    VTHDRPerFrameMetadataGenerationSessionAttachMetadata_cold_1();
  }

  else
  {
    DataFromStatistics = 0;
  }

LABEL_17:
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_19:
  if (v15)
  {
    CFRelease(v15);
  }

  return DataFromStatistics;
}

void VTHDRPerFrameMetadataGenerationSessionFinalize(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

__CFString *VTHDRPerFrameMetadataGenerationSessionCopyDebugDesc(unsigned __int8 *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<VTHDRPerFrameMetadataGenerationSession %p [%p]>{invalid:%d, }", a1, v4, a1[16]);
  return Mutable;
}

uint64_t VTShouldRunVideoDecodersInProcess()
{
  if (VTShouldRunVideoDecodersInProcess_entitlementCheckOnce != -1)
  {
    VTShouldRunVideoDecodersInProcess_cold_1();
  }

  return byte_1ED6D4143;
}

uint64_t __VTShouldRunVideoDecodersInProcess_block_invoke()
{
  if (currentProcessHasTrueBooleanEntitlement(@"com.apple.videotoolbox.decode-in-process"))
  {
    byte_1ED6D4143 = 1;
  }

  result = VTVideoCodecService_ShouldUseOOPDecodeForVideoPlayer();
  if (result)
  {
    result = FigServer_IsMediaplaybackd();
    if (result)
    {
      byte_1ED6D4143 = 0;
    }
  }

  return result;
}

uint64_t currentProcessHasTrueBooleanEntitlement(const __CFString *a1)
{
  error = 0;
  v2 = SecTaskCreateFromSelf(0);
  v3 = v2;
  if (!v2)
  {
    currentProcessHasTrueBooleanEntitlement_cold_1();
    goto LABEL_8;
  }

  v4 = SecTaskCopyValueForEntitlement(v2, a1, &error);
  if (!v4)
  {
LABEL_8:
    Value = 0;
    goto LABEL_9;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v5);
  }

  else
  {
    Value = 0;
  }

  CFRelease(v5);
LABEL_9:
  if (error)
  {
    CFRelease(error);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return Value;
}

uint64_t VTShouldRunVideoEncodersInProcess()
{
  if (VTShouldRunVideoEncodersInProcess_entitlementCheckOnce != -1)
  {
    VTShouldRunVideoEncodersInProcess_cold_1();
  }

  return byte_1ED6D4144;
}

uint64_t __VTShouldRunVideoEncodersInProcess_block_invoke()
{
  result = currentProcessHasTrueBooleanEntitlement(@"com.apple.videotoolbox.encode-in-process");
  if (result)
  {
    byte_1ED6D4144 = 1;
  }

  return result;
}

uint64_t VTSetVideoDecoderRestrictions(uint64_t result)
{
  if ((result & 8) != 0)
  {
    _MergedGlobals_10 = 1;
    if ((result & 4) == 0)
    {
LABEL_3:
      if ((result & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((result & 4) == 0)
  {
    goto LABEL_3;
  }

  byte_1ED6D4141 = 1;
  if ((result & 2) == 0)
  {
LABEL_4:
    if ((result & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  byte_1ED6D4142 = 1;
  if ((result & 1) == 0)
  {
LABEL_5:
    if ((result & 0x40) == 0)
    {
      return result;
    }

LABEL_11:
    sVTShouldRegisterLimitedSystemDecodersOnlyAndWithoutValidation = 1;
    return result;
  }

LABEL_10:
  byte_1ED6D4143 = 1;
  if ((result & 0x40) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t VTApplyRestrictions(uint64_t a1)
{
  if (VTHasVideoDecoderRegistryBeenCreated())
  {
    VTApplyRestrictions_cold_1(&v3);
    return v3;
  }

  else if (VTHasVideoEncoderRegistryBeenCreated())
  {
    VTApplyRestrictions_cold_2(&v4);
    return v4;
  }

  else
  {
    VTSetVideoDecoderRestrictions(a1);
    if ((a1 & 0x10) != 0)
    {
      byte_1ED6D4144 = 1;
    }

    result = 0;
    if ((a1 & 0x20) != 0)
    {
      byte_1ED6D4145 = 1;
    }
  }

  return result;
}

uint64_t VTTestMode(int a1)
{
  result = os_variant_has_internal_content();
  if (!result)
  {
    goto LABEL_15;
  }

  if (a1 > 960786992)
  {
    switch(a1)
    {
      case 960786993:
        sVTUseVeryShortTimeouts = 0;
        break;
      case 1193481106:
        byte_1ED6D4144 = 0;
        break;
      case 1915828532:
        sVTUseVeryShortTimeouts = 1;
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(a1)
    {
      case 658674451:
        byte_1ED6D4143 = 1;
        break;
      case 691090036:
        byte_1ED6D4144 = 1;
        break;
      case 825828466:
        byte_1ED6D4143 = 0;
        return result;
      default:
LABEL_15:
        abort();
    }
  }

  return result;
}

double dsrxpc_Init(_OWORD *a1)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void dsrxpc_Finalize(void *a1)
{
  VTDecompressionSessionRemoteXPC_Invalidate(a1);
  v2 = a1[15];
  if (v2)
  {
    dispatch_release(v2);
    a1[15] = 0;
  }

  v3 = a1[16];
  if (v3)
  {
    dispatch_release(v3);
    a1[16] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  FigSimpleMutexDestroy();
  a1[6] = 0;
  FigSemaphoreDestroy();
  a1[7] = 0;
  FigSemaphoreDestroy();
  a1[9] = 0;
  FigSemaphoreDestroy();
  a1[11] = 0;
  FigSemaphoreDestroy();
  a1[13] = 0;
  FigSimpleMutexDestroy();
  a1[17] = 0;
  v5 = a1[19];
  if (v5)
  {
    CFRelease(v5);
    a1[19] = 0;
  }

  v6 = a1[30];
  if (v6)
  {
    CFRelease(v6);
    a1[30] = 0;
  }

  v7 = a1[26];
  if (v7)
  {
    CFRelease(v7);
    a1[26] = 0;
  }

  v8 = a1[18];
  if (v8)
  {
    CFRelease(v8);
    a1[18] = 0;
  }

  v9 = a1[21];
  if (v9)
  {
    CFRelease(v9);
    a1[21] = 0;
  }

  v10 = a1[20];
  if (v10)
  {
    CFRelease(v10);
    a1[20] = 0;
  }

  v11 = a1[31];
  if (v11)
  {
    CFRelease(v11);
    a1[31] = 0;
  }

  v12 = a1[32];
  if (v12)
  {
    CFRelease(v12);
    a1[32] = 0;
  }

  v13 = a1[34];
  if (v13)
  {
    CFRelease(v13);
    a1[34] = 0;
  }

  a1[33] = 0;
}

uint64_t __VTDecompressionSessionXPCRemoteGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  VTDecompressionSessionXPCRemoteGetTypeID_sVTDecompressionSessionXPCRemoteID = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_Create(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, _OWORD *a6, uint64_t a7, CFTypeRef *a8)
{
  v29 = *MEMORY[0x1E69E9840];
  cf = 0;
  memset(buffer, 0, sizeof(buffer));
  if (!a1)
  {
    VTDecompressionSessionRemoteXPC_Create_cold_1(&v27);
    v20 = 0;
    v24 = v27;
    goto LABEL_33;
  }

  v15 = dsrxpc_oneTimeInitialization();
  if (v15)
  {
    goto LABEL_29;
  }

  v15 = dsrxpc_copyPixelBufferRecipient(0);
  if (v15)
  {
    goto LABEL_29;
  }

  v15 = FigXPCRemoteClientCopyMemoryOrigin();
  if (v15)
  {
    goto LABEL_29;
  }

  v15 = FigXPCRemoteClientCopyMemoryRecipient();
  if (v15)
  {
    goto LABEL_29;
  }

  v15 = dsrxpc_CreateNewSession(a1, 0, a2, &cf);
  if (v15)
  {
    goto LABEL_29;
  }

  v16 = cf;
  *(cf + 280) = 1;
  if (a6)
  {
    v16[11] = *a6;
  }

  v15 = FigXPCCreateBasicMessage();
  if (v15 || (v17 = getpid(), proc_name(v17, buffer, 0x20u), xpc_dictionary_set_string(0, *MEMORY[0x1E69615B8], buffer), v15 = FigXPCMessageSetFormatDescription(), v15))
  {
LABEL_29:
    v24 = v15;
    goto LABEL_30;
  }

  if (!a4)
  {
    v20 = 0;
    goto LABEL_18;
  }

  if (CFDictionaryContainsKey(a4, @"CMSession"))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a4);
    if (MutableCopy)
    {
      v19 = MutableCopy;
      CFDictionaryRemoveValue(MutableCopy, @"CMSession");
      v20 = v19;
      goto LABEL_17;
    }

    v24 = 0;
LABEL_30:
    v20 = 0;
    goto LABEL_33;
  }

  v20 = 0;
LABEL_17:
  v21 = FigXPCMessageSetCFDictionary();
  if (v21)
  {
LABEL_31:
    v24 = v21;
    goto LABEL_33;
  }

LABEL_18:
  if (a7)
  {
    v21 = FigXPCMessageSetCFDictionary();
    if (v21)
    {
      goto LABEL_31;
    }
  }

  if (a5)
  {
    v21 = FigXPCMessageSetCFDictionary();
    if (v21)
    {
      goto LABEL_31;
    }
  }

  if (FigServer_IsServerProcess())
  {
    xpc_dictionary_set_BOOL(0, "ClientNeverSuspends", 1);
  }

  v21 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v21)
  {
    goto LABEL_31;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  *(cf + 2) = uint64;
  v21 = FigXPCRemoteClientAssociateObject();
  if (v21)
  {
    goto LABEL_31;
  }

  started = FigStartMonitoringMediaServicesProcessDeath();
  v24 = started;
  if (a8 && !started)
  {
    *a8 = cf;
    cf = 0;
    goto LABEL_35;
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_35:
  if (v20)
  {
    CFRelease(v20);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v24;
}

uint64_t dsrxpc_oneTimeInitialization()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __dsrxpc_oneTimeInitialization_block_invoke;
  block[3] = &unk_1E72C84A0;
  block[4] = &v3;
  if (dsrxpc_oneTimeInitialization_once != -1)
  {
    dispatch_once(&dsrxpc_oneTimeInitialization_once, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t dsrxpc_CreateNewSession(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    if (VTDecompressionSessionXPCRemoteGetTypeID_once != -1)
    {
      dsrxpc_CreateNewSession_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v8 = Instance;
      if ((a1 != 0) == (a2 != 0))
      {
        dsrxpc_CreateNewSession_cold_2(Instance, &v13);
        return v13;
      }

      else
      {
        if (a1 | a2)
        {
          Instance[20] = FigCFWeakReferenceHolderCreateWithReferencedObject();
        }

        *(v8 + 12) = 0;
        *(v8 + 7) = 0;
        v8[15] = dispatch_group_create();
        v8[16] = dispatch_queue_create("com.apple.coremedia.decompressionsession.clientcallbackret", 0);
        v8[4] = 1;
        v8[7] = FigSemaphoreCreate();
        v9 = FigSemaphoreCreate();
        v8[8] = 0;
        v8[9] = v9;
        *(v8 + 20) = 0;
        v8[26] = 0;
        v8[5] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        v8[6] = FigSimpleMutexCreate();
        v10 = FigSimpleMutexCreate();
        v8[18] = 0;
        v8[19] = 0;
        v8[17] = v10;
        v8[11] = FigSemaphoreCreate();
        *(v8 + 24) = 0;
        v11 = FigSemaphoreCreate();
        result = 0;
        v8[13] = v11;
        *(v8 + 28) = 0;
        *a4 = v8;
      }
    }

    else
    {
      dsrxpc_CreateNewSession_cold_3(&v14);
      return v14;
    }
  }

  else
  {
    dsrxpc_CreateNewSession_cold_4(&v15);
    return v15;
  }

  return result;
}

uint64_t VTTileDecompressionSessionRemoteXPC_Create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CFTypeRef *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  cf = 0;
  memset(buffer, 0, sizeof(buffer));
  v13 = dsrxpc_oneTimeInitialization();
  if (v13)
  {
    goto LABEL_15;
  }

  v13 = FigXPCRemoteClientCopyMemoryOrigin();
  if (v13)
  {
    goto LABEL_15;
  }

  v13 = FigXPCRemoteClientCopyMemoryRecipient();
  if (v13)
  {
    goto LABEL_15;
  }

  v13 = dsrxpc_CreateNewSession(0, a1, a2, &cf);
  if (v13)
  {
    goto LABEL_15;
  }

  v14 = cf;
  *(cf + 28) = a6;
  v14[29] = a5;
  *(v14 + 280) = 0;
  v13 = FigXPCCreateBasicMessage();
  if (v13)
  {
    goto LABEL_15;
  }

  v15 = getpid();
  proc_name(v15, buffer, 0x20u);
  xpc_dictionary_set_string(0, *MEMORY[0x1E69615B8], buffer);
  v13 = FigXPCMessageSetFormatDescription();
  if (v13)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    v13 = FigXPCMessageSetCFDictionary();
    if (v13)
    {
      goto LABEL_15;
    }
  }

  if (FigServer_IsServerProcess())
  {
    xpc_dictionary_set_BOOL(0, "ClientNeverSuspends", 1);
  }

  v13 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v13)
  {
LABEL_15:
    v18 = v13;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
    *(cf + 2) = uint64;
    v17 = FigXPCRemoteClientAssociateObject();
    v18 = v17;
    if (a7 && !v17)
    {
      *a7 = cf;
      cf = 0;
      goto LABEL_18;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_18:
  FigXPCRelease();
  FigXPCRelease();
  return v18;
}

uint64_t dsrxpc_DecodeFrameCommon(uint64_t a1, opaqueCMSampleBuffer *a2, unsigned int a3, const __CFDictionary *a4, uint64_t a5, _DWORD *a6, const void *a7, const void *a8)
{
  v36 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v31 = 0;
  if (*(a1 + 24))
  {
    dsrxpc_DecodeFrameCommon_cold_1(&v30);
LABEL_49:
    v17 = 0;
    value_low = LODWORD(v30.value);
    goto LABEL_15;
  }

  if (*(a1 + 25))
  {
    dsrxpc_DecodeFrameCommon_cold_2(&v30);
    goto LABEL_49;
  }

  if (*(a1 + 28))
  {
    dsrxpc_DecodeFrameCommon_cold_3(&v30);
    goto LABEL_49;
  }

  FigSimpleMutexLock();
  v15 = *(a1 + 32);
  NumSamples = CMSampleBufferGetNumSamples(a2);
  CMSampleBufferGetOutputPresentationTimeStamp(&v30, a2);
  v17 = DSRXPC_PendingFrameInfoCreate(v15, a5, a7, a8, NumSamples, &v30.value, a4);
  if (!v17)
  {
    FigSimpleMutexUnlock();
    fig_log_get_emitter();
    value_low = FigSignalErrorAtGM();
LABEL_15:
    v23 = 1;
    goto LABEL_40;
  }

  v18 = *(a1 + 40);
  ++*(a1 + 32);
  CFArrayAppendValue(v18, v17);
  FigSimpleMutexUnlock();
  v19 = FigXPCRemoteClientCopyMemoryOrigin();
  if (v19)
  {
    goto LABEL_45;
  }

  if (!*(a1 + 248))
  {
    goto LABEL_16;
  }

  if (!*(a1 + 256))
  {
    *(a1 + 256) = FigCopyCommonMemoryPool();
  }

  if (!*(a1 + 264))
  {
    *(a1 + 264) = MEMORY[0x193AE2FD0]();
  }

  v20 = FigOSEventLinkRemoteFillMessageBufferThenSendItAndHandleReply();
  value_low = v20;
  if (!v20)
  {
    v22 = 0;
    goto LABEL_32;
  }

  if (v20 != -19428)
  {
LABEL_16:
    v19 = FigXPCCreateBasicMessage();
    if (!v19)
    {
      if (qword_1ED6D41A8 != -1)
      {
        dsrxpc_DecodeFrameCommon_cold_4();
      }

      v19 = FigXPCMessageAddCMSampleBufferForPID();
      if (!v19)
      {
        xpc_dictionary_set_uint64(v36, "FrameRefCon", v17[2]);
        xpc_dictionary_set_uint64(v36, "DecoderFlags", a3);
        if (a8)
        {
          xpc_dictionary_set_BOOL(v36, "RequiresMultiImageOutputHandler", 1);
        }

        v19 = FigXPCMessageSetCFDictionary();
        if (!v19)
        {
          v19 = FigXPCRemoteClientSendSyncMessage();
          if (!v19)
          {
            if (!*(a1 + 25))
            {
              v24 = 1;
              do
              {
                if (*(a1 + 28))
                {
                  break;
                }

                if (FigSemaphoreWaitRelative() != -12792)
                {
                  break;
                }

                v24 *= 2;
              }

              while (!*(a1 + 25));
            }

            value_low = *(a1 + 64);
            *(v33 + 6) = *(a1 + 68);
            v22 = value_low != 0;
            goto LABEL_32;
          }
        }
      }
    }

LABEL_45:
    v27 = v19;
    v25 = a1;
    v26 = v17;
    goto LABEL_36;
  }

  FigOSEventLinkRemoteInvalidate();
  value_low = 4294947868;
  v22 = 1;
LABEL_32:
  *(a1 + 64) = 0;
  if (a6)
  {
    *a6 = *(v33 + 6);
  }

  if (a3 & !v22)
  {
    v23 = 0;
    goto LABEL_40;
  }

  v25 = a1;
  v26 = v17;
  v27 = value_low;
LABEL_36:
  dsrxpc_emitPendingFramesForOneSampleWithError(v25, v26, v27);
  if ((a3 & 1) == 0)
  {
    dispatch_group_wait(*(a1 + 120), 0xFFFFFFFFFFFFFFFFLL);
  }

  v23 = 0;
  value_low = 0;
LABEL_40:
  if (v31)
  {
    CFRelease(v31);
  }

  FigXPCRelease();
  if ((v23 & 1) == 0)
  {
    CFRelease(v17);
  }

  _Block_object_dispose(&v32, 8);
  return value_low;
}

uint64_t VTDecompressionSessionRemoteXPC_DecodeFrameWithOutputHandler(uint64_t a1, opaqueCMSampleBuffer *a2, unsigned int a3, const __CFDictionary *a4, _DWORD *a5, unint64_t a6, unint64_t a7)
{
  if (a6 | a7)
  {

    return dsrxpc_DecodeFrameCommon(a1, a2, a3, a4, 0, a5, a6, a7);
  }

  else
  {
    v11 = v7;
    v12 = v8;
    VTDecompressionSessionRemoteXPC_DecodeFrameWithOutputHandler_cold_1(&v10);
    return v10;
  }
}

uint64_t VTDecompressionSessionRemoteXPC_DecodeTile(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unsigned int a7, uint64_t a8, _DWORD *a9)
{
  cf = 0;
  xdict = 0;
  if (*(a1 + 24))
  {
    VTDecompressionSessionRemoteXPC_DecodeTile_cold_1(&v31);
LABEL_42:
    v17 = 0;
    value_low = LODWORD(v31.value);
    goto LABEL_8;
  }

  if (*(a1 + 25))
  {
    VTDecompressionSessionRemoteXPC_DecodeTile_cold_2(&v31);
    goto LABEL_42;
  }

  if (*(a1 + 28))
  {
    VTDecompressionSessionRemoteXPC_DecodeTile_cold_3(&v31);
    goto LABEL_42;
  }

  FigSimpleMutexLock();
  v16 = *(a1 + 32);
  CMSampleBufferGetOutputPresentationTimeStamp(&v31, a2);
  v17 = DSRXPC_PendingFrameInfoCreate(v16, a8, 0, 0, 1, &v31.value, 0);
  if (!v17)
  {
    FigSimpleMutexUnlock();
    fig_log_get_emitter();
    value_low = FigSignalErrorAtGM();
LABEL_8:
    v20 = 1;
    goto LABEL_28;
  }

  ++*(a1 + 32);
  if (a5)
  {
    v18 = CFRetain(a5);
  }

  else
  {
    v18 = 0;
  }

  v17[11] = v18;
  v17[12] = a3;
  v17[13] = a4;
  v17[14] = a6;
  CFArrayAppendValue(*(a1 + 40), v17);
  FigSimpleMutexUnlock();
  v21 = FigXPCCreateBasicMessage();
  if (v21)
  {
    value = v21;
    v23 = a7;
  }

  else
  {
    v22 = FigXPCRemoteClientCopyMemoryOrigin();
    v23 = a7;
    if (v22 || (v22 = VTAddCMSampleBufferToXPCMessage(a2, cf, a1 + 168, a1 + 240, xdict)) != 0)
    {
LABEL_38:
      value = v22;
      goto LABEL_25;
    }

    if (FigCFEqual())
    {
LABEL_19:
      xpc_dictionary_set_uint64(xdict, "FrameRefCon", v17[2]);
      xpc_dictionary_set_uint64(xdict, "DecoderFlags", a7);
      xpc_dictionary_set_uint64(xdict, "TileCropOffsetXY", (a3 << 32) | (a3 >> 32));
      xpc_dictionary_set_uint64(xdict, "TileCropDimensionWH", (a4 << 32) | (a4 >> 32));
      xpc_dictionary_set_uint64(xdict, "OffsetInImageBufferXY", (a6 << 32) | (a6 >> 32));
      v22 = FigXPCRemoteClientSendSyncMessage();
      if (!v22)
      {
        if (!*(a1 + 25))
        {
          v29 = 1;
          do
          {
            if (*(a1 + 28))
            {
              break;
            }

            if (FigSemaphoreWaitRelative() != -12792)
            {
              break;
            }

            v29 *= 2;
          }

          while (!*(a1 + 25));
        }

        value = *(a1 + 64);
        if (a9)
        {
          *a9 = *(a1 + 68);
        }

        *(a1 + 64) = 0;
        if ((a7 & 1) != 0 && !value)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }

      goto LABEL_38;
    }

    IOSurface = CVPixelBufferGetIOSurface(a5);
    if (IOSurface)
    {
      XPCObject = IOSurfaceCreateXPCObject(IOSurface);
      xpc_dictionary_set_value(xdict, "CanvasioSurface", XPCObject);
      FigXPCRelease();
      v26 = *(a1 + 208);
      *(a1 + 208) = a5;
      if (a5)
      {
        CFRetain(a5);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      goto LABEL_19;
    }

    VTDecompressionSessionRemoteXPC_DecodeTile_cold_4(&v31);
    value = v31.value;
  }

LABEL_25:
  dsrxpc_emitPendingFramesForOneSampleWithError(a1, v17, value);
  if ((v23 & 1) == 0)
  {
    dispatch_group_wait(*(a1 + 120), 0xFFFFFFFFFFFFFFFFLL);
  }

LABEL_27:
  v20 = 0;
  value_low = 0;
LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  if ((v20 & 1) == 0)
  {
    CFRelease(v17);
  }

  return value_low;
}

uint64_t DSRXPC_PendingFrameInfoCreate(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5, __int128 *a6, const __CFDictionary *a7)
{
  if (DSRXPC_PendingFrameInfoGetTypeID_once != -1)
  {
    DSRXPC_PendingFrameInfoCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = a1;
  *(Instance + 24) = a2;
  *(Instance + 48) = _Block_copy(a3);
  *(Instance + 56) = _Block_copy(a4);
  *(Instance + 32) = a5;
  *(Instance + 40) = a5;
  v15 = *a6;
  *(Instance + 80) = *(a6 + 2);
  *(Instance + 64) = v15;
  *(Instance + 120) = VTDecompressionSessionCopyAnalysisOptions(a7);
  return Instance;
}

uint64_t dsrxpc_emitPendingFramesForOneSampleWithError(void *a1, uint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 4294954385;
  }

  result = dsrxpc_tryDecrementPendingFrameInfoOutstandingEmitCountToEmit(a1, a2[2]);
  if (result)
  {
    v7 = MEMORY[0x1E6960C70];
    do
    {
      v8 = a1[29];
      if (v8)
      {
        v8(a1[28], a2[3], a2[12], a2[13], a2[11], a2[14], v5, 2);
      }

      else
      {
        v9 = a1[24];
        if (v9)
        {
          v13 = a1[25];
        }

        else
        {
          v10 = a2[7];
          if (v10)
          {
            v15 = *(v10 + 16);
            v18 = *v7;
            v19 = *(v7 + 2);
            v16 = v18;
            v17 = v19;
            v15(v10, v5, 2, 0, 0, &v18, &v16);
            goto LABEL_16;
          }

          v9 = a1[22];
          if (!v9)
          {
            v11 = a2[6];
            if (v11)
            {
              v12 = *(v11 + 16);
              v18 = *v7;
              v19 = *(v7 + 2);
              v16 = v18;
              v17 = v19;
              v12(v11, v5, 2, 0, &v18, &v16);
            }

            goto LABEL_16;
          }

          v13 = a1[23];
        }

        v14 = a2[3];
        v18 = *v7;
        v19 = *(v7 + 2);
        v16 = v18;
        v17 = v19;
        v9(v13, v14, v5, 2, 0, &v18, &v16);
      }

LABEL_16:
      dsrxpc_decrementPendingFrameInfoOutstandingSampleCount(a1, a2[2]);
      result = dsrxpc_tryDecrementPendingFrameInfoOutstandingEmitCountToEmit(a1, a2[2]);
    }

    while (result);
  }

  return result;
}

uint64_t VTDecompressionSessionRemoteXPC_CopySupportedPropertyDictionary(uint64_t a1)
{
  if (*(a1 + 24))
  {
    VTDecompressionSessionRemoteXPC_CopySupportedPropertyDictionary_cold_1(&v2);
    return v2;
  }

  else if (*(a1 + 25))
  {
    VTDecompressionSessionRemoteXPC_CopySupportedPropertyDictionary_cold_2(&v3);
    return v3;
  }

  else if (*(a1 + 28))
  {
    VTDecompressionSessionRemoteXPC_CopySupportedPropertyDictionary_cold_3(&v4);
    return v4;
  }

  else
  {

    return dsrxpc_copyDictionary();
  }
}

uint64_t VTDecompressionSessionRemoteXPC_CopySerializableProperties(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 24))
  {
    VTDecompressionSessionRemoteXPC_CopySerializableProperties_cold_1(&v6);
    return v6;
  }

  if (*(a1 + 25))
  {
    VTDecompressionSessionRemoteXPC_CopySerializableProperties_cold_2(&v6);
    return v6;
  }

  if (*(a1 + 28))
  {
    VTDecompressionSessionRemoteXPC_CopySerializableProperties_cold_3(&v6);
    return v6;
  }

  v4 = dsrxpc_copyDictionary();
  if (!v4)
  {
    *a3 = 0;
  }

  return v4;
}

uint64_t VTDecompressionSessionRemoteXPC_WaitForAsynchronousFrames(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v5 = v1;
    v6 = v2;
    VTDecompressionSessionRemoteXPC_WaitForAsynchronousFrames_cold_1(&v4);
    return v4;
  }

  else
  {

    return dsrxpc_waitForAsynchronousFrames(a1);
  }
}

uint64_t VTDecompressionSessionRemoteXPC_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1, CMTime *a2, CMTime *a3)
{
  if (*(a1 + 28))
  {
    VTDecompressionSessionRemoteXPC_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded_cold_1(&v15);
    return LODWORD(v15.value);
  }

  else
  {
    v15 = **&MEMORY[0x1E6960C88];
    v14 = **&MEMORY[0x1E6960C80];
    if (*(a1 + 40))
    {
      FigSimpleMutexLock();
      v6 = *(a1 + 40);
      if (v6)
      {
        Count = CFArrayGetCount(v6);
        if (Count >= 1)
        {
          v8 = Count;
          for (i = 0; i != v8; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), i);
            time1 = v15;
            v12 = *(ValueAtIndex + 64);
            CMTimeMinimum(&v15, &time1, &v12);
            time1 = v14;
            v12 = *(ValueAtIndex + 64);
            CMTimeMaximum(&v14, &time1, &v12);
          }
        }
      }

      FigSimpleMutexUnlock();
    }

    if (a2)
    {
      *a2 = v15;
    }

    if (a3)
    {
      *a3 = v14;
    }

    return 0;
  }
}

void __dsrxpc_oneTimeInitialization_block_invoke(uint64_t a1)
{
  qword_1ED6D4190 = FigSimpleMutexCreate();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (gXPCRemoteClientUseHighPriorityQueue == 1)
  {
    FigCFDictionarySetInt32();
  }

  VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode();
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t dsrxpc_xpcClient_DeadServerConnectionCallback()
{
  FigSimpleMutexLock();
  if (qword_1ED6D4198)
  {
    CFRelease(qword_1ED6D4198);
    qword_1ED6D4198 = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t dsrxpc_handleServerSessionIsGone(_DWORD *cf)
{
  if (!cf)
  {
    dsrxpc_handleServerSessionIsGone_cold_3(&v5);
    return v5;
  }

  if (cf[7])
  {
    dsrxpc_handleServerSessionIsGone_cold_1(&v5);
    return v5;
  }

  if (*(cf + 25))
  {
    dsrxpc_handleServerSessionIsGone_cold_2(&v5);
    return v5;
  }

  *(cf + 25) = 1;
  CFRetain(cf);
  v2 = *(cf + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __dsrxpc_handleServerSessionIsGone_block_invoke;
  v4[3] = &__block_descriptor_tmp_11_2;
  v4[4] = cf;
  dispatch_async(v2, v4);
  if (*(cf + 7))
  {
    FigSemaphoreSignal();
  }

  if (*(cf + 9))
  {
    FigSemaphoreSignal();
  }

  if (*(cf + 11))
  {
    FigSemaphoreSignal();
  }

  result = *(cf + 13);
  if (result)
  {
    FigSemaphoreSignal();
    return 0;
  }

  return result;
}

void dsrxpc_handleEmitFrame(uint64_t a1, uint64_t *a2, __CVBuffer *a3, uint64_t a4, unsigned int a5, __int128 *a6, __int128 *a7)
{
  v30 = a3;
  v29 = a5;
  if (*(a1 + 280))
  {
    v12 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v12)
    {
      v13 = v12;
      v14 = a2[15];
      v27 = *a6;
      v28 = *(a6 + 2);
      VTDecompressionSessionAnalyzeAndInterruptFrame(v12, a4, &v27, v14, &v29, &v30);
      CFRelease(v13);
    }
  }

  v15 = *(a1 + 176);
  if (v15)
  {
    v19 = *(a1 + 184);
    v20 = a2[3];
    v27 = *a6;
    v28 = *(a6 + 2);
    v25 = *a7;
    v26 = *(a7 + 2);
    v15(v19, v20, a4, v29, v30, &v27, &v25);
  }

  else
  {
    v16 = a2[6];
    if (v16)
    {
      v21 = *(v16 + 16);
      v27 = *a6;
      v28 = *(a6 + 2);
      v25 = *a7;
      v26 = *(a7 + 2);
      v21(v16, a4, v29, v30, &v27, &v25);
    }

    else
    {
      v17 = a2[7];
      if (v17)
      {
        v18 = *(v17 + 16);
        v27 = *a6;
        v28 = *(a6 + 2);
        v25 = *a7;
        v26 = *(a7 + 2);
        v18(v17, a4, v29, v30, 0, &v27, &v25);
      }
    }
  }

  if ((v29 & 0x10) != 0 && v30)
  {
    CFRelease(v30);
  }

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

CFArrayRef __dsrxpc_sampleBufferAttachmentsKeysToDrop_block_invoke()
{
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  result = CFArrayCreate(AllocatorForPermanentAllocations, MEMORY[0x1E6960500], 1, MEMORY[0x1E695E9C0]);
  qword_1ED6D41A0 = result;
  return result;
}

double dsrxpc_pfi_Init(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void dsrxpc_pfi_Finalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[15];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t __dsrxpc_prepareForCallsOfDecodeFrameFromConsistentThread_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  _MergedGlobals_11 = result;
  return result;
}

double __dsrxpc_waitForAsynchronousFrames_block_invoke(uint64_t a1, CMBlockBufferRef theBuffer)
{
  v6 = 0;
  dataPointerOut = 0;
  if (!CMBlockBufferGetDataPointer(theBuffer, 0, &v6, 0, &dataPointerOut))
  {
    v4 = dataPointerOut;
    if ((dataPointerOut & 7) == 0 && v6 > 0xA7)
    {
      *(dataPointerOut + 20) = 0;
      result = 0.0;
      *(v4 + 8) = 0u;
      *(v4 + 9) = 0u;
      *(v4 + 6) = 0u;
      *(v4 + 7) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 5) = 0u;
      *(v4 + 2) = 0u;
      *(v4 + 3) = 0u;
      *v4 = 0u;
      *(v4 + 1) = 0u;
      v5 = dataPointerOut;
      *dataPointerOut = *(*(a1 + 32) + 16);
      *(v5 + 2) = 2003198310;
    }
  }

  return result;
}

int64_t OUTLINED_FUNCTION_10_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 2192);

  return xpc_dictionary_get_int64(v1, v3);
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(*(v1 + 40) + 16);

  return dsrxpc_tryDecrementPendingFrameInfoOutstandingEmitCountToEmit(v3, v4);
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return FigXPCCreateBasicMessage();
}

uint64_t OUTLINED_FUNCTION_16_2()
{
  v3 = *(v0 + 2136);

  return xpc_dictionary_get_uint64(v1, v3);
}

uint64_t DecodeBlocks(uint64_t a1, unsigned __int8 **a2, char *a3, _BYTE *a4, uint64_t a5)
{
  v7 = a3;
  v10 = *(a1 + 3274);
  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = (a1 + 3400);
    v13 = *(a1 + 3274);
    do
    {
      v14 = *v12++;
      v11 += v14;
      --v13;
    }

    while (v13);
  }

  v15 = -12902;
  if (v11 > 48 || v10 > 5)
  {
    return v15;
  }

  v16 = 4 * v11;
  if ((v16 & 0xFFFC) != 0)
  {
    bzero(a3, 32 * v16);
  }

  v17 = *(a2 + 2);
  v18 = *(a2 + 3);
  v19 = *a2;
  if (v10 < 1)
  {
LABEL_214:
    v15 = 0;
    *a4 = 0;
    *(a2 + 2) = v17;
    *(a2 + 3) = v18;
    *a2 = v19;
    return v15;
  }

  v20 = 0;
  v21 = &a2[7][a2[3]];
  v22 = (v21 - 1);
  v23 = (v21 - 6);
  v24 = a1 + 3280;
  v25 = a1 + 3320;
  v26 = *(a2 + 5);
  v27 = a1 + 3360;
  v28 = a1 + 3400;
  v83 = (v21 - 2);
  while (*(v28 + v20) < 1)
  {
LABEL_213:
    if (++v20 >= v10)
    {
      goto LABEL_214;
    }
  }

  LOWORD(v29) = 0;
  v30 = *(v24 + 8 * v20);
  v31 = *(v25 + 8 * v20);
  v85 = *(v31 + 8);
  v82 = *(v31 + 16);
  v32 = *(v27 + 8 * v20);
  v33 = *(v32 + 8);
  v34 = *(v32 + 16);
  v35 = *(v30 + 128);
  v36 = 1 << (v35 - 1);
  v37 = *(v32 + 4);
  v84 = 32 - *v31;
  v80 = 32 - *(v31 + 2);
  v81 = *(v31 + 4);
  v38 = 32 - *v32;
  v86 = 32 - *(v32 + 2);
  while (2)
  {
    v39 = *(a5 + 2 * v20);
    if (v18 >= 0x10)
    {
      if (v19 <= v23)
      {
        v40 = *v19;
        v41 = v19 + 2;
        v42 = v19[1];
        if (v26 == v40)
        {
          if (v42 == 216)
          {
            if (*v41 == 255 && v19[3] == 216)
            {
              return -2;
            }

            v42 = 216;
          }

          else if (!v19[1])
          {
            v41 = v19 + 3;
            v42 = v19[2];
          }
        }

        if (v26 == v42)
        {
          if (*v41)
          {
            if (*v41 == 216 && v41[1] == 255 && v41[2] == 216)
            {
              return -2;
            }
          }

          else
          {
            ++v41;
          }
        }

        v17 = (v17 << 16) | (v40 << 8) | v42;
        v18 -= 16;
        v19 = v41;
      }

      else if (v19 <= v22)
      {
        v43 = *v19;
        if ((v19 + 1) <= v22)
        {
          v44 = v19[1];
          v19 += 2;
        }

        else
        {
          v44 = 0;
          ++v19;
        }

        if (v26 == v43)
        {
          if (v44 == 216)
          {
            if (v19 >= v22 || *v19 == 255 && v19[1] == 216)
            {
              return -2;
            }

            v44 = 216;
          }

          else if (!v44)
          {
            if (v19 > v22)
            {
              return -2;
            }

            v45 = *v19++;
            v44 = v45;
          }
        }

        if (v44 == v26 && v19 <= v22)
        {
          if (*v19)
          {
            if (*v19 == 216 && (v19 >= v83 || v19[1] == 255 && v19[2] == 216))
            {
              return -2;
            }
          }

          else
          {
            ++v19;
          }
        }

        v17 = v44 | (v17 << 16) | (v43 << 8);
        v18 -= 16;
      }

      else if (v18 > 0x1F)
      {
        return -2;
      }
    }

    v46 = *(v85 + 2 * ((v17 << v18) >> v84));
    if (v46 <= -31745)
    {
      v18 += v81;
      if (v82)
      {
        v46 = *(v82 + 2 * ((v17 << v18) >> v80));
      }

      if (v46 < -31744)
      {
        return -1;
      }
    }

    if (v46 < 0)
    {
      v47 = (v46 >> 11) & 0xF;
      v39 += v46;
    }

    else
    {
      v18 += v46 >> 8;
      v47 = v46 & 0xF;
      if ((v46 & 0xF) != 0)
      {
        if (v18 >= 0x10)
        {
          if (v19 <= v23)
          {
            v48 = *v19;
            v49 = v19 + 2;
            v50 = v19[1];
            if (v26 == v48)
            {
              if (v50 == 216)
              {
                if (*v49 == 255 && v19[3] == 216)
                {
                  return -2;
                }

                v50 = 216;
              }

              else if (!v19[1])
              {
                v49 = v19 + 3;
                v50 = v19[2];
              }
            }

            if (v26 == v50)
            {
              if (*v49)
              {
                if (*v49 == 216 && v49[1] == 255 && v49[2] == 216)
                {
                  return -2;
                }
              }

              else
              {
                ++v49;
              }
            }

            v17 = (v17 << 16) | (v48 << 8) | v50;
            v18 -= 16;
            v19 = v49;
          }

          else if (v19 <= v22)
          {
            v51 = *v19;
            if ((v19 + 1) <= v22)
            {
              v52 = v19[1];
              v19 += 2;
            }

            else
            {
              v52 = 0;
              ++v19;
            }

            if (v26 == v51)
            {
              if (v52 == 216)
              {
                if (v19 >= v22 || *v19 == 255 && v19[1] == 216)
                {
                  return -2;
                }

                v52 = 216;
              }

              else if (!v52)
              {
                if (v19 > v22)
                {
                  return -2;
                }

                v53 = *v19++;
                v52 = v53;
              }
            }

            if (v52 == v26 && v19 <= v22)
            {
              if (*v19)
              {
                if (*v19 == 216 && (v19 >= v83 || v19[1] == 255 && v19[2] == 216))
                {
                  return -2;
                }
              }

              else
              {
                ++v19;
              }
            }

            v17 = v52 | (v17 << 16) | (v51 << 8);
            v18 -= 16;
          }

          else if (v18 > 0x1F)
          {
            return -2;
          }
        }

        v39 = ((v17 << v18) >> -v47) + v39 - ((((v17 << v18) >> 31) - 1) >> -v47);
      }
    }

    v54 = 0;
    v55 = 0u;
    *(a5 + 2 * v20) = v39;
    v18 += v47;
    do
    {
      v56 = v18 - 16;
      if (v18 >= 0x10)
      {
        if (v19 <= v23)
        {
          v57 = *v19;
          v58 = v19 + 2;
          v59 = v19[1];
          if (v26 == v57)
          {
            if (v59 == 216)
            {
              if (*v58 == 255 && v19[3] == 216)
              {
                return -2;
              }

              v59 = 216;
            }

            else if (!v19[1])
            {
              v58 = v19 + 3;
              v59 = v19[2];
            }
          }

          if (v26 == v59)
          {
            if (*v58)
            {
              if (*v58 == 216 && v58[1] == 255 && v58[2] == 216)
              {
                return -2;
              }
            }

            else
            {
              ++v58;
            }
          }

          v17 = (v17 << 16) | (v57 << 8) | v59;
          v18 = v56;
          v19 = v58;
        }

        else if (v19 <= v22)
        {
          v60 = *v19;
          if ((v19 + 1) <= v22)
          {
            v61 = v19[1];
            v19 += 2;
          }

          else
          {
            v61 = 0;
            ++v19;
          }

          if (v26 == v60)
          {
            if (v61 == 216)
            {
              if (v19 >= v22 || *v19 == 255 && v19[1] == 216)
              {
                return -2;
              }

              v61 = 216;
            }

            else if (!v61)
            {
              if (v19 > v22)
              {
                return -2;
              }

              v62 = *v19++;
              v61 = v62;
            }
          }

          if (v61 == v26 && v19 <= v22)
          {
            if (*v19)
            {
              if (*v19 == 216 && (v19 >= v83 || v19[1] == 255 && v19[2] == 216))
              {
                return -2;
              }
            }

            else
            {
              ++v19;
            }
          }

          v17 = v61 | (v17 << 16) | (v60 << 8);
          v18 -= 16;
        }

        else if (v18 > 0x1F)
        {
          return -2;
        }
      }

      v63 = tables[v55];
      if (v54 <= v63)
      {
        v54 = tables[v55];
      }

      v64 = (v36 + v39 * *(v30 + v63)) >> v35;
      *&v7[v63] = v64;
      v65 = v64 ^ v64 | v55;
      v66 = *(v33 + 2 * ((v17 << v18) >> v38));
      v55 = v65 + 1;
      if ((v66 & 0x80000000) == 0)
      {
        goto LABEL_152;
      }

      if ((v66 >> 10) > 0x20u)
      {
        v68 = (v66 >> 11) & 0xF;
        v67 = (v66 >> 8) & 7;
        v39 = v66;
        goto LABEL_205;
      }

      v18 += v37;
      if (v34)
      {
        v66 = *(v34 + 2 * ((v17 << v18) >> v86));
      }

      if ((v66 & 0x80000000) != 0)
      {
        if (v66 <= 0xFFFF83FF)
        {
          return -3;
        }

        v68 = (v66 >> 11) & 0xF;
        v67 = (v66 >> 8) & 7;
        v39 = v66;
      }

      else
      {
LABEL_152:
        v67 = v66 >> 4;
        v18 += v66 >> 8;
        v68 = v66 & 0xF;
        if ((v66 & 0xF) != 0)
        {
          v69 = v18 - 16;
          if (v18 >= 0x10)
          {
            if (v19 <= v23)
            {
              v70 = *v19;
              v71 = v19 + 2;
              v72 = v19[1];
              if (v26 == v70)
              {
                if (v72 == 216)
                {
                  if (*v71 == 255 && v19[3] == 216)
                  {
                    return -2;
                  }

                  v72 = 216;
                }

                else if (!v19[1])
                {
                  v71 = v19 + 3;
                  v72 = v19[2];
                }
              }

              if (v26 == v72)
              {
                if (*v71)
                {
                  if (*v71 == 216 && v71[1] == 255 && v71[2] == 216)
                  {
                    return -2;
                  }
                }

                else
                {
                  ++v71;
                }
              }

              v17 = (v17 << 16) | (v70 << 8) | v72;
              v18 = v69;
              v19 = v71;
            }

            else if (v19 <= v22)
            {
              v73 = *v19;
              if ((v19 + 1) <= v22)
              {
                v74 = v19[1];
                v19 += 2;
              }

              else
              {
                v74 = 0;
                ++v19;
              }

              if (v26 == v73)
              {
                if (v74 == 216)
                {
                  if (v19 >= v22 || *v19 == 255 && v19[1] == 216)
                  {
                    return -2;
                  }

                  v74 = 216;
                }

                else if (!v74)
                {
                  if (v19 > v22)
                  {
                    return -2;
                  }

                  v75 = *v19++;
                  v74 = v75;
                }
              }

              if (v74 == v26 && v19 <= v22)
              {
                if (*v19)
                {
                  if (*v19 == 216 && (v19 >= v83 || v19[1] == 255 && v19[2] == 216))
                  {
                    return -2;
                  }
                }

                else
                {
                  ++v19;
                }
              }

              v17 = v74 | (v17 << 16) | (v73 << 8);
              v18 = v69;
            }

            else if (v18 > 0x1F)
            {
              return -2;
            }
          }

          v39 = ((v17 << v18) >> -v68) - ((((v17 << v18) >> 31) - 1) >> -v68);
        }

        else
        {
          v39 = 0;
          if (!(v66 >> 4))
          {
            break;
          }

          v68 = 0;
        }
      }

LABEL_205:
      v55 += v67;
      v18 += v68;
    }

    while (v55 < 0x3F);
    if (v55 > 0x3F)
    {
      return -1;
    }

    v76 = tables[v55];
    v77 = (v36 + v39 * *(v30 + v76)) >> v35;
    if (v77 == v77)
    {
      if (v54 <= v76)
      {
        v78 = v76;
      }

      else
      {
        v78 = v54;
      }

      *&v7[v76] = v77;
      *a4++ = (v78 >> 4) + 1;
      v7 += 128;
      v29 = (v29 + 1);
      v28 = a1 + 3400;
      if (v29 >= *(a1 + 3400 + v20))
      {
        LOWORD(v10) = *(a1 + 3274);
        v25 = a1 + 3320;
        v24 = a1 + 3280;
        v27 = a1 + 3360;
        goto LABEL_213;
      }

      continue;
    }

    break;
  }

  return -6;
}

uint64_t IDCTRows(uint64_t a1, _DWORD *a2, int a3)
{
  v3 = (a1 + 8);
  v4 = a3;
  do
  {
    v5 = *(v3 - 3);
    v6 = v3[3];
    v7 = v3[1];
    v8 = *(v3 - 1);
    v9 = *(v3 - 2);
    v10 = v3[2];
    v11 = *(v3 - 4);
    v12 = *v3;
    v13 = ((6518 * v5 + 0x4000) >> 15) - v6;
    v14 = v5 + ((6518 * v6 + 0x4000) >> 15);
    v15 = v8 + ((21895 * v7 + 0x4000) >> 15);
    v16 = v7 + ((-21895 * v8 + 0x4000) >> 15);
    v17 = ((13573 * v9 + 0x4000) >> 15) - v10;
    v18 = v9 + ((13573 * v10 + 0x4000) >> 15);
    v19 = v12 + v11;
    v20 = v11 - v12;
    v21 = v16 + v13;
    v22 = v13 - v16;
    v23 = v15 + v14;
    v24 = v14 - v15;
    v25 = v18 + v19;
    v26 = v19 - v18;
    v27 = v20 + v17;
    v28 = v20 - v17;
    v29 = 23170 * (v22 + v24) + 0x4000;
    *a2 = v25 + v23;
    a2[8] = v27 + (v29 >> 15);
    v30 = 23170 * (v24 - v22) + 0x4000;
    result = (v28 + (v30 >> 15));
    a2[16] = result;
    a2[24] = v26 + v21;
    a2[32] = v26 - v21;
    a2[40] = v28 - (v30 >> 15);
    a2[48] = v27 - (v29 >> 15);
    a2[56] = v25 - v23;
    ++a2;
    v3 += 8;
    --v4;
  }

  while (v4);
  if (a3 != 8)
  {
    v32 = 8 - a3;
    do
    {
      --v32;
      *a2 = 0;
      a2[8] = 0;
      a2[16] = 0;
      a2[24] = 0;
      a2[32] = 0;
      a2[40] = 0;
      a2[48] = 0;
      a2[56] = 0;
      ++a2;
    }

    while (v32);
  }

  return result;
}

uint64_t IDCTCols(uint64_t result, int16x8_t *a2)
{
  v2 = a2 + 8;
  v3 = (result + 128);
  v4 = 16;
  v5 = vdupq_n_s32(0x1976u);
  v6 = vdupq_n_s32(0x5587u);
  v7 = vdupq_n_s32(0xFFFFAA79);
  v8 = vdupq_n_s32(0x3505u);
  v9 = vdupq_n_s32(0x5A82u);
  do
  {
    v11.i32[0] = *v3;
    v10.i32[0] = v3[1];
    v10.i32[1] = v3[9];
    v12.i32[0] = v3[6];
    v13.i32[0] = v3[7];
    v13.i32[1] = v3[15];
    v14.i64[0] = 0x400000004000;
    v14.i64[1] = 0x400000004000;
    v15.i64[0] = 0x400000004000;
    v15.i64[1] = 0x400000004000;
    v10.i32[2] = v3[17];
    v16.i64[0] = 0x400000004000;
    v16.i64[1] = 0x400000004000;
    v17.i64[0] = 0x400000004000;
    v17.i64[1] = 0x400000004000;
    v18.i64[0] = 0x400000004000;
    v18.i64[1] = 0x400000004000;
    v13.i32[2] = v3[23];
    v19.i32[0] = *(v3 - 31);
    v19.i32[1] = *(v3 - 23);
    v20.i32[0] = *(v3 - 25);
    v20.i32[1] = *(v3 - 17);
    v21.i32[0] = *(v3 - 27);
    v21.i32[1] = *(v3 - 19);
    v22.i64[0] = 0x400000004000;
    v22.i64[1] = 0x400000004000;
    v24.i32[0] = v3[4];
    v23.i32[0] = v3[5];
    v10.i32[3] = v3[25];
    v23.i32[1] = v3[13];
    v13.i32[3] = v3[31];
    v23.i32[2] = v3[21];
    v23.i32[3] = v3[29];
    v19.i32[2] = *(v3 - 15);
    v25.i32[0] = *(v3 - 29);
    v25.i32[1] = *(v3 - 21);
    v20.i32[2] = *(v3 - 9);
    v26.i32[0] = v3[2];
    v27.i32[0] = v3[3];
    v21.i32[2] = *(v3 - 11);
    v27.i32[1] = v3[11];
    v25.i32[2] = *(v3 - 13);
    v27.i32[2] = v3[19];
    v19.i32[3] = *(v3 - 7);
    v27.i32[3] = v3[27];
    v20.i32[3] = *(v3 - 1);
    v26.i32[1] = v3[10];
    v21.i32[3] = *(v3 - 3);
    v26.i32[2] = v3[18];
    v25.i32[3] = *(v3 - 5);
    v28.i32[0] = *(v3 - 30);
    v28.i32[1] = *(v3 - 22);
    v26.i32[3] = v3[26];
    v28.i32[2] = *(v3 - 14);
    v28.i32[3] = *(v3 - 6);
    v29.i32[0] = *(v3 - 26);
    v29.i32[1] = *(v3 - 18);
    v30 = vmlaq_s32(v14, v10, v5);
    v29.i32[2] = *(v3 - 10);
    v29.i32[3] = *(v3 - 2);
    v31.i64[0] = 0x400000004000;
    v31.i64[1] = 0x400000004000;
    v12.i32[1] = v3[14];
    v12.i32[2] = v3[22];
    v12.i32[3] = v3[30];
    v32 = vmlaq_s32(v15, v19, v5);
    v33.i32[0] = *(v3 - 32);
    v33.i32[1] = *(v3 - 24);
    v33.i32[2] = *(v3 - 16);
    v33.i32[3] = *(v3 - 8);
    v34 = vmlaq_s32(v31, v27, v7);
    v11.i32[1] = v3[8];
    v35 = vsraq_n_s32(v10, vmlaq_s32(v17, v13, v5), 0xFuLL);
    v11.i32[2] = v3[16];
    v11.i32[3] = v3[24];
    v36 = vsraq_n_s32(v27, vmlaq_s32(v22, v23, v6), 0xFuLL);
    v17.i32[0] = *(v3 - 28);
    v17.i32[1] = *(v3 - 20);
    v37 = vsubq_s32(vshrq_n_s32(v30, 0xFuLL), v13);
    v30.i64[0] = 0x400000004000;
    v30.i64[1] = 0x400000004000;
    v17.i32[2] = *(v3 - 12);
    v38 = vsraq_n_s32(v19, vmlaq_s32(v16, v20, v5), 0xFuLL);
    v17.i32[3] = *(v3 - 4);
    v24.i32[1] = v3[12];
    v39 = vmlaq_s32(v30, v25, v7);
    v24.i32[2] = v3[20];
    v40 = vsraq_n_s32(v25, vmlaq_s32(v18, v21, v6), 0xFuLL);
    v24.i32[3] = v3[28];
    v41 = vsraq_n_s32(v23, v34, 0xFuLL);
    v42 = vsraq_n_s32(v21, v39, 0xFuLL);
    v18.i64[0] = 0x400000004000;
    v18.i64[1] = 0x400000004000;
    v43 = vsubq_s32(vshrq_n_s32(v32, 0xFuLL), v20);
    v16.i64[0] = 0x400000004000;
    v16.i64[1] = 0x400000004000;
    v44 = vsubq_s32(vshrq_n_s32(vmlaq_s32(v18, v26, v8), 0xFuLL), v12);
    v39.i64[0] = 0x400000004000;
    v39.i64[1] = 0x400000004000;
    v45 = vmlaq_s32(v39, v12, v8);
    v12.i64[0] = 0x400000004000;
    v12.i64[1] = 0x400000004000;
    v46 = vsraq_n_s32(v26, v45, 0xFuLL);
    v47 = vsubq_s32(vshrq_n_s32(vmlaq_s32(v16, v28, v8), 0xFuLL), v29);
    v48 = vsraq_n_s32(v28, vmlaq_s32(v12, v29, v8), 0xFuLL);
    v49 = vaddq_s32(v24, v11);
    v50 = vaddq_s32(v17, v33);
    v51 = vsubq_s32(v11, v24);
    v52 = vsubq_s32(v33, v17);
    v53 = vaddq_s32(v42, v43);
    v54 = vaddq_s32(v41, v37);
    v55 = vsubq_s32(v37, v41);
    v56 = vaddq_s32(v40, v38);
    v57 = vaddq_s32(v36, v35);
    v58 = vsubq_s32(v38, v40);
    v59 = vsubq_s32(v43, v42);
    v60 = vsubq_s32(v35, v36);
    v61 = vaddq_s32(v48, v50);
    v62 = vaddq_s32(v46, v49);
    v63 = vsubq_s32(v50, v48);
    v64 = vsubq_s32(v49, v46);
    v65 = vaddq_s32(v52, v47);
    v66 = vaddq_s32(v51, v44);
    v67 = vsubq_s32(v52, v47);
    v68 = vsubq_s32(v51, v44);
    v69 = vaddq_s32(v55, v60);
    v70 = vsubq_s32(v60, v55);
    v71 = vaddq_s32(v59, v58);
    v72 = vsubq_s32(v58, v59);
    v73 = vaddq_s32(v62, v57);
    v74 = vsubq_s32(v62, v57);
    v75 = vaddq_s32(v64, v54);
    v76 = vaddq_s32(v63, v53);
    v77 = vsubq_s32(v64, v54);
    v78 = vsubq_s32(v63, v53);
    v53.i64[0] = 0x400000004000;
    v53.i64[1] = 0x400000004000;
    v79 = vmlaq_s32(v53, v69, v9);
    v69.i64[0] = 0x400000004000;
    v69.i64[1] = 0x400000004000;
    v80 = vmlaq_s32(v69, v71, v9);
    v81 = vsubq_s32(v66, vshrq_n_s32(v79, 0xFuLL));
    v82 = vsraq_n_s32(v66, v79, 0xFuLL);
    v79.i64[0] = 0x400000004000;
    v79.i64[1] = 0x400000004000;
    v83 = vmlaq_s32(v79, v70, v9);
    v54.i64[0] = 0x400000004000;
    v54.i64[1] = 0x400000004000;
    v84 = vmlaq_s32(v54, v72, v9);
    v2[-8] = vuzp1q_s16(vaddq_s32(v61, v56), v73);
    v2[-2] = vuzp1q_s16(v76, v75);
    *v2 = vuzp1q_s16(v78, v77);
    v2[-6] = vuzp1q_s16(vsraq_n_s32(v65, v80, 0xFuLL), v82);
    v2[2] = vuzp1q_s16(vsubq_s32(v67, vshrq_n_s32(v84, 0xFuLL)), vsubq_s32(v68, vshrq_n_s32(v83, 0xFuLL)));
    v2[4] = vuzp1q_s16(vsubq_s32(v65, vshrq_n_s32(v80, 0xFuLL)), v81);
    v2[-4] = vuzp1q_s16(vsraq_n_s32(v67, v84, 0xFuLL), vsraq_n_s32(v68, v83, 0xFuLL));
    v2[6] = vuzp1q_s16(vsubq_s32(v61, v56), v74);
    ++v2;
    v3 += 64;
    v4 -= 8;
  }

  while (v4);
  return result;
}

int16x8_t IDCTFlexCols(__int32 *a1, int16x8_t *a2)
{
  v3.i32[0] = a1[32];
  v2.i32[0] = a1[33];
  v2.i32[1] = a1[41];
  v2.i32[2] = a1[49];
  v2.i32[3] = a1[57];
  v5.i32[0] = *a1;
  v4.i32[0] = a1[1];
  v4.i32[1] = a1[9];
  v4.i32[2] = a1[17];
  v4.i32[3] = a1[25];
  v6.i32[0] = a1[6];
  v7.i32[0] = a1[7];
  v7.i32[1] = a1[15];
  v7.i32[2] = a1[23];
  v7.i32[3] = a1[31];
  v8.i32[0] = a1[38];
  v9.i32[0] = a1[39];
  v9.i32[1] = a1[47];
  v9.i32[2] = a1[55];
  v9.i32[3] = a1[63];
  v11.i32[0] = a1[4];
  v10.i32[0] = a1[5];
  v10.i32[1] = a1[13];
  v10.i32[2] = a1[21];
  v10.i32[3] = a1[29];
  v13.i32[0] = a1[36];
  v12.i32[0] = a1[37];
  v12.i32[1] = a1[45];
  v12.i32[2] = a1[53];
  v12.i32[3] = a1[61];
  v14.i32[0] = a1[2];
  v15.i32[0] = a1[3];
  v15.i32[1] = a1[11];
  v15.i32[2] = a1[19];
  v15.i32[3] = a1[27];
  v16 = vdupq_n_s32(0x1976u);
  v17.i64[0] = 0x400000004000;
  v17.i64[1] = 0x400000004000;
  v18.i64[0] = 0x400000004000;
  v18.i64[1] = 0x400000004000;
  v19.i64[0] = 0x400000004000;
  v19.i64[1] = 0x400000004000;
  v20 = vsubq_s32(vshrq_n_s32(vmlaq_s32(v18, v2, v16), 0xFuLL), v9);
  v21 = vsubq_s32(vshrq_n_s32(vmlaq_s32(v19, v4, v16), 0xFuLL), v7);
  v22.i64[0] = 0x400000004000;
  v22.i64[1] = 0x400000004000;
  v23 = vmlaq_s32(v22, v7, v16);
  v7.i64[0] = 0x400000004000;
  v7.i64[1] = 0x400000004000;
  v24 = vsraq_n_s32(v2, vmlaq_s32(v7, v9, v16), 0xFuLL);
  v25 = vdupq_n_s32(0x5587u);
  v26 = vsraq_n_s32(v4, v23, 0xFuLL);
  v9.i64[0] = 0x400000004000;
  v9.i64[1] = 0x400000004000;
  v16.i64[0] = 0x400000004000;
  v16.i64[1] = 0x400000004000;
  v27 = vmlaq_s32(v16, v12, v25);
  v28 = vdupq_n_s32(0xFFFFAA79);
  v29.i64[0] = 0x400000004000;
  v29.i64[1] = 0x400000004000;
  v30 = vmlaq_s32(v29, v15, v28);
  v31 = vsraq_n_s32(v15, vmlaq_s32(v9, v10, v25), 0xFuLL);
  v32.i64[0] = 0x400000004000;
  v32.i64[1] = 0x400000004000;
  v25.i32[0] = a1[34];
  v9.i32[0] = a1[35];
  v9.i32[1] = a1[43];
  v9.i32[2] = a1[51];
  v9.i32[3] = a1[59];
  v33 = vmlaq_s32(v32, v9, v28);
  v34 = vsraq_n_s32(v9, v27, 0xFuLL);
  v35 = vsraq_n_s32(v12, v33, 0xFuLL);
  v36 = vsraq_n_s32(v10, v30, 0xFuLL);
  v25.i32[1] = a1[42];
  v25.i32[2] = a1[50];
  v25.i32[3] = a1[58];
  v27.i64[0] = 0x400000004000;
  v27.i64[1] = 0x400000004000;
  v37 = vdupq_n_s32(0x3505u);
  v14.i32[1] = a1[10];
  v14.i32[2] = a1[18];
  v14.i32[3] = a1[26];
  v6.i32[1] = a1[14];
  v6.i32[2] = a1[22];
  v6.i32[3] = a1[30];
  v8.i32[1] = a1[46];
  v8.i32[2] = a1[54];
  v8.i32[3] = a1[62];
  v5.i32[1] = a1[8];
  v5.i32[2] = a1[16];
  v5.i32[3] = a1[24];
  v3.i32[1] = a1[40];
  v3.i32[2] = a1[48];
  v3.i32[3] = a1[56];
  v11.i32[1] = a1[12];
  v11.i32[2] = a1[20];
  v11.i32[3] = a1[28];
  v13.i32[1] = a1[44];
  v13.i32[2] = a1[52];
  v13.i32[3] = a1[60];
  v30.i64[0] = 0x400000004000;
  v30.i64[1] = 0x400000004000;
  v38 = vsubq_s32(vshrq_n_s32(vmlaq_s32(v27, v25, v37), 0xFuLL), v8);
  v39 = vsubq_s32(vshrq_n_s32(vmlaq_s32(v30, v14, v37), 0xFuLL), v6);
  v33.i64[0] = 0x400000004000;
  v33.i64[1] = 0x400000004000;
  v40 = vmlaq_s32(v33, v6, v37);
  v6.i64[0] = 0x400000004000;
  v6.i64[1] = 0x400000004000;
  v41 = vsraq_n_s32(v25, vmlaq_s32(v6, v8, v37), 0xFuLL);
  v42 = vsraq_n_s32(v14, v40, 0xFuLL);
  v43 = vaddq_s32(v13, v3);
  v44 = vaddq_s32(v11, v5);
  v45 = vsubq_s32(v3, v13);
  v46 = vsubq_s32(v5, v11);
  v47 = vaddq_s32(v36, v21);
  v48 = vaddq_s32(v35, v20);
  v49 = vsubq_s32(v21, v36);
  v50 = vsubq_s32(v20, v35);
  v51 = vaddq_s32(v31, v26);
  v52 = vaddq_s32(v34, v24);
  v53 = vsubq_s32(v26, v31);
  v54 = vsubq_s32(v24, v34);
  v55 = vaddq_s32(v42, v44);
  v56 = vaddq_s32(v41, v43);
  v57 = vsubq_s32(v44, v42);
  v58 = vsubq_s32(v43, v41);
  v59 = vaddq_s32(v46, v39);
  v60 = vaddq_s32(v45, v38);
  v61 = vsubq_s32(v46, v39);
  v62 = vsubq_s32(v45, v38);
  v63 = vaddq_s32(v58, v48);
  v64 = vsubq_s32(v58, v48);
  v65 = vdupq_n_s32(0x5A82u);
  v48.i64[0] = 0x400000004000;
  v48.i64[1] = 0x400000004000;
  v66 = vmlaq_s32(v48, vaddq_s32(v50, v54), v65);
  v34.i64[0] = 0x400000004000;
  v34.i64[1] = 0x400000004000;
  v67 = vmlaq_s32(v34, vaddq_s32(v49, v53), v65);
  v68 = vsubq_s32(v60, vshrq_n_s32(v66, 0xFuLL));
  v69 = vsraq_n_s32(v60, v66, 0xFuLL);
  v70 = vsubq_s32(v59, vshrq_n_s32(v67, 0xFuLL));
  v71 = vsraq_n_s32(v59, v67, 0xFuLL);
  v67.i64[0] = 0x400000004000;
  v67.i64[1] = 0x400000004000;
  v72 = vmlaq_s32(v67, vsubq_s32(v54, v50), v65);
  v73 = vmlaq_s32(v17, vsubq_s32(v53, v49), v65);
  *a2 = vuzp1q_s16(vaddq_s32(v55, v51), vaddq_s32(v56, v52));
  a2[1] = vuzp1q_s16(v71, v69);
  a2[2] = vuzp1q_s16(vsraq_n_s32(v61, v73, 0xFuLL), vsraq_n_s32(v62, v72, 0xFuLL));
  a2[3] = vuzp1q_s16(vaddq_s32(v57, v47), v63);
  a2[4] = vuzp1q_s16(vsubq_s32(v57, v47), v64);
  a2[5] = vuzp1q_s16(vsubq_s32(v61, vshrq_n_s32(v73, 0xFuLL)), vsubq_s32(v62, vshrq_n_s32(v72, 0xFuLL)));
  result = vuzp1q_s16(vsubq_s32(v55, v51), vsubq_s32(v56, v52));
  a2[6] = vuzp1q_s16(v70, v68);
  a2[7] = result;
  return result;
}

uint64_t IDCT(uint64_t a1, int16x8_t *a2, _BYTE *a3)
{
  v13[64] = *MEMORY[0x1E69E9840];
  bzero(v11, 0x600uLL);
  v6 = *a3;
  if (*a3)
  {
    v7 = a3 + 1;
    v8 = v11;
    do
    {
      IDCTRows(a1, v8, v6);
      a1 += 128;
      v8 += 64;
      v9 = *v7++;
      v6 = v9;
    }

    while (v9);
  }

  IDCTCols(v11, a2);
  IDCTCols(&v12, a2 + 16);
  return IDCTCols(v13, a2 + 32);
}

void IDCTFlex(uint64_t a1, int16x8_t *a2, _BYTE *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v3 = *a3;
  if (*a3)
  {
    v6 = a3 + 1;
    do
    {
      IDCTRows(a1, v8, v3);
      IDCTFlexCols(v8, a2);
      a1 += 128;
      a2 += 8;
      v7 = *v6++;
      v3 = v7;
    }

    while (v7);
  }
}

uint64_t paravirtualizedVideoDecoder_lookupRetainAndForgetPendingFramePixelBuffersByUUIDs(uint64_t a1, const __CFArray *a2, __CFArray **a3)
{
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  os_unfair_lock_lock((DerivedStorage + 64));
  if (!Mutable)
  {
    paravirtualizedVideoDecoder_lookupRetainAndForgetPendingFramePixelBuffersByUUIDs_cold_2(&v14);
    v11 = v14;
    goto LABEL_13;
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      Value = CFDictionaryGetValue(*(DerivedStorage + 72), ValueAtIndex);
      if (Value)
      {
        CFArrayAppendValue(Mutable, Value);
      }

      CFDictionaryRemoveValue(*(DerivedStorage + 72), ValueAtIndex);
    }
  }

  if (CFArrayGetCount(Mutable) != Count)
  {
    paravirtualizedVideoDecoder_lookupRetainAndForgetPendingFramePixelBuffersByUUIDs_cold_1(&v13);
    v11 = v13;
    goto LABEL_16;
  }

  v11 = 0;
  if (!a3)
  {
LABEL_16:
    os_unfair_lock_unlock((DerivedStorage + 64));
    CFRelease(Mutable);
    return v11;
  }

  *a3 = Mutable;
LABEL_13:
  os_unfair_lock_unlock((DerivedStorage + 64));
  return v11;
}

void ParavirtualizedVideoDecoder_Finalize()
{
  cf[20] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  if (dword_1EAD32140)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }

  v3 = *(DerivedStorage + 96);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 96) = 0;
  }

  if (!VTParavirtualizationCreateMessageAndByteStream(761554275, 0, DerivedStorage + 32, 0, cf, 0))
  {
    VTParavirtualizationGuestSendMessageToHostAsync(cf[0]);
  }

  VTParavirtualizationGuestRemoveHandlerForUUID((DerivedStorage + 32));
  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 56) = 0;
  }

  v5 = *(DerivedStorage + 72);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 72) = 0;
  }

  v6 = *(DerivedStorage + 88);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 88) = 0;
  }

  v7 = *(DerivedStorage + 96);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 96) = 0;
  }

  v8 = *(DerivedStorage + 104);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 104) = 0;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

__CFString *ParavirtualizedVideoDecoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @"<ParavirtualizedVideoDecoder %p UUID %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x>", a1, DerivedStorage[32], DerivedStorage[33], DerivedStorage[34], DerivedStorage[35], DerivedStorage[36], DerivedStorage[37], DerivedStorage[38], DerivedStorage[39], DerivedStorage[40], DerivedStorage[41], DerivedStorage[42], DerivedStorage[43], DerivedStorage[44], DerivedStorage[45], DerivedStorage[46], DerivedStorage[47]);
  return Mutable;
}

uint64_t ParavirtualizedVideoDecoder_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = 0;
  cf = 0;
  v10 = 0;
  v11 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1684238192, 1, DerivedStorage + 32, 0, &cf, &v12);
  if (appended || (appended = VTParavirtualizationMessageAppendCFPropertyList(), appended) || (v14 = kVTParavirtualizationDefaultReplyTimeout, v15 = 0, appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v14, &v11), appended) || (VTParavirtualizationMessageGetSInt32(), appended))
  {
    v7 = appended;
  }

  else
  {
    v7 = VTParavirtualizationMessageCopyCFPropertyList(v11, 745955692, &v10);
    if (!v7)
    {
      *a4 = v10;
      v10 = 0;
      goto LABEL_7;
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v7;
}

uint64_t ParavirtualizedVideoDecoder_SetProperty(uint64_t a1, uint64_t a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  cf = 0;
  v14 = 0;
  v15 = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1685284212, 1, DerivedStorage + 32, 0, &v16, &v15);
  if (!appended)
  {
    appended = VTParavirtualizationMessageAppendCFPropertyList();
    if (!appended)
    {
      v8 = paravirtualizedVideoDecoder_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(a1, a2, a3, &cf);
      if (v8 == -19096)
      {
        v9 = 0;
        goto LABEL_14;
      }

      v9 = v8;
      if (v8)
      {
        goto LABEL_12;
      }

      appended = VTParavirtualizationMessageAppendCFPropertyList();
      if (!appended)
      {
        v18 = kVTParavirtualizationDefaultReplyTimeout;
        v19 = 0;
        appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v16, &v18, &v14);
        if (!appended)
        {
          VTParavirtualizationMessageGetSInt32();
          if (v10)
          {
            v9 = v10;
          }

          else
          {
            v9 = 0;
          }

          if (!v9)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }
    }
  }

  v9 = appended;
LABEL_12:
  v11 = FigCFCopyCompactDescription();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v9;
}

uint64_t paravirtualizedVideoDecoder_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  if (paravirtualizedVideoDecoder_getSpecialCaseHandlersForSettingProperties_sCreateDictionaryOnce != -1)
  {
    paravirtualizedVideoDecoder_handleAnySpecialCaseSetPropertyAndCopyReplacementValue_cold_1();
  }

  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    v8 = *(Value + 8);

    return v8(a1, a3, a4);
  }

  else
  {
    if (a3)
    {
      v10 = CFRetain(a3);
    }

    else
    {
      v10 = 0;
    }

    *a4 = v10;
    return 0;
  }
}

CFDictionaryRef __paravirtualizedVideoDecoder_getSpecialCaseHandlersForSettingProperties_block_invoke()
{
  keys[1] = *MEMORY[0x1E69E9840];
  values = &kParavirtualizedVideoDecoder_BaseClass_block_invoke_specialCasePropertyAndHandlerPairs;
  keys[0] = @"AV1FilmGrainMode";
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], 0);
  paravirtualizedVideoDecoder_getSpecialCaseHandlersForSettingProperties_sSpecialCaseHandlersForSettingProperties = result;
  return result;
}

uint64_t paravirtualizedVideoDecoder_handleAV1FilmGrainModeSetPropertyAndCopyReplacementValue(uint64_t a1, __CFString *a2, void *a3)
{
  if (!FigCFEqual())
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  a2 = @"Immediate";
  if (!@"Immediate")
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = CFRetain(a2);
LABEL_6:
  *a3 = v5;
  return 0;
}

uint64_t ParavirtualizedVideoDecoder_StartSession(uint64_t a1, uint64_t a2, const void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  cf = 0;
  v12 = 0;
  os_unfair_lock_lock((DerivedStorage + 16));
  *DerivedStorage = a2;
  os_unfair_lock_unlock((DerivedStorage + 16));
  v6 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  *(DerivedStorage + 96) = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1685288033, 1, DerivedStorage + 32, 0, &cf, &v13);
  if (appended || (appended = VTParavirtualizationMessageAppendCMFormatDescription(), appended) || (appended = VTParavirtualizationMessageAppendSInt32(), appended) || (v15 = kVTParavirtualizationDefaultReplyTimeout, v16 = 0, appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v15, &v12), appended))
  {
    v9 = appended;
LABEL_13:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_14;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v9;
}

uint64_t ParavirtualizedVideoDecoder_CopySupportedPropertyDictionary(uint64_t a1, CFTypeRef *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 56))
  {
    goto LABEL_30;
  }

  VTVideoDecoderGetCMBaseObject(a1);
  v5 = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  *cf = 0;
  v13 = 0;
  v14 = 0;
  v6 = VTParavirtualizationCreateMessageAndByteStream(1685288304, 1, v5 + 32, 0, cf, &v15);
  if (v6 || (v21 = kVTParavirtualizationDefaultReplyTimeout, v22 = 0, v6 = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(*cf, &v21, &v14), v6) || (VTParavirtualizationMessageGetSInt32(), v6))
  {
    v7 = v6;
  }

  else
  {
    v7 = VTParavirtualizationMessageCopyCFDictionary(v14, 745764208, &v13);
    if (!v7)
    {
      *(DerivedStorage + 56) = FigCFDictionaryCreateMutableCopy();
    }
  }

  if (*cf)
  {
    CFRelease(*cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (!v7)
  {
LABEL_30:
    if (a2)
    {
      v8 = *(DerivedStorage + 56);
      if (v8)
      {
        v7 = 0;
        *a2 = CFRetain(v8);
        return v7;
      }
    }

    v7 = FigSignalErrorAtGM();
    if (!v7)
    {
      return v7;
    }
  }

  LODWORD(v15) = 0;
  LOBYTE(v14) = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v10 = v15;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v14))
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 & 0xFFFFFFFE;
  }

  if (v11)
  {
    *cf = 136315650;
    *&cf[4] = "ParavirtualizedVideoDecoder_CopySupportedPropertyDictionary";
    v17 = 2048;
    v18 = a1;
    v19 = 1024;
    v20 = v7;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v7;
}

uint64_t ParavirtualizedVideoDecoder_SetProperties(uint64_t a1, const __CFDictionary *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v5 = VTParavirtualizationCreateMessageAndByteStream(1684895084, 1, DerivedStorage + 32, 0, &v23, &v22);
  if (v5)
  {
    v12 = v5;
    Mutable = 0;
  }

  else
  {
    CMBaseObject = VTVideoDecoderGetCMBaseObject(a1);
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
        v15 = paravirtualizedVideoDecoder_handleAnySpecialCaseSetPropertyAndCopyReplacementValue(CMBaseObject, ValueAtIndex, Value, cf);
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
    if (!v12)
    {
      appended = VTParavirtualizationMessageAppendCFDictionary(v22, 745566831, Mutable);
      if (appended || (*cf = kVTParavirtualizationDefaultReplyTimeout, v25 = 0, appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(v23, cf, &v21), appended))
      {
        v12 = appended;
      }

      else
      {
        VTParavirtualizationMessageGetSInt32();
        if (v17)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }

        if (!v12)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v18 = FigCFCopyCompactDescription();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v18)
  {
    CFRelease(v18);
  }

LABEL_28:
  if (Mutable)
  {
    CFRelease(Mutable);
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

  return v12;
}

uint64_t ParavirtualizedVideoDecoder_CopySerializableProperties(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v5 = VTParavirtualizationCreateMessageAndByteStream(1685283190, 1, DerivedStorage + 32, 0, &cf, &v11);
  if (v5 || (v14 = kVTParavirtualizationDefaultReplyTimeout, v15 = 0, v5 = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v14, &v10), v5) || (VTParavirtualizationMessageGetSInt32(), v5))
  {
    v7 = v5;
LABEL_8:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_9;
  }

  v6 = VTParavirtualizationMessageCopyCFDictionary(v10, 745566831, &v13);
  v7 = v6;
  if (a3 && !v6)
  {
    *a3 = v13;
    v13 = 0;
    goto LABEL_9;
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v7;
}

uint64_t ParavirtualizedVideoDecoder_FinishDelayedFrames(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  cf = 0;
  v7 = 0;
  v2 = VTParavirtualizationCreateMessageAndByteStream(1684433262, 1, DerivedStorage + 32, 0, &cf, &v8);
  if (v2 || (v10 = kVTParavirtualizationDefaultReplyTimeout, v11 = 0, v2 = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v10, &v7), v2))
  {
    v4 = v2;
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

uint64_t ParavirtualizedVideoDecoder_StartTileSession(uint64_t a1, uint64_t a2, const void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  cf = 0;
  v12 = 0;
  os_unfair_lock_lock((DerivedStorage + 16));
  *(DerivedStorage + 8) = a2;
  os_unfair_lock_unlock((DerivedStorage + 16));
  v6 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  appended = VTParavirtualizationCreateMessageAndByteStream(1685288051, 1, DerivedStorage + 32, 0, &cf, &v13);
  if (appended || (appended = VTParavirtualizationMessageAppendCMFormatDescription(), appended) || (v15 = kVTParavirtualizationDefaultReplyTimeout, v16 = 0, appended = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v15, &v12), appended))
  {
    v9 = appended;
LABEL_12:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_13;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v9;
}

uint64_t ParavirtualizedVideoDecoder_DecodeTile(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, uint64_t a4, uint64_t a5, __CVBuffer *a6, uint64_t a7, char a8, _DWORD *a9)
{
  v53 = *MEMORY[0x1E69E9840];
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v50 = 0;
  cf = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = kVTParavirtualizationDefaultReplyTimeout;
  IOSurface = 0;
  appended = VTParavirtualizationCreateMessageAndByteStream(1685350764, 1, DerivedStorage + 32, 0, &cf, &v50);
  sbuf = a3;
  v43 = a2;
  v42 = a8;
  if (appended || (appended = VTParavirtualizationMessageAppendSInt64(), appended) || (appended = VTParavirtualizationMessageAppendVTInt32Point(), appended) || (appended = VTParavirtualizationMessageAppendVTInt32Size(), appended))
  {
    value_low = appended;
    v34 = 0;
    v28 = 0;
    goto LABEL_49;
  }

  if (a6)
  {
    VTVideoDecoderGetCMBaseObject(a1);
    v15 = CMBaseObjectGetDerivedStorage();
    os_unfair_lock_lock((v15 + 80));
    Count = CFDictionaryGetCount(*(v15 + 88));
    v17 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    v18 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    v39 = v17;
    CFDictionaryGetKeysAndValues(*(v15 + 88), v17, v18);
    if (Count < 1)
    {
      goto LABEL_15;
    }

    v19 = 0;
    v20 = 0;
    v21 = 1;
    do
    {
      while (1)
      {
        v22 = v18[v20];
        if (CFDictionaryGetValue(v22, @"PixelBufferKey") != a6)
        {
          break;
        }

        CFDictionaryGetValue(v22, @"TilesUsingPixelBuffer");
        FigCFArrayAppendInt64();
        v19 = CFRetain(v39[v20]);
        v21 = 0;
        if (Count - 1 == v20++)
        {
          goto LABEL_19;
        }
      }

      ++v20;
    }

    while (Count != v20);
    if (v21)
    {
LABEL_15:
      v24 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      FigCFArrayAppendInt64();
      v26 = CFUUIDCreate(v24);
      v27 = CFDictionaryCreateMutable(v24, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
      FigCFDictionarySetValue();
      v19 = v26;
      FigCFDictionarySetValue();
      if (v27)
      {
        CFRelease(v27);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

LABEL_19:
    CFDictionaryGetCount(*(v15 + 88));
    os_unfair_lock_unlock((v15 + 80));
    free(v39);
    free(v18);
    a3 = sbuf;
    v28 = v19;
    if (v19)
    {
      v29 = VTParavirtualizationMessageAppendCFUUID();
      a2 = v43;
      a8 = v42;
      if (v29)
      {
LABEL_66:
        value_low = v29;
        v34 = 0;
        goto LABEL_49;
      }
    }

    else
    {
      a2 = v43;
      a8 = v42;
    }
  }

  else
  {
    v28 = 0;
  }

  IOSurface = CVPixelBufferGetIOSurface(a6);
  if (!IOSurface)
  {
    if (ParavirtualizedVideoDecoder_DecodeTile_cold_1(&time))
    {
      value_low = 0;
      v35 = 0;
LABEL_50:
      os_unfair_lock_lock((DerivedStorage + 16));
      v36 = *(DerivedStorage + 8);
      if (v36)
      {
        VTDecoderSessionEmitDecodedTile(v36, a2, v35, 0, 0);
      }

      os_unfair_lock_unlock((DerivedStorage + 16));
      goto LABEL_53;
    }

    v34 = 0;
    value_low = LODWORD(time.value);
LABEL_49:
    os_unfair_lock_lock((DerivedStorage + 16));
    os_unfair_lock_unlock((DerivedStorage + 16));
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    a2 = v43;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v35 = value_low;
    if (v34)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v29 = VTParavirtualizationMessageAppendVTInt32Point();
  if (v29)
  {
    goto LABEL_66;
  }

  v29 = VTParavirtualizationMessageAppendUInt32();
  if (v29)
  {
    goto LABEL_66;
  }

  v29 = VTParavirtualizationMessageAppendCMSampleBufferWithLimitAndCopyRemainingData(v50, 745759334, *(DerivedStorage + 48), 0x200000uLL, a3, (DerivedStorage + 96), &v48);
  if (v29)
  {
    goto LABEL_66;
  }

  if (v48)
  {
    do
    {
      v29 = VTParavirtualizationMessageChangeMessageFlags(cf, 16, 17);
      if (v29)
      {
        goto LABEL_66;
      }

      v29 = VTParavirtualizationGuestSendMessageToHostAsync(cf);
      if (v29)
      {
        goto LABEL_66;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v50)
      {
        CFRelease(v50);
        v50 = 0;
      }

      v29 = VTParavirtualizationCreateMessageAndByteStream(1685350764, 1, DerivedStorage + 32, 0, &cf, &v50);
      if (v29)
      {
        goto LABEL_66;
      }

      v29 = VTParavirtualizationMessageAppendCMSampleBufferRemainderDataWithLimitAndCopyRemainingData(v50, 745759334, 0x200000uLL, v48, &v47);
      if (v29)
      {
        goto LABEL_66;
      }

      if (v48)
      {
        CFRelease(v48);
      }

      v30 = v47;
      v47 = 0;
      v48 = v30;
    }

    while (v30);
  }

  if ((a8 & 1) == 0)
  {
    v44 = kVTParavirtualizationCodecOperationReplyTimeout;
  }

  *&time.value = v44;
  time.epoch = 0;
  v31 = VTParavirtualizationGuestSendMessageWithIOSurfacesToHostAndCopyReplySync(cf, &IOSurface, 1, &time.value, &v49);
  if (v31)
  {
    v35 = v31;
    value_low = 0;
    goto LABEL_50;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v32 || (VTParavirtualizationMessageGetUInt32(), v32))
  {
    value_low = v32;
LABEL_48:
    v34 = 1;
    goto LABEL_49;
  }

  value_low = HIDWORD(v46);
  if (a9)
  {
    *a9 = v46;
  }

  if (value_low)
  {
    goto LABEL_48;
  }

LABEL_53:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return value_low;
}

uint64_t ParavirtualizedVideoDecoder_FinishDelayedTiles(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  VTVideoDecoderGetCMBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  cf = 0;
  v7 = 0;
  v2 = VTParavirtualizationCreateMessageAndByteStream(1685349993, 1, DerivedStorage + 32, 0, &cf, &v8);
  if (v2 || (v10 = kVTParavirtualizationDefaultReplyTimeout, v11 = 0, v2 = VTParavirtualizationGuestSendMessageToHostAndCopyReplySync(cf, &v10, &v7), v2))
  {
    v4 = v2;
LABEL_7:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_8;
  }

  VTParavirtualizationMessageGetSInt32();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, CMBlockBufferRef a28)
{

  return VTParavirtualizationCreateMessageAndByteStream(1684435565, 1, v28 + 32, 0, &a28, &a27);
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return __maskrune(v0, 0x40000uLL);
}

uint64_t OUTLINED_FUNCTION_13_3()
{

  return __maskrune(v0, 0x40000uLL);
}

uint64_t reset_DC_pred(uint64_t result)
{
  *(result + 3184) = 0;
  *(result + 3176) = 0;
  return result;
}

uint64_t marker_detect(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5, int a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v37 = 0;
  v36 = 0;
  v6 = *a2;
  v7 = *(a2 + 56);
  v8 = v7 < 0;
  v9 = *a2 + v7;
  if (v8)
  {
    v10 = -1;
  }

  else
  {
    v10 = v9;
  }

  if (v6 >= *(a2 + 64))
  {
LABEL_70:
    LOWORD(SOS) = -12909;
    return SOS;
  }

  *a2 = v6 + 1;
  v12 = *v6;
  v34 = 0;
  *(a2 + 48) = 0;
  if (v12 == 218)
  {
    goto LABEL_6;
  }

  while (2)
  {
    if (v12 == 255)
    {
      goto LABEL_12;
    }

    v18 = *a2;
    do
    {
      if (v18 >= v10)
      {
        break;
      }

      if (v18 >= *(a2 + 64))
      {
        goto LABEL_70;
      }

      *a2 = v18 + 1;
      v12 = *v18++;
    }

    while (v12 != 255);
LABEL_12:
    while (v12 == 255)
    {
      v19 = *a2;
      if (*a2 >= v10)
      {
        v20 = 254;
        goto LABEL_21;
      }

      if (v19 >= *(a2 + 64))
      {
        goto LABEL_70;
      }

      *a2 = v19 + 1;
      v12 = *v19;
    }

    if (!v12)
    {
      goto LABEL_6;
    }

    v20 = v12 & 0xFE;
    if (v20 == 192)
    {
      v21 = read_SOF(a1, a2, a3, a4, &v36, &v35, a6);
      v34 = v21;
      if (v21)
      {
        goto LABEL_6;
      }

      *(a1 + 4128) = 0;
      goto LABEL_47;
    }

    if (v12 > 217)
    {
      if (v12 == 219)
      {
        QT = read_QT(a1, popbytesCallback, a2, a6);
        v34 = QT;
        if (QT)
        {
          goto LABEL_6;
        }

        v12 = 219;
LABEL_47:
        if (v12 != 218)
        {
          continue;
        }

        goto LABEL_6;
      }

      if (v12 == 218)
      {
        v33 = v35;
        SOS = read_SOS(a1, a2, v35, &v36, a6);
        v34 = SOS;
        if (SOS)
        {
          goto LABEL_6;
        }

        *(a1 + 3274) = v33;
        return SOS;
      }
    }

    else
    {
      if (v12 == 196)
      {
        SOS = read_HT(a1, popbytesCallback, a2, *(a2 + 64) - *a2);
        v34 = SOS;
        if (SOS)
        {
          return SOS;
        }

        v12 = 196;
        goto LABEL_47;
      }

      if (v12 == 194)
      {
        if (*(a1 + 4100) == 1785750887)
        {
          SOS = read_SOF(a1, a2, a3, a4, &v36, &v35, a6);
          v34 = SOS;
          if (!SOS)
          {
            *(a1 + 4128) = 1;
            v32 = v35;
            *(a1 + 4132) = v35;
            *(a1 + 3274) = v32;
            *(a1 + 4184) = v36;
            *(a1 + 4188) = SWORD1(v36);
            *(a1 + 4192) = SWORD2(v36);
            return SOS;
          }
        }

LABEL_6:
        fig_log_get_emitter();
        LOWORD(SOS) = FigSignalErrorAtGM();
        return SOS;
      }
    }

    break;
  }

  if ((v12 & 0xF8) == 0xD0)
  {
    goto LABEL_47;
  }

  if (v12 != 220)
  {
    if (v12 != 254)
    {
      if (v12 == 221)
      {
        if (*a2 + 4 >= v10)
        {
          goto LABEL_6;
        }

        popbytes(a2, 2, &v34);
        LOWORD(SOS) = v34;
        if (!v34)
        {
          v27 = popbytes(a2, 2, &v34);
          *(a2 + 48) = v27;
          LOWORD(SOS) = v34;
          if (!v34)
          {
            *(a2 + 52) = v27 + 1;
            v12 = 221;
            goto LABEL_47;
          }
        }

        return SOS;
      }

      if ((v12 & 0xF0) != 0xE0)
      {
LABEL_21:
        if ((v12 - 193) < 0xF || v20 == 222)
        {
          goto LABEL_6;
        }

        if ((v12 - 240) > 0xE)
        {
          if ((v12 - 216) >= 2 && v12 != 1 && v12 <= 0xBF)
          {
            goto LABEL_6;
          }
        }

        else
        {
          if (*a2 + 2 >= v10)
          {
            goto LABEL_6;
          }

          v22 = popbytes(a2, 2, &v34);
          LOWORD(SOS) = v34;
          if (v34)
          {
            return SOS;
          }

          v23 = v22 - 2;
          v24 = *a2;
          if (*a2 + v23 >= v10)
          {
            goto LABEL_6;
          }

          if (v23)
          {
            v25 = *(a2 + 64);
            while (v24 < v25)
            {
              *a2 = ++v24;
              if (!--v23)
              {
                goto LABEL_47;
              }
            }

            goto LABEL_70;
          }
        }

        goto LABEL_47;
      }
    }

    if (*a2 + 2 >= v10)
    {
      goto LABEL_6;
    }

    v28 = popbytes(a2, 2, &v34);
    LOWORD(SOS) = v34;
    if (!v34)
    {
      v29 = v28 - 2;
      if (*a2 + v29 >= v10)
      {
        goto LABEL_6;
      }

      while (1)
      {
        v30 = v29 - 0x4000;
        if (v29 < 0x4000)
        {
          break;
        }

        if (*a2 + 0x4000 >= v10)
        {
          fig_log_get_emitter();
          return FigSignalErrorAtGM();
        }

        popbytes(a2, 0x4000, &v34);
        LOWORD(SOS) = v34;
        v29 = v30;
        if (v34)
        {
          return SOS;
        }
      }

      popbytes(a2, v29, &v34);
      LOWORD(SOS) = v34;
      if (!v34)
      {
        goto LABEL_47;
      }
    }

    return SOS;
  }

  if (*a2 + 4 >= v10)
  {
    goto LABEL_6;
  }

  popbytes(a2, 2, &v34);
  LOWORD(SOS) = v34;
  if (!v34)
  {
    popbytes(a2, 2, &v34);
    LOWORD(SOS) = v34;
    if (!v34)
    {
      v12 = 220;
      goto LABEL_47;
    }
  }

  return SOS;
}

uint64_t read_SOF(uint64_t a1, unint64_t *a2, _DWORD *a3, _DWORD *a4, __int16 *a5, __int16 *a6, int a7)
{
  v29 = 0;
  popbytes(a2, 2, &v29);
  v14 = v29;
  if (!v29)
  {
    v15 = *a2;
    if (*a2 >= a2[8])
    {
      return -12909;
    }

    *a2 = (v15 + 1);
    if (*v15 != 8)
    {
      return -12910;
    }

    *a4 = popbytes(a2, 2, &v29);
    v14 = v29;
    if (!v29)
    {
      *a3 = popbytes(a2, 2, &v29);
      v14 = v29;
      if (!v29)
      {
        v16 = *a2;
        if (*a2 < a2[8])
        {
          *a2 = (v16 + 1);
          v17 = *v16;
          *a6 = v17;
          if ((v17 - 6) < 0xFFFFFFFB)
          {
            return -12910;
          }

          if (a7)
          {
            *(a1 + 3274) = v17;
            LOWORD(v17) = *a6;
          }

          if (v17 < 1)
          {
            return 0;
          }

          v18 = 0;
          v19 = 0;
          LOWORD(v20) = 0;
          v21 = a1 + 3280;
          while (1)
          {
            v22 = *a2;
            v23 = a2[8];
            if (*a2 >= v23)
            {
              break;
            }

            *a2 = (v22 + 1);
            *a5 = *v22;
            if ((v22 + 1) >= v23)
            {
              return -12909;
            }

            *a2 = (v22 + 2);
            if ((v22 + 2) >= v23)
            {
              return -12909;
            }

            v24 = v22[1];
            *a2 = (v22 + 3);
            v25 = v22[2];
            if (v25 > 3)
            {
              return -12909;
            }

            if (v24 > 0x22 || ((1 << v24) & 0x600060000) == 0)
            {
              return -12909;
            }

            if (a7)
            {
              *(v21 + 8 * v18) = a1 + 3410 + 130 * v25;
              if (*a6 == 1)
              {
                *(a1 + 4096) = 17;
                *(a1 + 3405) = 17;
                *(a1 + 3400) = 1;
              }

              else
              {
                v27 = v21 + v18;
                *(v27 + 125) = v24;
                *(v27 + 120) = (v24 >> 4) * (v24 & 0xF);
                if (v20 <= (v24 >> 4))
                {
                  v20 = v24 >> 4;
                }

                if (v19 <= (v24 & 0xF))
                {
                  v19 = v24 & 0xF;
                }

                *(a1 + 4096) = v19 | (16 * v20);
              }
            }

            v14 = 0;
            ++v18;
            ++a5;
            if (v18 >= *a6)
            {
              return v14;
            }
          }

          a6 = a5;
        }

        v14 = -12909;
        *a6 = -12909;
      }
    }
  }

  return v14;
}

uint64_t read_SOS(uint64_t a1, unint64_t *a2, int a3, uint64_t a4, int a5)
{
  v27 = 0;
  popbytes(a2, 2, &v27);
  v10 = v27;
  if (!v27)
  {
    v11 = *a2;
    v12 = a2[8];
    if (*a2 >= v12)
    {
      return -12909;
    }

    v13 = v11 + 1;
    *a2 = (v11 + 1);
    v14 = *v11;
    if (v14 != a3)
    {
      return 53;
    }

    if (v14)
    {
      v15 = 0;
      while (1)
      {
        v16 = *a2;
        v17 = a2[8];
        if (*a2 >= v17)
        {
          return -12909;
        }

        *a2 = (v16 + 1);
        if ((v16 + 1) >= v17)
        {
          return -12909;
        }

        v18 = *v16;
        *a2 = (v16 + 2);
        if (v18 != *(a4 + 2 * v15))
        {
          return 54;
        }

        v19 = v16[1];
        if ((v19 & 0xCCCCCCCC) != 0)
        {
          return 33;
        }

        if (a5)
        {
          v20 = a1 + 3936 + 24 * (v19 >> 4);
          *(a1 + 3320 + 8 * v15) = v20;
          v21 = a1 + 24 * (v19 & 0xF);
          *(a1 + 3360 + 8 * v15) = v21;
          if (!*(v20 + 8) || !*(v21 + 8))
          {
            return 40;
          }
        }

        if (v14 <= ++v15)
        {
          v13 = *a2;
          v12 = a2[8];
          break;
        }
      }
    }

    if (v13 >= v12)
    {
      return -12909;
    }

    v22 = v13 + 1;
    *a2 = (v13 + 1);
    if (*v13)
    {
      if (v22 < v12)
      {
        *a2 = (v13 + 2);
        return 18;
      }

      return -12909;
    }

    if (v22 >= v12)
    {
      return -12909;
    }

    *a2 = (v13 + 2);
    if ((v13 + 2) >= v12)
    {
      return -12909;
    }

    v23 = v13[1];
    *a2 = (v13 + 3);
    if (v13[2])
    {
      v24 = 20;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = v23 == 63;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return v24;
    }

    else
    {
      return 19;
    }
  }

  return v10;
}

uint64_t read_QT(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, __int16 *), uint64_t a3, int a4)
{
  v27 = 0;
  v8 = a2(a3, 2, &v27);
  v9 = v27;
  if (!v27)
  {
    v11 = v8 - 2;
    if (v8 == 2)
    {
      return 0;
    }

    else
    {
      v12 = a1 + 3410;
LABEL_5:
      v13 = a2(a3, 1, &v27);
      v9 = v27;
      if (!v27)
      {
        v14 = v13 >> 4;
        if (v13 < 0x10 || v14 == 1)
        {
          if ((v13 & 0xFu) > 3)
          {
            return 201;
          }

          else
          {
            v15 = (v12 + 130 * (v13 & 0xF));
            if (v14 == 1)
            {
              v11 -= 129;
              v16 = 64;
              v17 = tables;
              while (1)
              {
                v18 = a2(a3, 2, &v27);
                v9 = v27;
                if (v27)
                {
                  break;
                }

                if (a4)
                {
                  v23 = *v17++;
                  *(v15->i16 + v23) = v18;
                }

                if (!--v16)
                {
                  goto LABEL_21;
                }
              }
            }

            else
            {
              v11 -= 65;
              v24 = 64;
              v25 = tables;
              while (1)
              {
                v18 = a2(a3, 1, &v27);
                v9 = v27;
                if (v27)
                {
                  break;
                }

                if (a4)
                {
                  v26 = *v25++;
                  *(v15->i16 + v26) = v18;
                }

                if (!--v24)
                {
LABEL_21:
                  if (a4)
                  {
                    scale_QT(v19, v20, v21, v22, v18, v15);
                  }

                  v9 = 0;
                  if (v11)
                  {
                    goto LABEL_5;
                  }

                  return v9;
                }
              }
            }
          }
        }

        else
        {
          return 200;
        }
      }
    }
  }

  return v9;
}

uint64_t read_HT(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, __int16 *), uint64_t a3, unint64_t a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v55[0] = 0;
  v8 = a2(a3, 2, &v53);
  if (v8 > a4)
  {
    return -12909;
  }

  v9 = v53;
  if (v53)
  {
    return v9;
  }

  v11 = v8 - 2;
  if (v8 == 2)
  {
    return 0;
  }

  v51 = a1 + 3936;
  while (1)
  {
    v12 = a2(a3, 1, &v53);
    v9 = v53;
    if (v53)
    {
      return v9;
    }

    v13 = v12;
    if ((v12 & 0xFFFC) != 0x10 && (v12 << 16) > 0x20000 && v12 << 16 != 196608)
    {
      return 300;
    }

    if (v11 < 17)
    {
      return -12909;
    }

    v14 = 0;
    v52 = v12;
    for (i = 1; i != 17; ++i)
    {
      v16 = a2(a3, 1, &v53);
      v55[i] = v16;
      v9 = v53;
      if (v53)
      {
        return v9;
      }

      v14 += v16;
    }

    if (v14 > 0x100 || v14 >= v11 - 16)
    {
      return -12909;
    }

    if (v14)
    {
      v18 = 0;
      v19 = v54;
      v11 -= 17;
      while (1)
      {
        *v19 = a2(a3, 1, &v53);
        v9 = v53;
        if (v53)
        {
          return v9;
        }

        ++v19;
        --v11;
        if (v14 <= ++v18)
        {
          goto LABEL_26;
        }
      }
    }

    v11 -= 17;
LABEL_26:
    if (v52 - 16 >= 4)
    {
      break;
    }

    v20 = v14;
    if (!matchesRememberedHT(a1, v52, v55, v54, v14))
    {
      v29 = 0;
      v30 = v13 & 0xF;
      do
      {
        if (v55[v29 + 1] != tables[v29 + 201])
        {
          goto LABEL_46;
        }

        ++v29;
      }

      while (v29 != 16);
      if (v14)
      {
        v31 = 0;
        v32 = v54;
        v33 = &byte_18FECF03A;
        while (*v32 == *v33)
        {
          ++v33;
          ++v32;
          if (v14 <= ++v31)
          {
            goto LABEL_45;
          }
        }

LABEL_46:
        for (j = 0; j != 16; ++j)
        {
          if (v55[j + 1] != tables[j + 218])
          {
            goto LABEL_64;
          }
        }

        if (v14)
        {
          v36 = 0;
          v37 = v54;
          v38 = &byte_18FECF0DC;
          while (*v37 == *v38)
          {
            ++v38;
            ++v37;
            if (v14 <= ++v36)
            {
              goto LABEL_53;
            }
          }

LABEL_64:
          DisposeDecodeTable(a1 + 24 * v30);
          if (MakeDecodeTable(0xC, v55, v54, (a1 + 24 * v30)))
          {
            v50 = a1 + 24 * v30;
            goto LABEL_76;
          }

          goto LABEL_65;
        }

LABEL_53:
        v34 = 72;
      }

      else
      {
LABEL_45:
        v34 = 48;
      }

      v39 = a1 + 24 * v30;
      DisposeDecodeTable(v39);
      v40 = *(a1 + 3168) + v34;
      v41 = *(v40 + 16);
      *v39 = *v40;
      *(v39 + 16) = v41;
LABEL_65:
      v47 = v30 | 0x10;
      v48 = a1;
LABEL_68:
      if (rememberHT(v48, v47, v55, v54, v20))
      {
        return -12904;
      }
    }

LABEL_69:
    if (!v11)
    {
      return v53;
    }
  }

  if (v52 > 3)
  {
    return -1;
  }

  v20 = v14;
  if (matchesRememberedHT(a1, v52, v55, v54, v14))
  {
    goto LABEL_69;
  }

  for (k = 0; k != 16; ++k)
  {
    if (v55[k + 1] != tables[k + 167])
    {
      goto LABEL_55;
    }
  }

  if (!v14)
  {
LABEL_36:
    v25 = v51 + 24 * v13;
    DisposeDecodeTable(v25);
    v26 = *(a1 + 3168);
    v27 = *v26;
    v28 = *(v26 + 2);
LABEL_63:
    *(v25 + 16) = v28;
    *v25 = v27;
    goto LABEL_67;
  }

  v22 = 0;
  v23 = 0;
  v24 = v54;
  while (v22 == *v24)
  {
    ++v24;
    v22 = ++v23;
    if (v14 <= v23)
    {
      goto LABEL_36;
    }
  }

LABEL_55:
  v42 = 0;
  while (v55[v42 + 1] == tables[v42 + 184])
  {
    if (++v42 == 16)
    {
      if (!v14)
      {
LABEL_62:
        v25 = v51 + 24 * v13;
        DisposeDecodeTable(v25);
        v46 = *(a1 + 3168);
        v27 = *(v46 + 24);
        v28 = *(v46 + 40);
        goto LABEL_63;
      }

      v43 = 0;
      v44 = 0;
      v45 = v54;
      while (v43 == *v45)
      {
        ++v45;
        v43 = ++v44;
        if (v14 <= v44)
        {
          goto LABEL_62;
        }
      }

      break;
    }
  }

  v49 = (v51 + 24 * v13);
  DisposeDecodeTable(v49);
  if (!MakeDecodeTable(5, v55, v54, v49))
  {
LABEL_67:
    v48 = a1;
    v47 = v52;
    goto LABEL_68;
  }

  v50 = v49;
LABEL_76:
  DisposeDecodeTable(v50);
  return -12904;
}

uint64_t consume_progressive_mode_markers(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 56);
  if (v3 < 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = *a2 + v3;
  }

  if (v2 >= *(a2 + 64))
  {
    return 4294954387;
  }

  *a2 = v2 + 1;
  v6 = *v2;
  v73 = 0;
  *(a2 + 48) = 0;
  if (v6 == 217)
  {
    return 4294954387;
  }

  v9 = (a1 + 4096);
  v10 = (a1 + 4184);
  v11 = a1 + 4396;
  v12 = a1 + 4296;
  v13 = a1 + 3936;
  v14 = a1 + 4320;
  v15 = a1 + 4344;
  while (2)
  {
    v16 = *a2;
    if (*a2 >= v4)
    {
      return 4294954387;
    }

    if (v6 != 255)
    {
      v18 = *(a2 + 64);
      while (v16 < v18)
      {
        v17 = v16 + 1;
        *a2 = v16 + 1;
        v6 = *v16;
        v19 = v6 == 255 || v17 >= v4;
        ++v16;
        if (v19)
        {
          goto LABEL_19;
        }
      }

      return 4294954387;
    }

    v17 = *a2;
LABEL_19:
    v20 = v17;
    while (v6 == 255)
    {
      if (v20 >= v4)
      {
        goto LABEL_91;
      }

      if (v20 >= *(a2 + 64))
      {
        return 4294954387;
      }

      *a2 = v20 + 1;
      v6 = *v20;
      ++v17;
      ++v20;
    }

    if (v6 > 195)
    {
      switch(v6)
      {
        case 196:
          v28 = v10;
          v29 = v11;
          v30 = v12;
          v71 = v14;
          v31 = v9;
          v32 = v13;
          v33 = v15;
          HT = read_HT(a1, popbytesCallback, a2, *(a2 + 64) - v17);
          v73 = HT;
          if (!HT)
          {
            v6 = 196;
            v15 = v33;
            v13 = v32;
            v9 = v31;
            v14 = v71;
            v12 = v30;
            v11 = v29;
            v10 = v28;
            goto LABEL_36;
          }

          return HT;
        case 218:
          v69 = v15;
          v72 = v9;
          v74 = 0;
          popbytes(a2, 2, &v74);
          if (!v74)
          {
            v35 = *a2;
            v36 = *(a2 + 64);
            if (*a2 < v36)
            {
              v37 = v35 + 1;
              *a2 = v35 + 1;
              v38 = *v35;
              *(a1 + 4392) = v38;
              if (*(a1 + 4132) >= v38)
              {
                if (v38)
                {
                  v39 = 0;
                  while (1)
                  {
                    v40 = *a2;
                    v41 = *(a2 + 64);
                    if (*a2 >= v41)
                    {
                      break;
                    }

                    *a2 = v40 + 1;
                    if ((v40 + 1) >= v41)
                    {
                      break;
                    }

                    v42 = *v40;
                    *a2 = v40 + 2;
                    v43 = *(a1 + 4132);
                    if (v43 < 1)
                    {
                      break;
                    }

                    v44 = v40[1];
                    if (*v10 != v42)
                    {
                      v47 = 0;
                      while (v43 > ++v47)
                      {
                        v45 = v47;
                        if (v10[v47] == v42)
                        {
                          v46 = v47;
                          goto LABEL_52;
                        }
                      }

                      return 4294954387;
                    }

                    v45 = 0;
                    v46 = 0;
LABEL_52:
                    *(v11 + 4 * v39) = v45;
                    if ((v44 & 0xF) > 3)
                    {
                      return 4294954387;
                    }

                    *(v12 + 8 * v46) = a1 + 24 * (v44 & 0xF);
                    if (v44 > 0x3F)
                    {
                      return 4294954387;
                    }

                    *(v14 + 8 * v46) = v13 + 24 * (v44 >> 4);
                    if (v38 <= ++v39)
                    {
                      v37 = *a2;
                      v36 = *(a2 + 64);
                      goto LABEL_56;
                    }
                  }
                }

                else
                {
LABEL_56:
                  if (v37 >= v36)
                  {
                    v72[312] = -109;
                    return 4294954387;
                  }

                  *a2 = v37 + 1;
                  v48 = *v37;
                  v72[312] = v48;
                  if ((v37 + 1) >= v36)
                  {
                    v72[313] = -109;
                    return 4294954387;
                  }

                  *a2 = v37 + 2;
                  v49 = v37[1];
                  v72[313] = v49;
                  if (v48 <= v49 && v49 <= 0x3F && (v37 + 2) < v36)
                  {
                    *a2 = v37 + 3;
                    v50 = v37[2];
                    v72[314] = v50 >> 4;
                    v72[315] = v50 & 0xF;
                    if (v38)
                    {
                      v51 = 0;
                      while (1)
                      {
                        v52 = *(v11 + 4 * v51);
                        if (!v48 && !*(*(v14 + 8 * v52) + 8))
                        {
                          break;
                        }

                        if (v49 && !*(*(v12 + 8 * v52) + 8))
                        {
                          break;
                        }

                        if (v38 <= ++v51)
                        {
                          if (*(a1 + 3280) && (v38 == 1 || *(a1 + 3288) && *(a1 + 3296)))
                          {
                            goto LABEL_81;
                          }

                          return 4294954387;
                        }
                      }
                    }

                    else
                    {
                      if (!*(a1 + 3280))
                      {
                        return 4294954387;
                      }

LABEL_81:
                      *(v69 + 8) = 0;
                      *v69 = 0;
                      v54 = DecodeProgressiveScan(a1, a2);
                      v73 = v54;
                      if (!v54)
                      {
                        v55 = *a2;
                        if (*a2 < *(a2 + 64))
                        {
                          *a2 = v55 + 1;
                          v6 = *v55;
                          goto LABEL_90;
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          return 4294954387;
        case 219:
          v70 = v10;
          v21 = v11;
          v22 = v12;
          v23 = v14;
          v24 = v9;
          v25 = v13;
          v26 = v15;
          QT = read_QT(a1, popbytesCallback, a2, 1);
          v73 = QT;
          if (QT)
          {
            return 4294954387;
          }

          v6 = 219;
          v15 = v26;
          v13 = v25;
          v9 = v24;
          v14 = v23;
          v12 = v22;
          goto LABEL_33;
      }
    }

    else
    {
      result = 4294954387;
      if ((v6 - 192) < 3 || !v6)
      {
        return result;
      }
    }

    if ((v6 & 0xF8) == 0xD0)
    {
      goto LABEL_36;
    }

    switch(v6)
    {
      case 220:
        v69 = v15;
        v72 = v9;
        popbytes(a2, 2, &v73);
        LOWORD(HT) = v73;
        if (!v73)
        {
          popbytes(a2, 2, &v73);
          LOWORD(HT) = v73;
          if (!v73)
          {
            v6 = 220;
            goto LABEL_90;
          }
        }

        return HT;
      case 254:
        goto LABEL_88;
      case 221:
        v69 = v15;
        v72 = v9;
        popbytes(a2, 2, &v73);
        LOWORD(HT) = v73;
        if (!v73)
        {
          v53 = popbytes(a2, 2, &v73);
          *(a2 + 48) = v53;
          LOWORD(HT) = v73;
          if (!v73)
          {
            *(a2 + 52) = v53 + 1;
            v6 = 221;
LABEL_90:
            v15 = v69;
            v9 = v72;
            goto LABEL_36;
          }
        }

        return HT;
    }

    if ((v6 & 0xF0) == 0xE0)
    {
LABEL_88:
      v69 = v15;
      v72 = v9;
      v56 = popbytes(a2, 2, &v73);
      LOWORD(HT) = v73;
      if (v73)
      {
        return HT;
      }

      v57 = v56 - 2;
      if (!v57)
      {
        goto LABEL_90;
      }

      v67 = *(a2 + 64);
      v68 = *a2;
      v15 = v69;
      v9 = v72;
      while (v68 < v67)
      {
        *a2 = ++v68;
        if (!--v57)
        {
          goto LABEL_36;
        }
      }

      return 4294954387;
    }

LABEL_91:
    result = 4294954387;
    if ((v6 - 193) < 0xF || (v6 & 0xFE) == 0xDE)
    {
      return result;
    }

    if ((v6 - 240) <= 0xE)
    {
      v70 = v10;
      v21 = v11;
      v58 = v12;
      v59 = v14;
      v60 = v9;
      v61 = v13;
      v62 = v15;
      v63 = popbytes(a2, 2, &v73);
      LOWORD(HT) = v73;
      if (v73)
      {
        return HT;
      }

      v64 = v63 - 2;
      if (v64)
      {
        v65 = *(a2 + 64);
        v66 = *a2;
        v15 = v62;
        v13 = v61;
        v9 = v60;
        v14 = v59;
        v12 = v58;
        v11 = v21;
        v10 = v70;
        while (v66 < v65)
        {
          *a2 = ++v66;
          if (!--v64)
          {
            goto LABEL_36;
          }
        }

        return 4294954387;
      }

      v15 = v62;
      v13 = v61;
      v9 = v60;
      v14 = v59;
      v12 = v58;
LABEL_33:
      v11 = v21;
      v10 = v70;
      goto LABEL_36;
    }

    if (v6 != 1)
    {
      if (v6 == 216)
      {
        return result;
      }

      if (v6 != 217)
      {
        if (v6 < 0xC0)
        {
          return result;
        }

        goto LABEL_36;
      }

      LOWORD(HT) = 0;
      return HT;
    }

LABEL_36:
    result = 4294954387;
    if (v6 != 217)
    {
      continue;
    }

    return result;
  }
}

void scale_QT(double a1, double a2, double a3, double a4, uint64_t a5, int16x8_t *a6)
{
  v6 = 0;
  v22 = *MEMORY[0x1E69E9840];
  v20[0] = xmmword_18FECEF10;
  v20[1] = xmmword_18FECEF20;
  v20[2] = xmmword_18FECEF30;
  v20[3] = xmmword_18FECEF40;
  v7 = 1;
  v8 = v21;
  v9 = a6;
  do
  {
    v10 = 0;
    v11 = *(v20 + v6) * 4.0 * 262144.0;
    do
    {
      LOWORD(a4) = v9[v10 / 8].i16[0];
      a4 = v11 * *(v20 + v10) * *&a4;
      if (v7 <= a4)
      {
        v7 = a4;
      }

      *&v8[4 * v10] = a4;
      v10 += 8;
    }

    while (v10 != 64);
    ++v6;
    v9 = (v9 + 2);
    v8 += 4;
  }

  while (v6 != 8);
  v12 = -1;
  do
  {
    v13 = v12 + 1;
    v14 = 1 << (v12 + 1);
    v15 = (v14 + v7) >> (v12++ + 2);
  }

  while (v15 >= 0x10000);
  v16 = 0;
  v17 = vdupq_n_s32(v14);
  v18 = vnegq_s32(vdupq_n_s32(v13 + 1));
  v19 = a6;
  do
  {
    *v19++ = vuzp1q_s16(vshlq_s32(vaddq_s32(*&v21[v16], v17), v18), vshlq_s32(vaddq_s32(*&v21[v16 + 16], v17), v18));
    v16 += 32;
  }

  while (v16 != 256);
  a6[8].i16[0] = 12 - v13;
}

uint64_t matchesRememberedHT(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *a4, int a5)
{
  v5 = (a1 + 8 * a2 + 4032);
  if (a2 >= 16)
  {
    v5 = (a1 + 8 * (a2 & 0xF) + 4064);
  }

  v6 = *v5;
  if (v6)
  {
    v7 = 0;
    while (*(v6 + v7) == *(a3 + 1 + v7))
    {
      if (++v7 == 16)
      {
        if (a5 < 1)
        {
          return 1;
        }

        v8 = (v6 + 16);
        v9 = a5;
        while (1)
        {
          v11 = *v8++;
          v10 = v11;
          v12 = *a4++;
          if (v10 != v12)
          {
            break;
          }

          if (!--v9)
          {
            return 1;
          }
        }

        return 0;
      }
    }
  }

  return 0;
}

uint64_t rememberHT(uint64_t a1, int a2, uint64_t a3, const void *a4, int a5)
{
  v9 = a5;
  v10 = malloc_type_malloc(a5 + 16, 0xA434F67CuLL);
  v11 = v10;
  if (v10)
  {
    *v10 = *(a3 + 1);
    memmove(v10 + 1, a4, v9);
  }

  if (a2 > 15)
  {
    v12 = (a1 + 8 * (a2 & 0xF) + 4064);
    v13 = *v12;
    if (!*v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = (a1 + 8 * a2 + 4032);
  v13 = *v12;
  if (*v12)
  {
LABEL_7:
    free(v13);
  }

LABEL_8:
  *v12 = v11;
  if (v11)
  {
    return 0;
  }

  else
  {
    return 4294954392;
  }
}

uint64_t vt_Copy_444vf_TRC_Tone_Mat_TRC_420vf_neon_fp16(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t a7, void *a8, void *a9)
{
  v66 = a7;
  v67 = a8;
  v69 = a4;
  v70 = a5;
  v68 = a3;
  v75 = *MEMORY[0x1E69E9840];
  v65 = a1;
  v9 = *(a1 + 162);
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = *a6;
  v71 = *a2;
  v72 = v15;
  v16 = a6[1];
  v17 = a6[2];
  v18 = a6[3];
  v19 = a6[4];
  v20 = a6[5];
  v73 = v16;
  v74 = v10;
  v22 = v13 + v11 != v10 || v20 + v18 != v16;
  v63 = v22;
  if (v9 == 255)
  {
    v23 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v23)
    {
      v24 = 0;
LABEL_71:
      free(v23);
      return v24;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v9 + 160, a3, a4);
    v23 = &v62[-v25];
    bzero(&v62[-v25], v26);
  }

  v27 = v17 - 1;
  v28 = a9;
  v29 = v12 - 1;
  if (v19)
  {
    v30 = v14 + 1;
  }

  else
  {
    v29 = v12;
    v30 = v14;
  }

  if (v19)
  {
    v31 = v19 + 1;
  }

  else
  {
    v27 = v17;
    v31 = v19;
  }

  v32 = v29 - (v27 & 1);
  v33 = v27 & 0xFFFFFFFFFFFFFFFELL;
  v34 = v18 - 1;
  v35 = v11 - 1;
  if (v20)
  {
    v36 = v13 + 1;
  }

  else
  {
    v35 = v11;
    v36 = v13;
  }

  if (v20)
  {
    v37 = v20 + 1;
  }

  else
  {
    v34 = v18;
    v37 = v20;
  }

  if (v34)
  {
    v38 = v69;
    v39 = v70;
    if (v63 || (v40 = v35 + 1 + v36, (*v69 * v40) > *v70) || (v69[1] * v40) > v70[1] || (v69[2] * v40) > v70[2] || (v41 = v34 + 1 + v37, (*v67 * v41) > *a9) || (v67[1] * (v41 / 2)) > a9[1] || (v67[2] * v41) > a9[2])
    {
      --v34;
      --v35;
    }

    else
    {
      ++v73;
      ++v74;
      ++v35;
      ++v34;
    }
  }

  else
  {
    v38 = v69;
    v39 = v70;
  }

  if (v32 + v30 > v71)
  {
    v32 = v71 - v30;
  }

  if (v33 + v31 > v72)
  {
    v33 = v72 - v31;
  }

  if (v35 + v36 > v74)
  {
    v35 = v74 - v36;
  }

  if (v34 + v37 > v73)
  {
    v34 = v73 - v37;
  }

  if (v32 >= v33)
  {
    v42 = v33;
  }

  else
  {
    v42 = v32;
  }

  if (v35 >= v34)
  {
    v43 = v34;
  }

  else
  {
    v43 = v35;
  }

  v44 = v36 + v43 - 1;
  v45 = v42 + v30;
  v46 = (v42 + v30 + v44 * *v38) > *v39;
  v64 = v36;
  if (v46)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 8) && (v38[1] * v44 + 2 * v45) > v39[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v68 + 16) && (v45 + v38[2] * v44) > v39[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v52 = v43 + v37 - 1;
  v53 = v42 + v31;
  if ((v42 + v31 + *v67 * v52) > *a9)
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  v54 = v66;
  if (*(v66 + 8) && ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67[1] * ((v43 + v37 + 1) / 2 - 1) > a9[1])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
    goto LABEL_64;
  }

  if (*(v66 + 16) && (v53 + v67[2] * v52) > a9[2])
  {
    v47 = v30;
    v48 = v9;
    v49 = v37;
    v50 = v31;
    v51 = a9;
LABEL_64:
    fig_log_get_emitter();
    v24 = FigSignalErrorAtGM();
    v54 = v66;
    v38 = v69;
    v39 = v70;
    v28 = v51;
    v31 = v50;
    v37 = v49;
    v9 = v48;
    v30 = v47;
    v36 = v64;
    if (v24)
    {
      goto LABEL_70;
    }
  }

  *v23 = v9;
  *(v23 + 4) = v71;
  v55 = v73;
  *(v23 + 12) = v74;
  *(v23 + 20) = v42;
  *(v23 + 28) = v43;
  *(v23 + 36) = v30;
  *(v23 + 44) = v36;
  v23[11] = v55;
  v23[12] = v42;
  v23[13] = v43;
  v23[14] = v31;
  v23[7] = v68;
  v23[8] = v38;
  v56 = v72;
  v23[9] = v39;
  v23[10] = v56;
  v23[15] = v37;
  v23[16] = v54;
  v23[17] = v67;
  v23[18] = v28;
  v23[19] = v65;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_apply_f(v9, global_queue, v23, vt_Copy_444vf_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD);
  if (!v9)
  {
    return 0;
  }

  v58 = (v23 + 20);
  v59 = v9;
  while (1)
  {
    v60 = *v58++;
    v24 = v60;
    if (v60)
    {
      break;
    }

    if (!--v59)
    {
      v24 = 0;
      break;
    }
  }

LABEL_70:
  if (v9 == 255)
  {
    goto LABEL_71;
  }

  return v24;
}

uint64_t *vt_Copy_444vf_TRC_Tone_Mat_TRC_420vf_neon_fp16_GCD(uint64_t *result, uint64_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, double a8, double a9, float32x4_t a10)
{
  v10 = 2 * *result;
  v332 = *(result + 44) + 2 * (*(result + 28) * a2 / v10);
  v333 = *(result + 36);
  v11 = result[14];
  v13 = result[12];
  v12 = result[13];
  v338 = result;
  v14 = v12 * a2 / v10;
  v15 = result[15] + 2 * v14;
  v16 = 2 * ((v12 + v12 * a2) / v10 - v14);
  v17 = result[7];
  v18 = result[8];
  v19 = result[16];
  v20 = result[17];
  v331 = v18[2];
  v335 = v17[2];
  v336 = v20[2];
  v334 = v19[2];
  v21 = (v334 + v336 * v15 + v11);
  if (v16 >= 1)
  {
    v22 = 0;
    v23 = result[19];
    v24 = v13 - 7;
    v25 = *v18;
    v26 = v18[1];
    v27 = *v20;
    v28 = *(v23 + 140);
    v341 = v16;
    v342 = result[12];
    v29 = *(v23 + 142);
    v30 = *(v23 + 144);
    v31 = *(v23 + 146);
    v32 = *(v23 + 148);
    result = &qword_18FECD000;
    v33 = 8191.0 / *(v23 + 128);
    v34 = v28;
    v35 = *(v23 + 150);
    v36 = *(v23 + 152);
    v37 = v29;
    _S30 = v33 * *v23;
    _S11 = v33 * *(v23 + 8);
    _S20 = *(v23 + 36);
    _S21 = *(v23 + 40);
    _S31 = v33 * *(v23 + 16);
    _S10 = v33 * *(v23 + 20);
    v350 = v30;
    v389 = v31;
    v371 = v32;
    v397 = v35;
    _Q6.i32[0] = *(v23 + 44);
    v44.i32[0] = *(v23 + 48);
    a7.i32[0] = *(v23 + 52);
    v46.i32[0] = *(v23 + 56);
    _S8 = v33 * *(v23 + 28);
    *&a8 = v36;
    v387 = v36;
    *&a8 = v28;
    v48 = v23 + 16548;
    v49 = v13 & 0xFFFFFFFE;
    v50 = v23 + 164;
    v51 = v23 + 32932;
    __asm { FCVT            H12, S30 }

    v57 = vdupq_lane_s16(*&a8, 0);
    *&a8 = -v29;
    v58 = vdupq_lane_s16(*&a8, 0);
    __asm { FCVT            H5, S8 }

    v395 = _H5;
    v396 = v58;
    __asm { FCVT            H5, S31 }

    v394 = _H5;
    v44.i32[1] = *(v23 + 60);
    __asm { FMOV            V5.2S, #0.25 }

    *a10.f32 = vmul_f32(v44, _D5);
    v385 = vdupq_lane_s32(vcvt_f16_f32(a10), 0);
    a7.i32[1] = *(v23 + 64);
    *a7.f32 = vmul_f32(*a7.f32, _D5);
    v62 = vdupq_lane_s32(vcvt_f16_f32(a7), 0);
    v384 = v62;
    v46.i32[1] = *(v23 + 68);
    *v62.i8 = vmul_f32(v46, _D5);
    v63 = vcvt_f16_f32(v62);
    v64 = vdupq_lane_s32(v63, 0);
    *v63.i16 = v30;
    v65 = vdupq_lane_s16(v63, 0);
    v381 = v65;
    v382 = v64;
    *v65.i16 = v31;
    v66 = vdupq_lane_s16(*v65.i8, 0);
    *v65.i16 = v32;
    v67 = vdupq_lane_s16(*v65.i8, 0);
    v379 = v67;
    v380 = v66;
    *v67.i16 = v35;
    v68 = vdupq_lane_s16(*v67.i8, 0);
    *v67.i16 = v36;
    v377 = vdupq_lane_s16(*v67.i8, 0);
    v378 = v68;
    v69 = *v19;
    v340 = v20[1];
    v70 = (v19[1] + v340 * (v15 / 2) + v11);
    v71 = (v69 + *v20 * v15 + v11);
    v73 = *v17;
    v72 = v17[1];
    v74 = (v72 + v26 * v332 + v333);
    if (!v72)
    {
      v74 = 0;
    }

    v75 = (v73 + v25 * v332 + v333);
    v339 = v13 & 0xFFFFFFF8;
    _Q16.i32[0] = *(v23 + 80);
    _Q25.i32[0] = *(v23 + 104);
    _S17 = *(v23 + 108);
    _S18 = *(v23 + 112);
    _S2 = *(v23 + 120);
    __asm { FCVT            H9, S10 }

    v393 = _H9;
    __asm { FCVT            H9, S11 }

    v392 = _H9;
    v391 = *(v23 + 36);
    __asm { FCVT            H9, S20 }

    v363 = _H9;
    v390 = *(v23 + 40);
    __asm { FCVT            H9, S21 }

    v388 = *(v23 + 44);
    __asm { FCVT            H6, S6 }

    v361 = _H6;
    v362 = _H9;
    __asm { FCVT            H6, S17 }

    v360 = _H6;
    __asm { FCVT            H6, S18 }

    v359 = _H6;
    v364 = *(v23 + 116);
    __asm { FCVT            H6, S24 }

    v358 = _H6;
    __asm { FCVT            H6, S2 }

    v376 = *(v23 + 72);
    __asm { FCVT            H1, S1 }

    v356 = _H1;
    v357 = _H6;
    v375 = *(v23 + 76);
    __asm { FCVT            H1, S5 }

    v355 = _H1;
    v374 = *_Q16.i32;
    __asm { FCVT            H1, S16 }

    v354 = _H1;
    v373 = *(v23 + 84);
    __asm { FCVT            H6, S22 }

    v349 = _H6;
    v372 = *(v23 + 88);
    __asm { FCVT            H6, S23 }

    v348 = _H6;
    v370 = *(v23 + 92);
    __asm { FCVT            H6, S19 }

    v353 = *(v23 + 96);
    __asm { FCVT            H1, S1 }

    v346 = _H1;
    v347 = *_Q6.i16;
    v351 = *(v23 + 100);
    __asm { FCVT            H1, S5 }

    v345 = _H1;
    v368 = *_Q25.i32;
    __asm { FCVT            H1, S25 }

    v344 = _H1;
    v98 = a10.i64[0];
    v99.i32[0] = v62.i32[1];
    v343 = *&v62.i32[1];
    v383 = *v62.i32;
    v400 = _S11;
    v399 = _S10;
    v386 = v57;
    v369 = v29;
    v367 = _H12;
    v366 = _S31;
    v365 = v34;
    v398 = _S8;
    v352 = _S30;
    do
    {
      v100 = v75 + v25;
      v101 = &v74[v26];
      v102 = v71 + v27;
      if (v13 < 8)
      {
        v172 = 0;
        v171 = v70;
        v106 = (v71 + v27);
        v105 = &v74[v26];
        v104 = (v75 + v25);
      }

      else
      {
        v103 = 0;
        v104 = (v75 + v25);
        v105 = &v74[v26];
        v106 = (v71 + v27);
        do
        {
          v107 = 0uLL;
          if (v74)
          {
            v401 = vld2_s8(v74);
            v74 += 16;
            *v108.i8 = vzip1_s8(v401.val[0], 0);
            v108.u64[1] = vzip2_s8(v401.val[0], 0);
            *v109.i8 = vzip1_s8(v401.val[1], 0);
            v109.u64[1] = vzip2_s8(v401.val[1], 0);
            *(&v401 + 8) = vaddq_f16(v396, vcvtq_f16_u16(v108));
            v110 = vaddq_f16(v396, vcvtq_f16_u16(v109));
            v111 = vmulq_n_f16(v110, v392);
            v112 = vmlaq_n_f16(vmulq_n_f16(*(&v401 + 8), v394), v110, v393);
            v113 = vmulq_n_f16(*(&v401 + 8), v395);
          }

          else
          {
            v113 = 0uLL;
            v112 = 0uLL;
            v111 = 0uLL;
          }

          v114 = *v75++;
          *v115.i8 = vzip1_s8(v114, 0);
          v115.u64[1] = vzip2_s8(v114, 0);
          v116 = vsubq_f16(vcvtq_f16_u16(v115), v57);
          v117 = vmlaq_n_f16(v111, v116, v367);
          v118 = vmlaq_n_f16(v112, v116, v367);
          v119 = vmlaq_n_f16(v113, v116, v367);
          if (v105)
          {
            v402 = vld2_s8(v105);
            v105 += 16;
            *v120.i8 = vzip1_s8(v402.val[0], 0);
            v120.u64[1] = vzip2_s8(v402.val[0], 0);
            *v121.i8 = vzip1_s8(v402.val[1], 0);
            v121.u64[1] = vzip2_s8(v402.val[1], 0);
            v122 = vaddq_f16(v396, vcvtq_f16_u16(v120));
            v123 = vaddq_f16(v396, vcvtq_f16_u16(v121));
            v124 = vmulq_n_f16(v123, v392);
            v125 = vmlaq_n_f16(vmulq_n_f16(v122, v394), v123, v393);
            v107 = vmulq_n_f16(v122, v395);
          }

          else
          {
            v125 = 0uLL;
            v124 = 0uLL;
          }

          v126 = *v104++;
          *v127.i8 = vzip1_s8(v126, 0);
          v127.u64[1] = vzip2_s8(v126, 0);
          v128 = vsubq_f16(vcvtq_f16_u16(v127), v57);
          v129 = vmlaq_n_f16(v124, v128, v367);
          v130 = vmlaq_n_f16(v125, v128, v367);
          v131 = vmlaq_n_f16(v107, v128, v367);
          v132.i64[0] = 0x9000900090009000;
          v132.i64[1] = 0x9000900090009000;
          v133 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v117, 0), v132));
          v134.i16[0] = *(v50 + 2 * v133.u16[0]);
          v134.i16[1] = *(v50 + 2 * v133.u16[1]);
          v134.i16[2] = *(v50 + 2 * v133.u16[2]);
          v134.i16[3] = *(v50 + 2 * v133.u16[3]);
          v134.i16[4] = *(v50 + 2 * v133.u16[4]);
          v134.i16[5] = *(v50 + 2 * v133.u16[5]);
          v134.i16[6] = *(v50 + 2 * v133.u16[6]);
          v134.i16[7] = *(v50 + 2 * v133.u16[7]);
          v135 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v118, 0), v132));
          v136.i16[0] = *(v50 + 2 * v135.u16[0]);
          v136.i16[1] = *(v50 + 2 * v135.u16[1]);
          v136.i16[2] = *(v50 + 2 * v135.u16[2]);
          v136.i16[3] = *(v50 + 2 * v135.u16[3]);
          v136.i16[4] = *(v50 + 2 * v135.u16[4]);
          v136.i16[5] = *(v50 + 2 * v135.u16[5]);
          v136.i16[6] = *(v50 + 2 * v135.u16[6]);
          v136.i16[7] = *(v50 + 2 * v135.u16[7]);
          v137 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v119, 0), v132));
          v135.i16[0] = *(v50 + 2 * v137.u16[0]);
          v135.i16[1] = *(v50 + 2 * v137.u16[1]);
          v135.i16[2] = *(v50 + 2 * v137.u16[2]);
          v135.i16[3] = *(v50 + 2 * v137.u16[3]);
          v135.i16[4] = *(v50 + 2 * v137.u16[4]);
          v135.i16[5] = *(v50 + 2 * v137.u16[5]);
          v135.i16[6] = *(v50 + 2 * v137.u16[6]);
          v135.i16[7] = *(v50 + 2 * v137.u16[7]);
          v138 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v129, 0), v132));
          v137.i16[0] = *(v50 + 2 * v138.u16[0]);
          v137.i16[1] = *(v50 + 2 * v138.u16[1]);
          v137.i16[2] = *(v50 + 2 * v138.u16[2]);
          v137.i16[3] = *(v50 + 2 * v138.u16[3]);
          v137.i16[4] = *(v50 + 2 * v138.u16[4]);
          v137.i16[5] = *(v50 + 2 * v138.u16[5]);
          v137.i16[6] = *(v50 + 2 * v138.u16[6]);
          v137.i16[7] = *(v50 + 2 * v138.u16[7]);
          v139 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v130, 0), v132));
          v130.i16[0] = *(v50 + 2 * v139.u16[0]);
          v130.i16[1] = *(v50 + 2 * v139.u16[1]);
          v130.i16[2] = *(v50 + 2 * v139.u16[2]);
          v130.i16[3] = *(v50 + 2 * v139.u16[3]);
          v130.i16[4] = *(v50 + 2 * v139.u16[4]);
          v130.i16[5] = *(v50 + 2 * v139.u16[5]);
          v130.i16[6] = *(v50 + 2 * v139.u16[6]);
          v130.i16[7] = *(v50 + 2 * v139.u16[7]);
          v140 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v131, 0), v132));
          v131.i16[0] = *(v50 + 2 * v140.u16[0]);
          v131.i16[1] = *(v50 + 2 * v140.u16[1]);
          v131.i16[2] = *(v50 + 2 * v140.u16[2]);
          v131.i16[3] = *(v50 + 2 * v140.u16[3]);
          v131.i16[4] = *(v50 + 2 * v140.u16[4]);
          v131.i16[5] = *(v50 + 2 * v140.u16[5]);
          v131.i16[6] = *(v50 + 2 * v140.u16[6]);
          v131.i16[7] = *(v50 + 2 * v140.u16[7]);
          v141 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v134, v360), v136, v359), v135, v358), vmaxq_f16(vmaxq_f16(v134, v136), v135), v357), 0), v132));
          v127.i16[0] = *(v48 + 2 * v141.u16[0]);
          v127.i16[1] = *(v48 + 2 * v141.u16[1]);
          v127.i16[2] = *(v48 + 2 * v141.u16[2]);
          v127.i16[3] = *(v48 + 2 * v141.u16[3]);
          v127.i16[4] = *(v48 + 2 * v141.u16[4]);
          v127.i16[5] = *(v48 + 2 * v141.u16[5]);
          v127.i16[6] = *(v48 + 2 * v141.u16[6]);
          v127.i16[7] = *(v48 + 2 * v141.u16[7]);
          v142 = vmulq_f16(v134, v127);
          v143 = vmulq_f16(v136, v127);
          v144 = vmulq_f16(v135, v127);
          v145 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v137, v360), v130, v359), v131, v358), vmaxq_f16(vmaxq_f16(v137, v130), v131), v357), 0), v132));
          v146.i16[0] = *(v48 + 2 * v145.u16[0]);
          v146.i16[1] = *(v48 + 2 * v145.u16[1]);
          v146.i16[2] = *(v48 + 2 * v145.u16[2]);
          v146.i16[3] = *(v48 + 2 * v145.u16[3]);
          v146.i16[4] = *(v48 + 2 * v145.u16[4]);
          v146.i16[5] = *(v48 + 2 * v145.u16[5]);
          v146.i16[6] = *(v48 + 2 * v145.u16[6]);
          v146.i16[7] = *(v48 + 2 * v145.u16[7]);
          v147 = vmulq_f16(v137, v146);
          v148 = vmulq_f16(v130, v146);
          v149 = vmulq_f16(v131, v146);
          v150 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v142, v356), v143, v355), v144, v354);
          v151 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v142, v349), v143, v348), v144, v347);
          v152 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v144, v344), v143, v345), v142, v346);
          v153 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v147, v356), v148, v355), v149, v354);
          v154 = vmlaq_n_f16(vmlaq_n_f16(vmulq_n_f16(v147, v349), v148, v348), v149, v347);
          v155 = vminq_f16(vmaxq_f16(v150, 0), v132);
          v156 = vcvtq_u16_f16(v155);
          v155.i16[0] = *(v51 + 2 * v156.u16[0]);
          v155.i16[1] = *(v51 + 2 * v156.u16[1]);
          v155.i16[2] = *(v51 + 2 * v156.u16[2]);
          v155.i16[3] = *(v51 + 2 * v156.u16[3]);
          v155.i16[4] = *(v51 + 2 * v156.u16[4]);
          v155.i16[5] = *(v51 + 2 * v156.u16[5]);
          v155.i16[6] = *(v51 + 2 * v156.u16[6]);
          v157 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v151, 0), v132));
          v156.i16[0] = *(v51 + 2 * v157.u16[0]);
          v156.i16[1] = *(v51 + 2 * v157.u16[1]);
          v156.i16[2] = *(v51 + 2 * v157.u16[2]);
          v156.i16[3] = *(v51 + 2 * v157.u16[3]);
          v156.i16[4] = *(v51 + 2 * v157.u16[4]);
          v156.i16[5] = *(v51 + 2 * v157.u16[5]);
          v156.i16[6] = *(v51 + 2 * v157.u16[6]);
          v158 = vuzp1q_s16(v155, v156);
          v155.i16[7] = *(v51 + 2 * v156.u16[7]);
          v156.i16[7] = *(v51 + 2 * v157.u16[7]);
          v159 = vmulq_n_f16(v149, v344);
          v160 = vminq_f16(vmaxq_f16(v152, 0), v132);
          v161 = vcvtq_u16_f16(v160);
          v162 = vmlaq_n_f16(v159, v148, v345);
          v160.i16[0] = *(v51 + 2 * v161.u16[0]);
          v160.i16[1] = *(v51 + 2 * v161.u16[1]);
          v160.i16[2] = *(v51 + 2 * v161.u16[2]);
          v160.i16[3] = *(v51 + 2 * v161.u16[3]);
          v160.i16[4] = *(v51 + 2 * v161.u16[4]);
          v160.i16[5] = *(v51 + 2 * v161.u16[5]);
          v160.i16[6] = *(v51 + 2 * v161.u16[6]);
          v163 = (v51 + 2 * v161.u16[7]);
          v62 = v160;
          v62.i16[7] = *v163;
          v164 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v153, 0), v132));
          _Q25.i16[0] = *(v51 + 2 * v164.u16[0]);
          _Q25.i16[1] = *(v51 + 2 * v164.u16[1]);
          _Q25.i16[2] = *(v51 + 2 * v164.u16[2]);
          _Q25.i16[3] = *(v51 + 2 * v164.u16[3]);
          _Q25.i16[4] = *(v51 + 2 * v164.u16[4]);
          _Q25.i16[5] = *(v51 + 2 * v164.u16[5]);
          _Q25.i16[6] = *(v51 + 2 * v164.u16[6]);
          v165 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(v154, 0), v132));
          v164.i16[0] = *(v51 + 2 * v165.u16[0]);
          v164.i16[1] = *(v51 + 2 * v165.u16[1]);
          v164.i16[2] = *(v51 + 2 * v165.u16[2]);
          v164.i16[3] = *(v51 + 2 * v165.u16[3]);
          v164.i16[4] = *(v51 + 2 * v165.u16[4]);
          v164.i16[5] = *(v51 + 2 * v165.u16[5]);
          v164.i16[6] = *(v51 + 2 * v165.u16[6]);
          v166 = vuzp1q_s16(_Q25, v164);
          _Q25.i16[7] = *(v51 + 2 * v164.u16[7]);
          v164.i16[7] = *(v51 + 2 * v165.u16[7]);
          v167 = vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(v162, v147, v346), 0), v132));
          v147.i16[0] = *(v51 + 2 * v167.u16[0]);
          v147.i16[1] = *(v51 + 2 * v167.u16[1]);
          v147.i16[2] = *(v51 + 2 * v167.u16[2]);
          v147.i16[3] = *(v51 + 2 * v167.u16[3]);
          v147.i16[4] = *(v51 + 2 * v167.u16[4]);
          v147.i16[5] = *(v51 + 2 * v167.u16[5]);
          v147.i16[6] = *(v51 + 2 * v167.u16[6]);
          v168 = (v51 + 2 * v167.u16[7]);
          v169 = v147;
          v169.i16[7] = *v168;
          *v71++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v381, v155, v363), v156, v362), v62, v361), v381), v379)));
          *v106++ = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(vmlaq_n_f16(vmlaq_n_f16(vmlaq_n_f16(v381, _Q25, v363), v164, v362), v169, v361), v381), v379)));
          _Q16 = vuzp2q_s16(_Q25, v164);
          v170 = vaddq_f16(vaddq_f16(vaddq_f16(v158, vuzp2q_s16(v155, v156)), v166), _Q16);
          _Q6 = vmlaq_f16(vmlaq_f16(vmlaq_f16(v380, v385, vzip1q_s16(v170, v170)), v384, vzip2q_s16(v170, v170)), v382, vaddq_f16(vaddq_f16(vaddq_f16(vtrn1q_s16(v160, v160), vtrn2q_s16(v62, v62)), vtrn1q_s16(v147, v147)), vtrn2q_s16(v169, v169)));
          v62.i32[0] = v377.i32[0];
          v99 = vmovn_s16(vcvtq_u16_f16(vminq_f16(vmaxq_f16(_Q6, v378), v377)));
          *&v70[v103] = v99;
          v103 += 8;
          _S8 = v398;
          _S10 = v399;
          _S11 = v400;
        }

        while (v103 < v24);
        v171 = &v70[v103];
        v172 = v339;
      }

      for (; v172 < v49; v37 = v369)
      {
        if (v74)
        {
          v99.i8[0] = *v74;
          v173 = v99.u32[0] - v37;
          v62.i8[0] = v74[1];
          v174 = v62.u32[0] - v37;
          v74 += 2;
          v175 = _S11 * v174;
          v176 = (_S10 * v174) + (v173 * _S31);
          *v99.i32 = _S8 * v173;
        }

        else
        {
          v99.i32[0] = 0;
          v176 = 0.0;
          v175 = 0.0;
        }

        _Q6.i8[0] = v75->i8[0];
        *_Q6.i32 = _S30 * (_Q6.u32[0] - v34);
        v177 = v175 + *_Q6.i32;
        v178 = (v175 + *_Q6.i32) <= 8191.0;
        v179 = 8191.0;
        if (v178)
        {
          v179 = v177;
          if (v177 < 0.0)
          {
            v179 = 0.0;
          }
        }

        v180 = v176 + *_Q6.i32;
        v178 = (v176 + *_Q6.i32) <= 8191.0;
        v181 = 8191.0;
        if (v178)
        {
          v181 = v180;
          if (v180 < 0.0)
          {
            v181 = 0.0;
          }
        }

        v182 = *v99.i32 + *_Q6.i32;
        v183 = 8191.0;
        if (v182 <= 8191.0)
        {
          v183 = v182;
          if (v182 < 0.0)
          {
            v183 = 0.0;
          }
        }

        if (v74)
        {
          LOBYTE(v182) = *v74;
          v184 = LODWORD(v182) - v37;
          _Q6.i8[0] = v74[1];
          v185 = _Q6.u32[0] - v37;
          v74 += 2;
          v186 = _S11 * v185;
          *_Q16.i32 = _S10 * v185;
          v187 = *_Q16.i32 + (v184 * _S31);
          v188 = _S8 * v184;
        }

        else
        {
          v188 = 0.0;
          v187 = 0.0;
          v186 = 0.0;
        }

        _Q16.i8[0] = v75->i8[1];
        v189 = _S30 * (_Q16.u32[0] - v34);
        v190 = v186 + v189;
        v191 = 8191.0;
        v192 = 8191.0;
        if (v190 <= 8191.0)
        {
          v192 = v190;
          if (v190 < 0.0)
          {
            v192 = 0.0;
          }
        }

        v193 = v187 + v189;
        v178 = (v187 + v189) <= 8191.0;
        v194 = 8191.0;
        if (v178)
        {
          v194 = v193;
          if (v193 < 0.0)
          {
            v194 = 0.0;
          }
        }

        v195 = v188 + v189;
        if (v195 <= 8191.0)
        {
          v191 = v195;
          if (v195 < 0.0)
          {
            v191 = 0.0;
          }
        }

        if (v105)
        {
          LOBYTE(v195) = *v105;
          v196 = LODWORD(v195) - v37;
          LOBYTE(v189) = v105[1];
          v197 = LODWORD(v189) - v37;
          v105 += 2;
          v198 = _S11 * v197;
          v199 = (_S10 * v197) + (v196 * _S31);
          v200 = _S8 * v196;
        }

        else
        {
          v200 = 0.0;
          v199 = 0.0;
          v198 = 0.0;
        }

        _Q25.i8[0] = v104->i8[0];
        v201 = _S30 * (_Q25.u32[0] - v34);
        v202 = v198 + v201;
        v203 = 8191.0;
        v204 = 8191.0;
        if (v202 <= 8191.0)
        {
          v204 = v202;
          if (v202 < 0.0)
          {
            v204 = 0.0;
          }
        }

        v205 = v199 + v201;
        v178 = (v199 + v201) <= 8191.0;
        v206 = 8191.0;
        if (v178)
        {
          v206 = v205;
          if (v205 < 0.0)
          {
            v206 = 0.0;
          }
        }

        v207 = v200 + v201;
        if (v207 <= 8191.0)
        {
          v203 = v207;
          if (v207 < 0.0)
          {
            v203 = 0.0;
          }
        }

        if (v105)
        {
          LOBYTE(v207) = *v105;
          *&v208 = LODWORD(v207);
          v209 = *&v208 - v37;
          LOBYTE(v208) = v105[1];
          v210 = v208 - v37;
          v105 += 2;
          v211 = _S11 * v210;
          v212 = (_S10 * v210) + (v209 * _S31);
          v213 = _S8 * v209;
        }

        else
        {
          v213 = 0.0;
          v212 = 0.0;
          v211 = 0.0;
        }

        LOBYTE(v37) = v104->i8[1];
        v214 = _S30 * (LODWORD(v37) - v34);
        v215 = 8191.0;
        if ((v211 + v214) <= 8191.0)
        {
          v215 = v211 + v214;
          if ((v211 + v214) < 0.0)
          {
            v215 = 0.0;
          }
        }

        v216 = v212 + v214;
        v178 = (v212 + v214) <= 8191.0;
        v217 = 8191.0;
        if (v178)
        {
          v217 = v216;
          if (v216 < 0.0)
          {
            v217 = 0.0;
          }
        }

        v218 = v213 + v214;
        v219 = 8191.0;
        if (v218 <= 8191.0)
        {
          v219 = v218;
          if (v218 < 0.0)
          {
            v219 = 0.0;
          }
        }

        _H3 = *(v50 + 2 * llroundf(fminf(fmaxf(v179, 0.0), 8191.0)));
        __asm { FCVT            S3, H3 }

        _H5 = *(v50 + 2 * llroundf(fminf(fmaxf(v181, 0.0), 8191.0)));
        __asm { FCVT            S5, H5 }

        _H7 = *(v50 + 2 * llroundf(fminf(fmaxf(v183, 0.0), 8191.0)));
        __asm { FCVT            S7, H7 }

        _H29 = *(v50 + 2 * llroundf(fminf(fmaxf(v192, 0.0), 8191.0)));
        _H28 = *(v50 + 2 * llroundf(fminf(fmaxf(v194, 0.0), 8191.0)));
        _H31 = *(v50 + 2 * llroundf(fminf(fmaxf(v191, 0.0), 8191.0)));
        _H25 = *(v50 + 2 * llroundf(fminf(fmaxf(v204, 0.0), 8191.0)));
        _H23 = *(v50 + 2 * llroundf(fminf(fmaxf(v206, 0.0), 8191.0)));
        _H22 = *(v50 + 2 * llroundf(fminf(fmaxf(v203, 0.0), 8191.0)));
        _H6 = *(v50 + 2 * llroundf(fminf(fmaxf(v215, 0.0), 8191.0)));
        _H16 = *(v50 + 2 * llroundf(fminf(fmaxf(v217, 0.0), 8191.0)));
        _H21 = *(v50 + 2 * llroundf(fminf(fmaxf(v219, 0.0), 8191.0)));
        v235 = fmaxf(_S3, fmaxf(_S5, _S7));
        v236 = (((_S18 * _S5) + (_S17 * _S3)) + (v364 * _S7)) + (_S2 * v235);
        v237 = 8191.0;
        if (v236 <= 8191.0)
        {
          v237 = (((_S18 * _S5) + (_S17 * _S3)) + (v364 * _S7)) + (_S2 * v235);
          if (v236 < 0.0)
          {
            v237 = 0.0;
          }
        }

        __asm
        {
          FCVT            S27, H29
          FCVT            S11, H28
          FCVT            S26, H31
        }

        _H28 = *(v48 + 2 * llroundf(v237));
        v242 = (((_S18 * _S11) + (_S17 * _S27)) + (v364 * _S26)) + (_S2 * fmaxf(_S27, fmaxf(_S11, _S26)));
        v243 = 8191.0;
        if (v242 <= 8191.0)
        {
          v243 = v242;
          if (v242 < 0.0)
          {
            v243 = 0.0;
          }
        }

        __asm
        {
          FCVT            S14, H25
          FCVT            S15, H23
          FCVT            S12, H22
        }

        _H9 = *(v48 + 2 * llroundf(v243));
        v248 = fmaxf(_S14, fmaxf(_S15, _S12));
        v249 = (((_S18 * _S15) + (_S17 * _S14)) + (v364 * _S12)) + (_S2 * v248);
        v250 = 8191.0;
        if (v249 <= 8191.0)
        {
          v250 = (((_S18 * _S15) + (_S17 * _S14)) + (v364 * _S12)) + (_S2 * v248);
          if (v249 < 0.0)
          {
            v250 = 0.0;
          }
        }

        __asm
        {
          FCVT            S29, H6
          FCVT            S31, H16
          FCVT            S30, H21
          FCVT            S6, H28
        }

        v255 = _S3 * _S6;
        v256 = _S5 * _S6;
        v257 = _S7 * _S6;
        __asm { FCVT            S3, H9 }

        v259 = _S27 * _S3;
        v260 = _S11 * _S3;
        v261 = _S26 * _S3;
        LOWORD(_S3) = *(v48 + 2 * llroundf(v250));
        __asm { FCVT            S5, H3 }

        v263 = _S14 * _S5;
        v264 = _S15 * _S5;
        v265 = _S12 * _S5;
        v266 = (((_S18 * _S31) + (_S17 * _S29)) + (v364 * _S30)) + (_S2 * fmaxf(_S29, fmaxf(_S31, _S30)));
        v267 = 8191.0;
        if (v266 <= 8191.0)
        {
          v267 = v266;
          if (v266 < 0.0)
          {
            v267 = 0.0;
          }
        }

        _H26 = *(v48 + 2 * llroundf(v267));
        __asm { FCVT            S26, H26 }

        v270 = _S29 * _S26;
        v271 = _S31 * _S26;
        v272 = _S30 * _S26;
        v273 = ((v375 * v256) + (v255 * v376)) + (v257 * v374);
        v274 = ((v372 * v256) + (v255 * v373)) + (v257 * v370);
        _S22 = ((v351 * v256) + (v255 * v353)) + (v257 * v368);
        v276 = ((v375 * v260) + (v259 * v376)) + (v261 * v374);
        v277 = ((v372 * v260) + (v259 * v373)) + (v261 * v370);
        _S16 = ((v351 * v260) + (v259 * v353)) + (v261 * v368);
        v279 = ((v375 * v264) + (v263 * v376)) + (v265 * v374);
        v280 = ((v372 * v264) + (v263 * v373)) + (v265 * v370);
        v281 = ((v351 * v264) + (v263 * v353)) + (v265 * v368);
        _S5 = (v372 * v271) + (v270 * v373);
        v283 = (v351 * v271) + (v270 * v353);
        _S27 = ((v375 * v271) + (v270 * v376)) + (v272 * v374);
        _S28 = _S5 + (v272 * v370);
        v286 = v283 + (v272 * v368);
        _H3 = *(v51 + 2 * llroundf(fminf(fmaxf(v273, 0.0), 8191.0)));
        __asm { FCVT            S6, H3 }

        _H3 = *(v51 + 2 * llroundf(fminf(fmaxf(v274, 0.0), 8191.0)));
        __asm { FCVT            S3, H3 }

        LOWORD(_S5) = *(v51 + 2 * llroundf(fminf(fmaxf(_S22, 0.0), 8191.0)));
        __asm { FCVT            S5, H5 }

        _H7 = *(v51 + 2 * llroundf(fminf(fmaxf(v276, 0.0), 8191.0)));
        __asm { FCVT            S7, H7 }

        _H21 = *(v51 + 2 * llroundf(fminf(fmaxf(v277, 0.0), 8191.0)));
        LOWORD(_S16) = *(v51 + 2 * llroundf(fminf(fmaxf(_S16, 0.0), 8191.0)));
        __asm
        {
          FCVT            S21, H21
          FCVT            S16, H16
        }

        LOWORD(_S22) = *(v51 + 2 * llroundf(fminf(fmaxf(v279, 0.0), 8191.0)));
        __asm { FCVT            S25, H22 }

        LOWORD(_S22) = *(v51 + 2 * llroundf(fminf(fmaxf(v280, 0.0), 8191.0)));
        __asm { FCVT            S23, H22 }

        LOWORD(_S22) = *(v51 + 2 * llroundf(fminf(fmaxf(v281, 0.0), 8191.0)));
        __asm { FCVT            S22, H22 }

        LOWORD(_S27) = *(v51 + 2 * llroundf(fminf(fmaxf(_S27, 0.0), 8191.0)));
        __asm { FCVT            S27, H27 }

        LOWORD(_S28) = *(v51 + 2 * llroundf(fminf(fmaxf(_S28, 0.0), 8191.0)));
        _H1 = *(v51 + 2 * llroundf(fminf(fmaxf(v286, 0.0), 8191.0)));
        __asm
        {
          FCVT            S26, H28
          FCVT            S1, H1
        }

        v303 = (((v390 * _S3) + (v391 * _S6)) + (v388 * _S5)) + v350;
        if (v303 < v350)
        {
          v304 = v350;
        }

        else
        {
          v304 = (((v390 * _S3) + (v391 * _S6)) + (v388 * _S5)) + v350;
        }

        v178 = v303 <= v371;
        v305 = (((v390 * _S21) + (v391 * _S7)) + (v388 * _S16)) + v350;
        if (!v178)
        {
          v304 = v371;
        }

        v306 = llroundf(v304);
        if (v305 < v350)
        {
          v307 = v350;
        }

        else
        {
          v307 = (((v390 * _S21) + (v391 * _S7)) + (v388 * _S16)) + v350;
        }

        v178 = v305 <= v371;
        v308 = (((v390 * _S23) + (v391 * *_Q25.i32)) + (v388 * _S22)) + v350;
        if (!v178)
        {
          v307 = v371;
        }

        v309 = llroundf(v307);
        if (v308 < v350)
        {
          v310 = v350;
        }

        else
        {
          v310 = (((v390 * _S23) + (v391 * *_Q25.i32)) + (v388 * _S22)) + v350;
        }

        v178 = v308 <= v371;
        v311 = (((v390 * _S26) + (v391 * _S27)) + (v388 * _S1)) + v350;
        if (!v178)
        {
          v310 = v371;
        }

        v312 = llroundf(v310);
        if (v311 < v350)
        {
          v313 = v350;
        }

        else
        {
          v313 = (((v390 * _S26) + (v391 * _S27)) + (v388 * _S1)) + v350;
        }

        if (v311 <= v371)
        {
          v314 = v313;
        }

        else
        {
          v314 = v371;
        }

        v315 = ((_S6 + _S7) + *_Q25.i32) + _S27;
        v316 = ((_S3 + _S21) + _S23) + _S26;
        v71->i8[0] = v306;
        v71->i8[1] = v309;
        v106->i8[0] = v312;
        v106->i8[1] = llroundf(v314);
        v317 = (_S5 + _S16) + _S22;
        *_Q16.i32 = v389;
        v318 = v317 + _S1;
        v319 = ((v389 + (v315 * *&v98)) + (v316 * a7.f32[0])) + (v318 * v383);
        v320 = v387;
        if (v319 <= v387)
        {
          v320 = ((v389 + (v315 * *&v98)) + (v316 * a7.f32[0])) + (v318 * v383);
          if (v319 < v397)
          {
            v320 = v35;
          }
        }

        *_Q6.i32 = v389 + (v315 * *(&v98 + 1));
        *v99.i32 = (*_Q6.i32 + (v316 * a7.f32[1])) + (v318 * v343);
        *v171 = llroundf(v320);
        *v62.i32 = v387;
        v34 = v365;
        _S30 = v352;
        _S8 = v398;
        _S10 = v399;
        v57 = v386;
        if (*v99.i32 <= v387)
        {
          v62.i32[0] = v99.i32[0];
          if (*v99.i32 < v397)
          {
            *v62.i32 = v35;
          }
        }

        v172 += 2;
        v75 = (v75 + 2);
        v104 = (v104 + 2);
        v171[1] = llroundf(*v62.i32);
        v71 = (v71 + 2);
        v106 = (v106 + 2);
        v171 += 2;
        _S11 = v400;
        _S31 = v366;
      }

      v75 = &v100[v25];
      v74 = &v101[v26];
      v71 = &v102[v27];
      v16 = v341;
      v70 += v340;
      v22 += 2;
      v13 = v342;
    }

    while (v22 < v341);
  }

  if (v335 && v334)
  {
    if (v16 >= 1)
    {
      v321 = 0;
      v322 = (v335 + v331 * v332 + v333);
      do
      {
        result = memcpy(v21, v322, v13);
        v322 += v331;
        v21 += v336;
        ++v321;
      }

      while (v16 > v321);
    }
  }

  else if (v334 && v16 >= 1)
  {
    v323 = 0;
    v324 = vdupq_n_s64(v13 - 1);
    do
    {
      if (v13 >= 1)
      {
        v325 = 0;
        do
        {
          v326 = vdupq_n_s64(v325);
          v327 = vmovn_s64(vcgeq_u64(v324, vorrq_s8(v326, xmmword_18FECDDB0)));
          if (vuzp1_s8(vuzp1_s16(v327, *v324.i8), *v324.i8).u8[0])
          {
            v21[v325] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v327, *&v324), *&v324).i8[1])
          {
            v21[v325 + 1] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v324, vmovn_s64(vcgeq_u64(v324, vorrq_s8(v326, xmmword_18FECDDA0)))), *&v324).i8[2])
          {
            v21[v325 + 2] = -1;
            v21[v325 + 3] = -1;
          }

          v328 = vmovn_s64(vcgeq_u64(v324, vorrq_s8(v326, xmmword_18FECDD90)));
          if (vuzp1_s8(*&v324, vuzp1_s16(v328, *&v324)).i32[1])
          {
            v21[v325 + 4] = -1;
          }

          if (vuzp1_s8(*&v324, vuzp1_s16(v328, *&v324)).i8[5])
          {
            v21[v325 + 5] = -1;
          }

          if (vuzp1_s8(*&v324, vuzp1_s16(*&v324, vmovn_s64(vcgeq_u64(v324, vorrq_s8(v326, xmmword_18FECDD80))))).i8[6])
          {
            v21[v325 + 6] = -1;
            v21[v325 + 7] = -1;
          }

          v329 = vmovn_s64(vcgeq_u64(v324, vorrq_s8(v326, xmmword_18FECDD70)));
          if (vuzp1_s8(vuzp1_s16(v329, *v324.i8), *v324.i8).u8[0])
          {
            v21[v325 + 8] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(v329, *&v324), *&v324).i8[1])
          {
            v21[v325 + 9] = -1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v324, vmovn_s64(vcgeq_u64(v324, vorrq_s8(v326, xmmword_18FECDD60)))), *&v324).i8[2])
          {
            v21[v325 + 10] = -1;
            v21[v325 + 11] = -1;
          }

          v330 = vmovn_s64(vcgeq_u64(v324, vorrq_s8(v326, xmmword_18FECDD50)));
          if (vuzp1_s8(*&v324, vuzp1_s16(v330, *&v324)).i32[1])
          {
            v21[v325 + 12] = -1;
          }

          if (vuzp1_s8(*&v324, vuzp1_s16(v330, *&v324)).i8[5])
          {
            v21[v325 + 13] = -1;
          }

          if (vuzp1_s8(*&v324, vuzp1_s16(*&v324, vmovn_s64(vcgeq_u64(v324, vorrq_s8(v326, xmmword_18FECDD40))))).i8[6])
          {
            v21[v325 + 14] = -1;
            v21[v325 + 15] = -1;
          }

          v325 += 16;
        }

        while (((v13 + 15) & 0xFFFFFFFFFFFFFFF0) != v325);
      }

      v21 += v336;
      ++v323;
    }

    while (v16 > v323);
  }

  *(v338 + a2 + 40) = 0;
  return result;
}